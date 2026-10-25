#!/usr/bin/env python3
"""Update the verified practice v2 watermark and sign a separate APK."""
import copy
import zipfile
from build_unlock_apk import CTX, run, copy_raw
from modules.watermark.watermark_scenes import update_existing

zipfile.ZIP64_LIMIT = (1 << 32) - 1
source = CTX.artifact('practice')
destination = CTX.artifact('watermark')
unsigned = CTX.stage_work('watermark') / 'unsigned.apk'
aligned = CTX.stage_work('watermark') / 'aligned.apk'
def main():
    CTX.begin_stage('watermark')
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
    env = CTX.android_tool_env()
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
            if entry.filename in changed or entry.filename.startswith('META-INF/'):
                continue
            actual = dst.getinfo(entry.filename)
            assert (actual.CRC, actual.file_size) == (entry.CRC, entry.file_size), entry.filename
    print(f'Only {len(changed)} menu watermark scenes changed.\n{destination}', flush=True)
    CTX.finish_stage('watermark', source)


if __name__ == '__main__':
    main()
