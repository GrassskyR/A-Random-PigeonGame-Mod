#!/usr/bin/env python3
"""Patch the existing unlock APK: CheckAntiAddiction returns completed true."""
import os
import sys
sys.path.insert(0, str(__import__("pathlib").Path(__file__).resolve().parents[1]))
from modules.startup.patch import ADDRESS, EXPECTED, WORDS, INSTRUCTIONS
from pathlib import Path
import zipfile
from build_unlock_apk import copy_raw, run, ROOT, BUILD
from patch_min import va2off, enc

zipfile.ZIP64_LIMIT = (1 << 32) - 1
source = ROOT / 'dist/Phigros_4.0.1.1_Unlock_arm64.apk'
destination = ROOT / 'dist/Phigros_4.0.1.1_Unlock_arm64_NoAntiAddiction.apk'
unsigned = BUILD / 'no-anti-unsigned.apk'
aligned = BUILD / 'no-anti-aligned.apk'
library = 'lib/arm64-v8a/libil2cpp.so'
address = ADDRESS
# UniTask<bool> return ABI confirmed at UniTask.FromResult<bool> 0x202BC40:
# x0 = null source, x1 = inline true result with zero token/padding.
patch = bytes.fromhex(enc(WORDS, INSTRUCTIONS))
with zipfile.ZipFile(source) as src:
    data = bytearray(src.read(library))
    offset = va2off(address)
    original = EXPECTED
    assert data[offset:offset + len(original)] == original, 'Unexpected function entry'
    data[offset:offset + len(patch)] = patch
    with zipfile.ZipFile(unsigned, 'w', allowZip64=False) as dst:
        for entry in src.infolist():
            if entry.filename.startswith('META-INF/'):
                continue
            if entry.filename == library:
                dst.writestr(entry, data)
            else:
                copy_raw(src, dst, entry)
prefix = BUILD / 'tools/usr'
env = dict(os.environ)
env['LD_LIBRARY_PATH'] = ':'.join(str(prefix / p) for p in (
    'lib', 'lib/x86_64-linux-gnu/android', 'lib/x86_64-linux-gnu'))
run(prefix / 'bin/zipalign', '-f', '4', unsigned, aligned, env=env)
signer = prefix / 'share/java/apksigner.jar'
run('java', '-jar', signer, 'sign', '--ks', BUILD / 'local-unlock.jks',
    '--ks-pass', 'pass:local-unlock', '--key-pass', 'pass:local-unlock',
    '--v1-signing-enabled', 'false', '--v2-signing-enabled', 'true',
    '--v3-signing-enabled', 'true', '--v4-signing-enabled', 'false',
    '--out', destination, aligned)
run('java', '-jar', signer, 'verify', '--verbose', destination)
run(prefix / 'bin/zipalign', '-c', '4', destination, env=env)
with zipfile.ZipFile(source) as src, zipfile.ZipFile(destination) as dst:
    old = {e.filename: e for e in src.infolist() if not e.filename.startswith('META-INF/')}
    new = {e.filename: e for e in dst.infolist() if not e.filename.startswith('META-INF/')}
    assert old.keys() == new.keys()
    for name in old:
        if name != library:
            assert (old[name].CRC, old[name].file_size) == (new[name].CRC, new[name].file_size), name
    expected = bytearray(src.read(library))
    expected[offset:offset + len(patch)] = patch
    assert dst.read(library) == expected
print(f'OK: only 12 native bytes changed; all other APK entries preserved.\n{destination}')
