"""Add a scene-owned UI watermark only to explicitly selected menu scenes.

The gameplay scene and event scenes are copied verbatim. The new root canvas
has no persistence script or raycaster and is destroyed on scene changes.
"""
import copy
import json
from pathlib import Path

import UnityPy
from PIL import Image, ImageDraw, ImageFont
from UnityPy.helpers.TypeTreeGenerator import TypeTreeGenerator
from UnityPy.helpers.TypeTreeNode import TypeTreeNode

ROOT = Path(__file__).resolve().parents[2]
MENU_SCENES = (2, 3, 6, 7, 8, 9, 10, 13, 21, 22, 23, 28, 29, 30, 34, 35, 36, 37)


def pointer(path=0, file=0):
    return {'m_FileID': file, 'm_PathID': path}


def render_watermark(text):
    font = ImageFont.truetype('/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc', 26)
    bounds = font.getbbox(text)
    image = Image.new('RGBA', (bounds[2] - bounds[0] + 8, bounds[3] - bounds[1] + 8))
    draw = ImageDraw.Draw(image)
    pos = (4 - bounds[0], 4 - bounds[1])
    draw.text((pos[0] + 1, pos[1] + 1), text, font=font, fill=(0, 0, 0, 100))
    draw.text(pos, text, font=font, fill=(255, 255, 255, 140))
    image.save(ROOT / 'shots/watermark-preview.png')
    return image


def replacements(apk, text):
    generator = TypeTreeGenerator('2022.3.62f2')
    generator.load_local_dll_folder(str(ROOT / 'ildump/DummyDll'))
    nodes = json.loads(generator.get_nodes_as_json('UnityEngine.UI.dll', 'UnityEngine.UI.RawImage'))
    for node in nodes:
        if node['m_Type'] in ('bool', 'UInt8'):
            node['m_MetaFlag'] |= 16384
    raw_tree = TypeTreeNode.from_list(nodes)

    boot = UnityPy.load(apk.read('assets/bin/Data/level0'))
    source = list(boot.files.values())[0]
    templates = {}
    for obj in boot.objects:
        if obj.type.name in ('GameObject', 'RectTransform', 'Canvas', 'CanvasRenderer'):
            templates.setdefault(obj.type.name, obj)
        elif obj.type.name == 'MonoBehaviour':
            base = obj.read(check_read=False)
            if base.m_Script.m_PathID == 127:
                templates['RawImage'] = obj
    shared = UnityPy.load(b''.join(apk.read(f'assets/bin/Data/sharedassets0.assets.split{i}')
                                  for i in range(16)))
    templates['Texture2D'] = next(o for o in shared.objects if o.type.name == 'Texture2D')
    image = render_watermark(text)
    texture = templates['Texture2D'].read_typetree()
    texture.update(m_Name='PrivateWatermark', m_Width=image.width, m_Height=image.height,
                   m_CompleteImageSize=image.width * image.height * 4,
                   m_TextureFormat=4, m_MipCount=1, m_MipsStripped=0,
                   m_StreamingMipmaps=False, m_IsReadable=False,
                   m_StreamData={'offset': 0, 'size': 0, 'path': ''})
    texture['image data'] = image.transpose(Image.Transpose.FLIP_TOP_BOTTOM).tobytes()
    result = {}
    for index in MENU_SCENES:
        name = f'assets/bin/Data/level{index}'
        env = UnityPy.load(apk.read(name))
        file = list(env.files.values())[0]
        global_id = next(i + 1 for i, ext in enumerate(file.externals)
                         if ext.path.endswith('globalgamemanagers.assets'))
        start = max(file.objects) + 1
        canvas_go, canvas_rect, canvas, mark_go, mark_rect, renderer, raw, tex = range(start, start + 8)

        def add(kind, path_id, fields, tree=None):
            template = templates[kind]
            obj = copy.copy(template)
            obj.assets_file = file
            obj.path_id = path_id
            typ = template.serialized_type
            matching = next((i for i, item in enumerate(file.types)
                             if (item.class_id, item.script_id, item.old_type_hash) ==
                             (typ.class_id, typ.script_id, typ.old_type_hash)), None)
            if matching is None:
                matching = len(file.types)
                typ = copy.copy(typ)
                if kind == 'RawImage':
                    link = copy.copy(source.script_types[template.serialized_type.script_type_index])
                    link.local_serialized_file_index = global_id
                    typ.script_type_index = len(file.script_types)
                    file.script_types.append(link)
                file.types.append(typ)
            obj.type_id = matching
            obj.serialized_type = file.types[matching]
            obj.save_typetree(fields, tree)
            file.objects[path_id] = obj

        def gameobject(path_id, label, components):
            fields = templates['GameObject'].read_typetree()
            fields.update(m_Name=label, m_IsActive=True, m_Layer=5, m_Tag=0,
                          m_Component=[{'component': pointer(p)} for p in components])
            add('GameObject', path_id, fields)

        def rect(path_id, owner, parent=0, children=()):
            fields = templates['RectTransform'].read_typetree()
            fields.update(m_GameObject=pointer(owner), m_Father=pointer(parent),
                          m_Children=[pointer(p) for p in children],
                          m_LocalRotation={'x': 0., 'y': 0., 'z': 0., 'w': 1.},
                          m_LocalPosition={'x': 0., 'y': 0., 'z': 0.},
                          m_LocalScale={'x': 1., 'y': 1., 'z': 1.},
                          m_AnchorMin={'x': 1., 'y': 0.}, m_AnchorMax={'x': 1., 'y': 0.},
                          m_AnchoredPosition={'x': -16., 'y': 12.},
                          m_SizeDelta={'x': float(image.width), 'y': float(image.height)},
                          m_Pivot={'x': 1., 'y': 0.})
            add('RectTransform', path_id, fields)

        gameobject(canvas_go, 'PrivateWatermarkCanvas', [canvas_rect, canvas])
        rect(canvas_rect, canvas_go, children=[mark_rect])
        fields = templates['Canvas'].read_typetree()
        fields.update(m_GameObject=pointer(canvas_go), m_Enabled=1, m_RenderMode=0,
                      m_Camera=pointer(), m_ReceivesEvents=False, m_SortingOrder=32760,
                      m_OverrideSorting=True, m_TargetDisplay=0)
        add('Canvas', canvas, fields)
        gameobject(mark_go, 'PrivateWatermark', [mark_rect, renderer, raw])
        rect(mark_rect, mark_go, canvas_rect)
        fields = templates['CanvasRenderer'].read_typetree()
        fields.update(m_GameObject=pointer(mark_go), m_CullTransparentMesh=False)
        add('CanvasRenderer', renderer, fields)
        fields = templates['RawImage'].read_typetree(raw_tree)
        fields.update(m_GameObject=pointer(mark_go), m_Enabled=1, m_Script=pointer(127, global_id),
                      m_Name='', m_Material=pointer(), m_Texture=pointer(tex),
                      m_Color={'r': 1., 'g': 1., 'b': 1., 'a': 1.},
                      m_RaycastTarget=False, m_Maskable=False)
        add('RawImage', raw, fields, raw_tree)
        add('Texture2D', tex, copy.deepcopy(texture))
        data = file.save()
        # Round-trip the added graph before packaging, including script and texture links.
        check = list(UnityPy.load(data).files.values())[0]
        assert len(check.objects) == len(file.objects)
        assert check.objects[canvas].read_typetree()['m_RenderMode'] == 0
        assert check.objects[raw].read_typetree(raw_tree)['m_Texture'] == pointer(tex)
        assert check.objects[tex].read_typetree()['image data'] == texture['image data']
        result[name] = data
        print(f'Watermarked menu scene {index}', flush=True)
    assert 'assets/bin/Data/level12' not in result
    return result


def update_existing(apk, text):
    """Change existing watermark pixels/sizing without adding scene objects."""
    image = render_watermark(text)
    pixels = image.transpose(Image.Transpose.FLIP_TOP_BOTTOM).tobytes()
    result = {}
    for index in MENU_SCENES:
        name = f'assets/bin/Data/level{index}'
        env = UnityPy.load(apk.read(name))
        file = next(iter(env.files.values()))
        changed = set()
        textures = [obj for obj in env.objects if obj.type.name == 'Texture2D'
                    and obj.read_typetree()['m_Name'] == 'PrivateWatermark']
        assert len(textures) == 1, name
        texture = textures[0]
        fields = texture.read_typetree()
        fields.update(m_Width=image.width, m_Height=image.height,
                      m_CompleteImageSize=image.width * image.height * 4)
        fields['image data'] = pixels
        texture.save_typetree(fields)
        changed.add(texture.path_id)
        for obj in env.objects:
            if obj.type.name != 'GameObject':
                continue
            fields = obj.read_typetree()
            if fields['m_Name'] not in ('PrivateWatermark', 'PrivateWatermarkCanvas'):
                continue
            for component in fields['m_Component']:
                ptr = component['component']
                if ptr['m_FileID'] != 0:
                    continue
                rect = file.objects[ptr['m_PathID']]
                if rect.type.name == 'RectTransform':
                    fields = rect.read_typetree()
                    fields['m_SizeDelta'] = {'x': float(image.width), 'y': float(image.height)}
                    rect.save_typetree(fields)
                    changed.add(rect.path_id)
        assert len(changed) == 3, name
        data = file.save()
        check = next(iter(UnityPy.load(data).files.values()))
        assert check.objects.keys() == file.objects.keys()
        assert check.objects[texture.path_id].read_typetree()['image data'] == pixels
        for path_id, obj in file.objects.items():
            if path_id not in changed:
                assert obj.get_raw_data() == check.objects[path_id].get_raw_data(), (name, path_id)
        result[name] = data
        print(f'Updated watermark in menu scene {index}', flush=True)
    return result
