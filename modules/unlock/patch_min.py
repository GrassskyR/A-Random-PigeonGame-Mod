#!/usr/bin/env python3
"""Apply reviewed, equal-length unlock patches for the selected sample.

The default includes chart/song/chapter/visibility, preserves encryption and
writes no scores. Crypto experiments are archived separately, never selected
by this compatibility entry point.
"""
import argparse
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
from tools.versioning import context, digest, VersionError

MD = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
GROUPS = {'chart': ('unlock.chart_type',), 'song': ('unlock.song_type', 'unlock.song_list'),
          'chapter': ('unlock.chapter_gate', 'unlock.chapter_card'), 'visibility': ('unlock.visibility',)}
ALL = list(GROUPS)


def va2off(va):
    return context().elf.offset(va)


def enc(words, expect):
    out = bytearray()
    for word, expected in zip(words, expect, strict=True):
        data = word.to_bytes(4, 'little')
        actual = [f'{i.mnemonic} {i.op_str}'.strip() for i in MD.disasm(data, 0)]
        if actual != [expected.strip()]:
            raise VersionError(f'Instruction encoding mismatch: {actual} != {expected}')
        out.extend(data)
    return out.hex()


def __getattr__(name):
    if name != 'PATCH':
        raise AttributeError(name)
    ctx = context()
    return {group: [(ctx.rva(key), ctx.target(key)['original_bytes'],
                     [int.from_bytes(bytes.fromhex(ctx.target(key)['replacement_bytes'])[i:i+4], 'little') for i in range(0, len(bytes.fromhex(ctx.target(key)['replacement_bytes'])), 4)],
                     [f'{ins.mnemonic} {ins.op_str}'.strip() for ins in MD.disasm(bytes.fromhex(ctx.target(key)['replacement_bytes']), 0)],
                     ctx.target(key)['description']) for key in keys] for group, keys in GROUPS.items()}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('source', type=Path)
    parser.add_argument('destination', type=Path)
    parser.add_argument('--profile')
    parser.add_argument('--only', default=','.join(ALL))
    args = parser.parse_args()
    try:
        ctx = context()
        ctx.validate(('unlock',))
        groups = args.only.split(',')
        if set(groups) - set(GROUPS):
            raise VersionError(f'Unknown/formally unsupported patch groups: {groups}')
        if args.source.resolve() == args.destination.resolve():
            raise VersionError('Keep the original library; choose a separate output')
        if digest(args.source) != ctx.profile['identity']['il2cpp']['sha256']:
            raise VersionError('Input SO is not the original library of the selected sample')
        data = bytearray(args.source.read_bytes())
        for group in groups:
            for key in GROUPS[group]:
                row = ctx.target(key)
                old, new = bytes.fromhex(row['original_bytes']), bytes.fromhex(row['replacement_bytes'])
                off = ctx.elf.offset(ctx.rva(key), len(old), executable=True)
                if data[off:off+len(old)] != old or len(old) != len(new):
                    raise VersionError(f'Original bytes/patch size mismatch: {key}')
                if sum(i.size for i in MD.disasm(new, ctx.rva(key))) != len(new):
                    raise VersionError(f'Invalid replacement instructions: {key}')
                data[off:off+len(new)] = new
        args.destination.write_bytes(data)
    except VersionError as error:
        parser.exit(error.code, str(error) + '\n')


if __name__ == '__main__':
    main()
