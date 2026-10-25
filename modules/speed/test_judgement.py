#!/usr/bin/env python3
"""Replay production speed hooks with the original game's judgement instructions."""
import struct
import sys
from pathlib import Path

from unicorn.arm64_const import *

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(ROOT / 'tools'))
from adump2 import load_segs
from build_speed_apk import build_speed_library
from modules.avatar.test_avatar import Replay, HEAP


class JudgementReplay(Replay):
    def __init__(self):
        super().__init__()
        self.game = (ROOT / 'work/lib/arm64-v8a/libil2cpp.so').read_bytes()
        self.segments = load_segs(ROOT / 'work/lib/arm64-v8a/libil2cpp.so')
        self.progress, self.audio, source, slot, klass, self.statics = (
            self.alloc(0x100) for _ in range(6))
        self.put(0x418D918, '<Q', slot)
        self.put(slot, '<Q', klass)
        self.put(klass + 0xB8, '<Q', self.statics)
        self.put(klass + 0xE0, '<I', 1)
        self.put(self.progress + 0x38, '<Q', self.audio)
        self.put(self.progress + 0x94, '<f', 100.0)
        self.put(self.audio + 0x30, '<Q', source)
        self.put(self.audio + 0x40, '<f', 10.0)
        self.put(self.symbols['progress_original'], '<Q', HEAP + 0xF000)
        self.original(0x1D88328, 0x168)  # real normal/challenge window reset
        self.original(0xBF8228, 8)
        self.original(0xBF8458, 8)
        self.original(0xC35000, 0x1000)
        self.put(self.progress + 0xA8, '<Q', self.alloc(0x80))
        self.put(self.get(self.progress + 0xA8, '<Q') + 0x18, '<I', 10)
        self.calls[0x3C18438] = lambda: 0  # AudioSource.set_pitch
        self.calls[0x3C68944] = self.delta_time
        self.frame_seconds = 1 / 60
        self.saved = {}
        self.observed = []
        self.skip_reset = False
        self.continuations[HEAP + 0xF000] = self.enter_original
        self.continuations[0x1D88490] = self.leave_original
        external = self.external

        def clock_or_external(name):
            if name == 'clock_gettime':
                self.put(self.arg(1), '<q', 100)
                self.put(self.arg(1) + 8, '<q', 0)
                return 0
            return external(name)

        self.external = clock_or_external

    def original(self, va, size):
        off = next(o + va - v for o, v, s in self.segments if v <= va and va + size <= v + s)
        self.uc.mem_write(va, self.game[off:off + size])

    def delta_time(self):
        self.uc.reg_write(UC_ARM64_REG_S0, struct.unpack('<I', struct.pack('<f', self.frame_seconds))[0])
        return 0

    def enter_original(self):
        self.observed.append(self.get(self.audio + 0x40, '<f'))
        self.saved = {r: self.uc.reg_read(r) for r in (
            UC_ARM64_REG_X19, UC_ARM64_REG_X20, UC_ARM64_REG_X21, UC_ARM64_REG_LR)}
        self.uc.reg_write(UC_ARM64_REG_X19, self.progress)
        self.uc.reg_write(UC_ARM64_REG_PC, 0x1D88490 if self.skip_reset else 0x1D88328)

    def leave_original(self):
        for reg, value in self.saved.items():
            self.uc.reg_write(reg, value)
        self.uc.reg_write(UC_ARM64_REG_PC, self.saved[UC_ARM64_REG_LR])

    def frame(self, speed, challenge=False):
        self.put(self.progress + 0xA6, '<B', challenge)
        self.put(self.symbols['want_speed'], '<f', speed)
        self.run(self.symbols['progress_update'], self.progress, 0)
        return [self.get(self.statics + 4 * i, '<f') for i in (1, 2, 3)]


def test_windows():
    replay = JudgementReplay()
    # Original normal/challenge branches both execute; compare identical wall-time windows.
    for challenge, original in ((False, (0.08, 0.18, 0.22)),
                                (True, (0.04 + 1 / 120, 0.09 + 1 / 120, 0.14 + 1 / 120))):
        for speed in (0.5, 1.0, 1.5, 2.0, 2.0, 1.0):
            values = replay.frame(speed, challenge)
            for actual, expected in zip(values, original):
                assert abs(actual / speed - expected) < 1e-6, (challenge, speed, values)
            assert replay.get(replay.audio + 0x40, '<f') == 10.0
        # The real Update can return before resetting windows (leave/pause).
        replay.frame(2.0, challenge)
        replay.skip_reset = True
        for _ in range(3):
            assert all(abs(a / 2 - b) < 1e-6 for a, b in zip(replay.frame(2.0, challenge), original))
        replay.skip_reset = False
    print('PASS original normal/challenge writes: wall-time windows, unchanged speed, 1x restoration, early return')


GATES = (
    (0x1D85024, 0xBD419D20, 0, 0.100),
    (0x1D850C0, 0xBD450900, 0, 0.005),
    (0x1D85638, 0xBD450942, 2, 0.005),
    (0x1D86688, 0xBD416142, 2, -0.220),
    (0x1D8675C, 0x1E2A1001, 1, 0.250),
)


def install_gates(replay):
    for site, expected, _, _ in GATES:
        replay.original(site, 4)
        assert replay.get(site, '<I') == expected
    original_external = replay.external
    replay.uc.mem_map(0x4520000, 0x2000)
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
    assert attempts == [0x4500000, 0x4510000, 0x4520000] and unmapped == [0x60000000]
    replay.external = original_external


def fp(replay, register, value):
    replay.uc.reg_write(UC_ARM64_REG_S0 + register, struct.unpack('<I', struct.pack('<f', value))[0])


def test_fixed_gates():
    replay = JudgementReplay()
    # The actual arithmetic/compare instructions around every patched load.
    for start, size in ((0x1D85020, 0x14), (0x1D850BC, 0x14), (0x1D8562C, 0x24),
                        (0x1D8667C, 0x24), (0x1D8674C, 0x20)):
        replay.original(start, size)
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
        for delta, accepted in ((0.099, True), (0.101, False)):
            fp(replay, 8, 0)
            fp(replay, 9, delta * speed)
            replay.uc.emu_start(0x1D85020, 0x1D85030, count=100)
            assert bool(replay.uc.reg_read(UC_ARM64_REG_NZCV) & 0x80000000) == accepted
        for start, end in ((0x1D850BC, 0x1D850CC), (0x1D8562C, 0x1D8564C)):
            for delta, accepted in ((0.004, True), (0.006, False)):
                replay.uc.reg_write(UC_ARM64_REG_X19, loader)
                replay.uc.reg_write(UC_ARM64_REG_X8, note)
                fp(replay, 0, delta * speed)
                fp(replay, 1, 0)
                fp(replay, 8, delta * speed)
                fp(replay, 9, 0)
                replay.uc.emu_start(start, end, count=100)
                assert bool(replay.uc.reg_read(UC_ARM64_REG_NZCV) & 0x80000000) == accepted
        for start, end, limit in ((0x1D8667C, 0x1D8669C, -0.220),
                                   (0x1D8674C, 0x1D86768, 0.250)):
            for delta, greater in ((limit - 0.001, False), (limit + 0.001, True)):
                replay.uc.reg_write(UC_ARM64_REG_X9, note)
                replay.uc.reg_write(UC_ARM64_REG_X8, replay.progress)
                replay.put(note + 0x2C, '<f', 0)
                replay.put(note + 0x1C, '<f', 10)
                replay.put(replay.progress + 0x90, '<f', 10 + delta * speed)
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
