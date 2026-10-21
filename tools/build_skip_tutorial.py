#!/usr/bin/env python3
"""Seed the tutorial-complete flag before Unity starts in the current mod APK."""
import copy
import sys
sys.path.insert(0, str(__import__("pathlib").Path(__file__).resolve().parents[1]))
from modules.tutorial.config import KEY, VALUE
import os
import urllib.parse
import zipfile
from build_unlock_apk import ROOT, BUILD, run, copy_raw
from chapter9_save import encrypt, decrypt

zipfile.ZIP64_LIMIT = (1 << 32) - 1
source = ROOT / 'dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod.apk'
destination = ROOT / 'dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod_SkipTutorial.apk'
work = ROOT / 'work/skip-tutorial'
work.mkdir(parents=True, exist_ok=True)
shell = work / 'shell'
if not shell.exists():
    with zipfile.ZipFile(source) as src, zipfile.ZipFile(work / 'shell.apk', 'w') as dst:
        for name in ('AndroidManifest.xml', 'resources.arsc', 'classes.dex'):
            dst.writestr(name, src.read(name))
    run('apktool', 'd', '-r', '-f', '-o', shell, work / 'shell.apk')
helper = shell / 'smali/com/phigros/local/UnlockBootstrap.smali'
activity = shell / 'smali/com/unity3d/player/UnityPlayerActivity.smali'
assert 'Lcom/phigros/local/UnlockBootstrap;->apply' in activity.read_text()
key = urllib.parse.quote_plus(encrypt(KEY), safe='')
value = urllib.parse.quote_plus(encrypt(VALUE), safe='')
assert decrypt(urllib.parse.unquote_plus(key)) == 'IsFirstRun'
assert decrypt(urllib.parse.unquote_plus(value)) == '1'
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
prefix = BUILD / 'tools/usr'
env = dict(os.environ)
env['LD_LIBRARY_PATH'] = ':'.join(str(prefix / p) for p in (
    'lib', 'lib/x86_64-linux-gnu/android', 'lib/x86_64-linux-gnu'))
aligned = work / 'skip-tutorial-aligned.apk'
run(prefix / 'bin/zipalign', '-f', '-p', '4', unsigned, aligned, env=env)
signer = prefix / 'share/java/apksigner.jar'
run('java', '-jar', signer, 'sign', '--ks', BUILD / 'local-unlock.jks',
    '--ks-pass', 'pass:local-unlock', '--key-pass', 'pass:local-unlock',
    '--v1-signing-enabled', 'false', '--v2-signing-enabled', 'true',
    '--v3-signing-enabled', 'true', '--v4-signing-enabled', 'false',
    '--out', destination, aligned)
run('java', '-jar', signer, 'verify', '--verbose', destination)
run(prefix / 'bin/zipalign', '-c', '4', destination, env=env)
with zipfile.ZipFile(source) as src, zipfile.ZipFile(destination) as dst:
    assert set(src.namelist()) == set(dst.namelist())
    for entry in src.infolist():
        if entry.filename == 'classes.dex' or entry.filename.startswith('META-INF/'):
            continue
        actual = dst.getinfo(entry.filename)
        assert (actual.CRC, actual.file_size) == (entry.CRC, entry.file_size), entry.filename
print(f'Only classes.dex changed; tutorial-complete flag seeded before Unity.\n{destination}', flush=True)
