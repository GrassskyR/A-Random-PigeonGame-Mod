#!/usr/bin/env python3
"""静态抽取函数引用的 metadata-usage 槽，运行时解析成字符串字面量。

houdini 下 libil2cpp.so 不在 x86_64 linker 里，Frida 的 findModuleByName 找不到，
所以基址从 /proc/<pid>/maps 里算（用 RX 段的 start - file offset）。

用法: python tools/lit_resolve.py <proc> <rva> <insn_count> [<rva> <count> ...]
"""
import json
import os
import subprocess
import sys
import time

import frida
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

SO = "work/lib/arm64-v8a/libil2cpp.so"
os.environ.setdefault("ANDROID_SERIAL", "127.0.0.1:16384")
DELTA = 0x4000
md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)


def module_base(proc):
    ps = subprocess.check_output(["adb", "shell", "su -c 'ps -A -o PID,NAME'"]).decode()
    pid = None
    for line in ps.splitlines():
        if proc in line:
            pid = line.split()[0]
            break
    if not pid:
        raise SystemExit(f"找不到进程 {proc}")
    maps = subprocess.check_output(["adb", "shell", f"su -c 'cat /proc/{pid}/maps'"]).decode().splitlines()
    from collections import Counter
    votes = Counter()
    for line in maps:
        if "arm64/libil2cpp.so" not in line:
            continue
        parts = line.split()
        start = int(parts[0].split("-")[0], 16)
        off = int(parts[2], 16)
        for k in (0x0, 0x4000, 0x8000):
            votes[start - off - k] += 1
    return votes.most_common(1)[0][0] if votes else None


def slots_in(rva, count):
    with open(SO, "rb") as f:
        f.seek(rva - DELTA)
        code = f.read(count * 4)
    pages, found = {}, []
    for ins in md.disasm(code, rva):
        ops = ins.op_str
        if ins.mnemonic == "adrp":
            try:
                reg, imm = ops.split(", #")
                pages[reg.strip()] = int(imm, 16)
            except Exception:
                pass
        elif ins.mnemonic in ("ldr", "ldrb", "ldrh") and "[" in ops:
            try:
                _, rest = ops.split(", ", 1)
                base_reg = rest.split(",")[0].strip("[] ")
                off = rest.split("#")[1].rstrip("]")
                if base_reg in pages:
                    found.append((ins.address, pages[base_reg] + int(off, 16)))
            except Exception:
                pass
    return found


def main():
    proc = sys.argv[1]
    args = sys.argv[2:]
    pairs = [(int(args[i], 16), int(args[i + 1])) for i in range(0, len(args), 2)]

    todo = {}
    for rva, cnt in pairs:
        sl = slots_in(rva, cnt)
        print(f"{rva:#x} +{cnt} insn: {len(sl)} 槽")
        for ins_va, slot in sl:
            todo.setdefault(slot, []).append(ins_va)

    slots = sorted(todo)
    base = module_base(proc)
    print("base =", hex(base), "| 槽数:", len(slots))
    if not base:
        return

    js = """
    const base = ptr("%s");
    const slots = %s;
    const out = {};
    for (const va of slots) {
        try {
            const p1 = ptr(base).add(va).readPointer();
            if (p1.isNull()) continue;
            const cands = [p1];
            try { cands.push(p1.readPointer()); } catch (e) {}
            for (const p2 of cands) {
                if (p2.isNull()) continue;
                const len = p2.add(0x10).readS32();
                if (len <= 0 || len > 400) continue;
                const s = p2.add(0x14).readUtf16String(len);
                if (s && s.length === len) { out["0x"+va.toString(16)] = s; break; }
            }
        } catch (e) {}
    }
    send(out);
    """ % (hex(base), json.dumps([int(s) for s in slots]))

    dev = frida.get_device_manager().add_remote_device("127.0.0.1:27042")
    session = dev.attach(proc)
    script = session.create_script(js)
    got = {}
    script.on("message", lambda m, d: got.update(m["payload"]) if m["type"] == "send" else None)
    script.load()
    for _ in range(40):
        if got:
            break
        time.sleep(0.25)

    print("\n%-12s %-10s %s" % ("slot", "insn", "literal"))
    for slot in slots:
        for ins_va in todo[slot][:2]:
            print("%-12s %-10s %r" % (hex(slot), hex(ins_va), got.get(hex(slot))))
    json.dump(got, open("work/literals_partial.json", "w"),
              ensure_ascii=False, indent=0)


if __name__ == "__main__":
    main()
