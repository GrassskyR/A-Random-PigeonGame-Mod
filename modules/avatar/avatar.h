#ifndef PHIGROS_AVATAR_H
#define PHIGROS_AVATAR_H

#include <jni.h>
#include <stdint.h>

typedef void *(*AvatarHook)(uintptr_t rva, void *replacement, const uint32_t expected[4]);

// Copy the PNG before starting the installer thread; this function uses no Unity API.
void avatar_prepare(JNIEnv *env, jbyteArray png);
// Bind the current sample's runtime and install both loader hooks once.
void avatar_install(uintptr_t il2cpp_base, AvatarHook hook);

#endif
