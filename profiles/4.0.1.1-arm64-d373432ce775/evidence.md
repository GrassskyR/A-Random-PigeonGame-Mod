# 4.0.1.1 / ARM64 的工作流接入证据

原版 APK 完整 SHA-256：`d373432ce775d9c8b3f4af9f72ff79a14c39dd159735cfc202b75a78a1835a14`。SO/metadata 摘要、Build ID、ELF 段及所有正式原字节见本目录 profile.json；改造前研究快照保留在 offsets.json。

## 配置与定位

- 正式 target 共 44 个：7 个静态补丁、6 个入口 hook、5 个指令 hook、25 个调用目标、1 个数据槽。原生源码和 Python 回放统一读取语义 ID；native 头由所选 profile 生成。
- 元数据字段、runtime layout、场景、目录、进度/codec 及回放片段均有本样本配置。生产 C 不再内嵌游戏 RVA/字段偏移；ARM64 指令编码、系统标志、私有测试内存和算法参数仍在对应实现中。
- locate 在当前 dump/ELF 上为 43 个目标给出唯一候选；speed.judge_slot 仍须依据 ProgressControl.Update 的原版加载指令追踪。这个已确认槽来自原版指令与既有 speed 回放，未通过猜测升级候选。
- 本地原始 SO、metadata 已与 APK 条目逐字节核对。配套 dump 使用现有本地材料，经 attach-dump 记录为 Agent 声明来源，并校验 dump.cs、script.json、96 个 DummyDll 文件的摘要；没有把旧 dump 宣称为本次重新生成。
- scan-assets 对真实 APK 的 level0/level28/level30 执行脚本引用解析和目录解码；候选保存在本样本工作区。当前生效目录仍引用 analysis 的配套 JSON 并锁定摘要。
- 七处正式静态补丁的完整输出与归档补丁逐字节一致；保留游戏加密，不注入成绩。

## 可复现验证

```bash
.venv/bin/python tools/test_versions.py
.venv/bin/python tools/versions.py verify --generate
.venv/bin/python tools/versions.py replay
.venv/bin/python tools/build_all.py
```

工作流行为回归现覆盖 9 项：按段映射/BSS、错摘要/旧原始材料、原字节与序言不匹配、缺失包名/codec、新摘要不继承旧配置、掩码重复候选、重载歧义、源码或 dump 改变导致上游失效、官方 SDK 工具选择与旧工具回退。合成测试样本不冒充另一个真实游戏版本。

四个原生回放串行通过：练习预约恢复时钟、倍速生产 Update 和 24 个模型场景、原版普通/挑战窗口与五个独立门槛、头像六项。当前音频模型最大漂移为 0.092 ms；头像/Unity 边界使用模拟，不代表设备渲染或实际音频延迟。

完整构建的七阶段日志位于 `work/versions/4.0.1.1-arm64-d373432ce775/build-all.log`；每个 APK 的 build.json 记录其样本、配置/源码/工具/dump 指纹和输入/输出摘要。最终产物与核对结果见本样本 `final-verification.json`。

## 设备与其他版本

本次为工作流改造与当前 APK 构建验证，未进行设备安装/交互。此前用户确认的功能和头像/判定的待设备验收范围继续按模块 README 解释，不能替代本次构建的设备结果。

仓库只有 4.0.1.1 原版；用户已明确先完成当前版本。新样本接入、定位、实现选择和验证的可执行流程在 docs/workflows/port-version.md；第二个真实版本的适配/设备结果待取得相应 APK 后记录。

## 最终产物核对

整合 APK SHA-256：`0a1bc9189e73e2c7426712cc268d4b8d8b28ab5ec90baf8d75b2f5c636bdce2a`。七个阶段的配置/工具/dump 指纹与当前源码一致，输入/输出摘要已复核；最终包中的游戏库等于原始库应用七处正式静态补丁后的结果，Mod 库和 PNG 与本次编译/源资源一致。

与改造前整合包相比，条目集合一致，CRC/长度变化仅在 classes.dex、libpractice.so 和 libspeed.so；classes.dex 由真实上游重新解码生成。其余 payload 的 CRC/长度保持一致，签名证书相同。1,108 个最终 Bootstrap 键值的加密往返和成品 DEX 编码检查通过；真实 APK 解码的 503 条收藏品 key/subIndex 集合与绑定目录一致。完整记录为本地 work/versions/4.0.1.1-arm64-d373432ce775/final-verification.json。

## 仓库精简与工具安装

删除未使用的 Frida/运行时扫描、实验补丁/存档/部署、固定样本旧扫描器和源码别名，工具统一到 versions.py 与正式构建入口；历史分析数据、偏移快照、模块资源及签名材料保留。正式构建直接导入 modules。签名/对齐改为首选官方 SDK Build-Tools 36.0.0，现有 Linux 工具保留回退；新增 SDK 选择回归。工具下载与安装统一记录在 docs/setup.md。

本次清理后 9 项工作流回归、四个原生回放、七阶段完整构建及产物检查通过；日志为本样本 build-cleanup.log，详细报告为 cleanup-verification.json。清理前后 3,634 个非签名 APK 条目的 CRC/长度完全一致，签名证书相同。原生实现和资源行为未因本次结构清理改变；未新增设备交互验证。
