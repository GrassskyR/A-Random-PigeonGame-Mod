# 为新版本定位并构建模组

本流程面向能读写仓库、运行 Python/Android/原生工具的 Agent，不依赖某个聊天平台或本机 skill。先读 [AGENTS.md](../../AGENTS.md)、[工具下载与安装](../setup.md)、[模块索引](../../modules/README.md) 和 [版本档案格式](../../profiles/README.md)。

当前分析入口支持 Android ARM64 Unity IL2CPP APK。不同版本可以使用不同 RVA、字段、资源、进度规则、原生实现和回放脚本。遇到其他架构、加固或不同 metadata 格式，保留样本识别结果与失败日志，先实现对应提取/执行适配；不要用旧地址假装成功。

本文命令块使用 Linux / WSL2 Bash。Windows 先读 [Windows 工具链](../setup-windows.md)：完整构建在 WSL2 内安装 Linux 工具；原生 PowerShell 的分析示例和构建适配缺口另列。这里的 ARM64 是 Android 目标架构，不代表支持任意宿主架构。跨机器或 Windows/WSL 切换时重新 prepare/attach-dump，重建本机路径绑定与虚拟环境。

## 1. 识别并接收样本

```bash
.venv/bin/python tools/versions.py inspect --apk /path/to/game.apk
.venv/bin/python tools/versions.py prepare --apk /path/to/game.apk
```

`inspect` 读取 Manifest 的包名/版本、ABI、Unity 版本、完整 APK 摘要、原始 SO/metadata 摘要及 ELF 段。只有完整摘要和 ABI 相符才算已知样本。同版本不同摘要会建立不同档案。

`prepare` 返回 `profile_id`；下文 `<sample-id>` 替换为这个实际值，不要直接复制占位符。命令从同一个 APK 提取原始库、metadata、DEX、场景和启动文件。所有本地路径保存在 `work/versions/<sample-id>/bindings.json`，输入原件不覆盖；原始材料和各阶段输出与其他样本隔离。

未知样本的 `profile.json` 中 targets/fields 为空，模块是 draft，assets/progress/replay 也是草稿。参考版的地址、已确认状态和存档值不会自动继承。已知样本不会被 prepare 重置。

## 2. 补齐工具并生成配套 dump

工具官方来源、版本和环境变量见 [安装清单](../setup.md)。Python 依赖使用仓库 requirements.txt。需要兼容该 metadata 的 Il2CppDumper 或其他能生成同等格式的工具；现有本地工具在 `ildump/Il2CppDumper.dll`，运行时在 `.dotnet/dotnet`。

```bash
.venv/bin/python tools/versions.py dump --profile <sample-id>
# 更换工具/运行时：
.venv/bin/python tools/versions.py dump --profile <sample-id> --dumper /path/Il2CppDumper.dll --dotnet /path/dotnet
```

每次使用新输出目录，并记录命令、工具摘要、输入摘要、dump.cs/script.json/DummyDll 的摘要和 `dump.log`。工具失败不附加旧 dump。不要因为退出码为 0 就认定提取成功；命令也检查必要产物。

若使用从别处复制的配套 dump，在核对其生成来源后绑定，两个摘要填 inspect 返回的完整值：

```bash
.venv/bin/python tools/versions.py attach-dump --profile <sample-id> --dump-dir /path/dump \
  --source-so-sha256 <full-so-sha256> --source-metadata-sha256 <full-metadata-sha256>
```

外部 dump 的来源是 Agent 声明，CLI 不会把这个声明描述成自动生成证明。保留生成日志；再通过原版指令、签名、字段和资源交叉核对。新机器复现已知版本时，也需 dump/attach-dump，不能只拷贝一份不明来源的 DummyDll。

## 3. 生成候选与差异报告

```bash
.venv/bin/python tools/versions.py locate --profile <sample-id>
```

读取 `work/versions/<sample-id>/candidates.json` 和 `handoff.md`。原生需求与字段需求来自 `profiles/requirements.json`。优先按 ELF 导出名、方法名与完整 C 签名检索；重载或 ABI 改变会显式列出候选。方法内部补丁使用“宿主方法 + 旧版相对位置”作为调查提示；这个位置必须重新反汇编确认。

符号消失时可使用掩码字节搜索和按本样本映射的反汇编：

```bash
.venv/bin/python tools/versions.py search-pattern --profile <sample-id> --pattern 'fd 7b ?? a9'
.venv/bin/python tools/versions.py disasm --profile <sample-id> --rva 0x123456 --size 0x100
```

搜索返回所有对齐候选与数量，不自动选择第一个。必要时修改需求中的 locator pattern；`??` 为一个通配字节。候选唯一、机器码一致或方法同名都不等于逻辑已确认。数据槽、runtime layout 和回放片段需要另行追踪；JudgeControl usage 槽不能从旧版简单平移。

## 4. 重新识别场景与目录

```bash
.venv/bin/python tools/versions.py scan-assets --profile <sample-id>
# 只看选定场景并解码目录/进度组件：
.venv/bin/python tools/versions.py scan-assets --profile <sample-id> \
  --scene assets/bin/Data/level0 --decode
```

先看 `scene-candidates.json` 中的对象、GameObject、脚本类型、脚本 FileID/PathID；脚本解析核对所属 external file。`--decode` 生成的章节与收藏品候选目录在 `candidate-catalogs/`。需要第九章场景时追加实际识别出的 `--scene`，不假设仍是 level28/30。

将确认后的配置放入 `profiles/<sample-id>/catalogs/`，在 assets.json 中登记路径及完整 SHA-256。current profile 仍可引用现有 analysis 目录，但路径必须与摘要共同绑定，不能拿它当所有版本的公共数据。

重新确认菜单场景集合、游戏场景排除、暂停两个目标组件、头像列表/keyStore、RawImage 脚本、sharedassets 分片与类型树。当前支持的解析结构不适用时，修改模块资源实现并保留非目标 payload 检查，不能只改 PathID 让断言“通过”。

## 5. 写入可构建的版本档案

使用当前档案作**格式与语义参考**，逐项分析后填写：

| 文件 | Agent 必须填写的内容 |
| --- | --- |
| `profile.json` | 原生 target 的稳定 ID、RVA、role、预期原字节、替换/覆盖/返回信息、字段的类型/存储/偏移、模块状态与证据；原生实现与回放文件选择 |
| `assets.json` | Unity 版本、Java 接入位置、场景与脚本引用、目录路径/摘要、资源结构和数量断言 |
| `progress.json` | 本版 codec、进度和清理键、教程标记、收藏品规则、头像 seed；保留加密和成绩边界 |
| `replay.json` | 本版原始方法/常量/片段、继续地址、片段长度、ABI 相关 fixture 与预期窗口 |
| `evidence.md` | 为什么定位到这里、ABI/控制流/资源证据、改了哪个实现、实际跑了哪些验证、下一步 |

每个 target 和必需 field/fixture 都需要 `status` 和非空 `evidence`。Agent 完成静态核对后可记录 `static_verified`，不要求用户逐项批准。`located`/draft 仍不能构建。历史 offsets.json 的 research_references 不属于正式补丁配方。

运行时绝对地址不写进档案：当前原生实现每次通过 `dl_iterate_phdr` 获取 load bias。文件偏移使用本样本的 PT_LOAD；BSS 不存在可用的原文件字节。

对 hook 检查入口参数、返回 ABI、16 字节覆盖和跳回。默认安装器仅支持已核实的栈/寄存器序言，以及头像 setter 第四条 ADRP 的专用重定位；CLI 会拒绝其他 PC 相对指令。启动补丁的异步返回也必须重新确认。

## 6. 逻辑改变时，为这个版本选择实现

只移动地址/字段时，共用当前 C 与 Python 模块即可。ABI、时钟、判定、生命周期等改变时，将新实现保存在模块自己的 `ports/<sample-id>/` 中，在该 profile 选择它，例如：

```json
{
  "implementations": {
    "practice": {
      "native_sources": ["modules/practice/ports/<sample-id>/practice.c"],
      "evidence": ["profiles/<sample-id>/evidence.md"]
    }
  },
  "replay_suites": {
    "practice": ["modules/practice/ports/<sample-id>/test_timing.py"]
  }
}
```

示例为 profile.json 的局部结构，不能覆盖其他模块记录。speed/avatar 仍共同进入 libspeed.so；其公开 `avatar.h`、Java/JNI 接口与 Unity 线程约束需要协调维护。

如果重写了 hook ABI，implementation 可添加 `custom_hook_abi: {"evidence": [...]}`，同时记录实际 overwrite_size/resume_rva 并用对应回放验证。这个字段表示 Agent 已实现和审阅另一个安装器，不会使旧安装器自动支持新指令。

实现依赖改变时，在公共 requirements.json 添加新的语义 target/field/fixture 定义，并为此 profile 提供 `module_requirements`：包含该模块实际使用的 `targets`、`fields`、`fixtures` 和 `evidence`。其他 profile 继续使用自己的依赖。不要通过删掉失败需求保留原实现；将调用者、源码、资源处理和回放一起改好。

Python 资源或 codec 的算法改变时，应在模块中增加按样本明确选择的实现，并更新对应契约与测试；目前正式 codec 是 AES-CBC/Base64/URL 编码，未知 codec 会被拒绝。Java 启动类变化可先配置 activity_smali/onCreate 接入；结构不同时需要更新打包逻辑。

## 7. 静态校验、原生回放、构建

```bash
.venv/bin/python tools/versions.py verify --profile <sample-id> --generate
.venv/bin/python tools/versions.py replay --profile <sample-id>
.venv/bin/python tools/build_all.py --profile <sample-id> --list
.venv/bin/python tools/build_all.py --profile <sample-id>
```

`verify` 核对必需目标、原字节、ELF 权限/映射、等长指令、序言、字段存储、fixture、目录和 dump 来源；生成的 native 头文件位于本样本 generated/。可用 `--modules startup` 等选择静态验证范围；部分模块验证不代表整包就绪。

回放严格串行执行所选 profile 的 suite，保存日志和 `replay-verification.json`。默认覆盖 practice、speed、avatar，含真实窗口写回和独立门槛；可用 `--modules practice` 分步分析。当前 speed 的回放复用 avatar 的 ELF/Unity 边界加载器，两者也共用 libspeed.so，因此现有 speed suite 仍需 avatar 的原生配置就绪；新版若要拆开，应同时提供独立实现与回放。

总构建默认全部模块；`--target collections` 停在收藏品基线。单步构建脚本同样支持 `--profile`。DEX 壳始终由真实上游重新解码，不复用修改过的壳。产物和中间文件分别在：

```text
work/versions/<sample-id>/<stage>/
dist/versions/<sample-id>/Phigros_<version>_Unlock_arm64*.apk
```

每个 APK 旁有 `.apk.build.json`：记录原始样本、输入/输出摘要、配置/源码/资源/工具指纹及参数。单步输入必须具备匹配的上游记录；源码、配置、工具或上游变化会要求按顺序重建。此实现保守地让整个 modules/tools 源树参与指纹，因此单改 speed 也会使旧上游记录过期；先使用总构建保证一致性。构建期间保持输入、源码和配置不变。

签名继续使用现有本地密钥；缺失会停止，不自动产生替代更新签名。签名/对齐首选 SDK build-tools/36.0.0，旧工具目录可回退；密钥与工具链是持久材料，不能删除整个 work/。新机器可设置：

| 环境变量 | 用途 |
| --- | --- |
| `ANDROID_SDK_ROOT` / `ANDROID_HOME` | SDK，当前构建使用 android-36 / build-tools 36.0.0 |
| `PHIGROS_NDK_ROOT` | Android NDK；当前使用 Linux x86-64 宿主编译器，输出 Android ARM64 |
| `PHIGROS_JAVAC` | javac，支持普通路径或 WSL 下 Windows .exe 路径 |
| `PHIGROS_KEYSTORE` | 已有更新签名的密钥文件；现有脚本使用 local-unlock 密码/alias 约定 |
| `PHIGROS_IL2CPP_DUMPER` / `PHIGROS_DOTNET` | dump 工具与运行时 |
| `PHIGROS_WATERMARK_FONT` | CJK 水印字体 |
| `PHIGROS_PROFILE` | 默认 profile；显式 --profile 优先 |

变量值必须使用执行进程所在系统的路径：WSL 用 `/home/...` 或 `/mnt/c/...`，原生 PowerShell 用 `C:\...`。Windows SDK 的 jar 文件可跨系统读取，但现有 `zipalign` 与 NDK 入口需要 Linux 可执行文件；完整构建按安装指南配置独立的 Linux SDK/NDK。

## 8. 设备验收和交接

安装前读取 adb 当前设备列表，使用本样本构建产物。分别记录安装/启动、选歌、练习跳转及预约恢复、倍速换曲与判定、头像切场景、收藏品和重启存档行为。没有设备或未实际交互的项目保留待验证状态。

把结果写入 evidence.md，关联具体 APK 摘要、构建记录、回放日志与设备记录。`static_verified`、回放通过、签名通过和实际游玩是不同证据；不能用另一个版本或历史包的设备反馈替代。

下一位 Agent 从仓库入口、profile/evidence.md 和本样本 work 下 handoff.md 继续。交接应包含：已完成/未解决项、差异报告、材料是否齐全、最后失败命令及下一条能执行的命令。只 clone 仓库时本地 APK、dump、SDK、NDK、签名和运行日志仍需另外补齐。
