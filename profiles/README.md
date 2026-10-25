# 版本与偏移档案

[项目首页](../README.md) · [Agent 版本工作流](../docs/workflows/port-version.md)

当前原始研究快照：[4.0.1.1 / ARM64 / d373432ce775](4.0.1.1-arm64-d373432ce775/offsets.json)。目录名只用摘要前缀方便阅读，匹配样本必须使用 JSON 内的完整 SHA-256。

`offsets.json` 保留为 **2026-10-25 的原始研究快照**，不作为实时构建配置。当前构建/原生头/回放已读取同目录 `profile.json`、`assets.json`、`progress.json`、`replay.json`，稳定语义需求在 `profiles/requirements.json`。见 [可执行工作流](../docs/workflows/port-version.md)。

## 已保存什么

| JSON 字段 | 内容及证据范围 |
| --- | --- |
| `identity` | 原版 APK、原始 SO、metadata 的完整摘要，ELF Build ID、Unity/游戏/metadata 版本 |
| `address_model` | 四个 PT_LOAD 的文件偏移、虚拟地址、文件/内存大小、权限与对齐；运行时 load bias 的获取方式 |
| `native_targets` | 44 个正式原生目标：7 处静态补丁、6 个入口 hook、5 个指令 hook、25 个调用目标、1 个数据槽；保存 RVA、映射后的文件偏移、原字节、源码位置；能按方法入口匹配的目标附 dump 方法名和 C 签名 |
| `type_fields` | 21 个相关类型的全部 342 个有偏移字段，来自配套 `dump.cs`；区分实例字段和静态字段块内偏移。这些字段不全是 Mod 正在访问的字段 |
| `runtime_layouts` | 类的静态字段指针、字符串、数组、List、头像 callback 的源码使用布局 |
| `field_access_expressions` | 生产 C/header 中的直接字段访问表达式，保留循环、条件偏移及其源码位置，便于后续核对遗漏 |
| `scene_constraints` | level0、level12、globalgamemanagers.assets 的原始条目摘要；头像、暂停模糊、水印的场景/脚本 PathID 等源码约束；收藏品目录来源 |
| `research_references` | 175 个地址的原字节和引用上下文，包括研究说明、历史 Frida/补丁实验和回放；含三个明确的回放只读数据地址，**均不是正式补丁配方** |
| `source_fingerprints` | 提取依据的 34 个源码/研究/dump 文件摘要；源码位置按快照时的行号解释 |

没有复制整份 `ildump/script.json` 的 16 万余方法，也没有把汇编里的每一条指令地址当成新增定位成果。完整反汇编、配置与研究记录仍见 [研究索引](../analysis/README.md)。原包、SO、metadata、DummyDll、私有材料仍在忽略目录。

静态补丁记录 `replacement_bytes`；运行时 hook 的地址随进程变化，记录覆盖长度、跳回位置和替换模板。调用目标的 16 字节仅是原文件快照，不表示生产代码已有原字节断言。数据槽的文件字节也不能作为运行时指针值使用。

## 地址与“基址”

当前 SO 为 `ET_DYN`，ELF 虚拟地址起点为 0。因此当前工程中的 RVA 等于 ELF 虚拟地址。

```text
运行时地址 = dl_iterate_phdr 查到的 dlpi_addr + ELF 虚拟地址
文件偏移   = 所属 PT_LOAD.p_offset + (ELF 虚拟地址 - PT_LOAD.p_vaddr)
```

运行时 `dlpi_addr` 是受 ASLR 影响的加载偏移，每次启动重新获取，档案中为 `null`。不要保存某次进程的绝对地址作为版本常量；也不要把某条 RX `/proc/maps` 映射的起点直接当 load bias。段尾 `p_memsz > p_filesz` 的部分不对应原文件字节。

例如当前 `Pause.Update` 的 RVA 为 `0x1D87530`，文件偏移为 `0x1D83530`。代码段差值为 `0x4000`，其他段不同；任何版本都应解析实际 ELF。

## 本次核对

- `sha256sum -c Phigros_4.0.1.1.apk.sha256` 通过。
- 本地原始 SO、metadata 与原 APK 中对应条目逐字节一致；metadata 头版本为 31。
- 18 处实际写入点的源码预期原字节与原始 SO 一致；其余目标按 PT_LOAD 提取原字节。
- 全部 219 条正式/研究地址记录已复核映射与原字节，静态替换等长并可反汇编；8 个 IL2CPP 调用目标与 ELF 导出地址一致。44 与 175 两组中有重复地址，219 是记录数，不是互异地址数。
- 类型字段按配套 dump 提取；场景引用来自当前模块源码与既有研究，本次没有重新用 UnityPy 提取场景或进行设备验证。

档案是当前样本的定位依据，不代表新版本能直接使用，也不提升已有模组的设备验证状态。完整构建和原生回放未在本次资料整理中重跑。

## 实际构建配置

| 文件 | 消费者与约定 |
| --- | --- |
| `requirements.json` | 各模块的稳定语义 target/field/fixture 需求、定位方法/签名/候选模式；不存跨版本可直接套用的地址 |
| `<sample>/profile.json` | 样本身份、正式 targets/fields、模块状态、implementations 原生源文件选择、replay_suites 选择；可记录有证据的 module_requirements 差异 |
| `<sample>/assets.json` | 场景/脚本/Java 接入、Unity 版本、目录路径和摘要 |
| `<sample>/progress.json` | codec、真实进度/教程/收藏品规则与头像 seed；不写成绩 |
| `<sample>/replay.json` | 原版方法/片段/常量/继续地址及本版回放 fixture |
| `<sample>/evidence.md` | 版本适配与验证证据；明确设备交互范围 |

`tools/versioning.py::Context` 统一选择 profile 并校验材料；`generate_header` 生成本样本 `phigros_version.h`。生产 C 中 PH_RVA/PH_F/PH_HEAD 等宏与 Python 回放来自同一配置。native_sources 可选择模块 ports/ 下的版本实现；差异依赖须有证据，不自动删减旧需求。

新样本通过 prepare 建立空草稿。locate/search-pattern/scan-assets 只产生候选；补齐证据并静态校验后再 replay/build。输入路径、dump 来源和文件摘要绑定在本地 work/versions/<sample>/bindings.json，不将本机私有路径复制进版本档案。

当前 profile 的 catalog 路径仍引用 analysis 中的配套 JSON，并锁定摘要；它们不再是所有版本共用的隐式输入。新样本应将确认目录放在自己的 catalogs/。历史 offsets.json 的 source_fingerprints 描述改造前源码，不能拿它校验改造后的源码文件。

旧实验脚本和工具别名已清理。offsets.json 中保留的旧文件名、行号与摘要属于历史证据，不是现存入口；实际操作统一从 versions.py 与模块源码进入。
