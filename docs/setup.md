# Agent 工具下载与环境配置

[项目首页](../README.md) · [版本适配流程](workflows/port-version.md)

先检查已有工具和 [本地材料](local-materials.md)，只补缺失部分。当前脚本面向 **Linux x86-64 / WSL2**，NDK 编译器路径使用 linux-x86_64。WSL 内下载 Linux 工具包；原生 Windows/macOS 尚无整条构建验证。

## 应该下载什么

| 工具 | 项目使用的版本/包 | 官方来源 | 用途 |
| --- | --- | --- | --- |
| Python | 3.11+，本机验证为 3.13；venv/pip | [Python](https://www.python.org/downloads/) | 版本 CLI、资源处理与测试；Python 包按 requirements.txt 安装 |
| JDK | 新机器统一使用 JDK 21，包含 java、javac、keytool | [Eclipse Temurin 21](https://adoptium.net/temurin/releases/?version=21) | Java 编译、D8、Apktool 和签名；不是只装 JRE |
| Android SDK Command-line Tools | Linux 包，解压后提供 sdkmanager | [官方命令行工具下载](https://developer.android.com/studio#command-line-tools-only) | 安装下面的固定 SDK/NDK 包；不要求安装 Android Studio IDE |
| SDK Platform | `platforms;android-36` | [SDK 包安装说明](https://developer.android.com/tools/sdkmanager) | 提供 android.jar |
| SDK Build-Tools | `build-tools;36.0.0` | [SDK 包安装说明](https://developer.android.com/tools/sdkmanager) | 提供 D8、[zipalign](https://developer.android.com/tools/zipalign)、[apksigner](https://developer.android.com/tools/apksigner)，不用分别下载 |
| Android NDK | r27d，即 `ndk;27.3.13750724`，Linux x86-64 | [官方旧版下载，r27d](https://github.com/android/ndk/wiki/Unsupported-Downloads#r27d) | 编译 ARM64 Mod、原生回放；固定此版复现当前样本 |
| Apktool | 3.0.3；jar 与 Linux wrapper | [发布页](https://github.com/iBotPeaches/Apktool/releases/tag/v3.0.3)、[安装说明](https://apktool.org/docs/install/) | 解码/重编 DEX 壳；命令名必须是 apktool |
| Il2CppDumper | 能读取目标 metadata 的版本 | [官方发布页](https://github.com/Perfare/Il2CppDumper/releases) | 新样本生成 dump.cs、script.json、DummyDll；已有配套 dump 可直接 attach-dump |
| .NET Runtime | 匹配所下载 Dumper 的 runtimeconfig.json；本机旧包是 net7.0 | [微软安装说明](https://learn.microsoft.com/en-us/dotnet/core/install/linux-scripted-manual)、[版本下载](https://dotnet.microsoft.com/en-us/download/dotnet) | 运行 Dumper；.NET 主版本不能凭猜测替代 |
| Noto Sans CJK | Regular TTC，例如 NotoSansCJK-Regular.ttc | [Noto CJK 发布页](https://github.com/notofonts/noto-cjk/releases) | 渲染中文/日文水印；也可用系统 fonts-noto-cjk 包 |
| Android Platform-Tools | `platform-tools` | [官方平台工具](https://developer.android.com/tools/releases/platform-tools) | 可选，设备安装/交互验证时使用 adb |
| JADX | 按需下载 CLI 包 | [官方发布页](https://github.com/skylot/jadx/releases) | 可选，调查 Java/SDK 逻辑；当前构建不调用它 |

另需 git、curl、unzip 等基本命令。只做 inspect/locate/scan-assets 不需要先下载 NDK；原生回放和完整构建才需要它。原始 APK、配套 dump、签名密钥是项目材料，不是上表工具，来源和放置位置见 [材料地图](local-materials.md)。

官方来源核对日期：2026-10-25。版本号以本仓库实际使用值为准，不能直接用工具官网首页的最新版替换复现环境。

## 1. Python 与 JDK

```bash
python3 --version
java -version
javac -version
keytool -help
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
```

锁定的六个 Python 包分别是 Capstone、UnityPy、TypeTreeGeneratorAPI、Pillow、PyCryptodome、Unicorn。当前所有固定版本已核对可从 PyPI 下载；不要安装同名旧 Crypto 包替代 PyCryptodome。

## 2. 安装固定 SDK/NDK

从上表官方入口下载 Linux Command-line Tools 压缩包，整理成以下结构；避免多嵌套一层 cmdline-tools：

```text
$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/sdkmanager
$ANDROID_SDK_ROOT/cmdline-tools/latest/lib/
```

```bash
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export PATH="$HOME/.local/bin:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools:$PATH"
sdkmanager --sdk_root="$ANDROID_SDK_ROOT" --licenses
sdkmanager --sdk_root="$ANDROID_SDK_ROOT" \
  "platforms;android-36" "build-tools;36.0.0" \
  "ndk;27.3.13750724" "platform-tools"
export PHIGROS_NDK_ROOT="$ANDROID_SDK_ROOT/ndk/27.3.13750724"
```

也可从官方 r27d 页面下载 [Linux NDK 压缩包](https://dl.google.com/android/repository/android-ndk-r27d-linux.zip)，完整解压后将 PHIGROS_NDK_ROOT 指向 android-ndk-r27d 目录。

安装后应存在：

```text
$ANDROID_SDK_ROOT/platforms/android-36/android.jar
$ANDROID_SDK_ROOT/build-tools/36.0.0/lib/d8.jar
$ANDROID_SDK_ROOT/build-tools/36.0.0/lib/apksigner.jar
$ANDROID_SDK_ROOT/build-tools/36.0.0/zipalign
$PHIGROS_NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android23-clang
```

构建优先使用这些官方 SDK 签名/对齐工具。本机旧 work/apk-build/tools/usr 下的 Linux 工具仍可回退使用；新机器不需要复刻那份 Ubuntu 解包目录。

## 3. Apktool、Dumper 与字体

Apktool：按官方安装页将 jar 和 Linux wrapper 放到 PATH 中的同一目录，例如 ~/.local/bin/；jar 命名为 apktool.jar，wrapper 命名为 apktool，并赋执行权限。检查：

```bash
apktool --version
```

Dumper：完整解压发布包，保留其 DLL、deps/runtimeconfig、config.json 等配套文件。设置路径后检查 runtimeOptions.framework.version，再安装匹配的 .NET Runtime。仓库本机包要求 .NET 7；下载了其他框架版本的包应按那个包的配置选择。

```bash
export PHIGROS_IL2CPP_DUMPER="/path/to/Il2CppDumper/Il2CppDumper.dll"
export PHIGROS_DOTNET="/path/to/dotnet"
"$PHIGROS_DOTNET" --list-runtimes
```

使用微软 dotnet-install.sh 本地安装时，指定与该包匹配的 channel 和安装目录；运行 Dumper 只需 Runtime。不要通过改 runtimeconfig 或强制 metadata 版本让不兼容工具“成功”。若公开发行包不支持本样本格式，保留 dump.log，改用兼容工具或经来源核对的配套 dump；工作流支持 attach-dump。

字体：系统安装 fonts-noto-cjk，或将下载的字体保存在本地工具目录并配置：

```bash
export PHIGROS_WATERMARK_FONT="/path/to/NotoSansCJK-Regular.ttc"
```

## 4. 恢复签名与检查环境

更新已有 Mod 安装必须使用原密钥：先恢复 work/apk-build/local-unlock.jks 或 backups 中的签名，再设置 PHIGROS_KEYSTORE。密钥不能从工具官网重新下载或生成替代品；现有构建使用 local-unlock 密码约定。

```bash
export PHIGROS_KEYSTORE="/path/to/existing/local-unlock.jks"
.venv/bin/python - <<'PY'
from tools.versioning import Context
c = Context()
for label, path in {
    'android.jar': c.sdk / 'platforms/android-36/android.jar',
    'D8': c.sdk / 'build-tools/36.0.0/lib/d8.jar',
    'Clang': c.compiler,
    'zipalign': c.zipalign,
    'apksigner.jar': c.signer_jar,
    'existing keystore': c.keystore,
}.items():
    print(('OK' if path.is_file() else 'MISSING'), label, path)
PY
```

最后按 [版本工作流](workflows/port-version.md) prepare、dump/attach-dump、verify、replay、build。已有工具且环境检查通过时直接继续，无需重复下载安装。
