
// 0x1cdbf50 FakeAboutUsControl$$Start
0x1cdbf50: str      x30, [sp, #-0x30]!
0x1cdbf54: stp      x22, x21, [sp, #0x10]
0x1cdbf58: stp      x20, x19, [sp, #0x20]
0x1cdbf5c: adrp     x20, #0x4475000
0x1cdbf60: ldrb     w8, [x20, #0x9b2]
0x1cdbf64: mov      x19, x0
0x1cdbf68: tbnz     w8, #0, #0x1cdbfd4
0x1cdbf6c: adrp     x0, #0x4189000
0x1cdbf70: ldr      x0, [x0, #0x6d0]
0x1cdbf74: bl       #0x1b64570 | 
0x1cdbf78: adrp     x0, #0x4189000
0x1cdbf7c: ldr      x0, [x0, #0x6d8]
0x1cdbf80: bl       #0x1b64570 | 
0x1cdbf84: adrp     x0, #0x4186000
0x1cdbf88: ldr      x0, [x0, #0xe68]
0x1cdbf8c: bl       #0x1b64570 | 
0x1cdbf90: adrp     x0, #0x4187000
0x1cdbf94: ldr      x0, [x0, #0x1b0] | 0x41871b0 'HD'
0x1cdbf98: bl       #0x1b64570 | 
0x1cdbf9c: adrp     x0, #0x4187000
0x1cdbfa0: ldr      x0, [x0, #0x1b8] | 0x41871b8 'AT'
0x1cdbfa4: bl       #0x1b64570 | 
0x1cdbfa8: adrp     x0, #0x4189000
0x1cdbfac: ldr      x0, [x0, #0x328] | 0x4189328 'chartMirror'
0x1cdbfb0: bl       #0x1b64570 | 
0x1cdbfb4: adrp     x0, #0x4187000
0x1cdbfb8: ldr      x0, [x0, #0x1c0] | 0x41871c0 'IN'
0x1cdbfbc: bl       #0x1b64570 | 
0x1cdbfc0: adrp     x0, #0x4187000
0x1cdbfc4: ldr      x0, [x0, #0x1d0] | 0x41871d0 'EZ'
0x1cdbfc8: bl       #0x1b64570 | 
0x1cdbfcc: mov      w8, #1
0x1cdbfd0: strb     w8, [x20, #0x9b2]
0x1cdbfd4: ldr      x0, [x19, #0x50]
0x1cdbfd8: cbz      x0, #0x1cdc298
0x1cdbfdc: adrp     x21, #0x4189000
0x1cdbfe0: adrp     x22, #0x4189000
0x1cdbfe4: ldr      x21, [x21, #0x6d0]
0x1cdbfe8: ldr      x22, [x22, #0x6d8]
0x1cdbfec: mov      x1, xzr
0x1cdbff0: bl       #0x3e953dc | UnityEngine.Video.VideoPlayer$$Prepare
0x1cdbff4: ldr      x0, [x21]
0x1cdbff8: ldr      x20, [x19, #0x50]
0x1cdbffc: bl       #0x1b647b8 | 
0x1cdc000: ldr      x2, [x22]
0x1cdc004: mov      x1, xzr
0x1cdc008: mov      x3, xzr
0x1cdc00c: mov      x21, x0
0x1cdc010: bl       #0x3e97088 | UnityEngine.Video.VideoPlayer.ErrorEventHandler$$.ctor
0x1cdc014: cbz      x20, #0x1cdc298
0x1cdc018: mov      x0, x20
0x1cdc01c: mov      x1, x21
0x1cdc020: mov      x2, xzr
0x1cdc024: bl       #0x3e968c8 | UnityEngine.Video.VideoPlayer$$add_errorReceived
0x1cdc028: adrp     x20, #0x4475000
0x1cdc02c: ldrb     w8, [x20, #0x8c0]
0x1cdc030: cbnz     w8, #0x1cdc048
0x1cdc034: adrp     x0, #0x4186000
0x1cdc038: ldr      x0, [x0, #0xef8]
0x1cdc03c: bl       #0x1b64570 | 
0x1cdc040: mov      w8, #1
0x1cdc044: strb     w8, [x20, #0x8c0]
0x1cdc048: adrp     x8, #0x4186000
0x1cdc04c: ldr      x8, [x8, #0xef8]
0x1cdc050: mov      x0, xzr
0x1cdc054: ldr      x8, [x8]
0x1cdc058: ldr      x8, [x8, #0xb8]
0x1cdc05c: ldr      x8, [x8]
0x1cdc060: str      x8, [x19, #0x80]
0x1cdc064: bl       #0x3c22cb4 | UnityEngine.Camera$$get_main
0x1cdc068: str      x0, [x19, #0x78]
0x1cdc06c: mov      x0, xzr
0x1cdc070: bl       #0x3c2bf0c | UnityEngine.Screen$$get_width
0x1cdc074: mov      w20, w0
0x1cdc078: mov      x0, xzr
0x1cdc07c: bl       #0x3c2bf34 | UnityEngine.Screen$$get_height
0x1cdc080: adrp     x8, #0xc35000
0x1cdc084: ldr      s0, [x8, #0x250]
0x1cdc088: scvtf    s1, w20
0x1cdc08c: scvtf    s2, w0
0x1cdc090: fdiv     s1, s1, s2
0x1cdc094: fcmp     s1, s0
0x1cdc098: b.le     #0x1cdc0cc
0x1cdc09c: mov      x0, xzr
0x1cdc0a0: bl       #0x3c2bf0c | UnityEngine.Screen$$get_width
0x1cdc0a4: mov      w20, w0
0x1cdc0a8: mov      x0, xzr
0x1cdc0ac: bl       #0x3c2bf34 | UnityEngine.Screen$$get_height
0x1cdc0b0: adrp     x8, #0xc35000
0x1cdc0b4: ldr      s0, [x8, #0x3e4]
0x1cdc0b8: scvtf    s1, w20
0x1cdc0bc: fdiv     s0, s0, s1
0x1cdc0c0: scvtf    s1, w0
0x1cdc0c4: fmul     s0, s0, s1
0x1cdc0c8: str      s0, [x19, #0x88]
0x1cdc0cc: ldr      x8, [x19, #0x80]
0x1cdc0d0: cbz      x8, #0x1cdc298
0x1cdc0d4: ldr      x8, [x8, #0x30]
0x1cdc0d8: cbz      x8, #0x1cdc298
0x1cdc0dc: adrp     x9, #0x4187000
0x1cdc0e0: ldr      x9, [x9, #0x1d0] | 0x41871d0 'EZ'
0x1cdc0e4: ldr      x20, [x8, #0x38]
0x1cdc0e8: mov      x2, xzr
0x1cdc0ec: ldr      x1, [x9]
0x1cdc0f0: mov      x0, x20
0x1cdc0f4: bl       #0x32fac7c | System.String$$op_Equality
0x1cdc0f8: tbz      w0, #0, #0x1cdc104
0x1cdc0fc: mov      w20, wzr
0x1cdc100: b        #0x1cdc170 | 
0x1cdc104: adrp     x8, #0x4187000
0x1cdc108: ldr      x8, [x8, #0x1b0] | 0x41871b0 'HD'
0x1cdc10c: mov      x0, x20
0x1cdc110: mov      x2, xzr
0x1cdc114: ldr      x1, [x8]
0x1cdc118: bl       #0x32fac7c | System.String$$op_Equality
0x1cdc11c: tbz      w0, #0, #0x1cdc128
0x1cdc120: mov      w20, #1
0x1cdc124: b        #0x1cdc170 | 
0x1cdc128: adrp     x8, #0x4187000
0x1cdc12c: ldr      x8, [x8, #0x1c0] | 0x41871c0 'IN'
0x1cdc130: mov      x0, x20
0x1cdc134: mov      x2, xzr
0x1cdc138: ldr      x1, [x8]
0x1cdc13c: bl       #0x32fac7c | System.String$$op_Equality
0x1cdc140: tbz      w0, #0, #0x1cdc14c
0x1cdc144: mov      w20, #2
0x1cdc148: b        #0x1cdc170 | 
0x1cdc14c: adrp     x8, #0x4187000
0x1cdc150: ldr      x8, [x8, #0x1b8] | 0x41871b8 'AT'
0x1cdc154: mov      x0, x20
0x1cdc158: mov      x2, xzr
0x1cdc15c: ldr      x1, [x8]
0x1cdc160: bl       #0x32fac7c | System.String$$op_Equality
0x1cdc164: tst      w0, #1
0x1cdc168: mov      w8, #3
0x1cdc16c: csel     w20, w8, wzr, ne
0x1cdc170: ldr      x0, [x19, #0x80]
0x1cdc174: cbz      x0, #0x1cdc298
0x1cdc178: ldr      x1, [x19, #0x28]
0x1cdc17c: mov      x2, xzr
0x1cdc180: bl       #0x1ca8974 | GameInformation$$GetSongInformation
0x1cdc184: cbz      x0, #0x1cdc298
0x1cdc188: ldr      x21, [x19, #0x80]
0x1cdc18c: mov      w1, w20
0x1cdc190: mov      x2, xzr
0x1cdc194: bl       #0x1cb8b38 | SongsItem$$GetLevelStartInfo
0x1cdc198: cbz      x21, #0x1cdc298
0x1cdc19c: str      x0, [x21, #0x30]
0x1cdc1a0: adrp     x20, #0x4475000
0x1cdc1a4: ldrb     w8, [x20, #0x95e]
0x1cdc1a8: cbnz     w8, #0x1cdc1c0
0x1cdc1ac: adrp     x0, #0x4189000
0x1cdc1b0: ldr      x0, [x0, #0xf8]
0x1cdc1b4: bl       #0x1b64570 | 
0x1cdc1b8: mov      w8, #1
0x1cdc1bc: strb     w8, [x20, #0x95e]
0x1cdc1c0: adrp     x8, #0x4189000
0x1cdc1c4: ldr      x8, [x8, #0xf8]
0x1cdc1c8: ldr      x8, [x8]
0x1cdc1cc: ldr      x8, [x8, #0xb8]
0x1cdc1d0: ldrb     w8, [x8]
0x1cdc1d4: cbz      w8, #0x1cdc220
0x1cdc1d8: ldr      x8, [x19, #0x80]
0x1cdc1dc: cbz      x8, #0x1cdc298
0x1cdc1e0: adrp     x9, #0x4186000
0x1cdc1e4: ldr      x9, [x9, #0xe68]
0x1cdc1e8: adrp     x21, #0x4189000
0x1cdc1ec: ldr      x20, [x8, #0x30]
0x1cdc1f0: ldr      x0, [x9]
0x1cdc1f4: ldr      w9, [x0, #0xe0]
0x1cdc1f8: ldr      x21, [x21, #0x328] | 0x4189328 'chartMirror'
0x1cdc1fc: cbnz     w9, #0x1cdc204
0x1cdc200: bl       #0x1b646a4 | 
0x1cdc204: ldr      x0, [x21]
0x1cdc208: mov      w1, wzr
0x1cdc20c: mov      x2, xzr
0x1cdc210: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1cdc214: cbz      x20, #0x1cdc298
0x1cdc218: and      w8, w0, #1
0x1cdc21c: strb     w8, [x20, #0x60]
0x1cdc220: ldr      x8, [x19, #0x80]
0x1cdc224: cbz      x8, #0x1cdc298
0x1cdc228: ldr      x8, [x8, #0x30]
0x1cdc22c: cbz      x8, #0x1cdc298
0x1cdc230: ldr      x0, [x19, #0x68]
0x1cdc234: cbz      x0, #0x1cdc298
0x1cdc238: ldr      x9, [x0]
0x1cdc23c: ldr      x1, [x8, #0x40]
0x1cdc240: ldr      x8, [x9, #0x5e8]
0x1cdc244: ldr      x2, [x9, #0x5f0]
0x1cdc248: blr      x8
0x1cdc24c: ldr      x8, [x19, #0x80]
0x1cdc250: cbz      x8, #0x1cdc298
0x1cdc254: ldr      x8, [x8, #0x30]
0x1cdc258: cbz      x8, #0x1cdc298
0x1cdc25c: ldr      x0, [x19, #0x70]
0x1cdc260: cbz      x0, #0x1cdc298
0x1cdc264: ldr      x9, [x0]
0x1cdc268: ldr      x1, [x8, #0x38]
0x1cdc26c: ldr      x8, [x9, #0x5e8]
0x1cdc270: ldr      x2, [x9, #0x5f0]
0x1cdc274: blr      x8
0x1cdc278: ldr      x0, [x19, #0x78]
0x1cdc27c: cbz      x0, #0x1cdc298
0x1cdc280: ldr      s0, [x19, #0x88]
0x1cdc284: ldp      x20, x19, [sp, #0x20]
0x1cdc288: ldp      x22, x21, [sp, #0x10]
0x1cdc28c: mov      x1, xzr
0x1cdc290: ldr      x30, [sp], #0x30
0x1cdc294: b        #0x3c1fae8 | UnityEngine.Camera$$set_orthographicSize
0x1cdc298: bl       #0x1b647c8 | 

// 0x1cdc29c FakeAboutUsControl$$playUnlockVideo
0x1cdc29c: stp      x30, x19, [sp, #-0x10]!
0x1cdc2a0: mov      x19, x0
0x1cdc2a4: mov      x0, xzr
0x1cdc2a8: bl       #0x3c688f4 | UnityEngine.Time$$get_timeSinceLevelLoad
0x1cdc2ac: adrp     x8, #0xc35000
0x1cdc2b0: ldr      s1, [x8, #0x1e8]
0x1cdc2b4: fcmp     s0, s1
0x1cdc2b8: b.pl     #0x1cdc2c4
0x1cdc2bc: ldp      x30, x19, [sp], #0x10
0x1cdc2c0: ret      
0x1cdc2c4: mov      x0, x19
0x1cdc2c8: bl       #0x1cdc2e0 | FakeAboutUsControl$$PlayUnlock
0x1cdc2cc: mov      x1, x0
0x1cdc2d0: mov      x0, x19
0x1cdc2d4: mov      x2, xzr
0x1cdc2d8: ldp      x30, x19, [sp], #0x10
0x1cdc2dc: b        #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine

// 0x1cdc2e0 FakeAboutUsControl$$PlayUnlock
0x1cdc2e0: stp      x30, x21, [sp, #-0x20]!
0x1cdc2e4: stp      x20, x19, [sp, #0x10]
0x1cdc2e8: adrp     x20, #0x4475000
0x1cdc2ec: adrp     x21, #0x4189000
0x1cdc2f0: ldrb     w8, [x20, #0x9b3]
0x1cdc2f4: ldr      x21, [x21, #0x6e0]
0x1cdc2f8: mov      x19, x0
0x1cdc2fc: tbnz     w8, #0, #0x1cdc314
0x1cdc300: adrp     x0, #0x4189000
0x1cdc304: ldr      x0, [x0, #0x6e0]
0x1cdc308: bl       #0x1b64570 | 
0x1cdc30c: mov      w8, #1
0x1cdc310: strb     w8, [x20, #0x9b3]
0x1cdc314: ldr      x0, [x21]
0x1cdc318: bl       #0x1b647b8 | 
0x1cdc31c: mov      x1, xzr
0x1cdc320: mov      x20, x0
0x1cdc324: bl       #0x34c04f0 | System.Object$$.ctor
0x1cdc328: str      wzr, [x20, #0x10]
0x1cdc32c: str      x19, [x20, #0x20]
0x1cdc330: mov      x0, x20
0x1cdc334: ldp      x20, x19, [sp, #0x10]
0x1cdc338: ldp      x30, x21, [sp], #0x20
0x1cdc33c: ret      

// 0x1cdc340 FakeAboutUsControl.<PlayUnlock>d__18$$.ctor
0x1cdc340: str      x30, [sp, #-0x20]!
0x1cdc344: stp      x20, x19, [sp, #0x10]
0x1cdc348: mov      w19, w1
0x1cdc34c: mov      x1, xzr
0x1cdc350: mov      x20, x0
0x1cdc354: bl       #0x34c04f0 | System.Object$$.ctor
0x1cdc358: str      w19, [x20, #0x10]
0x1cdc35c: ldp      x20, x19, [sp, #0x10]
0x1cdc360: ldr      x30, [sp], #0x20
0x1cdc364: ret      

// 0x1cdc368 FakeAboutUsControl$$WaitingForVideoOver
0x1cdc368: stp      x30, x19, [sp, #-0x10]!
0x1cdc36c: mov      x19, x0
0x1cdc370: bl       #0x1cdc388 | FakeAboutUsControl$$StartLevel
0x1cdc374: mov      x1, x0
0x1cdc378: mov      x0, x19
0x1cdc37c: mov      x2, xzr
0x1cdc380: ldp      x30, x19, [sp], #0x10
0x1cdc384: b        #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine

// 0x1cdc388 FakeAboutUsControl$$StartLevel
0x1cdc388: stp      x30, x21, [sp, #-0x20]!
0x1cdc38c: stp      x20, x19, [sp, #0x10]
0x1cdc390: adrp     x20, #0x4475000
0x1cdc394: adrp     x21, #0x4189000
0x1cdc398: ldrb     w8, [x20, #0x9b4]
0x1cdc39c: ldr      x21, [x21, #0x6e8]
0x1cdc3a0: mov      x19, x0
0x1cdc3a4: tbnz     w8, #0, #0x1cdc3bc
0x1cdc3a8: adrp     x0, #0x4189000
0x1cdc3ac: ldr      x0, [x0, #0x6e8]
0x1cdc3b0: bl       #0x1b64570 | 
0x1cdc3b4: mov      w8, #1
0x1cdc3b8: strb     w8, [x20, #0x9b4]
0x1cdc3bc: ldr      x0, [x21]
0x1cdc3c0: bl       #0x1b647b8 | 
0x1cdc3c4: mov      x1, xzr
0x1cdc3c8: mov      x20, x0
0x1cdc3cc: bl       #0x34c04f0 | System.Object$$.ctor
0x1cdc3d0: str      wzr, [x20, #0x10]
0x1cdc3d4: str      x19, [x20, #0x20]
0x1cdc3d8: mov      x0, x20
0x1cdc3dc: ldp      x20, x19, [sp, #0x10]
0x1cdc3e0: ldp      x30, x21, [sp], #0x20
0x1cdc3e4: ret      

// 0x1cdc3e8 FakeAboutUsControl.<StartLevel>d__20$$.ctor
0x1cdc3e8: str      x30, [sp, #-0x20]!
0x1cdc3ec: stp      x20, x19, [sp, #0x10]
0x1cdc3f0: mov      w19, w1
0x1cdc3f4: mov      x1, xzr
0x1cdc3f8: mov      x20, x0
0x1cdc3fc: bl       #0x34c04f0 | System.Object$$.ctor
0x1cdc400: str      w19, [x20, #0x10]
0x1cdc404: ldp      x20, x19, [sp, #0x10]
0x1cdc408: ldr      x30, [sp], #0x20
0x1cdc40c: ret      

// 0x1cdc410 FakeAboutUsControl$$.ctor
0x1cdc410: stp      x30, x21, [sp, #-0x20]!
0x1cdc414: stp      x20, x19, [sp, #0x10]
0x1cdc418: adrp     x20, #0x4475000
0x1cdc41c: adrp     x21, #0x4185000
0x1cdc420: ldrb     w8, [x20, #0x9b5]
0x1cdc424: ldr      x21, [x21, #0x8a8]
0x1cdc428: mov      x19, x0
0x1cdc42c: tbnz     w8, #0, #0x1cdc444
0x1cdc430: adrp     x0, #0x4185000
0x1cdc434: ldr      x0, [x0, #0x8a8]
0x1cdc438: bl       #0x1b64570 | 
0x1cdc43c: mov      w8, #1
0x1cdc440: strb     w8, [x20, #0x9b5]
0x1cdc444: ldr      x0, [x21]
0x1cdc448: mov      w1, #4
0x1cdc44c: bl       #0x1b64614 | 
0x1cdc450: mov      w8, #0x40a00000
0x1cdc454: str      x0, [x19, #0x20]
0x1cdc458: str      w8, [x19, #0x88]
0x1cdc45c: mov      x0, x19
0x1cdc460: ldp      x20, x19, [sp, #0x10]
0x1cdc464: mov      x1, xzr
0x1cdc468: ldp      x30, x21, [sp], #0x20
0x1cdc46c: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor

// 0x1cdc470 FakeAboutUsControl$$<Start>g__OnErrorReceived|15_0
0x1cdc470: str      x30, [sp, #-0x30]!
0x1cdc474: stp      x22, x21, [sp, #0x10]
0x1cdc478: stp      x20, x19, [sp, #0x20]
0x1cdc47c: adrp     x21, #0x4475000
0x1cdc480: adrp     x22, #0x4189000
0x1cdc484: adrp     x20, #0x4185000
0x1cdc488: ldrb     w8, [x21, #0x9b6]
0x1cdc48c: ldr      x22, [x22, #0x6f0] | 0x41896f0 'Error received: '
0x1cdc490: ldr      x20, [x20, #0xb38]
0x1cdc494: mov      x19, x1
0x1cdc498: tbnz     w8, #0, #0x1cdc4bc
0x1cdc49c: adrp     x0, #0x4185000
0x1cdc4a0: ldr      x0, [x0, #0xb38]
0x1cdc4a4: bl       #0x1b64570 | 
0x1cdc4a8: adrp     x0, #0x4189000
0x1cdc4ac: ldr      x0, [x0, #0x6f0] | 0x41896f0 'Error received: '
0x1cdc4b0: bl       #0x1b64570 | 
0x1cdc4b4: mov      w8, #1
0x1cdc4b8: strb     w8, [x21, #0x9b6]
0x1cdc4bc: ldr      x0, [x22]
0x1cdc4c0: mov      x1, x19
0x1cdc4c4: mov      x2, xzr
0x1cdc4c8: bl       #0x32fce8c | System.String$$Concat
0x1cdc4cc: ldr      x8, [x20]
0x1cdc4d0: mov      x19, x0
0x1cdc4d4: ldr      w9, [x8, #0xe0]
0x1cdc4d8: cbnz     w9, #0x1cdc4e4
0x1cdc4dc: mov      x0, x8
0x1cdc4e0: bl       #0x1b646a4 | 
0x1cdc4e4: mov      x0, x19
0x1cdc4e8: ldp      x20, x19, [sp, #0x20]
0x1cdc4ec: ldp      x22, x21, [sp, #0x10]
0x1cdc4f0: mov      x1, xzr
0x1cdc4f4: ldr      x30, [sp], #0x30
0x1cdc4f8: b        #0x3c25308 | UnityEngine.Debug$$LogError

// 0x1cdc4fc FakeAboutUsControl$$<PlayUnlock>b__18_0
0x1cdc4fc: str      x30, [sp, #-0x10]!
0x1cdc500: ldr      x0, [x0, #0x50]
0x1cdc504: cbz      x0, #0x1cdc528
0x1cdc508: mov      x1, xzr
0x1cdc50c: bl       #0x3e956bc | UnityEngine.Video.VideoPlayer$$get_time
0x1cdc510: adrp     x8, #0xbf8000
0x1cdc514: ldr      d1, [x8, #0x3c8]
0x1cdc518: fcmp     d0, d1
0x1cdc51c: cset     w0, ge
0x1cdc520: ldr      x30, [sp], #0x10
0x1cdc524: ret      
0x1cdc528: bl       #0x1b647c8 | 

// 0x1cdc52c FakeAboutUsControl.<PlayUnlock>d__18$$System.IDisposable.Dispose
0x1cdc52c: ret      

// 0x1cdc530 FakeAboutUsControl.<PlayUnlock>d__18$$MoveNext
0x1cdc530: sub      sp, sp, #0x40
0x1cdc534: str      d8, [sp, #0x10]
0x1cdc538: str      x30, [sp, #0x18]
0x1cdc53c: stp      x22, x21, [sp, #0x20]
0x1cdc540: stp      x20, x19, [sp, #0x30]
0x1cdc544: adrp     x20, #0x4475000
0x1cdc548: ldrb     w8, [x20, #0x9b7]
0x1cdc54c: mov      x19, x0
0x1cdc550: tbnz     w8, #0, #0x1cdc5b0
0x1cdc554: adrp     x0, #0x4189000
0x1cdc558: ldr      x0, [x0, #0x6f8]
0x1cdc55c: bl       #0x1b64570 | 
0x1cdc560: adrp     x0, #0x4187000
0x1cdc564: ldr      x0, [x0, #0x740]
0x1cdc568: bl       #0x1b64570 | 
0x1cdc56c: adrp     x0, #0x4185000
0x1cdc570: ldr      x0, [x0, #0x848]
0x1cdc574: bl       #0x1b64570 | 
0x1cdc578: adrp     x0, #0x4185000
0x1cdc57c: ldr      x0, [x0, #0x208]
0x1cdc580: bl       #0x1b64570 | 
0x1cdc584: adrp     x0, #0x4186000
0x1cdc588: ldr      x0, [x0, #0x168]
0x1cdc58c: bl       #0x1b64570 | 
0x1cdc590: adrp     x0, #0x4188000
0x1cdc594: ldr      x0, [x0, #0xad8]
0x1cdc598: bl       #0x1b64570 | 
0x1cdc59c: adrp     x0, #0x4189000
0x1cdc5a0: ldr      x0, [x0, #0x700] | 0x4189700 'VideoIn'
0x1cdc5a4: bl       #0x1b64570 | 
0x1cdc5a8: mov      w8, #1
0x1cdc5ac: strb     w8, [x20, #0x9b7]
0x1cdc5b0: ldr      w8, [x19, #0x10]
0x1cdc5b4: cmp      w8, #3
0x1cdc5b8: b.hi     #0x1cdc724
0x1cdc5bc: ldr      x20, [x19, #0x20]
0x1cdc5c0: adrp     x9, #0xc36000
0x1cdc5c4: add      x9, x9, #0x340
0x1cdc5c8: adr      x10, #0x1cdc5d8
0x1cdc5cc: ldrb     w11, [x9, x8]
0x1cdc5d0: add      x10, x10, x11, lsl #2
0x1cdc5d4: br       x10
0x1cdc5d8: mov      w8, #-1
0x1cdc5dc: str      w8, [x19, #0x10]
0x1cdc5e0: cbz      x20, #0x1cdc894
0x1cdc5e4: ldr      x0, [x20, #0x50]
0x1cdc5e8: cbz      x0, #0x1cdc894
0x1cdc5ec: mov      x1, xzr
0x1cdc5f0: bl       #0x3e95554 | UnityEngine.Video.VideoPlayer$$Play
0x1cdc5f4: adrp     x8, #0x4187000
0x1cdc5f8: ldr      x8, [x8, #0x740]
0x1cdc5fc: ldr      x0, [x8]
0x1cdc600: bl       #0x1b647b8 | 
0x1cdc604: adrp     x8, #0x4189000
0x1cdc608: ldr      x8, [x8, #0x6f8]
0x1cdc60c: mov      x1, x20
0x1cdc610: mov      x3, xzr
0x1cdc614: mov      x21, x0
0x1cdc618: ldr      x2, [x8]
0x1cdc61c: bl       #0x2c503d8 | System.Func<bool>$$.ctor
0x1cdc620: adrp     x8, #0x4188000
0x1cdc624: ldr      x8, [x8, #0xad8]
0x1cdc628: ldr      x0, [x8]
0x1cdc62c: bl       #0x1b647b8 | 
0x1cdc630: mov      x1, x21
0x1cdc634: mov      x2, xzr
0x1cdc638: mov      x20, x0
0x1cdc63c: bl       #0x3c66e5c | UnityEngine.WaitUntil$$.ctor
0x1cdc640: mov      w0, #1
0x1cdc644: str      x20, [x19, #0x18]
0x1cdc648: str      w0, [x19, #0x10]
0x1cdc64c: b        #0x1cdc87c | 
0x1cdc650: mov      w8, #-1
0x1cdc654: str      w8, [x19, #0x10]
0x1cdc658: cbz      x20, #0x1cdc894
0x1cdc65c: ldr      x0, [x20, #0x60]
0x1cdc660: cbz      x0, #0x1cdc894
0x1cdc664: mov      w1, #1
0x1cdc668: mov      x2, xzr
0x1cdc66c: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1cdc670: ldr      x0, [x20, #0x58]
0x1cdc674: cbz      x0, #0x1cdc894
0x1cdc678: adrp     x8, #0x4189000
0x1cdc67c: ldr      x8, [x8, #0x700] | 0x4189700 'VideoIn'
0x1cdc680: mov      x2, xzr
0x1cdc684: ldr      x1, [x8]
0x1cdc688: bl       #0x3c0db9c | UnityEngine.Animator$$SetTrigger
0x1cdc68c: adrp     x8, #0x4186000
0x1cdc690: ldr      x8, [x8, #0x168]
0x1cdc694: ldr      x0, [x8]
0x1cdc698: bl       #0x1b647b8 | 
0x1cdc69c: fmov     s0, #0.75000000
0x1cdc6a0: mov      x1, xzr
0x1cdc6a4: mov      x20, x0
0x1cdc6a8: bl       #0x3c66cf4 | UnityEngine.WaitForSeconds$$.ctor
0x1cdc6ac: mov      w8, #2
0x1cdc6b0: str      x20, [x19, #0x18]
0x1cdc6b4: b        #0x1cdc874 | 
0x1cdc6b8: mov      w8, #-1
0x1cdc6bc: str      w8, [x19, #0x10]
0x1cdc6c0: cbz      x20, #0x1cdc894
0x1cdc6c4: ldr      x0, [x20, #0x78]
0x1cdc6c8: str      wzr, [x20, #0x90]
0x1cdc6cc: cbz      x0, #0x1cdc894
0x1cdc6d0: mov      x1, xzr
0x1cdc6d4: bl       #0x3c1faac | UnityEngine.Camera$$get_orthographicSize
0x1cdc6d8: str      s0, [x19, #0x28]
0x1cdc6dc: adrp     x8, #0xc35000
0x1cdc6e0: ldr      s0, [x20, #0x88]
0x1cdc6e4: ldr      s1, [x8, #0x478]
0x1cdc6e8: fmul     s0, s0, s1
0x1cdc6ec: str      s0, [x19, #0x2c]
0x1cdc6f0: b        #0x1cdc700 | 
0x1cdc6f4: mov      w8, #-1
0x1cdc6f8: str      w8, [x19, #0x10]
0x1cdc6fc: cbz      x20, #0x1cdc894
0x1cdc700: ldr      s0, [x20, #0x90]
0x1cdc704: fmov     s1, #4.00000000
0x1cdc708: fcmp     s0, s1
0x1cdc70c: b.ls     #0x1cdc72c
0x1cdc710: ldr      x0, [x20, #0x78]
0x1cdc714: cbz      x0, #0x1cdc894
0x1cdc718: ldr      s0, [x20, #0x88]
0x1cdc71c: mov      x1, xzr
0x1cdc720: bl       #0x3c1fae8 | UnityEngine.Camera$$set_orthographicSize
0x1cdc724: mov      w0, wzr
0x1cdc728: b        #0x1cdc87c | 
0x1cdc72c: adrp     x22, #0x4185000
0x1cdc730: ldr      x22, [x22, #0x208]
0x1cdc734: ldr      x21, [x20, #0x40]
0x1cdc738: ldr      x0, [x22]
0x1cdc73c: ldr      w8, [x0, #0xe0]
0x1cdc740: cbnz     w8, #0x1cdc748
0x1cdc744: bl       #0x1b646a4 | 
0x1cdc748: mov      x0, x21
0x1cdc74c: mov      x1, xzr
0x1cdc750: mov      x2, xzr
0x1cdc754: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1cdc758: tbz      w0, #0, #0x1cdc808
0x1cdc75c: adrp     x8, #0xc35000
0x1cdc760: ldr      s0, [x20, #0x90]
0x1cdc764: ldr      s8, [x8, #0x144]
0x1cdc768: ldr      x0, [x20, #0x40]
0x1cdc76c: fcmp     s0, s8
0x1cdc770: b.ls     #0x1cdc7dc
0x1cdc774: cbz      x0, #0x1cdc894
0x1cdc778: mov      x1, xzr
0x1cdc77c: bl       #0x3c18a20 | UnityEngine.AudioSource$$get_isPlaying
0x1cdc780: tbz      w0, #0, #0x1cdc808
0x1cdc784: ldr      x0, [x20, #0x40]
0x1cdc788: cbz      x0, #0x1cdc894
0x1cdc78c: fmov     s0, wzr
0x1cdc790: mov      x1, xzr
0x1cdc794: bl       #0x3c183b0 | UnityEngine.AudioSource$$set_volume
0x1cdc798: ldr      x0, [x20, #0x40]
0x1cdc79c: cbz      x0, #0x1cdc894
0x1cdc7a0: mov      x1, xzr
0x1cdc7a4: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1cdc7a8: ldr      x8, [x22]
0x1cdc7ac: mov      x21, x0
0x1cdc7b0: ldr      w9, [x8, #0xe0]
0x1cdc7b4: cbnz     w9, #0x1cdc7c0
0x1cdc7b8: mov      x0, x8
0x1cdc7bc: bl       #0x1b646a4 | 
0x1cdc7c0: mov      x0, x21
0x1cdc7c4: mov      x1, xzr
0x1cdc7c8: bl       #0x3c652c4 | UnityEngine.Object$$Destroy
0x1cdc7cc: ldr      x0, [x20, #0x48]
0x1cdc7d0: cbz      x0, #0x1cdc894
0x1cdc7d4: fmov     s0, #1.00000000
0x1cdc7d8: b        #0x1cdc800 | 
0x1cdc7dc: cbz      x0, #0x1cdc894
0x1cdc7e0: fsub     s0, s8, s0
0x1cdc7e4: fdiv     s0, s0, s8
0x1cdc7e8: mov      x1, xzr
0x1cdc7ec: bl       #0x3c183b0 | UnityEngine.AudioSource$$set_volume
0x1cdc7f0: ldr      x0, [x20, #0x48]
0x1cdc7f4: cbz      x0, #0x1cdc894
0x1cdc7f8: ldr      s0, [x20, #0x90]
0x1cdc7fc: fdiv     s0, s0, s8
0x1cdc800: mov      x1, xzr
0x1cdc804: bl       #0x3c183b0 | UnityEngine.AudioSource$$set_volume
0x1cdc808: ldr      x0, [x20, #0x78]
0x1cdc80c: cbz      x0, #0x1cdc894
0x1cdc810: ldr      s0, [x20, #0x90]
0x1cdc814: ldp      s1, s2, [x19, #0x28]
0x1cdc818: fmov     s3, #0.25000000
0x1cdc81c: mov      x1, xzr
0x1cdc820: fmul     s0, s0, s3
0x1cdc824: fmul     s0, s0, s0
0x1cdc828: fmov     s3, #1.00000000
0x1cdc82c: fsub     s2, s2, s1
0x1cdc830: fmin     s0, s0, s3
0x1cdc834: fmul     s0, s0, s2
0x1cdc838: fadd     s0, s1, s0
0x1cdc83c: bl       #0x3c1fae8 | UnityEngine.Camera$$set_orthographicSize
0x1cdc840: ldr      s8, [x20, #0x90]
0x1cdc844: mov      x0, xzr
0x1cdc848: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1cdc84c: fadd     s0, s8, s0
0x1cdc850: str      s0, [x20, #0x90]
0x1cdc854: adrp     x8, #0x4185000
0x1cdc858: ldr      x8, [x8, #0x848]
0x1cdc85c: add      x1, sp, #0xc
0x1cdc860: str      wzr, [sp, #0xc]
0x1cdc864: ldr      x0, [x8]
0x1cdc868: bl       #0x1b646ac | 
0x1cdc86c: str      x0, [x19, #0x18]
0x1cdc870: mov      w8, #3
0x1cdc874: str      w8, [x19, #0x10]
0x1cdc878: mov      w0, #1
0x1cdc87c: ldp      x20, x19, [sp, #0x30]
0x1cdc880: ldp      x22, x21, [sp, #0x20]
0x1cdc884: ldr      x30, [sp, #0x18]
0x1cdc888: ldr      d8, [sp, #0x10]
0x1cdc88c: add      sp, sp, #0x40
0x1cdc890: ret      
0x1cdc894: bl       #0x1b647c8 | 

// 0x1cdc898 FakeAboutUsControl.<PlayUnlock>d__18$$System.Collections.Generic.IEnumerator<System.Object>.get_Current
0x1cdc898: ldr      x0, [x0, #0x18]
0x1cdc89c: ret      

// 0x1cdc8a0 FakeAboutUsControl.<PlayUnlock>d__18$$System.Collections.IEnumerator.Reset
0x1cdc8a0: stp      x30, x19, [sp, #-0x10]!
0x1cdc8a4: adrp     x0, #0x4185000
0x1cdc8a8: ldr      x0, [x0, #0xc78]
0x1cdc8ac: bl       #0x1b64584 | 
0x1cdc8b0: bl       #0x1b647b8 | 
0x1cdc8b4: mov      x1, xzr
0x1cdc8b8: mov      x19, x0
0x1cdc8bc: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1cdc8c0: adrp     x0, #0x4189000
0x1cdc8c4: ldr      x0, [x0, #0x708]
0x1cdc8c8: bl       #0x1b64584 | 
0x1cdc8cc: mov      x1, x0
0x1cdc8d0: mov      x0, x19
0x1cdc8d4: bl       #0x1b64694 | 

// 0x1cdc8d8 FakeAboutUsControl.<PlayUnlock>d__18$$System.Collections.IEnumerator.get_Current
0x1cdc8d8: ldr      x0, [x0, #0x18]
0x1cdc8dc: ret      

// 0x1cdc8e0 FakeAboutUsControl.<StartLevel>d__20$$System.IDisposable.Dispose
0x1cdc8e0: ret      

// 0x1cdc8e4 FakeAboutUsControl.<StartLevel>d__20$$MoveNext
0x1cdc8e4: sub      sp, sp, #0x30
0x1cdc8e8: str      d8, [sp, #0x10]
0x1cdc8ec: str      x30, [sp, #0x18]
0x1cdc8f0: stp      x20, x19, [sp, #0x20]
0x1cdc8f4: adrp     x20, #0x4475000
0x1cdc8f8: ldrb     w8, [x20, #0x9b8]
0x1cdc8fc: mov      x19, x0
0x1cdc900: tbnz     w8, #0, #0x1cdc948
0x1cdc904: adrp     x0, #0x4185000
0x1cdc908: ldr      x0, [x0, #0x848]
0x1cdc90c: bl       #0x1b64570 | 
0x1cdc910: adrp     x0, #0x4186000
0x1cdc914: ldr      x0, [x0, #0xe60]
0x1cdc918: bl       #0x1b64570 | 
0x1cdc91c: adrp     x0, #0x4185000
0x1cdc920: ldr      x0, [x0, #0x208]
0x1cdc924: bl       #0x1b64570 | 
0x1cdc928: adrp     x0, #0x4186000
0x1cdc92c: ldr      x0, [x0, #0xe30]
0x1cdc930: bl       #0x1b64570 | 
0x1cdc934: adrp     x0, #0x4188000
0x1cdc938: ldr      x0, [x0, #0xf40] | 0x4188f40 'Level'
0x1cdc93c: bl       #0x1b64570 | 
0x1cdc940: mov      w8, #1
0x1cdc944: strb     w8, [x20, #0x9b8]
0x1cdc948: ldr      w8, [x19, #0x10]
0x1cdc94c: cmp      w8, #2
0x1cdc950: b.hs     #0x1cdca04
0x1cdc954: ldr      x20, [x19, #0x20]
0x1cdc958: mov      w8, #-1
0x1cdc95c: str      w8, [x19, #0x10]
0x1cdc960: cbz      x20, #0x1cdca54
0x1cdc964: ldr      s8, [x20, #0x8c]
0x1cdc968: mov      w8, #0x41ec0000
0x1cdc96c: fmov     s0, w8
0x1cdc970: fcmp     s8, s0
0x1cdc974: b.ls     #0x1cdca0c
0x1cdc978: ldr      x0, [x20, #0x38]
0x1cdc97c: cbz      x0, #0x1cdca54
0x1cdc980: ldr      x8, [x0]
0x1cdc984: fmov     s0, wzr
0x1cdc988: fmov     s1, wzr
0x1cdc98c: fmov     s2, wzr
0x1cdc990: ldr      x9, [x8, #0x2a8]
0x1cdc994: ldr      x1, [x8, #0x2b0]
0x1cdc998: fmov     s3, #1.00000000
0x1cdc99c: blr      x9
0x1cdc9a0: adrp     x8, #0x4185000
0x1cdc9a4: ldr      x8, [x8, #0x208]
0x1cdc9a8: ldr      x19, [x20, #0x30]
0x1cdc9ac: ldr      x0, [x8]
0x1cdc9b0: ldr      w8, [x0, #0xe0]
0x1cdc9b4: cbnz     w8, #0x1cdc9bc
0x1cdc9b8: bl       #0x1b646a4 | 
0x1cdc9bc: adrp     x8, #0x4186000
0x1cdc9c0: ldr      x8, [x8, #0xe60]
0x1cdc9c4: mov      x0, x19
0x1cdc9c8: ldr      x1, [x8]
0x1cdc9cc: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1cdc9d0: mov      x1, xzr
0x1cdc9d4: bl       #0x3c65590 | UnityEngine.Object$$DontDestroyOnLoad
0x1cdc9d8: adrp     x8, #0x4186000
0x1cdc9dc: ldr      x8, [x8, #0xe30]
0x1cdc9e0: ldr      x0, [x8]
0x1cdc9e4: ldr      w8, [x0, #0xe0]
0x1cdc9e8: cbnz     w8, #0x1cdc9f0
0x1cdc9ec: bl       #0x1b646a4 | 
0x1cdc9f0: adrp     x8, #0x4188000
0x1cdc9f4: ldr      x8, [x8, #0xf40] | 0x4188f40 'Level'
0x1cdc9f8: mov      x1, xzr
0x1cdc9fc: ldr      x0, [x8]
0x1cdca00: bl       #0x3c75460 | UnityEngine.SceneManagement.SceneManager$$LoadScene
0x1cdca04: mov      w0, wzr
0x1cdca08: b        #0x1cdca40 | 
0x1cdca0c: mov      x0, xzr
0x1cdca10: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1cdca14: fadd     s0, s8, s0
0x1cdca18: str      s0, [x20, #0x8c]
0x1cdca1c: adrp     x8, #0x4185000
0x1cdca20: ldr      x8, [x8, #0x848]
0x1cdca24: add      x1, sp, #0xc
0x1cdca28: str      wzr, [sp, #0xc]
0x1cdca2c: ldr      x0, [x8]
0x1cdca30: bl       #0x1b646ac | 
0x1cdca34: str      x0, [x19, #0x18]
0x1cdca38: mov      w0, #1
0x1cdca3c: str      w0, [x19, #0x10]
0x1cdca40: ldp      x20, x19, [sp, #0x20]
0x1cdca44: ldr      x30, [sp, #0x18]
0x1cdca48: ldr      d8, [sp, #0x10]
0x1cdca4c: add      sp, sp, #0x30
0x1cdca50: ret      
0x1cdca54: bl       #0x1b647c8 | 

// 0x1cdca58 FakeAboutUsControl.<StartLevel>d__20$$System.Collections.Generic.IEnumerator<System.Object>.get_Current
0x1cdca58: ldr      x0, [x0, #0x18]
0x1cdca5c: ret      

// 0x1cdca60 FakeAboutUsControl.<StartLevel>d__20$$System.Collections.IEnumerator.Reset
0x1cdca60: stp      x30, x19, [sp, #-0x10]!
0x1cdca64: adrp     x0, #0x4185000
0x1cdca68: ldr      x0, [x0, #0xc78]
0x1cdca6c: bl       #0x1b64584 | 
0x1cdca70: bl       #0x1b647b8 | 
0x1cdca74: mov      x1, xzr
0x1cdca78: mov      x19, x0
0x1cdca7c: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1cdca80: adrp     x0, #0x4189000
0x1cdca84: ldr      x0, [x0, #0x710]
0x1cdca88: bl       #0x1b64584 | 
0x1cdca8c: mov      x1, x0
0x1cdca90: mov      x0, x19
0x1cdca94: bl       #0x1b64694 | 

// 0x1cdca98 FakeAboutUsControl.<StartLevel>d__20$$System.Collections.IEnumerator.get_Current
0x1cdca98: ldr      x0, [x0, #0x18]
0x1cdca9c: ret      

// 0x1d0e830 Phigros2.Chapter9.Chapter9SongUnlockSprite$$Awake
0x1d0e830: sub      sp, sp, #0x30
0x1d0e834: stp      xzr, x30, [sp, #8]
0x1d0e838: stp      x20, x19, [sp, #0x20]
0x1d0e83c: mov      x1, xzr
0x1d0e840: mov      x19, x0
0x1d0e844: str      wzr, [sp, #0x1c]
0x1d0e848: strb     wzr, [sp, #0x18]
0x1d0e84c: str      xzr, [sp]
0x1d0e850: bl       #0x1d4cfac | Chapter9MapElement$$Awake
0x1d0e854: mov      x0, x19
0x1d0e858: bl       #0x1d0e8f8 | Phigros2.Chapter9.Chapter9SongUnlockSprite$$SyncRaycastPadding
0x1d0e85c: adrp     x20, #0x4475000
0x1d0e860: ldrb     w8, [x20, #0x8c0]
0x1d0e864: cbnz     w8, #0x1d0e87c
0x1d0e868: adrp     x0, #0x4186000
0x1d0e86c: ldr      x0, [x0, #0xef8]
0x1d0e870: bl       #0x1b64570 | 
0x1d0e874: mov      w8, #1
0x1d0e878: strb     w8, [x20, #0x8c0]
0x1d0e87c: adrp     x8, #0x4186000
0x1d0e880: ldr      x8, [x8, #0xef8]
0x1d0e884: ldr      x8, [x8]
0x1d0e888: ldr      x8, [x8, #0xb8]
0x1d0e88c: ldr      x0, [x8]
0x1d0e890: cbz      x0, #0x1d0e8f4
0x1d0e894: ldr      x1, [x19, #0x38]
0x1d0e898: add      x2, sp, #0x1c
0x1d0e89c: add      x3, sp, #8
0x1d0e8a0: add      x4, sp, #0x18
0x1d0e8a4: mov      x5, sp
0x1d0e8a8: mov      x6, xzr
0x1d0e8ac: bl       #0x1cbcc74 | GameInformation$$CheckSongUnlock
0x1d0e8b0: ldr      w8, [sp, #0x1c]
0x1d0e8b4: ldr      x0, [x19, #0x30]
0x1d0e8b8: cmn      w8, #1
0x1d0e8bc: cset     w9, eq
0x1d0e8c0: strb     w9, [x19, #0x50]
0x1d0e8c4: cbz      x0, #0x1d0e8f4
0x1d0e8c8: cmn      w8, #1
0x1d0e8cc: mov      w8, #0x48
0x1d0e8d0: mov      w9, #0x40
0x1d0e8d4: csel     x8, x9, x8, eq
0x1d0e8d8: ldr      x1, [x19, x8]
0x1d0e8dc: mov      x2, xzr
0x1d0e8e0: bl       #0x3d01294 | UnityEngine.UI.Image$$set_sprite
0x1d0e8e4: ldp      x20, x19, [sp, #0x20]
0x1d0e8e8: ldr      x30, [sp, #0x10]
0x1d0e8ec: add      sp, sp, #0x30
0x1d0e8f0: ret      
0x1d0e8f4: bl       #0x1b647c8 | 

// 0x1d20604 Phigros2.Chapter9.Phase2.Chapter9Phase2Session$$TryCompleteCurrentSong
0x1d20604: sub      sp, sp, #0x30
0x1d20608: stp      x30, x21, [sp, #0x10]
0x1d2060c: stp      x20, x19, [sp, #0x20]
0x1d20610: adrp     x19, #0x4475000
0x1d20614: ldrb     w8, [x19, #0xcd3]
0x1d20618: tbnz     w8, #0, #0x1d20660
0x1d2061c: adrp     x0, #0x418a000
0x1d20620: ldr      x0, [x0, #0x88]
0x1d20624: bl       #0x1b64570 | 
0x1d20628: adrp     x0, #0x4185000
0x1d2062c: ldr      x0, [x0, #0x848]
0x1d20630: bl       #0x1b64570 | 
0x1d20634: adrp     x0, #0x418b000
0x1d20638: ldr      x0, [x0, #0x128]
0x1d2063c: bl       #0x1b64570 | 
0x1d20640: adrp     x0, #0x418b000
0x1d20644: ldr      x0, [x0, #0x168] | 0x418b168 'No prepared BaselineChallenge song is awaiting completion.'
0x1d20648: bl       #0x1b64570 | 
0x1d2064c: adrp     x0, #0x418b000
0x1d20650: ldr      x0, [x0, #0x170] | 0x418b170 'Song {0} cannot complete while the session stage is {1}.'
0x1d20654: bl       #0x1b64570 | 
0x1d20658: mov      w8, #1
0x1d2065c: strb     w8, [x19, #0xcd3]
0x1d20660: adrp     x20, #0x4475000
0x1d20664: adrp     x19, #0x418a000
0x1d20668: ldrb     w8, [x20, #0xb3c]
0x1d2066c: ldr      x19, [x19, #0x88]
0x1d20670: cbnz     w8, #0x1d20688
0x1d20674: adrp     x0, #0x418a000
0x1d20678: ldr      x0, [x0, #0x88]
0x1d2067c: bl       #0x1b64570 | 
0x1d20680: mov      w8, #1
0x1d20684: strb     w8, [x20, #0xb3c]
0x1d20688: ldr      x9, [x19]
0x1d2068c: ldr      x8, [x9, #0xb8]
0x1d20690: ldrb     w10, [x8, #9]
0x1d20694: cbz      w10, #0x1d20760
0x1d20698: ldrb     w10, [x8, #8]
0x1d2069c: cbz      w10, #0x1d20760
0x1d206a0: adrp     x20, #0x4475000
0x1d206a4: ldrb     w10, [x20, #0xd5c]
0x1d206a8: cbnz     w10, #0x1d206c4
0x1d206ac: mov      x0, x19
0x1d206b0: bl       #0x1b64570 | 
0x1d206b4: ldr      x9, [x19]
0x1d206b8: mov      w8, #1
0x1d206bc: strb     w8, [x20, #0xd5c]
0x1d206c0: ldr      x8, [x9, #0xb8]
0x1d206c4: ldr      w10, [x8, #0x10]
0x1d206c8: cmp      w10, #2
0x1d206cc: b.eq     #0x1d20770
0x1d206d0: cmp      w10, #1
0x1d206d4: b.eq     #0x1d207cc
0x1d206d8: cbnz     w10, #0x1d20860
0x1d206dc: adrp     x21, #0x4475000
0x1d206e0: ldrb     w10, [x21, #0xb3d]
0x1d206e4: cbnz     w10, #0x1d20700
0x1d206e8: mov      x0, x19
0x1d206ec: bl       #0x1b64570 | 
0x1d206f0: ldr      x9, [x19]
0x1d206f4: mov      w8, #1
0x1d206f8: strb     w8, [x21, #0xb3d]
0x1d206fc: ldr      x8, [x9, #0xb8]
0x1d20700: ldr      w10, [x8, #0xc]
0x1d20704: cmp      w10, #1
0x1d20708: b.ne     #0x1d20860
0x1d2070c: adrp     x20, #0x4475000
0x1d20710: ldrb     w9, [x20, #0xd5e]
0x1d20714: cbnz     w9, #0x1d20730
0x1d20718: mov      x0, x19
0x1d2071c: bl       #0x1b64570 | 
0x1d20720: ldr      x8, [x19]
0x1d20724: mov      w9, #1
0x1d20728: strb     w9, [x20, #0xd5e]
0x1d2072c: ldr      x8, [x8, #0xb8]
0x1d20730: mov      w20, #1
0x1d20734: str      w20, [x8, #0x10]
0x1d20738: adrp     x21, #0x4475000
0x1d2073c: ldrb     w9, [x21, #0xd5f]
0x1d20740: cbnz     w9, #0x1d20758
0x1d20744: mov      x0, x19
0x1d20748: bl       #0x1b64570 | 
0x1d2074c: ldr      x8, [x19]
0x1d20750: strb     w20, [x21, #0xd5f]
0x1d20754: ldr      x8, [x8, #0xb8]
0x1d20758: mov      w9, #2
0x1d2075c: b        #0x1d20850 | 
0x1d20760: adrp     x8, #0x418b000
0x1d20764: ldr      x8, [x8, #0x168] | 0x418b168 'No prepared BaselineChallenge song is awaiting completion.'
0x1d20768: ldr      x0, [x8]
0x1d2076c: b        #0x1d20904 | 
0x1d20770: adrp     x21, #0x4475000
0x1d20774: ldrb     w10, [x21, #0xb3d]
0x1d20778: cbnz     w10, #0x1d20794
0x1d2077c: mov      x0, x19
0x1d20780: bl       #0x1b64570 | 
0x1d20784: ldr      x9, [x19]
0x1d20788: mov      w8, #1
0x1d2078c: strb     w8, [x21, #0xb3d]
0x1d20790: ldr      x8, [x9, #0xb8]
0x1d20794: ldr      w10, [x8, #0xc]
0x1d20798: cmp      w10, #4
0x1d2079c: b.ne     #0x1d20860
0x1d207a0: adrp     x20, #0x4475000
0x1d207a4: ldrb     w9, [x20, #0xd5f]
0x1d207a8: cbnz     w9, #0x1d207c4
0x1d207ac: mov      x0, x19
0x1d207b0: bl       #0x1b64570 | 
0x1d207b4: ldr      x8, [x19]
0x1d207b8: mov      w9, #1
0x1d207bc: strb     w9, [x20, #0xd5f]
0x1d207c0: ldr      x8, [x8, #0xb8]
0x1d207c4: mov      w9, #5
0x1d207c8: b        #0x1d20850 | 
0x1d207cc: adrp     x21, #0x4475000
0x1d207d0: ldrb     w10, [x21, #0xb3d]
0x1d207d4: cbnz     w10, #0x1d207f0
0x1d207d8: mov      x0, x19
0x1d207dc: bl       #0x1b64570 | 
0x1d207e0: ldr      x9, [x19]
0x1d207e4: mov      w8, #1
0x1d207e8: strb     w8, [x21, #0xb3d]
0x1d207ec: ldr      x8, [x9, #0xb8]
0x1d207f0: ldr      w10, [x8, #0xc]
0x1d207f4: cmp      w10, #3
0x1d207f8: b.ne     #0x1d20860
0x1d207fc: adrp     x20, #0x4475000
0x1d20800: ldrb     w9, [x20, #0xd5e]
0x1d20804: cbnz     w9, #0x1d20820
0x1d20808: mov      x0, x19
0x1d2080c: bl       #0x1b64570 | 
0x1d20810: ldr      x8, [x19]
0x1d20814: mov      w9, #1
0x1d20818: strb     w9, [x20, #0xd5e]
0x1d2081c: ldr      x8, [x8, #0xb8]
0x1d20820: mov      w9, #2
0x1d20824: str      w9, [x8, #0x10]
0x1d20828: adrp     x20, #0x4475000
0x1d2082c: ldrb     w9, [x20, #0xd5f]
0x1d20830: cbnz     w9, #0x1d2084c
0x1d20834: mov      x0, x19
0x1d20838: bl       #0x1b64570 | 
0x1d2083c: ldr      x8, [x19]
0x1d20840: mov      w9, #1
0x1d20844: strb     w9, [x20, #0xd5f]
0x1d20848: ldr      x8, [x8, #0xb8]
0x1d2084c: mov      w9, #4
0x1d20850: mov      w0, #1
0x1d20854: str      w9, [x8, #0xc]
0x1d20858: strb     wzr, [x8, #8]
0x1d2085c: b        #0x1d2090c | 
0x1d20860: ldrb     w8, [x20, #0xd5c]
0x1d20864: cbnz     w8, #0x1d2087c
0x1d20868: mov      x0, x19
0x1d2086c: bl       #0x1b64570 | 
0x1d20870: ldr      x9, [x19]
0x1d20874: mov      w8, #1
0x1d20878: strb     w8, [x20, #0xd5c]
0x1d2087c: ldr      x8, [x9, #0xb8]
0x1d20880: adrp     x9, #0x4185000
0x1d20884: add      x1, sp, #0xc
0x1d20888: ldr      w8, [x8, #0x10]
0x1d2088c: ldr      x9, [x9, #0x848]
0x1d20890: str      w8, [sp, #0xc]
0x1d20894: ldr      x0, [x9]
0x1d20898: bl       #0x1b646ac | 
0x1d2089c: adrp     x21, #0x4475000
0x1d208a0: ldrb     w8, [x21, #0xb3d]
0x1d208a4: mov      x20, x0
0x1d208a8: cbnz     w8, #0x1d208c0
0x1d208ac: adrp     x0, #0x418a000
0x1d208b0: ldr      x0, [x0, #0x88]
0x1d208b4: bl       #0x1b64570 | 
0x1d208b8: mov      w8, #1
0x1d208bc: strb     w8, [x21, #0xb3d]
0x1d208c0: ldr      x8, [x19]
0x1d208c4: adrp     x9, #0x418b000
0x1d208c8: add      x1, sp, #8
0x1d208cc: ldr      x8, [x8, #0xb8]
0x1d208d0: ldr      w8, [x8, #0xc]
0x1d208d4: ldr      x9, [x9, #0x128]
0x1d208d8: str      w8, [sp, #8]
0x1d208dc: ldr      x0, [x9]
0x1d208e0: bl       #0x1b646ac | 
0x1d208e4: adrp     x8, #0x418b000
0x1d208e8: ldr      x8, [x8, #0x170] | 0x418b170 'Song {0} cannot complete while the session stage is {1}.'
0x1d208ec: mov      x2, x0
0x1d208f0: mov      x1, x20
0x1d208f4: mov      x3, xzr
0x1d208f8: ldr      x8, [x8]
0x1d208fc: mov      x0, x8
0x1d20900: bl       #0x3308cc4 | System.String$$Format
0x1d20904: bl       #0x1d1f59c | Phigros2.Chapter9.Phase2.Chapter9Phase2Session$$Fail
0x1d20908: mov      w0, wzr
0x1d2090c: ldp      x20, x19, [sp, #0x20]
0x1d20910: ldp      x30, x21, [sp, #0x10]
0x1d20914: add      sp, sp, #0x30
0x1d20918: ret      

// 0x1d2938c UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$get_PasswordIsCorrect
0x1d2938c: str      x30, [sp, #-0x20]!
0x1d29390: stp      x20, x19, [sp, #0x10]
0x1d29394: adrp     x20, #0x4475000
0x1d29398: adrp     x19, #0x4187000
0x1d2939c: ldrb     w8, [x20, #0xd38]
0x1d293a0: ldr      x19, [x19, #0x9c8]
0x1d293a4: tbnz     w8, #0, #0x1d293bc
0x1d293a8: adrp     x0, #0x4187000
0x1d293ac: ldr      x0, [x0, #0x9c8]
0x1d293b0: bl       #0x1b64570 | 
0x1d293b4: mov      w8, #1
0x1d293b8: strb     w8, [x20, #0xd38]
0x1d293bc: ldr      x0, [x19]
0x1d293c0: ldr      w8, [x0, #0xe0]
0x1d293c4: cbnz     w8, #0x1d293d0
0x1d293c8: bl       #0x1b646a4 | 
0x1d293cc: ldr      x0, [x19]
0x1d293d0: ldr      x8, [x0, #0xb8]
0x1d293d4: ldp      x20, x19, [sp, #0x10]
0x1d293d8: ldrh     w0, [x8, #8]
0x1d293dc: ldr      x30, [sp], #0x20
0x1d293e0: ret      

// 0x1d293e4 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$set_PasswordIsCorrect
0x1d293e4: stp      x30, x21, [sp, #-0x20]!
0x1d293e8: stp      x20, x19, [sp, #0x10]
0x1d293ec: adrp     x21, #0x4475000
0x1d293f0: adrp     x20, #0x4187000
0x1d293f4: ldrb     w8, [x21, #0xd39]
0x1d293f8: ldr      x20, [x20, #0x9c8]
0x1d293fc: mov      x19, x0
0x1d29400: tbnz     w8, #0, #0x1d29418
0x1d29404: adrp     x0, #0x4187000
0x1d29408: ldr      x0, [x0, #0x9c8]
0x1d2940c: bl       #0x1b64570 | 
0x1d29410: mov      w8, #1
0x1d29414: strb     w8, [x21, #0xd39]
0x1d29418: ldr      x0, [x20]
0x1d2941c: ldr      w8, [x0, #0xe0]
0x1d29420: cbnz     w8, #0x1d2942c
0x1d29424: bl       #0x1b646a4 | 
0x1d29428: ldr      x0, [x20]
0x1d2942c: ldr      x8, [x0, #0xb8]
0x1d29430: strh     w19, [x8, #8]
0x1d29434: ldp      x20, x19, [sp, #0x10]
0x1d29438: ldp      x30, x21, [sp], #0x20
0x1d2943c: ret      

// 0x1d29440 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$.cctor
0x1d29440: str      x30, [sp, #-0x30]!
0x1d29444: stp      x22, x21, [sp, #0x10]
0x1d29448: stp      x20, x19, [sp, #0x20]
0x1d2944c: adrp     x20, #0x4475000
0x1d29450: adrp     x19, #0x4188000
0x1d29454: ldrb     w8, [x20, #0xd3a]
0x1d29458: ldr      x19, [x19, #0x9f8]
0x1d2945c: tbnz     w8, #0, #0x1d294a4
0x1d29460: adrp     x0, #0x4188000
0x1d29464: ldr      x0, [x0, #0x9f8]
0x1d29468: bl       #0x1b64570 | 
0x1d2946c: adrp     x0, #0x4187000
0x1d29470: ldr      x0, [x0, #0x9c8]
0x1d29474: bl       #0x1b64570 | 
0x1d29478: adrp     x0, #0x418b000
0x1d2947c: ldr      x0, [x0, #0x490]
0x1d29480: bl       #0x1b64570 | 
0x1d29484: adrp     x0, #0x418b000
0x1d29488: ldr      x0, [x0, #0x498]
0x1d2948c: bl       #0x1b64570 | 
0x1d29490: adrp     x0, #0x4187000
0x1d29494: ldr      x0, [x0, #0xb38] | 0x4187b38 '0'
0x1d29498: bl       #0x1b64570 | 
0x1d2949c: mov      w8, #1
0x1d294a0: strb     w8, [x20, #0xd3a]
0x1d294a4: ldr      x0, [x19]
0x1d294a8: adrp     x21, #0x4187000
0x1d294ac: adrp     x22, #0x418b000
0x1d294b0: adrp     x19, #0x418b000
0x1d294b4: adrp     x20, #0x4187000
0x1d294b8: ldr      w8, [x0, #0xe0]
0x1d294bc: ldr      x21, [x21, #0x9c8]
0x1d294c0: ldr      x22, [x22, #0x498]
0x1d294c4: ldr      x19, [x19, #0x490]
0x1d294c8: ldr      x20, [x20, #0xb38] | 0x4187b38 '0'
0x1d294cc: cbnz     w8, #0x1d294d4
0x1d294d0: bl       #0x1b646a4 | 
0x1d294d4: mov      x0, xzr
0x1d294d8: bl       #0x3335dc8 | System.Security.Cryptography.Aes$$Create
0x1d294dc: ldr      x8, [x21]
0x1d294e0: ldr      x8, [x8, #0xb8]
0x1d294e4: str      x0, [x8]
0x1d294e8: ldr      x0, [x22]
0x1d294ec: bl       #0x1b647b8 | 
0x1d294f0: ldr      x1, [x19]
0x1d294f4: mov      x19, x0
0x1d294f8: bl       #0x2a11200 | System.Collections.Generic.Dictionary<object, object>$$.ctor
0x1d294fc: ldr      x8, [x21]
0x1d29500: ldp      x22, x21, [sp, #0x10]
0x1d29504: ldr      x8, [x8, #0xb8]
0x1d29508: str      x19, [x8, #0x18]
0x1d2950c: ldr      x0, [x20]
0x1d29510: ldp      x20, x19, [sp, #0x20]
0x1d29514: ldr      x30, [sp], #0x30
0x1d29518: b        #0x1d2951c | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$SetPassword

// 0x1d2951c UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$SetPassword
0x1d2951c: sub      sp, sp, #0x80
0x1d29520: stp      x30, x25, [sp, #0x40]
0x1d29524: stp      x24, x23, [sp, #0x50]
0x1d29528: stp      x22, x21, [sp, #0x60]
0x1d2952c: stp      x20, x19, [sp, #0x70]
0x1d29530: adrp     x19, #0x4475000
0x1d29534: ldrb     w8, [x19, #0xd3b]
0x1d29538: mov      x20, x0
0x1d2953c: tbnz     w8, #0, #0x1d295c0
0x1d29540: adrp     x0, #0x418b000
0x1d29544: ldr      x0, [x0, #0x4a0]
0x1d29548: bl       #0x1b64570 | 
0x1d2954c: adrp     x0, #0x418b000
0x1d29550: ldr      x0, [x0, #0x4a8]
0x1d29554: bl       #0x1b64570 | 
0x1d29558: adrp     x0, #0x4187000
0x1d2955c: ldr      x0, [x0, #0x2b8]
0x1d29560: bl       #0x1b64570 | 
0x1d29564: adrp     x0, #0x418b000
0x1d29568: ldr      x0, [x0, #0x4b0]
0x1d2956c: bl       #0x1b64570 | 
0x1d29570: adrp     x0, #0x4187000
0x1d29574: ldr      x0, [x0, #0x9c8]
0x1d29578: bl       #0x1b64570 | 
0x1d2957c: adrp     x0, #0x4185000
0x1d29580: ldr      x0, [x0, #0x430]
0x1d29584: bl       #0x1b64570 | 
0x1d29588: adrp     x0, #0x418b000
0x1d2958c: ldr      x0, [x0, #0x4b8]
0x1d29590: bl       #0x1b64570 | 
0x1d29594: adrp     x0, #0x418b000
0x1d29598: ldr      x0, [x0, #0x4c0]
0x1d2959c: bl       #0x1b64570 | 
0x1d295a0: adrp     x0, #0x418b000
0x1d295a4: ldr      x0, [x0, #0x4c8]
0x1d295a8: bl       #0x1b64570 | 
0x1d295ac: adrp     x0, #0x418b000
0x1d295b0: ldr      x0, [x0, #0x4d0] | 0x418b4d0 'c9s.test'
0x1d295b4: bl       #0x1b64570 | 
0x1d295b8: mov      w8, #1
0x1d295bc: strb     w8, [x19, #0xd3b]
0x1d295c0: adrp     x23, #0x4185000
0x1d295c4: ldr      x23, [x23, #0x430]
0x1d295c8: mov      x0, xzr
0x1d295cc: stp      xzr, xzr, [sp, #0x20]
0x1d295d0: str      xzr, [sp, #0x30]
0x1d295d4: bl       #0x33433e4 | System.Security.Cryptography.SHA512$$Create
0x1d295d8: mov      x19, x0
0x1d295dc: mov      x0, xzr
0x1d295e0: bl       #0x33243f0 | System.Text.Encoding$$get_UTF8
0x1d295e4: cbz      x0, #0x1d29884
0x1d295e8: ldr      x8, [x0]
0x1d295ec: ldr      x9, [x8, #0x258]
0x1d295f0: ldr      x2, [x8, #0x260]
0x1d295f4: mov      x1, x20
0x1d295f8: blr      x9
0x1d295fc: mov      x1, x0
0x1d29600: cbz      x19, #0x1d29888
0x1d29604: mov      x0, x19
0x1d29608: mov      x2, xzr
0x1d2960c: bl       #0x3335454 | System.Security.Cryptography.HashAlgorithm$$ComputeHash
0x1d29610: adrp     x24, #0x4187000
0x1d29614: ldr      x24, [x24, #0x9c8]
0x1d29618: mov      x20, x0
0x1d2961c: ldr      x0, [x24]
0x1d29620: ldr      w8, [x0, #0xe0]
0x1d29624: cbnz     w8, #0x1d29630
0x1d29628: bl       #0x1b646a4 | 
0x1d2962c: ldr      x0, [x24]
0x1d29630: ldr      x8, [x0, #0xb8]
0x1d29634: ldr      x21, [x8]
0x1d29638: mov      w0, #0x20
0x1d2963c: mov      x1, xzr
0x1d29640: bl       #0x3476990 | System.Index$$op_Implicit
0x1d29644: and      x0, x0, #0xffffffff
0x1d29648: mov      x1, xzr
0x1d2964c: bl       #0x348c4c4 | System.Range$$EndAt
0x1d29650: mov      x1, x0
0x1d29654: adrp     x25, #0x418b000
0x1d29658: ldr      x25, [x25, #0x4b8]
0x1d2965c: ldr      x2, [x25]
0x1d29660: mov      x0, x20
0x1d29664: bl       #0x1feec60 | System.Runtime.CompilerServices.RuntimeHelpers$$GetSubArray<byte>
0x1d29668: mov      x1, x0
0x1d2966c: cbz      x21, #0x1d2988c
0x1d29670: ldr      x8, [x21]
0x1d29674: ldp      x9, x2, [x8, #0x1f8]
0x1d29678: mov      x0, x21
0x1d2967c: blr      x9
0x1d29680: ldr      x8, [x24]
0x1d29684: ldr      x8, [x8, #0xb8]
0x1d29688: ldr      x21, [x8]
0x1d2968c: mov      w0, #0x20
0x1d29690: mov      x1, xzr
0x1d29694: bl       #0x3476990 | System.Index$$op_Implicit
0x1d29698: mov      x22, x0
0x1d2969c: mov      w0, #0x30
0x1d296a0: mov      x1, xzr
0x1d296a4: bl       #0x3476990 | System.Index$$op_Implicit
0x1d296a8: and      x1, x22, #0xffffffff
0x1d296ac: str      xzr, [sp, #0x18]
0x1d296b0: and      x2, x0, #0xffffffff
0x1d296b4: add      x0, sp, #0x18
0x1d296b8: mov      x3, xzr
0x1d296bc: bl       #0x348c058 | System.Range$$.ctor
0x1d296c0: ldr      x1, [sp, #0x18]
0x1d296c4: ldr      x2, [x25]
0x1d296c8: mov      x0, x20
0x1d296cc: bl       #0x1feec60 | System.Runtime.CompilerServices.RuntimeHelpers$$GetSubArray<byte>
0x1d296d0: mov      x1, x0
0x1d296d4: cbz      x21, #0x1d29890
0x1d296d8: ldr      x8, [x21]
0x1d296dc: ldp      x9, x2, [x8, #0x1d8]
0x1d296e0: mov      x0, x21
0x1d296e4: blr      x9
0x1d296e8: adrp     x20, #0x4475000
0x1d296ec: ldrb     w8, [x20, #0xd63]
0x1d296f0: cbnz     w8, #0x1d29708
0x1d296f4: adrp     x0, #0x4187000
0x1d296f8: ldr      x0, [x0, #0x9c8]
0x1d296fc: bl       #0x1b64570 | 
0x1d29700: mov      w8, #1
0x1d29704: strb     w8, [x20, #0xd63]
0x1d29708: ldr      x0, [x24]
0x1d2970c: ldr      w8, [x0, #0xe0]
0x1d29710: cbnz     w8, #0x1d2971c
0x1d29714: bl       #0x1b646a4 | 
0x1d29718: ldr      x0, [x24]
0x1d2971c: ldr      x8, [x0, #0xb8]
0x1d29720: adrp     x9, #0x4187000
0x1d29724: ldr      x9, [x9, #0x2b8]
0x1d29728: strh     wzr, [x8, #8]
0x1d2972c: ldr      x0, [x9]
0x1d29730: ldr      w8, [x0, #0xe0]
0x1d29734: cbnz     w8, #0x1d2973c
0x1d29738: bl       #0x1b646a4 | 
0x1d2973c: adrp     x8, #0x418b000
0x1d29740: adrp     x9, #0x418b000
0x1d29744: ldr      x8, [x8, #0x4d0] | 0x418b4d0 'c9s.test'
0x1d29748: ldr      x9, [x9, #0x4a8]
0x1d2974c: ldr      x0, [x8]
0x1d29750: ldr      x1, [x9]
0x1d29754: mov      x8, sp
0x1d29758: bl       #0x2087b9c | UnityEngine.AddressableAssets.Addressables$$LoadAssetAsync<object>
0x1d2975c: adrp     x22, #0x418b000
0x1d29760: ldr      x22, [x22, #0x4c8]
0x1d29764: ldr      q0, [sp]
0x1d29768: ldr      x9, [sp, #0x10]
0x1d2976c: ldr      x8, [x22]
0x1d29770: str      q0, [sp, #0x20]
0x1d29774: str      x9, [sp, #0x30]
0x1d29778: ldr      w9, [x8, #0xe0]
0x1d2977c: cbnz     w9, #0x1d2978c
0x1d29780: mov      x0, x8
0x1d29784: bl       #0x1b646a4 | 
0x1d29788: ldr      x8, [x22]
0x1d2978c: ldr      x9, [x8, #0xb8]
0x1d29790: ldr      x20, [x9, #8]
0x1d29794: cbnz     x20, #0x1d297ec
0x1d29798: ldr      w9, [x8, #0xe0]
0x1d2979c: cbnz     w9, #0x1d297ac
0x1d297a0: mov      x0, x8
0x1d297a4: bl       #0x1b646a4 | 
0x1d297a8: ldr      x8, [x22]
0x1d297ac: adrp     x9, #0x418b000
0x1d297b0: ldr      x8, [x8, #0xb8]
0x1d297b4: ldr      x9, [x9, #0x4a0]
0x1d297b8: ldr      x21, [x8]
0x1d297bc: ldr      x0, [x9]
0x1d297c0: bl       #0x1b647b8 | 
0x1d297c4: adrp     x8, #0x418b000
0x1d297c8: ldr      x8, [x8, #0x4c0]
0x1d297cc: mov      x20, x0
0x1d297d0: ldr      x2, [x8]
0x1d297d4: mov      x1, x21
0x1d297d8: mov      x3, xzr
0x1d297dc: bl       #0x3033488 | System.Action<AsyncOperationHandle<object>>$$.ctor
0x1d297e0: ldr      x8, [x22]
0x1d297e4: ldr      x8, [x8, #0xb8]
0x1d297e8: str      x20, [x8, #8]
0x1d297ec: adrp     x8, #0x418b000
0x1d297f0: ldr      x8, [x8, #0x4b0]
0x1d297f4: ldr      x2, [x8]
0x1d297f8: add      x0, sp, #0x20
0x1d297fc: mov      x1, x20
0x1d29800: bl       #0x2779148 | UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle<object>$$add_Completed
0x1d29804: mov      x20, xzr
0x1d29808: ldr      x8, [x19]
0x1d2980c: ldr      x1, [x23]
0x1d29810: ldrh     w9, [x8, #0x12e]
0x1d29814: cbz      x9, #0x1d29838
0x1d29818: ldr      x10, [x8, #0xb0]
0x1d2981c: add      x10, x10, #8
0x1d29820: ldur     x11, [x10, #-8]
0x1d29824: cmp      x11, x1
0x1d29828: b.eq     #0x1d29848
0x1d2982c: subs     x9, x9, #1
0x1d29830: add      x10, x10, #0x10
0x1d29834: b.ne     #0x1d29820
0x1d29838: mov      x0, x19
0x1d2983c: mov      w2, wzr
0x1d29840: bl       #0x1bc5638 | 
0x1d29844: b        #0x1d29854 | 
0x1d29848: ldrsw    x9, [x10]
0x1d2984c: add      x8, x8, x9, lsl #4
0x1d29850: add      x0, x8, #0x138
0x1d29854: ldp      x8, x1, [x0]
0x1d29858: mov      x0, x19
0x1d2985c: blr      x8
0x1d29860: cbnz     x20, #0x1d2987c
0x1d29864: ldp      x20, x19, [sp, #0x70]
0x1d29868: ldp      x22, x21, [sp, #0x60]
0x1d2986c: ldp      x24, x23, [sp, #0x50]
0x1d29870: ldp      x30, x25, [sp, #0x40]
0x1d29874: add      sp, sp, #0x80
0x1d29878: ret      
0x1d2987c: mov      x0, x20
0x1d29880: bl       #0x1b647c0 | 
0x1d29884: bl       #0x1b647c8 | 
0x1d29888: bl       #0x1b647c8 | 
0x1d2988c: bl       #0x1b647c8 | 
0x1d29890: bl       #0x1b647c8 | 
0x1d29894: b        #0x1d298d0 | 
0x1d29898: b        #0x1d298d0 | 
0x1d2989c: b        #0x1d298d0 | 
0x1d298a0: b        #0x1d298d0 | 
0x1d298a4: b        #0x1d298d0 | 
0x1d298a8: b        #0x1d298d0 | 
0x1d298ac: b        #0x1d298d0 | 
0x1d298b0: b        #0x1d298d0 | 
0x1d298b4: b        #0x1d298d0 | 
0x1d298b8: b        #0x1d298d0 | 
0x1d298bc: b        #0x1d298d0 | 
0x1d298c0: b        #0x1d298d0 | 
0x1d298c4: b        #0x1d298d0 | 
0x1d298c8: b        #0x1d298d0 | 
0x1d298cc: b        #0x1d298d0 | 
0x1d298d0: mov      x21, x0
0x1d298d4: cmp      w1, #1
0x1d298d8: b.ne     #0x1d298f4
0x1d298dc: mov      x0, x21
0x1d298e0: bl       #0x3e998d0 | 
0x1d298e4: ldr      x20, [x0]
0x1d298e8: bl       #0x3e998e0 | 
0x1d298ec: cbnz     x19, #0x1d29808
0x1d298f0: b        #0x1d29860 | 
0x1d298f4: mov      x20, xzr
0x1d298f8: b        #0x1d29900 | 
0x1d298fc: mov      x21, x0
0x1d29900: cbz      x19, #0x1d2995c
0x1d29904: ldr      x8, [x19]
0x1d29908: ldr      x1, [x23]
0x1d2990c: ldrh     w9, [x8, #0x12e]
0x1d29910: cbz      x9, #0x1d29934
0x1d29914: ldr      x10, [x8, #0xb0]
0x1d29918: add      x10, x10, #8
0x1d2991c: ldur     x11, [x10, #-8]
0x1d29920: cmp      x11, x1
0x1d29924: b.eq     #0x1d29944
0x1d29928: subs     x9, x9, #1
0x1d2992c: add      x10, x10, #0x10
0x1d29930: b.ne     #0x1d2991c
0x1d29934: mov      x0, x19
0x1d29938: mov      w2, wzr
0x1d2993c: bl       #0x1bc5638 | 
0x1d29940: b        #0x1d29950 | 
0x1d29944: ldrsw    x9, [x10]
0x1d29948: add      x8, x8, x9, lsl #4
0x1d2994c: add      x0, x8, #0x138
0x1d29950: ldp      x8, x1, [x0]
0x1d29954: mov      x0, x19
0x1d29958: blr      x8
0x1d2995c: cbnz     x20, #0x1d29968
0x1d29960: mov      x0, x21
0x1d29964: bl       #0x1c65b3c | 
0x1d29968: mov      x0, x20
0x1d2996c: bl       #0x1b647c0 | 
0x1d29970: bl       #0x194772c | 

// 0x1d29974 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$EncryptAndWrite
0x1d29974: stp      x30, x23, [sp, #-0x30]!
0x1d29978: stp      x22, x21, [sp, #0x10]
0x1d2997c: stp      x20, x19, [sp, #0x20]
0x1d29980: adrp     x22, #0x4475000
0x1d29984: adrp     x19, #0x4187000
0x1d29988: ldrb     w8, [x22, #0xd3c]
0x1d2998c: ldr      x19, [x19, #0x9c8]
0x1d29990: mov      x20, x1
0x1d29994: mov      x21, x0
0x1d29998: tbnz     w8, #0, #0x1d299c8
0x1d2999c: adrp     x0, #0x4187000
0x1d299a0: ldr      x0, [x0, #0x9c8]
0x1d299a4: bl       #0x1b64570 | 
0x1d299a8: adrp     x0, #0x4188000
0x1d299ac: ldr      x0, [x0, #0x9d8]
0x1d299b0: bl       #0x1b64570 | 
0x1d299b4: adrp     x0, #0x4185000
0x1d299b8: ldr      x0, [x0, #0x430]
0x1d299bc: bl       #0x1b64570 | 
0x1d299c0: mov      w8, #1
0x1d299c4: strb     w8, [x22, #0xd3c]
0x1d299c8: ldr      x0, [x19]
0x1d299cc: ldr      w8, [x0, #0xe0]
0x1d299d0: cbnz     w8, #0x1d299dc
0x1d299d4: bl       #0x1b646a4 | 
0x1d299d8: ldr      x0, [x19]
0x1d299dc: ldr      x8, [x0, #0xb8]
0x1d299e0: ldr      x0, [x8]
0x1d299e4: cbz      x0, #0x1d29ac8
0x1d299e8: ldr      x8, [x0]
0x1d299ec: adrp     x19, #0x4188000
0x1d299f0: adrp     x23, #0x4185000
0x1d299f4: ldr      x9, [x8, #0x278]
0x1d299f8: ldr      x1, [x8, #0x280]
0x1d299fc: ldr      x19, [x19, #0x9d8]
0x1d29a00: ldr      x23, [x23, #0x430]
0x1d29a04: blr      x9
0x1d29a08: ldr      x8, [x19]
0x1d29a0c: mov      x22, x0
0x1d29a10: mov      x0, x8
0x1d29a14: bl       #0x1b647b8 | 
0x1d29a18: mov      w3, #1
0x1d29a1c: mov      x1, x21
0x1d29a20: mov      x2, x22
0x1d29a24: mov      x4, xzr
0x1d29a28: mov      x19, x0
0x1d29a2c: bl       #0x3330cbc | System.Security.Cryptography.CryptoStream$$.ctor
0x1d29a30: cbz      x20, #0x1d29acc
0x1d29a34: cbz      x19, #0x1d29ad8
0x1d29a38: ldr      x8, [x19]
0x1d29a3c: ldr      w3, [x20, #0x18]
0x1d29a40: ldr      x9, [x8, #0x388]
0x1d29a44: ldr      x4, [x8, #0x390]
0x1d29a48: mov      x0, x19
0x1d29a4c: mov      x1, x20
0x1d29a50: mov      w2, wzr
0x1d29a54: blr      x9
0x1d29a58: mov      x20, xzr
0x1d29a5c: ldr      x8, [x19]
0x1d29a60: ldr      x1, [x23]
0x1d29a64: ldrh     w9, [x8, #0x12e]
0x1d29a68: cbz      x9, #0x1d29a8c
0x1d29a6c: ldr      x10, [x8, #0xb0]
0x1d29a70: add      x10, x10, #8
0x1d29a74: ldur     x11, [x10, #-8]
0x1d29a78: cmp      x11, x1
0x1d29a7c: b.eq     #0x1d29a9c
0x1d29a80: subs     x9, x9, #1
0x1d29a84: add      x10, x10, #0x10
0x1d29a88: b.ne     #0x1d29a74
0x1d29a8c: mov      x0, x19
0x1d29a90: mov      w2, wzr
0x1d29a94: bl       #0x1bc5638 | 
0x1d29a98: b        #0x1d29aa8 | 
0x1d29a9c: ldrsw    x9, [x10]
0x1d29aa0: add      x8, x8, x9, lsl #4
0x1d29aa4: add      x0, x8, #0x138
0x1d29aa8: ldp      x8, x1, [x0]
0x1d29aac: mov      x0, x19
0x1d29ab0: blr      x8
0x1d29ab4: cbnz     x20, #0x1d29ad0
0x1d29ab8: ldp      x20, x19, [sp, #0x20]
0x1d29abc: ldp      x22, x21, [sp, #0x10]
0x1d29ac0: ldp      x30, x23, [sp], #0x30
0x1d29ac4: ret      
0x1d29ac8: bl       #0x1b647c8 | 
0x1d29acc: bl       #0x1b647c8 | 
0x1d29ad0: mov      x0, x20
0x1d29ad4: bl       #0x1b647c0 | 
0x1d29ad8: bl       #0x1b647c8 | 
0x1d29adc: cmp      w1, #1
0x1d29ae0: mov      x21, x0
0x1d29ae4: b.ne     #0x1d29b00
0x1d29ae8: mov      x0, x21
0x1d29aec: bl       #0x3e998d0 | 
0x1d29af0: ldr      x20, [x0]
0x1d29af4: bl       #0x3e998e0 | 
0x1d29af8: cbnz     x19, #0x1d29a5c
0x1d29afc: b        #0x1d29ab4 | 
0x1d29b00: mov      x20, xzr
0x1d29b04: b        #0x1d29b0c | 
0x1d29b08: mov      x21, x0
0x1d29b0c: cbz      x19, #0x1d29b68
0x1d29b10: ldr      x8, [x19]
0x1d29b14: ldr      x1, [x23]
0x1d29b18: ldrh     w9, [x8, #0x12e]
0x1d29b1c: cbz      x9, #0x1d29b40
0x1d29b20: ldr      x10, [x8, #0xb0]
0x1d29b24: add      x10, x10, #8
0x1d29b28: ldur     x11, [x10, #-8]
0x1d29b2c: cmp      x11, x1
0x1d29b30: b.eq     #0x1d29b50
0x1d29b34: subs     x9, x9, #1
0x1d29b38: add      x10, x10, #0x10
0x1d29b3c: b.ne     #0x1d29b28
0x1d29b40: mov      x0, x19
0x1d29b44: mov      w2, wzr
0x1d29b48: bl       #0x1bc5638 | 
0x1d29b4c: b        #0x1d29b5c | 
0x1d29b50: ldrsw    x9, [x10]
0x1d29b54: add      x8, x8, x9, lsl #4
0x1d29b58: add      x0, x8, #0x138
0x1d29b5c: ldp      x8, x1, [x0]
0x1d29b60: mov      x0, x19
0x1d29b64: blr      x8
0x1d29b68: cbnz     x20, #0x1d29b74
0x1d29b6c: mov      x0, x21
0x1d29b70: bl       #0x1c65b3c | 
0x1d29b74: mov      x0, x20
0x1d29b78: bl       #0x1b647c0 | 
0x1d29b7c: bl       #0x194772c | 

// 0x1d29b80 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$Decrypt
0x1d29b80: sub      sp, sp, #0x70
0x1d29b84: str      x30, [sp, #0x40]
0x1d29b88: stp      x22, x21, [sp, #0x50]
0x1d29b8c: stp      x20, x19, [sp, #0x60]
0x1d29b90: adrp     x21, #0x4475000
0x1d29b94: adrp     x20, #0x418b000
0x1d29b98: ldrb     w8, [x21, #0xd3d]
0x1d29b9c: ldr      x20, [x20, #0x4d8]
0x1d29ba0: mov      x19, x0
0x1d29ba4: tbnz     w8, #0, #0x1d29be0
0x1d29ba8: adrp     x0, #0x418b000
0x1d29bac: ldr      x0, [x0, #0x4e0]
0x1d29bb0: bl       #0x1b64570 | 
0x1d29bb4: adrp     x0, #0x418b000
0x1d29bb8: ldr      x0, [x0, #0x4e8]
0x1d29bbc: bl       #0x1b64570 | 
0x1d29bc0: adrp     x0, #0x418b000
0x1d29bc4: ldr      x0, [x0, #0x4f0]
0x1d29bc8: bl       #0x1b64570 | 
0x1d29bcc: adrp     x0, #0x418b000
0x1d29bd0: ldr      x0, [x0, #0x4d8]
0x1d29bd4: bl       #0x1b64570 | 
0x1d29bd8: mov      w8, #1
0x1d29bdc: strb     w8, [x21, #0xd3d]
0x1d29be0: ldr      x0, [x20]
0x1d29be4: movi     v0.2d, #0000000000000000
0x1d29be8: stp      q0, q0, [sp, #0x20]
0x1d29bec: stp      q0, q0, [sp]
0x1d29bf0: adrp     x20, #0x418b000
0x1d29bf4: adrp     x22, #0x418b000
0x1d29bf8: adrp     x21, #0x418b000
0x1d29bfc: ldr      w8, [x0, #0xe0]
0x1d29c00: ldr      x20, [x20, #0x4e0]
0x1d29c04: ldr      x22, [x22, #0x4e8]
0x1d29c08: ldr      x21, [x21, #0x4f0]
0x1d29c0c: cbnz     w8, #0x1d29c14
0x1d29c10: bl       #0x1b646a4 | 
0x1d29c14: ldr      x0, [x20]
0x1d29c18: mov      x8, sp
0x1d29c1c: orr      x20, x8, #8
0x1d29c20: mov      x8, x20
0x1d29c24: bl       #0x278a2e4 | System.Runtime.CompilerServices.AsyncTaskMethodBuilder<object>$$Create
0x1d29c28: ldr      x2, [x22]
0x1d29c2c: mov      w8, #-1
0x1d29c30: mov      x1, sp
0x1d29c34: mov      x0, x20
0x1d29c38: str      x19, [sp, #0x20]
0x1d29c3c: str      w8, [sp]
0x1d29c40: bl       #0x1df08e4 | System.Runtime.CompilerServices.AsyncTaskMethodBuilder<object>$$Start<C9SecretAssetBundleProvider.<Decrypt>d__8>
0x1d29c44: ldr      x1, [x21]
0x1d29c48: mov      x0, x20
0x1d29c4c: bl       #0x278a2f8 | System.Runtime.CompilerServices.AsyncTaskMethodBuilder<object>$$get_Task
0x1d29c50: ldp      x20, x19, [sp, #0x60]
0x1d29c54: ldp      x22, x21, [sp, #0x50]
0x1d29c58: ldr      x30, [sp, #0x40]
0x1d29c5c: add      sp, sp, #0x70
0x1d29c60: ret      

// 0x1d29c64 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$add_WaitUntilNextUpdate
0x1d29c64: stp      x30, x23, [sp, #-0x30]!
0x1d29c68: stp      x22, x21, [sp, #0x10]
0x1d29c6c: stp      x20, x19, [sp, #0x20]
0x1d29c70: adrp     x20, #0x4475000
0x1d29c74: adrp     x22, #0x4187000
0x1d29c78: ldrb     w8, [x20, #0xd3e]
0x1d29c7c: ldr      x22, [x22, #0x9c8]
0x1d29c80: mov      x19, x0
0x1d29c84: tbnz     w8, #0, #0x1d29ca8
0x1d29c88: adrp     x0, #0x4186000
0x1d29c8c: ldr      x0, [x0, #0xf18]
0x1d29c90: bl       #0x1b64570 | 
0x1d29c94: adrp     x0, #0x4187000
0x1d29c98: ldr      x0, [x0, #0x9c8]
0x1d29c9c: bl       #0x1b64570 | 
0x1d29ca0: mov      w8, #1
0x1d29ca4: strb     w8, [x20, #0xd3e]
0x1d29ca8: ldr      x0, [x22]
0x1d29cac: ldr      w8, [x0, #0xe0]
0x1d29cb0: cbnz     w8, #0x1d29cbc
0x1d29cb4: bl       #0x1b646a4 | 
0x1d29cb8: ldr      x0, [x22]
0x1d29cbc: ldr      x8, [x0, #0xb8]
0x1d29cc0: adrp     x23, #0x4186000
0x1d29cc4: ldr      x20, [x8, #0x10]
0x1d29cc8: ldr      x23, [x23, #0xf18]
0x1d29ccc: mov      x0, x20
0x1d29cd0: mov      x1, x19
0x1d29cd4: mov      x2, xzr
0x1d29cd8: bl       #0x34c3ce0 | System.Delegate$$Combine
0x1d29cdc: mov      x21, x0
0x1d29ce0: cbz      x0, #0x1d29cf4
0x1d29ce4: ldr      x1, [x23]
0x1d29ce8: ldr      x8, [x21]
0x1d29cec: cmp      x8, x1
0x1d29cf0: b.ne     #0x1d29d38
0x1d29cf4: ldr      x0, [x22]
0x1d29cf8: ldr      w8, [x0, #0xe0]
0x1d29cfc: cbnz     w8, #0x1d29d08
0x1d29d00: bl       #0x1b646a4 | 
0x1d29d04: ldr      x0, [x22]
0x1d29d08: ldr      x8, [x0, #0xb8]
0x1d29d0c: mov      x1, x21
0x1d29d10: mov      x2, x20
0x1d29d14: add      x0, x8, #0x10
0x1d29d18: bl       #0x1b7f76c | 
0x1d29d1c: cmp      x20, x0
0x1d29d20: mov      x20, x0
0x1d29d24: b.ne     #0x1d29ccc
0x1d29d28: ldp      x20, x19, [sp, #0x20]
0x1d29d2c: ldp      x22, x21, [sp, #0x10]
0x1d29d30: ldp      x30, x23, [sp], #0x30
0x1d29d34: ret      
0x1d29d38: mov      x0, x21
0x1d29d3c: bl       #0x1b64b68 | 

// 0x1d29d40 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$remove_WaitUntilNextUpdate
0x1d29d40: stp      x30, x23, [sp, #-0x30]!
0x1d29d44: stp      x22, x21, [sp, #0x10]
0x1d29d48: stp      x20, x19, [sp, #0x20]
0x1d29d4c: adrp     x20, #0x4475000
0x1d29d50: adrp     x22, #0x4187000
0x1d29d54: ldrb     w8, [x20, #0xd3f]
0x1d29d58: ldr      x22, [x22, #0x9c8]
0x1d29d5c: mov      x19, x0
0x1d29d60: tbnz     w8, #0, #0x1d29d84
0x1d29d64: adrp     x0, #0x4186000
0x1d29d68: ldr      x0, [x0, #0xf18]
0x1d29d6c: bl       #0x1b64570 | 
0x1d29d70: adrp     x0, #0x4187000
0x1d29d74: ldr      x0, [x0, #0x9c8]
0x1d29d78: bl       #0x1b64570 | 
0x1d29d7c: mov      w8, #1
0x1d29d80: strb     w8, [x20, #0xd3f]
0x1d29d84: ldr      x0, [x22]
0x1d29d88: ldr      w8, [x0, #0xe0]
0x1d29d8c: cbnz     w8, #0x1d29d98
0x1d29d90: bl       #0x1b646a4 | 
0x1d29d94: ldr      x0, [x22]
0x1d29d98: ldr      x8, [x0, #0xb8]
0x1d29d9c: adrp     x23, #0x4186000
0x1d29da0: ldr      x20, [x8, #0x10]
0x1d29da4: ldr      x23, [x23, #0xf18]
0x1d29da8: mov      x0, x20
0x1d29dac: mov      x1, x19
0x1d29db0: mov      x2, xzr
0x1d29db4: bl       #0x34c3ed8 | System.Delegate$$Remove
0x1d29db8: mov      x21, x0
0x1d29dbc: cbz      x0, #0x1d29dd0
0x1d29dc0: ldr      x1, [x23]
0x1d29dc4: ldr      x8, [x21]
0x1d29dc8: cmp      x8, x1
0x1d29dcc: b.ne     #0x1d29e14
0x1d29dd0: ldr      x0, [x22]
0x1d29dd4: ldr      w8, [x0, #0xe0]
0x1d29dd8: cbnz     w8, #0x1d29de4
0x1d29ddc: bl       #0x1b646a4 | 
0x1d29de0: ldr      x0, [x22]
0x1d29de4: ldr      x8, [x0, #0xb8]
0x1d29de8: mov      x1, x21
0x1d29dec: mov      x2, x20
0x1d29df0: add      x0, x8, #0x10
0x1d29df4: bl       #0x1b7f76c | 
0x1d29df8: cmp      x20, x0
0x1d29dfc: mov      x20, x0
0x1d29e00: b.ne     #0x1d29da8
0x1d29e04: ldp      x20, x19, [sp, #0x20]
0x1d29e08: ldp      x22, x21, [sp, #0x10]
0x1d29e0c: ldp      x30, x23, [sp], #0x30
0x1d29e10: ret      
0x1d29e14: mov      x0, x21
0x1d29e18: bl       #0x1b64b68 | 

// 0x1d29e1c UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$RegisterUpdateReceiver
0x1d29e1c: sub      sp, sp, #0x1d0
0x1d29e20: stp      x29, x30, [sp, #0x170]
0x1d29e24: stp      x28, x27, [sp, #0x180]
0x1d29e28: stp      x26, x25, [sp, #0x190]
0x1d29e2c: stp      x24, x23, [sp, #0x1a0]
0x1d29e30: stp      x22, x21, [sp, #0x1b0]
0x1d29e34: stp      x20, x19, [sp, #0x1c0]
0x1d29e38: adrp     x19, #0x4475000
0x1d29e3c: adrp     x24, #0x418b000
0x1d29e40: ldrb     w8, [x19, #0xd40]
0x1d29e44: ldr      x24, [x24, #0x4c8]
0x1d29e48: add      x25, sp, #0x90
0x1d29e4c: tbnz     w8, #0, #0x1d29ec4
0x1d29e50: adrp     x0, #0x418b000
0x1d29e54: ldr      x0, [x0, #0x4f8]
0x1d29e58: bl       #0x1b64570 | 
0x1d29e5c: adrp     x0, #0x418b000
0x1d29e60: ldr      x0, [x0, #0x500]
0x1d29e64: bl       #0x1b64570 | 
0x1d29e68: adrp     x0, #0x418b000
0x1d29e6c: ldr      x0, [x0, #0x508]
0x1d29e70: bl       #0x1b64570 | 
0x1d29e74: adrp     x0, #0x418b000
0x1d29e78: ldr      x0, [x0, #0x510]
0x1d29e7c: bl       #0x1b64570 | 
0x1d29e80: adrp     x0, #0x4185000
0x1d29e84: ldr      x0, [x0, #0x868]
0x1d29e88: bl       #0x1b64570 | 
0x1d29e8c: adrp     x0, #0x418b000
0x1d29e90: ldr      x0, [x0, #0x518]
0x1d29e94: bl       #0x1b64570 | 
0x1d29e98: adrp     x0, #0x418b000
0x1d29e9c: ldr      x0, [x0, #0x520]
0x1d29ea0: bl       #0x1b64570 | 
0x1d29ea4: adrp     x0, #0x418b000
0x1d29ea8: ldr      x0, [x0, #0x4c8]
0x1d29eac: bl       #0x1b64570 | 
0x1d29eb0: adrp     x0, #0x418b000
0x1d29eb4: ldr      x0, [x0, #0x528]
0x1d29eb8: bl       #0x1b64570 | 
0x1d29ebc: mov      w8, #1
0x1d29ec0: strb     w8, [x19, #0xd40]
0x1d29ec4: add      x8, sp, #0x90
0x1d29ec8: mov      x0, xzr
0x1d29ecc: stp      xzr, xzr, [sp, #0x150]
0x1d29ed0: str      xzr, [sp, #0x160]
0x1d29ed4: stp      xzr, xzr, [sp, #0x140]
0x1d29ed8: stp      xzr, xzr, [sp, #0x100]
0x1d29edc: str      xzr, [sp, #0x110]
0x1d29ee0: stp      xzr, xzr, [sp, #0xe0]
0x1d29ee4: str      xzr, [sp, #0xf0]
0x1d29ee8: bl       #0x3c75b50 | UnityEngine.LowLevel.PlayerLoop$$GetCurrentPlayerLoop
0x1d29eec: ldr      x8, [sp, #0xb0]
0x1d29ef0: ldr      q0, [x25, #0x10]
0x1d29ef4: ldr      x0, [x24]
0x1d29ef8: ldp      x29, x19, [sp, #0x90]
0x1d29efc: str      x8, [sp, #0xd0]
0x1d29f00: str      q0, [x25, #0x30]
0x1d29f04: str      q0, [sp, #0x70]
0x1d29f08: str      x8, [sp, #0x80]
0x1d29f0c: ldr      w8, [x0, #0xe0]
0x1d29f10: cbnz     w8, #0x1d29f1c
0x1d29f14: bl       #0x1b646a4 | 
0x1d29f18: ldr      x0, [x24]
0x1d29f1c: ldr      x8, [x0, #0xb8]
0x1d29f20: adrp     x22, #0x418b000
0x1d29f24: ldr      x20, [x8, #0x10]
0x1d29f28: ldr      x22, [x22, #0x4f8]
0x1d29f2c: cbz      x20, #0x1d29f3c
0x1d29f30: ldr      q0, [sp, #0x70]
0x1d29f34: ldr      x8, [sp, #0x80]
0x1d29f38: b        #0x1d29fa4 | 
0x1d29f3c: ldr      q0, [sp, #0x70]
0x1d29f40: ldr      x8, [sp, #0x80]
0x1d29f44: str      q0, [x25, #0x90]
0x1d29f48: str      x8, [sp, #0x130]
0x1d29f4c: ldr      w8, [x0, #0xe0]
0x1d29f50: cbnz     w8, #0x1d29f5c
0x1d29f54: bl       #0x1b646a4 | 
0x1d29f58: ldr      x0, [x24]
0x1d29f5c: adrp     x9, #0x418b000
0x1d29f60: ldr      x8, [x0, #0xb8]
0x1d29f64: ldr      x9, [x9, #0x510]
0x1d29f68: ldr      x21, [x8]
0x1d29f6c: ldr      x0, [x9]
0x1d29f70: bl       #0x1b647b8 | 
0x1d29f74: adrp     x8, #0x418b000
0x1d29f78: ldr      x8, [x8, #0x518]
0x1d29f7c: mov      x1, x21
0x1d29f80: mov      x3, xzr
0x1d29f84: mov      x20, x0
0x1d29f88: ldr      x2, [x8]
0x1d29f8c: bl       #0x308601c | System.Predicate<PlayerLoopSystem>$$.ctor
0x1d29f90: ldr      x8, [x24]
0x1d29f94: ldr      x8, [x8, #0xb8]
0x1d29f98: str      x20, [x8, #0x10]
0x1d29f9c: ldr      q0, [x25, #0x90]
0x1d29fa0: ldr      x8, [sp, #0x130]
0x1d29fa4: ldr      x2, [x22]
0x1d29fa8: mov      x0, x19
0x1d29fac: mov      x1, x20
0x1d29fb0: str      q0, [sp, #0x90]
0x1d29fb4: str      x8, [sp, #0xa0]
0x1d29fb8: bl       #0x20bcd7c | System.Array$$FindIndex<PlayerLoopSystem>
0x1d29fbc: ldr      q0, [sp, #0x90]
0x1d29fc0: ldr      x8, [sp, #0xa0]
0x1d29fc4: str      q0, [x25, #0x30]
0x1d29fc8: str      x8, [sp, #0xd0]
0x1d29fcc: cbz      x19, #0x1d2a1f4
0x1d29fd0: ldr      w8, [x19, #0x18]
0x1d29fd4: mov      w20, w0
0x1d29fd8: cmp      w0, w8
0x1d29fdc: b.hs     #0x1d2a1f8
0x1d29fe0: sxtw     x8, w20
0x1d29fe4: mov      w9, #0x28
0x1d29fe8: madd     x28, x8, x9, x19
0x1d29fec: ldr      x23, [x28, #0x20]!
0x1d29ff0: mov      x27, x28
0x1d29ff4: ldr      x22, [x27, #8]!
0x1d29ff8: ldr      x8, [x28, #0x20]
0x1d29ffc: ldr      q0, [x28, #0x10]
0x1d2a000: str      x8, [sp, #0x160]
0x1d2a004: str      q0, [x25, #0xc0]
0x1d2a008: cbz      x22, #0x1d2a1f4
0x1d2a00c: adrp     x8, #0x418b000
0x1d2a010: ldr      x8, [x8, #0x508]
0x1d2a014: ldr      w9, [x22, #0x18]
0x1d2a018: ldr      x0, [x8]
0x1d2a01c: add      w1, w9, #1
0x1d2a020: bl       #0x1b64614 | 
0x1d2a024: mov      x21, x0
0x1d2a028: mov      x0, x22
0x1d2a02c: mov      x1, x21
0x1d2a030: mov      w2, wzr
0x1d2a034: mov      x3, xzr
0x1d2a038: bl       #0x349f6d0 | System.Array$$CopyTo
0x1d2a03c: cbz      x21, #0x1d2a1f4
0x1d2a040: adrp     x8, #0x4185000
0x1d2a044: ldr      x8, [x8, #0x868]
0x1d2a048: ldr      x0, [x8]
0x1d2a04c: adrp     x8, #0x418b000
0x1d2a050: ldr      x8, [x8, #0x500]
0x1d2a054: stp      xzr, xzr, [sp, #0x140]
0x1d2a058: ldr      w9, [x0, #0xe0]
0x1d2a05c: ldr      x22, [x8]
0x1d2a060: cbnz     w9, #0x1d2a068
0x1d2a064: bl       #0x1b646a4 | 
0x1d2a068: mov      x0, x22
0x1d2a06c: mov      x1, xzr
0x1d2a070: bl       #0x3489b94 | System.Type$$GetTypeFromHandle
0x1d2a074: ldr      x8, [x24]
0x1d2a078: mov      x22, x0
0x1d2a07c: str      x23, [sp, #0x10]
0x1d2a080: ldr      w9, [x8, #0xe0]
0x1d2a084: cbnz     w9, #0x1d2a094
0x1d2a088: mov      x0, x8
0x1d2a08c: bl       #0x1b646a4 | 
0x1d2a090: ldr      x8, [x24]
0x1d2a094: ldr      x9, [x8, #0xb8]
0x1d2a098: ldr      x23, [x9, #0x18]
0x1d2a09c: ldr      w9, [x21, #0x18]
0x1d2a0a0: sub      w26, w9, #1
0x1d2a0a4: cbz      x23, #0x1d2a0bc
0x1d2a0a8: ldr      q0, [x25, #0x30]
0x1d2a0ac: ldr      x8, [sp, #0xd0]
0x1d2a0b0: str      q0, [x25, #0x70]
0x1d2a0b4: str      x8, [sp, #0x110]
0x1d2a0b8: b        #0x1d2a140 | 
0x1d2a0bc: ldr      q0, [x25, #0x30]
0x1d2a0c0: ldr      x9, [sp, #0xd0]
0x1d2a0c4: str      x29, [sp, #8]
0x1d2a0c8: str      q0, [x25, #0x50]
0x1d2a0cc: str      x9, [sp, #0xf0]
0x1d2a0d0: ldr      w9, [x8, #0xe0]
0x1d2a0d4: cbnz     w9, #0x1d2a0e4
0x1d2a0d8: mov      x0, x8
0x1d2a0dc: bl       #0x1b646a4 | 
0x1d2a0e0: ldr      x8, [x24]
0x1d2a0e4: adrp     x9, #0x418b000
0x1d2a0e8: ldr      x8, [x8, #0xb8]
0x1d2a0ec: ldr      x9, [x9, #0x528]
0x1d2a0f0: mov      x29, x24
0x1d2a0f4: ldr      x24, [x8]
0x1d2a0f8: ldr      x0, [x9]
0x1d2a0fc: bl       #0x1b647b8 | 
0x1d2a100: adrp     x8, #0x418b000
0x1d2a104: ldr      x8, [x8, #0x520]
0x1d2a108: mov      x1, x24
0x1d2a10c: mov      x3, xzr
0x1d2a110: mov      x23, x0
0x1d2a114: ldr      x2, [x8]
0x1d2a118: bl       #0x3c75ab4 | UnityEngine.LowLevel.PlayerLoopSystem.UpdateFunction$$.ctor
0x1d2a11c: ldr      x8, [x29]
0x1d2a120: ldr      x29, [sp, #8]
0x1d2a124: ldr      x8, [x8, #0xb8]
0x1d2a128: str      x23, [x8, #0x18]
0x1d2a12c: ldr      q0, [x25, #0x50]
0x1d2a130: ldr      x8, [sp, #0xf0]
0x1d2a134: str      q0, [x25, #0x70]
0x1d2a138: str      x8, [sp, #0x110]
0x1d2a13c: ldr      w9, [x21, #0x18]
0x1d2a140: ldr      q0, [x25, #0xb0]
0x1d2a144: cmp      w26, w9
0x1d2a148: str      q0, [sp, #0x60]
0x1d2a14c: b.hs     #0x1d2a1f8
0x1d2a150: mov      w8, #0x28
0x1d2a154: smaddl   x8, w26, w8, x21
0x1d2a158: stp      x22, xzr, [x8, #0x20]
0x1d2a15c: str      x23, [x8, #0x30]
0x1d2a160: ldr      q0, [sp, #0x60]
0x1d2a164: stur     q0, [x8, #0x38]
0x1d2a168: ldr      q0, [x25, #0x70]
0x1d2a16c: ldr      x8, [sp, #0x110]
0x1d2a170: ldr      q1, [x25, #0xc0]
0x1d2a174: ldr      x9, [sp, #0x160]
0x1d2a178: str      q0, [x25, #0x30]
0x1d2a17c: str      x8, [sp, #0xd0]
0x1d2a180: str      q1, [sp, #0x40]
0x1d2a184: str      x9, [sp, #0x50]
0x1d2a188: ldr      w8, [x19, #0x18]
0x1d2a18c: cmp      w20, w8
0x1d2a190: b.hs     #0x1d2a1f8
0x1d2a194: ldr      x8, [sp, #0x10]
0x1d2a198: add      x9, x28, #0x10
0x1d2a19c: add      x0, sp, #0x18
0x1d2a1a0: mov      x1, xzr
0x1d2a1a4: str      x8, [x28]
0x1d2a1a8: str      x21, [x27]
0x1d2a1ac: ldr      x8, [sp, #0x50]
0x1d2a1b0: ldr      q0, [sp, #0x40]
0x1d2a1b4: str      x8, [x9, #0x10]
0x1d2a1b8: str      q0, [x9]
0x1d2a1bc: ldr      q0, [x25, #0x30]
0x1d2a1c0: ldr      x8, [sp, #0xd0]
0x1d2a1c4: stp      x29, x19, [sp, #0x18]
0x1d2a1c8: stur     q0, [sp, #0x28]
0x1d2a1cc: str      x8, [sp, #0x38]
0x1d2a1d0: bl       #0x3c75de0 | UnityEngine.LowLevel.PlayerLoop$$SetPlayerLoop
0x1d2a1d4: ldp      x20, x19, [sp, #0x1c0]
0x1d2a1d8: ldp      x22, x21, [sp, #0x1b0]
0x1d2a1dc: ldp      x24, x23, [sp, #0x1a0]
0x1d2a1e0: ldp      x26, x25, [sp, #0x190]
0x1d2a1e4: ldp      x28, x27, [sp, #0x180]
0x1d2a1e8: ldp      x29, x30, [sp, #0x170]
0x1d2a1ec: add      sp, sp, #0x1d0
0x1d2a1f0: ret      
0x1d2a1f4: bl       #0x1b647c8 | 
0x1d2a1f8: bl       #0x1b647d0 | 

// 0x1d2a1fc UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$Provide
0x1d2a1fc: sub      sp, sp, #0x60
0x1d2a200: stp      x30, x21, [sp, #0x40]
0x1d2a204: stp      x20, x19, [sp, #0x50]
0x1d2a208: adrp     x21, #0x4475000
0x1d2a20c: adrp     x20, #0x4187000
0x1d2a210: ldrb     w8, [x21, #0xd41]
0x1d2a214: ldr      x20, [x20, #0x9c8]
0x1d2a218: mov      x19, x1
0x1d2a21c: tbnz     w8, #0, #0x1d2a258
0x1d2a220: adrp     x0, #0x4187000
0x1d2a224: ldr      x0, [x0, #0x9c8]
0x1d2a228: bl       #0x1b64570 | 
0x1d2a22c: adrp     x0, #0x418b000
0x1d2a230: ldr      x0, [x0, #0x530]
0x1d2a234: bl       #0x1b64570 | 
0x1d2a238: adrp     x0, #0x418b000
0x1d2a23c: ldr      x0, [x0, #0x538]
0x1d2a240: bl       #0x1b64570 | 
0x1d2a244: adrp     x0, #0x418b000
0x1d2a248: ldr      x0, [x0, #0x540]
0x1d2a24c: bl       #0x1b64570 | 
0x1d2a250: mov      w8, #1
0x1d2a254: strb     w8, [x21, #0xd41]
0x1d2a258: ldr      x0, [x20]
0x1d2a25c: str      xzr, [sp, #0x38]
0x1d2a260: ldr      w8, [x0, #0xe0]
0x1d2a264: cbnz     w8, #0x1d2a270
0x1d2a268: bl       #0x1b646a4 | 
0x1d2a26c: ldr      x0, [x20]
0x1d2a270: ldr      x8, [x0, #0xb8]
0x1d2a274: mov      x0, x19
0x1d2a278: mov      x1, xzr
0x1d2a27c: ldr      x20, [x8, #0x18]
0x1d2a280: bl       #0x3bbd43c | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$get_Location
0x1d2a284: cbz      x0, #0x1d2a378
0x1d2a288: adrp     x10, #0x418b000
0x1d2a28c: ldr      x8, [x0]
0x1d2a290: ldr      x10, [x10, #0x540]
0x1d2a294: mov      x21, x0
0x1d2a298: ldrh     w9, [x8, #0x12e]
0x1d2a29c: ldr      x1, [x10]
0x1d2a2a0: cbz      x9, #0x1d2a2c4
0x1d2a2a4: ldr      x10, [x8, #0xb0]
0x1d2a2a8: add      x10, x10, #8
0x1d2a2ac: ldur     x11, [x10, #-8]
0x1d2a2b0: cmp      x11, x1
0x1d2a2b4: b.eq     #0x1d2a2d4
0x1d2a2b8: subs     x9, x9, #1
0x1d2a2bc: add      x10, x10, #0x10
0x1d2a2c0: b.ne     #0x1d2a2ac
0x1d2a2c4: mov      x0, x21
0x1d2a2c8: mov      w2, wzr
0x1d2a2cc: bl       #0x1bc5638 | 
0x1d2a2d0: b        #0x1d2a2e0 | 
0x1d2a2d4: ldrsw    x9, [x10]
0x1d2a2d8: add      x8, x8, x9, lsl #4
0x1d2a2dc: add      x0, x8, #0x138
0x1d2a2e0: ldp      x8, x1, [x0]
0x1d2a2e4: mov      x0, x21
0x1d2a2e8: blr      x8
0x1d2a2ec: cbz      x20, #0x1d2a378
0x1d2a2f0: adrp     x8, #0x418b000
0x1d2a2f4: ldr      x8, [x8, #0x538]
0x1d2a2f8: mov      x1, x0
0x1d2a2fc: add      x2, sp, #0x38
0x1d2a300: mov      x0, x20
0x1d2a304: ldr      x3, [x8]
0x1d2a308: bl       #0x2a132c4 | System.Collections.Generic.Dictionary<object, object>$$TryGetValue
0x1d2a30c: tbz      w0, #0, #0x1d2a328
0x1d2a310: ldr      x0, [sp, #0x38]
0x1d2a314: cbz      x0, #0x1d2a378
0x1d2a318: mov      x1, xzr
0x1d2a31c: bl       #0x3c5bd04 | UnityEngine.AsyncOperation$$get_isDone
0x1d2a320: tbz      w0, #0, #0x1d2a328
0x1d2a324: str      xzr, [sp, #0x38]
0x1d2a328: adrp     x8, #0x418b000
0x1d2a32c: ldr      x8, [x8, #0x530]
0x1d2a330: ldr      q0, [x19]
0x1d2a334: ldr      x9, [x19, #0x10]
0x1d2a338: ldr      x19, [sp, #0x38]
0x1d2a33c: ldr      x0, [x8]
0x1d2a340: str      q0, [sp, #0x20]
0x1d2a344: str      x9, [sp, #0x30]
0x1d2a348: bl       #0x1b647b8 | 
0x1d2a34c: ldr      q0, [sp, #0x20]
0x1d2a350: ldr      x8, [sp, #0x30]
0x1d2a354: mov      x1, sp
0x1d2a358: mov      x2, x19
0x1d2a35c: str      q0, [sp]
0x1d2a360: str      x8, [sp, #0x10]
0x1d2a364: bl       #0x1d2a37c | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$.ctor
0x1d2a368: ldp      x20, x19, [sp, #0x50]
0x1d2a36c: ldp      x30, x21, [sp, #0x40]
0x1d2a370: add      sp, sp, #0x60
0x1d2a374: ret      
0x1d2a378: bl       #0x1b647c8 | 

// 0x1d2a37c UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$.ctor
0x1d2a37c: str      x30, [sp, #-0x60]!
0x1d2a380: stp      x28, x27, [sp, #0x10]
0x1d2a384: stp      x26, x25, [sp, #0x20]
0x1d2a388: stp      x24, x23, [sp, #0x30]
0x1d2a38c: stp      x22, x21, [sp, #0x40]
0x1d2a390: stp      x20, x19, [sp, #0x50]
0x1d2a394: adrp     x28, #0x4475000
0x1d2a398: adrp     x27, #0x418b000
0x1d2a39c: adrp     x22, #0x418b000
0x1d2a3a0: adrp     x26, #0x418b000
0x1d2a3a4: adrp     x25, #0x418b000
0x1d2a3a8: adrp     x24, #0x4187000
0x1d2a3ac: adrp     x23, #0x418b000
0x1d2a3b0: ldr      x27, [x27, #0x548]
0x1d2a3b4: ldrb     w8, [x28, #0xd49]
0x1d2a3b8: ldr      x22, [x22, #0x550]
0x1d2a3bc: ldr      x26, [x26, #0x558]
0x1d2a3c0: ldr      x25, [x25, #0x560]
0x1d2a3c4: ldr      x24, [x24, #0x740]
0x1d2a3c8: ldr      x23, [x23, #0x568]
0x1d2a3cc: mov      x20, x2
0x1d2a3d0: mov      x21, x1
0x1d2a3d4: mov      x19, x0
0x1d2a3d8: tbnz     w8, #0, #0x1d2a45c
0x1d2a3dc: adrp     x0, #0x418b000
0x1d2a3e0: ldr      x0, [x0, #0x570]
0x1d2a3e4: bl       #0x1b64570 | 
0x1d2a3e8: adrp     x0, #0x418b000
0x1d2a3ec: ldr      x0, [x0, #0x578]
0x1d2a3f0: bl       #0x1b64570 | 
0x1d2a3f4: adrp     x0, #0x418b000
0x1d2a3f8: ldr      x0, [x0, #0x560]
0x1d2a3fc: bl       #0x1b64570 | 
0x1d2a400: adrp     x0, #0x418b000
0x1d2a404: ldr      x0, [x0, #0x580]
0x1d2a408: bl       #0x1b64570 | 
0x1d2a40c: adrp     x0, #0x418b000
0x1d2a410: ldr      x0, [x0, #0x550]
0x1d2a414: bl       #0x1b64570 | 
0x1d2a418: adrp     x0, #0x418b000
0x1d2a41c: ldr      x0, [x0, #0x568]
0x1d2a420: bl       #0x1b64570 | 
0x1d2a424: adrp     x0, #0x418b000
0x1d2a428: ldr      x0, [x0, #0x548]
0x1d2a42c: bl       #0x1b64570 | 
0x1d2a430: adrp     x0, #0x4187000
0x1d2a434: ldr      x0, [x0, #0x740]
0x1d2a438: bl       #0x1b64570 | 
0x1d2a43c: adrp     x0, #0x418b000
0x1d2a440: ldr      x0, [x0, #0x558]
0x1d2a444: bl       #0x1b64570 | 
0x1d2a448: adrp     x0, #0x418b000
0x1d2a44c: ldr      x0, [x0, #0x540]
0x1d2a450: bl       #0x1b64570 | 
0x1d2a454: mov      w8, #1
0x1d2a458: strb     w8, [x28, #0xd49]
0x1d2a45c: mov      x8, #-1
0x1d2a460: mov      x0, x19
0x1d2a464: mov      x1, xzr
0x1d2a468: str      x8, [x19, #0x68]
0x1d2a46c: bl       #0x34c04f0 | System.Object$$.ctor
0x1d2a470: ldr      x8, [x21, #0x10]
0x1d2a474: ldr      q0, [x21]
0x1d2a478: str      x8, [x19, #0x48]
0x1d2a47c: stur     q0, [x19, #0x38]
0x1d2a480: ldr      x0, [x27]
0x1d2a484: bl       #0x1b647b8 | 
0x1d2a488: ldr      x2, [x22]
0x1d2a48c: mov      x1, x19
0x1d2a490: mov      x3, xzr
0x1d2a494: mov      x22, x0
0x1d2a498: bl       #0x2c51008 | System.Func<float>$$.ctor
0x1d2a49c: mov      x0, x21
0x1d2a4a0: mov      x1, x22
0x1d2a4a4: mov      x2, xzr
0x1d2a4a8: bl       #0x3bbdfd8 | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$SetProgressCallback
0x1d2a4ac: ldr      x0, [x26]
0x1d2a4b0: bl       #0x1b647b8 | 
0x1d2a4b4: ldr      x2, [x25]
0x1d2a4b8: mov      x1, x19
0x1d2a4bc: mov      x3, xzr
0x1d2a4c0: mov      x22, x0
0x1d2a4c4: bl       #0x2c508b8 | System.Func<DownloadStatus>$$.ctor
0x1d2a4c8: mov      x0, x21
0x1d2a4cc: mov      x1, x22
0x1d2a4d0: mov      x2, xzr
0x1d2a4d4: bl       #0x3bbe08c | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$SetDownloadProgressCallbacks
0x1d2a4d8: ldr      x0, [x24]
0x1d2a4dc: bl       #0x1b647b8 | 
0x1d2a4e0: ldr      x2, [x23]
0x1d2a4e4: mov      x1, x19
0x1d2a4e8: mov      x3, xzr
0x1d2a4ec: mov      x22, x0
0x1d2a4f0: bl       #0x2c503d8 | System.Func<bool>$$.ctor
0x1d2a4f4: mov      x0, x21
0x1d2a4f8: mov      x1, x22
0x1d2a4fc: mov      x2, xzr
0x1d2a500: bl       #0x3bbe140 | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$SetWaitForCompletionCallback
0x1d2a504: mov      x0, x21
0x1d2a508: mov      x1, xzr
0x1d2a50c: bl       #0x3bbd43c | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$get_Location
0x1d2a510: cbz      x0, #0x1d2a654
0x1d2a514: adrp     x10, #0x418b000
0x1d2a518: ldr      x8, [x0]
0x1d2a51c: ldr      x10, [x10, #0x540]
0x1d2a520: mov      x21, x0
0x1d2a524: ldrh     w9, [x8, #0x12e]
0x1d2a528: ldr      x1, [x10]
0x1d2a52c: cbz      x9, #0x1d2a550
0x1d2a530: ldr      x10, [x8, #0xb0]
0x1d2a534: add      x10, x10, #8
0x1d2a538: ldur     x11, [x10, #-8]
0x1d2a53c: cmp      x11, x1
0x1d2a540: b.eq     #0x1d2a560
0x1d2a544: subs     x9, x9, #1
0x1d2a548: add      x10, x10, #0x10
0x1d2a54c: b.ne     #0x1d2a538
0x1d2a550: mov      w2, #6
0x1d2a554: mov      x0, x21
0x1d2a558: bl       #0x1bc5638 | 
0x1d2a55c: b        #0x1d2a570 | 
0x1d2a560: ldr      w9, [x10]
0x1d2a564: add      w9, w9, #6
0x1d2a568: add      x8, x8, w9, sxtw #4
0x1d2a56c: add      x0, x8, #0x138
0x1d2a570: ldp      x8, x1, [x0]
0x1d2a574: mov      x0, x21
0x1d2a578: blr      x8
0x1d2a57c: cbz      x0, #0x1d2a5a0
0x1d2a580: adrp     x8, #0x418b000
0x1d2a584: ldr      x8, [x8, #0x578]
0x1d2a588: ldr      x9, [x0]
0x1d2a58c: ldr      x8, [x8]
0x1d2a590: ldrb     w11, [x9, #0x130]
0x1d2a594: ldrb     w10, [x8, #0x130]
0x1d2a598: cmp      w11, w10
0x1d2a59c: b.hs     #0x1d2a5a8
0x1d2a5a0: mov      x8, xzr
0x1d2a5a4: b        #0x1d2a5bc | 
0x1d2a5a8: ldr      x9, [x9, #0xc8]
0x1d2a5ac: add      x9, x9, x10, lsl #3
0x1d2a5b0: ldur     x9, [x9, #-8]
0x1d2a5b4: cmp      x9, x8
0x1d2a5b8: csel     x8, x0, xzr, eq
0x1d2a5bc: str      x8, [x19, #0x50]
0x1d2a5c0: str      x20, [x19, #0x80]
0x1d2a5c4: cbz      x20, #0x1d2a5d8
0x1d2a5c8: mov      x0, x20
0x1d2a5cc: mov      x1, xzr
0x1d2a5d0: bl       #0x3c5bd04 | UnityEngine.AsyncOperation$$get_isDone
0x1d2a5d4: tbz      w0, #0, #0x1d2a5f8
0x1d2a5d8: mov      x0, x19
0x1d2a5dc: ldp      x20, x19, [sp, #0x50]
0x1d2a5e0: ldp      x22, x21, [sp, #0x40]
0x1d2a5e4: ldp      x24, x23, [sp, #0x30]
0x1d2a5e8: ldp      x26, x25, [sp, #0x20]
0x1d2a5ec: ldp      x28, x27, [sp, #0x10]
0x1d2a5f0: ldr      x30, [sp], #0x60
0x1d2a5f4: b        #0x1d2b618 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$BeginOperation
0x1d2a5f8: adrp     x8, #0x418b000
0x1d2a5fc: ldr      x20, [x19, #0x80]
0x1d2a600: ldr      x8, [x8, #0x570]
0x1d2a604: ldr      x0, [x8]
0x1d2a608: bl       #0x1b647b8 | 
0x1d2a60c: adrp     x8, #0x418b000
0x1d2a610: ldr      x8, [x8, #0x580]
0x1d2a614: mov      x1, x19
0x1d2a618: mov      x3, xzr
0x1d2a61c: mov      x21, x0
0x1d2a620: ldr      x2, [x8]
0x1d2a624: bl       #0x3035f4c | System.Action<object>$$.ctor
0x1d2a628: cbz      x20, #0x1d2a654
0x1d2a62c: mov      x0, x20
0x1d2a630: mov      x1, x21
0x1d2a634: ldp      x20, x19, [sp, #0x50]
0x1d2a638: ldp      x22, x21, [sp, #0x40]
0x1d2a63c: ldp      x24, x23, [sp, #0x30]
0x1d2a640: ldp      x26, x25, [sp, #0x20]
0x1d2a644: ldp      x28, x27, [sp, #0x10]
0x1d2a648: mov      x2, xzr
0x1d2a64c: ldr      x30, [sp], #0x60
0x1d2a650: b        #0x3c5bf2c | UnityEngine.AsyncOperation$$add_completed
0x1d2a654: bl       #0x1b647c8 | 

// 0x1d2a658 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$GetDefaultType
0x1d2a658: stp      x30, x21, [sp, #-0x20]!
0x1d2a65c: stp      x20, x19, [sp, #0x10]
0x1d2a660: adrp     x21, #0x4475000
0x1d2a664: adrp     x19, #0x418b000
0x1d2a668: adrp     x20, #0x4185000
0x1d2a66c: ldrb     w8, [x21, #0xd42]
0x1d2a670: ldr      x19, [x19, #0x588]
0x1d2a674: ldr      x20, [x20, #0x868]
0x1d2a678: tbnz     w8, #0, #0x1d2a69c
0x1d2a67c: adrp     x0, #0x418b000
0x1d2a680: ldr      x0, [x0, #0x588]
0x1d2a684: bl       #0x1b64570 | 
0x1d2a688: adrp     x0, #0x4185000
0x1d2a68c: ldr      x0, [x0, #0x868]
0x1d2a690: bl       #0x1b64570 | 
0x1d2a694: mov      w8, #1
0x1d2a698: strb     w8, [x21, #0xd42]
0x1d2a69c: ldr      x0, [x20]
0x1d2a6a0: ldr      x19, [x19]
0x1d2a6a4: ldr      w8, [x0, #0xe0]
0x1d2a6a8: cbnz     w8, #0x1d2a6b0
0x1d2a6ac: bl       #0x1b646a4 | 
0x1d2a6b0: mov      x0, x19
0x1d2a6b4: ldp      x20, x19, [sp, #0x10]
0x1d2a6b8: mov      x1, xzr
0x1d2a6bc: ldp      x30, x21, [sp], #0x20
0x1d2a6c0: b        #0x3489b94 | System.Type$$GetTypeFromHandle

// 0x1d2a6c4 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$Release
0x1d2a6c4: str      x30, [sp, #-0x30]!
0x1d2a6c8: stp      x22, x21, [sp, #0x10]
0x1d2a6cc: stp      x20, x19, [sp, #0x20]
0x1d2a6d0: adrp     x22, #0x4475000
0x1d2a6d4: adrp     x19, #0x418b000
0x1d2a6d8: ldrb     w8, [x22, #0xd43]
0x1d2a6dc: ldr      x19, [x19, #0x590]
0x1d2a6e0: mov      x20, x2
0x1d2a6e4: mov      x21, x1
0x1d2a6e8: tbnz     w8, #0, #0x1d2a76c
0x1d2a6ec: adrp     x0, #0x418b000
0x1d2a6f0: ldr      x0, [x0, #0x570]
0x1d2a6f4: bl       #0x1b64570 | 
0x1d2a6f8: adrp     x0, #0x4187000
0x1d2a6fc: ldr      x0, [x0, #0x9c8]
0x1d2a700: bl       #0x1b64570 | 
0x1d2a704: adrp     x0, #0x418b000
0x1d2a708: ldr      x0, [x0, #0x530]
0x1d2a70c: bl       #0x1b64570 | 
0x1d2a710: adrp     x0, #0x4185000
0x1d2a714: ldr      x0, [x0, #0xb38]
0x1d2a718: bl       #0x1b64570 | 
0x1d2a71c: adrp     x0, #0x418b000
0x1d2a720: ldr      x0, [x0, #0x598]
0x1d2a724: bl       #0x1b64570 | 
0x1d2a728: adrp     x0, #0x418b000
0x1d2a72c: ldr      x0, [x0, #0x540]
0x1d2a730: bl       #0x1b64570 | 
0x1d2a734: adrp     x0, #0x4185000
0x1d2a738: ldr      x0, [x0, #0x368]
0x1d2a73c: bl       #0x1b64570 | 
0x1d2a740: adrp     x0, #0x418b000
0x1d2a744: ldr      x0, [x0, #0x5a0]
0x1d2a748: bl       #0x1b64570 | 
0x1d2a74c: adrp     x0, #0x418b000
0x1d2a750: ldr      x0, [x0, #0x590]
0x1d2a754: bl       #0x1b64570 | 
0x1d2a758: adrp     x0, #0x418b000
0x1d2a75c: ldr      x0, [x0, #0x5a8] | 0x418b5a8 'Releasing null asset bundle from location {0}.  This is an indication that the bundle failed to load.'
0x1d2a760: bl       #0x1b64570 | 
0x1d2a764: mov      w8, #1
0x1d2a768: strb     w8, [x22, #0xd43]
0x1d2a76c: ldr      x0, [x19]
0x1d2a770: str      xzr, [sp, #8]
0x1d2a774: bl       #0x1b647b8 | 
0x1d2a778: mov      x1, xzr
0x1d2a77c: mov      x19, x0
0x1d2a780: bl       #0x34c04f0 | System.Object$$.ctor
0x1d2a784: cbz      x19, #0x1d2a950
0x1d2a788: str      x21, [x19, #0x10]
0x1d2a78c: cbz      x21, #0x1d2a954
0x1d2a790: cbz      x20, #0x1d2a84c
0x1d2a794: adrp     x8, #0x418b000
0x1d2a798: ldr      x8, [x8, #0x530]
0x1d2a79c: ldr      x9, [x20]
0x1d2a7a0: ldr      x8, [x8]
0x1d2a7a4: ldrb     w11, [x9, #0x130]
0x1d2a7a8: ldrb     w10, [x8, #0x130]
0x1d2a7ac: cmp      w11, w10
0x1d2a7b0: b.lo     #0x1d2a8c0
0x1d2a7b4: ldr      x9, [x9, #0xc8]
0x1d2a7b8: add      x9, x9, x10, lsl #3
0x1d2a7bc: ldur     x9, [x9, #-8]
0x1d2a7c0: cmp      x9, x8
0x1d2a7c4: b.ne     #0x1d2a8c0
0x1d2a7c8: add      x1, sp, #8
0x1d2a7cc: mov      x0, x20
0x1d2a7d0: bl       #0x1d2a9b4 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$Unload
0x1d2a7d4: tbz      w0, #0, #0x1d2a8c0
0x1d2a7d8: adrp     x20, #0x4187000
0x1d2a7dc: ldr      x20, [x20, #0x9c8]
0x1d2a7e0: ldr      x0, [x20]
0x1d2a7e4: ldr      w8, [x0, #0xe0]
0x1d2a7e8: cbnz     w8, #0x1d2a7f4
0x1d2a7ec: bl       #0x1b646a4 | 
0x1d2a7f0: ldr      x0, [x20]
0x1d2a7f4: ldr      x21, [x19, #0x10]
0x1d2a7f8: cbz      x21, #0x1d2a950
0x1d2a7fc: adrp     x10, #0x418b000
0x1d2a800: ldr      x9, [x0, #0xb8]
0x1d2a804: ldr      x8, [x21]
0x1d2a808: ldr      x10, [x10, #0x540]
0x1d2a80c: ldr      x20, [x9, #0x18]
0x1d2a810: ldrh     w9, [x8, #0x12e]
0x1d2a814: ldr      x1, [x10]
0x1d2a818: cbz      x9, #0x1d2a83c
0x1d2a81c: ldr      x10, [x8, #0xb0]
0x1d2a820: add      x10, x10, #8
0x1d2a824: ldur     x11, [x10, #-8]
0x1d2a828: cmp      x11, x1
0x1d2a82c: b.eq     #0x1d2a8d0
0x1d2a830: subs     x9, x9, #1
0x1d2a834: add      x10, x10, #0x10
0x1d2a838: b.ne     #0x1d2a824
0x1d2a83c: mov      x0, x21
0x1d2a840: mov      w2, wzr
0x1d2a844: bl       #0x1bc5638 | 
0x1d2a848: b        #0x1d2a8dc | 
0x1d2a84c: adrp     x8, #0x4185000
0x1d2a850: ldr      x8, [x8, #0x368]
0x1d2a854: mov      w1, #1
0x1d2a858: ldr      x0, [x8]
0x1d2a85c: bl       #0x1b64614 | 
0x1d2a860: cbz      x0, #0x1d2a950
0x1d2a864: ldr      x19, [x19, #0x10]
0x1d2a868: mov      x20, x0
0x1d2a86c: cbz      x19, #0x1d2a884
0x1d2a870: ldr      x8, [x20]
0x1d2a874: mov      x0, x19
0x1d2a878: ldr      x1, [x8, #0x40]
0x1d2a87c: bl       #0x1b646a8 | 
0x1d2a880: cbz      x0, #0x1d2a9a0
0x1d2a884: ldr      w8, [x20, #0x18]
0x1d2a888: cbz      w8, #0x1d2a99c
0x1d2a88c: str      x19, [x20, #0x20]
0x1d2a890: adrp     x8, #0x4185000
0x1d2a894: ldr      x8, [x8, #0xb38]
0x1d2a898: ldr      x0, [x8]
0x1d2a89c: ldr      w8, [x0, #0xe0]
0x1d2a8a0: cbnz     w8, #0x1d2a8a8
0x1d2a8a4: bl       #0x1b646a4 | 
0x1d2a8a8: adrp     x8, #0x418b000
0x1d2a8ac: ldr      x8, [x8, #0x5a8] | 0x418b5a8 'Releasing null asset bundle from location {0}.  This is an indication that the bundle failed to load.'
0x1d2a8b0: mov      x1, x20
0x1d2a8b4: mov      x2, xzr
0x1d2a8b8: ldr      x0, [x8]
0x1d2a8bc: bl       #0x3c25988 | UnityEngine.Debug$$LogWarningFormat
0x1d2a8c0: ldp      x20, x19, [sp, #0x20]
0x1d2a8c4: ldp      x22, x21, [sp, #0x10]
0x1d2a8c8: ldr      x30, [sp], #0x30
0x1d2a8cc: ret      
0x1d2a8d0: ldrsw    x9, [x10]
0x1d2a8d4: add      x8, x8, x9, lsl #4
0x1d2a8d8: add      x0, x8, #0x138
0x1d2a8dc: ldp      x8, x1, [x0]
0x1d2a8e0: mov      x0, x21
0x1d2a8e4: blr      x8
0x1d2a8e8: cbz      x20, #0x1d2a950
0x1d2a8ec: adrp     x8, #0x418b000
0x1d2a8f0: ldr      x21, [sp, #8]
0x1d2a8f4: ldr      x8, [x8, #0x598]
0x1d2a8f8: mov      x1, x0
0x1d2a8fc: mov      x0, x20
0x1d2a900: mov      x2, x21
0x1d2a904: ldr      x3, [x8]
0x1d2a908: bl       #0x2a11b54 | System.Collections.Generic.Dictionary<object, object>$$Add
0x1d2a90c: adrp     x8, #0x418b000
0x1d2a910: ldr      x8, [x8, #0x570]
0x1d2a914: ldr      x0, [x8]
0x1d2a918: bl       #0x1b647b8 | 
0x1d2a91c: adrp     x8, #0x418b000
0x1d2a920: ldr      x8, [x8, #0x5a0]
0x1d2a924: mov      x1, x19
0x1d2a928: mov      x3, xzr
0x1d2a92c: mov      x20, x0
0x1d2a930: ldr      x2, [x8]
0x1d2a934: bl       #0x3035f4c | System.Action<object>$$.ctor
0x1d2a938: cbz      x21, #0x1d2a950
0x1d2a93c: mov      x0, x21
0x1d2a940: mov      x1, x20
0x1d2a944: mov      x2, xzr
0x1d2a948: bl       #0x3c5bf2c | UnityEngine.AsyncOperation$$add_completed
0x1d2a94c: b        #0x1d2a8c0 | 
0x1d2a950: bl       #0x1b647c8 | 
0x1d2a954: adrp     x0, #0x4185000
0x1d2a958: ldr      x0, [x0, #0x8e8]
0x1d2a95c: bl       #0x1b64584 | 
0x1d2a960: bl       #0x1b647b8 | 
0x1d2a964: mov      x19, x0
0x1d2a968: adrp     x0, #0x418b000
0x1d2a96c: ldr      x0, [x0, #0x5b0] | 0x418b5b0 'location'
0x1d2a970: bl       #0x1b64584 | 
0x1d2a974: mov      x1, x0
0x1d2a978: mov      x0, x19
0x1d2a97c: mov      x2, xzr
0x1d2a980: bl       #0x33e8618 | System.ArgumentNullException$$.ctor
0x1d2a984: adrp     x0, #0x418b000
0x1d2a988: ldr      x0, [x0, #0x5b8]
0x1d2a98c: bl       #0x1b64584 | 
0x1d2a990: mov      x1, x0
0x1d2a994: mov      x0, x19
0x1d2a998: bl       #0x1b64694 | 
0x1d2a99c: bl       #0x1b647d0 | 
0x1d2a9a0: bl       #0x1b647ec | 
0x1d2a9a4: mov      x1, xzr
0x1d2a9a8: bl       #0x1b64694 | 

// 0x1d2a9ac UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.<>c__DisplayClass16_0$$.ctor
0x1d2a9ac: mov      x1, xzr
0x1d2a9b0: b        #0x34c04f0 | System.Object$$.ctor

// 0x1d2a9b4 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$Unload
0x1d2a9b4: str      x30, [sp, #-0x30]!
0x1d2a9b8: stp      x22, x21, [sp, #0x10]
0x1d2a9bc: stp      x20, x19, [sp, #0x20]
0x1d2a9c0: adrp     x22, #0x4475000
0x1d2a9c4: adrp     x21, #0x4185000
0x1d2a9c8: ldrb     w8, [x22, #0xd52]
0x1d2a9cc: ldr      x21, [x21, #0x208]
0x1d2a9d0: mov      x19, x1
0x1d2a9d4: mov      x20, x0
0x1d2a9d8: tbnz     w8, #0, #0x1d2a9f0
0x1d2a9dc: adrp     x0, #0x4185000
0x1d2a9e0: ldr      x0, [x0, #0x208]
0x1d2a9e4: bl       #0x1b64570 | 
0x1d2a9e8: mov      w8, #1
0x1d2a9ec: strb     w8, [x22, #0xd52]
0x1d2a9f0: str      xzr, [x19]
0x1d2a9f4: ldr      x0, [x21]
0x1d2a9f8: ldr      x21, [x20, #0x18]
0x1d2a9fc: ldr      w8, [x0, #0xe0]
0x1d2aa00: cbnz     w8, #0x1d2aa08
0x1d2aa04: bl       #0x1b646a4 | 
0x1d2aa08: mov      x0, x21
0x1d2aa0c: mov      x1, xzr
0x1d2aa10: mov      x2, xzr
0x1d2aa14: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1d2aa18: tbz      w0, #0, #0x1d2aa38
0x1d2aa1c: ldr      x0, [x20, #0x18]
0x1d2aa20: cbz      x0, #0x1d2aa6c
0x1d2aa24: mov      w1, #1
0x1d2aa28: mov      x2, xzr
0x1d2aa2c: bl       #0x3c16680 | UnityEngine.AssetBundle$$UnloadAsync
0x1d2aa30: str      x0, [x19]
0x1d2aa34: str      xzr, [x20, #0x18]
0x1d2aa38: ldr      x0, [x20, #0x20]!
0x1d2aa3c: cbz      x0, #0x1d2aa4c
0x1d2aa40: ldr      x8, [x0]
0x1d2aa44: ldp      x9, x1, [x8, #0x188]
0x1d2aa48: blr      x9
0x1d2aa4c: stp      xzr, xzr, [x20]
0x1d2aa50: ldr      x8, [x19]
0x1d2aa54: ldp      x20, x19, [sp, #0x20]
0x1d2aa58: ldp      x22, x21, [sp, #0x10]
0x1d2aa5c: cmp      x8, #0
0x1d2aa60: cset     w0, ne
0x1d2aa64: ldr      x30, [sp], #0x30
0x1d2aa68: ret      
0x1d2aa6c: bl       #0x1b647c8 | 

// 0x1d2aa70 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$.ctor
0x1d2aa70: mov      x1, xzr
0x1d2aa74: b        #0x3bbff90 | UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase$$.ctor

// 0x1d2aa78 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$GetEncryptedAssetLocalPath
0x1d2aa78: str      x30, [sp, #-0x50]!
0x1d2aa7c: stp      x26, x25, [sp, #0x10]
0x1d2aa80: stp      x24, x23, [sp, #0x20]
0x1d2aa84: stp      x22, x21, [sp, #0x30]
0x1d2aa88: stp      x20, x19, [sp, #0x40]
0x1d2aa8c: adrp     x20, #0x4475000
0x1d2aa90: adrp     x22, #0x4185000
0x1d2aa94: ldrb     w8, [x20, #0xd44]
0x1d2aa98: ldr      x22, [x22, #0xd50]
0x1d2aa9c: mov      x19, x1
0x1d2aaa0: mov      x21, x0
0x1d2aaa4: tbnz     w8, #0, #0x1d2aaf8
0x1d2aaa8: adrp     x0, #0x4185000
0x1d2aaac: ldr      x0, [x0, #0xd50]
0x1d2aab0: bl       #0x1b64570 | 
0x1d2aab4: adrp     x0, #0x4185000
0x1d2aab8: ldr      x0, [x0, #0x848]
0x1d2aabc: bl       #0x1b64570 | 
0x1d2aac0: adrp     x0, #0x4185000
0x1d2aac4: ldr      x0, [x0, #0xfa8]
0x1d2aac8: bl       #0x1b64570 | 
0x1d2aacc: adrp     x0, #0x418b000
0x1d2aad0: ldr      x0, [x0, #0x5c0] | 0x418b5c0 '{0}.{1}'
0x1d2aad4: bl       #0x1b64570 | 
0x1d2aad8: adrp     x0, #0x418b000
0x1d2aadc: ldr      x0, [x0, #0x5c8] | 0x418b5c8 '000'
0x1d2aae0: bl       #0x1b64570 | 
0x1d2aae4: adrp     x0, #0x418b000
0x1d2aae8: ldr      x0, [x0, #0x5d0] | 0x418b5d0 'aa'
0x1d2aaec: bl       #0x1b64570 | 
0x1d2aaf0: mov      w8, #1
0x1d2aaf4: strb     w8, [x20, #0xd44]
0x1d2aaf8: ldr      x0, [x22]
0x1d2aafc: ldr      w8, [x0, #0xe0]
0x1d2ab00: cbnz     w8, #0x1d2ab08
0x1d2ab04: bl       #0x1b646a4 | 
0x1d2ab08: mov      x0, xzr
0x1d2ab0c: bl       #0x3c1da18 | UnityEngine.Application$$get_persistentDataPath
0x1d2ab10: cbz      x21, #0x1d2abdc
0x1d2ab14: ldr      x8, [x21]
0x1d2ab18: adrp     x24, #0x4185000
0x1d2ab1c: adrp     x25, #0x418b000
0x1d2ab20: ldr      x24, [x24, #0x848]
0x1d2ab24: ldr      x25, [x25, #0x5c0] | 0x418b5c0 '{0}.{1}'
0x1d2ab28: ldp      x9, x1, [x8, #0x158]
0x1d2ab2c: adrp     x26, #0x418b000
0x1d2ab30: adrp     x23, #0x418b000
0x1d2ab34: adrp     x22, #0x4185000
0x1d2ab38: ldr      x26, [x26, #0x5d0] | 0x418b5d0 'aa'
0x1d2ab3c: ldr      x23, [x23, #0x5c8] | 0x418b5c8 '000'
0x1d2ab40: ldr      x22, [x22, #0xfa8]
0x1d2ab44: mov      x20, x0
0x1d2ab48: mov      x0, x21
0x1d2ab4c: blr      x9
0x1d2ab50: ldr      x8, [x24]
0x1d2ab54: str      w0, [sp, #0xc]
0x1d2ab58: add      x1, sp, #0xc
0x1d2ab5c: mov      x0, x8
0x1d2ab60: bl       #0x1b646ac | 
0x1d2ab64: ldr      x8, [x25]
0x1d2ab68: ldr      x21, [x26]
0x1d2ab6c: mov      x1, x0
0x1d2ab70: cbz      x19, #0x1d2ab7c
0x1d2ab74: ldr      x9, [x19, #0x10]
0x1d2ab78: b        #0x1d2ab80 | 
0x1d2ab7c: mov      x9, xzr
0x1d2ab80: ldr      x10, [x23]
0x1d2ab84: cmp      x9, #0
0x1d2ab88: mov      x0, x8
0x1d2ab8c: mov      x3, xzr
0x1d2ab90: csel     x2, x10, x9, eq
0x1d2ab94: bl       #0x3308cc4 | System.String$$Format
0x1d2ab98: ldr      x8, [x22]
0x1d2ab9c: mov      x19, x0
0x1d2aba0: ldr      w9, [x8, #0xe0]
0x1d2aba4: cbnz     w9, #0x1d2abb0
0x1d2aba8: mov      x0, x8
0x1d2abac: bl       #0x1b646a4 | 
0x1d2abb0: mov      x0, x20
0x1d2abb4: mov      x1, x21
0x1d2abb8: mov      x2, x19
0x1d2abbc: mov      x3, xzr
0x1d2abc0: bl       #0x3412200 | System.IO.Path$$Combine
0x1d2abc4: ldp      x20, x19, [sp, #0x40]
0x1d2abc8: ldp      x22, x21, [sp, #0x30]
0x1d2abcc: ldp      x24, x23, [sp, #0x20]
0x1d2abd0: ldp      x26, x25, [sp, #0x10]
0x1d2abd4: ldr      x30, [sp], #0x50
0x1d2abd8: ret      
0x1d2abdc: bl       #0x1b647c8 | 

// 0x1d2abe0 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$get_HasTimedOut
0x1d2abe0: str      x30, [sp, #-0x10]!
0x1d2abe4: ldr      x8, [x0, #0x50]
0x1d2abe8: cbz      x8, #0x1d2ac1c
0x1d2abec: ldr      s0, [x8, #0x1c]
0x1d2abf0: ldr      s1, [x0, #0x98]
0x1d2abf4: scvtf    s0, s0
0x1d2abf8: fcmp     s1, s0
0x1d2abfc: b.ge     #0x1d2ac08
0x1d2ac00: mov      w0, wzr
0x1d2ac04: b        #0x1d2ac14 | 
0x1d2ac08: ldr      w8, [x0, #0x9c]
0x1d2ac0c: cmp      w8, #5
0x1d2ac10: cset     w0, gt
0x1d2ac14: ldr      x30, [sp], #0x10
0x1d2ac18: ret      
0x1d2ac1c: bl       #0x1b647c8 | 

// 0x1d2ac20 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$get_BytesToDownload
0x1d2ac20: stp      x30, x21, [sp, #-0x20]!
0x1d2ac24: stp      x20, x19, [sp, #0x10]
0x1d2ac28: mov      x19, x0
0x1d2ac2c: ldr      x0, [x0, #0x68]
0x1d2ac30: cmn      x0, #1
0x1d2ac34: b.ne     #0x1d2acbc
0x1d2ac38: ldr      x8, [x19, #0x50]
0x1d2ac3c: cbz      x8, #0x1d2acb4
0x1d2ac40: ldr      x21, [x19, #0x48]
0x1d2ac44: add      x20, x19, #0x38
0x1d2ac48: mov      x0, x20
0x1d2ac4c: mov      x1, xzr
0x1d2ac50: bl       #0x3bbd43c | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$get_Location
0x1d2ac54: cbz      x21, #0x1d2acc8
0x1d2ac58: mov      x1, x0
0x1d2ac5c: mov      x0, x21
0x1d2ac60: mov      x2, xzr
0x1d2ac64: bl       #0x3baef74 | UnityEngine.ResourceManagement.ResourceManager$$TransformInternalId
0x1d2ac68: ldr      x1, [x19, #0x50]
0x1d2ac6c: bl       #0x1d2aa78 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$GetEncryptedAssetLocalPath
0x1d2ac70: mov      x1, xzr
0x1d2ac74: bl       #0x33d2e48 | System.IO.File$$Exists
0x1d2ac78: mov      w8, w0
0x1d2ac7c: mov      x0, xzr
0x1d2ac80: tbnz     w8, #0, #0x1d2acb8
0x1d2ac84: ldr      x21, [x19, #0x50]
0x1d2ac88: mov      x0, x20
0x1d2ac8c: mov      x1, xzr
0x1d2ac90: bl       #0x3bbd43c | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$get_Location
0x1d2ac94: cbz      x21, #0x1d2acc8
0x1d2ac98: ldr      x8, [x21]
0x1d2ac9c: ldr      x2, [x19, #0x48]
0x1d2aca0: mov      x1, x0
0x1d2aca4: mov      x0, x21
0x1d2aca8: ldp      x9, x3, [x8, #0x188]
0x1d2acac: blr      x9
0x1d2acb0: b        #0x1d2acb8 | 
0x1d2acb4: mov      x0, xzr
0x1d2acb8: str      x0, [x19, #0x68]
0x1d2acbc: ldp      x20, x19, [sp, #0x10]
0x1d2acc0: ldp      x30, x21, [sp], #0x20
0x1d2acc4: ret      
0x1d2acc8: bl       #0x1b647c8 | 

// 0x1d2accc UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$CreateWebRequest
0x1d2accc: stp      x30, x23, [sp, #-0x30]!
0x1d2acd0: stp      x22, x21, [sp, #0x10]
0x1d2acd4: stp      x20, x19, [sp, #0x20]
0x1d2acd8: adrp     x22, #0x4475000
0x1d2acdc: adrp     x20, #0x4186000
0x1d2ace0: ldrb     w8, [x22, #0xd45]
0x1d2ace4: ldr      x20, [x20, #0x808]
0x1d2ace8: mov      x21, x1
0x1d2acec: mov      x19, x0
0x1d2acf0: tbnz     w8, #0, #0x1d2ad20
0x1d2acf4: adrp     x0, #0x418b000
0x1d2acf8: ldr      x0, [x0, #0x5d8]
0x1d2acfc: bl       #0x1b64570 | 
0x1d2ad00: adrp     x0, #0x418b000
0x1d2ad04: ldr      x0, [x0, #0x5e0]
0x1d2ad08: bl       #0x1b64570 | 
0x1d2ad0c: adrp     x0, #0x4186000
0x1d2ad10: ldr      x0, [x0, #0x808]
0x1d2ad14: bl       #0x1b64570 | 
0x1d2ad18: mov      w8, #1
0x1d2ad1c: strb     w8, [x22, #0xd45]
0x1d2ad20: ldr      x0, [x20]
0x1d2ad24: adrp     x23, #0x418b000
0x1d2ad28: adrp     x22, #0x418b000
0x1d2ad2c: ldr      w8, [x0, #0xe0]
0x1d2ad30: ldr      x23, [x23, #0x5e0]
0x1d2ad34: ldr      x22, [x22, #0x5d8]
0x1d2ad38: cbnz     w8, #0x1d2ad40
0x1d2ad3c: bl       #0x1b646a4 | 
0x1d2ad40: mov      x0, x21
0x1d2ad44: mov      x1, xzr
0x1d2ad48: bl       #0x3980514 | System.Uri$$EscapeUriString
0x1d2ad4c: ldr      x8, [x20]
0x1d2ad50: mov      x20, x0
0x1d2ad54: mov      x0, x8
0x1d2ad58: bl       #0x1b647b8 | 
0x1d2ad5c: mov      x1, x20
0x1d2ad60: mov      x2, xzr
0x1d2ad64: bl       #0x3974cc4 | System.Uri$$.ctor
0x1d2ad68: ldr      x0, [x23]
0x1d2ad6c: bl       #0x1b647b8 | 
0x1d2ad70: mov      x1, x21
0x1d2ad74: mov      x2, xzr
0x1d2ad78: mov      x20, x0
0x1d2ad7c: bl       #0x3e8fdd0 | UnityEngine.Networking.UnityWebRequest$$.ctor
0x1d2ad80: ldr      x0, [x22]
0x1d2ad84: bl       #0x1b647b8 | 
0x1d2ad88: mov      x1, xzr
0x1d2ad8c: mov      x21, x0
0x1d2ad90: bl       #0x3e8fad8 | UnityEngine.Networking.DownloadHandlerBuffer$$.ctor
0x1d2ad94: cbz      x20, #0x1d2ae38
0x1d2ad98: mov      x0, x20
0x1d2ad9c: mov      x1, x21
0x1d2ada0: mov      x2, xzr
0x1d2ada4: bl       #0x3e9015c | UnityEngine.Networking.UnityWebRequest$$set_downloadHandler
0x1d2ada8: ldr      x0, [x19, #0x50]
0x1d2adac: cbz      x0, #0x1d2ae38
0x1d2adb0: mov      x1, xzr
0x1d2adb4: bl       #0x3bbd0a8 | UnityEngine.ResourceManagement.ResourceProviders.AssetBundleRequestOptions$$get_RedirectLimit
0x1d2adb8: cmp      w0, #1
0x1d2adbc: b.lt     #0x1d2ade0
0x1d2adc0: ldr      x0, [x19, #0x50]
0x1d2adc4: cbz      x0, #0x1d2ae38
0x1d2adc8: mov      x1, xzr
0x1d2adcc: bl       #0x3bbd0a8 | UnityEngine.ResourceManagement.ResourceProviders.AssetBundleRequestOptions$$get_RedirectLimit
0x1d2add0: mov      w1, w0
0x1d2add4: mov      x0, x20
0x1d2add8: mov      x2, xzr
0x1d2addc: bl       #0x3e910a0 | UnityEngine.Networking.UnityWebRequest$$set_redirectLimit
0x1d2ade0: ldr      x8, [x19, #0x48]
0x1d2ade4: cbz      x8, #0x1d2ae38
0x1d2ade8: ldr      x1, [x8, #0xb8]
0x1d2adec: cbz      x1, #0x1d2ae08
0x1d2adf0: mov      x0, x20
0x1d2adf4: mov      x2, xzr
0x1d2adf8: bl       #0x3e91544 | UnityEngine.Networking.UnityWebRequest$$set_certificateHandler
0x1d2adfc: strb     wzr, [x20, #0x38]
0x1d2ae00: ldr      x8, [x19, #0x48]
0x1d2ae04: cbz      x8, #0x1d2ae38
0x1d2ae08: ldr      x8, [x8, #0x20]
0x1d2ae0c: cbz      x8, #0x1d2ae24
0x1d2ae10: ldr      x9, [x8, #0x18]
0x1d2ae14: ldr      x0, [x8, #0x40]
0x1d2ae18: ldr      x2, [x8, #0x28]
0x1d2ae1c: mov      x1, x20
0x1d2ae20: blr      x9
0x1d2ae24: mov      x0, x20
0x1d2ae28: ldp      x20, x19, [sp, #0x20]
0x1d2ae2c: ldp      x22, x21, [sp, #0x10]
0x1d2ae30: ldp      x30, x23, [sp], #0x30
0x1d2ae34: ret      
0x1d2ae38: bl       #0x1b647c8 | 

// 0x1d2ae3c UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$PercentComplete
0x1d2ae3c: ldr      x0, [x0, #0x28]
0x1d2ae40: cbz      x0, #0x1d2ae4c
0x1d2ae44: mov      x1, xzr
0x1d2ae48: b        #0x3c5bd40 | UnityEngine.AsyncOperation$$get_progress
0x1d2ae4c: fmov     s0, wzr
0x1d2ae50: ret      

// 0x1d2ae54 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$GetDownloadStatus
0x1d2ae54: stp      x30, x23, [sp, #-0x30]!
0x1d2ae58: stp      x22, x21, [sp, #0x10]
0x1d2ae5c: stp      x20, x19, [sp, #0x20]
0x1d2ae60: adrp     x21, #0x4475000
0x1d2ae64: ldrb     w9, [x21, #0xd46]
0x1d2ae68: mov      x20, x0
0x1d2ae6c: mov      x19, x8
0x1d2ae70: tbnz     w9, #0, #0x1d2ae88
0x1d2ae74: adrp     x0, #0x418b000
0x1d2ae78: ldr      x0, [x0, #0x5e8]
0x1d2ae7c: bl       #0x1b64570 | 
0x1d2ae80: mov      w8, #1
0x1d2ae84: strb     w8, [x21, #0xd46]
0x1d2ae88: ldr      x8, [x20, #0x50]
0x1d2ae8c: cbz      x8, #0x1d2aec0
0x1d2ae90: mov      x0, x20
0x1d2ae94: bl       #0x1d2ac20 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$get_BytesToDownload
0x1d2ae98: ldr      x8, [x20, #0x28]
0x1d2ae9c: mov      x21, x0
0x1d2aea0: cbz      x8, #0x1d2aecc
0x1d2aea4: mov      x0, x8
0x1d2aea8: mov      x1, xzr
0x1d2aeac: bl       #0x3c5bd40 | UnityEngine.AsyncOperation$$get_progress
0x1d2aeb0: fmov     s1, #1.00000000
0x1d2aeb4: fcmp     s0, s1
0x1d2aeb8: cset     w22, ge
0x1d2aebc: b        #0x1d2aed0 | 
0x1d2aec0: stp      xzr, xzr, [x19]
0x1d2aec4: str      xzr, [x19, #0x10]
0x1d2aec8: b        #0x1d2af94 | 
0x1d2aecc: mov      x22, xzr
0x1d2aed0: mov      x0, x20
0x1d2aed4: bl       #0x1d2ac20 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$get_BytesToDownload
0x1d2aed8: cmp      x0, #1
0x1d2aedc: b.lt     #0x1d2af88
0x1d2aee0: ldr      x8, [x20, #0x30]
0x1d2aee4: cbz      x8, #0x1d2af24
0x1d2aee8: ldr      x0, [x8, #0x28]
0x1d2aeec: cbz      x0, #0x1d2af84
0x1d2aef0: mov      x1, xzr
0x1d2aef4: bl       #0x3e90b70 | UnityEngine.Networking.UnityWebRequest$$get_error
0x1d2aef8: mov      x1, xzr
0x1d2aefc: bl       #0x3308894 | System.String$$IsNullOrEmpty
0x1d2af00: tbz      w0, #0, #0x1d2af24
0x1d2af04: ldr      x8, [x20, #0x30]
0x1d2af08: cbz      x8, #0x1d2af84
0x1d2af0c: ldr      x0, [x8, #0x28]
0x1d2af10: cbz      x0, #0x1d2af84
0x1d2af14: mov      x1, xzr
0x1d2af18: bl       #0x3e91020 | UnityEngine.Networking.UnityWebRequest$$get_downloadedBytes
0x1d2af1c: str      x0, [x20, #0x70]
0x1d2af20: b        #0x1d2af88 | 
0x1d2af24: ldr      x23, [x20, #0x28]
0x1d2af28: cbz      x23, #0x1d2af88
0x1d2af2c: adrp     x8, #0x418b000
0x1d2af30: ldr      x8, [x8, #0x5e8]
0x1d2af34: ldr      x9, [x23]
0x1d2af38: ldr      x8, [x8]
0x1d2af3c: ldrb     w11, [x9, #0x130]
0x1d2af40: ldrb     w10, [x8, #0x130]
0x1d2af44: cmp      w11, w10
0x1d2af48: b.lo     #0x1d2af88
0x1d2af4c: ldr      x9, [x9, #0xc8]
0x1d2af50: add      x9, x9, x10, lsl #3
0x1d2af54: ldur     x9, [x9, #-8]
0x1d2af58: cmp      x9, x8
0x1d2af5c: b.ne     #0x1d2af88
0x1d2af60: ldr      x0, [x23, #0x20]
0x1d2af64: cbz      x0, #0x1d2af84
0x1d2af68: mov      x1, xzr
0x1d2af6c: bl       #0x3e90b70 | UnityEngine.Networking.UnityWebRequest$$get_error
0x1d2af70: mov      x1, xzr
0x1d2af74: bl       #0x3308894 | System.String$$IsNullOrEmpty
0x1d2af78: tbz      w0, #0, #0x1d2af88
0x1d2af7c: ldr      x0, [x23, #0x20]
0x1d2af80: cbnz     x0, #0x1d2af14
0x1d2af84: bl       #0x1b647c8 | 
0x1d2af88: ldr      x8, [x20, #0x70]
0x1d2af8c: str      x22, [x19, #0x10]
0x1d2af90: stp      x21, x8, [x19]
0x1d2af94: ldp      x20, x19, [sp, #0x20]
0x1d2af98: ldp      x22, x21, [sp, #0x10]
0x1d2af9c: ldp      x30, x23, [sp], #0x30
0x1d2afa0: ret      

// 0x1d2afa4 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$GetAssetBundle
0x1d2afa4: str      x30, [sp, #-0x30]!
0x1d2afa8: stp      x22, x21, [sp, #0x10]
0x1d2afac: stp      x20, x19, [sp, #0x20]
0x1d2afb0: adrp     x21, #0x4475000
0x1d2afb4: adrp     x20, #0x4185000
0x1d2afb8: ldrb     w8, [x21, #0xd47]
0x1d2afbc: ldr      x20, [x20, #0x208]
0x1d2afc0: mov      x19, x0
0x1d2afc4: tbnz     w8, #0, #0x1d2b018
0x1d2afc8: adrp     x0, #0x418b000
0x1d2afcc: ldr      x0, [x0, #0x5f0]
0x1d2afd0: bl       #0x1b64570 | 
0x1d2afd4: adrp     x0, #0x4187000
0x1d2afd8: ldr      x0, [x0, #0x9c8]
0x1d2afdc: bl       #0x1b64570 | 
0x1d2afe0: adrp     x0, #0x4185000
0x1d2afe4: ldr      x0, [x0, #0x430]
0x1d2afe8: bl       #0x1b64570 | 
0x1d2afec: adrp     x0, #0x4185000
0x1d2aff0: ldr      x0, [x0, #0x408]
0x1d2aff4: bl       #0x1b64570 | 
0x1d2aff8: adrp     x0, #0x4185000
0x1d2affc: ldr      x0, [x0, #0x208]
0x1d2b000: bl       #0x1b64570 | 
0x1d2b004: adrp     x0, #0x418b000
0x1d2b008: ldr      x0, [x0, #0x5f8]
0x1d2b00c: bl       #0x1b64570 | 
0x1d2b010: mov      w8, #1
0x1d2b014: strb     w8, [x21, #0xd47]
0x1d2b018: ldr      x0, [x20]
0x1d2b01c: ldr      x20, [x19, #0x18]
0x1d2b020: ldr      w8, [x0, #0xe0]
0x1d2b024: cbnz     w8, #0x1d2b02c
0x1d2b028: bl       #0x1b646a4 | 
0x1d2b02c: mov      x0, x20
0x1d2b030: mov      x1, xzr
0x1d2b034: mov      x2, xzr
0x1d2b038: bl       #0x3c619b8 | UnityEngine.Object$$op_Equality
0x1d2b03c: tbz      w0, #0, #0x1d2b1f8
0x1d2b040: ldr      x0, [x19, #0x20]
0x1d2b044: cbz      x0, #0x1d2b1b0
0x1d2b048: ldr      x8, [x19, #0x50]
0x1d2b04c: cbz      x8, #0x1d2b058
0x1d2b050: ldr      w21, [x8, #0x18]
0x1d2b054: b        #0x1d2b05c | 
0x1d2b058: mov      w21, wzr
0x1d2b05c: mov      x1, xzr
0x1d2b060: bl       #0x3e8f454 | UnityEngine.Networking.DownloadHandler$$get_data
0x1d2b064: adrp     x8, #0x4185000
0x1d2b068: ldr      x8, [x8, #0x408]
0x1d2b06c: mov      x22, x0
0x1d2b070: ldr      x8, [x8]
0x1d2b074: mov      x0, x8
0x1d2b078: bl       #0x1b647b8 | 
0x1d2b07c: mov      x1, x22
0x1d2b080: mov      w2, wzr
0x1d2b084: mov      x3, xzr
0x1d2b088: mov      x20, x0
0x1d2b08c: bl       #0x33cfb18 | System.IO.MemoryStream$$.ctor
0x1d2b090: cbz      x20, #0x1d2b214
0x1d2b094: ldr      x8, [x20]
0x1d2b098: ldr      x9, [x8, #0x338]
0x1d2b09c: ldr      x3, [x8, #0x340]
0x1d2b0a0: mov      x0, x20
0x1d2b0a4: mov      x1, xzr
0x1d2b0a8: mov      w2, wzr
0x1d2b0ac: blr      x9
0x1d2b0b0: ldr      x0, [x19, #0x10]
0x1d2b0b4: ldr      x1, [x19, #0x50]
0x1d2b0b8: bl       #0x1d2aa78 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$GetEncryptedAssetLocalPath
0x1d2b0bc: mov      x1, x20
0x1d2b0c0: mov      x2, x0
0x1d2b0c4: bl       #0x1d2b2f8 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$SaveDownloadedBundle
0x1d2b0c8: adrp     x8, #0x4187000
0x1d2b0cc: ldr      x8, [x8, #0x9c8]
0x1d2b0d0: ldr      x0, [x8]
0x1d2b0d4: ldr      w8, [x0, #0xe0]
0x1d2b0d8: cbnz     w8, #0x1d2b0e0
0x1d2b0dc: bl       #0x1b646a4 | 
0x1d2b0e0: mov      x0, x20
0x1d2b0e4: bl       #0x1d29b80 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$Decrypt
0x1d2b0e8: cbz      x0, #0x1d2b220
0x1d2b0ec: adrp     x8, #0x418b000
0x1d2b0f0: ldr      x8, [x8, #0x5f8]
0x1d2b0f4: ldr      x1, [x8]
0x1d2b0f8: bl       #0x224eb8c | System.Threading.Tasks.Task<object>$$get_Result
0x1d2b0fc: cbz      x0, #0x1d2b138
0x1d2b100: mov      w1, w21
0x1d2b104: mov      x2, xzr
0x1d2b108: bl       #0x3c160e4 | UnityEngine.AssetBundle$$LoadFromStream
0x1d2b10c: mov      x8, x0
0x1d2b110: ldr      x0, [x19, #0x20]
0x1d2b114: str      x8, [x19, #0x18]
0x1d2b118: cbz      x0, #0x1d2b224
0x1d2b11c: ldr      x8, [x0]
0x1d2b120: ldp      x9, x1, [x8, #0x188]
0x1d2b124: blr      x9
0x1d2b128: mov      x21, xzr
0x1d2b12c: str      xzr, [x19, #0x20]
0x1d2b130: mov      w22, #2
0x1d2b134: b        #0x1d2b140 | 
0x1d2b138: mov      x21, xzr
0x1d2b13c: mov      w22, #7
0x1d2b140: adrp     x10, #0x4185000
0x1d2b144: ldr      x8, [x20]
0x1d2b148: ldr      x10, [x10, #0x430]
0x1d2b14c: ldrh     w9, [x8, #0x12e]
0x1d2b150: ldr      x1, [x10]
0x1d2b154: cbz      x9, #0x1d2b178
0x1d2b158: ldr      x10, [x8, #0xb0]
0x1d2b15c: add      x10, x10, #8
0x1d2b160: ldur     x11, [x10, #-8]
0x1d2b164: cmp      x11, x1
0x1d2b168: b.eq     #0x1d2b188
0x1d2b16c: subs     x9, x9, #1
0x1d2b170: add      x10, x10, #0x10
0x1d2b174: b.ne     #0x1d2b160
0x1d2b178: mov      x0, x20
0x1d2b17c: mov      w2, wzr
0x1d2b180: bl       #0x1bc5638 | 
0x1d2b184: b        #0x1d2b194 | 
0x1d2b188: ldrsw    x9, [x10]
0x1d2b18c: add      x8, x8, x9, lsl #4
0x1d2b190: add      x0, x8, #0x138
0x1d2b194: ldp      x8, x1, [x0]
0x1d2b198: mov      x0, x20
0x1d2b19c: blr      x8
0x1d2b1a0: cbnz     x21, #0x1d2b218
0x1d2b1a4: cmp      w22, #2
0x1d2b1a8: b.eq     #0x1d2b1f8
0x1d2b1ac: cbnz     w22, #0x1d2b20c
0x1d2b1b0: ldr      x0, [x19, #0x28]
0x1d2b1b4: cbz      x0, #0x1d2b1f8
0x1d2b1b8: adrp     x8, #0x418b000
0x1d2b1bc: ldr      x8, [x8, #0x5f0]
0x1d2b1c0: ldr      x9, [x0]
0x1d2b1c4: ldr      x8, [x8]
0x1d2b1c8: ldrb     w11, [x9, #0x130]
0x1d2b1cc: ldrb     w10, [x8, #0x130]
0x1d2b1d0: cmp      w11, w10
0x1d2b1d4: b.lo     #0x1d2b1f8
0x1d2b1d8: ldr      x9, [x9, #0xc8]
0x1d2b1dc: add      x9, x9, x10, lsl #3
0x1d2b1e0: ldur     x9, [x9, #-8]
0x1d2b1e4: cmp      x9, x8
0x1d2b1e8: b.ne     #0x1d2b1f8
0x1d2b1ec: mov      x1, xzr
0x1d2b1f0: bl       #0x3c166c4 | UnityEngine.AssetBundleCreateRequest$$get_assetBundle
0x1d2b1f4: str      x0, [x19, #0x18]
0x1d2b1f8: ldr      x0, [x19, #0x18]
0x1d2b1fc: ldp      x20, x19, [sp, #0x20]
0x1d2b200: ldp      x22, x21, [sp, #0x10]
0x1d2b204: ldr      x30, [sp], #0x30
0x1d2b208: ret      
0x1d2b20c: mov      x0, xzr
0x1d2b210: b        #0x1d2b1fc | 
0x1d2b214: bl       #0x1b647c8 | 
0x1d2b218: mov      x0, x21
0x1d2b21c: bl       #0x1b647c0 | 
0x1d2b220: bl       #0x1b647c8 | 
0x1d2b224: bl       #0x1b647c8 | 
0x1d2b228: b        #0x1d2b248 | 
0x1d2b22c: b        #0x1d2b248 | 
0x1d2b230: b        #0x1d2b248 | 
0x1d2b234: b        #0x1d2b248 | 
0x1d2b238: b        #0x1d2b248 | 
0x1d2b23c: b        #0x1d2b248 | 
0x1d2b240: b        #0x1d2b248 | 
0x1d2b244: b        #0x1d2b248 | 
0x1d2b248: mov      x22, x0
0x1d2b24c: cmp      w1, #1
0x1d2b250: b.ne     #0x1d2b270
0x1d2b254: mov      x0, x22
0x1d2b258: bl       #0x3e998d0 | 
0x1d2b25c: ldr      x21, [x0]
0x1d2b260: bl       #0x3e998e0 | 
0x1d2b264: mov      w22, wzr
0x1d2b268: cbnz     x20, #0x1d2b140
0x1d2b26c: b        #0x1d2b1a0 | 
0x1d2b270: mov      x21, xzr
0x1d2b274: b        #0x1d2b27c | 
0x1d2b278: mov      x22, x0
0x1d2b27c: cbz      x20, #0x1d2b2e0
0x1d2b280: adrp     x10, #0x4185000
0x1d2b284: ldr      x8, [x20]
0x1d2b288: ldr      x10, [x10, #0x430]
0x1d2b28c: ldrh     w9, [x8, #0x12e]
0x1d2b290: ldr      x1, [x10]
0x1d2b294: cbz      x9, #0x1d2b2b8
0x1d2b298: ldr      x10, [x8, #0xb0]
0x1d2b29c: add      x10, x10, #8
0x1d2b2a0: ldur     x11, [x10, #-8]
0x1d2b2a4: cmp      x11, x1
0x1d2b2a8: b.eq     #0x1d2b2c8
0x1d2b2ac: subs     x9, x9, #1
0x1d2b2b0: add      x10, x10, #0x10
0x1d2b2b4: b.ne     #0x1d2b2a0
0x1d2b2b8: mov      x0, x20
0x1d2b2bc: mov      w2, wzr
0x1d2b2c0: bl       #0x1bc5638 | 
0x1d2b2c4: b        #0x1d2b2d4 | 
0x1d2b2c8: ldrsw    x9, [x10]
0x1d2b2cc: add      x8, x8, x9, lsl #4
0x1d2b2d0: add      x0, x8, #0x138
0x1d2b2d4: ldp      x8, x1, [x0]
0x1d2b2d8: mov      x0, x20
0x1d2b2dc: blr      x8
0x1d2b2e0: cbnz     x21, #0x1d2b2ec
0x1d2b2e4: mov      x0, x22
0x1d2b2e8: bl       #0x1c65b3c | 
0x1d2b2ec: mov      x0, x21
0x1d2b2f0: bl       #0x1b647c0 | 
0x1d2b2f4: bl       #0x194772c | 

// 0x1d2b2f8 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$SaveDownloadedBundle
0x1d2b2f8: str      x30, [sp, #-0x40]!
0x1d2b2fc: stp      x24, x23, [sp, #0x10]
0x1d2b300: stp      x22, x21, [sp, #0x20]
0x1d2b304: stp      x20, x19, [sp, #0x30]
0x1d2b308: adrp     x20, #0x4475000
0x1d2b30c: adrp     x22, #0x4185000
0x1d2b310: ldrb     w8, [x20, #0xd48]
0x1d2b314: ldr      x22, [x22, #0xfa8]
0x1d2b318: mov      x19, x2
0x1d2b31c: mov      x21, x1
0x1d2b320: tbnz     w8, #0, #0x1d2b344
0x1d2b324: adrp     x0, #0x4185000
0x1d2b328: ldr      x0, [x0, #0x430]
0x1d2b32c: bl       #0x1b64570 | 
0x1d2b330: adrp     x0, #0x4185000
0x1d2b334: ldr      x0, [x0, #0xfa8]
0x1d2b338: bl       #0x1b64570 | 
0x1d2b33c: mov      w8, #1
0x1d2b340: strb     w8, [x20, #0xd48]
0x1d2b344: ldr      x0, [x22]
0x1d2b348: ldr      w8, [x0, #0xe0]
0x1d2b34c: cbnz     w8, #0x1d2b354
0x1d2b350: bl       #0x1b646a4 | 
0x1d2b354: mov      x0, x19
0x1d2b358: mov      x1, xzr
0x1d2b35c: bl       #0x33ff134 | System.IO.Path$$GetDirectoryName
0x1d2b360: mov      x1, xzr
0x1d2b364: mov      x20, x0
0x1d2b368: bl       #0x33df0e4 | System.IO.Directory$$Exists
0x1d2b36c: tbnz     w0, #0, #0x1d2b37c
0x1d2b370: mov      x0, x20
0x1d2b374: mov      x1, xzr
0x1d2b378: bl       #0x33def50 | System.IO.Directory$$CreateDirectory
0x1d2b37c: mov      x0, x19
0x1d2b380: mov      x1, xzr
0x1d2b384: bl       #0x33e0a80 | System.IO.File$$Create
0x1d2b388: adrp     x24, #0x4185000
0x1d2b38c: ldr      x24, [x24, #0x430]
0x1d2b390: mov      x20, x0
0x1d2b394: cbz      x21, #0x1d2b428
0x1d2b398: ldr      x8, [x21]
0x1d2b39c: ldr      x9, [x8, #0x3f8]
0x1d2b3a0: ldr      x2, [x8, #0x400]
0x1d2b3a4: mov      x0, x21
0x1d2b3a8: mov      x1, x20
0x1d2b3ac: blr      x9
0x1d2b3b0: mov      x21, xzr
0x1d2b3b4: cbz      x20, #0x1d2b410
0x1d2b3b8: ldr      x8, [x20]
0x1d2b3bc: ldr      x1, [x24]
0x1d2b3c0: ldrh     w9, [x8, #0x12e]
0x1d2b3c4: cbz      x9, #0x1d2b3e8
0x1d2b3c8: ldr      x10, [x8, #0xb0]
0x1d2b3cc: add      x10, x10, #8
0x1d2b3d0: ldur     x11, [x10, #-8]
0x1d2b3d4: cmp      x11, x1
0x1d2b3d8: b.eq     #0x1d2b3f8
0x1d2b3dc: subs     x9, x9, #1
0x1d2b3e0: add      x10, x10, #0x10
0x1d2b3e4: b.ne     #0x1d2b3d0
0x1d2b3e8: mov      x0, x20
0x1d2b3ec: mov      w2, wzr
0x1d2b3f0: bl       #0x1bc5638 | 
0x1d2b3f4: b        #0x1d2b404 | 
0x1d2b3f8: ldrsw    x9, [x10]
0x1d2b3fc: add      x8, x8, x9, lsl #4
0x1d2b400: add      x0, x8, #0x138
0x1d2b404: ldp      x8, x1, [x0]
0x1d2b408: mov      x0, x20
0x1d2b40c: blr      x8
0x1d2b410: cbnz     x21, #0x1d2b42c
0x1d2b414: ldp      x20, x19, [sp, #0x30]
0x1d2b418: ldp      x22, x21, [sp, #0x20]
0x1d2b41c: ldp      x24, x23, [sp, #0x10]
0x1d2b420: ldr      x30, [sp], #0x40
0x1d2b424: ret      
0x1d2b428: bl       #0x1b647c8 | 
0x1d2b42c: mov      x0, x21
0x1d2b430: bl       #0x1b647c0 | 
0x1d2b434: b        #0x1d2b4d8 | 
0x1d2b438: mov      x23, x1
0x1d2b43c: cmp      w23, #1
0x1d2b440: mov      x22, x0
0x1d2b444: b.ne     #0x1d2b45c
0x1d2b448: mov      x0, x22
0x1d2b44c: bl       #0x3e998d0 | 
0x1d2b450: ldr      x21, [x0]
0x1d2b454: bl       #0x3e998e0 | 
0x1d2b458: b        #0x1d2b3b4 | 
0x1d2b45c: mov      x21, xzr
0x1d2b460: cbz      x20, #0x1d2b4bc
0x1d2b464: ldr      x8, [x20]
0x1d2b468: ldr      x1, [x24]
0x1d2b46c: ldrh     w9, [x8, #0x12e]
0x1d2b470: cbz      x9, #0x1d2b494
0x1d2b474: ldr      x10, [x8, #0xb0]
0x1d2b478: add      x10, x10, #8
0x1d2b47c: ldur     x11, [x10, #-8]
0x1d2b480: cmp      x11, x1
0x1d2b484: b.eq     #0x1d2b4a4
0x1d2b488: subs     x9, x9, #1
0x1d2b48c: add      x10, x10, #0x10
0x1d2b490: b.ne     #0x1d2b47c
0x1d2b494: mov      x0, x20
0x1d2b498: mov      w2, wzr
0x1d2b49c: bl       #0x1bc5638 | 
0x1d2b4a0: b        #0x1d2b4b0 | 
0x1d2b4a4: ldrsw    x9, [x10]
0x1d2b4a8: add      x8, x8, x9, lsl #4
0x1d2b4ac: add      x0, x8, #0x138
0x1d2b4b0: ldp      x8, x1, [x0]
0x1d2b4b4: mov      x0, x20
0x1d2b4b8: blr      x8
0x1d2b4bc: cbz      x21, #0x1d2b4e0
0x1d2b4c0: mov      x0, x21
0x1d2b4c4: bl       #0x1b647c0 | 
0x1d2b4c8: mov      x23, x1
0x1d2b4cc: mov      x22, x0
0x1d2b4d0: cbnz     x20, #0x1d2b464
0x1d2b4d4: b        #0x1d2b4bc | 
0x1d2b4d8: mov      x23, x1
0x1d2b4dc: mov      x22, x0
0x1d2b4e0: cmp      w23, #1
0x1d2b4e4: b.ne     #0x1d2b604
0x1d2b4e8: mov      x0, x22
0x1d2b4ec: bl       #0x3e998d0 | 
0x1d2b4f0: mov      x20, x0
0x1d2b4f4: adrp     x0, #0x4185000
0x1d2b4f8: ldr      x0, [x0, #0x2e0]
0x1d2b4fc: bl       #0x1b64584 | 
0x1d2b500: ldr      x8, [x20]
0x1d2b504: ldr      x1, [x8]
0x1d2b508: bl       #0x1b64bf8 | 
0x1d2b50c: tbz      w0, #0, #0x1d2b5dc
0x1d2b510: ldr      x20, [x20]
0x1d2b514: bl       #0x3e998e0 | 
0x1d2b518: cbz      x19, #0x1d2b5d8
0x1d2b51c: adrp     x0, #0x4186000
0x1d2b520: ldr      x0, [x0, #0x7d8] | 0x41867d8 '/'
0x1d2b524: bl       #0x1b64584 | 
0x1d2b528: mov      x21, x0
0x1d2b52c: adrp     x0, #0x418b000
0x1d2b530: ldr      x0, [x0, #0x480] | 0x418b480 '\\'
0x1d2b534: bl       #0x1b64584 | 
0x1d2b538: mov      x2, x0
0x1d2b53c: mov      x0, x19
0x1d2b540: mov      x1, x21
0x1d2b544: mov      x3, xzr
0x1d2b548: bl       #0x330a0e8 | System.String$$Replace
0x1d2b54c: mov      x19, x0
0x1d2b550: adrp     x0, #0x418b000
0x1d2b554: ldr      x0, [x0, #0x600] | 0x418b600 'Failed To Save Data to: '
0x1d2b558: bl       #0x1b64584 | 
0x1d2b55c: mov      x1, x19
0x1d2b560: mov      x2, xzr
0x1d2b564: bl       #0x32fce8c | System.String$$Concat
0x1d2b568: mov      x19, x0
0x1d2b56c: adrp     x0, #0x4185000
0x1d2b570: ldr      x0, [x0, #0xb38]
0x1d2b574: bl       #0x1b64584 | 
0x1d2b578: ldr      w8, [x0, #0xe0]
0x1d2b57c: cbnz     w8, #0x1d2b584
0x1d2b580: bl       #0x1b646a4 | 
0x1d2b584: mov      x0, x19
0x1d2b588: mov      x1, xzr
0x1d2b58c: bl       #0x3c23bb4 | UnityEngine.Debug$$LogWarning
0x1d2b590: cbz      x20, #0x1d2b5d8
0x1d2b594: ldr      x8, [x20]
0x1d2b598: mov      x0, x20
0x1d2b59c: ldp      x9, x1, [x8, #0x188]
0x1d2b5a0: blr      x9
0x1d2b5a4: mov      x19, x0
0x1d2b5a8: adrp     x0, #0x418b000
0x1d2b5ac: ldr      x0, [x0, #0x608] | 0x418b608 'Error: '
0x1d2b5b0: bl       #0x1b64584 | 
0x1d2b5b4: mov      x1, x19
0x1d2b5b8: mov      x2, xzr
0x1d2b5bc: bl       #0x32fce8c | System.String$$Concat
0x1d2b5c0: ldp      x20, x19, [sp, #0x30]
0x1d2b5c4: ldp      x22, x21, [sp, #0x20]
0x1d2b5c8: ldp      x24, x23, [sp, #0x10]
0x1d2b5cc: mov      x1, xzr
0x1d2b5d0: ldr      x30, [sp], #0x40
0x1d2b5d4: b        #0x3c23bb4 | UnityEngine.Debug$$LogWarning
0x1d2b5d8: bl       #0x1b647c8 | 
0x1d2b5dc: mov      w0, #8
0x1d2b5e0: bl       #0x3e998f0 | 
0x1d2b5e4: ldr      x8, [x20]
0x1d2b5e8: str      x8, [x0]
0x1d2b5ec: adrp     x1, #0x3e9f000
0x1d2b5f0: add      x1, x1, #0xc98
0x1d2b5f4: mov      x2, xzr
0x1d2b5f8: bl       #0x3e99900 | 
0x1d2b5fc: mov      x22, x0
0x1d2b600: bl       #0x3e998e0 | 
0x1d2b604: mov      x0, x22
0x1d2b608: bl       #0x1c65b3c | 
0x1d2b60c: bl       #0x194772c | 

// 0x1d2b610 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$OnUnloadOperationComplete
0x1d2b610: str      xzr, [x0, #0x80]
0x1d2b614: b        #0x1d2b618 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$BeginOperation

// 0x1d2b618 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$BeginOperation
0x1d2b618: sub      sp, sp, #0x50
0x1d2b61c: stp      x30, x23, [sp, #0x20]
0x1d2b620: stp      x22, x21, [sp, #0x30]
0x1d2b624: stp      x20, x19, [sp, #0x40]
0x1d2b628: adrp     x20, #0x4475000
0x1d2b62c: ldrb     w8, [x20, #0xd4c]
0x1d2b630: mov      x19, x0
0x1d2b634: tbnz     w8, #0, #0x1d2b6ac
0x1d2b638: adrp     x0, #0x418b000
0x1d2b63c: ldr      x0, [x0, #0x610]
0x1d2b640: bl       #0x1b64570 | 
0x1d2b644: adrp     x0, #0x4185000
0x1d2b648: ldr      x0, [x0, #0xd50]
0x1d2b64c: bl       #0x1b64570 | 
0x1d2b650: adrp     x0, #0x418b000
0x1d2b654: ldr      x0, [x0, #0x618]
0x1d2b658: bl       #0x1b64570 | 
0x1d2b65c: adrp     x0, #0x418b000
0x1d2b660: ldr      x0, [x0, #0x620]
0x1d2b664: bl       #0x1b64570 | 
0x1d2b668: adrp     x0, #0x418b000
0x1d2b66c: ldr      x0, [x0, #0x628]
0x1d2b670: bl       #0x1b64570 | 
0x1d2b674: adrp     x0, #0x418b000
0x1d2b678: ldr      x0, [x0, #0x630]
0x1d2b67c: bl       #0x1b64570 | 
0x1d2b680: adrp     x0, #0x418b000
0x1d2b684: ldr      x0, [x0, #0x638] | 0x418b638 "Invalid path in C9SecretAssetBundleProvider: '"
0x1d2b688: bl       #0x1b64570 | 
0x1d2b68c: adrp     x0, #0x418b000
0x1d2b690: ldr      x0, [x0, #0x640] | 0x418b640 'jar:'
0x1d2b694: bl       #0x1b64570 | 
0x1d2b698: adrp     x0, #0x418b000
0x1d2b69c: ldr      x0, [x0, #0x648] | 0x418b648 "'."
0x1d2b6a0: bl       #0x1b64570 | 
0x1d2b6a4: mov      w8, #1
0x1d2b6a8: strb     w8, [x20, #0xd4c]
0x1d2b6ac: str      wzr, [sp, #0x1c]
0x1d2b6b0: ldr      x8, [x19, #0x48]
0x1d2b6b4: ldur     q0, [x19, #0x38]
0x1d2b6b8: add      x21, x19, #0x88
0x1d2b6bc: mov      x0, sp
0x1d2b6c0: add      x1, sp, #0x1c
0x1d2b6c4: mov      x2, x21
0x1d2b6c8: str      xzr, [x19, #0x70]
0x1d2b6cc: str      x8, [sp, #0x10]
0x1d2b6d0: str      q0, [sp]
0x1d2b6d4: bl       #0x1d2c2e4 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$GetLoadInfo
0x1d2b6d8: ldr      w8, [sp, #0x1c]
0x1d2b6dc: cmp      w8, #2
0x1d2b6e0: b.eq     #0x1d2b704
0x1d2b6e4: cmp      w8, #1
0x1d2b6e8: b.ne     #0x1d2b770
0x1d2b6ec: ldr      x8, [x19, #0x50]
0x1d2b6f0: mov      w9, #1
0x1d2b6f4: str      w9, [x19, #0x60]
0x1d2b6f8: cbz      x8, #0x1d2b88c
0x1d2b6fc: ldr      w20, [x8, #0x18]
0x1d2b700: b        #0x1d2b890 | 
0x1d2b704: ldr      x1, [x19, #0x88]
0x1d2b708: mov      x0, x19
0x1d2b70c: strb     wzr, [x19, #0x58]
0x1d2b710: bl       #0x1d2accc | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$CreateWebRequest
0x1d2b714: cbz      x0, #0x1d2b94c
0x1d2b718: strb     wzr, [x0, #0x39]
0x1d2b71c: adrp     x8, #0x418b000
0x1d2b720: ldr      x8, [x8, #0x630]
0x1d2b724: mov      x20, x0
0x1d2b728: ldr      x0, [x8]
0x1d2b72c: ldr      w8, [x0, #0xe0]
0x1d2b730: cbnz     w8, #0x1d2b738
0x1d2b734: bl       #0x1b646a4 | 
0x1d2b738: mov      x0, x20
0x1d2b73c: mov      x1, xzr
0x1d2b740: bl       #0x3bb45ac | UnityEngine.ResourceManagement.WebRequestQueue$$QueueRequest
0x1d2b744: str      x0, [x19, #0x30]
0x1d2b748: cbz      x0, #0x1d2b94c
0x1d2b74c: mov      x1, xzr
0x1d2b750: bl       #0x3bb446c | UnityEngine.ResourceManagement.WebRequestQueueOperation$$get_IsDone
0x1d2b754: ldr      x22, [x19, #0x30]
0x1d2b758: cbz      x22, #0x1d2b94c
0x1d2b75c: tbz      w0, #0, #0x1d2b810
0x1d2b760: ldr      x1, [x22, #0x18]
0x1d2b764: mov      x0, x19
0x1d2b768: bl       #0x1d2c620 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$BeginWebRequestOperation
0x1d2b76c: b        #0x1d2b930 | 
0x1d2b770: str      wzr, [x19, #0x60]
0x1d2b774: str      xzr, [x19, #0x28]
0x1d2b778: adrp     x8, #0x418b000
0x1d2b77c: adrp     x9, #0x418b000
0x1d2b780: ldr      x1, [x19, #0x88]
0x1d2b784: ldr      x8, [x8, #0x638] | 0x418b638 "Invalid path in C9SecretAssetBundleProvider: '"
0x1d2b788: ldr      x9, [x9, #0x648] | 0x418b648 "'."
0x1d2b78c: mov      x3, xzr
0x1d2b790: add      x20, x19, #0x38
0x1d2b794: ldr      x0, [x8]
0x1d2b798: ldr      x2, [x9]
0x1d2b79c: bl       #0x33087d4 | System.String$$Concat
0x1d2b7a0: mov      x21, x0
0x1d2b7a4: mov      x0, x20
0x1d2b7a8: mov      x1, xzr
0x1d2b7ac: bl       #0x3bbd43c | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$get_Location
0x1d2b7b0: adrp     x8, #0x418b000
0x1d2b7b4: ldr      x8, [x8, #0x628]
0x1d2b7b8: mov      x22, x0
0x1d2b7bc: ldr      x8, [x8]
0x1d2b7c0: mov      x0, x8
0x1d2b7c4: bl       #0x1b647b8 | 
0x1d2b7c8: mov      x1, x21
0x1d2b7cc: mov      x2, x22
0x1d2b7d0: mov      x3, xzr
0x1d2b7d4: mov      x4, xzr
0x1d2b7d8: mov      x5, xzr
0x1d2b7dc: mov      x23, x0
0x1d2b7e0: bl       #0x3bb5748 | UnityEngine.ResourceManagement.Exceptions.RemoteProviderException$$.ctor
0x1d2b7e4: adrp     x8, #0x418b000
0x1d2b7e8: ldr      x8, [x8, #0x620]
0x1d2b7ec: mov      x0, x20
0x1d2b7f0: mov      x1, xzr
0x1d2b7f4: mov      w2, wzr
0x1d2b7f8: ldr      x4, [x8]
0x1d2b7fc: mov      x3, x23
0x1d2b800: bl       #0x1fe5538 | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$Complete<object>
0x1d2b804: mov      w8, #1
0x1d2b808: strb     w8, [x19, #0x78]
0x1d2b80c: b        #0x1d2b930 | 
0x1d2b810: adrp     x23, #0x418b000
0x1d2b814: ldr      x20, [x22, #0x20]
0x1d2b818: ldr      x23, [x23, #0x610]
0x1d2b81c: ldr      x0, [x23]
0x1d2b820: bl       #0x1b647b8 | 
0x1d2b824: adrp     x8, #0x418b000
0x1d2b828: ldr      x8, [x8, #0x618]
0x1d2b82c: mov      x1, x19
0x1d2b830: mov      x3, xzr
0x1d2b834: mov      x21, x0
0x1d2b838: ldr      x2, [x8]
0x1d2b83c: bl       #0x3035f4c | System.Action<object>$$.ctor
0x1d2b840: mov      x0, x20
0x1d2b844: mov      x1, x21
0x1d2b848: mov      x2, xzr
0x1d2b84c: bl       #0x34c3ce0 | System.Delegate$$Combine
0x1d2b850: cbz      x0, #0x1d2b944
0x1d2b854: ldr      x20, [x23]
0x1d2b858: mov      x19, x0
0x1d2b85c: mov      x1, x20
0x1d2b860: bl       #0x1b646a8 | 
0x1d2b864: cbz      x0, #0x1d2b880
0x1d2b868: str      x0, [x22, #0x20]
0x1d2b86c: ldr      x20, [x23]
0x1d2b870: mov      x0, x19
0x1d2b874: mov      x1, x20
0x1d2b878: bl       #0x1b646a8 | 
0x1d2b87c: cbnz     x0, #0x1d2b930
0x1d2b880: mov      x0, x19
0x1d2b884: mov      x1, x20
0x1d2b888: bl       #0x1b64b68 | 
0x1d2b88c: mov      w20, wzr
0x1d2b890: adrp     x8, #0x4185000
0x1d2b894: ldr      x8, [x8, #0xd50]
0x1d2b898: ldr      x0, [x8]
0x1d2b89c: ldr      w8, [x0, #0xe0]
0x1d2b8a0: cbnz     w8, #0x1d2b8a8
0x1d2b8a4: bl       #0x1b646a4 | 
0x1d2b8a8: mov      x0, xzr
0x1d2b8ac: bl       #0x3c1db30 | UnityEngine.Application$$get_platform
0x1d2b8b0: cmp      w0, #0xb
0x1d2b8b4: b.ne     #0x1d2b8f0
0x1d2b8b8: ldr      x0, [x21]
0x1d2b8bc: cbz      x0, #0x1d2b94c
0x1d2b8c0: adrp     x8, #0x418b000
0x1d2b8c4: ldr      x8, [x8, #0x640] | 0x418b640 'jar:'
0x1d2b8c8: mov      w2, #4
0x1d2b8cc: mov      x3, xzr
0x1d2b8d0: ldr      x1, [x8]
0x1d2b8d4: bl       #0x330838c | System.String$$StartsWith
0x1d2b8d8: tbz      w0, #0, #0x1d2b8f0
0x1d2b8dc: ldr      x1, [x19, #0x88]
0x1d2b8e0: mov      w3, #1
0x1d2b8e4: mov      x0, x19
0x1d2b8e8: mov      w2, w20
0x1d2b8ec: b        #0x1d2b92c | 
0x1d2b8f0: ldr      x0, [x21]
0x1d2b8f4: mov      x1, xzr
0x1d2b8f8: bl       #0x33d2e48 | System.IO.File$$Exists
0x1d2b8fc: ldr      x8, [x21]
0x1d2b900: tbz      w0, #0, #0x1d2b910
0x1d2b904: mov      x0, x19
0x1d2b908: mov      x1, x8
0x1d2b90c: b        #0x1d2b924 | 
0x1d2b910: ldr      x1, [x19, #0x50]
0x1d2b914: mov      x0, x8
0x1d2b918: bl       #0x1d2aa78 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$GetEncryptedAssetLocalPath
0x1d2b91c: mov      x1, x0
0x1d2b920: mov      x0, x19
0x1d2b924: mov      w2, w20
0x1d2b928: mov      w3, wzr
0x1d2b92c: bl       #0x1d2c560 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$LoadLocalAssetBundle
0x1d2b930: ldp      x20, x19, [sp, #0x40]
0x1d2b934: ldp      x22, x21, [sp, #0x30]
0x1d2b938: ldp      x30, x23, [sp, #0x20]
0x1d2b93c: add      sp, sp, #0x50
0x1d2b940: ret      
0x1d2b944: str      xzr, [x22, #0x20]
0x1d2b948: b        #0x1d2b930 | 
0x1d2b94c: bl       #0x1b647c8 | 

// 0x1d2b950 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$WaitForCompletionHandler
0x1d2b950: stp      x30, x21, [sp, #-0x20]!
0x1d2b954: stp      x20, x19, [sp, #0x10]
0x1d2b958: adrp     x20, #0x4475000
0x1d2b95c: ldrb     w8, [x20, #0xd4a]
0x1d2b960: mov      x19, x0
0x1d2b964: tbnz     w8, #0, #0x1d2b9d0
0x1d2b968: adrp     x0, #0x418b000
0x1d2b96c: ldr      x0, [x0, #0x570]
0x1d2b970: bl       #0x1b64570 | 
0x1d2b974: adrp     x0, #0x418b000
0x1d2b978: ldr      x0, [x0, #0x580]
0x1d2b97c: bl       #0x1b64570 | 
0x1d2b980: adrp     x0, #0x418b000
0x1d2b984: ldr      x0, [x0, #0x650]
0x1d2b988: bl       #0x1b64570 | 
0x1d2b98c: adrp     x0, #0x418b000
0x1d2b990: ldr      x0, [x0, #0x658]
0x1d2b994: bl       #0x1b64570 | 
0x1d2b998: adrp     x0, #0x4185000
0x1d2b99c: ldr      x0, [x0, #0x208]
0x1d2b9a0: bl       #0x1b64570 | 
0x1d2b9a4: adrp     x0, #0x418b000
0x1d2b9a8: ldr      x0, [x0, #0x660]
0x1d2b9ac: bl       #0x1b64570 | 
0x1d2b9b0: adrp     x0, #0x418b000
0x1d2b9b4: ldr      x0, [x0, #0x5e8]
0x1d2b9b8: bl       #0x1b64570 | 
0x1d2b9bc: adrp     x0, #0x418b000
0x1d2b9c0: ldr      x0, [x0, #0x630]
0x1d2b9c4: bl       #0x1b64570 | 
0x1d2b9c8: mov      w8, #1
0x1d2b9cc: strb     w8, [x20, #0xd4a]
0x1d2b9d0: ldr      x0, [x19, #0x80]
0x1d2b9d4: cbz      x0, #0x1d2ba44
0x1d2b9d8: mov      x1, xzr
0x1d2b9dc: bl       #0x3c5bd04 | UnityEngine.AsyncOperation$$get_isDone
0x1d2b9e0: tbnz     w0, #0, #0x1d2ba44
0x1d2b9e4: adrp     x8, #0x418b000
0x1d2b9e8: ldr      x20, [x19, #0x80]
0x1d2b9ec: ldr      x8, [x8, #0x570]
0x1d2b9f0: ldr      x0, [x8]
0x1d2b9f4: bl       #0x1b647b8 | 
0x1d2b9f8: adrp     x8, #0x418b000
0x1d2b9fc: ldr      x8, [x8, #0x580]
0x1d2ba00: mov      x1, x19
0x1d2ba04: mov      x3, xzr
0x1d2ba08: mov      x21, x0
0x1d2ba0c: ldr      x2, [x8]
0x1d2ba10: bl       #0x3035f4c | System.Action<object>$$.ctor
0x1d2ba14: cbz      x20, #0x1d2bc3c
0x1d2ba18: mov      x0, x20
0x1d2ba1c: mov      x1, x21
0x1d2ba20: mov      x2, xzr
0x1d2ba24: bl       #0x3c5c028 | UnityEngine.AsyncOperation$$remove_completed
0x1d2ba28: ldr      x0, [x19, #0x80]
0x1d2ba2c: cbz      x0, #0x1d2bc3c
0x1d2ba30: mov      x1, xzr
0x1d2ba34: bl       #0x3c16794 | UnityEngine.AssetBundleUnloadOperation$$WaitForCompletion
0x1d2ba38: mov      x0, x19
0x1d2ba3c: str      xzr, [x19, #0x80]
0x1d2ba40: bl       #0x1d2b618 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$BeginOperation
0x1d2ba44: ldr      x20, [x19, #0x28]
0x1d2ba48: cbz      x20, #0x1d2ba54
0x1d2ba4c: cbnz     x20, #0x1d2ba8c
0x1d2ba50: b        #0x1d2bb94 | 
0x1d2ba54: ldr      x20, [x19, #0x30]
0x1d2ba58: cbz      x20, #0x1d2bc2c
0x1d2ba5c: adrp     x8, #0x418b000
0x1d2ba60: ldr      x8, [x8, #0x630]
0x1d2ba64: ldr      x0, [x8]
0x1d2ba68: ldr      w8, [x0, #0xe0]
0x1d2ba6c: cbnz     w8, #0x1d2ba74
0x1d2ba70: bl       #0x1b646a4 | 
0x1d2ba74: mov      w1, #1
0x1d2ba78: mov      x0, x20
0x1d2ba7c: mov      x2, xzr
0x1d2ba80: bl       #0x3bb4974 | UnityEngine.ResourceManagement.WebRequestQueue$$WaitForRequestToBeActive
0x1d2ba84: ldr      x20, [x19, #0x28]
0x1d2ba88: cbz      x20, #0x1d2bb94
0x1d2ba8c: adrp     x8, #0x418b000
0x1d2ba90: ldr      x8, [x8, #0x5e8]
0x1d2ba94: ldr      x9, [x20]
0x1d2ba98: ldr      x8, [x8]
0x1d2ba9c: ldrb     w11, [x9, #0x130]
0x1d2baa0: ldrb     w10, [x8, #0x130]
0x1d2baa4: cmp      w11, w10
0x1d2baa8: b.lo     #0x1d2bb94
0x1d2baac: ldr      x9, [x9, #0xc8]
0x1d2bab0: add      x9, x9, x10, lsl #3
0x1d2bab4: ldur     x9, [x9, #-8]
0x1d2bab8: cmp      x9, x8
0x1d2babc: b.ne     #0x1d2bb94
0x1d2bac0: b        #0x1d2bad0 | 
0x1d2bac4: mov      w0, #1
0x1d2bac8: mov      x1, xzr
0x1d2bacc: bl       #0x34eabdc | System.Threading.Thread$$Sleep
0x1d2bad0: mov      x0, x20
0x1d2bad4: mov      x1, xzr
0x1d2bad8: bl       #0x3bb4e28 | UnityEngine.ResourceManagement.Util.UnityWebRequestUtilities$$IsAssetBundleDownloaded
0x1d2badc: tbz      w0, #0, #0x1d2bac4
0x1d2bae0: ldr      w8, [x19, #0x60]
0x1d2bae4: cmp      w8, #2
0x1d2bae8: b.ne     #0x1d2bb3c
0x1d2baec: ldr      x0, [x20, #0x20]
0x1d2baf0: cbz      x0, #0x1d2bc3c
0x1d2baf4: mov      x1, xzr
0x1d2baf8: bl       #0x3e90654 | UnityEngine.Networking.UnityWebRequest$$get_downloadHandler
0x1d2bafc: cbz      x0, #0x1d2bc3c
0x1d2bb00: adrp     x8, #0x418b000
0x1d2bb04: ldr      x8, [x8, #0x658]
0x1d2bb08: mov      x20, x0
0x1d2bb0c: ldr      x1, [x8]
0x1d2bb10: ldr      x8, [x0]
0x1d2bb14: cmp      x8, x1
0x1d2bb18: b.ne     #0x1d2bc40
0x1d2bb1c: mov      x0, x20
0x1d2bb20: mov      x1, xzr
0x1d2bb24: bl       #0x3e8dd94 | UnityEngine.Networking.DownloadHandlerAssetBundle$$get_autoLoadAssetBundle
0x1d2bb28: tbz      w0, #0, #0x1d2bb3c
0x1d2bb2c: mov      x0, x20
0x1d2bb30: mov      x1, xzr
0x1d2bb34: bl       #0x3e8dd58 | UnityEngine.Networking.DownloadHandlerAssetBundle$$get_assetBundle
0x1d2bb38: str      x0, [x19, #0x18]
0x1d2bb3c: ldrb     w8, [x19, #0x58]
0x1d2bb40: cbnz     w8, #0x1d2bb94
0x1d2bb44: ldr      x1, [x19, #0x28]
0x1d2bb48: mov      x0, x19
0x1d2bb4c: bl       #0x1d2bc48 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$WebRequestOperationCompleted
0x1d2bb50: adrp     x8, #0x418b000
0x1d2bb54: ldr      x20, [x19, #0x28]
0x1d2bb58: ldr      x8, [x8, #0x570]
0x1d2bb5c: ldr      x0, [x8]
0x1d2bb60: bl       #0x1b647b8 | 
0x1d2bb64: adrp     x8, #0x418b000
0x1d2bb68: ldr      x8, [x8, #0x650]
0x1d2bb6c: mov      x1, x19
0x1d2bb70: mov      x3, xzr
0x1d2bb74: mov      x21, x0
0x1d2bb78: ldr      x2, [x8]
0x1d2bb7c: bl       #0x3035f4c | System.Action<object>$$.ctor
0x1d2bb80: cbz      x20, #0x1d2bc3c
0x1d2bb84: mov      x0, x20
0x1d2bb88: mov      x1, x21
0x1d2bb8c: mov      x2, xzr
0x1d2bb90: bl       #0x3c5c028 | UnityEngine.AsyncOperation$$remove_completed
0x1d2bb94: mov      x0, x19
0x1d2bb98: bl       #0x1d2afa4 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$GetAssetBundle
0x1d2bb9c: ldrb     w8, [x19, #0x78]
0x1d2bba0: cbz      w8, #0x1d2bbac
0x1d2bba4: mov      w0, #1
0x1d2bba8: b        #0x1d2bc30 | 
0x1d2bbac: ldr      x0, [x19, #0x28]
0x1d2bbb0: cbz      x0, #0x1d2bc3c
0x1d2bbb4: mov      x1, xzr
0x1d2bbb8: bl       #0x3c5bd04 | UnityEngine.AsyncOperation$$get_isDone
0x1d2bbbc: tbz      w0, #0, #0x1d2bc1c
0x1d2bbc0: adrp     x8, #0x4185000
0x1d2bbc4: ldr      x8, [x8, #0x208]
0x1d2bbc8: ldr      x21, [x19, #0x18]
0x1d2bbcc: add      x20, x19, #0x38
0x1d2bbd0: ldr      x0, [x8]
0x1d2bbd4: ldr      w8, [x0, #0xe0]
0x1d2bbd8: cbnz     w8, #0x1d2bbe0
0x1d2bbdc: bl       #0x1b646a4 | 
0x1d2bbe0: mov      x0, x21
0x1d2bbe4: mov      x1, xzr
0x1d2bbe8: mov      x2, xzr
0x1d2bbec: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1d2bbf0: adrp     x8, #0x418b000
0x1d2bbf4: ldr      x8, [x8, #0x660]
0x1d2bbf8: and      w2, w0, #1
0x1d2bbfc: mov      x0, x20
0x1d2bc00: mov      x1, x19
0x1d2bc04: ldr      x4, [x8]
0x1d2bc08: mov      x3, xzr
0x1d2bc0c: bl       #0x1fe5538 | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$Complete<object>
0x1d2bc10: mov      w0, #1
0x1d2bc14: strb     w0, [x19, #0x78]
0x1d2bc18: b        #0x1d2bc30 | 
0x1d2bc1c: ldrb     w8, [x19, #0x78]
0x1d2bc20: cmp      w8, #0
0x1d2bc24: cset     w0, ne
0x1d2bc28: b        #0x1d2bc30 | 
0x1d2bc2c: mov      w0, wzr
0x1d2bc30: ldp      x20, x19, [sp, #0x10]
0x1d2bc34: ldp      x30, x21, [sp], #0x20
0x1d2bc38: ret      
0x1d2bc3c: bl       #0x1b647c8 | 
0x1d2bc40: mov      x0, x20
0x1d2bc44: bl       #0x1b64b68 | 

// 0x1d2bc48 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$WebRequestOperationCompleted
0x1d2bc48: sub      sp, sp, #0x50
0x1d2bc4c: stp      x30, x25, [sp, #0x10]
0x1d2bc50: stp      x24, x23, [sp, #0x20]
0x1d2bc54: stp      x22, x21, [sp, #0x30]
0x1d2bc58: stp      x20, x19, [sp, #0x40]
0x1d2bc5c: adrp     x21, #0x4475000
0x1d2bc60: ldrb     w8, [x21, #0xd51]
0x1d2bc64: mov      x20, x1
0x1d2bc68: mov      x19, x0
0x1d2bc6c: tbnz     w8, #0, #0x1d2bd14
0x1d2bc70: adrp     x0, #0x4185000
0x1d2bc74: ldr      x0, [x0, #0x1a8]
0x1d2bc78: bl       #0x1b64570 | 
0x1d2bc7c: adrp     x0, #0x4185000
0x1d2bc80: ldr      x0, [x0, #0xb38]
0x1d2bc84: bl       #0x1b64570 | 
0x1d2bc88: adrp     x0, #0x418b000
0x1d2bc8c: ldr      x0, [x0, #0x540]
0x1d2bc90: bl       #0x1b64570 | 
0x1d2bc94: adrp     x0, #0x4185000
0x1d2bc98: ldr      x0, [x0, #0x848]
0x1d2bc9c: bl       #0x1b64570 | 
0x1d2bca0: adrp     x0, #0x418b000
0x1d2bca4: ldr      x0, [x0, #0x620]
0x1d2bca8: bl       #0x1b64570 | 
0x1d2bcac: adrp     x0, #0x418b000
0x1d2bcb0: ldr      x0, [x0, #0x660]
0x1d2bcb4: bl       #0x1b64570 | 
0x1d2bcb8: adrp     x0, #0x418b000
0x1d2bcbc: ldr      x0, [x0, #0x628]
0x1d2bcc0: bl       #0x1b64570 | 
0x1d2bcc4: adrp     x0, #0x418b000
0x1d2bcc8: ldr      x0, [x0, #0x5e8]
0x1d2bccc: bl       #0x1b64570 | 
0x1d2bcd0: adrp     x0, #0x418b000
0x1d2bcd4: ldr      x0, [x0, #0x668]
0x1d2bcd8: bl       #0x1b64570 | 
0x1d2bcdc: adrp     x0, #0x418b000
0x1d2bce0: ldr      x0, [x0, #0x670] | 0x418b670 'Request timeout'
0x1d2bce4: bl       #0x1b64570 | 
0x1d2bce8: adrp     x0, #0x418b000
0x1d2bcec: ldr      x0, [x0, #0x678] | 0x418b678 'Web request failed, retrying ({0}/{1})...\n{2}'
0x1d2bcf0: bl       #0x1b64570 | 
0x1d2bcf4: adrp     x0, #0x418b000
0x1d2bcf8: ldr      x0, [x0, #0x680] | 0x418b680 'Unable to load asset bundle from : '
0x1d2bcfc: bl       #0x1b64570 | 
0x1d2bd00: adrp     x0, #0x418b000
0x1d2bd04: ldr      x0, [x0, #0x688] | 0x418b688 'Web request failed to load from cache. The cached AssetBundle will be cleared from the cache and re-downloaded. Retrying...\n{0}'
0x1d2bd08: bl       #0x1b64570 | 
0x1d2bd0c: mov      w8, #1
0x1d2bd10: strb     w8, [x21, #0xd51]
0x1d2bd14: str      xzr, [sp, #8]
0x1d2bd18: ldrb     w8, [x19, #0x58]
0x1d2bd1c: cbnz     w8, #0x1d2c188
0x1d2bd20: ldr      x8, [x19, #0x50]
0x1d2bd24: cbz      x8, #0x1d2c2e0
0x1d2bd28: ldr      w8, [x8, #0x1c]
0x1d2bd2c: cmp      w8, #1
0x1d2bd30: b.lt     #0x1d2bd48
0x1d2bd34: ldr      x0, [x19, #0x48]
0x1d2bd38: cbz      x0, #0x1d2c2e0
0x1d2bd3c: mov      x1, x19
0x1d2bd40: mov      x2, xzr
0x1d2bd44: bl       #0x3baf1dc | UnityEngine.ResourceManagement.ResourceManager$$RemoveUpdateReciever
0x1d2bd48: mov      w8, #1
0x1d2bd4c: strb     w8, [x19, #0x58]
0x1d2bd50: cbz      x20, #0x1d2bd88
0x1d2bd54: adrp     x8, #0x418b000
0x1d2bd58: ldr      x8, [x8, #0x5e8]
0x1d2bd5c: ldr      x9, [x20]
0x1d2bd60: ldr      x8, [x8]
0x1d2bd64: ldrb     w11, [x9, #0x130]
0x1d2bd68: ldrb     w10, [x8, #0x130]
0x1d2bd6c: cmp      w11, w10
0x1d2bd70: b.lo     #0x1d2bd88
0x1d2bd74: ldr      x9, [x9, #0xc8]
0x1d2bd78: add      x9, x9, x10, lsl #3
0x1d2bd7c: ldur     x9, [x9, #-8]
0x1d2bd80: cmp      x9, x8
0x1d2bd84: b.eq     #0x1d2c1a0
0x1d2bd88: str      xzr, [x19, #0x20]
0x1d2bd8c: str      xzr, [sp, #8]
0x1d2bd90: ldr      x8, [x19, #0x50]
0x1d2bd94: cbz      x8, #0x1d2c2e0
0x1d2bd98: ldr      s0, [x8, #0x1c]
0x1d2bd9c: ldr      s1, [x19, #0x98]
0x1d2bda0: scvtf    s0, s0
0x1d2bda4: fcmp     s1, s0
0x1d2bda8: b.lt     #0x1d2bdd0
0x1d2bdac: ldr      w8, [x19, #0x9c]
0x1d2bdb0: cmp      w8, #6
0x1d2bdb4: b.lt     #0x1d2bdd0
0x1d2bdb8: ldr      x8, [sp, #8]
0x1d2bdbc: cbz      x8, #0x1d2c2e0
0x1d2bdc0: adrp     x9, #0x418b000
0x1d2bdc4: ldr      x9, [x9, #0x670] | 0x418b670 'Request timeout'
0x1d2bdc8: ldr      x9, [x9]
0x1d2bdcc: str      x9, [x8, #0x10]
0x1d2bdd0: ldr      x8, [x19, #0x30]
0x1d2bdd4: cbz      x8, #0x1d2c2e0
0x1d2bdd8: ldr      x9, [sp, #8]
0x1d2bddc: ldr      x20, [x8, #0x28]
0x1d2bde0: cbnz     x9, #0x1d2be08
0x1d2bde4: adrp     x8, #0x418b000
0x1d2bde8: ldr      x8, [x8, #0x668]
0x1d2bdec: ldr      x0, [x8]
0x1d2bdf0: bl       #0x1b647b8 | 
0x1d2bdf4: mov      x1, x20
0x1d2bdf8: mov      x2, xzr
0x1d2bdfc: mov      x21, x0
0x1d2be00: bl       #0x3bbca64 | UnityEngine.ResourceManagement.Util.UnityWebRequestResult$$.ctor
0x1d2be04: str      x21, [sp, #8]
0x1d2be08: add      x21, x19, #0x38
0x1d2be0c: mov      x0, x21
0x1d2be10: mov      x1, xzr
0x1d2be14: bl       #0x3bbd43c | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$get_Location
0x1d2be18: cbz      x0, #0x1d2c2e0
0x1d2be1c: adrp     x10, #0x418b000
0x1d2be20: ldr      x8, [x0]
0x1d2be24: ldr      x10, [x10, #0x540]
0x1d2be28: mov      x22, x0
0x1d2be2c: ldrh     w9, [x8, #0x12e]
0x1d2be30: ldr      x1, [x10]
0x1d2be34: cbz      x9, #0x1d2be58
0x1d2be38: ldr      x10, [x8, #0xb0]
0x1d2be3c: add      x10, x10, #8
0x1d2be40: ldur     x11, [x10, #-8]
0x1d2be44: cmp      x11, x1
0x1d2be48: b.eq     #0x1d2be68
0x1d2be4c: subs     x9, x9, #1
0x1d2be50: add      x10, x10, #0x10
0x1d2be54: b.ne     #0x1d2be40
0x1d2be58: mov      x0, x22
0x1d2be5c: mov      w2, wzr
0x1d2be60: bl       #0x1bc5638 | 
0x1d2be64: b        #0x1d2be74 | 
0x1d2be68: ldrsw    x9, [x10]
0x1d2be6c: add      x8, x8, x9, lsl #4
0x1d2be70: add      x0, x8, #0x138
0x1d2be74: ldp      x8, x1, [x0]
0x1d2be78: mov      x0, x22
0x1d2be7c: blr      x8
0x1d2be80: str      x0, [x19, #0x10]
0x1d2be84: cbz      x20, #0x1d2c2e0
0x1d2be88: mov      x0, x20
0x1d2be8c: mov      x1, xzr
0x1d2be90: bl       #0x3e90654 | UnityEngine.Networking.UnityWebRequest$$get_downloadHandler
0x1d2be94: str      x0, [x19, #0x20]
0x1d2be98: cbz      x0, #0x1d2c2e0
0x1d2be9c: ldr      x8, [x0]
0x1d2bea0: ldp      x9, x1, [x8, #0x188]
0x1d2bea4: blr      x9
0x1d2bea8: str      xzr, [x19, #0x20]
0x1d2beac: adrp     x23, #0x4185000
0x1d2beb0: ldr      w8, [x19, #0x5c]
0x1d2beb4: ldr      x23, [x23, #0x848]
0x1d2beb8: add      x1, sp, #4
0x1d2bebc: str      w8, [sp, #4]
0x1d2bec0: ldr      x0, [x23]
0x1d2bec4: bl       #0x1b646ac | 
0x1d2bec8: ldr      x8, [x19, #0x50]
0x1d2becc: cbz      x8, #0x1d2c2e0
0x1d2bed0: mov      x22, x0
0x1d2bed4: ldr      w8, [x8, #0x28]
0x1d2bed8: ldr      x0, [x23]
0x1d2bedc: mov      x1, sp
0x1d2bee0: str      w8, [sp]
0x1d2bee4: bl       #0x1b646ac | 
0x1d2bee8: adrp     x8, #0x418b000
0x1d2beec: ldr      x3, [sp, #8]
0x1d2bef0: ldr      x8, [x8, #0x678] | 0x418b678 'Web request failed, retrying ({0}/{1})...\n{2}'
0x1d2bef4: mov      x2, x0
0x1d2bef8: mov      x1, x22
0x1d2befc: mov      x4, xzr
0x1d2bf00: ldr      x8, [x8]
0x1d2bf04: mov      x0, x8
0x1d2bf08: bl       #0x3308d08 | System.String$$Format
0x1d2bf0c: ldr      x8, [x19, #0x50]
0x1d2bf10: cbz      x8, #0x1d2c2e0
0x1d2bf14: mov      x22, x0
0x1d2bf18: ldr      x0, [x8, #0x10]
0x1d2bf1c: mov      x1, xzr
0x1d2bf20: bl       #0x3308894 | System.String$$IsNullOrEmpty
0x1d2bf24: tbnz     w0, #0, #0x1d2bf80
0x1d2bf28: adrp     x8, #0x418b000
0x1d2bf2c: ldr      x1, [sp, #8]
0x1d2bf30: ldr      x8, [x8, #0x688] | 0x418b688 'Web request failed to load from cache. The cached AssetBundle will be cleared from the cache and re-downloaded. Retrying...\n{0}'
0x1d2bf34: mov      x2, xzr
0x1d2bf38: ldr      x0, [x8]
0x1d2bf3c: bl       #0x32faa44 | System.String$$Format
0x1d2bf40: ldr      x8, [x19, #0x50]
0x1d2bf44: cbz      x8, #0x1d2c2e0
0x1d2bf48: mov      x22, x0
0x1d2bf4c: ldr      x0, [x8, #0x10]
0x1d2bf50: ldr      x23, [x8, #0x30]
0x1d2bf54: mov      x1, xzr
0x1d2bf58: bl       #0x3c4eeac | UnityEngine.Hash128$$Parse
0x1d2bf5c: mov      x2, x0
0x1d2bf60: mov      x3, x1
0x1d2bf64: mov      x0, x23
0x1d2bf68: mov      x1, x2
0x1d2bf6c: mov      x2, x3
0x1d2bf70: mov      x3, xzr
0x1d2bf74: bl       #0x3c1eca8 | UnityEngine.Caching$$ClearCachedVersion
0x1d2bf78: ldr      w8, [x19, #0x5c]
0x1d2bf7c: cbz      w8, #0x1d2c0e4
0x1d2bf80: ldr      x8, [x19, #0x50]
0x1d2bf84: cbz      x8, #0x1d2c2e0
0x1d2bf88: ldr      w9, [x19, #0x5c]
0x1d2bf8c: ldr      w8, [x8, #0x28]
0x1d2bf90: cmp      w9, w8
0x1d2bf94: b.ge     #0x1d2c048
0x1d2bf98: ldr      x0, [sp, #8]
0x1d2bf9c: cbz      x0, #0x1d2c2e0
0x1d2bfa0: mov      x1, xzr
0x1d2bfa4: bl       #0x3bbcd1c | UnityEngine.ResourceManagement.Util.UnityWebRequestResult$$ShouldRetryDownloadError
0x1d2bfa8: tbz      w0, #0, #0x1d2c048
0x1d2bfac: ldr      w8, [x19, #0x5c]
0x1d2bfb0: add      w8, w8, #1
0x1d2bfb4: str      w8, [x19, #0x5c]
0x1d2bfb8: adrp     x8, #0x4185000
0x1d2bfbc: ldr      x8, [x8, #0x1a8]
0x1d2bfc0: ldr      x21, [x8]
0x1d2bfc4: ldr      x8, [x21, #0x38]
0x1d2bfc8: cbnz     x8, #0x1d2bfd8
0x1d2bfcc: mov      x0, x21
0x1d2bfd0: bl       #0x1bc5590 | 
0x1d2bfd4: ldr      x8, [x21, #0x38]
0x1d2bfd8: ldr      x0, [x8, #0x10]
0x1d2bfdc: ldrb     w8, [x0, #0x135]
0x1d2bfe0: tbnz     w8, #0, #0x1d2bfe8
0x1d2bfe4: bl       #0x1bc5534 | 
0x1d2bfe8: ldr      w8, [x0, #0xe0]
0x1d2bfec: cbnz     w8, #0x1d2bff4
0x1d2bff0: bl       #0x1b646a4 | 
0x1d2bff4: ldr      x8, [x21, #0x38]
0x1d2bff8: ldr      x0, [x8, #0x10]
0x1d2bffc: ldrb     w8, [x0, #0x135]
0x1d2c000: tbnz     w8, #0, #0x1d2c008
0x1d2c004: bl       #0x1bc5534 | 
0x1d2c008: adrp     x8, #0x4185000
0x1d2c00c: ldr      x8, [x8, #0xb38]
0x1d2c010: ldr      x9, [x0, #0xb8]
0x1d2c014: ldr      x8, [x8]
0x1d2c018: ldr      x21, [x9]
0x1d2c01c: ldr      w10, [x8, #0xe0]
0x1d2c020: cbnz     w10, #0x1d2c02c
0x1d2c024: mov      x0, x8
0x1d2c028: bl       #0x1b646a4 | 
0x1d2c02c: mov      x0, x22
0x1d2c030: mov      x1, x21
0x1d2c034: mov      x2, xzr
0x1d2c038: bl       #0x3c24f18 | UnityEngine.Debug$$LogFormat
0x1d2c03c: mov      x0, x19
0x1d2c040: bl       #0x1d2b618 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$BeginOperation
0x1d2c044: b        #0x1d2c17c | 
0x1d2c048: mov      x0, x20
0x1d2c04c: mov      x1, xzr
0x1d2c050: bl       #0x3e90d8c | UnityEngine.Networking.UnityWebRequest$$get_url
0x1d2c054: adrp     x8, #0x418b000
0x1d2c058: ldr      x8, [x8, #0x680] | 0x418b680 'Unable to load asset bundle from : '
0x1d2c05c: mov      x1, x0
0x1d2c060: mov      x2, xzr
0x1d2c064: ldr      x8, [x8]
0x1d2c068: mov      x0, x8
0x1d2c06c: bl       #0x32fce8c | System.String$$Concat
0x1d2c070: mov      x22, x0
0x1d2c074: mov      x0, x21
0x1d2c078: mov      x1, xzr
0x1d2c07c: bl       #0x3bbd43c | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$get_Location
0x1d2c080: adrp     x8, #0x418b000
0x1d2c084: ldr      x23, [sp, #8]
0x1d2c088: ldr      x8, [x8, #0x628]
0x1d2c08c: mov      x24, x0
0x1d2c090: ldr      x8, [x8]
0x1d2c094: mov      x0, x8
0x1d2c098: bl       #0x1b647b8 | 
0x1d2c09c: mov      x1, x22
0x1d2c0a0: mov      x2, x24
0x1d2c0a4: mov      x3, x23
0x1d2c0a8: mov      x4, xzr
0x1d2c0ac: mov      x5, xzr
0x1d2c0b0: mov      x25, x0
0x1d2c0b4: bl       #0x3bb5748 | UnityEngine.ResourceManagement.Exceptions.RemoteProviderException$$.ctor
0x1d2c0b8: adrp     x8, #0x418b000
0x1d2c0bc: ldr      x8, [x8, #0x620]
0x1d2c0c0: mov      x0, x21
0x1d2c0c4: mov      x1, xzr
0x1d2c0c8: mov      w2, wzr
0x1d2c0cc: ldr      x4, [x8]
0x1d2c0d0: mov      x3, x25
0x1d2c0d4: bl       #0x1fe5538 | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$Complete<object>
0x1d2c0d8: mov      w8, #1
0x1d2c0dc: strb     w8, [x19, #0x78]
0x1d2c0e0: b        #0x1d2c17c | 
0x1d2c0e4: adrp     x8, #0x4185000
0x1d2c0e8: ldr      x8, [x8, #0x1a8]
0x1d2c0ec: ldr      x21, [x8]
0x1d2c0f0: ldr      x8, [x21, #0x38]
0x1d2c0f4: cbnz     x8, #0x1d2c104
0x1d2c0f8: mov      x0, x21
0x1d2c0fc: bl       #0x1bc5590 | 
0x1d2c100: ldr      x8, [x21, #0x38]
0x1d2c104: ldr      x0, [x8, #0x10]
0x1d2c108: ldrb     w8, [x0, #0x135]
0x1d2c10c: tbnz     w8, #0, #0x1d2c114
0x1d2c110: bl       #0x1bc5534 | 
0x1d2c114: ldr      w8, [x0, #0xe0]
0x1d2c118: cbnz     w8, #0x1d2c120
0x1d2c11c: bl       #0x1b646a4 | 
0x1d2c120: ldr      x8, [x21, #0x38]
0x1d2c124: ldr      x0, [x8, #0x10]
0x1d2c128: ldrb     w8, [x0, #0x135]
0x1d2c12c: tbnz     w8, #0, #0x1d2c134
0x1d2c130: bl       #0x1bc5534 | 
0x1d2c134: adrp     x8, #0x4185000
0x1d2c138: ldr      x8, [x8, #0xb38]
0x1d2c13c: ldr      x9, [x0, #0xb8]
0x1d2c140: ldr      x8, [x8]
0x1d2c144: ldr      x21, [x9]
0x1d2c148: ldr      w10, [x8, #0xe0]
0x1d2c14c: cbnz     w10, #0x1d2c158
0x1d2c150: mov      x0, x8
0x1d2c154: bl       #0x1b646a4 | 
0x1d2c158: mov      x0, x22
0x1d2c15c: mov      x1, x21
0x1d2c160: mov      x2, xzr
0x1d2c164: bl       #0x3c24f18 | UnityEngine.Debug$$LogFormat
0x1d2c168: mov      x0, x19
0x1d2c16c: bl       #0x1d2b618 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$BeginOperation
0x1d2c170: ldr      w8, [x19, #0x5c]
0x1d2c174: add      w8, w8, #1
0x1d2c178: str      w8, [x19, #0x5c]
0x1d2c17c: mov      x0, x20
0x1d2c180: mov      x1, xzr
0x1d2c184: bl       #0x3e905ec | UnityEngine.Networking.UnityWebRequest$$Dispose
0x1d2c188: ldp      x20, x19, [sp, #0x40]
0x1d2c18c: ldp      x22, x21, [sp, #0x30]
0x1d2c190: ldp      x24, x23, [sp, #0x20]
0x1d2c194: ldp      x30, x25, [sp, #0x10]
0x1d2c198: add      sp, sp, #0x50
0x1d2c19c: ret      
0x1d2c1a0: ldr      x20, [x20, #0x20]
0x1d2c1a4: cmp      x20, #0
0x1d2c1a8: csel     x21, xzr, x19, eq
0x1d2c1ac: cbz      x20, #0x1d2bd88
0x1d2c1b0: mov      x0, x20
0x1d2c1b4: mov      x1, xzr
0x1d2c1b8: bl       #0x3e90654 | UnityEngine.Networking.UnityWebRequest$$get_downloadHandler
0x1d2c1bc: cbz      x21, #0x1d2c2e0
0x1d2c1c0: str      x0, [x21, #0x20]
0x1d2c1c4: add      x1, sp, #8
0x1d2c1c8: mov      x0, x20
0x1d2c1cc: mov      x2, xzr
0x1d2c1d0: str      xzr, [sp, #8]
0x1d2c1d4: bl       #0x3bbc93c | UnityEngine.ResourceManagement.Util.UnityWebRequestUtilities$$RequestHasErrors
0x1d2c1d8: tbnz     w0, #0, #0x1d2bd90
0x1d2c1dc: add      x21, x19, #0x38
0x1d2c1e0: mov      x0, x21
0x1d2c1e4: mov      x1, xzr
0x1d2c1e8: bl       #0x3bbd43c | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$get_Location
0x1d2c1ec: cbz      x0, #0x1d2c2e0
0x1d2c1f0: adrp     x10, #0x418b000
0x1d2c1f4: ldr      x8, [x0]
0x1d2c1f8: ldr      x10, [x10, #0x540]
0x1d2c1fc: mov      x22, x0
0x1d2c200: ldrh     w9, [x8, #0x12e]
0x1d2c204: ldr      x1, [x10]
0x1d2c208: cbz      x9, #0x1d2c22c
0x1d2c20c: ldr      x10, [x8, #0xb0]
0x1d2c210: add      x10, x10, #8
0x1d2c214: ldur     x11, [x10, #-8]
0x1d2c218: cmp      x11, x1
0x1d2c21c: b.eq     #0x1d2c23c
0x1d2c220: subs     x9, x9, #1
0x1d2c224: add      x10, x10, #0x10
0x1d2c228: b.ne     #0x1d2c214
0x1d2c22c: mov      x0, x22
0x1d2c230: mov      w2, wzr
0x1d2c234: bl       #0x1bc5638 | 
0x1d2c238: b        #0x1d2c248 | 
0x1d2c23c: ldrsw    x9, [x10]
0x1d2c240: add      x8, x8, x9, lsl #4
0x1d2c244: add      x0, x8, #0x138
0x1d2c248: ldp      x8, x1, [x0]
0x1d2c24c: mov      x0, x22
0x1d2c250: blr      x8
0x1d2c254: ldrb     w8, [x19, #0x78]
0x1d2c258: str      x0, [x19, #0x10]
0x1d2c25c: cbnz     w8, #0x1d2c288
0x1d2c260: adrp     x8, #0x418b000
0x1d2c264: ldr      x8, [x8, #0x660]
0x1d2c268: mov      w2, #1
0x1d2c26c: mov      x0, x21
0x1d2c270: mov      x1, x19
0x1d2c274: ldr      x4, [x8]
0x1d2c278: mov      x3, xzr
0x1d2c27c: mov      w22, #1
0x1d2c280: bl       #0x1fe5538 | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$Complete<object>
0x1d2c284: strb     w22, [x19, #0x78]
0x1d2c288: ldr      x8, [x19, #0x50]
0x1d2c28c: cbz      x8, #0x1d2c2e0
0x1d2c290: ldr      x0, [x8, #0x10]
0x1d2c294: mov      x1, xzr
0x1d2c298: bl       #0x3308894 | System.String$$IsNullOrEmpty
0x1d2c29c: tbnz     w0, #0, #0x1d2c17c
0x1d2c2a0: ldr      x8, [x19, #0x50]
0x1d2c2a4: cbz      x8, #0x1d2c2e0
0x1d2c2a8: ldrb     w9, [x8, #0x4a]
0x1d2c2ac: cbz      w9, #0x1d2c17c
0x1d2c2b0: ldr      x0, [x8, #0x10]
0x1d2c2b4: ldr      x19, [x8, #0x30]
0x1d2c2b8: mov      x1, xzr
0x1d2c2bc: bl       #0x3c4eeac | UnityEngine.Hash128$$Parse
0x1d2c2c0: mov      x2, x0
0x1d2c2c4: mov      x3, x1
0x1d2c2c8: mov      x0, x19
0x1d2c2cc: mov      x1, x2
0x1d2c2d0: mov      x2, x3
0x1d2c2d4: mov      x3, xzr
0x1d2c2d8: bl       #0x3c1edc0 | UnityEngine.Caching$$ClearOtherCachedVersions
0x1d2c2dc: b        #0x1d2c17c | 
0x1d2c2e0: bl       #0x1b647c8 | 

// 0x1d2c2e4 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$GetLoadInfo
0x1d2c2e4: stp      x30, x23, [sp, #-0x30]!
0x1d2c2e8: stp      x22, x21, [sp, #0x10]
0x1d2c2ec: stp      x20, x19, [sp, #0x20]
0x1d2c2f0: adrp     x22, #0x4475000
0x1d2c2f4: ldrb     w8, [x22, #0xd4b]
0x1d2c2f8: mov      x19, x2
0x1d2c2fc: mov      x20, x1
0x1d2c300: mov      x21, x0
0x1d2c304: tbnz     w8, #0, #0x1d2c358
0x1d2c308: adrp     x0, #0x4185000
0x1d2c30c: ldr      x0, [x0, #0xd50]
0x1d2c310: bl       #0x1b64570 | 
0x1d2c314: adrp     x0, #0x418b000
0x1d2c318: ldr      x0, [x0, #0x578]
0x1d2c31c: bl       #0x1b64570 | 
0x1d2c320: adrp     x0, #0x418b000
0x1d2c324: ldr      x0, [x0, #0x540]
0x1d2c328: bl       #0x1b64570 | 
0x1d2c32c: adrp     x0, #0x4185000
0x1d2c330: ldr      x0, [x0, #0xfa8]
0x1d2c334: bl       #0x1b64570 | 
0x1d2c338: adrp     x0, #0x418b000
0x1d2c33c: ldr      x0, [x0, #0x690] | 0x418b690 'file:///'
0x1d2c340: bl       #0x1b64570 | 
0x1d2c344: adrp     x0, #0x418b000
0x1d2c348: ldr      x0, [x0, #0x640] | 0x418b640 'jar:'
0x1d2c34c: bl       #0x1b64570 | 
0x1d2c350: mov      w8, #1
0x1d2c354: strb     w8, [x22, #0xd4b]
0x1d2c358: mov      x0, x21
0x1d2c35c: mov      x1, xzr
0x1d2c360: bl       #0x3bbd43c | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$get_Location
0x1d2c364: cbz      x0, #0x1d2c40c
0x1d2c368: adrp     x10, #0x418b000
0x1d2c36c: ldr      x8, [x0]
0x1d2c370: ldr      x10, [x10, #0x540]
0x1d2c374: mov      x22, x0
0x1d2c378: ldrh     w9, [x8, #0x12e]
0x1d2c37c: ldr      x1, [x10]
0x1d2c380: cbz      x9, #0x1d2c3a4
0x1d2c384: ldr      x10, [x8, #0xb0]
0x1d2c388: add      x10, x10, #8
0x1d2c38c: ldur     x11, [x10, #-8]
0x1d2c390: cmp      x11, x1
0x1d2c394: b.eq     #0x1d2c3b4
0x1d2c398: subs     x9, x9, #1
0x1d2c39c: add      x10, x10, #0x10
0x1d2c3a0: b.ne     #0x1d2c38c
0x1d2c3a4: mov      w2, #6
0x1d2c3a8: mov      x0, x22
0x1d2c3ac: bl       #0x1bc5638 | 
0x1d2c3b0: b        #0x1d2c3c4 | 
0x1d2c3b4: ldr      w9, [x10]
0x1d2c3b8: add      w9, w9, #6
0x1d2c3bc: add      x8, x8, w9, sxtw #4
0x1d2c3c0: add      x0, x8, #0x138
0x1d2c3c4: ldp      x8, x1, [x0]
0x1d2c3c8: mov      x0, x22
0x1d2c3cc: blr      x8
0x1d2c3d0: cbz      x0, #0x1d2c40c
0x1d2c3d4: adrp     x8, #0x418b000
0x1d2c3d8: ldr      x8, [x8, #0x578]
0x1d2c3dc: ldr      x9, [x0]
0x1d2c3e0: mov      x22, x0
0x1d2c3e4: ldr      x8, [x8]
0x1d2c3e8: ldrb     w11, [x9, #0x130]
0x1d2c3ec: ldrb     w10, [x8, #0x130]
0x1d2c3f0: cmp      w11, w10
0x1d2c3f4: b.lo     #0x1d2c40c
0x1d2c3f8: ldr      x9, [x9, #0xc8]
0x1d2c3fc: add      x9, x9, x10, lsl #3
0x1d2c400: ldur     x9, [x9, #-8]
0x1d2c404: cmp      x9, x8
0x1d2c408: b.eq     #0x1d2c424
0x1d2c40c: str      wzr, [x20]
0x1d2c410: str      xzr, [x19]
0x1d2c414: ldp      x20, x19, [sp, #0x20]
0x1d2c418: ldp      x22, x21, [sp, #0x10]
0x1d2c41c: ldp      x30, x23, [sp], #0x30
0x1d2c420: ret      
0x1d2c424: ldr      x23, [x21, #0x10]
0x1d2c428: mov      x0, x21
0x1d2c42c: mov      x1, xzr
0x1d2c430: bl       #0x3bbd43c | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$get_Location
0x1d2c434: cbz      x23, #0x1d2c55c
0x1d2c438: mov      x1, x0
0x1d2c43c: mov      x0, x23
0x1d2c440: mov      x2, xzr
0x1d2c444: bl       #0x3baef74 | UnityEngine.ResourceManagement.ResourceManager$$TransformInternalId
0x1d2c448: str      x0, [x19]
0x1d2c44c: adrp     x8, #0x4185000
0x1d2c450: ldr      x8, [x8, #0xd50]
0x1d2c454: ldr      x0, [x8]
0x1d2c458: ldr      w8, [x0, #0xe0]
0x1d2c45c: cbnz     w8, #0x1d2c464
0x1d2c460: bl       #0x1b646a4 | 
0x1d2c464: mov      x0, xzr
0x1d2c468: bl       #0x3c1db30 | UnityEngine.Application$$get_platform
0x1d2c46c: cmp      w0, #0xb
0x1d2c470: b.ne     #0x1d2c4a4
0x1d2c474: ldr      x0, [x19]
0x1d2c478: cbz      x0, #0x1d2c55c
0x1d2c47c: adrp     x8, #0x418b000
0x1d2c480: ldr      x8, [x8, #0x640] | 0x418b640 'jar:'
0x1d2c484: mov      w2, #4
0x1d2c488: mov      x3, xzr
0x1d2c48c: ldr      x1, [x8]
0x1d2c490: bl       #0x330838c | System.String$$StartsWith
0x1d2c494: tbz      w0, #0, #0x1d2c4a4
0x1d2c498: ldrb     w8, [x22, #0x49]
0x1d2c49c: cbnz     w8, #0x1d2c4cc
0x1d2c4a0: b        #0x1d2c550 | 
0x1d2c4a4: ldr      x0, [x19]
0x1d2c4a8: mov      x1, xzr
0x1d2c4ac: bl       #0x3bbc418 | UnityEngine.ResourceManagement.Util.ResourceManagerConfig$$ShouldPathUseWebRequest
0x1d2c4b0: tbz      w0, #0, #0x1d2c4dc
0x1d2c4b4: ldr      x0, [x19]
0x1d2c4b8: mov      x1, x22
0x1d2c4bc: bl       #0x1d2aa78 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$GetEncryptedAssetLocalPath
0x1d2c4c0: mov      x1, xzr
0x1d2c4c4: bl       #0x33d2e48 | System.IO.File$$Exists
0x1d2c4c8: tbnz     w0, #0, #0x1d2c550
0x1d2c4cc: mov      w8, #2
0x1d2c4d0: str      w8, [x20]
0x1d2c4d4: ldr      x0, [x19]
0x1d2c4d8: b        #0x1d2c534 | 
0x1d2c4dc: ldrb     w8, [x22, #0x49]
0x1d2c4e0: cbz      w8, #0x1d2c550
0x1d2c4e4: adrp     x8, #0x4185000
0x1d2c4e8: ldr      x8, [x8, #0xfa8]
0x1d2c4ec: ldr      x21, [x19]
0x1d2c4f0: ldr      x0, [x8]
0x1d2c4f4: ldr      w8, [x0, #0xe0]
0x1d2c4f8: cbnz     w8, #0x1d2c500
0x1d2c4fc: bl       #0x1b646a4 | 
0x1d2c500: mov      x0, x21
0x1d2c504: mov      x1, xzr
0x1d2c508: bl       #0x33fef68 | System.IO.Path$$GetFullPath
0x1d2c50c: adrp     x8, #0x418b000
0x1d2c510: ldr      x8, [x8, #0x690] | 0x418b690 'file:///'
0x1d2c514: mov      x1, x0
0x1d2c518: mov      x2, xzr
0x1d2c51c: ldr      x8, [x8]
0x1d2c520: mov      x0, x8
0x1d2c524: bl       #0x32fce8c | System.String$$Concat
0x1d2c528: mov      w8, #2
0x1d2c52c: str      x0, [x19]
0x1d2c530: str      w8, [x20]
0x1d2c534: cbz      x0, #0x1d2c55c
0x1d2c538: mov      w1, #0x5c
0x1d2c53c: mov      w2, #0x2f
0x1d2c540: mov      x3, xzr
0x1d2c544: bl       #0x330a010 | System.String$$Replace
0x1d2c548: str      x0, [x19]
0x1d2c54c: b        #0x1d2c414 | 
0x1d2c550: mov      w8, #1
0x1d2c554: str      w8, [x20]
0x1d2c558: b        #0x1d2c414 | 
0x1d2c55c: bl       #0x1b647c8 | 

// 0x1d2c560 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$LoadLocalAssetBundle
0x1d2c560: sub      sp, sp, #0xc0
0x1d2c564: str      x30, [sp, #0x80]
0x1d2c568: stp      x24, x23, [sp, #0x90]
0x1d2c56c: stp      x22, x21, [sp, #0xa0]
0x1d2c570: stp      x20, x19, [sp, #0xb0]
0x1d2c574: adrp     x24, #0x4475000
0x1d2c578: adrp     x23, #0x418b000
0x1d2c57c: ldrb     w8, [x24, #0xd4d]
0x1d2c580: ldr      x23, [x23, #0x698]
0x1d2c584: mov      w22, w3
0x1d2c588: mov      w19, w2
0x1d2c58c: mov      x20, x1
0x1d2c590: mov      x21, x0
0x1d2c594: tbnz     w8, #0, #0x1d2c5ac
0x1d2c598: adrp     x0, #0x418b000
0x1d2c59c: ldr      x0, [x0, #0x698]
0x1d2c5a0: bl       #0x1b64570 | 
0x1d2c5a4: mov      w8, #1
0x1d2c5a8: strb     w8, [x24, #0xd4d]
0x1d2c5ac: movi     v0.2d, #0000000000000000
0x1d2c5b0: mov      x8, sp
0x1d2c5b4: mov      x0, xzr
0x1d2c5b8: and      w22, w22, #1
0x1d2c5bc: str      xzr, [sp, #0x70]
0x1d2c5c0: stp      q0, q0, [sp, #0x50]
0x1d2c5c4: stp      q0, q0, [sp, #0x30]
0x1d2c5c8: str      q0, [sp, #0x20]
0x1d2c5cc: bl       #0x33a5748 | System.Runtime.CompilerServices.AsyncVoidMethodBuilder$$Create
0x1d2c5d0: ldp      q0, q1, [sp]
0x1d2c5d4: ldr      x2, [x23]
0x1d2c5d8: add      x8, sp, #0x20
0x1d2c5dc: mov      w9, #-1
0x1d2c5e0: orr      x0, x8, #8
0x1d2c5e4: add      x1, sp, #0x20
0x1d2c5e8: str      x21, [sp, #0x48]
0x1d2c5ec: str      x20, [sp, #0x58]
0x1d2c5f0: str      w19, [sp, #0x50]
0x1d2c5f4: strb     w22, [sp, #0x54]
0x1d2c5f8: stur     q0, [sp, #0x28]
0x1d2c5fc: stur     q1, [sp, #0x38]
0x1d2c600: str      w9, [sp, #0x20]
0x1d2c604: bl       #0x1f0d228 | System.Runtime.CompilerServices.AsyncVoidMethodBuilder$$Start<C9SecretAssetBundleProvider.C9SecretAssetBundleResource.<LoadLocalAssetBundle>d__36>
0x1d2c608: ldp      x20, x19, [sp, #0xb0]
0x1d2c60c: ldp      x22, x21, [sp, #0xa0]
0x1d2c610: ldp      x24, x23, [sp, #0x90]
0x1d2c614: ldr      x30, [sp, #0x80]
0x1d2c618: add      sp, sp, #0xc0
0x1d2c61c: ret      

// 0x1d2c620 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$BeginWebRequestOperation
0x1d2c620: stp      x30, x21, [sp, #-0x20]!
0x1d2c624: stp      x20, x19, [sp, #0x10]
0x1d2c628: adrp     x21, #0x4475000
0x1d2c62c: ldrb     w8, [x21, #0xd4e]
0x1d2c630: mov      x20, x1
0x1d2c634: mov      x19, x0
0x1d2c638: tbnz     w8, #0, #0x1d2c65c
0x1d2c63c: adrp     x0, #0x418b000
0x1d2c640: ldr      x0, [x0, #0x570]
0x1d2c644: bl       #0x1b64570 | 
0x1d2c648: adrp     x0, #0x418b000
0x1d2c64c: ldr      x0, [x0, #0x650]
0x1d2c650: bl       #0x1b64570 | 
0x1d2c654: mov      w8, #1
0x1d2c658: strb     w8, [x21, #0xd4e]
0x1d2c65c: stp      xzr, xzr, [x19, #0x90]
0x1d2c660: str      x20, [x19, #0x28]
0x1d2c664: cbz      x20, #0x1d2c680
0x1d2c668: mov      x0, x20
0x1d2c66c: mov      x1, xzr
0x1d2c670: bl       #0x3c5bd04 | UnityEngine.AsyncOperation$$get_isDone
0x1d2c674: tbz      w0, #0, #0x1d2c694
0x1d2c678: ldr      x1, [x19, #0x28]
0x1d2c67c: b        #0x1d2c684 | 
0x1d2c680: mov      x1, xzr
0x1d2c684: mov      x0, x19
0x1d2c688: ldp      x20, x19, [sp, #0x10]
0x1d2c68c: ldp      x30, x21, [sp], #0x20
0x1d2c690: b        #0x1d2bc48 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$WebRequestOperationCompleted
0x1d2c694: ldr      x8, [x19, #0x50]
0x1d2c698: cbz      x8, #0x1d2c708
0x1d2c69c: ldr      w8, [x8, #0x1c]
0x1d2c6a0: cmp      w8, #1
0x1d2c6a4: b.lt     #0x1d2c6bc
0x1d2c6a8: ldr      x0, [x19, #0x48]
0x1d2c6ac: cbz      x0, #0x1d2c708
0x1d2c6b0: mov      x1, x19
0x1d2c6b4: mov      x2, xzr
0x1d2c6b8: bl       #0x3baf174 | UnityEngine.ResourceManagement.ResourceManager$$AddUpdateReceiver
0x1d2c6bc: adrp     x8, #0x418b000
0x1d2c6c0: ldr      x20, [x19, #0x28]
0x1d2c6c4: ldr      x8, [x8, #0x570]
0x1d2c6c8: ldr      x0, [x8]
0x1d2c6cc: bl       #0x1b647b8 | 
0x1d2c6d0: adrp     x8, #0x418b000
0x1d2c6d4: ldr      x8, [x8, #0x650]
0x1d2c6d8: mov      x1, x19
0x1d2c6dc: mov      x3, xzr
0x1d2c6e0: mov      x21, x0
0x1d2c6e4: ldr      x2, [x8]
0x1d2c6e8: bl       #0x3035f4c | System.Action<object>$$.ctor
0x1d2c6ec: cbz      x20, #0x1d2c708
0x1d2c6f0: mov      x0, x20
0x1d2c6f4: ldp      x20, x19, [sp, #0x10]
0x1d2c6f8: mov      x1, x21
0x1d2c6fc: mov      x2, xzr
0x1d2c700: ldp      x30, x21, [sp], #0x20
0x1d2c704: b        #0x3c5bf2c | UnityEngine.AsyncOperation$$add_completed
0x1d2c708: bl       #0x1b647c8 | 

// 0x1d2c70c UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$Update
0x1d2c70c: str      d8, [sp, #-0x30]!
0x1d2c710: stp      x30, x21, [sp, #0x10]
0x1d2c714: stp      x20, x19, [sp, #0x20]
0x1d2c718: adrp     x20, #0x4475000
0x1d2c71c: ldrb     w8, [x20, #0xd4f]
0x1d2c720: mov      v8.16b, v0.16b
0x1d2c724: mov      x19, x0
0x1d2c728: tbnz     w8, #0, #0x1d2c740
0x1d2c72c: adrp     x0, #0x418b000
0x1d2c730: ldr      x0, [x0, #0x5e8]
0x1d2c734: bl       #0x1b64570 | 
0x1d2c738: mov      w8, #1
0x1d2c73c: strb     w8, [x20, #0xd4f]
0x1d2c740: ldr      x8, [x19, #0x28]
0x1d2c744: cbz      x8, #0x1d2c818
0x1d2c748: adrp     x9, #0x418b000
0x1d2c74c: ldr      x9, [x9, #0x5e8]
0x1d2c750: ldr      x10, [x8]
0x1d2c754: ldr      x9, [x9]
0x1d2c758: ldrb     w12, [x10, #0x130]
0x1d2c75c: ldrb     w11, [x9, #0x130]
0x1d2c760: cmp      w12, w11
0x1d2c764: b.lo     #0x1d2c818
0x1d2c768: ldr      x10, [x10, #0xc8]
0x1d2c76c: add      x10, x10, x11, lsl #3
0x1d2c770: ldur     x10, [x10, #-8]
0x1d2c774: cmp      x10, x9
0x1d2c778: csel     x20, x8, xzr, eq
0x1d2c77c: b.ne     #0x1d2c818
0x1d2c780: cbz      x20, #0x1d2c828
0x1d2c784: mov      x0, x20
0x1d2c788: mov      x1, xzr
0x1d2c78c: bl       #0x3c5bd04 | UnityEngine.AsyncOperation$$get_isDone
0x1d2c790: tbnz     w0, #0, #0x1d2c818
0x1d2c794: ldr      x0, [x20, #0x20]
0x1d2c798: cbz      x0, #0x1d2c828
0x1d2c79c: ldr      x21, [x19, #0x90]
0x1d2c7a0: mov      x1, xzr
0x1d2c7a4: bl       #0x3e91020 | UnityEngine.Networking.UnityWebRequest$$get_downloadedBytes
0x1d2c7a8: cmp      x21, x0
0x1d2c7ac: b.ne     #0x1d2c800
0x1d2c7b0: ldr      s0, [x19, #0x98]
0x1d2c7b4: ldr      x8, [x19, #0x50]
0x1d2c7b8: fadd     s0, s0, s8
0x1d2c7bc: str      s0, [x19, #0x98]
0x1d2c7c0: cbz      x8, #0x1d2c828
0x1d2c7c4: ldr      s1, [x8, #0x1c]
0x1d2c7c8: scvtf    s1, s1
0x1d2c7cc: fcmp     s0, s1
0x1d2c7d0: b.lt     #0x1d2c7f0
0x1d2c7d4: ldr      w8, [x19, #0x9c]
0x1d2c7d8: cmp      w8, #6
0x1d2c7dc: b.lt     #0x1d2c7f0
0x1d2c7e0: ldr      x0, [x20, #0x20]
0x1d2c7e4: cbz      x0, #0x1d2c828
0x1d2c7e8: mov      x1, xzr
0x1d2c7ec: bl       #0x3e8fd28 | UnityEngine.Networking.UnityWebRequest$$Abort
0x1d2c7f0: ldr      w8, [x19, #0x9c]
0x1d2c7f4: add      w8, w8, #1
0x1d2c7f8: str      w8, [x19, #0x9c]
0x1d2c7fc: b        #0x1d2c818 | 
0x1d2c800: str      xzr, [x19, #0x98]
0x1d2c804: ldr      x0, [x20, #0x20]
0x1d2c808: cbz      x0, #0x1d2c828
0x1d2c80c: mov      x1, xzr
0x1d2c810: bl       #0x3e91020 | UnityEngine.Networking.UnityWebRequest$$get_downloadedBytes
0x1d2c814: str      x0, [x19, #0x90]
0x1d2c818: ldp      x20, x19, [sp, #0x20]
0x1d2c81c: ldp      x30, x21, [sp, #0x10]
0x1d2c820: ldr      d8, [sp], #0x30
0x1d2c824: ret      
0x1d2c828: bl       #0x1b647c8 | 

// 0x1d2c82c UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$LocalRequestOperationCompleted
0x1d2c82c: stp      x30, x23, [sp, #-0x30]!
0x1d2c830: stp      x22, x21, [sp, #0x10]
0x1d2c834: stp      x20, x19, [sp, #0x20]
0x1d2c838: adrp     x21, #0x4475000
0x1d2c83c: ldrb     w8, [x21, #0xd50]
0x1d2c840: mov      x20, x1
0x1d2c844: mov      x19, x0
0x1d2c848: tbnz     w8, #0, #0x1d2c8a8
0x1d2c84c: adrp     x0, #0x418b000
0x1d2c850: ldr      x0, [x0, #0x5f0]
0x1d2c854: bl       #0x1b64570 | 
0x1d2c858: adrp     x0, #0x4185000
0x1d2c85c: ldr      x0, [x0, #0x208]
0x1d2c860: bl       #0x1b64570 | 
0x1d2c864: adrp     x0, #0x418b000
0x1d2c868: ldr      x0, [x0, #0x620]
0x1d2c86c: bl       #0x1b64570 | 
0x1d2c870: adrp     x0, #0x418b000
0x1d2c874: ldr      x0, [x0, #0x660]
0x1d2c878: bl       #0x1b64570 | 
0x1d2c87c: adrp     x0, #0x418b000
0x1d2c880: ldr      x0, [x0, #0x628]
0x1d2c884: bl       #0x1b64570 | 
0x1d2c888: adrp     x0, #0x418b000
0x1d2c88c: ldr      x0, [x0, #0x638] | 0x418b638 "Invalid path in C9SecretAssetBundleProvider: '"
0x1d2c890: bl       #0x1b64570 | 
0x1d2c894: adrp     x0, #0x418b000
0x1d2c898: ldr      x0, [x0, #0x648] | 0x418b648 "'."
0x1d2c89c: bl       #0x1b64570 | 
0x1d2c8a0: mov      w8, #1
0x1d2c8a4: strb     w8, [x21, #0xd50]
0x1d2c8a8: cbz      x20, #0x1d2c9e4
0x1d2c8ac: adrp     x8, #0x418b000
0x1d2c8b0: ldr      x8, [x8, #0x5f0]
0x1d2c8b4: ldr      x9, [x20]
0x1d2c8b8: ldr      x8, [x8]
0x1d2c8bc: ldrb     w11, [x9, #0x130]
0x1d2c8c0: ldrb     w10, [x8, #0x130]
0x1d2c8c4: cmp      w11, w10
0x1d2c8c8: b.lo     #0x1d2c9e4
0x1d2c8cc: ldr      x9, [x9, #0xc8]
0x1d2c8d0: add      x9, x9, x10, lsl #3
0x1d2c8d4: ldur     x9, [x9, #-8]
0x1d2c8d8: cmp      x9, x8
0x1d2c8dc: b.ne     #0x1d2c9e4
0x1d2c8e0: adrp     x21, #0x4185000
0x1d2c8e4: ldr      x21, [x21, #0x208]
0x1d2c8e8: mov      x0, x20
0x1d2c8ec: mov      x1, xzr
0x1d2c8f0: bl       #0x3c166c4 | UnityEngine.AssetBundleCreateRequest$$get_assetBundle
0x1d2c8f4: str      x0, [x19, #0x18]
0x1d2c8f8: mov      x20, x0
0x1d2c8fc: ldr      x0, [x21]
0x1d2c900: ldr      w8, [x0, #0xe0]
0x1d2c904: cbnz     w8, #0x1d2c90c
0x1d2c908: bl       #0x1b646a4 | 
0x1d2c90c: mov      x0, x20
0x1d2c910: mov      x1, xzr
0x1d2c914: mov      x2, xzr
0x1d2c918: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1d2c91c: tbz      w0, #0, #0x1d2c940
0x1d2c920: adrp     x8, #0x418b000
0x1d2c924: ldr      x8, [x8, #0x660]
0x1d2c928: add      x0, x19, #0x38
0x1d2c92c: mov      w2, #1
0x1d2c930: mov      x1, x19
0x1d2c934: ldr      x4, [x8]
0x1d2c938: mov      x3, xzr
0x1d2c93c: b        #0x1d2c9c8 | 
0x1d2c940: adrp     x8, #0x418b000
0x1d2c944: adrp     x9, #0x418b000
0x1d2c948: ldr      x1, [x19, #0x88]
0x1d2c94c: ldr      x8, [x8, #0x638] | 0x418b638 "Invalid path in C9SecretAssetBundleProvider: '"
0x1d2c950: ldr      x9, [x9, #0x648] | 0x418b648 "'."
0x1d2c954: mov      x3, xzr
0x1d2c958: ldr      x0, [x8]
0x1d2c95c: ldr      x2, [x9]
0x1d2c960: bl       #0x33087d4 | System.String$$Concat
0x1d2c964: add      x21, x19, #0x38
0x1d2c968: mov      x20, x0
0x1d2c96c: mov      x0, x21
0x1d2c970: mov      x1, xzr
0x1d2c974: bl       #0x3bbd43c | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$get_Location
0x1d2c978: adrp     x8, #0x418b000
0x1d2c97c: ldr      x8, [x8, #0x628]
0x1d2c980: mov      x22, x0
0x1d2c984: ldr      x8, [x8]
0x1d2c988: mov      x0, x8
0x1d2c98c: bl       #0x1b647b8 | 
0x1d2c990: mov      x1, x20
0x1d2c994: mov      x2, x22
0x1d2c998: mov      x3, xzr
0x1d2c99c: mov      x4, xzr
0x1d2c9a0: mov      x5, xzr
0x1d2c9a4: mov      x23, x0
0x1d2c9a8: bl       #0x3bb5748 | UnityEngine.ResourceManagement.Exceptions.RemoteProviderException$$.ctor
0x1d2c9ac: adrp     x8, #0x418b000
0x1d2c9b0: ldr      x8, [x8, #0x620]
0x1d2c9b4: mov      x0, x21
0x1d2c9b8: mov      x1, xzr
0x1d2c9bc: mov      w2, wzr
0x1d2c9c0: ldr      x4, [x8]
0x1d2c9c4: mov      x3, x23
0x1d2c9c8: bl       #0x1fe5538 | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$Complete<object>
0x1d2c9cc: mov      w8, #1
0x1d2c9d0: strb     w8, [x19, #0x78]
0x1d2c9d4: ldp      x20, x19, [sp, #0x20]
0x1d2c9d8: ldp      x22, x21, [sp, #0x10]
0x1d2c9dc: ldp      x30, x23, [sp], #0x30
0x1d2c9e0: ret      
0x1d2c9e4: bl       #0x1b647c8 | 

// 0x1d2c9e8 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$<BeginOperation>b__35_0
0x1d2c9e8: b        #0x1d2c620 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$BeginWebRequestOperation

// 0x1d2c9ec UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource.<>c__DisplayClass36_0$$.ctor
0x1d2c9ec: mov      x1, xzr
0x1d2c9f0: b        #0x34c04f0 | System.Object$$.ctor

// 0x1d2c9f4 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource.<>c__DisplayClass36_0$$<LoadLocalAssetBundle>b__0
0x1d2c9f4: str      x30, [sp, #-0x30]!
0x1d2c9f8: stp      x22, x21, [sp, #0x10]
0x1d2c9fc: stp      x20, x19, [sp, #0x20]
0x1d2ca00: adrp     x20, #0x4475000
0x1d2ca04: ldrb     w8, [x20, #0xd53]
0x1d2ca08: mov      x19, x0
0x1d2ca0c: tbnz     w8, #0, #0x1d2ca60
0x1d2ca10: adrp     x0, #0x418b000
0x1d2ca14: ldr      x0, [x0, #0x570]
0x1d2ca18: bl       #0x1b64570 | 
0x1d2ca1c: adrp     x0, #0x418b000
0x1d2ca20: ldr      x0, [x0, #0x6a0]
0x1d2ca24: bl       #0x1b64570 | 
0x1d2ca28: adrp     x0, #0x418b000
0x1d2ca2c: ldr      x0, [x0, #0x620]
0x1d2ca30: bl       #0x1b64570 | 
0x1d2ca34: adrp     x0, #0x418b000
0x1d2ca38: ldr      x0, [x0, #0x628]
0x1d2ca3c: bl       #0x1b64570 | 
0x1d2ca40: adrp     x0, #0x418b000
0x1d2ca44: ldr      x0, [x0, #0x638] | 0x418b638 "Invalid path in C9SecretAssetBundleProvider: '"
0x1d2ca48: bl       #0x1b64570 | 
0x1d2ca4c: adrp     x0, #0x418b000
0x1d2ca50: ldr      x0, [x0, #0x648] | 0x418b648 "'."
0x1d2ca54: bl       #0x1b64570 | 
0x1d2ca58: mov      w8, #1
0x1d2ca5c: strb     w8, [x20, #0xd53]
0x1d2ca60: ldp      x0, x20, [x19, #0x10]
0x1d2ca64: cbz      x0, #0x1d2cabc
0x1d2ca68: ldr      w1, [x19, #0x20]
0x1d2ca6c: mov      x2, xzr
0x1d2ca70: bl       #0x3c16044 | UnityEngine.AssetBundle$$LoadFromStreamAsync
0x1d2ca74: cbz      x20, #0x1d2cbc4
0x1d2ca78: str      x0, [x20, #0x28]
0x1d2ca7c: ldr      x8, [x19, #0x18]
0x1d2ca80: cbz      x8, #0x1d2cbc4
0x1d2ca84: ldr      x0, [x8, #0x28]
0x1d2ca88: cbz      x0, #0x1d2cbc4
0x1d2ca8c: mov      x1, xzr
0x1d2ca90: bl       #0x3c5bd04 | UnityEngine.AsyncOperation$$get_isDone
0x1d2ca94: ldr      x20, [x19, #0x18]
0x1d2ca98: cbz      x20, #0x1d2cbc4
0x1d2ca9c: ldr      x19, [x20, #0x28]
0x1d2caa0: tbz      w0, #0, #0x1d2cb78
0x1d2caa4: mov      x0, x20
0x1d2caa8: mov      x1, x19
0x1d2caac: ldp      x20, x19, [sp, #0x20]
0x1d2cab0: ldp      x22, x21, [sp, #0x10]
0x1d2cab4: ldr      x30, [sp], #0x30
0x1d2cab8: b        #0x1d2c82c | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource$$LocalRequestOperationCompleted
0x1d2cabc: cbz      x20, #0x1d2cbc4
0x1d2cac0: adrp     x8, #0x418b000
0x1d2cac4: adrp     x9, #0x418b000
0x1d2cac8: ldr      x1, [x20, #0x88]
0x1d2cacc: ldr      x8, [x8, #0x638] | 0x418b638 "Invalid path in C9SecretAssetBundleProvider: '"
0x1d2cad0: ldr      x9, [x9, #0x648] | 0x418b648 "'."
0x1d2cad4: mov      x3, xzr
0x1d2cad8: ldr      x0, [x8]
0x1d2cadc: ldr      x2, [x9]
0x1d2cae0: bl       #0x33087d4 | System.String$$Concat
0x1d2cae4: ldr      x8, [x19, #0x18]
0x1d2cae8: cbz      x8, #0x1d2cbc4
0x1d2caec: mov      x21, x0
0x1d2caf0: add      x0, x8, #0x38
0x1d2caf4: mov      x1, xzr
0x1d2caf8: bl       #0x3bbd43c | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$get_Location
0x1d2cafc: adrp     x8, #0x418b000
0x1d2cb00: ldr      x8, [x8, #0x628]
0x1d2cb04: mov      x22, x0
0x1d2cb08: ldr      x8, [x8]
0x1d2cb0c: mov      x0, x8
0x1d2cb10: bl       #0x1b647b8 | 
0x1d2cb14: mov      x1, x21
0x1d2cb18: mov      x2, x22
0x1d2cb1c: mov      x3, xzr
0x1d2cb20: mov      x4, xzr
0x1d2cb24: mov      x5, xzr
0x1d2cb28: mov      x20, x0
0x1d2cb2c: bl       #0x3bb5748 | UnityEngine.ResourceManagement.Exceptions.RemoteProviderException$$.ctor
0x1d2cb30: ldr      x8, [x19, #0x18]
0x1d2cb34: cbz      x8, #0x1d2cbc4
0x1d2cb38: adrp     x9, #0x418b000
0x1d2cb3c: ldr      x9, [x9, #0x620]
0x1d2cb40: add      x0, x8, #0x38
0x1d2cb44: mov      x1, xzr
0x1d2cb48: mov      w2, wzr
0x1d2cb4c: ldr      x4, [x9]
0x1d2cb50: mov      x3, x20
0x1d2cb54: bl       #0x1fe5538 | UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle$$Complete<object>
0x1d2cb58: ldr      x8, [x19, #0x18]
0x1d2cb5c: cbz      x8, #0x1d2cbc4
0x1d2cb60: ldp      x20, x19, [sp, #0x20]
0x1d2cb64: ldp      x22, x21, [sp, #0x10]
0x1d2cb68: mov      w9, #1
0x1d2cb6c: strb     w9, [x8, #0x78]
0x1d2cb70: ldr      x30, [sp], #0x30
0x1d2cb74: ret      
0x1d2cb78: adrp     x8, #0x418b000
0x1d2cb7c: ldr      x8, [x8, #0x570]
0x1d2cb80: ldr      x0, [x8]
0x1d2cb84: bl       #0x1b647b8 | 
0x1d2cb88: adrp     x8, #0x418b000
0x1d2cb8c: ldr      x8, [x8, #0x6a0]
0x1d2cb90: mov      x1, x20
0x1d2cb94: mov      x3, xzr
0x1d2cb98: mov      x21, x0
0x1d2cb9c: ldr      x2, [x8]
0x1d2cba0: bl       #0x3035f4c | System.Action<object>$$.ctor
0x1d2cba4: cbz      x19, #0x1d2cbc4
0x1d2cba8: mov      x0, x19
0x1d2cbac: mov      x1, x21
0x1d2cbb0: ldp      x20, x19, [sp, #0x20]
0x1d2cbb4: ldp      x22, x21, [sp, #0x10]
0x1d2cbb8: mov      x2, xzr
0x1d2cbbc: ldr      x30, [sp], #0x30
0x1d2cbc0: b        #0x3c5bf2c | UnityEngine.AsyncOperation$$add_completed
0x1d2cbc4: bl       #0x1b647c8 | 

// 0x1d2cbc8 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource.<LoadLocalAssetBundle>d__36$$MoveNext
0x1d2cbc8: sub      sp, sp, #0x40
0x1d2cbcc: stp      x30, x23, [sp, #0x10]
0x1d2cbd0: stp      x22, x21, [sp, #0x20]
0x1d2cbd4: stp      x20, x19, [sp, #0x30]
0x1d2cbd8: adrp     x20, #0x4475000
0x1d2cbdc: ldrb     w8, [x20, #0xd54]
0x1d2cbe0: mov      x19, x0
0x1d2cbe4: tbnz     w8, #0, #0x1d2cc80
0x1d2cbe8: adrp     x0, #0x4186000
0x1d2cbec: ldr      x0, [x0, #0xf18]
0x1d2cbf0: bl       #0x1b64570 | 
0x1d2cbf4: adrp     x0, #0x418b000
0x1d2cbf8: ldr      x0, [x0, #0x6a8]
0x1d2cbfc: bl       #0x1b64570 | 
0x1d2cc00: adrp     x0, #0x4187000
0x1d2cc04: ldr      x0, [x0, #0x9c8]
0x1d2cc08: bl       #0x1b64570 | 
0x1d2cc0c: adrp     x0, #0x418b000
0x1d2cc10: ldr      x0, [x0, #0x5d8]
0x1d2cc14: bl       #0x1b64570 | 
0x1d2cc18: adrp     x0, #0x4185000
0x1d2cc1c: ldr      x0, [x0, #0x428]
0x1d2cc20: bl       #0x1b64570 | 
0x1d2cc24: adrp     x0, #0x4185000
0x1d2cc28: ldr      x0, [x0, #0x408]
0x1d2cc2c: bl       #0x1b64570 | 
0x1d2cc30: adrp     x0, #0x418b000
0x1d2cc34: ldr      x0, [x0, #0x6b0]
0x1d2cc38: bl       #0x1b64570 | 
0x1d2cc3c: adrp     x0, #0x418b000
0x1d2cc40: ldr      x0, [x0, #0x6b8]
0x1d2cc44: bl       #0x1b64570 | 
0x1d2cc48: adrp     x0, #0x418b000
0x1d2cc4c: ldr      x0, [x0, #0x6c0]
0x1d2cc50: bl       #0x1b64570 | 
0x1d2cc54: adrp     x0, #0x418b000
0x1d2cc58: ldr      x0, [x0, #0x6c8]
0x1d2cc5c: bl       #0x1b64570 | 
0x1d2cc60: adrp     x0, #0x418b000
0x1d2cc64: ldr      x0, [x0, #0x6d0]
0x1d2cc68: bl       #0x1b64570 | 
0x1d2cc6c: adrp     x0, #0x418b000
0x1d2cc70: ldr      x0, [x0, #0x5e0]
0x1d2cc74: bl       #0x1b64570 | 
0x1d2cc78: mov      w8, #1
0x1d2cc7c: strb     w8, [x20, #0xd54]
0x1d2cc80: str      xzr, [sp, #8]
0x1d2cc84: adrp     x22, #0x4187000
0x1d2cc88: ldr      w8, [x19]
0x1d2cc8c: ldr      x22, [x22, #0x9c8]
0x1d2cc90: cbz      w8, #0x1d2cd80
0x1d2cc94: adrp     x8, #0x418b000
0x1d2cc98: ldr      x8, [x8, #0x6d0]
0x1d2cc9c: ldr      x0, [x8]
0x1d2cca0: bl       #0x1b647b8 | 
0x1d2cca4: mov      x20, x0
0x1d2cca8: mov      x1, xzr
0x1d2ccac: bl       #0x34c04f0 | System.Object$$.ctor
0x1d2ccb0: str      x20, [x19, #0x40]
0x1d2ccb4: cbz      x20, #0x1d2cee8
0x1d2ccb8: ldr      x8, [x19, #0x28]
0x1d2ccbc: str      x8, [x20, #0x18]
0x1d2ccc0: ldr      w8, [x19, #0x30]
0x1d2ccc4: str      w8, [x20, #0x20]
0x1d2ccc8: ldrb     w8, [x19, #0x34]
0x1d2cccc: ldr      x21, [x19, #0x38]
0x1d2ccd0: cbz      w8, #0x1d2cd98
0x1d2ccd4: adrp     x8, #0x418b000
0x1d2ccd8: ldr      x8, [x8, #0x5e0]
0x1d2ccdc: ldr      x0, [x8]
0x1d2cce0: bl       #0x1b647b8 | 
0x1d2cce4: mov      x20, x0
0x1d2cce8: mov      x1, x21
0x1d2ccec: mov      x2, xzr
0x1d2ccf0: bl       #0x3e8fdd0 | UnityEngine.Networking.UnityWebRequest$$.ctor
0x1d2ccf4: adrp     x8, #0x418b000
0x1d2ccf8: ldr      x8, [x8, #0x5d8]
0x1d2ccfc: ldr      x0, [x8]
0x1d2cd00: bl       #0x1b647b8 | 
0x1d2cd04: mov      x21, x0
0x1d2cd08: mov      x1, xzr
0x1d2cd0c: bl       #0x3e8fad8 | UnityEngine.Networking.DownloadHandlerBuffer$$.ctor
0x1d2cd10: cbz      x20, #0x1d2cef0
0x1d2cd14: mov      x0, x20
0x1d2cd18: mov      x1, x21
0x1d2cd1c: mov      x2, xzr
0x1d2cd20: bl       #0x3e9015c | UnityEngine.Networking.UnityWebRequest$$set_downloadHandler
0x1d2cd24: mov      x0, x20
0x1d2cd28: mov      x1, xzr
0x1d2cd2c: bl       #0x3e906a8 | UnityEngine.Networking.UnityWebRequest$$SendWebRequest
0x1d2cd30: mov      x0, x20
0x1d2cd34: mov      x1, xzr
0x1d2cd38: bl       #0x3e90f48 | UnityEngine.Networking.UnityWebRequest$$get_isDone
0x1d2cd3c: tbz      w0, #0, #0x1d2cd30
0x1d2cd40: mov      x0, x20
0x1d2cd44: mov      x1, xzr
0x1d2cd48: bl       #0x3e90654 | UnityEngine.Networking.UnityWebRequest$$get_downloadHandler
0x1d2cd4c: cbz      x0, #0x1d2cef4
0x1d2cd50: mov      x1, xzr
0x1d2cd54: bl       #0x3e8f454 | UnityEngine.Networking.DownloadHandler$$get_data
0x1d2cd58: adrp     x8, #0x4185000
0x1d2cd5c: ldr      x8, [x8, #0x408]
0x1d2cd60: mov      x21, x0
0x1d2cd64: ldr      x0, [x8]
0x1d2cd68: bl       #0x1b647b8 | 
0x1d2cd6c: mov      x20, x0
0x1d2cd70: mov      x1, x21
0x1d2cd74: mov      x2, xzr
0x1d2cd78: bl       #0x33cfb10 | System.IO.MemoryStream$$.ctor
0x1d2cd7c: b        #0x1d2cdc0 | 
0x1d2cd80: ldr      x8, [x19, #0x50]
0x1d2cd84: mov      w9, #-1
0x1d2cd88: str      x8, [sp, #8]
0x1d2cd8c: str      xzr, [x19, #0x50]
0x1d2cd90: str      w9, [x19]
0x1d2cd94: b        #0x1d2ce0c | 
0x1d2cd98: adrp     x8, #0x4185000
0x1d2cd9c: ldr      x8, [x8, #0x428]
0x1d2cda0: ldr      x0, [x8]
0x1d2cda4: bl       #0x1b647b8 | 
0x1d2cda8: mov      x20, x0
0x1d2cdac: mov      w2, #3
0x1d2cdb0: mov      w3, #1
0x1d2cdb4: mov      x1, x21
0x1d2cdb8: mov      x4, xzr
0x1d2cdbc: bl       #0x340c1c0 | System.IO.FileStream$$.ctor
0x1d2cdc0: str      x20, [x19, #0x48]
0x1d2cdc4: ldr      x0, [x22]
0x1d2cdc8: ldr      w8, [x0, #0xe0]
0x1d2cdcc: cbnz     w8, #0x1d2cdd4
0x1d2cdd0: bl       #0x1b646a4 | 
0x1d2cdd4: mov      x0, x20
0x1d2cdd8: bl       #0x1d29b80 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$Decrypt
0x1d2cddc: cbz      x0, #0x1d2ceec
0x1d2cde0: adrp     x8, #0x418b000
0x1d2cde4: ldr      x8, [x8, #0x6c0]
0x1d2cde8: ldr      x1, [x8]
0x1d2cdec: bl       #0x224ee0c | System.Threading.Tasks.Task<object>$$GetAwaiter
0x1d2cdf0: adrp     x8, #0x418b000
0x1d2cdf4: ldr      x8, [x8, #0x6b8]
0x1d2cdf8: str      x0, [sp, #8]
0x1d2cdfc: ldr      x1, [x8]
0x1d2ce00: add      x0, sp, #8
0x1d2ce04: bl       #0x2237d8c | System.Runtime.CompilerServices.TaskAwaiter<object>$$get_IsCompleted
0x1d2ce08: tbz      w0, #0, #0x1d2cea4
0x1d2ce0c: adrp     x8, #0x418b000
0x1d2ce10: ldr      x8, [x8, #0x6b0]
0x1d2ce14: add      x0, sp, #8
0x1d2ce18: ldr      x1, [x8]
0x1d2ce1c: bl       #0x2237dd0 | System.Runtime.CompilerServices.TaskAwaiter<object>$$GetResult
0x1d2ce20: mov      x23, x19
0x1d2ce24: ldr      x8, [x23, #0x40]!
0x1d2ce28: cbz      x8, #0x1d2cee0
0x1d2ce2c: str      x0, [x8, #0x10]
0x1d2ce30: ldr      x0, [x19, #0x48]
0x1d2ce34: cbz      x0, #0x1d2cee4
0x1d2ce38: mov      x1, xzr
0x1d2ce3c: bl       #0x3403420 | System.IO.Stream$$Dispose
0x1d2ce40: adrp     x8, #0x4186000
0x1d2ce44: ldr      x8, [x8, #0xf18]
0x1d2ce48: ldr      x21, [x23]
0x1d2ce4c: ldr      x0, [x8]
0x1d2ce50: bl       #0x1b647b8 | 
0x1d2ce54: adrp     x8, #0x418b000
0x1d2ce58: ldr      x8, [x8, #0x6c8]
0x1d2ce5c: mov      x20, x0
0x1d2ce60: ldr      x2, [x8]
0x1d2ce64: mov      x1, x21
0x1d2ce68: mov      x3, xzr
0x1d2ce6c: bl       #0x33ee8e4 | System.Action$$.ctor
0x1d2ce70: ldr      x0, [x22]
0x1d2ce74: ldr      w8, [x0, #0xe0]
0x1d2ce78: cbnz     w8, #0x1d2ce80
0x1d2ce7c: bl       #0x1b646a4 | 
0x1d2ce80: mov      x0, x20
0x1d2ce84: bl       #0x1d29c64 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$add_WaitUntilNextUpdate
0x1d2ce88: mov      w8, #-2
0x1d2ce8c: str      w8, [x19], #8
0x1d2ce90: mov      x0, x19
0x1d2ce94: mov      x1, xzr
0x1d2ce98: stp      xzr, xzr, [x23]
0x1d2ce9c: bl       #0x33a584c | System.Runtime.CompilerServices.AsyncVoidMethodBuilder$$SetResult
0x1d2cea0: b        #0x1d2cecc | 
0x1d2cea4: str      wzr, [x19]
0x1d2cea8: ldr      x8, [sp, #8]
0x1d2ceac: add      x0, x19, #8
0x1d2ceb0: str      x8, [x19, #0x50]
0x1d2ceb4: adrp     x8, #0x418b000
0x1d2ceb8: ldr      x8, [x8, #0x6a8]
0x1d2cebc: ldr      x3, [x8]
0x1d2cec0: add      x1, sp, #8
0x1d2cec4: mov      x2, x19
0x1d2cec8: bl       #0x1f08034 | System.Runtime.CompilerServices.AsyncVoidMethodBuilder$$AwaitUnsafeOnCompleted<TaskAwaiter<object>, C9SecretAssetBundleProvider.C9SecretAssetBundleResource.<LoadLocalAssetBundle>d__36>
0x1d2cecc: ldp      x20, x19, [sp, #0x30]
0x1d2ced0: ldp      x22, x21, [sp, #0x20]
0x1d2ced4: ldp      x30, x23, [sp, #0x10]
0x1d2ced8: add      sp, sp, #0x40
0x1d2cedc: ret      
0x1d2cee0: bl       #0x1b647c8 | 
0x1d2cee4: bl       #0x1b647c8 | 
0x1d2cee8: bl       #0x1b647c8 | 
0x1d2ceec: bl       #0x1b647c8 | 
0x1d2cef0: bl       #0x1b647c8 | 
0x1d2cef4: bl       #0x1b647c8 | 
0x1d2cef8: b        #0x1d2cf40 | 
0x1d2cefc: b        #0x1d2cf40 | 
0x1d2cf00: b        #0x1d2cf40 | 
0x1d2cf04: b        #0x1d2cf40 | 
0x1d2cf08: b        #0x1d2cf40 | 
0x1d2cf0c: b        #0x1d2cf40 | 
0x1d2cf10: b        #0x1d2cf40 | 
0x1d2cf14: b        #0x1d2cf40 | 
0x1d2cf18: b        #0x1d2cf40 | 
0x1d2cf1c: b        #0x1d2cf40 | 
0x1d2cf20: b        #0x1d2cf40 | 
0x1d2cf24: b        #0x1d2cf40 | 
0x1d2cf28: b        #0x1d2cf40 | 
0x1d2cf2c: b        #0x1d2cf40 | 
0x1d2cf30: b        #0x1d2cf40 | 
0x1d2cf34: b        #0x1d2cf40 | 
0x1d2cf38: b        #0x1d2cf40 | 
0x1d2cf3c: b        #0x1d2cf40 | 
0x1d2cf40: mov      x20, x0
0x1d2cf44: cmp      w1, #1
0x1d2cf48: b.ne     #0x1d2cfc4
0x1d2cf4c: mov      x0, x20
0x1d2cf50: bl       #0x3e998d0 | 
0x1d2cf54: mov      x20, x0
0x1d2cf58: adrp     x0, #0x4185000
0x1d2cf5c: ldr      x0, [x0, #0x2e0]
0x1d2cf60: bl       #0x1b64584 | 
0x1d2cf64: ldr      x8, [x20]
0x1d2cf68: ldr      x1, [x8]
0x1d2cf6c: bl       #0x1b64bf8 | 
0x1d2cf70: tbz      w0, #0, #0x1d2cf9c
0x1d2cf74: ldr      x20, [x20]
0x1d2cf78: bl       #0x3e998e0 | 
0x1d2cf7c: mov      w8, #-2
0x1d2cf80: add      x0, x19, #8
0x1d2cf84: mov      x1, x20
0x1d2cf88: mov      x2, xzr
0x1d2cf8c: str      w8, [x19]
0x1d2cf90: stp      xzr, xzr, [x19, #0x40]
0x1d2cf94: bl       #0x33a59b0 | System.Runtime.CompilerServices.AsyncVoidMethodBuilder$$SetException
0x1d2cf98: b        #0x1d2cecc | 
0x1d2cf9c: mov      w0, #8
0x1d2cfa0: bl       #0x3e998f0 | 
0x1d2cfa4: ldr      x8, [x20]
0x1d2cfa8: str      x8, [x0]
0x1d2cfac: adrp     x1, #0x3e9f000
0x1d2cfb0: add      x1, x1, #0xc98
0x1d2cfb4: mov      x2, xzr
0x1d2cfb8: bl       #0x3e99900 | 
0x1d2cfbc: mov      x20, x0
0x1d2cfc0: bl       #0x3e998e0 | 
0x1d2cfc4: mov      x0, x20
0x1d2cfc8: bl       #0x1c65b3c | 
0x1d2cfcc: bl       #0x194772c | 

// 0x1d2cfd0 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource.<LoadLocalAssetBundle>d__36$$SetStateMachine
0x1d2cfd0: add      x0, x0, #8
0x1d2cfd4: mov      x2, xzr
0x1d2cfd8: b        #0x33a5788 | System.Runtime.CompilerServices.AsyncVoidMethodBuilder$$SetStateMachine

// 0x1d2cfdc UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.<>c$$.cctor
0x1d2cfdc: str      x30, [sp, #-0x20]!
0x1d2cfe0: stp      x20, x19, [sp, #0x10]
0x1d2cfe4: adrp     x19, #0x4475000
0x1d2cfe8: adrp     x20, #0x418b000
0x1d2cfec: ldrb     w8, [x19, #0xd55]
0x1d2cff0: ldr      x20, [x20, #0x4c8]
0x1d2cff4: tbnz     w8, #0, #0x1d2d00c
0x1d2cff8: adrp     x0, #0x418b000
0x1d2cffc: ldr      x0, [x0, #0x4c8]
0x1d2d000: bl       #0x1b64570 | 
0x1d2d004: mov      w8, #1
0x1d2d008: strb     w8, [x19, #0xd55]
0x1d2d00c: ldr      x0, [x20]
0x1d2d010: bl       #0x1b647b8 | 
0x1d2d014: mov      x1, xzr
0x1d2d018: mov      x19, x0
0x1d2d01c: bl       #0x34c04f0 | System.Object$$.ctor
0x1d2d020: ldr      x8, [x20]
0x1d2d024: ldr      x8, [x8, #0xb8]
0x1d2d028: str      x19, [x8]
0x1d2d02c: ldp      x20, x19, [sp, #0x10]
0x1d2d030: ldr      x30, [sp], #0x20
0x1d2d034: ret      

// 0x1d2d038 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.<>c$$.ctor
0x1d2d038: mov      x1, xzr
0x1d2d03c: b        #0x34c04f0 | System.Object$$.ctor

// 0x1d2d040 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.<>c$$<SetPassword>b__6_0
0x1d2d040: sub      sp, sp, #0x80
0x1d2d044: stp      x30, x23, [sp, #0x50]
0x1d2d048: stp      x22, x21, [sp, #0x60]
0x1d2d04c: stp      x20, x19, [sp, #0x70]
0x1d2d050: adrp     x21, #0x4475000
0x1d2d054: adrp     x20, #0x418b000
0x1d2d058: ldrb     w8, [x21, #0xd56]
0x1d2d05c: ldr      x20, [x20, #0x6d8]
0x1d2d060: mov      x19, x1
0x1d2d064: tbnz     w8, #0, #0x1d2d0d0
0x1d2d068: adrp     x0, #0x418b000
0x1d2d06c: ldr      x0, [x0, #0x6e0]
0x1d2d070: bl       #0x1b64570 | 
0x1d2d074: adrp     x0, #0x4187000
0x1d2d078: ldr      x0, [x0, #0x2b8]
0x1d2d07c: bl       #0x1b64570 | 
0x1d2d080: adrp     x0, #0x418b000
0x1d2d084: ldr      x0, [x0, #0x6e8]
0x1d2d088: bl       #0x1b64570 | 
0x1d2d08c: adrp     x0, #0x418b000
0x1d2d090: ldr      x0, [x0, #0x6f0]
0x1d2d094: bl       #0x1b64570 | 
0x1d2d098: adrp     x0, #0x418b000
0x1d2d09c: ldr      x0, [x0, #0x6d8]
0x1d2d0a0: bl       #0x1b64570 | 
0x1d2d0a4: adrp     x0, #0x4187000
0x1d2d0a8: ldr      x0, [x0, #0x9c8]
0x1d2d0ac: bl       #0x1b64570 | 
0x1d2d0b0: adrp     x0, #0x418b000
0x1d2d0b4: ldr      x0, [x0, #0x6f8]
0x1d2d0b8: bl       #0x1b64570 | 
0x1d2d0bc: adrp     x0, #0x418b000
0x1d2d0c0: ldr      x0, [x0, #0x700] | 0x418b700 'pass'
0x1d2d0c4: bl       #0x1b64570 | 
0x1d2d0c8: mov      w8, #1
0x1d2d0cc: strb     w8, [x21, #0xd56]
0x1d2d0d0: adrp     x21, #0x418b000
0x1d2d0d4: ldr      x1, [x20]
0x1d2d0d8: ldr      x21, [x21, #0x6e8]
0x1d2d0dc: mov      x0, x19
0x1d2d0e0: bl       #0x2779c7c | UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle<object>$$get_Status
0x1d2d0e4: cmp      w0, #1
0x1d2d0e8: b.ne     #0x1d2d128
0x1d2d0ec: adrp     x8, #0x418b000
0x1d2d0f0: ldr      x8, [x8, #0x6f0]
0x1d2d0f4: ldr      x1, [x8]
0x1d2d0f8: mov      x0, x19
0x1d2d0fc: bl       #0x2779c18 | UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle<object>$$get_Result
0x1d2d100: cbz      x0, #0x1d2d128
0x1d2d104: mov      x1, xzr
0x1d2d108: bl       #0x3c6385c | UnityEngine.TextAsset$$get_text
0x1d2d10c: adrp     x8, #0x418b000
0x1d2d110: ldr      x8, [x8, #0x700] | 0x418b700 'pass'
0x1d2d114: ldr      x1, [x8]
0x1d2d118: mov      x2, xzr
0x1d2d11c: bl       #0x32fac7c | System.String$$op_Equality
0x1d2d120: and      w1, w0, #1
0x1d2d124: b        #0x1d2d12c | 
0x1d2d128: mov      w1, wzr
0x1d2d12c: adrp     x8, #0x418b000
0x1d2d130: ldr      x8, [x8, #0x6f8]
0x1d2d134: strh     wzr, [sp, #0x30]
0x1d2d138: ldr      x2, [x8]
0x1d2d13c: add      x0, sp, #0x30
0x1d2d140: bl       #0x2ff1bb8 | System.Nullable<bool>$$.ctor
0x1d2d144: adrp     x20, #0x4187000
0x1d2d148: ldr      x20, [x20, #0x9c8]
0x1d2d14c: ldr      x0, [x20]
0x1d2d150: ldr      w8, [x0, #0xe0]
0x1d2d154: cbnz     w8, #0x1d2d15c
0x1d2d158: bl       #0x1b646a4 | 
0x1d2d15c: adrp     x23, #0x4475000
0x1d2d160: ldrb     w8, [x23, #0xd63]
0x1d2d164: ldrh     w22, [sp, #0x30]
0x1d2d168: cbnz     w8, #0x1d2d180
0x1d2d16c: adrp     x0, #0x4187000
0x1d2d170: ldr      x0, [x0, #0x9c8]
0x1d2d174: bl       #0x1b64570 | 
0x1d2d178: mov      w8, #1
0x1d2d17c: strb     w8, [x23, #0xd63]
0x1d2d180: ldr      x0, [x20]
0x1d2d184: ldr      w8, [x0, #0xe0]
0x1d2d188: cbnz     w8, #0x1d2d194
0x1d2d18c: bl       #0x1b646a4 | 
0x1d2d190: ldr      x0, [x20]
0x1d2d194: ldr      x8, [x0, #0xb8]
0x1d2d198: mov      x20, xzr
0x1d2d19c: strh     w22, [x8, #8]
0x1d2d1a0: ldr      x1, [x21]
0x1d2d1a4: mov      x0, x19
0x1d2d1a8: bl       #0x2779a30 | UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle<object>$$IsValid
0x1d2d1ac: tbz      w0, #0, #0x1d2d1fc
0x1d2d1b0: adrp     x9, #0x4187000
0x1d2d1b4: ldr      q0, [x19]
0x1d2d1b8: ldr      x8, [x19, #0x10]
0x1d2d1bc: ldr      x9, [x9, #0x2b8]
0x1d2d1c0: str      q0, [sp, #0x10]
0x1d2d1c4: str      x8, [sp, #0x20]
0x1d2d1c8: ldr      x0, [x9]
0x1d2d1cc: ldr      w8, [x0, #0xe0]
0x1d2d1d0: cbnz     w8, #0x1d2d1d8
0x1d2d1d4: bl       #0x1b646a4 | 
0x1d2d1d8: adrp     x8, #0x418b000
0x1d2d1dc: ldr      x8, [x8, #0x6e0]
0x1d2d1e0: ldr      q0, [sp, #0x10]
0x1d2d1e4: ldr      x9, [sp, #0x20]
0x1d2d1e8: add      x0, sp, #0x30
0x1d2d1ec: ldr      x1, [x8]
0x1d2d1f0: str      q0, [sp, #0x30]
0x1d2d1f4: str      x9, [sp, #0x40]
0x1d2d1f8: bl       #0x2088784 | UnityEngine.AddressableAssets.Addressables$$Release<object>
0x1d2d1fc: cbnz     x20, #0x1d2d214
0x1d2d200: ldp      x20, x19, [sp, #0x70]
0x1d2d204: ldp      x22, x21, [sp, #0x60]
0x1d2d208: ldp      x30, x23, [sp, #0x50]
0x1d2d20c: add      sp, sp, #0x80
0x1d2d210: ret      
0x1d2d214: mov      x0, x20
0x1d2d218: bl       #0x1b647c0 | 
0x1d2d21c: b        #0x1d2d22c | 
0x1d2d220: b        #0x1d2d22c | 
0x1d2d224: b        #0x1d2d22c | 
0x1d2d228: b        #0x1d2d22c | 
0x1d2d22c: mov      x20, x0
0x1d2d230: cmp      w1, #1
0x1d2d234: b.ne     #0x1d2d318
0x1d2d238: mov      x0, x20
0x1d2d23c: bl       #0x3e998d0 | 
0x1d2d240: mov      x20, x0
0x1d2d244: adrp     x0, #0x4185000
0x1d2d248: ldr      x0, [x0, #0x910]
0x1d2d24c: bl       #0x1b64584 | 
0x1d2d250: ldr      x8, [x20]
0x1d2d254: ldr      x1, [x8]
0x1d2d258: bl       #0x1b64bf8 | 
0x1d2d25c: tbz      w0, #0, #0x1d2d2d8
0x1d2d260: bl       #0x3e998e0 | 
0x1d2d264: strh     wzr, [sp, #0x30]
0x1d2d268: adrp     x0, #0x418b000
0x1d2d26c: ldr      x0, [x0, #0x6f8]
0x1d2d270: bl       #0x1b64584 | 
0x1d2d274: mov      x2, x0
0x1d2d278: add      x0, sp, #0x30
0x1d2d27c: mov      w1, wzr
0x1d2d280: bl       #0x2ff1bb8 | System.Nullable<bool>$$.ctor
0x1d2d284: adrp     x20, #0x4187000
0x1d2d288: ldr      x20, [x20, #0x9c8]
0x1d2d28c: mov      x0, x20
0x1d2d290: bl       #0x1b64584 | 
0x1d2d294: ldr      w8, [x0, #0xe0]
0x1d2d298: cbnz     w8, #0x1d2d2a0
0x1d2d29c: bl       #0x1b646a4 | 
0x1d2d2a0: adrp     x23, #0x4475000
0x1d2d2a4: ldrb     w8, [x23, #0xd63]
0x1d2d2a8: ldrh     w22, [sp, #0x30]
0x1d2d2ac: cbnz     w8, #0x1d2d2c4
0x1d2d2b0: adrp     x0, #0x4187000
0x1d2d2b4: ldr      x0, [x0, #0x9c8]
0x1d2d2b8: bl       #0x1b64570 | 
0x1d2d2bc: mov      w8, #1
0x1d2d2c0: strb     w8, [x23, #0xd63]
0x1d2d2c4: ldr      x0, [x20]
0x1d2d2c8: ldr      w8, [x0, #0xe0]
0x1d2d2cc: cbnz     w8, #0x1d2d194
0x1d2d2d0: bl       #0x1b646a4 | 
0x1d2d2d4: b        #0x1d2d190 | 
0x1d2d2d8: mov      w0, #8
0x1d2d2dc: bl       #0x3e998f0 | 
0x1d2d2e0: ldr      x8, [x20]
0x1d2d2e4: str      x8, [x0]
0x1d2d2e8: adrp     x1, #0x3e9f000
0x1d2d2ec: add      x1, x1, #0xc98
0x1d2d2f0: mov      x2, xzr
0x1d2d2f4: bl       #0x3e99900 | 
0x1d2d2f8: mov      x20, x0
0x1d2d2fc: b        #0x1d2d318 | 
0x1d2d300: mov      x22, x1
0x1d2d304: mov      x20, x0
0x1d2d308: bl       #0x3e998e0 | 
0x1d2d30c: mov      w1, w22
0x1d2d310: b        #0x1d2d318 | 
0x1d2d314: mov      x20, x0
0x1d2d318: mov      w8, #1
0x1d2d31c: cmp      w1, w8
0x1d2d320: b.ne     #0x1d2d340
0x1d2d324: mov      x0, x20
0x1d2d328: bl       #0x3e998d0 | 
0x1d2d32c: ldr      x8, [x0]
0x1d2d330: str      x8, [sp, #8]
0x1d2d334: bl       #0x3e998e0 | 
0x1d2d338: ldr      x20, [sp, #8]
0x1d2d33c: b        #0x1d2d1a0 | 
0x1d2d340: str      xzr, [sp, #8]
0x1d2d344: b        #0x1d2d34c | 
0x1d2d348: mov      x20, x0
0x1d2d34c: ldr      x1, [x21]
0x1d2d350: mov      x0, x19
0x1d2d354: bl       #0x2779a30 | UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle<object>$$IsValid
0x1d2d358: tbz      w0, #0, #0x1d2d3a8
0x1d2d35c: adrp     x9, #0x4187000
0x1d2d360: ldr      q0, [x19]
0x1d2d364: ldr      x8, [x19, #0x10]
0x1d2d368: ldr      x9, [x9, #0x2b8]
0x1d2d36c: str      q0, [sp, #0x10]
0x1d2d370: str      x8, [sp, #0x20]
0x1d2d374: ldr      x0, [x9]
0x1d2d378: ldr      w8, [x0, #0xe0]
0x1d2d37c: cbnz     w8, #0x1d2d384
0x1d2d380: bl       #0x1b646a4 | 
0x1d2d384: adrp     x8, #0x418b000
0x1d2d388: ldr      x8, [x8, #0x6e0]
0x1d2d38c: ldr      q0, [sp, #0x10]
0x1d2d390: ldr      x9, [sp, #0x20]
0x1d2d394: ldr      x1, [x8]
0x1d2d398: str      q0, [sp, #0x30]
0x1d2d39c: str      x9, [sp, #0x40]
0x1d2d3a0: add      x0, sp, #0x30
0x1d2d3a4: bl       #0x2088784 | UnityEngine.AddressableAssets.Addressables$$Release<object>
0x1d2d3a8: ldr      x8, [sp, #8]
0x1d2d3ac: cbnz     x8, #0x1d2d3b8
0x1d2d3b0: mov      x0, x20
0x1d2d3b4: bl       #0x1c65b3c | 
0x1d2d3b8: ldr      x0, [sp, #8]
0x1d2d3bc: bl       #0x1b647c0 | 
0x1d2d3c0: bl       #0x194772c | 

// 0x1d2d3c4 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.<>c$$<RegisterUpdateReceiver>b__12_0
0x1d2d3c4: str      x30, [sp, #-0x30]!
0x1d2d3c8: stp      x22, x21, [sp, #0x10]
0x1d2d3cc: stp      x20, x19, [sp, #0x20]
0x1d2d3d0: adrp     x22, #0x4475000
0x1d2d3d4: adrp     x20, #0x418b000
0x1d2d3d8: adrp     x21, #0x4185000
0x1d2d3dc: ldrb     w8, [x22, #0xd57]
0x1d2d3e0: ldr      x20, [x20, #0x708]
0x1d2d3e4: ldr      x21, [x21, #0x868]
0x1d2d3e8: mov      x19, x1
0x1d2d3ec: tbnz     w8, #0, #0x1d2d410
0x1d2d3f0: adrp     x0, #0x4185000
0x1d2d3f4: ldr      x0, [x0, #0x868]
0x1d2d3f8: bl       #0x1b64570 | 
0x1d2d3fc: adrp     x0, #0x418b000
0x1d2d400: ldr      x0, [x0, #0x708]
0x1d2d404: bl       #0x1b64570 | 
0x1d2d408: mov      w8, #1
0x1d2d40c: strb     w8, [x22, #0xd57]
0x1d2d410: ldr      x0, [x21]
0x1d2d414: ldr      x19, [x19]
0x1d2d418: ldr      x20, [x20]
0x1d2d41c: ldr      w8, [x0, #0xe0]
0x1d2d420: cbnz     w8, #0x1d2d428
0x1d2d424: bl       #0x1b646a4 | 
0x1d2d428: mov      x0, x20
0x1d2d42c: mov      x1, xzr
0x1d2d430: bl       #0x3489b94 | System.Type$$GetTypeFromHandle
0x1d2d434: mov      x1, x0
0x1d2d438: mov      x0, x19
0x1d2d43c: ldp      x20, x19, [sp, #0x20]
0x1d2d440: ldp      x22, x21, [sp, #0x10]
0x1d2d444: mov      x2, xzr
0x1d2d448: ldr      x30, [sp], #0x30
0x1d2d44c: b        #0x3492fb0 | System.Type$$op_Equality

// 0x1d2d450 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.<>c$$<RegisterUpdateReceiver>b__12_1
0x1d2d450: str      x30, [sp, #-0x20]!
0x1d2d454: stp      x20, x19, [sp, #0x10]
0x1d2d458: adrp     x20, #0x4475000
0x1d2d45c: adrp     x19, #0x4187000
0x1d2d460: ldrb     w8, [x20, #0xd58]
0x1d2d464: ldr      x19, [x19, #0x9c8]
0x1d2d468: tbnz     w8, #0, #0x1d2d480
0x1d2d46c: adrp     x0, #0x4187000
0x1d2d470: ldr      x0, [x0, #0x9c8]
0x1d2d474: bl       #0x1b64570 | 
0x1d2d478: mov      w8, #1
0x1d2d47c: strb     w8, [x20, #0xd58]
0x1d2d480: ldr      x0, [x19]
0x1d2d484: ldr      w8, [x0, #0xe0]
0x1d2d488: cbnz     w8, #0x1d2d494
0x1d2d48c: bl       #0x1b646a4 | 
0x1d2d490: ldr      x0, [x19]
0x1d2d494: ldr      x8, [x0, #0xb8]
0x1d2d498: mov      x1, xzr
0x1d2d49c: add      x0, x8, #0x10
0x1d2d4a0: bl       #0x1b7f91c | 
0x1d2d4a4: cbz      x0, #0x1d2d4c4
0x1d2d4a8: ldr      x8, [x0, #0x40]
0x1d2d4ac: ldr      x2, [x0, #0x18]
0x1d2d4b0: ldr      x1, [x0, #0x28]
0x1d2d4b4: ldp      x20, x19, [sp, #0x10]
0x1d2d4b8: mov      x0, x8
0x1d2d4bc: ldr      x30, [sp], #0x20
0x1d2d4c0: br       x2
0x1d2d4c4: ldp      x20, x19, [sp, #0x10]
0x1d2d4c8: ldr      x30, [sp], #0x20
0x1d2d4cc: ret      

// 0x1d2d4d0 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.<>c__DisplayClass16_0$$<Release>b__0
0x1d2d4d0: stp      x30, x21, [sp, #-0x20]!
0x1d2d4d4: stp      x20, x19, [sp, #0x10]
0x1d2d4d8: adrp     x21, #0x4475000
0x1d2d4dc: adrp     x20, #0x4187000
0x1d2d4e0: ldrb     w8, [x21, #0xd59]
0x1d2d4e4: ldr      x20, [x20, #0x9c8]
0x1d2d4e8: mov      x19, x0
0x1d2d4ec: tbnz     w8, #0, #0x1d2d51c
0x1d2d4f0: adrp     x0, #0x4187000
0x1d2d4f4: ldr      x0, [x0, #0x9c8]
0x1d2d4f8: bl       #0x1b64570 | 
0x1d2d4fc: adrp     x0, #0x418b000
0x1d2d500: ldr      x0, [x0, #0x710]
0x1d2d504: bl       #0x1b64570 | 
0x1d2d508: adrp     x0, #0x418b000
0x1d2d50c: ldr      x0, [x0, #0x540]
0x1d2d510: bl       #0x1b64570 | 
0x1d2d514: mov      w8, #1
0x1d2d518: strb     w8, [x21, #0xd59]
0x1d2d51c: ldr      x0, [x20]
0x1d2d520: ldr      w8, [x0, #0xe0]
0x1d2d524: cbnz     w8, #0x1d2d530
0x1d2d528: bl       #0x1b646a4 | 
0x1d2d52c: ldr      x0, [x20]
0x1d2d530: ldr      x20, [x19, #0x10]
0x1d2d534: cbz      x20, #0x1d2d5c4
0x1d2d538: adrp     x10, #0x418b000
0x1d2d53c: ldr      x9, [x0, #0xb8]
0x1d2d540: ldr      x8, [x20]
0x1d2d544: ldr      x10, [x10, #0x540]
0x1d2d548: ldr      x19, [x9, #0x18]
0x1d2d54c: ldrh     w9, [x8, #0x12e]
0x1d2d550: ldr      x1, [x10]
0x1d2d554: cbz      x9, #0x1d2d578
0x1d2d558: ldr      x10, [x8, #0xb0]
0x1d2d55c: add      x10, x10, #8
0x1d2d560: ldur     x11, [x10, #-8]
0x1d2d564: cmp      x11, x1
0x1d2d568: b.eq     #0x1d2d588
0x1d2d56c: subs     x9, x9, #1
0x1d2d570: add      x10, x10, #0x10
0x1d2d574: b.ne     #0x1d2d560
0x1d2d578: mov      x0, x20
0x1d2d57c: mov      w2, wzr
0x1d2d580: bl       #0x1bc5638 | 
0x1d2d584: b        #0x1d2d594 | 
0x1d2d588: ldrsw    x9, [x10]
0x1d2d58c: add      x8, x8, x9, lsl #4
0x1d2d590: add      x0, x8, #0x138
0x1d2d594: ldp      x8, x1, [x0]
0x1d2d598: mov      x0, x20
0x1d2d59c: blr      x8
0x1d2d5a0: cbz      x19, #0x1d2d5c4
0x1d2d5a4: adrp     x8, #0x418b000
0x1d2d5a8: ldr      x8, [x8, #0x710]
0x1d2d5ac: mov      x1, x0
0x1d2d5b0: mov      x0, x19
0x1d2d5b4: ldp      x20, x19, [sp, #0x10]
0x1d2d5b8: ldr      x2, [x8]
0x1d2d5bc: ldp      x30, x21, [sp], #0x20
0x1d2d5c0: b        #0x2a12fb4 | System.Collections.Generic.Dictionary<object, object>$$Remove
0x1d2d5c4: bl       #0x1b647c8 | 

// 0x1d2d5c8 UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.<Decrypt>d__8$$MoveNext
0x1d2d5c8: sub      sp, sp, #0x50
0x1d2d5cc: str      x30, [sp, #0x10]
0x1d2d5d0: stp      x24, x23, [sp, #0x20]
0x1d2d5d4: stp      x22, x21, [sp, #0x30]
0x1d2d5d8: stp      x20, x19, [sp, #0x40]
0x1d2d5dc: adrp     x20, #0x4475000
0x1d2d5e0: ldrb     w8, [x20, #0xd5a]
0x1d2d5e4: mov      x19, x0
0x1d2d5e8: tbnz     w8, #0, #0x1d2d648
0x1d2d5ec: adrp     x0, #0x418b000
0x1d2d5f0: ldr      x0, [x0, #0x718]
0x1d2d5f4: bl       #0x1b64570 | 
0x1d2d5f8: adrp     x0, #0x418b000
0x1d2d5fc: ldr      x0, [x0, #0x720]
0x1d2d600: bl       #0x1b64570 | 
0x1d2d604: adrp     x0, #0x418b000
0x1d2d608: ldr      x0, [x0, #0x4d8]
0x1d2d60c: bl       #0x1b64570 | 
0x1d2d610: adrp     x0, #0x4187000
0x1d2d614: ldr      x0, [x0, #0x9c8]
0x1d2d618: bl       #0x1b64570 | 
0x1d2d61c: adrp     x0, #0x4188000
0x1d2d620: ldr      x0, [x0, #0x9d8]
0x1d2d624: bl       #0x1b64570 | 
0x1d2d628: adrp     x0, #0x4185000
0x1d2d62c: ldr      x0, [x0, #0x430]
0x1d2d630: bl       #0x1b64570 | 
0x1d2d634: adrp     x0, #0x4185000
0x1d2d638: ldr      x0, [x0, #0x408]
0x1d2d63c: bl       #0x1b64570 | 
0x1d2d640: mov      w8, #1
0x1d2d644: strb     w8, [x20, #0xd5a]
0x1d2d648: str      xzr, [sp, #0x18]
0x1d2d64c: ldr      w23, [x19]
0x1d2d650: cbz      w23, #0x1d2d758
0x1d2d654: adrp     x21, #0x4187000
0x1d2d658: ldr      x21, [x21, #0x9c8]
0x1d2d65c: ldr      x20, [x19, #0x20]
0x1d2d660: ldr      x0, [x21]
0x1d2d664: ldr      w8, [x0, #0xe0]
0x1d2d668: cbnz     w8, #0x1d2d674
0x1d2d66c: bl       #0x1b646a4 | 
0x1d2d670: ldr      x0, [x21]
0x1d2d674: ldr      x8, [x0, #0xb8]
0x1d2d678: ldr      x0, [x8]
0x1d2d67c: cbz      x0, #0x1d2d80c
0x1d2d680: ldr      x8, [x0]
0x1d2d684: ldr      x1, [x8, #0x2a0]
0x1d2d688: ldr      x9, [x8, #0x298]
0x1d2d68c: blr      x9
0x1d2d690: adrp     x8, #0x4188000
0x1d2d694: ldr      x8, [x8, #0x9d8]
0x1d2d698: mov      x21, x0
0x1d2d69c: ldr      x0, [x8]
0x1d2d6a0: bl       #0x1b647b8 | 
0x1d2d6a4: mov      x22, x0
0x1d2d6a8: mov      x1, x20
0x1d2d6ac: mov      x2, x21
0x1d2d6b0: mov      w3, wzr
0x1d2d6b4: mov      x4, xzr
0x1d2d6b8: bl       #0x3330cbc | System.Security.Cryptography.CryptoStream$$.ctor
0x1d2d6bc: adrp     x8, #0x4185000
0x1d2d6c0: ldr      x8, [x8, #0x408]
0x1d2d6c4: str      x22, [x19, #0x28]
0x1d2d6c8: ldr      x0, [x8]
0x1d2d6cc: bl       #0x1b647b8 | 
0x1d2d6d0: mov      x20, x0
0x1d2d6d4: mov      x1, xzr
0x1d2d6d8: bl       #0x33cf99c | System.IO.MemoryStream$$.ctor
0x1d2d6dc: ldr      x0, [x19, #0x28]
0x1d2d6e0: str      x20, [x19, #0x30]
0x1d2d6e4: cbz      x0, #0x1d2d810
0x1d2d6e8: mov      x1, x20
0x1d2d6ec: mov      x2, xzr
0x1d2d6f0: bl       #0x3402f10 | System.IO.Stream$$CopyToAsync
0x1d2d6f4: cbz      x0, #0x1d2d814
0x1d2d6f8: mov      x1, xzr
0x1d2d6fc: bl       #0x34f1990 | System.Threading.Tasks.Task$$GetAwaiter
0x1d2d700: str      x0, [sp, #0x18]
0x1d2d704: add      x0, sp, #0x18
0x1d2d708: mov      x1, xzr
0x1d2d70c: bl       #0x33a50c8 | System.Runtime.CompilerServices.TaskAwaiter$$get_IsCompleted
0x1d2d710: tbnz     w0, #0, #0x1d2d76c
0x1d2d714: str      wzr, [x19]
0x1d2d718: ldr      x8, [sp, #0x18]
0x1d2d71c: str      x8, [x19, #0x38]
0x1d2d720: adrp     x8, #0x418b000
0x1d2d724: ldr      x8, [x8, #0x4d8]
0x1d2d728: ldr      x0, [x8]
0x1d2d72c: ldr      w8, [x0, #0xe0]
0x1d2d730: cbnz     w8, #0x1d2d738
0x1d2d734: bl       #0x1b646a4 | 
0x1d2d738: adrp     x8, #0x418b000
0x1d2d73c: ldr      x8, [x8, #0x718]
0x1d2d740: add      x0, x19, #8
0x1d2d744: ldr      x3, [x8]
0x1d2d748: add      x1, sp, #0x18
0x1d2d74c: mov      x2, x19
0x1d2d750: bl       #0x1dea51c | System.Runtime.CompilerServices.AsyncTaskMethodBuilder<object>$$AwaitUnsafeOnCompleted<TaskAwaiter, C9SecretAssetBundleProvider.<Decrypt>d__8>
0x1d2d754: b        #0x1d2d988 | 
0x1d2d758: ldr      x8, [x19, #0x38]
0x1d2d75c: mov      w23, #-1
0x1d2d760: str      x8, [sp, #0x18]
0x1d2d764: str      xzr, [x19, #0x38]
0x1d2d768: str      w23, [x19]
0x1d2d76c: add      x0, sp, #0x18
0x1d2d770: mov      x1, xzr
0x1d2d774: bl       #0x33a5194 | System.Runtime.CompilerServices.TaskAwaiter$$GetResult
0x1d2d778: ldr      x20, [x19, #0x30]
0x1d2d77c: mov      x21, xzr
0x1d2d780: mov      w24, #6
0x1d2d784: tbz      w23, #0x1f, #0x1d2d7f0
0x1d2d788: ldr      x22, [x19, #0x28]
0x1d2d78c: cbz      x22, #0x1d2d7f0
0x1d2d790: adrp     x10, #0x4185000
0x1d2d794: ldr      x8, [x22]
0x1d2d798: ldr      x10, [x10, #0x430]
0x1d2d79c: ldrh     w9, [x8, #0x12e]
0x1d2d7a0: ldr      x1, [x10]
0x1d2d7a4: cbz      x9, #0x1d2d7c8
0x1d2d7a8: ldr      x10, [x8, #0xb0]
0x1d2d7ac: add      x10, x10, #8
0x1d2d7b0: ldur     x11, [x10, #-8]
0x1d2d7b4: cmp      x11, x1
0x1d2d7b8: b.eq     #0x1d2d7d8
0x1d2d7bc: subs     x9, x9, #1
0x1d2d7c0: add      x10, x10, #0x10
0x1d2d7c4: b.ne     #0x1d2d7b0
0x1d2d7c8: mov      x0, x22
0x1d2d7cc: mov      w2, wzr
0x1d2d7d0: bl       #0x1bc5638 | 
0x1d2d7d4: b        #0x1d2d7e4 | 
0x1d2d7d8: ldrsw    x9, [x10]
0x1d2d7dc: add      x8, x8, x9, lsl #4
0x1d2d7e0: add      x0, x8, #0x138
0x1d2d7e4: ldp      x8, x1, [x0]
0x1d2d7e8: mov      x0, x22
0x1d2d7ec: blr      x8
0x1d2d7f0: cbnz     x21, #0x1d2d804
0x1d2d7f4: cbz      w24, #0x1d2d94c
0x1d2d7f8: cmp      w24, #6
0x1d2d7fc: b.eq     #0x1d2d950
0x1d2d800: b        #0x1d2d988 | 
0x1d2d804: mov      x0, x21
0x1d2d808: bl       #0x1b647c0 | 
0x1d2d80c: bl       #0x1b647c8 | 
0x1d2d810: bl       #0x1b647c8 | 
0x1d2d814: bl       #0x1b647c8 | 
0x1d2d818: b        #0x1d2d910 | 
0x1d2d81c: mov      x20, x0
0x1d2d820: mov      w23, wzr
0x1d2d824: b        #0x1d2d854 | 
0x1d2d828: b        #0x1d2d850 | 
0x1d2d82c: b        #0x1d2d850 | 
0x1d2d830: b        #0x1d2d850 | 
0x1d2d834: b        #0x1d2d910 | 
0x1d2d838: b        #0x1d2d910 | 
0x1d2d83c: b        #0x1d2d850 | 
0x1d2d840: mov      x21, x1
0x1d2d844: mov      x20, x0
0x1d2d848: b        #0x1d2d918 | 
0x1d2d84c: b        #0x1d2d850 | 
0x1d2d850: mov      x20, x0
0x1d2d854: cmp      w1, #1
0x1d2d858: b.ne     #0x1d2d884
0x1d2d85c: mov      x0, x20
0x1d2d860: bl       #0x3e998d0 | 
0x1d2d864: ldr      x8, [x0]
0x1d2d868: str      x8, [sp, #8]
0x1d2d86c: bl       #0x3e998e0 | 
0x1d2d870: ldr      x21, [sp, #8]
0x1d2d874: mov      w24, wzr
0x1d2d878: mov      x20, xzr
0x1d2d87c: tbz      w23, #0x1f, #0x1d2d7f0
0x1d2d880: b        #0x1d2d788 | 
0x1d2d884: str      xzr, [sp, #8]
0x1d2d888: mov      w21, w1
0x1d2d88c: tbz      w23, #0x1f, #0x1d2d8f8
0x1d2d890: ldr      x22, [x19, #0x28]
0x1d2d894: cbz      x22, #0x1d2d8f8
0x1d2d898: adrp     x10, #0x4185000
0x1d2d89c: ldr      x8, [x22]
0x1d2d8a0: ldr      x10, [x10, #0x430]
0x1d2d8a4: ldrh     w9, [x8, #0x12e]
0x1d2d8a8: ldr      x1, [x10]
0x1d2d8ac: cbz      x9, #0x1d2d8d0
0x1d2d8b0: ldr      x10, [x8, #0xb0]
0x1d2d8b4: add      x10, x10, #8
0x1d2d8b8: ldur     x11, [x10, #-8]
0x1d2d8bc: cmp      x11, x1
0x1d2d8c0: b.eq     #0x1d2d8e0
0x1d2d8c4: subs     x9, x9, #1
0x1d2d8c8: add      x10, x10, #0x10
0x1d2d8cc: b.ne     #0x1d2d8b8
0x1d2d8d0: mov      x0, x22
0x1d2d8d4: mov      w2, wzr
0x1d2d8d8: bl       #0x1bc5638 | 
0x1d2d8dc: b        #0x1d2d8ec | 
0x1d2d8e0: ldrsw    x9, [x10]
0x1d2d8e4: add      x8, x8, x9, lsl #4
0x1d2d8e8: add      x0, x8, #0x138
0x1d2d8ec: ldp      x8, x1, [x0]
0x1d2d8f0: mov      x0, x22
0x1d2d8f4: blr      x8
0x1d2d8f8: ldr      x8, [sp, #8]
0x1d2d8fc: cbz      x8, #0x1d2d918
0x1d2d900: ldr      x0, [sp, #8]
0x1d2d904: bl       #0x1b647c0 | 
0x1d2d908: mov      x20, x0
0x1d2d90c: b        #0x1d2d888 | 
0x1d2d910: mov      x20, x0
0x1d2d914: mov      w21, w1
0x1d2d918: cmp      w21, #1
0x1d2d91c: b.ne     #0x1d2d9dc
0x1d2d920: mov      x0, x20
0x1d2d924: bl       #0x3e998d0 | 
0x1d2d928: mov      x20, x0
0x1d2d92c: adrp     x0, #0x418b000
0x1d2d930: ldr      x0, [x0, #0x728]
0x1d2d934: bl       #0x1b64584 | 
0x1d2d938: ldr      x8, [x20]
0x1d2d93c: ldr      x1, [x8]
0x1d2d940: bl       #0x1b64bf8 | 
0x1d2d944: tbz      w0, #0, #0x1d2d9a0
0x1d2d948: bl       #0x3e998e0 | 
0x1d2d94c: mov      x20, xzr
0x1d2d950: mov      w8, #-2
0x1d2d954: str      w8, [x19], #8
0x1d2d958: adrp     x8, #0x418b000
0x1d2d95c: ldr      x8, [x8, #0x4d8]
0x1d2d960: ldr      x0, [x8]
0x1d2d964: ldr      w8, [x0, #0xe0]
0x1d2d968: cbnz     w8, #0x1d2d970
0x1d2d96c: bl       #0x1b646a4 | 
0x1d2d970: adrp     x8, #0x418b000
0x1d2d974: ldr      x8, [x8, #0x720]
0x1d2d978: mov      x0, x19
0x1d2d97c: mov      x1, x20
0x1d2d980: ldr      x2, [x8]
0x1d2d984: bl       #0x278a378 | System.Runtime.CompilerServices.AsyncTaskMethodBuilder<object>$$SetResult
0x1d2d988: ldp      x20, x19, [sp, #0x40]
0x1d2d98c: ldp      x22, x21, [sp, #0x30]
0x1d2d990: ldp      x24, x23, [sp, #0x20]
0x1d2d994: ldr      x30, [sp, #0x10]
0x1d2d998: add      sp, sp, #0x50
0x1d2d99c: ret      
0x1d2d9a0: mov      w0, #8
0x1d2d9a4: bl       #0x3e998f0 | 
0x1d2d9a8: ldr      x8, [x20]
0x1d2d9ac: str      x8, [x0]
0x1d2d9b0: adrp     x1, #0x3e9f000
0x1d2d9b4: add      x1, x1, #0xc98
0x1d2d9b8: mov      x2, xzr
0x1d2d9bc: bl       #0x3e99900 | 
0x1d2d9c0: b        #0x1d2da78 | 
0x1d2d9c4: mov      x20, x0
0x1d2d9c8: mov      w21, w1
0x1d2d9cc: b        #0x1d2d9dc | 
0x1d2d9d0: mov      x21, x1
0x1d2d9d4: mov      x20, x0
0x1d2d9d8: bl       #0x3e998e0 | 
0x1d2d9dc: mov      w8, #1
0x1d2d9e0: cmp      w21, w8
0x1d2d9e4: b.ne     #0x1d2da80
0x1d2d9e8: mov      x0, x20
0x1d2d9ec: bl       #0x3e998d0 | 
0x1d2d9f0: mov      x20, x0
0x1d2d9f4: adrp     x0, #0x4185000
0x1d2d9f8: ldr      x0, [x0, #0x2e0]
0x1d2d9fc: bl       #0x1b64584 | 
0x1d2da00: ldr      x8, [x20]
0x1d2da04: ldr      x1, [x8]
0x1d2da08: bl       #0x1b64bf8 | 
0x1d2da0c: tbz      w0, #0, #0x1d2da58
0x1d2da10: ldr      x20, [x20]
0x1d2da14: bl       #0x3e998e0 | 
0x1d2da18: mov      w8, #-2
0x1d2da1c: str      w8, [x19], #8
0x1d2da20: adrp     x0, #0x418b000
0x1d2da24: ldr      x0, [x0, #0x4d8]
0x1d2da28: bl       #0x1b64584 | 
0x1d2da2c: ldr      w8, [x0, #0xe0]
0x1d2da30: cbnz     w8, #0x1d2da38
0x1d2da34: bl       #0x1b646a4 | 
0x1d2da38: adrp     x0, #0x418b000
0x1d2da3c: ldr      x0, [x0, #0x730]
0x1d2da40: bl       #0x1b64584 | 
0x1d2da44: mov      x2, x0
0x1d2da48: mov      x0, x19
0x1d2da4c: mov      x1, x20
0x1d2da50: bl       #0x278a590 | System.Runtime.CompilerServices.AsyncTaskMethodBuilder<object>$$SetException
0x1d2da54: b        #0x1d2d988 | 
0x1d2da58: mov      w0, #8
0x1d2da5c: bl       #0x3e998f0 | 
0x1d2da60: ldr      x8, [x20]
0x1d2da64: str      x8, [x0]
0x1d2da68: adrp     x1, #0x3e9f000
0x1d2da6c: add      x1, x1, #0xc98
0x1d2da70: mov      x2, xzr
0x1d2da74: bl       #0x3e99900 | 
0x1d2da78: mov      x20, x0
0x1d2da7c: bl       #0x3e998e0 | 
0x1d2da80: mov      x0, x20
0x1d2da84: bl       #0x1c65b3c | 
0x1d2da88: bl       #0x194772c | 

// 0x1d2da8c UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.<Decrypt>d__8$$SetStateMachine
0x1d2da8c: str      x30, [sp, #-0x30]!
0x1d2da90: stp      x22, x21, [sp, #0x10]
0x1d2da94: stp      x20, x19, [sp, #0x20]
0x1d2da98: adrp     x22, #0x4475000
0x1d2da9c: adrp     x21, #0x418b000
0x1d2daa0: ldrb     w8, [x22, #0xd5b]
0x1d2daa4: ldr      x21, [x21, #0x4d8]
0x1d2daa8: mov      x19, x1
0x1d2daac: mov      x20, x0
0x1d2dab0: tbnz     w8, #0, #0x1d2dad4
0x1d2dab4: adrp     x0, #0x418b000
0x1d2dab8: ldr      x0, [x0, #0x738]
0x1d2dabc: bl       #0x1b64570 | 
0x1d2dac0: adrp     x0, #0x418b000
0x1d2dac4: ldr      x0, [x0, #0x4d8]
0x1d2dac8: bl       #0x1b64570 | 
0x1d2dacc: mov      w8, #1
0x1d2dad0: strb     w8, [x22, #0xd5b]
0x1d2dad4: ldr      x0, [x21]
0x1d2dad8: adrp     x21, #0x418b000
0x1d2dadc: ldr      w8, [x0, #0xe0]
0x1d2dae0: ldr      x21, [x21, #0x738]
0x1d2dae4: cbnz     w8, #0x1d2daec
0x1d2dae8: bl       #0x1b646a4 | 
0x1d2daec: ldr      x2, [x21]
0x1d2daf0: add      x0, x20, #8
0x1d2daf4: mov      x1, x19
0x1d2daf8: ldp      x20, x19, [sp, #0x20]
0x1d2dafc: ldp      x22, x21, [sp, #0x10]
0x1d2db00: ldr      x30, [sp], #0x30
0x1d2db04: b        #0x278a2f0 | System.Runtime.CompilerServices.AsyncTaskMethodBuilder<object>$$SetStateMachine

// 0x1d4b0a8 Chapter9InputPasswordControl$$Submit
0x1d4b0a8: stp      x30, x25, [sp, #-0x40]!
0x1d4b0ac: stp      x24, x23, [sp, #0x10]
0x1d4b0b0: stp      x22, x21, [sp, #0x20]
0x1d4b0b4: stp      x20, x19, [sp, #0x30]
0x1d4b0b8: adrp     x20, #0x4475000
0x1d4b0bc: adrp     x21, #0x418c000
0x1d4b0c0: ldrb     w8, [x20, #0xe3f]
0x1d4b0c4: ldr      x21, [x21, #0x508]
0x1d4b0c8: mov      x19, x0
0x1d4b0cc: tbnz     w8, #0, #0x1d4b138
0x1d4b0d0: adrp     x0, #0x4186000
0x1d4b0d4: ldr      x0, [x0, #0xf18]
0x1d4b0d8: bl       #0x1b64570 | 
0x1d4b0dc: adrp     x0, #0x4187000
0x1d4b0e0: ldr      x0, [x0, #0x9c8]
0x1d4b0e4: bl       #0x1b64570 | 
0x1d4b0e8: adrp     x0, #0x418a000
0x1d4b0ec: ldr      x0, [x0, #0xaf0]
0x1d4b0f0: bl       #0x1b64570 | 
0x1d4b0f4: adrp     x0, #0x4187000
0x1d4b0f8: ldr      x0, [x0, #0x740]
0x1d4b0fc: bl       #0x1b64570 | 
0x1d4b100: adrp     x0, #0x418c000
0x1d4b104: ldr      x0, [x0, #0x510]
0x1d4b108: bl       #0x1b64570 | 
0x1d4b10c: adrp     x0, #0x418c000
0x1d4b110: ldr      x0, [x0, #0x518]
0x1d4b114: bl       #0x1b64570 | 
0x1d4b118: adrp     x0, #0x418c000
0x1d4b11c: ldr      x0, [x0, #0x508]
0x1d4b120: bl       #0x1b64570 | 
0x1d4b124: adrp     x0, #0x418c000
0x1d4b128: ldr      x0, [x0, #0x520]
0x1d4b12c: bl       #0x1b64570 | 
0x1d4b130: mov      w8, #1
0x1d4b134: strb     w8, [x20, #0xe3f]
0x1d4b138: ldr      x0, [x21]
0x1d4b13c: bl       #0x1b647b8 | 
0x1d4b140: mov      x1, xzr
0x1d4b144: mov      x20, x0
0x1d4b148: bl       #0x34c04f0 | System.Object$$.ctor
0x1d4b14c: cbz      x20, #0x1d4b2a8
0x1d4b150: adrp     x8, #0x418a000
0x1d4b154: ldr      x8, [x8, #0xaf0]
0x1d4b158: str      x19, [x20, #0x10]
0x1d4b15c: ldr      x0, [x8]
0x1d4b160: ldr      w8, [x0, #0xe0]
0x1d4b164: cbnz     w8, #0x1d4b16c
0x1d4b168: bl       #0x1b646a4 | 
0x1d4b16c: mov      x0, xzr
0x1d4b170: bl       #0x3e820fc | UnityEngine.EventSystems.EventSystem$$get_current
0x1d4b174: str      x0, [x20, #0x18]
0x1d4b178: cbz      x0, #0x1d4b2a8
0x1d4b17c: mov      w1, wzr
0x1d4b180: mov      x2, xzr
0x1d4b184: bl       #0x3c5ccc4 | UnityEngine.Behaviour$$set_enabled
0x1d4b188: ldr      x8, [x19, #0x28]
0x1d4b18c: cbz      x8, #0x1d4b2a8
0x1d4b190: ldr      x21, [x8, #0x180]
0x1d4b194: cbz      x21, #0x1d4b2a8
0x1d4b198: ldr      w8, [x21, #0x10]
0x1d4b19c: cmp      w8, #0
0x1d4b1a0: b.le     #0x1d4b290
0x1d4b1a4: adrp     x8, #0x4187000
0x1d4b1a8: ldr      x8, [x8, #0x9c8]
0x1d4b1ac: adrp     x23, #0x418c000
0x1d4b1b0: ldr      x0, [x8]
0x1d4b1b4: ldr      w8, [x0, #0xe0]
0x1d4b1b8: ldr      x23, [x23, #0x520]
0x1d4b1bc: cbnz     w8, #0x1d4b1c4
0x1d4b1c0: bl       #0x1b646a4 | 
0x1d4b1c4: mov      x0, x21
0x1d4b1c8: mov      x1, xzr
0x1d4b1cc: bl       #0x1d2951c | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider$$SetPassword
0x1d4b1d0: ldr      x0, [x23]
0x1d4b1d4: ldr      w8, [x0, #0xe0]
0x1d4b1d8: cbnz     w8, #0x1d4b1e4
0x1d4b1dc: bl       #0x1b646a4 | 
0x1d4b1e0: ldr      x0, [x23]
0x1d4b1e4: ldr      x8, [x0, #0xb8]
0x1d4b1e8: adrp     x25, #0x4186000
0x1d4b1ec: adrp     x24, #0x418c000
0x1d4b1f0: ldr      x21, [x8, #8]
0x1d4b1f4: ldr      x25, [x25, #0xf18]
0x1d4b1f8: ldr      x24, [x24, #0x518]
0x1d4b1fc: cbnz     x21, #0x1d4b250
0x1d4b200: ldr      w8, [x0, #0xe0]
0x1d4b204: cbnz     w8, #0x1d4b210
0x1d4b208: bl       #0x1b646a4 | 
0x1d4b20c: ldr      x0, [x23]
0x1d4b210: adrp     x9, #0x4187000
0x1d4b214: ldr      x8, [x0, #0xb8]
0x1d4b218: ldr      x9, [x9, #0x740]
0x1d4b21c: ldr      x22, [x8]
0x1d4b220: ldr      x0, [x9]
0x1d4b224: bl       #0x1b647b8 | 
0x1d4b228: adrp     x8, #0x418c000
0x1d4b22c: ldr      x8, [x8, #0x510]
0x1d4b230: mov      x1, x22
0x1d4b234: mov      x3, xzr
0x1d4b238: mov      x21, x0
0x1d4b23c: ldr      x2, [x8]
0x1d4b240: bl       #0x2c503d8 | System.Func<bool>$$.ctor
0x1d4b244: ldr      x8, [x23]
0x1d4b248: ldr      x8, [x8, #0xb8]
0x1d4b24c: str      x21, [x8, #8]
0x1d4b250: ldr      x0, [x25]
0x1d4b254: bl       #0x1b647b8 | 
0x1d4b258: ldr      x2, [x24]
0x1d4b25c: mov      x1, x20
0x1d4b260: mov      x3, xzr
0x1d4b264: mov      x22, x0
0x1d4b268: bl       #0x33ee8e4 | System.Action$$.ctor
0x1d4b26c: mov      x0, x19
0x1d4b270: mov      x1, x21
0x1d4b274: mov      x2, x22
0x1d4b278: ldp      x20, x19, [sp, #0x30]
0x1d4b27c: ldp      x22, x21, [sp, #0x20]
0x1d4b280: ldp      x24, x23, [sp, #0x10]
0x1d4b284: mov      x3, xzr
0x1d4b288: ldp      x30, x25, [sp], #0x40
0x1d4b28c: b        #0x1cc8a88 | SimpleCoroutine$$SimpleWaitUntil
0x1d4b290: mov      x0, x20
0x1d4b294: ldp      x20, x19, [sp, #0x30]
0x1d4b298: ldp      x22, x21, [sp, #0x20]
0x1d4b29c: ldp      x24, x23, [sp, #0x10]
0x1d4b2a0: ldp      x30, x25, [sp], #0x40
0x1d4b2a4: b        #0x1d4b2b4 | Chapter9InputPasswordControl.<>c__DisplayClass36_0$$<Submit>g__OnWrongPassword|2
0x1d4b2a8: bl       #0x1b647c8 | 

// 0x1d4c5e4 Chapter9InputPasswordControl.<>c__DisplayClass36_0$$<Submit>b__1
0x1d4c5e4: stp      x30, x21, [sp, #-0x20]!
0x1d4c5e8: stp      x20, x19, [sp, #0x10]
0x1d4c5ec: adrp     x21, #0x4475000
0x1d4c5f0: adrp     x20, #0x4187000
0x1d4c5f4: ldrb     w8, [x21, #0xe4d]
0x1d4c5f8: ldr      x20, [x20, #0x9c8]
0x1d4c5fc: mov      x19, x0
0x1d4c600: tbnz     w8, #0, #0x1d4c660
0x1d4c604: adrp     x0, #0x4186000
0x1d4c608: ldr      x0, [x0, #0xf18]
0x1d4c60c: bl       #0x1b64570 | 
0x1d4c610: adrp     x0, #0x4187000
0x1d4c614: ldr      x0, [x0, #0x9c8]
0x1d4c618: bl       #0x1b64570 | 
0x1d4c61c: adrp     x0, #0x418a000
0x1d4c620: ldr      x0, [x0, #0x478]
0x1d4c624: bl       #0x1b64570 | 
0x1d4c628: adrp     x0, #0x418a000
0x1d4c62c: ldr      x0, [x0, #0x480]
0x1d4c630: bl       #0x1b64570 | 
0x1d4c634: adrp     x0, #0x4186000
0x1d4c638: ldr      x0, [x0, #0xe68]
0x1d4c63c: bl       #0x1b64570 | 
0x1d4c640: adrp     x0, #0x418c000
0x1d4c644: ldr      x0, [x0, #0x5d8]
0x1d4c648: bl       #0x1b64570 | 
0x1d4c64c: adrp     x0, #0x4187000
0x1d4c650: ldr      x0, [x0, #0xb40] | 0x4187b40 'Chapter9SecretPassword'
0x1d4c654: bl       #0x1b64570 | 
0x1d4c658: mov      w8, #1
0x1d4c65c: strb     w8, [x21, #0xe4d]
0x1d4c660: ldr      x0, [x20]
0x1d4c664: ldr      w8, [x0, #0xe0]
0x1d4c668: cbnz     w8, #0x1d4c670
0x1d4c66c: bl       #0x1b646a4 | 
0x1d4c670: adrp     x21, #0x4475000
0x1d4c674: ldrb     w8, [x21, #0xbfd]
0x1d4c678: cbnz     w8, #0x1d4c690
0x1d4c67c: adrp     x0, #0x4187000
0x1d4c680: ldr      x0, [x0, #0x9c8]
0x1d4c684: bl       #0x1b64570 | 
0x1d4c688: mov      w8, #1
0x1d4c68c: strb     w8, [x21, #0xbfd]
0x1d4c690: ldr      x0, [x20]
0x1d4c694: ldr      w8, [x0, #0xe0]
0x1d4c698: cbnz     w8, #0x1d4c6a4
0x1d4c69c: bl       #0x1b646a4 | 
0x1d4c6a0: ldr      x0, [x20]
0x1d4c6a4: ldr      x8, [x0, #0xb8]
0x1d4c6a8: ldrh     w8, [x8, #8]
0x1d4c6ac: cmp      w8, #0x100
0x1d4c6b0: b.lo     #0x1d4c770
0x1d4c6b4: tst      w8, #0xff
0x1d4c6b8: b.eq     #0x1d4c770
0x1d4c6bc: ldr      x8, [x19, #0x10]
0x1d4c6c0: cbz      x8, #0x1d4c780
0x1d4c6c4: ldr      x8, [x8, #0x28]
0x1d4c6c8: cbz      x8, #0x1d4c780
0x1d4c6cc: adrp     x9, #0x4186000
0x1d4c6d0: ldr      x9, [x9, #0xe68]
0x1d4c6d4: ldr      x20, [x8, #0x180]
0x1d4c6d8: ldr      x0, [x9]
0x1d4c6dc: ldr      w9, [x0, #0xe0]
0x1d4c6e0: cbnz     w9, #0x1d4c6e8
0x1d4c6e4: bl       #0x1b646a4 | 
0x1d4c6e8: adrp     x8, #0x4187000
0x1d4c6ec: ldr      x8, [x8, #0xb40] | 0x4187b40 'Chapter9SecretPassword'
0x1d4c6f0: mov      x1, x20
0x1d4c6f4: mov      x2, xzr
0x1d4c6f8: ldr      x0, [x8]
0x1d4c6fc: bl       #0x1cc5240 | SaveManagement$$SaveString
0x1d4c700: ldr      x0, [x19, #0x10]
0x1d4c704: cbz      x0, #0x1d4c780
0x1d4c708: ldr      x1, [x0, #0xd0]
0x1d4c70c: mov      w2, #1
0x1d4c710: bl       #0x1d4b560 | Chapter9InputPasswordControl$$PlayPasswordSe
0x1d4c714: ldr      x21, [x19, #0x20]
0x1d4c718: ldr      x20, [x19, #0x10]
0x1d4c71c: cbnz     x21, #0x1d4c750
0x1d4c720: adrp     x8, #0x4186000
0x1d4c724: ldr      x8, [x8, #0xf18]
0x1d4c728: ldr      x0, [x8]
0x1d4c72c: bl       #0x1b647b8 | 
0x1d4c730: adrp     x8, #0x418c000
0x1d4c734: ldr      x8, [x8, #0x5d8]
0x1d4c738: mov      x1, x19
0x1d4c73c: mov      x3, xzr
0x1d4c740: mov      x21, x0
0x1d4c744: ldr      x2, [x8]
0x1d4c748: bl       #0x33ee8e4 | System.Action$$.ctor
0x1d4c74c: str      x21, [x19, #0x20]
0x1d4c750: adrp     x8, #0xc35000
0x1d4c754: ldr      s0, [x8, #0x530]
0x1d4c758: mov      x0, x20
0x1d4c75c: ldp      x20, x19, [sp, #0x10]
0x1d4c760: mov      x1, x21
0x1d4c764: mov      x2, xzr
0x1d4c768: ldp      x30, x21, [sp], #0x20
0x1d4c76c: b        #0x1cc8910 | SimpleCoroutine$$SimpleDelay
0x1d4c770: mov      x0, x19
0x1d4c774: ldp      x20, x19, [sp, #0x10]
0x1d4c778: ldp      x30, x21, [sp], #0x20
0x1d4c77c: b        #0x1d4b2b4 | Chapter9InputPasswordControl.<>c__DisplayClass36_0$$<Submit>g__OnWrongPassword|2
0x1d4c780: bl       #0x1b647c8 | 

// 0x1dea51c System.Runtime.CompilerServices.AsyncTaskMethodBuilder<object>$$AwaitUnsafeOnCompleted<TaskAwaiter, C9SecretAssetBundleProvider.<Decrypt>d__8>
0x1dea51c: sub      sp, sp, #0x80
0x1dea520: str      x30, [sp, #0x40]
0x1dea524: stp      x24, x23, [sp, #0x50]
0x1dea528: stp      x22, x21, [sp, #0x60]
0x1dea52c: stp      x20, x19, [sp, #0x70]
0x1dea530: ldr      x8, [x3, #0x38]
0x1dea534: mov      x20, x3
0x1dea538: mov      x22, x2
0x1dea53c: mov      x19, x1
0x1dea540: mov      x21, x0
0x1dea544: cbnz     x8, #0x1dea550
0x1dea548: mov      x0, x20
0x1dea54c: bl       #0x1bc5590 | 
0x1dea550: str      xzr, [sp, #0x48]
0x1dea554: mov      x0, xzr
0x1dea558: bl       #0x34fa484 | System.Threading.Tasks.AsyncCausalityTracer$$get_LoggingOn
0x1dea55c: tbz      w0, #0, #0x1dea5b8
0x1dea560: ldr      x0, [x20, #0x20]
0x1dea564: ldrb     w8, [x0, #0x135]
0x1dea568: tbnz     w8, #0, #0x1dea570
0x1dea56c: bl       #0x1bc5534 | 
0x1dea570: ldr      x8, [x0, #0xc0]
0x1dea574: ldr      x0, [x8, #0x10]
0x1dea578: ldrb     w8, [x0, #0x135]
0x1dea57c: tbnz     w8, #0, #0x1dea584
0x1dea580: bl       #0x1bc5534 | 
0x1dea584: ldr      w8, [x0, #0xe0]
0x1dea588: cbnz     w8, #0x1dea590
0x1dea58c: bl       #0x1b646a4 | 
0x1dea590: ldr      x0, [x20, #0x20]
0x1dea594: ldrb     w8, [x0, #0x135]
0x1dea598: tbnz     w8, #0, #0x1dea5a0
0x1dea59c: bl       #0x1bc5534 | 
0x1dea5a0: ldr      x8, [x0, #0xc0]
0x1dea5a4: ldr      x1, [x8, #8]
0x1dea5a8: mov      x0, x21
0x1dea5ac: bl       #0x278a2f8 | System.Runtime.CompilerServices.AsyncTaskMethodBuilder<object>$$get_Task
0x1dea5b0: mov      x1, x0
0x1dea5b4: b        #0x1dea5bc | 
0x1dea5b8: mov      x1, xzr
0x1dea5bc: add      x2, sp, #0x48
0x1dea5c0: mov      x0, x21
0x1dea5c4: mov      x3, xzr
0x1dea5c8: bl       #0x33a61dc | System.Runtime.CompilerServices.AsyncMethodBuilderCore$$GetCompletionAction
0x1dea5cc: ldr      x8, [x21]
0x1dea5d0: mov      x23, x0
0x1dea5d4: cbnz     x8, #0x1dea664
0x1dea5d8: ldr      x0, [x20, #0x20]
0x1dea5dc: ldrb     w8, [x0, #0x135]
0x1dea5e0: tbnz     w8, #0, #0x1dea5e8
0x1dea5e4: bl       #0x1bc5534 | 
0x1dea5e8: ldr      x8, [x0, #0xc0]
0x1dea5ec: ldr      x0, [x8, #0x10]
0x1dea5f0: ldrb     w8, [x0, #0x135]
0x1dea5f4: tbnz     w8, #0, #0x1dea5fc
0x1dea5f8: bl       #0x1bc5534 | 
0x1dea5fc: ldr      w8, [x0, #0xe0]
0x1dea600: cbnz     w8, #0x1dea608
0x1dea604: bl       #0x1b646a4 | 
0x1dea608: ldr      x0, [x20, #0x20]
0x1dea60c: ldrb     w8, [x0, #0x135]
0x1dea610: tbnz     w8, #0, #0x1dea618
0x1dea614: bl       #0x1bc5534 | 
0x1dea618: ldr      x8, [x0, #0xc0]
0x1dea61c: ldr      x1, [x8, #8]
0x1dea620: mov      x0, x21
0x1dea624: bl       #0x278a2f8 | System.Runtime.CompilerServices.AsyncTaskMethodBuilder<object>$$get_Task
0x1dea628: ldp      q1, q0, [x22, #0x20]
0x1dea62c: ldp      q3, q2, [x22]
0x1dea630: mov      x24, x0
0x1dea634: stp      q1, q0, [sp, #0x20]
0x1dea638: stp      q3, q2, [sp]
0x1dea63c: ldr      x8, [x20, #0x38]
0x1dea640: ldr      x0, [x8, #8]
0x1dea644: mov      x1, sp
0x1dea648: bl       #0x1b646ac | 
0x1dea64c: mov      x1, x0
0x1dea650: ldr      x2, [sp, #0x48]
0x1dea654: mov      x0, x21
0x1dea658: mov      x3, x24
0x1dea65c: mov      x4, xzr
0x1dea660: bl       #0x33a6540 | System.Runtime.CompilerServices.AsyncMethodBuilderCore$$PostBoxInitialization
0x1dea664: ldr      x8, [x20, #0x38]
0x1dea668: ldr      x2, [x8, #0x20]
0x1dea66c: mov      x0, x19
0x1dea670: mov      x1, x23
0x1dea674: bl       #0x33a4f14 | System.Runtime.CompilerServices.TaskAwaiter$$UnsafeOnCompleted
0x1dea678: ldp      x20, x19, [sp, #0x70]
0x1dea67c: ldp      x22, x21, [sp, #0x60]
0x1dea680: ldp      x24, x23, [sp, #0x50]
0x1dea684: ldr      x30, [sp, #0x40]
0x1dea688: add      sp, sp, #0x80
0x1dea68c: ret      
0x1dea690: b        #0x1dea6ac | 
0x1dea694: b        #0x1dea6ac | 
0x1dea698: b        #0x1dea6ac | 
0x1dea69c: b        #0x1dea6ac | 
0x1dea6a0: b        #0x1dea6ac | 
0x1dea6a4: b        #0x1dea6ac | 
0x1dea6a8: b        #0x1dea6ac | 
0x1dea6ac: mov      x19, x0
0x1dea6b0: cmp      w1, #1
0x1dea6b4: b.ne     #0x1dea724
0x1dea6b8: mov      x0, x19
0x1dea6bc: bl       #0x3e998d0 | 
0x1dea6c0: mov      x19, x0
0x1dea6c4: adrp     x0, #0x4185000
0x1dea6c8: ldr      x0, [x0, #0x2e0]
0x1dea6cc: bl       #0x1b64584 | 
0x1dea6d0: ldr      x8, [x19]
0x1dea6d4: ldr      x1, [x8]
0x1dea6d8: bl       #0x1b64bf8 | 
0x1dea6dc: tbz      w0, #0, #0x1dea6fc
0x1dea6e0: ldr      x19, [x19]
0x1dea6e4: bl       #0x3e998e0 | 
0x1dea6e8: mov      x0, x19
0x1dea6ec: mov      x1, xzr
0x1dea6f0: mov      x2, xzr
0x1dea6f4: bl       #0x33a5ae0 | System.Runtime.CompilerServices.AsyncMethodBuilderCore$$ThrowAsync
0x1dea6f8: b        #0x1dea678 | 
0x1dea6fc: mov      w0, #8
0x1dea700: bl       #0x3e998f0 | 
0x1dea704: ldr      x8, [x19]
0x1dea708: str      x8, [x0]
0x1dea70c: adrp     x1, #0x3e9f000
0x1dea710: add      x1, x1, #0xc98
0x1dea714: mov      x2, xzr
0x1dea718: bl       #0x3e99900 | 
0x1dea71c: mov      x19, x0
0x1dea720: bl       #0x3e998e0 | 
0x1dea724: mov      x0, x19
0x1dea728: bl       #0x1c65b3c | 
0x1dea72c: bl       #0x194772c | 

// 0x1df08e4 System.Runtime.CompilerServices.AsyncTaskMethodBuilder<object>$$Start<C9SecretAssetBundleProvider.<Decrypt>d__8>
0x1df08e4: sub      sp, sp, #0x40
0x1df08e8: str      x30, [sp, #0x20]
0x1df08ec: stp      x20, x19, [sp, #0x30]
0x1df08f0: ldr      x8, [x2, #0x38]
0x1df08f4: mov      x20, x2
0x1df08f8: mov      x19, x1
0x1df08fc: cbnz     x8, #0x1df091c
0x1df0900: adrp     x0, #0x4190000
0x1df0904: ldr      x0, [x0, #0x1b8]
0x1df0908: bl       #0x1b64570 | 
0x1df090c: ldr      x8, [x20, #0x38]
0x1df0910: cbnz     x8, #0x1df091c
0x1df0914: mov      x0, x20
0x1df0918: bl       #0x1bc5590 | 
0x1df091c: movi     v0.2d, #0000000000000000
0x1df0920: mov      x0, xzr
0x1df0924: stp      q0, q0, [sp]
0x1df0928: bl       #0x33a7334 | System.Runtime.CompilerServices.RuntimeHelpers$$PrepareConstrainedRegions
0x1df092c: adrp     x8, #0x4190000
0x1df0930: ldr      x8, [x8, #0x1b8]
0x1df0934: ldr      x0, [x8]
0x1df0938: ldr      w8, [x0, #0xe0]
0x1df093c: cbnz     w8, #0x1df0944
0x1df0940: bl       #0x1b646a4 | 
0x1df0944: mov      x0, sp
0x1df0948: mov      x1, xzr
0x1df094c: bl       #0x34e8a40 | System.Threading.ExecutionContext$$EstablishCopyOnWriteScope
0x1df0950: ldr      x8, [x20, #0x38]
0x1df0954: ldr      x1, [x8, #0x10]
0x1df0958: mov      x0, x19
0x1df095c: bl       #0x1d2d5c8 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.<Decrypt>d__8$$MoveNext
0x1df0960: mov      x0, sp
0x1df0964: mov      x1, xzr
0x1df0968: bl       #0x34e7a78 | System.Threading.ExecutionContextSwitcher$$Undo
0x1df096c: ldp      x20, x19, [sp, #0x30]
0x1df0970: ldr      x30, [sp, #0x20]
0x1df0974: add      sp, sp, #0x40
0x1df0978: ret      
0x1df097c: b        #0x1df0980 | 
0x1df0980: mov      x20, x0
0x1df0984: cmp      w1, #1
0x1df0988: b.ne     #0x1df09b4
0x1df098c: mov      x0, x20
0x1df0990: bl       #0x3e998d0 | 
0x1df0994: ldr      x19, [x0]
0x1df0998: bl       #0x3e998e0 | 
0x1df099c: mov      x0, sp
0x1df09a0: mov      x1, xzr
0x1df09a4: bl       #0x34e7a78 | System.Threading.ExecutionContextSwitcher$$Undo
0x1df09a8: cbz      x19, #0x1df096c
0x1df09ac: mov      x0, x19
0x1df09b0: bl       #0x1b647c0 | 
0x1df09b4: mov      x19, xzr
0x1df09b8: b        #0x1df09c0 | 
0x1df09bc: mov      x20, x0
0x1df09c0: mov      x0, sp
0x1df09c4: mov      x1, xzr
0x1df09c8: bl       #0x34e7a78 | System.Threading.ExecutionContextSwitcher$$Undo
0x1df09cc: cbnz     x19, #0x1df09d8
0x1df09d0: mov      x0, x20
0x1df09d4: bl       #0x1c65b3c | 
0x1df09d8: mov      x0, x19
0x1df09dc: bl       #0x1b647c0 | 
0x1df09e0: bl       #0x194772c | 

// 0x1f08034 System.Runtime.CompilerServices.AsyncVoidMethodBuilder$$AwaitUnsafeOnCompleted<TaskAwaiter<object>, C9SecretAssetBundleProvider.C9SecretAssetBundleResource.<LoadLocalAssetBundle>d__36>
0x1f08034: sub      sp, sp, #0xb0
0x1f08038: str      x30, [sp, #0x70]
0x1f0803c: stp      x24, x23, [sp, #0x80]
0x1f08040: stp      x22, x21, [sp, #0x90]
0x1f08044: stp      x20, x19, [sp, #0xa0]
0x1f08048: ldr      x8, [x3, #0x38]
0x1f0804c: mov      x20, x3
0x1f08050: mov      x21, x2
0x1f08054: mov      x19, x1
0x1f08058: mov      x24, x0
0x1f0805c: cbnz     x8, #0x1f0807c
0x1f08060: adrp     x0, #0x4190000
0x1f08064: ldr      x0, [x0, #0x3a8] | 0x41903a8 'Async: '
0x1f08068: bl       #0x1b64570 | 
0x1f0806c: ldr      x8, [x20, #0x38]
0x1f08070: cbnz     x8, #0x1f0807c
0x1f08074: mov      x0, x20
0x1f08078: bl       #0x1bc5590 | 
0x1f0807c: str      xzr, [sp, #0x78]
0x1f08080: mov      x0, xzr
0x1f08084: bl       #0x34fa484 | System.Threading.Tasks.AsyncCausalityTracer$$get_LoggingOn
0x1f08088: tbz      w0, #0, #0x1f080a0
0x1f0808c: mov      x0, x24
0x1f08090: mov      x1, xzr
0x1f08094: bl       #0x33a58a8 | System.Runtime.CompilerServices.AsyncVoidMethodBuilder$$get_Task
0x1f08098: mov      x1, x0
0x1f0809c: b        #0x1f080a4 | 
0x1f080a0: mov      x1, xzr
0x1f080a4: add      x23, x24, #8
0x1f080a8: add      x2, sp, #0x78
0x1f080ac: mov      x0, x23
0x1f080b0: mov      x3, xzr
0x1f080b4: bl       #0x33a61dc | System.Runtime.CompilerServices.AsyncMethodBuilderCore$$GetCompletionAction
0x1f080b8: ldr      x8, [x23]
0x1f080bc: mov      x22, x0
0x1f080c0: cbnz     x8, #0x1f081a4
0x1f080c4: mov      x0, xzr
0x1f080c8: bl       #0x34fa484 | System.Threading.Tasks.AsyncCausalityTracer$$get_LoggingOn
0x1f080cc: tbz      w0, #0, #0x1f0816c
0x1f080d0: mov      x0, x24
0x1f080d4: mov      x1, xzr
0x1f080d8: bl       #0x33a58a8 | System.Runtime.CompilerServices.AsyncVoidMethodBuilder$$get_Task
0x1f080dc: cbz      x0, #0x1f081d0
0x1f080e0: mov      x1, xzr
0x1f080e4: bl       #0x34f2dd0 | System.Threading.Tasks.Task$$get_Id
0x1f080e8: ldr      x8, [x20, #0x38]
0x1f080ec: mov      w24, w0
0x1f080f0: ldr      x0, [x8, #8]
0x1f080f4: ldrb     w8, [x0, #0x135]
0x1f080f8: tbnz     w8, #0, #0x1f08100
0x1f080fc: bl       #0x1bc5534 | 
0x1f08100: mov      x8, #-1
0x1f08104: add      x9, sp, #8
0x1f08108: stp      x0, x8, [sp, #8]
0x1f0810c: add      x0, x9, #0x10
0x1f08110: mov      w2, #0x58
0x1f08114: mov      x1, x21
0x1f08118: bl       #0x3e99920 | 
0x1f0811c: add      x0, sp, #8
0x1f08120: mov      x1, xzr
0x1f08124: bl       #0x34c0c84 | System.Object$$GetType
0x1f08128: cbz      x0, #0x1f081d4
0x1f0812c: ldr      x8, [x0]
0x1f08130: ldr      x1, [x8, #0x210]
0x1f08134: ldr      x9, [x8, #0x208]
0x1f08138: blr      x9
0x1f0813c: mov      x1, x0
0x1f08140: adrp     x8, #0x4190000
0x1f08144: ldr      x8, [x8, #0x3a8] | 0x41903a8 'Async: '
0x1f08148: ldr      x0, [x8]
0x1f0814c: mov      x2, xzr
0x1f08150: bl       #0x32fce8c | System.String$$Concat
0x1f08154: mov      x2, x0
0x1f08158: mov      w0, wzr
0x1f0815c: mov      w1, w24
0x1f08160: mov      x3, xzr
0x1f08164: mov      x4, xzr
0x1f08168: bl       #0x34fd984 | System.Threading.Tasks.AsyncCausalityTracer$$TraceOperationCreation
0x1f0816c: add      x0, sp, #8
0x1f08170: mov      w2, #0x58
0x1f08174: mov      x1, x21
0x1f08178: bl       #0x3e99920 | 
0x1f0817c: ldr      x8, [x20, #0x38]
0x1f08180: ldr      x0, [x8, #8]
0x1f08184: add      x1, sp, #8
0x1f08188: bl       #0x1b646ac | 
0x1f0818c: mov      x1, x0
0x1f08190: ldr      x2, [sp, #0x78]
0x1f08194: mov      x0, x23
0x1f08198: mov      x3, xzr
0x1f0819c: mov      x4, xzr
0x1f081a0: bl       #0x33a6540 | System.Runtime.CompilerServices.AsyncMethodBuilderCore$$PostBoxInitialization
0x1f081a4: ldr      x8, [x20, #0x38]
0x1f081a8: ldr      x2, [x8, #0x28]
0x1f081ac: mov      x0, x19
0x1f081b0: mov      x1, x22
0x1f081b4: bl       #0x2237dbc | System.Runtime.CompilerServices.TaskAwaiter<object>$$UnsafeOnCompleted
0x1f081b8: ldp      x20, x19, [sp, #0xa0]
0x1f081bc: ldp      x22, x21, [sp, #0x90]
0x1f081c0: ldp      x24, x23, [sp, #0x80]
0x1f081c4: ldr      x30, [sp, #0x70]
0x1f081c8: add      sp, sp, #0xb0
0x1f081cc: ret      
0x1f081d0: bl       #0x1b647c8 | 
0x1f081d4: bl       #0x1b647c8 | 
0x1f081d8: b        #0x1f08208 | 
0x1f081dc: b        #0x1f08208 | 
0x1f081e0: b        #0x1f08208 | 
0x1f081e4: b        #0x1f08208 | 
0x1f081e8: b        #0x1f08208 | 
0x1f081ec: b        #0x1f08208 | 
0x1f081f0: b        #0x1f08208 | 
0x1f081f4: b        #0x1f08208 | 
0x1f081f8: b        #0x1f08208 | 
0x1f081fc: b        #0x1f08208 | 
0x1f08200: b        #0x1f08208 | 
0x1f08204: b        #0x1f08208 | 
0x1f08208: mov      x19, x0
0x1f0820c: cmp      w1, #1
0x1f08210: b.ne     #0x1f08280
0x1f08214: mov      x0, x19
0x1f08218: bl       #0x3e998d0 | 
0x1f0821c: mov      x19, x0
0x1f08220: adrp     x0, #0x4185000
0x1f08224: ldr      x0, [x0, #0x2e0]
0x1f08228: bl       #0x1b64584 | 
0x1f0822c: ldr      x8, [x19]
0x1f08230: ldr      x1, [x8]
0x1f08234: bl       #0x1b64bf8 | 
0x1f08238: tbz      w0, #0, #0x1f08258
0x1f0823c: ldr      x19, [x19]
0x1f08240: bl       #0x3e998e0 | 
0x1f08244: mov      x0, x19
0x1f08248: mov      x1, xzr
0x1f0824c: mov      x2, xzr
0x1f08250: bl       #0x33a5ae0 | System.Runtime.CompilerServices.AsyncMethodBuilderCore$$ThrowAsync
0x1f08254: b        #0x1f081b8 | 
0x1f08258: mov      w0, #8
0x1f0825c: bl       #0x3e998f0 | 
0x1f08260: ldr      x8, [x19]
0x1f08264: str      x8, [x0]
0x1f08268: adrp     x1, #0x3e9f000
0x1f0826c: add      x1, x1, #0xc98
0x1f08270: mov      x2, xzr
0x1f08274: bl       #0x3e99900 | 
0x1f08278: mov      x19, x0
0x1f0827c: bl       #0x3e998e0 | 
0x1f08280: mov      x0, x19
0x1f08284: bl       #0x1c65b3c | 
0x1f08288: bl       #0x194772c | 

// 0x1f0d228 System.Runtime.CompilerServices.AsyncVoidMethodBuilder$$Start<C9SecretAssetBundleProvider.C9SecretAssetBundleResource.<LoadLocalAssetBundle>d__36>
0x1f0d228: sub      sp, sp, #0x40
0x1f0d22c: str      x30, [sp, #0x20]
0x1f0d230: stp      x20, x19, [sp, #0x30]
0x1f0d234: ldr      x8, [x2, #0x38]
0x1f0d238: mov      x20, x2
0x1f0d23c: mov      x19, x1
0x1f0d240: cbnz     x8, #0x1f0d260
0x1f0d244: adrp     x0, #0x4190000
0x1f0d248: ldr      x0, [x0, #0x1b8]
0x1f0d24c: bl       #0x1b64570 | 
0x1f0d250: ldr      x8, [x20, #0x38]
0x1f0d254: cbnz     x8, #0x1f0d260
0x1f0d258: mov      x0, x20
0x1f0d25c: bl       #0x1bc5590 | 
0x1f0d260: movi     v0.2d, #0000000000000000
0x1f0d264: mov      x0, xzr
0x1f0d268: stp      q0, q0, [sp]
0x1f0d26c: bl       #0x33a7334 | System.Runtime.CompilerServices.RuntimeHelpers$$PrepareConstrainedRegions
0x1f0d270: adrp     x8, #0x4190000
0x1f0d274: ldr      x8, [x8, #0x1b8]
0x1f0d278: ldr      x0, [x8]
0x1f0d27c: ldr      w8, [x0, #0xe0]
0x1f0d280: cbnz     w8, #0x1f0d288
0x1f0d284: bl       #0x1b646a4 | 
0x1f0d288: mov      x0, sp
0x1f0d28c: mov      x1, xzr
0x1f0d290: bl       #0x34e8a40 | System.Threading.ExecutionContext$$EstablishCopyOnWriteScope
0x1f0d294: ldr      x8, [x20, #0x38]
0x1f0d298: ldr      x1, [x8, #0x10]
0x1f0d29c: mov      x0, x19
0x1f0d2a0: bl       #0x1d2cbc8 | UnityEngine.ResourceManagement.ResourceProviders.C9SecretAssetBundleProvider.C9SecretAssetBundleResource.<LoadLocalAssetBundle>d__36$$MoveNext
0x1f0d2a4: mov      x0, sp
0x1f0d2a8: mov      x1, xzr
0x1f0d2ac: bl       #0x34e7a78 | System.Threading.ExecutionContextSwitcher$$Undo
0x1f0d2b0: ldp      x20, x19, [sp, #0x30]
0x1f0d2b4: ldr      x30, [sp, #0x20]
0x1f0d2b8: add      sp, sp, #0x40
0x1f0d2bc: ret      
0x1f0d2c0: b        #0x1f0d2c4 | 
0x1f0d2c4: mov      x20, x0
0x1f0d2c8: cmp      w1, #1
0x1f0d2cc: b.ne     #0x1f0d2f8
0x1f0d2d0: mov      x0, x20
0x1f0d2d4: bl       #0x3e998d0 | 
0x1f0d2d8: ldr      x19, [x0]
0x1f0d2dc: bl       #0x3e998e0 | 
0x1f0d2e0: mov      x0, sp
0x1f0d2e4: mov      x1, xzr
0x1f0d2e8: bl       #0x34e7a78 | System.Threading.ExecutionContextSwitcher$$Undo
0x1f0d2ec: cbz      x19, #0x1f0d2b0
0x1f0d2f0: mov      x0, x19
0x1f0d2f4: bl       #0x1b647c0 | 
0x1f0d2f8: mov      x19, xzr
0x1f0d2fc: b        #0x1f0d304 | 
0x1f0d300: mov      x20, x0
0x1f0d304: mov      x0, sp
0x1f0d308: mov      x1, xzr
0x1f0d30c: bl       #0x34e7a78 | System.Threading.ExecutionContextSwitcher$$Undo
0x1f0d310: cbnz     x19, #0x1f0d31c
0x1f0d314: mov      x0, x20
0x1f0d318: bl       #0x1c65b3c | 
0x1f0d31c: mov      x0, x19
0x1f0d320: bl       #0x1b647c0 | 
0x1f0d324: bl       #0x194772c | 
