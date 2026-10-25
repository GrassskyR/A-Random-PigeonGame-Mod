# 谱面倍速（pitch + 时间变换）

成品：`dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections_Speed.apk`，在全收藏品版基础上叠加。源码位于 `modules/speedmod/`，构建入口为 `tools/build_speed_apk.py`。用户已确认倍速功能可用。

## 原理

谱面时间轴完全由 `ProgressControl.nowTime = AddressableAudioSource.time(0x40) − offset` 驱动：`JudgeLineControl.UpdateInfo` 每帧读 `ProgressControl.nowTime`(0x90) 参数化判定线/音符位置，判定窗口也跟随。因此倍速只需两件事：

1. **音频变速**：调用游戏自身的 `UnityEngine.AudioSource.set_pitch` 包装（RVA `0x3C18438`，内部自行解析 icall，注册名为 `SetPitch(AudioSource, Single)`，与 C# 属性名不同）。音频对象内嵌 Unity AudioSource（0x30 字段）。
2. **谱面时间变换**：音频对象的内部时钟按真实时间推进（deltaTime/DSP 漂移校正），与 pitch 后的媒体位置差一个速率。`ProgressControl.Update` hook 在原函数执行前把 `audio.time` 按锚点仿射变换 `warped = anchor_w + (raw − anchor_r)×speed` 放大读数，执行后还原为真实值。锚点在任何「raw == 真实媒体位置」的时刻重取：新 AudioSource、倍速切换（保持当前谱面位置连续）、以及每帧跳变检测（raw 倒退或超过 2.5×实时增量即视为游戏重锚，覆盖预约恢复、练习 Seek、重开）。

## 判定窗口补偿

`JudgeControl.Perfect/Good/BadTimeRange` 是谱面时间的静态窗口（cctor `0x1D766F4` 种子 0.08/0.08/0.22），判定、长按保持、自动 Miss、早晚显示都读它。倍速 S 下真实毫秒容差会缩为 1/S，因此应用 pitch 的同时把三个静态值写为 `原值×S`，真实时间窗口与 1x 一致。原值在首次访问时缓存（经 metadata 槽 `0x418D918` → class → 静态区 `+0xB8` 的 `+0x4/+0x8/+0xC`），换 AudioSource（进新关卡）时恢复 1x 原值待下次缩放。长按持续时长来自音符 `holdTime`（谱面秒），随倍速缩短，不补偿。

## Hook 点

| 方法 | RVA | 用途 |
| --- | --- | --- |
| `SongSelector.Update` | `0x1DA7DFC` | 选歌场景心跳，驱动 Java 面板显隐 |
| `ProgressControl.Update` | `0x1D88268` | 谱面时间变换 + pitch 应用 |

两个入口前 16 字节均为纯栈/寄存器指令，可安全复制进 trampoline。**`AddressableAudioSource.Seek`(0x1DB837C) 入口含 `adrp`（PC 相对），不可用此方式挂接**——v1 曾因对其建 trampoline 导致练习模式拖动必崩（野指针段错误），v2 起由跳变检测替代。`Pause.Update`/`PlayScheduled` 已被 libpractice 挂接，本模块不得重复挂。

## UI

`SpeedOverlay`（classes3.dex）挂在 `UnityPlayerActivity.onCreate`，仅 SongSelector 场景显示：0.50x–2.00x 滑条，步进 0.01x，松手提交（与练习进度条一致）。倍速跨局保持，AudioSource 组件重建时自动重设 pitch 与判定窗口。

## 验证

- `modules/speedmod/test_speed.py`：Unicorn 回放原始 `AddressableAudioSource.Update` × 24 场景（6 档倍速 × 暂停 0/3s × 是否中途 Seek），谱面时钟漂移最差 0.092ms（模型测量，非真机音频延迟）。
- 原练习时钟回归 `modules/practice/test_timing.py` 不受影响。
- 与输入包 diff：仅新增 `classes3.dex`、`libspeed.so`，`classes.dex` 增加 attach 调用；其余条目逐字节一致。v2/v3 签名、对齐通过。
- 设备：MuMu 安装启动正常，两库日志确认挂载（`speed hooks installed (v2)`）；用户确认倍速生效、练习模式无冲突。音频变调为 pitch 方案的固有行为。

## 构建

```bash
.venv/bin/python modules/speedmod/test_speed.py
.venv/bin/python tools/build_speed_apk.py
```

输入 `_Practice_mod_AllCollections.apk`，输出 `_AllCollections_Speed.apk`。DEX 壳缓存位于 `work/speedmod/shell`；上游 DEX 变更后需移走重解码。
