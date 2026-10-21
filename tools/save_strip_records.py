#!/usr/bin/env python3
"""从明文 PlayerPrefs XML 中删除所有成绩记录（`*.Record.<LEVEL>`）。

目的：证明"全难度解锁"完全由 libil2cpp.so 的判定补丁驱动，
      存档里**一条成绩都不写**。章节/剧情标记与钥匙保留（它们不是成绩）。

用法:
  python tools/save_strip_records.py <in.xml> <out.xml>
  python tools/save_strip_records.py <in.xml> <out.xml> --keep-at       # 保留 AT 键（占位）
"""
import re
import sys

REC = re.compile(r'^\s*<string name="[^"]*\.Record\.(EZ|HD|IN|AT|Legacy)">.*</string>\s*$')


def main():
    src, dst = sys.argv[1], sys.argv[2]
    lines = open(src, encoding="utf-8").read().splitlines(keepends=True)
    out, removed = [], 0
    for ln in lines:
        if REC.match(ln):
            removed += 1
            continue
        out.append(ln)
    text = "".join(out)
    open(dst, "w", encoding="utf-8").write(text)
    print(f"删除成绩条目 {removed} 条 -> {dst}  (剩余 {len(text)} bytes)")
    # 统计剩余非成绩键
    keys = re.findall(r'name="([^"]+)"', text)
    print("剩余键:", len(keys))


if __name__ == "__main__":
    main()
