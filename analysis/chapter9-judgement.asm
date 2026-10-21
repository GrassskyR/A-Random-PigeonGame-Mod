
// 0x1cb789c BinaryUtils$$LoopReverseXor
0x1cb789c: str      x30, [sp, #-0x20]!
0x1cb78a0: stp      x20, x19, [sp, #0x10]
0x1cb78a4: adrp     x20, #0x4475000
0x1cb78a8: ldrb     w8, [x20, #0x883]
0x1cb78ac: mov      x19, x0
0x1cb78b0: tbnz     w8, #0, #0x1cb78c8
0x1cb78b4: adrp     x0, #0x4185000
0x1cb78b8: ldr      x0, [x0, #0x240]
0x1cb78bc: bl       #0x1b64570 | 
0x1cb78c0: mov      w8, #1
0x1cb78c4: strb     w8, [x20, #0x883]
0x1cb78c8: cbz      x19, #0x1cb7a08
0x1cb78cc: adrp     x8, #0x4185000
0x1cb78d0: ldr      x8, [x8, #0x240]
0x1cb78d4: ldr      w1, [x19, #0x18]
0x1cb78d8: ldr      x0, [x8]
0x1cb78dc: bl       #0x1b64614 | 
0x1cb78e0: ldr      x13, [x19, #0x18]
0x1cb78e4: sub      w9, w13, #1
0x1cb78e8: cmp      w9, #0
0x1cb78ec: b.le     #0x1cb7998
0x1cb78f0: mov      x9, xzr
0x1cb78f4: and      x13, x13, #0xffffffff
0x1cb78f8: add      x8, x0, #0x20
0x1cb78fc: mov      w10, #-0x56
0x1cb7900: mov      w11, #0x55
0x1cb7904: mov      w12, #0x33
0x1cb7908: cmp      x9, w13, uxtw
0x1cb790c: b.hs     #0x1cb7a04
0x1cb7910: and      x14, x13, #0xffffffff
0x1cb7914: add      x13, x9, #1
0x1cb7918: cmp      x13, x14
0x1cb791c: b.hs     #0x1cb7a04
0x1cb7920: cbz      x0, #0x1cb7a08
0x1cb7924: ldr      w14, [x0, #0x18]
0x1cb7928: sub      x13, x13, #1
0x1cb792c: cmp      x13, x14
0x1cb7930: b.hs     #0x1cb7a04
0x1cb7934: add      x14, x19, x9
0x1cb7938: ldrb     w14, [x14, #0x20]
0x1cb793c: add      x15, x19, x9
0x1cb7940: ldrb     w15, [x15, #0x21]
0x1cb7944: and      w16, w10, w14, lsl #1
0x1cb7948: and      w14, w11, w14, lsr #1
0x1cb794c: orr      w14, w16, w14
0x1cb7950: lsl      w16, w14, #2
0x1cb7954: and      w14, w12, w14, lsr #2
0x1cb7958: and      w16, w16, #0xffffffcf
0x1cb795c: orr      w14, w16, w14
0x1cb7960: ubfx     w16, w14, #4, #4
0x1cb7964: bfi      w16, w14, #4, #0x1c
0x1cb7968: eor      w14, w15, w16
0x1cb796c: strb     w14, [x8, x9]
0x1cb7970: ldr      x15, [x19, #0x18]
0x1cb7974: add      x9, x13, #1
0x1cb7978: sub      w14, w15, #1
0x1cb797c: cmp      x9, w14, sxtw
0x1cb7980: and      x13, x15, #0xffffffff
0x1cb7984: b.lt     #0x1cb7908
0x1cb7988: sxtw     x8, w14
0x1cb798c: mov      w9, w14
0x1cb7990: cbnz     w13, #0x1cb79a0
0x1cb7994: b        #0x1cb7a04 | 
0x1cb7998: sxtw     x8, w9
0x1cb799c: cbz      w13, #0x1cb7a04
0x1cb79a0: cbz      x0, #0x1cb7a08
0x1cb79a4: ldr      w10, [x0, #0x18]
0x1cb79a8: cmp      w9, w10
0x1cb79ac: b.hs     #0x1cb7a04
0x1cb79b0: add      x9, x19, x8
0x1cb79b4: ldrb     w9, [x9, #0x20]
0x1cb79b8: mov      w10, #-0x56
0x1cb79bc: mov      w11, #0x55
0x1cb79c0: ldrb     w12, [x19, #0x20]
0x1cb79c4: and      w10, w10, w9, lsl #1
0x1cb79c8: and      w9, w11, w9, lsr #1
0x1cb79cc: orr      w9, w10, w9
0x1cb79d0: mov      w11, #0x33
0x1cb79d4: lsl      w10, w9, #2
0x1cb79d8: and      w9, w11, w9, lsr #2
0x1cb79dc: and      w10, w10, #0xffffffcf
0x1cb79e0: orr      w9, w10, w9
0x1cb79e4: ubfx     w10, w9, #4, #4
0x1cb79e8: ldp      x20, x19, [sp, #0x10]
0x1cb79ec: bfi      w10, w9, #4, #0x1c
0x1cb79f0: eor      w9, w12, w10
0x1cb79f4: add      x8, x0, x8
0x1cb79f8: strb     w9, [x8, #0x20]
0x1cb79fc: ldr      x30, [sp], #0x20
0x1cb7a00: ret      
0x1cb7a04: bl       #0x1b647d0 | 
0x1cb7a08: bl       #0x1b647c8 | 

// 0x1d45a08 AmetrineLevelMod$$HandleBadOrMiss
0x1d45a08: str      x30, [sp, #-0x10]!
0x1d45a0c: ldr      x8, [x0, #0x38]
0x1d45a10: cbz      x8, #0x1d45a68
0x1d45a14: ldr      x8, [x8, #0x28]
0x1d45a18: cbz      x8, #0x1d45a68
0x1d45a1c: ldrb     w9, [x0, #0x48]
0x1d45a20: cbnz     w9, #0x1d45a60
0x1d45a24: ldr      s0, [x8, #0x90]
0x1d45a28: ldr      s1, [x0, #0x2c]
0x1d45a2c: fcmp     s0, s1
0x1d45a30: b.mi     #0x1d45a60
0x1d45a34: ldr      s1, [x0, #0x30]
0x1d45a38: fcmp     s0, s1
0x1d45a3c: b.gt     #0x1d45a60
0x1d45a40: ldr      x8, [x0, #0x40]
0x1d45a44: mov      w9, #1
0x1d45a48: strb     w9, [x0, #0x48]
0x1d45a4c: cbz      x8, #0x1d45a68
0x1d45a50: mov      x0, x8
0x1d45a54: mov      x1, xzr
0x1d45a58: ldr      x30, [sp], #0x10
0x1d45a5c: b        #0x1d8a5a8 | ScoreControl$$BlockCombo
0x1d45a60: ldr      x30, [sp], #0x10
0x1d45a64: ret      
0x1d45a68: bl       #0x1b647c8 | 

// 0x1d45a94 AmetrineLevelMod$$SubmitResult
0x1d45a94: stp      x30, x21, [sp, #-0x20]!
0x1d45a98: stp      x20, x19, [sp, #0x10]
0x1d45a9c: adrp     x21, #0x4475000
0x1d45aa0: ldrb     w8, [x21, #0xe0b]
0x1d45aa4: mov      x19, x1
0x1d45aa8: mov      x20, x0
0x1d45aac: tbnz     w8, #0, #0x1d45ac4
0x1d45ab0: adrp     x0, #0x418a000
0x1d45ab4: ldr      x0, [x0, #0xaa8] | 0x418aaa8 'Ametrine.GRYSCLMIssionary.0'
0x1d45ab8: bl       #0x1b64570 | 
0x1d45abc: mov      w8, #1
0x1d45ac0: strb     w8, [x21, #0xe0b]
0x1d45ac4: adrp     x21, #0x4475000
0x1d45ac8: ldrb     w8, [x21, #0x8c0]
0x1d45acc: cbnz     w8, #0x1d45ae4
0x1d45ad0: adrp     x0, #0x4186000
0x1d45ad4: ldr      x0, [x0, #0xef8]
0x1d45ad8: bl       #0x1b64570 | 
0x1d45adc: mov      w8, #1
0x1d45ae0: strb     w8, [x21, #0x8c0]
0x1d45ae4: adrp     x8, #0x4186000
0x1d45ae8: ldr      x8, [x8, #0xef8]
0x1d45aec: ldr      x8, [x8]
0x1d45af0: ldr      x8, [x8, #0xb8]
0x1d45af4: ldr      x8, [x8]
0x1d45af8: cbz      x8, #0x1d45b38
0x1d45afc: ldr      x8, [x8, #0x30]
0x1d45b00: cbz      x8, #0x1d45b38
0x1d45b04: adrp     x9, #0x418a000
0x1d45b08: ldr      x9, [x9, #0xaa8] | 0x418aaa8 'Ametrine.GRYSCLMIssionary.0'
0x1d45b0c: ldr      x0, [x8, #0x10]
0x1d45b10: mov      x2, xzr
0x1d45b14: ldr      x1, [x9]
0x1d45b18: bl       #0x33082c8 | System.String$$op_Inequality
0x1d45b1c: tbnz     w0, #0, #0x1d45b2c
0x1d45b20: cbz      x19, #0x1d45b38
0x1d45b24: ldrb     w8, [x20, #0x48]
0x1d45b28: strb     w8, [x19, #0x40]
0x1d45b2c: ldp      x20, x19, [sp, #0x10]
0x1d45b30: ldp      x30, x21, [sp], #0x20
0x1d45b34: ret      
0x1d45b38: bl       #0x1b647c8 | 

// 0x1d4a07c PetrichorLevelMod$$HandleBlockStateChanged
0x1d4a07c: and      w8, w1, #1
0x1d4a080: strb     w8, [x0, #0x30]
0x1d4a084: ret      

// 0x1d4a088 PetrichorLevelMod$$HandleMiss
0x1d4a088: str      x30, [sp, #-0x10]!
0x1d4a08c: ldrb     w8, [x0, #0x30]
0x1d4a090: cbz      w8, #0x1d4a0b4
0x1d4a094: ldr      x8, [x0, #0x28]
0x1d4a098: mov      w9, #1
0x1d4a09c: strb     w9, [x0, #0x31]
0x1d4a0a0: cbz      x8, #0x1d4a0bc
0x1d4a0a4: mov      x0, x8
0x1d4a0a8: mov      x1, xzr
0x1d4a0ac: ldr      x30, [sp], #0x10
0x1d4a0b0: b        #0x1d8a48c | ScoreControl$$FreezeScore
0x1d4a0b4: ldr      x30, [sp], #0x10
0x1d4a0b8: ret      
0x1d4a0bc: bl       #0x1b647c8 | 

// 0x1d4a0c0 PetrichorLevelMod$$SubmitResult
0x1d4a0c0: stp      x30, x21, [sp, #-0x20]!
0x1d4a0c4: stp      x20, x19, [sp, #0x10]
0x1d4a0c8: adrp     x21, #0x4475000
0x1d4a0cc: ldrb     w8, [x21, #0xe32]
0x1d4a0d0: mov      x19, x1
0x1d4a0d4: mov      x20, x0
0x1d4a0d8: tbnz     w8, #0, #0x1d4a0f0
0x1d4a0dc: adrp     x0, #0x418a000
0x1d4a0e0: ldr      x0, [x0, #0xaa0] | 0x418aaa0 'Petrichor.voidMournfinale.0'
0x1d4a0e4: bl       #0x1b64570 | 
0x1d4a0e8: mov      w8, #1
0x1d4a0ec: strb     w8, [x21, #0xe32]
0x1d4a0f0: adrp     x21, #0x4475000
0x1d4a0f4: ldrb     w8, [x21, #0x8c0]
0x1d4a0f8: cbnz     w8, #0x1d4a110
0x1d4a0fc: adrp     x0, #0x4186000
0x1d4a100: ldr      x0, [x0, #0xef8]
0x1d4a104: bl       #0x1b64570 | 
0x1d4a108: mov      w8, #1
0x1d4a10c: strb     w8, [x21, #0x8c0]
0x1d4a110: adrp     x8, #0x4186000
0x1d4a114: ldr      x8, [x8, #0xef8]
0x1d4a118: ldr      x8, [x8]
0x1d4a11c: ldr      x8, [x8, #0xb8]
0x1d4a120: ldr      x8, [x8]
0x1d4a124: cbz      x8, #0x1d4a188
0x1d4a128: ldr      x8, [x8, #0x30]
0x1d4a12c: cbz      x8, #0x1d4a188
0x1d4a130: adrp     x9, #0x418a000
0x1d4a134: ldr      x9, [x9, #0xaa0] | 0x418aaa0 'Petrichor.voidMournfinale.0'
0x1d4a138: ldr      x0, [x8, #0x10]
0x1d4a13c: mov      x2, xzr
0x1d4a140: ldr      x1, [x9]
0x1d4a144: bl       #0x33082c8 | System.String$$op_Inequality
0x1d4a148: tbnz     w0, #0, #0x1d4a17c
0x1d4a14c: cbz      x19, #0x1d4a188
0x1d4a150: ldr      w8, [x19, #0x10]
0x1d4a154: mov      w9, #0x6d80
0x1d4a158: movk     w9, #0xd, lsl #16
0x1d4a15c: cmp      w8, w9
0x1d4a160: b.ge     #0x1d4a16c
0x1d4a164: mov      w8, wzr
0x1d4a168: b        #0x1d4a178 | 
0x1d4a16c: ldrb     w8, [x20, #0x31]
0x1d4a170: cmp      w8, #0
0x1d4a174: cset     w8, eq
0x1d4a178: strb     w8, [x19, #0x41]
0x1d4a17c: ldp      x20, x19, [sp, #0x10]
0x1d4a180: ldp      x30, x21, [sp], #0x20
0x1d4a184: ret      
0x1d4a188: bl       #0x1b647c8 | 
