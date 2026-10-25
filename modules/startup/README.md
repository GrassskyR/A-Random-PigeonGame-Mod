# 启动检查补丁

[项目首页](../../README.md) · [Agent 接手速查](../../docs/handoff.md)

[全部 Mod](../README.md) · [构建流程](../../docs/modding-guide.md#7-构建与缓存) · [实现与证据](../../analysis/anti-addiction-logic.md)

## 功能

将启动防沉迷检查改为已完成且结果为 true 的 UniTask<bool>。共存安装的 Manifest/资源表包名修复属于基础构建器。

## 源码

| 文件 | 用途 |
| --- | --- |
| [patch.py](patch.py) | 目标 RVA、原字节、替换指令与返回 ABI |

## 构建

在仓库根目录执行：

```bash
.venv/bin/python tools/patch_anti_addiction.py
```

`_Unlock_arm64.apk` → `_Unlock_arm64_NoAntiAddiction.apk`。 完整包名及依赖顺序见构建流程。

## 验证

按原生返回 ABI 校验 12 字节补丁，构建时断言输入原字节并检查签名。
