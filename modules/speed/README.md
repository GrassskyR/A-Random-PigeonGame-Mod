# 谱面倍速

[全部 Mod](../README.md) · [构建流程](../../docs/modding-guide.md#7-构建与缓存) · [实现与证据](../../analysis/speed-mod.md)

## 功能

选歌界面提供 0.50x–2.00x 滑条，音频 pitch 与谱面时间同步，并补偿判定窗口。倍速跨局保持。

## 源码

| 文件 | 用途 |
| --- | --- |
| [speedmod.c](speedmod.c) | 音频 pitch、谱面时间变换、原生 hook 安装 |
| [speed_clock.h](speed_clock.h) | 锚点与时间变换 |
| [SpeedOverlay.java](SpeedOverlay.java) | 倍速滑条；读取头像 PNG 并提交原生层 |
| [test_speed.py](test_speed.py) | 倍速、暂停与 Seek 回放 |

## 构建

在仓库根目录执行：

```bash
.venv/bin/python tools/build_speed_apk.py
```

`_Practice_mod_AllCollections.apk` → `_Practice_mod_AllCollections_Speed.apk`。同一步合入自定义头像，生产库为 `libspeed.so`，工作目录沿用 `work/speedmod/`。 完整包名及依赖顺序见构建流程。

## 验证

运行 `.venv/bin/python modules/speed/test_speed.py`。倍速已有用户确认；头像修复的设备验证单独记录。
