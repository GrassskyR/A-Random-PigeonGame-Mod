#!/usr/bin/env python3
"""把 libil2cpp.so 里 SaveManagement 的加解密函数改成恒等变换（直接 ret）。

效果：PlayerPrefs 里的键名/值变成明文，可以用文本编辑器直接改存档。
仅用于本地单机调试；改完的 .so 需要 root 覆盖或重打包。

用法: python tools/patch_save_crypto.py <in.so> <out.so>
"""
import sys

# RVA(VA) —— 来自 Il2CppDumper 的 dump.cs
TARGETS = {
    0x1CC4688: "SaveManagement::Encrypt(string)",
    0x1CC5728: "SaveManagement::Decrypt(string)",
    0x1CC6914: "SaveManagement::Encrypt(byte[])",
    0x1CC6EC8: "SaveManagement::Decrypt(byte[])",
    0x1CC736C: "SaveManagement::Encrypt2(byte[])",
    0x1CC7920: "SaveManagement::Decrypt2(byte[])",
    0x1CC4C20: "SaveManagement::EncryptDES(string)",
    0x1CC5454: "SaveManagement::DecryptDES(string)",
}

DELTA = 0x4000          # RX LOAD: file off 0x19435b4 <-> VA 0x19475b4
RET = bytes.fromhex("c0035fd6")   # arm64: ret


def main():
    src, dst = sys.argv[1], sys.argv[2]
    data = bytearray(open(src, "rb").read())
    for va, name in TARGETS.items():
        off = va - DELTA
        old = bytes(data[off:off + 4])
        data[off:off + 4] = RET
        print(f"{name:42s} VA {va:#010x} file {off:#010x}  {old.hex()} -> {RET.hex()}")
    open(dst, "wb").write(data)
    print("wrote", dst, len(data), "bytes")


if __name__ == "__main__":
    main()
