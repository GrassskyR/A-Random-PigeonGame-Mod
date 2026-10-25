# 自定义头像与跨场景生命周期

适用样本：Phigros 4.0.1.1 / Unity 2022.3.62f2 / ARM64。

源码：[avatar_hook.c](../modules/avatar/avatar_hook.c)、[avatar_image.h](../modules/avatar/avatar_image.h)、[level0_avatar.py](../modules/avatar/level0_avatar.py)。构建入口：[build_speed_apk.py](../tools/build_speed_apk.py)。

## 资源和入口

`level0` 的 `GetCollectionControl`（PathID 49）新增 `Zundamon / avatar.Zundamon`，`GameInformation.keyStore`（PathID 50）新增对应 type-3 键。构建器验证其他场景对象 payload 不变。`CollectionsBootstrap` 用现有加密写入器设置 `3keyZundamon=1` 和 `UserIconKeyName=Zundamon`；每次启动会重新选择此头像。

输入图片是[modules/avatar/assets/zundamon.png](../modules/avatar/assets/zundamon.png)（128×128 RGBA），打包为 `assets/speed/zundamon.png`。Java 只读取 PNG 字节；Texture2D/Sprite 创建与赋值在 Unity 调用加载器 setter 的线程执行。当前不向 Addressables 目录新增实际资源，而是拦截这一精确键，其他键交还原函数。

## 白头像问题与修复

用户反馈：头像首次显示，切场景后变白。以下缺陷由源码、原版指令及 ARM64 回放定位；本次没有在线设备，尚未确认各缺陷在该次设备表现中的占比。

1. 原实现仅在 C 全局指针中缓存 Sprite。原版 `AddressableImageLoader.OnDisable`（`0x1DB943C`）会清空 Image、`_code`、`ImageLoaded` 并释放 `_assetRef`。旧场景不再持有图片后，C 指针既不是托管静态字段，也不能阻止 Unity 原生资源卸载。修复同时为 Texture2D 和 Sprite 设置 `HideFlags.DontUnloadUnusedAsset=32`（`Object.set_hideFlags=0x3C65608`），并用两个强 GC handle 保留 IL2CPP 包装对象。整个进程只建立一对资源，场景只借用。Unity 对资源卸载的说明见 [UnloadUnusedAssets](https://docs.unity3d.com/2022.3/Documentation/ScriptReference/Resources.UnloadUnusedAssets.html) 和 [DontUnloadUnusedAsset](https://docs.unity3d.com/2022.3/Documentation/ScriptReference/HideFlags.DontUnloadUnusedAsset.html)。
2. 原 hook 跳过了旧协程取消及 AssetRef 释放，旧请求可能晚到并覆盖头像。现先调用对应原版 `OnDisable` 清理，再赋键和 Sprite，设置 `ImageLoaded` 并按原版 `MoveNext`（`0x1DB95E0`）的 delegate 调用 ABI 触发 `onLoaded`。带低清预览的派生类使用自己的 `OnDisable`（`0x1DB98BC`），同时清理预览/过渡子对象，完成后设置 `loadedImage/loadImageOver`。
3. 旧派生类 hook 位于 `0x1DAEE08`，此时原函数已经保存寄存器并让 SP 减少 `0x30`，C 替换函数直接返回会留下错误栈。现移到真正入口 `0x1DAEDF4`；fallback trampoline 将第四条 ADRP 重写为装载原运行时页地址的 MOVZ/MOVK，再跳回 `entry+16`。不能把这个支持视为通用 PC 相对指令重定位器。
4. 原 `il2cpp_array_new` 传入了 Byte[] 类，正确参数是 Byte 元素类；现直接传 Byte，生成真正的 PNG `byte[]`。

## 原字节与替换范围（静态证据）

以下为 RVA，文件偏移应按 ELF PT_LOAD 映射；不覆盖原始 `work/lib/arm64-v8a/libil2cpp.so`。

| 方法入口 | RVA | 原始四条指令的 32-bit 编码 |
| --- | --- | --- |
| 基类 `set_Code` | `0x1DAEEF8` | `f81d0ffe a90157f6 a9024ff4 f9401c08` |
| 派生类 `set_Code` | `0x1DAEDF4` | `f81d0ffe a90157f6 a9024ff4 90013656` |

两处运行时各覆盖 16 字节，先断言原字节。替换为 `ldr x17, +8; br x17`（`58000051 d61f0220`）及 8 字节替换函数地址。派生入口第四条原指令是 `adrp x22, 0x4476000`；trampoline 保留栈序言、重建 X22 页地址，原函数在 `0x1DAEE04` 继续。强引用使用原库导出 `il2cpp_gchandle_new=0x1B97F28`、`il2cpp_gchandle_get_target=0x1B97F68`；数组使用 `il2cpp_array_new=0x1B97770`。

## 构建和验证范围

```bash
.venv/bin/python modules/avatar/test_avatar.py
.venv/bin/python tools/build_speed_apk.py
```

输入：`dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections.apk`。

输出：`dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections_Speed.apk`，沿用 `com.PigeonGames.Phigros.unlock` 与现有签名密钥。

`test_avatar.py` 编译生产 C 库并在 Unicorn 中运行，Unity/IL2CPP 分配、资源卸载和加载清理边界用模拟实现。旧代码在场景卸载复用、旧加载清理、派生返回栈三个用例中失败；修复后通过。另覆盖原字节断言、生产 trampoline 的 ADRP 重定位与寄存器恢复、完成回调及普通头像透传。此测试不执行 Unity 资源管理器或渲染器，不能代替真机切场景验证。

2026-10-25 本次验证：五项头像回放、24 个倍速场景及练习时钟回归通过；APK v2/v3 签名及 zipalign 检查通过，输入/输出签名证书 SHA-256 一致。包内仅修改 `classes.dex`、`level0`，新增 `classes3.dex`、`libspeed.so`、PNG；`classes2.dex` 与输入逐字节相同，其余非签名条目的 CRC/大小均保持一致。最新整合包大小 2,441,707,806 字节，SHA-256 为 `fb0c783d81a3df8ce889c11602a5a2b4d7b845442ad01a7060cc4f3afab9df9b`。本次条目核对记录位于本地 `work/speedmod/avatar-build-verification.json`。

仍需设备交互确认：主页→选歌→收藏品/头像页→返回主页，多次往返；游玩后返回；切普通头像再切回；重启后检查。构建和签名检查与设备结果分别记录，不把模型回放记作真机验证。
