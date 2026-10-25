#!/usr/bin/env python3
"""Read the original APK's scene bindings and debug input settings.

Writes analysis/debug-options-scenes.json; never patches an APK or device.
Run with .venv/bin/python tools/inspect_debug_options.py.
"""
import json
import re
import zipfile
from pathlib import Path

import UnityPy
from UnityPy.helpers.TypeTreeGenerator import TypeTreeGenerator
from UnityPy.helpers.TypeTreeNode import TypeTreeNode

ROOT = Path(__file__).resolve().parent.parent
TOKENS = re.compile(r'debug|test|developer|cheat|console|inspector|visionreplay|simulate', re.I)
CALLS = re.compile(rb'ToSimulateMode|VisionReplay|DebugLog|BootSimulateMode|TurnOnReplay')
SELECTED = {'SongSelector', 'Inspector', 'VisionReplayButton', 'PopupControl',
            'ConditionalObject', 'SamplePopupView', 'ImportCollections',
            'RemoveAllSongControl', 'SaturnOSControl'}


def main():
    result = {'source': 'Phigros_4.0.1.1.apk', 'scenes': [], 'debug_input_axes': [],
              'components': [], 'event_bindings': [], 'object_names': [], 'decode_errors': []}
    with zipfile.ZipFile(ROOT / result['source']) as apk:
        prefix = 'assets/bin/Data/'
        globals_env = UnityPy.load(apk.read(prefix + 'globalgamemanagers'))
        for obj in globals_env.objects:
            if obj.type.name == 'BuildSettings':
                info = obj.read_typetree()
                result['scenes'] = info['scenes']
                result['unity_version'] = info['m_Version']
            elif obj.type.name == 'InputManager':
                result['debug_input_axes'] = [a for a in obj.read_typetree()['m_Axes']
                                             if 'Debug' in a['m_Name']]
        scripts = {}
        for obj in UnityPy.load(apk.read(prefix + 'globalgamemanagers.assets')).objects:
            if obj.type.name == 'MonoScript':
                info = obj.read()
                scripts[obj.path_id] = (info.m_AssemblyName,
                                       '.'.join(filter(None, [info.m_Namespace, info.m_ClassName])))
        generator = TypeTreeGenerator(result['unity_version'])
        generator.load_local_dll_folder(str(ROOT / 'ildump/DummyDll'))
        trees = {}

        def tree(assembly, fullname):
            key = (assembly, fullname)
            if key not in trees:
                nodes = json.loads(generator.get_nodes_as_json(assembly, fullname))
                for i, node in enumerate(nodes):
                    if node['m_Type'] in ('bool', 'UInt8'):
                        node['m_MetaFlag'] |= 16384
                    if i + 3 < len(nodes) and nodes[i + 1]['m_Type'] == 'Array' and (
                            node['m_Type'] != 'string' or nodes[i + 3]['m_Type'] != 'char'):
                        node['m_Type'] = 'vector'
                trees[key] = TypeTreeNode.from_list(nodes)
            return trees[key]

        def events(value, context):
            if isinstance(value, dict):
                if value.get('m_MethodName'):
                    result['event_bindings'].append(dict(context, call=value))
                for child in value.values():
                    events(child, context)
            elif isinstance(value, list):
                for child in value:
                    events(child, context)

        for index, scene in enumerate(result['scenes']):
            env = UnityPy.load(apk.read(prefix + f'level{index}'))
            gameobjects = {o.path_id: o.read_typetree() for o in env.objects
                           if o.type.name == 'GameObject'}
            for pid, go in gameobjects.items():
                if TOKENS.search(go['m_Name']):
                    result['object_names'].append({'scene': scene, 'path_id': pid,
                                                   'name': go['m_Name'], 'active': go['m_IsActive']})
            for obj in env.objects:
                if obj.type.name != 'MonoBehaviour':
                    continue
                base = obj.read(check_read=False)
                assembly, fullname = scripts.get(base.m_Script.m_PathID, ('', ''))
                shortname = fullname.rsplit('.', 1)[-1]
                go = gameobjects.get(base.m_GameObject.m_PathID, {})
                context = {'scene': scene, 'path_id': obj.path_id,
                           'class': fullname, 'game_object_id': base.m_GameObject.m_PathID,
                           'game_object': go.get('m_Name'), 'active_self': go.get('m_IsActive')}
                selected = shortname in SELECTED or TOKENS.search(fullname)
                has_calls = bool(CALLS.search(obj.get_raw_data()))
                if not selected and not has_calls:
                    continue
                try:
                    fields = obj.read_typetree(tree(assembly, fullname))
                except Exception as exc:
                    result['decode_errors'].append(dict(context, error=str(exc)))
                    continue
                if selected:
                    # Keep only relevant fields for the large SongSelector component.
                    if shortname == 'SongSelector':
                        fields = {k: v for k, v in fields.items()
                                  if k in ('m_Enabled', 'toggleSimulateButton')}
                    elif shortname == 'SaturnOSControl':
                        fields = {k: v for k, v in fields.items()
                                  if k in ('m_Enabled', 'visionReplaySummary')}
                    related = {}
                    for key in ('text', 'toggleSimulateButton', 'visionReplaySummary'):
                        ref = fields.get(key)
                        if not isinstance(ref, dict) or ref.get('m_FileID') != 0:
                            continue
                        target = env.file.objects.get(ref['m_PathID'])
                        if target is None:
                            continue
                        if target.type.name == 'GameObject':
                            related[key] = target.read_typetree()
                        else:
                            info = target.read(check_read=False)
                            related[key] = {
                                'class_id': target.type.name,
                                'enabled': info.m_Enabled,
                                'game_object': gameobjects.get(info.m_GameObject.m_PathID, {})
                            }
                    if related:
                        context['related_objects'] = related
                    result['components'].append(dict(context, fields=fields))
                if has_calls:
                    events(fields, context)
            print(f'level{index}: {Path(scene).stem}')
    output = ROOT / 'analysis/debug-options-scenes.json'
    output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n')
    print(f'{output}: {len(result["components"])} components, '
          f'{len(result["event_bindings"])} callbacks, {len(result["decode_errors"])} decode errors')


if __name__ == '__main__':
    main()
