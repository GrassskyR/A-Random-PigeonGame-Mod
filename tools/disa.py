#!/usr/bin/env python3
"""Tiny aarch64 disassembler for libil2cpp.so slices (file-offset based).

usage: dis.py <so> <file_offset_hex> [count] [--va]
  --va : the given address is a runtime VA (add 0x4000 delta of the first RX LOAD)
"""
import sys
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

# this .so: RX LOAD offset 0x19435b4 <-> VA 0x19475b4
DELTA = 0x4000

so = sys.argv[1]
addr = int(sys.argv[2], 16)
count = int(sys.argv[3]) if len(sys.argv) > 3 else 60
if "--va" in sys.argv:
    off = addr - DELTA
else:
    off = addr

with open(so, "rb") as f:
    f.seek(off)
    code = f.read(count * 4)

md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
md.detail = True
for ins in md.disasm(code, addr):
    print(f"{ins.address:#010x}  {ins.bytes.hex():<10} {ins.mnemonic:<8} {ins.op_str}")
