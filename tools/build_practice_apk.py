#!/usr/bin/env python3
"""Package ordinary-song pause seeking into the current unlock/no-anti APK."""
import copy
import os
from pathlib import Path
import shutil
import subprocess
import zipfile
from build_unlock_apk import ROOT, BUILD, copy_raw, run
from practice.pause_scene import without_pause_blur

zipfile.ZIP64_LIMIT=(1<<32)-1
WORK=ROOT/'work/practice'
SOURCE=ROOT/'dist/Phigros_4.0.1.1_Unlock_arm64_NoAntiAddiction.apk'
DEST=ROOT/'dist/Phigros_4.0.1.1_Unlock_arm64_Practice_v2.apk'

def compile_overlay():
    sdk=Path(os.environ.get('ANDROID_SDK_ROOT', '/mnt/c/Users/missi/AppData/Local/Android/Sdk'))
    android=sdk/'platforms/android-36/android.jar'
    d8=sdk/'build-tools/36.0.0/lib/d8.jar'
    classes=WORK/'classes'
    classes.mkdir(parents=True,exist_ok=True)
    javac=shutil.which('javac')
    source=ROOT/'modules/practice/PracticeOverlay.java'
    if javac:
        run(javac,'-encoding','UTF-8','-source','8','-target','8',
            '-bootclasspath',android,'-d',classes,source)
    else:
        javac=Path('/mnt/d/graalvm-jdk-21.0.8+12.1/bin/javac.exe')
        def win(path):
            return subprocess.check_output(['wslpath','-w',str(path)]).decode().strip()
        run(javac,'-encoding','UTF-8','-source','8','-target','8',
            '-bootclasspath',win(android),'-d',win(classes),win(source))
    jar=WORK/'overlay.jar'
    with zipfile.ZipFile(jar,'w') as z:
        for path in classes.rglob('*.class'):
            z.write(path,path.relative_to(classes))
    (WORK/'dex').mkdir(exist_ok=True)
    run('java','-cp',d8,'com.android.tools.r8.D8','--lib',android,
        '--min-api','23','--output',WORK/'dex',jar)

def main():
    compile_overlay()
    ndk=WORK/'android-ndk-r27d/toolchains/llvm/prebuilt/linux-x86_64'
    compiler=ndk/'bin/aarch64-linux-android23-clang'
    run(compiler,'-std=c11','-O2','-Wall','-Wextra','-Werror','-fPIC','-shared',
        '-Wl,-z,max-page-size=16384','-Wl,-soname,libpractice.so',
        ROOT/'modules/practice/practice.c','-o',WORK/'libpractice.so','-llog','-ldl','-lm')
    shell=WORK/'shell'
    if not shell.exists():
        with zipfile.ZipFile(SOURCE) as src,zipfile.ZipFile(WORK/'shell.apk','w') as dst:
            for name in ('AndroidManifest.xml','resources.arsc','classes.dex'):
                dst.writestr(name,src.read(name))
        run('apktool','d','-r','-f','-o',shell,WORK/'shell.apk')
    activity=shell/'smali/com/unity3d/player/UnityPlayerActivity.smali'
    source=activity.read_text()
    hook='    invoke-static {p0}, Lcom/phigros/local/PracticeOverlay;->attach(Landroid/app/Activity;)V\n'
    start=source.index('.method protected onCreate(')
    end=source.index('.end method',start)
    body=source[start:end]
    if hook not in body:
        assert body.count('    return-void')==1
        body=body.replace('    return-void',hook+'\n    return-void')
        activity.write_text(source[:start]+body+source[end:])
    run('apktool','b',shell,'-o',WORK/'shell-rebuilt.apk')
    with zipfile.ZipFile(WORK/'shell-rebuilt.apk') as z:
        dex=z.read('classes.dex')
    with zipfile.ZipFile(SOURCE) as src:
        scene=without_pause_blur(src.read('assets/bin/Data/level12'),ROOT/'ildump/DummyDll')
    replacements={'assets/bin/Data/level12':scene,'classes.dex':dex,
        'classes2.dex':(WORK/'dex/classes.dex').read_bytes(),
        'lib/arm64-v8a/libpractice.so':(WORK/'libpractice.so').read_bytes()}
    unsigned=WORK/'practice-unsigned.apk'
    with zipfile.ZipFile(SOURCE) as src,zipfile.ZipFile(unsigned,'w',allowZip64=False) as dst:
        assert 'classes2.dex' not in src.namelist()
        for entry in src.infolist():
            if entry.filename.startswith('META-INF/'): continue
            if entry.filename in replacements:
                dst.writestr(copy.copy(entry),replacements.pop(entry.filename))
            else: copy_raw(src,dst,entry)
        for name,data in replacements.items():
            dst.writestr(name,data,compress_type=zipfile.ZIP_STORED)
    env=dict(os.environ)
    prefix=BUILD/'tools/usr'
    env['LD_LIBRARY_PATH']=':'.join(str(prefix/p) for p in (
        'lib','lib/x86_64-linux-gnu/android','lib/x86_64-linux-gnu'))
    aligned=WORK/'practice-aligned.apk'
    run(prefix/'bin/zipalign','-f','-p','4',unsigned,aligned,env=env)
    signer=prefix/'share/java/apksigner.jar'
    run('java','-jar',signer,'sign','--ks',BUILD/'local-unlock.jks',
        '--ks-pass','pass:local-unlock','--key-pass','pass:local-unlock',
        '--v1-signing-enabled','false','--v2-signing-enabled','true',
        '--v3-signing-enabled','true','--v4-signing-enabled','false',
        '--out',DEST,aligned)
    run('java','-jar',signer,'verify','--verbose',DEST)
    run(prefix/'bin/zipalign','-c','4',DEST,env=env)
    with zipfile.ZipFile(SOURCE) as src,zipfile.ZipFile(DEST) as dst:
        for entry in src.infolist():
            if entry.filename in ('classes.dex','assets/bin/Data/level12') or entry.filename.startswith('META-INF/'): continue
            actual=dst.getinfo(entry.filename)
            assert (actual.CRC,actual.file_size)==(entry.CRC,entry.file_size),entry.filename
        assert dst.read('lib/arm64-v8a/libpractice.so')==(WORK/'libpractice.so').read_bytes()
    print(DEST,flush=True)

if __name__=='__main__': main()
