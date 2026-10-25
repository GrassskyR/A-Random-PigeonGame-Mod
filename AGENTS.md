# Phigros Mod 开发入口

本仓库针对 **Phigros 4.0.1.1 / Unity 2022.3.62f2 / IL2CPP / ARM64**。先阅读本文件，再按任务读取资料；无需从头扫描全部反汇编。

## 从哪里开始

1. [README.md](README.md)：当前成品、功能和完整构建入口。
2. [Mod 开发指南](docs/modding-guide.md)：定位逻辑、选择修改层、构建、验证和交接步骤。
3. [研究资料索引](analysis/README.md)：按功能定位实现说明、配置和原始证据。
4. [本地材料地图](docs/local-materials.md)：原包、元数据、工具链、缓存、存档和成品的位置。

当前基线：`dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections.apk`，包名 `com.PigeonGames.Phigros.unlock`。已有全曲/已有难度解锁、普通单曲暂停练习、水印、跳过教程及全收藏品。用户已确认全收藏品 Mod 完成；细分验证记录见 [收藏品说明](analysis/collections-unlock.md)。

## 修改约定

- 功能源码修改 `modules/`；`tools/` 负责打包与分析。`tools/chapter9_save.py`、`tools/patch_min.py`、`tools/watermark_scenes.py` 和 `tools/practice/*` 是兼容符号链接，保留链接，修改实际模块。
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
- 场景/收藏品：核对对象或目录数据、加密写入及非目标数据保留情况。
- APK：运行脚本中的签名、对齐及包内条目比较；设备验证另记安装、启动、实际交互结果。

提交/交接时写清修改入口、输入输出包、验证结果和验证范围，并更新对应功能说明。文档只保留有源码、原生指令、资源数据、产物检查或实际反馈支持的结论，注明证据类型；结论失效时直接删除或替换，同步移除对应的旧操作说明。
