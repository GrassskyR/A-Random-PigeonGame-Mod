# 谱面倍速

[项目首页](../../README.md) · [Agent 接手速查](../../docs/handoff.md)

[全部 Mod](../README.md) · [构建流程](../../docs/modding-guide.md#7-构建与缓存) · [实现与证据](../../analysis/speed-mod.md)

版本适配使用 [统一工作流](../../docs/workflows/port-version.md) 与 [版本档案](../../profiles/README.md)。以下命令默认选择已验证的 4.0.1.1 样本，可加 `--profile <sample-id>`；输入/输出按样本隔离，单步构建会核对上游记录。

## 功能

选歌界面提供 0.50x–2.00x 滑条，音频 pitch 与谱面时间同步，倍速跨局保持。判定窗口在原版每帧写回后补偿，Drag/Flick/Hold 五处独立门槛也按倍速缩放，保持真实时间容差；实际手感待用户检查，见[判定实现](../../analysis/speed-mod.md#判定窗口补偿)。

## 源码

| 文件 | 用途 |
| --- | --- |
| [speedmod.c](speedmod.c) | 音频 pitch、谱面时间变换、原生 hook 安装、单一初始化线程 |
| [speed_judgement.c](speed_judgement.c)、[speed_judgement.h](speed_judgement.h) | 五处独立判定门槛、附近空闲页跳板及原字节校验 |
| [speed_clock.h](speed_clock.h) | 锚点与时间变换 |
| [SpeedOverlay.java](SpeedOverlay.java) | 倍速滑条、同步请求及整合模块初始化；PNG 读取委托头像模块 |
| [test_speed.py](test_speed.py) | 倍速、暂停与 Seek 回放 |
| [test_judgement.py](test_judgement.py) | 真实窗口写回、普通/挑战模式、独立门槛及分支跳板回放 |

## 构建

在仓库根目录执行：

```bash
.venv/bin/python tools/build_speed_apk.py
```

`_Practice_mod_AllCollections.apk` → `_Practice_mod_AllCollections_Speed.apk`。同一步合入自定义头像，生产库为 `libspeed.so`，工作目录为 `work/versions/<sample-id>/speed/`。完整包名及依赖顺序见构建流程。

## 验证

运行 `.venv/bin/python modules/speed/test_speed.py`，同时覆盖生产 Update 的状态变化及 24 个音频时钟模型场景。倍速已有用户确认；另运行 `.venv/bin/python modules/speed/test_judgement.py`，确认真实窗口写回及五处独立门槛；本次判定修复的实际手感由用户验收，头像修复的设备验证单独记录。
