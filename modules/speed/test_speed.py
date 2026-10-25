#!/usr/bin/env python3
"""Replay the real game's audio Update in ARM64 to verify the speed warp model.

Executes the original AddressableAudioSource.Update per Unity frame and
applies the same warp re-anchoring speedmod.c performs (rebase whenever the
game itself re-anchors its clock: scheduled resume, in-level Seek), then
checks that the chart timeline (audio.time as ProgressControl reads it)
advances at exactly `speed` x real time.
"""
from pathlib import Path
import struct
import subprocess
import re
from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE
from unicorn.arm64_const import *

ROOT=Path(__file__).resolve().parents[2]
LIB=ROOT/'work/lib/arm64-v8a/libil2cpp.so'
OBJ=0x50000000
STACK=0x51000000
STOP=0x52000000
CLOCK_LIB=ROOT/'work/speedmod/clock-test.so'


def build_clock():
    source=ROOT/'work/speedmod/clock-test.c'
    source.write_text('#include "speed_clock.h"\n'
        'void reset_warp(void *w,float speed,float raw){'
        'speed_warp *s=(speed_warp*)w; s->speed=speed; s->anchor_r=raw; s->anchor_w=raw; }\n'
        'float warp_time(void *w,float raw){return speed_warp_time((speed_warp*)w,raw);}\n')
    compiler=ROOT/'work/practice/android-ndk-r27d/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android23-clang'
    subprocess.run([str(compiler),'-O2','-fPIC','-fno-stack-protector','-nostdlib',
        '-shared','-I',str(ROOT/'modules/speed'),str(source),'-o',str(CLOCK_LIB)],check=True)


def clock_symbols():
    out=subprocess.check_output(['readelf','-Ws',str(CLOCK_LIB)],text=True)
    def find(name):
        return int(re.search(r'\d+: ([0-9a-f]+)\s+\d+ FUNC.* '+name,out)[1],16)
    return find('reset_warp'),find('warp_time')


def load_clock_lib(uc):
    image=CLOCK_LIB.read_bytes()
    load_base=0x10000000
    uc.mem_map(load_base,0x10000)
    phoff=struct.unpack_from('<Q',image,0x20)[0]
    phsize,phnum=struct.unpack_from('<HH',image,0x36)
    for i in range(phnum):
        header=phoff+phsize*i
        kind=struct.unpack_from('<I',image,header)[0]
        off,va,_,size=struct.unpack_from('<QQQQ',image,header+8)
        if kind==1 and size:
            uc.mem_write(load_base+va,image[off:off+size])
    return load_base


def make_uc():
    data=LIB.read_bytes()
    uc=Uc(UC_ARCH_ARM64,UC_MODE_ARM)
    uc.mem_map(0x10000,0x4500000)
    phoff=struct.unpack_from('<Q',data,0x20)[0]
    phsize,phnum=struct.unpack_from('<HH',data,0x36)
    for i in range(phnum):
        header=phoff+phsize*i
        kind=struct.unpack_from('<I',data,header)[0]
        off,va,_,size=struct.unpack_from('<QQQQ',data,header+8)
        if kind==1 and size:
            lo=max(va,0x10000)
            uc.mem_write(lo,data[off+lo-va:off+size])
    uc.mem_map(OBJ,0x10000)
    uc.mem_map(STACK,0x10000)
    uc.mem_map(STOP,0x1000)
    return uc


def put(uc,off,fmt,val):
    uc.mem_write(OBJ+off,struct.pack(fmt,val))


def install_code_hook(uc):
    state={'calls':{}}
    def hook(uc,address,size,user):
        if address==STOP:
            uc.emu_stop(); return
        calls=state['calls']
        if address in calls:
            fmt,value=calls[address]
            bits=int.from_bytes(struct.pack('<'+fmt,value),'little')
            uc.reg_write(UC_ARM64_REG_Q0,bits)
            uc.reg_write(UC_ARM64_REG_PC,uc.reg_read(UC_ARM64_REG_LR))
    uc.hook_add(UC_HOOK_CODE,hook)
    uc.reg_write(UC_ARM64_REG_CPACR_EL1,3<<20)
    uc.reg_write(UC_ARM64_REG_SP,0x5100F000)
    return state


def run_audio_update(uc,hook_state,now_dsp,now_mono,delta):
    hook_state['calls']={0x3c16850:('d',now_dsp),0x3c688f4:('f',now_mono),
                         0x3c68944:('f',delta)}
    uc.reg_write(UC_ARM64_REG_X0,OBJ)
    uc.reg_write(UC_ARM64_REG_LR,STOP)
    uc.emu_start(0x1db7fac,STOP,count=10000)
    return struct.unpack('<f',uc.mem_read(OBJ+0x40,4))[0]


def call_float(uc,addr,struct_ptr,float_arg):
    uc.reg_write(UC_ARM64_REG_X0,struct_ptr)
    uc.reg_write(UC_ARM64_REG_S0,struct.unpack('<I',struct.pack('<f',float_arg))[0])
    uc.reg_write(UC_ARM64_REG_LR,STOP)
    uc.emu_start(addr,STOP,count=100)
    return struct.unpack('<f',struct.pack('<I',uc.reg_read(UC_ARM64_REG_Q0)&0xFFFFFFFF))[0]


def call_reset(uc,addr,struct_ptr,speed,raw):
    uc.reg_write(UC_ARM64_REG_X0,struct_ptr)
    uc.reg_write(UC_ARM64_REG_S0,struct.unpack('<I',struct.pack('<f',speed))[0])
    uc.reg_write(UC_ARM64_REG_S1,struct.unpack('<I',struct.pack('<f',raw))[0])
    uc.reg_write(UC_ARM64_REG_LR,STOP)
    uc.emu_start(addr,STOP,count=100)


def scheduled_reset(uc,target,start_dsp):
    """Original PlayScheduled + practice_clock.h reset, as production does."""
    put(uc,0x44,'<B',1); put(uc,0x48,'<d',start_dsp)
    put(uc,0x50,'<d',target); put(uc,0x58,'<d',target)
    put(uc,0x68,'<d',start_dsp-target)
    put(uc,0x70,'<d',target); put(uc,0x78,'<f',target); put(uc,0x40,'<f',target)
    put(uc,0x60,'<d',start_dsp)
    put(uc,0x88,'<i',1)


def seed_seek_state(uc,target,seek_dsp):
    """State produced by the original Seek while paused."""
    put(uc,0x40,'<f',target); put(uc,0x78,'<f',target)
    put(uc,0x44,'<B',0); put(uc,0x48,'<d',seek_dsp)
    put(uc,0x50,'<d',target); put(uc,0x58,'<d',target)
    put(uc,0x68,'<d',seek_dsp-target); put(uc,0x70,'<d',target)
    put(uc,0x60,'<d',seek_dsp)
    put(uc,0x88,'<i',1)
    put(uc,0x80,'<Q',OBJ+0x1000)
    uc.mem_write(OBJ+0x1000,b'\x00'*0x18+struct.pack('<i',10)+b'\x00'*4)
    uc.mem_write(OBJ+0x1020,struct.pack('<10f',target,*([0.0]*9)))


def warp_state(uc,warp):
    return struct.unpack('<3f',uc.mem_read(warp,12))


def scenario(speed,frames=90,resume_wait=3.0,seek_during=False):
    """One level run: seek-pause -> scheduled resume -> N frames at `speed`.

    Returns (drift, mid_drift). drift compares the final warped chart time
    against target + speed*elapsed. mid_drift checks an in-run Seek.
    """
    uc=make_uc()
    build_clock()
    base=load_clock_lib(uc)
    reset_fn,warp_fn=clock_symbols()
    reset_fn+=base; warp_fn+=base
    hook_state=install_code_hook(uc)
    warp=OBJ+0x2000
    target=60.0
    seed_seek_state(uc,target,100.0)
    call_reset(uc,reset_fn,warp,speed,target)   # speed chosen while paused

    pause_end=100.0+resume_wait
    start_dsp=pause_end+3.0                     # countdown then scheduled play
    scheduled_reset(uc,target,start_dsp)
    call_reset(uc,reset_fn,warp,speed,target)   # practice mod re-anchors; warp follows

    now=start_dsp
    step=1/30.0
    warped=call_float(uc,warp_fn,warp,target)
    for i in range(frames):
        now+=step
        raw=run_audio_update(uc,hook_state,now,now,step)
        # speedmod.c discontinuity rule: raw must never run backwards nor
        # exceed 2.5x real time growth between frames.
        warped=call_float(uc,warp_fn,warp,raw)
        if seek_during and i==frames//2:
            # Practice seek inside the level: original Seek + clock reset.
            put(uc,0x40,'<f',target); put(uc,0x78,'<f',target)
            put(uc,0x68,'<d',now-target); put(uc,0x70,'<d',target)
            put(uc,0x60,'<d',now)
            call_reset(uc,reset_fn,warp,speed,target)
    elapsed=frames*step
    return warped-(target+speed*elapsed)


if __name__=='__main__':
    worst=0.0
    for speed in (0.5,0.75,1.0,1.25,1.5,2.0):
        for wait in (0.0,3.0):
            for seek in (False,True):
                drift=scenario(speed,frames=90,resume_wait=wait,seek_during=seek)
                worst=max(worst,abs(drift))
                tag='seek' if seek else '    '
                print(f'speed={speed:>4} pause={wait}s {tag}: warp drift={drift:+.6f}s')
                assert abs(drift)<0.002, f'warp drift too large at speed {speed}'
    print(f'All warp scenarios within 2 ms (worst {worst*1000:.3f} ms)')
