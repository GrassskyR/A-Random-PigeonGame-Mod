# 跳过首次教程

[项目首页](../../README.md) · [Agent 接手速查](../../docs/handoff.md)

[全部 Mod](../README.md) · [构建流程](../../docs/modding-guide.md#7-构建与缓存) · [结果汇总](../../总结.md)

## 功能

在 Unity 初始化前写入原游戏教程完成标记 `IsFirstRun=1`。

## 源码

| 文件 | 用途 |
| --- | --- |
| [config.py](config.py) | 教程完成键和值 |

## 构建

在仓库根目录执行：

```bash
.venv/bin/python tools/build_skip_tutorial.py
```

`_Practice_mod.apk` → `_Practice_mod_SkipTutorial.apk`。 完整包名及依赖顺序见构建流程。

## 验证

构建时检查加密键值和启动接入。标记依据原教程完成流程；原始证据为 `analysis/tutorial-startup.asm`。
