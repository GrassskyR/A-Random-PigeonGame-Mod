# 章节、歌曲与难度解锁

[项目首页](../../README.md) · [Agent 接手速查](../../docs/handoff.md)

[全部 Mod](../README.md) · [构建流程](../../docs/modding-guide.md#7-构建与缓存) · [实现与证据](../../analysis/phigros-unlock-analysis.md)

## 功能

放开实际存在的章节、歌曲和谱面难度，初始化第九章真实进度。保留存档加密，不注入成绩。

## 源码

| 文件 | 用途 |
| --- | --- |
| [patch_min.py](patch_min.py) | 原生判定补丁、原字节及指令断言 |
| [chapter9_save.py](chapter9_save.py) | 第九章进度、存档编解码及审计；收藏品函数保留旧导入兼容 |

## 构建

在仓库根目录执行：

```bash
.venv/bin/python tools/build_unlock_apk.py --watermark ずんだもん
```

原始 APK → `_Unlock_arm64_watermarked.apk`；总构建复制为 `_Unlock_arm64.apk`，供启动补丁使用。 完整包名及依赖顺序见构建流程。

## 验证

构建时校验原字节、反汇编和加密写入；全曲解锁已有用户确认。
