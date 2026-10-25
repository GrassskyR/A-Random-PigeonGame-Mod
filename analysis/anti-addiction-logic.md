# Phigros 4.0.1.1 防沉迷窗口逻辑还原

[项目首页](../README.md) · [Agent 接手速查](../docs/handoff.md)

## 依据和范围

静态分析原始 Phigros_4.0.1.1.apk；确认 work/lib/arm64-v8a/libil2cpp.so 与原包对应文件逐字节一致。Unity 侧根据 ildump/dump.cs 的类型/方法信息和 ARM64 指令还原，Java 侧依据 work/jadx-out/sources/com/tapsdk/ 下的反编译代码。下列伪代码是语义还原，证据范围为本地 ARM64 指令和 Java 代码。

## 1. 启动入口

SplashScene.<GameStart>d__21.MoveNext：先 CheckPrivacyPolicy，再调用 antiAddiction.CheckAntiAddiction（调用点 RVA 0x1DB3B84）。检查不通过的路径调用 Application.Quit（0x1DB3C80）。启动检查以 UniTask<bool> 异步返回结果，不是单纯显示一张窗口图片。

## 2. 游戏层判定

CheckAntiAddiction 的状态机位于 0x1CB5D0C，主要逻辑等价于：

```csharp
async UniTask<bool> CheckAntiAddiction() {
    int restrict = SaveManagement.LoadInt("AntiAddictionRestrictType", -1);
    if (restrict == 0) return true;

    if (Application.internetReachability != NetworkReachability.NotReachable) {
        if (!await CheckIfUserInCN()) return true;
        TapLogin.Init(ClientId);
        return await Auth();
    }

    if (Application.systemLanguage == SystemLanguage.Chinese ||
        Application.systemLanguage == SystemLanguage.ChineseSimplified) {
        await PhigrosUI.ShowOkMessageBox(/* 省略消息参数 */);
        return false;
    }
    return true;
}
```

对应证据：0x1CB5F60 读本地值；0x1CB5F64 检查零值；0x1CB5F84 网络可达性；0x1CB5F94 地区判断；0x1CB60B0 Auth；0x1CB6184/0x1CB61A4 比较语言枚举 6、40；0x1CB61C8 显示游戏消息框。

**注意：离线分支只比较上述两个语言枚举，不能概括为所有中文语言。** 本地值为 0 的分支早于网络/语言检查，因此这些检查不是每次启动必走。

## 3. 国内判断是连通性启发式

CheckIfUserInCN 状态机 0x1CB66F4：并行启动两个协程访问 https://baidu.com 和 https://google.com，等待两个回调完成，然后返回：

```csharp
return canConnectBaidu && !canConnectGoogle;
```

不是 GPS、SIM 国家码或直接 IP 地理定位。回调接收 startTime，但最终布尔表达式不比较延迟。

CheckInternetConnection 状态机 0x1CB6D3C：使用 UnityWebRequest；0x1CB6DEC 将 result 与 2（ConnectionError）比较。因此这里的“可达”准确含义是结果不等于 ConnectionError，并不严格要求 HTTP 200，也不是网页正文校验。

## 4. 认证回调与游戏自有窗口

Auth 状态机 0x1CB5250 使用 ageCache；非负缓存存在时可复用，否则调用 TapTap.AntiAddiction.AntiAddictionUIKit.StartupWithTapTap，并 WaitUntil 回调中的 age 不再为 -1。

回调 AntiAddiction.<>c__DisplayClass4_0.<Auth>g__Callback|0，RVA 0x1CB50C0：

- 读取 SDK AgeRange。
- returnCode == 500：将年龄段值写入等待变量及 ageCache。
- 其他返回码：等待变量置 -2。
- 异常处理另有 -3 路径；Auth 对 -3 显示游戏消息框后返回失败。

Auth 完成后的核心分支：

```csharp
if (age >= 18) {
    SaveManagement.SaveInt("AntiAddictionRestrictType", 0);
    return true;
}
if (age >= 0) {
    SaveManagement.SaveInt("AntiAddictionRestrictType", 1);
    LoadAntiAddiction();
    return true;
}
// -3 先显示消息框；其他负值也返回 false
return false;
```

SDK 返回的是年龄段接口值，不应当解释成用户准确年龄。0x1CB5848 确实比较 18；0x1CB5880 写 1，0x1CB588C 调用 LoadAntiAddiction；0x1CB58C0 写 0。

LoadAntiAddiction（0x1CB4EA0）读取 AntiAddiction.antiAddictionPrefab，并通过 Unity 的实例化路径将其挂到一个全局对象的 Transform 下。这是游戏自己的 prefab 实例化入口，与 Android 原生 SDK Dialog 分开。

## 5. Android SDK 窗口选择

文件：work/jadx-out/sources/com/tapsdk/antiaddictionui/AntiAddictionUIImpl.java。

checkUserAuthIdentify：

- STATUS_PASS：tryLoginAntiAddiction。
- STATUS_WAITING：openReminderDialog，窗口类型 1002。
- 其他状态或查询失败：navigateToTapTapFastCertification；相关页面包括 DialogTapAuthorization、DialogGameRealName。

makeAntiAddictionCallback 的映射如下。**SDK 事件码与 Dialog 类型码属于两套编号。**

| SDK 事件 | UI 类型 | 表现 |
| --- | --- | --- |
| 500 | 无限制 Dialog | 转发成功回调，isReady=true，AntiAddictionKit.enterGame，显示成功 Toast |
| 1030 | 1003 | 限制提醒，主按钮“退出游戏” |
| 1050 | 1001 | 时长限制提醒，主按钮“退出游戏” |
| 1095 | 1004 | 剩余时间提醒，主按钮“进入游戏” |

1100、1200、9002、1000、1001 等事件在该回调中有转发处理，不能一概当成上述限制 Dialog。1095 不会立即从这一分支转发为认证成功；登录提醒的“进入游戏”会再次 checkPlayableWhenEnterByUI。

processNonage（AntiAddictionImpl.java）：成年人通知 500；未成年人 remainTime <= 0 通知 1030；remainTime > 0 通知 1095，并标记 IS_LOGIN_TIP=true。再次检查可玩状态后，允许进入才通知 500。

## 6. Dialog 如何实现

DialogGameHealthReminder 继承 AbsBaseDialogFragment：

1. getInstance 把 client_id、userIdentifier、limitType、title、description 和按钮文案写入 Bundle。
2. openReminderDialog 调用 show(activity.getFragmentManager(), ...)。
3. 加载 R.layout.antiaddictionui_dialog_game_health_reminder。
4. 填充标题、Html.fromHtml(description) 和按钮。
5. 基类设置 335×320 dp（不超过屏幕），透明背景，禁止触摸外部关闭、禁止取消，隐藏导航栏。

按钮行为：1001/1003 调用 finishAffinity() 和 System.exit(0)；1004 调用 enterGame 回调；1002 调用 checkPending；1005 关闭付费限制提醒。“切换账号”调用 AntiAddictionKit.switchAccount() 再关闭 Dialog。1004/1005 隐藏切换账号按钮，其他类型也受 showSwitchAccount 配置影响。

文案主要来自回调 map 的 title/description 或 SDK 配置；所以 APK 中的布局并不等于固定的全部提示内容。

## 7. 游戏过程中为什么还会弹

TimingModel.java 使用 HandlerThread/TimingHandler 计时，与服务端同步可玩状态；heartbeatInterval 初始值为 120，并存在配置相关逻辑，不能把默认值直接视为所有账号的固定策略。

同步得到正剩余时间且小于等于心跳间隔时进入逐秒倒计时；剩余时间耗尽后进一步同步/检查，通过主线程发送 1030，走上述 UI 回调生成限制窗口。此链路从游戏过程中的计时回调进入窗口显示。

## 结论边界

本报告覆盖启动调用点、游戏层分支、连通性判定、年龄段返回值处理、prefab 实例化入口、SDK Dialog 映射/按钮代码及计时触发链。结论限于本地代码；原生指令见 anti-addiction-arm64.asm。
