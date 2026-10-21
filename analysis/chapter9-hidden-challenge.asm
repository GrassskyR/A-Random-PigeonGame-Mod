
// 0x1d24350 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$UnlockC9HiddenSongKeys
0x1d24350: stp      x30, x21, [sp, #-0x20]!
0x1d24354: stp      x20, x19, [sp, #0x10]
0x1d24358: adrp     x20, #0x4475000
0x1d2435c: adrp     x19, #0x4186000
0x1d24360: ldrb     w8, [x20, #0xcf4]
0x1d24364: ldr      x19, [x19, #0xe68]
0x1d24368: tbnz     w8, #0, #0x1d243b0
0x1d2436c: adrp     x0, #0x418b000
0x1d24370: ldr      x0, [x0, #0x2e0]
0x1d24374: bl       #0x1b64570 | 
0x1d24378: adrp     x0, #0x4189000
0x1d2437c: ldr      x0, [x0, #0xa90]
0x1d24380: bl       #0x1b64570 | 
0x1d24384: adrp     x0, #0x4189000
0x1d24388: ldr      x0, [x0, #0xa98]
0x1d2438c: bl       #0x1b64570 | 
0x1d24390: adrp     x0, #0x4186000
0x1d24394: ldr      x0, [x0, #0xe68]
0x1d24398: bl       #0x1b64570 | 
0x1d2439c: adrp     x0, #0x418a000
0x1d243a0: ldr      x0, [x0, #0x490] | 0x418a490 'Chapter9UnlockBegin'
0x1d243a4: bl       #0x1b64570 | 
0x1d243a8: mov      w8, #1
0x1d243ac: strb     w8, [x20, #0xcf4]
0x1d243b0: ldr      x0, [x19]
0x1d243b4: adrp     x19, #0x418a000
0x1d243b8: ldr      w8, [x0, #0xe0]
0x1d243bc: ldr      x19, [x19, #0x490] | 0x418a490 'Chapter9UnlockBegin'
0x1d243c0: cbnz     w8, #0x1d243c8
0x1d243c4: bl       #0x1b646a4 | 
0x1d243c8: ldr      x0, [x19]
0x1d243cc: mov      w1, wzr
0x1d243d0: mov      x2, xzr
0x1d243d4: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d243d8: tbz      w0, #0, #0x1d244cc
0x1d243dc: adrp     x20, #0x4475000
0x1d243e0: ldrb     w8, [x20, #0x8c0]
0x1d243e4: cbnz     w8, #0x1d243fc
0x1d243e8: adrp     x0, #0x4186000
0x1d243ec: ldr      x0, [x0, #0xef8]
0x1d243f0: bl       #0x1b64570 | 
0x1d243f4: mov      w8, #1
0x1d243f8: strb     w8, [x20, #0x8c0]
0x1d243fc: adrp     x21, #0x4186000
0x1d24400: ldr      x21, [x21, #0xef8]
0x1d24404: ldr      x8, [x21]
0x1d24408: ldr      x8, [x8, #0xb8]
0x1d2440c: ldr      x8, [x8]
0x1d24410: cbz      x8, #0x1d244d8
0x1d24414: ldr      x9, [x8, #0x70]
0x1d24418: cbz      x9, #0x1d24490
0x1d2441c: ldr      x9, [x8, #0x70]
0x1d24420: cbz      x9, #0x1d244d8
0x1d24424: ldr      w9, [x9, #0x18]
0x1d24428: cmp      w9, #3
0x1d2442c: b.lt     #0x1d24490
0x1d24430: ldr      x0, [x8, #0x70]
0x1d24434: cbz      x0, #0x1d244d8
0x1d24438: adrp     x8, #0x4189000
0x1d2443c: ldr      x8, [x8, #0xa98]
0x1d24440: mov      w1, #2
0x1d24444: ldr      x2, [x8]
0x1d24448: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1d2444c: adrp     x8, #0x418b000
0x1d24450: ldr      x8, [x8, #0x2e0]
0x1d24454: mov      x19, x0
0x1d24458: ldr      x8, [x8]
0x1d2445c: ldr      w9, [x8, #0xe0]
0x1d24460: cbnz     w9, #0x1d2446c
0x1d24464: mov      x0, x8
0x1d24468: bl       #0x1b646a4 | 
0x1d2446c: mov      x0, x19
0x1d24470: bl       #0x1d246e4 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<UnlockC9HiddenSongKeys>g__TryUnlock|30_0
0x1d24474: ldrb     w8, [x20, #0x8c0]
0x1d24478: cbnz     w8, #0x1d24490
0x1d2447c: adrp     x0, #0x4186000
0x1d24480: ldr      x0, [x0, #0xef8]
0x1d24484: bl       #0x1b64570 | 
0x1d24488: mov      w8, #1
0x1d2448c: strb     w8, [x20, #0x8c0]
0x1d24490: ldr      x8, [x21]
0x1d24494: ldr      x8, [x8, #0xb8]
0x1d24498: ldr      x8, [x8]
0x1d2449c: cbz      x8, #0x1d244d8
0x1d244a0: adrp     x9, #0x418b000
0x1d244a4: ldr      x9, [x9, #0x2e0]
0x1d244a8: ldr      x19, [x8, #0x78]
0x1d244ac: ldr      x0, [x9]
0x1d244b0: ldr      w9, [x0, #0xe0]
0x1d244b4: cbnz     w9, #0x1d244bc
0x1d244b8: bl       #0x1b646a4 | 
0x1d244bc: mov      x0, x19
0x1d244c0: ldp      x20, x19, [sp, #0x10]
0x1d244c4: ldp      x30, x21, [sp], #0x20
0x1d244c8: b        #0x1d246e4 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<UnlockC9HiddenSongKeys>g__TryUnlock|30_0
0x1d244cc: ldp      x20, x19, [sp, #0x10]
0x1d244d0: ldp      x30, x21, [sp], #0x20
0x1d244d4: ret      
0x1d244d8: bl       #0x1b647c8 | 

// 0x1d246a0 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$HasHiddenChallengeSong
0x1d246a0: str      x30, [sp, #-0x10]!
0x1d246a4: cbz      x0, #0x1d246d4
0x1d246a8: ldr      x8, [x0, #0x78]
0x1d246ac: cbz      x8, #0x1d246d8
0x1d246b0: ldr      x8, [x8, #0x10]
0x1d246b4: cbz      x8, #0x1d246d8
0x1d246b8: ldr      x8, [x8, #0x10]
0x1d246bc: cbz      x8, #0x1d246d8
0x1d246c0: ldr      x0, [x8, #0x10]
0x1d246c4: mov      x1, xzr
0x1d246c8: bl       #0x3308894 | System.String$$IsNullOrEmpty
0x1d246cc: eor      w8, w0, #1
0x1d246d0: b        #0x1d246d8 | 
0x1d246d4: mov      w8, wzr
0x1d246d8: and      w0, w8, #1
0x1d246dc: ldr      x30, [sp], #0x10
0x1d246e0: ret      

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
