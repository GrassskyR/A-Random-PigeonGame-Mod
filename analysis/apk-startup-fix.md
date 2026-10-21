# 解锁版启动崩溃诊断

原应用 ID：com.PigeonGames.Phigros。共存版 ID：com.PigeonGames.Phigros.unlock。

用户连续启动失败的 crash buffer 显示：Resources$NotFoundException: String resource ID #0x0，调用栈为 Resources.getString → com.unity3d.player.i0.a → UnityPlayer.<init> → UnityPlayerActivity.onCreate。日志见 apk-crash-before.txt。

Unity 的 i0.a 使用 Context.getPackageName() 作为 Resources.getIdentifier 的包名。前版只改 AndroidManifest 的应用 ID，resources.arsc 中 ResTable_package.name 仍为原包名，导致查找返回 0。

修正：build_unlock_apk.py 增加 patch_resource_package，在资源表固定长度 UTF-16 包名字段中同步共存包名；资源 ID、类型表和字符串数据保持原值。修正版通过 v2/v3 APK 签名校验和 ZIP 对齐校验。

架构核对：模拟器报告 x86_64,arm64-v8a,x86,armeabi-v7a,armeabi，native bridge 为 libnb.so；启动日志中 libhoudini 的 arm64 初始化成功。上述崩溃发生在 Java 字符串资源读取处，与指令集不兼容、签名校验失败的表现不符。

运行验证：修正版 adb install 返回 Success，am start -W 返回 Status: ok。进程 PID 4356 持续运行，已实际进入 Introduction 教学画面，截图 shots/apk-fixed-current.png。用户随后确认已启动并接手手动测试，停止模拟器输入。第九章密码资源 provider 仍有加载错误记录，隐藏剧情未解密；此项与原 Java 启动崩溃分开记录。
