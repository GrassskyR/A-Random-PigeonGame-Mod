"""Generate owned/read collection counters and cosmetic unlock counters."""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
import sys
sys.path.insert(0, str(ROOT))
from tools.versioning import context


def all_collection_progress():
    """Use maximum one-based subIndex; sparse catalogs cannot use row counts."""
    catalog = context().catalog('collections')
    counts = {}
    for item in catalog['collectionItems']:
        key = item['key']
        counts[key] = max(counts.get(key, 0), item['subIndex'])
    return {save_key: str(count) for key, count in counts.items()
            for save_key in (context().progress['collection_rules']['owned_prefix'] + key, key + context().progress['collection_rules']['read_suffix'])}


def all_cosmetic_progress():
    """GameInformation.CheckKeys reads <kind>key<keyName> for kinds 2 and 3."""
    assets = context().catalog('chapters')
    game = assets[Path(context().assets['avatar']['scene']).name][str(context().assets['avatar']['game_information']['path_id'])]['fields']
    return {f"{item['kindOfKey']}key{item['keyName']}": str(item['unlockTimes'])
            for item in game['keyStore'] if item['kindOfKey'] in context().progress['collection_rules']['cosmetic_kinds']}
