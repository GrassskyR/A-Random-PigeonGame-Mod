#!/usr/bin/env python3
"""按固定 RVA 应用实验指令替换，不被当前 APK 构建链调用。

包含存档加解密入口、成绩谓词、列表 getter 和布尔读取替换。
实际写入由 PATCHES 决定；正式构建见 tools/build_all.py。
用法: python tools/patch_all.py <in.so> <out.so>"""
import sys

DELTA = 0x4000            # RX LOAD: file off 0x19435b4 <-> VA 0x19475b4
RET = "c0035fd6"          # ret
TRUE8 = "20008052c0035fd6"   # mov w0,#1 ; ret
FALSE8 = "00008052c0035fd6"  # mov w0,#0 ; ret

# VA -> (原字节, 新字节, 说明)
PATCHES = [
    # --- A. 存档加解密恒等化 ---
    (0x1CC4688, None, RET, "SaveManagement::Encrypt(string) -> ret"),
    (0x1CC5728, None, RET, "SaveManagement::Decrypt(string) -> ret"),
    (0x1CC6914, None, RET, "SaveManagement::Encrypt(byte[]) -> ret"),
    (0x1CC6EC8, None, RET, "SaveManagement::Decrypt(byte[]) -> ret"),
    (0x1CC736C, None, RET, "SaveManagement::Encrypt2(byte[]) -> ret"),
    (0x1CC7920, None, RET, "SaveManagement::Decrypt2(byte[]) -> ret"),
    (0x1CC4C20, None, RET, "SaveManagement::EncryptDES(string) -> ret"),
    (0x1CC5454, None, RET, "SaveManagement::DecryptDES(string) -> ret"),

    # --- C. 成绩/线索类谓词强制成立 ---
    # 函数入口 8 字节替换成 mov w0,#1 ; ret  (或 w0,#0 ; ret)
    (0x1CC0870, None, TRUE8, "<CheckSongUnlock>b__62_0(record) -> true   [歌曲解锁看成绩]"),
    (0x1CDCD1C, None, TRUE8, "Tools.IsSpecifiedSongReachScore -> true"),
    (0x1CDCE9C, None, TRUE8, "Tools.<>c__DisplayClass2_0.b__0(record) -> true"),
    (0x1D58494, None, TRUE8, "ChapterSelector.<Start>g__IsSpecifiedSongReachScore|18_7 -> true"),
    (0x1D8AD1C, None, FALSE8, "ShouldShowUnlockHint -> false            [隐藏'线索缺失/达到A'提示]"),
    (0x1D8AE48, None, TRUE8, "EvanescentUnlockEvent.ShouldUnlockAfterCompletion -> true"),

    # --- D. 列表 getter、钥匙次数及布尔读取入口替换 ---
    (0x1DB0A98, None, TRUE8,  "SongSelectorItem.get_Unlocked -> true"),
    (0x1DB0AAC, None, "e0038052c0035fd6", "SongSelectorItem.get_PlayableLevelCount -> 4"),
    (0x1DB0ACC, None, TRUE8,  "SongSelectorItem.get_LegacyPlayable -> true"),
    (0x1DB0AE0, None, FALSE8, "SongSelectorItem.get_InfoHidden -> false"),
    (0x1CBDDC0, None, "e07b8052c0035fd6", "GameInformation.GetRemainingUnlockTimes -> 999"),
    (0x1CC52BC, None, TRUE8, "SaveManagement.LoadBool -> true        [所有布尔存档标记恒真]"),
]


def main():
    src, dst = sys.argv[1], sys.argv[2]
    data = bytearray(open(src, "rb").read())
    for va, old_hex, new_hex, desc in PATCHES:
        off = va - DELTA
        n = len(bytes.fromhex(new_hex))
        cur = data[off:off + n].hex()
        if old_hex and cur != old_hex:
            print(f"!! {desc}: 期望 {old_hex} 实际 {cur}（版本不匹配，跳过）")
            continue
        data[off:off + n] = bytes.fromhex(new_hex)
        print(f"{desc:58s} {va:#010x}  {cur} -> {new_hex}")
    open(dst, "wb").write(data)
    print("wrote", dst)


if __name__ == "__main__":
    main()
