# Windows 工具链与 WSL2 工作流

[项目首页](../README.md) · [工具版本与下载源](setup.md) · [工具职责](../tools/README.md) · [版本迁移流程](workflows/port-version.md) · [本地材料](local-materials.md)

本页面向 **Windows x64** 开发机，目标仍是 Android ARM64 APK。完整构建采用 **WSL2 + Linux 工具链**，可沿用现有脚本；原生 PowerShell 可先准备分析环境，但当前源码仍有 Linux 专用入口，见下文适配表。本页依据官方安装文档与仓库源码整理，未进行新的 Windows 实机构建验证。

## 1. 选择工具安装在哪一侧

| 任务 | 执行环境 | 所需工具 |
| --- | --- | --- |
| 完整版本适配、原生回放与 APK 构建 | WSL2 的 Linux Bash | Linux Python/JDK、SDK/NDK、Apktool、binutils、Dumper/.NET、字体及已有密钥 |
| 原生 Windows 分析或为后续移植准备工具 | PowerShell | Windows Python、按需安装 Windows Dumper/.NET、SDK/JDK/Apktool；不要求先装全套 NDK |
| 编辑源码、查看文档 | Windows 或 WSL 编辑器 | Git、编辑器；构建进程继续在 WSL 侧运行 |
| Windows 模拟器或 USB 设备安装验证 | Windows PowerShell | Windows Platform-Tools 的 adb.exe、具体成品 APK |

版本号与官方来源统一以 [安装清单](setup.md) 为准。已有 Android Studio 可以提供 Windows SDK；在 WSL 构建时另装 Linux SDK/NDK。jar、APK、dump、字体和密钥可以迁移，宿主可执行文件与虚拟环境分别安装。Windows ZIP 包可用资源管理器“全部提取”，不要求安装 Linux 的 unzip。

## 2. Windows 上的完整构建路线：WSL2

先在 PowerShell 检查已有发行版：

```powershell
wsl --list --verbose
```

若还未安装，按 [微软 WSL 安装说明](https://learn.microsoft.com/en-us/windows/wsl/install) 在管理员 PowerShell 执行，按提示重启并完成 Linux 用户初始化：

```powershell
wsl --install -d Ubuntu-24.04
```

已有发行版时使用其实际名称进入，并确认 `wsl --list --verbose` 显示版本为 2。下面以 Ubuntu-24.04 为例：

```powershell
wsl -d Ubuntu-24.04
```

此后本节命令均在 **Ubuntu Bash** 中运行。检查 `uname -m` 为 `x86_64`；Windows ARM64 宿主不在本页已覆盖的工具路径范围内。

```bash
uname -m
sudo apt update
sudo apt install git curl unzip binutils python3 python3-venv openjdk-21-jdk fonts-noto-cjk
python3 --version
java -version
javac -version
readelf --version
```

在 WSL 中 clone 仓库，建议放在 `~/project/phigros-mods`。[微软文件系统说明](https://learn.microsoft.com/en-us/windows/wsl/filesystems) 建议 Linux 工具处理的项目放在 Linux 文件系统；本项目还会频繁读写解码目录和大 APK。Windows 编辑器应通过 WSL 连接打开该目录。

从仓库根目录创建 Linux 虚拟环境：

```bash
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
```

继续按 [工具安装清单](setup.md) 第 2–4 节安装 **Linux** Command-line Tools、SDK/NDK、Apktool wrapper、匹配 Dumper 的 Linux .NET 与字体，并配置已有签名。完整构建时 `java`、`javac`、`apktool`、`readelf` 应解析到 Linux 工具；可用以下命令检查，NDK/SDK 文件检查则使用安装清单中的 `Context` 检查块：

```bash
command -v python3 java javac apktool readelf
```

Windows 下载目录可以作为材料来源。例如先将以下 APK 路径换成实际位置，再在仓库根目录执行：

```bash
.venv/bin/python tools/versions.py inspect --apk /mnt/d/APKs/game.apk
.venv/bin/python tools/versions.py prepare --apk /mnt/d/APKs/game.apk
```

原 APK 后续仍需保留在绑定路径。拿到实际 `profile_id` 后，进入 [版本迁移流程](workflows/port-version.md)，依次完成 dump/attach-dump、locate、scan-assets、分析填写、verify、replay 与 build。未知样本生成的是草稿，不会因为环境装好就自动变成可构建档案。

## 3. 原生 Windows 工具准备：PowerShell

以下是原生分析环境与工具安装示例，**不表示 build/replay 已支持原生 Windows**。只走 WSL 构建的用户可以跳过此节，避免重复装工具。示例路径 `C:\Tools`、`D:\APKs`、`D:\Phigros-private` 均按实际位置替换；`$env:` 设置只影响当前 PowerShell 会话及其子进程。

### Python 与 JDK

安装清单中的 Python 3.13 x64、JDK 21 Windows x64 和 [Git for Windows](https://git-scm.com/downloads/win)。JDK 的 `bin` 加入 PATH，确认 java/javac 来自预期 JDK；下面使用 Python 安装器提供的 `py` 启动器。如安装时未启用它，改用 Python 的完整路径。

在 **Windows 文件系统中的仓库根目录**执行：

```powershell
py -3.13 --version
java -version
javac -version
keytool -help
$env:PYTHONUTF8 = "1"
py -3.13 -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
```

直接调用解释器即可，无需运行 Activate.ps1 或修改执行策略。[Python venv 文档](https://docs.python.org/3.13/library/venv.html) 说明虚拟环境应在目标位置重建；Windows 的 `.venv\Scripts` 与 Linux 的 `.venv/bin` 不共用。固定依赖在 Windows 上仍需实际确认安装和加载成功，不能沿用 Linux 的测试结论。

### Windows SDK/NDK

仅做 inspect/prepare/locate 不需要先装 SDK/NDK；需要 Windows SDK 工具或进行原生移植时再安装。下载 **Windows Command-line Tools**，解压整理成：

```text
C:\Tools\Android\Sdk\cmdline-tools\latest\bin\sdkmanager.bat
C:\Tools\Android\Sdk\cmdline-tools\latest\lib\
```

若已有 Android Studio SDK，将根目录替换为实际位置，例如 `$env:LOCALAPPDATA\Android\Sdk`。使用包管理器接受许可并安装仓库固定包；`sdkmanager` 的官方弃用状态见 [安装清单](setup.md)：

```powershell
$env:ANDROID_SDK_ROOT = "C:\Tools\Android\Sdk"
$env:Path = "$env:ANDROID_SDK_ROOT\cmdline-tools\latest\bin;$env:ANDROID_SDK_ROOT\platform-tools;$env:Path"
& "$env:ANDROID_SDK_ROOT\cmdline-tools\latest\bin\sdkmanager.bat" "--sdk_root=$env:ANDROID_SDK_ROOT" --licenses
& "$env:ANDROID_SDK_ROOT\cmdline-tools\latest\bin\sdkmanager.bat" "--sdk_root=$env:ANDROID_SDK_ROOT" "platforms;android-36" "build-tools;36.0.0" "ndk;27.3.13750724" "platform-tools"
$env:PHIGROS_NDK_ROOT = "$env:ANDROID_SDK_ROOT\ndk\27.3.13750724"
```

Windows 安装后应有这些文件；设置 `PHIGROS_NDK_ROOT` 只指定根目录，当前脚本不会据此自动切换宿主：

```text
platforms\android-36\android.jar
build-tools\36.0.0\lib\d8.jar
build-tools\36.0.0\lib\apksigner.jar
build-tools\36.0.0\zipalign.exe
ndk\27.3.13750724\toolchains\llvm\prebuilt\windows-x86_64\bin\clang.exe
```

### Apktool、Dumper、字体与密钥

按 [Apktool 官方 Windows 安装说明](https://apktool.org/docs/install/) 下载 Windows wrapper；与固定版本 jar 一起放在 `C:\Tools\apktool`，分别命名为 `apktool.bat`、`apktool.jar`。将该目录加入 PATH：

```powershell
$env:Path = "C:\Tools\apktool;$env:Path"
apktool --version
```

Dumper 使用完整发布目录，保留 config、deps/runtimeconfig 和依赖。查看 `Il2CppDumper.runtimeconfig.json` 选择相匹配的 [Windows .NET Runtime](https://learn.microsoft.com/en-us/dotnet/core/install/windows)；不能用改框架版本或强制 metadata 版本代替兼容性分析。示例为 DLL 版本；若发布包入口是 exe，`PHIGROS_IL2CPP_DUMPER` 指向那个 exe，CLI 会直接运行。

```powershell
$env:PHIGROS_IL2CPP_DUMPER = "C:\Tools\Il2CppDumper\Il2CppDumper.dll"
$env:PHIGROS_DOTNET = "C:\Program Files\dotnet\dotnet.exe"
& $env:PHIGROS_DOTNET --list-runtimes
$env:PHIGROS_WATERMARK_FONT = "C:\Tools\fonts\NotoSansCJK-Regular.ttc"
$env:PHIGROS_KEYSTORE = "D:\Phigros-private\local-unlock.jks"
```

字体用安装清单中的同一 Noto CJK 字体文件。密钥恢复原文件，保持原 alias/密码；不要生成替代密钥更新已有安装。跨系统复制时确认备份实体文件已复制，不能只拷贝失效的符号链接。

## 4. PowerShell 分析入口与摘要校验

以下示例按 CLI 的参数定义整理，尚未在 Windows 上执行；在原生 Python 依赖安装成功后使用。仓库包含中文配置/证据，先启用 Python UTF-8 模式。把 APK 路径替换为实际文件：

```powershell
$env:PYTHONUTF8 = "1"
.\.venv\Scripts\python.exe tools/versions.py inspect --apk "D:\APKs\game.apk"
.\.venv\Scripts\python.exe tools/versions.py prepare --apk "D:\APKs\game.apk"
```

把 prepare 输出的真实 `profile_id` 填入 `$sampleId`。下面的 dump 需要已配置兼容 Dumper；已有同源 dump 时改按 workflow 执行 attach-dump：

```powershell
$sampleId = "替换为实际的 profile_id"
.\.venv\Scripts\python.exe tools/versions.py dump --profile $sampleId
.\.venv\Scripts\python.exe tools/versions.py locate --profile $sampleId
.\.venv\Scripts\python.exe tools/versions.py scan-assets --profile $sampleId
```

候选仍需人工分析并填写配置；scan-assets 的类型树解析还依赖配套 DummyDll 和 TypeTreeGeneratorAPI。失败时保留日志，切到 WSL 后重新绑定材料。不要在原生 PowerShell 直接照抄 workflow 的 replay/build 命令。

复现 **固定旧样本** 时，可在仓库根目录用以下命令替代 `sha256sum -c`；它读取仓库现有校验文件并在不匹配时抛错：

```powershell
$expectedHash = ((Get-Content .\Phigros_4.0.1.1.apk.sha256 -Raw).Trim() -split '\s+')[0]
$actualHash = (Get-FileHash .\Phigros_4.0.1.1.apk -Algorithm SHA256).Hash
if ($actualHash -ne $expectedHash) { throw "APK SHA-256 与固定样本不一致" }
"APK SHA-256 OK: $actualHash"
```

新版本和同版本不同摘要样本使用 inspect/prepare，不拿旧版摘要判定新样本是否有效。PowerShell 环境变量写法为 `$env:NAME = "value"`，调用带空格的程序路径用 `& "C:\...\tool.exe"`；不要直接复制 Bash 的 `export`、反斜杠续行或 heredoc。

## 5. Windows 与 WSL 的路径、材料和设备

| 材料/工具 | Windows PowerShell | WSL2 Bash |
| --- | --- | --- |
| Windows 盘上的 APK | `D:\APKs\game.apk` | `/mnt/d/APKs/game.apk` |
| Python | `.\.venv\Scripts\python.exe` | `.venv/bin/python`，重新创建 Linux venv |
| SDK/NDK | Windows 包及 Windows 路径 | Linux 包及 Linux 路径 |
| 字体、已有密钥、配套 dump | Windows 路径 | 对应挂载路径，或复制进 Linux 文件系统 |
| 环境变量 | 用 `$env:NAME` 设置 | 用 `export NAME=...` 重新设置 |

`bindings.json` 保存 APK/dump 的绝对路径；换系统或移动材料后运行 prepare、dump/attach-dump 重新绑定。默认工具位置包含当前维护机器的历史路径，新机器应显式配置安装清单中的环境变量。不要直接复用其他机器的 bindings、虚拟环境和旧构建状态。

若设备或模拟器由 Windows 管理，可以继续在 Windows 侧用 [Windows Platform-Tools](https://developer.android.com/tools/releases/platform-tools) 验收，无需为安装 APK 把设备接入 WSL。完成 WSL 构建后，在仓库根目录导出成品；先创建目标目录：

```bash
mkdir -p /mnt/d/APKs/phigros-mods
cp dist/versions/4.0.1.1-arm64-d373432ce775/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections_Speed.apk /mnt/d/APKs/phigros-mods/
```

这是当前固定样本的输出名，新样本使用实际产物。然后在 **Windows PowerShell** 中执行，`$serial` 替换为 devices 输出中的目标；模拟器需要 connect 时，使用它当前提供的地址/端口：

```powershell
adb devices -l
$serial = "替换为实际设备序列号"
adb -s $serial install -r "D:\APKs\phigros-mods\Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections_Speed.apk"
```

分别记录安装、启动与实际交互，不把安装成功当成游玩验证；历史 MuMu 端口不是新机器的固定配置。

## 6. 原生 Windows 构建尚需适配的入口

下表来自当前源码检查；用于说明为何工具安装完仍应在 WSL 执行完整构建。

| 入口 | 当前实现 | 原生 Windows 需要处理 |
| --- | --- | --- |
| [versioning.py](../tools/versioning.py) 的 `Context.compiler`、[build_practice_apk.py](../tools/build_practice_apk.py) | 固定 `linux-x86_64/bin/aarch64-linux-android23-clang` | 按宿主选择 NDK；Windows 为 `windows-x86_64`，处理 clang.exe/目标参数或 cmd 包装器 |
| [test_timing.py](../modules/practice/test_timing.py)、[test_speed.py](../modules/speed/test_speed.py) | 通过 PATH 调用 GNU `readelf -Ws` 解析符号 | 提供可执行工具或改用 NDK llvm-readelf.exe，并核对输出解析 |
| [versioning.py](../tools/versioning.py) 的 `Context.zipalign` | 查找无扩展名 zipalign，否则回退旧 Linux 工具 | 识别 SDK 的 zipalign.exe；不使用 Linux 动态库回退 |
| [build_practice_apk.py](../tools/build_practice_apk.py)、[build_speed_apk.py](../tools/build_speed_apk.py) | javac 以 `.exe` 结尾时调用 wslpath | 区分 WSL 互操作与原生 Windows，原生路径不走 wslpath |
| 多个构建脚本的 apktool 调用 | subprocess 直接运行 `apktool` | 核对 Windows bat 启动与参数引用行为，或统一使用 java -jar |
| 字体与本机默认路径 | 默认使用 Linux 字体和维护机器路径 | 显式配置环境变量，并核对 UTF-8 文件读写、依赖加载与路径行为 |

Android 官方 [NDK 宿主工具说明](https://developer.android.com/ndk/guides/other_build_systems) 区分 `linux-x86_64` 与 `windows-x86_64`，目标 triple 仍为 `aarch64-linux-android`。后续若实现原生支持，应先修这些调用，再运行版本回归、串行原生回放和完整 APK 签名/对齐/包内容检查，记录 Windows 实际结果后更新支持范围。
