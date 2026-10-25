# 普通单曲练习模式 v2

当前完整成品：`dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections.apk`。实现源码位于 `modules/practice/`，构建入口为 `tools/build_practice_apk.py`。用户已确认 v2 的同步和暂停读谱效果。

## 当前实现

- `UnityPlayerActivity.onCreate` 末尾调用 `PracticeOverlay.attach`，在同一 Activity 内显示百分比、时间和 SeekBar。
- Java 拖动更新预览，松手经 JNI 提交原子跳转请求，由 Unity 线程的 `Pause.Update` 消费。
- `libpractice.so` 校验目标入口指令，挂接 `Pause.Update` 与 `AddressableAudioSource.PlayScheduled`；生产代码保留原函数调用。
- 跳转时销毁旧音符控件、清空对应列表，重设谱面判定标记、判定线事件和生成索引，调用原 `CreateNote` 重建目标之后的音符，再调用原音频 `Seek`。
- 继续按钮沿用原 `ProgressControl.Play(true)` 和预约播放流程。`practice_clock.h` 以预约播放时刻重建 DSP 偏移、单调时钟和采样缓存。
- `pause_scene.py` 关闭 `level12` 中 PathID 216/224 两个 TranslucentImage 的 `m_Enabled`，保留暂停按钮及倒计时。脚本重新读取输出并比较其他对象 payload。

适用范围为普通单曲，沿用原成绩处理。跨目标点已开始的长按被跳过；拖到头部之前可重新练习。

## 已核实方法

| 方法 | RVA | 当前用途 |
| --- | --- | --- |
| `Pause.Update` | `0x1D87530` | Unity 线程跳转入口 |
| `ProgressControl.Play(bool)` | `0x1D880DC` | 暂停恢复 |
| `AddressableAudioSource.Seek(float)` | `0x1DB837C` | 音频定位 |
| `AddressableAudioSource.PlayScheduled` | `0x1DB84EC` | 预约恢复时钟校准 |
| `JudgeLineControl.CreateNote` | `0x1D76A18` | 音符重建 |

## 验证证据

`modules/practice/test_timing.py` 使用 Unicorn 执行原始 ARM64 `AddressableAudioSource.Update` 和生产头文件编译出的时钟修复。覆盖暂停等待 0/2/8 秒及倒计时状态；修复路径的模型偏差小于 0.001 秒。该结果是代码回放测量。

已保存的设备记录显示：MuMu 覆盖安装成功，启动 `Status: ok`，日志为 `Pause.Update and scheduled audio clock hooked (v2)`。用户随后确认同步及读谱效果。

Java/Dex 与 ARM64 库编译、APK v2/v3 签名、ZIP 对齐，以及场景目标字段/非目标对象保留检查均通过。

## 构建

```bash
.venv/bin/python modules/practice/test_timing.py
.venv/bin/python tools/build_practice_apk.py
```

构建输入为 `_NoAntiAddiction.apk`，输出为 `_Practice_v2.apk`。继续生成完整成品需依次执行水印、跳教程、全收藏品步骤。工具链与 DEX 壳缓存见 [开发指南](../docs/modding-guide.md)。
