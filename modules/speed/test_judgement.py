#!/usr/bin/env python3
"""Replay production speed hooks with the original game's judgement instructions."""
import struct
import sys
from pathlib import Path

from unicorn.arm64_const import *

ROOT = Path(__file__).resolve().parents[2]
import sys
sys.path.insert(0, str(ROOT))
from tools.versioning import context
CTX = context()
CTX.ensure_materials()
F = CTX.field
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(ROOT / 'tools'))
from build_speed_apk import build_speed_library
from modules.avatar.test_avatar import Replay, HEAP


class JudgementReplay(Replay):
    def __init__(self):
        super().__init__()
        self.progress, self.audio, source, slot, klass, self.statics = (
            self.alloc(0x100) for _ in range(6))
        self.put(CTX.rva('speed.judge_slot'), '<Q', slot)
        self.put(slot, '<Q', klass)
        self.put(klass + F('Il2CppClass.static_fields'), '<Q', self.statics)
        self.put(klass + F('Il2CppClass.initialized'), '<I', 1)
        self.put(self.progress + F('ProgressControl.audioSource'), '<Q', self.audio)
        self.put(self.progress + F('ProgressControl._audioLength'), '<f', 100.0)
        self.put(self.audio + F('AddressableAudioSource.audioSource'), '<Q', source)
        self.put(self.audio + F('AddressableAudioSource.time'), '<f', 10.0)
        self.put(self.symbols['progress_original'], '<Q', HEAP + 0xF000)
        self.original(CTX.fixture('windows_start'), CTX.fixture('windows_size'))  # real normal/challenge window reset
        for name,size in CTX.fixture('windows_constant_ranges'):
            self.original(CTX.fixture(name),size)
        self.put(self.progress + F('ProgressControl._lastFrameTimes'), '<Q', self.alloc(0x80))
        self.put(self.get(self.progress + F('ProgressControl._lastFrameTimes'), '<Q') + F('Array.length'), '<I', 10)
        self.calls[CTX.rva('speed.set_pitch')] = lambda: 0  # AudioSource.set_pitch
        self.calls[CTX.fixture('frame_delta')] = self.delta_time
        self.frame_seconds = 1 / 60
        self.saved = {}
        self.observed = []
        self.skip_reset = False
        self.continuations[HEAP + 0xF000] = self.enter_original
        self.continuations[CTX.fixture('windows_end')] = self.leave_original
        external = self.external

        def clock_or_external(name):
            if name == 'clock_gettime':
                self.put(self.arg(1), '<q', 100)
                self.put(self.arg(1) + 8, '<q', 0)
                return 0
            return external(name)

        self.external = clock_or_external

    def original(self, va, size):
        self.uc.mem_write(va, CTX.elf.bytes_at(va, size))

    def delta_time(self):
        self.uc.reg_write(UC_ARM64_REG_S0, struct.unpack('<I', struct.pack('<f', self.frame_seconds))[0])
        return 0

    def enter_original(self):
        self.observed.append(self.get(self.audio + F('AddressableAudioSource.time'), '<f'))
        self.saved = {r: self.uc.reg_read(r) for r in (
            UC_ARM64_REG_X19, UC_ARM64_REG_X20, UC_ARM64_REG_X21, UC_ARM64_REG_LR)}
        self.uc.reg_write(UC_ARM64_REG_X19, self.progress)
        self.uc.reg_write(UC_ARM64_REG_PC, CTX.fixture('windows_end') if self.skip_reset else CTX.fixture('windows_start'))

    def leave_original(self):
        for reg, value in self.saved.items():
            self.uc.reg_write(reg, value)
        self.uc.reg_write(UC_ARM64_REG_PC, self.saved[UC_ARM64_REG_LR])

    def frame(self, speed, challenge=False):
        self.put(self.progress + F('ProgressControl._inChallengeMode'), '<B', challenge)
        self.put(self.symbols['want_speed'], '<f', speed)
        self.run(self.symbols['progress_update'], self.progress, 0)
        return [self.get(self.statics + F(('JudgeControl.PerfectTimeRange','JudgeControl.GoodTimeRange','JudgeControl.BadTimeRange')[i-1]), '<f') for i in (1, 2, 3)]


def test_windows():
    replay = JudgementReplay()
    # Original normal/challenge branches both execute; compare identical wall-time windows.
    for challenge, original in ((False, CTX.fixture('normal_windows')),
                                (True, tuple(v + replay.frame_seconds / 2 for v in CTX.fixture('challenge_windows')))):
        for speed in (0.5, 1.0, 1.5, 2.0, 2.0, 1.0):
            values = replay.frame(speed, challenge)
            for actual, expected in zip(values, original):
                assert abs(actual / speed - expected) < 1e-6, (challenge, speed, values)
            assert replay.get(replay.audio + F('AddressableAudioSource.time'), '<f') == 10.0
        # The real Update can return before resetting windows (leave/pause).
        replay.frame(2.0, challenge)
        replay.skip_reset = True
        for _ in range(3):
            assert all(abs(a / 2 - b) < 1e-6 for a, b in zip(replay.frame(2.0, challenge), original))
        replay.skip_reset = False
    print('PASS original normal/challenge writes: wall-time windows, unchanged speed, 1x restoration, early return')


GATES = tuple((CTX.rva(key), int.from_bytes(bytes.fromhex(CTX.target(key)['original_bytes']), 'little'), CTX.target(key)['destination_fp_register'], CTX.target(key)['baseline_seconds']) for key in ('speed.drag_contact','speed.drag_score','speed.flick_score','speed.hold_early','speed.hold_cleanup'))


def install_gates(replay):
    for site, expected, _, _ in GATES:
        replay.original(site, 4)
        assert replay.get(site, '<I') == expected
    original_external = replay.external
    hint = (CTX.elf.memory_end + 4095) & ~4095
    replay.uc.mem_map(hint + 0x20000, 0x2000)
    attempts, unmapped = [], []

    def near_mmap(name):
        if name == 'mmap':
            assert replay.arg(1) == 8192
            assert replay.arg(3) & 0x100000, 'must reserve without replacing live mappings'
            attempts.append(replay.arg(0))
            if len(attempts) == 1:
                return 0x60000000  # ignored hint/flag: must unmap and retry
            if len(attempts) == 2:
                return 0xffffffffffffffff  # occupied page
            return replay.arg(0)
        if name == 'munmap':
            unmapped.append(replay.arg(0))
            return 0
        return original_external(name)

    replay.external = near_mmap
    assert replay.run(replay.symbols['speed_install_judgement_gates'], 0) == 1
    assert attempts == [hint, hint + 0x10000, hint + 0x20000] and unmapped == [0x60000000]
    replay.external = original_external


def fp(replay, register, value):
    replay.uc.reg_write(UC_ARM64_REG_S0 + register, struct.unpack('<I', struct.pack('<f', value))[0])


def test_fixed_gates():
    replay = JudgementReplay()
    # The actual arithmetic/compare instructions around every patched load.
    for name, size in CTX.fixture('gate_ranges'):
        replay.original(CTX.fixture(name), size)
    install_gates(replay)
    note, loader = replay.alloc(0x100), replay.alloc(0x100)
    for speed in (0.5, 0.75, 1.0, 1.25, 1.5, 2.0, 1.0):
        fp(replay, 0, speed)
        replay.run(replay.symbols['speed_set_judgement_gates'])
        for site, _, target, baseline in GATES:
            regs = {r: replay.uc.reg_read(r) for r in (
                *range(UC_ARM64_REG_X0, UC_ARM64_REG_X28 + 1),
                UC_ARM64_REG_X29, UC_ARM64_REG_X30, UC_ARM64_REG_SP, UC_ARM64_REG_NZCV)}
            replay.uc.emu_start(site, site + 4, count=100)
            value = struct.unpack('<f', struct.pack('<I', replay.uc.reg_read(UC_ARM64_REG_S0 + target)))[0]
            assert abs(value / speed - baseline) < 1e-6, (site, speed, value)
            assert all(replay.uc.reg_read(r) == v for r, v in regs.items()), hex(site)

        # Run the original comparisons at equivalent real-time offsets. Only
        # the private literal load differs, and both sides of each gate agree.
        for delta, accepted in ((GATES[0][3] - 0.001, True), (GATES[0][3] + 0.001, False)):
            fp(replay, 8, 0)
            fp(replay, 9, delta * speed)
            replay.uc.emu_start(CTX.fixture('drag_contact_start'), CTX.fixture('drag_contact_end'), count=100)
            assert bool(replay.uc.reg_read(UC_ARM64_REG_NZCV) & 0x80000000) == accepted
        for start, end in ((CTX.fixture('drag_score_start'), CTX.fixture('drag_score_end')), (CTX.fixture('flick_score_start'), CTX.fixture('flick_score_end'))):
            for delta, accepted in ((GATES[1][3] - 0.001, True), (GATES[1][3] + 0.001, False)):
                replay.uc.reg_write(UC_ARM64_REG_X19, loader)
                replay.uc.reg_write(UC_ARM64_REG_X8, note)
                fp(replay, 0, delta * speed)
                fp(replay, 1, 0)
                fp(replay, 8, delta * speed)
                fp(replay, 9, 0)
                replay.uc.emu_start(start, end, count=100)
                assert bool(replay.uc.reg_read(UC_ARM64_REG_NZCV) & 0x80000000) == accepted
        for start, end, limit in ((CTX.fixture('hold_early_start'), CTX.fixture('hold_early_end'), GATES[3][3]),
                                   (CTX.fixture('hold_cleanup_start'), CTX.fixture('hold_cleanup_end'), GATES[4][3])):
            for delta, greater in ((limit - 0.001, False), (limit + 0.001, True)):
                replay.uc.reg_write(UC_ARM64_REG_X9, note)
                replay.uc.reg_write(UC_ARM64_REG_X8, replay.progress)
                replay.put(note + F('ChartNote.realTime'), '<f', 0)
                replay.put(note + F('ChartNote.holdTime'), '<f', 10)
                replay.put(replay.progress + F('ProgressControl.nowTime'), '<f', 10 + delta * speed)
                replay.uc.emu_start(start, end, count=100)
                assert bool(replay.uc.reg_read(UC_ARM64_REG_NZCV) & 0x20000000) == greater
    print('PASS five original Drag/Flick/Hold loads and comparisons at 0.5x–2x; registers/flags preserved; 1x restored')


def test_gate_mismatch():
    replay = JudgementReplay()
    replay.original(GATES[0][0], 4)
    before = replay.get(GATES[0][0], '<I')
    assert replay.run(replay.symbols['speed_install_judgement_gates'], 0) == 0
    assert replay.get(GATES[0][0], '<I') == before
    print('PASS unexpected gate instruction rejected before modifying any site')


if __name__ == '__main__':
    build_speed_library()
    test_windows()
    test_fixed_gates()
    test_gate_mismatch()
