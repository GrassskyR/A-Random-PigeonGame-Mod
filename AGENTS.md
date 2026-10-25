# Phigros Mod 开发入口

本仓库针对 **Phigros 4.0.1.1 / Unity 2022.3.62f2 / IL2CPP / ARM64**。先阅读本文件，再按任务读取资料；无需从头扫描全部反汇编。

原版 APK 的 SHA-256：`d373432ce775d9c8b3f4af9f72ff79a14c39dd159735cfc202b75a78a1835a14`。开始分析或单步构建前，在仓库根目录运行 `sha256sum -c Phigros_4.0.1.1.apk.sha256`；总构建在提取/构建前自动校验。版本号相同但摘要不同也按不同样本处理，不能复用固定 RVA、场景引用和缓存。详情见 [材料地图](docs/local-materials.md)。

## 从哪里开始

1. [README.md](README.md)：当前成品、功能和完整构建入口。
   新 Agent 可直接接着读 [接手速查](docs/handoff.md)，包含当前状态、speed/avatar 修改入口、线程顺序和最短验证路径。
2. [Mod 功能索引](modules/README.md)：八个模块；每个模块 README 统一列功能、源码、构建和验证。
3. [Mod 开发指南](docs/modding-guide.md)：定位逻辑、选择修改层、构建、验证和交接步骤。
4. [研究资料索引](analysis/README.md)、[工具索引](tools/README.md)：实现证据及工具用途。
5. [本地材料地图](docs/local-materials.md)：原包、元数据、工具链、缓存、存档和成品的位置。

当前基线：`dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections.apk`，包名 `com.PigeonGames.Phigros.unlock`。已有全曲/已有难度解锁、普通单曲暂停练习、水印、跳过教程及全收藏品。用户已确认全收藏品 Mod 完成；细分验证记录见 [收藏品说明](analysis/collections-unlock.md)。

最新整合包为同目录 `_Practice_mod_AllCollections_Speed.apk`，增加倍速和自定义头像。倍速已有用户确认；头像跨场景修复已过回放/包检查，仍待设备交互确认。`build_all.py` 默认构建整合包；`--target collections` 停在基线，`--list` 只预览步骤。

## 修改约定

- 功能源码、资源和回归修改 `modules/<功能>/`；`tools/` 负责打包与分析。`tools/chapter9_save.py`、`tools/patch_min.py`、`tools/watermark_scenes.py`、`tools/practice/*`、`tools/speedmod/*` 是兼容符号链接，保留链接，修改实际模块。倍速源码统一为 `modules/speed/`，头像源图为 `modules/avatar/assets/zundamon.png`。
- 全收藏品计数在 `modules/collections/progress.py`；共享存档编解码和第九章进度在 `modules/unlock/chapter9_save.py`，旧收藏品函数导入仍可用。倍速和头像目前共享 `libspeed.so` 与 `build_speed_apk.py` 打包步骤。
- speed/avatar 按 `AvatarAssets.read` → JNI `initialize` / `avatar_prepare` → 单一安装线程 → `avatar_install` 顺序启动；头像资源及 IL2CPP 绑定由头像模块私有持有，公开接口为 `modules/avatar/avatar.h`。安装器只定位/绑定/挂钩，Unity 对象仍在游戏回调线程访问。共享存档 Smali 写入复用 `bootstrap_entries`，由 `bootstrap_smali` 组装完整 Bootstrap。
- 当前正式路线保留游戏存档加密，不注入成绩。不要直接执行 `patch_min.py` 的默认全部分组：默认包含 `crypto`；正式构建只选 `chart/song/chapter`，另补显示条件。
- 原始 `work/lib/arm64-v8a/libil2cpp.so` 用于定位和回归，不用补丁库覆盖它。新补丁记录原字节、RVA、替换指令并做断言；版本变更须重新定位。
- RVA、文件偏移、运行时地址分开处理。按 ELF `PT_LOAD` 映射；`VA - 0x4000` 仅适用于当前样本的代码段。通用映射参考 `tools/adump2.py::load_segs`。
- Unity 对象访问在 Unity 线程执行；练习 UI 通过 JNI 原子请求交给 `Pause.Update`。修改时钟应复用 `practice_clock.h` 并运行时钟回归。
- 构建按 `tools/build_all.py` 的依赖顺序执行。单步构建必须先确认输入包；修改上游 DEX 后检查下游 shell 缓存，完整流水线不等于清空缓存重建。
- 覆盖安装沿用本地签名密钥。缺失时先检查 `backups/`；基础构建在找不到密钥时会自动生成新密钥，不能把它当成原签名的替代。
- 原包、成品、私有存档、签名文件、SDK/NDK、反编译输出继续留在现有忽略目录；文档记录路径和复现方法。

## 按改动验证

- 文档：核对链接、命令和实际脚本，执行 `git diff --check`。
- 原生补丁：核对原字节、反汇编、修改范围和返回 ABI。
- 练习时钟：`.venv/bin/python modules/practice/test_timing.py`；它是原生代码回放，不代表真机音频延迟测量。
- 倍速/头像：`.venv/bin/python modules/speed/test_speed.py`、`.venv/bin/python modules/avatar/test_avatar.py`；头像回放模拟 Unity/IL2CPP 边界，不代表真机渲染验证。
  倍速同时运行生产 Update 和 24 个音频模型场景；头像共六项（含单次启动顺序）。两个脚本各自编译所需库，顺序执行，避免同时覆盖 `work/speedmod/libspeed.so`。
- 场景/收藏品：核对对象或目录数据、加密写入及非目标数据保留情况。
- APK：运行脚本中的签名、对齐及包内条目比较；设备验证另记安装、启动、实际交互结果。

提交/交接时写清修改入口、输入输出包、验证结果和验证范围，并更新对应功能说明。文档只保留有源码、原生指令、资源数据、产物检查或实际反馈支持的结论，注明证据类型；结论失效时直接删除或替换，同步移除对应的旧操作说明。
