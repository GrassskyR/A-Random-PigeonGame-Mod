#!/usr/bin/env python3
"""Seed the tutorial-complete flag before Unity starts in the current mod APK."""
import copy
import sys
sys.path.insert(0, str(__import__("pathlib").Path(__file__).resolve().parents[1]))
from modules.tutorial.config import tutorial_flag
import urllib.parse
import zipfile
from build_unlock_apk import CTX, run, copy_raw

zipfile.ZIP64_LIMIT = (1 << 32) - 1
source = CTX.artifact('watermark')
destination = CTX.artifact('tutorial')
work = CTX.stage_work('tutorial')
def main():
    CTX.begin_stage('tutorial')
    from modules.unlock.chapter9_save import encrypt, decrypt
    KEY, VALUE = tutorial_flag()
    work.mkdir(parents=True, exist_ok=True)
    shell = work / 'shell'
    # Decode the actual upstream input on every build.
    with zipfile.ZipFile(source) as src, zipfile.ZipFile(work / 'shell.apk', 'w') as dst:
        for name in ('AndroidManifest.xml', 'resources.arsc', 'classes.dex'):
            dst.writestr(name, src.read(name))
    run('apktool', 'd', '-r', '-f', '-o', shell, work / 'shell.apk')
    helper = shell / 'smali/com/phigros/local/UnlockBootstrap.smali'
    activity = shell / CTX.assets['activity_smali']
    assert 'Lcom/phigros/local/UnlockBootstrap;->apply' in activity.read_text()
    key = urllib.parse.quote_plus(encrypt(KEY), safe='')
    value = urllib.parse.quote_plus(encrypt(VALUE), safe='')
    assert decrypt(urllib.parse.unquote_plus(key)) == KEY
    assert decrypt(urllib.parse.unquote_plus(value)) == VALUE
    text = helper.read_text()
    seed = '\n'.join([
        '    # Skip the mandatory first-run tutorial (same flag as tutorial completion).',
        f'    const-string v1, "{key}"',
        f'    const-string v2, "{value}"',
        '    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;',
        '',
    ])
    if key not in text:
        commit = '    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z'
        assert text.count(commit) == 1
        text = text.replace(commit, seed + commit)
        helper.write_text(text)
    assert seed in helper.read_text()
    run('apktool', 'b', shell, '-o', work / 'shell-rebuilt.apk')
    with zipfile.ZipFile(work / 'shell-rebuilt.apk') as apk:
        dex = apk.read('classes.dex')
        assert key.encode('ascii') in dex and value.encode('ascii') in dex
    unsigned = work / 'skip-tutorial-unsigned.apk'
    with zipfile.ZipFile(source) as src, zipfile.ZipFile(unsigned, 'w', allowZip64=False) as dst:
        for entry in src.infolist():
            if entry.filename.startswith('META-INF/'):
                continue
            if entry.filename == 'classes.dex':
                dst.writestr(copy.copy(entry), dex)
            else:
                copy_raw(src, dst, entry)
    env = CTX.android_tool_env()
    aligned = work / 'skip-tutorial-aligned.apk'
    run(CTX.zipalign, '-f', '-p', '4', unsigned, aligned, env=env)
    signer = CTX.signer_jar
    run('java', '-jar', signer, 'sign', '--ks', CTX.keystore,
        '--ks-pass', 'pass:local-unlock', '--key-pass', 'pass:local-unlock',
        '--v1-signing-enabled', 'false', '--v2-signing-enabled', 'true',
        '--v3-signing-enabled', 'true', '--v4-signing-enabled', 'false',
        '--out', destination, aligned)
    run('java', '-jar', signer, 'verify', '--verbose', destination)
    run(CTX.zipalign, '-c', '4', destination, env=env)
    with zipfile.ZipFile(source) as src, zipfile.ZipFile(destination) as dst:
        assert set(src.namelist()) == set(dst.namelist())
        for entry in src.infolist():
            if entry.filename == 'classes.dex' or entry.filename.startswith('META-INF/'):
                continue
            actual = dst.getinfo(entry.filename)
            assert (actual.CRC, actual.file_size) == (entry.CRC, entry.file_size), entry.filename
    print(f'Only classes.dex changed; tutorial-complete flag seeded before Unity.\n{destination}', flush=True)
    CTX.finish_stage('tutorial', source)


if __name__ == '__main__':
    main()
