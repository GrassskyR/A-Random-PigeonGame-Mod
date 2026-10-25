# 全收藏品解锁

[项目首页](../../README.md) · [Agent 接手速查](../../docs/handoff.md)

[全部 Mod](../README.md) · [构建流程](../../docs/modding-guide.md#7-构建与缓存) · [实现与证据](../../analysis/collections-unlock.md)

## 功能

初始化 503 条文本收藏品的拥有/已读计数、328 个曲绘键和 109 个头像键，共 1,077 个存档键。

## 源码

| 文件 | 用途 |
| --- | --- |
| [progress.py](progress.py) | 从收藏品目录和 keyStore 生成全量计数 |

## 构建

在仓库根目录执行：

```bash
.venv/bin/python tools/build_collections_apk.py
```

`_Practice_mod_SkipTutorial.apk` → `_Practice_mod_AllCollections.apk`。 完整包名及依赖顺序见构建流程。

## 验证

目录、加密计数、DEX、ARM64 判定回放及用户确认见实现说明。计数生成已与迁移前逐项比较一致。
