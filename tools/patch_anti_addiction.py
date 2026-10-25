#!/usr/bin/env python3
"""Apply the selected sample's reviewed startup return-ABI patch."""
import zipfile
from build_unlock_apk import CTX, copy_raw, run


def main():
    source = CTX.begin_stage('startup')
    destination = CTX.artifact('startup')
    work = CTX.stage_work('startup')
    unsigned, aligned = work / 'unsigned.apk', work / 'aligned.apk'
    library = CTX.profile['identity']['il2cpp']['apk_entry']
    with zipfile.ZipFile(source) as src:
        data = CTX.patch(src.read(library), 'startup')
        with zipfile.ZipFile(unsigned, 'w', allowZip64=False) as dst:
            for entry in src.infolist():
                if entry.filename.startswith('META-INF/'):
                    continue
                if entry.filename == library:
                    dst.writestr(entry, data)
                else:
                    copy_raw(src, dst, entry)
    env = CTX.android_tool_env()
    run(CTX.zipalign, '-f', '4', unsigned, aligned, env=env)
    signer = CTX.signer_jar
    run('java', '-jar', signer, 'sign', '--ks', CTX.keystore,
        '--ks-pass', 'pass:local-unlock', '--key-pass', 'pass:local-unlock',
        '--v1-signing-enabled', 'false', '--v2-signing-enabled', 'true',
        '--v3-signing-enabled', 'true', '--v4-signing-enabled', 'false',
        '--out', destination, aligned)
    run('java', '-jar', signer, 'verify', '--verbose', destination)
    run(CTX.zipalign, '-c', '4', destination, env=env)
    with zipfile.ZipFile(source) as src, zipfile.ZipFile(destination) as dst:
        old = {e.filename: e for e in src.infolist() if not e.filename.startswith('META-INF/')}
        new = {e.filename: e for e in dst.infolist() if not e.filename.startswith('META-INF/')}
        assert old.keys() == new.keys()
        for name in old:
            if name != library:
                assert (old[name].CRC, old[name].file_size) == (new[name].CRC, new[name].file_size), name
        assert dst.read(library) == CTX.patch(src.read(library), 'startup')
    CTX.finish_stage('startup', source)
    print(destination, flush=True)


if __name__ == '__main__':
    main()
