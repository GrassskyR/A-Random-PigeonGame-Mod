#!/usr/bin/env python3
"""Disassemble IL2CPP methods selected by regex, with symbols and string literals.

Usage: .venv/bin/python tools/chapter9_trace.py 'Chapter9Phase2Progress' [--calls]
Reads the original library; does not modify the library or a device.
"""
import argparse
import json
import re
import struct
from pathlib import Path

from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
from capstone.arm64 import ARM64_OP_IMM, ARM64_OP_MEM, ARM64_OP_REG
from adump2 import load_segs

ROOT = Path(__file__).resolve().parent.parent


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('pattern')
    parser.add_argument('--calls', action='store_true')
    args = parser.parse_args()
    library = ROOT / 'work/lib/arm64-v8a/libil2cpp.so'
    data = library.read_bytes()
    segments = load_segs(library)
    metadata = json.loads((ROOT / 'ildump/script.json').read_text())
    methods = {}
    for method in metadata['ScriptMethod']:
        methods.setdefault(method['Address'], []).append(method['Name'])
    strings = {s['Address']: s['Value'] for s in metadata['ScriptString']}
    # IL2CPP usage slots contain zero in the file and are filled by R_AARCH64_RELATIVE.
    shoff = struct.unpack_from('<Q', data, 0x28)[0]
    shsize, shcount = struct.unpack_from('<HH', data, 0x3a)
    for i in range(shcount):
        section = struct.unpack_from('<IIQQQQIIQQ', data, shoff + i * shsize)
        if section[1] != 4:  # SHT_RELA
            continue
        for offset, info, addend in struct.iter_unpack('<QQq', data[section[4]:section[4] + section[5]]):
            if info & 0xffffffff == 1027 and addend in strings:
                strings[offset] = strings[addend]
    addresses = sorted(methods)
    decoder = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    decoder.detail = True
    for start, end in zip(addresses, addresses[1:]):
        names = methods[start]
        if not any(re.search(args.pattern, name) for name in names):
            continue
        if not 0x19475b4 <= start < 0x3e9bc90:
            continue
        offset = next(o + start - v for o, v, size in segments if v <= start < v + size)
        print(f'\n// {start:#x} ' + ' / '.join(names))
        pages = {}
        for ins in decoder.disasm(data[offset:offset + end - start], start):
            note = ''
            ops = ins.operands
            if ins.mnemonic in ('bl', 'b') and ops[0].type == ARM64_OP_IMM:
                note = ' | ' + ' / '.join(methods.get(ops[0].imm, []))
            if ins.mnemonic == 'adrp':
                pages[ops[0].reg] = ops[1].imm
            elif ins.mnemonic == 'ldr' and len(ops) == 2 and ops[1].type == ARM64_OP_MEM:
                mem = ops[1].mem
                if mem.base in pages:
                    slot = pages[mem.base] + mem.disp
                    if slot in strings:
                        note += f' | {slot:#x} {strings[slot]!r}'
            if not args.calls or ins.mnemonic in ('bl', 'b') or note:
                print(f'{ins.address:#x}: {ins.mnemonic:8} {ins.op_str}{note}')
            # Page addresses are only propagated from ADRP; expire overwritten registers.
            _, written = ins.regs_access()
            for reg in written:
                if ins.mnemonic != 'adrp':
                    pages.pop(reg, None)


if __name__ == '__main__':
    main()
