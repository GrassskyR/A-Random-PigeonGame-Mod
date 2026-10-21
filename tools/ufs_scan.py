#!/usr/bin/env python3
"""UnityFS(.bundle) 解压 + 关键字扫描（UnityFS v6/v7/v8 兼容）。

用法: python tools/ufs_scan.py <bundle_dir_or_file> <needle> [--dump out.bin] [--limit N]
"""
import glob
import os
import struct
import sys

import lz4.block


def decompress_payload(data):
    if not data.startswith(b"UnityFS\0"):
        return None
    p = 8
    ver = struct.unpack_from(">I", data, p)[0]
    p += 4

    def cstr(p):
        e = data.index(b"\0", p)
        return data[p:e].decode("utf-8", "replace"), e + 1

    _, p = cstr(p)
    _, p = cstr(p)
    size, cbis, ubis, flags = struct.unpack_from(">qIII", data, p)
    p += 20

    at_end = (ver >= 7) or bool(flags & 0x80)
    info_pos = len(data) - cbis if at_end else p
    info = data[info_pos:info_pos + cbis]

    for skip in (16, 0):
        blk = info[skip:]
        if cbis != ubis:
            try:
                blk = lz4.block.decompress(blk, uncompressed_size=ubis - skip)
            except Exception:
                continue
        try:
            n = struct.unpack_from(">I", blk, 0)[0]
        except Exception:
            continue
        if not (0 < n < 65536):
            continue
        q = 4
        blocks = []
        ok = True
        for _ in range(n):
            try:
                usize, csize, bf = struct.unpack_from(">IIH", blk, q)
            except Exception:
                ok = False
                break
            q += 10
            blocks.append((usize, csize, bf))
        if not ok:
            continue
        out = bytearray()
        off = p
        good = True
        for usize, csize, bf in blocks:
            raw = data[off:off + csize]
            off += csize
            comp = bf & 0x3F
            if comp == 0:
                out += raw
            elif comp in (2, 3):
                try:
                    out += lz4.block.decompress(raw, uncompressed_size=usize)
                except Exception:
                    good = False
                    break
            else:
                good = False
                break
        if good:
            return bytes(out)
    return None


def main():
    target, needle = sys.argv[1], sys.argv[2].encode()
    limit = int(sys.argv[sys.argv.index("--limit") + 1]) if "--limit" in sys.argv else 10 ** 9
    dump_path = sys.argv[sys.argv.index("--dump") + 1] if "--dump" in sys.argv else None
    dump = open(dump_path, "wb") if dump_path else None

    if os.path.isdir(target):
        files = sorted(glob.glob(os.path.join(target, "*.bundle")))
    else:
        files = [target]
    files = files[:limit]
    print(f"扫描 {len(files)} 个文件", flush=True)

    hits = 0
    for i, f in enumerate(files):
        if i % 200 == 0 and i:
            print(f"  ..{i}", flush=True)
        try:
            pl = decompress_payload(open(f, "rb").read())
        except Exception:
            pl = None
        if not pl:
            continue
        if needle in pl:
            hits += 1
            print("HIT", os.path.basename(f), len(pl), flush=True)
            if dump:
                dump.write(b"\n===== " + os.path.basename(f).encode() + b" =====\n")
                dump.write(pl)
    print(f"完成，命中 {hits}")
    if dump:
        dump.close()


if __name__ == "__main__":
    main()
