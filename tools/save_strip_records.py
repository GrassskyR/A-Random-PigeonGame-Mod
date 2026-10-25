#!/usr/bin/env python3
"""按文本正则删除明文 PlayerPrefs XML 中匹配的成绩项。

匹配规则见 REC，不解析加密键，不被当前 APK 构建链调用。
用法: python tools/save_strip_records.py <in.xml> <out.xml>"""
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
