#!/usr/bin/env python3
"""在明文 PlayerPrefs XML 中改写匹配的成绩和标记项。

前置为明文格式输入；不被当前 APK 构建链调用。
具体匹配键和写入规则见本文件实现，不作为当前解锁步骤。
用法: python tools/unlock_prefs.py <in.xml> <out.xml> [score]"""
import sys
import urllib.parse as up

SCORE = int(sys.argv[3]) if len(sys.argv) > 3 else 1000000

BOOL_KEYS = [
    "legacyChapterFinished",
    "chapter8UnlockBegin", "chapter8UnlockSecondPhase", "chapter8Passed",
    "chapter9UnlockBegin", "chapter9Phase2Begin", "chapter9Phase2Passed",
    "chapter9SecretChallengePendingLifeUnlock", "c9BaselineChallengeReached",
    "alreadyShowAutoUnlockINTip", "alreadyShowCollectionTip",
]
ARRAY_KEYS = [
    "chapter8SongUnlocked", "chapter9SongUnlocked",
    "chapter9Phase2SongUnlocked", "randomVersionUnlocked",
]
INT_KEYS = {
    "unlockFlagOfSpasmodic": 1, "unlockFlagOfIgallta": 1, "unlockFlagOfRrharil": 1,
    "flagOfSongRecordKey": 1, "flagOfSongRecordKeyTakumi": 1,
    "songsUpdateInfoVersionCode": 4,
}


def enc(s: str) -> str:
    # 与游戏自己写档时的编码一致（java URLEncoder）
    return up.quote_plus(s, safe="")


def main():
    src, dst = sys.argv[1], sys.argv[2]
    text = open(src, encoding="utf-8").read()

    old_vals = {
        enc('{"s":0,"a":0.0,"c":0}'),
        enc('{"s":0,"a":0,"c":0}'),
    }
    new_val = enc('{"s":%d,"a":100.0,"c":0}' % SCORE)

    n = 0
    for ov in old_vals:
        n += text.count(ov)
        text = text.replace(ov, new_val)
    print(f"记录改写: {n} 条 -> score={SCORE}")

    extra = []
    for k in BOOL_KEYS:
        extra.append((k, "True"))
    for base in ARRAY_KEYS:
        for i in range(10):
            extra.append((f"{base}{i}", "True"))
    for k, v in INT_KEYS.items():
        extra.append((k, str(v)))

    lines = []
    added = 0
    for k, v in extra:
        if f'name="{k}"' in text:
            continue
        lines.append(f'    <string name="{k}">{v}</string>')
        added += 1
    blob = "\n".join(lines) + "\n"
    text = text.replace("</map>", blob + "</map>")
    print(f"追加标记: {added} 个")

    open(dst, "w", encoding="utf-8").write(text)
    print("wrote", dst)


if __name__ == "__main__":
    main()
