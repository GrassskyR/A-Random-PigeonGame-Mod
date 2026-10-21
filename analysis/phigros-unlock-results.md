# Phigros 4.0.1.1 —— 「不改成绩」全解锁：已验证成果

> **最终状态（2026-10-20）：** 后续已完成 APK 打包、启动修复和水印；用户确认全曲解锁与水印生效。完整最终结论、早期错误更正和签名备份见 [总结](../总结.md)。本文保留对应分析阶段的记录，其中“尚未运行/未解决”等描述不代表最终交付状态。

> **后续核对更正：** 本文描述的 `0x1CBD8EC` 歌曲补丁实际上未写入旧 `patch_min.py` 或 `libil2cpp_min3.so`；第九章还依赖真实命名进度键，旧工具追加的 `chapter9SongUnlocked0` 等字段名无效。最新还原、修正和验证范围见 [chapter9-logic.md](chapter9-logic.md)。旧版“无成绩”XML 另含 42 条加密记录，已核实全为零分。

> 工作区 `/home/missi/project/phigros-test`
> 目标：**不往存档写任何成绩**，纯靠 `libil2cpp.so` 的判定补丁把章节 / 歌曲 / 难度全部放开。
> 状态（2026-10-20，用户手工验证）：**全部章节可进、全部歌曲可选、除第九章外全部难度解锁**。
> 剩余：① 第九章「解密」状态；② 部分歌曲的 MB 购买锁。

---

## 0. 一句话结论

Phigros 的解锁判定是纯数据驱动的，没有反作弊。三处判定分别对应三层锁：

| 层 | 判定点 | 补丁 | 语义 |
|---|---|---|---|
| 章节 | `ChapterSelector.Start` 里 `ChapterSelectorUnlockInfo.unlockMode` | `0x1D57D2C` 恒读 `0` | `0 == Always unlock`（官方「常开」），和第八章一样的路径 |
| 歌曲 | `CheckSongUnlock` 里 `ChapterSongItem.unlockType` | `0x1CBD8EC` 恒读 `-1` | `-1 == Always unlocked`，顺带干掉 MB 购买锁 / 钥匙锁 |
| 难度 | `CheckSongUnlock` 里 `ChartUnlock.unlockType` | `0x1CBD430` 恒读 `-1` | `-1 == Always unlocked`，`chartUnlocked[i] = true` |

再补一条 `SongSelectorItem..ctor` 的强制 `Unlocked = true`，以及（可选的）存档加解密恒等化。

**所有补丁都是 4 字节等长原地替换，不改变任何指令地址，不跳流程。**

---

## 1. 最终补丁集

构建脚本：`tools/patch_min.py`（每个补丁写入后都用 capstone 反汇编自校验，防止手写 hex 出错）。

```bash
./.venv/bin/python tools/patch_min.py work/lib/arm64-v8a/libil2cpp.so patch/libil2cpp_min3.so
./tools/deploy.sh patch/libil2cpp_min3.so save/noscore.xml    # 无成绩存档
```

| # | VA | 原指令 | 新指令 | 说明 |
|---|---|---|---|---|
| 1 | `0x1CBD430` | `ldr w10,[x10,#0x10]` | `mov w10,#-1` | `ChartUnlock.unlockType` 恒 -1 ⇒ **每个难度位常解锁** |
| 2 | `0x1CBD8EC` | `ldr w8,[x27,#0x18]` | `mov w8,#-1` | `ChapterSongItem.unlockType` 恒 -1 ⇒ **歌曲常解锁 + 无 MB 购买锁 + 无钥匙锁** |
| 3 | `0x1DB0EA4` | `cmn w23,#1` | `cmp w23,w23` | `SongSelectorItem.Unlocked = (unlockType==-1)` 改成恒 true（Z 恒置位） |
| 4 | `0x1D57D2C` | `ldr w8,[x8,#0x10]` | `mov w8,#0` | `ChapterSelectorUnlockInfo.unlockMode` 恒 0 ⇒ **全部章节常开、PLAY 可点** |
| 5–12 | `0x1CC4688 … 0x1CC5454` | 函数首指令 | `ret` | `SaveManagement` 8 个加解密入口恒等化 ⇒ 存档变明文（**只影响可编辑性，与成绩无关**） |

### 为什么「恒读 -1」是最干净的改法

`dump.cs` 里 IL2CPP 元数据自带的 `[Tooltip]` 直接写死了语义，不是猜的：

```csharp
public class ChartUnlock {
    [Tooltip("-1 : Always unlocked
              0 : Normal unlock
              1 : Key unlock (any)
              2 : Key unlock (all)")]
    public int unlockType;              // 0x10
}
public class ChapterSongItem {
    [Tooltip("-1 : Always unlocked
              0 : Normal unlock
              1 : Money unlock
              2 : Key unlock (and)
              3 : Key unlock (or)
              4 : Key unlock for each chart")]
    public int unlockType;              // 0x18
}
public class ChapterSelectorUnlockInfo {
    [Tooltip("0: Always unlock
              1: Lock, required specified song reaching 88w
              2: Lock, required specified number of songs completing in Chapter Legacy
              3: Lock, required specified song reaching 92w
              4: For SideStory4. Lock, required a key and a specified song reaching 88w")]
    public int unlockMode;              // 0x10
}
```

把取值点改成「恒等于官方定义的常开值」，等价于**官方数据里本来就是这个值**，
游戏走的是同一条代码路径（包括 PLAY 按钮绑定、难度按钮生成、评分栏），所以不会出现
"卡片解锁了但按钮点不动"的老坑。

---

## 2. 静态分析是怎么定位到这三处的

### 2.1 修正 ELF 段映射（上一轮的最大误导）

上一轮用的是单一 `DELTA = 0x4000` 做 VA→文件偏移，那只对代码段成立。该 .so 有 4 个 `PT_LOAD`：

```
LOAD off=0x0        vaddr=0x0        R    0x19435b4   ← .rodata / 跳转表 / 常量
LOAD off=0x19435b4  vaddr=0x19475b4  RX   0x25546dc   ← 代码（VA-0x4000）
LOAD off=0x3e97c90  vaddr=0x3e9fc90  RW   0x347378
LOAD off=0x41df008  vaddr=0x41eb008  RW   0x28a4d8
```

用错的 delta 去读跳转表会读到字符串明文（本次曾把 `0xc362c0` 读成 ASCII `Pixels(Unity`）。
修正后 4 张跳转表全部解出，判定分支才变得可读。

### 2.2 符号化反汇编（`tools/adump2.py`）

`ildump/script.json` 的 `ScriptMethod` 有 164,420 条 `RVA → Class$$Method`，
把它接进 capstone，每条 `bl` 都能直接显示被调方法名。这是本次能读懂
`CheckSongUnlock`（1143 条指令）/ `ChapterSelector.Start`（约 2000 条）的关键。

### 2.3 解跳转表（编译期常量表，在 .rodata）

`CheckSongUnlock` 内部两层 `switch` 都是 `adr base; ldrb idx; add; br` 的字节偏移跳转表：

```
ChartUnlock.unlockType  switch @0xc362ca   base=0x1cbd450   字节 = 00 05 33 5d
  -1 -> 0x1cbd450  (chartUnlocked[i] = true)        ← Always unlocked
   0 -> 0x1cbd464  (看成绩：前一首 S / 本首有分)
   1 -> 0x1cbd51c  (钥匙 any)
   2 -> 0x1cbd5c4  (钥匙 all)

ChapterSongItem.unlockType switch @0xc362c0  base=0x1cbd914   字节 = b1 00 1f 31 4d 69
  -1 -> 0x1cbdbd8  (*out unlockType = -1)           ← Always unlocked
   0 -> 0x1cbd914   1 -> 0x1cbd990   2 -> 0x1cbd9d8   3 -> 0x1cbda48   4 -> 0x1cbdab8

ChapterSelectorUnlockInfo.unlockMode switch @0xc3647a  base=0x1d57d4c
  1 -> 0x1d57df8 (880000)  2 -> 0x1d57d4c (Legacy 通关数)
  3 -> 0x1d57db4 (920000)  4 -> 0x1d57dcc (钥匙 + 880000)
```

### 2.4 三个关键函数的还原

#### `GameInformation.CheckSongUnlock(string songsId, out int unlockType, out bool[] chartUnlocked, out bool appeared, out string unlockInfo)` — RVA `0x1CBCC74`

```
// 1) 难度位数组：长度 = SongsItem.unlockInfo.Length（ChartUnlock[]）
chartUnlocked = new bool[songInfo.unlockInfo.Length];     // 0x1cbcce7c

// 2) 逐难度循环
for (i = 0; i < unlockInfo.Length && i < 4; i++) {
    if (fabs(songInfo.difficulty[i]) < 1e-5) continue;    // 该难度不存在（常量 1e-05 @0xbf8a00）
    switch (unlockInfo[i].unlockType) {                   // ← 补丁 1 改这里
      case -1: chartUnlocked[i] = true; break;            //   0x1cbd6bc
      case  0: /* 前一首 S(>=920000) 或本首 s>=1 -> 前 i+1 位全 true */ break;
      case  1: case 2: /* 钥匙 */ break;
    }
    anyUnlocked |= chartUnlocked[i];
}
// 3) AT 特例：某存档 bool + difficulty[3] 存在 -> chartUnlocked[3] = true   (0x1cbd8d8)

// 4) 歌曲层
switch (chapterSongItem.unlockType) {                     // ← 补丁 2 改这里
  case -1: *unlockType = -1; break;                       //   0x1cbdbd8
  ...
}
// 5) 出现与否（secretType 0/1/2/3）+ 第九章 phase2 特例
*appeared = ...;
if (songsId == <literal> && Chapter9Phase2Progress.get_CurrentStep() <= 0) {
    *unlockType = 2; *appeared = false;                   //   ← 第九章顽固点之一
}
```

#### `SongSelectorItem..ctor(SongsItem, int unlockType, string unlockInfo, bool[] chartUnlockInfo)` — RVA `0x1DB0AF4`

```
chartAssetCode = new Dictionary<int,string>();   // 0x38
extraLevelMods = <5 × LevelMods>;                // 0xb8
this.unlockType = unlockType;                    // 0x40
this.unlockInfo = unlockInfo;                    // 0x48
Unlocked = (unlockType == -1);                   // 0x18   ← 补丁 3 改这里
if (unlockType == 1) price = ...;                // 0x50（MB 购买）

// PlayableLevelCount / SelectorTargetWidth 是一对常量（stur d0,[this+0x1c]，8 字节）
//   默认          -> (4, 100)   常量 @0xbf8568
//   chartUnlocked[3]==0 -> (3, 115)   @0xbf8680
//   chartUnlocked[2]==0 -> (2, 150)   @0xbf8a28
// ⇒ 难度位全 true 时 PlayableLevelCount 自然是 4，不需要硬改 getter
```

#### `ChapterSelector.Start` — RVA `0x1D55F74`（逐章循环 `0x1d57ccc..0x1d57f64`）

```
w8 = chapterInfo.unlockInfo.unlockMode;   // [ChapterInfo+0x30].unlockMode  ← 补丁 4 改这里
w8 -= 1;
if (w8 > 3) goto 0x1d57f44;               // unlockMode 0/越界 = 官方常开，直接进循环尾
switch (w8) { case0: 880000; case1: Legacy 数; case2: 920000; case3: 钥匙+880000; }
// 判定失败 -> 0x1d57e90:
//     banner(+0x80).SetActive(false)
//     moreInfo(+0x78).SetActive(false)
//     locked(+0x68).SetActive(true)      ← 这就是界面上的 "Locked"
// 判定成功 -> 0x1d57f44: 一个 SetActive 都不动，保留预制体默认外观 = 已解锁 + PLAY 可点
```

> 上一轮"解锁外观但按钮点不动"的坑，根因是把 `b.hi` 直接改成 `b`（三处跳 0x1d57f44），
> 现在改成「让 unlockMode 等于 0」，走的是官方自己的分支，PLAY 绑定完全正常 —— 已实测。

---

## 3. 已验证事实（本轮实测截图）

| 截图 | 内容 |
|---|---|
| `shots/n6.png` | 第九章（第七章）卡片显示封面 + **PLAY 按钮可点**，不再 "Locked" |
| `shots/n5.png` / `q2.png` | 轮播里 Chapter 5–9 / Side story 1 全部无 "Locked" |
| `shots/q4.png` | 第七章选歌界面：歌曲列表、难度栏、评分栏全部正常渲染 |
| `shots/q1.png` | 顶部合计 "315 All / 100 Clear / 100 Full Combo / 100 Phi"（带成绩存档） |
| `shots/n1.png` | 无成绩存档下 "315 All / 0 Clear / 0 Full Combo / 0 Phi" ⇒ **解锁与成绩无关** |

`save/noscore.xml` = 原存档删掉全部 446 条 `*.Record.*`，保留章节/剧情标记与钥匙。
用它跑出来的解锁效果与带成绩存档一致，这就是"不用改成绩"的直接证据。

---

## 4. 尚未解决（下一步）

### 4.1 第九章「解密」（顽固点）

metadata 里第九套解密机制的关键名字：

```
Chapter9PuzzleControl / Chapter9PuzzlePiece / Chapter9PuzzlePopupControl
  Assets\Phigros2\Chapter9\Chapter9Puzzle\Scripts\Chapter9PuzzleControl.cs
  Chapter9Puzzle / EnterPuzzle / PuzzleFill / puzzlePieces
  Chapter9SecretPassword / Chapter9PasswordCorrectSe
Phigros2.Chapter9.Phase2.Chapter9Phase2Progress
  CurrentStep / LoadCurrentStep / TryBeginSecondPhase / TryAdvance / SaveStep
  enum Chapter9Phase2State.Step {
      Phase2Entry=0, AwaitTrueHomeTrueWorld=1, AwaitAmetrine=2,
      AwaitPetrichor=3, BaselineChallenge=4 }
  Chapter9Phase2Session / Chapter9Phase2Rules / Chapter9Phase2Config
```

已知硬编码门控（`CheckSongUnlock` 尾部 `0x1cbdc5c`）：

```
if (songsId == <literal>) {
    if (Chapter9Phase2Progress.get_CurrentStep() <= 0) {   // 0x1d1d3f8
        *out unlockType = 2;   // Key unlock
        *appeared      = false;
    }
}
```

待办：把第九章的解密/进度状态直接置为"已全部解密"（对齐第八章的 `Deciphered` / `chapter8Passed` 语义），
候选打点：`Chapter9Phase2Progress.get_CurrentStep` / `LoadCurrentStep` → 返回 `BaselineChallenge`，
`Chapter9PuzzlePiece.get_Completed` → true，以及 `Chapter9PuzzlePopupControl` 的密码确认分支。

### 4.2 MB 购买锁

`ChapterSongItem.unlockType == 1` 是官方定义的 "Money unlock"，
`SongSelectorItem..ctor` 里 `unlockType == 1` 才算 `price`（0x50），UI 据此画 MB 购买锁。
补丁 2（`0x1CBD8EC` 恒 -1）理论上已经把它一并干掉，待实测确认；
若仍有残留，再查 `Money` 类 / `get_Money` / `price` 的读取点。

---

## 5. 部署 runbook（幂等）

```bash
export ANDROID_SERIAL=127.0.0.1:16384
./.venv/bin/python tools/patch_min.py work/lib/arm64-v8a/libil2cpp.so patch/next.so
./tools/deploy.sh patch/next.so [save/xxx.xml]
```

`tools/deploy.sh` 内部顺序（顺序错了会挂载到旧 inode，是本项目最大的坑）：

```
am force-stop
adb push <so> /data/local/tmp/phi_<name>
su -c 'umount $LIB'         # 必须先 umount
su -c 'mount -o bind ... $LIB'
su -c 'chmod 644 $LIB'
md5sum 对比本地与设备                       # 必须一致
（可选）写存档：先 cp 到 /data/local/tmp 再 chown u0_a48:u0_a48 / chmod 660 / restorecon
monkey -p com.PigeonGames.Phigros -c android.intent.category.LAUNCHER 1
```

启动后操作序列（1920×1080）：

```
等 14s → MuMu 加速弹窗 (744,669) → 等 6s → 点屏 (960,1000) → 等 17s 到章节选择
点击一律用 `adb shell input swipe X Y X Y 120`（input tap 有时不触发 Unity Button）
轮播拖动：1400 500 → 800 500（前进）
```

回滚：`adb reboot`，或 `su -c 'umount $LIB'`。

---

## 6. 工具清单

| 文件 | 作用 |
|---|---|
| `tools/patch_min.py` | **当前补丁集**，带 capstone 自校验（`--only chart,song,chapter,crypto`） |
| `tools/deploy.sh` | 一键 force-stop → umount → push → mount → md5 校验 → 写存档 → 启动 |
| `tools/adump2.py` | 带 IL2CPP 方法名的符号化反汇编（正确 ELF 段映射 + `bl` 名字 + 跳转目标） |
| `tools/adump.py` | 旧版反汇编（单 delta，仅代码段可用） |
| `tools/xref.py` | 全代码段扫 `bl <target>` 交叉引用 |
| `tools/save_strip_records.py` | 从明文存档删掉所有 `*.Record.*`（做"零成绩"验证） |
| `tools/disa.py` / `lit_resolve.py` / `rs.py` | 反汇编切片 / 运行时解析字面量槽 / 静态字面量 |
| `ildump/dump.cs` | 766k 行 IL2CPP dump，`[Tooltip]` 是语义的权威来源 |
| `ildump/script.json` | `ScriptMethod` 164,420 条 RVA→方法名 |

---

## 7. 数据模型速查（offsets 来自 `ildump/dump.cs`）

```
ChapterInfo            { chapterCode 0x20, songInfo 0x28, unlockInfo 0x30, coverAssetCode 0x38,
                         play 0x60, locked 0x68, unlockTip 0x70, moreInfo 0x78, banner 0x80 }
ChapterSelectorUnlockInfo { unlockMode 0x10, unlockFlag 0x18, unlockTip 0x20, fakeCoverFlag 0x28 }
ChapterSongItem        { songsId 0x10, unlockType 0x18, unlockInfo(List<string>) 0x20,
                         secretType 0x28, secretInfo 0x30 }
ChartUnlock            { unlockType 0x10, unlockInfo(List<string>) 0x18 }
SongsItem              { songsId 0x10, songsKey 0x18, songsName 0x20, songsTitle 0x28,
                         difficulty(float[]) 0x30, illustrator 0x38, charter 0x40,
                         composer 0x48, levels(string[]) 0x50, previewTime 0x58,
                         unlockInfo(ChartUnlock[]) 0x60, judgeLineImages 0x68,
                         levelMods(List<LevelMods>) 0x70, isCnLimited 0x78 }
SongSelectorItem       { songInfo 0x10, Unlocked 0x18, PlayableLevelCount 0x1C,
                         SelectorTargetWidth 0x20, LegacyPlayable 0x24, InfoHidden 0x25,
                         sortIndex 0x28, records 0x30, chartAssetCode 0x38, unlockType 0x40,
                         unlockInfo 0x48, price 0x50, _hasLegacy 0xB0, extraLevelMods 0xB8 }
SongListItem           { songName 0x20, difficulty 0x28, locked 0x30, ratingDisplayController 0x38 }
LevelRecord            { s 0x10, a 0x14, c 0x18 }
```
