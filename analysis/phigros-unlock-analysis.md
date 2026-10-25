# Phigros 4.0.1.1 全曲解锁实现

[项目首页](../README.md) · [Agent 接手速查](../docs/handoff.md)

适用样本：Unity 2022.3.62f2、IL2CPP metadata v31、ARM64。以下机制由原始库、元数据、场景配置和当前构建代码核实；全曲解锁效果由用户确认。

## 核心判定

`GameInformation.CheckSongUnlock`（RVA `0x1CBCC74`）汇总章节条件、歌曲锁、已有谱面条件及显示条件。章节卡片另有独立判定；第九章地图直接调用核心判定，列表由 `SongSelectorItem` 接收结果。

| 数据 | 已核实枚举语义 |
| --- | --- |
| `ChapterSelectorUnlockInfo.unlockMode` | 0 常开；1 指定歌曲 880000；2 Legacy 通关数量；3 指定歌曲 920000；4 钥匙及 880000 |
| `ChapterSongItem.unlockType` | -1 常开；0 普通；1 货币；2 钥匙 AND；3 钥匙 OR；4 各谱面独立钥匙 |
| `ChartUnlock.unlockType` | -1 常开；0 普通成绩条件；1 钥匙 ANY；2 钥匙 ALL |
| `ChapterSongItem.secretType` | 0 常显示；1 随解锁显示；2 钥匙 AND；3 钥匙 OR |

谱面循环保留难度存在性检查。配置中难度为零表示不存在，不生成额外 AT。`SongSelectorItem` 根据实际解锁数组计算可玩难度数量。

## 六处解锁补丁

| RVA | 原字节 | 新字节 | 指令及作用 |
| --- | --- | --- | --- |
| `0x1CBD430` | `4a1140b9` | `0a008012` | `mov w10, #-1`，已有谱面常开 |
| `0x1CBD8EC` | `681b40b9` | `08008012` | `mov w8, #-1`，歌曲核心锁常开 |
| `0x1DB0EA4` | `ff060031` | `ff02176b` | `cmp w23, w23`，列表项 Unlocked 成立 |
| `0x1CBCF78` | `091140b9` | `09008052` | `mov w9, #0`，歌曲判定的章节门槛常开 |
| `0x1D57D2C` | `081140b9` | `08008052` | `mov w8, #0`，章节卡片常开 |
| `0x1CBDC20` | `682b40b9` | `08008052` | `mov w8, #0`，常规显示条件常开 |

前五处由 `modules/unlock/patch_min.py` 的 `chart/song/chapter` 分组定义，第六处由 `tools/build_unlock_apk.py::native_library` 写入。构建核对原字节并反汇编编码。当前最终包另有独立的 12 字节启动补丁，见 `modules/startup/patch.py`；当前库已与这些修改的合成结果逐字节核对。

## 真实进度与加密存档

第九章 THTW 还有 `CurrentStep <= 0` 的隐藏分支，因此构建同时初始化命名进度键。`build_unlock_apk.progress()` 生成 78 个章节/歌曲/第九章收藏品计数，原 Bootstrap 删除两个 PendingMessage 键；后续步骤再写教程及完整收藏品计数。

共存包使用 `getPackageName() + ".v2.playerprefs"` 获取 SharedPreferences 名称，在 `Activity.onCreate` 的 Unity 初始化前提交。逻辑键和值各自按以下顺序编码：

```text
UTF-8 → AES-CBC/PKCS7 → Base64 → URL 编码 → SharedPreferences string
```

编解码由 `modules/unlock/chapter9_save.py` 实现，已成功读取原有加密项并完成目标计数往返核对。正式构建保留存档加密，断言初始化键不包含 `.Record.`。

实际命名进度、状态机见 [第九章逻辑](chapter9-logic.md)，完整文本/外观键见 [收藏品说明](collections-unlock.md)。

## 地址和元数据

原始 ELF 的 `PT_LOAD`：

| 文件偏移 | VA | 文件段大小 |
| --- | --- | --- |
| `0x0` | `0x0` | `0x19435b4` |
| `0x19435b4` | `0x19475b4` | `0x25546dc` |
| `0x3e97c90` | `0x3e9fc90` | `0x347378` |
| `0x41df008` | `0x41eb008` | `0x28a4d8` |

运行时地址为模块基址加 RVA。文件偏移按所在段计算，通用实现为 `tools/adump2.py::load_segs`。

| 方法 | RVA |
| --- | --- |
| `GameInformation.get_main` | `0x1CB985C` |
| `GameInformation.CheckSongUnlock` | `0x1CBCC74` |
| `GameInformation.GetSongRecord` | `0x1CBB400` |
| `GameInformation.GetRemainingUnlockTimes` | `0x1CBDDC0` |
| `SaveManagement.SaveBool/SaveInt/SaveString` | `0x1CC4F80 / 0x1CC5034 / 0x1CC5240` |
| `SaveManagement.LoadBool` | `0x1CC52BC` |

字段布局以配套 `ildump/dump.cs` 为准：`GameInformation.chapters/song/keyStore` 位于 `+0xE0/+0xE8/+0xF0`；`ChapterSongItem.songsId/unlockType/unlockInfo/secretType` 位于 `+0x10/+0x18/+0x20/+0x28`。IL2CPP 64 位数组数据位于 `+0x20`，List 的 items/size 位于 `+0x10/+0x18`。

## 构建与验证

完整构建入口为 `.venv/bin/python tools/build_all.py`，输入输出和依赖见 [开发指南](../docs/modding-guide.md)。源码中的独立补丁 CLI 默认包含 `crypto`，与正式构建选择的分组不同。

证据：`analysis/chapter9-gates.asm`、`chapter9-song-gates.asm`、`chapter9-assets.json`、`chapter9-song-config.json`，以及当前构建代码和用户全曲反馈。该实现的验证对象是当前版本的目标解锁行为。
