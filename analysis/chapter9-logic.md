# Phigros 4.0.1.1 第九章解锁逻辑还原

> **2026-10-23 收藏品修正：** 旧脚本把已阅读键的顺序写反了；实际格式为 `<key>CollectionTextOpened`，本文示例已修正。新练习 APK 按完整目录初始化 503 条收藏品，历史 APK 的行为不据此追溯改变。详见 [全收藏品实现](collections-unlock.md)。

> **最终状态（2026-10-20）：** 后续已完成 APK 打包、启动修复和水印；用户确认全曲解锁与水印生效。完整最终结论、早期错误更正和签名备份见 [总结](../总结.md)。本文保留对应分析阶段的记录，其中“尚未运行/未解决”等描述不代表最终交付状态。

本报告以当前 APK、原始 arm64 `libil2cpp.so`、IL2CPP 元数据和 Unity 场景序列化数据为依据。地址均为原始库 RVA。结论为静态验证；本轮没有向设备安装补丁或回写存档。按用户最新要求，密码只还原验证算法，暂不求解。

## 1. 当前障碍的三个确定原因

1. **旧报告与实际补丁不一致。** `patch/libil2cpp_min3.so` 实际只有 11 条指令替换，没有报告声称的 `0x1CBD8EC` 歌曲锁补丁。`tools/patch_min.py` 当时也缺这一项。
2. **第九章地图绕过了被修改的构造器。** `Chapter9SongUnlockSprite.Awake` 在 `0x1D0E8AC` 直接调用 `CheckSongUnlock`，在 `0x1D0E8B8` 检查返回的 `unlockType == -1`，据此设置图标、地图状态。只把 `SongSelectorItem.Unlocked` 强制为真，地图仍会锁。
3. **旧存档工具把 C# 字段名误当成 PlayerPrefs 键。** 实际读写 `C9ImplexroughUnlocked` 等命名键，不读 `chapter9SongUnlocked0`。原备份缺少全部 12 个 `C9*Unlocked` 键、`Chapter9UnlockSecondPhaseBegin` 和 `C9BaselineChallengeReached`，而 `Chapter9Phase2Step` 仍为 0。

还有两个独立问题：

- `ChapterSelector` 与 `CheckSongUnlock` **各读一次章节 unlockMode**。只放开章节卡片，不等于歌曲判定也忽略章节成绩条件。
- `True Home, True World (Rework)` 在普通判定之后另有硬编码隐藏分支：`CurrentStep <= 0` 时再次设置 `unlockType=2, appeared=false`。单独放开普通歌曲锁不能覆盖它。

证据：`chapter9-gates.asm`、`chapter9-song-config.json`、`chapter9-save-audit.txt`。

## 2. 解锁分为五层

```mermaid
flowchart TD
    A[章节卡片 unlockMode] --> B[CheckSongUnlock 再算章节条件]
    B --> C[谱面 ChartUnlock 与歌曲 ChapterSongItem]
    C --> D[第九章特殊进度与歌曲隐藏分支]
    D --> E[列表项和地图图标分别读取结果]
    E --> F[播放时加载资源]
    P[密码派生 AES 密钥] --> F
```

章节配置：`MainStory9.unlockMode=1`，前置曲为 `DistortedFate.Sakuzyo.0`，普通路径要求任一难度达到 880000。

12 首歌曲的 `ChapterSongItem.unlockType` **全部是 2**，`unlockInfo` 各自只含一个命名存档键；`secretType` 都是 0。因此核心歌曲判定等价于检查该键。第九章地图并不存在一个能替代所有条件的通用 `Deciphered=true` 字段。

## 3. 全部歌曲与实际键

| 歌曲 | PlayerPrefs 键 | 有 AT |
|---|---|---|
| About The Universe | `C9AboutTheUniverseUnlocked` | 否 |
| Implexrough | `C9ImplexroughUnlocked` | 否 |
| Evanescent | `C9EvanescentUnlocked` | 否 |
| Entrance to the Chaos | `C9EntranceToTheChaosUnlocked` | 是 |
| Exoplanetary Mirage | `C9ExoplanetaryMirageUnlocked` | 是 |
| True Home, True World (Rework) | `C9S6Unlocked` | 否 |
| Ametrine | `C9AmetrineUnlocked` | 是 |
| Petrichor | `C9PetrichorUnlocked` | 是 |
| ハテ | `C9HateUnlocked` | 是 |
| Desultory Signals | `C9DesultorySignalsUnlocked` | 是 |
| Message | `C9MessageUnlocked` | 是 |
| What do you want more than a Happy ending? | `C9HappyEndingUnlocked` | 是 |

谱面存在性来自 `SongsItem.difficulty[i]`；0 表示不存在。前述四首没有 AT，不能将它们的“三个难度”误认成未解锁。

普通难度解锁仍走 `ChartUnlock` 的成绩/钥匙条件。**Desultory Signals 的 AT 额外配置为 `unlockType=2, unlockInfo=["Chapter9Phase2Passed"]`**。`CheckSongUnlock` 还对 MainStory9 中已有 AT 的歌曲执行章节通关后的 AT 放行逻辑。

完整原始配置见 `chapter9-song-config.json`，由 `level0` 的 `GameInformation` 实例解出，不是按曲名推测。

## 4. 第一阶段：收藏品、歌曲结算与隐藏挑战

| 步骤 | 已确认的代码条件/效果 | RVA |
|---|---|---|
| 初入地图 | 进入 `Chapter9SelectMusic` 可取得 `nizhidaoma`、`m9beginning` 首条；阅读后继续解出收藏品链 | 配置 `level0/GetCollectionControl` |
| About The Universe | 已读 `nizhidaoma1`；当前结算歌曲为 HumaN；尚未解锁；本次 `IntScore >= 880000`，写对应键 | `0x1D7ED34` |
| Implexrough | 已读 `poyidomegino0`；当前结算歌曲为 Implexrough；尚未解锁，写对应键。这个结算处理器本身没有分数阈值 | `0x1D7F4D0` |
| Evanescent | 已读 `poyidomejiu0`、尚未解锁、完成歌曲为 Evanescent，写对应键；这里也没有分数阈值 | `0x1D7F0D0` / `0x1D8AE48` |
| Exoplanetary Mirage 流程可用 | `Chapter9UnlockBegin && !C9ExoplanetaryMirageUnlocked && IsCollectionRead("poyidomejiu1")` | `0x1D0CD98` |
| 隐藏第三曲选择 | 选择列表正好两首，顺序 **Evanescent → About The Universe**，两项难度索引相同；第三首补 Exoplanetary Mirage | `0x1D0D090` / `0x1D0D02C` |
| 两首隐藏挑战曲持久解锁 | 成功结算分支调用 `UnlockC9HiddenSongKeys`；读取挑战列表第三项及 `hiddenChallengeSongItem`，用歌曲→键表解锁 Exoplanetary Mirage / Entrance to the Chaos | `0x1D24064` / `0x1D24350` / `0x1D246E4` |
| 密码关 | 真实密码解开隐藏资源；密码成功后启动 C9S6，完成事件写 `C9S6Unlocked` | `0x1D4B0A8` / `0x1CF15D0` |

上表区分“使事件可进入”和“结算后保存解锁”。例如 Implexrough 的结算函数不检查分数，不代表正常菜单会在没有前置条件时直接提供该曲。本报告没有把完成处理器等同于完整的玩法入口。

关键收藏品配置：

- `nizhidaoma` 第 2 条：阅读 `nizhidaoma` 第 1 条后取得。
- `qiongdingguzhou` 第 1 条：阅读 `m9beginning` 后取得。
- `poyidomejiu`、`poyidomegino` 第 1 条：阅读 `qiongdingguzhou` 后取得。
- `poyidomegino` 第 2 条：`C9ImplexroughUnlocked && C9EvanescentUnlocked`。
- `poyidomejiu` 第 2 条、`sundemimi` 首条：`C9EntranceToTheChaosUnlocked`。
- `liangrenhuihe`：Exoplanetary Mirage 与 Entrance to the Chaos 都解锁。
- `blackhole`：`C9S6Unlocked`。

场景里的 `collectionSubIndex` 是 **0 起算**；数据库的 `CollectionItem.subIndex` 是 **1 起算**。`IsCollectionRead("poyidomejiu1")` 指第 2 条已读，不是“第 1 条”。

存档形式是计数：

```text
1keypoyidomejiu = 2                    # 前两条已获得
poyidomejiuCollectionTextOpened = 2     # 前两条已读
```

仅持有收藏品与已经阅读收藏品是两个条件。对应方法：`UnlockCollectionTo=0x1CA8F68`、`MarkCollectionRead=0x1CA96E4`、`IsCollectionRead=0x1D0CE6C`。

## 5. 密码确实用于解密资源

`C9SecretAssetBundleProvider.SetPassword=0x1D2951C`：

```python
h = SHA512(password.encode("utf-8"))
aes_key = h[0:32]
aes_iv  = h[32:48]
# Aes.Create() 默认 CBC、PKCS7
decrypted_bundle = AES_CBC_PKCS7_DECRYPT(bundle, aes_key, aes_iv)
```

然后异步加载地址 `c9s.test`，要求得到 `TextAsset` 且内容等于 `pass`。加载未完成时 `PasswordIsCorrect` 为 nullable 的空值，失败后为 false，成功为 true。

`Chapter9InputPasswordControl.Submit` 等待该结果；成功才保存输入为 `Chapter9SecretPassword`，播放正确提示音，再启动 C9S6。`GameProgressSaveModule.Apply` 恢复密码时也会调用资源 provider 的 `SetPassword`。

因此：`C9S6Unlocked=True` 是歌曲进度，不等于已经配置资源解密密钥。强制 `PasswordIsCorrect=true` 无法解密实际内容。当前未恢复密码正文，按用户要求保留这一独立未解条件。

## 6. 第二阶段状态机

`Chapter9Phase2Progress.LoadCurrentStep=0x1D1E654` 只读取 **`Chapter9Phase2Step`**，并用枚举校验。合法值为 0–4；越界退回 0。它不会因为 `Chapter9Phase2Passed=true` 自动推导成步骤 4。

```mermaid
stateDiagram-v2
    [*] --> Phase2Entry: 已开始第二阶段且没有步骤键时创建 0
    Phase2Entry --> AwaitTrueHomeTrueWorld: 首次进入第二阶段视频结束，0→1
    AwaitTrueHomeTrueWorld --> AwaitAmetrine: THTW 结算，1→2
    AwaitAmetrine --> AwaitPetrichor: Ametrine 特殊判定成功，2→3
    AwaitPetrichor --> BaselineChallenge: Petrichor 特殊判定成功，3→4
```

| 步骤值 | 名称 | 进入下一步的实际处理 |
|---|---|---|
| 0 | Phase2Entry | `TryAwaitTrueHomeTrueWorld()` 执行 `TryAdvance(0,1)` |
| 1 | AwaitTrueHomeTrueWorld | THTW 的结算处理器写 `C9AmetrineUnlocked=True`，调用 `TryAwaitAmetrine()` |
| 2 | AwaitAmetrine | Ametrine 本次结果 `IsAmetrineChallengeFailed == false`，写 `C9PetrichorUnlocked=True`，调用 `TryCompleteAmetrine(false)` |
| 3 | AwaitPetrichor | Petrichor 本次结果 `IsPetrichorChallengePassed == true`，调用 `TryCompletePetrichor()` |
| 4 | BaselineChallenge | 基线挑战/拼图入口状态，**还不是最终通关状态** |

`TryAdvance` 要求当前步骤等于 expected，且只能逐步前进；`SaveStep(4)` 同时写 `C9BaselineChallengeReached=True`，步骤 3/4 的保存还会重新评估收藏品解锁。

本次成绩门槛的细节：

- THTW 结算处理器 `0x1D82D9C` 本身没有 A/S 分数阈值，条件是歌曲匹配且步骤为 1。
- Ametrine 的 `HandleBadOrMiss=0x1D45A08` 只在配置的 `[eventStartTime,eventEndTime]` 窗口内将 `judgeCheckFailed` 置真，并调用 `ScoreControl.BlockCombo`。结算时将它复制到 `LevelResultInfo+0x40`；不是简单检查历史最高分或整首 FC。
- Petrichor 的 `HandleMiss=0x1D4A088` 只在 `isTouchingBlock` 为真时标记失败并冻结分数；`SubmitResult=0x1D4A0C0` 计算 **本次分数≥880000 且未触发该失败**，写入结果 `+0x41`。
- Ametrine/Petrichor 事件看本次运行的结果字段；仅补历史成绩无法替代事件执行。

完整反汇编：`chapter9-progress.asm`、`chapter9-events.asm`、`chapter9-judgement.asm`。

## 7. 拼图与最终完成

`Chapter9Phase2Control.OpenSongDetail=0x1D1A3E4` 中：

```csharp
if (songId == "ハテ.rNFrums.0" && CurrentStep == 4 && !Chapter9Phase2Passed)
    EnterAwaitKeyCollections(); // 实际继续进入拼图协程
else
    OpenNormalOrLockedSongDetail();
```

`EnterAwaitKeyCollections` 的名字本身不能证明另有收藏品集检查：当前实现 `0x1D19AEC` 直接启动 `EnterPuzzle`。`Chapter9Phase2Rules.AreKeyCollectionsComplete` 是独立 helper；本轮未发现它是此入口的直接门控，不能把它杜撰成必须满足的附加条件。

`level35` 配置了 **6 块拼图**。每块 `Completed` 仅是 `state == Completing(3)`，不是持久存档位。拖拽放下、吸附、完成通知由拼图对象自己的状态机驱动；`OnPieceCompleted` 汇总各块状态，全部成立后播放完成动画与确认弹窗。只改 `get_Completed` 不能保证触发完成事件。

确认下一阶段后，`PlayNextStage.MoveNext=0x1D3F2F8` 重置 session，调用 `TryBeginBaselineChallenge(config, level)`、`TryApplyCurrentLevel`，进入实际关卡。

挑战配置（已从 `sharedassets35.assets` 中实际读出）：

1. ハテ + `LevelMod/HateLevelEffects`
2. Desultory Signals + `LevelMod/DesultorySignalsLevelEffects`
3. Message + `LevelMod/MessageLevelEffects`

运行态 `Stage` 与持久化 `Step` 是两套值：`HatePlaying(1) → DesultoryUnlockVideo(2) → DesultoryPlaying(3) → MessagePlaying(4) → MessageStory(5) → HappyEndingVideo(6) → Credits(7)`。`TryCompleteCurrentSong` 校验 session 活跃、关卡已准备、曲目索引与 Stage 匹配，再推进；单独修改持久步骤并不会生成这些运行时对象。

最终持久完成写入者是 **`C9AfterDeductionControl.<Start>.MoveNext=0x1D4295C`**。协程首次执行时：

```text
Chapter9Phase2Passed = True
C9HateUnlocked = True
C9DesultorySignalsUnlocked = True
C9MessageUnlocked = True
C9HappyEndingUnlocked = True
删除 C9PendingMessageAfterQuit / C9PendingMessageLevel
GameCompleted = "4.0"
重新评估收藏品，PlayerPrefs.Save()
```

`CompleteChapterFromAboutUs` 这个方法名容易误导：在当前二进制里它只检查 `Step==4 && Session.IsActive && Stage==Credits`，条件不满足则记错误，**自身没有写任何完成标志**。不能将方法名当成通关 API。

## 8. 已做的修正与产物

`tools/patch_min.py` 新增两处：

| RVA | 原字节 | 新字节 | 效果 |
|---|---|---|---|
| `0x1CBD8EC` | `681b40b9` | `08008012` | 歌曲 unlockType 恒 -1，地图和歌曲列表共享的核心判定一起放开 |
| `0x1CBCF78` | `091140b9` | `09008052` | 核心歌曲判定中的章节 unlockMode 恒 0，补齐章节卡片之外的第二处门槛 |

与已有谱面/构造器/章节卡片补丁合计 5 处解锁修改：

- `patch/libil2cpp_c9_encrypted.so`：5 处，保留原存档加密。
- `patch/libil2cpp_c9.so`：5 处 + 原工具的 8 处存档加解密恒等化，共 13 处；用于既有明文存档调试流程。

二者均不修改 `CurrentStep`、拼图 getter、密码验证、成绩结果；所以剧情完成状态还要由正确存档键表达。不能混用明文 XML 与原加密库。

新增 `tools/chapter9_save.py`，默认只审计，提供输出路径才生成新文件。它写入真实命名键、Step=4、Passed=True，以及地图收藏品的获得/已读计数；**不修改成绩记录，也不猜密码**。支持 `--format encrypted` 与原加密库配套。当前备份中被旧工具漏删的 42 条加密成绩记录全部 s=0；工具保留它们的 XML 内容。

```bash
# 查看实际进度
./.venv/bin/python tools/chapter9_save.py save/noscore.xml

# 原来的明文调试路线
./.venv/bin/python tools/patch_min.py work/lib/arm64-v8a/libil2cpp.so patch/libil2cpp_c9.so
./.venv/bin/python tools/chapter9_save.py save/noscore.xml save/chapter9-complete.xml

# 保留官方存档加密的路线：只对目标进度键使用官方 AES 格式
./.venv/bin/python tools/patch_min.py work/lib/arm64-v8a/libil2cpp.so patch/libil2cpp_c9_encrypted.so --only chart,song,chapter
./.venv/bin/python tools/chapter9_save.py save/chapter9-device-before.xml save/chapter9-complete-encrypted.xml --format encrypted
```

修改现有混合存档时，`--format encrypted` 只转换本工具负责的目标键，不承诺将所有旧明文设置/成绩迁移成官方格式。

## 9. 验证与边界

- Unity 场景组件经实际字段树解析，读取长度校验通过，包括 `GameInformation`、收藏品数据库、两张地图、6 块拼图与挑战配置。
- 补丁逐条反汇编校验；新增点的原指令与原库字节匹配。
- 修正 XML 的目标键与 APK 真实配置交叉核对；保留每条成绩 XML，复算零分记录数量。
- 已恢复存档 AES 派生规则并成功读取备份中原有的加密项。
- 尚未执行新补丁/新存档的游戏运行验证；本轮设备只做读取和截图，原库、设备存档保持原状。
- 真实密码正文、Ametrine 配置窗口的具体秒数，以及所有歌曲演出动画的逐帧行为不在本次已确认结果内；密码按用户最新要求暂不求解。状态标记正确不等于隐藏资源已经解密。

静态证据索引：`chapter9-assets.json`（场景与数据）、`chapter9-song-config.json`（12 首曲目）、`chapter9-progress.asm`（状态机）、`chapter9-gates.asm`（核心判定/存档）、`chapter9-phase1-complete.asm`（第一阶段事件）、`chapter9-password-ending.asm`（密码资源）、`chapter9-challenge-ending.asm`（最终标志写入）、`chapter9-events.asm`（本次结算事件）。
