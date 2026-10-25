#!/usr/bin/env python3
"""Replay compiled avatar hooks in ARM64; Unity/IL2CPP boundaries are simulated.

Checks scene-unload ownership, pending-load cleanup, and the derived setter's
actual entry/return ABI. This does not emulate Unity's renderer or a device.
"""
import struct
import subprocess
import sys
from pathlib import Path

from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE
from unicorn.arm64_const import *

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "tools"))
from build_speed_apk import build_speed_library, WORK

BASE, HEAP, STACK, STOP = 0x10000000, 0x50000000, 0x51000000, 0x52000000


class Replay:
    def __init__(self):
        self.uc = uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
        uc.mem_map(0x10000, 0x4500000)
        uc.mem_map(BASE, 0x100000)
        uc.mem_map(HEAP, 0x100000)
        uc.mem_map(STACK, 0x10000)
        uc.mem_map(STOP, 0x10000)
        self.next = HEAP
        self.calls, self.symbols, self.hooks = {}, {}, {}
        self.continuations = {}
        self.assets, self.handles = {}, {}
        self.cleaned = 0
        data = (WORK / "libspeed.so").read_bytes()
        phoff = struct.unpack_from('<Q', data, 0x20)[0]
        phsize, phnum = struct.unpack_from('<HH', data, 0x36)
        for i in range(phnum):
            kind, _, off, va, _, size = struct.unpack_from('<IIQQQQ', data, phoff + i * phsize)
            if kind == 1:
                uc.mem_write(BASE + va, data[off:off + size])
        shoff = struct.unpack_from('<Q', data, 0x28)[0]
        shsize, shnum = struct.unpack_from('<HH', data, 0x3a)
        sections = [struct.unpack_from('<IIQQQQIIQQ', data, shoff + i * shsize) for i in range(shnum)]
        tables = {}
        for index, section in enumerate(sections):
            if section[1] not in (2, 11):
                continue
            strings = sections[section[6]]
            names = data[strings[4]:strings[4] + strings[5]]
            symbols = []
            for off in range(section[4], section[4] + section[5], section[9]):
                name, _, _, _, value, _ = struct.unpack_from('<IBBHQQ', data, off)
                name = names[name:names.index(b'\0', name)].decode()
                symbols.append((name, value))
                if value:
                    self.symbols[name] = BASE + value
            tables[index] = symbols
        externals = {}
        for section in sections:
            if section[1] != 4:
                continue
            for off in range(section[4], section[4] + section[5], section[9]):
                target, info, addend = struct.unpack_from('<QQq', data, off)
                kind, index = info & 0xffffffff, info >> 32
                if kind == 1027:
                    value = BASE + addend
                elif kind in (257, 1025, 1026):
                    name, _ = tables[section[6]][index]
                    if name not in self.symbols:
                        externals.setdefault(name, STOP + 0x100 + len(externals) * 4)
                    value = self.symbols.get(name, externals.get(name)) + addend
                else:
                    raise AssertionError(f'unhandled ELF relocation {kind}')
                self.put(BASE + target, '<Q', value)
        self.calls.update({address: (lambda name=name: self.external(name)) for name, address in externals.items()})
        self.calls[self.symbols['speed_base']] = lambda: 0
        self.calls[self.symbols['__clear_cache']] = lambda: 0
        self.calls.update({
            0x1B97CB8: lambda: HEAP,
            0x1B98114: lambda: HEAP,
            0x1B97CC4: self.assemblies,
            0x1B97788: lambda: HEAP,
            0x1B977C0: self.find_class,
            0x1B98094: lambda: self.alloc(0x40),
            0x1B97764: lambda: self.byte_array_class,
            0x1B97770: self.array_new,
            0x1B97F28: self.handle_new,
            0x1B97F68: lambda: self.handles[self.arg(0)],
            0x3C47E4C: lambda: 0,
            0x3C8D468: self.load_image,
            0x3C70F94: self.sprite_create,
            0x3C65608: self.hide_flags,
            0x1DB9240: lambda: 1,
            0x1DB9150: self.set_file,
            0x1DB91EC: lambda: 0,
            0x1DB943C: self.cleanup,
            0x1DB98BC: self.cleanup,
            STOP + 0x800: self.install_hook,
            STOP + 0x804: lambda: 0,
        })
        self.byte_class = self.alloc(0x40)
        self.byte_array_class = self.alloc(0x40)
        # Real derived setter prologue, copied through PT_LOAD mapping.
        game = (ROOT / 'work/lib/arm64-v8a/libil2cpp.so').read_bytes()
        phoff = struct.unpack_from('<Q', game, 0x20)[0]
        phsize, phnum = struct.unpack_from('<HH', game, 0x36)
        for i in range(phnum):
            kind, _, off, va, _, size = struct.unpack_from('<IIQQQQ', game, phoff + i * phsize)
            if kind == 1 and va <= 0x1DAEDF4 < va + size:
                begin = off + 0x1DAEDF4 - va
                self.original_entries = game[begin:begin + 0x120]
                uc.mem_write(0x1DAEDF4, self.original_entries)
        uc.hook_add(UC_HOOK_CODE, self.dispatch)
        uc.reg_write(UC_ARM64_REG_CPACR_EL1, 3 << 20)
        self.run(self.symbols['avatar_runtime_init'], 0)
        png = self.alloc(4)
        uc.mem_write(png, b'PNG!')
        self.put(self.symbols['ava_png_cache'], '<Q', png)
        self.put(self.symbols['ava_png_len'], '<Q', 4)
        if 'avatar_hook_shifted' in self.symbols:
            self.put(self.symbols['avatar_hook_shifted'], '<Q', STOP + 0x800)
        self.run(self.symbols['avatar_install'], 0, STOP + 0x800)

    def arg(self, index):
        return self.uc.reg_read(UC_ARM64_REG_X0 + index)

    def put(self, ptr, fmt, value):
        self.uc.mem_write(ptr, struct.pack(fmt, value))

    def get(self, ptr, fmt):
        return struct.unpack(fmt, self.uc.mem_read(ptr, struct.calcsize(fmt)))[0]

    def alloc(self, size):
        ptr = self.next
        self.next += (size + 15) & ~15
        return ptr

    def cstring(self, ptr):
        result = bytearray()
        while (value := self.uc.mem_read(ptr + len(result), 1)) != b'\0':
            result.extend(value)
        return result.decode()

    def string(self, value):
        ptr = self.alloc(0x20 + len(value) * 2)
        self.put(ptr + 0x10, '<i', len(value))
        self.uc.mem_write(ptr + 0x14, value.encode('utf-16le'))
        return ptr

    def external(self, name):
        if name == '__android_log_print':
            return 0
        if name == 'memcpy':
            self.uc.mem_write(self.arg(0), bytes(self.uc.mem_read(self.arg(1), self.arg(2))))
            return self.arg(0)
        if name == 'mmap':
            return self.alloc(self.arg(1))
        if name == 'mprotect':
            return 0
        if name == 'sysconf':
            return 4096
        raise AssertionError(f'unexpected external call {name}')

    def assemblies(self):
        self.put(self.arg(1), '<Q', 1)
        ptr = self.alloc(8)
        self.put(ptr, '<Q', HEAP)
        return ptr

    def find_class(self):
        return self.byte_class if self.cstring(self.arg(2)) == 'Byte' else HEAP

    def array_new(self):
        # Recorded separately so the lifecycle repro can run on the old code.
        self.array_element = self.arg(0)
        return self.alloc(0x20 + self.arg(1))

    def load_image(self):
        self.assets[self.arg(0)] = {'flags': 0, 'texture': 0}
        return 1

    def sprite_create(self):
        ptr = self.alloc(0x40)
        self.assets[ptr] = {'flags': 0, 'texture': self.arg(0)}
        return ptr

    def hide_flags(self):
        self.assets[self.arg(0)]['flags'] = self.arg(1)
        return 0

    def handle_new(self):
        handle = len(self.handles) + 1
        self.handles[handle] = self.arg(0)
        return handle

    def set_file(self):
        sprite = self.arg(1)
        if sprite:
            assert sprite in self.assets, 'scene reload reused an unloaded Sprite'
            assert self.assets[sprite]['texture'] in self.assets, 'scene reload lost the Texture2D'
        self.put(self.arg(0) + 0x90, '<Q', sprite)
        return 0

    def cleanup(self):
        self.cleaned += 1
        for offset in (0x38, 0x40, 0x48, 0x90):
            self.put(self.arg(0) + offset, '<Q', 0)
        return 0

    def install_hook(self):
        rva, replacement = self.arg(0), self.arg(1)
        assert self.uc.mem_read(rva, 16) == self.uc.mem_read(self.arg(2), 16), f'entry bytes mismatch at {rva:x}'
        self.hooks[rva] = replacement
        self.uc.mem_write(rva, struct.pack('<IIQ', 0x58000051, 0xd61f0220, replacement))
        return STOP + 0x804

    def dispatch(self, uc, address, size, user):
        if address in self.continuations:
            self.continuations[address]()
            return
        if address in self.calls:
            value = self.calls[address]()
            uc.reg_write(UC_ARM64_REG_X0, value or 0)
            uc.reg_write(UC_ARM64_REG_PC, uc.reg_read(UC_ARM64_REG_LR))

    def run(self, address, *args):
        for index, arg in enumerate(args):
            self.uc.reg_write(UC_ARM64_REG_X0 + index, arg)
        self.uc.reg_write(UC_ARM64_REG_SP, STACK + 0x8000)
        self.uc.reg_write(UC_ARM64_REG_LR, STOP)
        self.uc.emu_start(address, STOP, count=10000)
        assert self.uc.reg_read(UC_ARM64_REG_PC) == STOP, 'hook did not return to caller'
        assert self.uc.reg_read(UC_ARM64_REG_SP) == STACK + 0x8000, 'hook returned with an unbalanced stack'
        return self.arg(0)


def test_scene_reload():
    replay = Replay()
    code, loader = replay.string('avatar.Zundamon'), replay.alloc(0x100)
    replay.run(replay.hooks[0x1DAEEF8], loader, code, 0)
    # The old scene clears its Image; unload all unprotected Unity objects.
    replay.run(0x1DB943C, loader, 0)
    replay.assets = {p: a for p, a in replay.assets.items() if a['flags'] & 32}
    replay.run(replay.hooks[0x1DAEEF8], replay.alloc(0x100), code, 0)
    assert len(replay.assets) == 2 and len(replay.handles) == 2
    assert replay.array_element == replay.byte_class, 'il2cpp_array_new expects Byte, not Byte[]'


def test_pending_load():
    replay = Replay()
    loader = replay.alloc(0x100)
    replay.put(loader + 0x40, '<Q', HEAP)  # previous addressable asset ref
    replay.put(loader + 0x48, '<Q', HEAP)  # previous pending coroutine
    replay.run(replay.hooks[0x1DAEEF8], loader, replay.string('avatar.Zundamon'), 0)
    assert replay.cleaned == 1, 'custom avatar bypassed pending-load cleanup'
    assert replay.get(loader + 0x40, '<Q') == replay.get(loader + 0x48, '<Q') == 0


def test_derived_return():
    replay = Replay()
    replay.run(0x1DAEDF4, replay.alloc(0x100), replay.string('avatar.Zundamon'), 0)


def test_trampoline():
    replay = Replay()
    uc = replay.uc
    # Run the production hook builder, including its original-byte assertion.
    uc.mem_write(0x1DAEDF4, replay.original_entries)
    expected = replay.alloc(16)
    uc.mem_write(expected, replay.original_entries[:16])
    trampoline = replay.run(replay.symbols['hook_entry'], 0x1DAEDF4, STOP + 0x804, expected)
    assert trampoline

    def resume_original():
        assert uc.reg_read(UC_ARM64_REG_X22) == 0x4476000, 'ADRP page was not relocated'
        assert uc.reg_read(UC_ARM64_REG_SP) == STACK + 0x8000 - 0x30
        uc.reg_write(UC_ARM64_REG_PC, 0x1DAEE68)  # real original epilogue

    replay.continuations[0x1DAEE04] = resume_original
    for index in range(19, 23):
        uc.reg_write(UC_ARM64_REG_X0 + index, 0x12340000 + index)
    replay.run(trampoline, HEAP, HEAP, 0)
    for index in range(19, 23):
        assert uc.reg_read(UC_ARM64_REG_X0 + index) == 0x12340000 + index


def test_callback_and_fallback():
    replay = Replay()
    loader, callback = replay.alloc(0x100), replay.alloc(0x80)
    invoked = []
    replay.put(loader + 0x58, '<Q', callback)
    replay.put(callback + 0x18, '<Q', STOP + 0x900)
    replay.put(callback + 0x40, '<Q', HEAP)
    replay.put(callback + 0x28, '<Q', HEAP + 16)

    def on_loaded():
        assert replay.get(loader + 0x51, '<B') == 1
        invoked.append((replay.arg(0), replay.arg(1)))
        return 0

    replay.calls[STOP + 0x900] = on_loaded
    replay.run(replay.hooks[0x1DAEEF8], loader, replay.string('avatar.Zundamon'), 0)
    assert invoked == [(HEAP, HEAP + 16)]
    ordinary = replay.string('avatar.Introduction')
    forwarded = []
    replay.calls[STOP + 0x804] = lambda: forwarded.append((replay.arg(0), replay.arg(1))) or 0
    replay.run(replay.hooks[0x1DAEEF8], loader, ordinary, 0)
    replay.run(0x1DAEDF4, loader, ordinary, 0)
    assert forwarded == [(loader, ordinary), (loader, ordinary)]


if __name__ == '__main__':
    WORK.mkdir(parents=True, exist_ok=True)
    build_speed_library()
    failed = []
    for test in (test_scene_reload, test_pending_load, test_derived_return,
                 test_trampoline, test_callback_and_fallback):
        try:
            test()
            print(f'PASS {test.__name__}')
        except AssertionError as error:
            failed.append(test.__name__)
            print(f'FAIL {test.__name__}: {error}')
    assert not failed, failed
