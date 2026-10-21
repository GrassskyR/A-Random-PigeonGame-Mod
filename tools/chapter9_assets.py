#!/usr/bin/env python3
"""Extract Chapter 9 scene configuration using type trees recovered from DummyDll.

Requires UnityPy and TypeTreeGeneratorAPI in the local venv.
Writes extracted inputs under work/unity and decoded configuration under analysis.
"""
import json
import zipfile
from pathlib import Path

import UnityPy
from UnityPy.helpers.TypeTreeGenerator import TypeTreeGenerator
from UnityPy.helpers.TypeTreeNode import TypeTreeNode

ROOT = Path(__file__).resolve().parent.parent


def main():
    names = ['globalgamemanagers.assets', 'level0', 'level28', 'level29', 'level30', 'level35']
    folder = ROOT / 'work/unity'
    folder.mkdir(exist_ok=True)
    with zipfile.ZipFile(ROOT / 'Phigros_4.0.1.1.apk') as apk:
        for name in names:
            (folder / name).write_bytes(apk.read('assets/bin/Data/' + name))
        for name in apk.namelist():
            if name.startswith(('assets/bin/Data/sharedassets22.assets', 'assets/bin/Data/sharedassets35.assets')):
                (folder / Path(name).name).write_bytes(apk.read(name))
    names += ['sharedassets22.assets.split0', 'sharedassets35.assets.split0']
    scripts = {}
    for obj in UnityPy.load(str(folder / names[0])).objects:
        if obj.type.name == 'MonoScript':
            info = obj.read()
            fullname = '.'.join(filter(None, [info.m_Namespace, info.m_ClassName]))
            scripts[obj.path_id] = (info.m_AssemblyName, fullname)
    generator = TypeTreeGenerator('2022.3.62f2')
    generator.load_local_dll_folder(str(ROOT / 'ildump/DummyDll'))
    result = {}
    for name in names[1:]:
        env = UnityPy.load(str(folder / name))
        objects = {}
        gameobjects = {}
        for obj in env.objects:
            if obj.type.name == 'GameObject':
                gameobjects[obj.path_id] = obj.read().m_Name
        for obj in env.objects:
            if obj.type.name != 'MonoBehaviour':
                continue
            base = obj.read(check_read=False)
            assembly, fullname = scripts.get(base.m_Script.m_PathID, ('', ''))
            if not any(token in fullname for token in ['Chapter9', 'GetCollectionControl', 'GameInformation', 'C9', 'LifeUnlock', 'CollectionDatabase']):
                continue
            nodes = json.loads(generator.get_nodes_as_json(assembly, fullname))
            # The generator omits Unity's byte/bool alignment and labels List<T>
            # with its element type. Normalize these for UnityPy's reader.
            for i, node in enumerate(nodes):
                if node['m_Type'] in ('bool', 'UInt8'):
                    node['m_MetaFlag'] |= 16384
                if i + 3 < len(nodes) and nodes[i + 1]['m_Type'] == 'Array' and (
                        node['m_Type'] != 'string' or nodes[i + 3]['m_Type'] != 'char'):
                    node['m_Type'] = 'vector'
            tree = TypeTreeNode.from_list(nodes)
            try:
                fields = obj.read_typetree(tree)
            except Exception as exc:
                print(name, obj.path_id, fullname, 'decode failed:', exc)
                continue
            objects[str(obj.path_id)] = {
                'class': fullname,
                'gameObject': gameobjects.get(base.m_GameObject.m_PathID),
                'fields': fields,
            }
        result[name] = objects
        print(name, len(objects), 'decoded components')
    output = ROOT / 'analysis/chapter9-assets.json'
    output.write_text(json.dumps(result, ensure_ascii=False, indent=2))
    print(output)


if __name__ == '__main__':
    main()
