0x1db2a74  stp     x30, x23, [sp, #-0x30]!
0x1db2a78  stp     x22, x21, [sp, #0x10]
0x1db2a7c  stp     x20, x19, [sp, #0x20]
0x1db2a80  adrp    x21, #0x4476000
0x1db2a84  adrp    x20, #0x4185000
0x1db2a88  ldrb    w8, [x21, #0xfd]
0x1db2a8c  ldr     x20, [x20, #0x208]
0x1db2a90  mov     x19, x0
0x1db2a94  tbnz    w8, #0, #0x1db2b3c            -> 0x0 -> 0x1db2b3c
0x1db2a98  adrp    x0, #0x4186000
0x1db2a9c  ldr     x0, [x0, #0xef8]
0x1db2aa0  bl      #0x1b64570                    -> 0x1b64570
0x1db2aa4  adrp    x0, #0x4186000
0x1db2aa8  ldr     x0, [x0, #0xe60]
0x1db2aac  bl      #0x1b64570                    -> 0x1b64570
0x1db2ab0  adrp    x0, #0x4185000
0x1db2ab4  ldr     x0, [x0, #0x208]
0x1db2ab8  bl      #0x1b64570                    -> 0x1b64570
0x1db2abc  adrp    x0, #0x4186000
0x1db2ac0  ldr     x0, [x0, #0xe68]
0x1db2ac4  bl      #0x1b64570                    -> 0x1b64570
0x1db2ac8  adrp    x0, #0x4187000
0x1db2acc  ldr     x0, [x0, #0x930]
0x1db2ad0  bl      #0x1b64570                    -> 0x1b64570
0x1db2ad4  adrp    x0, #0x4187000
0x1db2ad8  ldr     x0, [x0, #0x688]
0x1db2adc  bl      #0x1b64570                    -> 0x1b64570
0x1db2ae0  adrp    x0, #0x418f000
0x1db2ae4  ldr     x0, [x0, #0x400]
0x1db2ae8  bl      #0x1b64570                    -> 0x1b64570
0x1db2aec  adrp    x0, #0x418c000
0x1db2af0  ldr     x0, [x0, #0xf88]
0x1db2af4  bl      #0x1b64570                    -> 0x1b64570
0x1db2af8  adrp    x0, #0x418d000
0x1db2afc  ldr     x0, [x0, #0x3b8]
0x1db2b00  bl      #0x1b64570                    -> 0x1b64570
0x1db2b04  adrp    x0, #0x418f000
0x1db2b08  ldr     x0, [x0, #0x408]
0x1db2b0c  bl      #0x1b64570                    -> 0x1b64570
0x1db2b10  adrp    x0, #0x4186000
0x1db2b14  ldr     x0, [x0, #0xe98]
0x1db2b18  bl      #0x1b64570                    -> 0x1b64570
0x1db2b1c  adrp    x0, #0x4188000
0x1db2b20  ldr     x0, [x0, #0xf40]
0x1db2b24  bl      #0x1b64570                    -> 0x1b64570
0x1db2b28  adrp    x0, #0x418f000
0x1db2b2c  ldr     x0, [x0, #0x410]
0x1db2b30  bl      #0x1b64570                    -> 0x1b64570
0x1db2b34  mov     w8, #1
0x1db2b38  strb    w8, [x21, #0xfd]
0x1db2b3c  ldr     x0, [x20]
0x1db2b40  adrp    x21, #0x4186000
0x1db2b44  adrp    x22, #0x4186000
0x1db2b48  ldr     x20, [x19, #0x30]
0x1db2b4c  ldr     w8, [x0, #0xe0]
0x1db2b50  ldr     x21, [x21, #0xe60]
0x1db2b54  ldr     x22, [x22, #0xe68]
0x1db2b58  cbnz    w8, #0x1db2b60                -> 0x1db2b60
0x1db2b5c  bl      #0x1b646a4                    -> 0x1b646a4
0x1db2b60  ldr     x1, [x21]
0x1db2b64  adrp    x21, #0x418c000
0x1db2b68  ldr     x21, [x21, #0xf88]
0x1db2b6c  mov     x0, x20
0x1db2b70  bl      #0x1fd4d08                    -> 0x1fd4d08  UnityEngine.Object$$Instantiate<object>
0x1db2b74  ldr     x0, [x22]
0x1db2b78  ldr     w8, [x0, #0xe0]
0x1db2b7c  cbnz    w8, #0x1db2b84                -> 0x1db2b84
0x1db2b80  bl      #0x1b646a4                    -> 0x1b646a4
0x1db2b84  ldr     x0, [x21]
0x1db2b88  adrp    x22, #0x4186000
0x1db2b8c  ldr     x22, [x22, #0xef8]
0x1db2b90  mov     w1, wzr
0x1db2b94  mov     x2, xzr
0x1db2b98  bl      #0x1cc5ccc                    -> 0x1cc5ccc  SaveManagement$$LoadInt
0x1db2b9c  cbz     w0, #0x1db2bbc                -> 0x1db2bbc
0x1db2ba0  adrp    x9, #0x4187000
0x1db2ba4  ldr     x8, [x22]
0x1db2ba8  ldr     x9, [x9, #0x688]
0x1db2bac  ldr     x8, [x8, #0xb8]
0x1db2bb0  ldr     x1, [x9]
0x1db2bb4  str     x1, [x8, #0x20]
0x1db2bb8  b       #0x1db2cb8                    -> 0x1db2cb8
0x1db2bbc  adrp    x23, #0x4475000
0x1db2bc0  ldrb    w8, [x23, #0x8c0]
0x1db2bc4  cbnz    w8, #0x1db2bdc                -> 0x1db2bdc
0x1db2bc8  adrp    x0, #0x4186000
0x1db2bcc  ldr     x0, [x0, #0xef8]
0x1db2bd0  bl      #0x1b64570                    -> 0x1b64570
0x1db2bd4  mov     w8, #1
0x1db2bd8  strb    w8, [x23, #0x8c0]
0x1db2bdc  ldr     x8, [x22]
0x1db2be0  ldr     x8, [x8, #0xb8]
0x1db2be4  ldr     x0, [x8]
0x1db2be8  cbz     x0, #0x1db2cd8                -> 0x1db2cd8
0x1db2bec  adrp    x8, #0x418d000
0x1db2bf0  ldr     x8, [x8, #0x3b8]
0x1db2bf4  mov     x2, xzr
0x1db2bf8  ldr     x1, [x8]
0x1db2bfc  bl      #0x1ca8974                    -> 0x1ca8974  GameInformation$$GetSongInformation
0x1db2c00  cbz     x0, #0x1db2cd8                -> 0x1db2cd8
0x1db2c04  mov     w1, wzr
0x1db2c08  mov     x2, xzr
0x1db2c0c  bl      #0x1cb8b38                    -> 0x1cb8b38  SongsItem$$GetLevelStartInfo
0x1db2c10  cbz     x0, #0x1db2cd8                -> 0x1db2cd8
0x1db2c14  adrp    x8, #0x418f000
0x1db2c18  ldr     x8, [x8, #0x410]
0x1db2c1c  adrp    x9, #0x418f000
0x1db2c20  adrp    x10, #0x4187000
0x1db2c24  ldr     x2, [x0, #0x38]
0x1db2c28  ldr     x9, [x9, #0x400]
0x1db2c2c  ldr     x10, [x10, #0x930]
0x1db2c30  ldr     x21, [x8]
0x1db2c34  mov     x20, x0
0x1db2c38  ldr     x1, [x9]
0x1db2c3c  ldr     x3, [x10]
0x1db2c40  mov     x0, x21
0x1db2c44  mov     x4, xzr
0x1db2c48  bl      #0x33088b4                    -> 0x33088b4  System.String$$Concat
0x1db2c4c  str     x0, [x20, #0x50]
0x1db2c50  adrp    x8, #0x418f000
0x1db2c54  ldr     x8, [x8, #0x408]
0x1db2c58  mov     x0, x21
0x1db2c5c  mov     x2, xzr
0x1db2c60  ldr     x1, [x8]
0x1db2c64  bl      #0x32fce8c                    -> 0x32fce8c  System.String$$Concat
0x1db2c68  str     x0, [x20, #0x48]
0x1db2c6c  ldrb    w8, [x23, #0x8c0]
0x1db2c70  cbnz    w8, #0x1db2c88                -> 0x1db2c88
0x1db2c74  adrp    x0, #0x4186000
0x1db2c78  ldr     x0, [x0, #0xef8]
0x1db2c7c  bl      #0x1b64570                    -> 0x1b64570
0x1db2c80  mov     w8, #1
0x1db2c84  strb    w8, [x23, #0x8c0]
0x1db2c88  ldr     x8, [x22]
0x1db2c8c  ldr     x8, [x8, #0xb8]
0x1db2c90  ldr     x9, [x8]
0x1db2c94  cbz     x9, #0x1db2cd8                -> 0x1db2cd8
0x1db2c98  str     x20, [x9, #0x30]
0x1db2c9c  adrp    x9, #0x4188000
0x1db2ca0  ldr     x9, [x9, #0xf40]
0x1db2ca4  ldr     x9, [x9]
0x1db2ca8  str     x9, [x8, #0x20]
0x1db2cac  adrp    x8, #0x4186000
0x1db2cb0  ldr     x8, [x8, #0xe98]
0x1db2cb4  ldr     x1, [x8]
0x1db2cb8  bl      #0x1db2cdc                    -> 0x1db2cdc  SplashScene$$StartNextScene
0x1db2cbc  mov     x1, x0
0x1db2cc0  mov     x0, x19
0x1db2cc4  ldp     x20, x19, [sp, #0x20]
0x1db2cc8  ldp     x22, x21, [sp, #0x10]
0x1db2ccc  mov     x2, xzr
0x1db2cd0  ldp     x30, x23, [sp], #0x30
0x1db2cd4  b       #0x3c6206c                    -> 0x3c6206c
0x1db2cd8  bl      #0x1b647c8                    -> 0x1b647c8
