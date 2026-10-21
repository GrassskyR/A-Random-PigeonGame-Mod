
// 0x1d23a28 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$Start
0x1d23a28: sub      sp, sp, #0x80
0x1d23a2c: stp      x29, x30, [sp, #0x20]
0x1d23a30: stp      x28, x27, [sp, #0x30]
0x1d23a34: stp      x26, x25, [sp, #0x40]
0x1d23a38: stp      x24, x23, [sp, #0x50]
0x1d23a3c: stp      x22, x21, [sp, #0x60]
0x1d23a40: stp      x20, x19, [sp, #0x70]
0x1d23a44: adrp     x20, #0x4475000
0x1d23a48: ldrb     w8, [x20, #0xcf3]
0x1d23a4c: mov      x19, x0
0x1d23a50: tbnz     w8, #0, #0x1d23af8
0x1d23a54: adrp     x0, #0x418b000
0x1d23a58: ldr      x0, [x0, #0x2e0]
0x1d23a5c: bl       #0x1b64570 | 
0x1d23a60: adrp     x0, #0x418b000
0x1d23a64: ldr      x0, [x0, #0x2e8]
0x1d23a68: bl       #0x1b64570 | 
0x1d23a6c: adrp     x0, #0x4189000
0x1d23a70: ldr      x0, [x0, #0xa98]
0x1d23a74: bl       #0x1b64570 | 
0x1d23a78: adrp     x0, #0x4186000
0x1d23a7c: ldr      x0, [x0, #0xe68]
0x1d23a80: bl       #0x1b64570 | 
0x1d23a84: adrp     x0, #0x4189000
0x1d23a88: ldr      x0, [x0, #0xac8]
0x1d23a8c: bl       #0x1b64570 | 
0x1d23a90: adrp     x0, #0x4187000
0x1d23a94: ldr      x0, [x0, #0x1b0] | 0x41871b0 'HD'
0x1d23a98: bl       #0x1b64570 | 
0x1d23a9c: adrp     x0, #0x4187000
0x1d23aa0: ldr      x0, [x0, #0x1b8] | 0x41871b8 'AT'
0x1d23aa4: bl       #0x1b64570 | 
0x1d23aa8: adrp     x0, #0x4186000
0x1d23aac: ldr      x0, [x0, #0xed0] | 0x4186ed0 'LastChapterBackgroundCode'
0x1d23ab0: bl       #0x1b64570 | 
0x1d23ab4: adrp     x0, #0x418b000
0x1d23ab8: ldr      x0, [x0, #0x2f0] | 0x418b2f0 'D7'
0x1d23abc: bl       #0x1b64570 | 
0x1d23ac0: adrp     x0, #0x4187000
0x1d23ac4: ldr      x0, [x0, #0x1c0] | 0x41871c0 'IN'
0x1d23ac8: bl       #0x1b64570 | 
0x1d23acc: adrp     x0, #0x418b000
0x1d23ad0: ldr      x0, [x0, #0x2f8] | 0x418b2f8 'Lv.'
0x1d23ad4: bl       #0x1b64570 | 
0x1d23ad8: adrp     x0, #0x4187000
0x1d23adc: ldr      x0, [x0, #0x1d0] | 0x41871d0 'EZ'
0x1d23ae0: bl       #0x1b64570 | 
0x1d23ae4: adrp     x0, #0x4186000
0x1d23ae8: ldr      x0, [x0, #0xeb0] | 0x4186eb0 'MainStoryLegacy'
0x1d23aec: bl       #0x1b64570 | 
0x1d23af0: mov      w8, #1
0x1d23af4: strb     w8, [x20, #0xcf3]
0x1d23af8: stp      xzr, x19, [sp, #8]
0x1d23afc: str      xzr, [sp, #0x18]
0x1d23b00: adrp     x27, #0x4475000
0x1d23b04: ldrb     w8, [x27, #0x8c0]
0x1d23b08: ldr      x21, [x19, #0x60]
0x1d23b0c: cbnz     w8, #0x1d23b24
0x1d23b10: adrp     x0, #0x4186000
0x1d23b14: ldr      x0, [x0, #0xef8]
0x1d23b18: bl       #0x1b64570 | 
0x1d23b1c: mov      w8, #1
0x1d23b20: strb     w8, [x27, #0x8c0]
0x1d23b24: adrp     x8, #0x4186000
0x1d23b28: ldr      x8, [x8, #0xef8]
0x1d23b2c: ldr      x8, [x8]
0x1d23b30: ldr      x8, [x8, #0xb8]
0x1d23b34: ldr      x8, [x8]
0x1d23b38: cbz      x8, #0x1d24248
0x1d23b3c: ldr      x8, [x8, #0x30]
0x1d23b40: cbz      x8, #0x1d24248
0x1d23b44: adrp     x9, #0x4187000
0x1d23b48: ldr      x9, [x9, #0x1d0] | 0x41871d0 'EZ'
0x1d23b4c: ldr      x22, [x8, #0x38]
0x1d23b50: mov      x2, xzr
0x1d23b54: ldr      x1, [x9]
0x1d23b58: mov      x0, x22
0x1d23b5c: bl       #0x32fac7c | System.String$$op_Equality
0x1d23b60: tbz      w0, #0, #0x1d23b6c
0x1d23b64: add      x8, x19, #0x20
0x1d23b68: b        #0x1d23bd4 | 
0x1d23b6c: adrp     x8, #0x4187000
0x1d23b70: ldr      x8, [x8, #0x1b0] | 0x41871b0 'HD'
0x1d23b74: mov      x0, x22
0x1d23b78: mov      x2, xzr
0x1d23b7c: ldr      x1, [x8]
0x1d23b80: bl       #0x32fac7c | System.String$$op_Equality
0x1d23b84: tbz      w0, #0, #0x1d23b90
0x1d23b88: add      x8, x19, #0x28
0x1d23b8c: b        #0x1d23bd4 | 
0x1d23b90: adrp     x8, #0x4187000
0x1d23b94: ldr      x8, [x8, #0x1c0] | 0x41871c0 'IN'
0x1d23b98: mov      x0, x22
0x1d23b9c: mov      x2, xzr
0x1d23ba0: ldr      x1, [x8]
0x1d23ba4: bl       #0x32fac7c | System.String$$op_Equality
0x1d23ba8: tbnz     w0, #0, #0x1d23bd0
0x1d23bac: adrp     x8, #0x4187000
0x1d23bb0: ldr      x8, [x8, #0x1b8] | 0x41871b8 'AT'
0x1d23bb4: mov      x0, x22
0x1d23bb8: mov      x2, xzr
0x1d23bbc: ldr      x1, [x8]
0x1d23bc0: bl       #0x32fac7c | System.String$$op_Equality
0x1d23bc4: tbz      w0, #0, #0x1d23bd0
0x1d23bc8: add      x8, x19, #0x38
0x1d23bcc: b        #0x1d23bd4 | 
0x1d23bd0: add      x8, x19, #0x30
0x1d23bd4: cbz      x21, #0x1d24248
0x1d23bd8: ldr      x1, [x8]
0x1d23bdc: mov      x0, x21
0x1d23be0: mov      x2, xzr
0x1d23be4: bl       #0x1db7aec | AddressableAudioSource$$set_Clip
0x1d23be8: ldr      x0, [x19, #0x60]
0x1d23bec: cbz      x0, #0x1d24248
0x1d23bf0: mov      x1, xzr
0x1d23bf4: bl       #0x1db7e54 | AddressableAudioSource$$Play
0x1d23bf8: ldrb     w8, [x27, #0x8c0]
0x1d23bfc: str      wzr, [sp, #0xc]
0x1d23c00: cbnz     w8, #0x1d23c18
0x1d23c04: adrp     x0, #0x4186000
0x1d23c08: ldr      x0, [x0, #0xef8]
0x1d23c0c: bl       #0x1b64570 | 
0x1d23c10: mov      w8, #1
0x1d23c14: strb     w8, [x27, #0x8c0]
0x1d23c18: adrp     x8, #0x4186000
0x1d23c1c: ldr      x8, [x8, #0xef8]
0x1d23c20: ldr      x8, [x8]
0x1d23c24: ldr      x8, [x8, #0xb8]
0x1d23c28: ldr      x8, [x8]
0x1d23c2c: cbz      x8, #0x1d24248
0x1d23c30: ldrb     w8, [x8, #0x90]
0x1d23c34: mov      w29, wzr
0x1d23c38: mov      w21, wzr
0x1d23c3c: mov      w25, #0x7f800000
0x1d23c40: mov      w26, #-0x80000000
0x1d23c44: str      w8, [sp, #4]
0x1d23c48: ldr      x0, [x19, #0x68]
0x1d23c4c: cbz      x0, #0x1d24248
0x1d23c50: adrp     x8, #0x418b000
0x1d23c54: ldr      x8, [x8, #0x2e8]
0x1d23c58: mov      w1, w21
0x1d23c5c: ldr      x2, [x8]
0x1d23c60: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1d23c64: ldrb     w8, [x27, #0x8c0]
0x1d23c68: mov      x22, x0
0x1d23c6c: cbnz     w8, #0x1d23c84
0x1d23c70: adrp     x0, #0x4186000
0x1d23c74: ldr      x0, [x0, #0xef8]
0x1d23c78: bl       #0x1b64570 | 
0x1d23c7c: mov      w8, #1
0x1d23c80: strb     w8, [x27, #0x8c0]
0x1d23c84: adrp     x8, #0x4186000
0x1d23c88: ldr      x8, [x8, #0xef8]
0x1d23c8c: ldr      x8, [x8]
0x1d23c90: ldr      x8, [x8, #0xb8]
0x1d23c94: ldr      x8, [x8]
0x1d23c98: cbz      x8, #0x1d24248
0x1d23c9c: ldr      x0, [x8, #0x70]
0x1d23ca0: cbz      x0, #0x1d24248
0x1d23ca4: adrp     x8, #0x4189000
0x1d23ca8: ldr      x8, [x8, #0xa98]
0x1d23cac: mov      w1, w21
0x1d23cb0: ldr      x2, [x8]
0x1d23cb4: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1d23cb8: cbz      x0, #0x1d24248
0x1d23cbc: ldr      x8, [x0, #0x10]
0x1d23cc0: mov      x23, x0
0x1d23cc4: cbz      x8, #0x1d24248
0x1d23cc8: cbz      x22, #0x1d24248
0x1d23ccc: ldr      x28, [x8, #0x10]
0x1d23cd0: cbz      x28, #0x1d24248
0x1d23cd4: ldr      x0, [x22, #0x10]
0x1d23cd8: cbz      x0, #0x1d24248
0x1d23cdc: ldr      x8, [x0]
0x1d23ce0: ldr      x1, [x28, #0x20]
0x1d23ce4: ldr      x9, [x8, #0x5e8]
0x1d23ce8: ldr      x2, [x8, #0x5f0]
0x1d23cec: blr      x9
0x1d23cf0: ldr      x8, [x28, #0x50]
0x1d23cf4: cbz      x8, #0x1d24248
0x1d23cf8: ldrsw    x9, [x23, #0x18]
0x1d23cfc: ldr      w10, [x8, #0x18]
0x1d23d00: cmp      w9, w10
0x1d23d04: b.hs     #0x1d2424c
0x1d23d08: ldr      x0, [x22, #0x18]
0x1d23d0c: cbz      x0, #0x1d24248
0x1d23d10: ldr      x10, [x0]
0x1d23d14: add      x8, x8, x9, lsl #3
0x1d23d18: ldr      x1, [x8, #0x20]
0x1d23d1c: ldr      x8, [x10, #0x5e8]
0x1d23d20: ldr      x2, [x10, #0x5f0]
0x1d23d24: blr      x8
0x1d23d28: ldr      x8, [x28, #0x30]
0x1d23d2c: cbz      x8, #0x1d24248
0x1d23d30: ldrsw    x9, [x23, #0x18]
0x1d23d34: ldr      w10, [x8, #0x18]
0x1d23d38: cmp      w9, w10
0x1d23d3c: b.hs     #0x1d2424c
0x1d23d40: add      x8, x8, x9, lsl #2
0x1d23d44: ldr      s0, [x8, #0x20]
0x1d23d48: ldr      x24, [x22, #0x20]
0x1d23d4c: fmov     s1, w25
0x1d23d50: add      x0, sp, #8
0x1d23d54: fcvtzs   w8, s0
0x1d23d58: fcmp     s0, s1
0x1d23d5c: csel     w8, w26, w8, eq
0x1d23d60: mov      x1, xzr
0x1d23d64: str      w8, [sp, #8]
0x1d23d68: bl       #0x3478b00 | System.Int32$$ToString
0x1d23d6c: adrp     x8, #0x418b000
0x1d23d70: ldr      x8, [x8, #0x2f8] | 0x418b2f8 'Lv.'
0x1d23d74: mov      x1, x0
0x1d23d78: mov      x2, xzr
0x1d23d7c: ldr      x8, [x8]
0x1d23d80: mov      x0, x8
0x1d23d84: bl       #0x32fce8c | System.String$$Concat
0x1d23d88: cbz      x24, #0x1d24248
0x1d23d8c: ldr      x8, [x24]
0x1d23d90: mov      x1, x0
0x1d23d94: mov      x0, x24
0x1d23d98: ldr      x9, [x8, #0x5e8]
0x1d23d9c: ldr      x2, [x8, #0x5f0]
0x1d23da0: blr      x9
0x1d23da4: ldr      x8, [x28, #0x30]
0x1d23da8: cbz      x8, #0x1d24248
0x1d23dac: ldrsw    x9, [x23, #0x18]
0x1d23db0: ldr      w10, [x8, #0x18]
0x1d23db4: cmp      w9, w10
0x1d23db8: b.hs     #0x1d2424c
0x1d23dbc: add      x8, x8, x9, lsl #2
0x1d23dc0: ldr      s0, [x8, #0x20]
0x1d23dc4: ldr      w8, [x19, #0x58]
0x1d23dc8: fmov     s1, w25
0x1d23dcc: fcvtzs   w9, s0
0x1d23dd0: fcmp     s0, s1
0x1d23dd4: csel     w9, w26, w9, eq
0x1d23dd8: add      w8, w9, w8
0x1d23ddc: str      w8, [x19, #0x58]
0x1d23de0: ldr      x8, [x23, #0x20]
0x1d23de4: cbz      x8, #0x1d24248
0x1d23de8: adrp     x9, #0x418b000
0x1d23dec: ldr      x24, [x22, #0x28]
0x1d23df0: ldr      w8, [x8, #0x10]
0x1d23df4: ldr      x9, [x9, #0x2f0] | 0x418b2f0 'D7'
0x1d23df8: add      x0, sp, #8
0x1d23dfc: mov      x2, xzr
0x1d23e00: str      w8, [sp, #8]
0x1d23e04: ldr      x1, [x9]
0x1d23e08: bl       #0x3478b94 | System.Int32$$ToString
0x1d23e0c: cbz      x24, #0x1d24248
0x1d23e10: ldr      x8, [x24]
0x1d23e14: mov      x1, x0
0x1d23e18: mov      x0, x24
0x1d23e1c: ldr      x9, [x8, #0x5e8]
0x1d23e20: ldr      x2, [x8, #0x5f0]
0x1d23e24: blr      x9
0x1d23e28: ldr      x8, [x23, #0x20]
0x1d23e2c: cbz      x8, #0x1d24248
0x1d23e30: ldr      w9, [sp, #0xc]
0x1d23e34: ldr      w10, [x8, #0x10]
0x1d23e38: add      x0, x8, #0x1c
0x1d23e3c: mov      x1, xzr
0x1d23e40: add      w9, w10, w9
0x1d23e44: str      w9, [sp, #0xc]
0x1d23e48: ldr      x24, [x22, #0x30]
0x1d23e4c: bl       #0x3478b00 | System.Int32$$ToString
0x1d23e50: cbz      x24, #0x1d24248
0x1d23e54: ldr      x8, [x24]
0x1d23e58: mov      x1, x0
0x1d23e5c: mov      x0, x24
0x1d23e60: ldr      x9, [x8, #0x5e8]
0x1d23e64: ldr      x2, [x8, #0x5f0]
0x1d23e68: blr      x9
0x1d23e6c: ldr      x8, [x23, #0x20]
0x1d23e70: cbz      x8, #0x1d24248
0x1d23e74: ldr      x24, [x22, #0x38]
0x1d23e78: add      x0, x8, #0x20
0x1d23e7c: mov      x1, xzr
0x1d23e80: bl       #0x3478b00 | System.Int32$$ToString
0x1d23e84: cbz      x24, #0x1d24248
0x1d23e88: ldr      x8, [x24]
0x1d23e8c: mov      x1, x0
0x1d23e90: mov      x0, x24
0x1d23e94: ldr      x9, [x8, #0x5e8]
0x1d23e98: ldr      x2, [x8, #0x5f0]
0x1d23e9c: blr      x9
0x1d23ea0: ldr      x8, [x23, #0x20]
0x1d23ea4: cbz      x8, #0x1d24248
0x1d23ea8: ldr      x24, [x22, #0x40]
0x1d23eac: add      x0, x8, #0x24
0x1d23eb0: mov      x1, xzr
0x1d23eb4: bl       #0x3478b00 | System.Int32$$ToString
0x1d23eb8: cbz      x24, #0x1d24248
0x1d23ebc: ldr      x8, [x24]
0x1d23ec0: mov      x1, x0
0x1d23ec4: mov      x0, x24
0x1d23ec8: ldr      x9, [x8, #0x5e8]
0x1d23ecc: ldr      x2, [x8, #0x5f0]
0x1d23ed0: blr      x9
0x1d23ed4: ldr      x8, [x23, #0x20]
0x1d23ed8: cbz      x8, #0x1d24248
0x1d23edc: ldr      x24, [x22, #0x48]
0x1d23ee0: add      x0, x8, #0x28
0x1d23ee4: mov      x1, xzr
0x1d23ee8: bl       #0x3478b00 | System.Int32$$ToString
0x1d23eec: cbz      x24, #0x1d24248
0x1d23ef0: ldr      x8, [x24]
0x1d23ef4: mov      x1, x0
0x1d23ef8: mov      x0, x24
0x1d23efc: ldr      x9, [x8, #0x5e8]
0x1d23f00: ldr      x2, [x8, #0x5f0]
0x1d23f04: blr      x9
0x1d23f08: ldr      x8, [x23, #0x20]
0x1d23f0c: cbz      x8, #0x1d24248
0x1d23f10: ldr      w20, [x8, #0x28]
0x1d23f14: ldr      x24, [x22, #0x50]
0x1d23f18: add      x0, x8, #0x2c
0x1d23f1c: mov      x1, xzr
0x1d23f20: bl       #0x3478b00 | System.Int32$$ToString
0x1d23f24: cbz      x24, #0x1d24248
0x1d23f28: ldr      x8, [x24]
0x1d23f2c: mov      x1, x0
0x1d23f30: mov      x0, x24
0x1d23f34: ldr      x9, [x8, #0x5e8]
0x1d23f38: ldr      x2, [x8, #0x5f0]
0x1d23f3c: blr      x9
0x1d23f40: ldr      x8, [x23, #0x20]
0x1d23f44: cbz      x8, #0x1d24248
0x1d23f48: ldr      x24, [x22, #0x58]
0x1d23f4c: add      x0, x8, #0x30
0x1d23f50: mov      x1, xzr
0x1d23f54: bl       #0x3478b00 | System.Int32$$ToString
0x1d23f58: cbz      x24, #0x1d24248
0x1d23f5c: ldr      x8, [x24]
0x1d23f60: mov      x1, x0
0x1d23f64: mov      x0, x24
0x1d23f68: ldr      x9, [x8, #0x5e8]
0x1d23f6c: ldr      x2, [x8, #0x5f0]
0x1d23f70: blr      x9
0x1d23f74: ldr      x8, [x23, #0x10]
0x1d23f78: cbz      x8, #0x1d24248
0x1d23f7c: ldr      x0, [x22, #0x60]
0x1d23f80: cbz      x0, #0x1d24248
0x1d23f84: ldr      x1, [x8, #0x58]
0x1d23f88: mov      x2, xzr
0x1d23f8c: add      w29, w20, w29
0x1d23f90: bl       #0x1daeef8 | AddressableImageLoader$$set_Code
0x1d23f94: ldr      x0, [x22, #0x60]
0x1d23f98: ldr      x1, [x28, #0x10]
0x1d23f9c: mov      x2, xzr
0x1d23fa0: bl       #0x1d0d458 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ApplyIllustrationMirror
0x1d23fa4: ldr      x0, [x22, #0x10]
0x1d23fa8: ldr      x1, [x28, #0x10]
0x1d23fac: mov      x2, xzr
0x1d23fb0: bl       #0x1d0d63c | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ApplyTextMirror
0x1d23fb4: add      w21, w21, #1
0x1d23fb8: cmp      w21, #3
0x1d23fbc: b.ne     #0x1d23c48
0x1d23fc0: adrp     x8, #0x418b000
0x1d23fc4: ldr      x21, [x19, #0x70]
0x1d23fc8: ldr      x8, [x8, #0x2f0] | 0x418b2f0 'D7'
0x1d23fcc: add      x0, sp, #0xc
0x1d23fd0: mov      x2, xzr
0x1d23fd4: ldr      x1, [x8]
0x1d23fd8: bl       #0x3478b94 | System.Int32$$ToString
0x1d23fdc: cbz      x21, #0x1d24248
0x1d23fe0: ldr      x8, [x21]
0x1d23fe4: mov      x1, x0
0x1d23fe8: mov      x0, x21
0x1d23fec: ldr      x9, [x8, #0x5e8]
0x1d23ff0: ldr      x2, [x8, #0x5f0]
0x1d23ff4: blr      x9
0x1d23ff8: adrp     x23, #0x4186000
0x1d23ffc: adrp     x24, #0x4186000
0x1d24000: ldr      x23, [x23, #0xed0] | 0x4186ed0 'LastChapterBackgroundCode'
0x1d24004: b        #0x3e994d4 | 
0x1d24008: ldr      w8, [sp, #4]
0x1d2400c: cbz      w8, #0x1d24020
0x1d24010: mov      x0, x19
0x1d24014: mov      w1, wzr
0x1d24018: bl       #0x1d24250 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$SetRating
0x1d2401c: b        #0x1d24134 | 
0x1d24020: ldrsw    x8, [sp, #0xc]
0x1d24024: mov      w9, #0x5556
0x1d24028: movk     w9, #0x5555, lsl #16
0x1d2402c: cmp      w29, #0
0x1d24030: mul      x8, x8, x9
0x1d24034: lsr      x9, x8, #0x3f
0x1d24038: lsr      x8, x8, #0x20
0x1d2403c: add      w1, w8, w9
0x1d24040: cset     w2, eq
0x1d24044: mov      x0, x19
0x1d24048: bl       #0x1d242bc | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$SetRatingWithScore
0x1d2404c: adrp     x8, #0x418b000
0x1d24050: ldr      x8, [x8, #0x2e0]
0x1d24054: ldr      x0, [x8]
0x1d24058: ldr      w8, [x0, #0xe0]
0x1d2405c: cbnz     w8, #0x1d24064
0x1d24060: bl       #0x1b646a4 | 
0x1d24064: bl       #0x1d24350 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$UnlockC9HiddenSongKeys
0x1d24068: ldrb     w8, [x27, #0x8c0]
0x1d2406c: cbnz     w8, #0x1d24084
0x1d24070: adrp     x0, #0x4186000
0x1d24074: ldr      x0, [x0, #0xef8]
0x1d24078: bl       #0x1b64570 | 
0x1d2407c: mov      w8, #1
0x1d24080: strb     w8, [x27, #0x8c0]
0x1d24084: adrp     x8, #0x4186000
0x1d24088: ldr      x8, [x8, #0xef8]
0x1d2408c: adrp     x9, #0x4189000
0x1d24090: ldr      x8, [x8]
0x1d24094: ldr      x9, [x9, #0xac8]
0x1d24098: ldr      x8, [x8, #0xb8]
0x1d2409c: ldr      x0, [x9]
0x1d240a0: ldr      x21, [x8]
0x1d240a4: ldr      w9, [x0, #0xe0]
0x1d240a8: cbnz     w9, #0x1d240b0
0x1d240ac: bl       #0x1b646a4 | 
0x1d240b0: mov      x0, x21
0x1d240b4: bl       #0x1d244dc | Phigros2.ChallengeMode.Scripts.SecretChallengeLifeRules$$ApplyAfterSuccess
0x1d240b8: ldr      w8, [sp, #0xc]
0x1d240bc: mov      w9, #0xc6c0
0x1d240c0: movk     w9, #0x2d, lsl #16
0x1d240c4: cmp      w8, w9
0x1d240c8: b.ge     #0x1d24114
0x1d240cc: mov      w9, #0xdc60
0x1d240d0: movk     w9, #0x2c, lsl #16
0x1d240d4: cmp      w8, w9
0x1d240d8: b.ge     #0x1d2411c
0x1d240dc: mov      w9, #0x7cd0
0x1d240e0: movk     w9, #0x2b, lsl #16
0x1d240e4: cmp      w8, w9
0x1d240e8: b.ge     #0x1d24124
0x1d240ec: mov      w9, #0x32e0
0x1d240f0: movk     w9, #0x29, lsl #16
0x1d240f4: cmp      w8, w9
0x1d240f8: b.ge     #0x1d2412c
0x1d240fc: mov      w9, #0x8960
0x1d24100: movk     w9, #0x25, lsl #16
0x1d24104: cmp      w8, w9
0x1d24108: b.lt     #0x1d24134
0x1d2410c: mov      w8, #1
0x1d24110: b        #0x1d24130 | 
0x1d24114: mov      w8, #5
0x1d24118: b        #0x1d24130 | 
0x1d2411c: mov      w8, #4
0x1d24120: b        #0x1d24130 | 
0x1d24124: mov      w8, #3
0x1d24128: b        #0x1d24130 | 
0x1d2412c: mov      w8, #2
0x1d24130: str      w8, [x19, #0x5c]
0x1d24134: ldr      x0, [x24]
0x1d24138: ldr      x21, [x19, #0x78]
0x1d2413c: mov      x1, xzr
0x1d24140: bl       #0x1db30e4 | IdBuilder$$BuildBlurBackgroundImageId
0x1d24144: adrp     x8, #0x4186000
0x1d24148: ldr      x8, [x8, #0xe68]
0x1d2414c: mov      x22, x0
0x1d24150: ldr      x8, [x8]
0x1d24154: ldr      w9, [x8, #0xe0]
0x1d24158: cbnz     w9, #0x1d24164
0x1d2415c: mov      x0, x8
0x1d24160: bl       #0x1b646a4 | 
0x1d24164: ldr      x0, [x23]
0x1d24168: mov      x1, x22
0x1d2416c: mov      x2, xzr
0x1d24170: bl       #0x1cc612c | SaveManagement$$LoadString
0x1d24174: cbz      x21, #0x1d24248
0x1d24178: mov      x1, x0
0x1d2417c: mov      x0, x21
0x1d24180: mov      x2, xzr
0x1d24184: bl       #0x1daeef8 | AddressableImageLoader$$set_Code
0x1d24188: ldr      x0, [x24]
0x1d2418c: ldr      x21, [x19, #0x80]
0x1d24190: mov      x1, xzr
0x1d24194: bl       #0x1db30e4 | IdBuilder$$BuildBlurBackgroundImageId
0x1d24198: ldr      x8, [x23]
0x1d2419c: mov      x1, x0
0x1d241a0: mov      x2, xzr
0x1d241a4: mov      x0, x8
0x1d241a8: bl       #0x1cc612c | SaveManagement$$LoadString
0x1d241ac: cbz      x21, #0x1d24248
0x1d241b0: mov      x1, x0
0x1d241b4: mov      x0, x21
0x1d241b8: mov      x2, xzr
0x1d241bc: bl       #0x1daeef8 | AddressableImageLoader$$set_Code
0x1d241c0: ldrb     w8, [x27, #0x8c0]
0x1d241c4: cbnz     w8, #0x1d241dc
0x1d241c8: adrp     x0, #0x4186000
0x1d241cc: ldr      x0, [x0, #0xef8]
0x1d241d0: bl       #0x1b64570 | 
0x1d241d4: mov      w8, #1
0x1d241d8: strb     w8, [x27, #0x8c0]
0x1d241dc: adrp     x8, #0x4186000
0x1d241e0: ldr      x8, [x8, #0xef8]
0x1d241e4: ldr      x8, [x8]
0x1d241e8: ldr      x8, [x8, #0xb8]
0x1d241ec: ldr      x20, [x8]
0x1d241f0: str      x20, [sp, #0x18]
0x1d241f4: cbz      x20, #0x1d24248
0x1d241f8: ldr      x0, [x19, #0x98]
0x1d241fc: cbz      x0, #0x1d24248
0x1d24200: ldrb     w8, [x20, #0x80]
0x1d24204: mov      x2, xzr
0x1d24208: cmp      w8, #0
0x1d2420c: cset     w1, eq
0x1d24210: bl       #0x3e7309c | UnityEngine.UI.Selectable$$set_interactable
0x1d24214: ldrb     w8, [x20, #0x80]
0x1d24218: cbz      w8, #0x1d24228
0x1d2421c: add      x1, sp, #0x10
0x1d24220: mov      x0, x19
0x1d24224: bl       #0x1d245b0 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<Start>g__SetSecretChallengeResult|27_0
0x1d24228: ldp      x20, x19, [sp, #0x70]
0x1d2422c: ldp      x22, x21, [sp, #0x60]
0x1d24230: ldp      x24, x23, [sp, #0x50]
0x1d24234: ldp      x26, x25, [sp, #0x40]
0x1d24238: ldp      x28, x27, [sp, #0x30]
0x1d2423c: ldp      x29, x30, [sp, #0x20]
0x1d24240: add      sp, sp, #0x80
0x1d24244: ret      
0x1d24248: bl       #0x1b647c8 | 
0x1d2424c: bl       #0x1b647d0 | 

// 0x1d245b0 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<Start>g__SetSecretChallengeResult|27_0
0x1d245b0: stp      x30, x21, [sp, #-0x20]!
0x1d245b4: stp      x20, x19, [sp, #0x10]
0x1d245b8: adrp     x21, #0x4475000
0x1d245bc: ldrb     w8, [x21, #0xcfa]
0x1d245c0: mov      x19, x1
0x1d245c4: mov      x20, x0
0x1d245c8: tbnz     w8, #0, #0x1d245e0
0x1d245cc: adrp     x0, #0x418b000
0x1d245d0: ldr      x0, [x0, #0x2e0]
0x1d245d4: bl       #0x1b64570 | 
0x1d245d8: mov      w8, #1
0x1d245dc: strb     w8, [x21, #0xcfa]
0x1d245e0: ldr      x0, [x20, #0xe0]
0x1d245e4: cbz      x0, #0x1d2469c
0x1d245e8: mov      w1, #1
0x1d245ec: mov      x2, xzr
0x1d245f0: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d245f4: ldr      x21, [x19, #8]
0x1d245f8: cbz      x21, #0x1d2469c
0x1d245fc: ldrb     w8, [x21, #0x90]
0x1d24600: cbz      w8, #0x1d2462c
0x1d24604: adrp     x8, #0x418b000
0x1d24608: ldr      x8, [x8, #0x2e0]
0x1d2460c: ldr      x0, [x8]
0x1d24610: ldr      w8, [x0, #0xe0]
0x1d24614: cbnz     w8, #0x1d2461c
0x1d24618: bl       #0x1b646a4 | 
0x1d2461c: mov      x0, x21
0x1d24620: bl       #0x1d246a0 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$HasHiddenChallengeSong
0x1d24624: eor      w21, w0, #1
0x1d24628: b        #0x1d24630 | 
0x1d2462c: mov      w21, wzr
0x1d24630: ldr      x0, [x20, #0xa0]
0x1d24634: cbz      x0, #0x1d2469c
0x1d24638: mvn      w8, w21
0x1d2463c: and      w1, w8, #1
0x1d24640: mov      x2, xzr
0x1d24644: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d24648: ldr      x0, [x20, #0xa8]
0x1d2464c: cbz      x0, #0x1d2469c
0x1d24650: and      w1, w21, #1
0x1d24654: mov      x2, xzr
0x1d24658: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d2465c: ldr      x0, [x20, #0xd8]
0x1d24660: cbz      x0, #0x1d2469c
0x1d24664: mov      w1, #1
0x1d24668: mov      x2, xzr
0x1d2466c: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d24670: mov      x0, x20
0x1d24674: mov      x1, x19
0x1d24678: bl       #0x1d25004 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<Start>g__SetLifeImage|27_1
0x1d2467c: mov      x0, x20
0x1d24680: mov      x1, x19
0x1d24684: bl       #0x1d2516c | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<Start>g__SetBackground|27_2
0x1d24688: mov      x0, x20
0x1d2468c: mov      x1, x19
0x1d24690: ldp      x20, x19, [sp, #0x10]
0x1d24694: ldp      x30, x21, [sp], #0x20
0x1d24698: b        #0x1d251b4 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<Start>g__SetDamageText|27_3
0x1d2469c: bl       #0x1b647c8 | 

// 0x1d24ee4 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$.cctor
0x1d24ee4: stp      x30, x23, [sp, #-0x30]!
0x1d24ee8: stp      x22, x21, [sp, #0x10]
0x1d24eec: stp      x20, x19, [sp, #0x20]
0x1d24ef0: adrp     x20, #0x4475000
0x1d24ef4: adrp     x21, #0x4186000
0x1d24ef8: adrp     x19, #0x4186000
0x1d24efc: ldrb     w8, [x20, #0xcf9]
0x1d24f00: ldr      x21, [x21, #0x3c0]
0x1d24f04: ldr      x19, [x19, #0x3c8]
0x1d24f08: tbnz     w8, #0, #0x1d24f74
0x1d24f0c: adrp     x0, #0x418b000
0x1d24f10: ldr      x0, [x0, #0x2e0]
0x1d24f14: bl       #0x1b64570 | 
0x1d24f18: adrp     x0, #0x4186000
0x1d24f1c: ldr      x0, [x0, #0xb70]
0x1d24f20: bl       #0x1b64570 | 
0x1d24f24: adrp     x0, #0x4186000
0x1d24f28: ldr      x0, [x0, #0x3c8]
0x1d24f2c: bl       #0x1b64570 | 
0x1d24f30: adrp     x0, #0x4186000
0x1d24f34: ldr      x0, [x0, #0x3c0]
0x1d24f38: bl       #0x1b64570 | 
0x1d24f3c: adrp     x0, #0x418a000
0x1d24f40: ldr      x0, [x0, #0x650] | 0x418a650 'C9ExoplanetaryMirageUnlocked'
0x1d24f44: bl       #0x1b64570 | 
0x1d24f48: adrp     x0, #0x418a000
0x1d24f4c: ldr      x0, [x0, #0x560] | 0x418a560 'ExoplanetaryMirage.かめりあ.0'
0x1d24f50: bl       #0x1b64570 | 
0x1d24f54: adrp     x0, #0x418a000
0x1d24f58: ldr      x0, [x0, #0x310] | 0x418a310 'C9EntranceToTheChaosUnlocked'
0x1d24f5c: bl       #0x1b64570 | 
0x1d24f60: adrp     x0, #0x418a000
0x1d24f64: ldr      x0, [x0, #0x368] | 0x418a368 'EntrancetotheChaos.打打だいずvssiromaru.0'
0x1d24f68: bl       #0x1b64570 | 
0x1d24f6c: mov      w8, #1
0x1d24f70: strb     w8, [x20, #0xcf9]
0x1d24f74: ldr      x0, [x21]
0x1d24f78: bl       #0x1b647b8 | 
0x1d24f7c: ldr      x1, [x19]
0x1d24f80: mov      x19, x0
0x1d24f84: bl       #0x2a11200 | System.Collections.Generic.Dictionary<object, object>$$.ctor
0x1d24f88: cbz      x19, #0x1d25000
0x1d24f8c: adrp     x8, #0x418a000
0x1d24f90: adrp     x9, #0x418a000
0x1d24f94: adrp     x20, #0x4186000
0x1d24f98: ldr      x8, [x8, #0x560] | 0x418a560 'ExoplanetaryMirage.かめりあ.0'
0x1d24f9c: ldr      x9, [x9, #0x650] | 0x418a650 'C9ExoplanetaryMirageUnlocked'
0x1d24fa0: ldr      x20, [x20, #0xb70]
0x1d24fa4: adrp     x21, #0x418a000
0x1d24fa8: ldr      x1, [x8]
0x1d24fac: ldr      x2, [x9]
0x1d24fb0: ldr      x3, [x20]
0x1d24fb4: adrp     x22, #0x418a000
0x1d24fb8: adrp     x23, #0x418b000
0x1d24fbc: ldr      x21, [x21, #0x368] | 0x418a368 'EntrancetotheChaos.打打だいずvssiromaru.0'
0x1d24fc0: ldr      x22, [x22, #0x310] | 0x418a310 'C9EntranceToTheChaosUnlocked'
0x1d24fc4: ldr      x23, [x23, #0x2e0]
0x1d24fc8: mov      x0, x19
0x1d24fcc: bl       #0x2a11b54 | System.Collections.Generic.Dictionary<object, object>$$Add
0x1d24fd0: ldr      x1, [x21]
0x1d24fd4: ldr      x2, [x22]
0x1d24fd8: ldr      x3, [x20]
0x1d24fdc: mov      x0, x19
0x1d24fe0: bl       #0x2a11b54 | System.Collections.Generic.Dictionary<object, object>$$Add
0x1d24fe4: ldr      x8, [x23]
0x1d24fe8: ldp      x22, x21, [sp, #0x10]
0x1d24fec: ldr      x8, [x8, #0xb8]
0x1d24ff0: str      x19, [x8]
0x1d24ff4: ldp      x20, x19, [sp, #0x20]
0x1d24ff8: ldp      x30, x23, [sp], #0x30
0x1d24ffc: ret      
0x1d25000: bl       #0x1b647c8 | 

// 0x1d41a90 C9AfterDeductionCaptionControl.<Caption>d__4$$MoveNext
0x1d41a90: stp      x30, x21, [sp, #-0x20]!
0x1d41a94: stp      x20, x19, [sp, #0x10]
0x1d41a98: adrp     x20, #0x4475000
0x1d41a9c: ldrb     w8, [x20, #0xdec]
0x1d41aa0: mov      x19, x0
0x1d41aa4: tbnz     w8, #0, #0x1d41b10
0x1d41aa8: adrp     x0, #0x418c000
0x1d41aac: ldr      x0, [x0, #0x58]
0x1d41ab0: bl       #0x1b64570 | 
0x1d41ab4: adrp     x0, #0x418c000
0x1d41ab8: ldr      x0, [x0, #0x60]
0x1d41abc: bl       #0x1b64570 | 
0x1d41ac0: adrp     x0, #0x418c000
0x1d41ac4: ldr      x0, [x0, #0x68]
0x1d41ac8: bl       #0x1b64570 | 
0x1d41acc: adrp     x0, #0x418c000
0x1d41ad0: ldr      x0, [x0, #0x70]
0x1d41ad4: bl       #0x1b64570 | 
0x1d41ad8: adrp     x0, #0x4187000
0x1d41adc: ldr      x0, [x0, #0x740]
0x1d41ae0: bl       #0x1b64570 | 
0x1d41ae4: adrp     x0, #0x4186000
0x1d41ae8: ldr      x0, [x0, #0x168]
0x1d41aec: bl       #0x1b64570 | 
0x1d41af0: adrp     x0, #0x4188000
0x1d41af4: ldr      x0, [x0, #0xad8]
0x1d41af8: bl       #0x1b64570 | 
0x1d41afc: adrp     x0, #0x4185000
0x1d41b00: ldr      x0, [x0, #0x2d8] | 0x41852d8 ''
0x1d41b04: bl       #0x1b64570 | 
0x1d41b08: mov      w8, #1
0x1d41b0c: strb     w8, [x20, #0xdec]
0x1d41b10: ldr      w8, [x19, #0x10]
0x1d41b14: cmp      w8, #8
0x1d41b18: b.hi     #0x1d41fb0
0x1d41b1c: ldr      x20, [x19, #0x20]
0x1d41b20: adrp     x9, #0xc36000
0x1d41b24: add      x9, x9, #0x452
0x1d41b28: adr      x10, #0x1d41b38
0x1d41b2c: ldrh     w11, [x9, x8, lsl #1]
0x1d41b30: add      x10, x10, x11, lsl #2
0x1d41b34: br       x10
0x1d41b38: mov      w8, #-1
0x1d41b3c: str      w8, [x19, #0x10]
0x1d41b40: adrp     x8, #0x4187000
0x1d41b44: ldr      x8, [x8, #0x740]
0x1d41b48: ldr      x0, [x8]
0x1d41b4c: bl       #0x1b647b8 | 
0x1d41b50: adrp     x8, #0x418c000
0x1d41b54: ldr      x8, [x8, #0x58]
0x1d41b58: mov      x1, x20
0x1d41b5c: mov      x3, xzr
0x1d41b60: mov      x21, x0
0x1d41b64: ldr      x2, [x8]
0x1d41b68: bl       #0x2c503d8 | System.Func<bool>$$.ctor
0x1d41b6c: adrp     x8, #0x4188000
0x1d41b70: ldr      x8, [x8, #0xad8]
0x1d41b74: ldr      x0, [x8]
0x1d41b78: bl       #0x1b647b8 | 
0x1d41b7c: mov      x1, x21
0x1d41b80: mov      x2, xzr
0x1d41b84: mov      x20, x0
0x1d41b88: bl       #0x3c66e5c | UnityEngine.WaitUntil$$.ctor
0x1d41b8c: mov      w0, #1
0x1d41b90: str      x20, [x19, #0x18]
0x1d41b94: str      w0, [x19, #0x10]
0x1d41b98: b        #0x1d41fb4 | 
0x1d41b9c: mov      w8, #-1
0x1d41ba0: str      w8, [x19, #0x10]
0x1d41ba4: cbz      x20, #0x1d41fc0
0x1d41ba8: ldr      x0, [x20, #0x28]
0x1d41bac: cbz      x0, #0x1d41fc0
0x1d41bb0: ldr      x8, [x0]
0x1d41bb4: fmov     s0, wzr
0x1d41bb8: fmov     s1, wzr
0x1d41bbc: fmov     s2, wzr
0x1d41bc0: ldr      x9, [x8, #0x2a8]
0x1d41bc4: ldr      x1, [x8, #0x2b0]
0x1d41bc8: fmov     s3, #1.00000000
0x1d41bcc: blr      x9
0x1d41bd0: ldr      x8, [x20, #0x30]
0x1d41bd4: cbz      x8, #0x1d41fc0
0x1d41bd8: ldr      w9, [x8, #0x18]
0x1d41bdc: cbz      w9, #0x1d41fc4
0x1d41be0: ldr      x0, [x20, #0x28]
0x1d41be4: cbz      x0, #0x1d41fc0
0x1d41be8: ldr      x9, [x0]
0x1d41bec: ldr      x1, [x8, #0x20]
0x1d41bf0: ldr      x8, [x9, #0x5e8]
0x1d41bf4: ldr      x2, [x9, #0x5f0]
0x1d41bf8: blr      x8
0x1d41bfc: adrp     x8, #0x4186000
0x1d41c00: ldr      x8, [x8, #0x168]
0x1d41c04: ldr      x0, [x8]
0x1d41c08: bl       #0x1b647b8 | 
0x1d41c0c: adrp     x8, #0xc35000
0x1d41c10: ldr      s0, [x8, #0x294]
0x1d41c14: mov      x1, xzr
0x1d41c18: mov      x20, x0
0x1d41c1c: bl       #0x3c66cf4 | UnityEngine.WaitForSeconds$$.ctor
0x1d41c20: str      x20, [x19, #0x18]
0x1d41c24: mov      w8, #2
0x1d41c28: b        #0x1d41f74 | 
0x1d41c2c: mov      w8, #-1
0x1d41c30: str      w8, [x19, #0x10]
0x1d41c34: cbz      x20, #0x1d41fc0
0x1d41c38: ldr      x0, [x20, #0x28]
0x1d41c3c: cbz      x0, #0x1d41fc0
0x1d41c40: adrp     x9, #0x4185000
0x1d41c44: ldr      x8, [x0]
0x1d41c48: ldr      x9, [x9, #0x2d8] | 0x41852d8 ''
0x1d41c4c: ldr      x2, [x8, #0x5f0]
0x1d41c50: ldr      x1, [x9]
0x1d41c54: ldr      x9, [x8, #0x5e8]
0x1d41c58: blr      x9
0x1d41c5c: adrp     x8, #0x4187000
0x1d41c60: ldr      x8, [x8, #0x740]
0x1d41c64: ldr      x0, [x8]
0x1d41c68: bl       #0x1b647b8 | 
0x1d41c6c: adrp     x8, #0x418c000
0x1d41c70: ldr      x8, [x8, #0x60]
0x1d41c74: mov      x1, x20
0x1d41c78: mov      x3, xzr
0x1d41c7c: mov      x21, x0
0x1d41c80: ldr      x2, [x8]
0x1d41c84: bl       #0x2c503d8 | System.Func<bool>$$.ctor
0x1d41c88: adrp     x8, #0x4188000
0x1d41c8c: ldr      x8, [x8, #0xad8]
0x1d41c90: ldr      x0, [x8]
0x1d41c94: bl       #0x1b647b8 | 
0x1d41c98: mov      x1, x21
0x1d41c9c: mov      x2, xzr
0x1d41ca0: mov      x20, x0
0x1d41ca4: bl       #0x3c66e5c | UnityEngine.WaitUntil$$.ctor
0x1d41ca8: str      x20, [x19, #0x18]
0x1d41cac: mov      w8, #3
0x1d41cb0: b        #0x1d41f74 | 
0x1d41cb4: mov      w8, #-1
0x1d41cb8: str      w8, [x19, #0x10]
0x1d41cbc: cbz      x20, #0x1d41fc0
0x1d41cc0: ldr      x0, [x20, #0x28]
0x1d41cc4: cbz      x0, #0x1d41fc0
0x1d41cc8: ldr      x8, [x0]
0x1d41ccc: fmov     s0, #1.00000000
0x1d41cd0: fmov     s1, #1.00000000
0x1d41cd4: fmov     s2, #1.00000000
0x1d41cd8: ldr      x9, [x8, #0x2a8]
0x1d41cdc: ldr      x1, [x8, #0x2b0]
0x1d41ce0: fmov     s3, #1.00000000
0x1d41ce4: blr      x9
0x1d41ce8: ldr      x8, [x20, #0x30]
0x1d41cec: cbz      x8, #0x1d41fc0
0x1d41cf0: ldr      w9, [x8, #0x18]
0x1d41cf4: cmp      w9, #1
0x1d41cf8: b.ls     #0x1d41fc4
0x1d41cfc: ldr      x0, [x20, #0x28]
0x1d41d00: cbz      x0, #0x1d41fc0
0x1d41d04: ldr      x9, [x0]
0x1d41d08: ldr      x1, [x8, #0x28]
0x1d41d0c: ldr      x8, [x9, #0x5e8]
0x1d41d10: ldr      x2, [x9, #0x5f0]
0x1d41d14: blr      x8
0x1d41d18: adrp     x8, #0x4186000
0x1d41d1c: ldr      x8, [x8, #0x168]
0x1d41d20: ldr      x0, [x8]
0x1d41d24: bl       #0x1b647b8 | 
0x1d41d28: fmov     s0, #1.50000000
0x1d41d2c: mov      x1, xzr
0x1d41d30: mov      x20, x0
0x1d41d34: bl       #0x3c66cf4 | UnityEngine.WaitForSeconds$$.ctor
0x1d41d38: mov      w8, #4
0x1d41d3c: str      x20, [x19, #0x18]
0x1d41d40: b        #0x1d41f74 | 
0x1d41d44: mov      w8, #-1
0x1d41d48: str      w8, [x19, #0x10]
0x1d41d4c: cbz      x20, #0x1d41fc0
0x1d41d50: ldr      x0, [x20, #0x28]
0x1d41d54: cbz      x0, #0x1d41fc0
0x1d41d58: adrp     x9, #0x4185000
0x1d41d5c: ldr      x8, [x0]
0x1d41d60: ldr      x9, [x9, #0x2d8] | 0x41852d8 ''
0x1d41d64: ldr      x2, [x8, #0x5f0]
0x1d41d68: ldr      x1, [x9]
0x1d41d6c: ldr      x9, [x8, #0x5e8]
0x1d41d70: blr      x9
0x1d41d74: adrp     x8, #0x4187000
0x1d41d78: ldr      x8, [x8, #0x740]
0x1d41d7c: ldr      x0, [x8]
0x1d41d80: bl       #0x1b647b8 | 
0x1d41d84: adrp     x8, #0x418c000
0x1d41d88: ldr      x8, [x8, #0x68]
0x1d41d8c: mov      x1, x20
0x1d41d90: mov      x3, xzr
0x1d41d94: mov      x21, x0
0x1d41d98: ldr      x2, [x8]
0x1d41d9c: bl       #0x2c503d8 | System.Func<bool>$$.ctor
0x1d41da0: adrp     x8, #0x4188000
0x1d41da4: ldr      x8, [x8, #0xad8]
0x1d41da8: ldr      x0, [x8]
0x1d41dac: bl       #0x1b647b8 | 
0x1d41db0: mov      x1, x21
0x1d41db4: mov      x2, xzr
0x1d41db8: mov      x20, x0
0x1d41dbc: bl       #0x3c66e5c | UnityEngine.WaitUntil$$.ctor
0x1d41dc0: str      x20, [x19, #0x18]
0x1d41dc4: mov      w8, #5
0x1d41dc8: b        #0x1d41f74 | 
0x1d41dcc: mov      w8, #-1
0x1d41dd0: str      w8, [x19, #0x10]
0x1d41dd4: cbz      x20, #0x1d41fc0
0x1d41dd8: ldr      x0, [x20, #0x28]
0x1d41ddc: cbz      x0, #0x1d41fc0
0x1d41de0: ldr      x8, [x0]
0x1d41de4: fmov     s0, #1.00000000
0x1d41de8: fmov     s1, #1.00000000
0x1d41dec: fmov     s2, #1.00000000
0x1d41df0: ldr      x9, [x8, #0x2a8]
0x1d41df4: ldr      x1, [x8, #0x2b0]
0x1d41df8: fmov     s3, #1.00000000
0x1d41dfc: blr      x9
0x1d41e00: ldr      x8, [x20, #0x30]
0x1d41e04: cbz      x8, #0x1d41fc0
0x1d41e08: ldr      w9, [x8, #0x18]
0x1d41e0c: cmp      w9, #3
0x1d41e10: b.ls     #0x1d41fc4
0x1d41e14: ldr      x0, [x20, #0x28]
0x1d41e18: cbz      x0, #0x1d41fc0
0x1d41e1c: ldr      x9, [x0]
0x1d41e20: ldr      x1, [x8, #0x38]
0x1d41e24: ldr      x8, [x9, #0x5e8]
0x1d41e28: ldr      x2, [x9, #0x5f0]
0x1d41e2c: blr      x8
0x1d41e30: adrp     x8, #0x4186000
0x1d41e34: ldr      x8, [x8, #0x168]
0x1d41e38: ldr      x0, [x8]
0x1d41e3c: bl       #0x1b647b8 | 
0x1d41e40: fmov     s0, #2.00000000
0x1d41e44: mov      x1, xzr
0x1d41e48: mov      x20, x0
0x1d41e4c: bl       #0x3c66cf4 | UnityEngine.WaitForSeconds$$.ctor
0x1d41e50: str      x20, [x19, #0x18]
0x1d41e54: mov      w8, #8
0x1d41e58: b        #0x1d41f74 | 
0x1d41e5c: mov      w8, #-1
0x1d41e60: str      w8, [x19, #0x10]
0x1d41e64: cbz      x20, #0x1d41fc0
0x1d41e68: ldr      x0, [x20, #0x28]
0x1d41e6c: cbz      x0, #0x1d41fc0
0x1d41e70: ldr      x8, [x0]
0x1d41e74: fmov     s0, #1.00000000
0x1d41e78: fmov     s1, #1.00000000
0x1d41e7c: fmov     s2, #1.00000000
0x1d41e80: ldr      x9, [x8, #0x2a8]
0x1d41e84: ldr      x1, [x8, #0x2b0]
0x1d41e88: fmov     s3, #1.00000000
0x1d41e8c: blr      x9
0x1d41e90: ldr      x8, [x20, #0x30]
0x1d41e94: cbz      x8, #0x1d41fc0
0x1d41e98: ldr      w9, [x8, #0x18]
0x1d41e9c: cmp      w9, #2
0x1d41ea0: b.ls     #0x1d41fc4
0x1d41ea4: ldr      x0, [x20, #0x28]
0x1d41ea8: cbz      x0, #0x1d41fc0
0x1d41eac: ldr      x9, [x0]
0x1d41eb0: ldr      x1, [x8, #0x30]
0x1d41eb4: ldr      x8, [x9, #0x5e8]
0x1d41eb8: ldr      x2, [x9, #0x5f0]
0x1d41ebc: blr      x8
0x1d41ec0: adrp     x8, #0x4186000
0x1d41ec4: ldr      x8, [x8, #0x168]
0x1d41ec8: ldr      x0, [x8]
0x1d41ecc: bl       #0x1b647b8 | 
0x1d41ed0: adrp     x8, #0xc35000
0x1d41ed4: ldr      s0, [x8, #0x1bc]
0x1d41ed8: mov      x1, xzr
0x1d41edc: mov      x20, x0
0x1d41ee0: bl       #0x3c66cf4 | UnityEngine.WaitForSeconds$$.ctor
0x1d41ee4: str      x20, [x19, #0x18]
0x1d41ee8: mov      w8, #6
0x1d41eec: b        #0x1d41f74 | 
0x1d41ef0: mov      w8, #-1
0x1d41ef4: str      w8, [x19, #0x10]
0x1d41ef8: cbz      x20, #0x1d41fc0
0x1d41efc: ldr      x0, [x20, #0x28]
0x1d41f00: cbz      x0, #0x1d41fc0
0x1d41f04: adrp     x9, #0x4185000
0x1d41f08: ldr      x8, [x0]
0x1d41f0c: ldr      x9, [x9, #0x2d8] | 0x41852d8 ''
0x1d41f10: ldr      x2, [x8, #0x5f0]
0x1d41f14: ldr      x1, [x9]
0x1d41f18: ldr      x9, [x8, #0x5e8]
0x1d41f1c: blr      x9
0x1d41f20: adrp     x8, #0x4187000
0x1d41f24: ldr      x8, [x8, #0x740]
0x1d41f28: ldr      x0, [x8]
0x1d41f2c: bl       #0x1b647b8 | 
0x1d41f30: adrp     x8, #0x418c000
0x1d41f34: ldr      x8, [x8, #0x70]
0x1d41f38: mov      x1, x20
0x1d41f3c: mov      x3, xzr
0x1d41f40: mov      x21, x0
0x1d41f44: ldr      x2, [x8]
0x1d41f48: bl       #0x2c503d8 | System.Func<bool>$$.ctor
0x1d41f4c: adrp     x8, #0x4188000
0x1d41f50: ldr      x8, [x8, #0xad8]
0x1d41f54: ldr      x0, [x8]
0x1d41f58: bl       #0x1b647b8 | 
0x1d41f5c: mov      x1, x21
0x1d41f60: mov      x2, xzr
0x1d41f64: mov      x20, x0
0x1d41f68: bl       #0x3c66e5c | UnityEngine.WaitUntil$$.ctor
0x1d41f6c: str      x20, [x19, #0x18]
0x1d41f70: mov      w8, #7
0x1d41f74: str      w8, [x19, #0x10]
0x1d41f78: mov      w0, #1
0x1d41f7c: b        #0x1d41fb4 | 
0x1d41f80: mov      w8, #-1
0x1d41f84: str      w8, [x19, #0x10]
0x1d41f88: cbz      x20, #0x1d41fc0
0x1d41f8c: ldr      x0, [x20, #0x28]
0x1d41f90: cbz      x0, #0x1d41fc0
0x1d41f94: adrp     x9, #0x4185000
0x1d41f98: ldr      x8, [x0]
0x1d41f9c: ldr      x9, [x9, #0x2d8] | 0x41852d8 ''
0x1d41fa0: ldr      x2, [x8, #0x5f0]
0x1d41fa4: ldr      x1, [x9]
0x1d41fa8: ldr      x9, [x8, #0x5e8]
0x1d41fac: blr      x9
0x1d41fb0: mov      w0, wzr
0x1d41fb4: ldp      x20, x19, [sp, #0x10]
0x1d41fb8: ldp      x30, x21, [sp], #0x20
0x1d41fbc: ret      
0x1d41fc0: bl       #0x1b647c8 | 
0x1d41fc4: bl       #0x1b647d0 | 

// 0x1d42014 C9AfterDeductionCaptionControl.<Start>d__3$$MoveNext
0x1d42014: stp      x30, x23, [sp, #-0x30]!
0x1d42018: stp      x22, x21, [sp, #0x10]
0x1d4201c: stp      x20, x19, [sp, #0x20]
0x1d42020: adrp     x20, #0x4475000
0x1d42024: ldrb     w8, [x20, #0xded]
0x1d42028: mov      x19, x0
0x1d4202c: tbnz     w8, #0, #0x1d42170
0x1d42030: adrp     x0, #0x418c000
0x1d42034: ldr      x0, [x0, #0x80]
0x1d42038: bl       #0x1b64570 | 
0x1d4203c: adrp     x0, #0x418c000
0x1d42040: ldr      x0, [x0, #0x88]
0x1d42044: bl       #0x1b64570 | 
0x1d42048: adrp     x0, #0x4187000
0x1d4204c: ldr      x0, [x0, #0x740]
0x1d42050: bl       #0x1b64570 | 
0x1d42054: adrp     x0, #0x4186000
0x1d42058: ldr      x0, [x0, #0xec0]
0x1d4205c: bl       #0x1b64570 | 
0x1d42060: adrp     x0, #0x4185000
0x1d42064: ldr      x0, [x0, #0x8a8]
0x1d42068: bl       #0x1b64570 | 
0x1d4206c: adrp     x0, #0x4188000
0x1d42070: ldr      x0, [x0, #0xad8]
0x1d42074: bl       #0x1b64570 | 
0x1d42078: adrp     x0, #0x418c000
0x1d4207c: ldr      x0, [x0, #0x90] | 0x418c090 '????: Excuse me…'
0x1d42080: bl       #0x1b64570 | 
0x1d42084: adrp     x0, #0x418c000
0x1d42088: ldr      x0, [x0, #0x98] | 0x418c098 '鸠：骗子……'
0x1d4208c: bl       #0x1b64570 | 
0x1d42090: adrp     x0, #0x418c000
0x1d42094: ldr      x0, [x0, #0xa0] | 0x418c0a0 '鳩：……'
0x1d42098: bl       #0x1b64570 | 
0x1d4209c: adrp     x0, #0x418c000
0x1d420a0: ldr      x0, [x0, #0xa8] | 0x418c0a8 'Gino：这是你的蝴蝶吗？'
0x1d420a4: bl       #0x1b64570 | 
0x1d420a8: adrp     x0, #0x418c000
0x1d420ac: ldr      x0, [x0, #0xb0] | 0x418c0b0 '지오펠리아: 거짓말쟁이……'
0x1d420b0: bl       #0x1b64570 | 
0x1d420b4: adrp     x0, #0x418c000
0x1d420b8: ldr      x0, [x0, #0xb8] | 0x418c0b8 '鸠：……'
0x1d420bc: bl       #0x1b64570 | 
0x1d420c0: adrp     x0, #0x418c000
0x1d420c4: ldr      x0, [x0, #0xc0] | 0x418c0c0 'Geopelia: …'
0x1d420c8: bl       #0x1b64570 | 
0x1d420cc: adrp     x0, #0x418c000
0x1d420d0: ldr      x0, [x0, #0xc8] | 0x418c0c8 '????：あの……'
0x1d420d4: bl       #0x1b64570 | 
0x1d420d8: adrp     x0, #0x418c000
0x1d420dc: ldr      x0, [x0, #0xd0] | 0x418c0d0 '鳩：騙子……'
0x1d420e0: bl       #0x1b64570 | 
0x1d420e4: adrp     x0, #0x418c000
0x1d420e8: ldr      x0, [x0, #0xd8] | 0x418c0d8 '지노: 이거 네 나비야?'
0x1d420ec: bl       #0x1b64570 | 
0x1d420f0: adrp     x0, #0x418c000
0x1d420f4: ldr      x0, [x0, #0xe0] | 0x418c0e0 'Gino: Is this yours?'
0x1d420f8: bl       #0x1b64570 | 
0x1d420fc: adrp     x0, #0x418c000
0x1d42100: ldr      x0, [x0, #0xe8] | 0x418c0e8 '????：请问……'
0x1d42104: bl       #0x1b64570 | 
0x1d42108: adrp     x0, #0x418c000
0x1d4210c: ldr      x0, [x0, #0xf0] | 0x418c0f0 'Geopelia: Liar…'
0x1d42110: bl       #0x1b64570 | 
0x1d42114: adrp     x0, #0x418c000
0x1d42118: ldr      x0, [x0, #0xf8] | 0x418c0f8 '????：請問……'
0x1d4211c: bl       #0x1b64570 | 
0x1d42120: adrp     x0, #0x418c000
0x1d42124: ldr      x0, [x0, #0x100] | 0x418c100 '????: 저기……'
0x1d42128: bl       #0x1b64570 | 
0x1d4212c: adrp     x0, #0x418c000
0x1d42130: ldr      x0, [x0, #0x108] | 0x418c108 'Gino：這是你的蝴蝶嗎？'
0x1d42134: bl       #0x1b64570 | 
0x1d42138: adrp     x0, #0x418c000
0x1d4213c: ldr      x0, [x0, #0x110] | 0x418c110 '지오펠리아: ……'
0x1d42140: bl       #0x1b64570 | 
0x1d42144: adrp     x0, #0x418c000
0x1d42148: ldr      x0, [x0, #0x118] | 0x418c118 'Gino：これ、君の蝶？'
0x1d4214c: bl       #0x1b64570 | 
0x1d42150: adrp     x0, #0x418c000
0x1d42154: ldr      x0, [x0, #0x120] | 0x418c120 '鳩：嘘つき……。'
0x1d42158: bl       #0x1b64570 | 
0x1d4215c: adrp     x0, #0x4185000
0x1d42160: ldr      x0, [x0, #0x2d8] | 0x41852d8 ''
0x1d42164: bl       #0x1b64570 | 
0x1d42168: mov      w8, #1
0x1d4216c: strb     w8, [x20, #0xded]
0x1d42170: ldr      w8, [x19, #0x10]
0x1d42174: ldr      x20, [x19, #0x20]
0x1d42178: cmp      w8, #2
0x1d4217c: b.eq     #0x1d42434
0x1d42180: cmp      w8, #1
0x1d42184: b.eq     #0x1d42460
0x1d42188: cbnz     w8, #0x1d42458
0x1d4218c: mov      w8, #-1
0x1d42190: str      w8, [x19, #0x10]
0x1d42194: adrp     x8, #0x4185000
0x1d42198: ldr      x8, [x8, #0x8a8]
0x1d4219c: mov      w1, #4
0x1d421a0: ldr      x0, [x8]
0x1d421a4: bl       #0x1b64614 | 
0x1d421a8: adrp     x23, #0x4186000
0x1d421ac: ldr      x23, [x23, #0xec0]
0x1d421b0: mov      x21, x0
0x1d421b4: ldr      x8, [x23]
0x1d421b8: mov      x0, x8
0x1d421bc: bl       #0x1b647b8 | 
0x1d421c0: mov      x1, xzr
0x1d421c4: mov      x22, x0
0x1d421c8: bl       #0x1cd9064 | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$.ctor
0x1d421cc: cbz      x22, #0x1d424d4
0x1d421d0: adrp     x8, #0x418c000
0x1d421d4: ldr      x8, [x8, #0x98] | 0x418c098 '鸠：骗子……'
0x1d421d8: adrp     x9, #0x418c000
0x1d421dc: mov      x0, x22
0x1d421e0: mov      x1, xzr
0x1d421e4: ldr      x8, [x8]
0x1d421e8: ldr      x9, [x9, #0xd0] | 0x418c0d0 '鳩：騙子……'
0x1d421ec: str      x8, [x22, #0x18]
0x1d421f0: ldr      x8, [x9]
0x1d421f4: adrp     x9, #0x418c000
0x1d421f8: ldr      x9, [x9, #0xf0] | 0x418c0f0 'Geopelia: Liar…'
0x1d421fc: str      x8, [x22, #0x20]
0x1d42200: ldr      x10, [x9]
0x1d42204: adrp     x9, #0x418c000
0x1d42208: ldr      x9, [x9, #0x120] | 0x418c120 '鳩：嘘つき……。'
0x1d4220c: ldr      x8, [x9]
0x1d42210: stp      x10, x8, [x22, #0x28]
0x1d42214: adrp     x8, #0x418c000
0x1d42218: ldr      x8, [x8, #0xb0] | 0x418c0b0 '지오펠리아: 거짓말쟁이……'
0x1d4221c: ldr      x8, [x8]
0x1d42220: str      x8, [x22, #0x38]
0x1d42224: bl       #0x1cd906c | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$get_LocaleText
0x1d42228: cbz      x21, #0x1d424d4
0x1d4222c: ldr      w8, [x21, #0x18]
0x1d42230: cbz      w8, #0x1d424d8
0x1d42234: str      x0, [x21, #0x20]
0x1d42238: ldr      x0, [x23]
0x1d4223c: bl       #0x1b647b8 | 
0x1d42240: mov      x1, xzr
0x1d42244: mov      x22, x0
0x1d42248: bl       #0x1cd9064 | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$.ctor
0x1d4224c: cbz      x22, #0x1d424d4
0x1d42250: adrp     x8, #0x418c000
0x1d42254: ldr      x8, [x8, #0xb8] | 0x418c0b8 '鸠：……'
0x1d42258: adrp     x9, #0x418c000
0x1d4225c: mov      x0, x22
0x1d42260: mov      x1, xzr
0x1d42264: ldr      x8, [x8]
0x1d42268: ldr      x9, [x9, #0xa0] | 0x418c0a0 '鳩：……'
0x1d4226c: str      x8, [x22, #0x18]
0x1d42270: ldr      x8, [x9]
0x1d42274: adrp     x9, #0x418c000
0x1d42278: ldr      x9, [x9, #0xc0] | 0x418c0c0 'Geopelia: …'
0x1d4227c: ldr      x9, [x9]
0x1d42280: str      x8, [x22, #0x30]
0x1d42284: stp      x8, x9, [x22, #0x20]
0x1d42288: adrp     x8, #0x418c000
0x1d4228c: ldr      x8, [x8, #0x110] | 0x418c110 '지오펠리아: ……'
0x1d42290: ldr      x8, [x8]
0x1d42294: str      x8, [x22, #0x38]
0x1d42298: bl       #0x1cd906c | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$get_LocaleText
0x1d4229c: ldr      w8, [x21, #0x18]
0x1d422a0: cmp      w8, #1
0x1d422a4: b.ls     #0x1d424d8
0x1d422a8: str      x0, [x21, #0x28]
0x1d422ac: ldr      x0, [x23]
0x1d422b0: bl       #0x1b647b8 | 
0x1d422b4: mov      x1, xzr
0x1d422b8: mov      x22, x0
0x1d422bc: bl       #0x1cd9064 | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$.ctor
0x1d422c0: cbz      x22, #0x1d424d4
0x1d422c4: adrp     x8, #0x418c000
0x1d422c8: ldr      x8, [x8, #0xe8] | 0x418c0e8 '????：请问……'
0x1d422cc: adrp     x9, #0x418c000
0x1d422d0: mov      x0, x22
0x1d422d4: mov      x1, xzr
0x1d422d8: ldr      x8, [x8]
0x1d422dc: ldr      x9, [x9, #0xf8] | 0x418c0f8 '????：請問……'
0x1d422e0: str      x8, [x22, #0x18]
0x1d422e4: ldr      x8, [x9]
0x1d422e8: adrp     x9, #0x418c000
0x1d422ec: ldr      x9, [x9, #0x90] | 0x418c090 '????: Excuse me…'
0x1d422f0: str      x8, [x22, #0x20]
0x1d422f4: ldr      x10, [x9]
0x1d422f8: adrp     x9, #0x418c000
0x1d422fc: ldr      x9, [x9, #0xc8] | 0x418c0c8 '????：あの……'
0x1d42300: ldr      x8, [x9]
0x1d42304: stp      x10, x8, [x22, #0x28]
0x1d42308: adrp     x8, #0x418c000
0x1d4230c: ldr      x8, [x8, #0x100] | 0x418c100 '????: 저기……'
0x1d42310: ldr      x8, [x8]
0x1d42314: str      x8, [x22, #0x38]
0x1d42318: bl       #0x1cd906c | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$get_LocaleText
0x1d4231c: ldr      w8, [x21, #0x18]
0x1d42320: cmp      w8, #2
0x1d42324: b.ls     #0x1d424d8
0x1d42328: str      x0, [x21, #0x30]
0x1d4232c: ldr      x0, [x23]
0x1d42330: bl       #0x1b647b8 | 
0x1d42334: mov      x1, xzr
0x1d42338: mov      x22, x0
0x1d4233c: bl       #0x1cd9064 | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$.ctor
0x1d42340: cbz      x22, #0x1d424d4
0x1d42344: adrp     x8, #0x418c000
0x1d42348: ldr      x8, [x8, #0xa8] | 0x418c0a8 'Gino：这是你的蝴蝶吗？'
0x1d4234c: adrp     x9, #0x418c000
0x1d42350: mov      x0, x22
0x1d42354: mov      x1, xzr
0x1d42358: ldr      x8, [x8]
0x1d4235c: ldr      x9, [x9, #0x108] | 0x418c108 'Gino：這是你的蝴蝶嗎？'
0x1d42360: str      x8, [x22, #0x18]
0x1d42364: ldr      x8, [x9]
0x1d42368: adrp     x9, #0x418c000
0x1d4236c: ldr      x9, [x9, #0xe0] | 0x418c0e0 'Gino: Is this yours?'
0x1d42370: str      x8, [x22, #0x20]
0x1d42374: ldr      x10, [x9]
0x1d42378: adrp     x9, #0x418c000
0x1d4237c: ldr      x9, [x9, #0x118] | 0x418c118 'Gino：これ、君の蝶？'
0x1d42380: ldr      x8, [x9]
0x1d42384: stp      x10, x8, [x22, #0x28]
0x1d42388: adrp     x8, #0x418c000
0x1d4238c: ldr      x8, [x8, #0xd8] | 0x418c0d8 '지노: 이거 네 나비야?'
0x1d42390: ldr      x8, [x8]
0x1d42394: str      x8, [x22, #0x38]
0x1d42398: bl       #0x1cd906c | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$get_LocaleText
0x1d4239c: ldr      w8, [x21, #0x18]
0x1d423a0: cmp      w8, #3
0x1d423a4: b.ls     #0x1d424d8
0x1d423a8: str      x0, [x21, #0x38]
0x1d423ac: cbz      x20, #0x1d424d4
0x1d423b0: ldr      x0, [x20, #0x28]
0x1d423b4: str      x21, [x20, #0x30]
0x1d423b8: cbz      x0, #0x1d424d4
0x1d423bc: adrp     x9, #0x4185000
0x1d423c0: ldr      x8, [x0]
0x1d423c4: ldr      x9, [x9, #0x2d8] | 0x41852d8 ''
0x1d423c8: ldr      x2, [x8, #0x5f0]
0x1d423cc: ldr      x1, [x9]
0x1d423d0: ldr      x9, [x8, #0x5e8]
0x1d423d4: blr      x9
0x1d423d8: adrp     x8, #0x4187000
0x1d423dc: ldr      x8, [x8, #0x740]
0x1d423e0: ldr      x0, [x8]
0x1d423e4: bl       #0x1b647b8 | 
0x1d423e8: adrp     x8, #0x418c000
0x1d423ec: ldr      x8, [x8, #0x80]
0x1d423f0: mov      x1, x20
0x1d423f4: mov      x3, xzr
0x1d423f8: mov      x21, x0
0x1d423fc: ldr      x2, [x8]
0x1d42400: bl       #0x2c503d8 | System.Func<bool>$$.ctor
0x1d42404: adrp     x8, #0x4188000
0x1d42408: ldr      x8, [x8, #0xad8]
0x1d4240c: ldr      x0, [x8]
0x1d42410: bl       #0x1b647b8 | 
0x1d42414: mov      x1, x21
0x1d42418: mov      x2, xzr
0x1d4241c: mov      x20, x0
0x1d42420: bl       #0x3c66e5c | UnityEngine.WaitUntil$$.ctor
0x1d42424: mov      w0, #1
0x1d42428: str      x20, [x19, #0x18]
0x1d4242c: str      w0, [x19, #0x10]
0x1d42430: b        #0x1d424c4 | 
0x1d42434: mov      w8, #-1
0x1d42438: str      w8, [x19, #0x10]
0x1d4243c: cbz      x20, #0x1d424d4
0x1d42440: mov      x0, x20
0x1d42444: bl       #0x1d418f4 | C9AfterDeductionCaptionControl$$Caption
0x1d42448: mov      x1, x0
0x1d4244c: mov      x0, x20
0x1d42450: mov      x2, xzr
0x1d42454: bl       #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1d42458: mov      w0, wzr
0x1d4245c: b        #0x1d424c4 | 
0x1d42460: mov      w8, #-1
0x1d42464: str      w8, [x19, #0x10]
0x1d42468: adrp     x8, #0x4187000
0x1d4246c: ldr      x8, [x8, #0x740]
0x1d42470: ldr      x0, [x8]
0x1d42474: bl       #0x1b647b8 | 
0x1d42478: adrp     x8, #0x418c000
0x1d4247c: ldr      x8, [x8, #0x88]
0x1d42480: mov      x1, x20
0x1d42484: mov      x3, xzr
0x1d42488: mov      x21, x0
0x1d4248c: ldr      x2, [x8]
0x1d42490: bl       #0x2c503d8 | System.Func<bool>$$.ctor
0x1d42494: adrp     x8, #0x4188000
0x1d42498: ldr      x8, [x8, #0xad8]
0x1d4249c: ldr      x0, [x8]
0x1d424a0: bl       #0x1b647b8 | 
0x1d424a4: mov      x1, x21
0x1d424a8: mov      x2, xzr
0x1d424ac: mov      x20, x0
0x1d424b0: bl       #0x3c66e5c | UnityEngine.WaitUntil$$.ctor
0x1d424b4: mov      w8, #2
0x1d424b8: str      x20, [x19, #0x18]
0x1d424bc: str      w8, [x19, #0x10]
0x1d424c0: mov      w0, #1
0x1d424c4: ldp      x20, x19, [sp, #0x20]
0x1d424c8: ldp      x22, x21, [sp, #0x10]
0x1d424cc: ldp      x30, x23, [sp], #0x30
0x1d424d0: ret      
0x1d424d4: bl       #0x1b647c8 | 
0x1d424d8: bl       #0x1b647d0 | 

// 0x1d4295c C9AfterDeductionControl.<Start>d__12$$MoveNext
0x1d4295c: stp      d9, d8, [sp, #-0x40]!
0x1d42960: str      x30, [sp, #0x10]
0x1d42964: stp      x22, x21, [sp, #0x20]
0x1d42968: stp      x20, x19, [sp, #0x30]
0x1d4296c: adrp     x20, #0x4475000
0x1d42970: ldrb     w8, [x20, #0xdf2]
0x1d42974: mov      x19, x0
0x1d42978: tbnz     w8, #0, #0x1d42a08
0x1d4297c: adrp     x0, #0x4186000
0x1d42980: ldr      x0, [x0, #0xe68]
0x1d42984: bl       #0x1b64570 | 
0x1d42988: adrp     x0, #0x4186000
0x1d4298c: ldr      x0, [x0, #0x168]
0x1d42990: bl       #0x1b64570 | 
0x1d42994: adrp     x0, #0x4187000
0x1d42998: ldr      x0, [x0, #0x6a8] | 0x41876a8 '4.0'
0x1d4299c: bl       #0x1b64570 | 
0x1d429a0: adrp     x0, #0x4187000
0x1d429a4: ldr      x0, [x0, #0x6b0] | 0x41876b0 'GameCompleted'
0x1d429a8: bl       #0x1b64570 | 
0x1d429ac: adrp     x0, #0x4188000
0x1d429b0: ldr      x0, [x0, #0xf28] | 0x4188f28 'C9PendingMessageAfterQuit'
0x1d429b4: bl       #0x1b64570 | 
0x1d429b8: adrp     x0, #0x4188000
0x1d429bc: ldr      x0, [x0, #0xf38] | 0x4188f38 'C9PendingMessageLevel'
0x1d429c0: bl       #0x1b64570 | 
0x1d429c4: adrp     x0, #0x418a000
0x1d429c8: ldr      x0, [x0, #0xec0] | 0x418aec0 'C9HateUnlocked'
0x1d429cc: bl       #0x1b64570 | 
0x1d429d0: adrp     x0, #0x418c000
0x1d429d4: ldr      x0, [x0, #0x140] | 0x418c140 'C9DesultorySignalsUnlocked'
0x1d429d8: bl       #0x1b64570 | 
0x1d429dc: adrp     x0, #0x418c000
0x1d429e0: ldr      x0, [x0, #0x148] | 0x418c148 'C9MessageUnlocked'
0x1d429e4: bl       #0x1b64570 | 
0x1d429e8: adrp     x0, #0x4187000
0x1d429ec: ldr      x0, [x0, #0xca8] | 0x4187ca8 'Chapter9Phase2Passed'
0x1d429f0: bl       #0x1b64570 | 
0x1d429f4: adrp     x0, #0x418c000
0x1d429f8: ldr      x0, [x0, #0x150] | 0x418c150 'C9HappyEndingUnlocked'
0x1d429fc: bl       #0x1b64570 | 
0x1d42a00: mov      w8, #1
0x1d42a04: strb     w8, [x20, #0xdf2]
0x1d42a08: ldr      w8, [x19, #0x10]
0x1d42a0c: cmp      w8, #4
0x1d42a10: b.hi     #0x1d42cb4
0x1d42a14: ldr      x21, [x19, #0x20]
0x1d42a18: adrp     x9, #0xc36000
0x1d42a1c: add      x9, x9, #0x464
0x1d42a20: adr      x10, #0x1d42a30
0x1d42a24: ldrb     w11, [x9, x8]
0x1d42a28: add      x10, x10, x11, lsl #2
0x1d42a2c: br       x10
0x1d42a30: mov      w8, #-1
0x1d42a34: str      w8, [x19, #0x10]
0x1d42a38: adrp     x8, #0x4186000
0x1d42a3c: ldr      x8, [x8, #0xe68]
0x1d42a40: ldr      x0, [x8]
0x1d42a44: ldr      w8, [x0, #0xe0]
0x1d42a48: cbnz     w8, #0x1d42a50
0x1d42a4c: bl       #0x1b646a4 | 
0x1d42a50: adrp     x8, #0x4187000
0x1d42a54: ldr      x8, [x8, #0xca8] | 0x4187ca8 'Chapter9Phase2Passed'
0x1d42a58: mov      w1, #1
0x1d42a5c: mov      x2, xzr
0x1d42a60: mov      w20, #1
0x1d42a64: ldr      x0, [x8]
0x1d42a68: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d42a6c: adrp     x8, #0x418a000
0x1d42a70: ldr      x8, [x8, #0xec0] | 0x418aec0 'C9HateUnlocked'
0x1d42a74: mov      w1, #1
0x1d42a78: mov      x2, xzr
0x1d42a7c: ldr      x0, [x8]
0x1d42a80: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d42a84: adrp     x8, #0x418c000
0x1d42a88: ldr      x8, [x8, #0x140] | 0x418c140 'C9DesultorySignalsUnlocked'
0x1d42a8c: mov      w1, #1
0x1d42a90: mov      x2, xzr
0x1d42a94: ldr      x0, [x8]
0x1d42a98: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d42a9c: adrp     x8, #0x418c000
0x1d42aa0: ldr      x8, [x8, #0x148] | 0x418c148 'C9MessageUnlocked'
0x1d42aa4: mov      w1, #1
0x1d42aa8: mov      x2, xzr
0x1d42aac: ldr      x0, [x8]
0x1d42ab0: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d42ab4: adrp     x8, #0x418c000
0x1d42ab8: ldr      x8, [x8, #0x150] | 0x418c150 'C9HappyEndingUnlocked'
0x1d42abc: mov      w1, #1
0x1d42ac0: mov      x2, xzr
0x1d42ac4: ldr      x0, [x8]
0x1d42ac8: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d42acc: adrp     x8, #0x4188000
0x1d42ad0: ldr      x8, [x8, #0xf28] | 0x4188f28 'C9PendingMessageAfterQuit'
0x1d42ad4: mov      x1, xzr
0x1d42ad8: ldr      x0, [x8]
0x1d42adc: bl       #0x1cc4ef4 | SaveManagement$$DeleteKey
0x1d42ae0: adrp     x8, #0x4188000
0x1d42ae4: ldr      x8, [x8, #0xf38] | 0x4188f38 'C9PendingMessageLevel'
0x1d42ae8: mov      x1, xzr
0x1d42aec: ldr      x0, [x8]
0x1d42af0: bl       #0x1cc4ef4 | SaveManagement$$DeleteKey
0x1d42af4: adrp     x8, #0x4187000
0x1d42af8: adrp     x9, #0x4187000
0x1d42afc: ldr      x8, [x8, #0x6b0] | 0x41876b0 'GameCompleted'
0x1d42b00: ldr      x9, [x9, #0x6a8] | 0x41876a8 '4.0'
0x1d42b04: mov      x2, xzr
0x1d42b08: ldr      x0, [x8]
0x1d42b0c: ldr      x1, [x9]
0x1d42b10: bl       #0x1cc5240 | SaveManagement$$SaveString
0x1d42b14: adrp     x22, #0x4475000
0x1d42b18: ldrb     w8, [x22, #0x8c0]
0x1d42b1c: cbnz     w8, #0x1d42b30
0x1d42b20: adrp     x0, #0x4186000
0x1d42b24: ldr      x0, [x0, #0xef8]
0x1d42b28: bl       #0x1b64570 | 
0x1d42b2c: strb     w20, [x22, #0x8c0]
0x1d42b30: adrp     x8, #0x4186000
0x1d42b34: ldr      x8, [x8, #0xef8]
0x1d42b38: ldr      x8, [x8]
0x1d42b3c: ldr      x8, [x8, #0xb8]
0x1d42b40: ldr      x8, [x8]
0x1d42b44: cbz      x8, #0x1d42db8
0x1d42b48: ldr      x0, [x8, #0xa0]
0x1d42b4c: cbz      x0, #0x1d42db8
0x1d42b50: mov      x1, xzr
0x1d42b54: bl       #0x1ca91e8 | GetCollectionControl$$EvaluateStateUnlocks
0x1d42b58: mov      x0, xzr
0x1d42b5c: bl       #0x3c5aec0 | UnityEngine.PlayerPrefs$$Save
0x1d42b60: cbz      x21, #0x1d42d60
0x1d42b64: ldr      x0, [x21, #0x50]
0x1d42b68: cbz      x0, #0x1d42d64
0x1d42b6c: mov      x1, xzr
0x1d42b70: bl       #0x3e953dc | UnityEngine.Video.VideoPlayer$$Prepare
0x1d42b74: adrp     x8, #0x4186000
0x1d42b78: ldr      x8, [x8, #0x168]
0x1d42b7c: ldr      x0, [x8]
0x1d42b80: bl       #0x1b647b8 | 
0x1d42b84: fmov     s0, #1.00000000
0x1d42b88: mov      x1, xzr
0x1d42b8c: mov      x20, x0
0x1d42b90: bl       #0x3c66cf4 | UnityEngine.WaitForSeconds$$.ctor
0x1d42b94: mov      w0, #1
0x1d42b98: str      x20, [x19, #0x18]
0x1d42b9c: str      w0, [x19, #0x10]
0x1d42ba0: b        #0x1d42d3c | 
0x1d42ba4: mov      w8, #-1
0x1d42ba8: str      w8, [x19, #0x10]
0x1d42bac: cbnz     x21, #0x1d42cdc
0x1d42bb0: b        #0x1d42db8 | 
0x1d42bb4: mov      w8, #-1
0x1d42bb8: str      w8, [x19, #0x10]
0x1d42bbc: cbz      x21, #0x1d42d50
0x1d42bc0: ldr      x0, [x21, #0x50]
0x1d42bc4: cbz      x0, #0x1d42d58
0x1d42bc8: mov      x1, xzr
0x1d42bcc: bl       #0x3e956bc | UnityEngine.Video.VideoPlayer$$get_time
0x1d42bd0: fcvt     s8, d0
0x1d42bd4: ldr      x0, [x21, #0x60]
0x1d42bd8: cbz      x0, #0x1d42db8
0x1d42bdc: ldr      d9, [x21, #0x20]
0x1d42be0: mov      x1, xzr
0x1d42be4: bl       #0x3c6b37c | UnityEngine.Transform$$get_position
0x1d42be8: mov      x0, xzr
0x1d42bec: mov      v0.s[1], v1.s[0]
0x1d42bf0: fsub     v0.2s, v9.2s, v0.2s
0x1d42bf4: str      d0, [x21, #0x28]
0x1d42bf8: bl       #0x3c22cb4 | UnityEngine.Camera$$get_main
0x1d42bfc: adrp     x8, #0xc35000
0x1d42c00: ldr      s0, [x8, #0x19c]
0x1d42c04: str      x0, [x19, #0x28]
0x1d42c08: fcmp     s8, s0
0x1d42c0c: b.pl     #0x1d42cec
0x1d42c10: mov      w8, #0x3f800000
0x1d42c14: fmov     s0, #1.00000000
0x1d42c18: str      w8, [x19, #0x30]
0x1d42c1c: b        #0x1d42c48 | 
0x1d42c20: ldr      s8, [x19, #0x30]
0x1d42c24: mov      w8, #-1
0x1d42c28: mov      x0, xzr
0x1d42c2c: str      w8, [x19, #0x10]
0x1d42c30: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1d42c34: ldr      x0, [x19, #0x28]
0x1d42c38: fsub     s0, s8, s0
0x1d42c3c: fcmp     s0, #0.0
0x1d42c40: str      s0, [x19, #0x30]
0x1d42c44: b.le     #0x1d42cbc
0x1d42c48: cbz      x0, #0x1d42db8
0x1d42c4c: fmov     s3, #1.00000000
0x1d42c50: mov      v1.16b, v0.16b
0x1d42c54: mov      v2.16b, v0.16b
0x1d42c58: mov      x1, xzr
0x1d42c5c: bl       #0x3c20700 | UnityEngine.Camera$$set_backgroundColor
0x1d42c60: mov      w8, #3
0x1d42c64: str      xzr, [x19, #0x18]
0x1d42c68: b        #0x1d42d34 | 
0x1d42c6c: mov      w8, #-1
0x1d42c70: str      w8, [x19, #0x10]
0x1d42c74: cbz      x21, #0x1d42d54
0x1d42c78: ldr      x0, [x21, #0x50]
0x1d42c7c: cbz      x0, #0x1d42d5c
0x1d42c80: mov      x1, xzr
0x1d42c84: bl       #0x3e95554 | UnityEngine.Video.VideoPlayer$$Play
0x1d42c88: adrp     x8, #0x4186000
0x1d42c8c: ldr      x8, [x8, #0x168]
0x1d42c90: ldr      x0, [x8]
0x1d42c94: bl       #0x1b647b8 | 
0x1d42c98: fmov     s0, #10.00000000
0x1d42c9c: mov      x1, xzr
0x1d42ca0: mov      x20, x0
0x1d42ca4: bl       #0x3c66cf4 | UnityEngine.WaitForSeconds$$.ctor
0x1d42ca8: str      x20, [x19, #0x18]
0x1d42cac: mov      w8, #2
0x1d42cb0: b        #0x1d42d34 | 
0x1d42cb4: mov      w0, wzr
0x1d42cb8: b        #0x1d42d3c | 
0x1d42cbc: cbz      x0, #0x1d42db8
0x1d42cc0: fmov     s0, wzr
0x1d42cc4: fmov     s1, wzr
0x1d42cc8: fmov     s2, wzr
0x1d42ccc: fmov     s3, #1.00000000
0x1d42cd0: mov      x1, xzr
0x1d42cd4: bl       #0x3c20700 | UnityEngine.Camera$$set_backgroundColor
0x1d42cd8: cbz      x21, #0x1d42db8
0x1d42cdc: mov      w0, wzr
0x1d42ce0: mov      w8, #1
0x1d42ce4: strb     w8, [x21, #0x40]
0x1d42ce8: b        #0x1d42d3c | 
0x1d42cec: cbz      x0, #0x1d42db8
0x1d42cf0: fmov     s0, wzr
0x1d42cf4: fmov     s1, wzr
0x1d42cf8: fmov     s2, wzr
0x1d42cfc: fmov     s3, #1.00000000
0x1d42d00: mov      x1, xzr
0x1d42d04: bl       #0x3c20700 | UnityEngine.Camera$$set_backgroundColor
0x1d42d08: adrp     x8, #0x4186000
0x1d42d0c: ldr      s9, [x21, #0x58]
0x1d42d10: ldr      x8, [x8, #0x168]
0x1d42d14: ldr      x0, [x8]
0x1d42d18: bl       #0x1b647b8 | 
0x1d42d1c: fsub     s0, s9, s8
0x1d42d20: mov      x1, xzr
0x1d42d24: mov      x20, x0
0x1d42d28: bl       #0x3c66cf4 | UnityEngine.WaitForSeconds$$.ctor
0x1d42d2c: str      x20, [x19, #0x18]
0x1d42d30: mov      w8, #4
0x1d42d34: str      w8, [x19, #0x10]
0x1d42d38: mov      w0, #1
0x1d42d3c: ldp      x20, x19, [sp, #0x30]
0x1d42d40: ldp      x22, x21, [sp, #0x20]
0x1d42d44: ldr      x30, [sp, #0x10]
0x1d42d48: ldp      d9, d8, [sp], #0x40
0x1d42d4c: ret      
0x1d42d50: bl       #0x1b647c8 | 
0x1d42d54: bl       #0x1b647c8 | 
0x1d42d58: bl       #0x1b647c8 | 
0x1d42d5c: bl       #0x1b647c8 | 
0x1d42d60: bl       #0x1b647c8 | 
0x1d42d64: bl       #0x1b647c8 | 
0x1d42d68: b        #0x1d42dec | 
0x1d42d6c: b        #0x1d42d78 | 
0x1d42d70: b        #0x1d42d78 | 
0x1d42d74: b        #0x1d42e58 | 
0x1d42d78: mov      x20, x0
0x1d42d7c: cmp      w1, #1
0x1d42d80: b.ne     #0x1d42ebc
0x1d42d84: mov      x0, x20
0x1d42d88: bl       #0x3e998d0 | 
0x1d42d8c: mov      x20, x0
0x1d42d90: adrp     x0, #0x4185000
0x1d42d94: ldr      x0, [x0, #0x910]
0x1d42d98: bl       #0x1b64584 | 
0x1d42d9c: ldr      x8, [x20]
0x1d42da0: ldr      x1, [x8]
0x1d42da4: bl       #0x1b64bf8 | 
0x1d42da8: tbz      w0, #0, #0x1d42dbc
0x1d42dac: bl       #0x3e998e0 | 
0x1d42db0: fmov     s8, wzr
0x1d42db4: cbnz     x21, #0x1d42bd4
0x1d42db8: bl       #0x1b647c8 | 
0x1d42dbc: mov      w0, #8
0x1d42dc0: bl       #0x3e998f0 | 
0x1d42dc4: ldr      x8, [x20]
0x1d42dc8: str      x8, [x0]
0x1d42dcc: adrp     x1, #0x3e9f000
0x1d42dd0: add      x1, x1, #0xc98
0x1d42dd4: mov      x2, xzr
0x1d42dd8: bl       #0x3e99900 | 
0x1d42ddc: b        #0x1d42eb4 | 
0x1d42de0: mov      x20, x0
0x1d42de4: bl       #0x3e998e0 | 
0x1d42de8: b        #0x1d42ebc | 
0x1d42dec: mov      x20, x0
0x1d42df0: cmp      w1, #1
0x1d42df4: b.ne     #0x1d42ebc
0x1d42df8: mov      x0, x20
0x1d42dfc: bl       #0x3e998d0 | 
0x1d42e00: mov      x20, x0
0x1d42e04: adrp     x0, #0x4185000
0x1d42e08: ldr      x0, [x0, #0x910]
0x1d42e0c: bl       #0x1b64584 | 
0x1d42e10: ldr      x8, [x20]
0x1d42e14: ldr      x1, [x8]
0x1d42e18: bl       #0x1b64bf8 | 
0x1d42e1c: tbz      w0, #0, #0x1d42e28
0x1d42e20: bl       #0x3e998e0 | 
0x1d42e24: b        #0x1d42b74 | 
0x1d42e28: mov      w0, #8
0x1d42e2c: bl       #0x3e998f0 | 
0x1d42e30: ldr      x8, [x20]
0x1d42e34: str      x8, [x0]
0x1d42e38: adrp     x1, #0x3e9f000
0x1d42e3c: add      x1, x1, #0xc98
0x1d42e40: mov      x2, xzr
0x1d42e44: bl       #0x3e99900 | 
0x1d42e48: b        #0x1d42eb4 | 
0x1d42e4c: mov      x20, x0
0x1d42e50: bl       #0x3e998e0 | 
0x1d42e54: b        #0x1d42ebc | 
0x1d42e58: mov      x20, x0
0x1d42e5c: cmp      w1, #1
0x1d42e60: b.ne     #0x1d42ebc
0x1d42e64: mov      x0, x20
0x1d42e68: bl       #0x3e998d0 | 
0x1d42e6c: mov      x20, x0
0x1d42e70: adrp     x0, #0x4185000
0x1d42e74: ldr      x0, [x0, #0x910]
0x1d42e78: bl       #0x1b64584 | 
0x1d42e7c: ldr      x8, [x20]
0x1d42e80: ldr      x1, [x8]
0x1d42e84: bl       #0x1b64bf8 | 
0x1d42e88: tbz      w0, #0, #0x1d42e94
0x1d42e8c: bl       #0x3e998e0 | 
0x1d42e90: b        #0x1d42c88 | 
0x1d42e94: mov      w0, #8
0x1d42e98: bl       #0x3e998f0 | 
0x1d42e9c: ldr      x8, [x20]
0x1d42ea0: str      x8, [x0]
0x1d42ea4: adrp     x1, #0x3e9f000
0x1d42ea8: add      x1, x1, #0xc98
0x1d42eac: mov      x2, xzr
0x1d42eb0: bl       #0x3e99900 | 
0x1d42eb4: mov      x20, x0
0x1d42eb8: bl       #0x3e998e0 | 
0x1d42ebc: mov      x0, x20
0x1d42ec0: bl       #0x1c65b3c | 
0x1d42ec4: bl       #0x194772c | 

// 0x1d42f14 C9AfterDeductionControl.<StartNextScene>d__15$$MoveNext
0x1d42f14: str      d8, [sp, #-0x20]!
0x1d42f18: str      x30, [sp, #8]
0x1d42f1c: stp      x20, x19, [sp, #0x10]
0x1d42f20: adrp     x20, #0x4475000
0x1d42f24: ldrb     w8, [x20, #0xdf3]
0x1d42f28: mov      x19, x0
0x1d42f2c: tbnz     w8, #0, #0x1d42f44
0x1d42f30: adrp     x0, #0x4186000
0x1d42f34: ldr      x0, [x0, #0xe30]
0x1d42f38: bl       #0x1b64570 | 
0x1d42f3c: mov      w8, #1
0x1d42f40: strb     w8, [x20, #0xdf3]
0x1d42f44: ldr      w8, [x19, #0x10]
0x1d42f48: cmp      w8, #1
0x1d42f4c: b.eq     #0x1d42f68
0x1d42f50: cbnz     w8, #0x1d42fac
0x1d42f54: mov      w8, #-1
0x1d42f58: fmov     s0, wzr
0x1d42f5c: str      wzr, [x19, #0x28]
0x1d42f60: str      w8, [x19, #0x10]
0x1d42f64: b        #0x1d42fb4 | 
0x1d42f68: adrp     x8, #0xc35000
0x1d42f6c: ldr      s0, [x19, #0x28]
0x1d42f70: ldr      s1, [x8, #0x454]
0x1d42f74: mov      w8, #-1
0x1d42f78: str      w8, [x19, #0x10]
0x1d42f7c: fcmp     s0, s1
0x1d42f80: b.le     #0x1d42fb4
0x1d42f84: adrp     x8, #0x4186000
0x1d42f88: ldr      x8, [x8, #0xe30]
0x1d42f8c: ldr      x19, [x19, #0x20]
0x1d42f90: ldr      x0, [x8]
0x1d42f94: ldr      w8, [x0, #0xe0]
0x1d42f98: cbnz     w8, #0x1d42fa0
0x1d42f9c: bl       #0x1b646a4 | 
0x1d42fa0: mov      x0, x19
0x1d42fa4: mov      x1, xzr
0x1d42fa8: bl       #0x3c75460 | UnityEngine.SceneManagement.SceneManager$$LoadScene
0x1d42fac: mov      w0, wzr
0x1d42fb0: b        #0x1d42fec | 
0x1d42fb4: adrp     x8, #0xc35000
0x1d42fb8: ldr      s1, [x8, #0xbc]
0x1d42fbc: mov      x0, xzr
0x1d42fc0: fsub     s0, s1, s0
0x1d42fc4: fdiv     s0, s0, s1
0x1d42fc8: bl       #0x1ca7ba4 | GameInformation$$set_ListenerVolume
0x1d42fcc: ldr      s8, [x19, #0x28]
0x1d42fd0: mov      x0, xzr
0x1d42fd4: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1d42fd8: fadd     s0, s8, s0
0x1d42fdc: mov      w0, #1
0x1d42fe0: str      xzr, [x19, #0x18]
0x1d42fe4: str      s0, [x19, #0x28]
0x1d42fe8: str      w0, [x19, #0x10]
0x1d42fec: ldp      x20, x19, [sp, #0x10]
0x1d42ff0: ldr      x30, [sp, #8]
0x1d42ff4: ldr      d8, [sp], #0x20
0x1d42ff8: ret      
