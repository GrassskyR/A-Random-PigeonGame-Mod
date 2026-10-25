#!/usr/bin/env python3
"""Behavior checks for sample identity, relocation, ambiguity and build provenance."""
import argparse
import copy
import hashlib
import io
import json
import os
from pathlib import Path
import struct
import sys
import tempfile
import unittest
from unittest.mock import patch
import zipfile

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from tools.versioning import Context, Elf, VersionError, digest, write_json
from tools import versions


def elf_fixture():
    data = bytearray(0x200)
    data[:6] = b'\x7fELF\x02\x01'
    struct.pack_into('<H', data, 18, 183)
    struct.pack_into('<Q', data, 0x20, 64)
    struct.pack_into('<HH', data, 0x36, 56, 2)
    struct.pack_into('<II6Q', data, 64, 1, 4, 0, 0, 0, 0x100, 0x100, 0x1000)
    struct.pack_into('<II6Q', data, 120, 1, 5, 0x100, 0x1000, 0x1000, 0x100, 0x400, 0x1000)
    data[0x100:0x110] = bytes.fromhex('fd7bbfa9fd0300911f2003d51f2003d5')
    return bytes(data)


class VersionWorkflowTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        environment = patch.dict(os.environ, {'PHIGROS_KEYSTORE': str(self.root / 'signing.jks')})
        environment.start()
        self.addCleanup(environment.stop)
        self.apk = self.root / 'game.apk'
        self.so = elf_fixture()
        metadata = bytes.fromhex('af1bb1fa1f000000')
        with zipfile.ZipFile(self.apk, 'w') as archive:
            archive.writestr('AndroidManifest.xml', '<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="test.game" android:versionName="99.0" android:versionCode="1"/>')
            archive.writestr('lib/arm64-v8a/libil2cpp.so', self.so)
            archive.writestr('assets/bin/Data/Managed/Metadata/global-metadata.dat', metadata)
        self.requirements = {'modules': {'speed': {'targets': ['speed.update'], 'fields': [], 'fixtures': []}}, 'targets': {'speed.update': {'module': 'speed', 'role': 'runtime_entry_hook', 'locator': {'method': 'Control$$Update', 'signature': 'void Control_Update (void* self);', 'offset_hint': '0x0', 'strategy': 'entry'}}}, 'fields': {}}
        write_json(self.root / 'profiles/requirements.json', self.requirements)
        self.id = '99.0-arm64-' + digest(self.apk)[:12]
        folder = self.root / 'profiles' / self.id
        self.identity = {'profile_id': self.id, 'game_version': '99.0', 'abi': 'arm64-v8a', 'apk': {'path': 'game.apk', 'sha256': digest(self.apk)}, 'il2cpp': {'apk_entry': 'lib/arm64-v8a/libil2cpp.so', 'sha256': hashlib.sha256(self.so).hexdigest()}, 'metadata': {'apk_entry': 'assets/bin/Data/Managed/Metadata/global-metadata.dat', 'sha256': hashlib.sha256(metadata).hexdigest()}}
        self.profile = {'identity': self.identity, 'modules': {'speed': {'status': 'static_verified', 'evidence': ['reviewed-control-flow']}}, 'targets': {'speed.update': {'module': 'speed', 'role': 'runtime_entry_hook', 'rva': '0x1000', 'original_bytes': self.so[0x100:0x110].hex(), 'status': 'static_verified', 'evidence': ['disassembly'], 'resume_rva': '0x1010', 'overwrite_size': 16, 'trampoline': 'stack_register_prologue'}}, 'fields': {}, 'implementations': {'speed': {'native_sources': ['modules/speed/port.c'], 'evidence': ['reviewed-source']}}}
        write_json(folder / 'profile.json', self.profile)
        for name in ('assets', 'progress', 'replay'):
            write_json(folder / (name + '.json'), {})
        (self.root / 'modules/speed').mkdir(parents=True)
        (self.root / 'modules/speed/port.c').write_text('/* synthetic port */\n')
        self.ctx = Context(self.id, root=self.root)

    def test_segment_mapping_uses_each_load_and_rejects_bss(self):
        elf = Elf(self.so)
        self.assertEqual(elf.offset(0x1000), 0x100)
        self.assertEqual(elf.offset(0x20), 0x20)
        with self.assertRaises(VersionError): elf.offset(0x1250)

    def test_signing_tools_use_official_sdk_with_legacy_fallback(self):
        sdk = self.root / 'sdk'
        legacy = self.root / 'work/apk-build/tools/usr'
        with patch.dict(os.environ, {'ANDROID_SDK_ROOT': str(sdk), 'LD_LIBRARY_PATH': '/existing/libs'}):
            self.assertEqual(self.ctx.zipalign, legacy / 'bin/zipalign')
            self.assertEqual(self.ctx.signer_jar, legacy / 'share/java/apksigner.jar')
            self.assertIn(str(legacy / 'lib'), self.ctx.android_tool_env()['LD_LIBRARY_PATH'])
            align = sdk / 'build-tools/36.0.0/zipalign'
            signer = sdk / 'build-tools/36.0.0/lib/apksigner.jar'
            signer.parent.mkdir(parents=True)
            align.write_bytes(b'sdk zipalign')
            signer.write_bytes(b'sdk apksigner')
            self.assertEqual(self.ctx.zipalign, align)
            self.assertEqual(self.ctx.signer_jar, signer)
            self.assertEqual(self.ctx.android_tool_env()['LD_LIBRARY_PATH'], '/existing/libs')

    def test_original_identity_and_stale_extraction_are_rejected(self):
        self.ctx.ensure_materials()
        self.ctx.library.write_bytes(b'patched library')
        with self.assertRaisesRegex(VersionError, 'Stale/corrupt'):
            Context(self.id, root=self.root).ensure_materials()
        self.apk.write_bytes(self.apk.read_bytes() + b'changed sample')
        with self.assertRaisesRegex(VersionError, 'APK SHA-256 mismatch'):
            Context(self.id, root=self.root).ensure_materials()

    def test_original_bytes_and_unhandled_prologue_fail(self):
        self.ctx.validate(('speed',))
        ctx = Context(self.id, root=self.root)
        ctx.profile['targets']['speed.update']['original_bytes'] = '00' * 16
        with self.assertRaisesRegex(VersionError, 'mismatch'): ctx.validate(('speed',))
        row = copy.deepcopy(self.profile['targets']['speed.update'])
        row['original_bytes'] = '00000090' + row['original_bytes'][8:]
        with self.assertRaisesRegex(VersionError, 'unsupported PC-relative'):
            self.ctx.validate_prologue('speed.update', row)

    def test_missing_identity_and_codec_fail_before_packaging(self):
        self.ctx.requirements['modules']['unlock'] = {'targets': [], 'fields': [], 'fixtures': []}
        self.ctx.profile['modules']['unlock'] = {'status': 'static_verified', 'evidence': ['review']}
        with self.assertRaisesRegex(VersionError, 'Android package'):
            self.ctx.validate(('unlock',))
        self.ctx.progress = {'codec': {'kind': 'aes-cbc-base64-url'}}
        with self.assertRaisesRegex(VersionError, 'key_hex/iv_hex'):
            self.ctx.validate_progress('unlock')

    def test_unknown_sample_draft_never_inherits_confirmed_values(self):
        # Same displayed version with a different digest must get a new profile.
        self.apk.write_bytes(self.apk.read_bytes() + b'same-version different-channel')
        with patch.object(versions, 'ROOT', self.root), patch.object(versions, 'Context', lambda p: Context(p, root=self.root)):
            result = versions.prepare(argparse.Namespace(apk=self.apk))
        self.assertFalse(result['known'])
        ctx = Context(result['profile_id'], root=self.root)
        self.assertNotEqual(ctx.id, self.id)
        self.assertEqual(ctx.profile['targets'], {})
        self.assertEqual(ctx.profile['fields'], {})
        self.assertTrue(all(s['status'] == 'draft' for s in ctx.profile['modules'].values()))
        with self.assertRaisesRegex(VersionError, 'needs analysis/review'): ctx.validate(('speed',))

    def test_masked_search_reports_duplicate_candidates(self):
        data = bytearray(self.so)
        data[0x120:0x124] = data[0x100:0x104]
        self.assertEqual(versions.pattern_candidates(Elf(data), 'fd 7b ?? a9'), [0x1000, 0x1020])
        self.assertEqual(versions.pattern_candidates(Elf(data), 'aa bb cc dd'), [])

    def test_overloads_are_reported_without_promoting_offsets(self):
        self.ctx.ensure_materials()
        dump = self.root / 'dump'; dump.mkdir()
        write_json(dump / 'script.json', {'ScriptMethod': [{'Address': 0x1000, 'Name': 'Control$$Update', 'Signature': 'changed ABI A'}, {'Address': 0x1020, 'Name': 'Control$$Update', 'Signature': 'changed ABI B'}]})
        (dump / 'dump.cs').write_text('')
        with patch.object(versions, 'Context', return_value=self.ctx), patch.object(self.ctx, 'dump_dir', return_value=dump):
            result = versions.locate(argparse.Namespace(profile=self.id))
        self.assertEqual(result['missing_or_ambiguous_targets'], ['speed.update'])
        report = json.loads((self.ctx.work / 'candidates.json').read_text())
        self.assertEqual(report['targets']['speed.update']['candidate_status'], 'ambiguous')
        self.assertEqual(self.ctx.profile['targets']['speed.update'], self.profile['targets']['speed.update'])

    def test_upstream_receipt_invalidates_on_source_or_output_change(self):
        self.ctx.validate(('speed',))
        self.ctx.requirements['modules']['startup'] = {'targets': [], 'fields': [], 'fixtures': []}
        self.ctx.profile['modules']['startup'] = {'status': 'static_verified', 'evidence': ['reviewed']}
        artifact = self.ctx.artifact('unlock'); artifact.parent.mkdir(parents=True)
        artifact.write_bytes(b'upstream APK')
        self.ctx.keystore.parent.mkdir(parents=True, exist_ok=True); self.ctx.keystore.write_bytes(b'test key')
        write_json(artifact.with_suffix('.apk.build.json'), {'profile_id': self.id, 'stage': 'unlock', 'config_sha256': self.ctx.config_digest(), 'output_sha256': digest(artifact)})
        self.assertEqual(self.ctx.begin_stage('startup'), artifact)
        self.ctx.bindings['dump_fingerprints'] = {'DummyDll/changed.dll': 'different dump'}
        with self.assertRaisesRegex(VersionError, 'Stale/wrong upstream'): self.ctx.begin_stage('startup')
        self.ctx.bindings.pop('dump_fingerprints')
        (self.root / 'modules/speed/port.c').write_text('/* changed */\n')
        with self.assertRaisesRegex(VersionError, 'Stale/wrong upstream'): self.ctx.begin_stage('startup')


if __name__ == '__main__':
    unittest.main()
