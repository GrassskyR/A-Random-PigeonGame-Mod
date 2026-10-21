
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
