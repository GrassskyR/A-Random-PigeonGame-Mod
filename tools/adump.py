#!/usr/bin/env python3
"""Annotated aarch64 function dump for libil2cpp.so slices.

usage: adump.py <so> <VA_start> <VA_end> [--lit script.json]

Adds:
  * branch target comments  (-> 0x...)
  * adrp/add and adrp/ldr pair folding: shows resolved VA of memory operand
    and, when the VA is a metadata-usage literal slot, the *index* so it can
    be looked up in stringliteral.json.
"""
import sys, json, bisect, re
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

DELTA = 0x4000          # RX segment file-offset <-> VA


def load_lits(path):
    """script.json ScriptString: {addr: string}  (addr = literal slot VA)"""
    if not path:
        return {}
    try:
        with open(path) as f:
            j = json.load(f)
    except Exception:
        return {}
    out = {}
    for k, v in (j.get("ScriptString") or {}).items():
        try:
            out[int(k, 16)] = v
        except Exception:
            pass
    return out


def main():
    so, va0, va1 = sys.argv[1], int(sys.argv[2], 16), int(sys.argv[3], 16)
    litf = None
    if "--lit" in sys.argv:
        litf = sys.argv[sys.argv.index("--lit") + 1]
    lits = load_lits(litf)
    lit_keys = sorted(lits)

    with open(so, "rb") as f:
        data = f.read()

    def off(va):
        return va - DELTA

    code = data[off(va0):off(va1)]
    md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    md.detail = True
    insns = list(md.disasm(code, va0))

    def lit_at(va):
        i = bisect.bisect_left(lit_keys, va)
        if i < len(lit_keys) and lit_keys[i] == va:
            return lits[va]
        return None

    # fold adrp/add and adrp/ldr
    reg = {}          # reg -> (page_va, reg_after)
    for idx, ins in enumerate(insns):
        ann = []
        m, ops = ins.mnemonic, ins.op_str
        if m == "adrp" and len(ins.operands) == 2:
            try:
                page = ins.operands[1].imm
            except Exception:
                page = None
            if page is not None:
                reg[ins.reg_name(ins.operands[0].reg)] = page
                ann.append(f"; page {page:#x}")
        elif m == "add" and len(ins.operands) >= 3 and ins.operands[2].type == 2:
            base = reg.get(ins.reg_name(ins.operands[1].reg))
            if base is not None:
                eff = base + ins.operands[2].imm
                ann.append(f"; = {eff:#x}")
                s = lit_at(eff)
                if s is not None:
                    ann.append(f'; slot "{s}"')
        elif m in ("ldr", "ldrb", "ldrh", "str", "strb") and ins.operands:
            mem = ins.operands[1] if len(ins.operands) > 1 else None
            if mem is not None and mem.type == 3:
                base = reg.get(ins.reg_name(mem.mem.base)) if mem.mem.base else None
                if base is not None:
                    eff = base + mem.mem.disp
                    ann.append(f"; = {eff:#x}")
                    s = lit_at(eff)
                    if s is not None:
                        ann.append(f'; slot "{s}"')
        for op in ins.operands:
            if op.type == 2 and m.startswith("b"):
                ann.append(f"-> {op.imm:#x}")
        line = f"{ins.address:#010x}  {ins.bytes.hex():<10} {m:<8} {ops}"
        if ann:
            line = f"{line:<66} {' '.join(ann)}"
        print(line)


if __name__ == "__main__":
    main()
