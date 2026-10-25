# 启动检查补丁

[项目首页](../../README.md) · [Agent 接手速查](../../docs/handoff.md)

[全部 Mod](../README.md) · [构建流程](../../docs/modding-guide.md#7-构建与缓存) · [实现与证据](../../analysis/anti-addiction-logic.md)

版本适配使用 [统一工作流](../../docs/workflows/port-version.md) 与 [版本档案](../../profiles/README.md)。以下命令默认选择已验证的 4.0.1.1 样本，可加 `--profile <sample-id>`；输入/输出按样本隔离，单步构建会核对上游记录。

## 功能

将启动防沉迷检查改为已完成且结果为 true 的 UniTask<bool>。共存安装的 Manifest/资源表包名修复属于基础构建器。

## 源码

| 文件 | 用途 |
| --- | --- |
| [版本配置](../../profiles/4.0.1.1-arm64-d373432ce775/profile.json) 的 startup.check | 目标 RVA、原字节、替换指令与返回 ABI |
| [patch_anti_addiction.py](../../tools/patch_anti_addiction.py) | 应用配置中的补丁并检查 APK |

## 构建

在仓库根目录执行：

```bash
.venv/bin/python tools/patch_anti_addiction.py
```

`_Unlock_arm64_watermarked.apk` → `_Unlock_arm64_NoAntiAddiction.apk`。 完整包名及依赖顺序见构建流程。

## 验证

按原生返回 ABI 校验 12 字节补丁，构建时断言输入原字节并检查签名。
