#!/usr/bin/env python3
"""Package the song-select speed mod (pitch + chart time warp) into the current APK.

Adds libspeed.so, SpeedOverlay (classes3.dex), and the custom avatar PNG and
level0 entry. classes.dex gains the activity hook and encrypted avatar seed;
other input entries, including the practice overlay classes2.dex, stay intact.
"""
import copy
import shutil
import subprocess
import zipfile
from pathlib import Path

from build_unlock_apk import ROOT, CTX, bootstrap_entries, copy_raw, run
from modules.avatar.level0_avatar import add_custom_avatar

zipfile.ZIP64_LIMIT = (1 << 32) - 1
WORK = CTX.stage_work('speed')
SOURCE = CTX.artifact('collections')
DEST = CTX.artifact('speed')
SPEED_LIB = 'lib/arm64-v8a/libspeed.so'
AVATAR_PNG = ROOT / 'modules/avatar/assets/zundamon.png'


def compile_overlay():
    sdk = CTX.sdk
    android = sdk / 'platforms/android-36/android.jar'
    d8 = sdk / 'build-tools/36.0.0/lib/d8.jar'
    classes = WORK / 'classes'
    if classes.exists():
        shutil.rmtree(classes)
    classes.mkdir(parents=True, exist_ok=True)
    javac = CTX.javac
    sources = [ROOT / 'modules/speed/SpeedOverlay.java', ROOT / 'modules/avatar/AvatarAssets.java']
    if not str(javac).lower().endswith('.exe'):
        run(javac, '-encoding', 'UTF-8', '-source', '8', '-target', '8',
            '-bootclasspath', android, '-d', classes, *sources)
    else:
        javac = Path(CTX.javac)

        def win(path):
            return subprocess.check_output(['wslpath', '-w', str(path)]).decode().strip()
        run(javac, '-encoding', 'UTF-8', '-source', '8', '-target', '8',
            '-bootclasspath', win(android), '-d', win(classes), *(win(p) for p in sources))
    jar = WORK / 'speed-overlay.jar'
    with zipfile.ZipFile(jar, 'w') as z:
        for path in classes.rglob('*.class'):
            z.write(path, path.relative_to(classes))
    (WORK / 'dex').mkdir(exist_ok=True)
    # Compile classes3.dex separately; the practice classes2.dex is copied intact.
    run('java', '-cp', d8, 'com.android.tools.r8.D8', '--lib', android,
        '--min-api', '23', '--output', WORK / 'dex', jar)
    return (WORK / 'dex/classes.dex').read_bytes()


def build_speed_library():
    WORK.mkdir(parents=True, exist_ok=True)
    compiler = CTX.compiler
    run(compiler, '-std=c11', '-O2', '-Wall', '-Wextra', '-Werror', '-fPIC', '-shared',
        '-Wl,-z,max-page-size=16384', '-Wl,-soname,libspeed.so',
        '-I', CTX.generate_header(('speed', 'avatar')),
        '-I', ROOT / 'modules/speed',
        '-I', ROOT / 'modules/avatar',
        *CTX.native_sources('speed'),
        *CTX.native_sources('avatar'),
        '-o', WORK / 'libspeed.so',
        '-llog', '-ldl', '-lm')


def build_shell():
    """Re-decode the real input and add the activity hook and encrypted avatar seed."""
    WORK.mkdir(parents=True, exist_ok=True)
    avatar_keys = CTX.progress['avatar_seed']
    shell = WORK / 'shell'
    # CollectionsBootstrap must always come from the actual input DEX.
    with zipfile.ZipFile(SOURCE) as src, zipfile.ZipFile(WORK / 'shell.apk', 'w') as dst:
        for name in ('AndroidManifest.xml', 'resources.arsc', 'classes.dex'):
            dst.writestr(name, src.read(name))
    run('apktool', 'd', '-r', '-f', '-o', shell, WORK / 'shell.apk')
    activity = shell / CTX.assets['activity_smali']
    source_text = activity.read_text()
    hook = ('    invoke-static {p0}, Lcom/phigros/local/SpeedOverlay;'
            '->attach(Landroid/app/Activity;)V\n')
    start = source_text.index('.method protected onCreate(')
    end = source_text.index('.end method', start)
    body = source_text[start:end]
    if hook not in body:
        practice = ('    invoke-static {p0}, Lcom/phigros/local/PracticeOverlay;'
                    '->attach(Landroid/app/Activity;)V')
        assert practice in body
        body = body.replace(practice, practice + '\n' + hook)
        activity.write_text(source_text[:start] + body + source_text[end:])
    # Seed the default avatar inside the existing CollectionsBootstrap so the
    # value lands in the encrypted prefs before Unity reads them.
    helper = shell / 'smali/com/phigros/local/CollectionsBootstrap.smali'
    helper_text = helper.read_text()
    commit = ('    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;'
              '->commit()Z')
    assert helper_text.count(commit) == 1
    # Reuse the exact encrypted writer used by the other bootstrap builders.
    seed_lines = '\n'.join(bootstrap_entries(avatar_keys)) + '\n'
    helper.write_text(helper_text.replace(commit, seed_lines + commit))
    run('apktool', 'b', shell, '-o', WORK / 'shell-rebuilt.apk')
    with zipfile.ZipFile(WORK / 'shell-rebuilt.apk') as z:
        return z.read('classes.dex')


def main():
    CTX.begin_stage('speed')
    with zipfile.ZipFile(SOURCE) as src:
        src.getinfo('classes2.dex')  # require the practice overlay input
        level0 = add_custom_avatar(src.read(CTX.assets['avatar']['scene']))
    overlay = compile_overlay()
    build_speed_library()
    first_dex = build_shell()
    # The overlay DEX becomes classes3.dex next to the practice overlay DEX.
    replacements = {'classes.dex': first_dex,
                    'classes3.dex': overlay,
                    CTX.assets['avatar']['scene']: level0,
                    'assets/speed/zundamon.png': AVATAR_PNG.read_bytes(),
                    SPEED_LIB: (WORK / 'libspeed.so').read_bytes()}
    unsigned = WORK / 'speed-unsigned.apk'
    with zipfile.ZipFile(SOURCE) as src, zipfile.ZipFile(unsigned, 'w', allowZip64=False) as dst:
        for entry in src.infolist():
            if entry.filename.startswith('META-INF/'):
                continue
            if entry.filename in replacements:
                dst.writestr(copy.copy(entry), replacements.pop(entry.filename))
            else:
                copy_raw(src, dst, entry)
        for name, data in replacements.items():
            dst.writestr(name, data, compress_type=zipfile.ZIP_STORED)
    env = CTX.android_tool_env()
    aligned = WORK / 'speed-aligned.apk'
    run(CTX.zipalign, '-f', '-p', '4', unsigned, aligned, env=env)
    signer = CTX.signer_jar
    run('java', '-jar', signer, 'sign', '--ks', CTX.keystore,
        '--ks-pass', 'pass:local-unlock', '--key-pass', 'pass:local-unlock',
        '--v1-signing-enabled', 'false', '--v2-signing-enabled', 'true',
        '--v3-signing-enabled', 'true', '--v4-signing-enabled', 'false',
        '--out', DEST, aligned)
    run('java', '-jar', signer, 'verify', '--verbose', DEST)
    run(CTX.zipalign, '-c', '4', DEST, env=env)
    with zipfile.ZipFile(SOURCE) as src, zipfile.ZipFile(DEST) as dst:
        assert 'classes3.dex' in dst.namelist()
        assert dst.read(SPEED_LIB) == (WORK / 'libspeed.so').read_bytes()
        assert dst.read('assets/speed/zundamon.png') == AVATAR_PNG.read_bytes()
        for entry in src.infolist():
            if entry.filename in ('classes.dex',
                                  CTX.assets['avatar']['scene']) or entry.filename.startswith('META-INF/'):
                continue
            actual = dst.getinfo(entry.filename)
            assert (actual.CRC, actual.file_size) == (entry.CRC, entry.file_size), entry.filename
    CTX.finish_stage('speed', SOURCE)
    print(DEST, flush=True)


if __name__ == '__main__':
    main()
