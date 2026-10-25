#define _GNU_SOURCE
#include <android/log.h>
#include <jni.h>
#include <link.h>
#include <pthread.h>
#include <stdatomic.h>
#include <stdint.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <math.h>
#include "speed_clock.h"
#include "speed_judgement.h"
#include "avatar.h"

// Phigros 4.0.1.1 ARM64. Speed mod: audio pitch + chart time warp.
// Custom avatar: AddressableImageLoader.set_Code serves a bundled PNG for the
// scene-injected "avatar.Zundamon" key. Installer work only binds addresses;
// Unity object access runs in Update or in the game's image loader setters.
#define LOG(...) __android_log_print(ANDROID_LOG_INFO,"PhigrosSpeed", __VA_ARGS__)
#define AT(type, p, o) (*(type*)((char*)(p) + (o)))

static uintptr_t base;
static void (*selector_original)(void*, void*);
static void (*progress_original)(void*, void*);
static void *speed_audio;
static speed_warp warp = {1.0f, 0.0f, 0.0f};
static float prev_raw = 0.0f;
static uint64_t prev_raw_ms = 0;
static int have_prev_raw = 0;
static _Atomic float want_speed = 1.0f; // requested by UI
static float applied_speed = 1.0f;
static void *applied_source;
static _Atomic uint64_t selector_seen = 0;
static _Atomic int ready = 0;
static atomic_flag started = ATOMIC_FLAG_INIT;
static float *judge_windows;      // JudgeControl statics: perfect, good, bad
static float judge_windows_unscaled[3];

static uint64_t milliseconds(void) {
    struct timespec t;
    clock_gettime(CLOCK_MONOTONIC, &t);
    return (uint64_t)t.tv_sec * 1000 + t.tv_nsec / 1000000;
}

static void apply_pitch(void *source, float speed) {
    // Call the game's own AudioSource.set_pitch wrapper (RVA 0x3C18438):
    // void set_pitch(AudioSource this, float value, MethodInfo*). It resolves
    // its internal call the same way the game does, so no runtime icall
    // lookup is needed here.
    void (*set_pitch)(void*, float, void*) = (void*)(base + 0x3C18438);
    set_pitch(source, speed, 0);
    applied_speed = speed;
    LOG("pitch %.2f applied", speed);
}

// Restore our previous scaling before Update. Its ordinary/challenge path
// writes fresh windows, but an early return may leave the old values intact.
static void restore_windows(void) {
    if (!judge_windows) return;
    for (int i = 0; i < 3; i++)
        judge_windows[i + 1] = judge_windows_unscaled[i];
}

// Read the values the original Update just produced, then scale once per frame.
// Normal mode is 80/180/220 ms; challenge mode includes frame-time compensation.
static void apply_windows(float speed) {
    // JudgeControl class pointer lives in the metadata usage table
    // (adrp 0x418d000 + 0x918, as every reader in the game does it);
    // klass+0xB8 is the static-fields block.
    void *slot = AT(void*, base + 0x418D918, 0);
    if (!slot) return;
    void *klass = AT(void*, slot, 0);
    if (!klass) return;
    float *statics = AT(float*, klass, 0xB8);
    if (!statics) return;
    judge_windows = statics;
    for (int i = 0; i < 3; i++) {
        judge_windows_unscaled[i] = statics[i + 1];
        statics[i + 1] *= speed;
    }
}

// ProgressControl.Update copies audio.time (+0x40) into nowTime (+0x90) and
// audioTime (+0xB8); the whole chart timeline follows. The audio object's
// clock advances with real time while the clip advances at pitch x real time,
// so the read value is re-scaled around an anchor taken at any moment where
// raw time equals the true clip position (start, resume, seek, replay).
static void progress_update(void *self, void *method) {
    restore_windows();
    float speed = atomic_load(&want_speed);
    void *audio = AT(void*, self, 0x38);
    if (!audio || AT(float, self, 0x94) <= 0.0f) {
        // No usable clip (menu remnants): keep the original behaviour.
        progress_original(self, method);
        return;
    }
    int audio_changed = audio != speed_audio;
    if (audio_changed) speed_audio = audio;
    void *source = AT(void*, audio, 0x30);
    if (source != applied_source) {
        // Unity recreated the AudioSource (song change); its pitch resets.
        applied_source = source; applied_speed = 1.0f;
    }
    float raw = AT(float, audio, 0x40);
    uint64_t now_ms = milliseconds();
    if (audio_changed) {
        // Fresh AddressableAudioSource: its clock starts at the clip anchor.
        speed_warp_rebase(&warp, raw, raw);
        have_prev_raw = 0;
    }
    if (speed != warp.speed) {
        // Keep the current chart position continuous across the change.
        speed_warp_rebase(&warp, raw, speed_warp_time(&warp, raw));
        warp.speed = speed;
    }
    if (have_prev_raw) {
        // The game re-anchors its clock on resume/replay/seek (the raw value
        // jumps instead of advancing with real time). Every re-anchor places
        // raw at the true clip position, so the warp follows it.
        float max_step = 2.5f * (0.001f * (float)(now_ms - prev_raw_ms) + 0.05f);
        if (raw < prev_raw - 0.0001f || raw > prev_raw + max_step)
            speed_warp_rebase(&warp, raw, raw);
    }
    prev_raw = raw; prev_raw_ms = now_ms; have_prev_raw = 1;
    if (speed != applied_speed && source) {
        apply_pitch(source, speed);
    }
    AT(float, audio, 0x40) = speed_warp_time(&warp, raw);
    progress_original(self, method);
    // Restore the true internal clock; the audio object and Unity must keep
    // operating on the unwarped value.
    AT(float, audio, 0x40) = raw;
    apply_windows(speed);
    speed_set_judgement_gates(speed);
}

static void selector_update(void *self, void *method) {
    atomic_store(&selector_seen, milliseconds());
    selector_original(self, method);
}

static int find_module(struct dl_phdr_info *info,size_t size, void *arg) {
    (void)size;
    (void)arg;
    if (info->dlpi_name && strstr(info->dlpi_name, "libil2cpp.so")) {
        base = info->dlpi_addr;
        return 1;
    }
    return 0;
}

static void jump(void *where, void *target) {
    uint32_t code[] = {0x58000051, 0xd61f0220}; // ldr x17,+8; br x17
    memcpy(where, code, 8);
    memcpy((char*)where + 8, &target, 8);
}

// The selected entries have stack/register instructions in their first 16
// bytes, except the derived avatar setter's fourth ADRP, relocated below.
// (AddressableAudioSource.Seek starts with `adrp x20` and must NOT be hooked
// this way; its re-anchor is handled by the discontinuity rule above.)
static void *hook_entry(uintptr_t rva, void *replacement, const uint32_t expected[4]) {
    void *entry = (void*)(base + rva);
    if (memcmp(entry, expected, 16)) {
        LOG("hook entry mismatch at %lx", (unsigned long)rva);
        return 0;
    }
    void *trampoline = mmap(0, 4096, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (trampoline == MAP_FAILED) return 0;
    memcpy(trampoline, entry, 16);
    size_t copied = 16;
    if ((expected[3] & 0x9f000000) == 0x90000000) {
        // Replace the final ADRP with MOVZ/MOVK of its original runtime page.
        uint32_t insn = expected[3];
        int64_t imm = ((insn >> 5) & 0x7ffff) << 2 | ((insn >> 29) & 3);
        if (imm & (1 << 20)) imm -= 1 << 21;
        uintptr_t target = (((uintptr_t)entry + 12) & ~(uintptr_t)0xfff) + imm * 4096;
        uint32_t *out = (uint32_t*)((char*)trampoline + 12);
        for (unsigned i = 0; i < 4; i++)
            out[i] = (i ? 0xf2800000 : 0xd2800000) | (i << 21)
                | (((target >> (i * 16)) & 0xffff) << 5) | (insn & 31);
        copied = 28;
    }
    jump((char*)trampoline + copied, (char*)entry + 16);
    mprotect(trampoline, 4096, PROT_READ | PROT_EXEC);
    __builtin___clear_cache(trampoline, (char*)trampoline + copied + 16);
    size_t page = (size_t)sysconf(_SC_PAGESIZE);
    void *start = (void*)((uintptr_t)entry & ~(page - 1));
    if (mprotect(start, page, PROT_READ | PROT_WRITE | PROT_EXEC)) {
        LOG("hook mprotect failed");
        return 0;
    }
    jump(entry, replacement);
    __builtin___clear_cache(entry, (char*)entry + 16);
    mprotect(start, page, PROT_READ | PROT_EXEC);
    return trampoline;
}

static void *install(void *arg) {
    (void)arg;
    for (int attempt = 0; attempt < 600; attempt++) {
        dl_iterate_phdr(find_module, 0);
        if (base) break;
        usleep(100000);
    }
    if (!base) { LOG("libil2cpp not found"); return 0; }
    if (!speed_install_judgement_gates(base)) return 0;
    const uint32_t selector_head[] = {0x6db92beb, 0x6d0123e9, 0xf90013fe, 0xa90367fa};
    const uint32_t progress_head[] = {0x6dbc23e9, 0xf9000bfe, 0xa90257f6, 0xa9034ff4};
    selector_original = hook_entry(0x1DA7DFC, selector_update, selector_head);
    progress_original = hook_entry(0x1D88268, progress_update, progress_head);
    if (!selector_original || !progress_original) return 0;
    avatar_install(base, hook_entry);
    atomic_store(&ready, 1);
    LOG("speed hooks installed (v3, real-time judgement)");
    return 0;
}

// Java supplies the PNG before the single installer thread can publish hooks.
// Reattaching an Activity must not overwrite either hook's original trampoline.
JNIEXPORT void JNICALL Java_com_phigros_local_SpeedOverlay_initialize(JNIEnv *env, jclass cls,jbyteArray png) {
    (void)cls;
    if (atomic_flag_test_and_set(&started)) return;
    avatar_prepare(env, png);
    pthread_t thread;
    int error = pthread_create(&thread, 0, install, 0);
    if (error) {
        LOG("installer thread failed: %d", error);
        return;
    }
    pthread_detach(thread);
}

JNIEXPORT jfloatArray JNICALL Java_com_phigros_local_SpeedOverlay_status(JNIEnv *env, jclass cls) {
    (void)cls;
    float values[] = {
        (float)(milliseconds() - atomic_load(&selector_seen) < 400),
        atomic_load(&want_speed), (float)atomic_load(&ready)
    };
    jfloatArray result = (*env)->NewFloatArray(env, 3);
    (*env)->SetFloatArrayRegion(env, result, 0, 3, values);
    return result;
}

JNIEXPORT void JNICALL Java_com_phigros_local_SpeedOverlay_speed(JNIEnv *env, jclass cls,jfloat value) {
    (void)env;
    (void)cls;
    if (isfinite(value) && value >= 0.5f && value <= 2.0f)
        atomic_store(&want_speed, value);
}
