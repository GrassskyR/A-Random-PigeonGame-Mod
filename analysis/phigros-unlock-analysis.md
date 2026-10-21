# Phigros 4.0.1.1 全部歌曲解锁 — 逆向分析报告

> **最终状态（2026-10-20）：** 后续已完成 APK 打包、启动修复和水印；用户确认全曲解锁与水印生效。完整最终结论、早期错误更正和签名备份见 [总结](../总结.md)。本文保留对应分析阶段的记录，其中“尚未运行/未解决”等描述不代表最终交付状态。

目标：找到"不打歌就解锁全部歌曲"的可实施改法。
样本：`Phigros_4.0.1.1.apk`（2.47 GB，Unity 2022 + IL2CPP，arm64-v8a `libil2cpp.so` 71 MB）

---

## 0. 一句话结论

Phigros 的"解锁"完全是**数据驱动**的，没有反作弊校验：

- 章节锁 → 由 `ChapterSelectorUnlockInfo.unlockMode` + **歌曲成绩记录** + 少量存档标记决定
- 歌曲锁 → 由 `ChapterSongItem.unlockType`（-1 常开 / 0 正常 / 1 货币 / 2/3/4 钥匙）+ **成绩记录** + 钥匙表决定
- 谱面锁（EZ/HD/IN/AT）→ 由成绩记录阈值决定
- 成绩记录、章节标记、钥匙都保存在 **SaveManagement → AES 加密的 PlayerPrefs**（`/data/data/com.PigeonGames.Phigros/shared_prefs/*.xml`）

因此有两条等价路线：**（A）往存档里塞成绩/标记（Frida 调游戏自己的 API 最稳）**，**（B）改 libil2cpp.so 让判定恒真**。两者都需要 root 或重打包；没有"零权限"路线。

---

## 1. 引擎与文件

| 项 | 值 |
|---|---|
| 引擎 | Unity + IL2CPP（metadata v31，未加密） |
| 代码 | `lib/arm64-v8a/libil2cpp.so`（71.7 MB）、`assets/bin/Data/Managed/Metadata/global-metadata.dat`（11.3 MB） |
| 内容 | Unity **Addressables**（`assets/aa/Android/*.bundle`），歌曲/章节配置在其中 |
| Java 层 | 仅壳：TapSDK、防沉迷、Unity Player（`classes.dex` 5.8 MB） |

IL2CPP 的调试符号（方法名/RVA）可用 Il2CppDumper 完整还原——**没有混淆，没有 VMProtect**。

---

## 2. 解锁判定的数据模型（关键类）

命名空间空，程序集 `Assembly-CSharp`。

### 2.1 章节（决定"能不能进章节"）

```csharp
class ChapterSelectorUnlockInfo {
    int unlockMode;      // 0 常开 / 1 指定歌曲≥880000 / 2 旧章节 N 个 A / 3 指定歌曲≥920000 / 4 钥匙+指定歌曲≥880000
    string unlockFlag;   // 1,3,4: 歌名；2: 歌曲数量
    string unlockTip;
}
```

提示文案（多语言 literal 中的证据）：
- `Reach A or higher in any difficulty of [SongName] to unlock`（880000）
- `Reach S or higher in any difficulty of [SongName] to unlock`（920000）
- `Obtain [NumOfSongToUnlock] A ratings in Legacy Chapters to unlock.`

### 2.2 歌曲

```csharp
class ChapterSongItem {
    string songsId;
    int unlockType;      // -1 常开 / 0 正常 / 1 货币 / 2 钥匙(and) / 3 钥匙(or) / 4 每个谱面单独钥匙
    List<string> unlockInfo;
    int secretType;      // 0 常显示 / 1 随解锁显示 / 2 钥匙(and) / 3 钥匙(or)
    List<string> secretInfo;
}
class ChartUnlock { int unlockType; /* -1 常开 / 0 正常 / 1 钥匙(any) / 2 钥匙(all) */ List<string> unlockInfo; }
class Key { string keyName; int unlockedTimes; int kindOfKey; int unlockTimes; } // kind: 0 歌曲 1 收藏品 2 插画 3 头像
class LevelRecord { int s; float a; int c; }   // 成绩 / acc / 连击
```

### 2.3 章节/进度存档标记（`GameProgressSaveModule`，存档 v6）

```
legacyChapterFinished      bool
unlockFlagOfSpasmodic      byte   unlockFlagOfIgallta byte  unlockFlagOfRrharil byte
flagOfSongRecordKey        byte   flagOfSongRecordKeyTakumi byte
randomVersionUnlocked[]    bool[]
chapter8UnlockBegin / chapter8UnlockSecondPhase / chapter8Passed : bool
chapter8SongUnlocked[]     bool[]
chapter9UnlockBegin        bool   chapter9SongUnlocked[]  bool[]
chapter9Phase2SongUnlocked[] bool[]  chapter9Phase2Begin/Passed, c9BaselineChallengeReached
money[5]                   int[]
```

`GameKeySaveModule`（v3）：`Dictionary<string, List<byte>> keys`

---

## 3. 判定代码位置（arm64 RVA，基址 = `libil2cpp.so` 加载基址）

| 函数 | RVA | 说明 |
|---|---|---|
| `GameInformation::get_main()` | `0x1CB985C` | 拿 GameInformation 单例 |
| `GameInformation::CheckSongUnlock(string songsId, out int unlockType, out bool[] chartUnlocked, out bool appeared, out string unlockInfo)` | `0x1CBCC74` | **核心判定**：先把章节 lock 状态、钥匙、成绩记录全算一遍，产出每首歌的解锁态 |
| `GameInformation::GetSongRecord(string songsId, string songsLevel)` | `0x1CBB400` | 取单个谱面成绩 |
| `GameInformation::GetSongAllRecord(string songsId)` | `0x1CBB708` | 取该歌 4 个难度成绩 |
| `GameInformation::SetSongRecord(string songsId, string songsLevel, LevelRecord)` | `0x1CBB654` | 写入成绩（存档侧） |
| `GameInformation::GetRemainingUnlockTimes(string keyName, int kind)` | `0x1CBDDC0` | 剩余钥匙次数 |
| `GameInformation::FindKey / GetKey` | `0x1CA99F8` / `0x1CA9ED8` | 钥匙表 |
| `SaveManagement::SaveBool/SaveInt/SaveString` | `0x1CC4F80` / `0x1CC5034` / `0x1CC5240` | 加密写 PlayerPrefs |
| `SaveManagement::LoadBool` | `0x1CC52BC` | 加密读 |
| `SaveManagement::LegacySaveBool/SaveInt` | `0x1CC6248` / `0x1CC62FC` | 旧格式（DES）写 |
| `SaveManagement::Encrypt/Decrypt(byte[])` | `0x1CC6914` / `0x1CC6EC8` | AES 加解密（存存档用） |
| `SongSelectorItem::.ctor(SongsItem, int unlockType, string unlockInfo, bool[] chartUnlockInfo)` | `0x1DB0AF4` | 列表项就是按 `CheckSongUnlock` 的输出构造的 |

`GameInformation` 里可用的字段偏移：

| 字段 | 偏移 |
|---|---|
| `chapters` (`Chapter[]`) | `0xE0` |
| `song` (`SongBase`) | `0xE8` |
| `keyStore` (`List<Key>`) | `0xF0` |

`Chapter`：`chapterCode` 0x10、`songInfo` 0x18、`unlockInfo` 0x20
`ChapterSongInfo`：`songs`(`List<ChapterSongItem>`) 0x28
`ChapterSongItem`：`songsId` 0x10、`unlockType` 0x18、`unlockInfo` 0x20、`secretType` 0x28
`LevelRecord`：`s` 0x10、`a` 0x14、`c` 0x18（对象头 0x10 字节）

`CheckSongUnlock` 内实际的分支（反汇编印证）：

```
0x1CBCE30  *unlockType = 0
0x1CBCE34  *appeared   = false
0x1CBCE7C  chartUnlocked = new bool[](…)          // 返回值是它自己 new 的数组
0x1CBCE88  chapters = this.chapters
0x1CBCF70  Chapter.unlockInfo.unlockMode
0x1CBCF78  ldr w9,[x8,#0x10]
0x1CBCF84  sub w9,w9,#1 ; cmp w9,#3 ; b.hi → 0x1CBD06C   // unlockMode==0：常开
0x1CBCFD8  mov w26,#0xD6D80 (880000)  0x1CBCFE0 movk w26,#0xD,lsl#16  // "88w" 阈值判定
           （同函数内还有 0x1CBCF… 序列处理 unlockMode 1/2/3/4）
```

即：**章节 lock 状态就是在这个函数里算出来的**，不是别处；把"成绩记录"补齐后，章节锁/歌曲锁/谱面锁会按官方逻辑一层层全部打开。

---

## 4. 存档在哪、怎么存的

```
/data/data/com.PigeonGames.Phigros/shared_prefs/com.PigeonGames.Phigros.v2.playerprefs.xml
```

- 名字是 **AES 加密后**的 `SaveManagement.Encrypt(string)`，值同理（有 `aes`、`aes2`、`encryptKey` 三个静态字段，另有 DES 的 `Legacy*` 老格式兼容）
- 逻辑上的 5 个存档模块（云存档 `CloudSaveManager` 用同一套二进制格式）：`user` v1 / `settings` v1 / `gameRecord` v1 / `gameKey` v3 / `gameProgress` v6，入口 `SaveManagement`、`CloudSaveManager.SaveToFolder/LoadFromFolder`
- 也就是说：**离线改存档 = 要先拿到 AES key 并复现 Encrypt**（key 在 `SaveManagement..cctor` 里，运行时 dump 最快）

外部空间 `Android/data/com.PigeonGames.Phigros/files/` 只有 Addressables 缓存和云存档同步时的临时目录（`/save/`、`/save.zip`），**正式存档在 internal storage，必须 root**。

---

## 5. 三条可行路线对比

| 路线 | 需要 root | 需要重装 APK | 可回滚 | 可靠性 |
|---|---|---|---|---|
| **A. Frida 运行时调游戏自己的存档 API**（推荐） | 是（或 MuMu 模拟器开 root） | 否 | 是（关脚本即恢复） | 高，可边跑边调 |
| B. 离线解密/改/回写 PlayerPrefs | 是 | 否 | 是（先备份 xml） | 高，但要先 dump AES key |
| C. 改 libil2cpp.so + 重签名 APK | 否 | 是（换签名必须卸载，进度靠云存档） | 否 | 中，补丁点需实测 |
| D. 云存档改（phigros-save-manager 之类） | 否 | 否 | 是 | 低：该库只支持到 gameProgress **v3**，本版是 **v6** |

路线 A 的原理：**不碰二进制、不改判定**，直接给游戏喂数据——
1. 对每首歌的每个难度调用 `GameInformation::SetSongRecord(songsId, level, {s=1000000,a=100,c=0})`
   → "88w/92w/N 个 A" 全部条件天然满足，章节锁、歌曲锁、AT 谱面锁一并打开，且是走官方存档通道（下次开局依然有效）
2. 章节 8/9 的剧情型锁（`chapter8UnlockBegin`、`chapter8Passed`、`chapter9*`、`randomVersionUnlocked[]`、`unlockFlagOf*`）再补几个标记
3. 副产物：所有歌的显示成绩会变成 100 万（存档被真的写入）。想干净一点就只写 score=880001，别写 1000000

脚本见 `frida/phigros_unlock.js`。

---

## 6. 路线 C 的具体补丁（如果不想 root）

`CheckSongUnlock` 里"章节视为常开"的分支是唯一的一处：

```
文件偏移 0x1CB8C8C（VA 0x1CBCC8C）  原字节: 08 07 00 54   b.hi #0x1CBD06C
改成:                              38 00 00 14   b    #0x1CBD06C
```

效果：任何章节都按 `unlockMode==0`（常开）处理。**但**章节选择界面（`ChapterSelector`）自己还有一套 lock 显示逻辑（`b__18_14` 等 lambda），所以这条路要验证/可能还要再补 1~2 处，且必须重签名（`apksigner`）。不建议作为首选。

---

## 7. 已验证 / 未验证

已验证（静态）：
- 元数据可完整 dump；方法名、字段偏移、RVA 如上表
- 存档模块与版本号（v6 / v3 / v1）
- 解锁判定的枚举语义与阈值常量（880000 / 920000）来自代码内 literal 与反汇编
- 存档落在 AES 加密的 PlayerPrefs（`SaveString` → `Encrypt` → `PlayerPrefs.SetString`）

未验证（缺设备）：
- 上面指令改动的实际运行效果（需要真机/模拟器跑一次）
- `SetSongRecord` 对"该曲目并不存在的难度"是否安全（建议先只写 IN 试）

下一步：接一台设备（USB 或 MuMu），我可以直接跑脚本、看 logcat、按实际输出把补丁收敛到能用。
