
// 0x1d1cf64 Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryAwaitTrueHomeTrueWorld
0x1d1cf64: mov      w1, #1
0x1d1cf68: mov      w0, wzr
0x1d1cf6c: b        #0x1d1e968 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryAdvance

// 0x1d1d3f8 Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$get_CurrentStep
0x1d1d3f8: b        #0x1d1e654 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$LoadCurrentStep

// 0x1d1e62c Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$.ctor
0x1d1e62c: str      x30, [sp, #-0x20]!
0x1d1e630: stp      x20, x19, [sp, #0x10]
0x1d1e634: mov      x19, x1
0x1d1e638: mov      x1, xzr
0x1d1e63c: mov      x20, x0
0x1d1e640: bl       #0x34c04f0 | System.Object$$.ctor
0x1d1e644: str      x19, [x20, #0x10]
0x1d1e648: ldp      x20, x19, [sp, #0x10]
0x1d1e64c: ldr      x30, [sp], #0x20
0x1d1e650: ret      

// 0x1d1e654 Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$LoadCurrentStep
0x1d1e654: str      x30, [sp, #-0x30]!
0x1d1e658: stp      x22, x21, [sp, #0x10]
0x1d1e65c: stp      x20, x19, [sp, #0x20]
0x1d1e660: adrp     x20, #0x4475000
0x1d1e664: adrp     x19, #0x4186000
0x1d1e668: ldrb     w8, [x20, #0xcbf]
0x1d1e66c: ldr      x19, [x19, #0xe68]
0x1d1e670: tbnz     w8, #0, #0x1d1e6c4
0x1d1e674: adrp     x0, #0x4185000
0x1d1e678: ldr      x0, [x0, #0x870]
0x1d1e67c: bl       #0x1b64570 | 
0x1d1e680: adrp     x0, #0x4185000
0x1d1e684: ldr      x0, [x0, #0x848]
0x1d1e688: bl       #0x1b64570 | 
0x1d1e68c: adrp     x0, #0x4186000
0x1d1e690: ldr      x0, [x0, #0xe68]
0x1d1e694: bl       #0x1b64570 | 
0x1d1e698: adrp     x0, #0x418b000
0x1d1e69c: ldr      x0, [x0, #0x70]
0x1d1e6a0: bl       #0x1b64570 | 
0x1d1e6a4: adrp     x0, #0x4185000
0x1d1e6a8: ldr      x0, [x0, #0x868]
0x1d1e6ac: bl       #0x1b64570 | 
0x1d1e6b0: adrp     x0, #0x418b000
0x1d1e6b4: ldr      x0, [x0, #0x78] | 0x418b078 'Chapter9Phase2Step'
0x1d1e6b8: bl       #0x1b64570 | 
0x1d1e6bc: mov      w8, #1
0x1d1e6c0: strb     w8, [x20, #0xcbf]
0x1d1e6c4: ldr      x0, [x19]
0x1d1e6c8: adrp     x21, #0x418b000
0x1d1e6cc: adrp     x19, #0x418b000
0x1d1e6d0: adrp     x20, #0x4185000
0x1d1e6d4: ldr      w8, [x0, #0xe0]
0x1d1e6d8: ldr      x21, [x21, #0x78] | 0x418b078 'Chapter9Phase2Step'
0x1d1e6dc: ldr      x19, [x19, #0x70]
0x1d1e6e0: ldr      x20, [x20, #0x868]
0x1d1e6e4: cbnz     w8, #0x1d1e6ec
0x1d1e6e8: bl       #0x1b646a4 | 
0x1d1e6ec: ldr      x0, [x21]
0x1d1e6f0: adrp     x22, #0x4185000
0x1d1e6f4: adrp     x21, #0x4185000
0x1d1e6f8: ldr      x22, [x22, #0x848]
0x1d1e6fc: ldr      x21, [x21, #0x870]
0x1d1e700: mov      w1, wzr
0x1d1e704: mov      x2, xzr
0x1d1e708: bl       #0x1cc5ccc | SaveManagement$$LoadInt
0x1d1e70c: ldr      x8, [x20]
0x1d1e710: ldr      x20, [x19]
0x1d1e714: mov      w19, w0
0x1d1e718: ldr      w9, [x8, #0xe0]
0x1d1e71c: cbnz     w9, #0x1d1e728
0x1d1e720: mov      x0, x8
0x1d1e724: bl       #0x1b646a4 | 
0x1d1e728: mov      x0, x20
0x1d1e72c: mov      x1, xzr
0x1d1e730: bl       #0x3489b94 | System.Type$$GetTypeFromHandle
0x1d1e734: mov      x20, x0
0x1d1e738: ldr      x0, [x22]
0x1d1e73c: add      x1, sp, #0xc
0x1d1e740: str      w19, [sp, #0xc]
0x1d1e744: bl       #0x1b646ac | 
0x1d1e748: ldr      x8, [x21]
0x1d1e74c: mov      x21, x0
0x1d1e750: ldr      w9, [x8, #0xe0]
0x1d1e754: cbnz     w9, #0x1d1e760
0x1d1e758: mov      x0, x8
0x1d1e75c: bl       #0x1b646a4 | 
0x1d1e760: mov      x0, x20
0x1d1e764: mov      x1, x21
0x1d1e768: mov      x2, xzr
0x1d1e76c: bl       #0x34b2d98 | System.Enum$$IsDefined
0x1d1e770: tst      w0, #1
0x1d1e774: csel     w0, w19, wzr, ne
0x1d1e778: ldp      x20, x19, [sp, #0x20]
0x1d1e77c: ldp      x22, x21, [sp, #0x10]
0x1d1e780: ldr      x30, [sp], #0x30
0x1d1e784: ret      

// 0x1d1e788 Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryBeginSecondPhase
0x1d1e788: str      x30, [sp, #-0x20]!
0x1d1e78c: stp      x20, x19, [sp, #0x10]
0x1d1e790: adrp     x20, #0x4475000
0x1d1e794: adrp     x19, #0x4186000
0x1d1e798: ldrb     w8, [x20, #0xcc0]
0x1d1e79c: ldr      x19, [x19, #0xe68]
0x1d1e7a0: tbnz     w8, #0, #0x1d1e7d0
0x1d1e7a4: adrp     x0, #0x4186000
0x1d1e7a8: ldr      x0, [x0, #0xe68]
0x1d1e7ac: bl       #0x1b64570 | 
0x1d1e7b0: adrp     x0, #0x418b000
0x1d1e7b4: ldr      x0, [x0, #0x78] | 0x418b078 'Chapter9Phase2Step'
0x1d1e7b8: bl       #0x1b64570 | 
0x1d1e7bc: adrp     x0, #0x418a000
0x1d1e7c0: ldr      x0, [x0, #0x668] | 0x418a668 'Chapter9UnlockSecondPhaseBegin'
0x1d1e7c4: bl       #0x1b64570 | 
0x1d1e7c8: mov      w8, #1
0x1d1e7cc: strb     w8, [x20, #0xcc0]
0x1d1e7d0: ldr      x0, [x19]
0x1d1e7d4: adrp     x20, #0x418a000
0x1d1e7d8: ldr      w8, [x0, #0xe0]
0x1d1e7dc: ldr      x20, [x20, #0x668] | 0x418a668 'Chapter9UnlockSecondPhaseBegin'
0x1d1e7e0: cbnz     w8, #0x1d1e7e8
0x1d1e7e4: bl       #0x1b646a4 | 
0x1d1e7e8: ldr      x0, [x20]
0x1d1e7ec: mov      w1, wzr
0x1d1e7f0: mov      x2, xzr
0x1d1e7f4: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d1e7f8: tbz      w0, #0, #0x1d1e824
0x1d1e7fc: ldr      x0, [x19]
0x1d1e800: adrp     x19, #0x418b000
0x1d1e804: ldr      w8, [x0, #0xe0]
0x1d1e808: ldr      x19, [x19, #0x78] | 0x418b078 'Chapter9Phase2Step'
0x1d1e80c: cbnz     w8, #0x1d1e814
0x1d1e810: bl       #0x1b646a4 | 
0x1d1e814: ldr      x0, [x19]
0x1d1e818: mov      x1, xzr
0x1d1e81c: bl       #0x1cc45f8 | SaveManagement$$HasKey
0x1d1e820: tbz      w0, #0, #0x1d1e830
0x1d1e824: ldp      x20, x19, [sp, #0x10]
0x1d1e828: ldr      x30, [sp], #0x20
0x1d1e82c: ret      
0x1d1e830: ldp      x20, x19, [sp, #0x10]
0x1d1e834: mov      w0, wzr
0x1d1e838: ldr      x30, [sp], #0x20
0x1d1e83c: b        #0x1d1e840 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$SaveStep

// 0x1d1e840 Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$SaveStep
0x1d1e840: stp      x30, x21, [sp, #-0x20]!
0x1d1e844: stp      x20, x19, [sp, #0x10]
0x1d1e848: adrp     x21, #0x4475000
0x1d1e84c: adrp     x20, #0x4186000
0x1d1e850: ldrb     w8, [x21, #0xcc3]
0x1d1e854: ldr      x20, [x20, #0xe68]
0x1d1e858: mov      w19, w0
0x1d1e85c: tbnz     w8, #0, #0x1d1e88c
0x1d1e860: adrp     x0, #0x4186000
0x1d1e864: ldr      x0, [x0, #0xe68]
0x1d1e868: bl       #0x1b64570 | 
0x1d1e86c: adrp     x0, #0x418b000
0x1d1e870: ldr      x0, [x0, #0x78] | 0x418b078 'Chapter9Phase2Step'
0x1d1e874: bl       #0x1b64570 | 
0x1d1e878: adrp     x0, #0x418b000
0x1d1e87c: ldr      x0, [x0, #0x80] | 0x418b080 'C9BaselineChallengeReached'
0x1d1e880: bl       #0x1b64570 | 
0x1d1e884: mov      w8, #1
0x1d1e888: strb     w8, [x21, #0xcc3]
0x1d1e88c: ldr      x0, [x20]
0x1d1e890: adrp     x21, #0x418b000
0x1d1e894: ldr      w8, [x0, #0xe0]
0x1d1e898: ldr      x21, [x21, #0x78] | 0x418b078 'Chapter9Phase2Step'
0x1d1e89c: cbnz     w8, #0x1d1e8a4
0x1d1e8a0: bl       #0x1b646a4 | 
0x1d1e8a4: ldr      x0, [x21]
0x1d1e8a8: mov      w1, w19
0x1d1e8ac: mov      x2, xzr
0x1d1e8b0: bl       #0x1cc5034 | SaveManagement$$SaveInt
0x1d1e8b4: cmp      w19, #4
0x1d1e8b8: b.eq     #0x1d1e8e8
0x1d1e8bc: cmp      w19, #3
0x1d1e8c0: b.ne     #0x1d1e958
0x1d1e8c4: adrp     x19, #0x4475000
0x1d1e8c8: ldrb     w8, [x19, #0x8c0]
0x1d1e8cc: cbnz     w8, #0x1d1e930
0x1d1e8d0: adrp     x0, #0x4186000
0x1d1e8d4: ldr      x0, [x0, #0xef8]
0x1d1e8d8: bl       #0x1b64570 | 
0x1d1e8dc: mov      w8, #1
0x1d1e8e0: strb     w8, [x19, #0x8c0]
0x1d1e8e4: b        #0x1d1e930 | 
0x1d1e8e8: ldr      x0, [x20]
0x1d1e8ec: ldr      w8, [x0, #0xe0]
0x1d1e8f0: cbnz     w8, #0x1d1e8f8
0x1d1e8f4: bl       #0x1b646a4 | 
0x1d1e8f8: adrp     x8, #0x418b000
0x1d1e8fc: ldr      x8, [x8, #0x80] | 0x418b080 'C9BaselineChallengeReached'
0x1d1e900: mov      w1, #1
0x1d1e904: mov      x2, xzr
0x1d1e908: mov      w19, #1
0x1d1e90c: ldr      x0, [x8]
0x1d1e910: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d1e914: adrp     x20, #0x4475000
0x1d1e918: ldrb     w8, [x20, #0x8c0]
0x1d1e91c: cbnz     w8, #0x1d1e930
0x1d1e920: adrp     x0, #0x4186000
0x1d1e924: ldr      x0, [x0, #0xef8]
0x1d1e928: bl       #0x1b64570 | 
0x1d1e92c: strb     w19, [x20, #0x8c0]
0x1d1e930: adrp     x8, #0x4186000
0x1d1e934: ldr      x8, [x8, #0xef8]
0x1d1e938: ldr      x8, [x8]
0x1d1e93c: ldr      x8, [x8, #0xb8]
0x1d1e940: ldr      x8, [x8]
0x1d1e944: cbz      x8, #0x1d1e958
0x1d1e948: ldr      x0, [x8, #0xa0]
0x1d1e94c: cbz      x0, #0x1d1e958
0x1d1e950: mov      x1, xzr
0x1d1e954: bl       #0x1ca91e8 | GetCollectionControl$$EvaluateStateUnlocks
0x1d1e958: ldp      x20, x19, [sp, #0x10]
0x1d1e95c: mov      x0, xzr
0x1d1e960: ldp      x30, x21, [sp], #0x20
0x1d1e964: b        #0x3c5aec0 | UnityEngine.PlayerPrefs$$Save

// 0x1d1e968 Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryAdvance
0x1d1e968: sub      sp, sp, #0x40
0x1d1e96c: stp      x30, x23, [sp, #0x10]
0x1d1e970: stp      x22, x21, [sp, #0x20]
0x1d1e974: stp      x20, x19, [sp, #0x30]
0x1d1e978: adrp     x21, #0x4475000
0x1d1e97c: ldrb     w8, [x21, #0xcc2]
0x1d1e980: mov      w20, w1
0x1d1e984: mov      w19, w0
0x1d1e988: tbnz     w8, #0, #0x1d1e9d0
0x1d1e98c: adrp     x0, #0x4185000
0x1d1e990: ldr      x0, [x0, #0xb38]
0x1d1e994: bl       #0x1b64570 | 
0x1d1e998: adrp     x0, #0x418b000
0x1d1e99c: ldr      x0, [x0, #0x88]
0x1d1e9a0: bl       #0x1b64570 | 
0x1d1e9a4: adrp     x0, #0x418b000
0x1d1e9a8: ldr      x0, [x0, #0x90] | 0x418b090 'Succeed: {0} -> {1}'
0x1d1e9ac: bl       #0x1b64570 | 
0x1d1e9b0: adrp     x0, #0x418b000
0x1d1e9b4: ldr      x0, [x0, #0x98] | 0x418b098 'Failed: next:{0} Current:{1}'
0x1d1e9b8: bl       #0x1b64570 | 
0x1d1e9bc: adrp     x0, #0x418b000
0x1d1e9c0: ldr      x0, [x0, #0xa0] | 0x418b0a0 'Failed: Expected:{0} Current:{1}'
0x1d1e9c4: bl       #0x1b64570 | 
0x1d1e9c8: mov      w8, #1
0x1d1e9cc: strb     w8, [x21, #0xcc2]
0x1d1e9d0: adrp     x23, #0x418b000
0x1d1e9d4: adrp     x22, #0x4185000
0x1d1e9d8: ldr      x23, [x23, #0x88]
0x1d1e9dc: ldr      x22, [x22, #0xb38]
0x1d1e9e0: bl       #0x1d1e654 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$LoadCurrentStep
0x1d1e9e4: cmp      w0, w19
0x1d1e9e8: b.ne     #0x1d1ea1c
0x1d1e9ec: cmp      w19, #3
0x1d1e9f0: b.hi     #0x1d1ea70
0x1d1e9f4: adrp     x9, #0xc36000
0x1d1e9f8: mov      w8, w19
0x1d1e9fc: add      x9, x9, #0x3d0
0x1d1ea00: adr      x10, #0x1d1ea10
0x1d1ea04: ldrb     w11, [x9, x8]
0x1d1ea08: add      x10, x10, x11, lsl #2
0x1d1ea0c: br       x10
0x1d1ea10: cmp      w20, #1
0x1d1ea14: b.ne     #0x1d1ea70
0x1d1ea18: b        #0x1d1eaf8 | 
0x1d1ea1c: mov      w21, w0
0x1d1ea20: ldr      x0, [x23]
0x1d1ea24: adrp     x20, #0x418b000
0x1d1ea28: ldr      x20, [x20, #0xa0] | 0x418b0a0 'Failed: Expected:{0} Current:{1}'
0x1d1ea2c: add      x1, sp, #0xc
0x1d1ea30: str      w19, [sp, #0xc]
0x1d1ea34: bl       #0x1b646ac | 
0x1d1ea38: mov      x19, x0
0x1d1ea3c: ldr      x0, [x23]
0x1d1ea40: add      x1, sp, #8
0x1d1ea44: str      w21, [sp, #8]
0x1d1ea48: bl       #0x1b646ac | 
0x1d1ea4c: ldr      x8, [x20]
0x1d1ea50: mov      x2, x0
0x1d1ea54: mov      x1, x19
0x1d1ea58: b        #0x1d1eaa8 | 
0x1d1ea5c: cmp      w20, #2
0x1d1ea60: b.ne     #0x1d1ea70
0x1d1ea64: b        #0x1d1eaf8 | 
0x1d1ea68: cmp      w20, #3
0x1d1ea6c: b.eq     #0x1d1eaf8
0x1d1ea70: ldr      x0, [x23]
0x1d1ea74: add      x1, sp, #0xc
0x1d1ea78: str      w20, [sp, #0xc]
0x1d1ea7c: bl       #0x1b646ac | 
0x1d1ea80: mov      x20, x0
0x1d1ea84: ldr      x0, [x23]
0x1d1ea88: add      x1, sp, #8
0x1d1ea8c: str      w19, [sp, #8]
0x1d1ea90: bl       #0x1b646ac | 
0x1d1ea94: adrp     x8, #0x418b000
0x1d1ea98: ldr      x8, [x8, #0x98] | 0x418b098 'Failed: next:{0} Current:{1}'
0x1d1ea9c: mov      x2, x0
0x1d1eaa0: mov      x1, x20
0x1d1eaa4: ldr      x8, [x8]
0x1d1eaa8: mov      x0, x8
0x1d1eaac: mov      x3, xzr
0x1d1eab0: bl       #0x3308cc4 | System.String$$Format
0x1d1eab4: ldr      x8, [x22]
0x1d1eab8: mov      x19, x0
0x1d1eabc: ldr      w9, [x8, #0xe0]
0x1d1eac0: cbnz     w9, #0x1d1eacc
0x1d1eac4: mov      x0, x8
0x1d1eac8: bl       #0x1b646a4 | 
0x1d1eacc: mov      x0, x19
0x1d1ead0: mov      x1, xzr
0x1d1ead4: bl       #0x3c24e10 | UnityEngine.Debug$$Log
0x1d1ead8: mov      w0, wzr
0x1d1eadc: ldp      x20, x19, [sp, #0x30]
0x1d1eae0: ldp      x22, x21, [sp, #0x20]
0x1d1eae4: ldp      x30, x23, [sp, #0x10]
0x1d1eae8: add      sp, sp, #0x40
0x1d1eaec: ret      
0x1d1eaf0: cmp      w20, #4
0x1d1eaf4: b.ne     #0x1d1ea70
0x1d1eaf8: mov      w0, w20
0x1d1eafc: bl       #0x1d1e840 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$SaveStep
0x1d1eb00: ldr      x0, [x23]
0x1d1eb04: add      x1, sp, #0xc
0x1d1eb08: str      w19, [sp, #0xc]
0x1d1eb0c: bl       #0x1b646ac | 
0x1d1eb10: mov      x19, x0
0x1d1eb14: ldr      x0, [x23]
0x1d1eb18: add      x1, sp, #8
0x1d1eb1c: str      w20, [sp, #8]
0x1d1eb20: bl       #0x1b646ac | 
0x1d1eb24: adrp     x8, #0x418b000
0x1d1eb28: ldr      x8, [x8, #0x90] | 0x418b090 'Succeed: {0} -> {1}'
0x1d1eb2c: mov      x2, x0
0x1d1eb30: mov      x1, x19
0x1d1eb34: mov      x3, xzr
0x1d1eb38: ldr      x8, [x8]
0x1d1eb3c: mov      x0, x8
0x1d1eb40: bl       #0x3308cc4 | System.String$$Format
0x1d1eb44: ldr      x8, [x22]
0x1d1eb48: mov      x19, x0
0x1d1eb4c: ldr      w9, [x8, #0xe0]
0x1d1eb50: cbnz     w9, #0x1d1eb5c
0x1d1eb54: mov      x0, x8
0x1d1eb58: bl       #0x1b646a4 | 
0x1d1eb5c: mov      x0, x19
0x1d1eb60: mov      x1, xzr
0x1d1eb64: bl       #0x3c24e10 | UnityEngine.Debug$$Log
0x1d1eb68: mov      w0, #1
0x1d1eb6c: b        #0x1d1eadc | 

// 0x1d1eb70 Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryAwaitAmetrine
0x1d1eb70: mov      w0, #1
0x1d1eb74: mov      w1, #2
0x1d1eb78: b        #0x1d1e968 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryAdvance

// 0x1d1eb7c Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryCompleteAmetrine
0x1d1eb7c: tbz      w0, #0, #0x1d1eb88
0x1d1eb80: mov      w0, wzr
0x1d1eb84: ret      
0x1d1eb88: mov      w0, #2
0x1d1eb8c: mov      w1, #3
0x1d1eb90: b        #0x1d1e968 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryAdvance

// 0x1d1eb94 Phigros2.Chapter9.Phase2.Chapter9Phase2Rules$$IsAmetrineConditionSatisfied
0x1d1eb94: mvn      w8, w0
0x1d1eb98: and      w0, w8, #1
0x1d1eb9c: ret      

// 0x1d1eba0 Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryCompletePetrichor
0x1d1eba0: mov      w0, #3
0x1d1eba4: mov      w1, #4
0x1d1eba8: b        #0x1d1e968 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryAdvance

// 0x1d1ebac Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$CompleteChapterFromAboutUs
0x1d1ebac: str      x30, [sp, #-0x20]!
0x1d1ebb0: stp      x20, x19, [sp, #0x10]
0x1d1ebb4: adrp     x19, #0x4475000
0x1d1ebb8: ldrb     w8, [x19, #0xcc1]
0x1d1ebbc: tbnz     w8, #0, #0x1d1ebe0
0x1d1ebc0: adrp     x0, #0x4185000
0x1d1ebc4: ldr      x0, [x0, #0xb38]
0x1d1ebc8: bl       #0x1b64570 | 
0x1d1ebcc: adrp     x0, #0x418b000
0x1d1ebd0: ldr      x0, [x0, #0xa8] | 0x418b0a8 'Tried to complete Chapter 9 outside the valid credits state.'
0x1d1ebd4: bl       #0x1b64570 | 
0x1d1ebd8: mov      w8, #1
0x1d1ebdc: strb     w8, [x19, #0xcc1]
0x1d1ebe0: bl       #0x1d1e654 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$LoadCurrentStep
0x1d1ebe4: cmp      w0, #4
0x1d1ebe8: b.ne     #0x1d1ec60
0x1d1ebec: adrp     x19, #0x4475000
0x1d1ebf0: ldrb     w8, [x19, #0xb3c]
0x1d1ebf4: cbnz     w8, #0x1d1ec0c
0x1d1ebf8: adrp     x0, #0x418a000
0x1d1ebfc: ldr      x0, [x0, #0x88]
0x1d1ec00: bl       #0x1b64570 | 
0x1d1ec04: mov      w8, #1
0x1d1ec08: strb     w8, [x19, #0xb3c]
0x1d1ec0c: adrp     x19, #0x418a000
0x1d1ec10: ldr      x19, [x19, #0x88]
0x1d1ec14: ldr      x8, [x19]
0x1d1ec18: ldr      x8, [x8, #0xb8]
0x1d1ec1c: ldrb     w9, [x8, #9]
0x1d1ec20: cbz      w9, #0x1d1ec60
0x1d1ec24: adrp     x20, #0x4475000
0x1d1ec28: ldrb     w9, [x20, #0xb3d]
0x1d1ec2c: cbnz     w9, #0x1d1ec48
0x1d1ec30: mov      x0, x19
0x1d1ec34: bl       #0x1b64570 | 
0x1d1ec38: ldr      x8, [x19]
0x1d1ec3c: mov      w9, #1
0x1d1ec40: strb     w9, [x20, #0xb3d]
0x1d1ec44: ldr      x8, [x8, #0xb8]
0x1d1ec48: ldr      w8, [x8, #0xc]
0x1d1ec4c: cmp      w8, #7
0x1d1ec50: b.ne     #0x1d1ec60
0x1d1ec54: ldp      x20, x19, [sp, #0x10]
0x1d1ec58: ldr      x30, [sp], #0x20
0x1d1ec5c: ret      
0x1d1ec60: adrp     x8, #0x4185000
0x1d1ec64: ldr      x8, [x8, #0xb38]
0x1d1ec68: adrp     x19, #0x418b000
0x1d1ec6c: ldr      x0, [x8]
0x1d1ec70: ldr      w8, [x0, #0xe0]
0x1d1ec74: ldr      x19, [x19, #0xa8] | 0x418b0a8 'Tried to complete Chapter 9 outside the valid credits state.'
0x1d1ec78: cbnz     w8, #0x1d1ec80
0x1d1ec7c: bl       #0x1b646a4 | 
0x1d1ec80: ldr      x0, [x19]
0x1d1ec84: ldp      x20, x19, [sp, #0x10]
0x1d1ec88: mov      x1, xzr
0x1d1ec8c: ldr      x30, [sp], #0x20
0x1d1ec90: b        #0x3c25308 | UnityEngine.Debug$$LogError

// 0x1d1ec94 Phigros2.Chapter9.Phase2.Chapter9Phase2Rules$$CanAdvance
0x1d1ec94: cmp      w0, #3
0x1d1ec98: b.hi     #0x1d1ece8
0x1d1ec9c: adrp     x9, #0xc36000
0x1d1eca0: mov      w8, w0
0x1d1eca4: add      x9, x9, #0x3d4
0x1d1eca8: adr      x10, #0x1d1ecb8
0x1d1ecac: ldrb     w11, [x9, x8]
0x1d1ecb0: add      x10, x10, x11, lsl #2
0x1d1ecb4: br       x10
0x1d1ecb8: cmp      w1, #1
0x1d1ecbc: b.ne     #0x1d1ece8
0x1d1ecc0: mov      w0, #1
0x1d1ecc4: ret      
0x1d1ecc8: cmp      w1, #2
0x1d1eccc: b.eq     #0x1d1ecc0
0x1d1ecd0: b        #0x1d1ece8 | 
0x1d1ecd4: cmp      w1, #3
0x1d1ecd8: b.eq     #0x1d1ecc0
0x1d1ecdc: b        #0x1d1ece8 | 
0x1d1ece0: cmp      w1, #4
0x1d1ece4: b.eq     #0x1d1ecc0
0x1d1ece8: mov      w0, wzr
0x1d1ecec: ret      

// 0x1d1ecf0 Phigros2.Chapter9.Phase2.Chapter9Phase2Rules$$AreKeyCollectionsComplete
0x1d1ecf0: stp      x30, x23, [sp, #-0x30]!
0x1d1ecf4: stp      x22, x21, [sp, #0x10]
0x1d1ecf8: stp      x20, x19, [sp, #0x20]
0x1d1ecfc: adrp     x21, #0x4475000
0x1d1ed00: ldrb     w8, [x21, #0xcc4]
0x1d1ed04: mov      x20, x1
0x1d1ed08: mov      x19, x0
0x1d1ed0c: tbnz     w8, #0, #0x1d1ed54
0x1d1ed10: adrp     x0, #0x4185000
0x1d1ed14: ldr      x0, [x0, #0x430]
0x1d1ed18: bl       #0x1b64570 | 
0x1d1ed1c: adrp     x0, #0x418b000
0x1d1ed20: ldr      x0, [x0, #0xb0]
0x1d1ed24: bl       #0x1b64570 | 
0x1d1ed28: adrp     x0, #0x418b000
0x1d1ed2c: ldr      x0, [x0, #0xb8]
0x1d1ed30: bl       #0x1b64570 | 
0x1d1ed34: adrp     x0, #0x4186000
0x1d1ed38: ldr      x0, [x0, #0x798]
0x1d1ed3c: bl       #0x1b64570 | 
0x1d1ed40: adrp     x0, #0x418b000
0x1d1ed44: ldr      x0, [x0, #0xc0]
0x1d1ed48: bl       #0x1b64570 | 
0x1d1ed4c: mov      w8, #1
0x1d1ed50: strb     w8, [x21, #0xcc4]
0x1d1ed54: cbz      x19, #0x1d1ee04
0x1d1ed58: adrp     x10, #0x418b000
0x1d1ed5c: ldr      x8, [x19]
0x1d1ed60: ldr      x10, [x10, #0xc0]
0x1d1ed64: ldrh     w9, [x8, #0x12e]
0x1d1ed68: ldr      x1, [x10]
0x1d1ed6c: cbz      x9, #0x1d1ed90
0x1d1ed70: ldr      x10, [x8, #0xb0]
0x1d1ed74: add      x10, x10, #8
0x1d1ed78: ldur     x11, [x10, #-8]
0x1d1ed7c: cmp      x11, x1
0x1d1ed80: b.eq     #0x1d1eda0
0x1d1ed84: subs     x9, x9, #1
0x1d1ed88: add      x10, x10, #0x10
0x1d1ed8c: b.ne     #0x1d1ed78
0x1d1ed90: mov      x0, x19
0x1d1ed94: mov      w2, wzr
0x1d1ed98: bl       #0x1bc5638 | 
0x1d1ed9c: b        #0x1d1edac | 
0x1d1eda0: ldrsw    x9, [x10]
0x1d1eda4: add      x8, x8, x9, lsl #4
0x1d1eda8: add      x0, x8, #0x138
0x1d1edac: ldp      x8, x1, [x0]
0x1d1edb0: mov      x0, x19
0x1d1edb4: blr      x8
0x1d1edb8: cbz      w0, #0x1d1ee04
0x1d1edbc: adrp     x10, #0x418b000
0x1d1edc0: ldr      x8, [x19]
0x1d1edc4: ldr      x10, [x10, #0xb0]
0x1d1edc8: ldrh     w9, [x8, #0x12e]
0x1d1edcc: ldr      x1, [x10]
0x1d1edd0: cbz      x9, #0x1d1edf4
0x1d1edd4: ldr      x10, [x8, #0xb0]
0x1d1edd8: add      x10, x10, #8
0x1d1eddc: ldur     x11, [x10, #-8]
0x1d1ede0: cmp      x11, x1
0x1d1ede4: b.eq     #0x1d1ee0c
0x1d1ede8: subs     x9, x9, #1
0x1d1edec: add      x10, x10, #0x10
0x1d1edf0: b.ne     #0x1d1eddc
0x1d1edf4: mov      x0, x19
0x1d1edf8: mov      w2, wzr
0x1d1edfc: bl       #0x1bc5638 | 
0x1d1ee00: b        #0x1d1ee18 | 
0x1d1ee04: mov      w21, wzr
0x1d1ee08: b        #0x1d1efb4 | 
0x1d1ee0c: ldrsw    x9, [x10]
0x1d1ee10: add      x8, x8, x9, lsl #4
0x1d1ee14: add      x0, x8, #0x138
0x1d1ee18: ldp      x8, x1, [x0]
0x1d1ee1c: mov      x0, x19
0x1d1ee20: blr      x8
0x1d1ee24: mov      x19, x0
0x1d1ee28: cbz      x0, #0x1d1efcc
0x1d1ee2c: adrp     x22, #0x4186000
0x1d1ee30: adrp     x23, #0x418b000
0x1d1ee34: ldr      x22, [x22, #0x798]
0x1d1ee38: ldr      x23, [x23, #0xb8]
0x1d1ee3c: ldr      x8, [x19]
0x1d1ee40: ldr      x1, [x22]
0x1d1ee44: ldrh     w9, [x8, #0x12e]
0x1d1ee48: cbz      x9, #0x1d1ee6c
0x1d1ee4c: ldr      x10, [x8, #0xb0]
0x1d1ee50: add      x10, x10, #8
0x1d1ee54: ldur     x11, [x10, #-8]
0x1d1ee58: cmp      x11, x1
0x1d1ee5c: b.eq     #0x1d1ee7c
0x1d1ee60: subs     x9, x9, #1
0x1d1ee64: add      x10, x10, #0x10
0x1d1ee68: b.ne     #0x1d1ee54
0x1d1ee6c: mov      x0, x19
0x1d1ee70: mov      w2, wzr
0x1d1ee74: bl       #0x1bc5638 | 
0x1d1ee78: b        #0x1d1ee88 | 
0x1d1ee7c: ldrsw    x9, [x10]
0x1d1ee80: add      x8, x8, x9, lsl #4
0x1d1ee84: add      x0, x8, #0x138
0x1d1ee88: ldp      x8, x1, [x0]
0x1d1ee8c: mov      x0, x19
0x1d1ee90: blr      x8
0x1d1ee94: tbz      w0, #0, #0x1d1ef38
0x1d1ee98: ldr      x8, [x19]
0x1d1ee9c: ldr      x1, [x23]
0x1d1eea0: ldrh     w9, [x8, #0x12e]
0x1d1eea4: cbz      x9, #0x1d1eec8
0x1d1eea8: ldr      x10, [x8, #0xb0]
0x1d1eeac: add      x10, x10, #8
0x1d1eeb0: ldur     x11, [x10, #-8]
0x1d1eeb4: cmp      x11, x1
0x1d1eeb8: b.eq     #0x1d1eed8
0x1d1eebc: subs     x9, x9, #1
0x1d1eec0: add      x10, x10, #0x10
0x1d1eec4: b.ne     #0x1d1eeb0
0x1d1eec8: mov      x0, x19
0x1d1eecc: mov      w2, wzr
0x1d1eed0: bl       #0x1bc5638 | 
0x1d1eed4: b        #0x1d1eee4 | 
0x1d1eed8: ldrsw    x9, [x10]
0x1d1eedc: add      x8, x8, x9, lsl #4
0x1d1eee0: add      x0, x8, #0x138
0x1d1eee4: ldp      x8, x1, [x0]
0x1d1eee8: mov      x0, x19
0x1d1eeec: blr      x8
0x1d1eef0: mov      x21, x0
0x1d1eef4: cbz      x0, #0x1d1ef48
0x1d1eef8: ldr      x0, [x21, #0x10]
0x1d1eefc: mov      x1, xzr
0x1d1ef00: bl       #0x330e4f4 | System.String$$IsNullOrWhiteSpace
0x1d1ef04: tbnz     w0, #0, #0x1d1ef28
0x1d1ef08: cbz      x20, #0x1d1efc8
0x1d1ef0c: ldr      x1, [x21, #0x10]
0x1d1ef10: ldr      x0, [x20, #0x40]
0x1d1ef14: ldr      w2, [x21, #0x18]
0x1d1ef18: ldr      x8, [x20, #0x18]
0x1d1ef1c: ldr      x3, [x20, #0x28]
0x1d1ef20: blr      x8
0x1d1ef24: tbnz     w0, #0, #0x1d1ee3c
0x1d1ef28: mov      x20, xzr
0x1d1ef2c: mov      w21, wzr
0x1d1ef30: cbnz     x19, #0x1d1ef50
0x1d1ef34: b        #0x1d1efb0 | 
0x1d1ef38: mov      x20, xzr
0x1d1ef3c: mov      w21, #1
0x1d1ef40: cbnz     x19, #0x1d1ef50
0x1d1ef44: b        #0x1d1efb0 | 
0x1d1ef48: mov      x20, xzr
0x1d1ef4c: cbz      x19, #0x1d1efb0
0x1d1ef50: adrp     x10, #0x4185000
0x1d1ef54: ldr      x8, [x19]
0x1d1ef58: ldr      x10, [x10, #0x430]
0x1d1ef5c: ldrh     w9, [x8, #0x12e]
0x1d1ef60: ldr      x1, [x10]
0x1d1ef64: cbz      x9, #0x1d1ef88
0x1d1ef68: ldr      x10, [x8, #0xb0]
0x1d1ef6c: add      x10, x10, #8
0x1d1ef70: ldur     x11, [x10, #-8]
0x1d1ef74: cmp      x11, x1
0x1d1ef78: b.eq     #0x1d1ef98
0x1d1ef7c: subs     x9, x9, #1
0x1d1ef80: add      x10, x10, #0x10
0x1d1ef84: b.ne     #0x1d1ef70
0x1d1ef88: mov      x0, x19
0x1d1ef8c: mov      w2, wzr
0x1d1ef90: bl       #0x1bc5638 | 
0x1d1ef94: b        #0x1d1efa4 | 
0x1d1ef98: ldrsw    x9, [x10]
0x1d1ef9c: add      x8, x8, x9, lsl #4
0x1d1efa0: add      x0, x8, #0x138
0x1d1efa4: ldp      x8, x1, [x0]
0x1d1efa8: mov      x0, x19
0x1d1efac: blr      x8
0x1d1efb0: cbnz     x20, #0x1d1efd0
0x1d1efb4: mov      w0, w21
0x1d1efb8: ldp      x20, x19, [sp, #0x20]
0x1d1efbc: ldp      x22, x21, [sp, #0x10]
0x1d1efc0: ldp      x30, x23, [sp], #0x30
0x1d1efc4: ret      
0x1d1efc8: bl       #0x1b647c8 | 
0x1d1efcc: bl       #0x1b647c8 | 
0x1d1efd0: mov      x0, x20
0x1d1efd4: bl       #0x1b647c0 | 
0x1d1efd8: b        #0x1d1efec | 
0x1d1efdc: b        #0x1d1efec | 
0x1d1efe0: b        #0x1d1efec | 
0x1d1efe4: b        #0x1d1efec | 
0x1d1efe8: b        #0x1d1efec | 
0x1d1efec: mov      x21, x0
0x1d1eff0: cmp      w1, #1
0x1d1eff4: b.ne     #0x1d1f00c
0x1d1eff8: mov      x0, x21
0x1d1effc: bl       #0x3e998d0 | 
0x1d1f000: ldr      x20, [x0]
0x1d1f004: bl       #0x3e998e0 | 
0x1d1f008: b        #0x1d1ef3c | 
0x1d1f00c: mov      x20, xzr
0x1d1f010: b        #0x1d1f018 | 
0x1d1f014: mov      x21, x0
0x1d1f018: cbz      x19, #0x1d1f07c
0x1d1f01c: adrp     x10, #0x4185000
0x1d1f020: ldr      x8, [x19]
0x1d1f024: ldr      x10, [x10, #0x430]
0x1d1f028: ldrh     w9, [x8, #0x12e]
0x1d1f02c: ldr      x1, [x10]
0x1d1f030: cbz      x9, #0x1d1f054
0x1d1f034: ldr      x10, [x8, #0xb0]
0x1d1f038: add      x10, x10, #8
0x1d1f03c: ldur     x11, [x10, #-8]
0x1d1f040: cmp      x11, x1
0x1d1f044: b.eq     #0x1d1f064
0x1d1f048: subs     x9, x9, #1
0x1d1f04c: add      x10, x10, #0x10
0x1d1f050: b.ne     #0x1d1f03c
0x1d1f054: mov      x0, x19
0x1d1f058: mov      w2, wzr
0x1d1f05c: bl       #0x1bc5638 | 
0x1d1f060: b        #0x1d1f070 | 
0x1d1f064: ldrsw    x9, [x10]
0x1d1f068: add      x8, x8, x9, lsl #4
0x1d1f06c: add      x0, x8, #0x138
0x1d1f070: ldp      x8, x1, [x0]
0x1d1f074: mov      x0, x19
0x1d1f078: blr      x8
0x1d1f07c: cbnz     x20, #0x1d1f088
0x1d1f080: mov      x0, x21
0x1d1f084: bl       #0x1c65b3c | 
0x1d1f088: mov      x0, x20
0x1d1f08c: bl       #0x1b647c0 | 
0x1d1f090: bl       #0x194772c | 
