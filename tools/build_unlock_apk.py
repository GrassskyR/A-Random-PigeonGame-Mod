#!/usr/bin/env python3
"""Build a signed arm64 Phigros unlock APK, with encrypted progress seeded before Unity.

Uses Apktool and extracted Ubuntu apksigner/zipalign tools.
Retains APK assets verbatim, seeds no account data or score records, and gives
the APK a distinct application ID so installation can coexist with the original.
"""
import argparse
import copy
import json
import os
from pathlib import Path
import struct
import subprocess
import urllib.parse
import zipfile

# Python enables ZIP64 at 2 GiB; APK ZIP readers require ordinary 32-bit ZIP
# offsets until the actual 4 GiB ZIP limit. The source APK is about 2.47 GB.
zipfile.ZIP64_LIMIT = (1 << 32) - 1

from chapter9_save import PHASE1, PHASE2, PROGRESS, CLEARED, collection_progress, encrypt
from patch_min import PATCH, enc, va2off

ROOT = Path(__file__).resolve().parent.parent
BUILD = ROOT / 'work/apk-build'
PACKAGE = 'com.PigeonGames.Phigros.unlock'
LABEL = 'Phigros 解锁版'


def run(*args, **kwargs):
    subprocess.run([str(a) for a in args], check=True, **kwargs)


def patch_manifest(data):
    chunks = []
    strings = []
    position = 8
    while position < len(data):
        kind, header, size = struct.unpack_from('<HHI', data, position)
        chunk = bytearray(data[position:position + size])
        if kind == 1:
            count, styles, flags, start, style_start = struct.unpack_from('<5I', chunk, 8)
            assert styles == 0 and flags & 0x100 == 0
            for i in range(count):
                offset = start + struct.unpack_from('<I', chunk, header + i * 4)[0]
                length = struct.unpack_from('<H', chunk, offset)[0]
                assert length < 0x8000
                text = chunk[offset + 2:offset + 2 + length * 2].decode('utf-16-le')
                if text == 'com.PigeonGames.Phigros' or text.startswith('com.PigeonGames.Phigros.tap_'):
                    text = text.replace('com.PigeonGames.Phigros', PACKAGE, 1)
                strings.append(text)
            label_index = len(strings)
            strings.append(LABEL)
            offsets, payload = [], bytearray()
            for text in strings:
                offsets.append(len(payload))
                encoded = text.encode('utf-16-le')
                payload += struct.pack('<H', len(encoded) // 2) + encoded + b'\0\0'
            payload += b'\0' * (-len(payload) % 4)
            new_start = 28 + 4 * len(strings)
            chunk = bytearray(struct.pack('<HHI5I', 1, 28, new_start + len(payload),
                                         len(strings), 0, flags & ~1, new_start, 0))
            chunk += struct.pack('<' + 'I' * len(offsets), *offsets) + payload
        elif kind == 0x102:
            name_index = struct.unpack_from('<I', chunk, 20)[0]
            attribute_start, attribute_size, count = struct.unpack_from('<3H', chunk, 24)
            for i in range(count):
                offset = 16 + attribute_start + attribute_size * i
                name = strings[struct.unpack_from('<I', chunk, offset + 4)[0]]
                if name == 'label' and strings[name_index] in ('application', 'activity'):
                    struct.pack_into('<I', chunk, offset + 8, label_index)
                    chunk[offset + 15] = 3
                    struct.pack_into('<I', chunk, offset + 16, label_index)
        chunks.append(chunk)
        position += size
    body = b''.join(chunks)
    return struct.pack('<HHI', 3, 8, len(body) + 8) + body


def patch_resource_package(data):
    """Keep Resources.getIdentifier(..., context.getPackageName()) working.

    ResTable_package stores its name in a fixed 128-character UTF-16 field;
    replacing it preserves compiled resource IDs and all chunk offsets.
    """
    output = bytearray(data)
    kind, header, total = struct.unpack_from('<HHI', output)
    assert kind == 2 and total == len(output)
    position = header
    changed = 0
    while position < total:
        kind, chunk_header, size = struct.unpack_from('<HHI', output, position)
        if kind == 0x200:
            start = position + 12
            old = output[start:start + 256].decode('utf-16-le').split('\0', 1)[0]
            if old == 'com.PigeonGames.Phigros':
                name = PACKAGE.encode('utf-16-le')
                assert len(name) <= 254
                output[start:start + 256] = name.ljust(256, b'\0')
                changed += 1
        assert size >= chunk_header and size > 0
        position += size
    assert position == total and changed == 1
    return bytes(output)


def progress():
    values = {**PROGRESS, **dict.fromkeys(PHASE1 + PHASE2, 'True'), **collection_progress()}
    values.update({'chapter8UnlockBegin': 'True', 'chapter8UnlockSecondPhase': 'True',
                   'chapter8Passed': 'True'})
    game = json.loads((ROOT / 'analysis/chapter9-assets.json').read_text())['level0']['50']['fields']
    for chapter in game['chapters']:
        if chapter['chapterCode'] == 'MainStory8':
            for song in chapter['songInfo']['songs']:
                values['C8' + song['songsId'] + 'Unlocked'] = 'True'
    assert not any('.Record.' in key for key in values)
    return values


def bootstrap_smali(values, cleared=CLEARED):
    lines = [
        '.class public final Lcom/phigros/local/UnlockBootstrap;',
        '.super Ljava/lang/Object;',
        '.method public static apply(Landroid/content/Context;)V',
        '    .registers 7',
        '    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;',
        '    move-result-object v0',
        '    const-string v1, ".v2.playerprefs"',
        '    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;',
        '    move-result-object v0',
        '    const/4 v1, 0x0',
        '    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;',
        '    move-result-object v0',
        '    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;',
        '    move-result-object v0',
    ]
    for key, value in values.items():
        encoded_key = urllib.parse.quote_plus(encrypt(key), safe='')
        encoded_value = urllib.parse.quote_plus(encrypt(value), safe='')
        lines += [f'    const-string v1, "{encoded_key}"', f'    const-string v2, "{encoded_value}"',
                  '    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;']
    for key in cleared:
        encoded_key = urllib.parse.quote_plus(encrypt(key), safe='')
        lines += [f'    const-string v1, "{encoded_key}"',
                  '    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;']
    lines += ['    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z',
              '    move-result v1', '    if-nez v1, :saved',
              '    new-instance v0, Ljava/lang/IllegalStateException;',
              '    const-string v1, "Unable to initialize local unlock progress"',
              '    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V',
              '    throw v0', '    :saved', '    return-void', '.end method', '']
    return '\n'.join(lines)


def native_library():
    data = bytearray((ROOT / 'work/lib/arm64-v8a/libil2cpp.so').read_bytes())
    for group in ('chart', 'song', 'chapter'):
        for address, expected, words, instructions, description in PATCH[group]:
            offset = va2off(address)
            assert data[offset:offset + 4].hex() == expected, description
            data[offset:offset + 4] = bytes.fromhex(enc(words, instructions))
    address = 0x1CBDC20  # ChapterSongItem.secretType -> normal visible branch.
    offset = va2off(address)
    assert data[offset:offset + 4].hex() == '682b40b9'
    data[offset:offset + 4] = bytes.fromhex(enc([0x52800008], ['mov w8, #0']))
    return data


def copy_raw(archive, output, entry):
    # Copy compressed bytes without recompressing gigabytes of unchanged assets.
    original = archive.fp
    original.seek(entry.header_offset)
    header = original.read(30)
    name_length, extra_length = struct.unpack_from('<HH', header, 26)
    total = 30 + name_length + extra_length + entry.compress_size
    if entry.flag_bits & 8:
        original.seek(entry.header_offset + total)
        signature = original.read(4)
        total += (16 if signature == b'PK\x07\x08' else 12)
    cloned = copy.copy(entry)
    cloned.header_offset = output.fp.tell()
    output._writecheck(cloned)
    output._didModify = True
    original.seek(entry.header_offset)
    remaining = total
    while remaining:
        block = original.read(min(4 * 1024 * 1024, remaining))
        if not block:
            raise EOFError(entry.filename)
        output.fp.write(block)
        remaining -= len(block)
    output.filelist.append(cloned)
    output.NameToInfo[cloned.filename] = cloned
    output.start_dir = output.fp.tell()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--watermark', help='Bottom-right watermark in menu scenes only')
    args = parser.parse_args()
    os.chdir(ROOT)
    BUILD.mkdir(parents=True, exist_ok=True)
    shell = BUILD / 'dex-shell'
    smali = shell / 'smali'
    if not (smali / 'com/unity3d/player/UnityPlayerActivity.smali').exists():
        shell_apk = BUILD / 'dex-shell.apk'
        with zipfile.ZipFile(ROOT / 'Phigros_4.0.1.1.apk') as src, zipfile.ZipFile(shell_apk, 'w') as dst:
            for name in ('AndroidManifest.xml', 'resources.arsc', 'classes.dex'):
                dst.writestr(name, src.read(name))
        run('apktool', 'd', '-r', '-f', '-o', shell, shell_apk)
    helper = smali / 'com/phigros/local/UnlockBootstrap.smali'
    helper.parent.mkdir(parents=True, exist_ok=True)
    values = progress()
    helper.write_text(bootstrap_smali(values))
    activity = smali / 'com/unity3d/player/UnityPlayerActivity.smali'
    source = activity.read_text()
    hook = '    invoke-static {p0}, Lcom/phigros/local/UnlockBootstrap;->apply(Landroid/content/Context;)V\n'
    if hook not in source:
        needle = '    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V\n'
        assert source.count(needle) == 1
        source = source.replace(needle, needle + hook)
    watermark_hook = '    invoke-static {p0}, Lcom/phigros/local/Watermark;->attach(Landroid/app/Activity;)V\n'
    source = source.replace(watermark_hook, '')
    watermark_class = helper.with_name('Watermark.smali')
    watermark_class.unlink(missing_ok=True)
    activity.write_text(source)
    rebuilt = BUILD / 'dex-shell-rebuilt.apk'
    run('apktool', 'b', '-o', rebuilt, shell)
    with zipfile.ZipFile(rebuilt) as apk:
        replacements = {'classes.dex': apk.read('classes.dex'),
                        'lib/arm64-v8a/libil2cpp.so': native_library()}
    unsigned = BUILD / 'unlock-unsigned.apk'
    with zipfile.ZipFile(ROOT / 'Phigros_4.0.1.1.apk') as original, zipfile.ZipFile(unsigned, 'w') as output:
        if args.watermark:
            from watermark_scenes import replacements as watermark_replacements
            replacements.update(watermark_replacements(original, args.watermark))
        replacements['AndroidManifest.xml'] = patch_manifest(original.read('AndroidManifest.xml'))
        replacements['resources.arsc'] = patch_resource_package(original.read('resources.arsc'))
        for entry in original.infolist():
            name = entry.filename
            if name.startswith('lib/armeabi-v7a/') or (name.startswith('META-INF/') and
                    (name.upper().endswith(('.RSA', '.DSA', '.EC', '.SF')) or name.upper() == 'META-INF/MANIFEST.MF')):
                continue
            if name in replacements:
                output.writestr(copy.copy(entry), replacements[name])
            else:
                copy_raw(original, output, entry)
    env = dict(os.environ)
    prefix = BUILD / 'tools/usr'
    env['LD_LIBRARY_PATH'] = ':'.join(str(prefix / p) for p in (
        'lib', 'lib/x86_64-linux-gnu/android', 'lib/x86_64-linux-gnu'))
    aligned = BUILD / 'unlock-aligned.apk'
    run(prefix / 'bin/zipalign', '-f', '4', unsigned, aligned, env=env)
    keystore = BUILD / 'local-unlock.jks'
    if not keystore.exists():
        run('keytool', '-genkeypair', '-keystore', keystore, '-storepass', 'local-unlock',
            '-keypass', 'local-unlock', '-alias', 'unlock', '-keyalg', 'RSA', '-keysize', '2048',
            '-validity', '10000', '-dname', 'CN=Phigros Local Unlock')
        keystore.chmod(0o600)
    suffix = 'watermarked' if args.watermark else 'fixed'
    destination = ROOT / f'dist/Phigros_4.0.1.1_Unlock_arm64_{suffix}.apk'
    destination.parent.mkdir(exist_ok=True)
    signer = prefix / 'share/java/apksigner.jar'
    run('java', '-jar', signer, 'sign', '--ks', keystore, '--ks-pass', 'pass:local-unlock',
        '--key-pass', 'pass:local-unlock', '--v1-signing-enabled', 'false',
        '--v2-signing-enabled', 'true', '--v3-signing-enabled', 'true', '--v4-signing-enabled', 'false',
        '--out', destination, aligned)
    run('java', '-jar', signer, 'verify', '--verbose', destination)
    run(prefix / 'bin/zipalign', '-c', '4', destination, env=env)
    print(json.dumps({'apk': str(destination), 'package': PACKAGE, 'label': LABEL,
                      'progressKeys': len(values), 'abi': 'arm64-v8a',
                      'watermark': args.watermark}, ensure_ascii=False), flush=True)


if __name__ == '__main__':
    main()
