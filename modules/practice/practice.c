#define _GNU_SOURCE
#include <jni.h>
#include "phigros_version.h"
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
static int count(void *list) { return list ? AT(int,list,PH_F_LIST_SIZE) : 0; }
static void *item(void *list,int i) {
    return AT(void*,AT(void*,list,PH_F_LIST_ITEMS),PH_F_ARRAY_DATA+sizeof(void*)*i);
}
static void clear_list(void *list) {
    if (!list) return;
    memset((char*)AT(void*,list,PH_F_LIST_ITEMS)+PH_F_ARRAY_DATA,0,(size_t)count(list)*8);
    AT(int,list,PH_F_LIST_SIZE)=0; AT(int,list,PH_F_LIST_VERSION)++;
}
static void destroy_controls(void *list) {
    void *(*gameobject)(void*,void*)=(void*)(base+PH_RVA_PRACTICE_GAME_OBJECT);
    void (*active)(void*,int,void*)=(void*)(base+PH_RVA_PRACTICE_SET_ACTIVE);
    void (*destroy)(void*,void*)=(void*)(base+PH_RVA_PRACTICE_DESTROY);
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
        int past=AT(float,n,PH_F_CHARTNOTE_REALTIME)<target;
        AT(uint8_t,n,PH_F_CHARTNOTE_ISJUDGED)=past;
        AT(uint8_t,n,PH_F_CHARTNOTE_ISJUDGEDFORFLICK)=past;
    }
}
static void seek_chart(void *pause,float percent) {
    void *p=AT(void*,pause,PH_F_PAUSE_PROGRESSCONTROL), *info=AT(void*,p,PH_F_PROGRESSCONTROL_LEVELINFORMATION);
    void *judge=AT(void*,p,PH_F_PROGRESSCONTROL_JUDGECONTROL), *manager=AT(void*,judge,PH_F_JUDGECONTROL_NOTEUPDATEMANAGER);
    void *audio=AT(void*,p,PH_F_PROGRESSCONTROL_AUDIOSOURCE);
    practice_audio=audio;
    float length=AT(float,p,PH_F_PROGRESSCONTROL__AUDIOLENGTH), offset=AT(float,p,PH_F_PROGRESSCONTROL__OFFSET);
    float target=fmaxf(0,fminf(percent*length,fmaxf(0,length-0.05f)));
    void (*audio_seek)(void*,float,void*)=(void*)(base+PH_RVA_PRACTICE_AUDIO_SEEK);
    void (*line_update)(void*,void*)=(void*)(base+PH_RVA_PRACTICE_LINE_UPDATE);
    void (*create)(void*,int,int,void*)=(void*)(base+PH_RVA_PRACTICE_CREATE_NOTE);
    // Retire old objects before creating replacements; their MonoBehaviours
    // cannot judge again while deferred Unity destruction is pending.
    const int control_offsets[] = {PH_F_NOTEUPDATEMANAGER_CLICKCONTROLS, PH_F_NOTEUPDATEMANAGER_DRAGCONTROLS, PH_F_NOTEUPDATEMANAGER_HOLDCONTROLS, PH_F_NOTEUPDATEMANAGER_FLICKCONTROLS};
    for(size_t k=0;k<sizeof(control_offsets)/sizeof(control_offsets[0]);k++)
        destroy_controls(AT(void*,manager,control_offsets[k]));
    reset_notes(AT(void*,info,PH_F_LEVELINFORMATION_CHARTNOTESORTBYTIME),target);
    AT(float,p,PH_F_PROGRESSCONTROL_NOWTIME)=target;
    AT(float,p,PH_F_PROGRESSCONTROL_AUDIOTIME)=target+offset;
    AT(float,p,PH_F_PROGRESSCONTROL__STARTTIME)=-1;
    AT(float,judge,PH_F_JUDGECONTROL_NOWTIME)=target;
    AT(float,judge,PH_F_JUDGECONTROL_PAUSETIME)=0;
    AT(int,judge,PH_F_JUDGECONTROL_STARTINDEX)=0; AT(int,judge,PH_F_JUDGECONTROL_ENDINDEX)=0;
    void *finger=AT(void*,pause,PH_F_PAUSE_FINGERMANAGEMENT);
    clear_list(AT(void*,finger,PH_F_FINGERMANAGEMENT_FINGERS));
    void *lines=AT(void*,judge,PH_F_JUDGECONTROL_JUDGELINECONTROLS);
    int generated=0;
    for(int i=0;i<count(lines);i++) {
        void *line=item(lines,i);
        const int event_offsets[] = {PH_F_JUDGELINECONTROL_NOWSPEEDINDEX, PH_F_JUDGELINECONTROL_NOWDISAPPEARINDEX, PH_F_JUDGELINECONTROL_NOWMOVEINDEX, PH_F_JUDGELINECONTROL_NOWROTATEINDEX};
        for(size_t k=0;k<sizeof(event_offsets)/sizeof(event_offsets[0]);k++) AT(int,line,event_offsets[k])=0;
        // The game's production index is Count-1 (all notes instantiated once).
        // Suppress automatic production, refresh line transform, then rebuild
        // future notes using the existing note factory and original chart refs.
        int above=count(AT(void*,line,PH_F_JUDGELINECONTROL_NOTESABOVE)), below=count(AT(void*,line,PH_F_JUDGELINECONTROL_NOTESBELOW));
        AT(int,line,PH_F_JUDGELINECONTROL_NOWPRODUCTINDEXABOVE)=AT(int,line,PH_F_JUDGELINECONTROL_LASTPRODUCTINDEXABOVE)=above-1;
        AT(int,line,PH_F_JUDGELINECONTROL_NOWPRODUCTINDEXBELOW)=AT(int,line,PH_F_JUDGELINECONTROL_LASTPRODUCTINDEXBELOW)=below-1;
        line_update(line,0);
        for(int side=0;side<2;side++) {
            void *notes=AT(void*,line,side ? PH_F_JUDGELINECONTROL_NOTESABOVE : PH_F_JUDGELINECONTROL_NOTESBELOW);
            for(int n=0;n<count(notes);n++) {
                void *note=item(notes,n);
                // A Hold already started before the seek point is skipped;
                // moving slightly before its head lets it be practised normally.
                if(AT(float,note,PH_F_CHARTNOTE_REALTIME)>=target) { create(line,n,side,0); generated++; }
            }
        }
    }
    audio_seek(audio,target+offset,0);
    // Play(true) will use audioTime for the existing scheduled resume.
    AT(uint8_t,p,PH_F_PROGRESSCONTROL__PLAYPREPARED)=0;
    AT(uint8_t,p,PH_F_PROGRESSCONTROL__VOLUMESET)=0;
    atomic_store(&position,target);
    LOG("seek %.3f sec (%.2f%%), recreated %d notes",target,percent*100,generated);
}
static void pause_update(void *self,void *method) {
    void *p=AT(void*,self,PH_F_PAUSE_PROGRESSCONTROL);
    if (p && !AT(uint8_t,p,PH_F_PROGRESSCONTROL__INCHALLENGEMODE) && AT(float,p,PH_F_PROGRESSCONTROL__AUDIOLENGTH)>0 && !AT(uint8_t,p,PH_F_PROGRESSCONTROL_ISPLAYING)) {
        atomic_store(&position,AT(float,p,PH_F_PROGRESSCONTROL_NOWTIME));
        atomic_store(&duration,AT(float,p,PH_F_PROGRESSCONTROL__AUDIOLENGTH));
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
        float (*mono_time)(void*)=(void*)(base+PH_RVA_PRACTICE_MONO_TIME);
        practice_reset_clock(audio,AT(double,audio,PH_F_ADDRESSABLEAUDIOSOURCE_STARTDSPTIME),mono_time(0)+delay);
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
    const uint32_t pause_head[]=PH_HEAD_PRACTICE_PAUSE_UPDATE;
    const uint32_t scheduled_head[]=PH_HEAD_PRACTICE_AUDIO_SCHEDULED;
    scheduled_original=hook_entry(PH_RVA_PRACTICE_AUDIO_SCHEDULED,audio_scheduled,scheduled_head);
    pause_original=hook_entry(PH_RVA_PRACTICE_PAUSE_UPDATE,pause_update,pause_head);
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
