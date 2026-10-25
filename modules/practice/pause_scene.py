"""Remove just the ordinary pause/countdown fullscreen blurred snapshots."""
import json
import UnityPy
from tools.versioning import context
from UnityPy.helpers.TypeTreeGenerator import TypeTreeGenerator
from UnityPy.helpers.TypeTreeNode import TypeTreeNode

def without_pause_blur(data, dll_folder):
    generator=TypeTreeGenerator(context().assets['unity_version'])
    generator.load_local_dll_folder(str(dll_folder))
    nodes=json.loads(generator.get_nodes_as_json(
        'LeTai.TranslucentImage','LeTai.Asset.TranslucentImage.TranslucentImage'))
    for node in nodes:
        if node['m_Type'] in ('bool','UInt8'):
            node['m_MetaFlag'] |= 16384
    tree=TypeTreeNode.from_list(nodes)
    env=UnityPy.load(data)
    file=next(iter(env.files.values()))
    for component in context().assets['practice']['blur_components']:
        path_id,go=component['path_id'],component['game_object_path_id']
        obj=file.objects[path_id]
        fields=obj.read_typetree(tree)
        assert fields['m_GameObject']['m_PathID']==go
        assert fields['source']['m_PathID']==component['source_path_id']
        fields['m_Enabled']=0
        obj.save_typetree(fields,tree)
    output=file.save()
    check=UnityPy.load(output)
    objects=next(iter(check.files.values())).objects
    for path_id in [c['path_id'] for c in context().assets['practice']['blur_components']]:
        assert objects[path_id].read_typetree(tree)['m_Enabled']==0
    # Preserve every other serialized object's raw payload.
    for path_id,obj in file.objects.items():
        if path_id not in {c['path_id'] for c in context().assets['practice']['blur_components']}:
            assert obj.get_raw_data()==objects[path_id].get_raw_data(),path_id
    return output
