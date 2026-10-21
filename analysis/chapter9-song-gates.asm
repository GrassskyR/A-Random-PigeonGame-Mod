
// 0x1cfb674 Phigros2.Chapter9.Chapter9Phase1Control$$BuildSongList
0x1cfb674: sub      sp, sp, #0xc0
0x1cfb678: stp      x29, x30, [sp, #0x60]
0x1cfb67c: stp      x28, x27, [sp, #0x70]
0x1cfb680: stp      x26, x25, [sp, #0x80]
0x1cfb684: stp      x24, x23, [sp, #0x90]
0x1cfb688: stp      x22, x21, [sp, #0xa0]
0x1cfb68c: stp      x20, x19, [sp, #0xb0]
0x1cfb690: adrp     x20, #0x4475000
0x1cfb694: ldrb     w8, [x20, #0xb6e]
0x1cfb698: mov      x19, x0
0x1cfb69c: tbnz     w8, #0, #0x1cfb744
0x1cfb6a0: adrp     x0, #0x4185000
0x1cfb6a4: ldr      x0, [x0, #0xb38]
0x1cfb6a8: bl       #0x1b64570 | 
0x1cfb6ac: adrp     x0, #0x418a000
0x1cfb6b0: ldr      x0, [x0, #0x4b0]
0x1cfb6b4: bl       #0x1b64570 | 
0x1cfb6b8: adrp     x0, #0x4187000
0x1cfb6bc: ldr      x0, [x0, #0x9d0]
0x1cfb6c0: bl       #0x1b64570 | 
0x1cfb6c4: adrp     x0, #0x4187000
0x1cfb6c8: ldr      x0, [x0, #0x9d8]
0x1cfb6cc: bl       #0x1b64570 | 
0x1cfb6d0: adrp     x0, #0x4187000
0x1cfb6d4: ldr      x0, [x0, #0x9e0]
0x1cfb6d8: bl       #0x1b64570 | 
0x1cfb6dc: adrp     x0, #0x4187000
0x1cfb6e0: ldr      x0, [x0, #0xbe8]
0x1cfb6e4: bl       #0x1b64570 | 
0x1cfb6e8: adrp     x0, #0x418a000
0x1cfb6ec: ldr      x0, [x0, #0x4b8]
0x1cfb6f0: bl       #0x1b64570 | 
0x1cfb6f4: adrp     x0, #0x418a000
0x1cfb6f8: ldr      x0, [x0, #0x4c0]
0x1cfb6fc: bl       #0x1b64570 | 
0x1cfb700: adrp     x0, #0x4187000
0x1cfb704: ldr      x0, [x0, #0xa08]
0x1cfb708: bl       #0x1b64570 | 
0x1cfb70c: adrp     x0, #0x4189000
0x1cfb710: ldr      x0, [x0, #0xb10]
0x1cfb714: bl       #0x1b64570 | 
0x1cfb718: adrp     x0, #0x418a000
0x1cfb71c: ldr      x0, [x0, #0x4c8]
0x1cfb720: bl       #0x1b64570 | 
0x1cfb724: adrp     x0, #0x418a000
0x1cfb728: ldr      x0, [x0, #0x4d0]
0x1cfb72c: bl       #0x1b64570 | 
0x1cfb730: adrp     x0, #0x418a000
0x1cfb734: ldr      x0, [x0, #0x4d8]
0x1cfb738: bl       #0x1b64570 | 
0x1cfb73c: mov      w8, #1
0x1cfb740: strb     w8, [x20, #0xb6e]
0x1cfb744: stp      xzr, xzr, [sp, #0x40]
0x1cfb748: str      xzr, [sp, #0x50]
0x1cfb74c: str      wzr, [sp, #0x3c]
0x1cfb750: str      xzr, [sp, #0x30]
0x1cfb754: strb     wzr, [sp, #0x2c]
0x1cfb758: str      xzr, [sp, #0x20]
0x1cfb75c: ldr      x8, [x19, #0x128]
0x1cfb760: cbz      x8, #0x1cfbaac
0x1cfb764: ldp      w2, w9, [x8, #0x18]
0x1cfb768: add      w9, w9, #1
0x1cfb76c: cmp      w2, #1
0x1cfb770: stp      wzr, w9, [x8, #0x18]
0x1cfb774: b.lt     #0x1cfb788
0x1cfb778: ldr      x0, [x8, #0x10]
0x1cfb77c: mov      w1, wzr
0x1cfb780: mov      x3, xzr
0x1cfb784: bl       #0x349f4d0 | System.Array$$Clear
0x1cfb788: adrp     x27, #0x4475000
0x1cfb78c: ldrb     w8, [x27, #0x8c0]
0x1cfb790: cbnz     w8, #0x1cfb7a8
0x1cfb794: adrp     x0, #0x4186000
0x1cfb798: ldr      x0, [x0, #0xef8]
0x1cfb79c: bl       #0x1b64570 | 
0x1cfb7a0: mov      w8, #1
0x1cfb7a4: strb     w8, [x27, #0x8c0]
0x1cfb7a8: adrp     x20, #0x4186000
0x1cfb7ac: ldr      x20, [x20, #0xef8]
0x1cfb7b0: ldr      x8, [x20]
0x1cfb7b4: ldr      x8, [x8, #0xb8]
0x1cfb7b8: ldr      x8, [x8]
0x1cfb7bc: cbz      x8, #0x1cfbaac
0x1cfb7c0: adrp     x24, #0x418a000
0x1cfb7c4: ldr      x24, [x24, #0x4d0]
0x1cfb7c8: ldr      x21, [x8, #0xe0]
0x1cfb7cc: ldr      x0, [x24]
0x1cfb7d0: ldr      w9, [x0, #0xe0]
0x1cfb7d4: cbnz     w9, #0x1cfb7e0
0x1cfb7d8: bl       #0x1b646a4 | 
0x1cfb7dc: ldr      x0, [x24]
0x1cfb7e0: ldr      x8, [x0, #0xb8]
0x1cfb7e4: adrp     x25, #0x418a000
0x1cfb7e8: ldr      x22, [x8, #0x10]
0x1cfb7ec: ldr      x25, [x25, #0x4b0]
0x1cfb7f0: cbnz     x22, #0x1cfb844
0x1cfb7f4: ldr      w8, [x0, #0xe0]
0x1cfb7f8: cbnz     w8, #0x1cfb804
0x1cfb7fc: bl       #0x1b646a4 | 
0x1cfb800: ldr      x0, [x24]
0x1cfb804: adrp     x9, #0x4187000
0x1cfb808: ldr      x8, [x0, #0xb8]
0x1cfb80c: ldr      x9, [x9, #0xbe8]
0x1cfb810: ldr      x23, [x8]
0x1cfb814: ldr      x0, [x9]
0x1cfb818: bl       #0x1b647b8 | 
0x1cfb81c: adrp     x8, #0x418a000
0x1cfb820: ldr      x8, [x8, #0x4c8]
0x1cfb824: mov      x1, x23
0x1cfb828: mov      x3, xzr
0x1cfb82c: mov      x22, x0
0x1cfb830: ldr      x2, [x8]
0x1cfb834: bl       #0x2c5614c | System.Func<object, bool>$$.ctor
0x1cfb838: ldr      x8, [x24]
0x1cfb83c: ldr      x8, [x8, #0xb8]
0x1cfb840: str      x22, [x8, #0x10]
0x1cfb844: ldr      x2, [x25]
0x1cfb848: mov      x0, x21
0x1cfb84c: mov      x1, x22
0x1cfb850: bl       #0x1f71250 | System.Linq.Enumerable$$FirstOrDefault<object>
0x1cfb854: cbz      x0, #0x1cfba40
0x1cfb858: ldr      x8, [x0, #0x18]
0x1cfb85c: cbz      x8, #0x1cfbaac
0x1cfb860: ldr      x0, [x8, #0x30]
0x1cfb864: cbz      x0, #0x1cfbaac
0x1cfb868: adrp     x8, #0x4187000
0x1cfb86c: ldr      x8, [x8, #0xa08]
0x1cfb870: adrp     x28, #0x4187000
0x1cfb874: ldr      x28, [x28, #0x9d8]
0x1cfb878: adrp     x29, #0x418a000
0x1cfb87c: ldr      x1, [x8]
0x1cfb880: ldr      x29, [x29, #0x4b8]
0x1cfb884: add      x8, sp, #8
0x1cfb888: bl       #0x2e6072c | System.Collections.Generic.List<object>$$GetEnumerator
0x1cfb88c: ldur     q0, [sp, #8]
0x1cfb890: ldr      x8, [sp, #0x18]
0x1cfb894: mov      w26, #1
0x1cfb898: str      q0, [sp, #0x40]
0x1cfb89c: str      x8, [sp, #0x50]
0x1cfb8a0: ldr      x1, [x28]
0x1cfb8a4: add      x0, sp, #0x40
0x1cfb8a8: bl       #0x2ae8064 | System.Collections.Generic.List.Enumerator<object>$$MoveNext
0x1cfb8ac: tbz      w0, #0, #0x1cfba28
0x1cfb8b0: ldrb     w8, [x27, #0x8c0]
0x1cfb8b4: ldr      x21, [sp, #0x50]
0x1cfb8b8: cbnz     w8, #0x1cfb8c8
0x1cfb8bc: mov      x0, x20
0x1cfb8c0: bl       #0x1b64570 | 
0x1cfb8c4: strb     w26, [x27, #0x8c0]
0x1cfb8c8: cbz      x21, #0x1cfba94
0x1cfb8cc: ldr      x8, [x20]
0x1cfb8d0: ldr      x8, [x8, #0xb8]
0x1cfb8d4: ldr      x0, [x8]
0x1cfb8d8: cbz      x0, #0x1cfba98
0x1cfb8dc: ldr      x1, [x21, #0x10]
0x1cfb8e0: mov      x2, xzr
0x1cfb8e4: bl       #0x1ca8974 | GameInformation$$GetSongInformation
0x1cfb8e8: ldrb     w8, [x27, #0x8c0]
0x1cfb8ec: mov      x21, x0
0x1cfb8f0: cbnz     w8, #0x1cfb900
0x1cfb8f4: mov      x0, x20
0x1cfb8f8: bl       #0x1b64570 | 
0x1cfb8fc: strb     w26, [x27, #0x8c0]
0x1cfb900: cbz      x21, #0x1cfba8c
0x1cfb904: ldr      x8, [x20]
0x1cfb908: ldr      x8, [x8, #0xb8]
0x1cfb90c: ldr      x0, [x8]
0x1cfb910: cbz      x0, #0x1cfba90
0x1cfb914: ldr      x1, [x21, #0x10]
0x1cfb918: add      x2, sp, #0x3c
0x1cfb91c: add      x3, sp, #0x30
0x1cfb920: add      x4, sp, #0x2c
0x1cfb924: add      x5, sp, #0x20
0x1cfb928: mov      x6, xzr
0x1cfb92c: bl       #0x1cbcc74 | GameInformation$$CheckSongUnlock
0x1cfb930: ldrb     w8, [sp, #0x2c]
0x1cfb934: cbz      w8, #0x1cfb9b4
0x1cfb938: adrp     x8, #0x4189000
0x1cfb93c: ldr      w23, [sp, #0x3c]
0x1cfb940: ldr      x24, [sp, #0x20]
0x1cfb944: ldr      x25, [sp, #0x30]
0x1cfb948: ldr      x8, [x8, #0xb10]
0x1cfb94c: ldr      x0, [x8]
0x1cfb950: bl       #0x1b647b8 | 
0x1cfb954: mov      x22, x0
0x1cfb958: mov      x1, x21
0x1cfb95c: mov      w2, w23
0x1cfb960: mov      x3, x24
0x1cfb964: mov      x4, x25
0x1cfb968: mov      x5, xzr
0x1cfb96c: bl       #0x1db0af4 | SongSelectorItem$$.ctor
0x1cfb970: ldr      x0, [x19, #0x128]
0x1cfb974: cbz      x0, #0x1cfba9c
0x1cfb978: ldr      w10, [x0, #0x1c]
0x1cfb97c: ldr      x8, [x0, #0x10]
0x1cfb980: ldr      x9, [x29]
0x1cfb984: add      w10, w10, #1
0x1cfb988: str      w10, [x0, #0x1c]
0x1cfb98c: cbz      x8, #0x1cfbaa0
0x1cfb990: ldrsw    x10, [x0, #0x18]
0x1cfb994: ldr      w11, [x8, #0x18]
0x1cfb998: cmp      w10, w11
0x1cfb99c: b.hs     #0x1cfb9f8
0x1cfb9a0: add      w9, w10, #1
0x1cfb9a4: add      x8, x8, x10, lsl #3
0x1cfb9a8: str      w9, [x0, #0x18]
0x1cfb9ac: str      x22, [x8, #0x20]
0x1cfb9b0: b        #0x1cfb8a0 | 
0x1cfb9b4: ldr      x0, [x19, #0x128]
0x1cfb9b8: cbz      x0, #0x1cfbaa8
0x1cfb9bc: ldr      w10, [x0, #0x1c]
0x1cfb9c0: ldr      x8, [x0, #0x10]
0x1cfb9c4: ldr      x9, [x29]
0x1cfb9c8: add      w10, w10, #1
0x1cfb9cc: str      w10, [x0, #0x1c]
0x1cfb9d0: cbz      x8, #0x1cfbaa4
0x1cfb9d4: ldrsw    x10, [x0, #0x18]
0x1cfb9d8: ldr      w11, [x8, #0x18]
0x1cfb9dc: cmp      w10, w11
0x1cfb9e0: b.hs     #0x1cfba10
0x1cfb9e4: add      w9, w10, #1
0x1cfb9e8: add      x8, x8, x10, lsl #3
0x1cfb9ec: str      w9, [x0, #0x18]
0x1cfb9f0: str      xzr, [x8, #0x20]
0x1cfb9f4: b        #0x1cfb8a0 | 
0x1cfb9f8: ldr      x8, [x9, #0x20]
0x1cfb9fc: ldr      x8, [x8, #0xc0]
0x1cfba00: ldr      x2, [x8, #0x70]
0x1cfba04: mov      x1, x22
0x1cfba08: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1cfba0c: b        #0x1cfb8a0 | 
0x1cfba10: ldr      x8, [x9, #0x20]
0x1cfba14: ldr      x8, [x8, #0xc0]
0x1cfba18: ldr      x2, [x8, #0x70]
0x1cfba1c: mov      x1, xzr
0x1cfba20: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1cfba24: b        #0x1cfb8a0 | 
0x1cfba28: adrp     x8, #0x4187000
0x1cfba2c: ldr      x8, [x8, #0x9d0]
0x1cfba30: add      x0, sp, #0x40
0x1cfba34: ldr      x1, [x8]
0x1cfba38: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1cfba3c: b        #0x1cfba6c | 
0x1cfba40: adrp     x8, #0x4185000
0x1cfba44: ldr      x8, [x8, #0xb38]
0x1cfba48: ldr      x0, [x8]
0x1cfba4c: ldr      w8, [x0, #0xe0]
0x1cfba50: cbnz     w8, #0x1cfba58
0x1cfba54: bl       #0x1b646a4 | 
0x1cfba58: adrp     x8, #0x418a000
0x1cfba5c: ldr      x8, [x8, #0x4d8]
0x1cfba60: mov      x1, xzr
0x1cfba64: ldr      x0, [x8]
0x1cfba68: bl       #0x3c25308 | UnityEngine.Debug$$LogError
0x1cfba6c: ldp      x20, x19, [sp, #0xb0]
0x1cfba70: ldp      x22, x21, [sp, #0xa0]
0x1cfba74: ldp      x24, x23, [sp, #0x90]
0x1cfba78: ldp      x26, x25, [sp, #0x80]
0x1cfba7c: ldp      x28, x27, [sp, #0x70]
0x1cfba80: ldp      x29, x30, [sp, #0x60]
0x1cfba84: add      sp, sp, #0xc0
0x1cfba88: ret      
0x1cfba8c: bl       #0x1b647c8 | 
0x1cfba90: bl       #0x1b647c8 | 
0x1cfba94: bl       #0x1b647c8 | 
0x1cfba98: bl       #0x1b647c8 | 
0x1cfba9c: bl       #0x1b647c8 | 
0x1cfbaa0: bl       #0x1b647c8 | 
0x1cfbaa4: bl       #0x1b647c8 | 
0x1cfbaa8: bl       #0x1b647c8 | 
0x1cfbaac: bl       #0x1b647c8 | 
0x1cfbab0: b        #0x1cfbae4 | 
0x1cfbab4: b        #0x1cfbae4 | 
0x1cfbab8: b        #0x1cfbae4 | 
0x1cfbabc: b        #0x1cfbae4 | 
0x1cfbac0: b        #0x1cfbae4 | 
0x1cfbac4: b        #0x1cfbae4 | 
0x1cfbac8: b        #0x1cfbae4 | 
0x1cfbacc: b        #0x1cfbae4 | 
0x1cfbad0: b        #0x1cfbae4 | 
0x1cfbad4: b        #0x1cfbae4 | 
0x1cfbad8: b        #0x1cfbae4 | 
0x1cfbadc: b        #0x1cfbae4 | 
0x1cfbae0: b        #0x1cfbae4 | 
0x1cfbae4: mov      x19, x0
0x1cfbae8: cmp      w1, #1
0x1cfbaec: b.ne     #0x1cfbb20
0x1cfbaf0: mov      x0, x19
0x1cfbaf4: bl       #0x3e998d0 | 
0x1cfbaf8: ldr      x20, [x0]
0x1cfbafc: bl       #0x3e998e0 | 
0x1cfbb00: adrp     x8, #0x4187000
0x1cfbb04: ldr      x8, [x8, #0x9d0]
0x1cfbb08: add      x0, sp, #0x40
0x1cfbb0c: ldr      x1, [x8]
0x1cfbb10: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1cfbb14: cbz      x20, #0x1cfba6c
0x1cfbb18: mov      x0, x20
0x1cfbb1c: bl       #0x1b647c0 | 
0x1cfbb20: mov      x20, xzr
0x1cfbb24: b        #0x1cfbb2c | 
0x1cfbb28: mov      x19, x0
0x1cfbb2c: adrp     x8, #0x4187000
0x1cfbb30: ldr      x8, [x8, #0x9d0]
0x1cfbb34: ldr      x1, [x8]
0x1cfbb38: add      x0, sp, #0x40
0x1cfbb3c: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1cfbb40: cbnz     x20, #0x1cfbb4c
0x1cfbb44: mov      x0, x19
0x1cfbb48: bl       #0x1c65b3c | 
0x1cfbb4c: mov      x0, x20
0x1cfbb50: bl       #0x1b647c0 | 
0x1cfbb54: bl       #0x194772c | 

// 0x1d187b8 Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$BuildSongList
0x1d187b8: sub      sp, sp, #0xc0
0x1d187bc: stp      x29, x30, [sp, #0x60]
0x1d187c0: stp      x28, x27, [sp, #0x70]
0x1d187c4: stp      x26, x25, [sp, #0x80]
0x1d187c8: stp      x24, x23, [sp, #0x90]
0x1d187cc: stp      x22, x21, [sp, #0xa0]
0x1d187d0: stp      x20, x19, [sp, #0xb0]
0x1d187d4: adrp     x20, #0x4475000
0x1d187d8: ldrb     w8, [x20, #0xc84]
0x1d187dc: mov      x19, x0
0x1d187e0: tbnz     w8, #0, #0x1d18888
0x1d187e4: adrp     x0, #0x4185000
0x1d187e8: ldr      x0, [x0, #0xb38]
0x1d187ec: bl       #0x1b64570 | 
0x1d187f0: adrp     x0, #0x418a000
0x1d187f4: ldr      x0, [x0, #0x4b0]
0x1d187f8: bl       #0x1b64570 | 
0x1d187fc: adrp     x0, #0x4187000
0x1d18800: ldr      x0, [x0, #0x9d0]
0x1d18804: bl       #0x1b64570 | 
0x1d18808: adrp     x0, #0x4187000
0x1d1880c: ldr      x0, [x0, #0x9d8]
0x1d18810: bl       #0x1b64570 | 
0x1d18814: adrp     x0, #0x4187000
0x1d18818: ldr      x0, [x0, #0x9e0]
0x1d1881c: bl       #0x1b64570 | 
0x1d18820: adrp     x0, #0x4187000
0x1d18824: ldr      x0, [x0, #0xbe8]
0x1d18828: bl       #0x1b64570 | 
0x1d1882c: adrp     x0, #0x418a000
0x1d18830: ldr      x0, [x0, #0x4b8]
0x1d18834: bl       #0x1b64570 | 
0x1d18838: adrp     x0, #0x418a000
0x1d1883c: ldr      x0, [x0, #0x4c0]
0x1d18840: bl       #0x1b64570 | 
0x1d18844: adrp     x0, #0x4187000
0x1d18848: ldr      x0, [x0, #0xa08]
0x1d1884c: bl       #0x1b64570 | 
0x1d18850: adrp     x0, #0x4189000
0x1d18854: ldr      x0, [x0, #0xb10]
0x1d18858: bl       #0x1b64570 | 
0x1d1885c: adrp     x0, #0x418a000
0x1d18860: ldr      x0, [x0, #0xeb0]
0x1d18864: bl       #0x1b64570 | 
0x1d18868: adrp     x0, #0x418a000
0x1d1886c: ldr      x0, [x0, #0xeb8]
0x1d18870: bl       #0x1b64570 | 
0x1d18874: adrp     x0, #0x418a000
0x1d18878: ldr      x0, [x0, #0x4d8]
0x1d1887c: bl       #0x1b64570 | 
0x1d18880: mov      w8, #1
0x1d18884: strb     w8, [x20, #0xc84]
0x1d18888: stp      xzr, xzr, [sp, #0x40]
0x1d1888c: str      xzr, [sp, #0x50]
0x1d18890: str      wzr, [sp, #0x3c]
0x1d18894: str      xzr, [sp, #0x30]
0x1d18898: strb     wzr, [sp, #0x2c]
0x1d1889c: str      xzr, [sp, #0x20]
0x1d188a0: ldr      x8, [x19, #0x1c0]
0x1d188a4: cbz      x8, #0x1d18bf0
0x1d188a8: ldp      w2, w9, [x8, #0x18]
0x1d188ac: add      w9, w9, #1
0x1d188b0: cmp      w2, #1
0x1d188b4: stp      wzr, w9, [x8, #0x18]
0x1d188b8: b.lt     #0x1d188cc
0x1d188bc: ldr      x0, [x8, #0x10]
0x1d188c0: mov      w1, wzr
0x1d188c4: mov      x3, xzr
0x1d188c8: bl       #0x349f4d0 | System.Array$$Clear
0x1d188cc: adrp     x27, #0x4475000
0x1d188d0: ldrb     w8, [x27, #0x8c0]
0x1d188d4: cbnz     w8, #0x1d188ec
0x1d188d8: adrp     x0, #0x4186000
0x1d188dc: ldr      x0, [x0, #0xef8]
0x1d188e0: bl       #0x1b64570 | 
0x1d188e4: mov      w8, #1
0x1d188e8: strb     w8, [x27, #0x8c0]
0x1d188ec: adrp     x20, #0x4186000
0x1d188f0: ldr      x20, [x20, #0xef8]
0x1d188f4: ldr      x8, [x20]
0x1d188f8: ldr      x8, [x8, #0xb8]
0x1d188fc: ldr      x8, [x8]
0x1d18900: cbz      x8, #0x1d18bf0
0x1d18904: adrp     x24, #0x418a000
0x1d18908: ldr      x24, [x24, #0xeb8]
0x1d1890c: ldr      x21, [x8, #0xe0]
0x1d18910: ldr      x0, [x24]
0x1d18914: ldr      w9, [x0, #0xe0]
0x1d18918: cbnz     w9, #0x1d18924
0x1d1891c: bl       #0x1b646a4 | 
0x1d18920: ldr      x0, [x24]
0x1d18924: ldr      x8, [x0, #0xb8]
0x1d18928: adrp     x25, #0x418a000
0x1d1892c: ldr      x22, [x8, #8]
0x1d18930: ldr      x25, [x25, #0x4b0]
0x1d18934: cbnz     x22, #0x1d18988
0x1d18938: ldr      w8, [x0, #0xe0]
0x1d1893c: cbnz     w8, #0x1d18948
0x1d18940: bl       #0x1b646a4 | 
0x1d18944: ldr      x0, [x24]
0x1d18948: adrp     x9, #0x4187000
0x1d1894c: ldr      x8, [x0, #0xb8]
0x1d18950: ldr      x9, [x9, #0xbe8]
0x1d18954: ldr      x23, [x8]
0x1d18958: ldr      x0, [x9]
0x1d1895c: bl       #0x1b647b8 | 
0x1d18960: adrp     x8, #0x418a000
0x1d18964: ldr      x8, [x8, #0xeb0]
0x1d18968: mov      x1, x23
0x1d1896c: mov      x3, xzr
0x1d18970: mov      x22, x0
0x1d18974: ldr      x2, [x8]
0x1d18978: bl       #0x2c5614c | System.Func<object, bool>$$.ctor
0x1d1897c: ldr      x8, [x24]
0x1d18980: ldr      x8, [x8, #0xb8]
0x1d18984: str      x22, [x8, #8]
0x1d18988: ldr      x2, [x25]
0x1d1898c: mov      x0, x21
0x1d18990: mov      x1, x22
0x1d18994: bl       #0x1f71250 | System.Linq.Enumerable$$FirstOrDefault<object>
0x1d18998: cbz      x0, #0x1d18b84
0x1d1899c: ldr      x8, [x0, #0x18]
0x1d189a0: cbz      x8, #0x1d18bf0
0x1d189a4: ldr      x0, [x8, #0x30]
0x1d189a8: cbz      x0, #0x1d18bf0
0x1d189ac: adrp     x8, #0x4187000
0x1d189b0: ldr      x8, [x8, #0xa08]
0x1d189b4: adrp     x28, #0x4187000
0x1d189b8: ldr      x28, [x28, #0x9d8]
0x1d189bc: adrp     x29, #0x418a000
0x1d189c0: ldr      x1, [x8]
0x1d189c4: ldr      x29, [x29, #0x4b8]
0x1d189c8: add      x8, sp, #8
0x1d189cc: bl       #0x2e6072c | System.Collections.Generic.List<object>$$GetEnumerator
0x1d189d0: ldur     q0, [sp, #8]
0x1d189d4: ldr      x8, [sp, #0x18]
0x1d189d8: mov      w26, #1
0x1d189dc: str      q0, [sp, #0x40]
0x1d189e0: str      x8, [sp, #0x50]
0x1d189e4: ldr      x1, [x28]
0x1d189e8: add      x0, sp, #0x40
0x1d189ec: bl       #0x2ae8064 | System.Collections.Generic.List.Enumerator<object>$$MoveNext
0x1d189f0: tbz      w0, #0, #0x1d18b6c
0x1d189f4: ldrb     w8, [x27, #0x8c0]
0x1d189f8: ldr      x21, [sp, #0x50]
0x1d189fc: cbnz     w8, #0x1d18a0c
0x1d18a00: mov      x0, x20
0x1d18a04: bl       #0x1b64570 | 
0x1d18a08: strb     w26, [x27, #0x8c0]
0x1d18a0c: cbz      x21, #0x1d18bd8
0x1d18a10: ldr      x8, [x20]
0x1d18a14: ldr      x8, [x8, #0xb8]
0x1d18a18: ldr      x0, [x8]
0x1d18a1c: cbz      x0, #0x1d18bdc
0x1d18a20: ldr      x1, [x21, #0x10]
0x1d18a24: mov      x2, xzr
0x1d18a28: bl       #0x1ca8974 | GameInformation$$GetSongInformation
0x1d18a2c: ldrb     w8, [x27, #0x8c0]
0x1d18a30: mov      x21, x0
0x1d18a34: cbnz     w8, #0x1d18a44
0x1d18a38: mov      x0, x20
0x1d18a3c: bl       #0x1b64570 | 
0x1d18a40: strb     w26, [x27, #0x8c0]
0x1d18a44: cbz      x21, #0x1d18bd0
0x1d18a48: ldr      x8, [x20]
0x1d18a4c: ldr      x8, [x8, #0xb8]
0x1d18a50: ldr      x0, [x8]
0x1d18a54: cbz      x0, #0x1d18bd4
0x1d18a58: ldr      x1, [x21, #0x10]
0x1d18a5c: add      x2, sp, #0x3c
0x1d18a60: add      x3, sp, #0x30
0x1d18a64: add      x4, sp, #0x2c
0x1d18a68: add      x5, sp, #0x20
0x1d18a6c: mov      x6, xzr
0x1d18a70: bl       #0x1cbcc74 | GameInformation$$CheckSongUnlock
0x1d18a74: ldrb     w8, [sp, #0x2c]
0x1d18a78: cbz      w8, #0x1d18af8
0x1d18a7c: adrp     x8, #0x4189000
0x1d18a80: ldr      w23, [sp, #0x3c]
0x1d18a84: ldr      x24, [sp, #0x20]
0x1d18a88: ldr      x25, [sp, #0x30]
0x1d18a8c: ldr      x8, [x8, #0xb10]
0x1d18a90: ldr      x0, [x8]
0x1d18a94: bl       #0x1b647b8 | 
0x1d18a98: mov      x22, x0
0x1d18a9c: mov      x1, x21
0x1d18aa0: mov      w2, w23
0x1d18aa4: mov      x3, x24
0x1d18aa8: mov      x4, x25
0x1d18aac: mov      x5, xzr
0x1d18ab0: bl       #0x1db0af4 | SongSelectorItem$$.ctor
0x1d18ab4: ldr      x0, [x19, #0x1c0]
0x1d18ab8: cbz      x0, #0x1d18be0
0x1d18abc: ldr      w10, [x0, #0x1c]
0x1d18ac0: ldr      x8, [x0, #0x10]
0x1d18ac4: ldr      x9, [x29]
0x1d18ac8: add      w10, w10, #1
0x1d18acc: str      w10, [x0, #0x1c]
0x1d18ad0: cbz      x8, #0x1d18be4
0x1d18ad4: ldrsw    x10, [x0, #0x18]
0x1d18ad8: ldr      w11, [x8, #0x18]
0x1d18adc: cmp      w10, w11
0x1d18ae0: b.hs     #0x1d18b3c
0x1d18ae4: add      w9, w10, #1
0x1d18ae8: add      x8, x8, x10, lsl #3
0x1d18aec: str      w9, [x0, #0x18]
0x1d18af0: str      x22, [x8, #0x20]
0x1d18af4: b        #0x1d189e4 | 
0x1d18af8: ldr      x0, [x19, #0x1c0]
0x1d18afc: cbz      x0, #0x1d18bec
0x1d18b00: ldr      w10, [x0, #0x1c]
0x1d18b04: ldr      x8, [x0, #0x10]
0x1d18b08: ldr      x9, [x29]
0x1d18b0c: add      w10, w10, #1
0x1d18b10: str      w10, [x0, #0x1c]
0x1d18b14: cbz      x8, #0x1d18be8
0x1d18b18: ldrsw    x10, [x0, #0x18]
0x1d18b1c: ldr      w11, [x8, #0x18]
0x1d18b20: cmp      w10, w11
0x1d18b24: b.hs     #0x1d18b54
0x1d18b28: add      w9, w10, #1
0x1d18b2c: add      x8, x8, x10, lsl #3
0x1d18b30: str      w9, [x0, #0x18]
0x1d18b34: str      xzr, [x8, #0x20]
0x1d18b38: b        #0x1d189e4 | 
0x1d18b3c: ldr      x8, [x9, #0x20]
0x1d18b40: ldr      x8, [x8, #0xc0]
0x1d18b44: ldr      x2, [x8, #0x70]
0x1d18b48: mov      x1, x22
0x1d18b4c: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1d18b50: b        #0x1d189e4 | 
0x1d18b54: ldr      x8, [x9, #0x20]
0x1d18b58: ldr      x8, [x8, #0xc0]
0x1d18b5c: ldr      x2, [x8, #0x70]
0x1d18b60: mov      x1, xzr
0x1d18b64: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1d18b68: b        #0x1d189e4 | 
0x1d18b6c: adrp     x8, #0x4187000
0x1d18b70: ldr      x8, [x8, #0x9d0]
0x1d18b74: add      x0, sp, #0x40
0x1d18b78: ldr      x1, [x8]
0x1d18b7c: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1d18b80: b        #0x1d18bb0 | 
0x1d18b84: adrp     x8, #0x4185000
0x1d18b88: ldr      x8, [x8, #0xb38]
0x1d18b8c: ldr      x0, [x8]
0x1d18b90: ldr      w8, [x0, #0xe0]
0x1d18b94: cbnz     w8, #0x1d18b9c
0x1d18b98: bl       #0x1b646a4 | 
0x1d18b9c: adrp     x8, #0x418a000
0x1d18ba0: ldr      x8, [x8, #0x4d8]
0x1d18ba4: mov      x1, xzr
0x1d18ba8: ldr      x0, [x8]
0x1d18bac: bl       #0x3c25308 | UnityEngine.Debug$$LogError
0x1d18bb0: ldp      x20, x19, [sp, #0xb0]
0x1d18bb4: ldp      x22, x21, [sp, #0xa0]
0x1d18bb8: ldp      x24, x23, [sp, #0x90]
0x1d18bbc: ldp      x26, x25, [sp, #0x80]
0x1d18bc0: ldp      x28, x27, [sp, #0x70]
0x1d18bc4: ldp      x29, x30, [sp, #0x60]
0x1d18bc8: add      sp, sp, #0xc0
0x1d18bcc: ret      
0x1d18bd0: bl       #0x1b647c8 | 
0x1d18bd4: bl       #0x1b647c8 | 
0x1d18bd8: bl       #0x1b647c8 | 
0x1d18bdc: bl       #0x1b647c8 | 
0x1d18be0: bl       #0x1b647c8 | 
0x1d18be4: bl       #0x1b647c8 | 
0x1d18be8: bl       #0x1b647c8 | 
0x1d18bec: bl       #0x1b647c8 | 
0x1d18bf0: bl       #0x1b647c8 | 
0x1d18bf4: b        #0x1d18c28 | 
0x1d18bf8: b        #0x1d18c28 | 
0x1d18bfc: b        #0x1d18c28 | 
0x1d18c00: b        #0x1d18c28 | 
0x1d18c04: b        #0x1d18c28 | 
0x1d18c08: b        #0x1d18c28 | 
0x1d18c0c: b        #0x1d18c28 | 
0x1d18c10: b        #0x1d18c28 | 
0x1d18c14: b        #0x1d18c28 | 
0x1d18c18: b        #0x1d18c28 | 
0x1d18c1c: b        #0x1d18c28 | 
0x1d18c20: b        #0x1d18c28 | 
0x1d18c24: b        #0x1d18c28 | 
0x1d18c28: mov      x19, x0
0x1d18c2c: cmp      w1, #1
0x1d18c30: b.ne     #0x1d18c64
0x1d18c34: mov      x0, x19
0x1d18c38: bl       #0x3e998d0 | 
0x1d18c3c: ldr      x20, [x0]
0x1d18c40: bl       #0x3e998e0 | 
0x1d18c44: adrp     x8, #0x4187000
0x1d18c48: ldr      x8, [x8, #0x9d0]
0x1d18c4c: add      x0, sp, #0x40
0x1d18c50: ldr      x1, [x8]
0x1d18c54: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1d18c58: cbz      x20, #0x1d18bb0
0x1d18c5c: mov      x0, x20
0x1d18c60: bl       #0x1b647c0 | 
0x1d18c64: mov      x20, xzr
0x1d18c68: b        #0x1d18c70 | 
0x1d18c6c: mov      x19, x0
0x1d18c70: adrp     x8, #0x4187000
0x1d18c74: ldr      x8, [x8, #0x9d0]
0x1d18c78: ldr      x1, [x8]
0x1d18c7c: add      x0, sp, #0x40
0x1d18c80: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1d18c84: cbnz     x20, #0x1d18c90
0x1d18c88: mov      x0, x19
0x1d18c8c: bl       #0x1c65b3c | 
0x1d18c90: mov      x0, x20
0x1d18c94: bl       #0x1b647c0 | 
0x1d18c98: bl       #0x194772c | 
