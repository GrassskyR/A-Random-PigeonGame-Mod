#!/usr/bin/env python3
"""极简 UnityFS(.bundle) 扫描器：解压所有 block，在解压后的内容里搜关键字。

不解析 SerializedFile 结构，只做"文本是否在里面"的判定 —— 用来定位存配置 JSON 的 bundle。

用法: python tools/scan_bundles.py <dir> <needle> [--dump out.txt]
"""
import os
import struct
import sys

import lz4.block


def read_cstr(buf, p):
    e = buf.index(b"\0", p)
    return buf[p:e].decode("utf-8", "replace"), e + 1


def decompress_unityfs(path):
    with open(path, "rb") as f:
        data = f.read()
    if not data.startswith(b"UnityFS\0"):
        return None
    p = 8
    version, p = struct.unpack_from(">I", data, p)[0], p + 4
    unity_ver, p = read_cstr(data, p)
    unity_rev, p = read_cstr(data, p)
    size, cbis, ubis, flags = struct.unpack_from(">qIII", data, p)
    p += 20
    if flags & 0x80:  # BlocksInfoAtEnd
        info_pos = len(data) - cbis
    else:
        info_pos = p

    info = data[info_pos:info_pos + cbis]
    # 跳过 16 字节 hash
    blk = info[16:]
    if cbis != ubis:
        try:
            blk = lz4.block.decompress(blk, uncompressed_size=ubis - 16)
        except Exception:
            return None
    try:
        nblocks = struct.unpack_from(">I", blk, 0)[0]
    except struct.error:
        return None
    q = 4
    blocks = []
    for _ in range(nblocks):
        usize, csize, bflags = struct.unpack_from(">IIH", blk, q)
        q += 10
        blocks.append((usize, csize, bflags))

    # 数据起点：紧跟在 blocksInfo 之后（AtEnd 时是 header 之后）
    data_start = p if flags & 0x80 else info_pos + cbis
    out = bytearray()
    off = data_start
    for usize, csize, bflags in blocks:
        raw = data[off:off + csize]
        off += csize
        comp = bflags & 0x3F
        if comp == 0:
            out += raw
        elif comp in (2, 3):
            out += lz4.block.decompress(raw, uncompressed_size=usize)
        else:
            return None  # LZMA 等，跳过
    return bytes(out)


def main():
    root, needle = sys.argv[1], sys.argv[2].encode()
    dump = None
    if "--dump" in sys.argv:
        dump = open(sys.argv[sys.argv.index("--dump") + 1], "wb")

    hits = 0
    files = []
    for dirpath, _, names in os.walk(root):
        for n in names:
            if n.endswith(".bundle"):
                files.append(os.path.join(dirpath, n))
    files.sort()
    print(f"扫描 {len(files)} 个 bundle，关键字 {needle!r}", flush=True)

    for i, f in enumerate(files):
        if i % 200 == 0:
            print(f"  ..{i}/{len(files)}", flush=True)
        try:
            payload = decompress_unityfs(f)
        except Exception:
            payload = None
        if not payload:
            continue
        if needle in payload:
            hits += 1
            print("HIT", os.path.basename(f), len(payload), flush=True)
            if dump:
                dump.write(b"\n===== " + os.path.basename(f).encode() + b" =====\n")
                dump.write(payload)
    print(f"完成，命中 {hits} 个")
    if dump:
        dump.close()


if __name__ == "__main__":
    main()
