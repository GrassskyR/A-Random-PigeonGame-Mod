# 已核实资料索引

[项目首页](../README.md) · [Agent 接手速查](../docs/handoff.md)

按功能查当前实现和证据。原生指令、元数据及资源解析标为静态证据；构建检查、代码回放、设备结果和用户反馈按各自范围记录。开发流程见 [指南](../docs/modding-guide.md)，输入位置见 [材料地图](../docs/local-materials.md)。

找源码和构建入口先看 [Mod 功能索引](../modules/README.md)；此目录保留实现细节、配置和研究证据。

## 实现说明

| 功能 | 当前说明 | 证据/实现 |
| --- | --- | --- |
| 当前功能和产物 | [结果汇总](../总结.md) | 当前 APK、用户反馈、各项验证记录 |
| 全曲解锁 | [phigros-unlock-analysis.md](phigros-unlock-analysis.md) | 六处补丁、原始库、当前构建器 |
| 第九章原版机制 | [chapter9-logic.md](chapter9-logic.md) | 地图、歌曲配置、事件和状态机的静态证据 |
| 全收藏品/曲绘/头像 | [collections-unlock.md](collections-unlock.md) | modules/collections、collections.json、keyStore、DEX、ARM64 回放和设备记录 |
| 自定义头像与切场景修复 | [custom-avatar.md](custom-avatar.md) | modules/avatar、原版加载器指令、ARM64 回放；设备交互待验证 |
| 普通单曲练习 v2 | [practice-mode-implementation.md](practice-mode-implementation.md) | modules/practice、时钟回归、用户反馈 |
| 谱面倍速 | [speed-mod.md](speed-mod.md) | modules/speed、Unicorn 时钟回归、用户确认 |
| 共存包启动资源 | [apk-startup-fix.md](apk-startup-fix.md) | 资源表代码、崩溃栈、启动验证 |
| 原版启动检查 | [anti-addiction-logic.md](anti-addiction-logic.md) | ARM64 指令和 Java SDK 代码 |
| 重演与调试组件 | [debug-options.md](debug-options.md) | 方法指令、38 个场景和输入配置 |
| 跳过教程 | `modules/tutorial/config.py`、`tools/build_skip_tutorial.py` | [tutorial-startup.asm](tutorial-startup.asm) |

## 配置和原始证据

| 主题 | 文件 |
| --- | --- |
| 章节/歌曲/地图配置 | `chapter9-assets.json`、`chapter9-song-config.json`、`chapter9-catalog.json`、`chapter9-unity-index.json` |
| 完整收藏品 | `collections.json`、`chapter9-collection-texts.json`、`chapter9-collection-save.asm` |
| 核心门槛 | `chapter9-gates.asm`、`chapter9-gates-calls.asm`、`chapter9-song-gates.asm` |
| 第一阶段 | `chapter9-phase1-rules.asm`、`chapter9-phase1-complete.asm`、`chapter9-events.asm`、`chapter9-hidden-challenge.asm` |
| 第二阶段/挑战 | `chapter9-progress.asm`、`chapter9-flow.asm`、`chapter9-judgement.asm`、`chapter9-challenge.asm`、`chapter9-challenge-ending.asm` |
| 密码/结局 | `chapter9-password-ending.asm`、`chapter9-ending-calls.asm`、`chapter9-final-calls.asm` |
| 扩展调用 | `chapter9-details.asm`、`chapter9-details-calls.asm`、`chapter9-all-calls.asm`、`chapter9-extra-calls.asm`、`chapter9-save-and-unlock-calls.asm` |
| 存档读取样本 | `chapter9-save-audit.txt`、`chapter9-save-audit-encrypted.txt`、`chapter9-key-xrefs.txt` |
| 启动/加密 | `apk-awake.asm`、`apk-c8-keys.asm`、`apk-startup-calls.asm`、`save-crypto-init.asm`、`anti-addiction-arm64.asm`、`apk-crash-before.txt` |
| 重演系统 | `debug-options-scenes.json`、`debug-options-xrefs.json`、`debug-options-*.asm` |

原始证据按生成时的样本解释：存档审计描述对应输入 XML，崩溃栈记录对应失败包，均不作为当前成品状态。JSON/汇编结论应与同版原始输入和当前功能说明对应。

新增结论应附可定位的代码、方法/RVA、配置字段或验证记录；替换失效结论时同步清理旧正文和索引。
