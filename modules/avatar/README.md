# 自定义头像

[全部 Mod](../README.md) · [构建流程](../../docs/modding-guide.md#7-构建与缓存) · [实现与证据](../../analysis/custom-avatar.md)

## 功能

新增 Zundamon 头像及解锁键，将 PNG 转为 Unity Sprite；管理跨场景资源保留、旧加载清理和加载完成回调。每次启动重新选中该头像。

## 源码

| 文件 | 用途 |
| --- | --- |
| [avatar_hook.c](avatar_hook.c) | 头像加载 hook、Sprite 生命周期与回调 |
| [avatar_image.h](avatar_image.h) | 当前样本的 IL2CPP 导出地址与运行时访问 |
| [level0_avatar.py](level0_avatar.py) | 向头像列表及 keyStore 添加条目 |
| [assets/zundamon.png](assets/zundamon.png) | 128×128 RGBA 头像源图 |
| [test_avatar.py](test_avatar.py) | 编译生产代码后进行 ARM64 回放 |

## 构建

在仓库根目录执行：

```bash
.venv/bin/python tools/build_speed_apk.py
```

与 [倍速模块](../speed/README.md) 一起从 `_Practice_mod_AllCollections.apk` 构建到 `_Practice_mod_AllCollections_Speed.apk`；共享 `libspeed.so`。 完整包名及依赖顺序见构建流程。

## 验证

运行 `.venv/bin/python modules/avatar/test_avatar.py`。五项回放及 APK 检查通过；切场景修复仍待设备交互确认。
