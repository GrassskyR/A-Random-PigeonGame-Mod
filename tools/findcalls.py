#!/usr/bin/env python3
"""List all call sites of given target VAs, annotated with the *enclosing* IL2CPP method.

usage: findcalls.py <so> <targetVA[,targetVA...]> [--filter substr] [--forbidden substr]

Enclosing method is resolved through ildump/script.json ScriptMethod (largest RVA <= addr).
"""
import sys, json, bisect
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

HERE = __file__.rsplit("/", 1)[0]
SO = sys.argv[1]
TARGETS = [int(x, 16) for x in sys.argv[2].split(",")]
filt = None
forb = None
if "--filter" in sys.argv:
    filt = sys.argv[sys.argv.index("--filter") + 1]
if "--forbidden" in sys.argv:
    forb = sys.argv[sys.argv.index("--forbidden") + 1]

TEXT_OFF, TEXT_VA, TEXT_SIZE = 0x19435b4, 0x19475b4, 0x25546dc

j = json.load(open(HERE + "/../ildump/script.json"))
rv = []
for e in j["ScriptMethod"]:
    a = e["Address"]
    a = int(a, 16) if isinstance(a, str) else int(a)
    rv.append((a, e["Name"]))
rv.sort()
addrs = [a for a, _ in rv]


def owner(addr):
    i = bisect.bisect_right(addrs, addr) - 1
    return rv[i][1] if i >= 0 else "?"


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
    print(f"===== target {t:#x}: {len(hits[t])} call site(s)")
    for a in hits[t]:
        o = owner(a)
        if filt and filt not in o:
            continue
        if forb and forb in o:
            continue
        print(f"  {a:#x}  {o}")
