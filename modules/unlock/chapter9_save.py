#!/usr/bin/env python3
"""Audit/fix Phigros 4.0.1.1 Chapter 9 progress without writing scores.

  .venv/bin/python tools/chapter9_save.py save/noscore.xml
  .venv/bin/python tools/chapter9_save.py save/noscore.xml save/chapter9-complete.xml

Default output is for patch_min.py's plaintext crypto mode. --format encrypted
writes targeted keys using the original game's AES format. --password accepts
the actual puzzle password and validates it against c9s.test before writing it.
No device operations are performed.
"""
import argparse
import base64
import hashlib
import json
import urllib.parse
import xml.etree.ElementTree as ET
from pathlib import Path

from Crypto.Cipher import AES
from Crypto.Util.Padding import pad, unpad

ROOT = Path(__file__).resolve().parents[2]
PHASE1 = (
    'C9ImplexroughUnlocked', 'C9AboutTheUniverseUnlocked', 'C9EvanescentUnlocked',
    'C9ExoplanetaryMirageUnlocked', 'C9EntranceToTheChaosUnlocked', 'C9S6Unlocked',
)
PHASE2 = (
    'C9AmetrineUnlocked', 'C9PetrichorUnlocked', 'C9HateUnlocked',
    'C9DesultorySignalsUnlocked', 'C9MessageUnlocked', 'C9HappyEndingUnlocked',
)
PROGRESS = {
    'Chapter9UnlockBegin': 'True',
    'Chapter9UnlockSecondPhaseBegin': 'True',
    'Chapter9Phase2Step': '4',
    'C9BaselineChallengeReached': 'True',
    'Chapter9Phase2Passed': 'True',
    'Chapter9LastSelectMusicIsPhase2': 'True',
    'C9SecretChallengePendingLifeUnlock': 'False',
}
CLEARED = ('C9PendingMessageAfterQuit', 'C9PendingMessageLevel')


def loop_reverse_xor(text):
    raw = text.encode('ascii')
    return bytes(raw[(i + 1) % len(raw)] ^ int(f'{byte:08b}'[::-1], 2)
                 for i, byte in enumerate(raw))


SAVE_KEY = loop_reverse_xor('Phigros.enc.j57vnvr8wlZssXM7eWpa')
SAVE_IV = loop_reverse_xor('Q4zHm5vUEMJJ3iS9')


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
    blob = (ROOT / 'work/aa/assets/aa/Android/584281739b355980d23720afec155ffc.bundle').read_bytes()
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
    assets = json.loads((ROOT / 'analysis/chapter9-assets.json').read_text())
    counts = {}
    for scene in ('level28', 'level30'):
        for component in assets[scene].values():
            if component['class'].endswith('Chapter9CollectionUnlockSprite'):
                fields = component['fields']
                key = fields['collectionKey']
                counts[key] = max(counts.get(key, 0), fields['collectionSubIndex'] + 1)
    # Story immediately following the first secret song; absent from the phase 1 map.
    counts['blackhole'] = 1
    return {prefix + key: str(count) for key, count in counts.items()
            for prefix in ('1key', 'CollectionTextOpened')}


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
        if key.startswith(('1key', 'CollectionTextOpened')):
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
