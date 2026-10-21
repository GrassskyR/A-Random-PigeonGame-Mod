
// 0x1cf7d88 Phigros2.Chapter9.Chapter9FakeChallengeSongSelector$$PlayWhiteoutEntrance
0x1cf7d88: stp      x30, x21, [sp, #-0x20]!
0x1cf7d8c: stp      x20, x19, [sp, #0x10]
0x1cf7d90: adrp     x20, #0x4475000
0x1cf7d94: adrp     x21, #0x418a000
0x1cf7d98: ldrb     w8, [x20, #0xb2c]
0x1cf7d9c: ldr      x21, [x21, #0x348]
0x1cf7da0: mov      x19, x0
0x1cf7da4: tbnz     w8, #0, #0x1cf7dbc
0x1cf7da8: adrp     x0, #0x418a000
0x1cf7dac: ldr      x0, [x0, #0x348]
0x1cf7db0: bl       #0x1b64570 | 
0x1cf7db4: mov      w8, #1
0x1cf7db8: strb     w8, [x20, #0xb2c]
0x1cf7dbc: ldr      x0, [x21]
0x1cf7dc0: bl       #0x1b647b8 | 
0x1cf7dc4: mov      w1, wzr
0x1cf7dc8: mov      x2, xzr
0x1cf7dcc: mov      x20, x0
0x1cf7dd0: bl       #0x1cf95a4 | Phigros2.Chapter9.Chapter9FakeChallengeSongSelector.<PlayWhiteoutEntrance>d__36$$.ctor
0x1cf7dd4: cbz      x20, #0x1cf7dec
0x1cf7dd8: str      x19, [x20, #0x20]
0x1cf7ddc: mov      x0, x20
0x1cf7de0: ldp      x20, x19, [sp, #0x10]
0x1cf7de4: ldp      x30, x21, [sp], #0x20
0x1cf7de8: ret      
0x1cf7dec: bl       #0x1b647c8 | 

// 0x1cf7f20 Phigros2.Chapter9.Chapter9FakeChallengeSongSelector$$PlayUnlock
0x1cf7f20: str      x30, [sp, #-0x60]!
0x1cf7f24: stp      x28, x27, [sp, #0x10]
0x1cf7f28: stp      x26, x25, [sp, #0x20]
0x1cf7f2c: stp      x24, x23, [sp, #0x30]
0x1cf7f30: stp      x22, x21, [sp, #0x40]
0x1cf7f34: stp      x20, x19, [sp, #0x50]
0x1cf7f38: adrp     x20, #0x4475000
0x1cf7f3c: ldrb     w8, [x20, #0xb2e]
0x1cf7f40: mov      x19, x0
0x1cf7f44: tbnz     w8, #0, #0x1cf7fd4
0x1cf7f48: adrp     x0, #0x4189000
0x1cf7f4c: ldr      x0, [x0, #0xa80]
0x1cf7f50: bl       #0x1b64570 | 
0x1cf7f54: adrp     x0, #0x418a000
0x1cf7f58: ldr      x0, [x0, #0x328]
0x1cf7f5c: bl       #0x1b64570 | 
0x1cf7f60: adrp     x0, #0x418a000
0x1cf7f64: ldr      x0, [x0, #0x350]
0x1cf7f68: bl       #0x1b64570 | 
0x1cf7f6c: adrp     x0, #0x4189000
0x1cf7f70: ldr      x0, [x0, #0xa88]
0x1cf7f74: bl       #0x1b64570 | 
0x1cf7f78: adrp     x0, #0x418a000
0x1cf7f7c: ldr      x0, [x0, #0x358]
0x1cf7f80: bl       #0x1b64570 | 
0x1cf7f84: adrp     x0, #0x418a000
0x1cf7f88: ldr      x0, [x0, #0x360]
0x1cf7f8c: bl       #0x1b64570 | 
0x1cf7f90: adrp     x0, #0x4186000
0x1cf7f94: ldr      x0, [x0, #0xe60]
0x1cf7f98: bl       #0x1b64570 | 
0x1cf7f9c: adrp     x0, #0x4185000
0x1cf7fa0: ldr      x0, [x0, #0x208]
0x1cf7fa4: bl       #0x1b64570 | 
0x1cf7fa8: adrp     x0, #0x4189000
0x1cf7fac: ldr      x0, [x0, #0xac8]
0x1cf7fb0: bl       #0x1b64570 | 
0x1cf7fb4: adrp     x0, #0x4187000
0x1cf7fb8: ldr      x0, [x0, #0xc10] | 0x4187c10 'ChallengeMode'
0x1cf7fbc: bl       #0x1b64570 | 
0x1cf7fc0: adrp     x0, #0x418a000
0x1cf7fc4: ldr      x0, [x0, #0x368] | 0x418a368 'EntrancetotheChaos.打打だいずvssiromaru.0'
0x1cf7fc8: bl       #0x1b64570 | 
0x1cf7fcc: mov      w8, #1
0x1cf7fd0: strb     w8, [x20, #0xb2e]
0x1cf7fd4: ldrb     w8, [x19, #0xe8]
0x1cf7fd8: cbz      w8, #0x1cf7ff8
0x1cf7fdc: ldp      x20, x19, [sp, #0x50]
0x1cf7fe0: ldp      x22, x21, [sp, #0x40]
0x1cf7fe4: ldp      x24, x23, [sp, #0x30]
0x1cf7fe8: ldp      x26, x25, [sp, #0x20]
0x1cf7fec: ldp      x28, x27, [sp, #0x10]
0x1cf7ff0: ldr      x30, [sp], #0x60
0x1cf7ff4: ret      
0x1cf7ff8: ldr      x8, [x19, #0xd8]
0x1cf7ffc: cbz      x8, #0x1cf7fdc
0x1cf8000: ldr      w8, [x8, #0x18]
0x1cf8004: cmp      w8, #2
0x1cf8008: b.lt     #0x1cf7fdc
0x1cf800c: adrp     x8, #0x418a000
0x1cf8010: ldr      x8, [x8, #0x328]
0x1cf8014: ldr      x0, [x8]
0x1cf8018: ldr      w8, [x0, #0xe0]
0x1cf801c: cbnz     w8, #0x1cf8024
0x1cf8020: bl       #0x1b646a4 | 
0x1cf8024: adrp     x8, #0x418a000
0x1cf8028: ldr      x8, [x8, #0x368] | 0x418a368 'EntrancetotheChaos.打打だいずvssiromaru.0'
0x1cf802c: ldr      x0, [x8]
0x1cf8030: bl       #0x1cf82d0 | Phigros2.Chapter9.Chapter9FakeChallengeSongSelector$$CreateSongItem
0x1cf8034: cbz      x0, #0x1cf7fdc
0x1cf8038: mov      x21, x0
0x1cf803c: ldr      x0, [x19, #0xb0]
0x1cf8040: mov      w8, #1
0x1cf8044: strb     w8, [x19, #0xe8]
0x1cf8048: strb     w8, [x19, #0x60]
0x1cf804c: cbz      x0, #0x1cf82c8
0x1cf8050: mov      x1, xzr
0x1cf8054: bl       #0x3c1868c | UnityEngine.AudioSource$$Play
0x1cf8058: adrp     x8, #0x4185000
0x1cf805c: ldr      x8, [x8, #0x208]
0x1cf8060: ldr      x20, [x19, #0x68]
0x1cf8064: ldr      x0, [x8]
0x1cf8068: ldr      w8, [x0, #0xe0]
0x1cf806c: cbnz     w8, #0x1cf8074
0x1cf8070: bl       #0x1b646a4 | 
0x1cf8074: adrp     x8, #0x4186000
0x1cf8078: ldr      x8, [x8, #0xe60]
0x1cf807c: mov      x0, x20
0x1cf8080: ldr      x1, [x8]
0x1cf8084: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1cf8088: adrp     x8, #0x418a000
0x1cf808c: ldr      x8, [x8, #0x360]
0x1cf8090: ldr      x0, [x8]
0x1cf8094: bl       #0x1b647b8 | 
0x1cf8098: adrp     x8, #0x418a000
0x1cf809c: ldr      x8, [x8, #0x358]
0x1cf80a0: mov      w1, #3
0x1cf80a4: mov      x20, x0
0x1cf80a8: ldr      x2, [x8]
0x1cf80ac: bl       #0x2e5f4e0 | System.Collections.Generic.List<object>$$.ctor
0x1cf80b0: ldr      x23, [x19, #0xd8]
0x1cf80b4: cbz      x23, #0x1cf82c8
0x1cf80b8: ldr      x8, [x23, #0x18]
0x1cf80bc: cmp      w8, #1
0x1cf80c0: b.lt     #0x1cf8178
0x1cf80c4: adrp     x26, #0x4189000
0x1cf80c8: adrp     x27, #0x4189000
0x1cf80cc: ldr      x26, [x26, #0xa80]
0x1cf80d0: ldr      x27, [x27, #0xa88]
0x1cf80d4: mov      x24, xzr
0x1cf80d8: and      x8, x8, #0xffffffff
0x1cf80dc: add      x25, x23, #0x20
0x1cf80e0: cmp      x24, w8, uxtw
0x1cf80e4: b.hs     #0x1cf82cc
0x1cf80e8: ldr      x0, [x26]
0x1cf80ec: ldr      x28, [x25, x24, lsl #3]
0x1cf80f0: bl       #0x1b647b8 | 
0x1cf80f4: mov      x1, xzr
0x1cf80f8: mov      x22, x0
0x1cf80fc: bl       #0x1ce3ac8 | Phigros2.SongSelector.Scripts.ChallengeSongItem$$.ctor
0x1cf8100: cbz      x22, #0x1cf82c8
0x1cf8104: str      x28, [x22, #0x10]
0x1cf8108: ldr      w8, [x19, #0x20]
0x1cf810c: str      w8, [x22, #0x18]
0x1cf8110: cbz      x20, #0x1cf82c8
0x1cf8114: ldr      w10, [x20, #0x1c]
0x1cf8118: ldr      x8, [x20, #0x10]
0x1cf811c: ldr      x9, [x27]
0x1cf8120: add      w10, w10, #1
0x1cf8124: str      w10, [x20, #0x1c]
0x1cf8128: cbz      x8, #0x1cf82c8
0x1cf812c: ldrsw    x10, [x20, #0x18]
0x1cf8130: ldr      w11, [x8, #0x18]
0x1cf8134: cmp      w10, w11
0x1cf8138: b.hs     #0x1cf8150
0x1cf813c: add      w9, w10, #1
0x1cf8140: add      x8, x8, x10, lsl #3
0x1cf8144: str      w9, [x20, #0x18]
0x1cf8148: str      x22, [x8, #0x20]
0x1cf814c: b        #0x1cf8168 | 
0x1cf8150: ldr      x8, [x9, #0x20]
0x1cf8154: mov      x0, x20
0x1cf8158: mov      x1, x22
0x1cf815c: ldr      x8, [x8, #0xc0]
0x1cf8160: ldr      x2, [x8, #0x70]
0x1cf8164: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1cf8168: ldr      w8, [x23, #0x18]
0x1cf816c: add      x24, x24, #1
0x1cf8170: cmp      x24, w8, sxtw
0x1cf8174: b.lt     #0x1cf80e0
0x1cf8178: adrp     x8, #0x4189000
0x1cf817c: ldr      x8, [x8, #0xa80]
0x1cf8180: ldr      x0, [x8]
0x1cf8184: bl       #0x1b647b8 | 
0x1cf8188: mov      x1, xzr
0x1cf818c: mov      x22, x0
0x1cf8190: bl       #0x1ce3ac8 | Phigros2.SongSelector.Scripts.ChallengeSongItem$$.ctor
0x1cf8194: cbz      x22, #0x1cf82c8
0x1cf8198: str      x21, [x22, #0x10]
0x1cf819c: ldr      w8, [x19, #0x20]
0x1cf81a0: str      w8, [x22, #0x18]
0x1cf81a4: cbz      x20, #0x1cf82c8
0x1cf81a8: adrp     x9, #0x4189000
0x1cf81ac: ldr      x9, [x9, #0xa88]
0x1cf81b0: ldr      w10, [x20, #0x1c]
0x1cf81b4: ldr      x8, [x20, #0x10]
0x1cf81b8: ldr      x9, [x9]
0x1cf81bc: add      w10, w10, #1
0x1cf81c0: str      w10, [x20, #0x1c]
0x1cf81c4: cbz      x8, #0x1cf82c8
0x1cf81c8: ldrsw    x10, [x20, #0x18]
0x1cf81cc: ldr      w11, [x8, #0x18]
0x1cf81d0: cmp      w10, w11
0x1cf81d4: b.hs     #0x1cf81ec
0x1cf81d8: add      w9, w10, #1
0x1cf81dc: add      x8, x8, x10, lsl #3
0x1cf81e0: str      w9, [x20, #0x18]
0x1cf81e4: str      x22, [x8, #0x20]
0x1cf81e8: b        #0x1cf8204 | 
0x1cf81ec: ldr      x8, [x9, #0x20]
0x1cf81f0: mov      x0, x20
0x1cf81f4: mov      x1, x22
0x1cf81f8: ldr      x8, [x8, #0xc0]
0x1cf81fc: ldr      x2, [x8, #0x70]
0x1cf8200: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1cf8204: adrp     x21, #0x4475000
0x1cf8208: ldrb     w8, [x21, #0x8c0]
0x1cf820c: cbnz     w8, #0x1cf8224
0x1cf8210: adrp     x0, #0x4186000
0x1cf8214: ldr      x0, [x0, #0xef8]
0x1cf8218: bl       #0x1b64570 | 
0x1cf821c: mov      w8, #1
0x1cf8220: strb     w8, [x21, #0x8c0]
0x1cf8224: adrp     x8, #0x4186000
0x1cf8228: ldr      x8, [x8, #0xef8]
0x1cf822c: ldr      x8, [x8]
0x1cf8230: ldr      x8, [x8, #0xb8]
0x1cf8234: ldr      x21, [x8]
0x1cf8238: cbz      x21, #0x1cf82c8
0x1cf823c: str      wzr, [x21, #0x68]
0x1cf8240: stp      x20, xzr, [x21, #0x70]
0x1cf8244: adrp     x8, #0x418a000
0x1cf8248: ldr      x8, [x8, #0x350]
0x1cf824c: ldr      x0, [x8]
0x1cf8250: bl       #0x1b647b8 | 
0x1cf8254: mov      x1, xzr
0x1cf8258: mov      x20, x0
0x1cf825c: bl       #0x1cc0fc8 | LevelResultInfo$$.ctor
0x1cf8260: str      x20, [x21, #0x38]
0x1cf8264: adrp     x8, #0x4189000
0x1cf8268: ldr      x8, [x8, #0xac8]
0x1cf826c: ldr      x0, [x8]
0x1cf8270: ldr      w8, [x0, #0xe0]
0x1cf8274: cbnz     w8, #0x1cf827c
0x1cf8278: bl       #0x1b646a4 | 
0x1cf827c: mov      w1, #1
0x1cf8280: mov      x0, x21
0x1cf8284: mov      x2, xzr
0x1cf8288: bl       #0x1d25e10 | Phigros2.ChallengeMode.Scripts.SecretChallengeLifeRules$$BeginRun
0x1cf828c: adrp     x8, #0x4187000
0x1cf8290: ldr      x8, [x8, #0xc10] | 0x4187c10 'ChallengeMode'
0x1cf8294: mov      x0, x19
0x1cf8298: ldr      x1, [x8]
0x1cf829c: bl       #0x1cf83e8 | Phigros2.Chapter9.Chapter9FakeChallengeSongSelector$$TurnToNextScene
0x1cf82a0: mov      x1, x0
0x1cf82a4: mov      x0, x19
0x1cf82a8: ldp      x20, x19, [sp, #0x50]
0x1cf82ac: ldp      x22, x21, [sp, #0x40]
0x1cf82b0: ldp      x24, x23, [sp, #0x30]
0x1cf82b4: ldp      x26, x25, [sp, #0x20]
0x1cf82b8: ldp      x28, x27, [sp, #0x10]
0x1cf82bc: mov      x2, xzr
0x1cf82c0: ldr      x30, [sp], #0x60
0x1cf82c4: b        #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1cf82c8: bl       #0x1b647c8 | 
0x1cf82cc: bl       #0x1b647d0 | 

// 0x1d0cd98 Phigros2.Chapter9.ExoplanetaryMirageUnlock$$IsProcessActive
0x1d0cd98: str      x30, [sp, #-0x20]!
0x1d0cd9c: stp      x20, x19, [sp, #0x10]
0x1d0cda0: adrp     x20, #0x4475000
0x1d0cda4: adrp     x19, #0x4186000
0x1d0cda8: ldrb     w8, [x20, #0xc00]
0x1d0cdac: ldr      x19, [x19, #0xe68]
0x1d0cdb0: tbnz     w8, #0, #0x1d0cdec
0x1d0cdb4: adrp     x0, #0x4186000
0x1d0cdb8: ldr      x0, [x0, #0xe68]
0x1d0cdbc: bl       #0x1b64570 | 
0x1d0cdc0: adrp     x0, #0x418a000
0x1d0cdc4: ldr      x0, [x0, #0x5e0] | 0x418a5e0 'poyidomejiu1'
0x1d0cdc8: bl       #0x1b64570 | 
0x1d0cdcc: adrp     x0, #0x418a000
0x1d0cdd0: ldr      x0, [x0, #0x650] | 0x418a650 'C9ExoplanetaryMirageUnlocked'
0x1d0cdd4: bl       #0x1b64570 | 
0x1d0cdd8: adrp     x0, #0x418a000
0x1d0cddc: ldr      x0, [x0, #0x490] | 0x418a490 'Chapter9UnlockBegin'
0x1d0cde0: bl       #0x1b64570 | 
0x1d0cde4: mov      w8, #1
0x1d0cde8: strb     w8, [x20, #0xc00]
0x1d0cdec: ldr      x0, [x19]
0x1d0cdf0: adrp     x20, #0x418a000
0x1d0cdf4: ldr      w8, [x0, #0xe0]
0x1d0cdf8: ldr      x20, [x20, #0x490] | 0x418a490 'Chapter9UnlockBegin'
0x1d0cdfc: cbnz     w8, #0x1d0ce04
0x1d0ce00: bl       #0x1b646a4 | 
0x1d0ce04: ldr      x0, [x20]
0x1d0ce08: mov      w1, wzr
0x1d0ce0c: mov      x2, xzr
0x1d0ce10: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d0ce14: tbz      w0, #0, #0x1d0ce44
0x1d0ce18: ldr      x0, [x19]
0x1d0ce1c: adrp     x19, #0x418a000
0x1d0ce20: ldr      w8, [x0, #0xe0]
0x1d0ce24: ldr      x19, [x19, #0x650] | 0x418a650 'C9ExoplanetaryMirageUnlocked'
0x1d0ce28: cbnz     w8, #0x1d0ce30
0x1d0ce2c: bl       #0x1b646a4 | 
0x1d0ce30: ldr      x0, [x19]
0x1d0ce34: mov      w1, wzr
0x1d0ce38: mov      x2, xzr
0x1d0ce3c: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d0ce40: tbz      w0, #0, #0x1d0ce54
0x1d0ce44: ldp      x20, x19, [sp, #0x10]
0x1d0ce48: mov      w0, wzr
0x1d0ce4c: ldr      x30, [sp], #0x20
0x1d0ce50: ret      
0x1d0ce54: adrp     x8, #0x418a000
0x1d0ce58: ldr      x8, [x8, #0x5e0] | 0x418a5e0 'poyidomejiu1'
0x1d0ce5c: ldp      x20, x19, [sp, #0x10]
0x1d0ce60: ldr      x0, [x8]
0x1d0ce64: ldr      x30, [sp], #0x20
0x1d0ce68: b        #0x1d0ce6c | Phigros2.Chapter9.Key$$IsCollectionRead

// 0x1d0d090 Phigros2.Chapter9.ExoplanetaryMirageUnlock$$IsValidUnlockSelection
0x1d0d090: str      x30, [sp, #-0x20]!
0x1d0d094: stp      x20, x19, [sp, #0x10]
0x1d0d098: adrp     x20, #0x4475000
0x1d0d09c: ldrb     w8, [x20, #0xc05]
0x1d0d0a0: mov      x19, x0
0x1d0d0a4: tbnz     w8, #0, #0x1d0d0e0
0x1d0d0a8: adrp     x0, #0x418a000
0x1d0d0ac: ldr      x0, [x0, #0xc20]
0x1d0d0b0: bl       #0x1b64570 | 
0x1d0d0b4: adrp     x0, #0x418a000
0x1d0d0b8: ldr      x0, [x0, #0xc28]
0x1d0d0bc: bl       #0x1b64570 | 
0x1d0d0c0: adrp     x0, #0x418a000
0x1d0d0c4: ldr      x0, [x0, #0x3b8] | 0x418a3b8 'AboutTheUniverse.SOTUIMIssionary.0'
0x1d0d0c8: bl       #0x1b64570 | 
0x1d0d0cc: adrp     x0, #0x418a000
0x1d0d0d0: ldr      x0, [x0, #0x568] | 0x418a568 'Evanescent.LeaF.0'
0x1d0d0d4: bl       #0x1b64570 | 
0x1d0d0d8: mov      w8, #1
0x1d0d0dc: strb     w8, [x20, #0xc05]
0x1d0d0e0: cbz      x19, #0x1d0d278
0x1d0d0e4: adrp     x10, #0x418a000
0x1d0d0e8: ldr      x8, [x19]
0x1d0d0ec: ldr      x10, [x10, #0xc20]
0x1d0d0f0: ldrh     w9, [x8, #0x12e]
0x1d0d0f4: ldr      x1, [x10]
0x1d0d0f8: cbz      x9, #0x1d0d11c
0x1d0d0fc: ldr      x10, [x8, #0xb0]
0x1d0d100: add      x10, x10, #8
0x1d0d104: ldur     x11, [x10, #-8]
0x1d0d108: cmp      x11, x1
0x1d0d10c: b.eq     #0x1d0d12c
0x1d0d110: subs     x9, x9, #1
0x1d0d114: add      x10, x10, #0x10
0x1d0d118: b.ne     #0x1d0d104
0x1d0d11c: mov      x0, x19
0x1d0d120: mov      w2, wzr
0x1d0d124: bl       #0x1bc5638 | 
0x1d0d128: b        #0x1d0d138 | 
0x1d0d12c: ldrsw    x9, [x10]
0x1d0d130: add      x8, x8, x9, lsl #4
0x1d0d134: add      x0, x8, #0x138
0x1d0d138: ldp      x8, x1, [x0]
0x1d0d13c: mov      x0, x19
0x1d0d140: blr      x8
0x1d0d144: cmp      w0, #2
0x1d0d148: b.ne     #0x1d0d278
0x1d0d14c: adrp     x20, #0x418a000
0x1d0d150: ldr      x8, [x19]
0x1d0d154: ldr      x20, [x20, #0xc28]
0x1d0d158: ldrh     w9, [x8, #0x12e]
0x1d0d15c: ldr      x1, [x20]
0x1d0d160: cbz      x9, #0x1d0d184
0x1d0d164: ldr      x10, [x8, #0xb0]
0x1d0d168: add      x10, x10, #8
0x1d0d16c: ldur     x11, [x10, #-8]
0x1d0d170: cmp      x11, x1
0x1d0d174: b.eq     #0x1d0d194
0x1d0d178: subs     x9, x9, #1
0x1d0d17c: add      x10, x10, #0x10
0x1d0d180: b.ne     #0x1d0d16c
0x1d0d184: mov      x0, x19
0x1d0d188: mov      w2, wzr
0x1d0d18c: bl       #0x1bc5638 | 
0x1d0d190: b        #0x1d0d1a0 | 
0x1d0d194: ldrsw    x9, [x10]
0x1d0d198: add      x8, x8, x9, lsl #4
0x1d0d19c: add      x0, x8, #0x138
0x1d0d1a0: ldp      x8, x2, [x0]
0x1d0d1a4: mov      x0, x19
0x1d0d1a8: mov      w1, wzr
0x1d0d1ac: blr      x8
0x1d0d1b0: ldr      x8, [x19]
0x1d0d1b4: ldr      x1, [x20]
0x1d0d1b8: mov      x20, x0
0x1d0d1bc: ldrh     w9, [x8, #0x12e]
0x1d0d1c0: cbz      x9, #0x1d0d1e4
0x1d0d1c4: ldr      x10, [x8, #0xb0]
0x1d0d1c8: add      x10, x10, #8
0x1d0d1cc: ldur     x11, [x10, #-8]
0x1d0d1d0: cmp      x11, x1
0x1d0d1d4: b.eq     #0x1d0d1f4
0x1d0d1d8: subs     x9, x9, #1
0x1d0d1dc: add      x10, x10, #0x10
0x1d0d1e0: b.ne     #0x1d0d1cc
0x1d0d1e4: mov      x0, x19
0x1d0d1e8: mov      w2, wzr
0x1d0d1ec: bl       #0x1bc5638 | 
0x1d0d1f0: b        #0x1d0d200 | 
0x1d0d1f4: ldrsw    x9, [x10]
0x1d0d1f8: add      x8, x8, x9, lsl #4
0x1d0d1fc: add      x0, x8, #0x138
0x1d0d200: ldp      x8, x2, [x0]
0x1d0d204: mov      w1, #1
0x1d0d208: mov      x0, x19
0x1d0d20c: blr      x8
0x1d0d210: cbz      x20, #0x1d0d278
0x1d0d214: mov      x19, x0
0x1d0d218: cbz      x0, #0x1d0d278
0x1d0d21c: ldr      w8, [x20, #0x18]
0x1d0d220: ldr      w9, [x19, #0x18]
0x1d0d224: cmp      w8, w9
0x1d0d228: b.ne     #0x1d0d278
0x1d0d22c: ldr      x8, [x20, #0x10]
0x1d0d230: cbz      x8, #0x1d0d244
0x1d0d234: ldr      x8, [x8, #0x10]
0x1d0d238: cbz      x8, #0x1d0d244
0x1d0d23c: ldr      x0, [x8, #0x10]
0x1d0d240: b        #0x1d0d248 | 
0x1d0d244: mov      x0, xzr
0x1d0d248: adrp     x8, #0x418a000
0x1d0d24c: ldr      x8, [x8, #0x568] | 0x418a568 'Evanescent.LeaF.0'
0x1d0d250: mov      x2, xzr
0x1d0d254: ldr      x1, [x8]
0x1d0d258: bl       #0x32fac7c | System.String$$op_Equality
0x1d0d25c: tbz      w0, #0, #0x1d0d278
0x1d0d260: ldr      x8, [x19, #0x10]
0x1d0d264: cbz      x8, #0x1d0d288
0x1d0d268: ldr      x8, [x8, #0x10]
0x1d0d26c: cbz      x8, #0x1d0d288
0x1d0d270: ldr      x0, [x8, #0x10]
0x1d0d274: b        #0x1d0d28c | 
0x1d0d278: ldp      x20, x19, [sp, #0x10]
0x1d0d27c: mov      w0, wzr
0x1d0d280: ldr      x30, [sp], #0x20
0x1d0d284: ret      
0x1d0d288: mov      x0, xzr
0x1d0d28c: adrp     x8, #0x418a000
0x1d0d290: ldr      x8, [x8, #0x3b8] | 0x418a3b8 'AboutTheUniverse.SOTUIMIssionary.0'
0x1d0d294: ldp      x20, x19, [sp, #0x10]
0x1d0d298: mov      x2, xzr
0x1d0d29c: ldr      x1, [x8]
0x1d0d2a0: ldr      x30, [sp], #0x20
0x1d0d2a4: b        #0x32fac7c | System.String$$op_Equality

// 0x1d246e4 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<UnlockC9HiddenSongKeys>g__TryUnlock|30_0
0x1d246e4: str      x30, [sp, #-0x20]!
0x1d246e8: stp      x20, x19, [sp, #0x10]
0x1d246ec: adrp     x20, #0x4475000
0x1d246f0: ldrb     w8, [x20, #0xcfd]
0x1d246f4: mov      x19, x0
0x1d246f8: tbnz     w8, #0, #0x1d24728
0x1d246fc: adrp     x0, #0x418b000
0x1d24700: ldr      x0, [x0, #0x2e0]
0x1d24704: bl       #0x1b64570 | 
0x1d24708: adrp     x0, #0x418b000
0x1d2470c: ldr      x0, [x0, #0x300]
0x1d24710: bl       #0x1b64570 | 
0x1d24714: adrp     x0, #0x4186000
0x1d24718: ldr      x0, [x0, #0xe68]
0x1d2471c: bl       #0x1b64570 | 
0x1d24720: mov      w8, #1
0x1d24724: strb     w8, [x20, #0xcfd]
0x1d24728: str      xzr, [sp, #8]
0x1d2472c: cbz      x19, #0x1d247e0
0x1d24730: ldr      x8, [x19, #0x10]
0x1d24734: cbz      x8, #0x1d247e0
0x1d24738: ldr      x8, [x8, #0x10]
0x1d2473c: cbz      x8, #0x1d247e0
0x1d24740: adrp     x20, #0x418b000
0x1d24744: ldr      x20, [x20, #0x2e0]
0x1d24748: ldr      x19, [x8, #0x10]
0x1d2474c: ldr      x0, [x20]
0x1d24750: ldr      w9, [x0, #0xe0]
0x1d24754: cbnz     w9, #0x1d24760
0x1d24758: bl       #0x1b646a4 | 
0x1d2475c: ldr      x0, [x20]
0x1d24760: ldr      x8, [x0, #0xb8]
0x1d24764: ldr      x0, [x8]
0x1d24768: cbz      x0, #0x1d247ec
0x1d2476c: adrp     x8, #0x418b000
0x1d24770: ldr      x8, [x8, #0x300]
0x1d24774: add      x2, sp, #8
0x1d24778: mov      x1, x19
0x1d2477c: ldr      x3, [x8]
0x1d24780: bl       #0x2a132c4 | System.Collections.Generic.Dictionary<object, object>$$TryGetValue
0x1d24784: tbz      w0, #0, #0x1d247e0
0x1d24788: adrp     x8, #0x4186000
0x1d2478c: ldr      x8, [x8, #0xe68]
0x1d24790: ldr      x20, [sp, #8]
0x1d24794: ldr      x0, [x8]
0x1d24798: ldr      w8, [x0, #0xe0]
0x1d2479c: cbnz     w8, #0x1d247a4
0x1d247a0: bl       #0x1b646a4 | 
0x1d247a4: mov      x0, x20
0x1d247a8: mov      w1, wzr
0x1d247ac: mov      x2, xzr
0x1d247b0: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d247b4: ldr      x8, [sp, #8]
0x1d247b8: mov      w20, w0
0x1d247bc: mov      w1, #1
0x1d247c0: mov      x2, xzr
0x1d247c4: mov      x0, x8
0x1d247c8: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d247cc: and      w1, w20, #1
0x1d247d0: mov      w2, #1
0x1d247d4: mov      x0, x19
0x1d247d8: mov      x3, xzr
0x1d247dc: bl       #0x1d0785c | Phigros2.Chapter9.Chapter9UnlockNavigation$$ApplyReturnToSelectMusicIfNeeded
0x1d247e0: ldp      x20, x19, [sp, #0x10]
0x1d247e4: ldr      x30, [sp], #0x20
0x1d247e8: ret      
0x1d247ec: bl       #0x1b647c8 | 

// 0x1d7f4d0 LevelOverControl$$HandleC9ImplexroughUnlock
0x1d7f4d0: stp      x30, x21, [sp, #-0x20]!
0x1d7f4d4: stp      x20, x19, [sp, #0x10]
0x1d7f4d8: adrp     x20, #0x4475000
0x1d7f4dc: ldrb     w8, [x20, #0xf82]
0x1d7f4e0: mov      x19, x0
0x1d7f4e4: tbnz     w8, #0, #0x1d7f520
0x1d7f4e8: adrp     x0, #0x4186000
0x1d7f4ec: ldr      x0, [x0, #0xe68]
0x1d7f4f0: bl       #0x1b64570 | 
0x1d7f4f4: adrp     x0, #0x418a000
0x1d7f4f8: ldr      x0, [x0, #0x618] | 0x418a618 'poyidomegino0'
0x1d7f4fc: bl       #0x1b64570 | 
0x1d7f500: adrp     x0, #0x418a000
0x1d7f504: ldr      x0, [x0, #0x3c0] | 0x418a3c0 'Implexrough.Silentroommommy.0'
0x1d7f508: bl       #0x1b64570 | 
0x1d7f50c: adrp     x0, #0x418a000
0x1d7f510: ldr      x0, [x0, #0x318] | 0x418a318 'C9ImplexroughUnlocked'
0x1d7f514: bl       #0x1b64570 | 
0x1d7f518: mov      w8, #1
0x1d7f51c: strb     w8, [x20, #0xf82]
0x1d7f520: ldr      x8, [x19, #0x48]
0x1d7f524: cbz      x8, #0x1d7f5d8
0x1d7f528: adrp     x19, #0x418a000
0x1d7f52c: ldr      x19, [x19, #0x3c0] | 0x418a3c0 'Implexrough.Silentroommommy.0'
0x1d7f530: ldr      x0, [x8, #0x10]
0x1d7f534: mov      x2, xzr
0x1d7f538: ldr      x1, [x19]
0x1d7f53c: bl       #0x33082c8 | System.String$$op_Inequality
0x1d7f540: tbnz     w0, #0, #0x1d7f590
0x1d7f544: adrp     x8, #0x418a000
0x1d7f548: ldr      x8, [x8, #0x618] | 0x418a618 'poyidomegino0'
0x1d7f54c: mov      x1, xzr
0x1d7f550: ldr      x0, [x8]
0x1d7f554: bl       #0x1d0ce6c | Phigros2.Chapter9.Key$$IsCollectionRead
0x1d7f558: tbz      w0, #0, #0x1d7f590
0x1d7f55c: adrp     x20, #0x4186000
0x1d7f560: ldr      x20, [x20, #0xe68]
0x1d7f564: ldr      x0, [x20]
0x1d7f568: ldr      w8, [x0, #0xe0]
0x1d7f56c: cbnz     w8, #0x1d7f574
0x1d7f570: bl       #0x1b646a4 | 
0x1d7f574: adrp     x21, #0x418a000
0x1d7f578: ldr      x21, [x21, #0x318] | 0x418a318 'C9ImplexroughUnlocked'
0x1d7f57c: mov      w1, wzr
0x1d7f580: mov      x2, xzr
0x1d7f584: ldr      x0, [x21]
0x1d7f588: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d7f58c: tbz      w0, #0, #0x1d7f59c
0x1d7f590: ldp      x20, x19, [sp, #0x10]
0x1d7f594: ldp      x30, x21, [sp], #0x20
0x1d7f598: ret      
0x1d7f59c: ldr      x0, [x20]
0x1d7f5a0: ldr      w8, [x0, #0xe0]
0x1d7f5a4: cbnz     w8, #0x1d7f5ac
0x1d7f5a8: bl       #0x1b646a4 | 
0x1d7f5ac: ldr      x0, [x21]
0x1d7f5b0: mov      w1, #1
0x1d7f5b4: mov      x2, xzr
0x1d7f5b8: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d7f5bc: ldr      x0, [x19]
0x1d7f5c0: ldp      x20, x19, [sp, #0x10]
0x1d7f5c4: mov      w2, #1
0x1d7f5c8: mov      w1, wzr
0x1d7f5cc: mov      x3, xzr
0x1d7f5d0: ldp      x30, x21, [sp], #0x20
0x1d7f5d4: b        #0x1d0785c | Phigros2.Chapter9.Chapter9UnlockNavigation$$ApplyReturnToSelectMusicIfNeeded
0x1d7f5d8: bl       #0x1b647c8 | 
