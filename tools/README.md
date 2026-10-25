# 工具索引

[Mod 功能索引](../modules/README.md) · [构建指南](../docs/modding-guide.md) · [本地材料](../docs/local-materials.md)

## 正式构建

以下命令从仓库根目录以 `.venv/bin/python tools/<脚本>` 执行。构建脚本负责打包，功能实现见对应模块。

| 脚本 | 用途 | 功能源码 |
| --- | --- | --- |
| [build_all.py](build_all.py) | 按依赖构建全部 Mod；`--list` 预览，`--target collections` 只到基线 | [全部模块](../modules/README.md) |
| [build_unlock_apk.py](build_unlock_apk.py) | 基础解锁、共存包名、存档初始化及初始水印；提供共享 ZIP/签名工具 | [unlock](../modules/unlock/README.md)、[watermark](../modules/watermark/README.md) |
| [patch_anti_addiction.py](patch_anti_addiction.py) | 启动检查补丁 | [startup](../modules/startup/README.md) |
| [build_practice_apk.py](build_practice_apk.py) | Java/JNI、练习库、暂停场景打包 | [practice](../modules/practice/README.md) |
| [build_practice_watermark.py](build_practice_watermark.py) | 更新练习包菜单水印 | [watermark](../modules/watermark/README.md) |
| [build_skip_tutorial.py](build_skip_tutorial.py) | 教程标记写入 | [tutorial](../modules/tutorial/README.md) |
| [build_collections_apk.py](build_collections_apk.py) | 收藏品 Bootstrap | [collections](../modules/collections/README.md) |
| [build_speed_apk.py](build_speed_apk.py) | 倍速/头像共用原生库、Java、PNG 和 level0 打包 | [speed](../modules/speed/README.md)、[avatar](../modules/avatar/README.md) |

## 静态分析与资源提取

| 工具 | 用途 |
| --- | --- |
| [adump2.py](adump2.py)、[chapter9_trace.py](chapter9_trace.py) | 按 ELF PT_LOAD 映射反汇编；方法/字面量标注 |
| [adump.py](adump.py)、[disa.py](disa.py)、[rs.py](rs.py) | 早期反汇编与地址/重定位调查；地址假设先查源码 |
| [findcalls.py](findcalls.py)、[xref.py](xref.py) | 查调用及引用 |
| [chapter9_assets.py](chapter9_assets.py) | 提取 Unity 场景与第九章配置 |
| [inspect_debug_options.py](inspect_debug_options.py) | 提取调试组件、对象状态和按钮绑定 |
| [scan_bundles.py](scan_bundles.py)、[ufs_scan.py](ufs_scan.py) | UnityFS/bundle 资源扫描 |

## 运行时研究与历史实验

| 工具 | 源码行为 / 使用范围 |
| --- | --- |
| [lit_dump.py](lit_dump.py)、[lit_resolve.py](lit_resolve.py)、[live_scan.py](live_scan.py) | Frida 运行时字面量、槽位及对象调查 |
| [patch_all.py](patch_all.py)、[patch_save_crypto.py](patch_save_crypto.py) | 早期补丁实验，包含存档加解密入口替换；未被正式流水线调用 |
| [unlock_prefs.py](unlock_prefs.py) | 历史存档写入实验，含成绩写入 |
| [save_strip_records.py](save_strip_records.py) | 删除匹配的明文成绩项 |
| [deploy.sh](deploy.sh) | 历史原版包部署，硬编码原版路径及 UID |
| [frida](../frida/README.md) | 历史解锁 hook；当前整合包不依赖 Frida |

## 兼容链接

`chapter9_save.py`、`patch_min.py`、`watermark_scenes.py`、`practice/*`、`speedmod/*` 保持为符号链接，实际实现均在 `modules/`。`tools/speedmod/*` 现在指向 `modules/speed/*`。修改源码时进入模块目录；已有工具命令仍可使用。
