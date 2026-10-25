# 全收藏品练习版（2026-10-23）

[项目首页](../README.md) · [Agent 接手速查](../docs/handoff.md)

成品：`dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections.apk`。

以已验证的 `Practice_mod_SkipTutorial.apk` 为输入，新增文本收藏品、曲绘及头像初始化。沿用 `com.PigeonGames.Phigros.unlock` 包名及本地签名，支持覆盖安装。现有全曲解锁、练习模式、菜单水印和跳过教程保留。

## 完整目录及存档语义

`analysis/collections.json` 与原始 `level0` 中 `GetCollectionControl`（PathID 49）一致，含 503 条收藏品、320 个不同 key。其 `(key, subIndex)` 集合与 `sharedassets22.assets` 的 `CollectionDatabase`（PathID 143）完全一致，覆盖第九章及其他章节。

对每个 key 取目录中的最大 `subIndex`，写入以下两个逻辑整数键；值以原游戏的 AES-CBC/PKCS7、Base64、URL 编码格式存储在 SharedPreferences string 中：

```text
1key<key>                   = max(subIndex)  # 拥有进度
<key>CollectionTextOpened    = max(subIndex)  # 已阅读进度
```

例如 `1keypoyidomejiu=2`、`poyidomejiuCollectionTextOpened=2`。

目录中的 `subIndex` 已是 1 起算，不能再加 1，也不能直接用组内行数。例如 `674shijian` 只有索引 2，`675shijian` 只有索引 3。场景地图的 `collectionSubIndex` 则从 0 起算，属于另一套数据。

## 曲绘和头像

从原始 `level0/GameInformation.keyStore` 读取类型 2（曲绘）及类型 3（头像）的全部记录，写入 `<kindOfKey>key<keyName>=unlockTimes`。当前配置对应 328 个曲绘键、109 个头像键，所有目标 `unlockTimes` 均为 1；头像列表与 `GetCollectionControl.avatars` 的 109 个名字完全一致。

- `GameInformation.CheckKeys`（RVA `0x1CBBA50`）按类型和名称构造上述存档键，读整数到 `Key.unlockedTimes`。
- `GameInformation.GetRemainingUnlockTimes`（RVA `0x1CBDDC0`）返回 `unlockTimes - unlockedTimes`。图库、头像及背景选择器要求返回 0。
- `StatsFrameController.InitAvatarList` 在 `0x1D9DA5C` 检查类型 3；`SaturnOSControl.<Start>d__34.MoveNext` 在 `0x1D95250` 检查类型 2。
- `Happy Ending` 的 `differentCover=15`，图库按同一个曲绘键显示 EZ/HD/IN/AT 四张图。328 首对应的图库条目总数为 331，无需伪造游玩成绩。

`modules/collections/progress.py::all_cosmetic_progress()` 与文本计数组合后，一共初始化 1,077 个键。

## 存档读取证据

- `GetCollectionControl.UnlockCollectionTo`（RVA `0x1CA8F68`）以 `"1key" + key` 读取/保存拥有计数。
- `GetCollectionControl.MarkCollectionRead`（RVA `0x1CA96E4`）在 `0x1CA97F0–0x1CA9808` 以 `key + "CollectionTextOpened"` 构造已阅读键。
- `ExoplanetaryMirageUnlock.IsCollectionRead`（RVA `0x1D0CE6C`）和 `CollectionFolder.<CheckFiles>b__18_0`（RVA `0x1D90A90`）读取相同的后缀键。
- 已读取的设备存档含 `m9beginningCollectionTextOpened`、`poyidomeginoCollectionTextOpened` 等后缀键。

## 实现与构建

`modules/collections/progress.py::all_collection_progress()` 生成全文本目录计数，`modules/collections/progress.py::all_cosmetic_progress()` 生成曲绘及头像计数。`tools/build_collections_apk.py` 每次从实际输入 APK 重新提取 DEX 壳，添加 `CollectionsBootstrap.apply(Context)`，在原 `UnlockBootstrap.apply` 之后、Unity 初始化之前调用。每次启动都写入这些计数。沿用现有加密及签名工具，不写成绩。

```bash
.venv/bin/python tools/build_collections_apk.py
```

`tools/build_all.py` 将此步骤接到跳过教程之后，默认还会继续构建倍速/自定义头像整合包；`--target collections` 停在本步骤。原有中间步骤有缓存；全收藏品步骤始终以本次实际输入 APK 为准。

## 验证范围

完整数据库覆盖、稀疏索引、正确后缀键和全部计数的加解密往返已通过检查。成品通过 APK v2/v3 签名与 ZIP 对齐检查；包内仅 `classes.dex` 的 CRC/长度变化。练习原生库、IL2CPP 库、第二 DEX、暂停场景、清单及资源表逐字节保持原输入内容。

640 个文本计数与全文本目录一致。使用实际 DEX 写入值作为存档 API 的模拟返回值，在 Unicorn 中执行原始 ARM64 `CollectionFolder.<CheckFiles>b__18_0`：503 条文件均不被过滤且均标为已阅读；删除一条拥有键时，对应条目会被原判定正常过滤。

当前成品 DEX 的全部 1,077 项已核对。在 Unicorn 中执行原始 ARM64 `CheckKeys` 读取这些真实 DEX 值，再执行 `GetRemainingUnlockTimes`：437 个曲绘/头像键全部返回已解锁；清除一条计数后返回仍锁定，验证原判定实际生效。

设备验证记录：文本计数覆盖安装后启动 `Status: ok`，640 个设备存档计数全部匹配，原有 447 条成绩记录保持不变；实际打开外传和第九章文件可阅读、显示完成度 100%。用户已确认完整全收藏品 Mod 完成。

独立的 `c9s.*` 密码加密剧情资源不在本次处理范围。
