#!/usr/bin/env python3
"""Find all `bl <target>` call sites in libil2cpp.so for given target VAs.

usage: xref.py <so> <targetVA>[,<targetVA>...]
"""
import sys, struct
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

SO, TARGETS = sys.argv[1], [int(x, 16) for x in sys.argv[2].split(",")]
TEXT_OFF, TEXT_VA, TEXT_SIZE = 0x19435b4, 0x19475b4, 0x25546dc

d = open(SO, "rb").read()
code = d[TEXT_OFF:TEXT_OFF + TEXT_SIZE]
md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
md.detail = True
hits = {t: [] for t in TARGETS}
for ins in md.disasm(code, TEXT_VA):
    if ins.mnemonic != "bl":
        continue
    t = ins.operands[0].imm
    if t in hits:
        hits[t].append(ins.address)
for t in TARGETS:
    print(f"{t:#x}  <- {len(hits[t])} call site(s)")
    for a in hits[t]:
        print(f"    {a:#x}")
