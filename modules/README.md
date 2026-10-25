# Mod 功能索引

每个功能目录按「功能 → 源码 → 构建 → 验证」组织 README。先从功能进入，具体 RVA、对象布局和历史证据再查 [analysis](../analysis/README.md)。

| Mod | 模块入口 | 构建脚本（位于 tools） | 验证状态 |
| --- | --- | --- | --- |
| 章节、歌曲、已有难度解锁 | [unlock](unlock/README.md) | `build_unlock_apk.py` | 原生补丁、存档检查；用户确认 |
| 启动检查补丁 | [startup](startup/README.md) | `patch_anti_addiction.py` | 原字节、返回 ABI、产物检查 |
| 暂停练习与去模糊 | [practice](practice/README.md) | `build_practice_apk.py` | 时钟回放；用户确认同步与读谱 |
| 菜单水印 | [watermark](watermark/README.md) | 基础构建 + `build_practice_watermark.py` | 场景断言；用户确认 |
| 跳过首次教程 | [tutorial](tutorial/README.md) | `build_skip_tutorial.py` | 原游戏标记、加密写入检查 |
| 全收藏品、曲绘和原有头像 | [collections](collections/README.md) | `build_collections_apk.py` | 目录、DEX、判定回放；用户确认 |
| 谱面倍速 | [speed](speed/README.md) | `build_speed_apk.py` | 时钟回放；用户确认 |
| 自定义 Zundamon 头像 | [avatar](avatar/README.md) | 与倍速同一步 | 回放与包检查通过；跨场景修复待设备确认 |

## 组合关系

```mermaid
flowchart LR
    A[原始 APK] --> B[解锁 + 初始水印]
    B --> C[启动检查]
    C --> D[暂停练习]
    D --> E[mod 水印]
    E --> F[跳过教程]
    F --> G[全收藏品基线]
    G --> H[倍速 + 自定义头像整合包]
```

总入口 `.venv/bin/python tools/build_all.py` 默认执行到整合包；`--target collections` 停在全收藏品基线；`--list` 只列步骤。完整输入输出见 [构建指南](../docs/modding-guide.md#7-构建与缓存)。

`speed` 和 `avatar` 分别维护功能源码，但目前共同编译进 `libspeed.so`；Java 接入与 APK 打包由同一步完成。`unlock/chapter9_save.py` 提供共享的存档编解码，收藏品计数的正式实现位于 `collections/progress.py`，旧导入仍可用。

## 维护约定

功能实现、资源及回归放在对应模块；构建、签名和打包放在 [tools](../tools/README.md)；研究说明及原始证据放在 [analysis](../analysis/README.md)。新增 Mod 时补模块 README、本表和总构建中的依赖位置，验证状态按实际证据填写。
