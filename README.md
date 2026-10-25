# Phigros Mods

Phigros 4.0.1.1 ARM64 本地 APK 修改项目：歌曲解锁、暂停练习进度条、水印、首次启动跳过教程和全收藏品解锁。代码、逆向资料、原始输入、成品及本地工具链均已归入此目录，不依赖旧工作区。没有创建或推送远程仓库。

## 给后续 agent

先读 [AGENTS.md](AGENTS.md) 和 [Mod 开发指南](docs/modding-guide.md)，了解修改层次、源码入口、构建依赖、缓存和验证方法。按功能查 [研究资料索引](analysis/README.md)，按路径查 [本地材料地图](docs/local-materials.md)。

## 模块

| 目录 | 功能 |
| --- | --- |
| `modules/unlock` | 章节、歌曲、已有谱面解锁；生成全收藏品计数，初始化加密进度，不注入成绩 |
| `modules/practice` | 通用暂停进度条、前后跳转、音符重建、预约播放时钟同步、移除暂停/倒计时模糊 |
| `modules/watermark` | 菜单场景水印，当前文字 `mod by ずんだもん` |
| `modules/tutorial` | `IsFirstRun=1`，跳过首次强制教程 |
| `modules/startup` | 防沉迷启动检查直接通过补丁 |
| `tools` | APK 构建、对齐和签名；旧模块名的符号链接用于兼容现有导入 |
| `analysis` | 实现说明，以及解锁构建使用的已提取配置 |

练习模式只支持普通单曲，成绩保持原处理。跨跳转点已开始的长按跳过；回到头部之前可重新练习。当前练习 v2 的同步和读谱效果已由用户确认。

## 当前成品

`dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections.apk`

基于现有练习/全曲解锁/跳过教程版，新增完整目录中 503 条文本收藏品的拥有与已阅读计数，以及 328 个曲绘键、109 个头像键。单独构建：`.venv/bin/python tools/build_collections_apk.py`。沿用原包名和签名，可以覆盖安装。实现、验证记录及已阅读键名修正见 [收藏品解锁说明](analysis/collections-unlock.md)。

包名 `com.PigeonGames.Phigros.unlock`。签名密钥及备份位于本地 `backups/`，不纳入 Git。各构建阶段的输入输出见 [Mod 开发指南](docs/modding-guide.md)。

## 本机验证

```bash
.venv/bin/python modules/practice/test_timing.py
```

回归脚本执行原始 ARM64 音频更新代码和编译后的生产时钟修复，覆盖暂停等待与恢复倒计时。它不代替实际音频输出延迟和曲内交互验证。

## 构建

```bash
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python tools/build_all.py
```

完整构建需要本地输入：

- 原始 `Phigros_4.0.1.1.apk`。
- `ildump/DummyDll`（UnityPy 类型树生成所需）。解锁配置已保存在 `analysis/chapter9-assets.json`。
- `work/practice/android-ndk-r27d`；Android SDK android-36、build-tools/36.0.0，设置 `ANDROID_SDK_ROOT`（Linux 路径）。
- JDK、apktool；当前 WSL 环境无 Linux javac 时使用脚本中配置的 Windows GraalVM。
- `work/apk-build/tools/usr` 下已有 zipalign、apksigner.jar 及配套运行库。
- `work/apk-build/local-unlock.jks`：从 `backups/signing-2026-10-20/local-unlock.jks` 恢复。不要在更新安装时更换密钥。

上述项目文件及 NDK 已实际迁入本目录；剩余模块兼容链接仅指向本仓库内部。Android SDK、JDK、apktool 仍是本机外部开发工具，迁到其他机器需安装并配置它们。不应提交原包、密钥、反编译 DLL、SDK 或成品到 Git。

流水线依次生成：解锁水印基础包 → 启动检查补丁 → 练习 v2 → mod 水印 → 跳过教程 → 全收藏品最终包。后续步骤使用前一步产物，因此清理旧产物后应执行完整构建，或先恢复对应输入。

验证证据及其范围见 [已验证结果汇总](总结.md)。

## 研究与本地资料

- [调试选项与重演逻辑还原](analysis/debug-options.md)：禁用的状态检查组件、重演／模拟模式、Unity 渲染调试残留及原版场景证据。
- `analysis/`：已核实的实现说明、反汇编、提取配置与诊断证据。
- `tools/`、`frida/`：原工作区的分析工具与运行时脚本；研究脚本不属于默认构建流程。
- `ildump/`、`.dotnet/`：IL2CPP dump、DummyDll、反编译工具及其本地运行时。
- `work/`：提取资源、Java 源码、Unity 场景、原始 SO、本地 NDK 和打包工具。
- `save/`、`shots/`：历史存档样本、调试截图；只保留在本地，不提交 Git。
- [总结.md](总结.md)：当前实现与已验证结果汇总。

仅 `git clone` 不包含被忽略的原包、本地工具链和签名备份；补齐输入的方法见 [本地材料地图](docs/local-materials.md)。
