#define _GNU_SOURCE
#include <android/log.h>
#include <stddef.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include "speed_judgement.h"

#define LOG(...) __android_log_print(ANDROID_LOG_INFO, "PhigrosSpeed", __VA_ARGS__)
#ifndef MAP_FIXED_NOREPLACE
#define MAP_FIXED_NOREPLACE 0x100000
#endif

// Change only these load instructions, never their shared read-only constants.
// Each branch island loads a private scaled float and returns to the next
// instruction without changing integer registers, flags, SP or LR.
static const struct {
    uintptr_t rva;
    uint32_t expected;
    unsigned fp_register;
    float seconds;
} gates[] = {
    {0x1D85024, 0xBD419D20, 0,  0.100f}, // Drag contact window
    {0x1D850C0, 0xBD450900, 0,  0.005f}, // Drag score trigger
    {0x1D85638, 0xBD450942, 2,  0.005f}, // Flick score trigger
    {0x1D86688, 0xBD416142, 2, -0.220f}, // Hold early completion
    {0x1D8675C, 0x1E2A1001, 1,  0.250f}, // Hold late cleanup
};
#define GATE_COUNT (sizeof(gates) / sizeof(gates[0]))

static float *judgement_values;

void speed_set_judgement_gates(float speed) {
    if (!judgement_values) return;
    for (size_t i = 0; i < GATE_COUNT; i++)
        judgement_values[i] = gates[i].seconds * speed;
}

static uint32_t branch(uintptr_t from, uintptr_t to) {
    return 0x14000000 | (((to - from) >> 2) & 0x03ffffff);
}

static void *allocate_near(uintptr_t base, size_t page) {
    // A normal mmap hint can be ignored (observed under MuMu/Houdini). Reserve
    // an exact free pair of pages; NOREPLACE must never overwrite a live map.
    uintptr_t hint = (base + 0x4500000 + page - 1) & ~(page - 1);
    for (uintptr_t distance = 0; distance < 0x4000000; distance += 0x10000) {
        uintptr_t wanted = hint + distance;
        void *memory = mmap((void*)wanted, 2 * page, PROT_READ | PROT_WRITE,
                            MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED_NOREPLACE, -1, 0);
        if (memory == (void*)wanted) return memory;
        // Older kernels may ignore the flag. Reject and unmap any other address.
        if (memory != MAP_FAILED) munmap(memory, 2 * page);
    }
    return MAP_FAILED;
}

int speed_install_judgement_gates(uintptr_t base) {
    for (size_t i = 0; i < GATE_COUNT; i++) {
        if (*(uint32_t*)(base + gates[i].rva) != gates[i].expected) {
            LOG("judgement instruction mismatch at %lx", (unsigned long)gates[i].rva);
            return 0;
        }
    }

    size_t page = (size_t)sysconf(_SC_PAGESIZE);
    // All candidates stay within ARM64 B's +/-128 MiB reach of these sites.
    uint32_t *code = allocate_near(base, page);
    if (code == MAP_FAILED) { LOG("judgement mmap failed"); return 0; }
    for (size_t i = 0; i < GATE_COUNT; i++) {
        intptr_t distance = (intptr_t)&code[2 * i] - (intptr_t)(base + gates[i].rva);
        if (distance <= -0x8000000 || distance >= 0x8000000) {
            LOG("judgement islands outside branch range");
            munmap(code, 2 * page);
            return 0;
        }
    }
    float *values = (float*)((char*)code + page);
    for (size_t i = 0; i < GATE_COUNT; i++) {
        uintptr_t island = (uintptr_t)&code[2 * i];
        values[i] = gates[i].seconds;
        code[2 * i] = 0x1c000000 | ((((uintptr_t)&values[i] - island) >> 2) << 5)
            | gates[i].fp_register; // ldr sN, private literal
        code[2 * i + 1] = branch(island + 4, base + gates[i].rva + 4);
    }
    if (mprotect(code, page, PROT_READ | PROT_EXEC)) {
        LOG("judgement code mprotect failed");
        munmap(code, 2 * page);
        return 0;
    }
    __builtin___clear_cache((char*)code, (char*)code + GATE_COUNT * 8);
    for (size_t i = 0; i < GATE_COUNT; i++) {
        uintptr_t site = base + gates[i].rva;
        void *start = (void*)(site & ~(page - 1));
        if (mprotect(start, page, PROT_READ | PROT_WRITE | PROT_EXEC)) {
            LOG("judgement site mprotect failed");
            return 0;
        }
        *(uint32_t*)site = branch(site, (uintptr_t)&code[2 * i]);
        __builtin___clear_cache((void*)site, (char*)site + 4);
        mprotect(start, page, PROT_READ | PROT_EXEC);
    }
    judgement_values = values;
    LOG("five judgement gates installed");
    return 1;
}
