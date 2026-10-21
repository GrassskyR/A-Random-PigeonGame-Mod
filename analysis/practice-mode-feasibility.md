# 暂停界面进度拖动 / 练习模式可行性

分析对象：Phigros 4.0.1.1 arm64，沿用当前解锁版对应的原始 IL2CPP 方法布局。本文为静态分析和实现设计，未修改游戏 APK，未完成运行验证。

## 结论

具备实现条件：有暂停界面、现成的音频 Seek、完整谱面数据和音符工厂。UI 进度条和音频跳转较直接；完整功能需要新增练习控制逻辑，把音符重建、判定、计时和练习成绩处理接在一起，不能用修改一个返回值的方式完成。

## 已确认的入口

| 模块 | 方法 / RVA | 用途和证据 |
| --- | --- | --- |
| 暂停界面 | Pause.OnEnable 0x1D87B3C；Update 0x1D87530 | 持有 progressControl、fingerManagement；继续路径调用 Play(true) 并隐藏暂停物体 |
| 时间进度 | ProgressControl.get_Progress 0x1D87EC4 | 三条指令读取 nowTime、_audioLength 并相除 |
| 暂停/继续 | ProgressControl.Play(bool) 0x1D880DC | 现有暂停状态切换入口 |
| 时间更新 | ProgressControl.Update 0x1D88268 | 0x1D885DC..0x1D885F4 从音频 time 减 _offset，写 nowTime；恢复时还有 PlayScheduled 流程 |
| 音频跳转 | AddressableAudioSource.Seek(float) 0x1DB837C | 调用 AudioSource.set_time，更新 startTime/internalTime/time 及 DSP/单调时钟状态 |
| 判定线 | JudgeLineControl.UpdateJudgeLineEventIndex 0x1D76750 | 至少已检查的速度、消失、位移事件索引同时有递增与递减逻辑，具备回溯基础 |
| 音符工厂 | JudgeLineControl.CreateNote 0x1D76A18 | 现有音符生成入口，参数为谱面索引和上下侧 |
| 音符更新 | NoteUpdateManager.Update 0x1D868F8 | 调用 NoteMove/Judge；命中判定结束路径后 Destroy 游戏物体并 RemoveAt 控件列表 |

## 状态为何必须一起处理

ChartNote 有 isJudged、isJudgedForFlick；Click/Drag/Flick 控件各有私有 isJudged；Hold 另有 missed、judged、judgeOver、isPerfect、头部销毁状态等。

JudgeLineControl 有上下侧生成索引、上次生成索引和事件索引。JudgeControl 有 startIndex/endIndex 和暂停时间；ProgressControl 有 nowTime/audioTime、_startTime、ghostNoteJudged。FingerManagement 保存手指轨迹与阻挡集合。

已打过的音符物体被销毁，所以后退时间不会自动恢复它们。快进若直接让旧音符进入判定，会将跳过的区间当成漏击。音频 Seek 已经同步音频内部时钟，但不会顺带重置上述游戏状态。

## 建议的交互

暂停后显示：

```text
练习模式
[────────●──────────]  42.6%
        01:12 / 02:49
        原有继续 / 重试 / 返回
```

1. 打开暂停菜单，将滑块初始化为当前进度，并显示时间、百分比。
2. 拖动时即时更新目标百分比和时间，游戏保持暂停；只做 UI 预览，不在每一帧重建谱面。
3. 松手时应用跳转、重建目标位置的谱面状态，继续停留在暂停界面。
4. 按原有继续按钮恢复，保留恢复准备时间，避免拖动手势被作为音符输入。
5. 使用过跳转后，本局标记为练习；只显示练习统计，不保存正式成绩、评级或触发完成奖励。具体落点需继续追踪 LevelCompleted 和结算保存调用链。

百分比建议与现有 Progress 保持一致：p = clamp(nowTime / _audioLength, 0, 1)。目标谱面时间 tChart = p * _audioLength；对应音频时间需按现有 nowTime = audio.time - _offset 反算 tAudio = tChart + _offset，并处理合法音频边界。_audioLength 的初始化及偏移语义仍需在实现前核实，不能直接把所有时间字段赋为同一值。

## 跳转控制器的责任

以下是设计流程，不是游戏已有的完整 Seek 接口：

```text
PracticeSeek(target)
  → 保持暂停，临时阻止判定与旧音符更新
  → 清理活动音符物体、控件列表、瞬时判定特效和旧触摸状态
  → 重置/重建 ChartNote 判定标志、上下侧生成游标和判定检索窗口
  → 用目标时间刷新判定线事件和地板位置
  → 重新生成目标附近应存在的音符，处理跨目标时间的 Hold
  → audio.Seek(换算后的音频时间)
  → 同步游戏计时、暂停恢复计时与进度 UI
  → 重置本轮练习统计，保持暂停直至继续
```

必须在游戏主线程的合适帧边界执行；旧对象 Destroy 为延迟销毁，不能让新旧控件同帧一起参与判定。是否重建所有后续音符还是仅生成当前可见窗口，应复用现有生成窗口逻辑，在追完 UpdateProductionIndex / CreateNote 后确定。

跨越长按音符时建议提供短的练习预备区，或明确将已在目标前开始的 Hold 排除本段统计；不能把长按中段直接当作一个新的正常音符。预备区是实现建议，不是已验证的原有能力。

## APK 层面的实现方式

UI 可以向已有暂停 Canvas 添加 Slider 和 Text；现有 UnityPy 资源编辑工具能处理场景对象，但必须补齐事件接入，单改资源不会产生新的跳转逻辑。

IL2CPP 已编译为原生代码，添加 C# 文件或替换 DummyDll 不会在游戏里执行。需要注入能在 Unity 主线程调用游戏对象/方法的原生模块，或构建等价的原生补丁控制器，并从 Pause.OnEnable/Update 等现有生命周期进入。控制器的可靠挂接方式与可用 IL2CPP API 尚需检查。可先用运行时插桩验证重建和跳转，再做持久打包；插桩只是验证手段，不等于最终发布依赖。

不建议第一步就全局修改 Destroy 为隐藏：该调用被多个模块共用，且音符生成索引、重复对象和判定状态仍需处理。

## 首版范围与验证

首版建议覆盖普通单曲、暂停拖动、百分比显示、松手定位和继续游玩。特殊剧情曲/挑战模式有额外状态机，兼容性必须单独验证；不能由普通单曲成功推断全部支持。

必要验证：向前跳不产生跳过区间的漏击；向后跳后四类音符能重新判定；跨 Hold 的行为符合设计；多次来回跳无重复物体；音频与判定线保持同步；暂停恢复倒计时不把位置拉回；0%/末尾边界可用；练习局不写正式成绩。当前没有新增实现或上述运行验证。
