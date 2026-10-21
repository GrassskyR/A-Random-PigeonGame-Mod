#!/usr/bin/env python3
"""Annotated arm64 dump for libil2cpp.so with IL2CPP symbol names.

Compared with adump.py:
  * correct ELF PT_LOAD VA<->file mapping (4 segments, not a single 0x4000 delta)
  * `bl <target>` annotated with the Il2Cpp method name (from ildump/script.json ScriptMethod)
  * adrp/add and adrp/ldr folded, showing the effective VA
  * branch targets shown

usage:
  adump2.py <so> <VA_start> <VA_end> [--no-branch]
"""
import sys, json, bisect, re
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

HERE = __file__.rsplit("/", 1)[0]
SCRIPT = HERE + "/../ildump/script.json"
DUMPCS = HERE + "/../ildump/dump.cs"

import struct


def load_segs(path):
    with open(path, "rb") as f:
        d = f.read(0x40 + 10 * 56)
    phoff = struct.unpack_from("<Q", d, 0x20)[0]
    phentsize = struct.unpack_from("<H", d, 0x36)[0]
    phnum = struct.unpack_from("<H", d, 0x38)[0]
    with open(path, "rb") as f:
        f.seek(phoff)
        ph = f.read(phentsize * phnum)
    segs = []
    for i in range(phnum):
        p_type, p_flags = struct.unpack_from("<II", ph, i * phentsize)
        p_offset, p_vaddr, _, p_filesz, p_memsz, _ = struct.unpack_from("<QQQQQQ", ph, i * phentsize + 8)
        if p_type == 1:
            segs.append((p_offset, p_vaddr, p_filesz))
    return segs


def load_methods():
    """RVA(hex int) -> 'Class::Method' from script.json ScriptMethod"""
    try:
        j = json.load(open(SCRIPT))
    except Exception:
        return {}
    out = {}
    for e in j.get("ScriptMethod", []):
        a = e["Address"]
        a = int(a, 16) if isinstance(a, str) else int(a)
        out[a] = e["Name"]
    return out


def main():
    so, va0, va1 = sys.argv[1], int(sys.argv[2], 16), int(sys.argv[3], 16)
    show_branch = "--no-branch" not in sys.argv
    segs = load_segs(so)
    methods = load_methods()

    data = open(so, "rb").read()

    def va2off(va):
        for off, vaddr, size in segs:
            if vaddr <= va < vaddr + size:
                return off + (va - vaddr)
        return None

    o0 = va2off(va0)
    code = data[o0: o0 + (va1 - va0)]
    md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    md.detail = True

    names = sorted(methods)
    def mname(va):
        i = bisect.bisect_left(names, va)
        if i < len(names) and names[i] == va:
            return methods[va]
        return None

    page = {}
    for ins in md.disasm(code, va0):
        ann = []
        m, ops = ins.mnemonic, ins.op_str
        if m == "adrp" and len(ins.operands) == 2:
            try:
                page[ins.reg_name(ins.operands[0].reg)] = ins.operands[1].imm
            except Exception:
                pass
        elif m in ("add", "sub") and len(ins.operands) == 3 and ins.operands[2].type == 2:
            b = page.get(ins.reg_name(ins.operands[1].reg))
            if b is not None:
                eff = b + ins.operands[2].imm if m == "add" else b - ins.operands[2].imm
                ann.append(f"; ={eff:#x}")
        elif m == "bl":
            tgt = ins.operands[0].imm
            nm = mname(tgt)
            ann.append(f"-> {tgt:#x}" + (f"  {nm}" if nm else ""))
        elif m in ("b", "b.eq", "b.ne", "b.hi", "b.lo", "b.hs", "b.ls", "b.gt", "b.ge",
                   "b.lt", "b.le", "b.mi", "b.pl", "cbz", "cbnz", "tbz", "tbnz") and show_branch:
            for op in ins.operands:
                if op.type == 2:
                    ann.append(f"-> {op.imm:#x}")
        line = f"{ins.address:#09x}  {m:<7} {ops}"
        if ann:
            line = f"{line:<48} {' '.join(ann)}"
        print(line)


if __name__ == "__main__":
    main()
