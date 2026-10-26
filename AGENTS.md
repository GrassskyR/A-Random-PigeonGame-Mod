# Phigros Mod 开发入口

本仓库提供 **Android ARM64 / Unity IL2CPP** 的版本适配工作流。默认且已验证的真实样本为 **Phigros 4.0.1.1 / Unity 2022.3.62f2**。先阅读本文件；新样本按 [版本迁移工作流](docs/workflows/port-version.md) 识别、提取、定位与验证，无需从头扫描全部反汇编。

原版 APK 的 SHA-256：`d373432ce775d9c8b3f4af9f72ff79a14c39dd159735cfc202b75a78a1835a14`。分析旧版固定研究资料前，在仓库根目录运行 `sha256sum -c Phigros_4.0.1.1.apk.sha256`；总/单步构建按所选 profile 自动校验 APK、原始材料和上游产物。新样本先运行 `tools/versions.py inspect/prepare --apk PATH`，不要用旧版校验文件判定新版本。版本号相同但摘要不同也按不同样本处理，不能复用固定 RVA、场景引用和缓存。详情见 [材料地图](docs/local-materials.md)。

首次准备环境先读 [工具下载与安装](docs/setup.md)：明确 Python/JDK、SDK/NDK、Apktool、Dumper/.NET 和字体的来源与版本。Windows 用户另读 [Windows / WSL2 工具链](docs/setup-windows.md)，先区分运行宿主与 ARM64 目标；当前完整构建走 Linux x86-64 / WSL2，原生 Windows 的适配缺口按该指南说明。本文 Bash/sha256sum 命令用于 Linux / WSL2，PowerShell 摘要校验见 Windows 指南。已有工具先检查，不重复下载。

## 从哪里开始

1. [README.md](README.md)：当前成品、功能和完整构建入口。
   新 Agent 可直接接着读 [接手速查](docs/handoff.md)，包含当前状态、speed/avatar 修改入口、线程顺序和最短验证路径。
2. [Mod 功能索引](modules/README.md)：八个模块；每个模块 README 统一列功能、源码、构建和验证。
3. [Mod 开发指南](docs/modding-guide.md)：定位逻辑、选择修改层、构建、验证和交接步骤。
4. [研究资料索引](analysis/README.md)、[工具索引](tools/README.md)：实现证据及工具用途。
5. [本地材料地图](docs/local-materials.md)：原包、元数据、工具链、缓存、存档和成品的位置。
6. [版本偏移档案](profiles/README.md)、[版本迁移工作流](docs/workflows/port-version.md)：当前样本的地址/布局快照与可执行接手流程。`profile/assets/progress/replay.json` 已接入构建与回放；未知样本仅生成草稿，候选不自动确认。

当前基线：`dist/versions/4.0.1.1-arm64-d373432ce775/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections.apk`，包名 `com.PigeonGames.Phigros.unlock`。已有全曲/已有难度解锁、普通单曲暂停练习、水印、跳过教程及全收藏品。用户已确认全收藏品 Mod 完成；细分验证记录见 [收藏品说明](analysis/collections-unlock.md)。

最新整合包为同目录 `_Practice_mod_AllCollections_Speed.apk`，增加倍速和自定义头像。倍速已有用户确认；头像跨场景修复已过回放/包检查，仍待设备交互确认。`build_all.py` 默认构建整合包；`--target collections` 停在基线，`--list` 只预览步骤。

判定补偿：speed 在原版 Update 之前还原旧缩放，之后按本帧普通/挑战窗口重新缩放；另补五处 Drag/Flick/Hold 独立门槛。`test_judgement.py` 执行原始写回/比较指令，不能仅用模拟原函数的 `test_speed.py` 判断容差有效。实际手感待用户验收，详见 [判定实现](analysis/speed-mod.md#判定窗口补偿)。

## 修改约定

- 功能源码、资源和回归修改 `modules/<功能>/`；`tools/` 只保留版本 CLI、构建与回归入口，直接导入 modules 下的实现；旧实验工具及源码别名已删除。倍速源码统一为 `modules/speed/`，头像源图为 `modules/avatar/assets/zundamon.png`。一次性调查脚本放本样本 work/versions 工作区；可复用的分析能力合并到 versions.py，避免新增固定 RVA 的独立工具。
- 全收藏品计数在 `modules/collections/progress.py`；共享存档编解码和第九章进度在 `modules/unlock/chapter9_save.py`，旧收藏品函数导入仍可用。倍速和头像目前共享 `libspeed.so` 与 `build_speed_apk.py` 打包步骤。
- speed/avatar 按 `AvatarAssets.read` → JNI `initialize` / `avatar_prepare` → 单一安装线程 → `avatar_install` 顺序启动；头像资源及 IL2CPP 绑定由头像模块私有持有，公开接口为 `modules/avatar/avatar.h`。安装器只定位/绑定/挂钩，Unity 对象仍在游戏回调线程访问。共享存档 Smali 写入复用 `bootstrap_entries`，由 `bootstrap_smali` 组装完整 Bootstrap。
- 当前正式路线保留游戏存档加密，不注入成绩。`modules/unlock/patch_min.py` CLI 默认应用 chart/song/chapter/visibility，已移除 crypto 分组并在不匹配时停止；历史 crypto/成绩实验不进入工作流。
- 正式工作流的原始库位于 `work/versions/<sample-id>/original/libil2cpp.so`，旧 `work/lib/arm64-v8a/libil2cpp.so` 保留为历史研究输入；均不用补丁库覆盖。新补丁记录原字节、RVA、替换指令并做断言；版本变更须重新定位。
- RVA、文件偏移、运行时地址分开处理。按 ELF `PT_LOAD` 映射；`VA - 0x4000` 仅适用于当前样本的代码段。通用映射参考 `tools/versioning.py::Elf.offset`。
- Unity 对象访问在 Unity 线程执行；练习 UI 通过 JNI 原子请求交给 `Pause.Update`。修改时钟应复用 `practice_clock.h` 并运行时钟回归。
- 构建按 `tools/build_all.py` 的依赖顺序执行。总/单步入口使用同一个 `--profile`；DEX shell 每次从真实上游重新解码；APK 旁的 build receipt 绑定输入/配置/源码/工具摘要。当前指纹保守覆盖 modules/tools 全树，源码改变后优先重跑总构建。
- 覆盖安装沿用本地签名密钥。缺失时先检查 `backups/`；构建找不到已有密钥时停止，不自动生成替代更新签名。
- 原包、成品、私有存档、签名文件、SDK/NDK、反编译输出继续留在现有忽略目录；文档记录路径和复现方法。

## 按改动验证

- 文档：核对链接、命令和实际脚本，执行 `git diff --check`。
- 原生补丁：核对原字节、反汇编、修改范围和返回 ABI。
- 练习时钟：`.venv/bin/python modules/practice/test_timing.py`；它是原生代码回放，不代表真机音频延迟测量。
- 倍速/头像：`.venv/bin/python modules/speed/test_speed.py`、`.venv/bin/python modules/avatar/test_avatar.py`；头像回放模拟 Unity/IL2CPP 边界，不代表真机渲染验证。
  倍速同时运行生产 Update 和 24 个音频模型场景，并运行 `.venv/bin/python modules/speed/test_judgement.py` 验证真实写回与独立门槛；头像共六项（含单次启动顺序）。两个脚本各自编译所需库，顺序执行，避免同时覆盖本样本 `work/versions/<sample-id>/speed/libspeed.so`；也可统一运行 `tools/versions.py replay --profile <sample-id>`。
- 场景/收藏品：核对对象或目录数据、加密写入及非目标数据保留情况。
- APK：运行脚本中的签名、对齐及包内条目比较；设备验证另记安装、启动、实际交互结果。

提交/交接时写清修改入口、输入输出包、验证结果和验证范围，并更新对应功能说明。文档只保留有源码、原生指令、资源数据、产物检查或实际反馈支持的结论，注明证据类型；结论失效时直接删除或替换，同步移除对应的旧操作说明。
