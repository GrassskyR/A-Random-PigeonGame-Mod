# 谱面倍速（pitch + 时间变换）

[项目首页](../README.md) · [Agent 接手速查](../docs/handoff.md)

成品：`dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections_Speed.apk`，在全收藏品版基础上叠加。源码位于 `modules/speed/`，构建入口为 `tools/build_speed_apk.py`。用户已确认倍速功能可用；当前构建还合入[自定义头像及切场景修复](custom-avatar.md)，头像修复尚待设备交互验证。

## 原理

谱面时间轴完全由 `ProgressControl.nowTime = AddressableAudioSource.time(0x40) − offset` 驱动：`JudgeLineControl.UpdateInfo` 每帧读 `ProgressControl.nowTime`(0x90) 参数化判定线/音符位置，判定窗口也跟随。因此倍速只需两件事：

1. **音频变速**：调用游戏自身的 `UnityEngine.AudioSource.set_pitch` 包装（RVA `0x3C18438`，内部自行解析 icall，注册名为 `SetPitch(AudioSource, Single)`，与 C# 属性名不同）。音频对象内嵌 Unity AudioSource（0x30 字段）。
2. **谱面时间变换**：音频对象的内部时钟按真实时间推进（deltaTime/DSP 漂移校正），与 pitch 后的媒体位置差一个速率。`ProgressControl.Update` hook 在原函数执行前把 `audio.time` 按锚点仿射变换 `warped = anchor_w + (raw − anchor_r)×speed` 放大读数，执行后还原为真实值。锚点在任何「raw == 真实媒体位置」的时刻重取：新 AudioSource、倍速切换（保持当前谱面位置连续）、以及每帧跳变检测（raw 倒退或超过 2.5×实时增量即视为游戏重锚，覆盖预约恢复、练习 Seek、重开）。

## 判定窗口补偿

2026-10-25 修复：原版 `ProgressControl.Update` 每帧在 RVA `0x1D88454..0x1D8848C` 写入普通模式窗口，在 `0x1D88424..0x1D88450` 写入挑战窗口。旧代码在调用原版前缩放，被覆盖；现先还原上一帧的未缩放值，执行原版 Update，再保存本帧生成的窗口并乘 speed。即使原版提前返回、倍速没有变化，也不遗漏或叠乘；换曲与切回 1x 同样走此路径。窗口不再与 pitch 变更共用触发条件。

普通模式实际值为 Perfect=0.08、Good=0.18、Bad=0.22 秒；此前 Good=0.08 的说明有误。挑战模式由原版保留其 0.04/0.09/0.14 秒基础值和帧时间补偿，再缩放本帧结果，不使用一次缓存的普通窗口替代。

| 倍速 | 修复后的谱面窗口（Perfect / Good / Bad） | 除以倍速后的真实时间门槛 |
| --- | --- | --- |
| 0.5x | 40 / 90 / 110 ms | 80 / 180 / 220 ms |
| 1.0x | 80 / 180 / 220 ms | 80 / 180 / 220 ms |
| 1.5x | 120 / 270 / 330 ms | 80 / 180 / 220 ms |
| 2.0x | 160 / 360 / 440 ms | 80 / 180 / 220 ms |

这些是各分支使用的单侧时间门槛，不代表所有音符都有对称 Bad 范围。补偿目标是保持真实秒数的时间容差；谱面密度、音频 pitch 和长按本体持续时间仍随倍速变化，不据此承诺主观手感完全相同。

### 独立时间门槛

`speed_judgement.c` 对以下五条指令逐条断言，只替换该处的常量加载，不改共享只读数据。原有比较、分支、寄存器、标志位以及长按 `_safeFrame` 的按帧松手宽限均保留。

| 原加载 RVA | 原始 32-bit 指令 | 用途 | 私有基准值 |
| --- | --- | --- | --- |
| `0x1D85024` | `BD419D20` | Drag 接触接受范围 | 0.100 s |
| `0x1D850C0` | `BD450900` | Drag 结算触发 | 0.005 s |
| `0x1D85638` | `BD450942` | Flick 结算触发 | 0.005 s |
| `0x1D86688` | `BD416142` | Hold 尾部提前结算 | -0.220 s |
| `0x1D8675C` | `1E2A1001` | Hold 尾部清理 | 0.250 s |

MuMu/Houdini 实测普通 mmap 提示地址会被忽略，第一次安装因分支超距拒绝启用。修复为在当前样本 PT_LOAD 后的有界范围内，用 `MAP_FIXED_NOREPLACE` 逐候选申请两页空闲内存，绝不覆盖现有映射；若内核忽略该标志并返回其他地址，立即释放后尝试下一处。回放覆盖忽略地址、占用失败及成功重试。两页用途为：第一页保存五个 8 字节跳板（`ldr sN, private_literal; b site+4`），保护为 RX；第二页保留五个 RW float。每个原位置只覆盖一条 4 字节 `b` 指令，原字节不匹配或实际分配地址超出 ARM64 B 的 ±128 MiB 范围时拒绝安装。跳板不占用整数寄存器，不改变 SP、LR 或 NZCV；每帧把私有值写成 `基准秒数×speed`，1x 自动恢复基准。原始 `work/lib/arm64-v8a/libil2cpp.so` 和 APK 内 `libil2cpp.so` 均不因此改写。

Flick 的手指移动速度仍用真实 `Time.deltaTime`，空间接受范围及按帧宽限不缩放。长按 `holdTime` 保留谱面秒数，歌曲加快后实际按住时间缩短是预期行为。其他 UI 动画、音符美术效果及设备延迟不在这五条判定补丁的覆盖范围。

## Hook 点

| 方法 | RVA | 用途 |
| --- | --- | --- |
| `SongSelector.Update` | `0x1DA7DFC` | 选歌场景心跳，驱动 Java 面板显隐 |
| `ProgressControl.Update` | `0x1D88268` | 谱面时间变换 + pitch 应用 |

两个入口前 16 字节均为纯栈/寄存器指令，可安全复制进 trampoline。**`AddressableAudioSource.Seek`(0x1DB837C) 入口含 `adrp`（PC 相对），不可用此方式挂接**——v1 曾因对其建 trampoline 导致练习模式拖动必崩（野指针段错误），v2 起由跳变检测替代。`Pause.Update`/`PlayScheduled` 已被 libpractice 挂接，本模块不得重复挂。

## 初始化和模块边界

`SpeedOverlay.attach` 加载库，委托 `AvatarAssets.read` 读取 PNG，再调用 JNI `initialize(png)`。原生入口先让头像模块复制 PNG，再启动唯一安装线程；该线程定位 libil2cpp、安装倍速 hook、调用 `avatar_install`，最后发布 ready。重复接入不重复安装，PNG 读取失败不阻止倍速启动。没有 speed 的 JNI_OnLoad，也没有 JNI 内第二个等库轮询。

判定窗口通过 `restore_windows` / `apply_windows` 在每帧原版 Update 前后处理，独立门槛由 `speed_set_judgement_gates` 更新。每帧只取一次单调时钟，生产 hook 暂时写入 warped time，原函数返回后恢复 raw。

## UI

`SpeedOverlay`（classes3.dex）挂在 `UnityPlayerActivity.onCreate`，仅 SongSelector 场景显示：0.50x–2.00x 滑条，步进 0.01x，松手经 JNI 同步写入原子请求，拖动期间不被状态轮询覆盖；无需提交后的额外延时。倍速跨局保持，AudioSource 组件重建时自动重设 pitch 与判定窗口。

## 验证

- `modules/speed/test_speed.py`：先回放生产 `ProgressControl.Update`，覆盖变速连续性、Seek、换曲、pitch 写入和 raw 时钟恢复；此脚本的原函数边界仍为模拟，真实窗口写回及五处独立门槛由 `test_judgement.py` 另行验证；再用 Unicorn 回放原始 `AddressableAudioSource.Update` × 24 场景（6 档倍速 × 暂停 0/3s × 是否中途 Seek），谱面时钟漂移最差 0.092ms（模型测量，非真机音频延迟）。
- `modules/speed/test_judgement.py`：编译生产原生库，执行原始普通/挑战模式窗口写回，覆盖连续帧、模式切换、重复倍速、1x 恢复及提前返回；执行五处原始加载、比较与跳板，核对 0.5x–2x 的真实时间边界和寄存器/标志保持，并验证原字节不匹配时拒绝写入。旧代码在普通模式 0.5x 的第一帧即失败；修复后通过。
- 原练习时钟回归 `modules/practice/test_timing.py` 不受影响。
- 早期倍速版与输入包 diff：新增 `classes3.dex`、`libspeed.so`，`classes.dex` 增加 attach 调用，v2/v3 签名、对齐通过。当前合入头像后还修改 `level0` 和 Bootstrap，新增 PNG；检查范围见头像说明及构建器。
- 历史倍速版本的设备记录：MuMu 安装启动正常，两库日志确认挂载（`speed hooks installed (v2)`）；用户确认倍速生效、练习模式无冲突。音频变调为 pitch 方案的固有行为。

测试模型的中途 Seek 现重置完整音频时钟，再按 Seek 后实际经过的帧数计算期望值；旧测试只写部分字段，不能作为有效跳转证据。时钟测试库每次命令编译一次，24 个场景复用。

## 构建

```bash
.venv/bin/python modules/speed/test_speed.py
.venv/bin/python modules/speed/test_judgement.py
.venv/bin/python tools/build_speed_apk.py
```

输入 `_Practice_mod_AllCollections.apk`，输出 `_AllCollections_Speed.apk`。DEX 壳位于 `work/speedmod/shell`；当前构建器每次从实际输入重新解码。

## 本次安装记录

2026-10-25：从全收藏品基线重新构建，APK v2/v3 签名及 zipalign 检查通过；原练习 DEX 与基线游戏库逐字节相同，原始样本库未改写。输出大小 2,441,715,998 字节，SHA-256 为 `eae38dd48c27e39bc8945a62a360d49ed652371ea5b33596a13cb6955260f175`。

MuMu `127.0.0.1:16384`（CET-AL00 / x86_64，经 ARM64 翻译）执行 `adb install -r` 返回 Success，保留既有应用数据。启动 `UnityPlayerActivity` 返回 Status: ok，新进程 PID 4688 日志为 `five judgement gates installed`、`speed hooks installed (v3, real-time judgement)`，两个头像 hook 均 ok。启动截图为游戏警告画面及 mod 水印；本次没有自动游玩，判定手感交用户实际检查。

本地证据：`work/speed-fixed-judgement-test.log`、`work/speed-fixed-clock-test.log`、`work/speed-fixed-avatar-test.log`、`work/speed-fixed-practice-test.log`、`work/speed-judgement-fix-build.log`、`work/speed-judgement-install.log`、`work/speed-judgement-start.log`、`work/speed-judgement-runtime.log`、`work/speed-judgement-fix-verification.json`、`shots/speed-judgement-fixed-start.png`。
