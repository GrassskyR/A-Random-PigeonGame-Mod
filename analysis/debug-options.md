# Phigros 4.0.1.1 重演系统与调试组件

证据范围：原始 ARM64 指令、配套 IL2CPP 元数据、38 个 BuildSettings 场景、InputManager 及 Java 构建属性。下述是静态核实结果，不包含运行时开启调试组件的效果结论。

## 重演状态组件

`Phigros2.VisionReplay.Inspector.Start`（RVA `0x1CE0A70`）按 `VisionReplay.IsOn` 设置 Text.enabled，并显示重演和模拟模式的状态文字。

| 场景 | GameObject PathID | Inspector PathID / m_Enabled | Text PathID / m_Enabled | 对象 activeSelf |
| --- | --- | --- | --- | --- |
| `level6` / ChapterSelector | 29 | 3715 / 0 | 3716 / 0 | true |
| `level7` / SongSelector | 193 | 878 / 0 | 877 / 1 | false |

上述为场景文件中的组件和对象状态。

## 重演与模拟逻辑

| 方法 | RVA | 指令核实的行为 |
| --- | --- | --- |
| `VisionReplay.TurnOn` | `0x1CE0CCC` | 保存 `IsVisionReplayOn=true`，设置 IsOn，读取 IsSimulateMode，初始化重演进度 |
| `VisionReplay.TurnOff` | `0x1CE0F10` | 保存 `IsVisionReplayOn=false`，清除 IsOn/IsSimulateMode 内存标记 |
| `VisionReplay.BootSimulateMode` | `0x1CE0FDC` | 设置内存 IsSimulateMode |
| `VisionReplay.ExitSimulateMode` | `0x1CE1020` | 清除内存 IsSimulateMode |
| `VisionReplay.InitC8ReplayProcess` | `0x1CE0DC8` | 读取重演进度键并调用重置/恢复路径 |
| `VisionReplay.ResetC8Process` | `0x1CE1060` | 重置第八章重演状态 |
| `VisionReplay.RecoverC8SecondPhase` | `0x1CE1410` | 恢复第二阶段重演状态 |
| `SongSelector.ToSimulateMode` | `0x1DA40A0` | 按章节保存模拟标志并切换场景 |

`TurnOff` 不保存 `IsSimulateMode=false`；内存字段与持久键各自按上述方法处理。重演键由 `VisionReplay.Key` 的静态构造器 `0x1CE21D4` 初始化，包含 `VRChapter8Passed`、`VRChapter8UnlockBegin`、`VRChapter8UnlockSecondPhase` 和第八章六首歌曲的重演标记。Process/C8Unlock 使用独立的内存字典。

## 入口与场景绑定

- `SaturnOSControl.<Start>d__34.MoveNext` 在 `0x1D95654–0x1D9568C` 读取 `chapter8Passed`，成立后显示 `visionReplaySummary` 绑定的 GameObject 98。按钮中文为“重演”，英文为“Revisit”。
- 重演按钮经确认弹窗回调调用 `VisionReplay.TurnOn`。
- `SongSelector.Start` 在章节为 `MainStory8` 或 `MainStory9` 时显示 `ToggleSimulate`（`0x1DA4F8C–0x1DA4FE0`）。
- `level7` 的 ToggleSimulate 为 GameObject 6、Button 645，UnityEvent 绑定 SongSelector 691 的 `ToSimulateMode`，CallState 为 2。
- 第八章分支保存 `IsSimulateMode=true`、调用 `BootSimulateMode`，切换到 `Chapter8SelectMusic`；第九章分支保存 `IsSimulateModeC9=true`，切换到 `Chapter9SelectMusic`。
- 启动协程 `0x1CD0D1C–0x1CD0E18` 读取 `VRFirstOpenGameAfterChapter8FirstPhaseClear`，成立时调用 TurnOn/BootSimulateMode 并删除该键。

这些键经 SaveManagement 加密后读写 PlayerPrefs。原始调用和资源绑定见 `debug-options-entry.asm`、`debug-options-menu.asm`、`debug-options-scenes.json`。

## 渲染调试相关的确定事实

InputManager 包含 Ctrl、Backspace、Alt、Page Up/Down 等调试按键配置。下列原生方法的实现均为一条 `ret`：

```text
0x3B563A8 DebugManager.EnableInputActions
0x3B56DB0 DebugManager.RegisterInputs
0x3B5DB48 DebugUpdater.RuntimeInit
```

场景扫描的 38 个构建场景内没有对应 DebugUI 挂载记录。以上事实只说明配置、方法实现及扫描结果。

Java `BuildConfig.DEBUG=false`、`BUILD_TYPE="release"`；原版 `boot.config` 的 `wait-for-native-debugger=0`。

## 其他组件的实际行为

| 组件 | 原生/元数据证据 |
| --- | --- |
| `RemoveAllSongControl.Awake`（`0x1D5A028`） | 读取 GameCompleted/chapter8Passed，条件不足时销毁所挂载的 AllSong UI 对象 |
| `SongDetailAutoPlayPresenter` 协程（`0x1D3E268`） | 设置封面、等待展示时长与动画，加载 Level 场景 |
| `SamplePopupView.DebugLog` | 写入 UI Text，调用 UnityEngine.Debug.Log |
| `ImportCollections` | 带 ExecuteInEditMode，Update 读取文本导入字段 |
| 剧情推进输入方法 | 接受鼠标/触摸、Return、KeypadEnter、Space |

普通游玩调用链经 JudgeControl、NoteUpdateManager、ScoreControl 处理输入、音符判定和分数，参见 `debug-options-gameplay-calls.asm`。

## 复现与证据

- [场景扫描工具](../tools/inspect_debug_options.py)：扫描结果为 13 个候选组件、1 个相关序列化回调、0 个解码错误。
- [场景字段](debug-options-scenes.json)、[直接分支引用](debug-options-xrefs.json)。
- [核心反汇编](debug-options-core.asm)、[启动存档](debug-options-entry.asm)、[菜单条件](debug-options-menu.asm)、[游玩调用](debug-options-gameplay-calls.asm)。

```bash
.venv/bin/python tools/inspect_debug_options.py
.venv/bin/python tools/chapter9_trace.py 'VisionReplay.*Inspector|VisionReplay\$\$|SongSelector\$\$ToSimulateMode'
```

直接分支引用按 `b/bl` 扫描，UnityEvent 绑定单独从场景解析。证据覆盖以上方法与场景，不扩展为全部资源或运行行为的结论。
