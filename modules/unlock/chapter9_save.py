#!/usr/bin/env python3
"""Audit/fix Phigros 4.0.1.1 Chapter 9 progress without writing scores.

  .venv/bin/python modules/unlock/chapter9_save.py save/noscore.xml
  .venv/bin/python modules/unlock/chapter9_save.py save/noscore.xml save/chapter9-complete.xml

Default output is a plaintext research export. --format encrypted
writes targeted keys using the original game's AES format. --password accepts
the actual puzzle password and validates it against c9s.test before writing it.
No device operations are performed.
"""
import argparse
import base64
import hashlib
import json
import sys
import urllib.parse
import xml.etree.ElementTree as ET
import zipfile
from pathlib import Path

from Crypto.Cipher import AES
from Crypto.Util.Padding import pad, unpad

ROOT = Path(__file__).resolve().parents[2]
# Keep the historical imports/CLI working; full collection logic lives in its
# own module. The repository root is needed when invoked via tools symlinks.
sys.path.insert(0, str(ROOT))
from modules.collections.progress import all_collection_progress, all_cosmetic_progress

from tools.versioning import context

PHASE1 = tuple(context().progress.get('phase1', ()))
PHASE2 = tuple(context().progress.get('phase2', ()))
PROGRESS = context().progress.get('progress', {})
CLEARED = tuple(context().progress.get('cleared', ()))


def loop_reverse_xor(text):
    raw = text.encode('ascii')
    return bytes(raw[(i + 1) % len(raw)] ^ int(f'{byte:08b}'[::-1], 2)
                 for i, byte in enumerate(raw))


SAVE_KEY = bytes.fromhex(context().progress['codec']['key_hex'])
SAVE_IV = bytes.fromhex(context().progress['codec']['iv_hex'])


def encrypt(text):
    return base64.b64encode(AES.new(SAVE_KEY, AES.MODE_CBC, SAVE_IV).encrypt(
        pad(text.encode('utf8'), 16))).decode('ascii')


def decrypt(text):
    return unpad(AES.new(SAVE_KEY, AES.MODE_CBC, SAVE_IV).decrypt(
        base64.b64decode(text, validate=True)), 16).decode('utf8')


def entry(element):
    key = urllib.parse.unquote_plus(element.get('name', ''))
    value = urllib.parse.unquote_plus(element.text or element.get('value', ''))
    try:
        return decrypt(key), decrypt(value), 'encrypted'
    except (ValueError, UnicodeError):
        return key, value, 'plain'


def validate_password(password):
    from tools.versioning import VersionError
    source = context().progress.get('secret_password_bundle_entry')
    if not source:
        raise VersionError('Secret bundle/codec is not identified for this sample', 3)
    context().ensure_materials()
    with zipfile.ZipFile(context().apk) as apk:
        blob = apk.read(source)
    digest = hashlib.sha512(password.encode('utf8')).digest()
    try:
        data = unpad(AES.new(digest[:32], AES.MODE_CBC, digest[32:48]).decrypt(blob), 16)
        if not data.startswith(b'UnityFS\0'):
            return False
        import UnityPy
        return any(o.type.name == 'TextAsset' and o.read().m_Script == 'pass'
                   for o in UnityPy.load(data).objects)
    except (ValueError, EOFError):
        return False


def collection_progress():
    return dict(context().progress['chapter9_collection_values'])


def audit(root):
    entries = [entry(e) for e in root]
    for key in (*PROGRESS, *PHASE1, *PHASE2, *CLEARED, 'Chapter9SecretPassword'):
        found = [(v, fmt) for k, v, fmt in entries if k == key]
        if key == 'Chapter9SecretPassword':
            print(f'{key}: ' + ('present' if found and found[-1][0] not in ('', '0') else 'missing/default'))
        else:
            print(f'{key}: {found or "MISSING"}')
    wrong = [k for k, _, _ in entries if k.startswith(('chapter9SongUnlocked', 'chapter9Phase2SongUnlocked'))]
    if wrong:
        print(f'{len(wrong)} obsolete array-field keys present; the game reads named C9*Unlocked keys.')
    return entries


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--profile', help='Exact sample profile ID')
    parser.add_argument('source', type=Path)
    parser.add_argument('output', type=Path, nargs='?')
    parser.add_argument('--format', choices=('plain', 'encrypted'), default='plain')
    parser.add_argument('--password')
    args = parser.parse_args()
    tree = ET.parse(args.source)
    root = tree.getroot()
    audit(root)
    if args.output is None:
        return
    if args.source.resolve() == args.output.resolve():
        parser.error('Choose a separate output file to retain the input backup.')
    desired = dict(PROGRESS)
    desired.update(dict.fromkeys((*PHASE1, *PHASE2), 'True'))
    desired.update(collection_progress())
    if args.password is not None:
        if not validate_password(args.password):
            parser.error('Password does not decrypt c9s.test to a TextAsset containing pass.')
        desired['Chapter9SecretPassword'] = args.password
    # Capture the original XML representation of records; no score transformation occurs.
    records_before = [ET.tostring(e) for e in root if '.Record.' in entry(e)[0]]
    for e in list(root):
        if entry(e)[0] in CLEARED:
            root.remove(e)
    for key, value in desired.items():
        # Collection counters are monotone. Never lower an existing count.
        if key.startswith('1key') or key.endswith('CollectionTextOpened'):
            for e in root:
                k, v, _ = entry(e)
                if k == key:
                    value = str(max(int(value), int(v)))
        for e in list(root):
            if entry(e)[0] == key:
                root.remove(e)
        encode = encrypt if args.format == 'encrypted' else lambda s: s
        element = ET.SubElement(root, 'string', name=urllib.parse.quote_plus(encode(key), safe=''))
        element.text = urllib.parse.quote_plus(encode(value), safe='')
    records_after = [ET.tostring(e) for e in root if '.Record.' in entry(e)[0]]
    assert records_before == records_after, 'Score records changed unexpectedly'
    tree.write(args.output, encoding='utf-8', xml_declaration=True)
    print(f'Wrote {args.output}: {len(desired)} progress keys; cleared pending Message keys; {len(records_before)} score entries preserved exactly.')
    if args.password is None:
        print('Secret resource password was preserved. Progress flags alone cannot decrypt encrypted song assets.')


if __name__ == '__main__':
    main()
