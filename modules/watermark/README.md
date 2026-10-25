# 菜单水印

[项目首页](../../README.md) · [Agent 接手速查](../../docs/handoff.md)

[全部 Mod](../README.md) · [构建流程](../../docs/modding-guide.md#7-构建与缓存) · [结果汇总](../../总结.md)

## 功能

在指定 18 个菜单场景加入场景内 Canvas/RawImage，当前文字为 `mod by ずんだもん`。

## 源码

| 文件 | 用途 |
| --- | --- |
| [watermark_scenes.py](watermark_scenes.py) | 渲染 PNG、添加水印对象、更新现有水印 |

## 构建

在仓库根目录执行：

```bash
.venv/bin/python tools/build_practice_watermark.py
```

`_Practice_v2.apk` → `_Practice_mod.apk`。基础解锁构建通过 `--watermark` 添加初始水印，练习之后更新为带 mod 前缀的文字。 完整包名及依赖顺序见构建流程。

## 验证

场景白名单及对象修改断言；显示效果已有用户确认。实现及场景范围见源码和结果汇总。
