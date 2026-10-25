# 共存包启动资源修复

[项目首页](../README.md) · [Agent 接手速查](../docs/handoff.md)

原应用 ID 为 `com.PigeonGames.Phigros`，共存包为 `com.PigeonGames.Phigros.unlock`。

## 已核实机制

Unity 的资源查找使用 `Context.getPackageName()` 作为 `Resources.getIdentifier` 的包名。AndroidManifest 和 `resources.arsc` 的 `ResTable_package.name` 必须一致。

`tools/build_unlock_apk.py` 的 `patch_manifest` 和 `patch_resource_package` 同步修改上述两个位置。资源表在固定长度 UTF-16 包名字段内替换，保留资源 ID 和其他表数据。

## 验证证据

`apk-crash-before.txt` 记录包名不一致时的 `Resources$NotFoundException: String resource ID #0x0`，调用链为 Resources.getString → UnityPlayer → UnityPlayerActivity.onCreate。

同步修改后的包通过签名及 ZIP 对齐，安装返回 `Success`、启动返回 `Status: ok`，实际进入教学画面；用户确认启动成功。当前完整构建沿用此资源修复。
