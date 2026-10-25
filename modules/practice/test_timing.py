#!/usr/bin/env python3
"""Replay the real game's audio Update in ARM64 to check seek/pause/resume clocks."""
from pathlib import Path
import struct
import subprocess
import re
from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE
from unicorn.arm64_const import *

ROOT=Path(__file__).resolve().parents[2]
import sys
sys.path.insert(0, str(ROOT))
from tools.versioning import context
CTX = context()
CTX.ensure_materials()
F = CTX.field
LIB=CTX.library
OBJ=0x50000000
STACK=0x51000000
STOP=0x52000000

CLOCK_LIB=CTX.stage_work('practice')/'clock-test.so'

def build_clock():
    CLOCK_LIB.parent.mkdir(parents=True,exist_ok=True)
    source=CTX.stage_work('practice')/'clock-test.c'
    source.write_text('#include "practice_clock.h"\n'
        'void reset_clock(void *audio,double dsp,double mono) {'
        'practice_reset_clock(audio,dsp,mono); }\n')
    compiler=CTX.compiler
    subprocess.run([str(compiler),'-O2','-fPIC','-fno-stack-protector','-nostdlib',
        '-shared','-I',str(CTX.generate_header(('practice',))),'-I',str(ROOT/'modules/practice'),str(source),'-o',str(CLOCK_LIB)],check=True)

def run_compiled_reset(uc,obj,dsp):
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
    symbols=subprocess.check_output(['readelf','-Ws',str(CLOCK_LIB)],text=True)
    value=int(re.search(r'\d+: ([0-9a-f]+)\s+\d+ FUNC.* reset_clock',symbols)[1],16)
    uc.reg_write(UC_ARM64_REG_X0,obj)
    uc.reg_write(UC_ARM64_REG_Q0,int.from_bytes(struct.pack('<d',dsp),'little'))
    uc.reg_write(UC_ARM64_REG_Q1,int.from_bytes(struct.pack('<d',dsp),'little'))
    uc.reg_write(UC_ARM64_REG_LR,STOP)
    uc.emu_start(load_base+value,STOP,count=1000)

def replay(paused_for,offset_fixed,during_countdown=False):
    data=LIB.read_bytes()
    uc=Uc(UC_ARCH_ARM64,UC_MODE_ARM)
    uc.mem_map(0x10000,CTX.game_map_size - 0x10000)
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
    def put(off,fmt,val): uc.mem_write(OBJ+off,struct.pack(fmt,val))
    target=60.0
    seek_dsp=100.0
    start_dsp=seek_dsp+paused_for+3.0
    now_dsp=start_dsp-0.5 if during_countdown else start_dsp+0.016
    # State produced by Seek, followed by original PlayScheduled.
    put(F('AddressableAudioSource.startTime'),'<f',target); put(F('AddressableAudioSource.time'),'<f',target)
    put(F('AddressableAudioSource.playFlag'),'<B',0 if during_countdown else 1); put(F('AddressableAudioSource.startDspTime'),'<d',start_dsp)
    put(F('AddressableAudioSource.lastFrameDspTime'),'<d',target); put(F('AddressableAudioSource.targetLastFrameDspTime'),'<d',target)
    put(F('AddressableAudioSource.lastFrameMonoTime'),'<d',seek_dsp)
    put(F('AddressableAudioSource.dspTimeOffset'),'<d',seek_dsp-target)
    put(F('AddressableAudioSource.dspTime'),'<d',target); put(F('AddressableAudioSource.internalTime'),'<f',target)
    put(F('AddressableAudioSource.lastFrameDspTimeList'),'<Q',OBJ+0x1000); put(F('AddressableAudioSource.dspValueFrameCount'),'<i',1)
    uc.mem_write(OBJ+0x1000+F('Array.length'),struct.pack('<i',10))
    uc.mem_write(OBJ+0x1000+F('Array.data'),struct.pack('<10f',target,*([0.0]*9)))
    calls={CTX.fixture('audio_dsp_time'):('d',now_dsp),CTX.rva('practice.mono_time'):('f',now_dsp),CTX.fixture('frame_delta'):('f',0.016)}
    def hook(uc,address,size,user):
        if address==STOP:
            uc.emu_stop(); return
        if address in calls:
            fmt,value=calls[address]
            bits=int.from_bytes(struct.pack('<'+fmt,value),'little')
            uc.reg_write(UC_ARM64_REG_Q0,bits)
            uc.reg_write(UC_ARM64_REG_PC,uc.reg_read(UC_ARM64_REG_LR))
        elif address in (CTX.fixture('raise_exception_a'),CTX.fixture('raise_exception_b')):
            raise AssertionError('Original game raised an exception')
    uc.hook_add(UC_HOOK_CODE,hook)
    # Unicorn starts with SIMD/FP disabled.
    uc.reg_write(UC_ARM64_REG_CPACR_EL1,3<<20)
    uc.reg_write(UC_ARM64_REG_SP,STACK+0x8000)
    if offset_fixed:
        run_compiled_reset(uc,OBJ,start_dsp)
    uc.reg_write(UC_ARM64_REG_X0,OBJ)
    uc.reg_write(UC_ARM64_REG_LR,STOP)
    uc.emu_start(CTX.fixture('audio_update'),STOP,count=10000)
    result=struct.unpack('<f',uc.mem_read(OBJ+F('AddressableAudioSource.time'),4))[0]
    return result-(target if during_countdown else target+0.016)

if __name__=='__main__':
    build_clock()
    for wait in (0,2,8):
        old=replay(wait,False)
        fixed=replay(wait,True)
        print(f'pause={wait}s: old drift={old:.6f}s, reset-at-scheduled-epoch drift={fixed:.6f}s')
        assert old>2.5, 'Old seek/resume should expose the stale clock defect'
        assert abs(fixed)<0.001, 'Scheduled epoch must keep audio clock aligned'

    for wait in (0,2,8):
        frozen=replay(wait,True,during_countdown=True)
        assert abs(frozen)<0.001, 'Countdown must retain the selected chart position'
    print('Countdown: target position stays frozen until scheduled audio starts')
