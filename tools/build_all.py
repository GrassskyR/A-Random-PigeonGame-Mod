#!/usr/bin/env python3
"""Build a statically verified sample in dependency order, in an isolated workspace."""
import argparse
import os
from pathlib import Path
import subprocess
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from tools.versioning import Context, DEFAULT_PROFILE, MODULES, ROOT, VersionError

STAGES = (
    ('unlock', 'build_unlock_apk.py'),
    ('startup', 'patch_anti_addiction.py'),
    ('practice', 'build_practice_apk.py'),
    ('watermark', 'build_practice_watermark.py'),
    ('tutorial', 'build_skip_tutorial.py'),
    ('collections', 'build_collections_apk.py'),
    ('speed', 'build_speed_apk.py'),
)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--profile', default=os.environ.get('PHIGROS_PROFILE', DEFAULT_PROFILE))
    parser.add_argument('--target', choices=('full', 'collections'), default='full')
    parser.add_argument('--list', action='store_true', help='preview without extracting/building')
    args = parser.parse_args()
    try:
        ctx = Context(args.profile)
        stages = STAGES if args.target == 'full' else STAGES[:-1]
        if args.list:
            for index, (stage, script) in enumerate(stages, 1):
                print(f'{index}. {script} --profile {ctx.id}\n   -> {ctx.artifact(stage)}')
            return 0
        ctx.validate(MODULES if args.target == 'full' else MODULES[:-2])
        env = dict(os.environ, PHIGROS_PROFILE=str(ctx.folder.resolve()))
        for _, script in stages:
            subprocess.run([sys.executable, str(ROOT / 'tools' / script)], cwd=ROOT, env=env, check=True)
    except VersionError as error:
        print(str(error), file=sys.stderr)
        return error.code
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
