# Phigros Mods

Phigros **4.0.1.1 / Unity 2022.3.62f2 / IL2CPP / ARM64** 的本地 Mod 项目。包括全曲解锁、暂停练习、倍速、菜单水印、跳过教程、启动检查补丁、全收藏品和自定义头像。

## 从哪里看

| 目的 | 入口 |
| --- | --- |
| 新 Agent 接手与最短验证路径 | [Agent 接手速查](docs/handoff.md) |
| 按功能找源码、构建和验证 | [Mod 功能索引](modules/README.md) |
| 阅读某个 Mod | 对应 `modules/<功能>/README.md`，统一为功能、源码、构建、验证四部分 |
| 修改或开发功能 | [AGENTS.md](AGENTS.md)、[Mod 开发指南](docs/modding-guide.md) |
| 查 RVA、场景配置和原始证据 | [研究资料索引](analysis/README.md) |
| 找构建脚本或分析工具 | [工具索引](tools/README.md) |
| 找原包、工具链、缓存和签名 | [本地材料地图](docs/local-materials.md) |
| 核对已验证功能和产物 | [结果汇总](总结.md) |

## 项目结构

```text
modules/                 # 按 Mod 分类的源码、资源、回归和 README
  unlock/                # 章节、歌曲、已有难度；共享存档编解码
  startup/               # 启动检查补丁
  practice/              # 暂停跳转、音符重建、时钟、去模糊
  watermark/             # 菜单水印
  tutorial/              # 跳过首次教程
  collections/           # 文本收藏品、曲绘、原有头像的计数
  speed/                 # 音频与谱面倍速、判定窗口补偿
  avatar/                # 自定义头像、PNG、Sprite 生命周期
tools/                  # 构建编排、签名打包、分析工具和兼容链接
docs/                   # Agent 接手速查、开发流程、本地材料地图
analysis/               # 实现细节、配置数据及原始研究证据
frida/                  # 历史运行时研究脚本
work/、dist/             # 本地中间产物、成品（忽略目录）
```

## 当前成品

| 产物 | 内容 |
| --- | --- |
| `dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections_Speed.apk` | 最新整合包：全部八个模块；头像跨场景修复已过回放，待设备交互确认 |
| `dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections.apk` | 全收藏品基线：全曲、练习、水印、跳教程、启动检查、原有收藏品；供整合包继续加工 |

包名 `com.PigeonGames.Phigros.unlock`，沿用本地签名，可覆盖同签名共存版。用户已确认全曲、练习 v2、水印、全收藏品及倍速变速效果；倍速的判定补偿覆盖问题已修复，[真实时间容差的回放已通过，实际手感待用户验收](analysis/speed-mod.md#判定窗口补偿)；各功能的证据和验证范围见模块说明。普通单曲练习的成绩沿用原处理，跨跳转点已开始的长按跳过。

## 构建

```bash
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python tools/build_all.py --list       # 只看依赖顺序
.venv/bin/python tools/build_all.py              # 全部 Mod，输出最新整合包
```

只构建全收藏品基线：`.venv/bin/python tools/build_all.py --target collections`。单步构建入口见 [模块索引](modules/README.md)，精确输入输出及缓存行为见 [开发指南](docs/modding-guide.md#7-构建与缓存)。

完整构建需要原始 APK、配套 `ildump/DummyDll`、`work/practice/android-ndk-r27d`、Android SDK android-36 / build-tools 36.0.0、JDK、apktool 和 `work/apk-build/tools/usr` 下的签名/对齐工具。Android SDK 可用 `ANDROID_SDK_ROOT` 指定；无 Linux javac 时脚本使用本机 Windows GraalVM 回退路径。已有密钥入口为 `work/apk-build/local-unlock.jks`，备份位于 `backups/signing-2026-10-20/`。完整路径及迁移方法见 [本地材料地图](docs/local-materials.md)。

原版 `Phigros_4.0.1.1.apk` 的 SHA-256 为 `d373432ce775d9c8b3f4af9f72ff79a14c39dd159735cfc202b75a78a1835a14`。下载后运行 `sha256sum -c Phigros_4.0.1.1.apk.sha256`；总构建也会自动校验。同版本号但摘要不同的包，须重新定位后才能使用，详见 [样本校验说明](docs/local-materials.md#原始输入与反编译输出不入-git)。

## 本机验证

```bash
.venv/bin/python modules/practice/test_timing.py
.venv/bin/python modules/speed/test_speed.py
.venv/bin/python modules/speed/test_judgement.py
.venv/bin/python modules/avatar/test_avatar.py
```

回放执行原始 ARM64 方法或编译后的生产代码，头像测试模拟 Unity/IL2CPP 边界。它们不代替设备交互、渲染和实际音频延迟测量。APK 构建器另行检查签名、对齐与包内条目。

倍速测试包含生产 Update 回放和 24 个音频模型场景；`test_judgement.py` 另执行真实窗口写回和五处 Drag/Flick/Hold 门槛；头像测试包含六项检查及初始化顺序。speed/avatar 采用先准备 PNG、再由一个线程安装的顺序，接口和线程分工见 [接手速查](docs/handoff.md#运行顺序与线程)。只改这两个模块时，确认全收藏品基线后执行 `.venv/bin/python tools/build_speed_apk.py` 即可。

## 本地材料

原包、反编译输出、SDK/NDK、成品、存档、截图及签名文件继续放在现有忽略目录。头像源图位于 `modules/avatar/assets/zundamon.png`，是模块资源。`tools/` 中旧入口的兼容符号链接保留，统一指向真实模块。

仅 `git clone` 不包含大型输入和私有本地材料；补齐方式见 [材料地图](docs/local-materials.md)。
