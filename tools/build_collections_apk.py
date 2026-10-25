#!/usr/bin/env python3
"""Unlock collection texts, illustrations and avatars in the practice mod.

Only classes.dex is replaced. The native libraries, second DEX, scenes, full
song unlocks, practice overlay and watermark are copied from the input APK.
"""
import copy
import os
import zipfile

from build_unlock_apk import ROOT, BUILD, bootstrap_smali, copy_raw, run
from chapter9_save import all_collection_progress, all_cosmetic_progress

SOURCE = ROOT / 'dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_SkipTutorial.apk'
DESTINATION = ROOT / 'dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_AllCollections.apk'
WORK = ROOT / 'work/collections'


def main():
    WORK.mkdir(parents=True, exist_ok=True)
    shell = WORK / 'shell'
    shell_apk = WORK / 'shell.apk'
    # Decode the actual input each time; other build stages cache older shells.
    with zipfile.ZipFile(SOURCE) as src, zipfile.ZipFile(shell_apk, 'w') as dst:
        for name in ('AndroidManifest.xml', 'resources.arsc', 'classes.dex'):
            dst.writestr(name, src.read(name))
    run('apktool', 'd', '-r', '-f', '-o', shell, shell_apk)

    values = {**all_collection_progress(), **all_cosmetic_progress()}
    # Reuse the original AES/URL-encoded PlayerPrefs writer, without its C9 key
    # deletions. The existing UnlockBootstrap still runs first, unchanged.
    helper = bootstrap_smali(values, cleared=())
    helper = helper.replace('Lcom/phigros/local/UnlockBootstrap;',
                            'Lcom/phigros/local/CollectionsBootstrap;')
    (shell / 'smali/com/phigros/local/CollectionsBootstrap.smali').write_text(helper)
    activity = shell / 'smali/com/unity3d/player/UnityPlayerActivity.smali'
    source = activity.read_text()
    original_hook = ('    invoke-static {p0}, Lcom/phigros/local/'
                     'UnlockBootstrap;->apply(Landroid/content/Context;)V')
    hook = original_hook.replace('UnlockBootstrap;', 'CollectionsBootstrap;')
    assert source.count(original_hook) == 1
    assert hook not in source
    source = source.replace(original_hook, original_hook + '\n\n' + hook)
    activity.write_text(source)
    rebuilt = WORK / 'shell-rebuilt.apk'
    run('apktool', 'b', shell, '-o', rebuilt)
    with zipfile.ZipFile(rebuilt) as apk:
        dex = apk.read('classes.dex')

    unsigned = WORK / 'collections-unsigned.apk'
    with zipfile.ZipFile(SOURCE) as src, zipfile.ZipFile(unsigned, 'w', allowZip64=False) as dst:
        for entry in src.infolist():
            if entry.filename.startswith('META-INF/'):
                continue
            if entry.filename == 'classes.dex':
                dst.writestr(copy.copy(entry), dex)
            else:
                copy_raw(src, dst, entry)
    prefix = BUILD / 'tools/usr'
    env = dict(os.environ)
    env['LD_LIBRARY_PATH'] = ':'.join(str(prefix / path) for path in (
        'lib', 'lib/x86_64-linux-gnu/android', 'lib/x86_64-linux-gnu'))
    aligned = WORK / 'collections-aligned.apk'
    run(prefix / 'bin/zipalign', '-f', '-p', '4', unsigned, aligned, env=env)
    signer = prefix / 'share/java/apksigner.jar'
    run('java', '-jar', signer, 'sign', '--ks', BUILD / 'local-unlock.jks',
        '--ks-pass', 'pass:local-unlock', '--key-pass', 'pass:local-unlock',
        '--v1-signing-enabled', 'false', '--v2-signing-enabled', 'true',
        '--v3-signing-enabled', 'true', '--v4-signing-enabled', 'false',
        '--out', DESTINATION, aligned)
    run('java', '-jar', signer, 'verify', '--verbose', '--print-certs', DESTINATION)
    run(prefix / 'bin/zipalign', '-c', '4', DESTINATION, env=env)
    with zipfile.ZipFile(SOURCE) as src, zipfile.ZipFile(DESTINATION) as dst:
        assert set(src.namelist()) == set(dst.namelist())
        for entry in src.infolist():
            if entry.filename == 'classes.dex' or entry.filename.startswith('META-INF/'):
                continue
            actual = dst.getinfo(entry.filename)
            assert (actual.CRC, actual.file_size) == (entry.CRC, entry.file_size), entry.filename
    print(f'{len(values)} collection/cosmetic counters seeded; only classes.dex changed.\n'
          f'{DESTINATION}', flush=True)


if __name__ == '__main__':
    main()
