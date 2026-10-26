# 工具入口

[项目首页](../README.md) · [工具下载与安装](../docs/setup.md) · [Windows / WSL2](../docs/setup-windows.md) · [Agent 版本工作流](../docs/workflows/port-version.md)

## 宿主与命令约定

正式构建与回放目前使用 Linux x86-64 工具链；Windows 完整流程在 WSL2 内运行。工具版本和下载源统一见安装清单，Windows 指南提供 PowerShell 安装/分析示例、路径换算、设备连接和源码中的适配缺口。

| 用途 | Linux / WSL2 Bash | 原生 Windows PowerShell |
| --- | --- | --- |
| Python 入口 | `.venv/bin/python` | `.\.venv\Scripts\python.exe` |
| 临时环境变量 | `export PHIGROS_PROFILE="sample-id"` | `$env:PHIGROS_PROFILE = "sample-id"` |
| SDK 包管理入口 | `sdkmanager` | `sdkmanager.bat` |
| Apktool 启动器 | `apktool` | `apktool.bat` |
| APK 摘要 | `sha256sum -c Phigros_4.0.1.1.apk.sha256` | `Get-FileHash .\Phigros_4.0.1.1.apk -Algorithm SHA256`，按 Windows 指南比较预期值 |

此表只说明终端语法与工具入口差异；原生 Windows 的编译器、readelf、zipalign 和 javac 调用尚未完成构建适配。

## 分析与版本配置

| 文件 | 用途 |
| --- | --- |
| [versions.py](versions.py) | inspect/prepare/dump/attach-dump、候选定位、场景扫描、掩码搜索、反汇编、静态校验与串行回放 |
| [versioning.py](versioning.py) | 样本校验、ELF 映射、共享配置/native 头、工具路径与 APK 来源记录 |
| [test_versions.py](test_versions.py) | 版本隔离、偏移/序言/配置、候选歧义、SDK 工具选择及上游失效回归 |

## 正式构建

从仓库根目录执行 `.venv/bin/python tools/<脚本> --profile <sample-id>`；省略 profile 使用当前已验证的 4.0.1.1。以 build_all.py 为总入口，--list 预览，--target collections 停在收藏品基线。

| 文件 | 阶段 |
| --- | --- |
| [build_all.py](build_all.py) | 按依赖运行整个构建 |
| [build_unlock_apk.py](build_unlock_apk.py) | 解锁、共存包名、进度 Bootstrap、初始水印；共享 ZIP/Smali 工具 |
| [patch_anti_addiction.py](patch_anti_addiction.py) | 应用 profile 中的启动补丁 |
| [build_practice_apk.py](build_practice_apk.py) | 练习 Java/native、暂停场景 |
| [build_practice_watermark.py](build_practice_watermark.py) | 更新菜单水印 |
| [build_skip_tutorial.py](build_skip_tutorial.py) | 教程完成标记 |
| [build_collections_apk.py](build_collections_apk.py) | 收藏品与外观计数 |
| [build_speed_apk.py](build_speed_apk.py) | 倍速与头像共用库、Java 接入和资源打包 |

功能源码、资源与回放统一位于 [modules](../modules/README.md)，无 tools 下的源码别名。单独审计存档或检查原生补丁时，直接使用 modules/unlock/chapter9_save.py 与 patch_min.py。

旧 Frida、固定样本扫描器、实验补丁、成绩改写/部署脚本及兼容链接已删除。现有定位与资源调查统一用 versions.py；历史研究结果继续保留在 [analysis](../analysis/README.md) 和版本档案中。
