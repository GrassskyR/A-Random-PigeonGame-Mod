#!/usr/bin/env python3
"""Inspect samples, prepare isolated materials, locate candidates, and verify ports."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import struct
import subprocess
import sys
import tempfile
import zipfile

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from tools.versioning import (Context, DEFAULT_PROFILE, Elf, MODULES, ROOT, VERIFIED,
                        VersionError, digest, integer, read_json, write_json)


def manifest_strings(data, position):
    _, header, _ = struct.unpack_from('<HHI', data, position)
    count, _, flags, start = struct.unpack_from('<4I', data, position + 8)

    def length(offset, wide):
        value = struct.unpack_from('<H' if wide else '<B', data, offset)[0]
        step, flag, shift = (2, 0x8000, 16) if wide else (1, 0x80, 8)
        if value & flag:
            tail = struct.unpack_from('<H' if wide else '<B', data, offset + step)[0]
            return ((value & (flag - 1)) << shift) | tail, offset + 2 * step
        return value, offset + step

    strings = []
    for index in range(count):
        off = position + start + struct.unpack_from('<I', data, position + header + 4 * index)[0]
        if flags & 0x100:
            _, off = length(off, False)
            size, off = length(off, False)
            value = data[off:off + size].decode('utf-8')
        else:
            size, off = length(off, True)
            value = data[off:off + 2 * size].decode('utf-16-le')
        strings.append(value)
    return strings


def manifest_info(data):
    if data.lstrip().startswith(b'<'):
        import xml.etree.ElementTree as ET
        root = ET.fromstring(data)
        ns = '{http://schemas.android.com/apk/res/android}'
        return {'package': root.get('package'), 'versionName': root.get(ns + 'versionName'),
                'versionCode': root.get(ns + 'versionCode'), 'activities': [a.get(ns + 'name') for a in root.iter('activity')]}
    result = {'activities': []}
    strings, pos = [], 8
    while pos + 8 <= len(data):
        kind, header, size = struct.unpack_from('<HHI', data, pos)
        if size < header or pos + size > len(data):
            raise VersionError('Malformed binary AndroidManifest.xml')
        if kind == 1:
            strings = manifest_strings(data, pos)
        elif kind == 0x102:
            name = strings[struct.unpack_from('<I', data, pos + 20)[0]]
            attr_start, attr_size, count = struct.unpack_from('<3H', data, pos + 24)
            attrs = {}
            for index in range(count):
                start = pos + 16 + attr_start + attr_size * index
                attr_name = strings[struct.unpack_from('<I', data, start + 4)[0]]
                raw = struct.unpack_from('<I', data, start + 8)[0]
                typ, value = data[start + 15], struct.unpack_from('<I', data, start + 16)[0]
                attrs[attr_name] = strings[raw] if raw != 0xffffffff else strings[value] if typ == 3 else value
            if name == 'manifest':
                result.update({k: attrs.get(k) for k in ('package', 'versionName', 'versionCode')})
            if name == 'activity':
                result['activities'].append(attrs.get('name'))
        pos += size
    return result


def inspect_apk(path):
    path = Path(path).resolve()
    result = {'apk': str(path), 'apk_sha256': digest(path)}
    with zipfile.ZipFile(path) as archive:
        result.update(manifest_info(archive.read('AndroidManifest.xml')))
        names = archive.namelist()
        result['abis'] = sorted({n.split('/')[1] for n in names if re.match(r'lib/[^/]+/libil2cpp\.so$', n)})
        so_entry = 'lib/arm64-v8a/libil2cpp.so'
        meta_entry = 'assets/bin/Data/Managed/Metadata/global-metadata.dat'
        result['supported_analysis'] = so_entry in names and meta_entry in names
        if result['supported_analysis']:
            so, meta = archive.read(so_entry), archive.read(meta_entry)
            elf = Elf(so)
            result.update(il2cpp={'apk_entry': so_entry, 'sha256': hashlib.sha256(so).hexdigest(), 'build_id': elf.build_id},
                          metadata={'apk_entry': meta_entry, 'sha256': hashlib.sha256(meta).hexdigest(), 'format_version': struct.unpack_from('<I', meta, 4)[0] if meta[:4] == b'\xaf\x1b\xb1\xfa' else None},
                          segments=elf.segments)
        unity = None
        for name in ('assets/bin/Data/globalgamemanagers', 'assets/bin/Data/globalgamemanagers.assets', 'assets/bin/Data/level0'):
            if name in names:
                with archive.open(name) as stream:
                    match = re.search(rb'(20\d\d\.\d+\.\d+[abfp]\d+)\x00', stream.read(8192))
                if match:
                    unity = match[1].decode()
                    break
        result['unity_version'] = unity
    result['known_profiles'] = []
    for profile in (ROOT / 'profiles').glob('*/profile.json'):
        identity = read_json(profile)['identity']
        if identity['apk']['sha256'] == result['apk_sha256'] and identity['abi'] == 'arm64-v8a':
            result['known_profiles'].append(identity['profile_id'])
    return result


def prepare(args):
    info = inspect_apk(args.apk)
    if not info['supported_analysis']:
        raise VersionError('This workflow currently analyzes Android ARM64 IL2CPP APKs; this sample needs a different architecture/loader adapter', 2)
    if len(info['known_profiles']) > 1:
        raise VersionError('Multiple profiles claim this exact sample; resolve duplicate identities', 3)
    sample_id = info['known_profiles'][0] if info['known_profiles'] else re.sub(r'[^a-zA-Z0-9_.-]', '_', str(info.get('versionName') or 'unknown')) + '-arm64-' + info['apk_sha256'][:12]
    folder = ROOT / 'profiles' / sample_id
    if not info['known_profiles']:
        identity = {'profile_id': sample_id, 'game_version': str(info.get('versionName') or 'unknown'), 'unity_version': info['unity_version'], 'abi': 'arm64-v8a',
                    'apk': {'path': Path(args.apk).name, 'sha256': info['apk_sha256']}, 'il2cpp': info['il2cpp'], 'metadata': info['metadata'],
                    'original_package': info.get('package'), 'mod_package': None}
        write_json(folder / 'profile.json', {'schema_version': 1, 'identity': identity, 'address_model': {'segments': info['segments']},
                   'implementation': 'arm64-il2cpp-v1', 'modules': {m: {'status': 'draft', 'evidence': []} for m in MODULES}, 'targets': {}, 'fields': {}, 'dump': {}, 'implementations': {}})
        for name in ('assets', 'progress'):
            write_json(folder / (name + '.json'), {'status': 'draft', 'evidence': []})
        write_json(folder / 'replay.json', {})
        (folder / 'evidence.md').write_text('# ' + sample_id + '\n\nUnknown sample. Record ABI, control-flow, resource, save and replay findings here.\n\nNo addresses or confirmed module states were inherited from the reference version.\n')
    ctx = Context(sample_id)
    bindings = ctx.bindings
    bindings['apk'] = str(Path(args.apk).resolve())
    write_json(ctx.work / 'bindings.json', bindings)
    ctx.apk = Path(bindings['apk'])
    ctx.ensure_materials()
    extracted = []
    with zipfile.ZipFile(ctx.apk) as archive:
        for name in archive.namelist():
            if re.match(r'classes\d*\.dex$', name) or re.match(r'assets/bin/Data/(?:level\d+|globalgamemanagers(?:\.assets)?|boot\.config)$', name) or name.endswith('/catalog.json'):
                out = ctx.work / 'extracted' / name
                out.parent.mkdir(parents=True, exist_ok=True)
                with archive.open(name) as source, out.open('wb') as target:
                    shutil.copyfileobj(source, target)
                extracted.append(name)
    write_json(ctx.work / 'inspection.json', info)
    report = {'profile_id': sample_id, 'known': bool(info['known_profiles']), 'extracted': extracted, 'next': f'.venv/bin/python tools/versions.py dump --profile {sample_id}'}
    handoff(ctx, report)
    return report


def attach_dump(ctx, directory, provenance):
    directory = Path(directory).resolve()
    files = [directory / 'dump.cs', directory / 'script.json']
    files += sorted((directory / 'DummyDll').glob('*.dll'))
    if len(files) < 3 or not all(p.is_file() for p in files):
        raise VersionError('Dump needs dump.cs, script.json and nonempty DummyDll/', 2)
    ctx.bindings.update(dump=str(directory), dump_provenance=provenance,
                        dump_fingerprints={p.relative_to(directory).as_posix(): digest(p) for p in files})
    write_json(ctx.work / 'bindings.json', ctx.bindings)
    return {'profile_id': ctx.id, 'dump': str(directory), 'provenance': provenance, 'files': len(files)}


def run_dump(args):
    ctx = Context(args.profile)
    ctx.ensure_materials()
    tool = Path(args.dumper or os.environ.get('PHIGROS_IL2CPP_DUMPER', ROOT / 'ildump/Il2CppDumper.dll')).resolve()
    if not tool.is_file():
        raise VersionError(f'Il2CppDumper missing: {tool}; set --dumper', 2)
    runtime = args.dotnet or os.environ.get('PHIGROS_DOTNET') or shutil.which('dotnet') or str(ROOT / '.dotnet/dotnet')
    # A fresh output directory prevents a failed tool from attaching stale
    # dump.cs/DummyDll left by an earlier invocation.
    out = Path(tempfile.mkdtemp(prefix='dump-', dir=ctx.work))
    command = ([runtime, str(tool)] if tool.suffix.lower() == '.dll' else [str(tool)]) + [str(ctx.library), str(ctx.metadata), str(out)]
    # The dumper may request a key after an error. EOF records failure instead
    # of leaving an unattended Agent waiting on an invisible prompt.
    process = subprocess.run(command, input='', text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    (ctx.work / 'dump.log').write_text(process.stdout)
    if process.returncode or not (out / 'dump.cs').is_file():
        raise VersionError(f'Dump failed (exit {process.returncode}); inspect {ctx.work / "dump.log"}. No offsets were confirmed.', 2)
    result = attach_dump(ctx, out, {'kind': 'generated_from_bound_materials', 'so_sha256': digest(ctx.library), 'metadata_sha256': digest(ctx.metadata), 'tool_sha256': digest(tool), 'command': command})
    return result


def parse_fields(path):
    result = {}
    owner, namespace = None, ''
    for line in Path(path).read_text().splitlines():
        if line.startswith('// Namespace:'):
            namespace = line.partition(':')[2].strip()
        if not line.startswith((' ', '\t')) and '// TypeDefIndex:' in line:
            match = re.search(r'\b(?:class|struct) ([^ :]+)', line)
            owner = '.'.join(filter(None, [namespace, match[1]])) if match else None
        match = re.match(r'\s*(.+?); // (0x[0-9a-fA-F]+)\s*$', line)
        if owner and match:
            declaration = match[1]
            field = declaration.rsplit(' ', 1)[-1]
            field = 'ImageLoaded' if field == '<ImageLoaded>k__BackingField' else field
            result.setdefault(owner + '.' + field, []).append({'offset': match[2], 'declaration': declaration, 'storage': 'static_fields' if re.search(r'\bstatic\b', declaration) else 'instance'})
    return result


def pattern_candidates(elf, pattern):
    """Find every aligned masked pattern match in executable file-backed LOADs."""
    tokens = pattern.split()
    if not tokens or not any(t != '??' for t in tokens):
        raise VersionError('Pattern needs at least one fixed byte')
    values = [None if t == '??' else int(t, 16) for t in tokens]
    if any(v is not None and not 0 <= v <= 255 for v in values):
        raise VersionError('Pattern tokens must be byte hex or ??')
    runs, start = [], None
    for index, value in enumerate(values + [None]):
        if value is not None and start is None:
            start = index
        if value is None and start is not None:
            runs.append((start, bytes(values[start:index])))
            start = None
    anchor_off, anchor = max(runs, key=lambda item: len(item[1]))
    found = []
    for segment in elf.segments:
        if not segment['flags'] & 1:
            continue
        off, size, va = (integer(segment[k]) for k in ('file_offset', 'file_size', 'virtual_address'))
        data, cursor = elf.data[off:off + size], 0
        while (match := data.find(anchor, cursor)) >= 0:
            cursor = match + 1
            base = match - anchor_off
            if base < 0 or base + len(values) > len(data) or (va + base) % 4:
                continue
            if all(v is None or data[base + i] == v for i, v in enumerate(values)):
                found.append(va + base)
    return found


def locate(args):
    ctx = Context(args.profile)
    ctx.ensure_materials()
    dump = ctx.dump_dir()
    script = read_json(dump / 'script.json')
    methods = {}
    for method in script.get('ScriptMethod', []):
        methods.setdefault(method['Name'], []).append(method)
    fields, exports = parse_fields(dump / 'dump.cs'), ctx.elf.exports()
    results = {'profile_id': ctx.id, 'targets': {}, 'fields': {}, 'unresolved': [], 'policy': 'Candidates only. Review ABI/control flow before editing profile records; no automatic confirmation.'}
    for key, spec in ctx.requirements['targets'].items():
        locator = spec['locator']
        candidates = []
        if 'export' in locator and locator['export'] in exports:
            candidates.append({'rva': hex(exports[locator['export']]), 'basis': 'ELF export name'})
        if 'method' in locator:
            matches = methods.get(locator['method'], [])
            exact = [m for m in matches if m['Signature'] == locator['signature']]
            for match in exact or matches:
                address = integer(match['Address']) + integer(locator['offset_hint'])
                candidate = {'rva': hex(address), 'basis': locator['strategy'], 'method': match['Name'], 'signature': match['Signature'], 'same_reference_signature': match['Signature'] == locator['signature'], 'offset_hint_requires_review': bool(integer(locator['offset_hint']))}
                try:
                    candidate['bytes_at_hint'] = ctx.elf.bytes_at(address, 16).hex()
                except VersionError:
                    candidate['outside_file'] = True
                candidates.append(candidate)
        if not candidates and locator.get('pattern'):
            candidates = [{'rva': hex(address), 'basis': 'masked_byte_pattern_requires_control_flow_and_ABI_review'} for address in pattern_candidates(ctx.elf, locator['pattern'])]
        results['targets'][key] = {'candidates': candidates, 'candidate_status': 'missing' if not candidates else 'unique_candidate' if len(candidates) == 1 else 'ambiguous', 'confirmed': bool(ctx.profile.get('targets', {}).get(key, {}).get('status') in VERIFIED)}
        if len(candidates) != 1:
            results['unresolved'].append(key)
    for key, spec in ctx.requirements['fields'].items():
        candidates = fields.get(key, []) if spec['storage'] != 'runtime_layout' else []
        results['fields'][key] = {'candidates': candidates, 'basis': 'dump.cs' if candidates else 'manual runtime-layout analysis required', 'confirmed': bool(ctx.profile.get('fields', {}).get(key, {}).get('status') in VERIFIED)}
    results['modules'] = {}
    for module, required in ctx.requirements['modules'].items():
        results['modules'][module] = {
            'recorded_status': ctx.profile.get('modules', {}).get(module, {}).get('status', 'draft'),
            'unreviewed_targets': [key for key in required['targets'] if not ctx.profile.get('targets', {}).get(key, {}).get('status') in VERIFIED],
            'unreviewed_fields': [key for key in required['fields'] if not ctx.profile.get('fields', {}).get(key, {}).get('status') in VERIFIED],
            'missing_or_unreviewed_fixtures': [key for key in required['fixtures'] if key not in ctx.replay or isinstance(ctx.replay[key], dict) and ctx.replay[key].get('status') not in VERIFIED],
            'resource_contract_status': ctx.assets.get('status', 'draft'),
            'save_contract_status': ctx.progress.get('status', 'draft'),
            'native_sources': ctx.profile.get('implementations', {}).get(module, {}).get('native_sources', []),
            'replay_suites': ctx.profile.get('replay_suites', {}).get(module, []),
        }
    write_json(ctx.work / 'candidates.json', results)
    handoff(ctx, results)
    return {'profile_id': ctx.id, 'report': str(ctx.work / 'candidates.json'), 'missing_or_ambiguous_targets': results['unresolved'], 'confirmed_targets': sum(r['confirmed'] for r in results['targets'].values())}


def scan_assets(args):
    import UnityPy
    from UnityPy.helpers.TypeTreeGenerator import TypeTreeGenerator
    from UnityPy.helpers.TypeTreeNode import TypeTreeNode
    ctx = Context(args.profile)
    ctx.ensure_materials()
    with zipfile.ZipFile(ctx.apk) as archive:
        global_name = 'assets/bin/Data/globalgamemanagers.assets'
        if global_name not in archive.namelist():
            raise VersionError('No globalgamemanagers.assets; inspect serialized files and implement its script resolution', 3)
        scripts = {}
        for obj in UnityPy.load(archive.read(global_name)).objects:
            if obj.type.name == 'MonoScript':
                script = obj.read()
                scripts[obj.path_id] = {'assembly': script.m_AssemblyName, 'class': '.'.join(filter(None, [script.m_Namespace, script.m_ClassName]))}
        selected = args.scene or [name for name in archive.namelist() if re.match(r'assets/bin/Data/level\d+$', name)]
        result = {'scripts': scripts, 'scenes': {}, 'decoded': {}}
        generator = None
        if args.decode:
            unity = ctx.profile['identity'].get('unity_version')
            if not unity:
                raise VersionError('Unity version unknown; identify it before generating type trees', 3)
            generator = TypeTreeGenerator(unity)
            generator.load_local_dll_folder(str(ctx.dump_dir() / 'DummyDll'))
        for name in selected:
            env = UnityPy.load(archive.read(name))
            objects, decoded = [], {}
            names = {o.path_id: o.read().m_Name for o in env.objects if o.type.name == 'GameObject'}
            for obj in env.objects:
                if obj.type.name != 'MonoBehaviour':
                    continue
                head = obj.read(check_read=False)
                script = {}
                script_id, file_id = head.m_Script.m_PathID, head.m_Script.m_FileID
                if file_id == 0:
                    local = obj.assets_file.objects.get(script_id)
                    if local and local.type.name == 'MonoScript':
                        value = local.read()
                        script = {'assembly': value.m_AssemblyName, 'class': '.'.join(filter(None, [value.m_Namespace, value.m_ClassName]))}
                elif file_id <= len(obj.assets_file.externals):
                    external = obj.assets_file.externals[file_id - 1].path.replace('\\', '/')
                    if external.endswith('/globalgamemanagers.assets') or external == 'globalgamemanagers.assets':
                        script = scripts.get(script_id, {})
                entry = {'path_id': obj.path_id, 'script_path_id': head.m_Script.m_PathID, 'script_file_id': head.m_Script.m_FileID, 'game_object': names.get(head.m_GameObject.m_PathID), **script}
                objects.append(entry)
                if generator and any(token in script.get('class', '') for token in ('GetCollectionControl', 'GameInformation', 'Chapter9', 'CollectionDatabase', 'C9', 'LifeUnlock')):
                    nodes = json.loads(generator.get_nodes_as_json(script['assembly'], script['class']))
                    for i, node in enumerate(nodes):
                        if node['m_Type'] in ('bool', 'UInt8'):
                            node['m_MetaFlag'] |= 16384
                        if i + 3 < len(nodes) and nodes[i + 1]['m_Type'] == 'Array' and (node['m_Type'] != 'string' or nodes[i + 3]['m_Type'] != 'char'):
                            node['m_Type'] = 'vector'
                    fields = obj.read_typetree(TypeTreeNode.from_list(nodes))
                    decoded[str(obj.path_id)] = {'class': script['class'], 'gameObject': entry['game_object'], 'fields': fields}
            result['scenes'][name] = objects
            if decoded:
                result['decoded'][Path(name).name] = decoded
        write_json(ctx.work / 'scene-candidates.json', result)
        if generator:
            catalogs = ctx.work / 'candidate-catalogs'
            write_json(catalogs / 'chapters.json', result['decoded'])
            collection_candidates = [o['fields'] for scene in result['decoded'].values() for o in scene.values() if o['class'] == 'GetCollectionControl']
            if len(collection_candidates) == 1:
                write_json(catalogs / 'collections.json', collection_candidates[0])
    return {'profile_id': ctx.id, 'report': str(ctx.work / 'scene-candidates.json'), 'scenes': len(result['scenes']), 'catalogs': str(ctx.work / 'candidate-catalogs') if args.decode else None, 'next': 'Review script external-file references, select actual objects/scenes, promote catalogs into profiles/<sample>/catalogs and bind their hashes in assets.json; scan does not confirm them.'}


def handoff(ctx, report):
    states = '\n'.join(f'| {m} | {ctx.profile.get("modules", {}).get(m, {}).get("status", "draft")} |' for m in MODULES)
    text = f'# Port handoff: {ctx.id}\n\nRead `AGENTS.md` and `docs/workflows/port-version.md`.\n\nOriginal APK SHA-256: `{ctx.profile["identity"]["apk"]["sha256"]}`\n\n| Module | Recorded status |\n| --- | --- |\n{states}\n\nInspect `candidates.json`, `scene-candidates.json`, `dump.log` and the profile evidence. Candidate uniqueness is not semantic verification.\n\nNext: fill the unresolved targets, fields, assets, save rules and replay fixtures with evidence; then run:\n\n```bash\n.venv/bin/python tools/versions.py verify --profile {ctx.id}\n```\n\nDevice interaction remains a separate recorded result.\n'
    ctx.work.mkdir(parents=True, exist_ok=True)
    (ctx.work / 'handoff.md').write_text(text)
    write_json(ctx.work / 'latest-report.json', report)


def verify(args):
    ctx = Context(args.profile)
    modules = tuple(args.modules.split(',')) if args.modules else MODULES
    errors = []
    for module in modules:
        try:
            ctx.validate((module,))
        except (VersionError, KeyError, ValueError) as error:
            errors.append({'module': module, 'error': str(error)})
    if not errors:
        if 'collections' in modules:
            for name in ('chapters', 'collections'):
                ctx.catalog(name)
        if set(modules) & {'practice', 'watermark', 'avatar'}:
            ctx.dump_dir()
        with zipfile.ZipFile(ctx.apk) as archive:
            for entry, expected in ctx.assets.get('original_entry_sha256', {}).items():
                if hashlib.sha256(archive.read(entry)).hexdigest() != expected:
                    raise VersionError(f'Original scene entry mismatch: {entry}')
    report = {'profile_id': ctx.id, 'modules': list(modules), 'ok': not errors, 'errors': errors, 'scope': 'static configuration, original instructions, dump/catalog provenance; replay/APK/device results are separate'}
    write_json(ctx.work / 'static-verification.json', report)
    handoff(ctx, report)
    if errors:
        print(json.dumps(report, ensure_ascii=False, indent=2))
        raise VersionError('Port has unresolved or mismatched module requirements; see static-verification.json', 3)
    if args.generate:
        report['header_directory'] = str(ctx.generate_header(tuple(m for m in modules if m in {'practice', 'speed', 'avatar'})))
    return report


def replay(args):
    ctx = Context(args.profile)
    modules = args.modules.split(',') if args.modules else ['practice', 'speed', 'avatar']
    ctx.validate(modules)
    suites = []
    for module in modules:
        selected = ctx.profile.get('replay_suites', {}).get(module)
        if not selected:
            raise VersionError(f'Module {module} has no reviewed replay suite; add its version-specific replay_suites entry', 3)
        suites.extend(selected)
    results = []
    env = dict(os.environ, PHIGROS_PROFILE=str(ctx.folder.resolve()))
    for index, suite in enumerate(dict.fromkeys(suites)):
        path = ctx.path(suite)
        if not path.is_file():
            raise VersionError(f'Missing replay suite: {suite}', 2)
        log = ctx.work / f'replay-{index}-{path.stem}.log'
        with log.open('w') as output:
            process = subprocess.run([sys.executable, str(path)], cwd=ROOT, env=env, stdout=output, stderr=subprocess.STDOUT)
        results.append({'suite': suite, 'exit_code': process.returncode, 'log': str(log)})
        if process.returncode:
            break
    report = {'profile_id': ctx.id, 'config_sha256': ctx.config_digest(), 'ok': all(r['exit_code'] == 0 for r in results), 'results': results, 'scope': 'native replay and mocked Unity/IL2CPP boundaries; device rendering/audio/interaction not measured'}
    write_json(ctx.work / 'replay-verification.json', report)
    if not report['ok']:
        raise VersionError(f'Replay failed; inspect {results[-1]["log"]}')
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    sub = parser.add_subparsers(dest='command', required=True)
    p = sub.add_parser('inspect'); p.add_argument('--apk', required=True, type=Path)
    p = sub.add_parser('prepare'); p.add_argument('--apk', required=True, type=Path)
    p = sub.add_parser('dump'); p.add_argument('--profile', default=os.environ.get('PHIGROS_PROFILE', DEFAULT_PROFILE)); p.add_argument('--dumper'); p.add_argument('--dotnet')
    p = sub.add_parser('attach-dump'); p.add_argument('--profile', required=True); p.add_argument('--dump-dir', required=True, type=Path); p.add_argument('--source-so-sha256', required=True); p.add_argument('--source-metadata-sha256', required=True)
    for name in ('locate', 'scan-assets', 'verify'):
        p = sub.add_parser(name); p.add_argument('--profile', default=os.environ.get('PHIGROS_PROFILE', DEFAULT_PROFILE))
        if name == 'verify': p.add_argument('--modules'); p.add_argument('--generate', action='store_true')
        if name == 'scan-assets': p.add_argument('--scene', action='append'); p.add_argument('--decode', action='store_true')
    p = sub.add_parser('disasm'); p.add_argument('--profile', default=os.environ.get('PHIGROS_PROFILE', DEFAULT_PROFILE)); p.add_argument('--rva', required=True, type=lambda x: int(x, 0)); p.add_argument('--size', type=lambda x: int(x, 0), default=0x100)
    p = sub.add_parser('search-pattern'); p.add_argument('--profile', default=os.environ.get('PHIGROS_PROFILE', DEFAULT_PROFILE)); p.add_argument('--pattern', required=True)
    p = sub.add_parser('replay'); p.add_argument('--profile', default=os.environ.get('PHIGROS_PROFILE', DEFAULT_PROFILE)); p.add_argument('--modules')
    args = parser.parse_args()
    try:
        if args.command == 'inspect': result = inspect_apk(args.apk)
        elif args.command == 'prepare': result = prepare(args)
        elif args.command == 'dump': result = run_dump(args)
        elif args.command == 'locate': result = locate(args)
        elif args.command == 'scan-assets': result = scan_assets(args)
        elif args.command == 'verify': result = verify(args)
        elif args.command == 'replay': result = replay(args)
        elif args.command == 'search-pattern':
            ctx = Context(args.profile)
            matches = pattern_candidates(ctx.elf, args.pattern)
            result = {'profile_id': ctx.id, 'count': len(matches), 'candidates': [hex(a) for a in matches], 'confirmed': False}
        elif args.command == 'disasm':
            from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
            ctx = Context(args.profile)
            instructions = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN).disasm(ctx.elf.bytes_at(args.rva, args.size), args.rva)
            result = {'profile_id': ctx.id, 'instructions': [{'rva': hex(i.address), 'file_offset': hex(ctx.elf.offset(i.address, i.size)), 'bytes': i.bytes.hex(), 'assembly': i.mnemonic + ' ' + i.op_str} for i in instructions]}
        else:
            ctx = Context(args.profile); ctx.ensure_materials()
            if args.source_so_sha256 != ctx.profile['identity']['il2cpp']['sha256'] or args.source_metadata_sha256 != ctx.profile['identity']['metadata']['sha256']:
                raise VersionError('Declared dump source does not match the selected sample')
            result = attach_dump(ctx, args.dump_dir, {'kind': 'agent_declared_external_dump; retain generation evidence', 'so_sha256': args.source_so_sha256, 'metadata_sha256': args.source_metadata_sha256})
        print(json.dumps(result, ensure_ascii=False, indent=2))
    except (VersionError, FileNotFoundError, zipfile.BadZipFile, ValueError, KeyError, struct.error) as error:
        print(f'{type(error).__name__}: {error}', file=sys.stderr)
        return error.code if isinstance(error, VersionError) else 2 if isinstance(error, FileNotFoundError) else 4
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
