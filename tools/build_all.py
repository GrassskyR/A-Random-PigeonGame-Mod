#!/usr/bin/env python3
"""Rebuild the complete mod from the original APK in dependency order."""
import shutil
import subprocess
import sys
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
def run(script,*args):
    subprocess.run([sys.executable,str(ROOT/'tools'/script),*args],cwd=ROOT,check=True)
def main():
    library=ROOT/'work/lib/arm64-v8a/libil2cpp.so'
    if not library.exists():
        import zipfile
        library.parent.mkdir(parents=True,exist_ok=True)
        with zipfile.ZipFile(ROOT/'Phigros_4.0.1.1.apk') as z:
            library.write_bytes(z.read('lib/arm64-v8a/libil2cpp.so'))
    run('build_unlock_apk.py','--watermark','ずんだもん')
    shutil.copy2(ROOT/'dist/Phigros_4.0.1.1_Unlock_arm64_watermarked.apk',
                 ROOT/'dist/Phigros_4.0.1.1_Unlock_arm64.apk')
    run('patch_anti_addiction.py')
    run('build_practice_apk.py')
    run('build_practice_watermark.py')
    run('build_skip_tutorial.py')
if __name__=='__main__':main()
