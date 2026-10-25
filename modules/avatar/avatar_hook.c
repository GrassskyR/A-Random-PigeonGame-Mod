// Custom avatar support for Phigros 4.0.1.1 (merged into libspeed.so).
// The scene's GetCollectionControl gains an AvatarInfo named Zundamon whose
// addressable key "avatar.Zundamon" does not exist in the asset catalog;
// this hook serves the cached PNG for that key instead.
#include <android/log.h>
#include <jni.h>
#include <math.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include "avatar_image.h"

#define AVA_LOG(...) __android_log_print(ANDROID_LOG_INFO,"PhigrosSpeed",__VA_ARGS__)
#define AVA_AT(type,p,o) (*(type*)((char*)(p)+(o)))

extern uintptr_t speed_base(void);
extern uint8_t *ava_png_cache;
extern size_t ava_png_len;

static void (*code_original)(void*, void*, void*);
// C globals are not managed static fields. Keep both wrappers rooted in the
// IL2CPP GC and both native Unity assets protected from UnloadUnusedAssets.
// One pair lives for the process; scene loaders borrow it, never own it.
static uint32_t ava_sprite_handle, ava_texture_handle;
static int ava_failed;
static JavaVM *ava_vm;

static void *build_avatar_sprite(void) {
    // UnityEngine.Texture2D..ctor(w,h,format,mip,linear): RGBA32 = 4, mip 1.
    void *domain = ph_domain_get();
    ph_thread_attach(domain);
    size_t count = 0;
    void **assemblies = ph_domain_get_assemblies(domain, &count);
    Il2CppClass *tex_class = 0, *byte_class = 0;
    for (size_t i = 0; i < count && (!tex_class || !byte_class); i++) {
        void *image = ph_assembly_get_image(assemblies[i]);
        if (!tex_class)
            tex_class = ph_class_from_name(image, "UnityEngine", "Texture2D");
        if (!byte_class)
            byte_class = ph_class_from_name(image, "System", "Byte");
    }
    if (!tex_class || !byte_class || !ava_png_cache) {
        AVA_LOG("avatar prerequisites missing");
        return 0;
    }
    // il2cpp_array_new takes the element class, not the Byte[] array class.
    void *data = ph_array_new(byte_class, ava_png_len);
    memcpy((char *)data + 0x20, ava_png_cache, ava_png_len);

    void *texture = ph_object_new(tex_class);
    void (*tex_ctor)(void*, int, int, int, int, int, void*) =
        (void*)(speed_base() + 0x3C47E4C); // (w,h,format,mip,linear)
    tex_ctor(texture, 2, 2, 4, 1, 0, 0);
    int (*load_image)(void*, void*, void*) = (void*)(speed_base() + 0x3C8D468);
    if (!load_image(texture, data, 0)) { AVA_LOG("LoadImage failed"); return 0; }
    ava_texture_handle = ph_gchandle_new(texture, 0);
    void (*set_flags)(void*, int, void*) = (void*)(speed_base() + 0x3C65608);
    set_flags(texture, 32, 0); // HideFlags.DontUnloadUnusedAsset

    // Sprite.Create(texture, rect, pivot, ppu): rect = {x,y,w,h} floats.
    typedef struct { float x, y, z, w; } v4;
    typedef struct { float x, y; } v2;
    void *(*sprite_create)(void*, v4, v2, float, void*) = (void*)(speed_base() + 0x3C70F94);
    v4 rect = {0.0f, 0.0f, 128.0f, 128.0f};
    v2 pivot = {0.5f, 0.5f};
    void *sprite = sprite_create(texture, rect, pivot, 100.0f, 0);
    if (sprite) {
        set_flags(sprite, 32, 0);
        ava_sprite_handle = ph_gchandle_new(sprite, 0);
    }
    AVA_LOG("avatar sprite %p", sprite);
    return sprite;
}

static void apply_sprite(void *loader, void *sprite) {
    // CheckInitialized (0x1DB9240) finds the Image/SpriteRenderer once so
    // set__settedFile routes correctly even before the first OnEnable;
    // set__settedFile (0x1DB9150) then assigns the sprite and
    // set_imageEnabled (0x1DB91EC) turns the renderer on.
    void (*check_init)(void*, void*) = (void*)(speed_base() + 0x1DB9240);
    void (*set_file)(void*, void*, void*) = (void*)(speed_base() + 0x1DB9150);
    void (*set_enabled)(void*, int, void*) = (void*)(speed_base() + 0x1DB91EC);
    check_init(loader, 0);
    set_file(loader, sprite, 0);
    set_enabled(loader, 1, 0);
    AVA_AT(uint8_t, loader, 0x51) = 1; // ImageLoaded, then the original callback ABI
    void *callback = AVA_AT(void*, loader, 0x58);
    if (callback) {
        void (*invoke)(void*, void*) = AVA_AT(void*, callback, 0x18);
        invoke(AVA_AT(void*, callback, 0x40), AVA_AT(void*, callback, 0x28));
    }
}

static void (*derived_original)(void*, void*, void*);

static int try_custom_avatar(void *self, void *code, int derived) {
    if (code && ph_string_equals_ascii(code, "avatar.Zundamon") && !ava_failed) {
        void *sprite = ava_sprite_handle ? ph_gchandle_get_target(ava_sprite_handle) : 0;
        if (!sprite) {
            sprite = build_avatar_sprite();
            if (!sprite) ava_failed = 1;
        }
        if (sprite) {
            // Stop the previous coroutine and release its AssetRef before
            // replacing the image. Otherwise a late old load can overwrite us.
            // The derived cleanup also removes its transition child/preview.
            void (*cleanup)(void*, void*) = (void*)(speed_base() +
                (derived ? 0x1DB98BC : 0x1DB943C));
            cleanup(self, 0);
            AVA_AT(void*, self, 0x38) = code;
            if (derived) {
                AVA_AT(uint8_t, self, 0x78) = 1; // loadedImage
                AVA_AT(uint8_t, self, 0x79) = 1; // loadImageOver
            }
            apply_sprite(self, sprite);
            return 1;
        }
    }
    return 0;
}

// Both setters retain their ordinary entry ABI and original fallback.
static void avatar_set_code(void *self, void *code, void *method) {
    if (!try_custom_avatar(self, code, 0)) code_original(self, code, method);
}

static void avatar_set_code_derived(void *self, void *code, void *method) {
    if (!try_custom_avatar(self, code, 1)) derived_original(self, code, method);
}

void avatar_install(JavaVM *vm, void *(*hook)(uintptr_t, void*, const uint32_t*)) {
    ava_vm = vm;
    (void)ava_vm;
    static const uint32_t head[] = {0xf81d0ffe, 0xa90157f6, 0xa9024ff4, 0xf9401c08};
    static const uint32_t derived_head[] = {0xf81d0ffe, 0xa90157f6, 0xa9024ff4, 0x90013656};
    code_original = hook(0x1DAEEF8, avatar_set_code, head);
    // The host relocates the fourth instruction (adrp x22) in the fallback
    // trampoline. Hooking after this prologue leaves sp/callee-saved regs dirty
    // when the replacement returns directly to the caller.
    derived_original = hook(0x1DAEDF4, avatar_set_code_derived, derived_head);
    AVA_LOG("avatar hooks base=%s derived=%s",
            code_original ? "ok" : "FAILED", derived_original ? "ok" : "FAILED");
}
