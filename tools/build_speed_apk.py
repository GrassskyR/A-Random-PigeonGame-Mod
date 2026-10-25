#!/usr/bin/env python3
"""Package the song-select speed mod (pitch + chart time warp) into the current APK.

Adds libspeed.so, SpeedOverlay (classes3.dex), and the custom avatar PNG and
level0 entry. classes.dex gains the activity hook and encrypted avatar seed;
other input entries, including the practice overlay classes2.dex, stay intact.
"""
import copy
import os
import shutil
import subprocess
import zipfile
from pathlib import Path

from build_unlock_apk import ROOT, BUILD, bootstrap_entries, copy_raw, run
from modules.avatar.level0_avatar import add_custom_avatar, AVATAR_NAME

zipfile.ZIP64_LIMIT = (1 << 32) - 1
WORK = ROOT / 'work/speedmod'
SOURCE = ROOT / 'dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections.apk'
DEST = ROOT / 'dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections_Speed.apk'
SPEED_LIB = 'lib/arm64-v8a/libspeed.so'
AVATAR_PNG = ROOT / 'modules/avatar/assets/zundamon.png'


def compile_overlay():
    sdk = Path(os.environ.get('ANDROID_SDK_ROOT', '/mnt/c/Users/missi/AppData/Local/Android/Sdk'))
    android = sdk / 'platforms/android-36/android.jar'
    d8 = sdk / 'build-tools/36.0.0/lib/d8.jar'
    classes = WORK / 'classes'
    if classes.exists():
        shutil.rmtree(classes)
    classes.mkdir(parents=True, exist_ok=True)
    javac = shutil.which('javac')
    sources = [ROOT / 'modules/speed/SpeedOverlay.java', ROOT / 'modules/avatar/AvatarAssets.java']
    if javac:
        run(javac, '-encoding', 'UTF-8', '-source', '8', '-target', '8',
            '-bootclasspath', android, '-d', classes, *sources)
    else:
        javac = Path('/mnt/d/graalvm-jdk-21.0.8+12.1/bin/javac.exe')

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
    ndk = WORK / 'android-ndk-r27d'
    if not ndk.exists():
        ndk = ROOT / 'work/practice/android-ndk-r27d'
    compiler = ndk / 'toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android23-clang'
    run(compiler, '-std=c11', '-O2', '-Wall', '-Wextra', '-Werror', '-fPIC', '-shared',
        '-Wl,-z,max-page-size=16384', '-Wl,-soname,libspeed.so',
        '-I', ROOT / 'modules/speed',
        '-I', ROOT / 'modules/avatar',
        ROOT / 'modules/speed/speedmod.c',
        ROOT / 'modules/speed/speed_judgement.c',
        ROOT / 'modules/avatar/avatar_hook.c',
        '-o', WORK / 'libspeed.so',
        '-llog', '-ldl', '-lm')


def build_shell():
    """Re-decode the real input and add the activity hook and encrypted avatar seed."""
    WORK.mkdir(parents=True, exist_ok=True)
    avatar_keys = {
        'UserIconKeyName': AVATAR_NAME,
        '3key' + AVATAR_NAME: '1',
    }
    shell = WORK / 'shell'
    # CollectionsBootstrap must always come from the actual input DEX.
    with zipfile.ZipFile(SOURCE) as src, zipfile.ZipFile(WORK / 'shell.apk', 'w') as dst:
        for name in ('AndroidManifest.xml', 'resources.arsc', 'classes.dex'):
            dst.writestr(name, src.read(name))
    run('apktool', 'd', '-r', '-f', '-o', shell, WORK / 'shell.apk')
    activity = shell / 'smali/com/unity3d/player/UnityPlayerActivity.smali'
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
    with zipfile.ZipFile(SOURCE) as src:
        src.getinfo('classes2.dex')  # require the practice overlay input
        level0 = add_custom_avatar(src.read('assets/bin/Data/level0'))
    overlay = compile_overlay()
    build_speed_library()
    first_dex = build_shell()
    # The overlay DEX becomes classes3.dex next to the practice overlay DEX.
    replacements = {'classes.dex': first_dex,
                    'classes3.dex': overlay,
                    'assets/bin/Data/level0': level0,
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
    prefix = BUILD / 'tools/usr'
    env = dict(os.environ)
    env['LD_LIBRARY_PATH'] = ':'.join(str(prefix / p) for p in (
        'lib', 'lib/x86_64-linux-gnu/android', 'lib/x86_64-linux-gnu'))
    aligned = WORK / 'speed-aligned.apk'
    run(prefix / 'bin/zipalign', '-f', '-p', '4', unsigned, aligned, env=env)
    signer = prefix / 'share/java/apksigner.jar'
    run('java', '-jar', signer, 'sign', '--ks', BUILD / 'local-unlock.jks',
        '--ks-pass', 'pass:local-unlock', '--key-pass', 'pass:local-unlock',
        '--v1-signing-enabled', 'false', '--v2-signing-enabled', 'true',
        '--v3-signing-enabled', 'true', '--v4-signing-enabled', 'false',
        '--out', DEST, aligned)
    run('java', '-jar', signer, 'verify', '--verbose', DEST)
    run(prefix / 'bin/zipalign', '-c', '4', DEST, env=env)
    with zipfile.ZipFile(SOURCE) as src, zipfile.ZipFile(DEST) as dst:
        assert 'classes3.dex' in dst.namelist()
        assert dst.read(SPEED_LIB) == (WORK / 'libspeed.so').read_bytes()
        assert dst.read('assets/speed/zundamon.png') == AVATAR_PNG.read_bytes()
        for entry in src.infolist():
            if entry.filename in ('classes.dex',
                                  'assets/bin/Data/level0') or entry.filename.startswith('META-INF/'):
                continue
            actual = dst.getinfo(entry.filename)
            assert (actual.CRC, actual.file_size) == (entry.CRC, entry.file_size), entry.filename
    print(DEST, flush=True)


if __name__ == '__main__':
    main()
