/*
 * phigros_unlock.js — Phigros 4.0.1.1 (arm64) 全解锁工具（路线 A：调游戏自己的存档 API）
 *
 * 用法：
 *   frida -U -f com.PigeonGames.Phigros -l phigros_unlock.js          # 默认 dump 模式（只读，安全）
 *   想真正写入：把下面 CONFIG.mode 改成 "unlock"
 *
 * 设计原则：
 *   - 不 hook 判定逻辑、不改二进制，只调用游戏自己的 public 方法
 *   - 写入走 GameInformation::SetSongRecord / SaveManagement::*Save*，和正常游玩写的是同一条路
 *   - 出问题就重启游戏（dump 模式完全无副作用）
 *
 * 所有 RVA 来自 Il2CppDumper 对 libil2cpp.so + global-metadata.dat 的 dump（见 analysis/phigros-unlock-analysis.md）
 */

const CONFIG = {
    mode: "dump",        // "dump" = 只统计打印；"unlock" = 写入成绩 + 章节标记
    levels: ["EZ", "HD", "IN", "AT"],
    score: 1000000,      // 想低调点就写 880001
    acc: 100.0,
    forceCheck: false,   // true = 额外 hook CheckSongUnlock，强行把判定结果改成"已解锁"（仅界面层，不写存档）
    setChapterFlags: true,   // unlock 模式下是否补章节 8/9 剧情标记
    maxSongs: 400,
};

const RVA = {
    get_main: 0x1CB985C,
    GetSongRecord: 0x1CBB400,
    SetSongRecord: 0x1CBB654,
    GetSongAllRecord: 0x1CBB708,
    CheckSongUnlock: 0x1CBCC74,
    GetRemainingUnlockTimes: 0x1CBDDC0,
    SaveBool: 0x1CC4F80,
    SaveInt: 0x1CC5034,
    LegacySaveBool: 0x1CC6248,
    LegacySaveInt: 0x1CC62FC,
};

// ---- GameInformation / 数据结构字段偏移（来自 dump.cs） ----
const OFF = {
    GI_chapters: 0xE0,
    GI_songAllCombos: 0xF8,
    Chapter_songInfo: 0x18,
    Chapter_unlockInfo: 0x20,
    ChapterSongInfo_songs: 0x28,
    ChapterSongItem_songsId: 0x10,
    ChapterSongItem_unlockType: 0x18,
    ChapterSongItem_secretType: 0x28,
    ChapterSelectorUnlockInfo_unlockMode: 0x10,
    ChapterSelectorUnlockInfo_unlockFlag: 0x18,
    LevelRecord_s: 0x10,
    LevelRecord_a: 0x14,
    LevelRecord_c: 0x18,
    // il2cpp 容器布局
    ARRAY_LEN: 0x18,
    ARRAY_DATA: 0x20,
    LIST_ITEMS: 0x10,
    LIST_SIZE: 0x18,
};

let M = null;          // libil2cpp 模块
let api = {};          // 常用函数
let gi = null;         // GameInformation 实例
let log = (m) => console.log("[phi] " + m);

function u8(p) { return p.readU8(); }
function i32(p) { return p.readS32(); }
function ptr(p) { return p.readPointer(); }

function arrayLen(arr) { return arr.add(OFF.ARRAY_LEN).readS32(); }

function listItems(list) {
    const items = list.add(OFF.LIST_ITEMS).readPointer();
    const size = list.add(OFF.LIST_SIZE).readS32();
    return { items, size };
}

function cstr(s) { return Memory.allocUtf8String(s); }

function readIl2cppString(p) {
    if (p.isNull()) return null;
    // Il2CppString: header(0x0..0xF), length @0x10 (int32), utf16 chars @0x14
    const len = p.add(0x10).readS32();
    if (len <= 0 || len > 512) return "";
    return p.add(0x14).readUtf16String(len);
}

function stringToGame(s) {
    return api.newString(cstr(s));
}

function waitModule(name, cb) {
    const t = setInterval(() => {
        const m = Process.findModuleByName(name);
        if (m) { clearInterval(t); cb(m); }
    }, 200);
}

waitModule("libil2cpp.so", (m) => {
    M = m;
    log("libil2cpp.so @ " + m.base);
    const f = (off, ret, args) => new NativeFunction(m.base.add(off), ret, args);

    api = {
        get_main: f(RVA.get_main, "pointer", []),
        GetSongRecord: f(RVA.GetSongRecord, "pointer", ["pointer", "pointer", "pointer"]),
        SetSongRecord: f(RVA.SetSongRecord, "void", ["pointer", "pointer", "pointer", "pointer"]),
        GetSongAllRecord: f(RVA.GetSongAllRecord, "pointer", ["pointer", "pointer"]),
        GetRemainingUnlockTimes: f(RVA.GetRemainingUnlockTimes, "int", ["pointer", "pointer", "int"]),
        SaveBool: f(RVA.SaveBool, "void", ["pointer", "uchar"]),
        SaveInt: f(RVA.SaveInt, "void", ["pointer", "int"]),
        LegacySaveBool: f(RVA.LegacySaveBool, "void", ["pointer", "uchar"]),
        LegacySaveInt: f(RVA.LegacySaveInt, "void", ["pointer", "int"]),
        newString: new NativeFunction(m.base.add(0x1B980F8), "pointer", ["pointer"]),        // il2cpp_string_new
        domain_get: new NativeFunction(m.base.add(0x1B97CB8), "pointer", []),                // il2cpp_domain_get
        thread_attach: new NativeFunction(m.base.add(0x1B98114), "pointer", ["pointer"]),    // il2cpp_thread_attach
        class_from_name: new NativeFunction(m.base.add(0x1B977C0), "pointer", ["pointer", "pointer", "pointer"]),
        object_new: new NativeFunction(m.base.add(0x1B98094), "pointer", ["pointer"]),
        domain_get_assemblies: new NativeFunction(m.base.add(0x1B97CC4), "pointer", ["pointer", "pointer"]),
        assembly_get_image: new NativeFunction(m.base.add(0x1B97788), "pointer", ["pointer"]),
    };
    // 把当前 Frida 线程挂到 il2cpp 上，之后才能安全调托管方法
    const domain = api.domain_get();
    api.thread_attach(domain);

    // 解析 LevelRecord 类，用于构造成绩对象
    const cnt = Memory.alloc(8);
    const asms = api.domain_get_assemblies(domain, cnt);
    let levelRecordClass = ptr(0);
    const n = i32(cnt);
    for (let i = 0; i < n; i++) {
        const asm = asms.add(i * Process.pointerSize).readPointer();
        const img = api.assembly_get_image(asm);
        const k = api.class_from_name(img, cstr(""), cstr("LevelRecord"));
        if (!k.isNull()) { levelRecordClass = k; break; }
    }
    if (levelRecordClass.isNull()) { log("!! 没找到 LevelRecord 类，unlock 模式不可用"); }
    api.LevelRecord = levelRecordClass;

    if (CONFIG.forceCheck) installForceHook();
    bootstrap();
});

function newRecord(score, acc, combo) {
    const rec = api.object_new(api.LevelRecord);
    rec.add(OFF.LevelRecord_s).writeS32(score);
    rec.add(OFF.LevelRecord_a).writeFloat(acc);
    rec.add(OFF.LevelRecord_c).writeS32(combo);
    return rec;
}

function installForceHook() {
    log("安装 CheckSongUnlock 强制解锁 hook（仅界面层）");
    Interceptor.attach(M.base.add(RVA.CheckSongUnlock), {
        onEnter(args) {
            this.outType = args[2];
            this.outChart = args[3];
            this.outAppeared = args[4];
        },
        onLeave() {
            this.outType.writeS32(-1);            // -1 = Always unlocked
            this.outAppeared.writeU8(1);          // 常显示
            const arr = this.outChart.readPointer();
            if (!arr.isNull()) {
                const len = arrayLen(arr);
                for (let i = 0; i < len; i++) arr.add(OFF.ARRAY_DATA + i).writeU8(1);
            }
        },
    });
}

function bootstrap() {
    // 等 GameInformation.main 就绪（主菜单/加载完成后才有）
    let tries = 0;
    const t = setInterval(() => {
        try {
            gi = api.get_main();
        } catch (e) { gi = null; }
        if (!gi || gi.isNull()) {
            if (++tries > 240) { clearInterval(t); log("超时：GameInformation.main 一直为空"); }
            return;
        }
        clearInterval(t);
        log("GameInformation @ " + gi);
        try { run(); } catch (e) { log("!! " + e + "\n" + e.stack); }
    }, 500);
}

function collectSongs() {
    const seen = {};
    const songs = [];

    // 1) 章节表里的歌曲（ChapterSongItem：带 unlockType/secretType）
    const chapters = ptr(gi.add(OFF.GI_chapters));
    if (!chapters.isNull()) {
        const cn = arrayLen(chapters);
        for (let i = 0; i < cn; i++) {
            const ch = chapters.add(OFF.ARRAY_DATA + i * 8).readPointer();
            if (ch.isNull()) continue;
            let unlockMode = -1, unlockFlag = null;
            const uinfo = ch.add(OFF.Chapter_unlockInfo).readPointer();
            if (!uinfo.isNull()) {
                unlockMode = i32(uinfo.add(OFF.ChapterSelectorUnlockInfo_unlockMode));
                unlockFlag = readIl2cppString(uinfo.add(OFF.ChapterSelectorUnlockInfo_unlockFlag).readPointer());
            }
            const code = readIl2cppString(ch.add(0x10).readPointer());
            log(`章节[${i}] ${code} unlockMode=${unlockMode} unlockFlag=${unlockFlag}`);

            const si = ch.add(OFF.Chapter_songInfo).readPointer();
            if (si.isNull()) continue;
            const lst = si.add(OFF.ChapterSongInfo_songs).readPointer();
            if (lst.isNull()) continue;
            const { items, size } = listItems(lst);
            for (let j = 0; j < size; j++) {
                const it = items.add(j * 8).readPointer();
                if (it.isNull()) continue;
                const id = readIl2cppString(it.add(OFF.ChapterSongItem_songsId).readPointer());
                if (!id || seen[id]) continue;
                seen[id] = 1;
                songs.push({
                    id,
                    unlockType: i32(it.add(OFF.ChapterSongItem_unlockType)),
                    secretType: i32(it.add(OFF.ChapterSongItem_secretType)),
                });
            }
        }
    }

    // 2) songAllCombos 兜底（覆盖不在章节表里的曲目）
    const combos = ptr(gi.add(OFF.GI_songAllCombos));
    if (!combos.isNull()) {
        const { items, size } = listItems(combos);
        for (let j = 0; j < size; j++) {
            const it = items.add(j * 8).readPointer();
            if (it.isNull()) continue;
            const id = readIl2cppString(it.add(0x10).readPointer());
            if (!id || seen[id]) continue;
            seen[id] = 1;
            songs.push({ id, unlockType: null, secretType: null });
        }
    }
    return songs;
}

function allRecords(songId) {
    const out = [];
    const sid = stringToGame(songId);
    const lst = api.GetSongAllRecord(gi, sid);
    if (lst.isNull()) return out;
    const { items, size } = listItems(lst);
    for (let i = 0; i < size; i++) {
        const r = items.add(i * 8).readPointer();
        out.push(i32(r.add(OFF.LevelRecord_s)));
    }
    return out;
}

function applyChapterFlags() {
    const bools = [
        "legacyChapterFinished",
        "chapter8UnlockBegin", "chapter8UnlockSecondPhase", "chapter8Passed",
        "chapter9UnlockBegin", "chapter9Phase2Begin", "chapter9Phase2Passed",
        "chapter9SecretChallengePendingLifeUnlock", "c9BaselineChallengeReached",
    ];
    const arrays = ["chapter8SongUnlocked", "chapter9SongUnlocked", "chapter9Phase2SongUnlocked", "randomVersionUnlocked"];
    const ints = {
        unlockFlagOfSpasmodic: 1, unlockFlagOfIgallta: 1, unlockFlagOfRrharil: 1,
        flagOfSongRecordKey: 1, flagOfSongRecordKeyTakumi: 1,
    };

    const t = stringToGame;
    const B = (k) => { const ks = t(k); api.SaveBool(ks, 1); api.LegacySaveBool(t(k), 1); };
    const I = (k, v) => { const ks = t(k); api.SaveInt(ks, v); api.LegacySaveInt(t(k), v); };

    for (const k of bools) B(k);
    for (const base of arrays) for (let i = 0; i < 10; i++) B(base + i);
    for (const [k, v] of Object.entries(ints)) I(k, v);
    log("章节标记已写入（bool/array/int 三组）");
}

function run() {
    const songs = collectSongs();
    log(`共发现 ${songs.length} 首歌`);

    let need = 0, have = 0;
    const rows = [];
    for (const s of songs.slice(0, CONFIG.maxSongs)) {
        const recs = allRecords(s.id);
        const anyCleared = recs.some((v) => v > 0);
        if (anyCleared) have++; else need++;
        rows.push(`${s.id}\tunlockType=${s.unlockType}\tsecret=${s.secretType}\trecords=[${recs.join(",")}]`);
    }
    log(`有成绩 ${have} 首 / 无成绩 ${need} 首`);
    if (CONFIG.mode === "dump") {
        log("---- 明细（前 40 条） ----");
        rows.slice(0, 40).forEach((r) => log(r));
        log("dump 完成。把 CONFIG.mode 改成 \"unlock\" 再跑一次即可写入。");
        return;
    }

    // ---- unlock 模式 ----
    let written = 0;
    for (const s of songs) {
        const sid = stringToGame(s.id);
        for (const lv of CONFIG.levels) {
            const cur = api.GetSongRecord(gi, sid, stringToGame(lv));
            if (!cur.isNull() && i32(cur.add(OFF.LevelRecord_s)) > 0) continue; // 已有真实成绩，不动
            const rec = newRecord(CONFIG.score, CONFIG.acc, 0);
            api.SetSongRecord(gi, sid, stringToGame(lv), rec);
            written++;
        }
    }
    log(`已写入 ${written} 条成绩记录`);
    if (CONFIG.setChapterFlags) applyChapterFlags();
    log("完成。回到选曲界面/重进章节看看；下次游戏自动保存时这些数据会落到存档。");
}
