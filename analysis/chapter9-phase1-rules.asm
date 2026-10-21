
// 0x1cc6708 SaveManagement$$.cctor
0x1cc6708: str      x30, [sp, #-0x30]!
0x1cc670c: stp      x22, x21, [sp, #0x10]
0x1cc6710: stp      x20, x19, [sp, #0x20]
0x1cc6714: adrp     x20, #0x4475000
0x1cc6718: adrp     x19, #0x4188000
0x1cc671c: ldrb     w8, [x20, #0x8ee]
0x1cc6720: ldr      x19, [x19, #0x9f8]
0x1cc6724: tbnz     w8, #0, #0x1cc6790
0x1cc6728: adrp     x0, #0x4188000
0x1cc672c: ldr      x0, [x0, #0x9f8]
0x1cc6730: bl       #0x1b64570 | 
0x1cc6734: adrp     x0, #0x4186000
0x1cc6738: ldr      x0, [x0, #0x7b0]
0x1cc673c: bl       #0x1b64570 | 
0x1cc6740: adrp     x0, #0x4186000
0x1cc6744: ldr      x0, [x0, #0xe68]
0x1cc6748: bl       #0x1b64570 | 
0x1cc674c: adrp     x0, #0x4188000
0x1cc6750: ldr      x0, [x0, #0xa00] | 0x4188a00 'PGRS'
0x1cc6754: bl       #0x1b64570 | 
0x1cc6758: adrp     x0, #0x4188000
0x1cc675c: ldr      x0, [x0, #0xa08] | 0x4188a08 'Q4zHm5vUEMJJ3iS9'
0x1cc6760: bl       #0x1b64570 | 
0x1cc6764: adrp     x0, #0x4188000
0x1cc6768: ldr      x0, [x0, #0xa10] | 0x4188a10 'Kk/wisgNYwcAV8WVGMgyUw=='
0x1cc676c: bl       #0x1b64570 | 
0x1cc6770: adrp     x0, #0x4188000
0x1cc6774: ldr      x0, [x0, #0xa18] | 0x4188a18 'Phigros.enc.j57vnvr8wlZssXM7eWpa'
0x1cc6778: bl       #0x1b64570 | 
0x1cc677c: adrp     x0, #0x4188000
0x1cc6780: ldr      x0, [x0, #0xa20] | 0x4188a20 '6Jaa0qVAJZuXkZCLiOa/Ax5tIZVu+taKUN1V1nqwkks='
0x1cc6784: bl       #0x1b64570 | 
0x1cc6788: mov      w8, #1
0x1cc678c: strb     w8, [x20, #0x8ee]
0x1cc6790: ldr      x0, [x19]
0x1cc6794: adrp     x20, #0x4186000
0x1cc6798: adrp     x19, #0x4188000
0x1cc679c: ldr      w8, [x0, #0xe0]
0x1cc67a0: ldr      x20, [x20, #0xe68]
0x1cc67a4: ldr      x19, [x19, #0xa00] | 0x4188a00 'PGRS'
0x1cc67a8: cbnz     w8, #0x1cc67b0
0x1cc67ac: bl       #0x1b646a4 | 
0x1cc67b0: mov      x0, xzr
0x1cc67b4: bl       #0x3335dc8 | System.Security.Cryptography.Aes$$Create
0x1cc67b8: ldr      x8, [x20]
0x1cc67bc: ldr      x8, [x8, #0xb8]
0x1cc67c0: str      x0, [x8]
0x1cc67c4: mov      x0, xzr
0x1cc67c8: bl       #0x3335dc8 | System.Security.Cryptography.Aes$$Create
0x1cc67cc: ldr      x8, [x20]
0x1cc67d0: ldr      x9, [x19]
0x1cc67d4: ldr      x8, [x8, #0xb8]
0x1cc67d8: ldr      x19, [x8]
0x1cc67dc: stp      x0, x9, [x8, #8]
0x1cc67e0: mov      x0, xzr
0x1cc67e4: bl       #0x3325944 | System.Text.Encoding$$get_ASCII
0x1cc67e8: cbz      x0, #0x1cc6910
0x1cc67ec: adrp     x9, #0x4188000
0x1cc67f0: ldr      x8, [x0]
0x1cc67f4: ldr      x9, [x9, #0xa18] | 0x4188a18 'Phigros.enc.j57vnvr8wlZssXM7eWpa'
0x1cc67f8: ldr      x2, [x8, #0x260]
0x1cc67fc: ldr      x1, [x9]
0x1cc6800: ldr      x9, [x8, #0x258]
0x1cc6804: blr      x9
0x1cc6808: mov      x1, xzr
0x1cc680c: bl       #0x1cb789c | BinaryUtils$$LoopReverseXor
0x1cc6810: cbz      x19, #0x1cc6910
0x1cc6814: ldr      x8, [x19]
0x1cc6818: mov      x1, x0
0x1cc681c: mov      x0, x19
0x1cc6820: ldp      x9, x2, [x8, #0x1f8]
0x1cc6824: blr      x9
0x1cc6828: ldr      x8, [x20]
0x1cc682c: mov      x0, xzr
0x1cc6830: ldr      x8, [x8, #0xb8]
0x1cc6834: ldr      x19, [x8]
0x1cc6838: bl       #0x3325944 | System.Text.Encoding$$get_ASCII
0x1cc683c: cbz      x0, #0x1cc6910
0x1cc6840: adrp     x9, #0x4188000
0x1cc6844: ldr      x8, [x0]
0x1cc6848: ldr      x9, [x9, #0xa08] | 0x4188a08 'Q4zHm5vUEMJJ3iS9'
0x1cc684c: ldr      x2, [x8, #0x260]
0x1cc6850: ldr      x1, [x9]
0x1cc6854: ldr      x9, [x8, #0x258]
0x1cc6858: blr      x9
0x1cc685c: mov      x1, xzr
0x1cc6860: bl       #0x1cb789c | BinaryUtils$$LoopReverseXor
0x1cc6864: cbz      x19, #0x1cc6910
0x1cc6868: ldr      x8, [x19]
0x1cc686c: adrp     x22, #0x4186000
0x1cc6870: adrp     x21, #0x4188000
0x1cc6874: mov      x1, x0
0x1cc6878: ldp      x9, x2, [x8, #0x1d8]
0x1cc687c: ldr      x22, [x22, #0x7b0]
0x1cc6880: ldr      x21, [x21, #0xa20] | 0x4188a20 '6Jaa0qVAJZuXkZCLiOa/Ax5tIZVu+taKUN1V1nqwkks='
0x1cc6884: mov      x0, x19
0x1cc6888: blr      x9
0x1cc688c: ldr      x8, [x20]
0x1cc6890: ldr      x0, [x22]
0x1cc6894: ldr      x8, [x8, #0xb8]
0x1cc6898: ldr      w9, [x0, #0xe0]
0x1cc689c: ldr      x19, [x8, #8]
0x1cc68a0: cbnz     w9, #0x1cc68a8
0x1cc68a4: bl       #0x1b646a4 | 
0x1cc68a8: ldr      x0, [x21]
0x1cc68ac: mov      x1, xzr
0x1cc68b0: bl       #0x33fdb5c | System.Convert$$FromBase64String
0x1cc68b4: cbz      x19, #0x1cc6910
0x1cc68b8: ldr      x8, [x19]
0x1cc68bc: adrp     x21, #0x4188000
0x1cc68c0: mov      x1, x0
0x1cc68c4: mov      x0, x19
0x1cc68c8: ldp      x9, x2, [x8, #0x1f8]
0x1cc68cc: ldr      x21, [x21, #0xa10] | 0x4188a10 'Kk/wisgNYwcAV8WVGMgyUw=='
0x1cc68d0: blr      x9
0x1cc68d4: ldr      x8, [x20]
0x1cc68d8: ldr      x0, [x21]
0x1cc68dc: mov      x1, xzr
0x1cc68e0: ldr      x8, [x8, #0xb8]
0x1cc68e4: ldr      x19, [x8, #8]
0x1cc68e8: bl       #0x33fdb5c | System.Convert$$FromBase64String
0x1cc68ec: cbz      x19, #0x1cc6910
0x1cc68f0: ldr      x8, [x19]
0x1cc68f4: mov      x1, x0
0x1cc68f8: mov      x0, x19
0x1cc68fc: ldp      x20, x19, [sp, #0x20]
0x1cc6900: ldp      x3, x2, [x8, #0x1d8]
0x1cc6904: ldp      x22, x21, [sp, #0x10]
0x1cc6908: ldr      x30, [sp], #0x30
0x1cc690c: br       x3
0x1cc6910: bl       #0x1b647c8 | 

// 0x1d7ed34 LevelOverControl$$HandleAboutTheUniverseEventLogic
0x1d7ed34: stp      x30, x21, [sp, #-0x20]!
0x1d7ed38: stp      x20, x19, [sp, #0x10]
0x1d7ed3c: adrp     x21, #0x4475000
0x1d7ed40: ldrb     w8, [x21, #0xf7e]
0x1d7ed44: mov      x19, x1
0x1d7ed48: mov      x20, x0
0x1d7ed4c: tbnz     w8, #0, #0x1d7ed70
0x1d7ed50: adrp     x0, #0x418a000
0x1d7ed54: ldr      x0, [x0, #0x3b8] | 0x418a3b8 'AboutTheUniverse.SOTUIMIssionary.0'
0x1d7ed58: bl       #0x1b64570 | 
0x1d7ed5c: adrp     x0, #0x4187000
0x1d7ed60: ldr      x0, [x0, #0xa88] | 0x4187a88 'HumaN.SOTUI.0'
0x1d7ed64: bl       #0x1b64570 | 
0x1d7ed68: mov      w8, #1
0x1d7ed6c: strb     w8, [x21, #0xf7e]
0x1d7ed70: mov      x0, x19
0x1d7ed74: bl       #0x1d7ee34 | LevelOverControl.C9AboutTheUniverseUnlockConfig$$HasReadPrerequisites
0x1d7ed78: tbz      w0, #0, #0x1d7ee24
0x1d7ed7c: ldr      x8, [x20, #0x48]
0x1d7ed80: cbz      x8, #0x1d7ee30
0x1d7ed84: ldr      x0, [x8, #0x10]
0x1d7ed88: adrp     x8, #0x4187000
0x1d7ed8c: ldr      x8, [x8, #0xa88] | 0x4187a88 'HumaN.SOTUI.0'
0x1d7ed90: mov      x2, xzr
0x1d7ed94: ldr      x1, [x8]
0x1d7ed98: bl       #0x33082c8 | System.String$$op_Inequality
0x1d7ed9c: tbnz     w0, #0, #0x1d7ee24
0x1d7eda0: ldr      x8, [x19, #0x18]
0x1d7eda4: cbz      x8, #0x1d7ee30
0x1d7eda8: ldr      x1, [x19]
0x1d7edac: ldr      x9, [x8, #0x18]
0x1d7edb0: ldr      x0, [x8, #0x40]
0x1d7edb4: ldr      x3, [x8, #0x28]
0x1d7edb8: mov      w2, wzr
0x1d7edbc: blr      x9
0x1d7edc0: tbnz     w0, #0, #0x1d7ee24
0x1d7edc4: ldr      x8, [x20, #0x38]
0x1d7edc8: cbz      x8, #0x1d7ee30
0x1d7edcc: ldr      w8, [x8, #0x10]
0x1d7edd0: mov      w9, #0x6d80
0x1d7edd4: movk     w9, #0xd, lsl #16
0x1d7edd8: cmp      w8, w9
0x1d7eddc: b.lt     #0x1d7ee24
0x1d7ede0: ldr      x8, [x19, #8]
0x1d7ede4: cbz      x8, #0x1d7ee30
0x1d7ede8: ldr      x1, [x19]
0x1d7edec: ldr      x9, [x8, #0x18]
0x1d7edf0: ldr      x0, [x8, #0x40]
0x1d7edf4: ldr      x3, [x8, #0x28]
0x1d7edf8: mov      w2, #1
0x1d7edfc: blr      x9
0x1d7ee00: adrp     x8, #0x418a000
0x1d7ee04: ldr      x8, [x8, #0x3b8] | 0x418a3b8 'AboutTheUniverse.SOTUIMIssionary.0'
0x1d7ee08: ldp      x20, x19, [sp, #0x10]
0x1d7ee0c: mov      w2, #1
0x1d7ee10: mov      w1, wzr
0x1d7ee14: ldr      x0, [x8]
0x1d7ee18: mov      x3, xzr
0x1d7ee1c: ldp      x30, x21, [sp], #0x20
0x1d7ee20: b        #0x1d0785c | Phigros2.Chapter9.Chapter9UnlockNavigation$$ApplyReturnToSelectMusicIfNeeded
0x1d7ee24: ldp      x20, x19, [sp, #0x10]
0x1d7ee28: ldp      x30, x21, [sp], #0x20
0x1d7ee2c: ret      
0x1d7ee30: bl       #0x1b647c8 | 

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

// 0x1d8ae48 EvanescentUnlockEvent$$ShouldUnlockAfterCompletion
0x1d8ae48: str      x30, [sp, #-0x30]!
0x1d8ae4c: stp      x22, x21, [sp, #0x10]
0x1d8ae50: stp      x20, x19, [sp, #0x20]
0x1d8ae54: adrp     x22, #0x4475000
0x1d8ae58: ldrb     w8, [x22, #0xfdb]
0x1d8ae5c: mov      w20, w2
0x1d8ae60: mov      w21, w1
0x1d8ae64: mov      x19, x0
0x1d8ae68: tbnz     w8, #0, #0x1d8ae80
0x1d8ae6c: adrp     x0, #0x418a000
0x1d8ae70: ldr      x0, [x0, #0x568] | 0x418a568 'Evanescent.LeaF.0'
0x1d8ae74: bl       #0x1b64570 | 
0x1d8ae78: mov      w8, #1
0x1d8ae7c: strb     w8, [x22, #0xfdb]
0x1d8ae80: tbz      w21, #0, #0x1d8aeac
0x1d8ae84: tbnz     w20, #0, #0x1d8aeac
0x1d8ae88: adrp     x8, #0x418a000
0x1d8ae8c: ldr      x8, [x8, #0x568] | 0x418a568 'Evanescent.LeaF.0'
0x1d8ae90: mov      x0, x19
0x1d8ae94: ldp      x20, x19, [sp, #0x20]
0x1d8ae98: ldp      x22, x21, [sp, #0x10]
0x1d8ae9c: ldr      x1, [x8]
0x1d8aea0: mov      x2, xzr
0x1d8aea4: ldr      x30, [sp], #0x30
0x1d8aea8: b        #0x32fac7c | System.String$$op_Equality
0x1d8aeac: ldp      x20, x19, [sp, #0x20]
0x1d8aeb0: ldp      x22, x21, [sp, #0x10]
0x1d8aeb4: mov      w0, wzr
0x1d8aeb8: ldr      x30, [sp], #0x30
0x1d8aebc: ret      
