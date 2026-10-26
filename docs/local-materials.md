# 本地材料与工作区

[项目首页](../README.md) · [工具下载与安装](setup.md) · [Agent 版本流程](workflows/port-version.md)

## 随 Git 保存

| 目录 | 内容 |
| --- | --- |
| modules/ | 八个模组的唯一源码、资源、回放及说明；头像源图在 avatar/assets/zundamon.png |
| tools/ | 11 个正式 Python 脚本：版本 CLI/支持/测试及八个构建入口 |
| profiles/ | 每个样本的身份、偏移、字段、资源/存档/回放配置与证据；公共语义需求 |
| analysis/ | 当前样本的原生汇编、配置目录和研究结果；旧工具删除后这些证据继续保留 |
| docs/、AGENTS.md、README.md | 环境准备、接手流程、开发约定和项目状态 |

## 原包与同源材料（不入 Git）

当前原包为 Phigros_4.0.1.1.apk，完整 SHA-256：

```text
d373432ce775d9c8b3f4af9f72ff79a14c39dd159735cfc202b75a78a1835a14
```

校验文件：[Phigros_4.0.1.1.apk.sha256](../Phigros_4.0.1.1.apk.sha256)。同版不同摘要是另一个样本。总/单步构建按所选 profile 校验完整 APK、原始 SO/metadata 及上游产物；新样本先运行 versions.py inspect/prepare。

| 路径 | 用途 |
| --- | --- |
| work/versions/&lt;sample-id&gt;/bindings.json | 本机 APK/dump 路径、dump 来源与摘要 |
| 同目录 original/ | 从同源 APK 校验/提取的原始 libil2cpp.so、global-metadata.dat；不能覆盖为补丁库 |
| 同目录 extracted/ | DEX、场景和启动文件 |
| 同目录 dump-* / dump.log | 每次 Dumper 新输出目录及执行日志；成功后绑定实际目录 |
| 同目录 candidates.json、scene-candidates.json、candidate-catalogs/ | 偏移/字段/资源候选；不是已确认配置 |
| 同目录 generated/ | 所选配置生成的 phigros_version.h |
| 同目录 &lt;stage&gt;/ | 阶段工作区；DEX shell 始终从实际上游重新解码 |
| 同目录 handoff.md、*-verification.json、*.log | 交接、回放、构建和产物检查记录 |
| dist/versions/&lt;sample-id&gt;/ | 阶段 APK 与 .apk.build.json 来源记录 |

现有配套 dump 位于 ildump/，包含 dump.cs、script.json、stringliteral.json 和 DummyDll/；DummyDll 是类型声明，不是游戏 C# 原始实现。按 workflow 的 attach-dump 绑定来源与文件摘要；不要把未知来源的旧 dump 默认当作新版本配套材料。

旧 work/lib、work/assets、work/unity、work/aa、work/jadx-out 及 dist 根目录文件是既有研究输入或历史产物，新流程不依赖其缓存。保留它们可对照旧证据；不要误当成新样本输入。

## 持久工具与签名（不入 Git）

| 本机已有位置 | 内容/配置 |
| --- | --- |
| .venv/ | requirements.txt 固定的 Python 依赖 |
| work/practice/android-ndk-r27d/ | 现有 Linux NDK；新机器可设置 PHIGROS_NDK_ROOT 指向 SDK 安装的 r27d |
| ildump/Il2CppDumper.dll、.dotnet/ | 现有 Dumper 与匹配运行时；可通过 PHIGROS_IL2CPP_DUMPER/PHIGROS_DOTNET 改位置 |
| SDK 的 build-tools/36.0.0/ | 首选的 zipalign、lib/apksigner.jar、lib/d8.jar；SDK 根由 ANDROID_SDK_ROOT 指定 |
| work/apk-build/tools/usr/ | 旧 Linux 签名/对齐工具回退位置，不要求新机器复制 |
| work/apk-build/local-unlock.jks | 现有签名入口，目前为指向备份的相对符号链接 |
| backups/signing-2026-10-20/ | 原签名备份；本地保留，不写入 Git |
| save/、shots/ | 私有存档、设备截图与历史运行证据 |

没有已有密钥时构建停止；新生成的密钥不能更新旧签名安装。原版与共存版使用各自包名目录下的 shared_prefs；不要批量改写私有存档。构建包含多份大 APK，不要把整个 work/ 当缓存删除，它还保存签名和工具链。

只 clone 仓库不包含本表本地材料。换机器后按 [安装清单](setup.md) 补工具，补齐对应 APK/dump 和已有签名，再从统一 workflow 复现。

## Windows / WSL2 搬迁

[Windows 工具链](setup-windows.md) 说明各宿主的工具包和命令。上表是当前机器的位置示例，新机器通过环境变量指定自己的 SDK/NDK、Dumper、字体和已有密钥，无需复刻用户名或盘符。

`bindings.json` 记录本机绝对路径，`.venv/` 和 `.dotnet/` 也属于宿主环境。跨 Windows/WSL 或机器搬迁后重新创建虚拟环境，运行 prepare，再 dump/attach-dump 绑定新位置。源码、profile 与经来源核对的原包/dump 可以迁移；Linux 与 Windows 的 NDK、SDK 可执行文件分别安装，旧 build receipt 不能当作新宿主已构建的证明。

恢复签名时检查 `local-unlock.jks` 的实际目标文件，迁移符号链接本身可能漏掉备份内容。可将原密钥文件放到新位置，用 `PHIGROS_KEYSTORE` 指向它；不生成替代更新签名。只把 APK 和密钥放在旧 work 目录并不能代替重新 prepare。
