#ifndef PHIGROS_AVATAR_IMAGE_H
#define PHIGROS_AVATAR_IMAGE_H
#include <stdint.h>
// Minimal il2cpp runtime access through libil2cpp's own exports. Offsets are
// the exported symbol RVAs for this build (4.0.1.1).
typedef struct Il2CppClass Il2CppClass;
typedef struct Il2CppString Il2CppString;

static Il2CppClass *(*ph_class_from_name)(void *image, const char *ns, const char *name);
static void *(*ph_domain_get)(void);
static void *(*ph_assembly_get_image)(void *assembly);
static void *(*ph_domain_get_assemblies)(void *domain, size_t *size);
static void *(*ph_class_get_image)(Il2CppClass *klass);
static void *(*ph_object_new)(Il2CppClass *klass);
static void *(*ph_array_new)(Il2CppClass *klass, uintptr_t length);
static uint32_t (*ph_gchandle_new)(void *object, int pinned);
static void *(*ph_gchandle_get_target)(uint32_t handle);
static Il2CppString *(*ph_string_new_utf16)(const uint16_t *text, int32_t len);
static void *(*ph_thread_attach)(void *domain);

// Defined once in avatar_hook.c (the only translation unit including this
// header); referenced from the host module.
int avatar_runtime_init(uintptr_t base) {
    ph_domain_get = (void *)(base + 0x1B97CB8);
    ph_domain_get_assemblies = (void *)(base + 0x1B97CC4);
    ph_assembly_get_image = (void *)(base + 0x1B97788);
    ph_class_from_name = (void *)(base + 0x1B977C0);
    ph_object_new = (void *)(base + 0x1B98094);
    ph_array_new = (void *)(base + 0x1B97770);
    ph_gchandle_new = (void *)(base + 0x1B97F28);
    ph_gchandle_get_target = (void *)(base + 0x1B97F68);
    ph_string_new_utf16 = (void *)(base + 0x1B98100);
    ph_thread_attach = (void *)(base + 0x1B98114);
    ph_class_get_image = (void *)(base + 0x1B97890);
    return ph_domain_get && ph_object_new;
}

// il2cpp System.String: [klass][monitor][int32 length][utf16 chars]
static int ph_string_equals_ascii(Il2CppString *s, const char *ascii) {
    if (!s) return 0;
    int32_t len = *(int32_t *)((char *)s + 0x10);
    const uint16_t *chars = (const uint16_t *)((char *)s + 0x14);
    for (int32_t i = 0; i < len; i++)
        if (chars[i] != (uint8_t)ascii[i] || !ascii[i]) return 0;
    return ascii[len] == 0;
}

#endif
