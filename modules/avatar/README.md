# 自定义头像

[项目首页](../../README.md) · [Agent 接手速查](../../docs/handoff.md)

[全部 Mod](../README.md) · [构建流程](../../docs/modding-guide.md#7-构建与缓存) · [实现与证据](../../analysis/custom-avatar.md)

## 功能

新增 Zundamon 头像及解锁键，将 PNG 转为 Unity Sprite；管理跨场景资源保留、旧加载清理和加载完成回调。每次启动重新选中该头像。

## 源码

| 文件 | 用途 |
| --- | --- |
| [avatar_hook.c](avatar_hook.c) | 头像加载 hook、IL2CPP 绑定、PNG 缓存、Sprite 生命周期与回调 |
| [avatar.h](avatar.h) | PNG 准备与安装入口的公开接口 |
| [AvatarAssets.java](AvatarAssets.java) | 从 APK 读取 PNG，使用 IOException 表示读取失败 |
| [level0_avatar.py](level0_avatar.py) | 向头像列表及 keyStore 添加条目 |
| [assets/zundamon.png](assets/zundamon.png) | 128×128 RGBA 头像源图 |
| [test_avatar.py](test_avatar.py) | 编译生产代码后进行 ARM64 回放 |

## 构建

在仓库根目录执行：

```bash
.venv/bin/python tools/build_speed_apk.py
```

与 [倍速模块](../speed/README.md) 一起从 `_Practice_mod_AllCollections.apk` 构建到 `_Practice_mod_AllCollections_Speed.apk`；共享 `libspeed.so`。完整包名及依赖顺序见构建流程。

初始化顺序：`AvatarAssets.read` → JNI `initialize` → `avatar_prepare` → 单一安装线程中的 `avatar_install`。PNG 和运行时状态由本模块持有，Unity 对象只在游戏 setter 回调内访问。

## 验证

运行 `.venv/bin/python modules/avatar/test_avatar.py`。六项回放（含初始化顺序）及 APK 检查通过；切场景修复仍待设备交互确认。
