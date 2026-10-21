# 普通单曲练习进度条实现

交付：dist/Phigros_4.0.1.1_Unlock_arm64_Practice.apk。
基础包：dist/Phigros_4.0.1.1_Unlock_arm64_NoAntiAddiction.apk。

## 已实现

- UnityPlayerActivity.onCreate 末尾调用 PracticeOverlay.attach。
- Java 在同一 Activity 的内容视图上增加暂停进度面板，包含 SeekBar、百分比、当前时间和总时间。只在普通暂停更新活跃时显示；不申请悬浮窗权限。
- libpractice.so 通过 JNI 启动安装线程，发现 libil2cpp 后校验 Pause.Update 的头 16 字节，创建保留原始指令的 trampoline 并挂接 Update。原始 16 字节均为栈/寄存器保存，不含需要重定位的 PC 相对指令。
- Java 拖动仅改变显示，松手通过原子请求提交目标；原生只在 Pause.Update 的 Unity 线程读取/修改对象，Java 不直接操作游戏对象。
- 跳转：停用并销毁四类旧音符，清空对应控件列表，按目标时间更新谱面判定标记，刷新判定线事件/生成索引，使用 CreateNote 重建目标时间之后的音符，再调用原有 AddressableAudioSource.Seek 同步音频及 DSP 时钟，更新暂停恢复用时间。
- 继续按钮仍走游戏原有 ProgressControl.Play(true) 和 PlayScheduled。
- 不改成绩处理；不适配剧情、挑战等其他模式。跨目标点已开始的长按跳过。

## 验证范围

编译通过；签名、对齐通过。比较基础 APK 的已有条目，除 classes.dex 为接入新增代码而重建外，其余条目 CRC/长度一致；新增 classes2.dex 和 libpractice.so。

MuMu 127.0.0.1:16384 安装成功；am start 返回 Status: ok；日志：

```
10-21 04:22:27.248 3055 3087 I PhigrosPractice: Pause.Update hooked at 0x7355f3166530
```

用户要求安装后自行验证，因此没有进行曲内功能验收。需要用户确认实际暂停 UI、前后跳转、继续播放及音符行为。

## 重新构建

`.venv/bin/python tools/build_practice_apk.py`

本机依赖：work/practice/android-ndk-r27d、Android SDK android-36 与 build-tools/36.0.0、JDK（可使用本机 Windows GraalVM）、apktool、现有解锁版签名密钥及打包工具。源文件不依赖 Frida，最终 APK 不需要 root。

## v2：修复跳转后的时钟偏差和暂停读谱

交付：`dist/Phigros_4.0.1.1_Unlock_arm64_Practice_v2.apk`。

用户反馈：拖动后音频/谱面不同步，暂停模糊遮挡读谱，恢复倒计时时希望提前看到目标位置。

根因：初版在暂停 Seek 时把 `dspTimeOffset` 设为当时 DSP 时间减目标音频时间；随后原有 `PlayScheduled` 只设置新的 `startDspTime`，没有清除 Seek 留下的平滑/DSP 时钟。恢复后，谱面使用的 `AddressableAudioSource.time` 将暂停等待和倒计时也算作已经播放的时间。

回归脚本 `tools/practice/test_timing.py` 使用 Unicorn 执行原始 APK 中的 `AddressableAudioSource.Update` ARM64 代码，并执行由生产头文件 `practice_clock.h` 编译出的修复代码。旧路径等待 0/2/8 秒后，偏差分别约 3/5/11 秒；修复路径这三种情形下的模型偏差均小于 0.001 秒。该数字是计时代码回放结果，不代表真机音频输出延迟的测量。

修复：挂接 `AddressableAudioSource.PlayScheduled`（0x1DB84EC），保留原预约播放，在其实际计划启动时刻重建 DSP 偏移、单调时钟参考及采样缓存。只对练习跳转选中的音源生效。继续使用原有倒计时门控，倒计时期间谱面时间保持在选定目标，结束后跟随音频时间更新。

读谱：`tools/practice/pause_scene.py` 仅修改普通单曲 `level12` 场景中 216、224 两个 TranslucentImage 组件的启用标记，分别对应暂停和继续倒计时的全屏模糊快照，保留按钮、倒计时以及其他组件数据。重新序列化后比较了其他对象的原始数据，确认未变。旧快照移除后，重建的目标谱面可在暂停/倒计时阶段直接显示，不再等模糊遮罩结束才露出。

验证边界：计时代码回放、场景修改断言、APK 签名和对齐检查通过。曲内的最终观感及真实音频输出同步仍由用户验证。

v2 已在 MuMu `127.0.0.1:16384` 覆盖安装，返回 `Success`；启动 `Status: ok`，日志确认 `Pause.Update and scheduled audio clock hooked (v2)`。与 v1 比较，APK 内仅 `assets/bin/Data/level12` 和 `lib/arm64-v8a/libpractice.so` 两个条目发生变化。
