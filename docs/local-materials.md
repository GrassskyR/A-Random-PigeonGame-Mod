# 本地材料地图

此表按用途整理现有资料，不移动大型输入、缓存或验证证据，避免破坏构建路径和文档引用。目录清单核对于 2026-10-25；成品和缓存会随下一次构建变化。

## 可随 Git 交接的部分

| 路径 | 用途 | 从哪里开始 |
| --- | --- | --- |
| `modules/` | 八个功能模块的源码、资源、回归和 README | [功能索引](../modules/README.md) |
| `modules/avatar/assets/zundamon.png` | 自定义头像源图（128×128 RGBA） | [头像模块](../modules/avatar/README.md) |
| `tools/build_*.py`、`tools/patch_anti_addiction.py` | 构建编排和签名 | `tools/build_all.py`；默认包含倍速/头像 |
| `tools/` 其余分析脚本 | 反汇编、字面量、场景和资源调查 | [工具索引](../tools/README.md) |
| `analysis/` | 提取配置、实现说明、汇编、诊断证据 | [研究索引](../analysis/README.md) |
| `frida/` | 实验脚本的源码行为说明 | 不被正式构建调用 |
| `README.md`、`AGENTS.md`、`docs/` | 当前状态、agent 入口和开发方法 | [Mod 开发指南](modding-guide.md) |
| `总结.md` | 当前实现及验证结果汇总 | 按功能证据查证 |
| `requirements.txt` | 当前固定 Python 依赖版本 | 用项目 venv 安装 |

`tools/` 内部分文件是指向 `modules/` 的仓库内兼容符号链接；迁移时保留链接及相对目录结构。

## 原始输入与反编译输出（不入 Git）

| 路径 | 内容/作用 |
| --- | --- |
| `Phigros_4.0.1.1.apk` | 当前原始 APK；所有固定地址的样本基准 |
| `work/lib/arm64-v8a/libil2cpp.so` | 从原包提取的原始 ARM64 游戏库；补丁定位及 Unicorn 回归输入 |
| `work/assets/bin/Data/Managed/Metadata/global-metadata.dat` | 配套 IL2CPP 元数据 |
| `ildump/dump.cs` | 类型、方法 RVA、字段偏移；并非原始 C# 实现 |
| `ildump/script.json`、`ildump/stringliteral.json` | 方法表、字符串等符号信息 |
| `ildump/DummyDll/` | 恢复 Unity 类型树所用的程序集 |
| `ildump/Il2CppDumper.dll`、`.dotnet/` | 本地 dump 工具与运行时 |
| `work/jadx-out/` | Java/SDK 反编译结果 |
| `work/unity/` | 场景、sharedassets 等 Unity 资源提取副本 |
| `work/aa/` | Addressables 提取资源，含密码验证工具读取的 bundle |
| `work/classes.dex`、`work/literals*.json` | DEX 和字面量调查副本；以实际输入包为准 |

重新提取原始库/元数据时先确认 APK 版本匹配。不要用已补丁的库替换原始库，再把补丁效果当成原版行为。

## 工具链与构建工作区（不入 Git）

| 路径 | 内容/注意事项 |
| --- | --- |
| `.venv/` | Capstone、UnityPy、TypeTreeGenerator、Pillow、Crypto、Unicorn |
| `work/practice/android-ndk-r27d/` | ARM64 C 编译工具链；时钟回归也使用它 |
| `work/apk-build/tools/usr/` | zipalign、apksigner.jar 及 Linux 配套动态库 |
| `work/apk-build/local-unlock.jks` | 当前为指向签名备份的相对符号链接 |
| `backups/signing-2026-10-20/` | 已有更新签名的备份；保留本地，不复制其内容进文档 |
| `work/apk-build/dex-shell/` | 基础 APK 的缓存 DEX 壳 |
| `work/practice/shell/` | 练习阶段缓存 DEX 壳；同目录还有编译产物 |
| `work/skip-tutorial/shell/` | 跳教程缓存 DEX 壳 |
| `work/collections/` | 全收藏品阶段 DEX 壳、重打包产物和相关验证材料 |
| `work/speedmod/` | 倍速/头像共用构建工作区、DEX 壳、原生库及回放中间文件；源码在 `modules/speed/`、`modules/avatar/` |

外部依赖仍包括 JDK、apktool、Android SDK android-36 / build-tools 36.0.0，以及水印所用 Noto CJK 字体。`ANDROID_SDK_ROOT` 可指定 SDK；当前 Java 编译脚本的 Windows 回退路径和字体路径需要在新机器上核对。adb 用于设备验证，Frida 仅按需用于动态研究。

构建会生成数 GB 的中间 APK。清理前根据构建链确认是否仍是下游输入；不能把整个 `work/` 当成可直接删除的缓存。

## 成品、存档和运行证据（不入 Git）

| 路径 | 作用 |
| --- | --- |
| `dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections.apk` | 当前全收藏品练习版基线 |
| `dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections_Speed.apk` | 最新整合包，叠加倍速和自定义头像；头像跨场景修复待设备确认 |
| `dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_SkipTutorial.apk` | 全收藏品构建的直接输入 |
| `dist/` 其余 APK | 各能力阶段的对照或重建输出；按构建链识别 |
| `dist/安装说明.md`、`dist/installation.txt` | 当前完整成品说明 |
| `save/` | 原始、调试或设备备份存档；不要批量改写 |
| `shots/` | 设备截图和水印预览 |
| `work/*.log`、`work/apk-build/*.log` | 构建日志，证据按其对应输入版本使用 |

原版和共存版分别使用各自包名下的 `shared_prefs/<package>.v2.playerprefs.xml`；设备上的读取方式取决于调试权限。`deploy.sh` 面向原版包，不适用于直接更新当前共存版。

## 交接到另一台机器

仅 Git 包含源码和研究文字/配置，不包含上述忽略文件。要继续构建，应在目标机器补齐同版原包、配套 DummyDll、原始库、现有签名与工具链；按 [README](../README.md) 和 [开发指南](modding-guide.md) 核对依赖。若复制整个工作区，保留符号链接，并检查 SDK/JDK 等外部路径。

文档与反汇编可直接用于继续研究；本地未备齐输入时，应明确哪些构建或运行验证尚不能复现。
