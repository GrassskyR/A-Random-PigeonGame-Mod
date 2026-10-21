0x1cb4ea0  stp     x30, x21, [sp, #-0x20]!
0x1cb4ea4  stp     x20, x19, [sp, #0x10]
0x1cb4ea8  adrp    x20, #0x4475000
0x1cb4eac  ldrb    w8, [x20, #0x871]
0x1cb4eb0  mov     x19, x0
0x1cb4eb4  tbnz    w8, #0, #0x1cb4ed8            -> 0x0 -> 0x1cb4ed8
0x1cb4eb8  adrp    x0, #0x4187000
0x1cb4ebc  ldr     x0, [x0, #0x6f8]
0x1cb4ec0  bl      #0x1b64570                    -> 0x1b64570
0x1cb4ec4  adrp    x0, #0x4185000
0x1cb4ec8  ldr     x0, [x0, #0x208]
0x1cb4ecc  bl      #0x1b64570                    -> 0x1b64570
0x1cb4ed0  mov     w8, #1
0x1cb4ed4  strb    w8, [x20, #0x871]
0x1cb4ed8  adrp    x20, #0x4475000
0x1cb4edc  ldrb    w8, [x20, #0x8c0]
0x1cb4ee0  ldr     x19, [x19, #0x20]
0x1cb4ee4  cbnz    w8, #0x1cb4efc                -> 0x1cb4efc
0x1cb4ee8  adrp    x0, #0x4186000
0x1cb4eec  ldr     x0, [x0, #0xef8]
0x1cb4ef0  bl      #0x1b64570                    -> 0x1b64570
0x1cb4ef4  mov     w8, #1
0x1cb4ef8  strb    w8, [x20, #0x8c0]
0x1cb4efc  adrp    x8, #0x4186000
0x1cb4f00  ldr     x8, [x8, #0xef8]
0x1cb4f04  ldr     x8, [x8]
0x1cb4f08  ldr     x8, [x8, #0xb8]
0x1cb4f0c  ldr     x0, [x8]
0x1cb4f10  cbz     x0, #0x1cb4f5c                -> 0x1cb4f5c
0x1cb4f14  adrp    x20, #0x4185000
0x1cb4f18  adrp    x21, #0x4187000
0x1cb4f1c  ldr     x20, [x20, #0x208]
0x1cb4f20  ldr     x21, [x21, #0x6f8]
0x1cb4f24  mov     x1, xzr
0x1cb4f28  bl      #0x3c5d744                    -> 0x3c5d744  UnityEngine.Component$$get_transform
0x1cb4f2c  ldr     x8, [x20]
0x1cb4f30  mov     x20, x0
0x1cb4f34  ldr     w9, [x8, #0xe0]
0x1cb4f38  cbnz    w9, #0x1cb4f44                -> 0x1cb4f44
0x1cb4f3c  mov     x0, x8
0x1cb4f40  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb4f44  ldr     x2, [x21]
0x1cb4f48  mov     x0, x19
0x1cb4f4c  mov     x1, x20
0x1cb4f50  ldp     x20, x19, [sp, #0x10]
0x1cb4f54  ldp     x30, x21, [sp], #0x20
0x1cb4f58  b       #0x1fd4f70                    -> 0x1fd4f70
0x1cb4f5c  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb4f60  sub     sp, sp, #0x60
0x1cb4f64  stp     x30, x21, [sp, #0x40]
0x1cb4f68  stp     x20, x19, [sp, #0x50]
0x1cb4f6c  adrp    x21, #0x4475000
0x1cb4f70  adrp    x20, #0x4187000
0x1cb4f74  ldrb    w8, [x21, #0x872]
0x1cb4f78  ldr     x20, [x20, #0x700]
0x1cb4f7c  mov     x19, x0
0x1cb4f80  tbnz    w8, #0, #0x1cb4fb0            -> 0x0 -> 0x1cb4fb0
0x1cb4f84  adrp    x0, #0x4187000
0x1cb4f88  ldr     x0, [x0, #0x6e0]
0x1cb4f8c  bl      #0x1b64570                    -> 0x1b64570
0x1cb4f90  adrp    x0, #0x4187000
0x1cb4f94  ldr     x0, [x0, #0x700]
0x1cb4f98  bl      #0x1b64570                    -> 0x1b64570
0x1cb4f9c  adrp    x0, #0x4187000
0x1cb4fa0  ldr     x0, [x0, #0x6e8]
0x1cb4fa4  bl      #0x1b64570                    -> 0x1b64570
0x1cb4fa8  mov     w8, #1
0x1cb4fac  strb    w8, [x21, #0x872]
0x1cb4fb0  ldr     x0, [x20]
0x1cb4fb4  movi    v0.2d, #0000000000000000
0x1cb4fb8  mov     w8, #-1
0x1cb4fbc  stp     q0, q0, [sp]
0x1cb4fc0  stp     q0, q0, [sp, #0x20]
0x1cb4fc4  stp     xzr, xzr, [sp, #0x10]
0x1cb4fc8  str     xzr, [sp, #8]
0x1cb4fcc  str     x19, [sp, #0x20]
0x1cb4fd0  str     w8, [sp]
0x1cb4fd4  adrp    x20, #0x4187000
0x1cb4fd8  ldr     x8, [x0, #0x38]
0x1cb4fdc  ldr     x20, [x20, #0x6e8]
0x1cb4fe0  mov     x9, sp
0x1cb4fe4  orr     x19, x9, #8
0x1cb4fe8  cbnz    x8, #0x1cb4ff0                -> 0x1cb4ff0
0x1cb4fec  bl      #0x1bc5590                    -> 0x1bc5590
0x1cb4ff0  mov     x0, sp
0x1cb4ff4  bl      #0x1cb66f4                    -> 0x1cb66f4  AntiAddiction.<CheckIfUserInCN>d__6$$MoveNext
0x1cb4ff8  ldr     x1, [x20]
0x1cb4ffc  mov     x0, x19
0x1cb5000  bl      #0x1cbf970                    -> 0x1cbf970
0x1cb5004  ldp     x20, x19, [sp, #0x50]
0x1cb5008  ldp     x30, x21, [sp, #0x40]
0x1cb500c  add     sp, sp, #0x60
0x1cb5010  ret     
0x1cb5014  str     x30, [sp, #-0x30]!
0x1cb5018  stp     x22, x21, [sp, #0x10]
0x1cb501c  stp     x20, x19, [sp, #0x20]
0x1cb5020  adrp    x21, #0x4475000
0x1cb5024  adrp    x22, #0x4187000
0x1cb5028  ldrb    w8, [x21, #0x873]
0x1cb502c  ldr     x22, [x22, #0x708]
0x1cb5030  mov     x19, x1
0x1cb5034  mov     x20, x0
0x1cb5038  tbnz    w8, #0, #0x1cb5050            -> 0x0 -> 0x1cb5050
0x1cb503c  adrp    x0, #0x4187000
0x1cb5040  ldr     x0, [x0, #0x708]
0x1cb5044  bl      #0x1b64570                    -> 0x1b64570
0x1cb5048  mov     w8, #1
0x1cb504c  strb    w8, [x21, #0x873]
0x1cb5050  ldr     x0, [x22]
0x1cb5054  bl      #0x1b647b8                    -> 0x1b647b8
0x1cb5058  mov     x1, xzr
0x1cb505c  mov     x21, x0
0x1cb5060  bl      #0x34c04f0                    -> 0x34c04f0  System.Object$$.ctor
0x1cb5064  str     wzr, [x21, #0x10]
0x1cb5068  stp     x20, x19, [x21, #0x20]
0x1cb506c  mov     x0, x21
0x1cb5070  ldp     x20, x19, [sp, #0x20]
0x1cb5074  ldp     x22, x21, [sp, #0x10]
0x1cb5078  ldr     x30, [sp], #0x30
0x1cb507c  ret     
0x1cb5080  str     x30, [sp, #-0x20]!
0x1cb5084  stp     x20, x19, [sp, #0x10]
0x1cb5088  mov     w19, w1
0x1cb508c  mov     x1, xzr
0x1cb5090  mov     x20, x0
0x1cb5094  bl      #0x34c04f0                    -> 0x34c04f0  System.Object$$.ctor
0x1cb5098  str     w19, [x20, #0x10]
0x1cb509c  ldp     x20, x19, [sp, #0x10]
0x1cb50a0  ldr     x30, [sp], #0x20
0x1cb50a4  ret     
0x1cb50a8  mov     w8, #-1
0x1cb50ac  mov     x1, xzr
0x1cb50b0  str     w8, [x0, #0x28]
0x1cb50b4  b       #0x3c625a0                    -> 0x3c625a0
0x1cb50b8  mov     x1, xzr
0x1cb50bc  b       #0x34c04f0                    -> 0x34c04f0
0x1cb50c0  stp     x30, x23, [sp, #-0x30]!
0x1cb50c4  stp     x22, x21, [sp, #0x10]
0x1cb50c8  stp     x20, x19, [sp, #0x20]
0x1cb50cc  adrp    x22, #0x4475000
0x1cb50d0  adrp    x23, #0x4187000
0x1cb50d4  ldrb    w8, [x22, #0x874]
0x1cb50d8  ldr     x23, [x23, #0x710]
0x1cb50dc  mov     x19, x2
0x1cb50e0  mov     w21, w1
0x1cb50e4  mov     x20, x0
0x1cb50e8  tbnz    w8, #0, #0x1cb510c            -> 0x0 -> 0x1cb510c
0x1cb50ec  adrp    x0, #0x4187000
0x1cb50f0  ldr     x0, [x0, #0x710]
0x1cb50f4  bl      #0x1b64570                    -> 0x1b64570
0x1cb50f8  adrp    x0, #0x4185000
0x1cb50fc  ldr     x0, [x0, #0xb38]
0x1cb5100  bl      #0x1b64570                    -> 0x1b64570
0x1cb5104  mov     w8, #1
0x1cb5108  strb    w8, [x22, #0x874]
0x1cb510c  ldr     x0, [x23]
0x1cb5110  ldr     w8, [x0, #0xe0]
0x1cb5114  cbnz    w8, #0x1cb511c                -> 0x1cb511c
0x1cb5118  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb511c  mov     x0, xzr
0x1cb5120  bl      #0x3a78b10                    -> 0x3a78b10  TapTap.AntiAddiction.AntiAddictionUIKit$$get_AgeRange
0x1cb5124  cmp     w21, #0x1f4
0x1cb5128  b.ne    #0x1cb5140                    -> 0x1cb5140
0x1cb512c  ldr     x8, [x20, #0x18]
0x1cb5130  str     w0, [x20, #0x10]
0x1cb5134  cbz     x8, #0x1cb5178                -> 0x1cb5178
0x1cb5138  str     w0, [x8, #0x28]
0x1cb513c  b       #0x1cb5148                    -> 0x1cb5148
0x1cb5140  mov     w8, #-2
0x1cb5144  str     w8, [x20, #0x10]
0x1cb5148  adrp    x8, #0x4185000
0x1cb514c  ldr     x8, [x8, #0xb38]
0x1cb5150  ldr     x0, [x8]
0x1cb5154  ldr     w8, [x0, #0xe0]
0x1cb5158  cbnz    w8, #0x1cb5160                -> 0x1cb5160
0x1cb515c  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb5160  mov     x0, x19
0x1cb5164  ldp     x20, x19, [sp, #0x20]
0x1cb5168  ldp     x22, x21, [sp, #0x10]
0x1cb516c  mov     x1, xzr
0x1cb5170  ldp     x30, x23, [sp], #0x30
0x1cb5174  b       #0x3c24e10                    -> 0x3c24e10
0x1cb5178  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb517c  b       #0x1cb5184                    -> 0x1cb5184
0x1cb5180  b       #0x1cb5184                    -> 0x1cb5184
0x1cb5184  mov     x21, x0
0x1cb5188  cmp     w1, #1
0x1cb518c  b.ne    #0x1cb51ec                    -> 0x1cb51ec
0x1cb5190  mov     x0, x21
0x1cb5194  bl      #0x3e998d0                    -> 0x3e998d0
0x1cb5198  mov     x21, x0
0x1cb519c  adrp    x0, #0x4185000
0x1cb51a0  ldr     x0, [x0, #0x910]
0x1cb51a4  bl      #0x1b64584                    -> 0x1b64584
0x1cb51a8  ldr     x8, [x21]
0x1cb51ac  ldr     x1, [x8]
0x1cb51b0  bl      #0x1b64bf8                    -> 0x1b64bf8
0x1cb51b4  tbz     w0, #0, #0x1cb51c4            -> 0x0 -> 0x1cb51c4
0x1cb51b8  bl      #0x3e998e0                    -> 0x3e998e0
0x1cb51bc  mov     w8, #-3
0x1cb51c0  b       #0x1cb5144                    -> 0x1cb5144
0x1cb51c4  mov     w0, #8
0x1cb51c8  bl      #0x3e998f0                    -> 0x3e998f0
0x1cb51cc  ldr     x8, [x21]
0x1cb51d0  str     x8, [x0]
0x1cb51d4  adrp    x1, #0x3e9f000
0x1cb51d8  add     x1, x1, #0xc98                ; =0x3e9fc98
0x1cb51dc  mov     x2, xzr
0x1cb51e0  bl      #0x3e99900                    -> 0x3e99900
0x1cb51e4  mov     x21, x0
0x1cb51e8  bl      #0x3e998e0                    -> 0x3e998e0
0x1cb51ec  mov     x0, x21
0x1cb51f0  bl      #0x1c65b3c                    -> 0x1c65b3c
0x1cb51f4  bl      #0x194772c                    -> 0x194772c
0x1cb51f8  ldr     w8, [x0, #0x10]
0x1cb51fc  cmn     w8, #1
0x1cb5200  cset    w0, ne
0x1cb5204  ret     
0x1cb5208  mov     x1, xzr
0x1cb520c  b       #0x34c04f0                    -> 0x34c04f0
0x1cb5210  ldr     w8, [x0, #0x10]
0x1cb5214  and     w9, w1, #1
0x1cb5218  strb    w9, [x0, #0x14]
0x1cb521c  add     w8, w8, #1
0x1cb5220  str     w8, [x0, #0x10]
0x1cb5224  ret     
0x1cb5228  ldr     w8, [x0, #0x10]
0x1cb522c  and     w9, w1, #1
0x1cb5230  strb    w9, [x0, #0x15]
0x1cb5234  add     w8, w8, #1
0x1cb5238  str     w8, [x0, #0x10]
0x1cb523c  ret     
0x1cb5240  ldr     w8, [x0, #0x10]
0x1cb5244  cmp     w8, #1
0x1cb5248  cset    w0, gt
0x1cb524c  ret     
0x1cb5250  sub     sp, sp, #0x50
0x1cb5254  stp     x30, x23, [sp, #0x20]
0x1cb5258  stp     x22, x21, [sp, #0x30]
0x1cb525c  stp     x20, x19, [sp, #0x40]
0x1cb5260  adrp    x20, #0x4475000
0x1cb5264  ldrb    w8, [x20, #0x875]
0x1cb5268  mov     x19, x0
0x1cb526c  tbnz    w8, #0, #0x1cb5344            -> 0x0 -> 0x1cb5344
0x1cb5270  adrp    x0, #0x4187000
0x1cb5274  ldr     x0, [x0, #0x718]
0x1cb5278  bl      #0x1b64570                    -> 0x1b64570
0x1cb527c  adrp    x0, #0x4187000
0x1cb5280  ldr     x0, [x0, #0x720]
0x1cb5284  bl      #0x1b64570                    -> 0x1b64570
0x1cb5288  adrp    x0, #0x4187000
0x1cb528c  ldr     x0, [x0, #0x710]
0x1cb5290  bl      #0x1b64570                    -> 0x1b64570
0x1cb5294  adrp    x0, #0x4187000
0x1cb5298  ldr     x0, [x0, #0x728]
0x1cb529c  bl      #0x1b64570                    -> 0x1b64570
0x1cb52a0  adrp    x0, #0x4187000
0x1cb52a4  ldr     x0, [x0, #0x730]
0x1cb52a8  bl      #0x1b64570                    -> 0x1b64570
0x1cb52ac  adrp    x0, #0x4187000
0x1cb52b0  ldr     x0, [x0, #0x738]
0x1cb52b4  bl      #0x1b64570                    -> 0x1b64570
0x1cb52b8  adrp    x0, #0x4187000
0x1cb52bc  ldr     x0, [x0, #0x740]
0x1cb52c0  bl      #0x1b64570                    -> 0x1b64570
0x1cb52c4  adrp    x0, #0x4186000
0x1cb52c8  ldr     x0, [x0, #0xef8]
0x1cb52cc  bl      #0x1b64570                    -> 0x1b64570
0x1cb52d0  adrp    x0, #0x4186000
0x1cb52d4  ldr     x0, [x0, #0xe68]
0x1cb52d8  bl      #0x1b64570                    -> 0x1b64570
0x1cb52dc  adrp    x0, #0x4187000
0x1cb52e0  ldr     x0, [x0, #0x748]
0x1cb52e4  bl      #0x1b64570                    -> 0x1b64570
0x1cb52e8  adrp    x0, #0x4187000
0x1cb52ec  ldr     x0, [x0, #0x750]
0x1cb52f0  bl      #0x1b64570                    -> 0x1b64570
0x1cb52f4  adrp    x0, #0x4187000
0x1cb52f8  ldr     x0, [x0, #0x758]
0x1cb52fc  bl      #0x1b64570                    -> 0x1b64570
0x1cb5300  adrp    x0, #0x4187000
0x1cb5304  ldr     x0, [x0, #0x760]
0x1cb5308  bl      #0x1b64570                    -> 0x1b64570
0x1cb530c  adrp    x0, #0x4187000
0x1cb5310  ldr     x0, [x0, #0x768]
0x1cb5314  bl      #0x1b64570                    -> 0x1b64570
0x1cb5318  adrp    x0, #0x4187000
0x1cb531c  ldr     x0, [x0, #0x770]
0x1cb5320  bl      #0x1b64570                    -> 0x1b64570
0x1cb5324  adrp    x0, #0x4187000
0x1cb5328  ldr     x0, [x0, #0x778]
0x1cb532c  bl      #0x1b64570                    -> 0x1b64570
0x1cb5330  adrp    x0, #0x4187000
0x1cb5334  ldr     x0, [x0, #0x780]
0x1cb5338  bl      #0x1b64570                    -> 0x1b64570
0x1cb533c  mov     w8, #1
0x1cb5340  strb    w8, [x20, #0x875]
0x1cb5344  str     wzr, [sp, #0x18]
0x1cb5348  str     wzr, [sp, #0x10]
0x1cb534c  stp     xzr, xzr, [sp]
0x1cb5350  ldr     w8, [x19]
0x1cb5354  ldr     x20, [x19, #0x20]
0x1cb5358  cmp     w8, #3
0x1cb535c  b.hi    #0x1cb5448                    -> 0x1cb5448
0x1cb5360  adrp    x9, #0xc36000
0x1cb5364  add     x9, x9, #0x2b4                ; =0xc362b4
0x1cb5368  adr     x10, #0x1cb5378
0x1cb536c  ldrb    w11, [x9, x8]
0x1cb5370  add     x10, x10, x11, lsl #2
0x1cb5374  br      x10
0x1cb5378  ldr     w8, [x19, #0x30]
0x1cb537c  mov     w9, #-1
0x1cb5380  str     w8, [sp, #0x18]
0x1cb5384  str     wzr, [x19, #0x30]
0x1cb5388  str     w9, [x19]
0x1cb538c  b       #0x1cb54b8                    -> 0x1cb54b8
0x1cb5390  ldur    q0, [x19, #0x38]
0x1cb5394  mov     w8, #-1
0x1cb5398  str     q0, [sp]
0x1cb539c  stp     xzr, xzr, [x19, #0x38]
0x1cb53a0  str     w8, [x19]
0x1cb53a4  b       #0x1cb57a8                    -> 0x1cb57a8
0x1cb53a8  ldur    q0, [x19, #0x38]
0x1cb53ac  mov     w8, #-1
0x1cb53b0  str     q0, [sp]
0x1cb53b4  stp     xzr, xzr, [x19, #0x38]
0x1cb53b8  str     w8, [x19]
0x1cb53bc  adrp    x20, #0x4475000
0x1cb53c0  ldrb    w8, [x20, #0x8c6]
0x1cb53c4  cbnz    w8, #0x1cb53dc                -> 0x1cb53dc
0x1cb53c8  adrp    x0, #0x4187000
0x1cb53cc  ldr     x0, [x0, #0x788]
0x1cb53d0  bl      #0x1b64570                    -> 0x1b64570
0x1cb53d4  mov     w8, #1
0x1cb53d8  strb    w8, [x20, #0x8c6]
0x1cb53dc  ldr     x20, [sp]
0x1cb53e0  cbz     x20, #0x1cb59c0               -> 0x1cb59c0
0x1cb53e4  adrp    x10, #0x4187000
0x1cb53e8  ldr     x8, [x20]
0x1cb53ec  ldrh    w21, [sp, #8]
0x1cb53f0  ldr     x10, [x10, #0x788]
0x1cb53f4  ldrh    w9, [x8, #0x12e]
0x1cb53f8  ldr     x1, [x10]
0x1cb53fc  cbz     x9, #0x1cb5420                -> 0x1cb5420
0x1cb5400  ldr     x10, [x8, #0xb0]
0x1cb5404  add     x10, x10, #8                  ; =0x4187008
0x1cb5408  ldur    x11, [x10, #-8]
0x1cb540c  cmp     x11, x1
0x1cb5410  b.eq    #0x1cb5764                    -> 0x1cb5764
0x1cb5414  subs    x9, x9, #1
0x1cb5418  add     x10, x10, #0x10               ; =0x4187010
0x1cb541c  b.ne    #0x1cb5408                    -> 0x1cb5408
0x1cb5420  mov     w2, #2
0x1cb5424  mov     x0, x20
0x1cb5428  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb542c  b       #0x1cb5774                    -> 0x1cb5774
0x1cb5430  ldr     w8, [x19, #0x30]
0x1cb5434  mov     w9, #-1
0x1cb5438  str     w8, [sp, #0x18]
0x1cb543c  str     wzr, [x19, #0x30]
0x1cb5440  str     w9, [x19]
0x1cb5444  b       #0x1cb55a4                    -> 0x1cb55a4
0x1cb5448  adrp    x8, #0x4187000
0x1cb544c  ldr     x8, [x8, #0x758]
0x1cb5450  ldr     x0, [x8]
0x1cb5454  bl      #0x1b647b8                    -> 0x1b647b8
0x1cb5458  mov     x21, x0
0x1cb545c  mov     x1, xzr
0x1cb5460  bl      #0x34c04f0                    -> 0x34c04f0  System.Object$$.ctor
0x1cb5464  str     x21, [x19, #0x28]
0x1cb5468  cbz     x21, #0x1cb5b18               -> 0x1cb5b18
0x1cb546c  ldr     x8, [x19, #0x20]
0x1cb5470  str     x8, [x21, #0x18]
0x1cb5474  adrp    x8, #0x4187000
0x1cb5478  ldr     x8, [x8, #0x760]
0x1cb547c  ldr     x0, [x8]
0x1cb5480  ldr     w8, [x0, #0xe0]
0x1cb5484  cbnz    w8, #0x1cb548c                -> 0x1cb548c
0x1cb5488  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb548c  mov     x0, xzr
0x1cb5490  bl      #0x3ab25b0                    -> 0x3ab25b0  Cysharp.Threading.Tasks.UniTask$$Yield
0x1cb5494  str     w0, [sp, #0x10]
0x1cb5498  add     x0, sp, #0x10
0x1cb549c  mov     x1, xzr
0x1cb54a0  bl      #0x3abbe90                    -> 0x3abbe90  Cysharp.Threading.Tasks.YieldAwaitable$$GetAwaiter
0x1cb54a4  str     w0, [sp, #0x18]
0x1cb54a8  add     x0, sp, #0x18
0x1cb54ac  mov     x1, xzr
0x1cb54b0  bl      #0x3abbe98                    -> 0x3abbe98  Cysharp.Threading.Tasks.YieldAwaitable.Awaiter$$get_IsCompleted
0x1cb54b4  tbz     w0, #0, #0x1cb5738            -> 0x0 -> 0x1cb5738
0x1cb54b8  add     x0, sp, #0x18
0x1cb54bc  mov     x1, xzr
0x1cb54c0  bl      #0x3abbea0                    -> 0x3abbea0  Cysharp.Threading.Tasks.YieldAwaitable.Awaiter$$GetResult
0x1cb54c4  ldr     x8, [x19, #0x28]
0x1cb54c8  cbz     x8, #0x1cb5b0c                -> 0x1cb5b0c
0x1cb54cc  mov     w9, #-1
0x1cb54d0  str     w9, [x8, #0x10]
0x1cb54d4  adrp    x8, #0x4187000
0x1cb54d8  ldr     x8, [x8, #0x720]
0x1cb54dc  ldr     x0, [x8]
0x1cb54e0  bl      #0x1b647b8                    -> 0x1b647b8
0x1cb54e4  mov     x21, x0
0x1cb54e8  mov     x1, xzr
0x1cb54ec  bl      #0x3a77b0c                    -> 0x3a77b0c  TapTap.AntiAddiction.Model.AntiAddictionConfig$$.ctor
0x1cb54f0  cbz     x21, #0x1cb5b10               -> 0x1cb5b10
0x1cb54f4  adrp    x8, #0x4187000
0x1cb54f8  ldr     x8, [x8, #0x780]
0x1cb54fc  adrp    x9, #0x4187000
0x1cb5500  ldr     x8, [x8]
0x1cb5504  ldr     x9, [x9, #0x718]
0x1cb5508  strb    wzr, [x21, #0x19]
0x1cb550c  str     x8, [x21, #0x10]
0x1cb5510  ldr     x23, [x19, #0x28]
0x1cb5514  ldr     x0, [x9]
0x1cb5518  bl      #0x1b647b8                    -> 0x1b647b8
0x1cb551c  adrp    x8, #0x4187000
0x1cb5520  ldr     x8, [x8, #0x750]
0x1cb5524  mov     x22, x0
0x1cb5528  ldr     x2, [x8]
0x1cb552c  mov     x1, x23
0x1cb5530  mov     x3, xzr
0x1cb5534  bl      #0x21c8534                    -> 0x21c8534  System.Action<int, object>$$.ctor
0x1cb5538  adrp    x8, #0x4187000
0x1cb553c  ldr     x8, [x8, #0x710]
0x1cb5540  ldr     x0, [x8]
0x1cb5544  ldr     w8, [x0, #0xe0]
0x1cb5548  cbnz    w8, #0x1cb5550                -> 0x1cb5550
0x1cb554c  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb5550  mov     x0, x21
0x1cb5554  mov     x1, x22
0x1cb5558  mov     x2, xzr
0x1cb555c  bl      #0x3a78580                    -> 0x3a78580  TapTap.AntiAddiction.AntiAddictionUIKit$$Init
0x1cb5560  adrp    x8, #0x4187000
0x1cb5564  ldr     x8, [x8, #0x760]
0x1cb5568  ldr     x0, [x8]
0x1cb556c  ldr     w8, [x0, #0xe0]
0x1cb5570  cbnz    w8, #0x1cb5578                -> 0x1cb5578
0x1cb5574  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb5578  mov     x0, xzr
0x1cb557c  bl      #0x3ab25b0                    -> 0x3ab25b0  Cysharp.Threading.Tasks.UniTask$$Yield
0x1cb5580  str     w0, [sp, #0x10]
0x1cb5584  add     x0, sp, #0x10
0x1cb5588  mov     x1, xzr
0x1cb558c  bl      #0x3abbe90                    -> 0x3abbe90  Cysharp.Threading.Tasks.YieldAwaitable$$GetAwaiter
0x1cb5590  str     w0, [sp, #0x18]
0x1cb5594  add     x0, sp, #0x18
0x1cb5598  mov     x1, xzr
0x1cb559c  bl      #0x3abbe98                    -> 0x3abbe98  Cysharp.Threading.Tasks.YieldAwaitable.Awaiter$$get_IsCompleted
0x1cb55a0  tbz     w0, #0, #0x1cb55cc            -> 0x0 -> 0x1cb55cc
0x1cb55a4  add     x0, sp, #0x18
0x1cb55a8  mov     x1, xzr
0x1cb55ac  bl      #0x3abbea0                    -> 0x3abbea0  Cysharp.Threading.Tasks.YieldAwaitable.Awaiter$$GetResult
0x1cb55b0  cbz     x20, #0x1cb5b08               -> 0x1cb5b08
0x1cb55b4  ldr     w8, [x20, #0x28]
0x1cb55b8  tbnz    w8, #0x1f, #0x1cb55fc         -> 0x1f -> 0x1cb55fc
0x1cb55bc  ldr     x9, [x19, #0x28]
0x1cb55c0  cbz     x9, #0x1cb5b14                -> 0x1cb5b14
0x1cb55c4  str     w8, [x9, #0x10]
0x1cb55c8  b       #0x1cb583c                    -> 0x1cb583c
0x1cb55cc  mov     w8, #1
0x1cb55d0  str     w8, [x19]
0x1cb55d4  ldr     w8, [sp, #0x18]
0x1cb55d8  add     x0, x19, #8
0x1cb55dc  str     w8, [x19, #0x30]
0x1cb55e0  adrp    x8, #0x4187000
0x1cb55e4  ldr     x8, [x8, #0x728]
0x1cb55e8  ldr     x3, [x8]
0x1cb55ec  add     x1, sp, #0x18
0x1cb55f0  mov     x2, x19
0x1cb55f4  bl      #0x1cbfac4                    -> 0x1cbfac4
0x1cb55f8  b       #0x1cb5a70                    -> 0x1cb5a70
0x1cb55fc  adrp    x8, #0x4186000
0x1cb5600  ldr     x8, [x8, #0xef8]
0x1cb5604  adrp    x9, #0x4187000
0x1cb5608  ldr     x8, [x8]
0x1cb560c  ldr     x9, [x9, #0x710]
0x1cb5610  ldr     x8, [x8, #0xb8]
0x1cb5614  ldr     x0, [x9]
0x1cb5618  ldr     x21, [x8, #8]
0x1cb561c  ldr     w9, [x0, #0xe0]
0x1cb5620  cbnz    w9, #0x1cb5628                -> 0x1cb5628
0x1cb5624  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb5628  mov     x0, x21
0x1cb562c  mov     x1, xzr
0x1cb5630  bl      #0x3a78708                    -> 0x3a78708  TapTap.AntiAddiction.AntiAddictionUIKit$$StartupWithTapTap
0x1cb5634  adrp    x8, #0x4187000
0x1cb5638  ldr     x22, [x19, #0x28]
0x1cb563c  ldr     x8, [x8, #0x740]
0x1cb5640  ldr     x0, [x8]
0x1cb5644  bl      #0x1b647b8                    -> 0x1b647b8
0x1cb5648  adrp    x8, #0x4187000
0x1cb564c  ldr     x8, [x8, #0x748]
0x1cb5650  mov     x21, x0
0x1cb5654  ldr     x2, [x8]
0x1cb5658  mov     x1, x22
0x1cb565c  mov     x3, xzr
0x1cb5660  bl      #0x2c503d8                    -> 0x2c503d8  System.Func<bool>$$.ctor
0x1cb5664  adrp    x22, #0x4187000
0x1cb5668  ldr     x22, [x22, #0x760]
0x1cb566c  ldr     x0, [x22]
0x1cb5670  ldr     w8, [x0, #0xe0]
0x1cb5674  cbnz    w8, #0x1cb567c                -> 0x1cb567c
0x1cb5678  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb567c  mov     w1, #8
0x1cb5680  mov     x0, x21
0x1cb5684  mov     x2, xzr
0x1cb5688  mov     x3, xzr
0x1cb568c  bl      #0x3ab47a4                    -> 0x3ab47a4  Cysharp.Threading.Tasks.UniTask$$WaitUntil
0x1cb5690  adrp    x21, #0x4475000
0x1cb5694  ldrb    w8, [x21, #0x8c4]
0x1cb5698  stp     x0, x1, [sp]
0x1cb569c  cbnz    w8, #0x1cb56b4                -> 0x1cb56b4
0x1cb56a0  adrp    x0, #0x4187000
0x1cb56a4  ldr     x0, [x0, #0x760]
0x1cb56a8  bl      #0x1b64570                    -> 0x1b64570
0x1cb56ac  mov     w8, #1
0x1cb56b0  strb    w8, [x21, #0x8c4]
0x1cb56b4  ldr     x0, [x22]
0x1cb56b8  ldr     w8, [x0, #0xe0]
0x1cb56bc  cbnz    w8, #0x1cb56c4                -> 0x1cb56c4
0x1cb56c0  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb56c4  adrp    x21, #0x4475000
0x1cb56c8  ldrb    w8, [x21, #0x8c5]
0x1cb56cc  cbnz    w8, #0x1cb56e4                -> 0x1cb56e4
0x1cb56d0  adrp    x0, #0x4187000
0x1cb56d4  ldr     x0, [x0, #0x788]
0x1cb56d8  bl      #0x1b64570                    -> 0x1b64570
0x1cb56dc  mov     w8, #1
0x1cb56e0  strb    w8, [x21, #0x8c5]
0x1cb56e4  ldr     x21, [sp]
0x1cb56e8  cbz     x21, #0x1cb57a8               -> 0x1cb57a8
0x1cb56ec  adrp    x10, #0x4187000
0x1cb56f0  ldr     x8, [x21]
0x1cb56f4  ldrh    w22, [sp, #8]
0x1cb56f8  ldr     x10, [x10, #0x788]
0x1cb56fc  ldrh    w9, [x8, #0x12e]
0x1cb5700  ldr     x1, [x10]
0x1cb5704  cbz     x9, #0x1cb5728                -> 0x1cb5728
0x1cb5708  ldr     x10, [x8, #0xb0]
0x1cb570c  add     x10, x10, #8                  ; =0x4187008
0x1cb5710  ldur    x11, [x10, #-8]
0x1cb5714  cmp     x11, x1
0x1cb5718  b.eq    #0x1cb5788                    -> 0x1cb5788
0x1cb571c  subs    x9, x9, #1
0x1cb5720  add     x10, x10, #0x10               ; =0x4187010
0x1cb5724  b.ne    #0x1cb5710                    -> 0x1cb5710
0x1cb5728  mov     x0, x21
0x1cb572c  mov     w2, wzr
0x1cb5730  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb5734  b       #0x1cb5794                    -> 0x1cb5794
0x1cb5738  str     wzr, [x19]
0x1cb573c  ldr     w8, [sp, #0x18]
0x1cb5740  add     x0, x19, #8
0x1cb5744  str     w8, [x19, #0x30]
0x1cb5748  adrp    x8, #0x4187000
0x1cb574c  ldr     x8, [x8, #0x728]
0x1cb5750  ldr     x3, [x8]
0x1cb5754  add     x1, sp, #0x18
0x1cb5758  mov     x2, x19
0x1cb575c  bl      #0x1cbfac4                    -> 0x1cbfac4
0x1cb5760  b       #0x1cb5a70                    -> 0x1cb5a70
0x1cb5764  ldr     w9, [x10]
0x1cb5768  add     w9, w9, #2
0x1cb576c  add     x8, x8, w9, sxtw #4
0x1cb5770  add     x0, x8, #0x138                ; =0x4187138
0x1cb5774  ldp     x8, x2, [x0]
0x1cb5778  mov     x0, x20
0x1cb577c  mov     w1, w21
0x1cb5780  blr     x8
0x1cb5784  b       #0x1cb59bc                    -> 0x1cb59bc
0x1cb5788  ldrsw   x9, [x10]
0x1cb578c  add     x8, x8, x9, lsl #4
0x1cb5790  add     x0, x8, #0x138                ; =0x4187138
0x1cb5794  ldp     x8, x2, [x0]
0x1cb5798  mov     x0, x21
0x1cb579c  mov     w1, w22
0x1cb57a0  blr     x8
0x1cb57a4  cbz     w0, #0x1cb5a84                -> 0x1cb5a84
0x1cb57a8  adrp    x21, #0x4475000
0x1cb57ac  ldrb    w8, [x21, #0x8c6]
0x1cb57b0  cbnz    w8, #0x1cb57c8                -> 0x1cb57c8
0x1cb57b4  adrp    x0, #0x4187000
0x1cb57b8  ldr     x0, [x0, #0x788]
0x1cb57bc  bl      #0x1b64570                    -> 0x1b64570
0x1cb57c0  mov     w8, #1
0x1cb57c4  strb    w8, [x21, #0x8c6]
0x1cb57c8  ldr     x21, [sp]
0x1cb57cc  cbz     x21, #0x1cb583c               -> 0x1cb583c
0x1cb57d0  adrp    x10, #0x4187000
0x1cb57d4  ldr     x8, [x21]
0x1cb57d8  ldrh    w22, [sp, #8]
0x1cb57dc  ldr     x10, [x10, #0x788]
0x1cb57e0  ldrh    w9, [x8, #0x12e]
0x1cb57e4  ldr     x1, [x10]
0x1cb57e8  cbz     x9, #0x1cb580c                -> 0x1cb580c
0x1cb57ec  ldr     x10, [x8, #0xb0]
0x1cb57f0  add     x10, x10, #8                  ; =0x4187008
0x1cb57f4  ldur    x11, [x10, #-8]
0x1cb57f8  cmp     x11, x1
0x1cb57fc  b.eq    #0x1cb581c                    -> 0x1cb581c
0x1cb5800  subs    x9, x9, #1
0x1cb5804  add     x10, x10, #0x10               ; =0x4187010
0x1cb5808  b.ne    #0x1cb57f4                    -> 0x1cb57f4
0x1cb580c  mov     w2, #2
0x1cb5810  mov     x0, x21
0x1cb5814  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb5818  b       #0x1cb582c                    -> 0x1cb582c
0x1cb581c  ldr     w9, [x10]
0x1cb5820  add     w9, w9, #2
0x1cb5824  add     x8, x8, w9, sxtw #4
0x1cb5828  add     x0, x8, #0x138                ; =0x4187138
0x1cb582c  ldp     x8, x2, [x0]
0x1cb5830  mov     x0, x21
0x1cb5834  mov     w1, w22
0x1cb5838  blr     x8
0x1cb583c  ldr     x8, [x19, #0x28]
0x1cb5840  cbz     x8, #0x1cb5b04                -> 0x1cb5b04
0x1cb5844  ldr     w8, [x8, #0x10]
0x1cb5848  cmp     w8, #0x12
0x1cb584c  b.ge    #0x1cb5894                    -> 0x1cb5894
0x1cb5850  tbnz    w8, #0x1f, #0x1cb58cc         -> 0x1f -> 0x1cb58cc
0x1cb5854  adrp    x8, #0x4186000
0x1cb5858  ldr     x8, [x8, #0xe68]
0x1cb585c  ldr     x0, [x8]
0x1cb5860  ldr     w8, [x0, #0xe0]
0x1cb5864  cbnz    w8, #0x1cb586c                -> 0x1cb586c
0x1cb5868  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb586c  adrp    x8, #0x4187000
0x1cb5870  ldr     x8, [x8, #0x768]
0x1cb5874  ldr     x0, [x8]
0x1cb5878  mov     w1, #1
0x1cb587c  mov     x2, xzr
0x1cb5880  bl      #0x1cc5034                    -> 0x1cc5034  SaveManagement$$SaveInt
0x1cb5884  cbz     x20, #0x1cb5b1c               -> 0x1cb5b1c
0x1cb5888  mov     x0, x20
0x1cb588c  bl      #0x1cb4ea0                    -> 0x1cb4ea0  AntiAddiction$$LoadAntiAddiction
0x1cb5890  b       #0x1cb58c4                    -> 0x1cb58c4
0x1cb5894  adrp    x8, #0x4186000
0x1cb5898  ldr     x8, [x8, #0xe68]
0x1cb589c  ldr     x0, [x8]
0x1cb58a0  ldr     w8, [x0, #0xe0]
0x1cb58a4  cbnz    w8, #0x1cb58ac                -> 0x1cb58ac
0x1cb58a8  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb58ac  adrp    x8, #0x4187000
0x1cb58b0  ldr     x8, [x8, #0x768]
0x1cb58b4  ldr     x0, [x8]
0x1cb58b8  mov     w1, wzr
0x1cb58bc  mov     x2, xzr
0x1cb58c0  bl      #0x1cc5034                    -> 0x1cc5034  SaveManagement$$SaveInt
0x1cb58c4  mov     w20, #1
0x1cb58c8  b       #0x1cb59c0                    -> 0x1cb59c0
0x1cb58cc  cmn     w8, #3
0x1cb58d0  b.ne    #0x1cb59bc                    -> 0x1cb59bc
0x1cb58d4  adrp    x8, #0x4187000
0x1cb58d8  adrp    x9, #0x4187000
0x1cb58dc  ldr     x8, [x8, #0x778]
0x1cb58e0  ldr     x9, [x9, #0x770]
0x1cb58e4  ldr     x0, [x8]
0x1cb58e8  ldr     x1, [x9]
0x1cb58ec  mov     x2, xzr
0x1cb58f0  bl      #0x1cced4c                    -> 0x1cced4c  PhigrosUI$$ShowOkMessageBox
0x1cb58f4  adrp    x22, #0x4187000
0x1cb58f8  ldr     x22, [x22, #0x760]
0x1cb58fc  mov     x20, x0
0x1cb5900  mov     x21, x1
0x1cb5904  ldr     x0, [x22]
0x1cb5908  ldr     w8, [x0, #0xe0]
0x1cb590c  cbnz    w8, #0x1cb5914                -> 0x1cb5914
0x1cb5910  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb5914  adrp    x23, #0x4475000
0x1cb5918  ldrb    w8, [x23, #0x8c4]
0x1cb591c  stp     x20, x21, [sp]
0x1cb5920  cbnz    w8, #0x1cb5938                -> 0x1cb5938
0x1cb5924  adrp    x0, #0x4187000
0x1cb5928  ldr     x0, [x0, #0x760]
0x1cb592c  bl      #0x1b64570                    -> 0x1b64570
0x1cb5930  mov     w8, #1
0x1cb5934  strb    w8, [x23, #0x8c4]
0x1cb5938  ldr     x0, [x22]
0x1cb593c  ldr     w8, [x0, #0xe0]
0x1cb5940  cbnz    w8, #0x1cb5948                -> 0x1cb5948
0x1cb5944  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb5948  adrp    x20, #0x4475000
0x1cb594c  ldrb    w8, [x20, #0x8c5]
0x1cb5950  cbnz    w8, #0x1cb5968                -> 0x1cb5968
0x1cb5954  adrp    x0, #0x4187000
0x1cb5958  ldr     x0, [x0, #0x788]
0x1cb595c  bl      #0x1b64570                    -> 0x1b64570
0x1cb5960  mov     w8, #1
0x1cb5964  strb    w8, [x20, #0x8c5]
0x1cb5968  ldr     x20, [sp]
0x1cb596c  cbz     x20, #0x1cb53bc               -> 0x1cb53bc
0x1cb5970  adrp    x10, #0x4187000
0x1cb5974  ldr     x8, [x20]
0x1cb5978  ldrh    w21, [sp, #8]
0x1cb597c  ldr     x10, [x10, #0x788]
0x1cb5980  ldrh    w9, [x8, #0x12e]
0x1cb5984  ldr     x1, [x10]
0x1cb5988  cbz     x9, #0x1cb59ac                -> 0x1cb59ac
0x1cb598c  ldr     x10, [x8, #0xb0]
0x1cb5990  add     x10, x10, #8                  ; =0x4187008
0x1cb5994  ldur    x11, [x10, #-8]
0x1cb5998  cmp     x11, x1
0x1cb599c  b.eq    #0x1cb5ab4                    -> 0x1cb5ab4
0x1cb59a0  subs    x9, x9, #1
0x1cb59a4  add     x10, x10, #0x10               ; =0x4187010
0x1cb59a8  b.ne    #0x1cb5994                    -> 0x1cb5994
0x1cb59ac  mov     x0, x20
0x1cb59b0  mov     w2, wzr
0x1cb59b4  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb59b8  b       #0x1cb5ac0                    -> 0x1cb5ac0
0x1cb59bc  mov     w20, wzr
0x1cb59c0  ldr     x21, [x19, #8]
0x1cb59c4  mov     w8, #-2
0x1cb59c8  str     w8, [x19]
0x1cb59cc  str     xzr, [x19, #0x28]
0x1cb59d0  cbz     x21, #0x1cb5a48               -> 0x1cb5a48
0x1cb59d4  adrp    x8, #0x4187000
0x1cb59d8  ldr     x8, [x8, #0x738]
0x1cb59dc  ldr     x8, [x8]
0x1cb59e0  ldr     x0, [x8, #0x20]
0x1cb59e4  ldrb    w8, [x0, #0x135]
0x1cb59e8  tbnz    w8, #0, #0x1cb59f0            -> 0x0 -> 0x1cb59f0
0x1cb59ec  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb59f0  ldr     x8, [x0, #0xc0]
0x1cb59f4  ldr     x1, [x8, #8]
0x1cb59f8  ldrb    w8, [x1, #0x135]
0x1cb59fc  tbnz    w8, #0, #0x1cb5a0c            -> 0x0 -> 0x1cb5a0c
0x1cb5a00  mov     x0, x1
0x1cb5a04  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb5a08  mov     x1, x0
0x1cb5a0c  ldr     x8, [x21]
0x1cb5a10  ldrh    w9, [x8, #0x12e]
0x1cb5a14  cbz     x9, #0x1cb5a38                -> 0x1cb5a38
0x1cb5a18  ldr     x10, [x8, #0xb0]
0x1cb5a1c  add     x10, x10, #8                  ; =0x4187008
0x1cb5a20  ldur    x11, [x10, #-8]
0x1cb5a24  cmp     x11, x1
0x1cb5a28  b.eq    #0x1cb5a50                    -> 0x1cb5a50
0x1cb5a2c  subs    x9, x9, #1
0x1cb5a30  add     x10, x10, #0x10               ; =0x4187010
0x1cb5a34  b.ne    #0x1cb5a20                    -> 0x1cb5a20
0x1cb5a38  mov     w2, #2
0x1cb5a3c  mov     x0, x21
0x1cb5a40  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb5a44  b       #0x1cb5a60                    -> 0x1cb5a60
0x1cb5a48  strb    w20, [x19, #0x18]
0x1cb5a4c  b       #0x1cb5a70                    -> 0x1cb5a70
0x1cb5a50  ldr     w9, [x10]
0x1cb5a54  add     w9, w9, #2
0x1cb5a58  add     x8, x8, w9, sxtw #4
0x1cb5a5c  add     x0, x8, #0x138                ; =0x4187138
0x1cb5a60  ldp     x8, x2, [x0]
0x1cb5a64  mov     x0, x21
0x1cb5a68  mov     w1, w20
0x1cb5a6c  blr     x8
0x1cb5a70  ldp     x20, x19, [sp, #0x40]
0x1cb5a74  ldp     x22, x21, [sp, #0x30]
0x1cb5a78  ldp     x30, x23, [sp, #0x20]
0x1cb5a7c  add     sp, sp, #0x50
0x1cb5a80  ret     
0x1cb5a84  mov     w8, #2
0x1cb5a88  str     w8, [x19]
0x1cb5a8c  ldr     q0, [sp]
0x1cb5a90  adrp    x8, #0x4187000
0x1cb5a94  add     x0, x19, #8
0x1cb5a98  stur    q0, [x19, #0x38]
0x1cb5a9c  ldr     x8, [x8, #0x730]
0x1cb5aa0  ldr     x3, [x8]
0x1cb5aa4  mov     x1, sp
0x1cb5aa8  mov     x2, x19
0x1cb5aac  bl      #0x1cbfbd8                    -> 0x1cbfbd8
0x1cb5ab0  b       #0x1cb5a70                    -> 0x1cb5a70
0x1cb5ab4  ldrsw   x9, [x10]
0x1cb5ab8  add     x8, x8, x9, lsl #4
0x1cb5abc  add     x0, x8, #0x138                ; =0x4187138
0x1cb5ac0  ldp     x8, x2, [x0]
0x1cb5ac4  mov     x0, x20
0x1cb5ac8  mov     w1, w21
0x1cb5acc  blr     x8
0x1cb5ad0  cbnz    w0, #0x1cb53bc                -> 0x1cb53bc
0x1cb5ad4  mov     w8, #3
0x1cb5ad8  str     w8, [x19]
0x1cb5adc  ldr     q0, [sp]
0x1cb5ae0  adrp    x8, #0x4187000
0x1cb5ae4  add     x0, x19, #8
0x1cb5ae8  stur    q0, [x19, #0x38]
0x1cb5aec  ldr     x8, [x8, #0x730]
0x1cb5af0  ldr     x3, [x8]
0x1cb5af4  mov     x1, sp
0x1cb5af8  mov     x2, x19
0x1cb5afc  bl      #0x1cbfbd8                    -> 0x1cbfbd8
0x1cb5b00  b       #0x1cb5a70                    -> 0x1cb5a70
0x1cb5b04  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb5b08  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb5b0c  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb5b10  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb5b14  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb5b18  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb5b1c  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb5b20  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b24  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b28  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b2c  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b30  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b34  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b38  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b3c  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b40  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b44  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b48  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b4c  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b50  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b54  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b58  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b5c  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b60  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b64  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b68  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b6c  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b70  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b74  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b78  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b7c  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b80  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b84  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b88  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b8c  b       #0x1cb5b90                    -> 0x1cb5b90
0x1cb5b90  mov     x20, x0
0x1cb5b94  cmp     w1, #1
0x1cb5b98  b.ne    #0x1cb5ca8                    -> 0x1cb5ca8
0x1cb5b9c  mov     x0, x20
0x1cb5ba0  bl      #0x3e998d0                    -> 0x3e998d0
0x1cb5ba4  mov     x20, x0
0x1cb5ba8  adrp    x0, #0x4185000
0x1cb5bac  ldr     x0, [x0, #0x2e0]
0x1cb5bb0  bl      #0x1b64584                    -> 0x1b64584
0x1cb5bb4  ldr     x8, [x20]
0x1cb5bb8  ldr     x1, [x8]
0x1cb5bbc  bl      #0x1b64bf8                    -> 0x1b64bf8
0x1cb5bc0  tbz     w0, #0, #0x1cb5c80            -> 0x0 -> 0x1cb5c80
0x1cb5bc4  ldr     x20, [x20]
0x1cb5bc8  bl      #0x3e998e0                    -> 0x3e998e0
0x1cb5bcc  mov     w8, #-2
0x1cb5bd0  str     w8, [x19]
0x1cb5bd4  str     xzr, [x19, #0x28]
0x1cb5bd8  adrp    x0, #0x4187000
0x1cb5bdc  ldr     x0, [x0, #0x790]
0x1cb5be0  bl      #0x1b64584                    -> 0x1b64584
0x1cb5be4  ldr     x21, [x19, #8]
0x1cb5be8  cbz     x21, #0x1cb5c54               -> 0x1cb5c54
0x1cb5bec  ldr     x0, [x0, #0x20]
0x1cb5bf0  ldrb    w8, [x0, #0x135]
0x1cb5bf4  tbnz    w8, #0, #0x1cb5bfc            -> 0x0 -> 0x1cb5bfc
0x1cb5bf8  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb5bfc  ldr     x8, [x0, #0xc0]
0x1cb5c00  ldr     x1, [x8, #8]
0x1cb5c04  ldrb    w8, [x1, #0x135]
0x1cb5c08  tbnz    w8, #0, #0x1cb5c18            -> 0x0 -> 0x1cb5c18
0x1cb5c0c  mov     x0, x1
0x1cb5c10  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb5c14  mov     x1, x0
0x1cb5c18  ldr     x8, [x21]
0x1cb5c1c  ldrh    w9, [x8, #0x12e]
0x1cb5c20  cbz     x9, #0x1cb5c44                -> 0x1cb5c44
0x1cb5c24  ldr     x10, [x8, #0xb0]
0x1cb5c28  add     x10, x10, #8                  ; =0x4187008
0x1cb5c2c  ldur    x11, [x10, #-8]
0x1cb5c30  cmp     x11, x1
0x1cb5c34  b.eq    #0x1cb5c5c                    -> 0x1cb5c5c
0x1cb5c38  subs    x9, x9, #1
0x1cb5c3c  add     x10, x10, #0x10               ; =0x4187010
0x1cb5c40  b.ne    #0x1cb5c2c                    -> 0x1cb5c2c
0x1cb5c44  mov     w2, #3
0x1cb5c48  mov     x0, x21
0x1cb5c4c  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb5c50  b       #0x1cb5c6c                    -> 0x1cb5c6c
0x1cb5c54  str     x20, [x19, #0x10]
0x1cb5c58  b       #0x1cb5a70                    -> 0x1cb5a70
0x1cb5c5c  ldr     w9, [x10]
0x1cb5c60  add     w9, w9, #3
0x1cb5c64  add     x8, x8, w9, sxtw #4
0x1cb5c68  add     x0, x8, #0x138                ; =0x4187138
0x1cb5c6c  ldp     x8, x2, [x0]
0x1cb5c70  mov     x0, x21
0x1cb5c74  mov     x1, x20
0x1cb5c78  blr     x8
0x1cb5c7c  b       #0x1cb5a70                    -> 0x1cb5a70
0x1cb5c80  mov     w0, #8
0x1cb5c84  bl      #0x3e998f0                    -> 0x3e998f0
0x1cb5c88  ldr     x8, [x20]
0x1cb5c8c  str     x8, [x0]
0x1cb5c90  adrp    x1, #0x3e9f000
0x1cb5c94  add     x1, x1, #0xc98                ; =0x3e9fc98
0x1cb5c98  mov     x2, xzr
0x1cb5c9c  bl      #0x3e99900                    -> 0x3e99900
0x1cb5ca0  mov     x20, x0
0x1cb5ca4  bl      #0x3e998e0                    -> 0x3e998e0
0x1cb5ca8  mov     x0, x20
0x1cb5cac  bl      #0x1c65b3c                    -> 0x1c65b3c
0x1cb5cb0  bl      #0x194772c                    -> 0x194772c
0x1cb5cb4  str     x30, [sp, #-0x30]!
0x1cb5cb8  stp     x22, x21, [sp, #0x10]
0x1cb5cbc  stp     x20, x19, [sp, #0x20]
0x1cb5cc0  adrp    x22, #0x4475000
0x1cb5cc4  adrp    x21, #0x4187000
0x1cb5cc8  ldrb    w8, [x22, #0x876]
0x1cb5ccc  ldr     x21, [x21, #0x798]
0x1cb5cd0  mov     x19, x1
0x1cb5cd4  mov     x20, x0
0x1cb5cd8  tbnz    w8, #0, #0x1cb5cf0            -> 0x0 -> 0x1cb5cf0
0x1cb5cdc  adrp    x0, #0x4187000
0x1cb5ce0  ldr     x0, [x0, #0x798]
0x1cb5ce4  bl      #0x1b64570                    -> 0x1b64570
0x1cb5ce8  mov     w8, #1
0x1cb5cec  strb    w8, [x22, #0x876]
0x1cb5cf0  ldr     x2, [x21]
0x1cb5cf4  add     x0, x20, #8                   ; =0x4475008
0x1cb5cf8  mov     x1, x19
0x1cb5cfc  ldp     x20, x19, [sp, #0x20]
0x1cb5d00  ldp     x22, x21, [sp, #0x10]
0x1cb5d04  ldr     x30, [sp], #0x30
0x1cb5d08  b       #0x27afa00                    -> 0x27afa00
0x1cb5d0c  sub     sp, sp, #0x50
0x1cb5d10  stp     x30, x23, [sp, #0x20]
0x1cb5d14  stp     x22, x21, [sp, #0x30]
0x1cb5d18  stp     x20, x19, [sp, #0x40]
0x1cb5d1c  adrp    x20, #0x4475000
0x1cb5d20  ldrb    w8, [x20, #0x877]
0x1cb5d24  mov     x19, x0
0x1cb5d28  tbnz    w8, #0, #0x1cb5ddc            -> 0x0 -> 0x1cb5ddc
0x1cb5d2c  adrp    x0, #0x4185000
0x1cb5d30  ldr     x0, [x0, #0xd50]
0x1cb5d34  bl      #0x1b64570                    -> 0x1b64570
0x1cb5d38  adrp    x0, #0x4187000
0x1cb5d3c  ldr     x0, [x0, #0x7a0]
0x1cb5d40  bl      #0x1b64570                    -> 0x1b64570
0x1cb5d44  adrp    x0, #0x4187000
0x1cb5d48  ldr     x0, [x0, #0x7a8]
0x1cb5d4c  bl      #0x1b64570                    -> 0x1b64570
0x1cb5d50  adrp    x0, #0x4187000
0x1cb5d54  ldr     x0, [x0, #0x738]
0x1cb5d58  bl      #0x1b64570                    -> 0x1b64570
0x1cb5d5c  adrp    x0, #0x4187000
0x1cb5d60  ldr     x0, [x0, #0x7b0]
0x1cb5d64  bl      #0x1b64570                    -> 0x1b64570
0x1cb5d68  adrp    x0, #0x4187000
0x1cb5d6c  ldr     x0, [x0, #0x7b8]
0x1cb5d70  bl      #0x1b64570                    -> 0x1b64570
0x1cb5d74  adrp    x0, #0x4186000
0x1cb5d78  ldr     x0, [x0, #0xe68]
0x1cb5d7c  bl      #0x1b64570                    -> 0x1b64570
0x1cb5d80  adrp    x0, #0x4187000
0x1cb5d84  ldr     x0, [x0, #0x7c0]
0x1cb5d88  bl      #0x1b64570                    -> 0x1b64570
0x1cb5d8c  adrp    x0, #0x4187000
0x1cb5d90  ldr     x0, [x0, #0x7c8]
0x1cb5d94  bl      #0x1b64570                    -> 0x1b64570
0x1cb5d98  adrp    x0, #0x4187000
0x1cb5d9c  ldr     x0, [x0, #0x760]
0x1cb5da0  bl      #0x1b64570                    -> 0x1b64570
0x1cb5da4  adrp    x0, #0x4187000
0x1cb5da8  ldr     x0, [x0, #0x768]
0x1cb5dac  bl      #0x1b64570                    -> 0x1b64570
0x1cb5db0  adrp    x0, #0x4187000
0x1cb5db4  ldr     x0, [x0, #0x770]
0x1cb5db8  bl      #0x1b64570                    -> 0x1b64570
0x1cb5dbc  adrp    x0, #0x4187000
0x1cb5dc0  ldr     x0, [x0, #0x778]
0x1cb5dc4  bl      #0x1b64570                    -> 0x1b64570
0x1cb5dc8  adrp    x0, #0x4187000
0x1cb5dcc  ldr     x0, [x0, #0x780]
0x1cb5dd0  bl      #0x1b64570                    -> 0x1b64570
0x1cb5dd4  mov     w8, #1
0x1cb5dd8  strb    w8, [x20, #0x877]
0x1cb5ddc  stp     xzr, xzr, [sp, #0x10]
0x1cb5de0  stp     xzr, xzr, [sp]
0x1cb5de4  ldr     w8, [x19]
0x1cb5de8  cbz     w8, #0x1cb5eac                -> 0x1cb5eac
0x1cb5dec  ldr     x20, [x19, #0x20]
0x1cb5df0  cmp     w8, #1
0x1cb5df4  b.eq    #0x1cb5e18                    -> 0x1cb5e18
0x1cb5df8  cmp     w8, #2
0x1cb5dfc  b.ne    #0x1cb5f34                    -> 0x1cb5f34
0x1cb5e00  ldur    q0, [x19, #0x38]
0x1cb5e04  mov     w8, #-1
0x1cb5e08  str     q0, [sp]
0x1cb5e0c  stp     xzr, xzr, [x19, #0x38]
0x1cb5e10  str     w8, [x19]
0x1cb5e14  b       #0x1cb62e4                    -> 0x1cb62e4
0x1cb5e18  ldur    q0, [x19, #0x38]
0x1cb5e1c  mov     w8, #-1
0x1cb5e20  str     q0, [sp]
0x1cb5e24  stp     xzr, xzr, [x19, #0x38]
0x1cb5e28  str     w8, [x19]
0x1cb5e2c  ldr     x21, [sp]
0x1cb5e30  cbz     x21, #0x1cb6050               -> 0x1cb6050
0x1cb5e34  adrp    x8, #0x4187000
0x1cb5e38  ldr     x8, [x8, #0x7b0]
0x1cb5e3c  ldrh    w22, [sp, #0xa]
0x1cb5e40  ldr     x8, [x8]
0x1cb5e44  ldr     x0, [x8, #0x20]
0x1cb5e48  ldrb    w8, [x0, #0x135]
0x1cb5e4c  tbnz    w8, #0, #0x1cb5e54            -> 0x0 -> 0x1cb5e54
0x1cb5e50  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb5e54  ldr     x8, [x0, #0xc0]
0x1cb5e58  ldr     x1, [x8, #0x28]
0x1cb5e5c  ldrb    w8, [x1, #0x135]
0x1cb5e60  tbnz    w8, #0, #0x1cb5e70            -> 0x0 -> 0x1cb5e70
0x1cb5e64  mov     x0, x1
0x1cb5e68  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb5e6c  mov     x1, x0
0x1cb5e70  ldr     x8, [x21]
0x1cb5e74  ldrh    w9, [x8, #0x12e]
0x1cb5e78  cbz     x9, #0x1cb5e9c                -> 0x1cb5e9c
0x1cb5e7c  ldr     x10, [x8, #0xb0]
0x1cb5e80  add     x10, x10, #8                  ; =0x4187008
0x1cb5e84  ldur    x11, [x10, #-8]
0x1cb5e88  cmp     x11, x1
0x1cb5e8c  b.eq    #0x1cb605c                    -> 0x1cb605c
0x1cb5e90  subs    x9, x9, #1
0x1cb5e94  add     x10, x10, #0x10               ; =0x4187010
0x1cb5e98  b.ne    #0x1cb5e84                    -> 0x1cb5e84
0x1cb5e9c  mov     x0, x21
0x1cb5ea0  mov     w2, wzr
0x1cb5ea4  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb5ea8  b       #0x1cb6068                    -> 0x1cb6068
0x1cb5eac  ldur    q0, [x19, #0x28]
0x1cb5eb0  mov     w8, #-1
0x1cb5eb4  str     q0, [sp, #0x10]
0x1cb5eb8  stp     xzr, xzr, [x19, #0x28]
0x1cb5ebc  str     w8, [x19]
0x1cb5ec0  adrp    x20, #0x4475000
0x1cb5ec4  ldrb    w8, [x20, #0x8c6]
0x1cb5ec8  cbnz    w8, #0x1cb5ee0                -> 0x1cb5ee0
0x1cb5ecc  adrp    x0, #0x4187000
0x1cb5ed0  ldr     x0, [x0, #0x788]
0x1cb5ed4  bl      #0x1b64570                    -> 0x1b64570
0x1cb5ed8  mov     w8, #1
0x1cb5edc  strb    w8, [x20, #0x8c6]
0x1cb5ee0  ldr     x20, [sp, #0x10]
0x1cb5ee4  cbz     x20, #0x1cb6394               -> 0x1cb6394
0x1cb5ee8  adrp    x10, #0x4187000
0x1cb5eec  ldr     x8, [x20]
0x1cb5ef0  ldrh    w21, [sp, #0x18]
0x1cb5ef4  ldr     x10, [x10, #0x788]
0x1cb5ef8  ldrh    w9, [x8, #0x12e]
0x1cb5efc  ldr     x1, [x10]
0x1cb5f00  cbz     x9, #0x1cb5f24                -> 0x1cb5f24
0x1cb5f04  ldr     x10, [x8, #0xb0]
0x1cb5f08  add     x10, x10, #8                  ; =0x4187008
0x1cb5f0c  ldur    x11, [x10, #-8]
0x1cb5f10  cmp     x11, x1
0x1cb5f14  b.eq    #0x1cb629c                    -> 0x1cb629c
0x1cb5f18  subs    x9, x9, #1
0x1cb5f1c  add     x10, x10, #0x10               ; =0x4187010
0x1cb5f20  b.ne    #0x1cb5f0c                    -> 0x1cb5f0c
0x1cb5f24  mov     w2, #2
0x1cb5f28  mov     x0, x20
0x1cb5f2c  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb5f30  b       #0x1cb62ac                    -> 0x1cb62ac
0x1cb5f34  adrp    x8, #0x4186000
0x1cb5f38  ldr     x8, [x8, #0xe68]
0x1cb5f3c  ldr     x0, [x8]
0x1cb5f40  ldr     w8, [x0, #0xe0]
0x1cb5f44  cbnz    w8, #0x1cb5f4c                -> 0x1cb5f4c
0x1cb5f48  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb5f4c  adrp    x8, #0x4187000
0x1cb5f50  ldr     x8, [x8, #0x768]
0x1cb5f54  ldr     x0, [x8]
0x1cb5f58  mov     w1, #-1
0x1cb5f5c  mov     x2, xzr
0x1cb5f60  bl      #0x1cc5ccc                    -> 0x1cc5ccc  SaveManagement$$LoadInt
0x1cb5f64  cbz     w0, #0x1cb6294                -> 0x1cb6294
0x1cb5f68  adrp    x21, #0x4185000
0x1cb5f6c  ldr     x21, [x21, #0xd50]
0x1cb5f70  ldr     x0, [x21]
0x1cb5f74  ldr     w8, [x0, #0xe0]
0x1cb5f78  cbnz    w8, #0x1cb5f80                -> 0x1cb5f80
0x1cb5f7c  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb5f80  mov     x0, xzr
0x1cb5f84  bl      #0x3c1db80                    -> 0x3c1db80  UnityEngine.Application$$get_internetReachability
0x1cb5f88  cbz     w0, #0x1cb616c                -> 0x1cb616c
0x1cb5f8c  cbz     x20, #0x1cb6528               -> 0x1cb6528
0x1cb5f90  mov     x0, x20
0x1cb5f94  bl      #0x1cb4f60                    -> 0x1cb4f60  AntiAddiction$$CheckIfUserInCN
0x1cb5f98  adrp    x8, #0x4187000
0x1cb5f9c  ldr     x8, [x8, #0x7c8]
0x1cb5fa0  mov     x21, x0
0x1cb5fa4  mov     x22, x1
0x1cb5fa8  ldr     x8, [x8]
0x1cb5fac  ldr     x0, [x8, #0x20]
0x1cb5fb0  ldrb    w8, [x0, #0x135]
0x1cb5fb4  tbnz    w8, #0, #0x1cb5fbc            -> 0x0 -> 0x1cb5fbc
0x1cb5fb8  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb5fbc  adrp    x8, #0x4187000
0x1cb5fc0  ldr     x8, [x8, #0x7b8]
0x1cb5fc4  stp     x21, x22, [sp]
0x1cb5fc8  ldr     x8, [x8]
0x1cb5fcc  ldr     x0, [x8, #0x20]
0x1cb5fd0  ldrb    w8, [x0, #0x135]
0x1cb5fd4  tbnz    w8, #0, #0x1cb5fdc            -> 0x0 -> 0x1cb5fdc
0x1cb5fd8  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb5fdc  adrp    x21, #0x4475000
0x1cb5fe0  ldrb    w8, [x21, #0x8bd]
0x1cb5fe4  cbnz    w8, #0x1cb5ffc                -> 0x1cb5ffc
0x1cb5fe8  adrp    x0, #0x4187000
0x1cb5fec  ldr     x0, [x0, #0x788]
0x1cb5ff0  bl      #0x1b64570                    -> 0x1b64570
0x1cb5ff4  mov     w8, #1
0x1cb5ff8  strb    w8, [x21, #0x8bd]
0x1cb5ffc  ldr     x21, [sp]
0x1cb6000  cbz     x21, #0x1cb5e2c               -> 0x1cb5e2c
0x1cb6004  adrp    x10, #0x4187000
0x1cb6008  ldr     x8, [x21]
0x1cb600c  ldrh    w22, [sp, #0xa]
0x1cb6010  ldr     x10, [x10, #0x788]
0x1cb6014  ldrh    w9, [x8, #0x12e]
0x1cb6018  ldr     x1, [x10]
0x1cb601c  cbz     x9, #0x1cb6040                -> 0x1cb6040
0x1cb6020  ldr     x10, [x8, #0xb0]
0x1cb6024  add     x10, x10, #8                  ; =0x4187008
0x1cb6028  ldur    x11, [x10, #-8]
0x1cb602c  cmp     x11, x1
0x1cb6030  b.eq    #0x1cb6488                    -> 0x1cb6488
0x1cb6034  subs    x9, x9, #1
0x1cb6038  add     x10, x10, #0x10               ; =0x4187010
0x1cb603c  b.ne    #0x1cb6028                    -> 0x1cb6028
0x1cb6040  mov     x0, x21
0x1cb6044  mov     w2, wzr
0x1cb6048  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb604c  b       #0x1cb6494                    -> 0x1cb6494
0x1cb6050  ldrb    w8, [sp, #8]
0x1cb6054  cbnz    w8, #0x1cb607c                -> 0x1cb607c
0x1cb6058  b       #0x1cb6294                    -> 0x1cb6294
0x1cb605c  ldrsw   x9, [x10]
0x1cb6060  add     x8, x8, x9, lsl #4
0x1cb6064  add     x0, x8, #0x138                ; =0x4187138
0x1cb6068  ldp     x8, x2, [x0]
0x1cb606c  mov     x0, x21
0x1cb6070  mov     w1, w22
0x1cb6074  blr     x8
0x1cb6078  tbz     w0, #0, #0x1cb6294            -> 0x0 -> 0x1cb6294
0x1cb607c  adrp    x8, #0x4187000
0x1cb6080  ldr     x8, [x8, #0x7c0]
0x1cb6084  ldr     x0, [x8]
0x1cb6088  ldr     w8, [x0, #0xe0]
0x1cb608c  cbnz    w8, #0x1cb6094                -> 0x1cb6094
0x1cb6090  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb6094  adrp    x8, #0x4187000
0x1cb6098  ldr     x8, [x8, #0x780]
0x1cb609c  ldr     x0, [x8]
0x1cb60a0  mov     x1, xzr
0x1cb60a4  bl      #0x3aa71cc                    -> 0x3aa71cc  TapTap.Login.TapLogin$$Init
0x1cb60a8  cbz     x20, #0x1cb6524               -> 0x1cb6524
0x1cb60ac  mov     x0, x20
0x1cb60b0  bl      #0x1cb4de8                    -> 0x1cb4de8  AntiAddiction$$Auth
0x1cb60b4  adrp    x8, #0x4187000
0x1cb60b8  ldr     x8, [x8, #0x7c8]
0x1cb60bc  mov     x20, x0
0x1cb60c0  mov     x21, x1
0x1cb60c4  ldr     x8, [x8]
0x1cb60c8  ldr     x0, [x8, #0x20]
0x1cb60cc  ldrb    w8, [x0, #0x135]
0x1cb60d0  tbnz    w8, #0, #0x1cb60d8            -> 0x0 -> 0x1cb60d8
0x1cb60d4  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb60d8  adrp    x8, #0x4187000
0x1cb60dc  ldr     x8, [x8, #0x7b8]
0x1cb60e0  stp     x20, x21, [sp]
0x1cb60e4  ldr     x8, [x8]
0x1cb60e8  ldr     x0, [x8, #0x20]
0x1cb60ec  ldrb    w8, [x0, #0x135]
0x1cb60f0  tbnz    w8, #0, #0x1cb60f8            -> 0x0 -> 0x1cb60f8
0x1cb60f4  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb60f8  adrp    x20, #0x4475000
0x1cb60fc  ldrb    w8, [x20, #0x8bd]
0x1cb6100  cbnz    w8, #0x1cb6118                -> 0x1cb6118
0x1cb6104  adrp    x0, #0x4187000
0x1cb6108  ldr     x0, [x0, #0x788]
0x1cb610c  bl      #0x1b64570                    -> 0x1b64570
0x1cb6110  mov     w8, #1
0x1cb6114  strb    w8, [x20, #0x8bd]
0x1cb6118  ldr     x20, [sp]
0x1cb611c  cbz     x20, #0x1cb62e4               -> 0x1cb62e4
0x1cb6120  adrp    x10, #0x4187000
0x1cb6124  ldr     x8, [x20]
0x1cb6128  ldrh    w21, [sp, #0xa]
0x1cb612c  ldr     x10, [x10, #0x788]
0x1cb6130  ldrh    w9, [x8, #0x12e]
0x1cb6134  ldr     x1, [x10]
0x1cb6138  cbz     x9, #0x1cb615c                -> 0x1cb615c
0x1cb613c  ldr     x10, [x8, #0xb0]
0x1cb6140  add     x10, x10, #8                  ; =0x4187008
0x1cb6144  ldur    x11, [x10, #-8]
0x1cb6148  cmp     x11, x1
0x1cb614c  b.eq    #0x1cb62c4                    -> 0x1cb62c4
0x1cb6150  subs    x9, x9, #1
0x1cb6154  add     x10, x10, #0x10               ; =0x4187010
0x1cb6158  b.ne    #0x1cb6144                    -> 0x1cb6144
0x1cb615c  mov     x0, x20
0x1cb6160  mov     w2, wzr
0x1cb6164  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb6168  b       #0x1cb62d0                    -> 0x1cb62d0
0x1cb616c  ldr     x0, [x21]
0x1cb6170  ldr     w8, [x0, #0xe0]
0x1cb6174  cbnz    w8, #0x1cb617c                -> 0x1cb617c
0x1cb6178  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb617c  mov     x0, xzr
0x1cb6180  bl      #0x3c1db58                    -> 0x3c1db58  UnityEngine.Application$$get_systemLanguage
0x1cb6184  cmp     w0, #6
0x1cb6188  b.eq    #0x1cb61ac                    -> 0x1cb61ac
0x1cb618c  ldr     x0, [x21]
0x1cb6190  ldr     w8, [x0, #0xe0]
0x1cb6194  cbnz    w8, #0x1cb619c                -> 0x1cb619c
0x1cb6198  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb619c  mov     x0, xzr
0x1cb61a0  bl      #0x3c1db58                    -> 0x3c1db58  UnityEngine.Application$$get_systemLanguage
0x1cb61a4  cmp     w0, #0x28
0x1cb61a8  b.ne    #0x1cb6294                    -> 0x1cb6294
0x1cb61ac  adrp    x8, #0x4187000
0x1cb61b0  adrp    x9, #0x4187000
0x1cb61b4  ldr     x8, [x8, #0x778]
0x1cb61b8  ldr     x9, [x9, #0x770]
0x1cb61bc  ldr     x0, [x8]
0x1cb61c0  ldr     x1, [x9]
0x1cb61c4  mov     x2, xzr
0x1cb61c8  bl      #0x1cced4c                    -> 0x1cced4c  PhigrosUI$$ShowOkMessageBox
0x1cb61cc  adrp    x22, #0x4187000
0x1cb61d0  ldr     x22, [x22, #0x760]
0x1cb61d4  mov     x20, x0
0x1cb61d8  mov     x21, x1
0x1cb61dc  ldr     x0, [x22]
0x1cb61e0  ldr     w8, [x0, #0xe0]
0x1cb61e4  cbnz    w8, #0x1cb61ec                -> 0x1cb61ec
0x1cb61e8  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb61ec  adrp    x23, #0x4475000
0x1cb61f0  ldrb    w8, [x23, #0x8c4]
0x1cb61f4  stp     x20, x21, [sp, #0x10]
0x1cb61f8  cbnz    w8, #0x1cb6210                -> 0x1cb6210
0x1cb61fc  adrp    x0, #0x4187000
0x1cb6200  ldr     x0, [x0, #0x760]
0x1cb6204  bl      #0x1b64570                    -> 0x1b64570
0x1cb6208  mov     w8, #1
0x1cb620c  strb    w8, [x23, #0x8c4]
0x1cb6210  ldr     x0, [x22]
0x1cb6214  ldr     w8, [x0, #0xe0]
0x1cb6218  cbnz    w8, #0x1cb6220                -> 0x1cb6220
0x1cb621c  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb6220  adrp    x20, #0x4475000
0x1cb6224  ldrb    w8, [x20, #0x8c5]
0x1cb6228  cbnz    w8, #0x1cb6240                -> 0x1cb6240
0x1cb622c  adrp    x0, #0x4187000
0x1cb6230  ldr     x0, [x0, #0x788]
0x1cb6234  bl      #0x1b64570                    -> 0x1b64570
0x1cb6238  mov     w8, #1
0x1cb623c  strb    w8, [x20, #0x8c5]
0x1cb6240  ldr     x20, [sp, #0x10]
0x1cb6244  cbz     x20, #0x1cb5ec0               -> 0x1cb5ec0
0x1cb6248  adrp    x10, #0x4187000
0x1cb624c  ldr     x8, [x20]
0x1cb6250  ldrh    w21, [sp, #0x18]
0x1cb6254  ldr     x10, [x10, #0x788]
0x1cb6258  ldrh    w9, [x8, #0x12e]
0x1cb625c  ldr     x1, [x10]
0x1cb6260  cbz     x9, #0x1cb6284                -> 0x1cb6284
0x1cb6264  ldr     x10, [x8, #0xb0]
0x1cb6268  add     x10, x10, #8                  ; =0x4187008
0x1cb626c  ldur    x11, [x10, #-8]
0x1cb6270  cmp     x11, x1
0x1cb6274  b.eq    #0x1cb64d8                    -> 0x1cb64d8
0x1cb6278  subs    x9, x9, #1
0x1cb627c  add     x10, x10, #0x10               ; =0x4187010
0x1cb6280  b.ne    #0x1cb626c                    -> 0x1cb626c
0x1cb6284  mov     x0, x20
0x1cb6288  mov     w2, wzr
0x1cb628c  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb6290  b       #0x1cb64e4                    -> 0x1cb64e4
0x1cb6294  mov     w20, #1
0x1cb6298  b       #0x1cb6394                    -> 0x1cb6394
0x1cb629c  ldr     w9, [x10]
0x1cb62a0  add     w9, w9, #2
0x1cb62a4  add     x8, x8, w9, sxtw #4
0x1cb62a8  add     x0, x8, #0x138                ; =0x4187138
0x1cb62ac  ldp     x8, x2, [x0]
0x1cb62b0  mov     x0, x20
0x1cb62b4  mov     w1, w21
0x1cb62b8  blr     x8
0x1cb62bc  mov     w20, wzr
0x1cb62c0  b       #0x1cb6394                    -> 0x1cb6394
0x1cb62c4  ldrsw   x9, [x10]
0x1cb62c8  add     x8, x8, x9, lsl #4
0x1cb62cc  add     x0, x8, #0x138                ; =0x4187138
0x1cb62d0  ldp     x8, x2, [x0]
0x1cb62d4  mov     x0, x20
0x1cb62d8  mov     w1, w21
0x1cb62dc  blr     x8
0x1cb62e0  cbz     w0, #0x1cb6458                -> 0x1cb6458
0x1cb62e4  ldr     x20, [sp]
0x1cb62e8  cbz     x20, #0x1cb6364               -> 0x1cb6364
0x1cb62ec  adrp    x8, #0x4187000
0x1cb62f0  ldr     x8, [x8, #0x7b0]
0x1cb62f4  ldrh    w21, [sp, #0xa]
0x1cb62f8  ldr     x8, [x8]
0x1cb62fc  ldr     x0, [x8, #0x20]
0x1cb6300  ldrb    w8, [x0, #0x135]
0x1cb6304  tbnz    w8, #0, #0x1cb630c            -> 0x0 -> 0x1cb630c
0x1cb6308  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb630c  ldr     x8, [x0, #0xc0]
0x1cb6310  ldr     x1, [x8, #0x28]
0x1cb6314  ldrb    w8, [x1, #0x135]
0x1cb6318  tbnz    w8, #0, #0x1cb6328            -> 0x0 -> 0x1cb6328
0x1cb631c  mov     x0, x1
0x1cb6320  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb6324  mov     x1, x0
0x1cb6328  ldr     x8, [x20]
0x1cb632c  ldrh    w9, [x8, #0x12e]
0x1cb6330  cbz     x9, #0x1cb6354                -> 0x1cb6354
0x1cb6334  ldr     x10, [x8, #0xb0]
0x1cb6338  add     x10, x10, #8                  ; =0x4187008
0x1cb633c  ldur    x11, [x10, #-8]
0x1cb6340  cmp     x11, x1
0x1cb6344  b.eq    #0x1cb6374                    -> 0x1cb6374
0x1cb6348  subs    x9, x9, #1
0x1cb634c  add     x10, x10, #0x10               ; =0x4187010
0x1cb6350  b.ne    #0x1cb633c                    -> 0x1cb633c
0x1cb6354  mov     x0, x20
0x1cb6358  mov     w2, wzr
0x1cb635c  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb6360  b       #0x1cb6380                    -> 0x1cb6380
0x1cb6364  ldrb    w8, [sp, #8]
0x1cb6368  cmp     w8, #0
0x1cb636c  cset    w20, ne
0x1cb6370  b       #0x1cb6394                    -> 0x1cb6394
0x1cb6374  ldrsw   x9, [x10]
0x1cb6378  add     x8, x8, x9, lsl #4
0x1cb637c  add     x0, x8, #0x138                ; =0x4187138
0x1cb6380  ldp     x8, x2, [x0]
0x1cb6384  mov     x0, x20
0x1cb6388  mov     w1, w21
0x1cb638c  blr     x8
0x1cb6390  mov     w20, w0
0x1cb6394  ldr     x21, [x19, #8]
0x1cb6398  mov     w8, #-2
0x1cb639c  str     w8, [x19]
0x1cb63a0  cbz     x21, #0x1cb6418               -> 0x1cb6418
0x1cb63a4  adrp    x8, #0x4187000
0x1cb63a8  ldr     x8, [x8, #0x738]
0x1cb63ac  ldr     x8, [x8]
0x1cb63b0  ldr     x0, [x8, #0x20]
0x1cb63b4  ldrb    w8, [x0, #0x135]
0x1cb63b8  tbnz    w8, #0, #0x1cb63c0            -> 0x0 -> 0x1cb63c0
0x1cb63bc  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb63c0  ldr     x8, [x0, #0xc0]
0x1cb63c4  ldr     x1, [x8, #8]
0x1cb63c8  ldrb    w8, [x1, #0x135]
0x1cb63cc  tbnz    w8, #0, #0x1cb63dc            -> 0x0 -> 0x1cb63dc
0x1cb63d0  mov     x0, x1
0x1cb63d4  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb63d8  mov     x1, x0
0x1cb63dc  ldr     x8, [x21]
0x1cb63e0  ldrh    w9, [x8, #0x12e]
0x1cb63e4  cbz     x9, #0x1cb6408                -> 0x1cb6408
0x1cb63e8  ldr     x10, [x8, #0xb0]
0x1cb63ec  add     x10, x10, #8                  ; =0x4187008
0x1cb63f0  ldur    x11, [x10, #-8]
0x1cb63f4  cmp     x11, x1
0x1cb63f8  b.eq    #0x1cb6424                    -> 0x1cb6424
0x1cb63fc  subs    x9, x9, #1
0x1cb6400  add     x10, x10, #0x10               ; =0x4187010
0x1cb6404  b.ne    #0x1cb63f0                    -> 0x1cb63f0
0x1cb6408  mov     w2, #2
0x1cb640c  mov     x0, x21
0x1cb6410  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb6414  b       #0x1cb6434                    -> 0x1cb6434
0x1cb6418  and     w8, w20, #1
0x1cb641c  strb    w8, [x19, #0x18]
0x1cb6420  b       #0x1cb6444                    -> 0x1cb6444
0x1cb6424  ldr     w9, [x10]
0x1cb6428  add     w9, w9, #2
0x1cb642c  add     x8, x8, w9, sxtw #4
0x1cb6430  add     x0, x8, #0x138                ; =0x4187138
0x1cb6434  ldp     x8, x2, [x0]
0x1cb6438  and     w1, w20, #1
0x1cb643c  mov     x0, x21
0x1cb6440  blr     x8
0x1cb6444  ldp     x20, x19, [sp, #0x40]
0x1cb6448  ldp     x22, x21, [sp, #0x30]
0x1cb644c  ldp     x30, x23, [sp, #0x20]
0x1cb6450  add     sp, sp, #0x50
0x1cb6454  ret     
0x1cb6458  mov     w8, #2
0x1cb645c  str     w8, [x19]
0x1cb6460  ldr     q0, [sp]
0x1cb6464  adrp    x8, #0x4187000
0x1cb6468  add     x0, x19, #8
0x1cb646c  stur    q0, [x19, #0x38]
0x1cb6470  ldr     x8, [x8, #0x7a0]
0x1cb6474  ldr     x3, [x8]
0x1cb6478  mov     x1, sp
0x1cb647c  mov     x2, x19
0x1cb6480  bl      #0x1cbff10                    -> 0x1cbff10
0x1cb6484  b       #0x1cb6444                    -> 0x1cb6444
0x1cb6488  ldrsw   x9, [x10]
0x1cb648c  add     x8, x8, x9, lsl #4
0x1cb6490  add     x0, x8, #0x138                ; =0x4187138
0x1cb6494  ldp     x8, x2, [x0]
0x1cb6498  mov     x0, x21
0x1cb649c  mov     w1, w22
0x1cb64a0  blr     x8
0x1cb64a4  cbnz    w0, #0x1cb5e2c                -> 0x1cb5e2c
0x1cb64a8  mov     w8, #1
0x1cb64ac  str     w8, [x19]
0x1cb64b0  ldr     q0, [sp]
0x1cb64b4  adrp    x8, #0x4187000
0x1cb64b8  add     x0, x19, #8
0x1cb64bc  stur    q0, [x19, #0x38]
0x1cb64c0  ldr     x8, [x8, #0x7a0]
0x1cb64c4  ldr     x3, [x8]
0x1cb64c8  mov     x1, sp
0x1cb64cc  mov     x2, x19
0x1cb64d0  bl      #0x1cbff10                    -> 0x1cbff10
0x1cb64d4  b       #0x1cb6444                    -> 0x1cb6444
0x1cb64d8  ldrsw   x9, [x10]
0x1cb64dc  add     x8, x8, x9, lsl #4
0x1cb64e0  add     x0, x8, #0x138                ; =0x4187138
0x1cb64e4  ldp     x8, x2, [x0]
0x1cb64e8  mov     x0, x20
0x1cb64ec  mov     w1, w21
0x1cb64f0  blr     x8
0x1cb64f4  cbnz    w0, #0x1cb5ec0                -> 0x1cb5ec0
0x1cb64f8  str     wzr, [x19]
0x1cb64fc  ldr     q0, [sp, #0x10]
0x1cb6500  adrp    x8, #0x4187000
0x1cb6504  add     x0, x19, #8
0x1cb6508  stur    q0, [x19, #0x28]
0x1cb650c  ldr     x8, [x8, #0x7a8]
0x1cb6510  ldr     x3, [x8]
0x1cb6514  add     x1, sp, #0x10
0x1cb6518  mov     x2, x19
0x1cb651c  bl      #0x1cbfdfc                    -> 0x1cbfdfc
0x1cb6520  b       #0x1cb6444                    -> 0x1cb6444
0x1cb6524  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb6528  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb652c  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6530  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6534  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6538  b       #0x1cb657c                    -> 0x1cb657c
0x1cb653c  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6540  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6544  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6548  b       #0x1cb657c                    -> 0x1cb657c
0x1cb654c  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6550  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6554  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6558  b       #0x1cb657c                    -> 0x1cb657c
0x1cb655c  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6560  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6564  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6568  b       #0x1cb657c                    -> 0x1cb657c
0x1cb656c  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6570  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6574  b       #0x1cb657c                    -> 0x1cb657c
0x1cb6578  b       #0x1cb657c                    -> 0x1cb657c
0x1cb657c  mov     x20, x0
0x1cb6580  cmp     w1, #1
0x1cb6584  b.ne    #0x1cb6690                    -> 0x1cb6690
0x1cb6588  mov     x0, x20
0x1cb658c  bl      #0x3e998d0                    -> 0x3e998d0
0x1cb6590  mov     x20, x0
0x1cb6594  adrp    x0, #0x4185000
0x1cb6598  ldr     x0, [x0, #0x2e0]
0x1cb659c  bl      #0x1b64584                    -> 0x1b64584
0x1cb65a0  ldr     x8, [x20]
0x1cb65a4  ldr     x1, [x8]
0x1cb65a8  bl      #0x1b64bf8                    -> 0x1b64bf8
0x1cb65ac  tbz     w0, #0, #0x1cb6668            -> 0x0 -> 0x1cb6668
0x1cb65b0  ldr     x20, [x20]
0x1cb65b4  bl      #0x3e998e0                    -> 0x3e998e0
0x1cb65b8  mov     w8, #-2
0x1cb65bc  str     w8, [x19]
0x1cb65c0  adrp    x0, #0x4187000
0x1cb65c4  ldr     x0, [x0, #0x790]
0x1cb65c8  bl      #0x1b64584                    -> 0x1b64584
0x1cb65cc  ldr     x21, [x19, #8]
0x1cb65d0  cbz     x21, #0x1cb663c               -> 0x1cb663c
0x1cb65d4  ldr     x0, [x0, #0x20]
0x1cb65d8  ldrb    w8, [x0, #0x135]
0x1cb65dc  tbnz    w8, #0, #0x1cb65e4            -> 0x0 -> 0x1cb65e4
0x1cb65e0  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb65e4  ldr     x8, [x0, #0xc0]
0x1cb65e8  ldr     x1, [x8, #8]
0x1cb65ec  ldrb    w8, [x1, #0x135]
0x1cb65f0  tbnz    w8, #0, #0x1cb6600            -> 0x0 -> 0x1cb6600
0x1cb65f4  mov     x0, x1
0x1cb65f8  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb65fc  mov     x1, x0
0x1cb6600  ldr     x8, [x21]
0x1cb6604  ldrh    w9, [x8, #0x12e]
0x1cb6608  cbz     x9, #0x1cb662c                -> 0x1cb662c
0x1cb660c  ldr     x10, [x8, #0xb0]
0x1cb6610  add     x10, x10, #8                  ; =0x4187008
0x1cb6614  ldur    x11, [x10, #-8]
0x1cb6618  cmp     x11, x1
0x1cb661c  b.eq    #0x1cb6644                    -> 0x1cb6644
0x1cb6620  subs    x9, x9, #1
0x1cb6624  add     x10, x10, #0x10               ; =0x4187010
0x1cb6628  b.ne    #0x1cb6614                    -> 0x1cb6614
0x1cb662c  mov     w2, #3
0x1cb6630  mov     x0, x21
0x1cb6634  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb6638  b       #0x1cb6654                    -> 0x1cb6654
0x1cb663c  str     x20, [x19, #0x10]
0x1cb6640  b       #0x1cb6444                    -> 0x1cb6444
0x1cb6644  ldr     w9, [x10]
0x1cb6648  add     w9, w9, #3
0x1cb664c  add     x8, x8, w9, sxtw #4
0x1cb6650  add     x0, x8, #0x138                ; =0x4187138
0x1cb6654  ldp     x8, x2, [x0]
0x1cb6658  mov     x0, x21
0x1cb665c  mov     x1, x20
0x1cb6660  blr     x8
0x1cb6664  b       #0x1cb6444                    -> 0x1cb6444
0x1cb6668  mov     w0, #8
0x1cb666c  bl      #0x3e998f0                    -> 0x3e998f0
0x1cb6670  ldr     x8, [x20]
0x1cb6674  str     x8, [x0]
0x1cb6678  adrp    x1, #0x3e9f000
0x1cb667c  add     x1, x1, #0xc98                ; =0x3e9fc98
0x1cb6680  mov     x2, xzr
0x1cb6684  bl      #0x3e99900                    -> 0x3e99900
0x1cb6688  mov     x20, x0
0x1cb668c  bl      #0x3e998e0                    -> 0x3e998e0
0x1cb6690  mov     x0, x20
0x1cb6694  bl      #0x1c65b3c                    -> 0x1c65b3c
0x1cb6698  bl      #0x194772c                    -> 0x194772c
0x1cb669c  str     x30, [sp, #-0x30]!
0x1cb66a0  stp     x22, x21, [sp, #0x10]
0x1cb66a4  stp     x20, x19, [sp, #0x20]
0x1cb66a8  adrp    x22, #0x4475000
0x1cb66ac  adrp    x21, #0x4187000
0x1cb66b0  ldrb    w8, [x22, #0x878]
0x1cb66b4  ldr     x21, [x21, #0x798]
0x1cb66b8  mov     x19, x1
0x1cb66bc  mov     x20, x0
0x1cb66c0  tbnz    w8, #0, #0x1cb66d8            -> 0x0 -> 0x1cb66d8
0x1cb66c4  adrp    x0, #0x4187000
0x1cb66c8  ldr     x0, [x0, #0x798]
0x1cb66cc  bl      #0x1b64570                    -> 0x1b64570
0x1cb66d0  mov     w8, #1
0x1cb66d4  strb    w8, [x22, #0x878]
0x1cb66d8  ldr     x2, [x21]
0x1cb66dc  add     x0, x20, #8                   ; =0x4475008
0x1cb66e0  mov     x1, x19
0x1cb66e4  ldp     x20, x19, [sp, #0x20]
0x1cb66e8  ldp     x22, x21, [sp, #0x10]
0x1cb66ec  ldr     x30, [sp], #0x30
0x1cb66f0  b       #0x27afa00                    -> 0x27afa00
0x1cb66f4  sub     sp, sp, #0x40
0x1cb66f8  stp     x30, x23, [sp, #0x10]
0x1cb66fc  stp     x22, x21, [sp, #0x20]
0x1cb6700  stp     x20, x19, [sp, #0x30]
0x1cb6704  adrp    x20, #0x4475000
0x1cb6708  ldrb    w8, [x20, #0x879]
0x1cb670c  mov     x19, x0
0x1cb6710  tbnz    w8, #0, #0x1cb67a0            -> 0x0 -> 0x1cb67a0
0x1cb6714  adrp    x0, #0x4187000
0x1cb6718  ldr     x0, [x0, #0x7d0]
0x1cb671c  bl      #0x1b64570                    -> 0x1b64570
0x1cb6720  adrp    x0, #0x4187000
0x1cb6724  ldr     x0, [x0, #0x7d8]
0x1cb6728  bl      #0x1b64570                    -> 0x1b64570
0x1cb672c  adrp    x0, #0x4187000
0x1cb6730  ldr     x0, [x0, #0x738]
0x1cb6734  bl      #0x1b64570                    -> 0x1b64570
0x1cb6738  adrp    x0, #0x4187000
0x1cb673c  ldr     x0, [x0, #0x740]
0x1cb6740  bl      #0x1b64570                    -> 0x1b64570
0x1cb6744  adrp    x0, #0x4187000
0x1cb6748  ldr     x0, [x0, #0x7e0]
0x1cb674c  bl      #0x1b64570                    -> 0x1b64570
0x1cb6750  adrp    x0, #0x4187000
0x1cb6754  ldr     x0, [x0, #0x7e8]
0x1cb6758  bl      #0x1b64570                    -> 0x1b64570
0x1cb675c  adrp    x0, #0x4187000
0x1cb6760  ldr     x0, [x0, #0x7f0]
0x1cb6764  bl      #0x1b64570                    -> 0x1b64570
0x1cb6768  adrp    x0, #0x4187000
0x1cb676c  ldr     x0, [x0, #0x7f8]
0x1cb6770  bl      #0x1b64570                    -> 0x1b64570
0x1cb6774  adrp    x0, #0x4187000
0x1cb6778  ldr     x0, [x0, #0x760]
0x1cb677c  bl      #0x1b64570                    -> 0x1b64570
0x1cb6780  adrp    x0, #0x4187000
0x1cb6784  ldr     x0, [x0, #0x800]
0x1cb6788  bl      #0x1b64570                    -> 0x1b64570
0x1cb678c  adrp    x0, #0x4187000
0x1cb6790  ldr     x0, [x0, #0x808]
0x1cb6794  bl      #0x1b64570                    -> 0x1b64570
0x1cb6798  mov     w8, #1
0x1cb679c  strb    w8, [x20, #0x879]
0x1cb67a0  stp     xzr, xzr, [sp]
0x1cb67a4  ldr     w8, [x19]
0x1cb67a8  cbz     w8, #0x1cb6980                -> 0x1cb6980
0x1cb67ac  adrp    x8, #0x4187000
0x1cb67b0  ldr     x8, [x8, #0x7f8]
0x1cb67b4  ldr     x20, [x19, #0x20]
0x1cb67b8  ldr     x0, [x8]
0x1cb67bc  bl      #0x1b647b8                    -> 0x1b647b8
0x1cb67c0  mov     x21, x0
0x1cb67c4  mov     x1, xzr
0x1cb67c8  bl      #0x34c04f0                    -> 0x34c04f0  System.Object$$.ctor
0x1cb67cc  str     x21, [x19, #0x28]
0x1cb67d0  cbz     x21, #0x1cb6b64               -> 0x1cb6b64
0x1cb67d4  adrp    x23, #0x4187000
0x1cb67d8  ldr     x23, [x23, #0x7d0]
0x1cb67dc  str     wzr, [x21, #0x10]
0x1cb67e0  strh    wzr, [x21, #0x14]
0x1cb67e4  ldr     x0, [x23]
0x1cb67e8  bl      #0x1b647b8                    -> 0x1b647b8
0x1cb67ec  adrp    x8, #0x4187000
0x1cb67f0  ldr     x8, [x8, #0x7e0]
0x1cb67f4  mov     x22, x0
0x1cb67f8  ldr     x2, [x8]
0x1cb67fc  mov     x1, x21
0x1cb6800  mov     x3, xzr
0x1cb6804  bl      #0x21caa28                    -> 0x21caa28  System.Action<float, bool>$$.ctor
0x1cb6808  adrp    x8, #0x4187000
0x1cb680c  ldr     x8, [x8, #0x800]
0x1cb6810  ldr     x0, [x8]
0x1cb6814  mov     x1, x22
0x1cb6818  bl      #0x1cb5014                    -> 0x1cb5014  AntiAddiction$$CheckInternetConnection
0x1cb681c  mov     x1, x0
0x1cb6820  cbz     x20, #0x1cb6b68               -> 0x1cb6b68
0x1cb6824  mov     x0, x20
0x1cb6828  mov     x2, xzr
0x1cb682c  bl      #0x3c6206c                    -> 0x3c6206c  UnityEngine.MonoBehaviour$$StartCoroutine
0x1cb6830  ldr     x22, [x19, #0x28]
0x1cb6834  ldr     x0, [x23]
0x1cb6838  bl      #0x1b647b8                    -> 0x1b647b8
0x1cb683c  adrp    x8, #0x4187000
0x1cb6840  ldr     x8, [x8, #0x7e8]
0x1cb6844  mov     x21, x0
0x1cb6848  ldr     x2, [x8]
0x1cb684c  mov     x1, x22
0x1cb6850  mov     x3, xzr
0x1cb6854  bl      #0x21caa28                    -> 0x21caa28  System.Action<float, bool>$$.ctor
0x1cb6858  adrp    x8, #0x4187000
0x1cb685c  ldr     x8, [x8, #0x808]
0x1cb6860  ldr     x0, [x8]
0x1cb6864  mov     x1, x21
0x1cb6868  bl      #0x1cb5014                    -> 0x1cb5014  AntiAddiction$$CheckInternetConnection
0x1cb686c  mov     x1, x0
0x1cb6870  mov     x0, x20
0x1cb6874  mov     x2, xzr
0x1cb6878  bl      #0x3c6206c                    -> 0x3c6206c  UnityEngine.MonoBehaviour$$StartCoroutine
0x1cb687c  adrp    x8, #0x4187000
0x1cb6880  ldr     x8, [x8, #0x740]
0x1cb6884  ldr     x21, [x19, #0x28]
0x1cb6888  ldr     x0, [x8]
0x1cb688c  bl      #0x1b647b8                    -> 0x1b647b8
0x1cb6890  adrp    x8, #0x4187000
0x1cb6894  ldr     x8, [x8, #0x7f0]
0x1cb6898  mov     x20, x0
0x1cb689c  ldr     x2, [x8]
0x1cb68a0  mov     x1, x21
0x1cb68a4  mov     x3, xzr
0x1cb68a8  bl      #0x2c503d8                    -> 0x2c503d8  System.Func<bool>$$.ctor
0x1cb68ac  adrp    x21, #0x4187000
0x1cb68b0  ldr     x21, [x21, #0x760]
0x1cb68b4  ldr     x0, [x21]
0x1cb68b8  ldr     w8, [x0, #0xe0]
0x1cb68bc  cbnz    w8, #0x1cb68c4                -> 0x1cb68c4
0x1cb68c0  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb68c4  mov     w1, #8
0x1cb68c8  mov     x0, x20
0x1cb68cc  mov     x2, xzr
0x1cb68d0  mov     x3, xzr
0x1cb68d4  bl      #0x3ab47a4                    -> 0x3ab47a4  Cysharp.Threading.Tasks.UniTask$$WaitUntil
0x1cb68d8  adrp    x20, #0x4475000
0x1cb68dc  ldrb    w8, [x20, #0x8c4]
0x1cb68e0  stp     x0, x1, [sp]
0x1cb68e4  cbnz    w8, #0x1cb68fc                -> 0x1cb68fc
0x1cb68e8  adrp    x0, #0x4187000
0x1cb68ec  ldr     x0, [x0, #0x760]
0x1cb68f0  bl      #0x1b64570                    -> 0x1b64570
0x1cb68f4  mov     w8, #1
0x1cb68f8  strb    w8, [x20, #0x8c4]
0x1cb68fc  ldr     x0, [x21]
0x1cb6900  ldr     w8, [x0, #0xe0]
0x1cb6904  cbnz    w8, #0x1cb690c                -> 0x1cb690c
0x1cb6908  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb690c  adrp    x20, #0x4475000
0x1cb6910  ldrb    w8, [x20, #0x8c5]
0x1cb6914  cbnz    w8, #0x1cb692c                -> 0x1cb692c
0x1cb6918  adrp    x0, #0x4187000
0x1cb691c  ldr     x0, [x0, #0x788]
0x1cb6920  bl      #0x1b64570                    -> 0x1b64570
0x1cb6924  mov     w8, #1
0x1cb6928  strb    w8, [x20, #0x8c5]
0x1cb692c  ldr     x20, [sp]
0x1cb6930  cbz     x20, #0x1cb69b8               -> 0x1cb69b8
0x1cb6934  adrp    x10, #0x4187000
0x1cb6938  ldr     x8, [x20]
0x1cb693c  ldrh    w21, [sp, #8]
0x1cb6940  ldr     x10, [x10, #0x788]
0x1cb6944  ldrh    w9, [x8, #0x12e]
0x1cb6948  ldr     x1, [x10]
0x1cb694c  cbz     x9, #0x1cb6970                -> 0x1cb6970
0x1cb6950  ldr     x10, [x8, #0xb0]
0x1cb6954  add     x10, x10, #8                  ; =0x4187008
0x1cb6958  ldur    x11, [x10, #-8]
0x1cb695c  cmp     x11, x1
0x1cb6960  b.eq    #0x1cb6998                    -> 0x1cb6998
0x1cb6964  subs    x9, x9, #1
0x1cb6968  add     x10, x10, #0x10               ; =0x4187010
0x1cb696c  b.ne    #0x1cb6958                    -> 0x1cb6958
0x1cb6970  mov     x0, x20
0x1cb6974  mov     w2, wzr
0x1cb6978  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb697c  b       #0x1cb69a4                    -> 0x1cb69a4
0x1cb6980  ldr     q0, [x19, #0x30]
0x1cb6984  mov     w8, #-1
0x1cb6988  str     q0, [sp]
0x1cb698c  stp     xzr, xzr, [x19, #0x30]
0x1cb6990  str     w8, [x19]
0x1cb6994  b       #0x1cb69b8                    -> 0x1cb69b8
0x1cb6998  ldrsw   x9, [x10]
0x1cb699c  add     x8, x8, x9, lsl #4
0x1cb69a0  add     x0, x8, #0x138                ; =0x4187138
0x1cb69a4  ldp     x8, x2, [x0]
0x1cb69a8  mov     x0, x20
0x1cb69ac  mov     w1, w21
0x1cb69b0  blr     x8
0x1cb69b4  cbz     w0, #0x1cb6b24                -> 0x1cb6b24
0x1cb69b8  adrp    x20, #0x4475000
0x1cb69bc  ldrb    w8, [x20, #0x8c6]
0x1cb69c0  cbnz    w8, #0x1cb69d8                -> 0x1cb69d8
0x1cb69c4  adrp    x0, #0x4187000
0x1cb69c8  ldr     x0, [x0, #0x788]
0x1cb69cc  bl      #0x1b64570                    -> 0x1b64570
0x1cb69d0  mov     w8, #1
0x1cb69d4  strb    w8, [x20, #0x8c6]
0x1cb69d8  ldr     x20, [sp]
0x1cb69dc  cbz     x20, #0x1cb6a4c               -> 0x1cb6a4c
0x1cb69e0  adrp    x10, #0x4187000
0x1cb69e4  ldr     x8, [x20]
0x1cb69e8  ldrh    w21, [sp, #8]
0x1cb69ec  ldr     x10, [x10, #0x788]
0x1cb69f0  ldrh    w9, [x8, #0x12e]
0x1cb69f4  ldr     x1, [x10]
0x1cb69f8  cbz     x9, #0x1cb6a1c                -> 0x1cb6a1c
0x1cb69fc  ldr     x10, [x8, #0xb0]
0x1cb6a00  add     x10, x10, #8                  ; =0x4187008
0x1cb6a04  ldur    x11, [x10, #-8]
0x1cb6a08  cmp     x11, x1
0x1cb6a0c  b.eq    #0x1cb6a2c                    -> 0x1cb6a2c
0x1cb6a10  subs    x9, x9, #1
0x1cb6a14  add     x10, x10, #0x10               ; =0x4187010
0x1cb6a18  b.ne    #0x1cb6a04                    -> 0x1cb6a04
0x1cb6a1c  mov     w2, #2
0x1cb6a20  mov     x0, x20
0x1cb6a24  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb6a28  b       #0x1cb6a3c                    -> 0x1cb6a3c
0x1cb6a2c  ldr     w9, [x10]
0x1cb6a30  add     w9, w9, #2
0x1cb6a34  add     x8, x8, w9, sxtw #4
0x1cb6a38  add     x0, x8, #0x138                ; =0x4187138
0x1cb6a3c  ldp     x8, x2, [x0]
0x1cb6a40  mov     x0, x20
0x1cb6a44  mov     w1, w21
0x1cb6a48  blr     x8
0x1cb6a4c  ldr     x8, [x19, #0x28]
0x1cb6a50  cbz     x8, #0x1cb6b60                -> 0x1cb6b60
0x1cb6a54  ldrb    w9, [x8, #0x14]
0x1cb6a58  cbz     w9, #0x1cb6a6c                -> 0x1cb6a6c
0x1cb6a5c  ldrb    w8, [x8, #0x15]
0x1cb6a60  cmp     w8, #0
0x1cb6a64  cset    w20, eq
0x1cb6a68  b       #0x1cb6a70                    -> 0x1cb6a70
0x1cb6a6c  mov     w20, wzr
0x1cb6a70  ldr     x21, [x19, #8]
0x1cb6a74  mov     w8, #-2
0x1cb6a78  str     w8, [x19]
0x1cb6a7c  str     xzr, [x19, #0x28]
0x1cb6a80  cbz     x21, #0x1cb6af8               -> 0x1cb6af8
0x1cb6a84  adrp    x8, #0x4187000
0x1cb6a88  ldr     x8, [x8, #0x738]
0x1cb6a8c  ldr     x8, [x8]
0x1cb6a90  ldr     x0, [x8, #0x20]
0x1cb6a94  ldrb    w8, [x0, #0x135]
0x1cb6a98  tbnz    w8, #0, #0x1cb6aa0            -> 0x0 -> 0x1cb6aa0
0x1cb6a9c  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb6aa0  ldr     x8, [x0, #0xc0]
0x1cb6aa4  ldr     x1, [x8, #8]
0x1cb6aa8  ldrb    w8, [x1, #0x135]
0x1cb6aac  tbnz    w8, #0, #0x1cb6abc            -> 0x0 -> 0x1cb6abc
0x1cb6ab0  mov     x0, x1
0x1cb6ab4  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb6ab8  mov     x1, x0
0x1cb6abc  ldr     x8, [x21]
0x1cb6ac0  ldrh    w9, [x8, #0x12e]
0x1cb6ac4  cbz     x9, #0x1cb6ae8                -> 0x1cb6ae8
0x1cb6ac8  ldr     x10, [x8, #0xb0]
0x1cb6acc  add     x10, x10, #8                  ; =0x4187008
0x1cb6ad0  ldur    x11, [x10, #-8]
0x1cb6ad4  cmp     x11, x1
0x1cb6ad8  b.eq    #0x1cb6b00                    -> 0x1cb6b00
0x1cb6adc  subs    x9, x9, #1
0x1cb6ae0  add     x10, x10, #0x10               ; =0x4187010
0x1cb6ae4  b.ne    #0x1cb6ad0                    -> 0x1cb6ad0
0x1cb6ae8  mov     w2, #2
0x1cb6aec  mov     x0, x21
0x1cb6af0  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb6af4  b       #0x1cb6b10                    -> 0x1cb6b10
0x1cb6af8  strb    w20, [x19, #0x18]
0x1cb6afc  b       #0x1cb6b4c                    -> 0x1cb6b4c
0x1cb6b00  ldr     w9, [x10]
0x1cb6b04  add     w9, w9, #2
0x1cb6b08  add     x8, x8, w9, sxtw #4
0x1cb6b0c  add     x0, x8, #0x138                ; =0x4187138
0x1cb6b10  ldp     x8, x2, [x0]
0x1cb6b14  mov     x0, x21
0x1cb6b18  mov     w1, w20
0x1cb6b1c  blr     x8
0x1cb6b20  b       #0x1cb6b4c                    -> 0x1cb6b4c
0x1cb6b24  str     wzr, [x19]
0x1cb6b28  ldr     q0, [sp]
0x1cb6b2c  adrp    x8, #0x4187000
0x1cb6b30  add     x0, x19, #8
0x1cb6b34  str     q0, [x19, #0x30]
0x1cb6b38  ldr     x8, [x8, #0x7d8]
0x1cb6b3c  ldr     x3, [x8]
0x1cb6b40  mov     x1, sp
0x1cb6b44  mov     x2, x19
0x1cb6b48  bl      #0x1cc0134                    -> 0x1cc0134
0x1cb6b4c  ldp     x20, x19, [sp, #0x30]
0x1cb6b50  ldp     x22, x21, [sp, #0x20]
0x1cb6b54  ldp     x30, x23, [sp, #0x10]
0x1cb6b58  add     sp, sp, #0x40
0x1cb6b5c  ret     
0x1cb6b60  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb6b64  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb6b68  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb6b6c  b       #0x1cb6ba4                    -> 0x1cb6ba4
0x1cb6b70  b       #0x1cb6ba4                    -> 0x1cb6ba4
0x1cb6b74  b       #0x1cb6ba4                    -> 0x1cb6ba4
0x1cb6b78  b       #0x1cb6ba4                    -> 0x1cb6ba4
0x1cb6b7c  b       #0x1cb6ba4                    -> 0x1cb6ba4
0x1cb6b80  b       #0x1cb6ba4                    -> 0x1cb6ba4
0x1cb6b84  b       #0x1cb6ba4                    -> 0x1cb6ba4
0x1cb6b88  b       #0x1cb6ba4                    -> 0x1cb6ba4
0x1cb6b8c  b       #0x1cb6ba4                    -> 0x1cb6ba4
0x1cb6b90  b       #0x1cb6ba4                    -> 0x1cb6ba4
0x1cb6b94  b       #0x1cb6ba4                    -> 0x1cb6ba4
0x1cb6b98  b       #0x1cb6ba4                    -> 0x1cb6ba4
0x1cb6b9c  b       #0x1cb6ba4                    -> 0x1cb6ba4
0x1cb6ba0  b       #0x1cb6ba4                    -> 0x1cb6ba4
0x1cb6ba4  mov     x20, x0
0x1cb6ba8  cmp     w1, #1
0x1cb6bac  b.ne    #0x1cb6cbc                    -> 0x1cb6cbc
0x1cb6bb0  mov     x0, x20
0x1cb6bb4  bl      #0x3e998d0                    -> 0x3e998d0
0x1cb6bb8  mov     x20, x0
0x1cb6bbc  adrp    x0, #0x4185000
0x1cb6bc0  ldr     x0, [x0, #0x2e0]
0x1cb6bc4  bl      #0x1b64584                    -> 0x1b64584
0x1cb6bc8  ldr     x8, [x20]
0x1cb6bcc  ldr     x1, [x8]
0x1cb6bd0  bl      #0x1b64bf8                    -> 0x1b64bf8
0x1cb6bd4  tbz     w0, #0, #0x1cb6c94            -> 0x0 -> 0x1cb6c94
0x1cb6bd8  ldr     x20, [x20]
0x1cb6bdc  bl      #0x3e998e0                    -> 0x3e998e0
0x1cb6be0  mov     w8, #-2
0x1cb6be4  str     w8, [x19]
0x1cb6be8  str     xzr, [x19, #0x28]
0x1cb6bec  adrp    x0, #0x4187000
0x1cb6bf0  ldr     x0, [x0, #0x790]
0x1cb6bf4  bl      #0x1b64584                    -> 0x1b64584
0x1cb6bf8  ldr     x21, [x19, #8]
0x1cb6bfc  cbz     x21, #0x1cb6c68               -> 0x1cb6c68
0x1cb6c00  ldr     x0, [x0, #0x20]
0x1cb6c04  ldrb    w8, [x0, #0x135]
0x1cb6c08  tbnz    w8, #0, #0x1cb6c10            -> 0x0 -> 0x1cb6c10
0x1cb6c0c  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb6c10  ldr     x8, [x0, #0xc0]
0x1cb6c14  ldr     x1, [x8, #8]
0x1cb6c18  ldrb    w8, [x1, #0x135]
0x1cb6c1c  tbnz    w8, #0, #0x1cb6c2c            -> 0x0 -> 0x1cb6c2c
0x1cb6c20  mov     x0, x1
0x1cb6c24  bl      #0x1bc5534                    -> 0x1bc5534
0x1cb6c28  mov     x1, x0
0x1cb6c2c  ldr     x8, [x21]
0x1cb6c30  ldrh    w9, [x8, #0x12e]
0x1cb6c34  cbz     x9, #0x1cb6c58                -> 0x1cb6c58
0x1cb6c38  ldr     x10, [x8, #0xb0]
0x1cb6c3c  add     x10, x10, #8                  ; =0x4187008
0x1cb6c40  ldur    x11, [x10, #-8]
0x1cb6c44  cmp     x11, x1
0x1cb6c48  b.eq    #0x1cb6c70                    -> 0x1cb6c70
0x1cb6c4c  subs    x9, x9, #1
0x1cb6c50  add     x10, x10, #0x10               ; =0x4187010
0x1cb6c54  b.ne    #0x1cb6c40                    -> 0x1cb6c40
0x1cb6c58  mov     w2, #3
0x1cb6c5c  mov     x0, x21
0x1cb6c60  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb6c64  b       #0x1cb6c80                    -> 0x1cb6c80
0x1cb6c68  str     x20, [x19, #0x10]
0x1cb6c6c  b       #0x1cb6b4c                    -> 0x1cb6b4c
0x1cb6c70  ldr     w9, [x10]
0x1cb6c74  add     w9, w9, #3
0x1cb6c78  add     x8, x8, w9, sxtw #4
0x1cb6c7c  add     x0, x8, #0x138                ; =0x4187138
0x1cb6c80  ldp     x8, x2, [x0]
0x1cb6c84  mov     x0, x21
0x1cb6c88  mov     x1, x20
0x1cb6c8c  blr     x8
0x1cb6c90  b       #0x1cb6b4c                    -> 0x1cb6b4c
0x1cb6c94  mov     w0, #8
0x1cb6c98  bl      #0x3e998f0                    -> 0x3e998f0
0x1cb6c9c  ldr     x8, [x20]
0x1cb6ca0  str     x8, [x0]
0x1cb6ca4  adrp    x1, #0x3e9f000
0x1cb6ca8  add     x1, x1, #0xc98                ; =0x3e9fc98
0x1cb6cac  mov     x2, xzr
0x1cb6cb0  bl      #0x3e99900                    -> 0x3e99900
0x1cb6cb4  mov     x20, x0
0x1cb6cb8  bl      #0x3e998e0                    -> 0x3e998e0
0x1cb6cbc  mov     x0, x20
0x1cb6cc0  bl      #0x1c65b3c                    -> 0x1c65b3c
0x1cb6cc4  bl      #0x194772c                    -> 0x194772c
0x1cb6cc8  str     x30, [sp, #-0x30]!
0x1cb6ccc  stp     x22, x21, [sp, #0x10]
0x1cb6cd0  stp     x20, x19, [sp, #0x20]
0x1cb6cd4  adrp    x22, #0x4475000
0x1cb6cd8  adrp    x21, #0x4187000
0x1cb6cdc  ldrb    w8, [x22, #0x87a]
0x1cb6ce0  ldr     x21, [x21, #0x798]
0x1cb6ce4  mov     x19, x1
0x1cb6ce8  mov     x20, x0
0x1cb6cec  tbnz    w8, #0, #0x1cb6d04            -> 0x0 -> 0x1cb6d04
0x1cb6cf0  adrp    x0, #0x4187000
0x1cb6cf4  ldr     x0, [x0, #0x798]
0x1cb6cf8  bl      #0x1b64570                    -> 0x1b64570
0x1cb6cfc  mov     w8, #1
0x1cb6d00  strb    w8, [x22, #0x87a]
0x1cb6d04  ldr     x2, [x21]
0x1cb6d08  add     x0, x20, #8                   ; =0x4475008
0x1cb6d0c  mov     x1, x19
0x1cb6d10  ldp     x20, x19, [sp, #0x20]
0x1cb6d14  ldp     x22, x21, [sp, #0x10]
0x1cb6d18  ldr     x30, [sp], #0x30
0x1cb6d1c  b       #0x27afa00                    -> 0x27afa00
0x1cb6d20  ldr     w8, [x0, #0x10]
0x1cb6d24  cmp     w8, #1
0x1cb6d28  b.eq    #0x1cb6d34                    -> 0x1cb6d34
0x1cb6d2c  cmn     w8, #3
0x1cb6d30  b.ne    #0x1cb6d38                    -> 0x1cb6d38
0x1cb6d34  b       #0x1cb6ee0                    -> 0x1cb6ee0
0x1cb6d38  ret     
0x1cb6d3c  sub     sp, sp, #0x30
0x1cb6d40  stp     x30, x19, [sp, #0x20]
0x1cb6d44  add     x8, sp, #0x18
0x1cb6d48  stp     x8, x0, [sp, #0x10]
0x1cb6d4c  ldr     w8, [x0, #0x10]
0x1cb6d50  cmp     w8, #1
0x1cb6d54  b.eq    #0x1cb6dcc                    -> 0x1cb6dcc
0x1cb6d58  cbnz    w8, #0x1cb6e38                -> 0x1cb6e38
0x1cb6d5c  mov     w8, #-1
0x1cb6d60  str     w8, [x0, #0x10]
0x1cb6d64  mov     x0, xzr
0x1cb6d68  bl      #0x3c688cc                    -> 0x3c688cc  UnityEngine.Time$$get_time
0x1cb6d6c  ldr     x8, [sp, #0x18]
0x1cb6d70  ldr     x0, [x8, #0x20]
0x1cb6d74  str     s0, [x8, #0x30]
0x1cb6d78  mov     x1, xzr
0x1cb6d7c  bl      #0x3e917dc                    -> 0x3e917dc  UnityEngine.Networking.UnityWebRequest$$Get
0x1cb6d80  ldr     x8, [sp, #0x18]
0x1cb6d84  mov     w9, #-3
0x1cb6d88  str     x0, [x8, #0x38]
0x1cb6d8c  str     w9, [x8, #0x10]
0x1cb6d90  cbz     x0, #0x1cb6e4c                -> 0x1cb6e4c
0x1cb6d94  mov     w1, #1
0x1cb6d98  mov     x2, xzr
0x1cb6d9c  bl      #0x3e9168c                    -> 0x3e9168c  UnityEngine.Networking.UnityWebRequest$$set_timeout
0x1cb6da0  ldr     x8, [sp, #0x18]
0x1cb6da4  ldr     x0, [x8, #0x38]
0x1cb6da8  cbz     x0, #0x1cb6e50                -> 0x1cb6e50
0x1cb6dac  mov     x1, xzr
0x1cb6db0  bl      #0x3e906a8                    -> 0x3e906a8  UnityEngine.Networking.UnityWebRequest$$SendWebRequest
0x1cb6db4  ldr     x9, [sp, #0x18]
0x1cb6db8  mov     x8, x0
0x1cb6dbc  mov     w0, #1
0x1cb6dc0  str     x8, [x9, #0x18]
0x1cb6dc4  str     w0, [x9, #0x10]
0x1cb6dc8  b       #0x1cb6e3c                    -> 0x1cb6e3c
0x1cb6dcc  ldr     x8, [x0, #0x38]
0x1cb6dd0  mov     w9, #-3
0x1cb6dd4  str     w9, [x0, #0x10]
0x1cb6dd8  cbz     x8, #0x1cb6e48                -> 0x1cb6e48
0x1cb6ddc  mov     x0, x8
0x1cb6de0  mov     x1, xzr
0x1cb6de4  bl      #0x3e90d14                    -> 0x3e90d14  UnityEngine.Networking.UnityWebRequest$$get_result
0x1cb6de8  ldr     x9, [sp, #0x18]
0x1cb6dec  cmp     w0, #2
0x1cb6df0  ldr     x8, [x9, #0x28]
0x1cb6df4  ldr     s0, [x9, #0x30]
0x1cb6df8  b.ne    #0x1cb6e18                    -> 0x1cb6e18
0x1cb6dfc  cbz     x8, #0x1cb6e54                -> 0x1cb6e54
0x1cb6e00  ldr     x0, [x8, #0x40]
0x1cb6e04  ldr     x9, [x8, #0x18]
0x1cb6e08  ldr     x2, [x8, #0x28]
0x1cb6e0c  mov     w1, wzr
0x1cb6e10  blr     x9
0x1cb6e14  b       #0x1cb6e30                    -> 0x1cb6e30
0x1cb6e18  cbz     x8, #0x1cb6e58                -> 0x1cb6e58
0x1cb6e1c  ldr     x0, [x8, #0x40]
0x1cb6e20  ldr     x9, [x8, #0x18]
0x1cb6e24  ldr     x2, [x8, #0x28]
0x1cb6e28  mov     w1, #1
0x1cb6e2c  blr     x9
0x1cb6e30  ldr     x0, [sp, #0x18]
0x1cb6e34  bl      #0x1cb6ee0                    -> 0x1cb6ee0  AntiAddiction.<CheckInternetConnection>d__7$$<>m__Finally1
0x1cb6e38  mov     w0, wzr
0x1cb6e3c  ldp     x30, x19, [sp, #0x20]
0x1cb6e40  add     sp, sp, #0x30
0x1cb6e44  ret     
0x1cb6e48  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb6e4c  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb6e50  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb6e54  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb6e58  bl      #0x1b647c8                    -> 0x1b647c8
0x1cb6e5c  b       #0x1cb6e80                    -> 0x1cb6e80
0x1cb6e60  b       #0x1cb6e80                    -> 0x1cb6e80
0x1cb6e64  b       #0x1cb6e80                    -> 0x1cb6e80
0x1cb6e68  b       #0x1cb6e80                    -> 0x1cb6e80
0x1cb6e6c  b       #0x1cb6e80                    -> 0x1cb6e80
0x1cb6e70  b       #0x1cb6e80                    -> 0x1cb6e80
0x1cb6e74  b       #0x1cb6e80                    -> 0x1cb6e80
0x1cb6e78  b       #0x1cb6e80                    -> 0x1cb6e80
0x1cb6e7c  b       #0x1cb6e80                    -> 0x1cb6e80
0x1cb6e80  cmp     w1, #1
0x1cb6e84  b.ne    #0x1cb6eb4                    -> 0x1cb6eb4
0x1cb6e88  bl      #0x3e998d0                    -> 0x3e998d0
0x1cb6e8c  ldr     x19, [x0]
0x1cb6e90  str     x19, [sp, #8]
0x1cb6e94  bl      #0x3e998e0                    -> 0x3e998e0
0x1cb6e98  cbz     x19, #0x1cb6e38               -> 0x1cb6e38
0x1cb6e9c  add     x8, sp, #8
0x1cb6ea0  add     x0, x8, #8                    ; =0x4187008
0x1cb6ea4  bl      #0x1949d68                    -> 0x1949d68
0x1cb6ea8  mov     x0, x19
0x1cb6eac  bl      #0x1b647c0                    -> 0x1b647c0
0x1cb6eb0  cbnz    x19, #0x1cb6eb8               -> 0x1cb6eb8
0x1cb6eb4  bl      #0x1c65b3c                    -> 0x1c65b3c
0x1cb6eb8  ldr     x0, [sp, #0x18]
0x1cb6ebc  ldr     w8, [x0, #0x10]
0x1cb6ec0  cmp     w8, #1
0x1cb6ec4  b.eq    #0x1cb6ed0                    -> 0x1cb6ed0
0x1cb6ec8  cmn     w8, #3
0x1cb6ecc  b.ne    #0x1cb6ed4                    -> 0x1cb6ed4
0x1cb6ed0  bl      #0x1cb6ee0                    -> 0x1cb6ee0  AntiAddiction.<CheckInternetConnection>d__7$$<>m__Finally1
0x1cb6ed4  mov     x0, x19
0x1cb6ed8  bl      #0x1b647c0                    -> 0x1b647c0
0x1cb6edc  bl      #0x194772c                    -> 0x194772c
0x1cb6ee0  str     x30, [sp, #-0x20]!
0x1cb6ee4  stp     x20, x19, [sp, #0x10]
0x1cb6ee8  adrp    x19, #0x4475000
0x1cb6eec  ldrb    w8, [x19, #0x87b]
0x1cb6ef0  mov     x20, x0
0x1cb6ef4  tbnz    w8, #0, #0x1cb6f0c            -> 0x0 -> 0x1cb6f0c
0x1cb6ef8  adrp    x0, #0x4185000
0x1cb6efc  ldr     x0, [x0, #0x430]
0x1cb6f00  bl      #0x1b64570                    -> 0x1b64570
0x1cb6f04  mov     w8, #1
0x1cb6f08  strb    w8, [x19, #0x87b]
0x1cb6f0c  ldr     x19, [x20, #0x38]
0x1cb6f10  mov     w8, #-1
0x1cb6f14  str     w8, [x20, #0x10]
0x1cb6f18  cbz     x19, #0x1cb6f64               -> 0x1cb6f64
0x1cb6f1c  adrp    x10, #0x4185000
0x1cb6f20  ldr     x8, [x19]
0x1cb6f24  ldr     x10, [x10, #0x430]
0x1cb6f28  ldrh    w9, [x8, #0x12e]
0x1cb6f2c  ldr     x1, [x10]
0x1cb6f30  cbz     x9, #0x1cb6f54                -> 0x1cb6f54
0x1cb6f34  ldr     x10, [x8, #0xb0]
0x1cb6f38  add     x10, x10, #8                  ; =0x4185008
0x1cb6f3c  ldur    x11, [x10, #-8]
0x1cb6f40  cmp     x11, x1
0x1cb6f44  b.eq    #0x1cb6f70                    -> 0x1cb6f70
0x1cb6f48  subs    x9, x9, #1
0x1cb6f4c  add     x10, x10, #0x10               ; =0x4185010
0x1cb6f50  b.ne    #0x1cb6f3c                    -> 0x1cb6f3c
0x1cb6f54  mov     x0, x19
0x1cb6f58  mov     w2, wzr
0x1cb6f5c  bl      #0x1bc5638                    -> 0x1bc5638
0x1cb6f60  b       #0x1cb6f7c                    -> 0x1cb6f7c
0x1cb6f64  ldp     x20, x19, [sp, #0x10]
0x1cb6f68  ldr     x30, [sp], #0x20
0x1cb6f6c  ret     
0x1cb6f70  ldrsw   x9, [x10]
0x1cb6f74  add     x8, x8, x9, lsl #4
0x1cb6f78  add     x0, x8, #0x138                ; =0x4187138
0x1cb6f7c  ldp     x2, x1, [x0]
0x1cb6f80  mov     x0, x19
0x1cb6f84  ldp     x20, x19, [sp, #0x10]
0x1cb6f88  ldr     x30, [sp], #0x20
0x1cb6f8c  br      x2
0x1cb6f90  ldr     x0, [x0, #0x18]
0x1cb6f94  ret     
0x1cb6f98  stp     x30, x19, [sp, #-0x10]!
0x1cb6f9c  adrp    x0, #0x4185000
0x1cb6fa0  ldr     x0, [x0, #0xc78]
0x1cb6fa4  bl      #0x1b64584                    -> 0x1b64584
0x1cb6fa8  bl      #0x1b647b8                    -> 0x1b647b8
0x1cb6fac  mov     x1, xzr
0x1cb6fb0  mov     x19, x0
0x1cb6fb4  bl      #0x347d80c                    -> 0x347d80c  System.NotSupportedException$$.ctor
0x1cb6fb8  adrp    x0, #0x4187000
0x1cb6fbc  ldr     x0, [x0, #0x810]
0x1cb6fc0  bl      #0x1b64584                    -> 0x1b64584
0x1cb6fc4  mov     x1, x0
0x1cb6fc8  mov     x0, x19
0x1cb6fcc  bl      #0x1b64694                    -> 0x1b64694
0x1cb6fd0  ldr     x0, [x0, #0x18]
0x1cb6fd4  ret     
0x1cb6fd8  str     x30, [sp, #-0x20]!
0x1cb6fdc  stp     x20, x19, [sp, #0x10]
0x1cb6fe0  adrp    x19, #0x4475000
0x1cb6fe4  adrp    x20, #0x4187000
0x1cb6fe8  ldrb    w8, [x19, #0x87c]
0x1cb6fec  ldr     x20, [x20, #0x710]
0x1cb6ff0  tbnz    w8, #0, #0x1cb7008            -> 0x0 -> 0x1cb7008
0x1cb6ff4  adrp    x0, #0x4187000
0x1cb6ff8  ldr     x0, [x0, #0x710]
0x1cb6ffc  bl      #0x1b64570                    -> 0x1b64570
0x1cb7000  mov     w8, #1
0x1cb7004  strb    w8, [x19, #0x87c]
0x1cb7008  ldr     x0, [x20]
0x1cb700c  ldr     w8, [x0, #0xe0]
0x1cb7010  cbnz    w8, #0x1cb7018                -> 0x1cb7018
0x1cb7014  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb7018  ldp     x20, x19, [sp, #0x10]
0x1cb701c  mov     x0, xzr
0x1cb7020  ldr     x30, [sp], #0x20
0x1cb7024  b       #0x3a78a48                    -> 0x3a78a48
0x1cb7028  stp     x30, x21, [sp, #-0x20]!
0x1cb702c  stp     x20, x19, [sp, #0x10]
0x1cb7030  adrp    x21, #0x4475000
0x1cb7034  adrp    x20, #0x4187000
0x1cb7038  ldrb    w8, [x21, #0x87d]
0x1cb703c  ldr     x20, [x20, #0x710]
0x1cb7040  mov     w19, w1
0x1cb7044  tbnz    w8, #0, #0x1cb705c            -> 0x0 -> 0x1cb705c
0x1cb7048  adrp    x0, #0x4187000
0x1cb704c  ldr     x0, [x0, #0x710]
0x1cb7050  bl      #0x1b64570                    -> 0x1b64570
0x1cb7054  mov     w8, #1
0x1cb7058  strb    w8, [x21, #0x87d]
0x1cb705c  ldr     x0, [x20]
0x1cb7060  ldr     w8, [x0, #0xe0]
0x1cb7064  cbnz    w8, #0x1cb706c                -> 0x1cb706c
0x1cb7068  bl      #0x1b646a4                    -> 0x1b646a4
0x1cb706c  mov     x0, xzr
0x1cb7070  tbz     w19, #0, #0x1cb7080           -> 0x0 -> 0x1cb7080
0x1cb7074  ldp     x20, x19, [sp, #0x10]
0x1cb7078  ldp     x30, x21, [sp], #0x20
0x1cb707c  b       #0x3a78980                    -> 0x3a78980
0x1cb7080  ldp     x20, x19, [sp, #0x10]
0x1cb7084  ldp     x30, x21, [sp], #0x20
0x1cb7088  b       #0x3a78a48                    -> 0x3a78a48
0x1cb708c  mov     x1, xzr
