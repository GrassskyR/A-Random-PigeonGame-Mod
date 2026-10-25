# Frida 脚本行为说明

[项目首页](../README.md) · [Agent 接手速查](../docs/handoff.md)

`phigros_unlock.js` 是不被当前 APK 构建链调用的实验脚本。以下为直接从源码确认的行为，不提供其作为完整解锁方案的运行结论。

| 配置 | 源码行为 |
| --- | --- |
| `mode: "dump"` | 枚举和打印对象/记录信息 |
| `mode: "unlock"` | 构造 LevelRecord，调用 `SetSongRecord` 并执行配置的标记写入 |
| `forceCheck: true` | 安装 `CheckSongUnlock` hook，修改输出解锁类型、显示标记及难度数组 |
| `levels` | 默认包含 EZ/HD/IN/AT 四项 |

脚本内保存固定样本的 RVA 和字段偏移。其成绩写入和标记逻辑与当前正式 APK 的判定补丁及 Bootstrap 不同。

正式构建与已验证的解锁机制见 [开发指南](../docs/modding-guide.md) 和 [全曲解锁实现](../analysis/phigros-unlock-analysis.md)。当前成品不依赖 Frida。
