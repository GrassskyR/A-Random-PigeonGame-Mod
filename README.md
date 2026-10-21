# Phigros Mods

Phigros 4.0.1.1 ARM64 本地 APK 修改项目：歌曲解锁、暂停练习进度条、水印和首次启动跳过教程。原始逆向工作目录位于 `../phigros-test`，此仓库维护交付功能与构建链。没有创建或推送远程仓库。

## 模块

| 目录 | 功能 |
| --- | --- |
| `modules/unlock` | 章节、歌曲、已有谱面解锁；初始化加密进度，不注入成绩 |
| `modules/practice` | 通用暂停进度条、前后跳转、音符重建、预约播放时钟同步、移除暂停/倒计时模糊 |
| `modules/watermark` | 菜单场景水印，当前文字 `mod by ずんだもん` |
| `modules/tutorial` | `IsFirstRun=1`，跳过首次强制教程 |
| `modules/startup` | 防沉迷启动检查直接通过补丁 |
| `tools` | APK 构建、对齐和签名；旧模块名的符号链接用于兼容现有导入 |
| `analysis` | 实现说明，以及解锁构建使用的已提取配置 |

练习模式只支持普通单曲，成绩保持原处理。跨跳转点已开始的长按跳过；回到头部之前可重新练习。当前练习 v2 的同步和读谱效果已由用户确认。

## 当前成品

`dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_SkipTutorial.apk`

包名 `com.PigeonGames.Phigros.unlock`。签名密钥及备份位于本地 `backups/`，不纳入 Git。旧版本保留了原始解锁版、mod 练习版用于比较，其余过期产物已清理。

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

当前本机保留了上述依赖；大部分通过指向原工作区的符号链接复用。迁到其他机器时需按以上路径放置，不应提交原包、密钥、反编译 DLL、SDK 或成品到 Git。

流水线依次生成：解锁水印基础包 → 启动检查补丁 → 练习 v2 → mod 水印 → 跳过教程最终包。后续步骤使用前一步产物，因此清理旧产物后应执行完整构建，或先恢复对应输入。

本次整理未重新打包数 GB 的完整流水线；已验证模块导入、原生时钟回归及最新 APK 签名，成品字节保持不变。
