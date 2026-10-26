# Phigros Mods

Android ARM64 / Unity IL2CPP 模组与版本适配工作流。当前经过真实样本验证的是 **Phigros 4.0.1.1 / Unity 2022.3.62f2 / metadata v31**，包含全曲解锁、暂停练习、倍速、菜单水印、跳过教程、启动检查、全收藏品和自定义头像。

## 从哪里开始

| 目的 | 入口 |
| --- | --- |
| 让另一个 Agent 分析/适配新版本 | [版本迁移工作流](docs/workflows/port-version.md) |
| 当前偏移、字段、场景与配置格式 | [版本档案](profiles/README.md)、[当前 profile](profiles/4.0.1.1-arm64-d373432ce775/profile.json) |
| 当前状态、线程与最短验证路径 | [接手速查](docs/handoff.md)、[AGENTS.md](AGENTS.md) |
| 按功能找源码、构建和验证 | [模块索引](modules/README.md) |
| 定位方法与原始证据 | [开发指南](docs/modding-guide.md)、[研究索引](analysis/README.md) |
| 构建工具、输入材料与签名 | [工具索引](tools/README.md)、[本地材料地图](docs/local-materials.md) |
| 下载/配置工具，选择 Linux 或 Windows 路线 | [工具安装清单](docs/setup.md)、[Windows / WSL2 工具链](docs/setup-windows.md) |
| 功能与历史设备证据 | [结果汇总](总结.md) |

## 接手任意新样本

下面的 Bash 命令在 Linux x86-64 或 Windows 的 WSL2 中执行。Windows 用户先按 [Windows 工具链](docs/setup-windows.md) 选择环境；该指南另有原生 PowerShell 分析示例及当前构建限制。

```bash
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python tools/versions.py inspect --apk /path/to/game.apk
.venv/bin/python tools/versions.py prepare --apk /path/to/game.apk
```

命令返回真实 `<sample-id>` 后，按 [完整 workflow](docs/workflows/port-version.md) 生成同源 dump、寻找候选、扫描资源、填写档案并调整实现：

```bash
.venv/bin/python tools/versions.py dump --profile <sample-id>
.venv/bin/python tools/versions.py locate --profile <sample-id>
.venv/bin/python tools/versions.py scan-assets --profile <sample-id>
# Agent 完成原生/字段/资源/存档/回放的静态分析并填写配置后：
.venv/bin/python tools/versions.py verify --profile <sample-id> --generate
.venv/bin/python tools/versions.py replay --profile <sample-id>
.venv/bin/python tools/build_all.py --profile <sample-id>
```

未知样本只生成草稿与候选，不继承旧版偏移或已验证状态。不同版本可以选择不同原生源码、回放入口与依赖表；函数签名、ABI、逻辑和资源变化仍由 Agent 分析与实现。当前入口支持 ARM64 IL2CPP，其他架构/提取格式需要另加适配。

## 复现当前版本

原版 APK SHA-256 为 `d373432ce775d9c8b3f4af9f72ff79a14c39dd159735cfc202b75a78a1835a14`。补齐本地原包、配套 dump、SDK/NDK 和已有签名后：

```bash
sha256sum -c Phigros_4.0.1.1.apk.sha256
.venv/bin/python tools/versions.py prepare --apk Phigros_4.0.1.1.apk
# 新机器需 dump 或按 workflow attach-dump 绑定配套材料
.venv/bin/python tools/versions.py verify --generate
.venv/bin/python tools/versions.py replay
.venv/bin/python tools/build_all.py --list
.venv/bin/python tools/build_all.py
```

默认 profile 为 `4.0.1.1-arm64-d373432ce775`；所有正式单步脚本及回放也支持 `--profile`。`--target collections` 停在收藏品基线；`--list` 只预览。

新成品为：

```text
dist/versions/4.0.1.1-arm64-d373432ce775/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections_Speed.apk
```

中间文件在 `work/versions/<sample-id>/`。每个 APK 的 `.apk.build.json` 保存样本、输入/输出和配置/源码/工具指纹。单步构建拒绝过期上游；DEX 壳每次从真实输入重新解码。当前指纹覆盖整个 modules/tools 源树，修改源码后优先重跑总构建。dist 根目录中的旧成品保留为历史对照。

包名 `com.PigeonGames.Phigros.unlock`，沿用本地签名；缺失已有密钥时停止。SDK 可由 `ANDROID_SDK_ROOT` 指定，其他工具配置见 workflow。只 clone 仓库不包含原包、dump、SDK/NDK、密钥和设备日志。

## 功能与验证范围

用户已确认全曲、普通单曲练习 v2、水印、全收藏品和倍速变速效果。判定补偿执行真实原版指令回放，实际游玩手感待验收；头像跨场景修复通过六项回放和包检查，仍待设备交互。工作流改造不把这些历史设备反馈升级成新构建的设备验证。

```bash
.venv/bin/python tools/test_versions.py
.venv/bin/python tools/versions.py replay
```

回放依次执行练习时钟、倍速生产 Update/24 个音频模型、真实判定写回/五个独立门槛、头像六项。它们不代替 Unity 渲染、实际音频延迟与设备交互测量。构建器另行验证签名、对齐和包内变化。

## 项目结构

```text
profiles/                # 按完整样本摘要识别的构建档案、公共语义需求
modules/                 # 八个 Mod 的源码、资源、回放、可选 ports/<sample-id>/
tools/                   # 版本 CLI、配置/构建支持及打包
docs/workflows/          # 不依赖特定 Agent 的接手/迁移步骤
analysis/                # 当前样本的研究与原始证据
work/versions/           # 每个样本的原始材料、候选、日志和构建阶段（忽略）
dist/versions/           # 每个样本的 APK 与构建记录（忽略）
```

tools 仅保留 11 个正式 Python 入口，模块源码无兼容别名。头像源图仍为 `modules/avatar/assets/zundamon.png`；签名、SDK/NDK 和旧研究材料继续保留在已有持久目录。
