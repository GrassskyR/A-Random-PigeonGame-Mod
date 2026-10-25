#!/usr/bin/env python3
"""Build all mods in dependency order, or stop at the collections baseline."""
import argparse
import hashlib
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
STAGES = (
    ('build_unlock_apk.py', '--watermark', 'ずんだもん'),
    ('copy', '_watermarked.apk', '.apk'),
    ('patch_anti_addiction.py',),
    ('build_practice_apk.py',),
    ('build_practice_watermark.py',),
    ('build_skip_tutorial.py',),
    ('build_collections_apk.py',),
    ('build_speed_apk.py',),  # speed + custom avatar, sharing libspeed.so
)


def run(script, *args):
    subprocess.run([sys.executable, str(ROOT / 'tools' / script), *args],
                   cwd=ROOT, check=True)


def verify_original_apk():
    apk = ROOT / 'Phigros_4.0.1.1.apk'
    expected = apk.with_suffix('.apk.sha256').read_text().split()[0]
    digest = hashlib.sha256()
    with apk.open('rb') as source:
        for chunk in iter(lambda: source.read(1024 * 1024), b''):
            digest.update(chunk)
    actual = digest.hexdigest()
    if actual != expected:
        raise SystemExit(f'Original APK SHA-256 mismatch; this build requires the exact documented sample.\n'
                         f'Expected: {expected}\nActual:   {actual}')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--target', choices=('full', 'collections'), default='full',
                        help='full includes speed and avatar; collections stops at the baseline')
    parser.add_argument('--list', action='store_true', help='show ordered stages without building')
    args = parser.parse_args()
    stages = STAGES if args.target == 'full' else STAGES[:-1]
    if args.list:
        for index, stage in enumerate(stages, 1):
            print(f'{index}. {" ".join(stage)}')
        return
    verify_original_apk()
    library = ROOT / 'work/lib/arm64-v8a/libil2cpp.so'
    if not library.exists():
        import zipfile
        library.parent.mkdir(parents=True, exist_ok=True)
        with zipfile.ZipFile(ROOT / 'Phigros_4.0.1.1.apk') as z:
            library.write_bytes(z.read('lib/arm64-v8a/libil2cpp.so'))
    prefix = ROOT / 'dist/Phigros_4.0.1.1_Unlock_arm64'
    for stage in stages:
        if stage[0] == 'copy':
            shutil.copy2(str(prefix) + stage[1], str(prefix) + stage[2])
        else:
            run(*stage)


if __name__ == '__main__':
    main()
