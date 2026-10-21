
// 0x1d666f8 GameProgressSaveModule$$<Apply>g__SaveChapter8Keys|36_5
0x1d666f8: stp      x30, x27, [sp, #-0x50]!
0x1d666fc: stp      x26, x25, [sp, #0x10]
0x1d66700: stp      x24, x23, [sp, #0x20]
0x1d66704: stp      x22, x21, [sp, #0x30]
0x1d66708: stp      x20, x19, [sp, #0x40]
0x1d6670c: adrp     x20, #0x4475000
0x1d66710: adrp     x23, #0x4186000
0x1d66714: ldrb     w8, [x20, #0xee1]
0x1d66718: ldr      x23, [x23, #0xe68]
0x1d6671c: mov      x19, x0
0x1d66720: tbnz     w8, #0, #0x1d667d4
0x1d66724: adrp     x0, #0x4187000
0x1d66728: ldr      x0, [x0, #0xbe0]
0x1d6672c: bl       #0x1b64570 | 
0x1d66730: adrp     x0, #0x418c000
0x1d66734: ldr      x0, [x0, #0xa48]
0x1d66738: bl       #0x1b64570 | 
0x1d6673c: adrp     x0, #0x4187000
0x1d66740: ldr      x0, [x0, #0x158]
0x1d66744: bl       #0x1b64570 | 
0x1d66748: adrp     x0, #0x418c000
0x1d6674c: ldr      x0, [x0, #0xa50]
0x1d66750: bl       #0x1b64570 | 
0x1d66754: adrp     x0, #0x4187000
0x1d66758: ldr      x0, [x0, #0xbe8]
0x1d6675c: bl       #0x1b64570 | 
0x1d66760: adrp     x0, #0x4186000
0x1d66764: ldr      x0, [x0, #0xe68]
0x1d66768: bl       #0x1b64570 | 
0x1d6676c: adrp     x0, #0x418d000
0x1d66770: ldr      x0, [x0, #0x2c0]
0x1d66774: bl       #0x1b64570 | 
0x1d66778: adrp     x0, #0x418d000
0x1d6677c: ldr      x0, [x0, #0x2c8]
0x1d66780: bl       #0x1b64570 | 
0x1d66784: adrp     x0, #0x418d000
0x1d66788: ldr      x0, [x0, #0x2d0]
0x1d6678c: bl       #0x1b64570 | 
0x1d66790: adrp     x0, #0x4187000
0x1d66794: ldr      x0, [x0, #0xc00] | 0x4187c00 'chapter8Passed'
0x1d66798: bl       #0x1b64570 | 
0x1d6679c: adrp     x0, #0x418b000
0x1d667a0: ldr      x0, [x0, #0xae8] | 0x418bae8 'chapter8UnlockBegin'
0x1d667a4: bl       #0x1b64570 | 
0x1d667a8: adrp     x0, #0x418c000
0x1d667ac: ldr      x0, [x0, #0xac0] | 0x418cac0 'C8'
0x1d667b0: bl       #0x1b64570 | 
0x1d667b4: adrp     x0, #0x418c000
0x1d667b8: ldr      x0, [x0, #0xad0] | 0x418cad0 'Unlocked'
0x1d667bc: bl       #0x1b64570 | 
0x1d667c0: adrp     x0, #0x4189000
0x1d667c4: ldr      x0, [x0, #0x180] | 0x4189180 'chapter8UnlockSecondPhase'
0x1d667c8: bl       #0x1b64570 | 
0x1d667cc: mov      w8, #1
0x1d667d0: strb     w8, [x20, #0xee1]
0x1d667d4: ldr      x0, [x23]
0x1d667d8: adrp     x24, #0x418b000
0x1d667dc: adrp     x21, #0x4189000
0x1d667e0: adrp     x20, #0x4187000
0x1d667e4: ldr      w8, [x0, #0xe0]
0x1d667e8: ldrb     w22, [x19, #0x40]
0x1d667ec: ldr      x24, [x24, #0xae8] | 0x418bae8 'chapter8UnlockBegin'
0x1d667f0: ldr      x21, [x21, #0x180] | 0x4189180 'chapter8UnlockSecondPhase'
0x1d667f4: ldr      x20, [x20, #0xc00] | 0x4187c00 'chapter8Passed'
0x1d667f8: cbnz     w8, #0x1d66800
0x1d667fc: bl       #0x1b646a4 | 
0x1d66800: ldr      x0, [x24]
0x1d66804: cmp      w22, #0
0x1d66808: cset     w1, ne
0x1d6680c: mov      x2, xzr
0x1d66810: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d66814: ldrb     w1, [x19, #0x41]
0x1d66818: ldr      x0, [x21]
0x1d6681c: mov      x2, xzr
0x1d66820: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d66824: ldrb     w1, [x19, #0x42]
0x1d66828: ldr      x0, [x20]
0x1d6682c: mov      x2, xzr
0x1d66830: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d66834: adrp     x20, #0x4475000
0x1d66838: ldrb     w8, [x20, #0x8c0]
0x1d6683c: cbnz     w8, #0x1d66854
0x1d66840: adrp     x0, #0x4186000
0x1d66844: ldr      x0, [x0, #0xef8]
0x1d66848: bl       #0x1b64570 | 
0x1d6684c: mov      w8, #1
0x1d66850: strb     w8, [x20, #0x8c0]
0x1d66854: adrp     x8, #0x4186000
0x1d66858: ldr      x8, [x8, #0xef8]
0x1d6685c: ldr      x8, [x8]
0x1d66860: ldr      x8, [x8, #0xb8]
0x1d66864: ldr      x8, [x8]
0x1d66868: cbz      x8, #0x1d66a64
0x1d6686c: adrp     x24, #0x418d000
0x1d66870: ldr      x24, [x24, #0x2d0]
0x1d66874: ldr      x20, [x8, #0xe0]
0x1d66878: ldr      x0, [x24]
0x1d6687c: ldr      w9, [x0, #0xe0]
0x1d66880: cbnz     w9, #0x1d6688c
0x1d66884: bl       #0x1b646a4 | 
0x1d66888: ldr      x0, [x24]
0x1d6688c: ldr      x8, [x0, #0xb8]
0x1d66890: adrp     x25, #0x4187000
0x1d66894: ldr      x21, [x8, #8]
0x1d66898: ldr      x25, [x25, #0xbe0]
0x1d6689c: cbnz     x21, #0x1d668f0
0x1d668a0: ldr      w8, [x0, #0xe0]
0x1d668a4: cbnz     w8, #0x1d668b0
0x1d668a8: bl       #0x1b646a4 | 
0x1d668ac: ldr      x0, [x24]
0x1d668b0: adrp     x9, #0x4187000
0x1d668b4: ldr      x8, [x0, #0xb8]
0x1d668b8: ldr      x9, [x9, #0xbe8]
0x1d668bc: ldr      x22, [x8]
0x1d668c0: ldr      x0, [x9]
0x1d668c4: bl       #0x1b647b8 | 
0x1d668c8: adrp     x8, #0x418d000
0x1d668cc: ldr      x8, [x8, #0x2c0]
0x1d668d0: mov      x1, x22
0x1d668d4: mov      x3, xzr
0x1d668d8: mov      x21, x0
0x1d668dc: ldr      x2, [x8]
0x1d668e0: bl       #0x2c5614c | System.Func<object, bool>$$.ctor
0x1d668e4: ldr      x8, [x24]
0x1d668e8: ldr      x8, [x8, #0xb8]
0x1d668ec: str      x21, [x8, #8]
0x1d668f0: ldr      x2, [x25]
0x1d668f4: mov      x0, x20
0x1d668f8: mov      x1, x21
0x1d668fc: bl       #0x1f700d8 | System.Linq.Enumerable$$First<object>
0x1d66900: cbz      x0, #0x1d66a64
0x1d66904: ldr      x8, [x0, #0x18]
0x1d66908: cbz      x8, #0x1d66a64
0x1d6690c: ldr      x0, [x24]
0x1d66910: ldr      x20, [x8, #0x30]
0x1d66914: ldr      w9, [x0, #0xe0]
0x1d66918: cbnz     w9, #0x1d66924
0x1d6691c: bl       #0x1b646a4 | 
0x1d66920: ldr      x0, [x24]
0x1d66924: ldr      x8, [x0, #0xb8]
0x1d66928: adrp     x26, #0x418c000
0x1d6692c: adrp     x25, #0x4187000
0x1d66930: ldr      x21, [x8, #0x10]
0x1d66934: ldr      x26, [x26, #0xa48]
0x1d66938: ldr      x25, [x25, #0x158]
0x1d6693c: cbnz     x21, #0x1d66990
0x1d66940: ldr      w8, [x0, #0xe0]
0x1d66944: cbnz     w8, #0x1d66950
0x1d66948: bl       #0x1b646a4 | 
0x1d6694c: ldr      x0, [x24]
0x1d66950: adrp     x9, #0x418c000
0x1d66954: ldr      x8, [x0, #0xb8]
0x1d66958: ldr      x9, [x9, #0xa50]
0x1d6695c: ldr      x22, [x8]
0x1d66960: ldr      x0, [x9]
0x1d66964: bl       #0x1b647b8 | 
0x1d66968: adrp     x8, #0x418d000
0x1d6696c: ldr      x8, [x8, #0x2c8]
0x1d66970: mov      x1, x22
0x1d66974: mov      x3, xzr
0x1d66978: mov      x21, x0
0x1d6697c: ldr      x2, [x8]
0x1d66980: bl       #0x2c567c4 | System.Func<object, object>$$.ctor
0x1d66984: ldr      x8, [x24]
0x1d66988: ldr      x8, [x8, #0xb8]
0x1d6698c: str      x21, [x8, #0x10]
0x1d66990: ldr      x2, [x26]
0x1d66994: mov      x0, x20
0x1d66998: mov      x1, x21
0x1d6699c: bl       #0x1f77b8c | System.Linq.Enumerable$$Select<object, object>
0x1d669a0: ldr      x1, [x25]
0x1d669a4: bl       #0x1f7df58 | System.Linq.Enumerable$$ToArray<object>
0x1d669a8: cbz      x0, #0x1d66a64
0x1d669ac: ldr      x8, [x0, #0x18]
0x1d669b0: mov      x20, x0
0x1d669b4: cmp      w8, #1
0x1d669b8: b.lt     #0x1d66a48
0x1d669bc: adrp     x24, #0x418c000
0x1d669c0: adrp     x25, #0x418c000
0x1d669c4: ldr      x24, [x24, #0xac0] | 0x418cac0 'C8'
0x1d669c8: ldr      x25, [x25, #0xad0] | 0x418cad0 'Unlocked'
0x1d669cc: mov      x22, xzr
0x1d669d0: and      x8, x8, #0xffffffff
0x1d669d4: add      x26, x20, #0x20
0x1d669d8: cmp      x22, w8, uxtw
0x1d669dc: b.hs     #0x1d66a60
0x1d669e0: ldr      x1, [x26, x22, lsl #3]
0x1d669e4: ldr      x0, [x24]
0x1d669e8: ldr      x2, [x25]
0x1d669ec: mov      x3, xzr
0x1d669f0: bl       #0x33087d4 | System.String$$Concat
0x1d669f4: ldr      x8, [x19, #0x48]
0x1d669f8: cbz      x8, #0x1d66a64
0x1d669fc: ldr      w9, [x8, #0x18]
0x1d66a00: cmp      x22, x9
0x1d66a04: b.hs     #0x1d66a60
0x1d66a08: mov      x21, x0
0x1d66a0c: ldr      x0, [x23]
0x1d66a10: add      x8, x8, x22
0x1d66a14: ldrb     w27, [x8, #0x20]
0x1d66a18: ldr      w9, [x0, #0xe0]
0x1d66a1c: cbnz     w9, #0x1d66a24
0x1d66a20: bl       #0x1b646a4 | 
0x1d66a24: cmp      w27, #0
0x1d66a28: cset     w1, ne
0x1d66a2c: mov      x0, x21
0x1d66a30: mov      x2, xzr
0x1d66a34: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d66a38: ldr      w8, [x20, #0x18]
0x1d66a3c: add      x22, x22, #1
0x1d66a40: cmp      x22, w8, sxtw
0x1d66a44: b.lt     #0x1d669d8
0x1d66a48: ldp      x20, x19, [sp, #0x40]
0x1d66a4c: ldp      x22, x21, [sp, #0x30]
0x1d66a50: ldp      x24, x23, [sp, #0x20]
0x1d66a54: ldp      x26, x25, [sp, #0x10]
0x1d66a58: ldp      x30, x27, [sp], #0x50
0x1d66a5c: ret      
0x1d66a60: bl       #0x1b647d0 | 
0x1d66a64: bl       #0x1b647c8 | 
