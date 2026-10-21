#!/usr/bin/env python3
"""Phigros 4.0.1.1 (arm64) 全解锁补丁集。

包含两组：
 A. 存档解密 —— SaveManagement 的 8 个加解密函数入口改成 `ret`（存档变明文，便于直接改档）
 B. 章节解锁 —— 把"章节解锁判定"里的 unlockMode 分支强制走"常开"路径

用法: python tools/patch_all.py <in.so> <out.so>
"""
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

    # --- B. 章节解锁：unlockMode 分支强制"常开" ---
    # ChapterSelector.Start: cmp w8,#3 ; b.hi 0x1d57f44  ->  无条件跳 0x1d57f44
    # (0x1D57D38, "68100054", "83000014", "ChapterSelector.Start: 强制 unlockMode=0（会让按钮不被启用，已停用）"),
    # GameInformation.CheckSongUnlock: 同一模式的章节判定分支
    # (0x1CBCF8C, "08070054", "38000014", "CheckSongUnlock: 强制 unlockMode=0（已停用）"),

    # --- C. 成绩/线索类谓词强制成立 ---
    # 函数入口 8 字节替换成 mov w0,#1 ; ret  (或 w0,#0 ; ret)
    (0x1CC0870, None, TRUE8, "<CheckSongUnlock>b__62_0(record) -> true   [歌曲解锁看成绩]"),
    (0x1CDCD1C, None, TRUE8, "Tools.IsSpecifiedSongReachScore -> true"),
    (0x1CDCE9C, None, TRUE8, "Tools.<>c__DisplayClass2_0.b__0(record) -> true"),
    (0x1D58494, None, TRUE8, "ChapterSelector.<Start>g__IsSpecifiedSongReachScore|18_7 -> true"),
    (0x1D8AD1C, None, FALSE8, "ShouldShowUnlockHint -> false            [隐藏'线索缺失/达到A'提示]"),
    (0x1D8AE48, None, TRUE8, "EvanescentUnlockEvent.ShouldUnlockAfterCompletion -> true"),

    # --- D. 选歌项/钥匙层面的强制解锁（章节 8/9 的"解密"流程就是靠这些判定） ---
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
