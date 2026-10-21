#!/usr/bin/env python3
"""反汇编 + il2cpp 字符串字面量解析（两级 metadata usage 间接）。

用法: python tools/rs.py <rva_hex> [count] [--so path]
"""
import json
import sys

from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

SO = "work/lib/arm64-v8a/libil2cpp.so"
for i, a in enumerate(sys.argv):
    if a == "--so":
        SO = sys.argv[i + 1]

# LOAD 段: (file_off, va, filesz)
SEGS = [
    (0x000000, 0x000000, 0x19435b4),
    (0x19435b4, 0x19475b4, 0x25546dc),
    (0x3e97c90, 0x3e9fc90, 0x347378),
    (0x41df008, 0x41eb008, 0x28a4d8),
]


def va2off(va):
    for fo, base, size in SEGS:
        if base <= va < base + size:
            return fo + (va - base)
    return None


data = open(SO, "rb").read()

lit = {}
for e in json.load(open("ildump/script.json"))["ScriptString"]:
    lit[e["Address"]] = e["Value"]


def read_ptr(va):
    o = va2off(va)
    if o is None or o + 8 > len(data):
        return None
    return int.from_bytes(data[o:o + 8], "little")


RVA = int(sys.argv[1], 16)
COUNT = int(sys.argv[2]) if len(sys.argv) > 2 and not sys.argv[2].startswith("--") else 100

md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
pages = {}
pending = {}   # reg -> slot va (loaded pointer)
code_off = va2off(RVA)
code = data[code_off:code_off + COUNT * 4]

for ins in md.disasm(code, RVA):
    note = ""
    ops = ins.op_str
    if ins.mnemonic == "adrp":
        try:
            reg, imm = ops.split(", #")
            pages[reg.strip()] = int(imm, 16)
        except Exception:
            pass
    elif ins.mnemonic == "ldr" and ops.startswith("x") and "[" in ops:
        try:
            dst, rest = ops.split(", ", 1)
            base = rest.split(",")[0].strip("[] ")
            off = rest.split("#")[1].rstrip("]")
            addr = pages.get(base, 0) + int(off, 16) if base in pages else None
            if addr:
                v = read_ptr(addr)
                if v in lit:
                    note = f'   ; "{lit[v]}"'
                elif addr in lit:
                    note = f'   ; "{lit[addr]}"'
        except Exception:
            pass
    print(f"{ins.address:#010x}  {ins.mnemonic:<7} {ops}{note}")
