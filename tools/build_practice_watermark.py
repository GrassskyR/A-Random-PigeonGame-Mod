#!/usr/bin/env python3
"""Update the verified practice v2 watermark and sign a separate APK."""
import copy
import os
import zipfile
from build_unlock_apk import ROOT, BUILD, run, copy_raw
from watermark_scenes import update_existing

zipfile.ZIP64_LIMIT = (1 << 32) - 1
source = ROOT / 'dist/Phigros_4.0.1.1_Unlock_arm64_Practice_v2.apk'
destination = ROOT / 'dist/Phigros_4.0.1.1_Unlock_arm64_Practice_mod.apk'
unsigned = BUILD / 'practice-mod-unsigned.apk'
aligned = BUILD / 'practice-mod-aligned.apk'
with zipfile.ZipFile(source) as src:
    replacements = update_existing(src, 'mod by ずんだもん')
    changed = set(replacements)
    with zipfile.ZipFile(unsigned, 'w', allowZip64=False) as dst:
        for entry in src.infolist():
            if entry.filename.startswith('META-INF/'):
                continue
            if entry.filename in replacements:
                dst.writestr(copy.copy(entry), replacements[entry.filename])
            else:
                copy_raw(src, dst, entry)
prefix = BUILD / 'tools/usr'
env = dict(os.environ)
env['LD_LIBRARY_PATH'] = ':'.join(str(prefix / p) for p in (
    'lib', 'lib/x86_64-linux-gnu/android', 'lib/x86_64-linux-gnu'))
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
        if entry.filename in changed or entry.filename.startswith('META-INF/'):
            continue
        actual = dst.getinfo(entry.filename)
        assert (actual.CRC, actual.file_size) == (entry.CRC, entry.file_size), entry.filename
print(f'Only {len(changed)} menu watermark scenes changed.\n{destination}', flush=True)
