// Custom avatar support for Phigros 4.0.1.1 (merged into libspeed.so).
// The scene's GetCollectionControl gains an AvatarInfo named Zundamon whose
// addressable key "avatar.Zundamon" does not exist in the asset catalog;
// this hook serves the cached PNG for that key instead.
#include <android/log.h>
#include "phigros_version.h"
#include <stdlib.h>
#include <string.h>
#include "avatar.h"

#define AVA_LOG(...) __android_log_print(ANDROID_LOG_INFO,"PhigrosSpeed",__VA_ARGS__)
#define AVA_AT(type,p,o) (*(type*)((char*)(p)+(o)))

static uintptr_t avatar_base;
static uint8_t *png_data;
static size_t png_size;

// IL2CPP exports for Phigros 4.0.1.1. Only the avatar implementation uses them.
typedef struct Il2CppClass Il2CppClass;
static void *(*domain_get)(void);
static void **(*domain_get_assemblies)(void*, size_t*);
static void *(*assembly_get_image)(void*);
static Il2CppClass *(*class_from_name)(void*, const char*, const char*);
static void *(*object_new)(Il2CppClass*);
static void *(*array_new)(Il2CppClass*, uintptr_t);
static uint32_t (*gchandle_new)(void*, int);
static void *(*gchandle_get_target)(uint32_t);

void avatar_prepare(JNIEnv *env, jbyteArray png) {
    if (!png) return;
    jsize size = (*env)->GetArrayLength(env, png);
    if (size <= 0) return;
    png_data = malloc(size);
    if (!png_data) return;
    (*env)->GetByteArrayRegion(env, png, 0, size, (jbyte*)png_data);
    png_size = size;
}

static int is_custom_key(void *code) {
    static const char key[] = "avatar.Zundamon";
    if (!code || AVA_AT(int32_t,code,PH_F_IL2CPPSTRING_LENGTH) != (int32_t)(sizeof(key) - 1)) return 0;
    const uint16_t *chars = (const uint16_t*)((char*)code + PH_F_IL2CPPSTRING_CHARS);
    for (size_t i = 0; i < sizeof(key) - 1; i++)
        if (chars[i] != (uint8_t)key[i]) return 0;
    return 1;
}

static void (*code_original)(void*, void*, void*);
// C globals are not managed static fields. Keep both wrappers rooted in the
// IL2CPP GC and both native Unity assets protected from UnloadUnusedAssets.
// One pair lives for the process; scene loaders borrow it, never own it.
static uint32_t ava_sprite_handle, ava_texture_handle;
static int ava_failed;

static void *build_avatar_sprite(void) {
    // UnityEngine.Texture2D..ctor(w,h,format,mip,linear): RGBA32 = 4, mip 1.
    size_t count = 0;
    void **assemblies = domain_get_assemblies(domain_get(), &count);
    Il2CppClass *tex_class = 0, *byte_class = 0;
    for (size_t i = 0; i < count && (!tex_class || !byte_class); i++) {
        void *image = assembly_get_image(assemblies[i]);
        if (!tex_class)
            tex_class = class_from_name(image, "UnityEngine", "Texture2D");
        if (!byte_class)
            byte_class = class_from_name(image, "System", "Byte");
    }
    if (!tex_class || !byte_class) {
        AVA_LOG("avatar prerequisites missing");
        return 0;
    }
    // il2cpp_array_new takes the element class, not the Byte[] array class.
    void *data = array_new(byte_class, png_size);
    memcpy((char *)data + PH_F_ARRAY_DATA, png_data, png_size);

    void *texture = object_new(tex_class);
    void (*tex_ctor)(void*, int, int, int, int, int, void*) =
        (void*)(avatar_base + PH_RVA_AVATAR_TEXTURE_CTOR); // (w,h,format,mip,linear)
    tex_ctor(texture, 2, 2, 4, 1, 0, 0);
    int (*load_image)(void*, void*, void*) = (void*)(avatar_base + PH_RVA_AVATAR_LOAD_IMAGE);
    if (!load_image(texture, data, 0)) { AVA_LOG("LoadImage failed"); return 0; }
    ava_texture_handle = gchandle_new(texture, 0);
    void (*set_flags)(void*, int, void*) = (void*)(avatar_base + PH_RVA_AVATAR_HIDE_FLAGS);
    set_flags(texture, 32, 0); // HideFlags.DontUnloadUnusedAsset

    // Sprite.Create(texture, rect, pivot, ppu): rect = {x,y,w,h} floats.
    typedef struct { float x, y, z, w; } v4;
    typedef struct { float x, y; } v2;
    void *(*sprite_create)(void*, v4, v2, float, void*) = (void*)(avatar_base + PH_RVA_AVATAR_SPRITE_CREATE);
    v4 rect = {0.0f, 0.0f, 128.0f, 128.0f};
    v2 pivot = {0.5f, 0.5f};
    void *sprite = sprite_create(texture, rect, pivot, 100.0f, 0);
    if (sprite) {
        set_flags(sprite, 32, 0);
        ava_sprite_handle = gchandle_new(sprite, 0);
    }
    AVA_LOG("avatar sprite %p", sprite);
    return sprite;
}

static void apply_sprite(void *loader, void *sprite) {
    // CheckInitialized (PH_RVA_AVATAR_CHECK_INIT) finds the Image/SpriteRenderer once so
    // set__settedFile routes correctly even before the first OnEnable;
    // set__settedFile (PH_RVA_AVATAR_SET_FILE) then assigns the sprite and
    // set_imageEnabled (PH_RVA_AVATAR_SET_ENABLED) turns the renderer on.
    void (*check_init)(void*, void*) = (void*)(avatar_base + PH_RVA_AVATAR_CHECK_INIT);
    void (*set_file)(void*, void*, void*) = (void*)(avatar_base + PH_RVA_AVATAR_SET_FILE);
    void (*set_enabled)(void*, int, void*) = (void*)(avatar_base + PH_RVA_AVATAR_SET_ENABLED);
    check_init(loader, 0);
    set_file(loader, sprite, 0);
    set_enabled(loader, 1, 0);
    AVA_AT(uint8_t,loader,PH_F_ADDRESSABLEIMAGELOADER_IMAGELOADED) = 1; // ImageLoaded, then the original callback ABI
    void *callback = AVA_AT(void*,loader,PH_F_ADDRESSABLEIMAGELOADER_ONLOADED);
    if (callback) {
        void (*invoke)(void*, void*) = AVA_AT(void*,callback,PH_F_DELEGATE_INVOKE);
        invoke(AVA_AT(void*,callback,PH_F_DELEGATE_TARGET), AVA_AT(void*,callback,PH_F_DELEGATE_METHOD));
    }
}

static void (*derived_original)(void*, void*, void*);

static int try_custom_avatar(void *self, void *code, int derived) {
    if (!is_custom_key(code) || ava_failed) return 0;
    void *sprite = ava_sprite_handle ? gchandle_get_target(ava_sprite_handle) : 0;
    if (!sprite) sprite = build_avatar_sprite();
    if (!sprite) {
        ava_failed = 1;
        return 0;
    }

    // Cancel/release the old load before it can overwrite our Sprite. The
    // derived cleanup also removes its transition child and low-res preview.
    void (*cleanup)(void*, void*) = (void*)(avatar_base +
        (derived ? PH_RVA_AVATAR_DERIVED_CLEANUP : PH_RVA_AVATAR_CLEANUP));
    cleanup(self, 0);
    AVA_AT(void*, self, PH_F_ADDRESSABLEIMAGELOADER__CODE) = code;
    if (derived) {
        AVA_AT(uint8_t, self, PH_F_ADDRESSABLEIMAGELOADERWITHLOWRESPREVIEW_LOADEDIMAGE) = 1; // loadedImage
        AVA_AT(uint8_t, self, PH_F_ADDRESSABLEIMAGELOADERWITHLOWRESPREVIEW_LOADIMAGEOVER) = 1; // loadImageOver
    }
    apply_sprite(self, sprite);
    return 1;
}

// Both setters retain their ordinary entry ABI and original fallback.
static void avatar_set_code(void *self, void *code, void *method) {
    if (!try_custom_avatar(self, code, 0)) code_original(self, code, method);
}

static void avatar_set_code_derived(void *self, void *code, void *method) {
    if (!try_custom_avatar(self, code, 1)) derived_original(self, code, method);
}

void avatar_install(uintptr_t il2cpp_base, AvatarHook hook) {
    if (!png_data) { AVA_LOG("avatar PNG unavailable; hooks skipped"); return; }
    avatar_base = il2cpp_base;
    domain_get = (void*)(avatar_base + PH_RVA_AVATAR_DOMAIN_GET);
    domain_get_assemblies = (void*)(avatar_base + PH_RVA_AVATAR_DOMAIN_ASSEMBLIES);
    assembly_get_image = (void*)(avatar_base + PH_RVA_AVATAR_ASSEMBLY_IMAGE);
    class_from_name = (void*)(avatar_base + PH_RVA_AVATAR_CLASS_FROM_NAME);
    object_new = (void*)(avatar_base + PH_RVA_AVATAR_OBJECT_NEW);
    array_new = (void*)(avatar_base + PH_RVA_AVATAR_ARRAY_NEW);
    gchandle_new = (void*)(avatar_base + PH_RVA_AVATAR_GCHANDLE_NEW);
    gchandle_get_target = (void*)(avatar_base + PH_RVA_AVATAR_GCHANDLE_TARGET);
    static const uint32_t head[] = PH_HEAD_AVATAR_SET_CODE;
    static const uint32_t derived_head[] = PH_HEAD_AVATAR_DERIVED_SET_CODE;
    code_original = hook(PH_RVA_AVATAR_SET_CODE, avatar_set_code, head);
    // The host relocates the fourth instruction (adrp x22) in the fallback
    // trampoline. Hooking after this prologue leaves sp/callee-saved regs dirty
    // when the replacement returns directly to the caller.
    derived_original = hook(PH_RVA_AVATAR_DERIVED_SET_CODE, avatar_set_code_derived, derived_head);
    AVA_LOG("avatar hooks avatar_base=%s derived=%s",
            code_original ? "ok" : "FAILED", derived_original ? "ok" : "FAILED");
}
