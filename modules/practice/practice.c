#define _GNU_SOURCE
#include <jni.h>
#include <android/log.h>
#include <link.h>
#include <pthread.h>
#include <stdatomic.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/mman.h>
#include <time.h>
#include <unistd.h>
#include <math.h>
#include "practice_clock.h"

// Phigros 4.0.1.1, ARM64. All Unity object access runs in Pause.Update.
#define LOG(...) __android_log_print(ANDROID_LOG_INFO,"PhigrosPractice",__VA_ARGS__)
#define AT(type,p,o) (*(type*)((char*)(p)+(o)))
static uintptr_t base;
static void (*pause_original)(void*,void*);
static void (*scheduled_original)(void*,double,void*);
static void *practice_audio;
static _Atomic float request = -1, position, duration;
static _Atomic uint64_t seen;
static _Atomic int ready;
static uint64_t milliseconds(void) {
    struct timespec t; clock_gettime(CLOCK_MONOTONIC,&t);
    return (uint64_t)t.tv_sec*1000+t.tv_nsec/1000000;
}
static int count(void *list) { return list ? AT(int,list,0x18) : 0; }
static void *item(void *list,int i) {
    return AT(void*,AT(void*,list,0x10),0x20+8*i);
}
static void clear_list(void *list) {
    if (!list) return;
    memset((char*)AT(void*,list,0x10)+0x20,0,(size_t)count(list)*8);
    AT(int,list,0x18)=0; AT(int,list,0x1c)++;
}
static void destroy_controls(void *list) {
    void *(*gameobject)(void*,void*)=(void*)(base+0x3C5D780);
    void (*active)(void*,int,void*)=(void*)(base+0x3C60750);
    void (*destroy)(void*,void*)=(void*)(base+0x3C652C4);
    for (int i=0;i<count(list);i++) {
        void *control=item(list,i);
        void *go=gameobject(control,0);
        active(go,0,0); destroy(go,0);
    }
    clear_list(list);
}
static void reset_notes(void *list,float target) {
    for(int i=0;i<count(list);i++) {
        void *n=item(list,i);
        int past=AT(float,n,0x2c)<target;
        AT(uint8_t,n,0x28)=past;
        AT(uint8_t,n,0x29)=past;
    }
}
static void seek_chart(void *pause,float percent) {
    void *p=AT(void*,pause,0x28), *info=AT(void*,p,0x20);
    void *judge=AT(void*,p,0x30), *manager=AT(void*,judge,0x90);
    void *audio=AT(void*,p,0x38);
    practice_audio=audio;
    float length=AT(float,p,0x94), offset=AT(float,p,0x98);
    float target=fmaxf(0,fminf(percent*length,fmaxf(0,length-0.05f)));
    void (*audio_seek)(void*,float,void*)=(void*)(base+0x1DB837C);
    void (*line_update)(void*,void*)=(void*)(base+0x1D78130);
    void (*create)(void*,int,int,void*)=(void*)(base+0x1D76A18);
    // Retire old objects before creating replacements; their MonoBehaviours
    // cannot judge again while deferred Unity destruction is pending.
    for(int o=0x38;o<=0x50;o+=8) destroy_controls(AT(void*,manager,o));
    reset_notes(AT(void*,info,0x38),target);
    AT(float,p,0x90)=target;
    AT(float,p,0xb8)=target+offset;
    AT(float,p,0x9c)=-1;
    AT(float,judge,0x48)=target;
    AT(float,judge,0x4c)=0;
    AT(int,judge,0x80)=0; AT(int,judge,0x84)=0;
    void *finger=AT(void*,pause,0x20);
    clear_list(AT(void*,finger,0x20));
    void *lines=AT(void*,judge,0x30);
    int generated=0;
    for(int i=0;i<count(lines);i++) {
        void *line=item(lines,i);
        for(int o=0xec;o<=0xf8;o+=4) AT(int,line,o)=0;
        // The game's production index is Count-1 (all notes instantiated once).
        // Suppress automatic production, refresh line transform, then rebuild
        // future notes using the existing note factory and original chart refs.
        int above=count(AT(void*,line,0xa0)), below=count(AT(void*,line,0xa8));
        AT(int,line,0xfc)=AT(int,line,0x104)=above-1;
        AT(int,line,0x100)=AT(int,line,0x108)=below-1;
        line_update(line,0);
        for(int side=0;side<2;side++) {
            void *notes=AT(void*,line,side ? 0xa0 : 0xa8);
            for(int n=0;n<count(notes);n++) {
                void *note=item(notes,n);
                // A Hold already started before the seek point is skipped;
                // moving slightly before its head lets it be practised normally.
                if(AT(float,note,0x2c)>=target) { create(line,n,side,0); generated++; }
            }
        }
    }
    audio_seek(audio,target+offset,0);
    // Play(true) will use audioTime for the existing scheduled resume.
    AT(uint8_t,p,0x8b)=0;
    AT(uint8_t,p,0x8c)=0;
    atomic_store(&position,target);
    LOG("seek %.3f sec (%.2f%%), recreated %d notes",target,percent*100,generated);
}
static void pause_update(void *self,void *method) {
    void *p=AT(void*,self,0x28);
    if (p && !AT(uint8_t,p,0xa6) && AT(float,p,0x94)>0 && !AT(uint8_t,p,0x8a)) {
        atomic_store(&position,AT(float,p,0x90));
        atomic_store(&duration,AT(float,p,0x94));
        atomic_store(&seen,milliseconds());
        float value=atomic_exchange(&request,-1);
        if(value>=0) seek_chart(self,value);
    }
    pause_original(self,method);
}
// Called by ProgressControl one second before its resume countdown ends.
static void audio_scheduled(void *audio,double delay,void *method) {
    scheduled_original(audio,delay,method);
    if(audio==practice_audio) {
        float (*mono_time)(void*)=(void*)(base+0x3C688F4);
        practice_reset_clock(audio,AT(double,audio,0x48),mono_time(0)+delay);
    }
}
static int find_module(struct dl_phdr_info *info,size_t size,void *arg) {
    (void)size;(void)arg;
    if(info->dlpi_name && strstr(info->dlpi_name,"libil2cpp.so")) {
        base=info->dlpi_addr; return 1;
    }
    return 0;
}
static void jump(void *where,void *target) {
    uint32_t code[]={0x58000051,0xd61f0220}; // ldr x17,+8; br x17
    memcpy(where,code,8); memcpy((char*)where+8,&target,8);
}
// The selected entries have only stack/register instructions in their first
// 16 bytes. No PC-relative instruction is copied into these trampolines.
static void *hook_entry(uintptr_t rva,void *replacement,const uint32_t expected[4]) {
    void *entry=(void*)(base+rva);
    if(memcmp(entry,expected,16)) { LOG("hook entry mismatch at %lx",(unsigned long)rva); return 0; }
    void *trampoline=mmap(0,4096,PROT_READ|PROT_WRITE,MAP_PRIVATE|MAP_ANONYMOUS,-1,0);
    if(trampoline==MAP_FAILED) return 0;
    memcpy(trampoline,entry,16); jump((char*)trampoline+16,(char*)entry+16);
    mprotect(trampoline,4096,PROT_READ|PROT_EXEC);
    __builtin___clear_cache(trampoline,(char*)trampoline+32);
    size_t page=(size_t)sysconf(_SC_PAGESIZE);
    void *start=(void*)((uintptr_t)entry&~(page-1));
    if(mprotect(start,page,PROT_READ|PROT_WRITE|PROT_EXEC)) { LOG("hook mprotect failed"); return 0; }
    jump(entry,replacement);
    __builtin___clear_cache(entry,(char*)entry+16);
    mprotect(start,page,PROT_READ|PROT_EXEC);
    return trampoline;
}
static void *install(void *arg) {
    (void)arg;
    for(int attempt=0;attempt<600;attempt++) {
        dl_iterate_phdr(find_module,0);
        if(base) break;
        usleep(100000);
    }
    if(!base) { LOG("libil2cpp not found"); return 0; }
    const uint32_t pause_head[]={0xd10443ff,0x6d092beb,0x6d0a23e9,0xa90b7bfd};
    const uint32_t scheduled_head[]={0x6dbe23e9,0xa9014ffe,0xaa0003f3,0xaa1f03e0};
    scheduled_original=hook_entry(0x1DB84EC,audio_scheduled,scheduled_head);
    pause_original=hook_entry(0x1D87530,pause_update,pause_head);
    if(!scheduled_original || !pause_original) return 0;
    atomic_store(&ready,1); LOG("Pause.Update and scheduled audio clock hooked (v2)");
    return 0;
}
JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM *vm,void *reserved) {
    (void)vm;(void)reserved; pthread_t thread;
    pthread_create(&thread,0,install,0); pthread_detach(thread);
    return JNI_VERSION_1_6;
}
JNIEXPORT jfloatArray JNICALL Java_com_phigros_local_PracticeOverlay_status(JNIEnv *env,jclass cls) {
    (void)cls;
    float values[]={milliseconds()-atomic_load(&seen)<250 ? 1.0f:0.0f,
        atomic_load(&position),atomic_load(&duration),(float)atomic_load(&ready)};
    jfloatArray result=(*env)->NewFloatArray(env,4);
    (*env)->SetFloatArrayRegion(env,result,0,4,values); return result;
}
JNIEXPORT void JNICALL Java_com_phigros_local_PracticeOverlay_seek(JNIEnv *env,jclass cls,jfloat value) {
    (void)env;(void)cls;
    if(isfinite(value) && value>=0 && value<=1 && milliseconds()-atomic_load(&seen)<250)
        atomic_store(&request,value);
}
