"""Completed UniTask<bool>(true) at the startup anti-addiction check."""
ADDRESS = 0x1CB4D30
EXPECTED = bytes.fromhex('ffc301d1fe5705a9f44f06a9')
WORDS = [0xD2800000, 0xD2800021, 0xD65F03C0]
INSTRUCTIONS = ['mov x0, #0', 'mov x1, #1', 'ret']
