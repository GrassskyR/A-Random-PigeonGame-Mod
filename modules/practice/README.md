# 暂停练习

[项目首页](../../README.md) · [Agent 接手速查](../../docs/handoff.md)

[全部 Mod](../README.md) · [构建流程](../../docs/modding-guide.md#7-构建与缓存) · [实现与证据](../../analysis/practice-mode-implementation.md)

版本适配使用 [统一工作流](../../docs/workflows/port-version.md) 与 [版本档案](../../profiles/README.md)。以下命令默认选择已验证的 4.0.1.1 样本，可加 `--profile <sample-id>`；输入/输出按样本隔离，单步构建会核对上游记录。

## 功能

普通单曲暂停后前后跳转、重建音符、预约恢复播放，并移除暂停/倒计时模糊。跨跳转点已开始的长按跳过，回到头部之前可重新练习。

## 源码

| 文件 | 用途 |
| --- | --- |
| [practice.c](practice.c) | Unity 线程上的跳转、音符重建和时钟修复 |
| [practice_clock.h](practice_clock.h) | 预约恢复时钟 |
| [PracticeOverlay.java](PracticeOverlay.java) | 暂停进度条与 JNI 请求 |
| [pause_scene.py](pause_scene.py) | 普通单曲场景去模糊 |
| [test_timing.py](test_timing.py) | 原生时钟回放 |

## 构建

在仓库根目录执行：

```bash
.venv/bin/python tools/build_practice_apk.py
```

`_NoAntiAddiction.apk` → `_Practice_v2.apk`；后续水印阶段输出 `_Practice_mod.apk`。 完整包名及依赖顺序见构建流程。

## 验证

运行 `.venv/bin/python modules/practice/test_timing.py`。同步及读谱效果已有用户确认；回放不代表设备音频延迟测量。
