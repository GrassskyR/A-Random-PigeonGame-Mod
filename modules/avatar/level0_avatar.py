"""Append a custom avatar entry to level0's GetCollectionControl and keyStore.

The avatar list (PathID 49) gains an AvatarInfo; GameInformation's keyStore
(PathID 50) gains the matching type-3 Key so GetRemainingUnlockTimes treats it
as unlocked. Every other object's payload must stay byte-identical.
"""
import json
from pathlib import Path

import UnityPy
from UnityPy.helpers.TypeTreeGenerator import TypeTreeGenerator
from UnityPy.helpers.TypeTreeNode import TypeTreeNode

ROOT = Path(__file__).resolve().parents[2]

AVATAR_NAME = "Zundamon"
AVATAR_KEY = "avatar.Zundamon"


def _trees():
    generator = TypeTreeGenerator("2022.3.62f2")
    generator.load_local_dll_folder(str(ROOT / "ildump/DummyDll"))
    cache = {}

    def tree(assembly, fullname):
        key = (assembly, fullname)
        if key not in cache:
            nodes = json.loads(generator.get_nodes_as_json(assembly, fullname))
            for i, node in enumerate(nodes):
                if node["m_Type"] in ("bool", "UInt8"):
                    node["m_MetaFlag"] |= 16384
                if i + 3 < len(nodes) and nodes[i + 1]["m_Type"] == "Array" and (
                        node["m_Type"] != "string" or nodes[i + 3]["m_Type"] != "char"):
                    node["m_Type"] = "vector"
            cache[key] = TypeTreeNode.from_list(nodes)
        return cache[key]
    return tree


def add_custom_avatar(level0: bytes) -> bytes:
    tree = _trees()
    env = UnityPy.load(level0)
    file = list(env.files.values())[0]
    changed = set()

    for obj in env.objects:
        if obj.type.name != "MonoBehaviour":
            continue
        head = obj.read(check_read=False)
        # Known PathIDs from analysis/chapter9-assets.json: 49 is
        # GetCollectionControl (script 895), 50 is GameInformation (1487).
        if obj.path_id == 49:
            assert head.m_Script.m_PathID == 895
            t = tree("Assembly-CSharp", "GetCollectionControl")
            fields = obj.read_typetree(t)
            avatars = fields["avatars"]
            if AVATAR_NAME not in {a["name"] for a in avatars}:
                avatars.append({
                    "getSong": 0, "getType": -1, "getPower": -1,
                    "getInfo1": "", "getInfo2": "", "getInfo3": "",
                    "name": AVATAR_NAME, "addressableKey": AVATAR_KEY,
                })
                fields["avatars"] = avatars
                obj.save_typetree(fields, t)
                changed.add(obj.path_id)
        elif obj.path_id == 50:
            assert head.m_Script.m_PathID == 1487
            t = tree("Assembly-CSharp", "GameInformation")
            fields = obj.read_typetree(t)
            keys = fields["keyStore"]
            if AVATAR_NAME not in {k["keyName"] for k in keys if k.get("kindOfKey") == 3}:
                keys.append({
                    "keyName": AVATAR_NAME, "unlockedTimes": 0,
                    "kindOfKey": 3, "unlockTimes": 1,
                })
                fields["keyStore"] = keys
                obj.save_typetree(fields, t)
                changed.add(obj.path_id)

    assert changed == {49, 50}, changed
    data = file.save()
    # Round-trip: every non-target object keeps its raw payload, targets keep
    # the appended entries.
    check = list(UnityPy.load(data).files.values())[0]
    assert check.objects.keys() == file.objects.keys()
    for path_id, obj in file.objects.items():
        if path_id in changed:
            continue
        assert obj.get_raw_data() == check.objects[path_id].get_raw_data(), path_id
    for obj in UnityPy.load(data).objects:
        if obj.path_id == 49:
            names = {a["name"] for a in obj.read_typetree(tree("Assembly-CSharp", "GetCollectionControl"))["avatars"]}
            assert AVATAR_NAME in names and len(names) == 110
        elif obj.path_id == 50:
            ks = obj.read_typetree(tree("Assembly-CSharp", "GameInformation"))["keyStore"]
            assert any(k["keyName"] == AVATAR_NAME and k["kindOfKey"] == 3 for k in ks)
    return data
