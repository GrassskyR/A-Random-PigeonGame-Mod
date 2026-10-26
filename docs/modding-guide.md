# 给后续 agent 的 Phigros Mod 开发指南

默认已验证样本：Phigros 4.0.1.1，Unity 2022.3.62f2，IL2CPP metadata v31，ARM64。新版本先走 [版本工作流](workflows/port-version.md)，以下原版机制与具体地址只按该样本解释。生产配置来自 [profiles](../profiles/README.md)。

## 1. 接手后的最短路径

从仓库根目录工作。先查看 `git status --short` 和 [项目状态](../README.md)，再按目标查 [研究索引](../analysis/README.md)。本地输入和工具位置见 [材料地图](local-materials.md)。

工具版本统一见 [环境配置](setup.md)，Windows 安装、PowerShell 示例和 WSL2 路径约定见 [Windows 工具链](setup-windows.md)。下文 Bash 命令在 Linux / WSL2 中运行；完整构建尚未适配原生 Windows。

新 Agent 的当前状态、修改入口和最短验证路径集中在 [接手速查](handoff.md)；speed/avatar 的初始化、线程及资源所有权按该文档执行。

首次接手、下载或更换原包时，先运行 `sha256sum -c Phigros_4.0.1.1.apk.sha256`，确认完整原版 APK 与 [记录的样本](local-materials.md#原包与同源材料不入-git) 一致。总构建在任何提取/构建步骤前也会校验；`--list` 不读包。同名或同版本号的不同摘要样本，需要重新定位并验证，不能直接复用现有 RVA、资源引用和缓存。

最新整合包为 `dist/versions/4.0.1.1-arm64-d373432ce775/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections_Speed.apk`，全收藏品基线为同目录下 `_Practice_mod_AllCollections.apk`。头像跨场景修复尚待设备交互确认。按功能查 [模块索引](../modules/README.md)，每个模块 README 提供源码、构建和验证入口。不要只根据文件名里是否带 `Unlock` 选择输入：各阶段的能力不同。当前包名是 `com.PigeonGames.Phigros.unlock`，与原版使用独立应用目录和存档。

已完成的能力：

| 能力 | 主要源码 | 说明 |
| --- | --- | --- |
| 章节、歌曲及已有难度解锁 | [patch_min.py](../modules/unlock/patch_min.py)、[build_unlock_apk.py](../tools/build_unlock_apk.py) | 判定补丁加真实进度初始化，不生成不存在的难度 |
| 第八、九章进度和存档编解码 | [chapter9_save.py](../modules/unlock/chapter9_save.py) | 保留原游戏加密；不注入成绩 |
| 普通单曲暂停练习 | [practice.c](../modules/practice/practice.c)、[PracticeOverlay.java](../modules/practice/PracticeOverlay.java) | 前后跳转、重建音符、预约播放时钟同步 |
| 暂停/倒计时去模糊 | [pause_scene.py](../modules/practice/pause_scene.py) | 只改普通单曲 `level12` 的两个组件 |
| 菜单水印 | [watermark_scenes.py](../modules/watermark/watermark_scenes.py) | 指定菜单场景使用场景内 Canvas/RawImage |
| 跳过教程 | [config.py](../modules/tutorial/config.py)、[build_skip_tutorial.py](../tools/build_skip_tutorial.py) | Unity 初始化前写 `IsFirstRun=1` |
| 启动检查补丁 | 所选 profile 的 startup.check、[patch_anti_addiction.py](../tools/patch_anti_addiction.py) | 按 `UniTask<bool>` 实际返回 ABI 修改 |
| 全收藏品 | [progress.py](../modules/collections/progress.py)、[build_collections_apk.py](../tools/build_collections_apk.py) | 503 条文本、328 个曲绘键、109 个头像键 |
| 谱面倍速 | [speed](../modules/speed/README.md) | pitch、谱面时间；每帧窗口及五处独立门槛补偿，手感待验收 |
| 自定义头像 | [avatar](../modules/avatar/README.md) | 与倍速共享打包步骤及 libspeed.so，跨场景修复待设备确认 |

用户已确认全曲、水印、练习 v2、全收藏品及倍速功能。技术验证的具体范围分别保存在功能文档中；后续修改仍按实际受影响的路径验证。`c9s.*` 密码加密剧情资源是独立机制，现有解锁不等于解密这些资源。

## 2. 先判断该改哪一层

| 需求 | 优先调查的位置 | 已有范例 |
| --- | --- | --- |
| 按钮出现条件、章节/歌曲锁 | IL2CPP 判定函数 + 场景配置 + 进度键 | `CheckSongUnlock`、第九章地图 |
| 已拥有、已阅读、首次运行状态 | `SaveManagement` 的真实读写键与 Bootstrap | 收藏品、跳过教程 |
| 暂停跳转、音频/判定时钟、音符生命周期 | 原生方法和对象字段布局 | `modules/practice` |
| 场景 UI、文字图片、组件开关 | Unity 序列化对象及引用 | 水印、暂停模糊 |
| Android 启动接入、Java 控件 | `UnityPlayerActivity`、smali、Java/JNI | Bootstrap、PracticeOverlay |
| 隐藏按钮、调试/重演系统 | 元数据、方法调用、场景实际挂载 | [debug-options.md](../analysis/debug-options.md) |

Java 是 Unity Player/SDK 壳，主要游戏逻辑在 `libil2cpp.so`。`dump.cs`、DummyDll 提供方法签名、字段偏移和类型信息，不包含可直接修改后重新编译的原始游戏 C# 实现。

优先复用已有配置和最小修改点。先确认“界面显示、内部判定、存档状态、资源加载”中哪一环阻止目标行为，避免只改列表后遗漏地图或实际播放入口。

## 3. 静态定位：从名字走到代码和数据

先在所选 profile 绑定的 dump.cs/script.json 中查类型、方法、参数及保存键，再使用统一入口：

```bash
.venv/bin/python tools/versions.py locate --profile 4.0.1.1-arm64-d373432ce775
.venv/bin/python tools/versions.py disasm --profile 4.0.1.1-arm64-d373432ce775 --rva 0x1CA96E4 --size 0x13c
```

以上地址仅适用于当前样本。候选与差异报告保存在本样本工作区；方法名、完整签名、调用点和控制流需要结合配套元数据确认，不把相邻方法或字节匹配当成语义证明。

地址要分清：

- 文档中的 RVA 是模块相对地址；运行时地址是 `libil2cpp` 加载基址加 RVA。
- 文件偏移由目标所在 `PT_LOAD` 的 `p_offset + RVA - p_vaddr` 得到。
- 代码段的 `0x4000` 差值不能套用到只读常量或数据段。`Context.elf.offset` 与模块 patch_min.va2off 都读取所选样本 ELF。
- 异步方法通常要继续查看 `<Method>d__N.MoveNext`；返回结构体不能按普通 `bool` 的 ABI 处理。
- 字面量 usage 槽可能在文件中为零、加载时才重定位，不能据此断言引用为空。

调查结果应保留：样本版本、方法及 RVA、关键原指令、调用者/读取者、对应配置或场景对象，以及静态推断和运行结果的区别。

## 4. Unity 场景和配置怎么读、怎么改

先用 `globalgamemanagers.assets` 中 MonoScript 的程序集/类名，关联 MonoBehaviour 的 `m_Script`；再用 DummyDll 生成类型树读取字段。统一使用 versions.py scan-assets --decode，脚本引用解析和类型树读取实现在 [versions.py](../tools/versions.py)。

已有可直接读取的配置：

- `analysis/chapter9-assets.json`：`level0` 的 GameInformation/keyStore、收藏品控制器及第九章场景组件。
- `analysis/collections.json`：完整文本收藏品目录，构建输入。
- `analysis/chapter9-song-config.json`：第九章歌曲和难度条件的提取结果。
- `analysis/debug-options-scenes.json`：场景列表、相关组件、按钮事件和解析错误。

需要重新提取时，从实际样本生成候选：

```bash
.venv/bin/python tools/versions.py scan-assets --profile 4.0.1.1-arm64-d373432ce775 --scene assets/bin/Data/level0 --decode
```

输出在本样本工作区的 scene-candidates.json/candidate-catalogs；审查后写入该 profile 的目录并绑定摘要。不会自动覆盖 analysis 中已核实的原始记录。完整目录的来源及交叉核对见 [收藏品说明](../analysis/collections-unlock.md)。

当前类型树生成需要补齐 `bool/UInt8` 的对齐标记，并修正部分列表的 `vector` 标记；直接照搬生成树可能使后续字段读错。已存在的脚本展示了当前样本的处理。

修改场景时同时核对 PathID、类、GameObject 和引用。PathID 不是跨版本固定标识。修改后重新读取输出，确认目标字段生效，并比较非目标对象的原始 payload。`pause_scene.py` 对 `level12` 的 216/224 两个组件提供了完整范例。

对象存在不代表 UI 可达：还要看 `m_Enabled`、对象/父链 active 状态、按钮绑定及进度条件。重演与模拟模式的正式入口不能仅凭名字当作通用 GM 或自动打歌开关。

## 5. 存档修改与全收藏品范例

全收藏品计数在 `modules/collections/progress.py`，共享编解码和第九章进度在 `modules/unlock/chapter9_save.py`；旧的收藏品函数导入保持兼容。

共存包读取 `getPackageName() + ".v2.playerprefs"`，写入的逻辑键和值各自经过：

```text
UTF-8 → AES-CBC/PKCS7 → Base64 → URL 编码 → SharedPreferences string
```

复用 `chapter9_save.encrypt/decrypt/entry` 和 `build_unlock_apk.bootstrap_smali`。真实键名来自 `SaveManagement.Load/Save` 调用；C# 保存模块字段名不一定是 PlayerPrefs 键。

在已有 Editor（寄存器 v0）中追加少量键时复用 `build_unlock_apk.bootstrap_entries`，避免另写一份加密和 putString 指令；完整 Bootstrap 仍由 `bootstrap_smali` 组装。

收藏品实际约定：

| 目标 | 逻辑键 | 值 |
| --- | --- | --- |
| 文本拥有 | `1key<key>` | 同组最大 `subIndex` |
| 文本已读 | `<key>CollectionTextOpened` | 同组最大 `subIndex` |
| 曲绘 | `2key<keyName>` | keyStore 的 `unlockTimes` |
| 头像 | `3key<keyName>` | keyStore 的 `unlockTimes` |

完整目录 `subIndex` 是 1 起算，场景解锁组件的 `collectionSubIndex` 是 0 起算。完整目录含稀疏索引，不能用条目数量代替最大索引。640 个文本计数加 437 个外观计数，共 1,077 个键。

`MarkCollectionRead`、`IsCollectionRead` 和文件列表过滤器均使用后缀形式，原生方法与验证记录见 [收藏品说明](../analysis/collections-unlock.md)。

`CollectionsBootstrap` 在原 `UnlockBootstrap` 之后、Unity 初始化前运行，每次启动重新写入目标值；不是仅安装时执行。它复用加密写入器时传 `cleared=()`，避免额外执行原 Bootstrap 的第九章清理项。存档 CLI 默认输出明文调试格式，写原游戏加密格式应显式使用 `--format encrypted`，并指定独立输出文件。

## 6. 原生补丁、练习模式的边界

等长指令补丁遵循 `原字节断言 → 指令编码 → Capstone 反汇编核对 → 写入独立产物`。参考 `patch_min.enc` 和构建脚本的 `native_library()`；正式包只选 `chart/song/chapter` 并补充显示条件。`modules/unlock/patch_min.py` CLI 现默认应用 chart/song/chapter/visibility，不含 crypto；不匹配立即停止并保留原始输入。

原生 hook 还要核对被覆盖指令的可重定位性、参数/返回 ABI 和线程。当前 `practice.c` 的入口校验和 trampoline 是为已核实的函数头写的，不能不分析指令就照搬到其他地址。

speed/avatar 的 `hook_entry` 同样仅支持已核实入口及第四条 ADRP 的重定位。公开模块接口在 `avatar.h`，头像运行时绑定集中于 `avatar_hook.c`；PNG 经 `AvatarAssets.read` 和 `avatar_prepare` 准备完毕才启动唯一安装线程。安装器不访问 Unity 对象，真正的 Sprite 和纹理操作发生在 Unity 的加载器 setter 中。具体数据流见 [接手速查](handoff.md#运行顺序与线程)。

练习模式的数据流：Java UI 松手提交原子请求 → Unity 线程 `Pause.Update` 消费 → 销毁旧音符控件、重置判定和生成索引、重建目标之后的音符 → 音频 Seek → 原流程预约恢复播放。跨跳转点已经开始的长按被跳过；普通单曲之外的剧情、挑战不在现有支持范围。

`PlayScheduled` hook 以实际预约播放时刻重设 DSP/单调时钟及缓存。不要只在暂停 Seek 时重设偏移，否则等待和倒计时会造成谱面超前。修改该逻辑后运行：

```bash
.venv/bin/python modules/practice/test_timing.py
```

该回归执行原始 ARM64 音频 Update 和生产头文件编译出的修复代码；仍需曲内检查实际音画同步、前后跳转、长按及倒计时。

## 7. 构建与缓存

现有环境使用 `.venv/bin/python`。新环境按 [工具安装清单](setup.md) 安装锁定的 Python 依赖、SDK/NDK、JDK 和 apktool；水印渲染还使用系统 Noto CJK 字体。完整本地材料缺失时，单纯 `git clone` 不能复现成品。

```bash
.venv/bin/python tools/build_all.py --list
.venv/bin/python tools/build_all.py
```

默认构建全部 Mod；`--target collections` 停在全收藏品基线。`--list` 只显示步骤，不读取输入包或运行构建。

流水线按所选 profile 执行，输出前缀位于 `dist/versions/<sample-id>/Phigros_<version>_Unlock_arm64`：

| 顺序 | 脚本 | 输入后缀 | 输出后缀 |
| --- | --- | --- | --- |
| 1 | `build_unlock_apk.py` | 同源原始 APK | `_watermarked.apk` |
| 2 | `patch_anti_addiction.py` | `_watermarked.apk` | `_NoAntiAddiction.apk` |
| 3 | `build_practice_apk.py` | `_NoAntiAddiction.apk` | `_Practice_v2.apk` |
| 4 | `build_practice_watermark.py` | `_Practice_v2.apk` | `_Practice_mod.apk` |
| 5 | `build_skip_tutorial.py` | `_Practice_mod.apk` | `_Practice_mod_SkipTutorial.apk` |
| 6 | `build_collections_apk.py` | `_Practice_mod_SkipTutorial.apk` | `_Practice_mod_AllCollections.apk` |
| 7 | `build_speed_apk.py`（倍速 + 头像） | `_Practice_mod_AllCollections.apk` | `_Practice_mod_AllCollections_Speed.apk` |

所有单步脚本支持 `--profile <sample-id>`，核对原始样本、材料及上游 APK 的 build receipt。当前来源指纹保守覆盖全部 modules/tools 源树，源码变化会使旧上游过期；使用总构建刷新后再单步调试。

DEX shell 始终从实际输入重新解码，目录位于 `work/versions/<sample-id>/<stage>/`，不再按目录存在与否复用。原始 SO/metadata 在同样本 original/，已有工具链与签名保持原持久位置。不要删除整个 work/；不要把含 classes2.dex 的整合包当作练习阶段的原始输入。

基础脚本同步修改 AndroidManifest 和 `resources.arsc` 中的包名；只改 Manifest 曾导致 Unity 资源查找崩溃。沿用 `copy_raw` 保留未修改条目的压缩数据、ZIP 元信息，并保留大于 2 GiB APK 的现有 ZIP64 处理。重打包后再对齐、签名。

覆盖安装使用原本地密钥，位置见材料地图。基础脚本缺已有密钥会停止，更新旧安装前先确认原密钥已恢复。新机器上核对 `ANDROID_SDK_ROOT`；Java 编译器可由 `PHIGROS_JAVAC` 指定；本机 Windows GraalVM 路径仅是当前机器的回退。

## 8. 验证与交付

按实际改动选择检查，不必为纯文档或每次迭代重建全部 APK。

1. **源码/数据**：原字节或对象断言；配置数量/索引；加密往返；非目标数据保留。
2. **构建产物**：核对预期的 DEX/原生库/场景变化。CRC/长度比较适合快速发现变化；需要逐字节结论时直接比较内容。构建脚本已有多处检查。
3. **包完整性**：签名和 ZIP 对齐通过。可独立复查签名：

   ```bash
   java -jar "$ANDROID_SDK_ROOT/build-tools/36.0.0/lib/apksigner.jar" verify --verbose --print-certs dist/versions/4.0.1.1-arm64-d373432ce775/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections.apk
   ```

4. **运行**：需要设备验证时先 `adb devices -l` 确认目标。历史 MuMu 地址是 `127.0.0.1:16384`，不应当作恒定在线设备。安装目标 APK 后分别记录启动、logcat 和实际功能结果。

签名通过不能替代启动测试，`am start` 的 `Status: ok` 不能替代曲内验收，Unicorn 回放不能替代实际音频测量。收藏品的文本设备存档检查、外观计数的 DEX/ARM64 判定回放及用户反馈分别按 [功能说明](../analysis/collections-unlock.md) 记录。

交付说明至少包含：功能和适用范围、修改文件、输入包和输出包、验证证据、剩余限制。把新增方法/RVA/场景证据写到对应 `analysis/*.md`，并更新索引。不要只把修改留在 `work/` 反编译目录；可维护的实现应落在模块或构建脚本里。

## 9. 工具行为与交接提示

当前构建由 tools/build_all.py 编排，定位、资源扫描和验证统一走 versions.py。工具下载/路径见 [环境配置](setup.md)，命令职责见 [工具索引](../tools/README.md)。固定版本扫描器、Frida 和存档/部署实验脚本已清理；保留的研究数据按对应样本解释。

可直接给下一个 agent 的任务开头：

> 在此仓库开发「目标功能」。先读 AGENTS.md、docs/modding-guide.md 和 analysis/README.md，再查目标模块。以当前 4.0.1.1 ARM64 样本为准，确认应修改的判定/存档/场景/运行时层；沿用现有模块、加密、签名和构建链。完成后记录修改点、输入输出、缓存处理和实际验证范围，并更新功能文档。
