#!/usr/bin/env python3
"""Phigros 4.0.1.1 (arm64) —— **不改成绩**的全解锁补丁（原理化 / 带反汇编自校验）。

设计原则
--------
1. 只改「判定」，绝不往存档里写成绩。
2. 每个补丁都是**等长原地替换**（4 字节对齐），不改变任何指令地址。
3. 每个补丁都必须能通过 capstone 反汇编自校验：写进去的机器码必须重新反汇编成
   预期的助记符，否则构建立即失败 —— 防手写 hex 出错。

分组（--only 选择，默认全开）
-----------------------------
  chart   : 每首歌每个难度的解锁位。CheckSongUnlock 里 switch(ChartUnlock.unlockType)
            的取值点改成恒 -1（metadata Tooltip: -1 == "Always unlocked"）。
  song    : SongSelectorItem.Unlocked = (songUnlockType == -1) 改成恒 true
            （歌曲可选，不读任何成绩）。
  chapter : ChapterSelector.Start 里 ChapterInfo.unlockInfo.unlockMode 恒读 0
            （0 == "Always unlock"，官方代码里就是直接跳过 SetActive 的常开分支）。
  crypto  : SaveManagement 8 个加解密入口 -> ret（存档变明文，只影响可编辑性）。

用法:
  python tools/patch_min.py <in.so> <out.so> [--only chart,song,chapter,crypto]
"""
import sys
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

# --- ELF PT_LOAD（该 .so 共 4 段，代码在第二段） -----------------------------
SEGS = [(0x0, 0x0, 0x19435B4), (0x19435B4, 0x19475B4, 0x25546DC)]


def va2off(va):
    for off, vaddr, size in SEGS:
        if vaddr <= va < vaddr + size:
            return off + (va - vaddr)
    raise ValueError(f"VA {va:#x} not in any LOAD segment")


MD = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)


def enc(words, expect):
    """words: list[int] -> bytes，并与 expect（capstone 反汇编文本）逐条比对。"""
    out = bytearray()
    for i, w in enumerate(words):
        b = w.to_bytes(4, "little")
        got = [f"{ins.mnemonic} {ins.op_str}" for ins in MD.disasm(b, 0)]
        want = expect[i].strip()
        if [g.strip() for g in got] != [want]:
            raise SystemExit(f"!! 自校验失败: {w:#010x} 反汇编为 {got}，期望 ['{want}']")
        out += b
    return bytes(out).hex()


RET = enc([0xD65F03C0], ["ret"])

PATCH = {}

PATCH["chart"] = [
    # CheckSongUnlock 逐谱面循环（0x1cbd3d8 起）:
    #   x8  = SongsItem.unlockInfo (ChartUnlock[])      [SongsItem+0x60]
    #   x10 = unlockInfo[i]                            (IL2CPP 数组数据在 +0x20)
    #   w10 = x10->unlockType                          [ChartUnlock+0x10]  <<< 改这里
    #   w10 += 1 ; if (w10 > 3) skip ; switch: 0=>-1 常解锁 / 1=>0 正常(看成绩) / 2=>1 钥匙 / 3=>2 钥匙
    # 改成 mov w10,#-1 => w10+1 == 0 => 走 index0 => chartUnlocked[i] = true。
    # 前面 difficulty[i] (==0 表示无此难度) 的存在性检查保持原样，不会造出不存在的 AT。
    (0x1CBD430, "4a1140b9", [0x1280000A], ["mov w10, #-1"],
     "ChartUnlock.unlockType 恒读 -1 => 每个难度位常解锁"),
]

PATCH["song"] = [
    # Chapter9SongUnlockSprite calls CheckSongUnlock directly and checks the
    # returned unlockType; changing only SongSelectorItem.Unlocked misses it.
    (0x1CBD8EC, "681b40b9", [0x12800008], ["mov w8, #-1"],
     "ChapterSongItem.unlockType 恒读 -1 => 歌曲/地图/MB 锁走常开分支"),
    # SongSelectorItem..ctor:
    #   cmn w23,#1 ; cset w8,eq ; cmp w23,#1 ; strb w8,[this+0x18]
    #   => this.Unlocked = (unlockType == -1)
    # 把 cmn w23,#1 换成 cmp w23,w23（Z 恒为 1）=> Unlocked 恒 true。
    # 后面那条 cmp w23,#1 / b.ne 仍保留（那是 unlockType==1 的货币价格分支）。
    (0x1DB0EA4, "ff060031", [0x6B1702FF], ["cmp w23, w23"],
     "SongSelectorItem.Unlocked 恒 true（歌曲可选，不看成绩）"),
]

PATCH["chapter"] = [
    # ChapterSelector and CheckSongUnlock read unlockMode independently.
    (0x1CBCF78, "091140b9", [0x52800009], ["mov w9, #0"],
     "CheckSongUnlock: unlockMode 恒读 0 => 歌曲判定同步解除章节成绩门槛"),
    # ChapterSelector.Start 逐章循环（0x1d57ccc..0x1d57f64）静态还原：
    #   ChapterInfo.unlockInfo (ChapterSelectorUnlockInfo*) = [ChapterInfo+0x30]
    #   w8 = unlockInfo.unlockMode                          [ChapterSelectorUnlockInfo+0x10]  <<< 改这里
    #   w8 -= 1 ; if (w8 > 3) goto 0x1d57f44        <-- unlockMode 0 / 越界 = 官方「常开」路径
    #   switch(unlockMode-1): 0=>880000 / 1=>Legacy 通关数 / 2=>920000 / 3=>钥匙+880000
    #   判定失败 -> 0x1d57e90: banner.SetActive(false) / moreInfo.SetActive(false) /
    #                          locked.SetActive(true)   <-- 这就是 "Locked"
    #   判定成功 -> 0x1d57f44: 不动任何 SetActive，保留预制体默认外观（= 已解锁 + PLAY 可点）
    # 结论：unlockMode 恒读 0，等于让每一章都走「官方常开」的同一条代码路径，不是跳流程。
    (0x1D57D2C, "081140b9", [0x52800008], ["mov w8, #0"],
     "ChapterSelector: unlockMode 恒读 0 => 全部章节常开（PLAY 可点）"),
]

PATCH["crypto"] = [
    (0x1CC4688, None, [0xD65F03C0], ["ret"], "SaveManagement::Encrypt(string) -> ret"),
    (0x1CC5728, None, [0xD65F03C0], ["ret"], "SaveManagement::Decrypt(string) -> ret"),
    (0x1CC6914, None, [0xD65F03C0], ["ret"], "SaveManagement::Encrypt(byte[]) -> ret"),
    (0x1CC6EC8, None, [0xD65F03C0], ["ret"], "SaveManagement::Decrypt(byte[]) -> ret"),
    (0x1CC736C, None, [0xD65F03C0], ["ret"], "SaveManagement::Encrypt2(byte[]) -> ret"),
    (0x1CC7920, None, [0xD65F03C0], ["ret"], "SaveManagement::Decrypt2(byte[]) -> ret"),
    (0x1CC4C20, None, [0xD65F03C0], ["ret"], "SaveManagement::EncryptDES(string) -> ret"),
    (0x1CC5454, None, [0xD65F03C0], ["ret"], "SaveManagement::DecryptDES(string) -> ret"),
]

ALL = ["chart", "song", "chapter", "crypto"]


def main():
    src, dst = sys.argv[1], sys.argv[2]
    only = ALL
    if "--only" in sys.argv:
        only = sys.argv[sys.argv.index("--only") + 1].split(",")
    data = bytearray(open(src, "rb").read())
    n = 0
    for grp in ALL:
        if grp not in only:
            continue
        print(f"--- {grp}")
        for va, old_hex, words, expect, desc in PATCH[grp]:
            new_hex = enc(words, expect)
            off = va2off(va)
            cur = bytes(data[off:off + len(words) * 4]).hex()
            if old_hex and cur != old_hex:
                print(f"  !! 版本不匹配，跳过 {desc}: 期望 {old_hex} 实际 {cur}")
                continue
            data[off:off + len(words) * 4] = bytes.fromhex(new_hex)
            print(f"  {va:#010x}  {cur} -> {new_hex}   {desc}")
            n += 1
    open(dst, "wb").write(data)
    print(f"wrote {dst}  ({n} patches)")


if __name__ == "__main__":
    main()
