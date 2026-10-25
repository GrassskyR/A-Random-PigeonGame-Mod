"""Generate owned/read collection counters and cosmetic unlock counters."""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]


def all_collection_progress():
    """Use maximum one-based subIndex; sparse catalogs cannot use row counts."""
    catalog = json.loads((ROOT / 'analysis/collections.json').read_text())
    counts = {}
    for item in catalog['collectionItems']:
        key = item['key']
        counts[key] = max(counts.get(key, 0), item['subIndex'])
    return {save_key: str(count) for key, count in counts.items()
            for save_key in ('1key' + key, key + 'CollectionTextOpened')}


def all_cosmetic_progress():
    """GameInformation.CheckKeys reads <kind>key<keyName> for kinds 2 and 3."""
    assets = json.loads((ROOT / 'analysis/chapter9-assets.json').read_text())
    game = assets['level0']['50']['fields']
    return {f"{item['kindOfKey']}key{item['keyName']}": str(item['unlockTimes'])
            for item in game['keyStore'] if item['kindOfKey'] in (2, 3)}
