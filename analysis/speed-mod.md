# 谱面倍速（pitch + 时间变换）

[项目首页](../README.md) · [Agent 接手速查](../docs/handoff.md)

成品：`dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections_Speed.apk`，在全收藏品版基础上叠加。源码位于 `modules/speed/`，构建入口为 `tools/build_speed_apk.py`。用户已确认倍速功能可用；当前构建还合入[自定义头像及切场景修复](custom-avatar.md)，头像修复尚待设备交互验证。

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

## 初始化和模块边界

`SpeedOverlay.attach` 加载库，委托 `AvatarAssets.read` 读取 PNG，再调用 JNI `initialize(png)`。原生入口先让头像模块复制 PNG，再启动唯一安装线程；该线程定位 libil2cpp、安装倍速 hook、调用 `avatar_install`，最后发布 ready。重复接入不重复安装，PNG 读取失败不阻止倍速启动。没有 speed 的 JNI_OnLoad，也没有 JNI 内第二个等库轮询。

判定窗口写入和恢复统一走 `scale_windows`；每帧只取一次单调时钟，生产 hook 暂时写入 warped time，原函数返回后恢复 raw。

## UI

`SpeedOverlay`（classes3.dex）挂在 `UnityPlayerActivity.onCreate`，仅 SongSelector 场景显示：0.50x–2.00x 滑条，步进 0.01x，松手经 JNI 同步写入原子请求，拖动期间不被状态轮询覆盖；无需提交后的额外延时。倍速跨局保持，AudioSource 组件重建时自动重设 pitch 与判定窗口。

## 验证

- `modules/speed/test_speed.py`：先回放生产 `ProgressControl.Update`，覆盖变速连续性、Seek、换曲、pitch/判定窗口和 raw 时钟恢复；再用 Unicorn 回放原始 `AddressableAudioSource.Update` × 24 场景（6 档倍速 × 暂停 0/3s × 是否中途 Seek），谱面时钟漂移最差 0.092ms（模型测量，非真机音频延迟）。
- 原练习时钟回归 `modules/practice/test_timing.py` 不受影响。
- 早期倍速版与输入包 diff：新增 `classes3.dex`、`libspeed.so`，`classes.dex` 增加 attach 调用，v2/v3 签名、对齐通过。当前合入头像后还修改 `level0` 和 Bootstrap，新增 PNG；检查范围见头像说明及构建器。
- 历史倍速版本的设备记录：MuMu 安装启动正常，两库日志确认挂载（`speed hooks installed (v2)`）；用户确认倍速生效、练习模式无冲突。音频变调为 pitch 方案的固有行为。

测试模型的中途 Seek 现重置完整音频时钟，再按 Seek 后实际经过的帧数计算期望值；旧测试只写部分字段，不能作为有效跳转证据。时钟测试库每次命令编译一次，24 个场景复用。

## 构建

```bash
.venv/bin/python modules/speed/test_speed.py
.venv/bin/python tools/build_speed_apk.py
```

输入 `_Practice_mod_AllCollections.apk`，输出 `_AllCollections_Speed.apk`。DEX 壳位于 `work/speedmod/shell`；当前构建器每次从实际输入重新解码。
