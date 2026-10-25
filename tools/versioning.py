"""Sample-bound configuration shared by builders, native headers and replays.

The CLI lives in versions.py. Importing this module does not extract, compile,
or change profiles. Unknown samples never inherit confirmed offsets.
"""
from __future__ import annotations

import hashlib
import importlib.metadata
import json
import os
import re
import shutil
import struct
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DEFAULT_PROFILE = '4.0.1.1-arm64-d373432ce775'
MODULES = ('unlock', 'startup', 'practice', 'watermark', 'tutorial', 'collections', 'speed', 'avatar')
STAGES = {
    'unlock': ('_watermarked', ('unlock', 'watermark'), None),
    'startup': ('_NoAntiAddiction', ('startup',), 'unlock'),
    'practice': ('_Practice_v2', ('practice',), 'startup'),
    'watermark': ('_Practice_mod', ('watermark',), 'practice'),
    'tutorial': ('_Practice_mod_SkipTutorial', ('tutorial',), 'watermark'),
    'collections': ('_Practice_mod_AllCollections', ('collections',), 'tutorial'),
    'speed': ('_Practice_mod_AllCollections_Speed', ('speed', 'avatar'), 'collections'),
}
VERIFIED = {'static_verified', 'replay_verified', 'apk_verified'}


class VersionError(RuntimeError):
    def __init__(self, message, code=4):
        super().__init__(message)
        self.code = code  # 2 materials, 3 unresolved/ambiguous, 4 mismatch


def read_json(path):
    try:
        return json.loads(Path(path).read_text())
    except FileNotFoundError as error:
        raise VersionError(f'Missing material: {path}', 2) from error


def write_json(path, value):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_suffix(path.suffix + '.tmp')
    temporary.write_text(json.dumps(value, ensure_ascii=False, indent=2) + '\n')
    temporary.replace(path)


def digest(path):
    h = hashlib.sha256()
    with Path(path).open('rb') as stream:
        for block in iter(lambda: stream.read(4 * 1024 * 1024), b''):
            h.update(block)
    return h.hexdigest()


def integer(value):
    return int(value, 0) if isinstance(value, str) else int(value)


def macro(value):
    return re.sub(r'[^a-zA-Z0-9_]', '_', value).upper()


class Elf:
    def __init__(self, data):
        self.data = data
        if data[:6] != b'\x7fELF\x02\x01' or struct.unpack_from('<H', data, 18)[0] != 183:
            raise VersionError('Expected a little-endian ELF64 AArch64 library')
        self.segments = []
        self.build_id = None
        phoff = struct.unpack_from('<Q', data, 0x20)[0]
        phsize, phnum = struct.unpack_from('<HH', data, 0x36)
        for index in range(phnum):
            kind, flags, off, va, _, size, memsize, align = struct.unpack_from('<II6Q', data, phoff + index * phsize)
            if kind == 1:
                self.segments.append(dict(file_offset=hex(off), virtual_address=hex(va), file_size=hex(size), memory_size=hex(memsize), flags=flags, alignment=hex(align)))
            if kind == 4:
                cursor = off
                while cursor + 12 <= off + size:
                    namesz, descsz, note_type = struct.unpack_from('<III', data, cursor)
                    name = data[cursor + 12:cursor + 12 + namesz].rstrip(b'\0')
                    start = cursor + 12 + (namesz + 3 & ~3)
                    if name == b'GNU' and note_type == 3:
                        self.build_id = data[start:start + descsz].hex()
                    cursor = start + (descsz + 3 & ~3)
        self.memory_end = max(integer(s['virtual_address']) + integer(s['memory_size']) for s in self.segments)

    def offset(self, va, size=1, executable=False):
        for seg in self.segments:
            start, length = integer(seg['virtual_address']), integer(seg['file_size'])
            if start <= va and va + size <= start + length and (not executable or seg['flags'] & 1):
                return integer(seg['file_offset']) + va - start
        raise VersionError(f'Address {va:#x} + {size:#x} is outside the required file-backed PT_LOAD')

    def bytes_at(self, va, size):
        off = self.offset(va, size)
        return self.data[off:off + size]

    def exports(self):
        data = self.data
        shoff = struct.unpack_from('<Q', data, 0x28)[0]
        shsize, shnum = struct.unpack_from('<HH', data, 0x3a)
        sections = [struct.unpack_from('<IIQQQQIIQQ', data, shoff + i * shsize) for i in range(shnum)]
        result = {}
        for section in sections:
            if section[1] != 11:
                continue
            strings = sections[section[6]]
            names = data[strings[4]:strings[4] + strings[5]]
            for off in range(section[4], section[4] + section[5], section[9]):
                name, _, _, shndx, value, _ = struct.unpack_from('<IBBHQQ', data, off)
                if value and shndx:
                    result[names[name:names.index(b'\0', name)].decode()] = value
        return result


def selected_profile():
    if '--profile' in sys.argv:
        index = sys.argv.index('--profile')
        if index + 1 == len(sys.argv):
            raise VersionError('--profile needs a sample ID or profile directory', 2)
        return sys.argv[index + 1]
    for arg in sys.argv:
        if arg.startswith('--profile='):
            return arg.partition('=')[2]
    return os.environ.get('PHIGROS_PROFILE', DEFAULT_PROFILE)


class Context:
    def __init__(self, profile=None, root=ROOT):
        self.root = Path(root)
        supplied = Path(profile or selected_profile())
        self.folder = supplied if supplied.is_dir() else self.root / 'profiles' / supplied
        self.profile = read_json(self.folder / 'profile.json')
        self.id = self.profile['identity']['profile_id']
        if self.folder.name != self.id:
            raise VersionError('Profile directory and identity.profile_id disagree')
        self.requirements = read_json(self.root / 'profiles/requirements.json')
        # Changed implementations may have different dependencies. The common
        # semantic target/field specs remain in requirements.json; each port
        # explicitly records the dependency list its reviewed source uses.
        for module, override in self.profile.get('module_requirements', {}).items():
            if module not in MODULES or not override.get('evidence') or not all(k in override for k in ('targets', 'fields', 'fixtures')):
                raise VersionError(f'Unreviewed/incomplete module dependency override: {module}', 3)
            self.requirements['modules'][module] = override
        self.assets = read_json(self.folder / 'assets.json')
        self.progress = read_json(self.folder / 'progress.json')
        self.replay = read_json(self.folder / 'replay.json')
        self.work = self.root / 'work/versions' / self.id
        bindings = self.work / 'bindings.json'
        self.bindings = read_json(bindings) if bindings.exists() else {}
        self.apk = Path(self.bindings.get('apk', self.root / self.profile['identity']['apk'].get('path', 'MISSING.apk')))
        self.library = self.work / 'original/libil2cpp.so'
        self.metadata = self.work / 'original/global-metadata.dat'
        self._elf = None
        self._checked = set()
        self._materials = False
        self._tool_versions = None

    def path(self, path):
        return self.root / path

    @property
    def elf(self):
        self.ensure_materials()
        if self._elf is None:
            self._elf = Elf(self.library.read_bytes())
        return self._elf

    @property
    def game_map_size(self):
        return (self.elf.memory_end + 0xffff) & ~0xffff

    @property
    def ndk(self):
        return Path(os.environ.get('PHIGROS_NDK_ROOT', self.root / 'work/practice/android-ndk-r27d'))

    @property
    def compiler(self):
        return self.ndk / 'toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android23-clang'

    @property
    def sdk(self):
        return Path(os.environ.get('ANDROID_SDK_ROOT', os.environ.get('ANDROID_HOME', '/mnt/c/Users/missi/AppData/Local/Android/Sdk')))

    @property
    def javac(self):
        return os.environ.get('PHIGROS_JAVAC') or shutil.which('javac') or '/mnt/d/graalvm-jdk-21.0.8+12.1/bin/javac.exe'

    @property
    def zipalign(self):
        path = self.sdk / 'build-tools/36.0.0/zipalign'
        return path if path.is_file() else self.root / 'work/apk-build/tools/usr/bin/zipalign'

    @property
    def signer_jar(self):
        path = self.sdk / 'build-tools/36.0.0/lib/apksigner.jar'
        return path if path.is_file() else self.root / 'work/apk-build/tools/usr/share/java/apksigner.jar'

    def android_tool_env(self):
        env = dict(os.environ)
        legacy = self.root / 'work/apk-build/tools/usr'
        if self.zipalign == legacy / 'bin/zipalign':
            paths = [str(legacy / p) for p in ('lib', 'lib/x86_64-linux-gnu/android', 'lib/x86_64-linux-gnu')]
            if env.get('LD_LIBRARY_PATH'):
                paths.append(env['LD_LIBRARY_PATH'])
            env['LD_LIBRARY_PATH'] = ':'.join(paths)
        return env

    @property
    def keystore(self):
        return Path(os.environ.get('PHIGROS_KEYSTORE', self.root / 'work/apk-build/local-unlock.jks'))

    def stage_work(self, stage):
        return self.work / stage

    def artifact(self, stage):
        version = re.sub(r'[^a-zA-Z0-9_.-]', '_', self.profile['identity']['game_version'])
        return self.root / 'dist/versions' / self.id / f'Phigros_{version}_Unlock_arm64{STAGES[stage][0]}.apk'

    def ensure_materials(self):
        if self._materials:
            return
        import zipfile
        identity = self.profile['identity']
        if not self.apk.is_file():
            raise VersionError(f'Missing APK: {self.apk}; run versions.py prepare --apk PATH', 2)
        if digest(self.apk) != identity['apk']['sha256']:
            raise VersionError('Original APK SHA-256 mismatch: select/prepare its actual sample profile')
        self.library.parent.mkdir(parents=True, exist_ok=True)
        with zipfile.ZipFile(self.apk) as archive:
            for kind, path in [('il2cpp', self.library), ('metadata', self.metadata)]:
                expected = identity[kind]['sha256']
                if path.exists():
                    if digest(path) != expected:
                        raise VersionError(f'Stale/corrupt original material: {path}; retain it for investigation and re-prepare this sample')
                else:
                    data = archive.read(identity[kind]['apk_entry'])
                    if hashlib.sha256(data).hexdigest() != expected:
                        raise VersionError(f'APK {kind} entry does not match profile')
                    path.write_bytes(data)
        self._materials = True

    def dump_dir(self):
        path = Path(self.bindings.get('dump', self.root / self.profile.get('dump', {}).get('directory', 'MISSING-DUMP')))
        provenance = self.bindings.get('dump_provenance', {})
        for kind, key in [('il2cpp', 'so_sha256'), ('metadata', 'metadata_sha256')]:
            if provenance.get(key) != self.profile['identity'][kind]['sha256']:
                raise VersionError('Missing/mismatched dump provenance; run versions.py dump or attach-dump', 2)
        fingerprints = self.bindings.get('dump_fingerprints', {})
        if not fingerprints:
            raise VersionError('Missing dump fingerprints', 2)
        for name, expected in fingerprints.items():
            item = path / name
            if not item.is_file() or digest(item) != expected:
                raise VersionError(f'Missing/changed dump file: {item}', 2)
        return path

    def catalog(self, name):
        item = self.assets.get('catalogs', {}).get(name)
        if not item or not item.get('path'):
            raise VersionError(f'Unresolved {name} catalog', 3)
        path = self.path(item['path'])
        if not path.is_file() or digest(path) != item['sha256']:
            raise VersionError(f'Missing/changed {name} catalog: {path}', 2)
        return read_json(path)

    def target(self, key):
        try:
            row = self.profile['targets'][key]
        except KeyError as error:
            raise VersionError(f'Unresolved native target: {key}', 3) from error
        if not row or row.get('status') not in VERIFIED or not row.get('evidence'):
            raise VersionError(f'Unreviewed native target: {key}', 3)
        return row

    def rva(self, key):
        return integer(self.target(key)['rva'])

    def field(self, key):
        row = self.profile.get('fields', {}).get(key)
        if not row or row.get('status') not in VERIFIED or not row.get('evidence'):
            raise VersionError(f'Unreviewed field/layout: {key}', 3)
        return integer(row['offset'])

    def native_sources(self, module):
        implementation = self.profile.get('implementations', {}).get(module, {})
        sources = implementation.get('native_sources', [])
        if not sources or not implementation.get('evidence'):
            raise VersionError(f'Unreviewed native implementation selection: {module}', 3)
        paths = [self.path(p) for p in sources]
        for path in paths:
            if not path.is_file():
                raise VersionError(f'Missing native implementation: {path}', 2)
        return paths

    def fixture(self, key):
        row = self.replay.get(key)
        if row is None:
            raise VersionError(f'Missing replay fixture: {key}', 3)
        if isinstance(row, dict):
            if row.get('status') not in VERIFIED or not row.get('evidence'):
                raise VersionError(f'Unreviewed replay fixture: {key}', 3)
            return integer(row['rva'])
        return row

    def validate(self, modules=MODULES):
        modules = tuple(modules)
        for module in modules:
            if module not in self.requirements['modules']:
                raise VersionError(f'Unknown module: {module}', 3)
            if module in self._checked:
                continue
            state = self.profile.get('modules', {}).get(module, {})
            if state.get('status') not in VERIFIED or not state.get('evidence'):
                raise VersionError(f'Module {module} still needs analysis/review', 3)
            if module == 'unlock':
                for name in ('original_package', 'mod_package'):
                    value = self.profile['identity'].get(name)
                    if not isinstance(value, str) or not re.fullmatch(r'[A-Za-z_]\w*(?:\.[A-Za-z_]\w*)+', value):
                        raise VersionError(f'Unresolved/invalid Android package setting: identity.{name}', 3)
            if module in {'practice', 'speed', 'avatar'}:
                self.native_sources(module)
            required = self.requirements['modules'][module]
            for key in required['targets']:
                row = self.target(key)
                spec = self.requirements['targets'][key]
                if row['module'] != module or row['role'] != spec['role']:
                    raise VersionError(f'Target contract mismatch: {key}')
                address = self.rva(key)
                expected = bytes.fromhex(row.get('original_bytes', ''))
                if not expected or address % 4:
                    raise VersionError(f'Invalid original bytes/address: {key}')
                self.elf.offset(address, len(expected), executable=row['role'] != 'data_slot')
                if self.elf.bytes_at(address, len(expected)) != expected:
                    raise VersionError(f'Original instruction/data mismatch: {key} at {address:#x}')
                if 'replacement_bytes' in row and len(bytes.fromhex(row['replacement_bytes'])) != len(expected):
                    raise VersionError(f'Unequal-length static patch: {key}')
                if row['role'] == 'static_patch':
                    from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
                    new = bytes.fromhex(row.get('replacement_bytes', ''))
                    if not new or len(new) % 4 or sum(i.size for i in Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN).disasm(new, address)) != len(new):
                        raise VersionError(f'Invalid static replacement instructions: {key}')
                if row['role'] == 'runtime_entry_hook':
                    self.validate_prologue(key, row)
            for key in required['fields']:
                if self.field(key) < 0:
                    raise VersionError(f'Negative field offset: {key}')
                expected_storage = self.requirements['fields'][key]['storage']
                if self.profile['fields'][key]['storage'] != expected_storage:
                    raise VersionError(f'Field storage contract changed: {key}; review implementation')
            for key in required['fixtures']:
                address = self.fixture(key)
                row = self.replay[key]
                if isinstance(row, dict) and 'original_bytes' in row:
                    expected = bytes.fromhex(row['original_bytes'])
                    if self.elf.bytes_at(address, len(expected)) != expected:
                        raise VersionError(f'Replay original bytes mismatch: {key}')
            if module in {'unlock', 'watermark', 'practice', 'avatar', 'collections', 'tutorial'}:
                if self.assets.get('status') not in VERIFIED or not self.assets.get('evidence'):
                    raise VersionError('Resource/Java contract has not been reviewed', 3)
                self.validate_assets(module)
            if module in {'unlock', 'tutorial', 'collections', 'avatar'}:
                if self.progress.get('status') not in VERIFIED or not self.progress.get('evidence'):
                    raise VersionError('Save/codec contract has not been reviewed', 3)
                if self.progress.get('codec', {}).get('kind') != 'aes-cbc-base64-url':
                    raise VersionError('Save codec changed; implement and review its adapter', 3)
                self.validate_progress(module)
                if any('.Record.' in key for key in self.progress.get('unlock_values', {})):
                    raise VersionError('Score records are forbidden in formal bootstrap values')
            self._checked.add(module)
        self.ensure_materials()

    def validate_prologue(self, key, row):
        custom = self.profile.get('implementations', {}).get(row['module'], {}).get('custom_hook_abi')
        if custom:
            if not custom.get('evidence') or not row.get('overwrite_size') or not row.get('resume_rva'):
                raise VersionError(f'{key}: custom hook ABI needs implementation evidence, overwrite_size and resume_rva', 3)
            if len(bytes.fromhex(row['original_bytes'])) != row['overwrite_size']:
                raise VersionError(f'{key}: custom overwrite_size disagrees with expected bytes')
            return
        from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
        md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
        insns = list(md.disasm(bytes.fromhex(row['original_bytes']), self.rva(key)))
        if len(insns) != 4 or len(bytes.fromhex(row['original_bytes'])) != 16:
            raise VersionError(f'{key}: current trampoline requires exactly four entry instructions')
        relative = []
        for index, ins in enumerate(insns):
            if ins.mnemonic in {'adr', 'adrp', 'b', 'bl', 'cbz', 'cbnz', 'tbz', 'tbnz'} or ins.mnemonic.startswith('b.') or (ins.mnemonic.startswith('ldr') and '[' not in ins.op_str):
                relative.append((index, ins.mnemonic))
        supported = row.get('trampoline') == 'fourth_instruction_ADRP_special_relocation'
        if relative and not (supported and relative == [(3, 'adrp')] and row['module'] == 'avatar'):
            raise VersionError(f'{key}: unsupported PC-relative prologue {relative}; adapt trampoline first')
        if integer(row.get('resume_rva', 0)) != self.rva(key) + 16:
            raise VersionError(f'{key}: resume_rva must match entry+16 for this implementation')

    def validate_assets(self, module):
        required = {
            'unlock': ('activity_smali', 'activity_oncreate_super'),
            'watermark': ('watermark.menu_scene_indices', 'watermark.rawimage_script_path_id', 'watermark.sharedassets0_split_count', 'watermark.excluded_gameplay_scene'),
            'practice': ('practice.scene', 'practice.blur_components'),
            'avatar': ('avatar.scene', 'avatar.collection_control.path_id', 'avatar.collection_control.script_path_id', 'avatar.collection_control.script_file_id', 'avatar.game_information.path_id', 'avatar.game_information.script_path_id', 'avatar.game_information.script_file_id', 'avatar.expected_avatar_count_after_append', 'avatar.name', 'avatar.key'),
            'collections': ('avatar.scene', 'avatar.game_information.path_id', 'catalogs.collections', 'catalogs.chapters'),
            'tutorial': (),
        }
        if self.assets.get('unity_version') != self.profile['identity'].get('unity_version') or not self.assets.get('unity_version'):
            raise VersionError('Resource type trees must use the identified Unity version', 3)
        keys = required[module] + (('activity_smali',) if module != 'watermark' else ())
        for key in keys:
            value = self.assets
            for part in key.split('.'):
                if not isinstance(value, dict) or part not in value:
                    raise VersionError(f'Unresolved resource/Java setting: {key}', 3)
                value = value[part]
            if value is None:
                raise VersionError(f'Unresolved resource/Java setting: {key}', 3)
        if module == 'collections':
            self.catalog('chapters')
            self.catalog('collections')

    def validate_progress(self, module):
        codec = self.progress['codec']
        try:
            key = bytes.fromhex(codec['key_hex'])
            iv = bytes.fromhex(codec['iv_hex'])
        except (KeyError, ValueError, TypeError) as error:
            raise VersionError('Unresolved AES codec key_hex/iv_hex', 3) from error
        if len(key) not in (16, 24, 32) or len(iv) != 16 or not codec.get('prefs_suffix'):
            raise VersionError('Invalid AES codec dimensions or missing prefs_suffix', 3)
        required = {
            'unlock': ('unlock_values', 'cleared'),
            'tutorial': ('tutorial.key', 'tutorial.value'),
            'collections': ('collection_rules.owned_prefix', 'collection_rules.read_suffix', 'collection_rules.cosmetic_kinds'),
            'avatar': ('avatar_seed',),
        }
        for name in required[module]:
            value = self.progress
            for part in name.split('.'):
                if not isinstance(value, dict) or part not in value:
                    raise VersionError(f'Unresolved progress setting: {name}', 3)
                value = value[part]
            if value is None:
                raise VersionError(f'Unresolved progress setting: {name}', 3)
        for name in ('unlock_values', 'avatar_seed'):
            if any('.Record.' in key for key in self.progress.get(name, {})):
                raise VersionError('Score records are forbidden in formal bootstrap values')

    def patch(self, data, module):
        self.validate((module,))
        output = bytearray(data)
        for key in self.requirements['modules'][module]['targets']:
            row = self.target(key)
            if row['role'] != 'static_patch':
                continue
            old, new = bytes.fromhex(row['original_bytes']), bytes.fromhex(row['replacement_bytes'])
            off = self.elf.offset(self.rva(key), len(old), executable=True)
            if output[off:off + len(old)] != old:
                raise VersionError(f'Patch input mismatch: {key}; refusing partial output')
            output[off:off + len(new)] = new
        return output

    def generate_header(self, modules=('practice', 'speed', 'avatar')):
        self.validate(modules)
        lines = ['/* Generated from the selected sample; do not edit. */', '#ifndef PHIGROS_VERSION_H', '#define PHIGROS_VERSION_H', '#include <stdint.h>']
        lines.append(f'#define PH_IMAGE_MEM_END {self.elf.memory_end:#x}UL')
        needed = {key for m in modules for key in self.requirements['modules'][m]['targets']}
        for key in sorted(needed):
            row = self.target(key)
            lines.append(f'#define PH_RVA_{macro(key)} {self.rva(key):#x}UL')
            raw = bytes.fromhex(row['original_bytes'])
            words = [int.from_bytes(raw[i:i+4], 'little') for i in range(0, len(raw), 4)]
            lines.append(f'#define PH_HEAD_{macro(key)} {{' + ','.join(f'{w:#x}U' for w in words) + '}')
            if row['role'] == 'runtime_instruction_hook':
                lines += [f'#define PH_WORD_{macro(key)} {words[0]:#x}U', f'#define PH_REG_{macro(key)} {row["destination_fp_register"]}', f'#define PH_SECONDS_{macro(key)} {float(row["baseline_seconds"])}f']
        needed_fields = {key for m in modules for key in self.requirements['modules'][m]['fields']}
        for key in sorted(needed_fields):
            lines.append(f'#define PH_F_{macro(key)} {self.field(key):#x}')
        lines.append('#endif')
        directory = self.work / 'generated'
        directory.mkdir(parents=True, exist_ok=True)
        (directory / 'phigros_version.h').write_text('\n'.join(lines) + '\n')
        return directory

    def config_digest(self):
        h = hashlib.sha256()
        h.update(json.dumps(self.bindings.get('dump_fingerprints', {}), sort_keys=True).encode())
        h.update(json.dumps(self.bindings.get('dump_provenance', {}), sort_keys=True).encode())
        dependency_file = self.root / 'requirements.txt'
        if dependency_file.is_file():
            h.update(dependency_file.read_bytes())
        h.update(sys.version.encode())
        for package in ('capstone', 'UnityPy', 'TypeTreeGeneratorAPI', 'Pillow', 'pycryptodome', 'unicorn'):
            try:
                version = importlib.metadata.version(package)
            except importlib.metadata.PackageNotFoundError:
                version = 'unavailable'
            h.update(f'{package}={version}'.encode())
        for path in [self.root / 'profiles/requirements.json', *(self.folder / n for n in ('profile.json', 'assets.json', 'progress.json', 'replay.json'))]:
            h.update(path.read_bytes())
        # Whole source tree is small; receipts must invalidate when bootstrap,
        # resources, compiler input, or a build helper changes.
        for base in ('modules', 'tools'):
            for path in sorted((self.root / base).rglob('*')):
                if path.is_file() and not path.is_symlink() and '__pycache__' not in path.parts:
                    h.update(path.relative_to(self.root).as_posix().encode())
                    h.update(path.read_bytes())
        for path in self.tool_paths():
            h.update(str(path.resolve()).encode())
            h.update(digest(path).encode())
        if self._tool_versions is None:
            self._tool_versions = {}
            for name, command in {'java': ['java', '-version'], 'javac': [self.javac, '-version'], 'apktool': ['apktool', '--version'], 'clang': [str(self.compiler), '--version']}.items():
                try:
                    result = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, timeout=30)
                    self._tool_versions[name] = result.stdout.strip()
                except (OSError, subprocess.TimeoutExpired):
                    self._tool_versions[name] = 'unavailable'
        h.update(json.dumps(self._tool_versions, sort_keys=True).encode())
        return h.hexdigest()

    def tool_paths(self):
        paths = [self.compiler, self.keystore, self.zipalign, self.signer_jar]
        sdk = self.sdk
        paths.extend((sdk / 'platforms/android-36/android.jar', sdk / 'build-tools/36.0.0/lib/d8.jar'))
        paths.append(Path(self.javac))
        paths.append(Path(os.environ.get('PHIGROS_WATERMARK_FONT', '/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc')))
        for command in ('java', 'javac', 'apktool'):
            found = shutil.which(command)
            if found:
                paths.append(Path(found))
        # Missing tools are diagnosed by the responsible build command; their
        # later installation also changes the receipt fingerprint.
        return sorted({p for p in paths if p.is_file()})

    def begin_stage(self, stage):
        self.validate(STAGES[stage][1])
        previous = STAGES[stage][2]
        source = self.apk if previous is None else self.artifact(previous)
        if previous:
            receipt = read_json(source.with_suffix('.apk.build.json'))
            if receipt.get('profile_id') != self.id or receipt.get('stage') != previous or receipt.get('config_sha256') != self.config_digest() or receipt.get('output_sha256') != digest(source):
                raise VersionError(f'Stale/wrong upstream artifact: {source}; rebuild {previous} and its predecessors')
        self.stage_work(stage).mkdir(parents=True, exist_ok=True)
        self.artifact(stage).parent.mkdir(parents=True, exist_ok=True)
        if not self.keystore.is_file():
            raise VersionError(f'Existing signing key missing: {self.keystore}; restore backups or explicitly configure PHIGROS_KEYSTORE', 2)
        return source

    def finish_stage(self, stage, source):
        output = self.artifact(stage)
        receipt = dict(profile_id=self.id, stage=stage, original_apk_sha256=self.profile['identity']['apk']['sha256'], config_sha256=self.config_digest(), arguments=sys.argv[1:], input_sha256=digest(source), output_sha256=digest(output), checks=['stage-specific APK entry checks', 'apksigner verify', 'zipalign check'])
        write_json(output.with_suffix('.apk.build.json'), receipt)
        return receipt


_context = None


def context():
    global _context
    if _context is None:
        _context = Context()
    return _context
