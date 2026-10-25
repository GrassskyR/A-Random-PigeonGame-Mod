#!/usr/bin/env python3
"""Replay compiled avatar hooks in ARM64; Unity/IL2CPP boundaries are simulated.

Checks scene-unload ownership, pending-load cleanup, and the derived setter's
actual entry/return ABI. This does not emulate Unity's renderer or a device.
"""
import struct
import sys
from pathlib import Path

from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE
from unicorn.arm64_const import *

ROOT = Path(__file__).resolve().parents[2]
import sys
sys.path.insert(0, str(ROOT))
from tools.versioning import context
CTX = context()
CTX.ensure_materials()
F = CTX.field
sys.path.insert(0, str(ROOT / "tools"))
from build_speed_apk import build_speed_library, WORK

BASE, HEAP, STACK, STOP = 0x10000000, 0x50000000, 0x51000000, 0x52000000


class Replay:
    def __init__(self):
        self.uc = uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
        uc.mem_map(0x10000, CTX.game_map_size - 0x10000)
        uc.mem_map(BASE, 0x100000)
        uc.mem_map(HEAP, 0x100000)
        uc.mem_map(STACK, 0x10000)
        uc.mem_map(STOP, 0x10000)
        self.next = HEAP
        self.calls, self.symbols, self.hooks = {}, {}, {}
        self.continuations = {}
        self.assets, self.handles = {}, {}
        self.loader_sprites = {}
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
        self.calls[self.symbols['__clear_cache']] = lambda: 0
        self.calls.update({
            CTX.rva('avatar.domain_get'): lambda: HEAP,
            CTX.rva('avatar.domain_assemblies'): self.assemblies,
            CTX.rva('avatar.assembly_image'): lambda: HEAP,
            CTX.rva('avatar.class_from_name'): self.find_class,
            CTX.rva('avatar.object_new'): lambda: self.alloc(0x40),
            CTX.rva('avatar.array_new'): self.array_new,
            CTX.rva('avatar.gchandle_new'): self.handle_new,
            CTX.rva('avatar.gchandle_target'): lambda: self.handles[self.arg(0)],
            CTX.rva('avatar.texture_ctor'): lambda: 0,
            CTX.rva('avatar.load_image'): self.load_image,
            CTX.rva('avatar.sprite_create'): self.sprite_create,
            CTX.rva('avatar.hide_flags'): self.hide_flags,
            CTX.rva('avatar.check_init'): lambda: 1,
            CTX.rva('avatar.set_file'): self.set_file,
            CTX.rva('avatar.set_enabled'): lambda: 0,
            CTX.rva('avatar.cleanup'): self.cleanup,
            CTX.rva('avatar.derived_cleanup'): self.cleanup,
            STOP + 0x800: self.install_hook,
            STOP + 0x804: lambda: 0,
        })
        self.byte_class = self.alloc(0x40)
        # Real derived setter prologue, copied through PT_LOAD mapping.
        game = (CTX.library).read_bytes()
        phoff = struct.unpack_from('<Q', game, 0x20)[0]
        phsize, phnum = struct.unpack_from('<HH', game, 0x36)
        for i in range(phnum):
            kind, _, off, va, _, size = struct.unpack_from('<IIQQQQ', game, phoff + i * phsize)
            if kind == 1 and va <= CTX.rva('avatar.derived_set_code') < va + size:
                begin = off + CTX.rva('avatar.derived_set_code') - va
                self.original_entries = game[begin:begin + CTX.fixture('derived_entry_size')]
                uc.mem_write(CTX.rva('avatar.derived_set_code'), self.original_entries)
        uc.hook_add(UC_HOOK_CODE, self.dispatch)
        uc.reg_write(UC_ARM64_REG_CPACR_EL1, 3 << 20)
        png = self.alloc(4)
        uc.mem_write(png, b'PNG!')
        self.put(self.symbols['png_data'], '<Q', png)
        self.put(self.symbols['png_size'], '<Q', 4)
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
        self.put(ptr + F('Il2CppString.length'), '<i', len(value))
        self.uc.mem_write(ptr + F('Il2CppString.chars'), value.encode('utf-16le'))
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
        self.array_element = self.arg(0)
        return self.alloc(F('Array.data') + self.arg(1))

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
        self.loader_sprites[self.arg(0)] = sprite
        return 0

    def cleanup(self):
        self.cleaned += 1
        self.loader_sprites.pop(self.arg(0), None)
        for offset in (F('AddressableImageLoader._code'), F('AddressableImageLoader._assetRef'), F('AddressableImageLoader.coroutine')):
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
    replay.run(replay.hooks[CTX.rva('avatar.set_code')], loader, code, 0)
    # The old scene clears its Image; unload all unprotected Unity objects.
    replay.run(CTX.rva('avatar.cleanup'), loader, 0)
    replay.assets = {p: a for p, a in replay.assets.items() if a['flags'] & 32}
    replay.run(replay.hooks[CTX.rva('avatar.set_code')], replay.alloc(0x100), code, 0)
    assert len(replay.assets) == 2 and len(replay.handles) == 2
    assert replay.array_element == replay.byte_class, 'il2cpp_array_new expects Byte, not Byte[]'


def test_pending_load():
    replay = Replay()
    loader = replay.alloc(0x100)
    replay.put(loader + F('AddressableImageLoader._assetRef'), '<Q', HEAP)  # previous addressable asset ref
    replay.put(loader + F('AddressableImageLoader.coroutine'), '<Q', HEAP)  # previous pending coroutine
    replay.run(replay.hooks[CTX.rva('avatar.set_code')], loader, replay.string('avatar.Zundamon'), 0)
    assert replay.cleaned == 1, 'custom avatar bypassed pending-load cleanup'
    assert replay.get(loader + F('AddressableImageLoader._assetRef'), '<Q') == replay.get(loader + F('AddressableImageLoader.coroutine'), '<Q') == 0


def test_derived_return():
    replay = Replay()
    replay.run(CTX.rva('avatar.derived_set_code'), replay.alloc(0x100), replay.string('avatar.Zundamon'), 0)


def test_trampoline():
    replay = Replay()
    uc = replay.uc
    # Run the production hook builder, including its original-byte assertion.
    uc.mem_write(CTX.rva('avatar.derived_set_code'), replay.original_entries)
    expected = replay.alloc(16)
    uc.mem_write(expected, replay.original_entries[:16])
    trampoline = replay.run(replay.symbols['hook_entry'], CTX.rva('avatar.derived_set_code'), STOP + 0x804, expected)
    assert trampoline

    def resume_original():
        assert uc.reg_read(UC_ARM64_REG_X22) == CTX.fixture('derived_adrp_page'), 'ADRP page was not relocated'
        assert uc.reg_read(UC_ARM64_REG_SP) == STACK + 0x8000 - CTX.fixture('derived_stack_size')
        uc.reg_write(UC_ARM64_REG_PC, CTX.fixture('derived_epilogue'))  # real original epilogue

    replay.continuations[CTX.fixture('derived_resume')] = resume_original
    for index in range(19, 23):
        uc.reg_write(UC_ARM64_REG_X0 + index, 0x12340000 + index)
    replay.run(trampoline, HEAP, HEAP, 0)
    for index in range(19, 23):
        assert uc.reg_read(UC_ARM64_REG_X0 + index) == 0x12340000 + index


def test_callback_and_fallback():
    replay = Replay()
    loader, callback = replay.alloc(0x100), replay.alloc(0x80)
    invoked = []
    replay.put(loader + F('AddressableImageLoader.onLoaded'), '<Q', callback)
    replay.put(callback + F('Delegate.invoke'), '<Q', STOP + 0x900)
    replay.put(callback + F('Delegate.target'), '<Q', HEAP)
    replay.put(callback + F('Delegate.method'), '<Q', HEAP + 16)

    def on_loaded():
        assert replay.get(loader + F('AddressableImageLoader.ImageLoaded'), '<B') == 1
        invoked.append((replay.arg(0), replay.arg(1)))
        return 0

    replay.calls[STOP + 0x900] = on_loaded
    replay.run(replay.hooks[CTX.rva('avatar.set_code')], loader, replay.string('avatar.Zundamon'), 0)
    assert invoked == [(HEAP, HEAP + 16)]
    ordinary = replay.string('avatar.Introduction')
    forwarded = []
    replay.calls[STOP + 0x804] = lambda: forwarded.append((replay.arg(0), replay.arg(1))) or 0
    replay.run(replay.hooks[CTX.rva('avatar.set_code')], loader, ordinary, 0)
    replay.run(CTX.rva('avatar.derived_set_code'), loader, ordinary, 0)
    assert forwarded == [(loader, ordinary), (loader, ordinary)]


def test_initialization_order():
    replay = Replay()
    events = []
    replay.calls[replay.symbols['avatar_prepare']] = lambda: events.append('PNG copied') or 0

    def create_thread():
        events.append('installer started')
        assert replay.arg(2) == replay.symbols['install']
        return 0

    # Exercise the real JNI entry without launching a host thread.
    replay.external = lambda name: create_thread() if name == 'pthread_create' else 0
    initialize = replay.symbols['Java_com_phigros_local_SpeedOverlay_initialize']
    replay.run(initialize, HEAP, 0, HEAP)
    replay.run(initialize, HEAP, 0, HEAP)
    assert events == ['PNG copied', 'installer started'], events


if __name__ == '__main__':
    build_speed_library()
    failed = []
    for test in (test_scene_reload, test_pending_load, test_derived_return,
                 test_trampoline, test_callback_and_fallback, test_initialization_order):
        try:
            test()
            print(f'PASS {test.__name__}')
        except AssertionError as error:
            failed.append(test.__name__)
            print(f'FAIL {test.__name__}: {error}')
    assert not failed, failed
