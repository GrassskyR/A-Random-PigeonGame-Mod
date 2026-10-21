# 运行手册：Phigros 全解锁（路线 A，Frida）

前提：设备/模拟器已 root（MuMu、雷电、真机 Magisk 均可），adb 可用。不需要改 APK、不需要重装。

## 1. 准备 frida-server

```bash
# 查设备架构
adb shell getprop ro.product.cpu.abi        # 一般 arm64-v8a

# 取与本机 frida 客户端同版本的 server
pip install -U frida frida-tools            # 客户端
# 从 https://github.com/frida/frida/releases 下 frida-server-<同版本>-android-arm64.xz
adb push frida-server /data/local/tmp/ && adb shell "chmod 755 /data/local/tmp/frida-server"
adb shell "su -c '/data/local/tmp/frida-server &'"     # 模拟器一般 adb root 后直接起
```

验证：

```bash
frida-ps -U | head
```

能看到 `Phigros` 即通。

## 2. 先跑 dump（只读，无副作用）

```bash
adb shell pm list packages | grep -i phigros   # 确认包名 com.PigeonGames.Phigros
frida -U -f com.PigeonGames.Phigros -l phigros_unlock.js
```

进到游戏主菜单后，脚本会自动检测 `GameInformation.main`，然后打印：

```
[phi] libil2cpp.so @ 0x....
[phi] GameInformation @ 0x....
[phi] 章节[0] ChapterLegacy unlockMode=0 unlockFlag=null
[phi] 章节[5] Chapter8 unlockMode=1 unlockFlag=...
[phi] 共发现 1xx 首歌
[phi] 有成绩 3 首 / 无成绩 1xx 首
```

这一步就是"体检报告"：能看出哪些章节被 unlockMode 1/2/3 锁着、卡在哪首歌。

## 3. 写入解锁

把脚本顶部改成：

```js
mode: "unlock",
score: 1000000,     // 或 880001，更低调
```

重跑。脚本会对每首歌的 EZ/HD/IN/AT 调 `GameInformation::SetSongRecord()`（已有真实成绩的不动），
再补 `chapter8UnlockBegin / chapter8Passed / chapter9* / randomVersionUnlocked[] / unlockFlagOf*` 等标记。

写完**停留在游戏内**，进一次选曲界面（界面是启动时构的，必要时退到章节选择再进），
然后正常游玩一首让游戏落盘，或直接退出游戏（游戏退出时会保存）。

## 4. 只想临时看效果（不写存档）

```js
forceCheck: true, mode: "dump"
```

它会 hook `CheckSongUnlock`，把每首歌强行标成"已解锁 / 常显示 / 四难度全开"，只在内存生效，
关掉脚本就恢复——适合先验证"界面层能不能全开"。

## 5. 回滚

- dump / forceCheck 模式：关脚本重启游戏即可
- unlock 模式：会真的写进存档。**改之前先备份**

```bash
adb shell "su -c 'cp -r /data/data/com.PigeonGames.Phigros/shared_prefs /sdcard/phigros_prefs_bak'"
adb pull /sdcard/phigros_prefs_bak
```

## 6. 注意

- 成绩会被写成 100 万（或你指定的分数），rks / 排行 / 云存档会跟着变。建议只在自己号上玩，别上传官方排行。
- 云存档同步时本地会覆盖云端（或反之，会弹"Save Conflict"让你选）。想保留原档就先备份。
- 如果 dump 阶段出现 `!! 没找到 LevelRecord 类` 或数值全 0，说明 RVA 与这个 APK 版本不匹配，
  重新用 Il2CppDumper 跑一遍 `libil2cpp.so` + `global-metadata.dat`，把新 RVA 填回 `RVA` 表。
