#!/usr/bin/env python3
"""运行时 dump libil2cpp.so 的 metadata-usage 字符串表（用来静态反汇编时还原字面量）。

输出 work/literals.json: {"0x4187c28": "chapter8UnlockBegin", ...}

用法: python tools/lit_dump.py [进程名]
"""
import json
import sys

import frida

PROC = sys.argv[1] if len(sys.argv) > 1 else "Phigros"
LO, HI = 0x4180000, 0x41A0000

JS = r"""
const base = Process.findModuleByName("libil2cpp.so").base;
const out = {};
const LO = %d, HI = %d;
for (let va = LO; va < HI; va += 8) {
    const slot = base.add(va);
    try {
        let p1 = slot.readPointer();
        if (p1.isNull()) continue;
        const cands = [p1];
        try { cands.push(p1.readPointer()); } catch (e) {}
        for (const p2 of cands) {
            if (p2.isNull()) continue;
            const len = p2.add(0x10).readS32();
            if (len <= 0 || len > 300) continue;
            const s = p2.add(0x14).readUtf16String(len);
            if (s && s.length === len && !/[\u0000-\u001f]/.test(s)) {
                out["0x" + va.toString(16)] = s;
                break;
            }
        }
    } catch (e) {}
}
send({count: Object.keys(out).length, data: out});
""" % (LO, HI)


def main():
    dev = frida.get_device_manager().add_remote_device("127.0.0.1:27042")
    session = dev.attach(PROC)
    script = session.create_script(JS)
    done = {}

    def on_msg(msg, data):
        if msg["type"] == "send":
            done.update(msg["payload"])

    script.on("message", on_msg)
    script.load()
    import time
    for _ in range(120):
        if done:
            break
        time.sleep(0.5)
    if not done:
        print("没有拿到数据（进程里找不到 libil2cpp 或范围不对）")
        return
    print("槽位数量:", done["count"])
    json.dump(done["data"], open("work/literals.json", "w"), ensure_ascii=False, indent=0)
    print("wrote work/literals.json")


if __name__ == "__main__":
    main()
