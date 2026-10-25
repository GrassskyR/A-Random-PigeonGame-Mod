
// 0x1cb7a0c ConditionalObject$$Awake
0x1cb7a0c: str      x30, [sp, #-0x50]!
0x1cb7a10: stp      x26, x25, [sp, #0x10]
0x1cb7a14: stp      x24, x23, [sp, #0x20]
0x1cb7a18: stp      x22, x21, [sp, #0x30]
0x1cb7a1c: stp      x20, x19, [sp, #0x40]
0x1cb7a20: adrp     x20, #0x4475000
0x1cb7a24: ldrb     w8, [x20, #0x884]
0x1cb7a28: mov      x19, x0
0x1cb7a2c: tbnz     w8, #0, #0x1cb7a98
0x1cb7a30: adrp     x0, #0x4187000
0x1cb7a34: ldr      x0, [x0, #0x148]
0x1cb7a38: bl       #0x1b64570 | 
0x1cb7a3c: adrp     x0, #0x4187000
0x1cb7a40: ldr      x0, [x0, #0x858]
0x1cb7a44: bl       #0x1b64570 | 
0x1cb7a48: adrp     x0, #0x4187000
0x1cb7a4c: ldr      x0, [x0, #0xe8]
0x1cb7a50: bl       #0x1b64570 | 
0x1cb7a54: adrp     x0, #0x4186000
0x1cb7a58: ldr      x0, [x0, #0xe68]
0x1cb7a5c: bl       #0x1b64570 | 
0x1cb7a60: adrp     x0, #0x4187000
0x1cb7a64: ldr      x0, [x0, #0x860]
0x1cb7a68: bl       #0x1b64570 | 
0x1cb7a6c: adrp     x0, #0x4187000
0x1cb7a70: ldr      x0, [x0, #0x868]
0x1cb7a74: bl       #0x1b64570 | 
0x1cb7a78: adrp     x0, #0x4187000
0x1cb7a7c: ldr      x0, [x0, #0x870]
0x1cb7a80: bl       #0x1b64570 | 
0x1cb7a84: adrp     x0, #0x4187000
0x1cb7a88: ldr      x0, [x0, #0x878]
0x1cb7a8c: bl       #0x1b64570 | 
0x1cb7a90: mov      w8, #1
0x1cb7a94: strb     w8, [x20, #0x884]
0x1cb7a98: ldr      w8, [x19, #0x20]
0x1cb7a9c: cmp      w8, #3
0x1cb7aa0: b.hi     #0x1cb7c7c
0x1cb7aa4: adrp     x9, #0xc36000
0x1cb7aa8: add      x9, x9, #0x2b8
0x1cb7aac: adr      x10, #0x1cb7abc
0x1cb7ab0: ldrb     w11, [x9, x8]
0x1cb7ab4: add      x10, x10, x11, lsl #2
0x1cb7ab8: br       x10
0x1cb7abc: adrp     x23, #0x4187000
0x1cb7ac0: ldr      x23, [x23, #0x878]
0x1cb7ac4: ldr      x20, [x19, #0x28]
0x1cb7ac8: ldr      x0, [x23]
0x1cb7acc: ldr      w8, [x0, #0xe0]
0x1cb7ad0: cbnz     w8, #0x1cb7adc
0x1cb7ad4: bl       #0x1b646a4 | 
0x1cb7ad8: ldr      x0, [x23]
0x1cb7adc: ldr      x8, [x0, #0xb8]
0x1cb7ae0: ldr      x21, [x8, #0x18]
0x1cb7ae4: cbnz     x21, #0x1cb7b38
0x1cb7ae8: ldr      w8, [x0, #0xe0]
0x1cb7aec: cbnz     w8, #0x1cb7af8
0x1cb7af0: bl       #0x1b646a4 | 
0x1cb7af4: ldr      x0, [x23]
0x1cb7af8: adrp     x9, #0x4187000
0x1cb7afc: ldr      x8, [x0, #0xb8]
0x1cb7b00: ldr      x9, [x9, #0xe8]
0x1cb7b04: ldr      x22, [x8]
0x1cb7b08: ldr      x0, [x9]
0x1cb7b0c: bl       #0x1b647b8 | 
0x1cb7b10: adrp     x8, #0x4187000
0x1cb7b14: ldr      x8, [x8, #0x870]
0x1cb7b18: mov      x1, x22
0x1cb7b1c: mov      x3, xzr
0x1cb7b20: mov      x21, x0
0x1cb7b24: ldr      x2, [x8]
0x1cb7b28: bl       #0x2c5614c | System.Func<object, bool>$$.ctor
0x1cb7b2c: ldr      x8, [x23]
0x1cb7b30: ldr      x8, [x8, #0xb8]
0x1cb7b34: str      x21, [x8, #0x18]
0x1cb7b38: adrp     x8, #0x4187000
0x1cb7b3c: ldr      x8, [x8, #0x148]
0x1cb7b40: mov      x0, x20
0x1cb7b44: mov      x1, x21
0x1cb7b48: ldr      x2, [x8]
0x1cb7b4c: bl       #0x1f65070 | System.Linq.Enumerable$$All<object>
0x1cb7b50: b        #0x1cb7be8 | 
0x1cb7b54: adrp     x23, #0x4187000
0x1cb7b58: ldr      x23, [x23, #0x878]
0x1cb7b5c: ldr      x20, [x19, #0x28]
0x1cb7b60: ldr      x0, [x23]
0x1cb7b64: ldr      w8, [x0, #0xe0]
0x1cb7b68: cbnz     w8, #0x1cb7b74
0x1cb7b6c: bl       #0x1b646a4 | 
0x1cb7b70: ldr      x0, [x23]
0x1cb7b74: ldr      x8, [x0, #0xb8]
0x1cb7b78: ldr      x21, [x8, #0x10]
0x1cb7b7c: cbnz     x21, #0x1cb7bd0
0x1cb7b80: ldr      w8, [x0, #0xe0]
0x1cb7b84: cbnz     w8, #0x1cb7b90
0x1cb7b88: bl       #0x1b646a4 | 
0x1cb7b8c: ldr      x0, [x23]
0x1cb7b90: adrp     x9, #0x4187000
0x1cb7b94: ldr      x8, [x0, #0xb8]
0x1cb7b98: ldr      x9, [x9, #0xe8]
0x1cb7b9c: ldr      x22, [x8]
0x1cb7ba0: ldr      x0, [x9]
0x1cb7ba4: bl       #0x1b647b8 | 
0x1cb7ba8: adrp     x8, #0x4187000
0x1cb7bac: ldr      x8, [x8, #0x868]
0x1cb7bb0: mov      x1, x22
0x1cb7bb4: mov      x3, xzr
0x1cb7bb8: mov      x21, x0
0x1cb7bbc: ldr      x2, [x8]
0x1cb7bc0: bl       #0x2c5614c | System.Func<object, bool>$$.ctor
0x1cb7bc4: ldr      x8, [x23]
0x1cb7bc8: ldr      x8, [x8, #0xb8]
0x1cb7bcc: str      x21, [x8, #0x10]
0x1cb7bd0: adrp     x8, #0x4187000
0x1cb7bd4: ldr      x8, [x8, #0x858]
0x1cb7bd8: mov      x0, x20
0x1cb7bdc: mov      x1, x21
0x1cb7be0: ldr      x2, [x8]
0x1cb7be4: bl       #0x1f66878 | System.Linq.Enumerable$$Any<object>
0x1cb7be8: mov      w20, w0
0x1cb7bec: b        #0x1cb7d1c | 
0x1cb7bf0: ldr      x21, [x19, #0x28]
0x1cb7bf4: cbz      x21, #0x1cb7d50
0x1cb7bf8: ldr      x8, [x21, #0x18]
0x1cb7bfc: cmp      w8, #1
0x1cb7c00: b.lt     #0x1cb7c7c
0x1cb7c04: adrp     x25, #0x4186000
0x1cb7c08: ldr      x25, [x25, #0xe68]
0x1cb7c0c: mov      w26, wzr
0x1cb7c10: mov      w24, wzr
0x1cb7c14: mov      x22, xzr
0x1cb7c18: and      x8, x8, #0xffffffff
0x1cb7c1c: add      x23, x21, #0x20
0x1cb7c20: cmp      x22, w8, uxtw
0x1cb7c24: b.hs     #0x1cb7d4c
0x1cb7c28: ldr      x0, [x25]
0x1cb7c2c: ldr      x20, [x23, x22, lsl #3]
0x1cb7c30: ldr      w8, [x0, #0xe0]
0x1cb7c34: cbnz     w8, #0x1cb7c3c
0x1cb7c38: bl       #0x1b646a4 | 
0x1cb7c3c: mov      x0, x20
0x1cb7c40: mov      w1, wzr
0x1cb7c44: mov      x2, xzr
0x1cb7c48: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1cb7c4c: tbz      w0, #0, #0x1cb7c5c
0x1cb7c50: tst      w26, #0xff
0x1cb7c54: b.ne     #0x1cb7c7c
0x1cb7c58: mov      w24, #1
0x1cb7c5c: ldr      w8, [x21, #0x18]
0x1cb7c60: add      x22, x22, #1
0x1cb7c64: and      w26, w24, #1
0x1cb7c68: cmp      x22, w8, sxtw
0x1cb7c6c: b.lt     #0x1cb7c20
0x1cb7c70: cmp      w26, #0
0x1cb7c74: cset     w20, ne
0x1cb7c78: b        #0x1cb7d1c | 
0x1cb7c7c: mov      w20, wzr
0x1cb7c80: b        #0x1cb7d1c | 
0x1cb7c84: adrp     x23, #0x4187000
0x1cb7c88: ldr      x23, [x23, #0x878]
0x1cb7c8c: ldr      x20, [x19, #0x28]
0x1cb7c90: ldr      x0, [x23]
0x1cb7c94: ldr      w8, [x0, #0xe0]
0x1cb7c98: cbnz     w8, #0x1cb7ca4
0x1cb7c9c: bl       #0x1b646a4 | 
0x1cb7ca0: ldr      x0, [x23]
0x1cb7ca4: ldr      x8, [x0, #0xb8]
0x1cb7ca8: ldr      x21, [x8, #8]
0x1cb7cac: cbnz     x21, #0x1cb7d00
0x1cb7cb0: ldr      w8, [x0, #0xe0]
0x1cb7cb4: cbnz     w8, #0x1cb7cc0
0x1cb7cb8: bl       #0x1b646a4 | 
0x1cb7cbc: ldr      x0, [x23]
0x1cb7cc0: adrp     x9, #0x4187000
0x1cb7cc4: ldr      x8, [x0, #0xb8]
0x1cb7cc8: ldr      x9, [x9, #0xe8]
0x1cb7ccc: ldr      x22, [x8]
0x1cb7cd0: ldr      x0, [x9]
0x1cb7cd4: bl       #0x1b647b8 | 
0x1cb7cd8: adrp     x8, #0x4187000
0x1cb7cdc: ldr      x8, [x8, #0x860]
0x1cb7ce0: mov      x1, x22
0x1cb7ce4: mov      x3, xzr
0x1cb7ce8: mov      x21, x0
0x1cb7cec: ldr      x2, [x8]
0x1cb7cf0: bl       #0x2c5614c | System.Func<object, bool>$$.ctor
0x1cb7cf4: ldr      x8, [x23]
0x1cb7cf8: ldr      x8, [x8, #0xb8]
0x1cb7cfc: str      x21, [x8, #8]
0x1cb7d00: adrp     x8, #0x4187000
0x1cb7d04: ldr      x8, [x8, #0x858]
0x1cb7d08: mov      x0, x20
0x1cb7d0c: mov      x1, x21
0x1cb7d10: ldr      x2, [x8]
0x1cb7d14: bl       #0x1f66878 | System.Linq.Enumerable$$Any<object>
0x1cb7d18: eor      w20, w0, #1
0x1cb7d1c: mov      x0, x19
0x1cb7d20: mov      x1, xzr
0x1cb7d24: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1cb7d28: cbz      x0, #0x1cb7d50
0x1cb7d2c: and      w1, w20, #1
0x1cb7d30: ldp      x20, x19, [sp, #0x40]
0x1cb7d34: ldp      x22, x21, [sp, #0x30]
0x1cb7d38: ldp      x24, x23, [sp, #0x20]
0x1cb7d3c: ldp      x26, x25, [sp, #0x10]
0x1cb7d40: mov      x2, xzr
0x1cb7d44: ldr      x30, [sp], #0x50
0x1cb7d48: b        #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1cb7d4c: bl       #0x1b647d0 | 
0x1cb7d50: bl       #0x1b647c8 | 

// 0x1cc4f80 SaveManagement$$SaveBool
0x1cc4f80: sub      sp, sp, #0x30
0x1cc4f84: stp      x30, x21, [sp, #0x10]
0x1cc4f88: stp      x20, x19, [sp, #0x20]
0x1cc4f8c: and      w9, w1, #1
0x1cc4f90: adrp     x21, #0x4475000
0x1cc4f94: strb     w9, [sp, #0xc]
0x1cc4f98: adrp     x20, #0x4186000
0x1cc4f9c: ldrb     w8, [x21, #0x8dc]
0x1cc4fa0: ldr      x20, [x20, #0xe68]
0x1cc4fa4: mov      x19, x0
0x1cc4fa8: tbnz     w8, #0, #0x1cc4fcc
0x1cc4fac: adrp     x0, #0x4185000
0x1cc4fb0: ldr      x0, [x0, #0x9a8]
0x1cc4fb4: bl       #0x1b64570 | 
0x1cc4fb8: adrp     x0, #0x4186000
0x1cc4fbc: ldr      x0, [x0, #0xe68]
0x1cc4fc0: bl       #0x1b64570 | 
0x1cc4fc4: mov      w8, #1
0x1cc4fc8: strb     w8, [x21, #0x8dc]
0x1cc4fcc: ldr      x0, [x20]
0x1cc4fd0: adrp     x20, #0x4185000
0x1cc4fd4: ldr      w8, [x0, #0xe0]
0x1cc4fd8: ldr      x20, [x20, #0x9a8]
0x1cc4fdc: cbnz     w8, #0x1cc4fe4
0x1cc4fe0: bl       #0x1b646a4 | 
0x1cc4fe4: mov      x0, x19
0x1cc4fe8: bl       #0x1cc4688 | SaveManagement$$Encrypt
0x1cc4fec: ldr      x8, [x20]
0x1cc4ff0: mov      x19, x0
0x1cc4ff4: ldr      w9, [x8, #0xe0]
0x1cc4ff8: cbnz     w9, #0x1cc5004
0x1cc4ffc: mov      x0, x8
0x1cc5000: bl       #0x1b646a4 | 
0x1cc5004: add      x0, sp, #0xc
0x1cc5008: mov      x1, xzr
0x1cc500c: bl       #0x33f1f08 | System.Boolean$$ToString
0x1cc5010: bl       #0x1cc4688 | SaveManagement$$Encrypt
0x1cc5014: mov      x1, x0
0x1cc5018: mov      x0, x19
0x1cc501c: mov      x2, xzr
0x1cc5020: bl       #0x3c5ace0 | UnityEngine.PlayerPrefs$$SetString
0x1cc5024: ldp      x20, x19, [sp, #0x20]
0x1cc5028: ldp      x30, x21, [sp, #0x10]
0x1cc502c: add      sp, sp, #0x30
0x1cc5030: ret      

// 0x1cc52bc SaveManagement$$LoadBool
0x1cc52bc: str      x30, [sp, #-0x30]!
0x1cc52c0: stp      x22, x21, [sp, #0x10]
0x1cc52c4: stp      x20, x19, [sp, #0x20]
0x1cc52c8: adrp     x20, #0x4475000
0x1cc52cc: adrp     x22, #0x4186000
0x1cc52d0: ldrb     w8, [x20, #0x8e1]
0x1cc52d4: ldr      x22, [x22, #0xe68]
0x1cc52d8: mov      w19, w1
0x1cc52dc: mov      x21, x0
0x1cc52e0: tbnz     w8, #0, #0x1cc5304
0x1cc52e4: adrp     x0, #0x4185000
0x1cc52e8: ldr      x0, [x0, #0x9a8]
0x1cc52ec: bl       #0x1b64570 | 
0x1cc52f0: adrp     x0, #0x4186000
0x1cc52f4: ldr      x0, [x0, #0xe68]
0x1cc52f8: bl       #0x1b64570 | 
0x1cc52fc: mov      w8, #1
0x1cc5300: strb     w8, [x20, #0x8e1]
0x1cc5304: ldr      x0, [x22]
0x1cc5308: strb     wzr, [sp, #0xc]
0x1cc530c: strb     wzr, [sp, #8]
0x1cc5310: ldr      w8, [x0, #0xe0]
0x1cc5314: cbnz     w8, #0x1cc531c
0x1cc5318: bl       #0x1b646a4 | 
0x1cc531c: mov      x0, x21
0x1cc5320: bl       #0x1cc4688 | SaveManagement$$Encrypt
0x1cc5324: mov      x1, xzr
0x1cc5328: mov      x20, x0
0x1cc532c: bl       #0x3c5ae20 | UnityEngine.PlayerPrefs$$HasKey
0x1cc5330: tbz      w0, #0, #0x1cc539c
0x1cc5334: mov      x0, x20
0x1cc5338: mov      x1, xzr
0x1cc533c: bl       #0x3c5adb4 | UnityEngine.PlayerPrefs$$GetString
0x1cc5340: ldr      x8, [x22]
0x1cc5344: mov      x20, x0
0x1cc5348: ldr      w9, [x8, #0xe0]
0x1cc534c: cbnz     w9, #0x1cc5358
0x1cc5350: mov      x0, x8
0x1cc5354: bl       #0x1b646a4 | 
0x1cc5358: mov      x0, x20
0x1cc535c: bl       #0x1cc5728 | SaveManagement$$Decrypt
0x1cc5360: adrp     x8, #0x4185000
0x1cc5364: ldr      x8, [x8, #0x9a8]
0x1cc5368: mov      x20, x0
0x1cc536c: ldr      x8, [x8]
0x1cc5370: ldr      w9, [x8, #0xe0]
0x1cc5374: cbnz     w9, #0x1cc5380
0x1cc5378: mov      x0, x8
0x1cc537c: bl       #0x1b646a4 | 
0x1cc5380: add      x1, sp, #0xc
0x1cc5384: mov      x0, x20
0x1cc5388: mov      x2, xzr
0x1cc538c: bl       #0x33f25f0 | System.Boolean$$TryParse
0x1cc5390: tbz      w0, #0, #0x1cc5440
0x1cc5394: ldrb     w8, [sp, #0xc]
0x1cc5398: b        #0x1cc5438 | 
0x1cc539c: ldr      x0, [x22]
0x1cc53a0: ldr      w8, [x0, #0xe0]
0x1cc53a4: cbnz     w8, #0x1cc53ac
0x1cc53a8: bl       #0x1b646a4 | 
0x1cc53ac: mov      x0, x21
0x1cc53b0: bl       #0x1cc4c20 | SaveManagement$$EncryptDES
0x1cc53b4: mov      x1, xzr
0x1cc53b8: mov      x21, x0
0x1cc53bc: bl       #0x3c5ae20 | UnityEngine.PlayerPrefs$$HasKey
0x1cc53c0: tbz      w0, #0, #0x1cc5440
0x1cc53c4: mov      x0, x21
0x1cc53c8: mov      x1, xzr
0x1cc53cc: bl       #0x3c5adb4 | UnityEngine.PlayerPrefs$$GetString
0x1cc53d0: ldr      x8, [x22]
0x1cc53d4: mov      x21, x0
0x1cc53d8: ldr      w9, [x8, #0xe0]
0x1cc53dc: cbnz     w9, #0x1cc53e8
0x1cc53e0: mov      x0, x8
0x1cc53e4: bl       #0x1b646a4 | 
0x1cc53e8: mov      x0, x21
0x1cc53ec: bl       #0x1cc5454 | SaveManagement$$DecryptDES
0x1cc53f0: mov      x21, x0
0x1cc53f4: bl       #0x1cc4688 | SaveManagement$$Encrypt
0x1cc53f8: mov      x1, x0
0x1cc53fc: mov      x0, x20
0x1cc5400: mov      x2, xzr
0x1cc5404: bl       #0x3c5ace0 | UnityEngine.PlayerPrefs$$SetString
0x1cc5408: adrp     x8, #0x4185000
0x1cc540c: ldr      x8, [x8, #0x9a8]
0x1cc5410: ldr      x0, [x8]
0x1cc5414: ldr      w8, [x0, #0xe0]
0x1cc5418: cbnz     w8, #0x1cc5420
0x1cc541c: bl       #0x1b646a4 | 
0x1cc5420: add      x1, sp, #8
0x1cc5424: mov      x0, x21
0x1cc5428: mov      x2, xzr
0x1cc542c: bl       #0x33f25f0 | System.Boolean$$TryParse
0x1cc5430: tbz      w0, #0, #0x1cc5440
0x1cc5434: ldrb     w8, [sp, #8]
0x1cc5438: cmp      w8, #0
0x1cc543c: cset     w19, ne
0x1cc5440: and      w0, w19, #1
0x1cc5444: ldp      x20, x19, [sp, #0x20]
0x1cc5448: ldp      x22, x21, [sp, #0x10]
0x1cc544c: ldr      x30, [sp], #0x30
0x1cc5450: ret      

// 0x1cd043c BootSceneControl.<Start>d__13$$MoveNext
0x1cd043c: stp      x30, x23, [sp, #-0x30]!
0x1cd0440: stp      x22, x21, [sp, #0x10]
0x1cd0444: stp      x20, x19, [sp, #0x20]
0x1cd0448: adrp     x20, #0x4475000
0x1cd044c: ldrb     w8, [x20, #0x950]
0x1cd0450: mov      x19, x0
0x1cd0454: tbnz     w8, #0, #0x1cd0574
0x1cd0458: adrp     x0, #0x4188000
0x1cd045c: ldr      x0, [x0, #0xfa8]
0x1cd0460: bl       #0x1b64570 | 
0x1cd0464: adrp     x0, #0x4188000
0x1cd0468: ldr      x0, [x0, #0xfb0]
0x1cd046c: bl       #0x1b64570 | 
0x1cd0470: adrp     x0, #0x4188000
0x1cd0474: ldr      x0, [x0, #0xf80]
0x1cd0478: bl       #0x1b64570 | 
0x1cd047c: adrp     x0, #0x4187000
0x1cd0480: ldr      x0, [x0, #0x740]
0x1cd0484: bl       #0x1b64570 | 
0x1cd0488: adrp     x0, #0x4188000
0x1cd048c: ldr      x0, [x0, #0xfb8]
0x1cd0490: bl       #0x1b64570 | 
0x1cd0494: adrp     x0, #0x4185000
0x1cd0498: ldr      x0, [x0, #0x208]
0x1cd049c: bl       #0x1b64570 | 
0x1cd04a0: adrp     x0, #0x4186000
0x1cd04a4: ldr      x0, [x0, #0xe68]
0x1cd04a8: bl       #0x1b64570 | 
0x1cd04ac: adrp     x0, #0x4186000
0x1cd04b0: ldr      x0, [x0, #0xe30]
0x1cd04b4: bl       #0x1b64570 | 
0x1cd04b8: adrp     x0, #0x4188000
0x1cd04bc: ldr      x0, [x0, #0xfc0]
0x1cd04c0: bl       #0x1b64570 | 
0x1cd04c4: adrp     x0, #0x4188000
0x1cd04c8: ldr      x0, [x0, #0xfc8]
0x1cd04cc: bl       #0x1b64570 | 
0x1cd04d0: adrp     x0, #0x4188000
0x1cd04d4: ldr      x0, [x0, #0xf68]
0x1cd04d8: bl       #0x1b64570 | 
0x1cd04dc: adrp     x0, #0x4186000
0x1cd04e0: ldr      x0, [x0, #0x168]
0x1cd04e4: bl       #0x1b64570 | 
0x1cd04e8: adrp     x0, #0x4188000
0x1cd04ec: ldr      x0, [x0, #0xad8]
0x1cd04f0: bl       #0x1b64570 | 
0x1cd04f4: adrp     x0, #0x4187000
0x1cd04f8: ldr      x0, [x0, #0xc00] | 0x4187c00 'chapter8Passed'
0x1cd04fc: bl       #0x1b64570 | 
0x1cd0500: adrp     x0, #0x4186000
0x1cd0504: ldr      x0, [x0, #0xe28] | 0x4186e28 'setDspBuffer'
0x1cd0508: bl       #0x1b64570 | 
0x1cd050c: adrp     x0, #0x4188000
0x1cd0510: ldr      x0, [x0, #0xfd0] | 0x4188fd0 'SplashScene3'
0x1cd0514: bl       #0x1b64570 | 
0x1cd0518: adrp     x0, #0x4188000
0x1cd051c: ldr      x0, [x0, #0xfd8] | 0x4188fd8 'splashWarningDisplayedV3_0'
0x1cd0520: bl       #0x1b64570 | 
0x1cd0524: adrp     x0, #0x4188000
0x1cd0528: ldr      x0, [x0, #0xfe0] | 0x4188fe0 'AutoSetDspBuffer'
0x1cd052c: bl       #0x1b64570 | 
0x1cd0530: adrp     x0, #0x4188000
0x1cd0534: ldr      x0, [x0, #0xfe8] | 0x4188fe8 'SplashScene4'
0x1cd0538: bl       #0x1b64570 | 
0x1cd053c: adrp     x0, #0x4186000
0x1cd0540: ldr      x0, [x0, #0xe40] | 0x4186e40 'SplashScene'
0x1cd0544: bl       #0x1b64570 | 
0x1cd0548: adrp     x0, #0x4187000
0x1cd054c: ldr      x0, [x0, #0xca8] | 0x4187ca8 'Chapter9Phase2Passed'
0x1cd0550: bl       #0x1b64570 | 
0x1cd0554: adrp     x0, #0x4188000
0x1cd0558: ldr      x0, [x0, #0xff0] | 0x4188ff0 'splashWarningDisplayedV4_0'
0x1cd055c: bl       #0x1b64570 | 
0x1cd0560: adrp     x0, #0x4188000
0x1cd0564: ldr      x0, [x0, #0xff8] | 0x4188ff8 'splashWarningDisplayed'
0x1cd0568: bl       #0x1b64570 | 
0x1cd056c: mov      w8, #1
0x1cd0570: strb     w8, [x20, #0x950]
0x1cd0574: ldr      w8, [x19, #0x10]
0x1cd0578: cmp      w8, #9
0x1cd057c: b.hi     #0x1cd0e18
0x1cd0580: ldr      x20, [x19, #0x20]
0x1cd0584: adrp     x9, #0xc36000
0x1cd0588: add      x9, x9, #0x2f0
0x1cd058c: adr      x10, #0x1cd059c
0x1cd0590: ldrh     w11, [x9, x8, lsl #1]
0x1cd0594: add      x10, x10, x11, lsl #2
0x1cd0598: br       x10
0x1cd059c: mov      w8, #-1
0x1cd05a0: str      w8, [x19, #0x10]
0x1cd05a4: cbz      x20, #0x1cd0e2c
0x1cd05a8: mov      x0, x20
0x1cd05ac: bl       #0x1ccfac8 | BootSceneControl$$LogoSplash
0x1cd05b0: mov      x1, x0
0x1cd05b4: mov      x0, x20
0x1cd05b8: mov      x2, xzr
0x1cd05bc: bl       #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1cd05c0: ldr      w8, [x19, #0x28]
0x1cd05c4: str      x0, [x19, #0x38]
0x1cd05c8: cmp      w8, #2
0x1cd05cc: b.lt     #0x1cd0ae4
0x1cd05d0: adrp     x8, #0x4187000
0x1cd05d4: ldr      x8, [x8, #0x740]
0x1cd05d8: ldr      x0, [x8]
0x1cd05dc: bl       #0x1b647b8 | 
0x1cd05e0: adrp     x8, #0x4188000
0x1cd05e4: ldr      x8, [x8, #0xfa8]
0x1cd05e8: mov      x1, x20
0x1cd05ec: mov      x3, xzr
0x1cd05f0: mov      x21, x0
0x1cd05f4: ldr      x2, [x8]
0x1cd05f8: bl       #0x2c503d8 | System.Func<bool>$$.ctor
0x1cd05fc: adrp     x8, #0x4188000
0x1cd0600: ldr      x8, [x8, #0xad8]
0x1cd0604: ldr      x0, [x8]
0x1cd0608: bl       #0x1b647b8 | 
0x1cd060c: mov      x1, x21
0x1cd0610: mov      x2, xzr
0x1cd0614: mov      x20, x0
0x1cd0618: bl       #0x3c66e5c | UnityEngine.WaitUntil$$.ctor
0x1cd061c: str      x20, [x19, #0x18]
0x1cd0620: mov      w8, #7
0x1cd0624: b        #0x1cd0acc | 
0x1cd0628: mov      w8, #-1
0x1cd062c: fmov     s0, #1.00000000
0x1cd0630: mov      x0, xzr
0x1cd0634: str      w8, [x19, #0x10]
0x1cd0638: bl       #0x1ca7ba4 | GameInformation$$set_ListenerVolume
0x1cd063c: cbz      x20, #0x1cd0e2c
0x1cd0640: ldrb     w8, [x20, #0x58]
0x1cd0644: cbz      w8, #0x1cd0694
0x1cd0648: bl       #0x1ccf91c | BootSceneControl$$TryEnterPendingMessage
0x1cd064c: tbnz     w0, #0, #0x1cd0e18
0x1cd0650: adrp     x8, #0x4185000
0x1cd0654: ldr      x8, [x8, #0x208]
0x1cd0658: ldr      x21, [x20, #0x30]
0x1cd065c: ldr      x0, [x8]
0x1cd0660: ldr      w8, [x0, #0xe0]
0x1cd0664: cbnz     w8, #0x1cd066c
0x1cd0668: bl       #0x1b646a4 | 
0x1cd066c: mov      x0, x21
0x1cd0670: mov      x1, xzr
0x1cd0674: mov      x2, xzr
0x1cd0678: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1cd067c: tbz      w0, #0, #0x1cd0694
0x1cd0680: ldr      x0, [x20, #0x30]
0x1cd0684: cbz      x0, #0x1cd0e2c
0x1cd0688: mov      w1, #1
0x1cd068c: mov      x2, xzr
0x1cd0690: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1cd0694: adrp     x22, #0x4186000
0x1cd0698: ldr      x22, [x22, #0xe68]
0x1cd069c: ldr      x0, [x22]
0x1cd06a0: ldr      w8, [x0, #0xe0]
0x1cd06a4: cbnz     w8, #0x1cd06ac
0x1cd06a8: bl       #0x1b646a4 | 
0x1cd06ac: adrp     x8, #0x4187000
0x1cd06b0: ldr      x8, [x8, #0xc00] | 0x4187c00 'chapter8Passed'
0x1cd06b4: mov      w1, wzr
0x1cd06b8: ldr      x0, [x8]
0x1cd06bc: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1cd06c0: adrp     x8, #0x4187000
0x1cd06c4: ldr      x8, [x8, #0xca8] | 0x4187ca8 'Chapter9Phase2Passed'
0x1cd06c8: mov      w21, w0
0x1cd06cc: mov      w1, wzr
0x1cd06d0: ldr      x8, [x8]
0x1cd06d4: mov      x0, x8
0x1cd06d8: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1cd06dc: tst      w21, #1
0x1cd06e0: mov      w8, #3
0x1cd06e4: adrp     x10, #0xc35000
0x1cd06e8: mov      w9, #4
0x1cd06ec: csinc    w8, w8, wzr, ne
0x1cd06f0: tst      w0, #1
0x1cd06f4: ldr      s0, [x10, #0x1a4]
0x1cd06f8: adrp     x10, #0xc35000
0x1cd06fc: ldr      s1, [x10, #0x1a8]
0x1cd0700: adrp     x10, #0x4188000
0x1cd0704: csel     w8, w9, w8, ne
0x1cd0708: adrp     x9, #0x4188000
0x1cd070c: ldr      x10, [x10, #0xff8] | 0x4188ff8 'splashWarningDisplayed'
0x1cd0710: ldr      x9, [x9, #0xff0] | 0x4188ff0 'splashWarningDisplayedV4_0'
0x1cd0714: fcsel    s0, s1, s0, ne
0x1cd0718: str      w8, [x19, #0x28]
0x1cd071c: str      s0, [x19, #0x2c]
0x1cd0720: csel     x9, x9, x10, ne
0x1cd0724: adrp     x10, #0x4188000
0x1cd0728: ldr      x0, [x22]
0x1cd072c: ldr      x10, [x10, #0xfd8] | 0x4188fd8 'splashWarningDisplayedV3_0'
0x1cd0730: cmp      w8, #3
0x1cd0734: csel     x8, x10, x9, eq
0x1cd0738: ldr      w9, [x0, #0xe0]
0x1cd073c: ldr      x21, [x8]
0x1cd0740: cbnz     w9, #0x1cd0748
0x1cd0744: bl       #0x1b646a4 | 
0x1cd0748: mov      x0, x21
0x1cd074c: mov      w1, wzr
0x1cd0750: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1cd0754: and      w8, w0, #1
0x1cd0758: strb     w8, [x20, #0x48]
0x1cd075c: ldr      w8, [x19, #0x28]
0x1cd0760: cmp      w8, #2
0x1cd0764: b.lt     #0x1cd07c4
0x1cd0768: ldr      x0, [x20, #0x38]
0x1cd076c: cbz      x0, #0x1cd0e2c
0x1cd0770: mov      x1, xzr
0x1cd0774: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1cd0778: adrp     x8, #0x4185000
0x1cd077c: ldr      x8, [x8, #0x208]
0x1cd0780: mov      x21, x0
0x1cd0784: ldr      x8, [x8]
0x1cd0788: ldr      w9, [x8, #0xe0]
0x1cd078c: cbnz     w9, #0x1cd0798
0x1cd0790: mov      x0, x8
0x1cd0794: bl       #0x1b646a4 | 
0x1cd0798: mov      x0, x21
0x1cd079c: mov      x1, xzr
0x1cd07a0: bl       #0x3c65590 | UnityEngine.Object$$DontDestroyOnLoad
0x1cd07a4: ldr      w8, [x19, #0x28]
0x1cd07a8: cmp      w8, #4
0x1cd07ac: b.ne     #0x1cd07c4
0x1cd07b0: ldr      x0, [x20, #0x38]
0x1cd07b4: cbz      x0, #0x1cd0e2c
0x1cd07b8: ldr      x1, [x20, #0x40]
0x1cd07bc: mov      x2, xzr
0x1cd07c0: bl       #0x3c185c8 | UnityEngine.AudioSource$$set_clip
0x1cd07c4: adrp     x8, #0x4186000
0x1cd07c8: ldr      x8, [x8, #0x168]
0x1cd07cc: ldr      x0, [x8]
0x1cd07d0: bl       #0x1b647b8 | 
0x1cd07d4: adrp     x8, #0xc35000
0x1cd07d8: ldr      s0, [x8, #0x19c]
0x1cd07dc: mov      x1, xzr
0x1cd07e0: mov      x20, x0
0x1cd07e4: bl       #0x3c66cf4 | UnityEngine.WaitForSeconds$$.ctor
0x1cd07e8: mov      w0, #1
0x1cd07ec: str      x20, [x19, #0x18]
0x1cd07f0: str      w0, [x19, #0x10]
0x1cd07f4: b        #0x1cd0e1c | 
0x1cd07f8: mov      w8, #-1
0x1cd07fc: mov      x0, xzr
0x1cd0800: str      w8, [x19, #0x10]
0x1cd0804: bl       #0x3c688f4 | UnityEngine.Time$$get_timeSinceLevelLoad
0x1cd0808: cbz      x20, #0x1cd0e2c
0x1cd080c: mov      x0, x20
0x1cd0810: mov      x1, xzr
0x1cd0814: str      s0, [x20, #0x4c]
0x1cd0818: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1cd081c: adrp     x8, #0x4185000
0x1cd0820: ldr      x8, [x8, #0x208]
0x1cd0824: mov      x21, x0
0x1cd0828: ldr      x8, [x8]
0x1cd082c: ldr      w9, [x8, #0xe0]
0x1cd0830: cbnz     w9, #0x1cd083c
0x1cd0834: mov      x0, x8
0x1cd0838: bl       #0x1b646a4 | 
0x1cd083c: mov      x0, x21
0x1cd0840: mov      x1, xzr
0x1cd0844: bl       #0x3c65590 | UnityEngine.Object$$DontDestroyOnLoad
0x1cd0848: ldr      x0, [x20, #0x30]
0x1cd084c: mov      x1, xzr
0x1cd0850: bl       #0x3c65590 | UnityEngine.Object$$DontDestroyOnLoad
0x1cd0854: adrp     x8, #0x4186000
0x1cd0858: ldr      x8, [x8, #0xe28] | 0x4186e28 'setDspBuffer'
0x1cd085c: mov      w1, wzr
0x1cd0860: mov      x2, xzr
0x1cd0864: ldr      x0, [x8]
0x1cd0868: bl       #0x3c5ac5c | UnityEngine.PlayerPrefs$$GetInt
0x1cd086c: cmp      w0, #0
0x1cd0870: cset     w8, eq
0x1cd0874: strb     w8, [x19, #0x30]
0x1cd0878: cbz      w0, #0x1cd05a8
0x1cd087c: ldr      w8, [x19, #0x28]
0x1cd0880: cmp      w8, #3
0x1cd0884: b.eq     #0x1cd0ca4
0x1cd0888: cmp      w8, #4
0x1cd088c: b.ne     #0x1cd0ce0
0x1cd0890: adrp     x8, #0x4186000
0x1cd0894: ldr      x8, [x8, #0xe30]
0x1cd0898: ldr      x0, [x8]
0x1cd089c: ldr      w8, [x0, #0xe0]
0x1cd08a0: cbnz     w8, #0x1cd08a8
0x1cd08a4: bl       #0x1b646a4 | 
0x1cd08a8: adrp     x8, #0x4188000
0x1cd08ac: ldr      x8, [x8, #0xfe8] | 0x4188fe8 'SplashScene4'
0x1cd08b0: mov      w1, wzr
0x1cd08b4: mov      x2, xzr
0x1cd08b8: ldr      x0, [x8]
0x1cd08bc: bl       #0x3c756bc | UnityEngine.SceneManagement.SceneManager$$LoadSceneAsync
0x1cd08c0: mov      w8, #2
0x1cd08c4: str      x0, [x19, #0x18]
0x1cd08c8: b        #0x1cd0acc | 
0x1cd08cc: mov      w8, #-1
0x1cd08d0: str      w8, [x19, #0x10]
0x1cd08d4: adrp     x22, #0x4188000
0x1cd08d8: ldr      x22, [x22, #0xf68]
0x1cd08dc: ldr      x0, [x22]
0x1cd08e0: ldr      w8, [x0, #0xe0]
0x1cd08e4: cbnz     w8, #0x1cd08f0
0x1cd08e8: bl       #0x1b646a4 | 
0x1cd08ec: ldr      x0, [x22]
0x1cd08f0: ldr      x8, [x0, #0xb8]
0x1cd08f4: ldr      x20, [x8, #8]
0x1cd08f8: cbnz     x20, #0x1cd094c
0x1cd08fc: ldr      w8, [x0, #0xe0]
0x1cd0900: cbnz     w8, #0x1cd090c
0x1cd0904: bl       #0x1b646a4 | 
0x1cd0908: ldr      x0, [x22]
0x1cd090c: adrp     x9, #0x4187000
0x1cd0910: ldr      x8, [x0, #0xb8]
0x1cd0914: ldr      x9, [x9, #0x740]
0x1cd0918: ldr      x21, [x8]
0x1cd091c: ldr      x0, [x9]
0x1cd0920: bl       #0x1b647b8 | 
0x1cd0924: adrp     x8, #0x4188000
0x1cd0928: ldr      x8, [x8, #0xfc0]
0x1cd092c: mov      x1, x21
0x1cd0930: mov      x3, xzr
0x1cd0934: mov      x20, x0
0x1cd0938: ldr      x2, [x8]
0x1cd093c: bl       #0x2c503d8 | System.Func<bool>$$.ctor
0x1cd0940: ldr      x8, [x22]
0x1cd0944: ldr      x8, [x8, #0xb8]
0x1cd0948: str      x20, [x8, #8]
0x1cd094c: adrp     x8, #0x4188000
0x1cd0950: ldr      x8, [x8, #0xad8]
0x1cd0954: ldr      x0, [x8]
0x1cd0958: bl       #0x1b647b8 | 
0x1cd095c: mov      x1, x20
0x1cd0960: mov      x2, xzr
0x1cd0964: mov      x21, x0
0x1cd0968: bl       #0x3c66e5c | UnityEngine.WaitUntil$$.ctor
0x1cd096c: str      x21, [x19, #0x18]
0x1cd0970: mov      w8, #4
0x1cd0974: b        #0x1cd0acc | 
0x1cd0978: mov      w8, #-1
0x1cd097c: str      w8, [x19, #0x10]
0x1cd0980: adrp     x22, #0x4188000
0x1cd0984: ldr      x22, [x22, #0xf68]
0x1cd0988: ldr      x0, [x22]
0x1cd098c: ldr      w8, [x0, #0xe0]
0x1cd0990: cbnz     w8, #0x1cd099c
0x1cd0994: bl       #0x1b646a4 | 
0x1cd0998: ldr      x0, [x22]
0x1cd099c: ldr      x8, [x0, #0xb8]
0x1cd09a0: ldr      x20, [x8, #0x10]
0x1cd09a4: cbnz     x20, #0x1cd09f8
0x1cd09a8: ldr      w8, [x0, #0xe0]
0x1cd09ac: cbnz     w8, #0x1cd09b8
0x1cd09b0: bl       #0x1b646a4 | 
0x1cd09b4: ldr      x0, [x22]
0x1cd09b8: adrp     x9, #0x4187000
0x1cd09bc: ldr      x8, [x0, #0xb8]
0x1cd09c0: ldr      x9, [x9, #0x740]
0x1cd09c4: ldr      x21, [x8]
0x1cd09c8: ldr      x0, [x9]
0x1cd09cc: bl       #0x1b647b8 | 
0x1cd09d0: adrp     x8, #0x4188000
0x1cd09d4: ldr      x8, [x8, #0xfc8]
0x1cd09d8: mov      x1, x21
0x1cd09dc: mov      x3, xzr
0x1cd09e0: mov      x20, x0
0x1cd09e4: ldr      x2, [x8]
0x1cd09e8: bl       #0x2c503d8 | System.Func<bool>$$.ctor
0x1cd09ec: ldr      x8, [x22]
0x1cd09f0: ldr      x8, [x8, #0xb8]
0x1cd09f4: str      x20, [x8, #0x10]
0x1cd09f8: adrp     x8, #0x4188000
0x1cd09fc: ldr      x8, [x8, #0xad8]
0x1cd0a00: ldr      x0, [x8]
0x1cd0a04: bl       #0x1b647b8 | 
0x1cd0a08: mov      x1, x20
0x1cd0a0c: mov      x2, xzr
0x1cd0a10: mov      x21, x0
0x1cd0a14: bl       #0x3c66e5c | UnityEngine.WaitUntil$$.ctor
0x1cd0a18: str      x21, [x19, #0x18]
0x1cd0a1c: mov      w8, #5
0x1cd0a20: b        #0x1cd0acc | 
0x1cd0a24: mov      w8, #-1
0x1cd0a28: mov      x0, xzr
0x1cd0a2c: str      w8, [x19, #0x10]
0x1cd0a30: bl       #0x3c16850 | UnityEngine.AudioSettings$$get_dspTime
0x1cd0a34: cbz      x20, #0x1cd0e2c
0x1cd0a38: ldr      x0, [x20, #0x38]
0x1cd0a3c: cbz      x0, #0x1cd0e2c
0x1cd0a40: ldr      s1, [x19, #0x2c]
0x1cd0a44: fmov     d2, #8.50000000
0x1cd0a48: fadd     d0, d0, d2
0x1cd0a4c: mov      x1, xzr
0x1cd0a50: fcvt     d1, s1
0x1cd0a54: fsub     d0, d0, d1
0x1cd0a58: bl       #0x3c18774 | UnityEngine.AudioSource$$PlayScheduled
0x1cd0a5c: mov      x0, x20
0x1cd0a60: bl       #0x1ccfd60 | BootSceneControl$$AudioFadeIn
0x1cd0a64: mov      x1, x0
0x1cd0a68: mov      x0, x20
0x1cd0a6c: mov      x2, xzr
0x1cd0a70: bl       #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1cd0a74: str      x0, [x20, #0x50]
0x1cd0a78: adrp     x8, #0x4187000
0x1cd0a7c: ldr      x8, [x8, #0x740]
0x1cd0a80: ldr      x0, [x8]
0x1cd0a84: bl       #0x1b647b8 | 
0x1cd0a88: adrp     x8, #0x4188000
0x1cd0a8c: ldr      x8, [x8, #0xfb0]
0x1cd0a90: mov      x1, x20
0x1cd0a94: mov      x3, xzr
0x1cd0a98: mov      x21, x0
0x1cd0a9c: ldr      x2, [x8]
0x1cd0aa0: bl       #0x2c503d8 | System.Func<bool>$$.ctor
0x1cd0aa4: adrp     x8, #0x4188000
0x1cd0aa8: ldr      x8, [x8, #0xad8]
0x1cd0aac: ldr      x0, [x8]
0x1cd0ab0: bl       #0x1b647b8 | 
0x1cd0ab4: mov      x1, x21
0x1cd0ab8: mov      x2, xzr
0x1cd0abc: mov      x20, x0
0x1cd0ac0: bl       #0x3c66e5c | UnityEngine.WaitUntil$$.ctor
0x1cd0ac4: str      x20, [x19, #0x18]
0x1cd0ac8: mov      w8, #8
0x1cd0acc: str      w8, [x19, #0x10]
0x1cd0ad0: mov      w0, #1
0x1cd0ad4: b        #0x1cd0e1c | 
0x1cd0ad8: mov      w8, #-1
0x1cd0adc: str      w8, [x19, #0x10]
0x1cd0ae0: cbz      x20, #0x1cd0e2c
0x1cd0ae4: mov      w0, #1
0x1cd0ae8: strb     w0, [x20, #0x49]
0x1cd0aec: ldr      x8, [x19, #0x38]
0x1cd0af0: mov      w9, #9
0x1cd0af4: str      w9, [x19, #0x10]
0x1cd0af8: str      x8, [x19, #0x18]
0x1cd0afc: b        #0x1cd0e1c | 
0x1cd0b00: ldr      w8, [x19, #0x28]
0x1cd0b04: mov      w9, #-1
0x1cd0b08: str      w9, [x19, #0x10]
0x1cd0b0c: cmp      w8, #2
0x1cd0b10: b.lt     #0x1cd0b70
0x1cd0b14: cbz      x20, #0x1cd0e2c
0x1cd0b18: ldrb     w9, [x20, #0x4a]
0x1cd0b1c: cbz      w9, #0x1cd0b70
0x1cd0b20: ldr      x0, [x20, #0x38]
0x1cd0b24: cbz      x0, #0x1cd0e2c
0x1cd0b28: adrp     x8, #0xc35000
0x1cd0b2c: ldr      s0, [x19, #0x2c]
0x1cd0b30: ldr      s1, [x8, #0x384]
0x1cd0b34: mov      x1, xzr
0x1cd0b38: fadd     s0, s0, s1
0x1cd0b3c: bl       #0x3c184c0 | UnityEngine.AudioSource$$set_time
0x1cd0b40: ldr      x1, [x20, #0x50]
0x1cd0b44: cbz      x1, #0x1cd0b58
0x1cd0b48: mov      x0, x20
0x1cd0b4c: mov      x2, xzr
0x1cd0b50: bl       #0x3c622d8 | UnityEngine.MonoBehaviour$$StopCoroutine
0x1cd0b54: str      xzr, [x20, #0x50]
0x1cd0b58: ldr      x0, [x20, #0x38]
0x1cd0b5c: cbz      x0, #0x1cd0e2c
0x1cd0b60: fmov     s0, #1.00000000
0x1cd0b64: mov      x1, xzr
0x1cd0b68: bl       #0x3c183b0 | UnityEngine.AudioSource$$set_volume
0x1cd0b6c: ldr      w8, [x19, #0x28]
0x1cd0b70: adrp     x9, #0x4188000
0x1cd0b74: adrp     x10, #0x4188000
0x1cd0b78: ldr      x9, [x9, #0xff8] | 0x4188ff8 'splashWarningDisplayed'
0x1cd0b7c: ldr      x10, [x10, #0xff0] | 0x4188ff0 'splashWarningDisplayedV4_0'
0x1cd0b80: adrp     x22, #0x4186000
0x1cd0b84: ldr      x22, [x22, #0xe68]
0x1cd0b88: cmp      w8, #4
0x1cd0b8c: csel     x9, x10, x9, eq
0x1cd0b90: adrp     x10, #0x4188000
0x1cd0b94: ldr      x0, [x22]
0x1cd0b98: ldr      x10, [x10, #0xfd8] | 0x4188fd8 'splashWarningDisplayedV3_0'
0x1cd0b9c: cmp      w8, #3
0x1cd0ba0: csel     x8, x10, x9, eq
0x1cd0ba4: ldr      w9, [x0, #0xe0]
0x1cd0ba8: ldr      x21, [x8]
0x1cd0bac: cbnz     w9, #0x1cd0bb4
0x1cd0bb0: bl       #0x1b646a4 | 
0x1cd0bb4: mov      w1, #1
0x1cd0bb8: mov      x0, x21
0x1cd0bbc: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1cd0bc0: cbz      x20, #0x1cd0e2c
0x1cd0bc4: mov      x0, x20
0x1cd0bc8: mov      x1, xzr
0x1cd0bcc: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1cd0bd0: adrp     x23, #0x4185000
0x1cd0bd4: ldr      x23, [x23, #0x208]
0x1cd0bd8: mov      x21, x0
0x1cd0bdc: ldr      x8, [x23]
0x1cd0be0: ldr      w9, [x8, #0xe0]
0x1cd0be4: cbnz     w9, #0x1cd0bf0
0x1cd0be8: mov      x0, x8
0x1cd0bec: bl       #0x1b646a4 | 
0x1cd0bf0: mov      x0, x21
0x1cd0bf4: mov      x1, xzr
0x1cd0bf8: bl       #0x3c652c4 | UnityEngine.Object$$Destroy
0x1cd0bfc: ldr      x0, [x20, #0x30]
0x1cd0c00: mov      x1, xzr
0x1cd0c04: bl       #0x3c652c4 | UnityEngine.Object$$Destroy
0x1cd0c08: ldrb     w8, [x19, #0x30]
0x1cd0c0c: cbz      w8, #0x1cd0c40
0x1cd0c10: adrp     x8, #0x4186000
0x1cd0c14: ldr      x8, [x8, #0xe30]
0x1cd0c18: ldr      x0, [x8]
0x1cd0c1c: ldr      w8, [x0, #0xe0]
0x1cd0c20: cbnz     w8, #0x1cd0c28
0x1cd0c24: bl       #0x1b646a4 | 
0x1cd0c28: adrp     x8, #0x4188000
0x1cd0c2c: ldr      x8, [x8, #0xfe0] | 0x4188fe0 'AutoSetDspBuffer'
0x1cd0c30: mov      x1, xzr
0x1cd0c34: ldr      x0, [x8]
0x1cd0c38: bl       #0x3c75460 | UnityEngine.SceneManagement.SceneManager$$LoadScene
0x1cd0c3c: b        #0x1cd0d24 | 
0x1cd0c40: adrp     x20, #0x4188000
0x1cd0c44: ldr      x20, [x20, #0xf80]
0x1cd0c48: ldr      x0, [x20]
0x1cd0c4c: ldr      w8, [x0, #0xe0]
0x1cd0c50: cbnz     w8, #0x1cd0c5c
0x1cd0c54: bl       #0x1b646a4 | 
0x1cd0c58: ldr      x0, [x20]
0x1cd0c5c: ldr      x8, [x23]
0x1cd0c60: ldr      x9, [x0, #0xb8]
0x1cd0c64: ldr      w10, [x8, #0xe0]
0x1cd0c68: ldr      x19, [x9]
0x1cd0c6c: cbnz     w10, #0x1cd0c78
0x1cd0c70: mov      x0, x8
0x1cd0c74: bl       #0x1b646a4 | 
0x1cd0c78: mov      x0, x19
0x1cd0c7c: mov      x1, xzr
0x1cd0c80: bl       #0x3c64618 | UnityEngine.Object$$op_Implicit
0x1cd0c84: tbz      w0, #0, #0x1cd0d1c
0x1cd0c88: ldr      x0, [x20]
0x1cd0c8c: ldr      w8, [x0, #0xe0]
0x1cd0c90: cbnz     w8, #0x1cd0c98
0x1cd0c94: bl       #0x1b646a4 | 
0x1cd0c98: mov      x0, xzr
0x1cd0c9c: bl       #0x1cdd144 | SplashScene3.CutInAnimation$$StartAnimation
0x1cd0ca0: b        #0x1cd0d24 | 
0x1cd0ca4: adrp     x8, #0x4186000
0x1cd0ca8: ldr      x8, [x8, #0xe30]
0x1cd0cac: ldr      x0, [x8]
0x1cd0cb0: ldr      w8, [x0, #0xe0]
0x1cd0cb4: cbnz     w8, #0x1cd0cbc
0x1cd0cb8: bl       #0x1b646a4 | 
0x1cd0cbc: adrp     x8, #0x4188000
0x1cd0cc0: ldr      x8, [x8, #0xfd0] | 0x4188fd0 'SplashScene3'
0x1cd0cc4: mov      w1, wzr
0x1cd0cc8: mov      x2, xzr
0x1cd0ccc: ldr      x0, [x8]
0x1cd0cd0: bl       #0x3c756bc | UnityEngine.SceneManagement.SceneManager$$LoadSceneAsync
0x1cd0cd4: str      x0, [x19, #0x18]
0x1cd0cd8: mov      w8, #3
0x1cd0cdc: b        #0x1cd0acc | 
0x1cd0ce0: adrp     x8, #0x4186000
0x1cd0ce4: ldr      x8, [x8, #0xe30]
0x1cd0ce8: ldr      x0, [x8]
0x1cd0cec: ldr      w8, [x0, #0xe0]
0x1cd0cf0: cbnz     w8, #0x1cd0cf8
0x1cd0cf4: bl       #0x1b646a4 | 
0x1cd0cf8: adrp     x8, #0x4186000
0x1cd0cfc: ldr      x8, [x8, #0xe40] | 0x4186e40 'SplashScene'
0x1cd0d00: mov      w1, wzr
0x1cd0d04: mov      x2, xzr
0x1cd0d08: ldr      x0, [x8]
0x1cd0d0c: bl       #0x3c756bc | UnityEngine.SceneManagement.SceneManager$$LoadSceneAsync
0x1cd0d10: str      x0, [x19, #0x18]
0x1cd0d14: mov      w8, #6
0x1cd0d18: b        #0x1cd0acc | 
0x1cd0d1c: mov      x0, xzr
0x1cd0d20: bl       #0x1db251c | SplashScene$$AllowStart
0x1cd0d24: adrp     x20, #0x4188000
0x1cd0d28: ldr      x20, [x20, #0xfb8]
0x1cd0d2c: ldr      x0, [x20]
0x1cd0d30: ldr      w8, [x0, #0xe0]
0x1cd0d34: cbnz     w8, #0x1cd0d3c
0x1cd0d38: bl       #0x1b646a4 | 
0x1cd0d3c: adrp     x21, #0x4475000
0x1cd0d40: ldrb     w8, [x21, #0x95d]
0x1cd0d44: cbnz     w8, #0x1cd0d5c
0x1cd0d48: adrp     x0, #0x4188000
0x1cd0d4c: ldr      x0, [x0, #0xfb8]
0x1cd0d50: bl       #0x1b64570 | 
0x1cd0d54: mov      w8, #1
0x1cd0d58: strb     w8, [x21, #0x95d]
0x1cd0d5c: ldr      x0, [x20]
0x1cd0d60: ldr      w8, [x0, #0xe0]
0x1cd0d64: cbnz     w8, #0x1cd0d70
0x1cd0d68: bl       #0x1b646a4 | 
0x1cd0d6c: ldr      x0, [x20]
0x1cd0d70: ldr      x8, [x22]
0x1cd0d74: ldr      x9, [x0, #0xb8]
0x1cd0d78: ldr      w10, [x8, #0xe0]
0x1cd0d7c: ldr      x19, [x9, #0x38]
0x1cd0d80: cbnz     w10, #0x1cd0d8c
0x1cd0d84: mov      x0, x8
0x1cd0d88: bl       #0x1b646a4 | 
0x1cd0d8c: mov      x0, x19
0x1cd0d90: mov      w1, wzr
0x1cd0d94: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1cd0d98: mov      w8, w0
0x1cd0d9c: mov      w0, wzr
0x1cd0da0: tbz      w8, #0, #0x1cd0e1c
0x1cd0da4: mov      x0, xzr
0x1cd0da8: bl       #0x1ce0ccc | Phigros2.VisionReplay.VisionReplay$$TurnOn
0x1cd0dac: mov      x0, xzr
0x1cd0db0: bl       #0x1ce0fdc | Phigros2.VisionReplay.VisionReplay$$BootSimulateMode
0x1cd0db4: ldr      x0, [x20]
0x1cd0db8: ldr      w8, [x0, #0xe0]
0x1cd0dbc: cbnz     w8, #0x1cd0dc4
0x1cd0dc0: bl       #0x1b646a4 | 
0x1cd0dc4: ldrb     w8, [x21, #0x95d]
0x1cd0dc8: cbnz     w8, #0x1cd0de0
0x1cd0dcc: adrp     x0, #0x4188000
0x1cd0dd0: ldr      x0, [x0, #0xfb8]
0x1cd0dd4: bl       #0x1b64570 | 
0x1cd0dd8: mov      w8, #1
0x1cd0ddc: strb     w8, [x21, #0x95d]
0x1cd0de0: ldr      x0, [x20]
0x1cd0de4: ldr      w8, [x0, #0xe0]
0x1cd0de8: cbnz     w8, #0x1cd0df4
0x1cd0dec: bl       #0x1b646a4 | 
0x1cd0df0: ldr      x0, [x20]
0x1cd0df4: ldr      x8, [x22]
0x1cd0df8: ldr      x9, [x0, #0xb8]
0x1cd0dfc: ldr      w10, [x8, #0xe0]
0x1cd0e00: ldr      x19, [x9, #0x38]
0x1cd0e04: cbnz     w10, #0x1cd0e10
0x1cd0e08: mov      x0, x8
0x1cd0e0c: bl       #0x1b646a4 | 
0x1cd0e10: mov      x0, x19
0x1cd0e14: bl       #0x1cc4ef4 | SaveManagement$$DeleteKey
0x1cd0e18: mov      w0, wzr
0x1cd0e1c: ldp      x20, x19, [sp, #0x20]
0x1cd0e20: ldp      x22, x21, [sp, #0x10]
0x1cd0e24: ldp      x30, x23, [sp], #0x30
0x1cd0e28: ret      
0x1cd0e2c: bl       #0x1b647c8 | 

// 0x1cdf8c0 Ch8Effect.MessageController$$WasContinuePressed
0x1cdf8c0: sub      sp, sp, #0xb0
0x1cdf8c4: str      x30, [sp, #0xa0]
0x1cdf8c8: movi     v0.2d, #0000000000000000
0x1cdf8cc: mov      w0, wzr
0x1cdf8d0: mov      x1, xzr
0x1cdf8d4: str      wzr, [sp, #0x90]
0x1cdf8d8: stp      q0, q0, [sp, #0x70]
0x1cdf8dc: stp      q0, q0, [sp, #0x50]
0x1cdf8e0: bl       #0x3cb1a50 | UnityEngine.Input$$GetMouseButtonDown
0x1cdf8e4: tbnz     w0, #0, #0x1cdf918
0x1cdf8e8: mov      w0, #0xd
0x1cdf8ec: mov      x1, xzr
0x1cdf8f0: bl       #0x3cb1cbc | UnityEngine.Input$$GetKeyDown
0x1cdf8f4: tbnz     w0, #0, #0x1cdf918
0x1cdf8f8: mov      w0, #0x10f
0x1cdf8fc: mov      x1, xzr
0x1cdf900: bl       #0x3cb1cbc | UnityEngine.Input$$GetKeyDown
0x1cdf904: tbnz     w0, #0, #0x1cdf918
0x1cdf908: mov      w0, #0x20
0x1cdf90c: mov      x1, xzr
0x1cdf910: bl       #0x3cb1cbc | UnityEngine.Input$$GetKeyDown
0x1cdf914: tbz      w0, #0, #0x1cdf928
0x1cdf918: mov      w0, #1
0x1cdf91c: ldr      x30, [sp, #0xa0]
0x1cdf920: add      sp, sp, #0xb0
0x1cdf924: ret      
0x1cdf928: mov      x0, xzr
0x1cdf92c: bl       #0x3cb1fd8 | UnityEngine.Input$$get_touchCount
0x1cdf930: cmp      w0, #1
0x1cdf934: b.lt     #0x1cdf970
0x1cdf938: add      x8, sp, #8
0x1cdf93c: mov      w0, wzr
0x1cdf940: mov      x1, xzr
0x1cdf944: bl       #0x3cb1ac8 | UnityEngine.Input$$GetTouch
0x1cdf948: add      x0, sp, #0x50
0x1cdf94c: add      x1, sp, #8
0x1cdf950: mov      w2, #0x44
0x1cdf954: bl       #0x3e99920 | 
0x1cdf958: add      x0, sp, #0x50
0x1cdf95c: mov      x1, xzr
0x1cdf960: bl       #0x3cb13e0 | UnityEngine.Touch$$get_phase
0x1cdf964: cmp      w0, #0
0x1cdf968: cset     w0, eq
0x1cdf96c: b        #0x1cdf91c | 
0x1cdf970: mov      w0, wzr
0x1cdf974: b        #0x1cdf91c | 

// 0x1ce21d4 Phigros2.VisionReplay.VisionReplay.Key$$.cctor
0x1ce21d4: stp      x29, x30, [sp, #-0x60]!
0x1ce21d8: stp      x28, x27, [sp, #0x10]
0x1ce21dc: stp      x26, x25, [sp, #0x20]
0x1ce21e0: stp      x24, x23, [sp, #0x30]
0x1ce21e4: stp      x22, x21, [sp, #0x40]
0x1ce21e8: stp      x20, x19, [sp, #0x50]
0x1ce21ec: adrp     x24, #0x4475000
0x1ce21f0: adrp     x23, #0x4189000
0x1ce21f4: adrp     x22, #0x4188000
0x1ce21f8: adrp     x21, #0x4189000
0x1ce21fc: adrp     x20, #0x4189000
0x1ce2200: adrp     x19, #0x4189000
0x1ce2204: adrp     x29, #0x4189000
0x1ce2208: adrp     x28, #0x4189000
0x1ce220c: adrp     x27, #0x4189000
0x1ce2210: adrp     x26, #0x4189000
0x1ce2214: adrp     x25, #0x4189000
0x1ce2218: adrp     x15, #0x4189000
0x1ce221c: adrp     x14, #0x4189000
0x1ce2220: adrp     x13, #0x4189000
0x1ce2224: adrp     x12, #0x4189000
0x1ce2228: adrp     x11, #0x4189000
0x1ce222c: adrp     x10, #0x4189000
0x1ce2230: ldr      x23, [x23, #0x958] | 0x4189958 'IsVisionReplayEnable'
0x1ce2234: ldr      x22, [x22, #0xfb8]
0x1ce2238: ldr      x21, [x21, #0x960] | 0x4189960 'VRUnlockFlagOfSpasmodic'
0x1ce223c: ldr      x20, [x20, #0x968] | 0x4189968 'VR重生KeyCompleted'
0x1ce2240: ldr      x19, [x19, #0x970] | 0x4189970 'VRUnlockFlagOfIgallta'
0x1ce2244: ldr      x29, [x29, #0x978] | 0x4189978 'VRUnlockFlagOfRrharil'
0x1ce2248: ldr      x28, [x28, #0x980] | 0x4189980 'VRChapter8UnlockBegin'
0x1ce224c: ldr      x27, [x27, #0x988] | 0x4189988 'VRChapter8UnlockSecondPhase'
0x1ce2250: ldr      x26, [x26, #0x990] | 0x4189990 'VRFirstOpenGameAfterChapter8FirstPhaseClear'
0x1ce2254: ldr      x25, [x25, #0x998] | 0x4189998 'VRChapter8Passed'
0x1ce2258: ldr      x15, [x15, #0x9a0] | 0x41899a0 'VRC8CraveWaveUnlocked'
0x1ce225c: ldrb     w8, [x24, #0xa10]
0x1ce2260: ldr      x14, [x14, #0x9a8] | 0x41899a8 'VRC8TheChariotREVIIVALUnlocked'
0x1ce2264: ldr      x13, [x13, #0x9b0] | 0x41899b0 'VRC8LuminescenceUnlocked'
0x1ce2268: ldr      x12, [x12, #0x9b8] | 0x41899b8 'VRC8RetributionUnlocked'
0x1ce226c: ldr      x11, [x11, #0x9c0] | 0x41899c0 'VRC8DESTRUCTION321Unlocked'
0x1ce2270: ldr      x10, [x10, #0x9c8] | 0x41899c8 'VRC8DistortedFateUnlocked'
0x1ce2274: tbnz     w8, #0, #0x1ce2370
0x1ce2278: adrp     x0, #0x4188000
0x1ce227c: ldr      x0, [x0, #0xfb8]
0x1ce2280: bl       #0x1b64570 | 
0x1ce2284: adrp     x0, #0x4189000
0x1ce2288: ldr      x0, [x0, #0x9a8] | 0x41899a8 'VRC8TheChariotREVIIVALUnlocked'
0x1ce228c: bl       #0x1b64570 | 
0x1ce2290: adrp     x0, #0x4189000
0x1ce2294: ldr      x0, [x0, #0x990] | 0x4189990 'VRFirstOpenGameAfterChapter8FirstPhaseClear'
0x1ce2298: bl       #0x1b64570 | 
0x1ce229c: adrp     x0, #0x4189000
0x1ce22a0: ldr      x0, [x0, #0x9a0] | 0x41899a0 'VRC8CraveWaveUnlocked'
0x1ce22a4: bl       #0x1b64570 | 
0x1ce22a8: adrp     x0, #0x4189000
0x1ce22ac: ldr      x0, [x0, #0x958] | 0x4189958 'IsVisionReplayEnable'
0x1ce22b0: bl       #0x1b64570 | 
0x1ce22b4: adrp     x0, #0x4189000
0x1ce22b8: ldr      x0, [x0, #0x960] | 0x4189960 'VRUnlockFlagOfSpasmodic'
0x1ce22bc: bl       #0x1b64570 | 
0x1ce22c0: adrp     x0, #0x4189000
0x1ce22c4: ldr      x0, [x0, #0x978] | 0x4189978 'VRUnlockFlagOfRrharil'
0x1ce22c8: bl       #0x1b64570 | 
0x1ce22cc: adrp     x0, #0x4189000
0x1ce22d0: ldr      x0, [x0, #0x998] | 0x4189998 'VRChapter8Passed'
0x1ce22d4: bl       #0x1b64570 | 
0x1ce22d8: adrp     x0, #0x4189000
0x1ce22dc: ldr      x0, [x0, #0x980] | 0x4189980 'VRChapter8UnlockBegin'
0x1ce22e0: bl       #0x1b64570 | 
0x1ce22e4: adrp     x0, #0x4189000
0x1ce22e8: ldr      x0, [x0, #0x9b8] | 0x41899b8 'VRC8RetributionUnlocked'
0x1ce22ec: bl       #0x1b64570 | 
0x1ce22f0: adrp     x0, #0x4189000
0x1ce22f4: ldr      x0, [x0, #0x970] | 0x4189970 'VRUnlockFlagOfIgallta'
0x1ce22f8: bl       #0x1b64570 | 
0x1ce22fc: adrp     x0, #0x4189000
0x1ce2300: ldr      x0, [x0, #0x9c0] | 0x41899c0 'VRC8DESTRUCTION321Unlocked'
0x1ce2304: bl       #0x1b64570 | 
0x1ce2308: adrp     x0, #0x4189000
0x1ce230c: ldr      x0, [x0, #0x968] | 0x4189968 'VR重生KeyCompleted'
0x1ce2310: bl       #0x1b64570 | 
0x1ce2314: adrp     x0, #0x4189000
0x1ce2318: ldr      x0, [x0, #0x9c8] | 0x41899c8 'VRC8DistortedFateUnlocked'
0x1ce231c: bl       #0x1b64570 | 
0x1ce2320: adrp     x0, #0x4189000
0x1ce2324: ldr      x0, [x0, #0x988] | 0x4189988 'VRChapter8UnlockSecondPhase'
0x1ce2328: bl       #0x1b64570 | 
0x1ce232c: adrp     x0, #0x4189000
0x1ce2330: ldr      x0, [x0, #0x9b0] | 0x41899b0 'VRC8LuminescenceUnlocked'
0x1ce2334: bl       #0x1b64570 | 
0x1ce2338: adrp     x15, #0x4189000
0x1ce233c: adrp     x14, #0x4189000
0x1ce2340: adrp     x13, #0x4189000
0x1ce2344: adrp     x12, #0x4189000
0x1ce2348: adrp     x11, #0x4189000
0x1ce234c: adrp     x10, #0x4189000
0x1ce2350: ldr      x15, [x15, #0x9a0] | 0x41899a0 'VRC8CraveWaveUnlocked'
0x1ce2354: ldr      x14, [x14, #0x9a8] | 0x41899a8 'VRC8TheChariotREVIIVALUnlocked'
0x1ce2358: ldr      x13, [x13, #0x9b0] | 0x41899b0 'VRC8LuminescenceUnlocked'
0x1ce235c: ldr      x12, [x12, #0x9b8] | 0x41899b8 'VRC8RetributionUnlocked'
0x1ce2360: ldr      x11, [x11, #0x9c0] | 0x41899c0 'VRC8DESTRUCTION321Unlocked'
0x1ce2364: ldr      x10, [x10, #0x9c8] | 0x41899c8 'VRC8DistortedFateUnlocked'
0x1ce2368: mov      w8, #1
0x1ce236c: strb     w8, [x24, #0xa10]
0x1ce2370: ldr      x8, [x22]
0x1ce2374: ldr      x9, [x23]
0x1ce2378: ldp      x24, x23, [sp, #0x30]
0x1ce237c: ldr      x8, [x8, #0xb8]
0x1ce2380: str      x9, [x8]
0x1ce2384: ldr      x8, [x22]
0x1ce2388: ldr      x9, [x21]
0x1ce238c: ldp      x22, x21, [sp, #0x40]
0x1ce2390: ldr      x8, [x8, #0xb8]
0x1ce2394: str      x9, [x8, #8]
0x1ce2398: ldr      x9, [x20]
0x1ce239c: str      x9, [x8, #0x10]
0x1ce23a0: ldr      x9, [x19]
0x1ce23a4: ldp      x20, x19, [sp, #0x50]
0x1ce23a8: str      x9, [x8, #0x18]
0x1ce23ac: ldr      x9, [x29]
0x1ce23b0: str      x9, [x8, #0x20]
0x1ce23b4: ldr      x9, [x28]
0x1ce23b8: str      x9, [x8, #0x28]
0x1ce23bc: ldr      x9, [x27]
0x1ce23c0: ldp      x28, x27, [sp, #0x10]
0x1ce23c4: str      x9, [x8, #0x30]
0x1ce23c8: ldr      x9, [x26]
0x1ce23cc: str      x9, [x8, #0x38]
0x1ce23d0: ldr      x9, [x25]
0x1ce23d4: ldp      x26, x25, [sp, #0x20]
0x1ce23d8: str      x9, [x8, #0x40]
0x1ce23dc: ldr      x9, [x15]
0x1ce23e0: str      x9, [x8, #0x48]
0x1ce23e4: ldr      x15, [x14]
0x1ce23e8: ldr      x9, [x13]
0x1ce23ec: stp      x15, x9, [x8, #0x50]
0x1ce23f0: ldr      x13, [x12]
0x1ce23f4: ldr      x9, [x11]
0x1ce23f8: stp      x13, x9, [x8, #0x60]
0x1ce23fc: ldr      x9, [x10]
0x1ce2400: str      x9, [x8, #0x70]
0x1ce2404: ldp      x29, x30, [sp], #0x60
0x1ce2408: ret      

// 0x1ce6978 Phigros2.SaturnOS.PopupControl$$OnClickYes
0x1ce6978: stp      x30, x21, [sp, #-0x20]!
0x1ce697c: stp      x20, x19, [sp, #0x10]
0x1ce6980: adrp     x21, #0x4475000
0x1ce6984: adrp     x20, #0x4186000
0x1ce6988: ldrb     w8, [x21, #0xa5d]
0x1ce698c: ldr      x20, [x20, #0xea0]
0x1ce6990: mov      x19, x0
0x1ce6994: tbnz     w8, #0, #0x1ce69ac
0x1ce6998: adrp     x0, #0x4186000
0x1ce699c: ldr      x0, [x0, #0xea0]
0x1ce69a0: bl       #0x1b64570 | 
0x1ce69a4: mov      w8, #1
0x1ce69a8: strb     w8, [x21, #0xa5d]
0x1ce69ac: bl       #0x1ce69f0 | Phigros2.SaturnOS.PopupEventHandler$$CallTurnOnEvent
0x1ce69b0: mov      x0, xzr
0x1ce69b4: bl       #0x1ce0ccc | Phigros2.VisionReplay.VisionReplay$$TurnOn
0x1ce69b8: mov      x0, x19
0x1ce69bc: bl       #0x1ce6a54 | Phigros2.SaturnOS.PopupControl$$Hide
0x1ce69c0: ldr      x8, [x20]
0x1ce69c4: ldr      x8, [x8, #0xb8]
0x1ce69c8: ldr      x8, [x8, #8]
0x1ce69cc: cbz      x8, #0x1ce69ec
0x1ce69d0: ldr      x3, [x8, #0x18]
0x1ce69d4: ldr      x0, [x8, #0x40]
0x1ce69d8: ldr      x2, [x8, #0x28]
0x1ce69dc: ldp      x20, x19, [sp, #0x10]
0x1ce69e0: mov      w1, #0xc
0x1ce69e4: ldp      x30, x21, [sp], #0x20
0x1ce69e8: br       x3
0x1ce69ec: bl       #0x1b647c8 | 

// 0x1cf288c Phigros2.Chapter9.C9DeductionControl$$WasAdvanceInputPressed
0x1cf288c: sub      sp, sp, #0xc0
0x1cf2890: str      x30, [sp, #0xa0]
0x1cf2894: stp      x20, x19, [sp, #0xb0]
0x1cf2898: movi     v0.2d, #0000000000000000
0x1cf289c: mov      w0, wzr
0x1cf28a0: mov      x1, xzr
0x1cf28a4: str      wzr, [sp, #0x90]
0x1cf28a8: stp      q0, q0, [sp, #0x70]
0x1cf28ac: stp      q0, q0, [sp, #0x50]
0x1cf28b0: bl       #0x3cb1a50 | UnityEngine.Input$$GetMouseButtonDown
0x1cf28b4: tbnz     w0, #0, #0x1cf28e8
0x1cf28b8: mov      w0, #0x20
0x1cf28bc: mov      x1, xzr
0x1cf28c0: bl       #0x3cb1cbc | UnityEngine.Input$$GetKeyDown
0x1cf28c4: tbnz     w0, #0, #0x1cf28e8
0x1cf28c8: mov      w0, #0xd
0x1cf28cc: mov      x1, xzr
0x1cf28d0: bl       #0x3cb1cbc | UnityEngine.Input$$GetKeyDown
0x1cf28d4: tbnz     w0, #0, #0x1cf28e8
0x1cf28d8: mov      w0, #0x10f
0x1cf28dc: mov      x1, xzr
0x1cf28e0: bl       #0x3cb1cbc | UnityEngine.Input$$GetKeyDown
0x1cf28e4: tbz      w0, #0, #0x1cf2900
0x1cf28e8: mov      w20, #1
0x1cf28ec: mov      w0, w20
0x1cf28f0: ldp      x20, x19, [sp, #0xb0]
0x1cf28f4: ldr      x30, [sp, #0xa0]
0x1cf28f8: add      sp, sp, #0xc0
0x1cf28fc: ret      
0x1cf2900: mov      x0, xzr
0x1cf2904: bl       #0x3cb1fd8 | UnityEngine.Input$$get_touchCount
0x1cf2908: cmp      w0, #1
0x1cf290c: b.lt     #0x1cf2964
0x1cf2910: mov      w19, wzr
0x1cf2914: add      x8, sp, #8
0x1cf2918: mov      w0, w19
0x1cf291c: mov      x1, xzr
0x1cf2920: bl       #0x3cb1ac8 | UnityEngine.Input$$GetTouch
0x1cf2924: add      x0, sp, #0x50
0x1cf2928: add      x1, sp, #8
0x1cf292c: mov      w2, #0x44
0x1cf2930: bl       #0x3e99920 | 
0x1cf2934: add      x0, sp, #0x50
0x1cf2938: mov      x1, xzr
0x1cf293c: bl       #0x3cb13e0 | UnityEngine.Touch$$get_phase
0x1cf2940: cmp      w0, #0
0x1cf2944: cset     w20, eq
0x1cf2948: cbz      w0, #0x1cf28ec
0x1cf294c: mov      x0, xzr
0x1cf2950: add      w19, w19, #1
0x1cf2954: bl       #0x3cb1fd8 | UnityEngine.Input$$get_touchCount
0x1cf2958: cmp      w19, w0
0x1cf295c: b.lt     #0x1cf2914
0x1cf2960: b        #0x1cf28ec | 
0x1cf2964: mov      w20, wzr
0x1cf2968: b        #0x1cf28ec | 
