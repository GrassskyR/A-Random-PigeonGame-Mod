
// 0x1cab55c ImportCollections$$Update
0x1cab55c: sub      sp, sp, #0xa0
0x1cab560: stp      x29, x30, [sp, #0x40]
0x1cab564: stp      x28, x27, [sp, #0x50]
0x1cab568: stp      x26, x25, [sp, #0x60]
0x1cab56c: stp      x24, x23, [sp, #0x70]
0x1cab570: stp      x22, x21, [sp, #0x80]
0x1cab574: stp      x20, x19, [sp, #0x90]
0x1cab578: adrp     x20, #0x4475000
0x1cab57c: ldrb     w8, [x20, #0x80e]
0x1cab580: mov      x19, x0
0x1cab584: tbnz     w8, #0, #0x1cab650
0x1cab588: adrp     x0, #0x4187000
0x1cab58c: ldr      x0, [x0, #0x1e0]
0x1cab590: bl       #0x1b64570 | 
0x1cab594: adrp     x0, #0x4187000
0x1cab598: ldr      x0, [x0, #0x1e8]
0x1cab59c: bl       #0x1b64570 | 
0x1cab5a0: adrp     x0, #0x4187000
0x1cab5a4: ldr      x0, [x0, #0x1f0]
0x1cab5a8: bl       #0x1b64570 | 
0x1cab5ac: adrp     x0, #0x4187000
0x1cab5b0: ldr      x0, [x0, #0x1f8]
0x1cab5b4: bl       #0x1b64570 | 
0x1cab5b8: adrp     x0, #0x4187000
0x1cab5bc: ldr      x0, [x0, #0x200]
0x1cab5c0: bl       #0x1b64570 | 
0x1cab5c4: adrp     x0, #0x4187000
0x1cab5c8: ldr      x0, [x0, #0x208]
0x1cab5cc: bl       #0x1b64570 | 
0x1cab5d0: adrp     x0, #0x4187000
0x1cab5d4: ldr      x0, [x0, #0x210]
0x1cab5d8: bl       #0x1b64570 | 
0x1cab5dc: adrp     x0, #0x4187000
0x1cab5e0: ldr      x0, [x0, #0x218]
0x1cab5e4: bl       #0x1b64570 | 
0x1cab5e8: adrp     x0, #0x4187000
0x1cab5ec: ldr      x0, [x0, #0x220]
0x1cab5f0: bl       #0x1b64570 | 
0x1cab5f4: adrp     x0, #0x4187000
0x1cab5f8: ldr      x0, [x0, #0x228]
0x1cab5fc: bl       #0x1b64570 | 
0x1cab600: adrp     x0, #0x4187000
0x1cab604: ldr      x0, [x0, #0x230]
0x1cab608: bl       #0x1b64570 | 
0x1cab60c: adrp     x0, #0x4187000
0x1cab610: ldr      x0, [x0, #0x238]
0x1cab614: bl       #0x1b64570 | 
0x1cab618: adrp     x0, #0x4187000
0x1cab61c: ldr      x0, [x0, #0x240]
0x1cab620: bl       #0x1b64570 | 
0x1cab624: adrp     x0, #0x4186000
0x1cab628: ldr      x0, [x0, #0xec0]
0x1cab62c: bl       #0x1b64570 | 
0x1cab630: adrp     x0, #0x4187000
0x1cab634: ldr      x0, [x0, #0x248] | 0x4187248 '\n'
0x1cab638: bl       #0x1b64570 | 
0x1cab63c: adrp     x0, #0x4185000
0x1cab640: ldr      x0, [x0, #0x2d8] | 0x41852d8 ''
0x1cab644: bl       #0x1b64570 | 
0x1cab648: mov      w8, #1
0x1cab64c: strb     w8, [x20, #0x80e]
0x1cab650: stp      xzr, xzr, [sp, #0x20]
0x1cab654: str      xzr, [sp, #0x30]
0x1cab658: ldrb     w8, [x19, #0x38]
0x1cab65c: cbz      w8, #0x1cabea0
0x1cab660: adrp     x8, #0x4187000
0x1cab664: ldr      x8, [x8, #0x1e8]
0x1cab668: strb     wzr, [x19, #0x38]
0x1cab66c: mov      x0, x19
0x1cab670: ldr      x1, [x8]
0x1cab674: bl       #0x1f49fe4 | UnityEngine.Component$$GetComponent<object>
0x1cab678: cbz      x0, #0x1cabec0
0x1cab67c: ldr      x8, [x0, #0x30]
0x1cab680: mov      x20, x0
0x1cab684: cbz      x8, #0x1cabec0
0x1cab688: ldp      w2, w9, [x8, #0x18]
0x1cab68c: adrp     x22, #0x4187000
0x1cab690: adrp     x21, #0x4187000
0x1cab694: ldr      x22, [x22, #0x240]
0x1cab698: ldr      x21, [x21, #0x228]
0x1cab69c: add      w9, w9, #1
0x1cab6a0: cmp      w2, #1
0x1cab6a4: stp      wzr, w9, [x8, #0x18]
0x1cab6a8: b.lt     #0x1cab6bc
0x1cab6ac: ldr      x0, [x8, #0x10]
0x1cab6b0: mov      w1, wzr
0x1cab6b4: mov      x3, xzr
0x1cab6b8: bl       #0x349f4d0 | System.Array$$Clear
0x1cab6bc: ldr      x0, [x22]
0x1cab6c0: bl       #0x1b647b8 | 
0x1cab6c4: ldr      x1, [x21]
0x1cab6c8: mov      x21, x0
0x1cab6cc: bl       #0x2e5f474 | System.Collections.Generic.List<object>$$.ctor
0x1cab6d0: str      x21, [x20, #0x30]
0x1cab6d4: ldr      x0, [x19, #0x20]
0x1cab6d8: cbz      x0, #0x1cabec0
0x1cab6dc: adrp     x8, #0x4187000
0x1cab6e0: adrp     x9, #0x4185000
0x1cab6e4: ldr      x8, [x8, #0x248] | 0x4187248 '\n'
0x1cab6e8: ldr      x9, [x9, #0x2d8] | 0x41852d8 ''
0x1cab6ec: mov      x3, xzr
0x1cab6f0: ldr      x1, [x8]
0x1cab6f4: ldr      x2, [x9]
0x1cab6f8: bl       #0x330a0e8 | System.String$$Replace
0x1cab6fc: cbz      x0, #0x1cabec0
0x1cab700: mov      w1, #0x706c
0x1cab704: mov      w2, wzr
0x1cab708: mov      x3, xzr
0x1cab70c: bl       #0x330a73c | System.String$$Split
0x1cab710: str      x0, [x19, #0x28]
0x1cab714: cbz      x0, #0x1cabec0
0x1cab718: ldr      w8, [x0, #0x18]
0x1cab71c: mov      x21, x0
0x1cab720: cmp      w8, #1
0x1cab724: b.lt     #0x1cab838
0x1cab728: adrp     x24, #0x4187000
0x1cab72c: adrp     x25, #0x4187000
0x1cab730: ldr      x24, [x24, #0x1e0]
0x1cab734: ldr      x25, [x25, #0x208]
0x1cab738: mov      w23, wzr
0x1cab73c: cmp      w23, w8
0x1cab740: b.hs     #0x1cabec4
0x1cab744: add      x8, x21, w23, sxtw #3
0x1cab748: ldr      x0, [x8, #0x20]
0x1cab74c: cbz      x0, #0x1cabec0
0x1cab750: mov      w1, #9
0x1cab754: mov      w2, wzr
0x1cab758: mov      x3, xzr
0x1cab75c: bl       #0x330a73c | System.String$$Split
0x1cab760: str      x0, [x19, #0x30]
0x1cab764: cbz      x0, #0x1cabec0
0x1cab768: ldr      w8, [x0, #0x18]
0x1cab76c: cmp      w8, #2
0x1cab770: b.ls     #0x1cabec4
0x1cab774: ldr      x0, [x0, #0x30]
0x1cab778: mov      x1, xzr
0x1cab77c: bl       #0x3478e30 | System.Int32$$Parse
0x1cab780: cbnz     w0, #0x1cab828
0x1cab784: ldr      x0, [x24]
0x1cab788: bl       #0x1b647b8 | 
0x1cab78c: mov      x1, xzr
0x1cab790: mov      x22, x0
0x1cab794: bl       #0x1d6dff8 | CollectionText$$.ctor
0x1cab798: ldr      x8, [x19, #0x30]
0x1cab79c: cbz      x8, #0x1cabec0
0x1cab7a0: ldr      w9, [x8, #0x18]
0x1cab7a4: cmp      w9, #1
0x1cab7a8: b.ls     #0x1cabec4
0x1cab7ac: cbz      x22, #0x1cabec0
0x1cab7b0: ldr      x10, [x8, #0x28]
0x1cab7b4: cmp      w9, #4
0x1cab7b8: str      x10, [x22, #0x10]
0x1cab7bc: b.ls     #0x1cabec4
0x1cab7c0: ldr      x0, [x8, #0x40]
0x1cab7c4: mov      x1, xzr
0x1cab7c8: bl       #0x3478e30 | System.Int32$$Parse
0x1cab7cc: str      w0, [x22, #0x20]
0x1cab7d0: ldr      x0, [x20, #0x30]
0x1cab7d4: cbz      x0, #0x1cabec0
0x1cab7d8: ldr      w10, [x0, #0x1c]
0x1cab7dc: ldr      x8, [x0, #0x10]
0x1cab7e0: ldr      x9, [x25]
0x1cab7e4: add      w10, w10, #1
0x1cab7e8: str      w10, [x0, #0x1c]
0x1cab7ec: cbz      x8, #0x1cabec0
0x1cab7f0: ldrsw    x10, [x0, #0x18]
0x1cab7f4: ldr      w11, [x8, #0x18]
0x1cab7f8: cmp      w10, w11
0x1cab7fc: b.hs     #0x1cab814
0x1cab800: add      w9, w10, #1
0x1cab804: add      x8, x8, x10, lsl #3
0x1cab808: str      w9, [x0, #0x18]
0x1cab80c: str      x22, [x8, #0x20]
0x1cab810: b        #0x1cab828 | 
0x1cab814: ldr      x8, [x9, #0x20]
0x1cab818: mov      x1, x22
0x1cab81c: ldr      x8, [x8, #0xc0]
0x1cab820: ldr      x2, [x8, #0x70]
0x1cab824: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1cab828: ldr      w8, [x21, #0x18]
0x1cab82c: add      w23, w23, #1
0x1cab830: cmp      w23, w8
0x1cab834: b.lt     #0x1cab73c
0x1cab838: ldr      x23, [x19, #0x28]
0x1cab83c: cbz      x23, #0x1cabec0
0x1cab840: ldr      w8, [x23, #0x18]
0x1cab844: cmp      w8, #1
0x1cab848: b.lt     #0x1cabea0
0x1cab84c: adrp     x27, #0x4187000
0x1cab850: adrp     x28, #0x4186000
0x1cab854: adrp     x29, #0x4187000
0x1cab858: adrp     x24, #0x4187000
0x1cab85c: ldr      x27, [x27, #0x1f8]
0x1cab860: ldr      x28, [x28, #0xec0]
0x1cab864: ldr      x29, [x29, #0x238]
0x1cab868: ldr      x24, [x24, #0x210]
0x1cab86c: mov      w25, wzr
0x1cab870: cmp      w25, w8
0x1cab874: b.hs     #0x1cabec4
0x1cab878: add      x8, x23, w25, sxtw #3
0x1cab87c: ldr      x0, [x8, #0x20]
0x1cab880: cbz      x0, #0x1cabec0
0x1cab884: mov      w1, #9
0x1cab888: mov      w2, wzr
0x1cab88c: mov      x3, xzr
0x1cab890: bl       #0x330a73c | System.String$$Split
0x1cab894: str      x0, [x19, #0x30]
0x1cab898: ldr      x0, [x20, #0x30]
0x1cab89c: cbz      x0, #0x1cabec0
0x1cab8a0: adrp     x8, #0x4187000
0x1cab8a4: ldr      x8, [x8, #0x220]
0x1cab8a8: ldr      x1, [x8]
0x1cab8ac: add      x8, sp, #8
0x1cab8b0: bl       #0x2e6072c | System.Collections.Generic.List<object>$$GetEnumerator
0x1cab8b4: ldur     q0, [sp, #8]
0x1cab8b8: ldr      x8, [sp, #0x18]
0x1cab8bc: str      q0, [sp, #0x20]
0x1cab8c0: str      x8, [sp, #0x30]
0x1cab8c4: ldr      x1, [x27]
0x1cab8c8: add      x0, sp, #0x20
0x1cab8cc: bl       #0x2ae8064 | System.Collections.Generic.List.Enumerator<object>$$MoveNext
0x1cab8d0: tbz      w0, #0, #0x1cabbfc
0x1cab8d4: ldr      x26, [sp, #0x30]
0x1cab8d8: cbz      x26, #0x1cabc24
0x1cab8dc: ldr      x8, [x19, #0x30]
0x1cab8e0: cbz      x8, #0x1cabc2c
0x1cab8e4: ldr      w9, [x8, #0x18]
0x1cab8e8: cmp      w9, #1
0x1cab8ec: b.ls     #0x1cabc34
0x1cab8f0: ldr      x0, [x26, #0x10]
0x1cab8f4: ldr      x1, [x8, #0x28]
0x1cab8f8: mov      x2, xzr
0x1cab8fc: bl       #0x32fac7c | System.String$$op_Equality
0x1cab900: tbz      w0, #0, #0x1cab8c4
0x1cab904: ldr      x8, [x19, #0x30]
0x1cab908: cbz      x8, #0x1cabc64
0x1cab90c: ldr      w9, [x8, #0x18]
0x1cab910: cmp      w9, #2
0x1cab914: b.ls     #0x1cabc6c
0x1cab918: ldr      x0, [x8, #0x30]
0x1cab91c: mov      x1, xzr
0x1cab920: bl       #0x3478e30 | System.Int32$$Parse
0x1cab924: cbnz     w0, #0x1cab9d8
0x1cab928: ldr      x0, [x28]
0x1cab92c: bl       #0x1b647b8 | 
0x1cab930: mov      x21, x0
0x1cab934: mov      x1, xzr
0x1cab938: bl       #0x1cd9064 | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$.ctor
0x1cab93c: str      x21, [x26, #0x18]
0x1cab940: ldr      x8, [x19, #0x30]
0x1cab944: cbz      x8, #0x1cabd34
0x1cab948: ldr      w9, [x8, #0x18]
0x1cab94c: cbz      w9, #0x1cabd3c
0x1cab950: ldr      x1, [x8, #0x20]
0x1cab954: bl       #0x1cabf04 | ImportCollections$$CheckString
0x1cab958: cbz      x21, #0x1cabd44
0x1cab95c: str      x0, [x21, #0x18]
0x1cab960: ldr      x8, [x19, #0x30]
0x1cab964: cbz      x8, #0x1cabd4c
0x1cab968: ldr      w9, [x8, #0x18]
0x1cab96c: cmp      w9, #0xa
0x1cab970: b.ls     #0x1cabd54
0x1cab974: ldr      x21, [x26, #0x18]
0x1cab978: ldr      x1, [x8, #0x70]
0x1cab97c: bl       #0x1cabf04 | ImportCollections$$CheckString
0x1cab980: cbz      x21, #0x1cabd5c
0x1cab984: str      x0, [x21, #0x20]
0x1cab988: ldr      x8, [x19, #0x30]
0x1cab98c: cbz      x8, #0x1cabd64
0x1cab990: ldr      w9, [x8, #0x18]
0x1cab994: cmp      w9, #0xc
0x1cab998: b.ls     #0x1cabd6c
0x1cab99c: ldr      x21, [x26, #0x18]
0x1cab9a0: ldr      x1, [x8, #0x80]
0x1cab9a4: bl       #0x1cabf04 | ImportCollections$$CheckString
0x1cab9a8: cbz      x21, #0x1cabd74
0x1cab9ac: str      x0, [x21, #0x28]
0x1cab9b0: ldr      x8, [x19, #0x30]
0x1cab9b4: cbz      x8, #0x1cabd7c
0x1cab9b8: ldr      w9, [x8, #0x18]
0x1cab9bc: cmp      w9, #0xe
0x1cab9c0: b.ls     #0x1cabd84
0x1cab9c4: ldr      x21, [x26, #0x18]
0x1cab9c8: ldr      x1, [x8, #0x90]
0x1cab9cc: bl       #0x1cabf04 | ImportCollections$$CheckString
0x1cab9d0: cbz      x21, #0x1cabd8c
0x1cab9d4: str      x0, [x21, #0x30]
0x1cab9d8: ldr      x8, [x26, #0x28]
0x1cab9dc: cbz      x8, #0x1cabc44
0x1cab9e0: ldr      x9, [x19, #0x30]
0x1cab9e4: cbz      x9, #0x1cabc4c
0x1cab9e8: ldr      w10, [x9, #0x18]
0x1cab9ec: cmp      w10, #2
0x1cab9f0: b.ls     #0x1cabc3c
0x1cab9f4: ldr      w22, [x8, #0x18]
0x1cab9f8: ldr      x0, [x9, #0x30]
0x1cab9fc: mov      x1, xzr
0x1caba00: bl       #0x3478e30 | System.Int32$$Parse
0x1caba04: ldr      x21, [x26, #0x28]
0x1caba08: cmp      w22, w0
0x1caba0c: b.gt     #0x1caba80
0x1caba10: ldr      x0, [x28]
0x1caba14: bl       #0x1b647b8 | 
0x1caba18: mov      x22, x0
0x1caba1c: mov      x1, xzr
0x1caba20: bl       #0x1cd9064 | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$.ctor
0x1caba24: cbz      x21, #0x1cabc5c
0x1caba28: ldr      w10, [x21, #0x1c]
0x1caba2c: ldr      x8, [x21, #0x10]
0x1caba30: ldr      x9, [x24]
0x1caba34: add      w10, w10, #1
0x1caba38: str      w10, [x21, #0x1c]
0x1caba3c: cbz      x8, #0x1cabc54
0x1caba40: ldrsw    x10, [x21, #0x18]
0x1caba44: ldr      w11, [x8, #0x18]
0x1caba48: cmp      w10, w11
0x1caba4c: b.hs     #0x1caba64
0x1caba50: add      w9, w10, #1
0x1caba54: add      x8, x8, x10, lsl #3
0x1caba58: str      w9, [x21, #0x18]
0x1caba5c: str      x22, [x8, #0x20]
0x1caba60: b        #0x1cab9d8 | 
0x1caba64: ldr      x8, [x9, #0x20]
0x1caba68: ldr      x8, [x8, #0xc0]
0x1caba6c: ldr      x2, [x8, #0x70]
0x1caba70: mov      x0, x21
0x1caba74: mov      x1, x22
0x1caba78: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1caba7c: b        #0x1cab9d8 | 
0x1caba80: ldr      x8, [x19, #0x30]
0x1caba84: cbz      x8, #0x1cabc74
0x1caba88: ldr      w9, [x8, #0x18]
0x1caba8c: cmp      w9, #2
0x1caba90: b.ls     #0x1cabc7c
0x1caba94: ldr      x0, [x8, #0x30]
0x1caba98: mov      x1, xzr
0x1caba9c: bl       #0x3478e30 | System.Int32$$Parse
0x1cabaa0: mov      w1, w0
0x1cabaa4: cbz      x21, #0x1cabc84
0x1cabaa8: ldr      x2, [x29]
0x1cabaac: mov      x0, x21
0x1cabab0: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1cabab4: ldr      x8, [x19, #0x30]
0x1cabab8: cbz      x8, #0x1cabc8c
0x1cababc: ldr      w9, [x8, #0x18]
0x1cabac0: cmp      w9, #3
0x1cabac4: b.ls     #0x1cabc94
0x1cabac8: ldr      x1, [x8, #0x38]
0x1cabacc: mov      x21, x0
0x1cabad0: bl       #0x1cabf04 | ImportCollections$$CheckString
0x1cabad4: cbz      x21, #0x1cabc9c
0x1cabad8: str      x0, [x21, #0x18]
0x1cabadc: ldr      x8, [x19, #0x30]
0x1cabae0: cbz      x8, #0x1cabca4
0x1cabae4: ldr      w9, [x8, #0x18]
0x1cabae8: cmp      w9, #2
0x1cabaec: b.ls     #0x1cabcac
0x1cabaf0: ldr      x21, [x26, #0x28]
0x1cabaf4: ldr      x0, [x8, #0x30]
0x1cabaf8: mov      x1, xzr
0x1cabafc: bl       #0x3478e30 | System.Int32$$Parse
0x1cabb00: mov      w1, w0
0x1cabb04: cbz      x21, #0x1cabcb4
0x1cabb08: ldr      x2, [x29]
0x1cabb0c: mov      x0, x21
0x1cabb10: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1cabb14: ldr      x8, [x19, #0x30]
0x1cabb18: cbz      x8, #0x1cabcbc
0x1cabb1c: ldr      w9, [x8, #0x18]
0x1cabb20: cmp      w9, #0xb
0x1cabb24: b.ls     #0x1cabcc4
0x1cabb28: ldr      x1, [x8, #0x78]
0x1cabb2c: mov      x21, x0
0x1cabb30: bl       #0x1cabf04 | ImportCollections$$CheckString
0x1cabb34: cbz      x21, #0x1cabccc
0x1cabb38: str      x0, [x21, #0x20]
0x1cabb3c: ldr      x8, [x19, #0x30]
0x1cabb40: cbz      x8, #0x1cabcd4
0x1cabb44: ldr      w9, [x8, #0x18]
0x1cabb48: cmp      w9, #2
0x1cabb4c: b.ls     #0x1cabcdc
0x1cabb50: ldr      x21, [x26, #0x28]
0x1cabb54: ldr      x0, [x8, #0x30]
0x1cabb58: mov      x1, xzr
0x1cabb5c: bl       #0x3478e30 | System.Int32$$Parse
0x1cabb60: mov      w1, w0
0x1cabb64: cbz      x21, #0x1cabce4
0x1cabb68: ldr      x2, [x29]
0x1cabb6c: mov      x0, x21
0x1cabb70: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1cabb74: ldr      x8, [x19, #0x30]
0x1cabb78: cbz      x8, #0x1cabcec
0x1cabb7c: ldr      w9, [x8, #0x18]
0x1cabb80: cmp      w9, #0xd
0x1cabb84: b.ls     #0x1cabcf4
0x1cabb88: ldr      x1, [x8, #0x88]
0x1cabb8c: mov      x21, x0
0x1cabb90: bl       #0x1cabf04 | ImportCollections$$CheckString
0x1cabb94: cbz      x21, #0x1cabcfc
0x1cabb98: str      x0, [x21, #0x28]
0x1cabb9c: ldr      x8, [x19, #0x30]
0x1cabba0: cbz      x8, #0x1cabd04
0x1cabba4: ldr      w9, [x8, #0x18]
0x1cabba8: cmp      w9, #2
0x1cabbac: b.ls     #0x1cabd0c
0x1cabbb0: ldr      x21, [x26, #0x28]
0x1cabbb4: ldr      x0, [x8, #0x30]
0x1cabbb8: mov      x1, xzr
0x1cabbbc: bl       #0x3478e30 | System.Int32$$Parse
0x1cabbc0: mov      w1, w0
0x1cabbc4: cbz      x21, #0x1cabd14
0x1cabbc8: ldr      x2, [x29]
0x1cabbcc: mov      x0, x21
0x1cabbd0: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1cabbd4: ldr      x8, [x19, #0x30]
0x1cabbd8: cbz      x8, #0x1cabd1c
0x1cabbdc: ldr      w9, [x8, #0x18]
0x1cabbe0: cmp      w9, #0xf
0x1cabbe4: b.ls     #0x1cabd24
0x1cabbe8: ldr      x1, [x8, #0x98]
0x1cabbec: mov      x21, x0
0x1cabbf0: bl       #0x1cabf04 | ImportCollections$$CheckString
0x1cabbf4: cbz      x21, #0x1cabd2c
0x1cabbf8: str      x0, [x21, #0x30]
0x1cabbfc: adrp     x8, #0x4187000
0x1cabc00: ldr      x8, [x8, #0x1f0]
0x1cabc04: add      x0, sp, #0x20
0x1cabc08: ldr      x1, [x8]
0x1cabc0c: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1cabc10: ldr      w8, [x23, #0x18]
0x1cabc14: add      w25, w25, #1
0x1cabc18: cmp      w25, w8
0x1cabc1c: b.lt     #0x1cab870
0x1cabc20: b        #0x1cabea0 | 
0x1cabc24: bl       #0x1b647c8 | 
0x1cabc28: b        #0x1cabed4 | 
0x1cabc2c: bl       #0x1b647c8 | 
0x1cabc30: b        #0x1cabed4 | 
0x1cabc34: bl       #0x1b647d0 | 
0x1cabc38: b        #0x1cabed4 | 
0x1cabc3c: bl       #0x1b647d0 | 
0x1cabc40: b        #0x1cabed4 | 
0x1cabc44: bl       #0x1b647c8 | 
0x1cabc48: b        #0x1cabed4 | 
0x1cabc4c: bl       #0x1b647c8 | 
0x1cabc50: b        #0x1cabed4 | 
0x1cabc54: bl       #0x1b647c8 | 
0x1cabc58: b        #0x1cabed4 | 
0x1cabc5c: bl       #0x1b647c8 | 
0x1cabc60: b        #0x1cabed4 | 
0x1cabc64: bl       #0x1b647c8 | 
0x1cabc68: b        #0x1cabed4 | 
0x1cabc6c: bl       #0x1b647d0 | 
0x1cabc70: b        #0x1cabed4 | 
0x1cabc74: bl       #0x1b647c8 | 
0x1cabc78: b        #0x1cabed4 | 
0x1cabc7c: bl       #0x1b647d0 | 
0x1cabc80: b        #0x1cabed4 | 
0x1cabc84: bl       #0x1b647c8 | 
0x1cabc88: b        #0x1cabed4 | 
0x1cabc8c: bl       #0x1b647c8 | 
0x1cabc90: b        #0x1cabed4 | 
0x1cabc94: bl       #0x1b647d0 | 
0x1cabc98: b        #0x1cabed4 | 
0x1cabc9c: bl       #0x1b647c8 | 
0x1cabca0: b        #0x1cabed4 | 
0x1cabca4: bl       #0x1b647c8 | 
0x1cabca8: b        #0x1cabed4 | 
0x1cabcac: bl       #0x1b647d0 | 
0x1cabcb0: b        #0x1cabed4 | 
0x1cabcb4: bl       #0x1b647c8 | 
0x1cabcb8: b        #0x1cabed4 | 
0x1cabcbc: bl       #0x1b647c8 | 
0x1cabcc0: b        #0x1cabed4 | 
0x1cabcc4: bl       #0x1b647d0 | 
0x1cabcc8: b        #0x1cabed4 | 
0x1cabccc: bl       #0x1b647c8 | 
0x1cabcd0: b        #0x1cabed4 | 
0x1cabcd4: bl       #0x1b647c8 | 
0x1cabcd8: b        #0x1cabed4 | 
0x1cabcdc: bl       #0x1b647d0 | 
0x1cabce0: b        #0x1cabed4 | 
0x1cabce4: bl       #0x1b647c8 | 
0x1cabce8: b        #0x1cabed4 | 
0x1cabcec: bl       #0x1b647c8 | 
0x1cabcf0: b        #0x1cabed4 | 
0x1cabcf4: bl       #0x1b647d0 | 
0x1cabcf8: b        #0x1cabed4 | 
0x1cabcfc: bl       #0x1b647c8 | 
0x1cabd00: b        #0x1cabed4 | 
0x1cabd04: bl       #0x1b647c8 | 
0x1cabd08: b        #0x1cabed4 | 
0x1cabd0c: bl       #0x1b647d0 | 
0x1cabd10: b        #0x1cabed4 | 
0x1cabd14: bl       #0x1b647c8 | 
0x1cabd18: b        #0x1cabed4 | 
0x1cabd1c: bl       #0x1b647c8 | 
0x1cabd20: b        #0x1cabed4 | 
0x1cabd24: bl       #0x1b647d0 | 
0x1cabd28: b        #0x1cabed4 | 
0x1cabd2c: bl       #0x1b647c8 | 
0x1cabd30: b        #0x1cabed4 | 
0x1cabd34: bl       #0x1b647c8 | 
0x1cabd38: b        #0x1cabed4 | 
0x1cabd3c: bl       #0x1b647d0 | 
0x1cabd40: b        #0x1cabed4 | 
0x1cabd44: bl       #0x1b647c8 | 
0x1cabd48: b        #0x1cabed4 | 
0x1cabd4c: bl       #0x1b647c8 | 
0x1cabd50: b        #0x1cabed4 | 
0x1cabd54: bl       #0x1b647d0 | 
0x1cabd58: b        #0x1cabed4 | 
0x1cabd5c: bl       #0x1b647c8 | 
0x1cabd60: b        #0x1cabed4 | 
0x1cabd64: bl       #0x1b647c8 | 
0x1cabd68: b        #0x1cabed4 | 
0x1cabd6c: bl       #0x1b647d0 | 
0x1cabd70: b        #0x1cabed4 | 
0x1cabd74: bl       #0x1b647c8 | 
0x1cabd78: b        #0x1cabed4 | 
0x1cabd7c: bl       #0x1b647c8 | 
0x1cabd80: b        #0x1cabed4 | 
0x1cabd84: bl       #0x1b647d0 | 
0x1cabd88: b        #0x1cabed4 | 
0x1cabd8c: bl       #0x1b647c8 | 
0x1cabd90: b        #0x1cabed4 | 
0x1cabd94: b        #0x1cabe6c | 
0x1cabd98: b        #0x1cabe6c | 
0x1cabd9c: b        #0x1cabe6c | 
0x1cabda0: b        #0x1cabe6c | 
0x1cabda4: b        #0x1cabe6c | 
0x1cabda8: b        #0x1cabe6c | 
0x1cabdac: b        #0x1cabe6c | 
0x1cabdb0: b        #0x1cabe6c | 
0x1cabdb4: b        #0x1cabe6c | 
0x1cabdb8: b        #0x1cabe6c | 
0x1cabdbc: b        #0x1cabe6c | 
0x1cabdc0: b        #0x1cabe6c | 
0x1cabdc4: b        #0x1cabe6c | 
0x1cabdc8: b        #0x1cabe6c | 
0x1cabdcc: b        #0x1cabe6c | 
0x1cabdd0: b        #0x1cabe6c | 
0x1cabdd4: b        #0x1cabe6c | 
0x1cabdd8: b        #0x1cabe6c | 
0x1cabddc: b        #0x1cabe6c | 
0x1cabde0: b        #0x1cabe6c | 
0x1cabde4: b        #0x1cabe6c | 
0x1cabde8: b        #0x1cabe6c | 
0x1cabdec: b        #0x1cabe6c | 
0x1cabdf0: b        #0x1cabe6c | 
0x1cabdf4: b        #0x1cabe6c | 
0x1cabdf8: b        #0x1cabe6c | 
0x1cabdfc: b        #0x1cabe6c | 
0x1cabe00: b        #0x1cabe6c | 
0x1cabe04: b        #0x1cabe6c | 
0x1cabe08: b        #0x1cabe6c | 
0x1cabe0c: b        #0x1cabe6c | 
0x1cabe10: b        #0x1cabe6c | 
0x1cabe14: b        #0x1cabe6c | 
0x1cabe18: b        #0x1cabe6c | 
0x1cabe1c: b        #0x1cabe6c | 
0x1cabe20: b        #0x1cabe6c | 
0x1cabe24: b        #0x1cabe6c | 
0x1cabe28: b        #0x1cabe6c | 
0x1cabe2c: b        #0x1cabe6c | 
0x1cabe30: b        #0x1cabe6c | 
0x1cabe34: b        #0x1cabe6c | 
0x1cabe38: b        #0x1cabe6c | 
0x1cabe3c: b        #0x1cabe6c | 
0x1cabe40: b        #0x1cabe6c | 
0x1cabe44: b        #0x1cabe6c | 
0x1cabe48: b        #0x1cabe6c | 
0x1cabe4c: b        #0x1cabe6c | 
0x1cabe50: b        #0x1cabe6c | 
0x1cabe54: b        #0x1cabe6c | 
0x1cabe58: b        #0x1cabe6c | 
0x1cabe5c: b        #0x1cabe6c | 
0x1cabe60: b        #0x1cabe6c | 
0x1cabe64: b        #0x1cabe6c | 
0x1cabe68: b        #0x1cabe6c | 
0x1cabe6c: cmp      w1, #1
0x1cabe70: b.ne     #0x1cabec8
0x1cabe74: bl       #0x3e998d0 | 
0x1cabe78: ldr      x21, [x0]
0x1cabe7c: bl       #0x3e998e0 | 
0x1cabe80: adrp     x8, #0x4187000
0x1cabe84: ldr      x8, [x8, #0x1f0]
0x1cabe88: add      x0, sp, #0x20
0x1cabe8c: ldr      x1, [x8]
0x1cabe90: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1cabe94: cbz      x21, #0x1cabc10
0x1cabe98: mov      x0, x21
0x1cabe9c: bl       #0x1b647c0 | 
0x1cabea0: ldp      x20, x19, [sp, #0x90]
0x1cabea4: ldp      x22, x21, [sp, #0x80]
0x1cabea8: ldp      x24, x23, [sp, #0x70]
0x1cabeac: ldp      x26, x25, [sp, #0x60]
0x1cabeb0: ldp      x28, x27, [sp, #0x50]
0x1cabeb4: ldp      x29, x30, [sp, #0x40]
0x1cabeb8: add      sp, sp, #0xa0
0x1cabebc: ret      
0x1cabec0: bl       #0x1b647c8 | 
0x1cabec4: bl       #0x1b647d0 | 
0x1cabec8: mov      x19, x0
0x1cabecc: mov      x21, xzr
0x1cabed0: b        #0x1cabed8 | 
0x1cabed4: mov      x19, x0
0x1cabed8: adrp     x8, #0x4187000
0x1cabedc: ldr      x8, [x8, #0x1f0]
0x1cabee0: ldr      x1, [x8]
0x1cabee4: add      x0, sp, #0x20
0x1cabee8: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1cabeec: cbnz     x21, #0x1cabef8
0x1cabef0: mov      x0, x19
0x1cabef4: bl       #0x1c65b3c | 
0x1cabef8: mov      x0, x21
0x1cabefc: bl       #0x1b647c0 | 
0x1cabf00: bl       #0x194772c | 

// 0x1cacd08 SamplePopupView$$DebugLog
0x1cacd08: stp      x30, x21, [sp, #-0x20]!
0x1cacd0c: stp      x20, x19, [sp, #0x10]
0x1cacd10: adrp     x21, #0x4475000
0x1cacd14: ldrb     w8, [x21, #0x81a]
0x1cacd18: mov      x19, x1
0x1cacd1c: mov      x20, x0
0x1cacd20: tbnz     w8, #0, #0x1cacd38
0x1cacd24: adrp     x0, #0x4185000
0x1cacd28: ldr      x0, [x0, #0xb38]
0x1cacd2c: bl       #0x1b64570 | 
0x1cacd30: mov      w8, #1
0x1cacd34: strb     w8, [x21, #0x81a]
0x1cacd38: ldr      x0, [x20, #0x20]
0x1cacd3c: cbz      x0, #0x1cacd80
0x1cacd40: ldr      x8, [x0]
0x1cacd44: adrp     x20, #0x4185000
0x1cacd48: mov      x1, x19
0x1cacd4c: ldr      x9, [x8, #0x5e8]
0x1cacd50: ldr      x2, [x8, #0x5f0]
0x1cacd54: ldr      x20, [x20, #0xb38]
0x1cacd58: blr      x9
0x1cacd5c: ldr      x0, [x20]
0x1cacd60: ldr      w8, [x0, #0xe0]
0x1cacd64: cbnz     w8, #0x1cacd6c
0x1cacd68: bl       #0x1b646a4 | 
0x1cacd6c: mov      x0, x19
0x1cacd70: ldp      x20, x19, [sp, #0x10]
0x1cacd74: mov      x1, xzr
0x1cacd78: ldp      x30, x21, [sp], #0x20
0x1cacd7c: b        #0x3c24e10 | UnityEngine.Debug$$Log
0x1cacd80: bl       #0x1b647c8 | 

// 0x1cacd84 SamplePopupView$$OnDialogInfo
0x1cacd84: stp      x30, x25, [sp, #-0x40]!
0x1cacd88: stp      x24, x23, [sp, #0x10]
0x1cacd8c: stp      x22, x21, [sp, #0x20]
0x1cacd90: stp      x20, x19, [sp, #0x30]
0x1cacd94: adrp     x24, #0x4475000
0x1cacd98: adrp     x25, #0x4186000
0x1cacd9c: adrp     x20, #0x4187000
0x1cacda0: adrp     x21, #0x4187000
0x1cacda4: adrp     x22, #0x4187000
0x1cacda8: adrp     x23, #0x4186000
0x1cacdac: ldrb     w8, [x24, #0x81b]
0x1cacdb0: ldr      x25, [x25, #0xf18]
0x1cacdb4: ldr      x20, [x20, #0x2c0]
0x1cacdb8: ldr      x21, [x21, #0x2c8] | 0x41872c8 'Info popup'
0x1cacdbc: ldr      x22, [x22, #0x2d0] | 0x41872d0 'Welcome To Native Popup'
0x1cacdc0: ldr      x23, [x23, #0x40] | 0x4186040 'Ok'
0x1cacdc4: mov      x19, x0
0x1cacdc8: tbnz     w8, #0, #0x1cace10
0x1cacdcc: adrp     x0, #0x4186000
0x1cacdd0: ldr      x0, [x0, #0xf18]
0x1cacdd4: bl       #0x1b64570 | 
0x1cacdd8: adrp     x0, #0x4187000
0x1cacddc: ldr      x0, [x0, #0x2c0]
0x1cacde0: bl       #0x1b64570 | 
0x1cacde4: adrp     x0, #0x4186000
0x1cacde8: ldr      x0, [x0, #0x40] | 0x4186040 'Ok'
0x1cacdec: bl       #0x1b64570 | 
0x1cacdf0: adrp     x0, #0x4187000
0x1cacdf4: ldr      x0, [x0, #0x2d0] | 0x41872d0 'Welcome To Native Popup'
0x1cacdf8: bl       #0x1b64570 | 
0x1cacdfc: adrp     x0, #0x4187000
0x1cace00: ldr      x0, [x0, #0x2c8] | 0x41872c8 'Info popup'
0x1cace04: bl       #0x1b64570 | 
0x1cace08: mov      w8, #1
0x1cace0c: strb     w8, [x24, #0x81b]
0x1cace10: ldr      x0, [x25]
0x1cace14: bl       #0x1b647b8 | 
0x1cace18: ldr      x2, [x20]
0x1cace1c: mov      x1, x19
0x1cace20: mov      x3, xzr
0x1cace24: mov      x20, x0
0x1cace28: bl       #0x33ee8e4 | System.Action$$.ctor
0x1cace2c: ldr      x0, [x21]
0x1cace30: ldr      x1, [x22]
0x1cace34: ldr      x2, [x23]
0x1cace38: mov      x3, x20
0x1cace3c: ldp      x20, x19, [sp, #0x30]
0x1cace40: ldp      x22, x21, [sp, #0x20]
0x1cace44: ldp      x24, x23, [sp, #0x10]
0x1cace48: mov      x4, xzr
0x1cace4c: ldp      x30, x25, [sp], #0x40
0x1cace50: b        #0x1d2887c | pingak9.NativeDialog$$OpenDialog

// 0x1cace54 SamplePopupView$$OnDialogConfirm
0x1cace54: stp      x30, x27, [sp, #-0x50]!
0x1cace58: stp      x26, x25, [sp, #0x10]
0x1cace5c: stp      x24, x23, [sp, #0x20]
0x1cace60: stp      x22, x21, [sp, #0x30]
0x1cace64: stp      x20, x19, [sp, #0x40]
0x1cace68: adrp     x27, #0x4475000
0x1cace6c: adrp     x26, #0x4186000
0x1cace70: adrp     x20, #0x4187000
0x1cace74: adrp     x21, #0x4187000
0x1cace78: adrp     x22, #0x4187000
0x1cace7c: adrp     x23, #0x4187000
0x1cace80: adrp     x24, #0x4187000
0x1cace84: adrp     x25, #0x4187000
0x1cace88: ldr      x26, [x26, #0xf18]
0x1cace8c: ldr      x20, [x20, #0x2d8]
0x1cace90: ldrb     w8, [x27, #0x81c]
0x1cace94: ldr      x21, [x21, #0x2e0]
0x1cace98: ldr      x22, [x22, #0x2e8] | 0x41872e8 'Confirm popup'
0x1cace9c: ldr      x23, [x23, #0x2f0] | 0x41872f0 'Do you wants about app?'
0x1cacea0: ldr      x24, [x24, #0x2f8] | 0x41872f8 'Yes'
0x1cacea4: ldr      x25, [x25, #0x300] | 0x4187300 'No'
0x1cacea8: mov      x19, x0
0x1caceac: tbnz     w8, #0, #0x1cacf0c
0x1caceb0: adrp     x0, #0x4186000
0x1caceb4: ldr      x0, [x0, #0xf18]
0x1caceb8: bl       #0x1b64570 | 
0x1cacebc: adrp     x0, #0x4187000
0x1cacec0: ldr      x0, [x0, #0x2d8]
0x1cacec4: bl       #0x1b64570 | 
0x1cacec8: adrp     x0, #0x4187000
0x1cacecc: ldr      x0, [x0, #0x2e0]
0x1caced0: bl       #0x1b64570 | 
0x1caced4: adrp     x0, #0x4187000
0x1caced8: ldr      x0, [x0, #0x2e8] | 0x41872e8 'Confirm popup'
0x1cacedc: bl       #0x1b64570 | 
0x1cacee0: adrp     x0, #0x4187000
0x1cacee4: ldr      x0, [x0, #0x2f8] | 0x41872f8 'Yes'
0x1cacee8: bl       #0x1b64570 | 
0x1caceec: adrp     x0, #0x4187000
0x1cacef0: ldr      x0, [x0, #0x2f0] | 0x41872f0 'Do you wants about app?'
0x1cacef4: bl       #0x1b64570 | 
0x1cacef8: adrp     x0, #0x4187000
0x1cacefc: ldr      x0, [x0, #0x300] | 0x4187300 'No'
0x1cacf00: bl       #0x1b64570 | 
0x1cacf04: mov      w8, #1
0x1cacf08: strb     w8, [x27, #0x81c]
0x1cacf0c: ldr      x0, [x26]
0x1cacf10: bl       #0x1b647b8 | 
0x1cacf14: ldr      x2, [x20]
0x1cacf18: mov      x1, x19
0x1cacf1c: mov      x3, xzr
0x1cacf20: mov      x20, x0
0x1cacf24: bl       #0x33ee8e4 | System.Action$$.ctor
0x1cacf28: ldr      x0, [x26]
0x1cacf2c: bl       #0x1b647b8 | 
0x1cacf30: ldr      x2, [x21]
0x1cacf34: mov      x1, x19
0x1cacf38: mov      x3, xzr
0x1cacf3c: mov      x21, x0
0x1cacf40: bl       #0x33ee8e4 | System.Action$$.ctor
0x1cacf44: ldr      x0, [x22]
0x1cacf48: ldr      x1, [x23]
0x1cacf4c: ldr      x2, [x24]
0x1cacf50: ldr      x3, [x25]
0x1cacf54: mov      x4, x20
0x1cacf58: mov      x5, x21
0x1cacf5c: ldp      x20, x19, [sp, #0x40]
0x1cacf60: ldp      x22, x21, [sp, #0x30]
0x1cacf64: ldp      x24, x23, [sp, #0x20]
0x1cacf68: ldp      x26, x25, [sp, #0x10]
0x1cacf6c: mov      x6, xzr
0x1cacf70: ldp      x30, x27, [sp], #0x50
0x1cacf74: b        #0x1d28880 | pingak9.NativeDialog$$OpenDialog

// 0x1cacf78 SamplePopupView$$OnDialogNeutral
0x1cacf78: sub      sp, sp, #0x70
0x1cacf7c: stp      x29, x30, [sp, #0x10]
0x1cacf80: stp      x28, x27, [sp, #0x20]
0x1cacf84: stp      x26, x25, [sp, #0x30]
0x1cacf88: stp      x24, x23, [sp, #0x40]
0x1cacf8c: stp      x22, x21, [sp, #0x50]
0x1cacf90: stp      x20, x19, [sp, #0x60]
0x1cacf94: adrp     x29, #0x4475000
0x1cacf98: adrp     x28, #0x4186000
0x1cacf9c: adrp     x20, #0x4187000
0x1cacfa0: adrp     x21, #0x4187000
0x1cacfa4: adrp     x22, #0x4187000
0x1cacfa8: adrp     x23, #0x4187000
0x1cacfac: adrp     x24, #0x4187000
0x1cacfb0: adrp     x25, #0x4187000
0x1cacfb4: adrp     x26, #0x4187000
0x1cacfb8: adrp     x27, #0x4187000
0x1cacfbc: ldr      x28, [x28, #0xf18]
0x1cacfc0: ldr      x20, [x20, #0x308]
0x1cacfc4: ldr      x21, [x21, #0x310]
0x1cacfc8: ldr      x22, [x22, #0x318]
0x1cacfcc: ldrb     w8, [x29, #0x81d]
0x1cacfd0: ldr      x23, [x23, #0x320] | 0x4187320 'Like this game?'
0x1cacfd4: ldr      x24, [x24, #0x328] | 0x4187328 'Please rate to support future updates!'
0x1cacfd8: ldr      x25, [x25, #0x330] | 0x4187330 'Rate app'
0x1cacfdc: ldr      x26, [x26, #0x338] | 0x4187338 'later'
0x1cacfe0: ldr      x27, [x27, #0x340] | 0x4187340 'No, thanks'
0x1cacfe4: mov      x19, x0
0x1cacfe8: tbnz     w8, #0, #0x1cad060
0x1cacfec: adrp     x0, #0x4186000
0x1cacff0: ldr      x0, [x0, #0xf18]
0x1cacff4: bl       #0x1b64570 | 
0x1cacff8: adrp     x0, #0x4187000
0x1cacffc: ldr      x0, [x0, #0x308]
0x1cad000: bl       #0x1b64570 | 
0x1cad004: adrp     x0, #0x4187000
0x1cad008: ldr      x0, [x0, #0x310]
0x1cad00c: bl       #0x1b64570 | 
0x1cad010: adrp     x0, #0x4187000
0x1cad014: ldr      x0, [x0, #0x318]
0x1cad018: bl       #0x1b64570 | 
0x1cad01c: adrp     x0, #0x4187000
0x1cad020: ldr      x0, [x0, #0x328] | 0x4187328 'Please rate to support future updates!'
0x1cad024: bl       #0x1b64570 | 
0x1cad028: adrp     x0, #0x4187000
0x1cad02c: ldr      x0, [x0, #0x340] | 0x4187340 'No, thanks'
0x1cad030: bl       #0x1b64570 | 
0x1cad034: adrp     x0, #0x4187000
0x1cad038: ldr      x0, [x0, #0x320] | 0x4187320 'Like this game?'
0x1cad03c: bl       #0x1b64570 | 
0x1cad040: adrp     x0, #0x4187000
0x1cad044: ldr      x0, [x0, #0x338] | 0x4187338 'later'
0x1cad048: bl       #0x1b64570 | 
0x1cad04c: adrp     x0, #0x4187000
0x1cad050: ldr      x0, [x0, #0x330] | 0x4187330 'Rate app'
0x1cad054: bl       #0x1b64570 | 
0x1cad058: mov      w8, #1
0x1cad05c: strb     w8, [x29, #0x81d]
0x1cad060: ldr      x0, [x28]
0x1cad064: bl       #0x1b647b8 | 
0x1cad068: ldr      x2, [x20]
0x1cad06c: mov      x1, x19
0x1cad070: mov      x3, xzr
0x1cad074: mov      x20, x0
0x1cad078: bl       #0x33ee8e4 | System.Action$$.ctor
0x1cad07c: ldr      x0, [x28]
0x1cad080: bl       #0x1b647b8 | 
0x1cad084: ldr      x2, [x21]
0x1cad088: mov      x1, x19
0x1cad08c: mov      x3, xzr
0x1cad090: mov      x21, x0
0x1cad094: bl       #0x33ee8e4 | System.Action$$.ctor
0x1cad098: ldr      x0, [x28]
0x1cad09c: bl       #0x1b647b8 | 
0x1cad0a0: ldr      x2, [x22]
0x1cad0a4: mov      x1, x19
0x1cad0a8: mov      x3, xzr
0x1cad0ac: mov      x22, x0
0x1cad0b0: bl       #0x33ee8e4 | System.Action$$.ctor
0x1cad0b4: ldr      x0, [x23]
0x1cad0b8: ldr      x1, [x24]
0x1cad0bc: ldr      x2, [x25]
0x1cad0c0: ldr      x3, [x26]
0x1cad0c4: ldr      x4, [x27]
0x1cad0c8: mov      x5, x20
0x1cad0cc: mov      x6, x21
0x1cad0d0: mov      x7, x22
0x1cad0d4: str      xzr, [sp]
0x1cad0d8: bl       #0x1d28884 | pingak9.NativeDialog$$OpenDialog
0x1cad0dc: ldp      x20, x19, [sp, #0x60]
0x1cad0e0: ldp      x22, x21, [sp, #0x50]
0x1cad0e4: ldp      x24, x23, [sp, #0x40]
0x1cad0e8: ldp      x26, x25, [sp, #0x30]
0x1cad0ec: ldp      x28, x27, [sp, #0x20]
0x1cad0f0: ldp      x29, x30, [sp, #0x10]
0x1cad0f4: add      sp, sp, #0x70
0x1cad0f8: ret      

// 0x1cad0fc SamplePopupView$$OnDatePicker
0x1cad0fc: stp      x30, x23, [sp, #-0x30]!
0x1cad100: stp      x22, x21, [sp, #0x10]
0x1cad104: stp      x20, x19, [sp, #0x20]
0x1cad108: adrp     x23, #0x4475000
0x1cad10c: adrp     x22, #0x4187000
0x1cad110: adrp     x20, #0x4187000
0x1cad114: adrp     x21, #0x4187000
0x1cad118: ldrb     w8, [x23, #0x81e]
0x1cad11c: ldr      x22, [x22, #0x348]
0x1cad120: ldr      x20, [x20, #0x350]
0x1cad124: ldr      x21, [x21, #0x358]
0x1cad128: mov      x19, x0
0x1cad12c: tbnz     w8, #0, #0x1cad15c
0x1cad130: adrp     x0, #0x4187000
0x1cad134: ldr      x0, [x0, #0x348]
0x1cad138: bl       #0x1b64570 | 
0x1cad13c: adrp     x0, #0x4187000
0x1cad140: ldr      x0, [x0, #0x350]
0x1cad144: bl       #0x1b64570 | 
0x1cad148: adrp     x0, #0x4187000
0x1cad14c: ldr      x0, [x0, #0x358]
0x1cad150: bl       #0x1b64570 | 
0x1cad154: mov      w8, #1
0x1cad158: strb     w8, [x23, #0x81e]
0x1cad15c: ldr      x0, [x22]
0x1cad160: bl       #0x1b647b8 | 
0x1cad164: ldr      x2, [x20]
0x1cad168: mov      x1, x19
0x1cad16c: mov      x3, xzr
0x1cad170: mov      x20, x0
0x1cad174: bl       #0x3034cf4 | System.Action<DateTime>$$.ctor
0x1cad178: ldr      x0, [x22]
0x1cad17c: bl       #0x1b647b8 | 
0x1cad180: ldr      x2, [x21]
0x1cad184: mov      x1, x19
0x1cad188: mov      x3, xzr
0x1cad18c: mov      x21, x0
0x1cad190: bl       #0x3034cf4 | System.Action<DateTime>$$.ctor
0x1cad194: mov      x3, x20
0x1cad198: mov      x4, x21
0x1cad19c: ldp      x20, x19, [sp, #0x20]
0x1cad1a0: ldp      x22, x21, [sp, #0x10]
0x1cad1a4: mov      w0, #0x7c8
0x1cad1a8: mov      w1, #5
0x1cad1ac: mov      w2, #0xa
0x1cad1b0: mov      x5, xzr
0x1cad1b4: ldp      x30, x23, [sp], #0x30
0x1cad1b8: b        #0x1d28888 | pingak9.NativeDialog$$OpenDatePicker

// 0x1cad1bc SamplePopupView$$OnTimePicker
0x1cad1bc: stp      x30, x23, [sp, #-0x30]!
0x1cad1c0: stp      x22, x21, [sp, #0x10]
0x1cad1c4: stp      x20, x19, [sp, #0x20]
0x1cad1c8: adrp     x23, #0x4475000
0x1cad1cc: adrp     x22, #0x4187000
0x1cad1d0: adrp     x20, #0x4187000
0x1cad1d4: adrp     x21, #0x4187000
0x1cad1d8: ldrb     w8, [x23, #0x81f]
0x1cad1dc: ldr      x22, [x22, #0x348]
0x1cad1e0: ldr      x20, [x20, #0x360]
0x1cad1e4: ldr      x21, [x21, #0x368]
0x1cad1e8: mov      x19, x0
0x1cad1ec: tbnz     w8, #0, #0x1cad21c
0x1cad1f0: adrp     x0, #0x4187000
0x1cad1f4: ldr      x0, [x0, #0x348]
0x1cad1f8: bl       #0x1b64570 | 
0x1cad1fc: adrp     x0, #0x4187000
0x1cad200: ldr      x0, [x0, #0x360]
0x1cad204: bl       #0x1b64570 | 
0x1cad208: adrp     x0, #0x4187000
0x1cad20c: ldr      x0, [x0, #0x368]
0x1cad210: bl       #0x1b64570 | 
0x1cad214: mov      w8, #1
0x1cad218: strb     w8, [x23, #0x81f]
0x1cad21c: ldr      x0, [x22]
0x1cad220: bl       #0x1b647b8 | 
0x1cad224: ldr      x2, [x20]
0x1cad228: mov      x1, x19
0x1cad22c: mov      x3, xzr
0x1cad230: mov      x20, x0
0x1cad234: bl       #0x3034cf4 | System.Action<DateTime>$$.ctor
0x1cad238: ldr      x0, [x22]
0x1cad23c: bl       #0x1b647b8 | 
0x1cad240: ldr      x2, [x21]
0x1cad244: mov      x1, x19
0x1cad248: mov      x3, xzr
0x1cad24c: mov      x21, x0
0x1cad250: bl       #0x3034cf4 | System.Action<DateTime>$$.ctor
0x1cad254: mov      x0, x20
0x1cad258: mov      x1, x21
0x1cad25c: ldp      x20, x19, [sp, #0x20]
0x1cad260: ldp      x22, x21, [sp, #0x10]
0x1cad264: mov      x2, xzr
0x1cad268: ldp      x30, x23, [sp], #0x30
0x1cad26c: b        #0x1d2888c | pingak9.NativeDialog$$OpenTimePicker

// 0x1cad270 SamplePopupView$$.ctor
0x1cad270: mov      x1, xzr
0x1cad274: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor

// 0x1cad278 SamplePopupView$$<OnDialogInfo>b__2_0
0x1cad278: stp      x30, x21, [sp, #-0x20]!
0x1cad27c: stp      x20, x19, [sp, #0x10]
0x1cad280: adrp     x20, #0x4475000
0x1cad284: adrp     x21, #0x4187000
0x1cad288: ldrb     w8, [x20, #0x820]
0x1cad28c: ldr      x21, [x21, #0x370] | 0x4187370 'OK Button pressed'
0x1cad290: mov      x19, x0
0x1cad294: tbnz     w8, #0, #0x1cad2ac
0x1cad298: adrp     x0, #0x4187000
0x1cad29c: ldr      x0, [x0, #0x370] | 0x4187370 'OK Button pressed'
0x1cad2a0: bl       #0x1b64570 | 
0x1cad2a4: mov      w8, #1
0x1cad2a8: strb     w8, [x20, #0x820]
0x1cad2ac: ldr      x1, [x21]
0x1cad2b0: mov      x0, x19
0x1cad2b4: ldp      x20, x19, [sp, #0x10]
0x1cad2b8: ldp      x30, x21, [sp], #0x20
0x1cad2bc: b        #0x1cacd08 | SamplePopupView$$DebugLog

// 0x1cad2c0 SamplePopupView$$<OnDialogConfirm>b__3_0
0x1cad2c0: stp      x30, x21, [sp, #-0x20]!
0x1cad2c4: stp      x20, x19, [sp, #0x10]
0x1cad2c8: adrp     x20, #0x4475000
0x1cad2cc: adrp     x21, #0x4187000
0x1cad2d0: ldrb     w8, [x20, #0x821]
0x1cad2d4: ldr      x21, [x21, #0x378] | 0x4187378 'Yes Button pressed'
0x1cad2d8: mov      x19, x0
0x1cad2dc: tbnz     w8, #0, #0x1cad2f4
0x1cad2e0: adrp     x0, #0x4187000
0x1cad2e4: ldr      x0, [x0, #0x378] | 0x4187378 'Yes Button pressed'
0x1cad2e8: bl       #0x1b64570 | 
0x1cad2ec: mov      w8, #1
0x1cad2f0: strb     w8, [x20, #0x821]
0x1cad2f4: ldr      x1, [x21]
0x1cad2f8: mov      x0, x19
0x1cad2fc: ldp      x20, x19, [sp, #0x10]
0x1cad300: ldp      x30, x21, [sp], #0x20
0x1cad304: b        #0x1cacd08 | SamplePopupView$$DebugLog

// 0x1cad308 SamplePopupView$$<OnDialogConfirm>b__3_1
0x1cad308: stp      x30, x21, [sp, #-0x20]!
0x1cad30c: stp      x20, x19, [sp, #0x10]
0x1cad310: adrp     x20, #0x4475000
0x1cad314: adrp     x21, #0x4187000
0x1cad318: ldrb     w8, [x20, #0x822]
0x1cad31c: ldr      x21, [x21, #0x380] | 0x4187380 'No Button pressed'
0x1cad320: mov      x19, x0
0x1cad324: tbnz     w8, #0, #0x1cad33c
0x1cad328: adrp     x0, #0x4187000
0x1cad32c: ldr      x0, [x0, #0x380] | 0x4187380 'No Button pressed'
0x1cad330: bl       #0x1b64570 | 
0x1cad334: mov      w8, #1
0x1cad338: strb     w8, [x20, #0x822]
0x1cad33c: ldr      x1, [x21]
0x1cad340: mov      x0, x19
0x1cad344: ldp      x20, x19, [sp, #0x10]
0x1cad348: ldp      x30, x21, [sp], #0x20
0x1cad34c: b        #0x1cacd08 | SamplePopupView$$DebugLog

// 0x1cad350 SamplePopupView$$<OnDialogNeutral>b__4_0
0x1cad350: stp      x30, x21, [sp, #-0x20]!
0x1cad354: stp      x20, x19, [sp, #0x10]
0x1cad358: adrp     x20, #0x4475000
0x1cad35c: adrp     x21, #0x4187000
0x1cad360: ldrb     w8, [x20, #0x823]
0x1cad364: ldr      x21, [x21, #0x388] | 0x4187388 'Rate Button pressed'
0x1cad368: mov      x19, x0
0x1cad36c: tbnz     w8, #0, #0x1cad384
0x1cad370: adrp     x0, #0x4187000
0x1cad374: ldr      x0, [x0, #0x388] | 0x4187388 'Rate Button pressed'
0x1cad378: bl       #0x1b64570 | 
0x1cad37c: mov      w8, #1
0x1cad380: strb     w8, [x20, #0x823]
0x1cad384: ldr      x1, [x21]
0x1cad388: mov      x0, x19
0x1cad38c: ldp      x20, x19, [sp, #0x10]
0x1cad390: ldp      x30, x21, [sp], #0x20
0x1cad394: b        #0x1cacd08 | SamplePopupView$$DebugLog

// 0x1cad398 SamplePopupView$$<OnDialogNeutral>b__4_1
0x1cad398: stp      x30, x21, [sp, #-0x20]!
0x1cad39c: stp      x20, x19, [sp, #0x10]
0x1cad3a0: adrp     x20, #0x4475000
0x1cad3a4: adrp     x21, #0x4187000
0x1cad3a8: ldrb     w8, [x20, #0x824]
0x1cad3ac: ldr      x21, [x21, #0x390] | 0x4187390 'Later Button pressed'
0x1cad3b0: mov      x19, x0
0x1cad3b4: tbnz     w8, #0, #0x1cad3cc
0x1cad3b8: adrp     x0, #0x4187000
0x1cad3bc: ldr      x0, [x0, #0x390] | 0x4187390 'Later Button pressed'
0x1cad3c0: bl       #0x1b64570 | 
0x1cad3c4: mov      w8, #1
0x1cad3c8: strb     w8, [x20, #0x824]
0x1cad3cc: ldr      x1, [x21]
0x1cad3d0: mov      x0, x19
0x1cad3d4: ldp      x20, x19, [sp, #0x10]
0x1cad3d8: ldp      x30, x21, [sp], #0x20
0x1cad3dc: b        #0x1cacd08 | SamplePopupView$$DebugLog

// 0x1cad3e0 SamplePopupView$$<OnDialogNeutral>b__4_2
0x1cad3e0: stp      x30, x21, [sp, #-0x20]!
0x1cad3e4: stp      x20, x19, [sp, #0x10]
0x1cad3e8: adrp     x20, #0x4475000
0x1cad3ec: adrp     x21, #0x4187000
0x1cad3f0: ldrb     w8, [x20, #0x825]
0x1cad3f4: ldr      x21, [x21, #0x380] | 0x4187380 'No Button pressed'
0x1cad3f8: mov      x19, x0
0x1cad3fc: tbnz     w8, #0, #0x1cad414
0x1cad400: adrp     x0, #0x4187000
0x1cad404: ldr      x0, [x0, #0x380] | 0x4187380 'No Button pressed'
0x1cad408: bl       #0x1b64570 | 
0x1cad40c: mov      w8, #1
0x1cad410: strb     w8, [x20, #0x825]
0x1cad414: ldr      x1, [x21]
0x1cad418: mov      x0, x19
0x1cad41c: ldp      x20, x19, [sp, #0x10]
0x1cad420: ldp      x30, x21, [sp], #0x20
0x1cad424: b        #0x1cacd08 | SamplePopupView$$DebugLog

// 0x1cad428 SamplePopupView$$<OnDatePicker>b__5_0
0x1cad428: sub      sp, sp, #0x30
0x1cad42c: stp      x30, x21, [sp, #0x10]
0x1cad430: stp      x20, x19, [sp, #0x20]
0x1cad434: adrp     x20, #0x4475000
0x1cad438: str      x1, [sp, #8]
0x1cad43c: adrp     x21, #0x4185000
0x1cad440: ldrb     w8, [x20, #0x826]
0x1cad444: ldr      x21, [x21, #0x280]
0x1cad448: mov      x19, x0
0x1cad44c: tbnz     w8, #0, #0x1cad464
0x1cad450: adrp     x0, #0x4185000
0x1cad454: ldr      x0, [x0, #0x280]
0x1cad458: bl       #0x1b64570 | 
0x1cad45c: mov      w8, #1
0x1cad460: strb     w8, [x20, #0x826]
0x1cad464: ldr      x0, [x21]
0x1cad468: ldr      w8, [x0, #0xe0]
0x1cad46c: cbnz     w8, #0x1cad474
0x1cad470: bl       #0x1b646a4 | 
0x1cad474: add      x0, sp, #8
0x1cad478: mov      x1, xzr
0x1cad47c: bl       #0x345ce0c | System.DateTime$$ToString
0x1cad480: mov      x1, x0
0x1cad484: mov      x0, x19
0x1cad488: bl       #0x1cacd08 | SamplePopupView$$DebugLog
0x1cad48c: ldp      x20, x19, [sp, #0x20]
0x1cad490: ldp      x30, x21, [sp, #0x10]
0x1cad494: add      sp, sp, #0x30
0x1cad498: ret      

// 0x1cad49c SamplePopupView$$<OnDatePicker>b__5_1
0x1cad49c: sub      sp, sp, #0x30
0x1cad4a0: stp      x30, x21, [sp, #0x10]
0x1cad4a4: stp      x20, x19, [sp, #0x20]
0x1cad4a8: adrp     x20, #0x4475000
0x1cad4ac: str      x1, [sp, #8]
0x1cad4b0: adrp     x21, #0x4185000
0x1cad4b4: ldrb     w8, [x20, #0x827]
0x1cad4b8: ldr      x21, [x21, #0x280]
0x1cad4bc: mov      x19, x0
0x1cad4c0: tbnz     w8, #0, #0x1cad4d8
0x1cad4c4: adrp     x0, #0x4185000
0x1cad4c8: ldr      x0, [x0, #0x280]
0x1cad4cc: bl       #0x1b64570 | 
0x1cad4d0: mov      w8, #1
0x1cad4d4: strb     w8, [x20, #0x827]
0x1cad4d8: ldr      x0, [x21]
0x1cad4dc: ldr      w8, [x0, #0xe0]
0x1cad4e0: cbnz     w8, #0x1cad4e8
0x1cad4e4: bl       #0x1b646a4 | 
0x1cad4e8: add      x0, sp, #8
0x1cad4ec: mov      x1, xzr
0x1cad4f0: bl       #0x345ce0c | System.DateTime$$ToString
0x1cad4f4: mov      x1, x0
0x1cad4f8: mov      x0, x19
0x1cad4fc: bl       #0x1cacd08 | SamplePopupView$$DebugLog
0x1cad500: ldp      x20, x19, [sp, #0x20]
0x1cad504: ldp      x30, x21, [sp, #0x10]
0x1cad508: add      sp, sp, #0x30
0x1cad50c: ret      

// 0x1cad510 SamplePopupView$$<OnTimePicker>b__6_0
0x1cad510: sub      sp, sp, #0x30
0x1cad514: stp      x30, x21, [sp, #0x10]
0x1cad518: stp      x20, x19, [sp, #0x20]
0x1cad51c: adrp     x20, #0x4475000
0x1cad520: str      x1, [sp, #8]
0x1cad524: adrp     x21, #0x4185000
0x1cad528: ldrb     w8, [x20, #0x828]
0x1cad52c: ldr      x21, [x21, #0x280]
0x1cad530: mov      x19, x0
0x1cad534: tbnz     w8, #0, #0x1cad54c
0x1cad538: adrp     x0, #0x4185000
0x1cad53c: ldr      x0, [x0, #0x280]
0x1cad540: bl       #0x1b64570 | 
0x1cad544: mov      w8, #1
0x1cad548: strb     w8, [x20, #0x828]
0x1cad54c: ldr      x0, [x21]
0x1cad550: ldr      w8, [x0, #0xe0]
0x1cad554: cbnz     w8, #0x1cad55c
0x1cad558: bl       #0x1b646a4 | 
0x1cad55c: add      x0, sp, #8
0x1cad560: mov      x1, xzr
0x1cad564: bl       #0x345ce0c | System.DateTime$$ToString
0x1cad568: mov      x1, x0
0x1cad56c: mov      x0, x19
0x1cad570: bl       #0x1cacd08 | SamplePopupView$$DebugLog
0x1cad574: ldp      x20, x19, [sp, #0x20]
0x1cad578: ldp      x30, x21, [sp, #0x10]
0x1cad57c: add      sp, sp, #0x30
0x1cad580: ret      

// 0x1cad584 SamplePopupView$$<OnTimePicker>b__6_1
0x1cad584: sub      sp, sp, #0x30
0x1cad588: stp      x30, x21, [sp, #0x10]
0x1cad58c: stp      x20, x19, [sp, #0x20]
0x1cad590: adrp     x20, #0x4475000
0x1cad594: str      x1, [sp, #8]
0x1cad598: adrp     x21, #0x4185000
0x1cad59c: ldrb     w8, [x20, #0x829]
0x1cad5a0: ldr      x21, [x21, #0x280]
0x1cad5a4: mov      x19, x0
0x1cad5a8: tbnz     w8, #0, #0x1cad5c0
0x1cad5ac: adrp     x0, #0x4185000
0x1cad5b0: ldr      x0, [x0, #0x280]
0x1cad5b4: bl       #0x1b64570 | 
0x1cad5b8: mov      w8, #1
0x1cad5bc: strb     w8, [x20, #0x829]
0x1cad5c0: ldr      x0, [x21]
0x1cad5c4: ldr      w8, [x0, #0xe0]
0x1cad5c8: cbnz     w8, #0x1cad5d0
0x1cad5cc: bl       #0x1b646a4 | 
0x1cad5d0: add      x0, sp, #8
0x1cad5d4: mov      x1, xzr
0x1cad5d8: bl       #0x345ce0c | System.DateTime$$ToString
0x1cad5dc: mov      x1, x0
0x1cad5e0: mov      x0, x19
0x1cad5e4: bl       #0x1cacd08 | SamplePopupView$$DebugLog
0x1cad5e8: ldp      x20, x19, [sp, #0x20]
0x1cad5ec: ldp      x30, x21, [sp, #0x10]
0x1cad5f0: add      sp, sp, #0x30
0x1cad5f4: ret      

// 0x1ce0a70 Phigros2.VisionReplay.Inspector$$Start
0x1ce0a70: str      x30, [sp, #-0x40]!
0x1ce0a74: stp      x24, x23, [sp, #0x10]
0x1ce0a78: stp      x22, x21, [sp, #0x20]
0x1ce0a7c: stp      x20, x19, [sp, #0x30]
0x1ce0a80: adrp     x20, #0x4475000
0x1ce0a84: ldrb     w8, [x20, #0x9e8]
0x1ce0a88: mov      x19, x0
0x1ce0a8c: tbnz     w8, #0, #0x1ce0abc
0x1ce0a90: adrp     x0, #0x4189000
0x1ce0a94: ldr      x0, [x0, #0x910] | 0x4189910 'Vision Replay: ON\nSimulate Mode: '
0x1ce0a98: bl       #0x1b64570 | 
0x1ce0a9c: adrp     x0, #0x4189000
0x1ce0aa0: ldr      x0, [x0, #0x918] | 0x4189918 'ON'
0x1ce0aa4: bl       #0x1b64570 | 
0x1ce0aa8: adrp     x0, #0x4189000
0x1ce0aac: ldr      x0, [x0, #0x920] | 0x4189920 'OFF'
0x1ce0ab0: bl       #0x1b64570 | 
0x1ce0ab4: mov      w8, #1
0x1ce0ab8: strb     w8, [x20, #0x9e8]
0x1ce0abc: adrp     x21, #0x4475000
0x1ce0ac0: ldrb     w8, [x21, #0x95e]
0x1ce0ac4: ldr      x20, [x19, #0x20]
0x1ce0ac8: cbnz     w8, #0x1ce0ae0
0x1ce0acc: adrp     x0, #0x4189000
0x1ce0ad0: ldr      x0, [x0, #0xf8]
0x1ce0ad4: bl       #0x1b64570 | 
0x1ce0ad8: mov      w8, #1
0x1ce0adc: strb     w8, [x21, #0x95e]
0x1ce0ae0: cbz      x20, #0x1ce0b90
0x1ce0ae4: adrp     x23, #0x4189000
0x1ce0ae8: ldr      x23, [x23, #0xf8]
0x1ce0aec: adrp     x24, #0x4189000
0x1ce0af0: adrp     x21, #0x4189000
0x1ce0af4: adrp     x22, #0x4189000
0x1ce0af8: ldr      x8, [x23]
0x1ce0afc: mov      x0, x20
0x1ce0b00: mov      x2, xzr
0x1ce0b04: ldr      x8, [x8, #0xb8]
0x1ce0b08: ldrb     w1, [x8]
0x1ce0b0c: ldr      x24, [x24, #0x910] | 0x4189910 'Vision Replay: ON\nSimulate Mode: '
0x1ce0b10: ldr      x21, [x21, #0x920] | 0x4189920 'OFF'
0x1ce0b14: ldr      x22, [x22, #0x918] | 0x4189918 'ON'
0x1ce0b18: bl       #0x3c5ccc4 | UnityEngine.Behaviour$$set_enabled
0x1ce0b1c: adrp     x20, #0x4475000
0x1ce0b20: ldrb     w8, [x20, #0x95f]
0x1ce0b24: ldr      x19, [x19, #0x20]
0x1ce0b28: cbnz     w8, #0x1ce0b40
0x1ce0b2c: adrp     x0, #0x4189000
0x1ce0b30: ldr      x0, [x0, #0xf8]
0x1ce0b34: bl       #0x1b64570 | 
0x1ce0b38: mov      w8, #1
0x1ce0b3c: strb     w8, [x20, #0x95f]
0x1ce0b40: ldr      x8, [x23]
0x1ce0b44: ldr      x0, [x24]
0x1ce0b48: mov      x2, xzr
0x1ce0b4c: ldr      x8, [x8, #0xb8]
0x1ce0b50: ldrb     w8, [x8, #1]
0x1ce0b54: cmp      w8, #0
0x1ce0b58: csel     x8, x21, x22, eq
0x1ce0b5c: ldr      x1, [x8]
0x1ce0b60: bl       #0x32fce8c | System.String$$Concat
0x1ce0b64: cbz      x19, #0x1ce0b90
0x1ce0b68: ldr      x8, [x19]
0x1ce0b6c: mov      x1, x0
0x1ce0b70: mov      x0, x19
0x1ce0b74: ldp      x20, x19, [sp, #0x30]
0x1ce0b78: ldr      x3, [x8, #0x5e8]
0x1ce0b7c: ldr      x2, [x8, #0x5f0]
0x1ce0b80: ldp      x22, x21, [sp, #0x20]
0x1ce0b84: ldp      x24, x23, [sp, #0x10]
0x1ce0b88: ldr      x30, [sp], #0x40
0x1ce0b8c: br       x3
0x1ce0b90: bl       #0x1b647c8 | 

// 0x1ce0b94 Phigros2.VisionReplay.Inspector$$.ctor
0x1ce0b94: mov      x1, xzr
0x1ce0b98: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor

// 0x1ce0b9c Phigros2.VisionReplay.VisionReplay$$get_IsOn
0x1ce0b9c: str      x30, [sp, #-0x20]!
0x1ce0ba0: stp      x20, x19, [sp, #0x10]
0x1ce0ba4: adrp     x19, #0x4475000
0x1ce0ba8: adrp     x20, #0x4189000
0x1ce0bac: ldrb     w8, [x19, #0x9e9]
0x1ce0bb0: ldr      x20, [x20, #0xf8]
0x1ce0bb4: tbnz     w8, #0, #0x1ce0bcc
0x1ce0bb8: adrp     x0, #0x4189000
0x1ce0bbc: ldr      x0, [x0, #0xf8]
0x1ce0bc0: bl       #0x1b64570 | 
0x1ce0bc4: mov      w8, #1
0x1ce0bc8: strb     w8, [x19, #0x9e9]
0x1ce0bcc: ldr      x8, [x20]
0x1ce0bd0: ldp      x20, x19, [sp, #0x10]
0x1ce0bd4: ldr      x8, [x8, #0xb8]
0x1ce0bd8: ldrb     w0, [x8]
0x1ce0bdc: ldr      x30, [sp], #0x20
0x1ce0be0: ret      

// 0x1ce0be4 Phigros2.VisionReplay.VisionReplay$$set_IsOn
0x1ce0be4: stp      x30, x21, [sp, #-0x20]!
0x1ce0be8: stp      x20, x19, [sp, #0x10]
0x1ce0bec: adrp     x21, #0x4475000
0x1ce0bf0: adrp     x20, #0x4189000
0x1ce0bf4: ldrb     w8, [x21, #0x9ea]
0x1ce0bf8: ldr      x20, [x20, #0xf8]
0x1ce0bfc: mov      w19, w0
0x1ce0c00: tbnz     w8, #0, #0x1ce0c18
0x1ce0c04: adrp     x0, #0x4189000
0x1ce0c08: ldr      x0, [x0, #0xf8]
0x1ce0c0c: bl       #0x1b64570 | 
0x1ce0c10: mov      w8, #1
0x1ce0c14: strb     w8, [x21, #0x9ea]
0x1ce0c18: ldr      x8, [x20]
0x1ce0c1c: and      w9, w19, #1
0x1ce0c20: ldp      x20, x19, [sp, #0x10]
0x1ce0c24: ldr      x8, [x8, #0xb8]
0x1ce0c28: strb     w9, [x8]
0x1ce0c2c: ldp      x30, x21, [sp], #0x20
0x1ce0c30: ret      

// 0x1ce0c34 Phigros2.VisionReplay.VisionReplay$$get_IsSimulateMode
0x1ce0c34: str      x30, [sp, #-0x20]!
0x1ce0c38: stp      x20, x19, [sp, #0x10]
0x1ce0c3c: adrp     x19, #0x4475000
0x1ce0c40: adrp     x20, #0x4189000
0x1ce0c44: ldrb     w8, [x19, #0x9eb]
0x1ce0c48: ldr      x20, [x20, #0xf8]
0x1ce0c4c: tbnz     w8, #0, #0x1ce0c64
0x1ce0c50: adrp     x0, #0x4189000
0x1ce0c54: ldr      x0, [x0, #0xf8]
0x1ce0c58: bl       #0x1b64570 | 
0x1ce0c5c: mov      w8, #1
0x1ce0c60: strb     w8, [x19, #0x9eb]
0x1ce0c64: ldr      x8, [x20]
0x1ce0c68: ldp      x20, x19, [sp, #0x10]
0x1ce0c6c: ldr      x8, [x8, #0xb8]
0x1ce0c70: ldrb     w0, [x8, #1]
0x1ce0c74: ldr      x30, [sp], #0x20
0x1ce0c78: ret      

// 0x1ce0c7c Phigros2.VisionReplay.VisionReplay$$set_IsSimulateMode
0x1ce0c7c: stp      x30, x21, [sp, #-0x20]!
0x1ce0c80: stp      x20, x19, [sp, #0x10]
0x1ce0c84: adrp     x21, #0x4475000
0x1ce0c88: adrp     x20, #0x4189000
0x1ce0c8c: ldrb     w8, [x21, #0x9ec]
0x1ce0c90: ldr      x20, [x20, #0xf8]
0x1ce0c94: mov      w19, w0
0x1ce0c98: tbnz     w8, #0, #0x1ce0cb0
0x1ce0c9c: adrp     x0, #0x4189000
0x1ce0ca0: ldr      x0, [x0, #0xf8]
0x1ce0ca4: bl       #0x1b64570 | 
0x1ce0ca8: mov      w8, #1
0x1ce0cac: strb     w8, [x21, #0x9ec]
0x1ce0cb0: ldr      x8, [x20]
0x1ce0cb4: and      w9, w19, #1
0x1ce0cb8: ldp      x20, x19, [sp, #0x10]
0x1ce0cbc: ldr      x8, [x8, #0xb8]
0x1ce0cc0: strb     w9, [x8, #1]
0x1ce0cc4: ldp      x30, x21, [sp], #0x20
0x1ce0cc8: ret      

// 0x1ce0ccc Phigros2.VisionReplay.VisionReplay$$TurnOn
0x1ce0ccc: stp      x30, x21, [sp, #-0x20]!
0x1ce0cd0: stp      x20, x19, [sp, #0x10]
0x1ce0cd4: adrp     x20, #0x4475000
0x1ce0cd8: adrp     x19, #0x4186000
0x1ce0cdc: ldrb     w8, [x20, #0x9ed]
0x1ce0ce0: ldr      x19, [x19, #0xe68]
0x1ce0ce4: tbnz     w8, #0, #0x1ce0d14
0x1ce0ce8: adrp     x0, #0x4186000
0x1ce0cec: ldr      x0, [x0, #0xe68]
0x1ce0cf0: bl       #0x1b64570 | 
0x1ce0cf4: adrp     x0, #0x4189000
0x1ce0cf8: ldr      x0, [x0, #0x928] | 0x4189928 'IsSimulateMode'
0x1ce0cfc: bl       #0x1b64570 | 
0x1ce0d00: adrp     x0, #0x4189000
0x1ce0d04: ldr      x0, [x0, #0x930] | 0x4189930 'IsVisionReplayOn'
0x1ce0d08: bl       #0x1b64570 | 
0x1ce0d0c: mov      w8, #1
0x1ce0d10: strb     w8, [x20, #0x9ed]
0x1ce0d14: ldr      x0, [x19]
0x1ce0d18: adrp     x19, #0x4189000
0x1ce0d1c: ldr      w8, [x0, #0xe0]
0x1ce0d20: ldr      x19, [x19, #0x930] | 0x4189930 'IsVisionReplayOn'
0x1ce0d24: cbnz     w8, #0x1ce0d2c
0x1ce0d28: bl       #0x1b646a4 | 
0x1ce0d2c: ldr      x0, [x19]
0x1ce0d30: adrp     x19, #0x4189000
0x1ce0d34: ldr      x19, [x19, #0x928] | 0x4189928 'IsSimulateMode'
0x1ce0d38: mov      w1, #1
0x1ce0d3c: mov      x2, xzr
0x1ce0d40: mov      w21, #1
0x1ce0d44: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1ce0d48: adrp     x20, #0x4475000
0x1ce0d4c: ldrb     w8, [x20, #0xa4f]
0x1ce0d50: cbnz     w8, #0x1ce0d64
0x1ce0d54: adrp     x0, #0x4189000
0x1ce0d58: ldr      x0, [x0, #0xf8]
0x1ce0d5c: bl       #0x1b64570 | 
0x1ce0d60: strb     w21, [x20, #0xa4f]
0x1ce0d64: adrp     x20, #0x4189000
0x1ce0d68: ldr      x20, [x20, #0xf8]
0x1ce0d6c: mov      w1, wzr
0x1ce0d70: mov      x2, xzr
0x1ce0d74: ldr      x8, [x20]
0x1ce0d78: ldr      x8, [x8, #0xb8]
0x1ce0d7c: strb     w21, [x8]
0x1ce0d80: ldr      x0, [x19]
0x1ce0d84: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1ce0d88: adrp     x21, #0x4475000
0x1ce0d8c: ldrb     w8, [x21, #0xa50]
0x1ce0d90: mov      w19, w0
0x1ce0d94: cbnz     w8, #0x1ce0dac
0x1ce0d98: adrp     x0, #0x4189000
0x1ce0d9c: ldr      x0, [x0, #0xf8]
0x1ce0da0: bl       #0x1b64570 | 
0x1ce0da4: mov      w8, #1
0x1ce0da8: strb     w8, [x21, #0xa50]
0x1ce0dac: ldr      x8, [x20]
0x1ce0db0: and      w9, w19, #1
0x1ce0db4: ldp      x20, x19, [sp, #0x10]
0x1ce0db8: ldr      x8, [x8, #0xb8]
0x1ce0dbc: strb     w9, [x8, #1]
0x1ce0dc0: ldp      x30, x21, [sp], #0x20
0x1ce0dc4: b        #0x1ce0dc8 | Phigros2.VisionReplay.VisionReplay$$InitC8ReplayProcess

// 0x1ce0dc8 Phigros2.VisionReplay.VisionReplay$$InitC8ReplayProcess
0x1ce0dc8: stp      x30, x21, [sp, #-0x20]!
0x1ce0dcc: stp      x20, x19, [sp, #0x10]
0x1ce0dd0: adrp     x19, #0x4475000
0x1ce0dd4: adrp     x20, #0x4188000
0x1ce0dd8: ldrb     w8, [x19, #0x9ef]
0x1ce0ddc: ldr      x20, [x20, #0xfb8]
0x1ce0de0: tbnz     w8, #0, #0x1ce0e04
0x1ce0de4: adrp     x0, #0x4188000
0x1ce0de8: ldr      x0, [x0, #0xfb8]
0x1ce0dec: bl       #0x1b64570 | 
0x1ce0df0: adrp     x0, #0x4186000
0x1ce0df4: ldr      x0, [x0, #0xe68]
0x1ce0df8: bl       #0x1b64570 | 
0x1ce0dfc: mov      w8, #1
0x1ce0e00: strb     w8, [x19, #0x9ef]
0x1ce0e04: ldr      x0, [x20]
0x1ce0e08: ldr      w8, [x0, #0xe0]
0x1ce0e0c: cbnz     w8, #0x1ce0e14
0x1ce0e10: bl       #0x1b646a4 | 
0x1ce0e14: adrp     x19, #0x4475000
0x1ce0e18: ldrb     w8, [x19, #0xa4a]
0x1ce0e1c: cbnz     w8, #0x1ce0e34
0x1ce0e20: adrp     x0, #0x4188000
0x1ce0e24: ldr      x0, [x0, #0xfb8]
0x1ce0e28: bl       #0x1b64570 | 
0x1ce0e2c: mov      w8, #1
0x1ce0e30: strb     w8, [x19, #0xa4a]
0x1ce0e34: ldr      x0, [x20]
0x1ce0e38: adrp     x21, #0x4186000
0x1ce0e3c: ldr      w8, [x0, #0xe0]
0x1ce0e40: ldr      x21, [x21, #0xe68]
0x1ce0e44: cbnz     w8, #0x1ce0e50
0x1ce0e48: bl       #0x1b646a4 | 
0x1ce0e4c: ldr      x0, [x20]
0x1ce0e50: ldr      x8, [x21]
0x1ce0e54: ldr      x9, [x0, #0xb8]
0x1ce0e58: ldr      w10, [x8, #0xe0]
0x1ce0e5c: ldr      x19, [x9, #0x40]
0x1ce0e60: cbnz     w10, #0x1ce0e6c
0x1ce0e64: mov      x0, x8
0x1ce0e68: bl       #0x1b646a4 | 
0x1ce0e6c: mov      x0, x19
0x1ce0e70: mov      w1, wzr
0x1ce0e74: mov      x2, xzr
0x1ce0e78: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1ce0e7c: tbz      w0, #0, #0x1ce0e84
0x1ce0e80: bl       #0x1ce1060 | Phigros2.VisionReplay.VisionReplay$$ResetC8Process
0x1ce0e84: ldr      x0, [x20]
0x1ce0e88: ldr      w8, [x0, #0xe0]
0x1ce0e8c: cbnz     w8, #0x1ce0e94
0x1ce0e90: bl       #0x1b646a4 | 
0x1ce0e94: adrp     x19, #0x4475000
0x1ce0e98: ldrb     w8, [x19, #0x95d]
0x1ce0e9c: cbnz     w8, #0x1ce0eb4
0x1ce0ea0: adrp     x0, #0x4188000
0x1ce0ea4: ldr      x0, [x0, #0xfb8]
0x1ce0ea8: bl       #0x1b64570 | 
0x1ce0eac: mov      w8, #1
0x1ce0eb0: strb     w8, [x19, #0x95d]
0x1ce0eb4: ldr      x0, [x20]
0x1ce0eb8: ldr      w8, [x0, #0xe0]
0x1ce0ebc: cbnz     w8, #0x1ce0ec8
0x1ce0ec0: bl       #0x1b646a4 | 
0x1ce0ec4: ldr      x0, [x20]
0x1ce0ec8: ldr      x8, [x21]
0x1ce0ecc: ldr      x9, [x0, #0xb8]
0x1ce0ed0: ldr      w10, [x8, #0xe0]
0x1ce0ed4: ldr      x19, [x9, #0x38]
0x1ce0ed8: cbnz     w10, #0x1ce0ee4
0x1ce0edc: mov      x0, x8
0x1ce0ee0: bl       #0x1b646a4 | 
0x1ce0ee4: mov      x0, x19
0x1ce0ee8: mov      w1, wzr
0x1ce0eec: mov      x2, xzr
0x1ce0ef0: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1ce0ef4: tbz      w0, #0, #0x1ce0f04
0x1ce0ef8: ldp      x20, x19, [sp, #0x10]
0x1ce0efc: ldp      x30, x21, [sp], #0x20
0x1ce0f00: b        #0x1ce1410 | Phigros2.VisionReplay.VisionReplay$$RecoverC8SecondPhase
0x1ce0f04: ldp      x20, x19, [sp, #0x10]
0x1ce0f08: ldp      x30, x21, [sp], #0x20
0x1ce0f0c: ret      

// 0x1ce0f10 Phigros2.VisionReplay.VisionReplay$$TurnOff
0x1ce0f10: str      x30, [sp, #-0x20]!
0x1ce0f14: stp      x20, x19, [sp, #0x10]
0x1ce0f18: adrp     x20, #0x4475000
0x1ce0f1c: adrp     x19, #0x4186000
0x1ce0f20: ldrb     w8, [x20, #0x9ee]
0x1ce0f24: ldr      x19, [x19, #0xe68]
0x1ce0f28: tbnz     w8, #0, #0x1ce0f4c
0x1ce0f2c: adrp     x0, #0x4186000
0x1ce0f30: ldr      x0, [x0, #0xe68]
0x1ce0f34: bl       #0x1b64570 | 
0x1ce0f38: adrp     x0, #0x4189000
0x1ce0f3c: ldr      x0, [x0, #0x930] | 0x4189930 'IsVisionReplayOn'
0x1ce0f40: bl       #0x1b64570 | 
0x1ce0f44: mov      w8, #1
0x1ce0f48: strb     w8, [x20, #0x9ee]
0x1ce0f4c: ldr      x0, [x19]
0x1ce0f50: adrp     x19, #0x4189000
0x1ce0f54: ldr      w8, [x0, #0xe0]
0x1ce0f58: ldr      x19, [x19, #0x930] | 0x4189930 'IsVisionReplayOn'
0x1ce0f5c: cbnz     w8, #0x1ce0f64
0x1ce0f60: bl       #0x1b646a4 | 
0x1ce0f64: ldr      x0, [x19]
0x1ce0f68: mov      w1, wzr
0x1ce0f6c: mov      x2, xzr
0x1ce0f70: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1ce0f74: adrp     x19, #0x4475000
0x1ce0f78: ldrb     w8, [x19, #0xa4f]
0x1ce0f7c: cbnz     w8, #0x1ce0f94
0x1ce0f80: adrp     x0, #0x4189000
0x1ce0f84: ldr      x0, [x0, #0xf8]
0x1ce0f88: bl       #0x1b64570 | 
0x1ce0f8c: mov      w8, #1
0x1ce0f90: strb     w8, [x19, #0xa4f]
0x1ce0f94: adrp     x19, #0x4189000
0x1ce0f98: ldr      x19, [x19, #0xf8]
0x1ce0f9c: adrp     x20, #0x4475000
0x1ce0fa0: ldr      x8, [x19]
0x1ce0fa4: ldr      x8, [x8, #0xb8]
0x1ce0fa8: strb     wzr, [x8]
0x1ce0fac: ldrb     w9, [x20, #0xa50]
0x1ce0fb0: cbnz     w9, #0x1ce0fcc
0x1ce0fb4: mov      x0, x19
0x1ce0fb8: bl       #0x1b64570 | 
0x1ce0fbc: ldr      x8, [x19]
0x1ce0fc0: mov      w9, #1
0x1ce0fc4: strb     w9, [x20, #0xa50]
0x1ce0fc8: ldr      x8, [x8, #0xb8]
0x1ce0fcc: ldp      x20, x19, [sp, #0x10]
0x1ce0fd0: strb     wzr, [x8, #1]
0x1ce0fd4: ldr      x30, [sp], #0x20
0x1ce0fd8: ret      

// 0x1ce0fdc Phigros2.VisionReplay.VisionReplay$$BootSimulateMode
0x1ce0fdc: stp      x30, x19, [sp, #-0x10]!
0x1ce0fe0: adrp     x19, #0x4475000
0x1ce0fe4: ldrb     w8, [x19, #0xa50]
0x1ce0fe8: cbnz     w8, #0x1ce1000
0x1ce0fec: adrp     x0, #0x4189000
0x1ce0ff0: ldr      x0, [x0, #0xf8]
0x1ce0ff4: bl       #0x1b64570 | 
0x1ce0ff8: mov      w8, #1
0x1ce0ffc: strb     w8, [x19, #0xa50]
0x1ce1000: adrp     x8, #0x4189000
0x1ce1004: ldr      x8, [x8, #0xf8]
0x1ce1008: mov      w9, #1
0x1ce100c: ldr      x8, [x8]
0x1ce1010: ldr      x8, [x8, #0xb8]
0x1ce1014: strb     w9, [x8, #1]
0x1ce1018: ldp      x30, x19, [sp], #0x10
0x1ce101c: ret      

// 0x1ce1020 Phigros2.VisionReplay.VisionReplay$$ExitSimulateMode
0x1ce1020: stp      x30, x19, [sp, #-0x10]!
0x1ce1024: adrp     x19, #0x4475000
0x1ce1028: ldrb     w8, [x19, #0xa50]
0x1ce102c: cbnz     w8, #0x1ce1044
0x1ce1030: adrp     x0, #0x4189000
0x1ce1034: ldr      x0, [x0, #0xf8]
0x1ce1038: bl       #0x1b64570 | 
0x1ce103c: mov      w8, #1
0x1ce1040: strb     w8, [x19, #0xa50]
0x1ce1044: adrp     x8, #0x4189000
0x1ce1048: ldr      x8, [x8, #0xf8]
0x1ce104c: ldr      x8, [x8]
0x1ce1050: ldr      x8, [x8, #0xb8]
0x1ce1054: strb     wzr, [x8, #1]
0x1ce1058: ldp      x30, x19, [sp], #0x10
0x1ce105c: ret      

// 0x1ce1060 Phigros2.VisionReplay.VisionReplay$$ResetC8Process
0x1ce1060: stp      x30, x23, [sp, #-0x30]!
0x1ce1064: stp      x22, x21, [sp, #0x10]
0x1ce1068: stp      x20, x19, [sp, #0x20]
0x1ce106c: adrp     x19, #0x4475000
0x1ce1070: adrp     x20, #0x4188000
0x1ce1074: ldrb     w8, [x19, #0x9f1]
0x1ce1078: ldr      x20, [x20, #0xfb8]
0x1ce107c: tbnz     w8, #0, #0x1ce10b8
0x1ce1080: adrp     x0, #0x4189000
0x1ce1084: ldr      x0, [x0, #0x480]
0x1ce1088: bl       #0x1b64570 | 
0x1ce108c: adrp     x0, #0x4188000
0x1ce1090: ldr      x0, [x0, #0xfb8]
0x1ce1094: bl       #0x1b64570 | 
0x1ce1098: adrp     x0, #0x4189000
0x1ce109c: ldr      x0, [x0, #0x490]
0x1ce10a0: bl       #0x1b64570 | 
0x1ce10a4: adrp     x0, #0x4186000
0x1ce10a8: ldr      x0, [x0, #0xe68]
0x1ce10ac: bl       #0x1b64570 | 
0x1ce10b0: mov      w8, #1
0x1ce10b4: strb     w8, [x19, #0x9f1]
0x1ce10b8: ldr      x0, [x20]
0x1ce10bc: ldr      w8, [x0, #0xe0]
0x1ce10c0: cbnz     w8, #0x1ce10c8
0x1ce10c4: bl       #0x1b646a4 | 
0x1ce10c8: adrp     x22, #0x4475000
0x1ce10cc: ldrb     w8, [x22, #0x960]
0x1ce10d0: cbnz     w8, #0x1ce10e8
0x1ce10d4: adrp     x0, #0x4188000
0x1ce10d8: ldr      x0, [x0, #0xfb8]
0x1ce10dc: bl       #0x1b64570 | 
0x1ce10e0: mov      w8, #1
0x1ce10e4: strb     w8, [x22, #0x960]
0x1ce10e8: ldr      x0, [x20]
0x1ce10ec: adrp     x19, #0x4186000
0x1ce10f0: ldr      w8, [x0, #0xe0]
0x1ce10f4: ldr      x19, [x19, #0xe68]
0x1ce10f8: cbnz     w8, #0x1ce1104
0x1ce10fc: bl       #0x1b646a4 | 
0x1ce1100: ldr      x0, [x20]
0x1ce1104: ldr      x8, [x19]
0x1ce1108: ldr      x9, [x0, #0xb8]
0x1ce110c: ldr      w10, [x8, #0xe0]
0x1ce1110: ldr      x19, [x9, #0x30]
0x1ce1114: cbnz     w10, #0x1ce1120
0x1ce1118: mov      x0, x8
0x1ce111c: bl       #0x1b646a4 | 
0x1ce1120: mov      x0, x19
0x1ce1124: mov      x1, xzr
0x1ce1128: bl       #0x1cc4ef4 | SaveManagement$$DeleteKey
0x1ce112c: adrp     x21, #0x4475000
0x1ce1130: ldrb     w8, [x21, #0xa4a]
0x1ce1134: cbnz     w8, #0x1ce114c
0x1ce1138: adrp     x0, #0x4188000
0x1ce113c: ldr      x0, [x0, #0xfb8]
0x1ce1140: bl       #0x1b64570 | 
0x1ce1144: mov      w8, #1
0x1ce1148: strb     w8, [x21, #0xa4a]
0x1ce114c: ldr      x0, [x20]
0x1ce1150: adrp     x19, #0x4189000
0x1ce1154: ldr      w8, [x0, #0xe0]
0x1ce1158: ldr      x19, [x19, #0x480]
0x1ce115c: cbnz     w8, #0x1ce1168
0x1ce1160: bl       #0x1b646a4 | 
0x1ce1164: ldr      x0, [x20]
0x1ce1168: ldr      x8, [x0, #0xb8]
0x1ce116c: mov      x1, xzr
0x1ce1170: ldr      x0, [x8, #0x40]
0x1ce1174: bl       #0x1cc4ef4 | SaveManagement$$DeleteKey
0x1ce1178: ldr      x0, [x19]
0x1ce117c: ldr      w8, [x0, #0xe0]
0x1ce1180: cbnz     w8, #0x1ce1188
0x1ce1184: bl       #0x1b646a4 | 
0x1ce1188: bl       #0x1ce16c8 | Phigros2.VisionReplay.VisionReplay.C8Unlock$$Reset
0x1ce118c: adrp     x23, #0x4475000
0x1ce1190: ldrb     w8, [x23, #0xa56]
0x1ce1194: cbnz     w8, #0x1ce11ac
0x1ce1198: adrp     x0, #0x4189000
0x1ce119c: ldr      x0, [x0, #0x480]
0x1ce11a0: bl       #0x1b64570 | 
0x1ce11a4: mov      w8, #1
0x1ce11a8: strb     w8, [x23, #0xa56]
0x1ce11ac: ldr      x0, [x19]
0x1ce11b0: ldr      w8, [x0, #0xe0]
0x1ce11b4: cbnz     w8, #0x1ce11c0
0x1ce11b8: bl       #0x1b646a4 | 
0x1ce11bc: ldr      x0, [x19]
0x1ce11c0: ldr      x8, [x0, #0xb8]
0x1ce11c4: mov      w9, #0x40000000
0x1ce11c8: adrp     x19, #0x4475000
0x1ce11cc: str      w9, [x8, #8]
0x1ce11d0: ldrb     w8, [x19, #0xa51]
0x1ce11d4: cbnz     w8, #0x1ce11ec
0x1ce11d8: adrp     x0, #0x4188000
0x1ce11dc: ldr      x0, [x0, #0xfb8]
0x1ce11e0: bl       #0x1b64570 | 
0x1ce11e4: mov      w8, #1
0x1ce11e8: strb     w8, [x19, #0xa51]
0x1ce11ec: ldr      x0, [x20]
0x1ce11f0: adrp     x19, #0x4189000
0x1ce11f4: ldr      w8, [x0, #0xe0]
0x1ce11f8: ldr      x19, [x19, #0x490]
0x1ce11fc: cbnz     w8, #0x1ce1208
0x1ce1200: bl       #0x1b646a4 | 
0x1ce1204: ldr      x0, [x20]
0x1ce1208: ldr      x8, [x19]
0x1ce120c: ldr      x9, [x0, #0xb8]
0x1ce1210: ldr      w10, [x8, #0xe0]
0x1ce1214: ldr      x19, [x9, #0x28]
0x1ce1218: cbnz     w10, #0x1ce1224
0x1ce121c: mov      x0, x8
0x1ce1220: bl       #0x1b646a4 | 
0x1ce1224: mov      x0, x19
0x1ce1228: mov      w1, wzr
0x1ce122c: bl       #0x1cd91bc | Phigros2.VisionReplay.VisionReplay.Process$$SetValue
0x1ce1230: adrp     x19, #0x4475000
0x1ce1234: ldrb     w8, [x19, #0xa52]
0x1ce1238: cbnz     w8, #0x1ce1250
0x1ce123c: adrp     x0, #0x4188000
0x1ce1240: ldr      x0, [x0, #0xfb8]
0x1ce1244: bl       #0x1b64570 | 
0x1ce1248: mov      w8, #1
0x1ce124c: strb     w8, [x19, #0xa52]
0x1ce1250: ldr      x0, [x20]
0x1ce1254: ldr      w8, [x0, #0xe0]
0x1ce1258: cbnz     w8, #0x1ce1264
0x1ce125c: bl       #0x1b646a4 | 
0x1ce1260: ldr      x0, [x20]
0x1ce1264: ldr      x8, [x0, #0xb8]
0x1ce1268: mov      w1, wzr
0x1ce126c: ldr      x0, [x8, #0x48]
0x1ce1270: bl       #0x1cd91bc | Phigros2.VisionReplay.VisionReplay.Process$$SetValue
0x1ce1274: adrp     x19, #0x4475000
0x1ce1278: ldrb     w8, [x19, #0xa53]
0x1ce127c: cbnz     w8, #0x1ce1294
0x1ce1280: adrp     x0, #0x4188000
0x1ce1284: ldr      x0, [x0, #0xfb8]
0x1ce1288: bl       #0x1b64570 | 
0x1ce128c: mov      w8, #1
0x1ce1290: strb     w8, [x19, #0xa53]
0x1ce1294: ldr      x0, [x20]
0x1ce1298: ldr      w8, [x0, #0xe0]
0x1ce129c: cbnz     w8, #0x1ce12a8
0x1ce12a0: bl       #0x1b646a4 | 
0x1ce12a4: ldr      x0, [x20]
0x1ce12a8: ldr      x8, [x0, #0xb8]
0x1ce12ac: mov      w1, wzr
0x1ce12b0: ldr      x0, [x8, #0x50]
0x1ce12b4: bl       #0x1cd91bc | Phigros2.VisionReplay.VisionReplay.Process$$SetValue
0x1ce12b8: adrp     x19, #0x4475000
0x1ce12bc: ldrb     w8, [x19, #0xa54]
0x1ce12c0: cbnz     w8, #0x1ce12d8
0x1ce12c4: adrp     x0, #0x4188000
0x1ce12c8: ldr      x0, [x0, #0xfb8]
0x1ce12cc: bl       #0x1b64570 | 
0x1ce12d0: mov      w8, #1
0x1ce12d4: strb     w8, [x19, #0xa54]
0x1ce12d8: ldr      x0, [x20]
0x1ce12dc: ldr      w8, [x0, #0xe0]
0x1ce12e0: cbnz     w8, #0x1ce12ec
0x1ce12e4: bl       #0x1b646a4 | 
0x1ce12e8: ldr      x0, [x20]
0x1ce12ec: ldr      x8, [x0, #0xb8]
0x1ce12f0: mov      w1, wzr
0x1ce12f4: ldr      x0, [x8, #0x60]
0x1ce12f8: bl       #0x1cd91bc | Phigros2.VisionReplay.VisionReplay.Process$$SetValue
0x1ce12fc: adrp     x19, #0x4475000
0x1ce1300: ldrb     w8, [x19, #0xa55]
0x1ce1304: cbnz     w8, #0x1ce131c
0x1ce1308: adrp     x0, #0x4188000
0x1ce130c: ldr      x0, [x0, #0xfb8]
0x1ce1310: bl       #0x1b64570 | 
0x1ce1314: mov      w8, #1
0x1ce1318: strb     w8, [x19, #0xa55]
0x1ce131c: ldr      x0, [x20]
0x1ce1320: ldr      w8, [x0, #0xe0]
0x1ce1324: cbnz     w8, #0x1ce1330
0x1ce1328: bl       #0x1b646a4 | 
0x1ce132c: ldr      x0, [x20]
0x1ce1330: ldr      x8, [x0, #0xb8]
0x1ce1334: mov      w1, wzr
0x1ce1338: ldr      x0, [x8, #0x68]
0x1ce133c: bl       #0x1cd91bc | Phigros2.VisionReplay.VisionReplay.Process$$SetValue
0x1ce1340: ldrb     w8, [x22, #0x960]
0x1ce1344: cbnz     w8, #0x1ce135c
0x1ce1348: adrp     x0, #0x4188000
0x1ce134c: ldr      x0, [x0, #0xfb8]
0x1ce1350: bl       #0x1b64570 | 
0x1ce1354: mov      w8, #1
0x1ce1358: strb     w8, [x22, #0x960]
0x1ce135c: ldr      x0, [x20]
0x1ce1360: ldr      w8, [x0, #0xe0]
0x1ce1364: cbnz     w8, #0x1ce1370
0x1ce1368: bl       #0x1b646a4 | 
0x1ce136c: ldr      x0, [x20]
0x1ce1370: ldr      x8, [x0, #0xb8]
0x1ce1374: mov      w1, wzr
0x1ce1378: ldr      x0, [x8, #0x30]
0x1ce137c: bl       #0x1cd91bc | Phigros2.VisionReplay.VisionReplay.Process$$SetValue
0x1ce1380: adrp     x19, #0x4475000
0x1ce1384: ldrb     w8, [x19, #0xa4b]
0x1ce1388: cbnz     w8, #0x1ce13a0
0x1ce138c: adrp     x0, #0x4188000
0x1ce1390: ldr      x0, [x0, #0xfb8]
0x1ce1394: bl       #0x1b64570 | 
0x1ce1398: mov      w8, #1
0x1ce139c: strb     w8, [x19, #0xa4b]
0x1ce13a0: ldr      x0, [x20]
0x1ce13a4: ldr      w8, [x0, #0xe0]
0x1ce13a8: cbnz     w8, #0x1ce13b4
0x1ce13ac: bl       #0x1b646a4 | 
0x1ce13b0: ldr      x0, [x20]
0x1ce13b4: ldr      x8, [x0, #0xb8]
0x1ce13b8: mov      w1, wzr
0x1ce13bc: ldr      x0, [x8, #0x70]
0x1ce13c0: bl       #0x1cd91bc | Phigros2.VisionReplay.VisionReplay.Process$$SetValue
0x1ce13c4: ldrb     w8, [x21, #0xa4a]
0x1ce13c8: cbnz     w8, #0x1ce13e0
0x1ce13cc: adrp     x0, #0x4188000
0x1ce13d0: ldr      x0, [x0, #0xfb8]
0x1ce13d4: bl       #0x1b64570 | 
0x1ce13d8: mov      w8, #1
0x1ce13dc: strb     w8, [x21, #0xa4a]
0x1ce13e0: ldr      x0, [x20]
0x1ce13e4: ldr      w8, [x0, #0xe0]
0x1ce13e8: cbnz     w8, #0x1ce13f4
0x1ce13ec: bl       #0x1b646a4 | 
0x1ce13f0: ldr      x0, [x20]
0x1ce13f4: ldr      x8, [x0, #0xb8]
0x1ce13f8: ldp      x20, x19, [sp, #0x20]
0x1ce13fc: ldp      x22, x21, [sp, #0x10]
0x1ce1400: mov      w1, wzr
0x1ce1404: ldr      x0, [x8, #0x40]
0x1ce1408: ldp      x30, x23, [sp], #0x30
0x1ce140c: b        #0x1cd91bc | Phigros2.VisionReplay.VisionReplay.Process$$SetValue

// 0x1ce1410 Phigros2.VisionReplay.VisionReplay$$RecoverC8SecondPhase
0x1ce1410: stp      x30, x23, [sp, #-0x30]!
0x1ce1414: stp      x22, x21, [sp, #0x10]
0x1ce1418: stp      x20, x19, [sp, #0x20]
0x1ce141c: adrp     x19, #0x4475000
0x1ce1420: adrp     x20, #0x4188000
0x1ce1424: ldrb     w8, [x19, #0x9f0]
0x1ce1428: ldr      x20, [x20, #0xfb8]
0x1ce142c: tbnz     w8, #0, #0x1ce148c
0x1ce1430: adrp     x0, #0x4189000
0x1ce1434: ldr      x0, [x0, #0x480]
0x1ce1438: bl       #0x1b64570 | 
0x1ce143c: adrp     x0, #0x4188000
0x1ce1440: ldr      x0, [x0, #0xfb8]
0x1ce1444: bl       #0x1b64570 | 
0x1ce1448: adrp     x0, #0x4189000
0x1ce144c: ldr      x0, [x0, #0x490]
0x1ce1450: bl       #0x1b64570 | 
0x1ce1454: adrp     x0, #0x4189000
0x1ce1458: ldr      x0, [x0, #0x938] | 0x4189938 'TheChariotREVIIVAL.Attoclef.0'
0x1ce145c: bl       #0x1b64570 | 
0x1ce1460: adrp     x0, #0x4189000
0x1ce1464: ldr      x0, [x0, #0x940] | 0x4189940 'CraveWave.LandRoot.0'
0x1ce1468: bl       #0x1b64570 | 
0x1ce146c: adrp     x0, #0x4189000
0x1ce1470: ldr      x0, [x0, #0x2e0] | 0x41892e0 'DESTRUCTION321.Normal1zervsBrokenNerdz.0'
0x1ce1474: bl       #0x1b64570 | 
0x1ce1478: adrp     x0, #0x4189000
0x1ce147c: ldr      x0, [x0, #0x948] | 0x4189948 'Retribution.nmyKryexe.0'
0x1ce1480: bl       #0x1b64570 | 
0x1ce1484: mov      w8, #1
0x1ce1488: strb     w8, [x19, #0x9f0]
0x1ce148c: ldr      x0, [x20]
0x1ce1490: ldr      w8, [x0, #0xe0]
0x1ce1494: cbnz     w8, #0x1ce149c
0x1ce1498: bl       #0x1b646a4 | 
0x1ce149c: adrp     x19, #0x4475000
0x1ce14a0: ldrb     w8, [x19, #0xa51]
0x1ce14a4: cbnz     w8, #0x1ce14bc
0x1ce14a8: adrp     x0, #0x4188000
0x1ce14ac: ldr      x0, [x0, #0xfb8]
0x1ce14b0: bl       #0x1b64570 | 
0x1ce14b4: mov      w8, #1
0x1ce14b8: strb     w8, [x19, #0xa51]
0x1ce14bc: ldr      x0, [x20]
0x1ce14c0: adrp     x19, #0x4189000
0x1ce14c4: ldr      w8, [x0, #0xe0]
0x1ce14c8: ldr      x19, [x19, #0x490]
0x1ce14cc: cbnz     w8, #0x1ce14d8
0x1ce14d0: bl       #0x1b646a4 | 
0x1ce14d4: ldr      x0, [x20]
0x1ce14d8: ldr      x8, [x19]
0x1ce14dc: ldr      x9, [x0, #0xb8]
0x1ce14e0: ldr      w10, [x8, #0xe0]
0x1ce14e4: ldr      x19, [x9, #0x28]
0x1ce14e8: cbnz     w10, #0x1ce14f4
0x1ce14ec: mov      x0, x8
0x1ce14f0: bl       #0x1b646a4 | 
0x1ce14f4: mov      w1, #1
0x1ce14f8: mov      x0, x19
0x1ce14fc: mov      w21, #1
0x1ce1500: bl       #0x1cd91bc | Phigros2.VisionReplay.VisionReplay.Process$$SetValue
0x1ce1504: adrp     x19, #0x4475000
0x1ce1508: ldrb     w8, [x19, #0xa52]
0x1ce150c: cbnz     w8, #0x1ce1520
0x1ce1510: adrp     x0, #0x4188000
0x1ce1514: ldr      x0, [x0, #0xfb8]
0x1ce1518: bl       #0x1b64570 | 
0x1ce151c: strb     w21, [x19, #0xa52]
0x1ce1520: ldr      x0, [x20]
0x1ce1524: ldr      w8, [x0, #0xe0]
0x1ce1528: cbnz     w8, #0x1ce1534
0x1ce152c: bl       #0x1b646a4 | 
0x1ce1530: ldr      x0, [x20]
0x1ce1534: ldr      x8, [x0, #0xb8]
0x1ce1538: mov      w1, #1
0x1ce153c: mov      w19, #1
0x1ce1540: ldr      x0, [x8, #0x48]
0x1ce1544: bl       #0x1cd91bc | Phigros2.VisionReplay.VisionReplay.Process$$SetValue
0x1ce1548: adrp     x21, #0x4475000
0x1ce154c: ldrb     w8, [x21, #0xa53]
0x1ce1550: cbnz     w8, #0x1ce1564
0x1ce1554: adrp     x0, #0x4188000
0x1ce1558: ldr      x0, [x0, #0xfb8]
0x1ce155c: bl       #0x1b64570 | 
0x1ce1560: strb     w19, [x21, #0xa53]
0x1ce1564: ldr      x0, [x20]
0x1ce1568: ldr      w8, [x0, #0xe0]
0x1ce156c: cbnz     w8, #0x1ce1578
0x1ce1570: bl       #0x1b646a4 | 
0x1ce1574: ldr      x0, [x20]
0x1ce1578: ldr      x8, [x0, #0xb8]
0x1ce157c: mov      w1, #1
0x1ce1580: mov      w19, #1
0x1ce1584: ldr      x0, [x8, #0x50]
0x1ce1588: bl       #0x1cd91bc | Phigros2.VisionReplay.VisionReplay.Process$$SetValue
0x1ce158c: adrp     x21, #0x4475000
0x1ce1590: ldrb     w8, [x21, #0xa54]
0x1ce1594: cbnz     w8, #0x1ce15a8
0x1ce1598: adrp     x0, #0x4188000
0x1ce159c: ldr      x0, [x0, #0xfb8]
0x1ce15a0: bl       #0x1b64570 | 
0x1ce15a4: strb     w19, [x21, #0xa54]
0x1ce15a8: ldr      x0, [x20]
0x1ce15ac: ldr      w8, [x0, #0xe0]
0x1ce15b0: cbnz     w8, #0x1ce15bc
0x1ce15b4: bl       #0x1b646a4 | 
0x1ce15b8: ldr      x0, [x20]
0x1ce15bc: ldr      x8, [x0, #0xb8]
0x1ce15c0: mov      w1, #1
0x1ce15c4: mov      w19, #1
0x1ce15c8: ldr      x0, [x8, #0x60]
0x1ce15cc: bl       #0x1cd91bc | Phigros2.VisionReplay.VisionReplay.Process$$SetValue
0x1ce15d0: adrp     x21, #0x4475000
0x1ce15d4: ldrb     w8, [x21, #0xa55]
0x1ce15d8: cbnz     w8, #0x1ce15ec
0x1ce15dc: adrp     x0, #0x4188000
0x1ce15e0: ldr      x0, [x0, #0xfb8]
0x1ce15e4: bl       #0x1b64570 | 
0x1ce15e8: strb     w19, [x21, #0xa55]
0x1ce15ec: ldr      x0, [x20]
0x1ce15f0: ldr      w8, [x0, #0xe0]
0x1ce15f4: cbnz     w8, #0x1ce1600
0x1ce15f8: bl       #0x1b646a4 | 
0x1ce15fc: ldr      x0, [x20]
0x1ce1600: ldr      x8, [x0, #0xb8]
0x1ce1604: mov      w1, #1
0x1ce1608: mov      w19, #1
0x1ce160c: ldr      x0, [x8, #0x68]
0x1ce1610: bl       #0x1cd91bc | Phigros2.VisionReplay.VisionReplay.Process$$SetValue
0x1ce1614: adrp     x21, #0x4475000
0x1ce1618: ldrb     w8, [x21, #0x960]
0x1ce161c: cbnz     w8, #0x1ce1630
0x1ce1620: adrp     x0, #0x4188000
0x1ce1624: ldr      x0, [x0, #0xfb8]
0x1ce1628: bl       #0x1b64570 | 
0x1ce162c: strb     w19, [x21, #0x960]
0x1ce1630: ldr      x0, [x20]
0x1ce1634: adrp     x21, #0x4189000
0x1ce1638: ldr      w8, [x0, #0xe0]
0x1ce163c: ldr      x21, [x21, #0x480]
0x1ce1640: cbnz     w8, #0x1ce164c
0x1ce1644: bl       #0x1b646a4 | 
0x1ce1648: ldr      x0, [x20]
0x1ce164c: ldr      x8, [x0, #0xb8]
0x1ce1650: adrp     x23, #0x4189000
0x1ce1654: ldr      x23, [x23, #0x940] | 0x4189940 'CraveWave.LandRoot.0'
0x1ce1658: adrp     x22, #0x4189000
0x1ce165c: ldr      x0, [x8, #0x30]
0x1ce1660: adrp     x20, #0x4189000
0x1ce1664: adrp     x19, #0x4189000
0x1ce1668: ldr      x22, [x22, #0x938] | 0x4189938 'TheChariotREVIIVAL.Attoclef.0'
0x1ce166c: ldr      x20, [x20, #0x948] | 0x4189948 'Retribution.nmyKryexe.0'
0x1ce1670: ldr      x19, [x19, #0x2e0] | 0x41892e0 'DESTRUCTION321.Normal1zervsBrokenNerdz.0'
0x1ce1674: mov      w1, #1
0x1ce1678: bl       #0x1cd91bc | Phigros2.VisionReplay.VisionReplay.Process$$SetValue
0x1ce167c: ldr      x0, [x21]
0x1ce1680: ldr      w8, [x0, #0xe0]
0x1ce1684: cbnz     w8, #0x1ce168c
0x1ce1688: bl       #0x1b646a4 | 
0x1ce168c: ldr      x0, [x23]
0x1ce1690: mov      w1, #1
0x1ce1694: bl       #0x1cd924c | Phigros2.VisionReplay.VisionReplay.C8Unlock$$SetValue
0x1ce1698: ldr      x0, [x22]
0x1ce169c: mov      w1, #1
0x1ce16a0: bl       #0x1cd924c | Phigros2.VisionReplay.VisionReplay.C8Unlock$$SetValue
0x1ce16a4: ldr      x0, [x20]
0x1ce16a8: mov      w1, #1
0x1ce16ac: bl       #0x1cd924c | Phigros2.VisionReplay.VisionReplay.C8Unlock$$SetValue
0x1ce16b0: ldr      x0, [x19]
0x1ce16b4: ldp      x20, x19, [sp, #0x20]
0x1ce16b8: ldp      x22, x21, [sp, #0x10]
0x1ce16bc: mov      w1, #1
0x1ce16c0: ldp      x30, x23, [sp], #0x30
0x1ce16c4: b        #0x1cd924c | Phigros2.VisionReplay.VisionReplay.C8Unlock$$SetValue

// 0x1ce1740 Phigros2.VisionReplay.VisionReplay$$.ctor
0x1ce1740: mov      x1, xzr
0x1ce1744: b        #0x34c04f0 | System.Object$$.ctor

// 0x1ce70b0 Phigros2.SaturnOS.VisionReplayButton$$OnEnable
0x1ce70b0: str      x30, [sp, #-0x30]!
0x1ce70b4: stp      x22, x21, [sp, #0x10]
0x1ce70b8: stp      x20, x19, [sp, #0x20]
0x1ce70bc: adrp     x21, #0x4475000
0x1ce70c0: adrp     x22, #0x4186000
0x1ce70c4: adrp     x20, #0x4189000
0x1ce70c8: ldrb     w8, [x21, #0xa69]
0x1ce70cc: ldr      x22, [x22, #0xf18]
0x1ce70d0: ldr      x20, [x20, #0xd20]
0x1ce70d4: mov      x19, x0
0x1ce70d8: tbnz     w8, #0, #0x1ce70fc
0x1ce70dc: adrp     x0, #0x4186000
0x1ce70e0: ldr      x0, [x0, #0xf18]
0x1ce70e4: bl       #0x1b64570 | 
0x1ce70e8: adrp     x0, #0x4189000
0x1ce70ec: ldr      x0, [x0, #0xd20]
0x1ce70f0: bl       #0x1b64570 | 
0x1ce70f4: mov      w8, #1
0x1ce70f8: strb     w8, [x21, #0xa69]
0x1ce70fc: ldr      x0, [x22]
0x1ce7100: bl       #0x1b647b8 | 
0x1ce7104: ldr      x2, [x20]
0x1ce7108: mov      x1, x19
0x1ce710c: mov      x3, xzr
0x1ce7110: mov      x20, x0
0x1ce7114: bl       #0x33ee8e4 | System.Action$$.ctor
0x1ce7118: mov      x0, x20
0x1ce711c: ldp      x20, x19, [sp, #0x20]
0x1ce7120: ldp      x22, x21, [sp, #0x10]
0x1ce7124: ldr      x30, [sp], #0x30
0x1ce7128: b        #0x1ce6d5c | Phigros2.SaturnOS.PopupEventHandler$$add_TurnOnEvent

// 0x1ce712c Phigros2.SaturnOS.VisionReplayButton$$OnDisable
0x1ce712c: str      x30, [sp, #-0x30]!
0x1ce7130: stp      x22, x21, [sp, #0x10]
0x1ce7134: stp      x20, x19, [sp, #0x20]
0x1ce7138: adrp     x21, #0x4475000
0x1ce713c: adrp     x22, #0x4186000
0x1ce7140: adrp     x20, #0x4189000
0x1ce7144: ldrb     w8, [x21, #0xa6a]
0x1ce7148: ldr      x22, [x22, #0xf18]
0x1ce714c: ldr      x20, [x20, #0xd20]
0x1ce7150: mov      x19, x0
0x1ce7154: tbnz     w8, #0, #0x1ce7178
0x1ce7158: adrp     x0, #0x4186000
0x1ce715c: ldr      x0, [x0, #0xf18]
0x1ce7160: bl       #0x1b64570 | 
0x1ce7164: adrp     x0, #0x4189000
0x1ce7168: ldr      x0, [x0, #0xd20]
0x1ce716c: bl       #0x1b64570 | 
0x1ce7170: mov      w8, #1
0x1ce7174: strb     w8, [x21, #0xa6a]
0x1ce7178: ldr      x0, [x22]
0x1ce717c: bl       #0x1b647b8 | 
0x1ce7180: ldr      x2, [x20]
0x1ce7184: mov      x1, x19
0x1ce7188: mov      x3, xzr
0x1ce718c: mov      x20, x0
0x1ce7190: bl       #0x33ee8e4 | System.Action$$.ctor
0x1ce7194: mov      x0, x20
0x1ce7198: ldp      x20, x19, [sp, #0x20]
0x1ce719c: ldp      x22, x21, [sp, #0x10]
0x1ce71a0: ldr      x30, [sp], #0x30
0x1ce71a4: b        #0x1ce6e18 | Phigros2.SaturnOS.PopupEventHandler$$remove_TurnOnEvent

// 0x1ce71a8 Phigros2.SaturnOS.VisionReplayButton$$OnTurnOnEvent
0x1ce71a8: mov      w1, wzr
0x1ce71ac: b        #0x1ce71b0 | Phigros2.SaturnOS.VisionReplayButton$$ToggleStyle

// 0x1ce71b0 Phigros2.SaturnOS.VisionReplayButton$$ToggleStyle
0x1ce71b0: stp      x30, x19, [sp, #-0x10]!
0x1ce71b4: ldr      x8, [x0, #0x38]
0x1ce71b8: ldr      x2, [x0, #0x48]
0x1ce71bc: mov      x19, x0
0x1ce71c0: tbz      w1, #0, #0x1ce71e0
0x1ce71c4: mov      x1, x8
0x1ce71c8: bl       #0x1ce7470 | Phigros2.SaturnOS.VisionReplayButton$$TurnOff
0x1ce71cc: ldr      x1, [x19, #0x50]
0x1ce71d0: ldr      x2, [x19, #0x60]
0x1ce71d4: mov      x0, x19
0x1ce71d8: ldp      x30, x19, [sp], #0x10
0x1ce71dc: b        #0x1ce7470 | Phigros2.SaturnOS.VisionReplayButton$$TurnOff
0x1ce71e0: mov      x1, x8
0x1ce71e4: bl       #0x1ce735c | Phigros2.SaturnOS.VisionReplayButton$$TurnOn
0x1ce71e8: ldr      x1, [x19, #0x50]
0x1ce71ec: ldr      x2, [x19, #0x60]
0x1ce71f0: mov      x0, x19
0x1ce71f4: ldp      x30, x19, [sp], #0x10
0x1ce71f8: b        #0x1ce735c | Phigros2.SaturnOS.VisionReplayButton$$TurnOn

// 0x1ce71fc Phigros2.SaturnOS.VisionReplayButton$$Start
0x1ce71fc: stp      x30, x21, [sp, #-0x20]!
0x1ce7200: stp      x20, x19, [sp, #0x10]
0x1ce7204: adrp     x20, #0x4475000
0x1ce7208: ldrb     w8, [x20, #0xa6b]
0x1ce720c: mov      x19, x0
0x1ce7210: tbnz     w8, #0, #0x1ce7234
0x1ce7214: adrp     x0, #0x4189000
0x1ce7218: ldr      x0, [x0, #0xb78]
0x1ce721c: bl       #0x1b64570 | 
0x1ce7220: adrp     x0, #0x4189000
0x1ce7224: ldr      x0, [x0, #0xd28]
0x1ce7228: bl       #0x1b64570 | 
0x1ce722c: mov      w8, #1
0x1ce7230: strb     w8, [x20, #0xa6b]
0x1ce7234: ldr      x0, [x19, #0x68]
0x1ce7238: cbz      x0, #0x1ce7358
0x1ce723c: ldr      x20, [x19, #0x40]
0x1ce7240: mov      x1, xzr
0x1ce7244: bl       #0x1cd906c | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$get_LocaleText
0x1ce7248: cbz      x20, #0x1ce7358
0x1ce724c: ldr      x8, [x20]
0x1ce7250: mov      x1, x0
0x1ce7254: mov      x0, x20
0x1ce7258: ldr      x9, [x8, #0x5e8]
0x1ce725c: ldr      x2, [x8, #0x5f0]
0x1ce7260: blr      x9
0x1ce7264: ldr      x0, [x19, #0x68]
0x1ce7268: cbz      x0, #0x1ce7358
0x1ce726c: ldr      x20, [x19, #0x58]
0x1ce7270: mov      x1, xzr
0x1ce7274: bl       #0x1cd906c | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$get_LocaleText
0x1ce7278: cbz      x20, #0x1ce7358
0x1ce727c: ldr      x8, [x20]
0x1ce7280: mov      x1, x0
0x1ce7284: mov      x0, x20
0x1ce7288: ldr      x9, [x8, #0x5e8]
0x1ce728c: ldr      x2, [x8, #0x5f0]
0x1ce7290: blr      x9
0x1ce7294: adrp     x20, #0x4475000
0x1ce7298: ldrb     w8, [x20, #0x95e]
0x1ce729c: cbnz     w8, #0x1ce72b4
0x1ce72a0: adrp     x0, #0x4189000
0x1ce72a4: ldr      x0, [x0, #0xf8]
0x1ce72a8: bl       #0x1b64570 | 
0x1ce72ac: mov      w8, #1
0x1ce72b0: strb     w8, [x20, #0x95e]
0x1ce72b4: adrp     x8, #0x4189000
0x1ce72b8: ldr      x8, [x8, #0xf8]
0x1ce72bc: ldr      x1, [x19, #0x38]
0x1ce72c0: ldr      x2, [x19, #0x48]
0x1ce72c4: mov      x0, x19
0x1ce72c8: ldr      x8, [x8]
0x1ce72cc: ldr      x8, [x8, #0xb8]
0x1ce72d0: ldrb     w8, [x8]
0x1ce72d4: cbz      w8, #0x1ce72f0
0x1ce72d8: bl       #0x1ce735c | Phigros2.SaturnOS.VisionReplayButton$$TurnOn
0x1ce72dc: ldr      x1, [x19, #0x50]
0x1ce72e0: ldr      x2, [x19, #0x60]
0x1ce72e4: mov      x0, x19
0x1ce72e8: bl       #0x1ce735c | Phigros2.SaturnOS.VisionReplayButton$$TurnOn
0x1ce72ec: b        #0x1ce7304 | 
0x1ce72f0: bl       #0x1ce7470 | Phigros2.SaturnOS.VisionReplayButton$$TurnOff
0x1ce72f4: ldr      x1, [x19, #0x50]
0x1ce72f8: ldr      x2, [x19, #0x60]
0x1ce72fc: mov      x0, x19
0x1ce7300: bl       #0x1ce7470 | Phigros2.SaturnOS.VisionReplayButton$$TurnOff
0x1ce7304: ldr      x8, [x19, #0x20]
0x1ce7308: cbz      x8, #0x1ce7358
0x1ce730c: adrp     x9, #0x4189000
0x1ce7310: ldr      x9, [x9, #0xb78]
0x1ce7314: adrp     x21, #0x4189000
0x1ce7318: ldr      x20, [x8, #0x100]
0x1ce731c: ldr      x0, [x9]
0x1ce7320: ldr      x21, [x21, #0xd28]
0x1ce7324: bl       #0x1b647b8 | 
0x1ce7328: ldr      x2, [x21]
0x1ce732c: mov      x1, x19
0x1ce7330: mov      x3, xzr
0x1ce7334: mov      x21, x0
0x1ce7338: bl       #0x3c74264 | UnityEngine.Events.UnityAction$$.ctor
0x1ce733c: cbz      x20, #0x1ce7358
0x1ce7340: mov      x0, x20
0x1ce7344: ldp      x20, x19, [sp, #0x10]
0x1ce7348: mov      x1, x21
0x1ce734c: mov      x2, xzr
0x1ce7350: ldp      x30, x21, [sp], #0x20
0x1ce7354: b        #0x3c74308 | UnityEngine.Events.UnityEvent$$AddListener
0x1ce7358: bl       #0x1b647c8 | 

// 0x1ce735c Phigros2.SaturnOS.VisionReplayButton$$TurnOn
0x1ce735c: stp      x30, x23, [sp, #-0x30]!
0x1ce7360: stp      x22, x21, [sp, #0x10]
0x1ce7364: stp      x20, x19, [sp, #0x20]
0x1ce7368: adrp     x21, #0x4475000
0x1ce736c: ldrb     w8, [x21, #0xa6c]
0x1ce7370: mov      x19, x2
0x1ce7374: mov      x22, x1
0x1ce7378: mov      x20, x0
0x1ce737c: tbnz     w8, #0, #0x1ce73ac
0x1ce7380: adrp     x0, #0x4189000
0x1ce7384: ldr      x0, [x0, #0x48]
0x1ce7388: bl       #0x1b64570 | 
0x1ce738c: adrp     x0, #0x4189000
0x1ce7390: ldr      x0, [x0, #0xd30]
0x1ce7394: bl       #0x1b64570 | 
0x1ce7398: adrp     x0, #0x4189000
0x1ce739c: ldr      x0, [x0, #0x918] | 0x4189918 'ON'
0x1ce73a0: bl       #0x1b64570 | 
0x1ce73a4: mov      w8, #1
0x1ce73a8: strb     w8, [x21, #0xa6c]
0x1ce73ac: cbz      x22, #0x1ce7468
0x1ce73b0: adrp     x8, #0x4189000
0x1ce73b4: ldr      x8, [x8, #0x48]
0x1ce73b8: adrp     x21, #0x4189000
0x1ce73bc: mov      x0, x22
0x1ce73c0: ldr      x1, [x8]
0x1ce73c4: ldr      x21, [x21, #0xd30]
0x1ce73c8: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1ce73cc: ldr      x1, [x21]
0x1ce73d0: mov      x21, x0
0x1ce73d4: mov      x0, x22
0x1ce73d8: bl       #0x1f92828 | UnityEngine.GameObject$$GetComponentsInChildren<object>
0x1ce73dc: cbz      x0, #0x1ce7468
0x1ce73e0: ldr      w8, [x0, #0x18]
0x1ce73e4: mov      x22, x0
0x1ce73e8: cmp      w8, #1
0x1ce73ec: b.lt     #0x1ce7424
0x1ce73f0: mov      w23, wzr
0x1ce73f4: cmp      w23, w8
0x1ce73f8: b.hs     #0x1ce746c
0x1ce73fc: add      x8, x22, w23, sxtw #3
0x1ce7400: ldr      x0, [x8, #0x20]
0x1ce7404: cbz      x0, #0x1ce7468
0x1ce7408: mov      w1, #1
0x1ce740c: mov      x2, xzr
0x1ce7410: bl       #0x3c5ccc4 | UnityEngine.Behaviour$$set_enabled
0x1ce7414: ldr      w8, [x22, #0x18]
0x1ce7418: add      w23, w23, #1
0x1ce741c: cmp      w23, w8
0x1ce7420: b.lt     #0x1ce73f4
0x1ce7424: cbz      x21, #0x1ce7468
0x1ce7428: ldr      x1, [x20, #0x30]
0x1ce742c: mov      x0, x21
0x1ce7430: mov      x2, xzr
0x1ce7434: bl       #0x3d01294 | UnityEngine.UI.Image$$set_sprite
0x1ce7438: cbz      x19, #0x1ce7468
0x1ce743c: adrp     x9, #0x4189000
0x1ce7440: ldr      x8, [x19]
0x1ce7444: ldr      x9, [x9, #0x918] | 0x4189918 'ON'
0x1ce7448: mov      x0, x19
0x1ce744c: ldp      x20, x19, [sp, #0x20]
0x1ce7450: ldr      x3, [x8, #0x5e8]
0x1ce7454: ldr      x1, [x9]
0x1ce7458: ldr      x2, [x8, #0x5f0]
0x1ce745c: ldp      x22, x21, [sp, #0x10]
0x1ce7460: ldp      x30, x23, [sp], #0x30
0x1ce7464: br       x3
0x1ce7468: bl       #0x1b647c8 | 
0x1ce746c: bl       #0x1b647d0 | 

// 0x1ce7470 Phigros2.SaturnOS.VisionReplayButton$$TurnOff
0x1ce7470: stp      x30, x23, [sp, #-0x30]!
0x1ce7474: stp      x22, x21, [sp, #0x10]
0x1ce7478: stp      x20, x19, [sp, #0x20]
0x1ce747c: adrp     x21, #0x4475000
0x1ce7480: ldrb     w8, [x21, #0xa6d]
0x1ce7484: mov      x19, x2
0x1ce7488: mov      x22, x1
0x1ce748c: mov      x20, x0
0x1ce7490: tbnz     w8, #0, #0x1ce74c0
0x1ce7494: adrp     x0, #0x4189000
0x1ce7498: ldr      x0, [x0, #0x48]
0x1ce749c: bl       #0x1b64570 | 
0x1ce74a0: adrp     x0, #0x4189000
0x1ce74a4: ldr      x0, [x0, #0xd30]
0x1ce74a8: bl       #0x1b64570 | 
0x1ce74ac: adrp     x0, #0x4189000
0x1ce74b0: ldr      x0, [x0, #0x920] | 0x4189920 'OFF'
0x1ce74b4: bl       #0x1b64570 | 
0x1ce74b8: mov      w8, #1
0x1ce74bc: strb     w8, [x21, #0xa6d]
0x1ce74c0: cbz      x22, #0x1ce757c
0x1ce74c4: adrp     x8, #0x4189000
0x1ce74c8: ldr      x8, [x8, #0x48]
0x1ce74cc: adrp     x21, #0x4189000
0x1ce74d0: mov      x0, x22
0x1ce74d4: ldr      x1, [x8]
0x1ce74d8: ldr      x21, [x21, #0xd30]
0x1ce74dc: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1ce74e0: ldr      x1, [x21]
0x1ce74e4: mov      x21, x0
0x1ce74e8: mov      x0, x22
0x1ce74ec: bl       #0x1f92828 | UnityEngine.GameObject$$GetComponentsInChildren<object>
0x1ce74f0: cbz      x0, #0x1ce757c
0x1ce74f4: ldr      w8, [x0, #0x18]
0x1ce74f8: mov      x22, x0
0x1ce74fc: cmp      w8, #1
0x1ce7500: b.lt     #0x1ce7538
0x1ce7504: mov      w23, wzr
0x1ce7508: cmp      w23, w8
0x1ce750c: b.hs     #0x1ce7580
0x1ce7510: add      x8, x22, w23, sxtw #3
0x1ce7514: ldr      x0, [x8, #0x20]
0x1ce7518: cbz      x0, #0x1ce757c
0x1ce751c: mov      w1, wzr
0x1ce7520: mov      x2, xzr
0x1ce7524: bl       #0x3c5ccc4 | UnityEngine.Behaviour$$set_enabled
0x1ce7528: ldr      w8, [x22, #0x18]
0x1ce752c: add      w23, w23, #1
0x1ce7530: cmp      w23, w8
0x1ce7534: b.lt     #0x1ce7508
0x1ce7538: cbz      x21, #0x1ce757c
0x1ce753c: ldr      x1, [x20, #0x28]
0x1ce7540: mov      x0, x21
0x1ce7544: mov      x2, xzr
0x1ce7548: bl       #0x3d01294 | UnityEngine.UI.Image$$set_sprite
0x1ce754c: cbz      x19, #0x1ce757c
0x1ce7550: adrp     x9, #0x4189000
0x1ce7554: ldr      x8, [x19]
0x1ce7558: ldr      x9, [x9, #0x920] | 0x4189920 'OFF'
0x1ce755c: mov      x0, x19
0x1ce7560: ldp      x20, x19, [sp, #0x20]
0x1ce7564: ldr      x3, [x8, #0x5e8]
0x1ce7568: ldr      x1, [x9]
0x1ce756c: ldr      x2, [x8, #0x5f0]
0x1ce7570: ldp      x22, x21, [sp, #0x10]
0x1ce7574: ldp      x30, x23, [sp], #0x30
0x1ce7578: br       x3
0x1ce757c: bl       #0x1b647c8 | 
0x1ce7580: bl       #0x1b647d0 | 

// 0x1ce7584 Phigros2.SaturnOS.VisionReplayButton$$OnClick
0x1ce7584: str      x30, [sp, #-0x20]!
0x1ce7588: stp      x20, x19, [sp, #0x10]
0x1ce758c: adrp     x20, #0x4475000
0x1ce7590: ldrb     w8, [x20, #0xa6e]
0x1ce7594: mov      x19, x0
0x1ce7598: tbnz     w8, #0, #0x1ce75b0
0x1ce759c: adrp     x0, #0x4186000
0x1ce75a0: ldr      x0, [x0, #0xea0]
0x1ce75a4: bl       #0x1b64570 | 
0x1ce75a8: mov      w8, #1
0x1ce75ac: strb     w8, [x20, #0xa6e]
0x1ce75b0: adrp     x20, #0x4475000
0x1ce75b4: ldrb     w8, [x20, #0x95e]
0x1ce75b8: cbnz     w8, #0x1ce75d0
0x1ce75bc: adrp     x0, #0x4189000
0x1ce75c0: ldr      x0, [x0, #0xf8]
0x1ce75c4: bl       #0x1b64570 | 
0x1ce75c8: mov      w8, #1
0x1ce75cc: strb     w8, [x20, #0x95e]
0x1ce75d0: adrp     x8, #0x4189000
0x1ce75d4: ldr      x8, [x8, #0xf8]
0x1ce75d8: adrp     x20, #0x4186000
0x1ce75dc: ldr      x8, [x8]
0x1ce75e0: ldr      x8, [x8, #0xb8]
0x1ce75e4: ldrb     w8, [x8]
0x1ce75e8: ldr      x20, [x20, #0xea0]
0x1ce75ec: cbz      w8, #0x1ce7634
0x1ce75f0: bl       #0x1ce704c | Phigros2.SaturnOS.PopupEventHandler$$CallTurnOffManualEvent
0x1ce75f4: mov      w1, #1
0x1ce75f8: mov      x0, x19
0x1ce75fc: bl       #0x1ce71b0 | Phigros2.SaturnOS.VisionReplayButton$$ToggleStyle
0x1ce7600: ldr      x8, [x20]
0x1ce7604: ldr      x8, [x8, #0xb8]
0x1ce7608: ldr      x8, [x8, #8]
0x1ce760c: cbz      x8, #0x1ce7664
0x1ce7610: ldr      x9, [x8, #0x18]
0x1ce7614: ldr      x0, [x8, #0x40]
0x1ce7618: ldr      x2, [x8, #0x28]
0x1ce761c: mov      w1, #0xe
0x1ce7620: blr      x9
0x1ce7624: ldp      x20, x19, [sp, #0x10]
0x1ce7628: mov      x0, xzr
0x1ce762c: ldr      x30, [sp], #0x20
0x1ce7630: b        #0x1ce0f10 | Phigros2.VisionReplay.VisionReplay$$TurnOff
0x1ce7634: bl       #0x1ce6cf8 | Phigros2.SaturnOS.PopupEventHandler$$CallOpenPopupEvent
0x1ce7638: ldr      x8, [x20]
0x1ce763c: ldr      x8, [x8, #0xb8]
0x1ce7640: ldr      x8, [x8, #8]
0x1ce7644: cbz      x8, #0x1ce7664
0x1ce7648: ldr      x3, [x8, #0x18]
0x1ce764c: ldr      x0, [x8, #0x40]
0x1ce7650: ldr      x2, [x8, #0x28]
0x1ce7654: ldp      x20, x19, [sp, #0x10]
0x1ce7658: mov      w1, #0xc
0x1ce765c: ldr      x30, [sp], #0x20
0x1ce7660: br       x3
0x1ce7664: bl       #0x1b647c8 | 

// 0x1ce7668 Phigros2.SaturnOS.VisionReplayButton$$.ctor
0x1ce7668: stp      x30, x21, [sp, #-0x20]!
0x1ce766c: stp      x20, x19, [sp, #0x10]
0x1ce7670: adrp     x20, #0x4475000
0x1ce7674: adrp     x21, #0x4186000
0x1ce7678: ldrb     w8, [x20, #0xa6f]
0x1ce767c: ldr      x21, [x21, #0xec0]
0x1ce7680: mov      x19, x0
0x1ce7684: tbnz     w8, #0, #0x1ce76cc
0x1ce7688: adrp     x0, #0x4186000
0x1ce768c: ldr      x0, [x0, #0xec0]
0x1ce7690: bl       #0x1b64570 | 
0x1ce7694: adrp     x0, #0x4189000
0x1ce7698: ldr      x0, [x0, #0xd38] | 0x4189d38 '重演'
0x1ce769c: bl       #0x1b64570 | 
0x1ce76a0: adrp     x0, #0x4189000
0x1ce76a4: ldr      x0, [x0, #0xd40] | 0x4189d40 '재연'
0x1ce76a8: bl       #0x1b64570 | 
0x1ce76ac: adrp     x0, #0x4189000
0x1ce76b0: ldr      x0, [x0, #0xd48] | 0x4189d48 '再演'
0x1ce76b4: bl       #0x1b64570 | 
0x1ce76b8: adrp     x0, #0x4189000
0x1ce76bc: ldr      x0, [x0, #0xd50] | 0x4189d50 'Revisit'
0x1ce76c0: bl       #0x1b64570 | 
0x1ce76c4: mov      w8, #1
0x1ce76c8: strb     w8, [x20, #0xa6f]
0x1ce76cc: ldr      x0, [x21]
0x1ce76d0: bl       #0x1b647b8 | 
0x1ce76d4: mov      x1, xzr
0x1ce76d8: mov      x20, x0
0x1ce76dc: bl       #0x1cd9064 | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$.ctor
0x1ce76e0: cbz      x20, #0x1ce7738
0x1ce76e4: adrp     x8, #0x4189000
0x1ce76e8: ldr      x8, [x8, #0xd38] | 0x4189d38 '重演'
0x1ce76ec: adrp     x9, #0x4189000
0x1ce76f0: mov      x0, x19
0x1ce76f4: mov      x1, xzr
0x1ce76f8: ldr      x8, [x8]
0x1ce76fc: ldr      x9, [x9, #0xd50] | 0x4189d50 'Revisit'
0x1ce7700: stp      x8, x8, [x20, #0x18]
0x1ce7704: ldr      x8, [x9]
0x1ce7708: adrp     x9, #0x4189000
0x1ce770c: ldr      x9, [x9, #0xd48] | 0x4189d48 '再演'
0x1ce7710: str      x8, [x20, #0x28]
0x1ce7714: ldr      x10, [x9]
0x1ce7718: adrp     x9, #0x4189000
0x1ce771c: ldr      x9, [x9, #0xd40] | 0x4189d40 '재연'
0x1ce7720: ldr      x8, [x9]
0x1ce7724: stp      x10, x8, [x20, #0x30]
0x1ce7728: str      x20, [x19, #0x68]
0x1ce772c: ldp      x20, x19, [sp, #0x10]
0x1ce7730: ldp      x30, x21, [sp], #0x20
0x1ce7734: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor
0x1ce7738: bl       #0x1b647c8 | 

// 0x1d5a028 RemoveAllSongControl$$Awake
0x1d5a028: str      x30, [sp, #-0x30]!
0x1d5a02c: stp      x22, x21, [sp, #0x10]
0x1d5a030: stp      x20, x19, [sp, #0x20]
0x1d5a034: adrp     x21, #0x4475000
0x1d5a038: adrp     x20, #0x4186000
0x1d5a03c: ldrb     w8, [x21, #0xead]
0x1d5a040: ldr      x20, [x20, #0xe68]
0x1d5a044: mov      x19, x0
0x1d5a048: tbnz     w8, #0, #0x1d5a090
0x1d5a04c: adrp     x0, #0x4185000
0x1d5a050: ldr      x0, [x0, #0x208]
0x1d5a054: bl       #0x1b64570 | 
0x1d5a058: adrp     x0, #0x4186000
0x1d5a05c: ldr      x0, [x0, #0xe68]
0x1d5a060: bl       #0x1b64570 | 
0x1d5a064: adrp     x0, #0x4187000
0x1d5a068: ldr      x0, [x0, #0xc00] | 0x4187c00 'chapter8Passed'
0x1d5a06c: bl       #0x1b64570 | 
0x1d5a070: adrp     x0, #0x4187000
0x1d5a074: ldr      x0, [x0, #0x6b0] | 0x41876b0 'GameCompleted'
0x1d5a078: bl       #0x1b64570 | 
0x1d5a07c: adrp     x0, #0x4185000
0x1d5a080: ldr      x0, [x0, #0x2d8] | 0x41852d8 ''
0x1d5a084: bl       #0x1b64570 | 
0x1d5a088: mov      w8, #1
0x1d5a08c: strb     w8, [x21, #0xead]
0x1d5a090: ldr      x0, [x20]
0x1d5a094: adrp     x22, #0x4187000
0x1d5a098: adrp     x21, #0x4185000
0x1d5a09c: ldr      w8, [x0, #0xe0]
0x1d5a0a0: ldr      x22, [x22, #0x6b0] | 0x41876b0 'GameCompleted'
0x1d5a0a4: ldr      x21, [x21, #0x2d8] | 0x41852d8 ''
0x1d5a0a8: cbnz     w8, #0x1d5a0b0
0x1d5a0ac: bl       #0x1b646a4 | 
0x1d5a0b0: ldr      x0, [x22]
0x1d5a0b4: ldr      x1, [x21]
0x1d5a0b8: mov      x2, xzr
0x1d5a0bc: bl       #0x1cc612c | SaveManagement$$LoadString
0x1d5a0c0: ldr      x1, [x21]
0x1d5a0c4: mov      x2, xzr
0x1d5a0c8: bl       #0x32fac7c | System.String$$op_Equality
0x1d5a0cc: tbz      w0, #0, #0x1d5a0fc
0x1d5a0d0: ldr      x0, [x20]
0x1d5a0d4: ldr      w8, [x0, #0xe0]
0x1d5a0d8: cbnz     w8, #0x1d5a0e0
0x1d5a0dc: bl       #0x1b646a4 | 
0x1d5a0e0: adrp     x8, #0x4187000
0x1d5a0e4: ldr      x8, [x8, #0xc00] | 0x4187c00 'chapter8Passed'
0x1d5a0e8: mov      w1, wzr
0x1d5a0ec: mov      x2, xzr
0x1d5a0f0: ldr      x0, [x8]
0x1d5a0f4: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d5a0f8: tbz      w0, #0, #0x1d5a10c
0x1d5a0fc: ldp      x20, x19, [sp, #0x20]
0x1d5a100: ldp      x22, x21, [sp, #0x10]
0x1d5a104: ldr      x30, [sp], #0x30
0x1d5a108: ret      
0x1d5a10c: mov      x0, x19
0x1d5a110: mov      x1, xzr
0x1d5a114: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1d5a118: adrp     x8, #0x4185000
0x1d5a11c: ldr      x8, [x8, #0x208]
0x1d5a120: mov      x19, x0
0x1d5a124: ldr      x8, [x8]
0x1d5a128: ldr      w9, [x8, #0xe0]
0x1d5a12c: cbnz     w9, #0x1d5a138
0x1d5a130: mov      x0, x8
0x1d5a134: bl       #0x1b646a4 | 
0x1d5a138: mov      x0, x19
0x1d5a13c: ldp      x20, x19, [sp, #0x20]
0x1d5a140: ldp      x22, x21, [sp, #0x10]
0x1d5a144: mov      x1, xzr
0x1d5a148: ldr      x30, [sp], #0x30
0x1d5a14c: b        #0x3c652c4 | UnityEngine.Object$$Destroy

// 0x1da40a0 SongSelector$$ToSimulateMode
0x1da40a0: str      x30, [sp, #-0x50]!
0x1da40a4: stp      x26, x25, [sp, #0x10]
0x1da40a8: stp      x24, x23, [sp, #0x20]
0x1da40ac: stp      x22, x21, [sp, #0x30]
0x1da40b0: stp      x20, x19, [sp, #0x40]
0x1da40b4: adrp     x22, #0x4476000
0x1da40b8: adrp     x21, #0x4186000
0x1da40bc: adrp     x20, #0x4187000
0x1da40c0: ldrb     w8, [x22, #0x93]
0x1da40c4: ldr      x21, [x21, #0xef8]
0x1da40c8: ldr      x20, [x20, #0xee8] | 0x4187ee8 'MainStory8'
0x1da40cc: mov      x19, x0
0x1da40d0: tbnz     w8, #0, #0x1da4160
0x1da40d4: adrp     x0, #0x4186000
0x1da40d8: ldr      x0, [x0, #0xef8]
0x1da40dc: bl       #0x1b64570 | 
0x1da40e0: adrp     x0, #0x4186000
0x1da40e4: ldr      x0, [x0, #0xe60]
0x1da40e8: bl       #0x1b64570 | 
0x1da40ec: adrp     x0, #0x4185000
0x1da40f0: ldr      x0, [x0, #0x208]
0x1da40f4: bl       #0x1b64570 | 
0x1da40f8: adrp     x0, #0x4186000
0x1da40fc: ldr      x0, [x0, #0xea0]
0x1da4100: bl       #0x1b64570 | 
0x1da4104: adrp     x0, #0x4186000
0x1da4108: ldr      x0, [x0, #0xe68]
0x1da410c: bl       #0x1b64570 | 
0x1da4110: adrp     x0, #0x418b000
0x1da4114: ldr      x0, [x0, #0xe08] | 0x418be08 'Chapter8SelectMusic'
0x1da4118: bl       #0x1b64570 | 
0x1da411c: adrp     x0, #0x4187000
0x1da4120: ldr      x0, [x0, #0xc80] | 0x4187c80 'MainStory9'
0x1da4124: bl       #0x1b64570 | 
0x1da4128: adrp     x0, #0x418a000
0x1da412c: ldr      x0, [x0, #0x460] | 0x418a460 'Chapter9SelectMusic'
0x1da4130: bl       #0x1b64570 | 
0x1da4134: adrp     x0, #0x4187000
0x1da4138: ldr      x0, [x0, #0xee8] | 0x4187ee8 'MainStory8'
0x1da413c: bl       #0x1b64570 | 
0x1da4140: adrp     x0, #0x4189000
0x1da4144: ldr      x0, [x0, #0x928] | 0x4189928 'IsSimulateMode'
0x1da4148: bl       #0x1b64570 | 
0x1da414c: adrp     x0, #0x418a000
0x1da4150: ldr      x0, [x0, #0x5c0] | 0x418a5c0 'IsSimulateModeC9'
0x1da4154: bl       #0x1b64570 | 
0x1da4158: mov      w8, #1
0x1da415c: strb     w8, [x22, #0x93]
0x1da4160: ldr      x8, [x21]
0x1da4164: adrp     x25, #0x4186000
0x1da4168: adrp     x24, #0x4185000
0x1da416c: adrp     x23, #0x4186000
0x1da4170: ldr      x8, [x8, #0xb8]
0x1da4174: ldr      x25, [x25, #0xe68]
0x1da4178: ldr      x1, [x20]
0x1da417c: adrp     x22, #0x4186000
0x1da4180: ldr      x0, [x8, #0x28]
0x1da4184: ldr      x24, [x24, #0x208]
0x1da4188: ldr      x23, [x23, #0xe60]
0x1da418c: ldr      x22, [x22, #0xea0]
0x1da4190: mov      x2, xzr
0x1da4194: bl       #0x32fac7c | System.String$$op_Equality
0x1da4198: tbz      w0, #0, #0x1da422c
0x1da419c: mov      w8, #1
0x1da41a0: strb     w8, [x19, #0x289]
0x1da41a4: ldr      x0, [x25]
0x1da41a8: adrp     x26, #0x4189000
0x1da41ac: adrp     x20, #0x418b000
0x1da41b0: ldr      w8, [x0, #0xe0]
0x1da41b4: ldr      x26, [x26, #0x928] | 0x4189928 'IsSimulateMode'
0x1da41b8: ldr      x20, [x20, #0xe08] | 0x418be08 'Chapter8SelectMusic'
0x1da41bc: cbnz     w8, #0x1da41c4
0x1da41c0: bl       #0x1b646a4 | 
0x1da41c4: ldr      x0, [x26]
0x1da41c8: mov      w1, #1
0x1da41cc: mov      x2, xzr
0x1da41d0: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1da41d4: mov      x0, xzr
0x1da41d8: bl       #0x1ce0fdc | Phigros2.VisionReplay.VisionReplay$$BootSimulateMode
0x1da41dc: ldr      x1, [x20]
0x1da41e0: mov      x0, x19
0x1da41e4: bl       #0x1da401c | SongSelector$$StartNextScene
0x1da41e8: ldr      x0, [x24]
0x1da41ec: ldr      x20, [x19, #0x2a0]
0x1da41f0: ldr      w8, [x0, #0xe0]
0x1da41f4: cbnz     w8, #0x1da41fc
0x1da41f8: bl       #0x1b646a4 | 
0x1da41fc: ldr      x1, [x23]
0x1da4200: mov      x0, x20
0x1da4204: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1da4208: ldr      x8, [x22]
0x1da420c: ldr      x8, [x8, #0xb8]
0x1da4210: ldr      x8, [x8, #8]
0x1da4214: cbz      x8, #0x1da4304
0x1da4218: ldr      x9, [x8, #0x18]
0x1da421c: ldr      x0, [x8, #0x40]
0x1da4220: ldr      x2, [x8, #0x28]
0x1da4224: mov      w1, #0xe
0x1da4228: blr      x9
0x1da422c: ldr      x8, [x21]
0x1da4230: adrp     x9, #0x4187000
0x1da4234: mov      x2, xzr
0x1da4238: ldr      x8, [x8, #0xb8]
0x1da423c: ldr      x9, [x9, #0xc80] | 0x4187c80 'MainStory9'
0x1da4240: ldr      x0, [x8, #0x28]
0x1da4244: ldr      x1, [x9]
0x1da4248: bl       #0x32fac7c | System.String$$op_Equality
0x1da424c: tbz      w0, #0, #0x1da42ec
0x1da4250: mov      w8, #1
0x1da4254: strb     w8, [x19, #0x289]
0x1da4258: ldr      x0, [x25]
0x1da425c: ldr      w8, [x0, #0xe0]
0x1da4260: cbnz     w8, #0x1da4268
0x1da4264: bl       #0x1b646a4 | 
0x1da4268: adrp     x8, #0x418a000
0x1da426c: ldr      x8, [x8, #0x5c0] | 0x418a5c0 'IsSimulateModeC9'
0x1da4270: mov      w1, #1
0x1da4274: mov      x2, xzr
0x1da4278: ldr      x0, [x8]
0x1da427c: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1da4280: adrp     x8, #0x418a000
0x1da4284: ldr      x8, [x8, #0x460] | 0x418a460 'Chapter9SelectMusic'
0x1da4288: mov      x0, x19
0x1da428c: ldr      x1, [x8]
0x1da4290: bl       #0x1da401c | SongSelector$$StartNextScene
0x1da4294: ldr      x0, [x24]
0x1da4298: ldr      x19, [x19, #0x2a0]
0x1da429c: ldr      w8, [x0, #0xe0]
0x1da42a0: cbnz     w8, #0x1da42a8
0x1da42a4: bl       #0x1b646a4 | 
0x1da42a8: ldr      x1, [x23]
0x1da42ac: mov      x0, x19
0x1da42b0: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1da42b4: ldr      x8, [x22]
0x1da42b8: ldr      x8, [x8, #0xb8]
0x1da42bc: ldr      x8, [x8, #8]
0x1da42c0: cbz      x8, #0x1da4304
0x1da42c4: ldr      x3, [x8, #0x18]
0x1da42c8: ldr      x0, [x8, #0x40]
0x1da42cc: ldr      x2, [x8, #0x28]
0x1da42d0: ldp      x20, x19, [sp, #0x40]
0x1da42d4: ldp      x22, x21, [sp, #0x30]
0x1da42d8: ldp      x24, x23, [sp, #0x20]
0x1da42dc: ldp      x26, x25, [sp, #0x10]
0x1da42e0: mov      w1, #0xe
0x1da42e4: ldr      x30, [sp], #0x50
0x1da42e8: br       x3
0x1da42ec: ldp      x20, x19, [sp, #0x40]
0x1da42f0: ldp      x22, x21, [sp, #0x30]
0x1da42f4: ldp      x24, x23, [sp, #0x20]
0x1da42f8: ldp      x26, x25, [sp, #0x10]
0x1da42fc: ldr      x30, [sp], #0x50
0x1da4300: ret      
0x1da4304: bl       #0x1b647c8 | 

// 0x1da4900 SongSelector$$Start
0x1da4900: sub      sp, sp, #0x90
0x1da4904: stp      x29, x30, [sp, #0x30]
0x1da4908: stp      x28, x27, [sp, #0x40]
0x1da490c: stp      x26, x25, [sp, #0x50]
0x1da4910: stp      x24, x23, [sp, #0x60]
0x1da4914: stp      x22, x21, [sp, #0x70]
0x1da4918: stp      x20, x19, [sp, #0x80]
0x1da491c: adrp     x21, #0x4476000
0x1da4920: adrp     x20, #0x418e000
0x1da4924: ldrb     w8, [x21, #0x9a]
0x1da4928: ldr      x20, [x20, #0xf78]
0x1da492c: mov      x19, x0
0x1da4930: tbnz     w8, #0, #0x1da4c54
0x1da4934: adrp     x0, #0x4186000
0x1da4938: ldr      x0, [x0, #0xf18]
0x1da493c: bl       #0x1b64570 | 
0x1da4940: adrp     x0, #0x418b000
0x1da4944: ldr      x0, [x0, #0xa88]
0x1da4948: bl       #0x1b64570 | 
0x1da494c: adrp     x0, #0x4189000
0x1da4950: ldr      x0, [x0, #0xa48]
0x1da4954: bl       #0x1b64570 | 
0x1da4958: adrp     x0, #0x4187000
0x1da495c: ldr      x0, [x0, #0x660]
0x1da4960: bl       #0x1b64570 | 
0x1da4964: adrp     x0, #0x4186000
0x1da4968: ldr      x0, [x0, #0xef8]
0x1da496c: bl       #0x1b64570 | 
0x1da4970: adrp     x0, #0x4189000
0x1da4974: ldr      x0, [x0, #0x50]
0x1da4978: bl       #0x1b64570 | 
0x1da497c: adrp     x0, #0x418e000
0x1da4980: ldr      x0, [x0, #0xf80]
0x1da4984: bl       #0x1b64570 | 
0x1da4988: adrp     x0, #0x418e000
0x1da498c: ldr      x0, [x0, #0xf88]
0x1da4990: bl       #0x1b64570 | 
0x1da4994: adrp     x0, #0x418b000
0x1da4998: ldr      x0, [x0, #0xab8]
0x1da499c: bl       #0x1b64570 | 
0x1da49a0: adrp     x0, #0x418a000
0x1da49a4: ldr      x0, [x0, #0x4b8]
0x1da49a8: bl       #0x1b64570 | 
0x1da49ac: adrp     x0, #0x418a000
0x1da49b0: ldr      x0, [x0, #0x688]
0x1da49b4: bl       #0x1b64570 | 
0x1da49b8: adrp     x0, #0x418a000
0x1da49bc: ldr      x0, [x0, #0x5d0]
0x1da49c0: bl       #0x1b64570 | 
0x1da49c4: adrp     x0, #0x4187000
0x1da49c8: ldr      x0, [x0, #0xc40]
0x1da49cc: bl       #0x1b64570 | 
0x1da49d0: adrp     x0, #0x4187000
0x1da49d4: ldr      x0, [x0, #0xc48]
0x1da49d8: bl       #0x1b64570 | 
0x1da49dc: adrp     x0, #0x4189000
0x1da49e0: ldr      x0, [x0, #0xaa8]
0x1da49e4: bl       #0x1b64570 | 
0x1da49e8: adrp     x0, #0x418a000
0x1da49ec: ldr      x0, [x0, #0x680]
0x1da49f0: bl       #0x1b64570 | 
0x1da49f4: adrp     x0, #0x4187000
0x1da49f8: ldr      x0, [x0, #0xc50]
0x1da49fc: bl       #0x1b64570 | 
0x1da4a00: adrp     x0, #0x4186000
0x1da4a04: ldr      x0, [x0, #0xec0]
0x1da4a08: bl       #0x1b64570 | 
0x1da4a0c: adrp     x0, #0x4187000
0x1da4a10: ldr      x0, [x0, #0x6f8]
0x1da4a14: bl       #0x1b64570 | 
0x1da4a18: adrp     x0, #0x4185000
0x1da4a1c: ldr      x0, [x0, #0x208]
0x1da4a20: bl       #0x1b64570 | 
0x1da4a24: adrp     x0, #0x4186000
0x1da4a28: ldr      x0, [x0, #0xe68]
0x1da4a2c: bl       #0x1b64570 | 
0x1da4a30: adrp     x0, #0x4189000
0x1da4a34: ldr      x0, [x0, #0xb10]
0x1da4a38: bl       #0x1b64570 | 
0x1da4a3c: adrp     x0, #0x418e000
0x1da4a40: ldr      x0, [x0, #0xf90]
0x1da4a44: bl       #0x1b64570 | 
0x1da4a48: adrp     x0, #0x418e000
0x1da4a4c: ldr      x0, [x0, #0xf78]
0x1da4a50: bl       #0x1b64570 | 
0x1da4a54: adrp     x0, #0x418e000
0x1da4a58: ldr      x0, [x0, #0xf98]
0x1da4a5c: bl       #0x1b64570 | 
0x1da4a60: adrp     x0, #0x418e000
0x1da4a64: ldr      x0, [x0, #0xfa0]
0x1da4a68: bl       #0x1b64570 | 
0x1da4a6c: adrp     x0, #0x418e000
0x1da4a70: ldr      x0, [x0, #0xfa8]
0x1da4a74: bl       #0x1b64570 | 
0x1da4a78: adrp     x0, #0x418e000
0x1da4a7c: ldr      x0, [x0, #0xfb0]
0x1da4a80: bl       #0x1b64570 | 
0x1da4a84: adrp     x0, #0x4189000
0x1da4a88: ldr      x0, [x0, #0xb78]
0x1da4a8c: bl       #0x1b64570 | 
0x1da4a90: adrp     x0, #0x418e000
0x1da4a94: ldr      x0, [x0, #0xf68] | 0x418ef68 'SortTypeInSongSelector'
0x1da4a98: bl       #0x1b64570 | 
0x1da4a9c: adrp     x0, #0x4189000
0x1da4aa0: ldr      x0, [x0, #0x938] | 0x4189938 'TheChariotREVIIVAL.Attoclef.0'
0x1da4aa4: bl       #0x1b64570 | 
0x1da4aa8: adrp     x0, #0x4189000
0x1da4aac: ldr      x0, [x0, #0x328] | 0x4189328 'chartMirror'
0x1da4ab0: bl       #0x1b64570 | 
0x1da4ab4: adrp     x0, #0x418e000
0x1da4ab8: ldr      x0, [x0, #0xfb8] | 0x418efb8 'Congrats!\nIt seems that you have already been familiarized with this game. From now on, you can directly unlock the IN difficulty of new songs obtained!'
0x1da4abc: bl       #0x1b64570 | 
0x1da4ac0: adrp     x0, #0x4187000
0x1da4ac4: ldr      x0, [x0, #0x768] | 0x4187768 'AntiAddictionRestrictType'
0x1da4ac8: bl       #0x1b64570 | 
0x1da4acc: adrp     x0, #0x418a000
0x1da4ad0: ldr      x0, [x0, #0x618] | 0x418a618 'poyidomegino0'
0x1da4ad4: bl       #0x1b64570 | 
0x1da4ad8: adrp     x0, #0x418c000
0x1da4adc: ldr      x0, [x0, #0xc98] | 0x418cc98 '提示'
0x1da4ae0: bl       #0x1b64570 | 
0x1da4ae4: adrp     x0, #0x418b000
0x1da4ae8: ldr      x0, [x0, #0xae8] | 0x418bae8 'chapter8UnlockBegin'
0x1da4aec: bl       #0x1b64570 | 
0x1da4af0: adrp     x0, #0x418d000
0x1da4af4: ldr      x0, [x0, #0xf50] | 0x418df50 'NowSongId'
0x1da4af8: bl       #0x1b64570 | 
0x1da4afc: adrp     x0, #0x4187000
0x1da4b00: ldr      x0, [x0, #0x6b0] | 0x41876b0 'GameCompleted'
0x1da4b04: bl       #0x1b64570 | 
0x1da4b08: adrp     x0, #0x418a000
0x1da4b0c: ldr      x0, [x0, #0x3c0] | 0x418a3c0 'Implexrough.Silentroommommy.0'
0x1da4b10: bl       #0x1b64570 | 
0x1da4b14: adrp     x0, #0x4189000
0x1da4b18: ldr      x0, [x0, #0x940] | 0x4189940 'CraveWave.LandRoot.0'
0x1da4b1c: bl       #0x1b64570 | 
0x1da4b20: adrp     x0, #0x418e000
0x1da4b24: ldr      x0, [x0, #0xfc0] | 0x418efc0 '축하해요!\n이 게임에 익숙해진 것 같아요. 이제부터 획득한 새로운 곡의 IN 난이도가 바로 잠금 해제 됩니다!'
0x1da4b28: bl       #0x1b64570 | 
0x1da4b2c: adrp     x0, #0x418d000
0x1da4b30: ldr      x0, [x0, #0xf58] | 0x418df58 'Spasmodic.姜米條颶風元力上人.0'
0x1da4b34: bl       #0x1b64570 | 
0x1da4b38: adrp     x0, #0x4187000
0x1da4b3c: ldr      x0, [x0, #0xc10] | 0x4187c10 'ChallengeMode'
0x1da4b40: bl       #0x1b64570 | 
0x1da4b44: adrp     x0, #0x418e000
0x1da4b48: ldr      x0, [x0, #0xfc8] | 0x418efc8 '恭喜！\n你已經足夠熟悉這款遊戲了。從現在開始，你可以直接解鎖新章節第一首歌以及新購買單曲的IN難度！'
0x1da4b4c: bl       #0x1b64570 | 
0x1da4b50: adrp     x0, #0x4189000
0x1da4b54: ldr      x0, [x0, #0x600] | 0x4189600 'NowLevel'
0x1da4b58: bl       #0x1b64570 | 
0x1da4b5c: adrp     x0, #0x4187000
0x1da4b60: ldr      x0, [x0, #0xc80] | 0x4187c80 'MainStory9'
0x1da4b64: bl       #0x1b64570 | 
0x1da4b68: adrp     x0, #0x4189000
0x1da4b6c: ldr      x0, [x0, #0x160] | 0x4189160 'C8TheChariotREVIIVALUnlocked'
0x1da4b70: bl       #0x1b64570 | 
0x1da4b74: adrp     x0, #0x4187000
0x1da4b78: ldr      x0, [x0, #0xee8] | 0x4187ee8 'MainStory8'
0x1da4b7c: bl       #0x1b64570 | 
0x1da4b80: adrp     x0, #0x418e000
0x1da4b84: ldr      x0, [x0, #0xf70] | 0x418ef70 'SortDirectionInSongSelector'
0x1da4b88: bl       #0x1b64570 | 
0x1da4b8c: adrp     x0, #0x4188000
0x1da4b90: ldr      x0, [x0, #0xc98] | 0x4188c98 'CheckScreenResolution'
0x1da4b94: bl       #0x1b64570 | 
0x1da4b98: adrp     x0, #0x418d000
0x1da4b9c: ldr      x0, [x0, #0xfc0] | 0x418dfc0 'Random.SobremSilentroom.0'
0x1da4ba0: bl       #0x1b64570 | 
0x1da4ba4: adrp     x0, #0x418e000
0x1da4ba8: ldr      x0, [x0, #0xfd0] | 0x418efd0 '恭喜！\n你已经足够熟悉这款游戏了，从现在开始，你可以直接解锁新章节第一首歌以及购买的单曲的IN难度！'
0x1da4bac: bl       #0x1b64570 | 
0x1da4bb0: adrp     x0, #0x418d000
0x1da4bb4: ldr      x0, [x0, #0x268] | 0x418d268 'AlreadyShowRinkingTip'
0x1da4bb8: bl       #0x1b64570 | 
0x1da4bbc: adrp     x0, #0x418e000
0x1da4bc0: ldr      x0, [x0, #0xfd8] | 0x418efd8 'Good News'
0x1da4bc4: bl       #0x1b64570 | 
0x1da4bc8: adrp     x0, #0x418e000
0x1da4bcc: ldr      x0, [x0, #0xfe0] | 0x418efe0 '案内'
0x1da4bd0: bl       #0x1b64570 | 
0x1da4bd4: adrp     x0, #0x418e000
0x1da4bd8: ldr      x0, [x0, #0xfe8] | 0x418efe8 'MainStory5Locked'
0x1da4bdc: bl       #0x1b64570 | 
0x1da4be0: adrp     x0, #0x4185000
0x1da4be4: ldr      x0, [x0, #0x2d8] | 0x41852d8 ''
0x1da4be8: bl       #0x1b64570 | 
0x1da4bec: adrp     x0, #0x418e000
0x1da4bf0: ldr      x0, [x0, #0xff0] | 0x418eff0 'Cereris.SunsetRayNceS.0'
0x1da4bf4: bl       #0x1b64570 | 
0x1da4bf8: adrp     x0, #0x418e000
0x1da4bfc: ldr      x0, [x0, #0xf60] | 0x418ef60 'NowSong'
0x1da4c00: bl       #0x1b64570 | 
0x1da4c04: adrp     x0, #0x418c000
0x1da4c08: ldr      x0, [x0, #0xe40] | 0x418ce40 '資訊'
0x1da4c0c: bl       #0x1b64570 | 
0x1da4c10: adrp     x0, #0x418a000
0x1da4c14: ldr      x0, [x0, #0x318] | 0x418a318 'C9ImplexroughUnlocked'
0x1da4c18: bl       #0x1b64570 | 
0x1da4c1c: adrp     x0, #0x418e000
0x1da4c20: ldr      x0, [x0, #0xff8] | 0x418eff8 'microwav.dandeless.0'
0x1da4c24: bl       #0x1b64570 | 
0x1da4c28: adrp     x0, #0x418f000
0x1da4c2c: ldr      x0, [x0] | 0x418f000 '좋은 소식'
0x1da4c30: bl       #0x1b64570 | 
0x1da4c34: adrp     x0, #0x418f000
0x1da4c38: ldr      x0, [x0, #8] | 0x418f008 'おめでとうございます！\nもうこのゲームには慣れてきましたね。ここからは、未プレイチャプターの最初の曲と購入した曲のIN難易度が直接開放されます！ぜひ楽しんでください！'
0x1da4c3c: bl       #0x1b64570 | 
0x1da4c40: adrp     x0, #0x418d000
0x1da4c44: ldr      x0, [x0, #0xfb0] | 0x418dfb0 'C8CraveWaveUnlocked'
0x1da4c48: bl       #0x1b64570 | 
0x1da4c4c: mov      w8, #1
0x1da4c50: strb     w8, [x21, #0x9a]
0x1da4c54: ldr      x0, [x20]
0x1da4c58: stp      xzr, xzr, [sp, #0x20]
0x1da4c5c: str      wzr, [sp, #0x1c]
0x1da4c60: str      xzr, [sp, #0x10]
0x1da4c64: strb     wzr, [sp, #0xc]
0x1da4c68: str      xzr, [sp]
0x1da4c6c: bl       #0x1b647b8 | 
0x1da4c70: mov      x1, xzr
0x1da4c74: mov      x26, x0
0x1da4c78: bl       #0x1dad784 | SongSelector.<>c__DisplayClass149_0$$.ctor
0x1da4c7c: cbz      x26, #0x1da6094
0x1da4c80: adrp     x29, #0x4186000
0x1da4c84: ldr      x29, [x29, #0xe68]
0x1da4c88: str      x19, [x26, #0x10]
0x1da4c8c: adrp     x22, #0x4187000
0x1da4c90: adrp     x9, #0x4185000
0x1da4c94: ldr      x0, [x29]
0x1da4c98: adrp     x21, #0x4189000
0x1da4c9c: ldr      w8, [x0, #0xe0]
0x1da4ca0: ldr      x22, [x22, #0x6b0] | 0x41876b0 'GameCompleted'
0x1da4ca4: ldr      x9, [x9, #0x2d8] | 0x41852d8 ''
0x1da4ca8: ldr      x21, [x21, #0x328] | 0x4189328 'chartMirror'
0x1da4cac: cbnz     w8, #0x1da4cbc
0x1da4cb0: bl       #0x1b646a4 | 
0x1da4cb4: adrp     x9, #0x4185000
0x1da4cb8: ldr      x9, [x9, #0x2d8] | 0x41852d8 ''
0x1da4cbc: ldr      x0, [x22]
0x1da4cc0: ldr      x1, [x9]
0x1da4cc4: adrp     x25, #0x4186000
0x1da4cc8: ldr      x25, [x25, #0xef8]
0x1da4ccc: mov      x2, xzr
0x1da4cd0: mov      x22, x9
0x1da4cd4: bl       #0x1cc612c | SaveManagement$$LoadString
0x1da4cd8: ldr      x1, [x22]
0x1da4cdc: mov      x2, xzr
0x1da4ce0: bl       #0x33082c8 | System.String$$op_Inequality
0x1da4ce4: and      w8, w0, #1
0x1da4ce8: strb     w8, [x19, #0x303]
0x1da4cec: ldr      x0, [x21]
0x1da4cf0: mov      w1, wzr
0x1da4cf4: mov      x2, xzr
0x1da4cf8: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1da4cfc: and      w8, w0, #1
0x1da4d00: strb     w8, [x19, #0x302]
0x1da4d04: adrp     x21, #0x4475000
0x1da4d08: ldrb     w8, [x21, #0x8c0]
0x1da4d0c: cbnz     w8, #0x1da4d24
0x1da4d10: adrp     x0, #0x4186000
0x1da4d14: ldr      x0, [x0, #0xef8]
0x1da4d18: bl       #0x1b64570 | 
0x1da4d1c: mov      w8, #1
0x1da4d20: strb     w8, [x21, #0x8c0]
0x1da4d24: ldr      x8, [x25]
0x1da4d28: ldr      x8, [x8, #0xb8]
0x1da4d2c: ldr      x0, [x8]
0x1da4d30: cbz      x0, #0x1da6094
0x1da4d34: adrp     x21, #0x4187000
0x1da4d38: ldr      x21, [x21, #0xc10] | 0x4187c10 'ChallengeMode'
0x1da4d3c: mov      x1, xzr
0x1da4d40: bl       #0x1cbc400 | GameInformation$$GetNowChapter
0x1da4d44: str      x0, [x19, #0x40]
0x1da4d48: ldr      x8, [x25]
0x1da4d4c: ldr      x1, [x21]
0x1da4d50: mov      x2, xzr
0x1da4d54: ldr      x8, [x8, #0xb8]
0x1da4d58: ldr      x0, [x8, #0x28]
0x1da4d5c: bl       #0x33082c8 | System.String$$op_Inequality
0x1da4d60: tbz      w0, #0, #0x1da4db0
0x1da4d64: adrp     x8, #0x418a000
0x1da4d68: ldr      x8, [x8, #0x618] | 0x418a618 'poyidomegino0'
0x1da4d6c: mov      x1, xzr
0x1da4d70: ldr      x0, [x8]
0x1da4d74: bl       #0x1d0ce6c | Phigros2.Chapter9.Key$$IsCollectionRead
0x1da4d78: tbz      w0, #0, #0x1da4db0
0x1da4d7c: ldr      x0, [x29]
0x1da4d80: ldr      w8, [x0, #0xe0]
0x1da4d84: cbnz     w8, #0x1da4d8c
0x1da4d88: bl       #0x1b646a4 | 
0x1da4d8c: adrp     x8, #0x418a000
0x1da4d90: ldr      x8, [x8, #0x318] | 0x418a318 'C9ImplexroughUnlocked'
0x1da4d94: mov      w1, wzr
0x1da4d98: mov      x2, xzr
0x1da4d9c: ldr      x0, [x8]
0x1da4da0: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1da4da4: mvn      w8, w0
0x1da4da8: and      w8, w8, #1
0x1da4dac: b        #0x1da4db4 | 
0x1da4db0: mov      w8, wzr
0x1da4db4: strb     w8, [x19, #0x361]
0x1da4db8: cbz      w8, #0x1da4e30
0x1da4dbc: adrp     x22, #0x418a000
0x1da4dc0: ldr      x22, [x22, #0x3c0] | 0x418a3c0 'Implexrough.Silentroommommy.0'
0x1da4dc4: mov      w0, #0xa
0x1da4dc8: mov      w1, #0x15
0x1da4dcc: mov      x2, xzr
0x1da4dd0: bl       #0x1ce28c8 | Phigros2.Utils.TrueRandom$$RandomInt
0x1da4dd4: str      w0, [x19, #0x30c]
0x1da4dd8: movi     d0, #0xffffffff00000000
0x1da4ddc: mov      x0, x19
0x1da4de0: strh     wzr, [x19, #0x318]
0x1da4de4: str      d0, [x19, #0x310]
0x1da4de8: strb     wzr, [x19, #0x31a]
0x1da4dec: bl       #0x1da60d0 | SongSelector$$BeginLoadImplexroughRandomGlitchAudio
0x1da4df0: adrp     x23, #0x4185000
0x1da4df4: ldr      x0, [x22]
0x1da4df8: ldr      x23, [x23, #0x2d8] | 0x41852d8 ''
0x1da4dfc: mov      x2, xzr
0x1da4e00: ldr      x1, [x23]
0x1da4e04: bl       #0x1dadc7c | IdBuilder$$BuildCoverImageId
0x1da4e08: mov      x1, x0
0x1da4e0c: mov      x0, x19
0x1da4e10: bl       #0x1da6160 | SongSelector$$PreloadImage
0x1da4e14: ldr      x0, [x22]
0x1da4e18: ldr      x1, [x23]
0x1da4e1c: mov      x2, xzr
0x1da4e20: bl       #0x1daddc4 | IdBuilder$$BuildBlurImageId
0x1da4e24: mov      x1, x0
0x1da4e28: mov      x0, x19
0x1da4e2c: bl       #0x1da6160 | SongSelector$$PreloadImage
0x1da4e30: ldr      x8, [x19, #0x178]
0x1da4e34: cbz      x8, #0x1da6094
0x1da4e38: ldr      x9, [x19, #0x278]
0x1da4e3c: mov      x2, xzr
0x1da4e40: str      x9, [x8, #0x48]
0x1da4e44: ldr      x8, [x25]
0x1da4e48: ldr      x1, [x21]
0x1da4e4c: ldr      x8, [x8, #0xb8]
0x1da4e50: ldr      x0, [x8, #0x28]
0x1da4e54: bl       #0x32fac7c | System.String$$op_Equality
0x1da4e58: tbz      w0, #0, #0x1da4f00
0x1da4e5c: ldr      x21, [x19, #0x1f0]
0x1da4e60: cbz      x21, #0x1da6094
0x1da4e64: ldr      w8, [x21, #0x18]
0x1da4e68: cmp      w8, #1
0x1da4e6c: b.lt     #0x1da4ea4
0x1da4e70: mov      w22, wzr
0x1da4e74: cmp      w22, w8
0x1da4e78: b.hs     #0x1da6098
0x1da4e7c: add      x8, x21, w22, sxtw #3
0x1da4e80: ldr      x0, [x8, #0x20]
0x1da4e84: cbz      x0, #0x1da6094
0x1da4e88: mov      w1, wzr
0x1da4e8c: mov      x2, xzr
0x1da4e90: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1da4e94: ldr      w8, [x21, #0x18]
0x1da4e98: add      w22, w22, #1
0x1da4e9c: cmp      w22, w8
0x1da4ea0: b.lt     #0x1da4e74
0x1da4ea4: ldr      x21, [x19, #0x1f8]
0x1da4ea8: cbz      x21, #0x1da6094
0x1da4eac: ldr      w8, [x21, #0x18]
0x1da4eb0: cmp      w8, #1
0x1da4eb4: b.lt     #0x1da4eec
0x1da4eb8: mov      w22, wzr
0x1da4ebc: cmp      w22, w8
0x1da4ec0: b.hs     #0x1da6098
0x1da4ec4: add      x8, x21, w22, sxtw #3
0x1da4ec8: ldr      x0, [x8, #0x20]
0x1da4ecc: cbz      x0, #0x1da6094
0x1da4ed0: mov      w1, #1
0x1da4ed4: mov      x2, xzr
0x1da4ed8: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1da4edc: ldr      w8, [x21, #0x18]
0x1da4ee0: add      w22, w22, #1
0x1da4ee4: cmp      w22, w8
0x1da4ee8: b.lt     #0x1da4ebc
0x1da4eec: ldr      x8, [x19, #0x50]
0x1da4ef0: cbz      x8, #0x1da6094
0x1da4ef4: str      x19, [x8, #0x20]
0x1da4ef8: adrp     x21, #0x4475000
0x1da4efc: b        #0x1da4f8c | 
0x1da4f00: ldr      x21, [x19, #0x1f8]
0x1da4f04: cbz      x21, #0x1da6094
0x1da4f08: ldr      w8, [x21, #0x18]
0x1da4f0c: cmp      w8, #1
0x1da4f10: b.lt     #0x1da4f48
0x1da4f14: mov      w22, wzr
0x1da4f18: cmp      w22, w8
0x1da4f1c: b.hs     #0x1da6098
0x1da4f20: add      x8, x21, w22, sxtw #3
0x1da4f24: ldr      x0, [x8, #0x20]
0x1da4f28: cbz      x0, #0x1da6094
0x1da4f2c: mov      w1, wzr
0x1da4f30: mov      x2, xzr
0x1da4f34: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1da4f38: ldr      w8, [x21, #0x18]
0x1da4f3c: add      w22, w22, #1
0x1da4f40: cmp      w22, w8
0x1da4f44: b.lt     #0x1da4f18
0x1da4f48: ldr      x0, [x19, #0x50]
0x1da4f4c: cbz      x0, #0x1da6094
0x1da4f50: mov      x1, xzr
0x1da4f54: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1da4f58: adrp     x8, #0x4185000
0x1da4f5c: ldr      x8, [x8, #0x208]
0x1da4f60: mov      x22, x0
0x1da4f64: adrp     x21, #0x4475000
0x1da4f68: ldr      x8, [x8]
0x1da4f6c: ldr      w9, [x8, #0xe0]
0x1da4f70: cbnz     w9, #0x1da4f7c
0x1da4f74: mov      x0, x8
0x1da4f78: bl       #0x1b646a4 | 
0x1da4f7c: mov      x0, x22
0x1da4f80: mov      x1, xzr
0x1da4f84: bl       #0x3c652c4 | UnityEngine.Object$$Destroy
0x1da4f88: str      xzr, [x19, #0x50]
0x1da4f8c: ldr      x8, [x25]
0x1da4f90: adrp     x9, #0x4187000
0x1da4f94: mov      x2, xzr
0x1da4f98: ldr      x8, [x8, #0xb8]
0x1da4f9c: ldr      x9, [x9, #0xee8] | 0x4187ee8 'MainStory8'
0x1da4fa0: ldr      x22, [x8, #0x28]
0x1da4fa4: ldr      x1, [x9]
0x1da4fa8: mov      x0, x22
0x1da4fac: bl       #0x32fac7c | System.String$$op_Equality
0x1da4fb0: tbnz     w0, #0, #0x1da4fd0
0x1da4fb4: adrp     x8, #0x4187000
0x1da4fb8: ldr      x8, [x8, #0xc80] | 0x4187c80 'MainStory9'
0x1da4fbc: mov      x0, x22
0x1da4fc0: mov      x2, xzr
0x1da4fc4: ldr      x1, [x8]
0x1da4fc8: bl       #0x32fac7c | System.String$$op_Equality
0x1da4fcc: tbz      w0, #0, #0x1da4fe4
0x1da4fd0: ldr      x0, [x19, #0x2c0]
0x1da4fd4: cbz      x0, #0x1da6094
0x1da4fd8: mov      w1, #1
0x1da4fdc: mov      x2, xzr
0x1da4fe0: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1da4fe4: ldrb     w8, [x21, #0x8c0]
0x1da4fe8: ldr      x22, [x19, #0x210]
0x1da4fec: cbnz     w8, #0x1da5004
0x1da4ff0: adrp     x0, #0x4186000
0x1da4ff4: ldr      x0, [x0, #0xef8]
0x1da4ff8: bl       #0x1b64570 | 
0x1da4ffc: mov      w8, #1
0x1da5000: strb     w8, [x21, #0x8c0]
0x1da5004: ldr      x8, [x25]
0x1da5008: ldr      x8, [x8, #0xb8]
0x1da500c: ldr      x8, [x8]
0x1da5010: cbz      x8, #0x1da6094
0x1da5014: ldr      x8, [x8, #0x98]
0x1da5018: cbz      x8, #0x1da6094
0x1da501c: ldr      x0, [x8, #0x20]
0x1da5020: cbz      x0, #0x1da6094
0x1da5024: ldr      x8, [x0]
0x1da5028: ldp      x9, x1, [x8, #0x168]
0x1da502c: blr      x9
0x1da5030: cbz      x22, #0x1da6094
0x1da5034: ldr      x8, [x22]
0x1da5038: mov      x1, x0
0x1da503c: mov      x0, x22
0x1da5040: ldr      x9, [x8, #0x5e8]
0x1da5044: ldr      x2, [x8, #0x5f0]
0x1da5048: blr      x9
0x1da504c: ldr      x0, [x19, #0x1c0]
0x1da5050: cbz      x0, #0x1da6094
0x1da5054: adrp     x21, #0x4189000
0x1da5058: ldr      x21, [x21, #0x50]
0x1da505c: ldr      x1, [x21]
0x1da5060: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1da5064: ldr      x8, [x19, #0x1d0]
0x1da5068: str      x0, [x19, #0x1c8]
0x1da506c: cbz      x8, #0x1da6094
0x1da5070: ldr      x1, [x21]
0x1da5074: mov      x0, x8
0x1da5078: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1da507c: ldr      x8, [x19, #0x1d8]
0x1da5080: str      x0, [x19, #0x290]
0x1da5084: cbz      x8, #0x1da6094
0x1da5088: ldr      x1, [x21]
0x1da508c: adrp     x22, #0x418e000
0x1da5090: adrp     x21, #0x418e000
0x1da5094: adrp     x23, #0x4189000
0x1da5098: ldr      x22, [x22, #0xf68] | 0x418ef68 'SortTypeInSongSelector'
0x1da509c: ldr      x21, [x21, #0xf70] | 0x418ef70 'SortDirectionInSongSelector'
0x1da50a0: ldr      x23, [x23, #0x600] | 0x4189600 'NowLevel'
0x1da50a4: mov      x0, x8
0x1da50a8: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1da50ac: str      x0, [x19, #0x298]
0x1da50b0: ldr      x0, [x29]
0x1da50b4: ldr      w8, [x0, #0xe0]
0x1da50b8: cbnz     w8, #0x1da50c0
0x1da50bc: bl       #0x1b646a4 | 
0x1da50c0: ldr      x0, [x22]
0x1da50c4: mov      w1, wzr
0x1da50c8: mov      x2, xzr
0x1da50cc: bl       #0x1cc5ccc | SaveManagement$$LoadInt
0x1da50d0: str      w0, [x19, #0x74]
0x1da50d4: ldr      x0, [x21]
0x1da50d8: mov      w1, #1
0x1da50dc: mov      x2, xzr
0x1da50e0: bl       #0x1cc5ccc | SaveManagement$$LoadInt
0x1da50e4: str      w0, [x19, #0x78]
0x1da50e8: ldr      x0, [x23]
0x1da50ec: mov      w1, wzr
0x1da50f0: mov      x2, xzr
0x1da50f4: bl       #0x1cc5ccc | SaveManagement$$LoadInt
0x1da50f8: ldr      w8, [x19, #0x78]
0x1da50fc: str      w0, [x19, #0x60]
0x1da5100: cbnz     w8, #0x1da512c
0x1da5104: ldr      x0, [x29]
0x1da5108: ldr      w8, [x0, #0xe0]
0x1da510c: cbnz     w8, #0x1da5114
0x1da5110: bl       #0x1b646a4 | 
0x1da5114: ldr      x0, [x21]
0x1da5118: mov      w1, #1
0x1da511c: mov      x2, xzr
0x1da5120: mov      w21, #1
0x1da5124: bl       #0x1cc5034 | SaveManagement$$SaveInt
0x1da5128: str      w21, [x19, #0x78]
0x1da512c: ldr      x8, [x19, #0x1b0]
0x1da5130: cbz      x8, #0x1da6094
0x1da5134: ldrsw    x9, [x19, #0x74]
0x1da5138: ldr      w10, [x8, #0x18]
0x1da513c: cmp      w9, w10
0x1da5140: b.hs     #0x1da6098
0x1da5144: adrp     x10, #0x4187000
0x1da5148: ldr      x10, [x10, #0xc50]
0x1da514c: add      x8, x8, x9, lsl #3
0x1da5150: ldr      x22, [x19, #0x1a0]
0x1da5154: ldr      x23, [x8, #0x20]
0x1da5158: ldr      x0, [x10]
0x1da515c: ldr      w9, [x0, #0xe0]
0x1da5160: cbnz     w9, #0x1da5168
0x1da5164: bl       #0x1b646a4 | 
0x1da5168: mov      x0, x23
0x1da516c: mov      x1, xzr
0x1da5170: bl       #0x1cc1590 | MultiLanguageTextBase$$GetNowLanguageText
0x1da5174: cbz      x22, #0x1da6094
0x1da5178: ldr      x8, [x22]
0x1da517c: mov      x1, x0
0x1da5180: mov      x0, x22
0x1da5184: ldr      x9, [x8, #0x5e8]
0x1da5188: ldr      x2, [x8, #0x5f0]
0x1da518c: blr      x9
0x1da5190: ldr      x0, [x19, #0x1a8]
0x1da5194: cbz      x0, #0x1da6094
0x1da5198: mov      x1, xzr
0x1da519c: bl       #0x3c5d744 | UnityEngine.Component$$get_transform
0x1da51a0: cbz      x0, #0x1da6094
0x1da51a4: ldr      w8, [x19, #0x78]
0x1da51a8: adrp     x22, #0x418a000
0x1da51ac: adrp     x23, #0x418a000
0x1da51b0: adrp     x21, #0x4187000
0x1da51b4: ldr      x22, [x22, #0x680]
0x1da51b8: ldr      x23, [x23, #0x688]
0x1da51bc: ldr      x21, [x21, #0x768] | 0x4187768 'AntiAddictionRestrictType'
0x1da51c0: neg      w8, w8
0x1da51c4: scvtf    s1, w8
0x1da51c8: fmov     s0, #1.00000000
0x1da51cc: fmov     s2, #1.00000000
0x1da51d0: mov      x1, xzr
0x1da51d4: bl       #0x3c6be9c | UnityEngine.Transform$$set_localScale
0x1da51d8: ldr      x0, [x22]
0x1da51dc: bl       #0x1b647b8 | 
0x1da51e0: ldr      x1, [x23]
0x1da51e4: mov      x22, x0
0x1da51e8: bl       #0x2e5f474 | System.Collections.Generic.List<object>$$.ctor
0x1da51ec: str      x22, [x19, #0x48]
0x1da51f0: ldr      x0, [x29]
0x1da51f4: ldr      w8, [x0, #0xe0]
0x1da51f8: cbnz     w8, #0x1da5200
0x1da51fc: bl       #0x1b646a4 | 
0x1da5200: ldr      x0, [x21]
0x1da5204: mov      w1, #-1
0x1da5208: mov      x2, xzr
0x1da520c: bl       #0x1cc5ccc | SaveManagement$$LoadInt
0x1da5210: str      w0, [x26, #0x18]
0x1da5214: ldr      x8, [x19, #0x40]
0x1da5218: adrp     x21, #0x4475000
0x1da521c: cbz      x8, #0x1da6094
0x1da5220: adrp     x20, #0x4187000
0x1da5224: adrp     x27, #0x4187000
0x1da5228: ldr      x20, [x20, #0xc48]
0x1da522c: ldr      x27, [x27, #0x6f8]
0x1da5230: mov      w22, wzr
0x1da5234: mov      w23, #1
0x1da5238: ldr      x9, [x8, #0x18]
0x1da523c: cbz      x9, #0x1da6094
0x1da5240: ldr      x9, [x9, #0x30]
0x1da5244: cbz      x9, #0x1da6094
0x1da5248: ldr      w9, [x9, #0x18]
0x1da524c: cmp      w22, w9
0x1da5250: b.ge     #0x1da5c38
0x1da5254: ldrb     w9, [x21, #0x8c0]
0x1da5258: cbnz     w9, #0x1da5270
0x1da525c: mov      x0, x25
0x1da5260: bl       #0x1b64570 | 
0x1da5264: strb     w23, [x21, #0x8c0]
0x1da5268: ldr      x8, [x19, #0x40]
0x1da526c: cbz      x8, #0x1da6094
0x1da5270: ldr      x8, [x8, #0x18]
0x1da5274: cbz      x8, #0x1da6094
0x1da5278: ldr      x0, [x8, #0x30]
0x1da527c: cbz      x0, #0x1da6094
0x1da5280: ldr      x8, [x25]
0x1da5284: ldr      x2, [x20]
0x1da5288: mov      w1, w22
0x1da528c: ldr      x8, [x8, #0xb8]
0x1da5290: ldr      x24, [x8]
0x1da5294: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1da5298: cbz      x0, #0x1da6094
0x1da529c: cbz      x24, #0x1da6094
0x1da52a0: ldr      x1, [x0, #0x10]
0x1da52a4: add      x2, sp, #0x1c
0x1da52a8: add      x3, sp, #0x10
0x1da52ac: add      x4, sp, #0xc
0x1da52b0: mov      x5, sp
0x1da52b4: mov      x0, x24
0x1da52b8: mov      x6, xzr
0x1da52bc: bl       #0x1cbcc74 | GameInformation$$CheckSongUnlock
0x1da52c0: ldrb     w8, [sp, #0xc]
0x1da52c4: cbz      w8, #0x1da5c28
0x1da52c8: ldrb     w8, [x21, #0x8c0]
0x1da52cc: cbnz     w8, #0x1da52dc
0x1da52d0: mov      x0, x25
0x1da52d4: bl       #0x1b64570 | 
0x1da52d8: strb     w23, [x21, #0x8c0]
0x1da52dc: ldr      x8, [x19, #0x40]
0x1da52e0: cbz      x8, #0x1da6094
0x1da52e4: ldr      x8, [x8, #0x18]
0x1da52e8: cbz      x8, #0x1da6094
0x1da52ec: ldr      x0, [x8, #0x30]
0x1da52f0: cbz      x0, #0x1da6094
0x1da52f4: ldr      x8, [x25]
0x1da52f8: ldr      x2, [x20]
0x1da52fc: mov      w1, w22
0x1da5300: ldr      x8, [x8, #0xb8]
0x1da5304: ldr      x24, [x8]
0x1da5308: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1da530c: cbz      x0, #0x1da6094
0x1da5310: cbz      x24, #0x1da6094
0x1da5314: ldr      x1, [x0, #0x10]
0x1da5318: mov      x0, x24
0x1da531c: mov      x2, xzr
0x1da5320: bl       #0x1ca8974 | GameInformation$$GetSongInformation
0x1da5324: str      x0, [sp, #0x28]
0x1da5328: add      x1, sp, #0x20
0x1da532c: mov      x0, x26
0x1da5330: mov      x2, xzr
0x1da5334: bl       #0x1dad78c | SongSelector.<>c__DisplayClass149_0$$<Start>g__IsCnLimitedSongDisplayable|2
0x1da5338: tbz      w0, #0, #0x1da5c28
0x1da533c: adrp     x8, #0x4189000
0x1da5340: mov      x20, x27
0x1da5344: mov      x23, x26
0x1da5348: ldr      x25, [sp, #0x28]
0x1da534c: ldr      w26, [sp, #0x1c]
0x1da5350: ldr      x27, [sp]
0x1da5354: ldr      x28, [sp, #0x10]
0x1da5358: ldr      x8, [x8, #0xb10]
0x1da535c: ldr      x0, [x8]
0x1da5360: bl       #0x1b647b8 | 
0x1da5364: mov      x1, x25
0x1da5368: mov      w2, w26
0x1da536c: mov      x3, x27
0x1da5370: mov      x4, x28
0x1da5374: mov      x5, xzr
0x1da5378: mov      x24, x0
0x1da537c: bl       #0x1db0af4 | SongSelectorItem$$.ctor
0x1da5380: cbz      x24, #0x1da6094
0x1da5384: str      w22, [x24, #0x28]
0x1da5388: ldr      x0, [x19, #0x1d0]
0x1da538c: cbz      x0, #0x1da6094
0x1da5390: ldr      x25, [x19, #0x240]
0x1da5394: mov      x1, xzr
0x1da5398: mov      x27, x20
0x1da539c: bl       #0x3c60614 | UnityEngine.GameObject$$get_transform
0x1da53a0: adrp     x8, #0x4185000
0x1da53a4: ldr      x8, [x8, #0x208]
0x1da53a8: mov      x26, x0
0x1da53ac: ldr      x8, [x8]
0x1da53b0: ldr      w9, [x8, #0xe0]
0x1da53b4: cbnz     w9, #0x1da53c0
0x1da53b8: mov      x0, x8
0x1da53bc: bl       #0x1b646a4 | 
0x1da53c0: ldr      x2, [x27]
0x1da53c4: mov      x0, x25
0x1da53c8: mov      x1, x26
0x1da53cc: bl       #0x1fd4f70 | UnityEngine.Object$$Instantiate<object>
0x1da53d0: cbz      x0, #0x1da6094
0x1da53d4: adrp     x8, #0x418e000
0x1da53d8: ldr      x8, [x8, #0xf80]
0x1da53dc: ldr      x1, [x8]
0x1da53e0: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1da53e4: str      x0, [x24, #0x68]
0x1da53e8: ldr      x0, [x19, #0x1d8]
0x1da53ec: cbz      x0, #0x1da6094
0x1da53f0: ldr      x25, [x19, #0x240]
0x1da53f4: mov      x1, xzr
0x1da53f8: bl       #0x3c60614 | UnityEngine.GameObject$$get_transform
0x1da53fc: ldr      x2, [x27]
0x1da5400: mov      x1, x0
0x1da5404: mov      x0, x25
0x1da5408: bl       #0x1fd4f70 | UnityEngine.Object$$Instantiate<object>
0x1da540c: cbz      x0, #0x1da6094
0x1da5410: adrp     x8, #0x418e000
0x1da5414: ldr      x8, [x8, #0xf80]
0x1da5418: ldr      x1, [x8]
0x1da541c: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1da5420: str      x0, [x24, #0x70]
0x1da5424: ldr      x0, [x19, #0x1e0]
0x1da5428: cbz      x0, #0x1da6094
0x1da542c: ldr      x25, [x19, #0x258]
0x1da5430: mov      x1, xzr
0x1da5434: bl       #0x3c60614 | UnityEngine.GameObject$$get_transform
0x1da5438: ldr      x2, [x27]
0x1da543c: mov      x1, x0
0x1da5440: mov      x0, x25
0x1da5444: bl       #0x1fd4f70 | UnityEngine.Object$$Instantiate<object>
0x1da5448: str      x0, [x24, #0x90]
0x1da544c: ldr      x0, [x19, #0x1c0]
0x1da5450: cbz      x0, #0x1da6094
0x1da5454: ldr      x25, [x19, #0x248]
0x1da5458: mov      x1, xzr
0x1da545c: bl       #0x3c60614 | UnityEngine.GameObject$$get_transform
0x1da5460: ldr      x2, [x27]
0x1da5464: mov      x1, x0
0x1da5468: mov      x0, x25
0x1da546c: bl       #0x1fd4f70 | UnityEngine.Object$$Instantiate<object>
0x1da5470: cbz      x0, #0x1da6094
0x1da5474: adrp     x8, #0x4189000
0x1da5478: ldr      x8, [x8, #0x50]
0x1da547c: ldr      x1, [x8]
0x1da5480: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1da5484: str      x0, [x24, #0x88]
0x1da5488: adrp     x8, #0x418e000
0x1da548c: ldr      x8, [x8, #0xf90]
0x1da5490: str      x24, [sp, #0x20]
0x1da5494: ldr      x0, [x8]
0x1da5498: ldr      w8, [x0, #0xe0]
0x1da549c: cbnz     w8, #0x1da54a4
0x1da54a0: bl       #0x1b646a4 | 
0x1da54a4: add      x0, sp, #0x20
0x1da54a8: bl       #0x1da6258 | SongSelector$$<Start>g__HandleStrangeSongName|149_1
0x1da54ac: ldr      x0, [x19, #0x50]
0x1da54b0: mov      x1, xzr
0x1da54b4: mov      x2, xzr
0x1da54b8: bl       #0x3c619b8 | UnityEngine.Object$$op_Equality
0x1da54bc: tbz      w0, #0, #0x1da5990
0x1da54c0: ldr      x8, [sp, #0x28]
0x1da54c4: cbz      x8, #0x1da6094
0x1da54c8: ldr      x0, [x8, #0x10]
0x1da54cc: adrp     x8, #0x418d000
0x1da54d0: ldr      x8, [x8, #0xfc0] | 0x418dfc0 'Random.SobremSilentroom.0'
0x1da54d4: mov      x2, xzr
0x1da54d8: mov      x21, x29
0x1da54dc: ldr      x1, [x8]
0x1da54e0: bl       #0x32fac7c | System.String$$op_Equality
0x1da54e4: tbz      w0, #0, #0x1da55fc
0x1da54e8: ldr      x8, [sp, #0x20]
0x1da54ec: cbz      x8, #0x1da6094
0x1da54f0: ldr      x0, [x8, #0x88]
0x1da54f4: cbz      x0, #0x1da6094
0x1da54f8: ldr      x24, [x19, #0x2b8]
0x1da54fc: mov      x1, xzr
0x1da5500: mov      x26, x20
0x1da5504: bl       #0x3c5d744 | UnityEngine.Component$$get_transform
0x1da5508: adrp     x8, #0x4185000
0x1da550c: ldr      x8, [x8, #0x208]
0x1da5510: mov      x25, x0
0x1da5514: ldr      x8, [x8]
0x1da5518: ldr      w9, [x8, #0xe0]
0x1da551c: cbnz     w9, #0x1da5528
0x1da5520: mov      x0, x8
0x1da5524: bl       #0x1b646a4 | 
0x1da5528: ldr      x2, [x26]
0x1da552c: mov      x0, x24
0x1da5530: mov      x1, x25
0x1da5534: bl       #0x1fd4f70 | UnityEngine.Object$$Instantiate<object>
0x1da5538: cbz      x0, #0x1da6094
0x1da553c: adrp     x8, #0x418e000
0x1da5540: ldr      x8, [x8, #0xf88]
0x1da5544: ldr      x1, [x8]
0x1da5548: bl       #0x1f92828 | UnityEngine.GameObject$$GetComponentsInChildren<object>
0x1da554c: cbz      x0, #0x1da6094
0x1da5550: ldr      w8, [x0, #0x18]
0x1da5554: mov      x24, x0
0x1da5558: cmp      w8, #1
0x1da555c: b.lt     #0x1da55fc
0x1da5560: mov      x26, xzr
0x1da5564: add      x28, x24, #0x20
0x1da5568: adrp     x8, #0x418e000
0x1da556c: ldr      x8, [x8, #0xfa0]
0x1da5570: ldr      x0, [x8]
0x1da5574: bl       #0x1b647b8 | 
0x1da5578: mov      x1, xzr
0x1da557c: mov      x25, x0
0x1da5580: bl       #0x1dae23c | SongSelector.<>c__DisplayClass149_2$$.ctor
0x1da5584: cbz      x25, #0x1da6094
0x1da5588: add      x29, x26, #1
0x1da558c: str      x23, [x25, #0x18]
0x1da5590: str      w29, [x25, #0x10]
0x1da5594: ldr      w8, [x24, #0x18]
0x1da5598: cmp      x26, x8
0x1da559c: b.hs     #0x1da6098
0x1da55a0: ldr      x8, [x28, x26, lsl #3]
0x1da55a4: cbz      x8, #0x1da6094
0x1da55a8: ldr      x26, [x8, #0x100]
0x1da55ac: adrp     x8, #0x4189000
0x1da55b0: ldr      x8, [x8, #0xb78]
0x1da55b4: ldr      x0, [x8]
0x1da55b8: bl       #0x1b647b8 | 
0x1da55bc: adrp     x8, #0x418e000
0x1da55c0: ldr      x8, [x8, #0xf98]
0x1da55c4: mov      x1, x25
0x1da55c8: mov      x3, xzr
0x1da55cc: mov      x27, x0
0x1da55d0: ldr      x2, [x8]
0x1da55d4: bl       #0x3c74264 | UnityEngine.Events.UnityAction$$.ctor
0x1da55d8: cbz      x26, #0x1da6094
0x1da55dc: mov      x0, x26
0x1da55e0: mov      x1, x27
0x1da55e4: mov      x2, xzr
0x1da55e8: bl       #0x3c74308 | UnityEngine.Events.UnityEvent$$AddListener
0x1da55ec: ldrsw    x8, [x24, #0x18]
0x1da55f0: mov      x26, x29
0x1da55f4: cmp      x29, x8
0x1da55f8: b.lt     #0x1da5568
0x1da55fc: ldr      x8, [sp, #0x28]
0x1da5600: cbz      x8, #0x1da6094
0x1da5604: ldr      x0, [x8, #0x10]
0x1da5608: adrp     x8, #0x418e000
0x1da560c: ldr      x8, [x8, #0xff8] | 0x418eff8 'microwav.dandeless.0'
0x1da5610: mov      x2, xzr
0x1da5614: ldr      x1, [x8]
0x1da5618: bl       #0x32fac7c | System.String$$op_Equality
0x1da561c: mov      x29, x21
0x1da5620: adrp     x21, #0x4475000
0x1da5624: tbz      w0, #0, #0x1da57cc
0x1da5628: ldr      x0, [x29]
0x1da562c: ldr      w8, [x0, #0xe0]
0x1da5630: cbnz     w8, #0x1da5638
0x1da5634: bl       #0x1b646a4 | 
0x1da5638: adrp     x8, #0x418b000
0x1da563c: ldr      x8, [x8, #0xae8] | 0x418bae8 'chapter8UnlockBegin'
0x1da5640: mov      w1, wzr
0x1da5644: mov      x2, xzr
0x1da5648: ldr      x0, [x8]
0x1da564c: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1da5650: tbz      w0, #0, #0x1da57cc
0x1da5654: ldr      x0, [x29]
0x1da5658: ldr      w8, [x0, #0xe0]
0x1da565c: cbnz     w8, #0x1da5664
0x1da5660: bl       #0x1b646a4 | 
0x1da5664: adrp     x8, #0x418d000
0x1da5668: ldr      x8, [x8, #0xfb0] | 0x418dfb0 'C8CraveWaveUnlocked'
0x1da566c: mov      w1, wzr
0x1da5670: mov      x2, xzr
0x1da5674: ldr      x0, [x8]
0x1da5678: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1da567c: tbnz     w0, #0, #0x1da57cc
0x1da5680: adrp     x8, #0x4189000
0x1da5684: ldr      x24, [x19, #0x358]
0x1da5688: ldr      x8, [x8, #0x940] | 0x4189940 'CraveWave.LandRoot.0'
0x1da568c: mov      x2, xzr
0x1da5690: ldr      x0, [x8]
0x1da5694: adrp     x8, #0x4185000
0x1da5698: ldr      x8, [x8, #0x2d8] | 0x41852d8 ''
0x1da569c: ldr      x1, [x8]
0x1da56a0: bl       #0x1dadc7c | IdBuilder$$BuildCoverImageId
0x1da56a4: adrp     x8, #0x4189000
0x1da56a8: ldr      x8, [x8, #0xa48]
0x1da56ac: mov      x25, x0
0x1da56b0: ldr      x8, [x8]
0x1da56b4: ldr      w9, [x8, #0xe0]
0x1da56b8: cbnz     w9, #0x1da56c4
0x1da56bc: mov      x0, x8
0x1da56c0: bl       #0x1b646a4 | 
0x1da56c4: adrp     x8, #0x418b000
0x1da56c8: ldr      x8, [x8, #0xa88]
0x1da56cc: mov      x0, x25
0x1da56d0: ldr      x1, [x8]
0x1da56d4: bl       #0x1eebfcc | AssetStore$$Get<object>
0x1da56d8: cbz      x24, #0x1da6094
0x1da56dc: adrp     x9, #0x418b000
0x1da56e0: ldr      w10, [x24, #0x1c]
0x1da56e4: ldr      x8, [x24, #0x10]
0x1da56e8: ldr      x9, [x9, #0xab8]
0x1da56ec: add      w10, w10, #1
0x1da56f0: ldr      x9, [x9]
0x1da56f4: str      w10, [x24, #0x1c]
0x1da56f8: cbz      x8, #0x1da6094
0x1da56fc: ldrsw    x10, [x24, #0x18]
0x1da5700: ldr      w11, [x8, #0x18]
0x1da5704: mov      x1, x0
0x1da5708: cmp      w10, w11
0x1da570c: b.hs     #0x1da5724
0x1da5710: add      w9, w10, #1
0x1da5714: add      x8, x8, x10, lsl #3
0x1da5718: str      w9, [x24, #0x18]
0x1da571c: str      x1, [x8, #0x20]
0x1da5720: b        #0x1da5738 | 
0x1da5724: ldr      x8, [x9, #0x20]
0x1da5728: mov      x0, x24
0x1da572c: ldr      x8, [x8, #0xc0]
0x1da5730: ldr      x2, [x8, #0x70]
0x1da5734: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1da5738: adrp     x8, #0x4185000
0x1da573c: adrp     x9, #0x4189000
0x1da5740: ldr      x8, [x8, #0x2d8] | 0x41852d8 ''
0x1da5744: ldr      x24, [x19, #0x358]
0x1da5748: ldr      x9, [x9, #0x940] | 0x4189940 'CraveWave.LandRoot.0'
0x1da574c: mov      x2, xzr
0x1da5750: ldr      x1, [x8]
0x1da5754: ldr      x0, [x9]
0x1da5758: bl       #0x1daddc4 | IdBuilder$$BuildBlurImageId
0x1da575c: adrp     x8, #0x418b000
0x1da5760: ldr      x8, [x8, #0xa88]
0x1da5764: ldr      x1, [x8]
0x1da5768: bl       #0x1eebfcc | AssetStore$$Get<object>
0x1da576c: cbz      x24, #0x1da6094
0x1da5770: adrp     x9, #0x418b000
0x1da5774: ldr      w10, [x24, #0x1c]
0x1da5778: ldr      x8, [x24, #0x10]
0x1da577c: ldr      x9, [x9, #0xab8]
0x1da5780: add      w10, w10, #1
0x1da5784: ldr      x9, [x9]
0x1da5788: str      w10, [x24, #0x1c]
0x1da578c: cbz      x8, #0x1da6094
0x1da5790: ldrsw    x10, [x24, #0x18]
0x1da5794: ldr      w11, [x8, #0x18]
0x1da5798: mov      x1, x0
0x1da579c: cmp      w10, w11
0x1da57a0: b.hs     #0x1da57b8
0x1da57a4: add      w9, w10, #1
0x1da57a8: add      x8, x8, x10, lsl #3
0x1da57ac: str      w9, [x24, #0x18]
0x1da57b0: str      x1, [x8, #0x20]
0x1da57b4: b        #0x1da57cc | 
0x1da57b8: ldr      x8, [x9, #0x20]
0x1da57bc: mov      x0, x24
0x1da57c0: ldr      x8, [x8, #0xc0]
0x1da57c4: ldr      x2, [x8, #0x70]
0x1da57c8: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1da57cc: ldr      x8, [sp, #0x28]
0x1da57d0: cbz      x8, #0x1da6094
0x1da57d4: ldr      x0, [x8, #0x10]
0x1da57d8: adrp     x8, #0x418e000
0x1da57dc: ldr      x8, [x8, #0xff0] | 0x418eff0 'Cereris.SunsetRayNceS.0'
0x1da57e0: mov      x2, xzr
0x1da57e4: mov      x27, x20
0x1da57e8: ldr      x1, [x8]
0x1da57ec: bl       #0x32fac7c | System.String$$op_Equality
0x1da57f0: tbz      w0, #0, #0x1da5990
0x1da57f4: ldr      x0, [x29]
0x1da57f8: ldr      w8, [x0, #0xe0]
0x1da57fc: cbnz     w8, #0x1da5804
0x1da5800: bl       #0x1b646a4 | 
0x1da5804: adrp     x8, #0x418d000
0x1da5808: ldr      x8, [x8, #0xfb0] | 0x418dfb0 'C8CraveWaveUnlocked'
0x1da580c: mov      w1, wzr
0x1da5810: mov      x2, xzr
0x1da5814: ldr      x0, [x8]
0x1da5818: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1da581c: tbz      w0, #0, #0x1da5990
0x1da5820: ldr      x0, [x29]
0x1da5824: ldr      w8, [x0, #0xe0]
0x1da5828: cbnz     w8, #0x1da5830
0x1da582c: bl       #0x1b646a4 | 
0x1da5830: adrp     x8, #0x4189000
0x1da5834: ldr      x8, [x8, #0x160] | 0x4189160 'C8TheChariotREVIIVALUnlocked'
0x1da5838: mov      w1, wzr
0x1da583c: mov      x2, xzr
0x1da5840: ldr      x0, [x8]
0x1da5844: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1da5848: tbnz     w0, #0, #0x1da5990
0x1da584c: adrp     x20, #0x4189000
0x1da5850: ldr      x24, [x19, #0x358]
0x1da5854: ldr      x20, [x20, #0x938] | 0x4189938 'TheChariotREVIIVAL.Attoclef.0'
0x1da5858: adrp     x8, #0x4185000
0x1da585c: mov      x2, xzr
0x1da5860: ldr      x0, [x20]
0x1da5864: ldr      x8, [x8, #0x2d8] | 0x41852d8 ''
0x1da5868: ldr      x1, [x8]
0x1da586c: bl       #0x1dadc7c | IdBuilder$$BuildCoverImageId
0x1da5870: adrp     x8, #0x4189000
0x1da5874: ldr      x8, [x8, #0xa48]
0x1da5878: mov      x25, x0
0x1da587c: ldr      x8, [x8]
0x1da5880: ldr      w9, [x8, #0xe0]
0x1da5884: cbnz     w9, #0x1da5890
0x1da5888: mov      x0, x8
0x1da588c: bl       #0x1b646a4 | 
0x1da5890: adrp     x8, #0x418b000
0x1da5894: ldr      x8, [x8, #0xa88]
0x1da5898: mov      x0, x25
0x1da589c: ldr      x1, [x8]
0x1da58a0: bl       #0x1eebfcc | AssetStore$$Get<object>
0x1da58a4: cbz      x24, #0x1da6094
0x1da58a8: adrp     x9, #0x418b000
0x1da58ac: ldr      w10, [x24, #0x1c]
0x1da58b0: ldr      x8, [x24, #0x10]
0x1da58b4: ldr      x9, [x9, #0xab8]
0x1da58b8: add      w10, w10, #1
0x1da58bc: ldr      x9, [x9]
0x1da58c0: str      w10, [x24, #0x1c]
0x1da58c4: cbz      x8, #0x1da6094
0x1da58c8: ldrsw    x10, [x24, #0x18]
0x1da58cc: ldr      w11, [x8, #0x18]
0x1da58d0: mov      x1, x0
0x1da58d4: cmp      w10, w11
0x1da58d8: b.hs     #0x1da58f0
0x1da58dc: add      w9, w10, #1
0x1da58e0: add      x8, x8, x10, lsl #3
0x1da58e4: str      w9, [x24, #0x18]
0x1da58e8: str      x1, [x8, #0x20]
0x1da58ec: b        #0x1da5904 | 
0x1da58f0: ldr      x8, [x9, #0x20]
0x1da58f4: mov      x0, x24
0x1da58f8: ldr      x8, [x8, #0xc0]
0x1da58fc: ldr      x2, [x8, #0x70]
0x1da5900: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1da5904: adrp     x8, #0x4185000
0x1da5908: ldr      x8, [x8, #0x2d8] | 0x41852d8 ''
0x1da590c: ldr      x0, [x20]
0x1da5910: ldr      x24, [x19, #0x358]
0x1da5914: mov      x2, xzr
0x1da5918: ldr      x1, [x8]
0x1da591c: bl       #0x1daddc4 | IdBuilder$$BuildBlurImageId
0x1da5920: adrp     x8, #0x418b000
0x1da5924: ldr      x8, [x8, #0xa88]
0x1da5928: ldr      x1, [x8]
0x1da592c: bl       #0x1eebfcc | AssetStore$$Get<object>
0x1da5930: cbz      x24, #0x1da6094
0x1da5934: adrp     x9, #0x418b000
0x1da5938: ldr      w10, [x24, #0x1c]
0x1da593c: ldr      x8, [x24, #0x10]
0x1da5940: ldr      x9, [x9, #0xab8]
0x1da5944: add      w10, w10, #1
0x1da5948: ldr      x9, [x9]
0x1da594c: str      w10, [x24, #0x1c]
0x1da5950: cbz      x8, #0x1da6094
0x1da5954: ldrsw    x10, [x24, #0x18]
0x1da5958: ldr      w11, [x8, #0x18]
0x1da595c: mov      x1, x0
0x1da5960: cmp      w10, w11
0x1da5964: b.hs     #0x1da597c
0x1da5968: add      w9, w10, #1
0x1da596c: add      x8, x8, x10, lsl #3
0x1da5970: str      w9, [x24, #0x18]
0x1da5974: str      x1, [x8, #0x20]
0x1da5978: b        #0x1da5990 | 
0x1da597c: ldr      x8, [x9, #0x20]
0x1da5980: mov      x0, x24
0x1da5984: ldr      x8, [x8, #0xc0]
0x1da5988: ldr      x2, [x8, #0x70]
0x1da598c: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1da5990: ldr      x26, [sp, #0x20]
0x1da5994: cbz      x26, #0x1da6094
0x1da5998: ldrb     w8, [x26, #0x18]
0x1da599c: cbnz     w8, #0x1da5aa4
0x1da59a0: ldr      x0, [x26, #0x88]
0x1da59a4: cbz      x0, #0x1da6094
0x1da59a8: ldr      x24, [x19, #0x268]
0x1da59ac: mov      x1, xzr
0x1da59b0: bl       #0x3c5d744 | UnityEngine.Component$$get_transform
0x1da59b4: adrp     x8, #0x4185000
0x1da59b8: ldr      x8, [x8, #0x208]
0x1da59bc: mov      x25, x0
0x1da59c0: ldr      x8, [x8]
0x1da59c4: ldr      w9, [x8, #0xe0]
0x1da59c8: cbnz     w9, #0x1da59d4
0x1da59cc: mov      x0, x8
0x1da59d0: bl       #0x1b646a4 | 
0x1da59d4: ldr      x2, [x27]
0x1da59d8: mov      x0, x24
0x1da59dc: mov      x1, x25
0x1da59e0: bl       #0x1fd4f70 | UnityEngine.Object$$Instantiate<object>
0x1da59e4: str      x0, [x26, #0xa0]
0x1da59e8: ldr      x8, [sp, #0x20]
0x1da59ec: cbz      x8, #0x1da6094
0x1da59f0: ldr      x8, [x8, #0x10]
0x1da59f4: cbz      x8, #0x1da6094
0x1da59f8: ldr      x0, [x8, #0x10]
0x1da59fc: adrp     x8, #0x418d000
0x1da5a00: ldr      x8, [x8, #0xf58] | 0x418df58 'Spasmodic.姜米條颶風元力上人.0'
0x1da5a04: mov      x2, xzr
0x1da5a08: ldr      x1, [x8]
0x1da5a0c: bl       #0x32fac7c | System.String$$op_Equality
0x1da5a10: tbz      w0, #0, #0x1da5aa4
0x1da5a14: ldr      x0, [sp, #0x20]
0x1da5a18: cbz      x0, #0x1da6094
0x1da5a1c: mov      x1, xzr
0x1da5a20: bl       #0x1db1dd0 | SongSelectorItem$$HideInfo
0x1da5a24: adrp     x20, #0x418e000
0x1da5a28: ldr      x24, [sp, #0x20]
0x1da5a2c: ldr      x20, [x20, #0xfe8] | 0x418efe8 'MainStory5Locked'
0x1da5a30: mov      x1, xzr
0x1da5a34: ldr      x0, [x20]
0x1da5a38: bl       #0x1db3150 | IdBuilder$$BuildBackgroundImageId
0x1da5a3c: cbz      x24, #0x1da6094
0x1da5a40: str      x0, [x24, #0x58]
0x1da5a44: ldr      x0, [x20]
0x1da5a48: ldr      x24, [sp, #0x20]
0x1da5a4c: mov      x1, xzr
0x1da5a50: bl       #0x1db30e4 | IdBuilder$$BuildBlurBackgroundImageId
0x1da5a54: cbz      x24, #0x1da6094
0x1da5a58: str      x0, [x24, #0x60]
0x1da5a5c: ldr      x8, [sp, #0x20]
0x1da5a60: cbz      x8, #0x1da6094
0x1da5a64: ldr      x0, [x8, #0x88]
0x1da5a68: cbz      x0, #0x1da6094
0x1da5a6c: mov      w1, wzr
0x1da5a70: mov      x2, xzr
0x1da5a74: bl       #0x3c6e5e8 | UnityEngine.Transform$$GetChild
0x1da5a78: cbz      x0, #0x1da6094
0x1da5a7c: adrp     x8, #0x4187000
0x1da5a80: ldr      x8, [x8, #0x660]
0x1da5a84: ldr      x1, [x8]
0x1da5a88: bl       #0x1f49fe4 | UnityEngine.Component$$GetComponent<object>
0x1da5a8c: cbz      x0, #0x1da6094
0x1da5a90: ldr      x8, [x0]
0x1da5a94: ldr      x1, [x19, #0x2a8]
0x1da5a98: ldr      x9, [x8, #0x348]
0x1da5a9c: ldr      x2, [x8, #0x350]
0x1da5aa0: blr      x9
0x1da5aa4: ldp      x2, x1, [sp, #0x20]
0x1da5aa8: mov      x0, x23
0x1da5aac: mov      x3, xzr
0x1da5ab0: mov      x26, x23
0x1da5ab4: bl       #0x1dadf0c | SongSelector.<>c__DisplayClass149_0$$<Start>g__InstantiateBanner|0
0x1da5ab8: adrp     x8, #0x4475000
0x1da5abc: ldrb     w8, [x8, #0x95e]
0x1da5ac0: mov      w23, #1
0x1da5ac4: cbnz     w8, #0x1da5adc
0x1da5ac8: adrp     x0, #0x4189000
0x1da5acc: ldr      x0, [x0, #0xf8]
0x1da5ad0: bl       #0x1b64570 | 
0x1da5ad4: adrp     x8, #0x4475000
0x1da5ad8: strb     w23, [x8, #0x95e]
0x1da5adc: adrp     x8, #0x4189000
0x1da5ae0: ldr      x8, [x8, #0xf8]
0x1da5ae4: adrp     x25, #0x4186000
0x1da5ae8: ldr      x8, [x8]
0x1da5aec: ldr      x8, [x8, #0xb8]
0x1da5af0: ldrb     w8, [x8]
0x1da5af4: ldr      x25, [x25, #0xef8]
0x1da5af8: cbz      w8, #0x1da5b0c
0x1da5afc: mov      x0, x19
0x1da5b00: bl       #0x1da62a8 | SongSelector$$ChangeHouyouChart
0x1da5b04: mov      x0, x19
0x1da5b08: bl       #0x1da65d4 | SongSelector$$EnterClockParadoxEvent
0x1da5b0c: adrp     x20, #0x4187000
0x1da5b10: ldr      x0, [sp, #0x20]
0x1da5b14: ldr      x20, [x20, #0xc48]
0x1da5b18: cbz      x0, #0x1da6094
0x1da5b1c: mov      x1, x19
0x1da5b20: mov      x2, xzr
0x1da5b24: bl       #0x1db12c0 | SongSelectorItem$$Init
0x1da5b28: ldr      x8, [sp, #0x20]
0x1da5b2c: cbz      x8, #0x1da6094
0x1da5b30: ldr      x9, [sp, #0x28]
0x1da5b34: cbz      x9, #0x1da6094
0x1da5b38: ldr      x0, [x8, #0x80]
0x1da5b3c: ldr      x1, [x9, #0x10]
0x1da5b40: mov      x2, xzr
0x1da5b44: bl       #0x1d0d458 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ApplyIllustrationMirror
0x1da5b48: ldr      x8, [sp, #0x20]
0x1da5b4c: cbz      x8, #0x1da6094
0x1da5b50: ldr      x9, [sp, #0x28]
0x1da5b54: cbz      x9, #0x1da6094
0x1da5b58: ldr      x0, [x8, #0x98]
0x1da5b5c: ldr      x1, [x9, #0x10]
0x1da5b60: mov      x2, xzr
0x1da5b64: bl       #0x1d0d458 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ApplyIllustrationMirror
0x1da5b68: ldr      x8, [sp, #0x20]
0x1da5b6c: cbz      x8, #0x1da6094
0x1da5b70: ldr      x8, [x8, #0x68]
0x1da5b74: cbz      x8, #0x1da6094
0x1da5b78: ldr      x9, [sp, #0x28]
0x1da5b7c: cbz      x9, #0x1da6094
0x1da5b80: ldr      x0, [x8, #0x20]
0x1da5b84: ldr      x1, [x9, #0x10]
0x1da5b88: mov      x2, xzr
0x1da5b8c: bl       #0x1d0d63c | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ApplyTextMirror
0x1da5b90: ldr      x8, [sp, #0x20]
0x1da5b94: cbz      x8, #0x1da6094
0x1da5b98: ldr      x8, [x8, #0x70]
0x1da5b9c: cbz      x8, #0x1da6094
0x1da5ba0: ldr      x9, [sp, #0x28]
0x1da5ba4: cbz      x9, #0x1da6094
0x1da5ba8: ldr      x0, [x8, #0x20]
0x1da5bac: ldr      x1, [x9, #0x10]
0x1da5bb0: mov      x2, xzr
0x1da5bb4: bl       #0x1d0d63c | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ApplyTextMirror
0x1da5bb8: add      x1, sp, #0x20
0x1da5bbc: mov      x0, x26
0x1da5bc0: mov      x2, xzr
0x1da5bc4: bl       #0x1dad7c4 | SongSelector.<>c__DisplayClass149_0$$<Start>g__PreloadDifferentCovers|3
0x1da5bc8: ldr      x0, [x19, #0x48]
0x1da5bcc: cbz      x0, #0x1da6094
0x1da5bd0: adrp     x9, #0x418a000
0x1da5bd4: ldr      x1, [sp, #0x20]
0x1da5bd8: ldr      w10, [x0, #0x1c]
0x1da5bdc: ldr      x8, [x0, #0x10]
0x1da5be0: ldr      x9, [x9, #0x4b8]
0x1da5be4: add      w10, w10, #1
0x1da5be8: ldr      x9, [x9]
0x1da5bec: str      w10, [x0, #0x1c]
0x1da5bf0: cbz      x8, #0x1da6094
0x1da5bf4: ldrsw    x10, [x0, #0x18]
0x1da5bf8: ldr      w11, [x8, #0x18]
0x1da5bfc: cmp      w10, w11
0x1da5c00: b.hs     #0x1da5c18
0x1da5c04: add      w9, w10, #1
0x1da5c08: add      x8, x8, x10, lsl #3
0x1da5c0c: str      w9, [x0, #0x18]
0x1da5c10: str      x1, [x8, #0x20]
0x1da5c14: b        #0x1da5c28 | 
0x1da5c18: ldr      x8, [x9, #0x20]
0x1da5c1c: ldr      x8, [x8, #0xc0]
0x1da5c20: ldr      x2, [x8, #0x70]
0x1da5c24: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1da5c28: ldr      x8, [x19, #0x40]
0x1da5c2c: add      w22, w22, #1
0x1da5c30: cbnz     x8, #0x1da5238
0x1da5c34: b        #0x1da6094 | 
0x1da5c38: ldr      x8, [x25]
0x1da5c3c: mov      x2, xzr
0x1da5c40: ldr      x8, [x8, #0xb8]
0x1da5c44: ldr      x1, [x8, #0x28]
0x1da5c48: adrp     x8, #0x418e000
0x1da5c4c: ldr      x8, [x8, #0xf60] | 0x418ef60 'NowSong'
0x1da5c50: ldr      x0, [x8]
0x1da5c54: bl       #0x32fce8c | System.String$$Concat
0x1da5c58: ldr      x8, [x29]
0x1da5c5c: mov      x22, x0
0x1da5c60: ldr      w9, [x8, #0xe0]
0x1da5c64: cbnz     w9, #0x1da5c70
0x1da5c68: mov      x0, x8
0x1da5c6c: bl       #0x1b646a4 | 
0x1da5c70: mov      x0, x22
0x1da5c74: mov      w1, wzr
0x1da5c78: mov      x2, xzr
0x1da5c7c: bl       #0x1cc5ccc | SaveManagement$$LoadInt
0x1da5c80: ldr      x8, [x19, #0x48]
0x1da5c84: str      w0, [x19, #0x5c]
0x1da5c88: cbz      x8, #0x1da6094
0x1da5c8c: ldr      w8, [x8, #0x18]
0x1da5c90: mov      w1, wzr
0x1da5c94: mov      x3, xzr
0x1da5c98: sub      w2, w8, #1
0x1da5c9c: bl       #0x1cb7ed4 | Extensions$$Clamp
0x1da5ca0: str      w0, [x19, #0x5c]
0x1da5ca4: scvtf    s0, w0
0x1da5ca8: mov      w1, #1
0x1da5cac: mov      x0, x19
0x1da5cb0: str      s0, [x19, #0x58]
0x1da5cb4: bl       #0x1da689c | SongSelector$$SortSong
0x1da5cb8: ldr      x8, [x25]
0x1da5cbc: mov      x2, xzr
0x1da5cc0: ldr      x8, [x8, #0xb8]
0x1da5cc4: ldr      x1, [x8, #0x28]
0x1da5cc8: adrp     x8, #0x418d000
0x1da5ccc: ldr      x8, [x8, #0xf50] | 0x418df50 'NowSongId'
0x1da5cd0: ldr      x0, [x8]
0x1da5cd4: bl       #0x32fce8c | System.String$$Concat
0x1da5cd8: adrp     x8, #0x4185000
0x1da5cdc: ldr      x8, [x8, #0x2d8] | 0x41852d8 ''
0x1da5ce0: mov      x2, xzr
0x1da5ce4: ldr      x1, [x8]
0x1da5ce8: bl       #0x1cc612c | SaveManagement$$LoadString
0x1da5cec: mov      x1, xzr
0x1da5cf0: mov      x22, x0
0x1da5cf4: bl       #0x3308894 | System.String$$IsNullOrEmpty
0x1da5cf8: tbnz     w0, #0, #0x1da5dd4
0x1da5cfc: ldr      x0, [x19, #0x48]
0x1da5d00: cbz      x0, #0x1da6094
0x1da5d04: adrp     x8, #0x4189000
0x1da5d08: ldr      w1, [x19, #0x5c]
0x1da5d0c: ldr      x8, [x8, #0xaa8]
0x1da5d10: ldr      x2, [x8]
0x1da5d14: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1da5d18: cbz      x0, #0x1da6094
0x1da5d1c: ldr      x8, [x0, #0x10]
0x1da5d20: cbz      x8, #0x1da6094
0x1da5d24: ldr      x0, [x8, #0x10]
0x1da5d28: mov      x1, x22
0x1da5d2c: mov      x2, xzr
0x1da5d30: bl       #0x33082c8 | System.String$$op_Inequality
0x1da5d34: tbz      w0, #0, #0x1da5dd4
0x1da5d38: ldr      x0, [x19, #0x48]
0x1da5d3c: cbz      x0, #0x1da6094
0x1da5d40: mov      w23, wzr
0x1da5d44: ldr      w8, [x0, #0x18]
0x1da5d48: cmp      w23, w8
0x1da5d4c: b.ge     #0x1da5dd4
0x1da5d50: adrp     x8, #0x4189000
0x1da5d54: ldr      x8, [x8, #0xaa8]
0x1da5d58: mov      w1, w23
0x1da5d5c: ldr      x2, [x8]
0x1da5d60: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1da5d64: cbz      x0, #0x1da6094
0x1da5d68: ldr      x8, [x0, #0x10]
0x1da5d6c: cbz      x8, #0x1da6094
0x1da5d70: ldr      x0, [x8, #0x10]
0x1da5d74: mov      x1, x22
0x1da5d78: mov      x2, xzr
0x1da5d7c: bl       #0x32fac7c | System.String$$op_Equality
0x1da5d80: tbnz     w0, #0, #0x1da5d94
0x1da5d84: ldr      x0, [x19, #0x48]
0x1da5d88: add      w23, w23, #1
0x1da5d8c: cbnz     x0, #0x1da5d44
0x1da5d90: b        #0x1da6094 | 
0x1da5d94: scvtf    s0, w23
0x1da5d98: mov      w8, #1
0x1da5d9c: str      w23, [x19, #0x5c]
0x1da5da0: str      s0, [x19, #0x58]
0x1da5da4: strb     w8, [x19, #0xc0]
0x1da5da8: ldr      x0, [x29]
0x1da5dac: ldr      w8, [x0, #0xe0]
0x1da5db0: cbnz     w8, #0x1da5db8
0x1da5db4: bl       #0x1b646a4 | 
0x1da5db8: adrp     x8, #0x4189000
0x1da5dbc: ldr      x8, [x8, #0x600] | 0x4189600 'NowLevel'
0x1da5dc0: mov      w1, wzr
0x1da5dc4: mov      x2, xzr
0x1da5dc8: ldr      x0, [x8]
0x1da5dcc: bl       #0x1cc5ccc | SaveManagement$$LoadInt
0x1da5dd0: str      w0, [x19, #0x60]
0x1da5dd4: mov      x0, x19
0x1da5dd8: bl       #0x1da6fc8 | SongSelector$$SetText
0x1da5ddc: ldr      x0, [x19, #0x48]
0x1da5de0: cbz      x0, #0x1da6094
0x1da5de4: adrp     x8, #0x4189000
0x1da5de8: ldr      w1, [x19, #0x5c]
0x1da5dec: ldr      x8, [x8, #0xaa8]
0x1da5df0: ldr      x2, [x8]
0x1da5df4: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1da5df8: cbz      x0, #0x1da6094
0x1da5dfc: ldr      x8, [x0, #0x10]
0x1da5e00: mov      x22, x0
0x1da5e04: cbz      x8, #0x1da6094
0x1da5e08: ldr      x8, [x8, #0x30]
0x1da5e0c: cbz      x8, #0x1da6094
0x1da5e10: ldrsw    x1, [x19, #0x60]
0x1da5e14: ldr      w9, [x8, #0x18]
0x1da5e18: cmp      w1, w9
0x1da5e1c: b.hs     #0x1da6098
0x1da5e20: ldr      x0, [x19, #0x178]
0x1da5e24: cbz      x0, #0x1da6094
0x1da5e28: add      x8, x8, x1, lsl #2
0x1da5e2c: ldr      s0, [x8, #0x20]
0x1da5e30: ldr      s1, [x22, #0x20]
0x1da5e34: mov      w8, #0x7f800000
0x1da5e38: fmov     s2, w8
0x1da5e3c: mov      w9, #-0x80000000
0x1da5e40: fcvtzs   w8, s0
0x1da5e44: fcmp     s0, s2
0x1da5e48: csel     w2, w9, w8, eq
0x1da5e4c: scvtf    s0, s1
0x1da5e50: bl       #0x1da2750 | LevelSliderController$$JumpToLevel
0x1da5e54: ldr      w1, [x19, #0x60]
0x1da5e58: mov      x0, x19
0x1da5e5c: bl       #0x1da7ac4 | SongSelector$$ReplaceCover
0x1da5e60: ldr      x0, [x19, #0x180]
0x1da5e64: cbz      x0, #0x1da6094
0x1da5e68: mov      x1, x22
0x1da5e6c: bl       #0x1da21a0 | LevelBarController$$UpdateInfoImmediately
0x1da5e70: ldr      x0, [x19, #0x190]
0x1da5e74: cbz      x0, #0x1da6094
0x1da5e78: mov      x1, xzr
0x1da5e7c: bl       #0x3c1faac | UnityEngine.Camera$$get_orthographicSize
0x1da5e80: str      s0, [x19, #0x368]
0x1da5e84: adrp     x8, #0x4188000
0x1da5e88: ldr      x8, [x8, #0xc98] | 0x4188c98 'CheckScreenResolution'
0x1da5e8c: mov      x0, x19
0x1da5e90: mov      x2, xzr
0x1da5e94: ldr      x1, [x8]
0x1da5e98: bl       #0x3c61ec8 | UnityEngine.MonoBehaviour$$StartCoroutine
0x1da5e9c: ldrb     w8, [x21, #0x8c0]
0x1da5ea0: cbnz     w8, #0x1da5eb8
0x1da5ea4: adrp     x0, #0x4186000
0x1da5ea8: ldr      x0, [x0, #0xef8]
0x1da5eac: bl       #0x1b64570 | 
0x1da5eb0: mov      w8, #1
0x1da5eb4: strb     w8, [x21, #0x8c0]
0x1da5eb8: ldr      x8, [x25]
0x1da5ebc: ldr      x8, [x8, #0xb8]
0x1da5ec0: ldr      x8, [x8]
0x1da5ec4: cbz      x8, #0x1da6094
0x1da5ec8: ldr      s0, [x8, #0xd8]
0x1da5ecc: adrp     x8, #0xc35000
0x1da5ed0: ldr      s1, [x8, #0xc]
0x1da5ed4: fcmp     s0, s1
0x1da5ed8: b.lt     #0x1da606c
0x1da5edc: ldr      x0, [x29]
0x1da5ee0: ldr      w8, [x0, #0xe0]
0x1da5ee4: cbnz     w8, #0x1da5eec
0x1da5ee8: bl       #0x1b646a4 | 
0x1da5eec: adrp     x22, #0x418d000
0x1da5ef0: ldr      x22, [x22, #0x268] | 0x418d268 'AlreadyShowRinkingTip'
0x1da5ef4: mov      w1, wzr
0x1da5ef8: mov      x2, xzr
0x1da5efc: ldr      x0, [x22]
0x1da5f00: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1da5f04: tbnz     w0, #0, #0x1da606c
0x1da5f08: adrp     x8, #0x418e000
0x1da5f0c: ldr      x8, [x8, #0xfb0]
0x1da5f10: ldr      x0, [x8]
0x1da5f14: bl       #0x1b647b8 | 
0x1da5f18: mov      x1, xzr
0x1da5f1c: mov      x21, x0
0x1da5f20: bl       #0x1dae274 | SongSelector.<>c__DisplayClass149_3$$.ctor
0x1da5f24: cbz      x21, #0x1da6094
0x1da5f28: str      x26, [x21, #0x20]
0x1da5f2c: adrp     x23, #0x4186000
0x1da5f30: ldr      x23, [x23, #0xec0]
0x1da5f34: ldr      x0, [x23]
0x1da5f38: bl       #0x1b647b8 | 
0x1da5f3c: mov      x1, xzr
0x1da5f40: mov      x20, x0
0x1da5f44: bl       #0x1cd9064 | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$.ctor
0x1da5f48: cbz      x20, #0x1da6094
0x1da5f4c: adrp     x8, #0x418c000
0x1da5f50: ldr      x8, [x8, #0xc98] | 0x418cc98 '提示'
0x1da5f54: ldr      x8, [x8]
0x1da5f58: str      x8, [x20, #0x18]
0x1da5f5c: adrp     x8, #0x418c000
0x1da5f60: ldr      x8, [x8, #0xe40] | 0x418ce40 '資訊'
0x1da5f64: ldr      x8, [x8]
0x1da5f68: str      x8, [x20, #0x20]
0x1da5f6c: adrp     x8, #0x418e000
0x1da5f70: ldr      x8, [x8, #0xfd8] | 0x418efd8 'Good News'
0x1da5f74: ldr      x8, [x8]
0x1da5f78: str      x8, [x20, #0x28]
0x1da5f7c: adrp     x8, #0x418e000
0x1da5f80: ldr      x8, [x8, #0xfe0] | 0x418efe0 '案内'
0x1da5f84: ldr      x8, [x8]
0x1da5f88: str      x8, [x20, #0x30]
0x1da5f8c: adrp     x8, #0x418f000
0x1da5f90: ldr      x8, [x8] | 0x418f000 '좋은 소식'
0x1da5f94: ldr      x8, [x8]
0x1da5f98: str      x8, [x20, #0x38]
0x1da5f9c: str      x20, [x21, #0x10]
0x1da5fa0: ldr      x0, [x23]
0x1da5fa4: bl       #0x1b647b8 | 
0x1da5fa8: mov      x1, xzr
0x1da5fac: mov      x20, x0
0x1da5fb0: bl       #0x1cd9064 | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$.ctor
0x1da5fb4: cbz      x20, #0x1da6094
0x1da5fb8: adrp     x8, #0x418e000
0x1da5fbc: ldr      x8, [x8, #0xfd0] | 0x418efd0 '恭喜！\n你已经足够熟悉这款游戏了，从现在开始，你可以直接解锁新章节第一首歌以及购买的单曲的IN难度！'
0x1da5fc0: ldr      x8, [x8]
0x1da5fc4: str      x8, [x20, #0x18]
0x1da5fc8: adrp     x8, #0x418e000
0x1da5fcc: ldr      x8, [x8, #0xfc8] | 0x418efc8 '恭喜！\n你已經足夠熟悉這款遊戲了。從現在開始，你可以直接解鎖新章節第一首歌以及新購買單曲的IN難度！'
0x1da5fd0: ldr      x8, [x8]
0x1da5fd4: str      x8, [x20, #0x20]
0x1da5fd8: adrp     x8, #0x418e000
0x1da5fdc: ldr      x8, [x8, #0xfb8] | 0x418efb8 'Congrats!\nIt seems that you have already been familiarized with this game. From now on, you can directly unlock the IN difficulty of new songs obtained!'
0x1da5fe0: ldr      x8, [x8]
0x1da5fe4: str      x8, [x20, #0x28]
0x1da5fe8: adrp     x8, #0x418f000
0x1da5fec: ldr      x8, [x8, #8] | 0x418f008 'おめでとうございます！\nもうこのゲームには慣れてきましたね。ここからは、未プレイチャプターの最初の曲と購入した曲のIN難易度が直接開放されます！ぜひ楽しんでください！'
0x1da5ff0: ldr      x8, [x8]
0x1da5ff4: str      x8, [x20, #0x30]
0x1da5ff8: adrp     x8, #0x418e000
0x1da5ffc: ldr      x8, [x8, #0xfc0] | 0x418efc0 '축하해요!\n이 게임에 익숙해진 것 같아요. 이제부터 획득한 새로운 곡의 IN 난이도가 바로 잠금 해제 됩니다!'
0x1da6000: ldr      x8, [x8]
0x1da6004: str      x8, [x20, #0x38]
0x1da6008: str      x20, [x21, #0x18]
0x1da600c: adrp     x8, #0x4186000
0x1da6010: ldr      x8, [x8, #0xf18]
0x1da6014: ldr      x0, [x8]
0x1da6018: bl       #0x1b647b8 | 
0x1da601c: adrp     x8, #0x418e000
0x1da6020: ldr      x8, [x8, #0xfa8]
0x1da6024: mov      x1, x21
0x1da6028: mov      x3, xzr
0x1da602c: mov      x20, x0
0x1da6030: ldr      x2, [x8]
0x1da6034: bl       #0x33ee8e4 | System.Action$$.ctor
0x1da6038: cbz      x20, #0x1da6094
0x1da603c: ldr      x8, [x20, #0x18]
0x1da6040: ldr      x0, [x20, #0x40]
0x1da6044: ldr      x1, [x20, #0x28]
0x1da6048: blr      x8
0x1da604c: ldr      x0, [x29]
0x1da6050: ldr      w8, [x0, #0xe0]
0x1da6054: cbnz     w8, #0x1da605c
0x1da6058: bl       #0x1b646a4 | 
0x1da605c: ldr      x0, [x22]
0x1da6060: mov      w1, #1
0x1da6064: mov      x2, xzr
0x1da6068: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1da606c: mov      x0, x19
0x1da6070: bl       #0x1da7cdc | SongSelector$$RefreshMirrorDisplay
0x1da6074: ldp      x20, x19, [sp, #0x80]
0x1da6078: ldp      x22, x21, [sp, #0x70]
0x1da607c: ldp      x24, x23, [sp, #0x60]
0x1da6080: ldp      x26, x25, [sp, #0x50]
0x1da6084: ldp      x28, x27, [sp, #0x40]
0x1da6088: ldp      x29, x30, [sp, #0x30]
0x1da608c: add      sp, sp, #0x90
0x1da6090: ret      
0x1da6094: bl       #0x1b647c8 | 
0x1da6098: bl       #0x1b647d0 | 

// 0x3b563a8 UnityEngine.Rendering.DebugManager$$EnableInputActions
0x3b563a8: ret      

// 0x3b56db0 UnityEngine.Rendering.DebugManager$$RegisterInputs
0x3b56db0: ret      

// 0x3b5db48 UnityEngine.Rendering.DebugUpdater$$RuntimeInit
0x3b5db48: ret      
