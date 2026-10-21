#!/usr/bin/env python3
"""在运行中的游戏里按字符串找对象，读出 Chapter/ChapterSongItem 的解锁配置。

数据只读，不调用任何游戏函数（houdini 下也安全）。

用法: python tools/live_scan.py "Rrhar'il"
"""
import json
import sys
import time

import frida

TARGET = sys.argv[1] if len(sys.argv) > 1 else "Rrhar'il"

JS = r"""
function utf16hex(s) {
    let out = "";
    for (let i = 0; i < s.length; i++) out += (s.charCodeAt(i) & 0xff).toString(16).padStart(2,"0") + "00";
    return out;
}
function ptrhex(p) {
    let out = "";
    for (let i = 0; i < 8; i++) out += ((p.shr(8*i).and(0xff)).toInt32() & 0xff).toString(16).padStart(2,"0");
    return out;
}
function readStr(p) {
    try {
        const len = p.add(0x10).readS32();
        if (len <= 0 || len > 200) return null;
        return p.add(0x14).readUtf16String(len);
    } catch (e) { return null; }
}

const target = TARGET_STR;
const res = {hits: [], chapters: []};
const ranges = Process.enumerateRanges("rw-").filter(r => !r.file);
const pat = utf16hex(target);
let charAddrs = [];
for (const r of ranges) {
    try {
        Memory.scanSync(r.base, r.size, pat, {onMatch(a) { charAddrs.push(a); }});
    } catch (e) {}
}
res.hits = charAddrs.map(a => a.toString());

for (const a of charAddrs.slice(0, 4)) {
    const strObj = a.sub(0x14);
    let refs = [];
    const ppat = ptrhex(strObj);
    for (const r of ranges) {
        try { Memory.scanSync(r.base, r.size, ppat, {onMatch(x) { refs.push(x); }}); } catch (e) {}
    }
    for (const ref of refs.slice(0, 6)) {
        const rec = {ref: ref.toString(), kind: null};
        // Chapter.unlockInfo.unlockFlag @ unlockInfo+0x18 ; unlockInfo @ Chapter+0x20
        const unlockInfo = ref.sub(0x18);
        try {
            const mode = unlockInfo.add(0x10).readS32();
            const chapter = unlockInfo.sub(0x20);
            const code = readStr(chapter.add(0x10).readPointer());
            rec.kind = "chapter";
            rec.unlockMode = mode;
            rec.chapterCode = code;
            res.chapters.push(rec);
            continue;
        } catch (e) {}
    }
}
send(res);
""".replace("TARGET_STR", json.dumps(TARGET))


def main():
    dev = frida.get_device_manager().add_remote_device("127.0.0.1:27042")
    session = dev.attach("Phigros")
    script = session.create_script(JS)
    msgs = []
    script.on("message", lambda m, d: msgs.append(m))
    script.load()
    for _ in range(200):
        if msgs:
            break
        time.sleep(0.2)
    print(json.dumps(msgs, ensure_ascii=False, indent=1)[:4000])


if __name__ == "__main__":
    main()
