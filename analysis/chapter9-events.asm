
// 0x1cb4418 AboutUs$$Start
0x1cb4418: stp      x30, x21, [sp, #-0x20]!
0x1cb441c: stp      x20, x19, [sp, #0x10]
0x1cb4420: adrp     x20, #0x4475000
0x1cb4424: adrp     x21, #0x4187000
0x1cb4428: ldrb     w8, [x20, #0x869]
0x1cb442c: ldr      x21, [x21, #0x678]
0x1cb4430: mov      x19, x0
0x1cb4434: tbnz     w8, #0, #0x1cb444c
0x1cb4438: adrp     x0, #0x4187000
0x1cb443c: ldr      x0, [x0, #0x678]
0x1cb4440: bl       #0x1b64570 | 
0x1cb4444: mov      w8, #1
0x1cb4448: strb     w8, [x20, #0x869]
0x1cb444c: ldr      x0, [x21]
0x1cb4450: bl       #0x1b647b8 | 
0x1cb4454: mov      x1, xzr
0x1cb4458: mov      x20, x0
0x1cb445c: bl       #0x34c04f0 | System.Object$$.ctor
0x1cb4460: str      wzr, [x20, #0x10]
0x1cb4464: str      x19, [x20, #0x20]
0x1cb4468: mov      x0, x20
0x1cb446c: ldp      x20, x19, [sp, #0x10]
0x1cb4470: ldp      x30, x21, [sp], #0x20
0x1cb4474: ret      

// 0x1cb4478 AboutUs.<Start>d__15$$.ctor
0x1cb4478: str      x30, [sp, #-0x20]!
0x1cb447c: stp      x20, x19, [sp, #0x10]
0x1cb4480: mov      w19, w1
0x1cb4484: mov      x1, xzr
0x1cb4488: mov      x20, x0
0x1cb448c: bl       #0x34c04f0 | System.Object$$.ctor
0x1cb4490: str      w19, [x20, #0x10]
0x1cb4494: ldp      x20, x19, [sp, #0x10]
0x1cb4498: ldr      x30, [sp], #0x20
0x1cb449c: ret      

// 0x1cb4604 AboutUs$$StartNextScene
0x1cb4604: str      x30, [sp, #-0x30]!
0x1cb4608: stp      x22, x21, [sp, #0x10]
0x1cb460c: stp      x20, x19, [sp, #0x20]
0x1cb4610: adrp     x21, #0x4475000
0x1cb4614: adrp     x22, #0x4187000
0x1cb4618: ldrb     w8, [x21, #0x86b]
0x1cb461c: ldr      x22, [x22, #0x6a0]
0x1cb4620: mov      x19, x1
0x1cb4624: mov      x20, x0
0x1cb4628: tbnz     w8, #0, #0x1cb4640
0x1cb462c: adrp     x0, #0x4187000
0x1cb4630: ldr      x0, [x0, #0x6a0]
0x1cb4634: bl       #0x1b64570 | 
0x1cb4638: mov      w8, #1
0x1cb463c: strb     w8, [x21, #0x86b]
0x1cb4640: ldr      x0, [x22]
0x1cb4644: bl       #0x1b647b8 | 
0x1cb4648: mov      x1, xzr
0x1cb464c: mov      x21, x0
0x1cb4650: bl       #0x34c04f0 | System.Object$$.ctor
0x1cb4654: str      wzr, [x21, #0x10]
0x1cb4658: stp      x20, x19, [x21, #0x20]
0x1cb465c: mov      x0, x21
0x1cb4660: ldp      x20, x19, [sp, #0x20]
0x1cb4664: ldp      x22, x21, [sp, #0x10]
0x1cb4668: ldr      x30, [sp], #0x30
0x1cb466c: ret      

// 0x1cb4670 AboutUs.<StartNextScene>d__18$$.ctor
0x1cb4670: str      x30, [sp, #-0x20]!
0x1cb4674: stp      x20, x19, [sp, #0x10]
0x1cb4678: mov      w19, w1
0x1cb467c: mov      x1, xzr
0x1cb4680: mov      x20, x0
0x1cb4684: bl       #0x34c04f0 | System.Object$$.ctor
0x1cb4688: str      w19, [x20, #0x10]
0x1cb468c: ldp      x20, x19, [sp, #0x10]
0x1cb4690: ldr      x30, [sp], #0x20
0x1cb4694: ret      

// 0x1cb4698 AboutUs$$StartPlay
0x1cb4698: stp      x30, x23, [sp, #-0x30]!
0x1cb469c: stp      x22, x21, [sp, #0x10]
0x1cb46a0: stp      x20, x19, [sp, #0x20]
0x1cb46a4: adrp     x21, #0x4475000
0x1cb46a8: adrp     x20, #0x4186000
0x1cb46ac: ldrb     w8, [x21, #0x86c]
0x1cb46b0: ldr      x20, [x20, #0xe68]
0x1cb46b4: mov      x19, x0
0x1cb46b8: tbnz     w8, #0, #0x1cb46f4
0x1cb46bc: adrp     x0, #0x4186000
0x1cb46c0: ldr      x0, [x0, #0xe68]
0x1cb46c4: bl       #0x1b64570 | 
0x1cb46c8: adrp     x0, #0x4187000
0x1cb46cc: ldr      x0, [x0, #0x6a8] | 0x41876a8 '4.0'
0x1cb46d0: bl       #0x1b64570 | 
0x1cb46d4: adrp     x0, #0x4187000
0x1cb46d8: ldr      x0, [x0, #0x6b0] | 0x41876b0 'GameCompleted'
0x1cb46dc: bl       #0x1b64570 | 
0x1cb46e0: adrp     x0, #0x4185000
0x1cb46e4: ldr      x0, [x0, #0x2d8] | 0x41852d8 ''
0x1cb46e8: bl       #0x1b64570 | 
0x1cb46ec: mov      w8, #1
0x1cb46f0: strb     w8, [x21, #0x86c]
0x1cb46f4: ldr      x0, [x20]
0x1cb46f8: adrp     x21, #0x4187000
0x1cb46fc: adrp     x23, #0x4185000
0x1cb4700: adrp     x22, #0x4187000
0x1cb4704: ldr      w8, [x0, #0xe0]
0x1cb4708: ldr      x21, [x21, #0x6b0] | 0x41876b0 'GameCompleted'
0x1cb470c: ldr      x23, [x23, #0x2d8] | 0x41852d8 ''
0x1cb4710: ldr      x22, [x22, #0x6a8] | 0x41876a8 '4.0'
0x1cb4714: cbnz     w8, #0x1cb471c
0x1cb4718: bl       #0x1b646a4 | 
0x1cb471c: ldr      x0, [x21]
0x1cb4720: ldr      x1, [x23]
0x1cb4724: mov      x2, xzr
0x1cb4728: bl       #0x1cc612c | SaveManagement$$LoadString
0x1cb472c: ldr      x1, [x22]
0x1cb4730: mov      x2, xzr
0x1cb4734: bl       #0x33082c8 | System.String$$op_Inequality
0x1cb4738: tbz      w0, #0, #0x1cb475c
0x1cb473c: ldr      x0, [x20]
0x1cb4740: ldr      w8, [x0, #0xe0]
0x1cb4744: cbnz     w8, #0x1cb474c
0x1cb4748: bl       #0x1b646a4 | 
0x1cb474c: ldr      x0, [x21]
0x1cb4750: ldr      x1, [x22]
0x1cb4754: mov      x2, xzr
0x1cb4758: bl       #0x1cc5240 | SaveManagement$$SaveString
0x1cb475c: mov      x0, xzr
0x1cb4760: bl       #0x3c688f4 | UnityEngine.Time$$get_timeSinceLevelLoad
0x1cb4764: fmov     s1, #1.00000000
0x1cb4768: fcmp     s0, s1
0x1cb476c: b.pl     #0x1cb4780
0x1cb4770: ldp      x20, x19, [sp, #0x20]
0x1cb4774: ldp      x22, x21, [sp, #0x10]
0x1cb4778: ldp      x30, x23, [sp], #0x30
0x1cb477c: ret      
0x1cb4780: ldr      x0, [x19, #0x58]
0x1cb4784: mov      w8, #1
0x1cb4788: strb     w8, [x19, #0x70]
0x1cb478c: cbz      x0, #0x1cb47a8
0x1cb4790: ldp      x20, x19, [sp, #0x20]
0x1cb4794: ldp      x22, x21, [sp, #0x10]
0x1cb4798: mov      w1, #1
0x1cb479c: mov      x2, xzr
0x1cb47a0: ldp      x30, x23, [sp], #0x30
0x1cb47a4: b        #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1cb47a8: bl       #0x1b647c8 | 

// 0x1cb4afc AboutUs.<Start>d__15$$System.IDisposable.Dispose
0x1cb4afc: ret      

// 0x1cb4b00 AboutUs.<Start>d__15$$MoveNext
0x1cb4b00: str      d8, [sp, #-0x20]!
0x1cb4b04: str      x30, [sp, #8]
0x1cb4b08: stp      x20, x19, [sp, #0x10]
0x1cb4b0c: ldr      w8, [x0, #0x10]
0x1cb4b10: mov      x19, x0
0x1cb4b14: cmp      w8, #1
0x1cb4b18: b.eq     #0x1cb4b44
0x1cb4b1c: cbnz     w8, #0x1cb4b7c
0x1cb4b20: mov      w8, #-1
0x1cb4b24: fmov     s0, #1.00000000
0x1cb4b28: mov      x0, xzr
0x1cb4b2c: str      w8, [x19, #0x10]
0x1cb4b30: bl       #0x3c17da0 | UnityEngine.AudioListener$$set_volume
0x1cb4b34: mov      w0, #1
0x1cb4b38: str      xzr, [x19, #0x18]
0x1cb4b3c: str      w0, [x19, #0x10]
0x1cb4b40: b        #0x1cb4b80 | 
0x1cb4b44: ldr      x20, [x19, #0x20]
0x1cb4b48: mov      w8, #-1
0x1cb4b4c: str      w8, [x19, #0x10]
0x1cb4b50: cbz      x20, #0x1cb4b90
0x1cb4b54: ldr      x0, [x20, #0x68]
0x1cb4b58: cbz      x0, #0x1cb4b90
0x1cb4b5c: ldr      d8, [x20, #0x20]
0x1cb4b60: mov      x1, xzr
0x1cb4b64: bl       #0x3c6b37c | UnityEngine.Transform$$get_position
0x1cb4b68: mov      w0, wzr
0x1cb4b6c: mov      v0.s[1], v1.s[0]
0x1cb4b70: fsub     v0.2s, v8.2s, v0.2s
0x1cb4b74: str      d0, [x20, #0x28]
0x1cb4b78: b        #0x1cb4b80 | 
0x1cb4b7c: mov      w0, wzr
0x1cb4b80: ldp      x20, x19, [sp, #0x10]
0x1cb4b84: ldr      x30, [sp, #8]
0x1cb4b88: ldr      d8, [sp], #0x20
0x1cb4b8c: ret      
0x1cb4b90: bl       #0x1b647c8 | 

// 0x1cb4b94 AboutUs.<Start>d__15$$System.Collections.Generic.IEnumerator<System.Object>.get_Current
0x1cb4b94: ldr      x0, [x0, #0x18]
0x1cb4b98: ret      

// 0x1cb4b9c AboutUs.<Start>d__15$$System.Collections.IEnumerator.Reset
0x1cb4b9c: stp      x30, x19, [sp, #-0x10]!
0x1cb4ba0: adrp     x0, #0x4185000
0x1cb4ba4: ldr      x0, [x0, #0xc78]
0x1cb4ba8: bl       #0x1b64584 | 
0x1cb4bac: bl       #0x1b647b8 | 
0x1cb4bb0: mov      x1, xzr
0x1cb4bb4: mov      x19, x0
0x1cb4bb8: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1cb4bbc: adrp     x0, #0x4187000
0x1cb4bc0: ldr      x0, [x0, #0x6c8]
0x1cb4bc4: bl       #0x1b64584 | 
0x1cb4bc8: mov      x1, x0
0x1cb4bcc: mov      x0, x19
0x1cb4bd0: bl       #0x1b64694 | 

// 0x1cb4bd4 AboutUs.<Start>d__15$$System.Collections.IEnumerator.get_Current
0x1cb4bd4: ldr      x0, [x0, #0x18]
0x1cb4bd8: ret      

// 0x1cb4bdc AboutUs.<StartNextScene>d__18$$System.IDisposable.Dispose
0x1cb4bdc: ret      

// 0x1cb4be0 AboutUs.<StartNextScene>d__18$$MoveNext
0x1cb4be0: sub      sp, sp, #0x30
0x1cb4be4: str      d8, [sp, #0x10]
0x1cb4be8: str      x30, [sp, #0x18]
0x1cb4bec: stp      x20, x19, [sp, #0x20]
0x1cb4bf0: adrp     x20, #0x4475000
0x1cb4bf4: ldrb     w8, [x20, #0x86e]
0x1cb4bf8: mov      x19, x0
0x1cb4bfc: tbnz     w8, #0, #0x1cb4c20
0x1cb4c00: adrp     x0, #0x4185000
0x1cb4c04: ldr      x0, [x0, #0x848]
0x1cb4c08: bl       #0x1b64570 | 
0x1cb4c0c: adrp     x0, #0x4186000
0x1cb4c10: ldr      x0, [x0, #0xe30]
0x1cb4c14: bl       #0x1b64570 | 
0x1cb4c18: mov      w8, #1
0x1cb4c1c: strb     w8, [x20, #0x86e]
0x1cb4c20: ldr      w8, [x19, #0x10]
0x1cb4c24: cmp      w8, #1
0x1cb4c28: b.hi     #0x1cb4c78
0x1cb4c2c: ldr      x20, [x19, #0x20]
0x1cb4c30: mov      w8, #-1
0x1cb4c34: str      w8, [x19, #0x10]
0x1cb4c38: cbz      x20, #0x1cb4ce4
0x1cb4c3c: adrp     x8, #0xc35000
0x1cb4c40: ldr      s0, [x20, #0x78]
0x1cb4c44: ldr      s1, [x8, #0x454]
0x1cb4c48: fcmp     s0, s1
0x1cb4c4c: b.le     #0x1cb4c80
0x1cb4c50: adrp     x8, #0x4186000
0x1cb4c54: ldr      x8, [x8, #0xe30]
0x1cb4c58: ldr      x19, [x19, #0x28]
0x1cb4c5c: ldr      x0, [x8]
0x1cb4c60: ldr      w8, [x0, #0xe0]
0x1cb4c64: cbnz     w8, #0x1cb4c6c
0x1cb4c68: bl       #0x1b646a4 | 
0x1cb4c6c: mov      x0, x19
0x1cb4c70: mov      x1, xzr
0x1cb4c74: bl       #0x3c75460 | UnityEngine.SceneManagement.SceneManager$$LoadScene
0x1cb4c78: mov      w0, wzr
0x1cb4c7c: b        #0x1cb4cd0 | 
0x1cb4c80: adrp     x8, #0xc35000
0x1cb4c84: ldr      s1, [x8, #0xbc]
0x1cb4c88: mov      x0, xzr
0x1cb4c8c: fsub     s0, s1, s0
0x1cb4c90: fdiv     s0, s0, s1
0x1cb4c94: bl       #0x3c17da0 | UnityEngine.AudioListener$$set_volume
0x1cb4c98: ldr      s8, [x20, #0x78]
0x1cb4c9c: mov      x0, xzr
0x1cb4ca0: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1cb4ca4: fadd     s0, s8, s0
0x1cb4ca8: str      s0, [x20, #0x78]
0x1cb4cac: adrp     x8, #0x4185000
0x1cb4cb0: ldr      x8, [x8, #0x848]
0x1cb4cb4: add      x1, sp, #0xc
0x1cb4cb8: str      wzr, [sp, #0xc]
0x1cb4cbc: ldr      x0, [x8]
0x1cb4cc0: bl       #0x1b646ac | 
0x1cb4cc4: str      x0, [x19, #0x18]
0x1cb4cc8: mov      w0, #1
0x1cb4ccc: str      w0, [x19, #0x10]
0x1cb4cd0: ldp      x20, x19, [sp, #0x20]
0x1cb4cd4: ldr      x30, [sp, #0x18]
0x1cb4cd8: ldr      d8, [sp, #0x10]
0x1cb4cdc: add      sp, sp, #0x30
0x1cb4ce0: ret      
0x1cb4ce4: bl       #0x1b647c8 | 

// 0x1cb4ce8 AboutUs.<StartNextScene>d__18$$System.Collections.Generic.IEnumerator<System.Object>.get_Current
0x1cb4ce8: ldr      x0, [x0, #0x18]
0x1cb4cec: ret      

// 0x1cb4cf0 AboutUs.<StartNextScene>d__18$$System.Collections.IEnumerator.Reset
0x1cb4cf0: stp      x30, x19, [sp, #-0x10]!
0x1cb4cf4: adrp     x0, #0x4185000
0x1cb4cf8: ldr      x0, [x0, #0xc78]
0x1cb4cfc: bl       #0x1b64584 | 
0x1cb4d00: bl       #0x1b647b8 | 
0x1cb4d04: mov      x1, xzr
0x1cb4d08: mov      x19, x0
0x1cb4d0c: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1cb4d10: adrp     x0, #0x4187000
0x1cb4d14: ldr      x0, [x0, #0x6d0]
0x1cb4d18: bl       #0x1b64584 | 
0x1cb4d1c: mov      x1, x0
0x1cb4d20: mov      x0, x19
0x1cb4d24: bl       #0x1b64694 | 

// 0x1cb4d28 AboutUs.<StartNextScene>d__18$$System.Collections.IEnumerator.get_Current
0x1cb4d28: ldr      x0, [x0, #0x18]
0x1cb4d2c: ret      

// 0x1cdbf50 FakeAboutUsControl$$Start
0x1cdbf50: str      x30, [sp, #-0x30]!
0x1cdbf54: stp      x22, x21, [sp, #0x10]
0x1cdbf58: stp      x20, x19, [sp, #0x20]
0x1cdbf5c: adrp     x20, #0x4475000
0x1cdbf60: ldrb     w8, [x20, #0x9b2]
0x1cdbf64: mov      x19, x0
0x1cdbf68: tbnz     w8, #0, #0x1cdbfd4
0x1cdbf6c: adrp     x0, #0x4189000
0x1cdbf70: ldr      x0, [x0, #0x6d0]
0x1cdbf74: bl       #0x1b64570 | 
0x1cdbf78: adrp     x0, #0x4189000
0x1cdbf7c: ldr      x0, [x0, #0x6d8]
0x1cdbf80: bl       #0x1b64570 | 
0x1cdbf84: adrp     x0, #0x4186000
0x1cdbf88: ldr      x0, [x0, #0xe68]
0x1cdbf8c: bl       #0x1b64570 | 
0x1cdbf90: adrp     x0, #0x4187000
0x1cdbf94: ldr      x0, [x0, #0x1b0] | 0x41871b0 'HD'
0x1cdbf98: bl       #0x1b64570 | 
0x1cdbf9c: adrp     x0, #0x4187000
0x1cdbfa0: ldr      x0, [x0, #0x1b8] | 0x41871b8 'AT'
0x1cdbfa4: bl       #0x1b64570 | 
0x1cdbfa8: adrp     x0, #0x4189000
0x1cdbfac: ldr      x0, [x0, #0x328] | 0x4189328 'chartMirror'
0x1cdbfb0: bl       #0x1b64570 | 
0x1cdbfb4: adrp     x0, #0x4187000
0x1cdbfb8: ldr      x0, [x0, #0x1c0] | 0x41871c0 'IN'
0x1cdbfbc: bl       #0x1b64570 | 
0x1cdbfc0: adrp     x0, #0x4187000
0x1cdbfc4: ldr      x0, [x0, #0x1d0] | 0x41871d0 'EZ'
0x1cdbfc8: bl       #0x1b64570 | 
0x1cdbfcc: mov      w8, #1
0x1cdbfd0: strb     w8, [x20, #0x9b2]
0x1cdbfd4: ldr      x0, [x19, #0x50]
0x1cdbfd8: cbz      x0, #0x1cdc298
0x1cdbfdc: adrp     x21, #0x4189000
0x1cdbfe0: adrp     x22, #0x4189000
0x1cdbfe4: ldr      x21, [x21, #0x6d0]
0x1cdbfe8: ldr      x22, [x22, #0x6d8]
0x1cdbfec: mov      x1, xzr
0x1cdbff0: bl       #0x3e953dc | UnityEngine.Video.VideoPlayer$$Prepare
0x1cdbff4: ldr      x0, [x21]
0x1cdbff8: ldr      x20, [x19, #0x50]
0x1cdbffc: bl       #0x1b647b8 | 
0x1cdc000: ldr      x2, [x22]
0x1cdc004: mov      x1, xzr
0x1cdc008: mov      x3, xzr
0x1cdc00c: mov      x21, x0
0x1cdc010: bl       #0x3e97088 | UnityEngine.Video.VideoPlayer.ErrorEventHandler$$.ctor
0x1cdc014: cbz      x20, #0x1cdc298
0x1cdc018: mov      x0, x20
0x1cdc01c: mov      x1, x21
0x1cdc020: mov      x2, xzr
0x1cdc024: bl       #0x3e968c8 | UnityEngine.Video.VideoPlayer$$add_errorReceived
0x1cdc028: adrp     x20, #0x4475000
0x1cdc02c: ldrb     w8, [x20, #0x8c0]
0x1cdc030: cbnz     w8, #0x1cdc048
0x1cdc034: adrp     x0, #0x4186000
0x1cdc038: ldr      x0, [x0, #0xef8]
0x1cdc03c: bl       #0x1b64570 | 
0x1cdc040: mov      w8, #1
0x1cdc044: strb     w8, [x20, #0x8c0]
0x1cdc048: adrp     x8, #0x4186000
0x1cdc04c: ldr      x8, [x8, #0xef8]
0x1cdc050: mov      x0, xzr
0x1cdc054: ldr      x8, [x8]
0x1cdc058: ldr      x8, [x8, #0xb8]
0x1cdc05c: ldr      x8, [x8]
0x1cdc060: str      x8, [x19, #0x80]
0x1cdc064: bl       #0x3c22cb4 | UnityEngine.Camera$$get_main
0x1cdc068: str      x0, [x19, #0x78]
0x1cdc06c: mov      x0, xzr
0x1cdc070: bl       #0x3c2bf0c | UnityEngine.Screen$$get_width
0x1cdc074: mov      w20, w0
0x1cdc078: mov      x0, xzr
0x1cdc07c: bl       #0x3c2bf34 | UnityEngine.Screen$$get_height
0x1cdc080: adrp     x8, #0xc35000
0x1cdc084: ldr      s0, [x8, #0x250]
0x1cdc088: scvtf    s1, w20
0x1cdc08c: scvtf    s2, w0
0x1cdc090: fdiv     s1, s1, s2
0x1cdc094: fcmp     s1, s0
0x1cdc098: b.le     #0x1cdc0cc
0x1cdc09c: mov      x0, xzr
0x1cdc0a0: bl       #0x3c2bf0c | UnityEngine.Screen$$get_width
0x1cdc0a4: mov      w20, w0
0x1cdc0a8: mov      x0, xzr
0x1cdc0ac: bl       #0x3c2bf34 | UnityEngine.Screen$$get_height
0x1cdc0b0: adrp     x8, #0xc35000
0x1cdc0b4: ldr      s0, [x8, #0x3e4]
0x1cdc0b8: scvtf    s1, w20
0x1cdc0bc: fdiv     s0, s0, s1
0x1cdc0c0: scvtf    s1, w0
0x1cdc0c4: fmul     s0, s0, s1
0x1cdc0c8: str      s0, [x19, #0x88]
0x1cdc0cc: ldr      x8, [x19, #0x80]
0x1cdc0d0: cbz      x8, #0x1cdc298
0x1cdc0d4: ldr      x8, [x8, #0x30]
0x1cdc0d8: cbz      x8, #0x1cdc298
0x1cdc0dc: adrp     x9, #0x4187000
0x1cdc0e0: ldr      x9, [x9, #0x1d0] | 0x41871d0 'EZ'
0x1cdc0e4: ldr      x20, [x8, #0x38]
0x1cdc0e8: mov      x2, xzr
0x1cdc0ec: ldr      x1, [x9]
0x1cdc0f0: mov      x0, x20
0x1cdc0f4: bl       #0x32fac7c | System.String$$op_Equality
0x1cdc0f8: tbz      w0, #0, #0x1cdc104
0x1cdc0fc: mov      w20, wzr
0x1cdc100: b        #0x1cdc170 | 
0x1cdc104: adrp     x8, #0x4187000
0x1cdc108: ldr      x8, [x8, #0x1b0] | 0x41871b0 'HD'
0x1cdc10c: mov      x0, x20
0x1cdc110: mov      x2, xzr
0x1cdc114: ldr      x1, [x8]
0x1cdc118: bl       #0x32fac7c | System.String$$op_Equality
0x1cdc11c: tbz      w0, #0, #0x1cdc128
0x1cdc120: mov      w20, #1
0x1cdc124: b        #0x1cdc170 | 
0x1cdc128: adrp     x8, #0x4187000
0x1cdc12c: ldr      x8, [x8, #0x1c0] | 0x41871c0 'IN'
0x1cdc130: mov      x0, x20
0x1cdc134: mov      x2, xzr
0x1cdc138: ldr      x1, [x8]
0x1cdc13c: bl       #0x32fac7c | System.String$$op_Equality
0x1cdc140: tbz      w0, #0, #0x1cdc14c
0x1cdc144: mov      w20, #2
0x1cdc148: b        #0x1cdc170 | 
0x1cdc14c: adrp     x8, #0x4187000
0x1cdc150: ldr      x8, [x8, #0x1b8] | 0x41871b8 'AT'
0x1cdc154: mov      x0, x20
0x1cdc158: mov      x2, xzr
0x1cdc15c: ldr      x1, [x8]
0x1cdc160: bl       #0x32fac7c | System.String$$op_Equality
0x1cdc164: tst      w0, #1
0x1cdc168: mov      w8, #3
0x1cdc16c: csel     w20, w8, wzr, ne
0x1cdc170: ldr      x0, [x19, #0x80]
0x1cdc174: cbz      x0, #0x1cdc298
0x1cdc178: ldr      x1, [x19, #0x28]
0x1cdc17c: mov      x2, xzr
0x1cdc180: bl       #0x1ca8974 | GameInformation$$GetSongInformation
0x1cdc184: cbz      x0, #0x1cdc298
0x1cdc188: ldr      x21, [x19, #0x80]
0x1cdc18c: mov      w1, w20
0x1cdc190: mov      x2, xzr
0x1cdc194: bl       #0x1cb8b38 | SongsItem$$GetLevelStartInfo
0x1cdc198: cbz      x21, #0x1cdc298
0x1cdc19c: str      x0, [x21, #0x30]
0x1cdc1a0: adrp     x20, #0x4475000
0x1cdc1a4: ldrb     w8, [x20, #0x95e]
0x1cdc1a8: cbnz     w8, #0x1cdc1c0
0x1cdc1ac: adrp     x0, #0x4189000
0x1cdc1b0: ldr      x0, [x0, #0xf8]
0x1cdc1b4: bl       #0x1b64570 | 
0x1cdc1b8: mov      w8, #1
0x1cdc1bc: strb     w8, [x20, #0x95e]
0x1cdc1c0: adrp     x8, #0x4189000
0x1cdc1c4: ldr      x8, [x8, #0xf8]
0x1cdc1c8: ldr      x8, [x8]
0x1cdc1cc: ldr      x8, [x8, #0xb8]
0x1cdc1d0: ldrb     w8, [x8]
0x1cdc1d4: cbz      w8, #0x1cdc220
0x1cdc1d8: ldr      x8, [x19, #0x80]
0x1cdc1dc: cbz      x8, #0x1cdc298
0x1cdc1e0: adrp     x9, #0x4186000
0x1cdc1e4: ldr      x9, [x9, #0xe68]
0x1cdc1e8: adrp     x21, #0x4189000
0x1cdc1ec: ldr      x20, [x8, #0x30]
0x1cdc1f0: ldr      x0, [x9]
0x1cdc1f4: ldr      w9, [x0, #0xe0]
0x1cdc1f8: ldr      x21, [x21, #0x328] | 0x4189328 'chartMirror'
0x1cdc1fc: cbnz     w9, #0x1cdc204
0x1cdc200: bl       #0x1b646a4 | 
0x1cdc204: ldr      x0, [x21]
0x1cdc208: mov      w1, wzr
0x1cdc20c: mov      x2, xzr
0x1cdc210: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1cdc214: cbz      x20, #0x1cdc298
0x1cdc218: and      w8, w0, #1
0x1cdc21c: strb     w8, [x20, #0x60]
0x1cdc220: ldr      x8, [x19, #0x80]
0x1cdc224: cbz      x8, #0x1cdc298
0x1cdc228: ldr      x8, [x8, #0x30]
0x1cdc22c: cbz      x8, #0x1cdc298
0x1cdc230: ldr      x0, [x19, #0x68]
0x1cdc234: cbz      x0, #0x1cdc298
0x1cdc238: ldr      x9, [x0]
0x1cdc23c: ldr      x1, [x8, #0x40]
0x1cdc240: ldr      x8, [x9, #0x5e8]
0x1cdc244: ldr      x2, [x9, #0x5f0]
0x1cdc248: blr      x8
0x1cdc24c: ldr      x8, [x19, #0x80]
0x1cdc250: cbz      x8, #0x1cdc298
0x1cdc254: ldr      x8, [x8, #0x30]
0x1cdc258: cbz      x8, #0x1cdc298
0x1cdc25c: ldr      x0, [x19, #0x70]
0x1cdc260: cbz      x0, #0x1cdc298
0x1cdc264: ldr      x9, [x0]
0x1cdc268: ldr      x1, [x8, #0x38]
0x1cdc26c: ldr      x8, [x9, #0x5e8]
0x1cdc270: ldr      x2, [x9, #0x5f0]
0x1cdc274: blr      x8
0x1cdc278: ldr      x0, [x19, #0x78]
0x1cdc27c: cbz      x0, #0x1cdc298
0x1cdc280: ldr      s0, [x19, #0x88]
0x1cdc284: ldp      x20, x19, [sp, #0x20]
0x1cdc288: ldp      x22, x21, [sp, #0x10]
0x1cdc28c: mov      x1, xzr
0x1cdc290: ldr      x30, [sp], #0x30
0x1cdc294: b        #0x3c1fae8 | UnityEngine.Camera$$set_orthographicSize
0x1cdc298: bl       #0x1b647c8 | 

// 0x1cdc388 FakeAboutUsControl$$StartLevel
0x1cdc388: stp      x30, x21, [sp, #-0x20]!
0x1cdc38c: stp      x20, x19, [sp, #0x10]
0x1cdc390: adrp     x20, #0x4475000
0x1cdc394: adrp     x21, #0x4189000
0x1cdc398: ldrb     w8, [x20, #0x9b4]
0x1cdc39c: ldr      x21, [x21, #0x6e8]
0x1cdc3a0: mov      x19, x0
0x1cdc3a4: tbnz     w8, #0, #0x1cdc3bc
0x1cdc3a8: adrp     x0, #0x4189000
0x1cdc3ac: ldr      x0, [x0, #0x6e8]
0x1cdc3b0: bl       #0x1b64570 | 
0x1cdc3b4: mov      w8, #1
0x1cdc3b8: strb     w8, [x20, #0x9b4]
0x1cdc3bc: ldr      x0, [x21]
0x1cdc3c0: bl       #0x1b647b8 | 
0x1cdc3c4: mov      x1, xzr
0x1cdc3c8: mov      x20, x0
0x1cdc3cc: bl       #0x34c04f0 | System.Object$$.ctor
0x1cdc3d0: str      wzr, [x20, #0x10]
0x1cdc3d4: str      x19, [x20, #0x20]
0x1cdc3d8: mov      x0, x20
0x1cdc3dc: ldp      x20, x19, [sp, #0x10]
0x1cdc3e0: ldp      x30, x21, [sp], #0x20
0x1cdc3e4: ret      

// 0x1cdc3e8 FakeAboutUsControl.<StartLevel>d__20$$.ctor
0x1cdc3e8: str      x30, [sp, #-0x20]!
0x1cdc3ec: stp      x20, x19, [sp, #0x10]
0x1cdc3f0: mov      w19, w1
0x1cdc3f4: mov      x1, xzr
0x1cdc3f8: mov      x20, x0
0x1cdc3fc: bl       #0x34c04f0 | System.Object$$.ctor
0x1cdc400: str      w19, [x20, #0x10]
0x1cdc404: ldp      x20, x19, [sp, #0x10]
0x1cdc408: ldr      x30, [sp], #0x20
0x1cdc40c: ret      

// 0x1cdc470 FakeAboutUsControl$$<Start>g__OnErrorReceived|15_0
0x1cdc470: str      x30, [sp, #-0x30]!
0x1cdc474: stp      x22, x21, [sp, #0x10]
0x1cdc478: stp      x20, x19, [sp, #0x20]
0x1cdc47c: adrp     x21, #0x4475000
0x1cdc480: adrp     x22, #0x4189000
0x1cdc484: adrp     x20, #0x4185000
0x1cdc488: ldrb     w8, [x21, #0x9b6]
0x1cdc48c: ldr      x22, [x22, #0x6f0] | 0x41896f0 'Error received: '
0x1cdc490: ldr      x20, [x20, #0xb38]
0x1cdc494: mov      x19, x1
0x1cdc498: tbnz     w8, #0, #0x1cdc4bc
0x1cdc49c: adrp     x0, #0x4185000
0x1cdc4a0: ldr      x0, [x0, #0xb38]
0x1cdc4a4: bl       #0x1b64570 | 
0x1cdc4a8: adrp     x0, #0x4189000
0x1cdc4ac: ldr      x0, [x0, #0x6f0] | 0x41896f0 'Error received: '
0x1cdc4b0: bl       #0x1b64570 | 
0x1cdc4b4: mov      w8, #1
0x1cdc4b8: strb     w8, [x21, #0x9b6]
0x1cdc4bc: ldr      x0, [x22]
0x1cdc4c0: mov      x1, x19
0x1cdc4c4: mov      x2, xzr
0x1cdc4c8: bl       #0x32fce8c | System.String$$Concat
0x1cdc4cc: ldr      x8, [x20]
0x1cdc4d0: mov      x19, x0
0x1cdc4d4: ldr      w9, [x8, #0xe0]
0x1cdc4d8: cbnz     w9, #0x1cdc4e4
0x1cdc4dc: mov      x0, x8
0x1cdc4e0: bl       #0x1b646a4 | 
0x1cdc4e4: mov      x0, x19
0x1cdc4e8: ldp      x20, x19, [sp, #0x20]
0x1cdc4ec: ldp      x22, x21, [sp, #0x10]
0x1cdc4f0: mov      x1, xzr
0x1cdc4f4: ldr      x30, [sp], #0x30
0x1cdc4f8: b        #0x3c25308 | UnityEngine.Debug$$LogError

// 0x1cdc8e0 FakeAboutUsControl.<StartLevel>d__20$$System.IDisposable.Dispose
0x1cdc8e0: ret      

// 0x1cdc8e4 FakeAboutUsControl.<StartLevel>d__20$$MoveNext
0x1cdc8e4: sub      sp, sp, #0x30
0x1cdc8e8: str      d8, [sp, #0x10]
0x1cdc8ec: str      x30, [sp, #0x18]
0x1cdc8f0: stp      x20, x19, [sp, #0x20]
0x1cdc8f4: adrp     x20, #0x4475000
0x1cdc8f8: ldrb     w8, [x20, #0x9b8]
0x1cdc8fc: mov      x19, x0
0x1cdc900: tbnz     w8, #0, #0x1cdc948
0x1cdc904: adrp     x0, #0x4185000
0x1cdc908: ldr      x0, [x0, #0x848]
0x1cdc90c: bl       #0x1b64570 | 
0x1cdc910: adrp     x0, #0x4186000
0x1cdc914: ldr      x0, [x0, #0xe60]
0x1cdc918: bl       #0x1b64570 | 
0x1cdc91c: adrp     x0, #0x4185000
0x1cdc920: ldr      x0, [x0, #0x208]
0x1cdc924: bl       #0x1b64570 | 
0x1cdc928: adrp     x0, #0x4186000
0x1cdc92c: ldr      x0, [x0, #0xe30]
0x1cdc930: bl       #0x1b64570 | 
0x1cdc934: adrp     x0, #0x4188000
0x1cdc938: ldr      x0, [x0, #0xf40] | 0x4188f40 'Level'
0x1cdc93c: bl       #0x1b64570 | 
0x1cdc940: mov      w8, #1
0x1cdc944: strb     w8, [x20, #0x9b8]
0x1cdc948: ldr      w8, [x19, #0x10]
0x1cdc94c: cmp      w8, #2
0x1cdc950: b.hs     #0x1cdca04
0x1cdc954: ldr      x20, [x19, #0x20]
0x1cdc958: mov      w8, #-1
0x1cdc95c: str      w8, [x19, #0x10]
0x1cdc960: cbz      x20, #0x1cdca54
0x1cdc964: ldr      s8, [x20, #0x8c]
0x1cdc968: mov      w8, #0x41ec0000
0x1cdc96c: fmov     s0, w8
0x1cdc970: fcmp     s8, s0
0x1cdc974: b.ls     #0x1cdca0c
0x1cdc978: ldr      x0, [x20, #0x38]
0x1cdc97c: cbz      x0, #0x1cdca54
0x1cdc980: ldr      x8, [x0]
0x1cdc984: fmov     s0, wzr
0x1cdc988: fmov     s1, wzr
0x1cdc98c: fmov     s2, wzr
0x1cdc990: ldr      x9, [x8, #0x2a8]
0x1cdc994: ldr      x1, [x8, #0x2b0]
0x1cdc998: fmov     s3, #1.00000000
0x1cdc99c: blr      x9
0x1cdc9a0: adrp     x8, #0x4185000
0x1cdc9a4: ldr      x8, [x8, #0x208]
0x1cdc9a8: ldr      x19, [x20, #0x30]
0x1cdc9ac: ldr      x0, [x8]
0x1cdc9b0: ldr      w8, [x0, #0xe0]
0x1cdc9b4: cbnz     w8, #0x1cdc9bc
0x1cdc9b8: bl       #0x1b646a4 | 
0x1cdc9bc: adrp     x8, #0x4186000
0x1cdc9c0: ldr      x8, [x8, #0xe60]
0x1cdc9c4: mov      x0, x19
0x1cdc9c8: ldr      x1, [x8]
0x1cdc9cc: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1cdc9d0: mov      x1, xzr
0x1cdc9d4: bl       #0x3c65590 | UnityEngine.Object$$DontDestroyOnLoad
0x1cdc9d8: adrp     x8, #0x4186000
0x1cdc9dc: ldr      x8, [x8, #0xe30]
0x1cdc9e0: ldr      x0, [x8]
0x1cdc9e4: ldr      w8, [x0, #0xe0]
0x1cdc9e8: cbnz     w8, #0x1cdc9f0
0x1cdc9ec: bl       #0x1b646a4 | 
0x1cdc9f0: adrp     x8, #0x4188000
0x1cdc9f4: ldr      x8, [x8, #0xf40] | 0x4188f40 'Level'
0x1cdc9f8: mov      x1, xzr
0x1cdc9fc: ldr      x0, [x8]
0x1cdca00: bl       #0x3c75460 | UnityEngine.SceneManagement.SceneManager$$LoadScene
0x1cdca04: mov      w0, wzr
0x1cdca08: b        #0x1cdca40 | 
0x1cdca0c: mov      x0, xzr
0x1cdca10: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1cdca14: fadd     s0, s8, s0
0x1cdca18: str      s0, [x20, #0x8c]
0x1cdca1c: adrp     x8, #0x4185000
0x1cdca20: ldr      x8, [x8, #0x848]
0x1cdca24: add      x1, sp, #0xc
0x1cdca28: str      wzr, [sp, #0xc]
0x1cdca2c: ldr      x0, [x8]
0x1cdca30: bl       #0x1b646ac | 
0x1cdca34: str      x0, [x19, #0x18]
0x1cdca38: mov      w0, #1
0x1cdca3c: str      w0, [x19, #0x10]
0x1cdca40: ldp      x20, x19, [sp, #0x20]
0x1cdca44: ldr      x30, [sp, #0x18]
0x1cdca48: ldr      d8, [sp, #0x10]
0x1cdca4c: add      sp, sp, #0x30
0x1cdca50: ret      
0x1cdca54: bl       #0x1b647c8 | 

// 0x1cdca58 FakeAboutUsControl.<StartLevel>d__20$$System.Collections.Generic.IEnumerator<System.Object>.get_Current
0x1cdca58: ldr      x0, [x0, #0x18]
0x1cdca5c: ret      

// 0x1cdca60 FakeAboutUsControl.<StartLevel>d__20$$System.Collections.IEnumerator.Reset
0x1cdca60: stp      x30, x19, [sp, #-0x10]!
0x1cdca64: adrp     x0, #0x4185000
0x1cdca68: ldr      x0, [x0, #0xc78]
0x1cdca6c: bl       #0x1b64584 | 
0x1cdca70: bl       #0x1b647b8 | 
0x1cdca74: mov      x1, xzr
0x1cdca78: mov      x19, x0
0x1cdca7c: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1cdca80: adrp     x0, #0x4189000
0x1cdca84: ldr      x0, [x0, #0x710]
0x1cdca88: bl       #0x1b64584 | 
0x1cdca8c: mov      x1, x0
0x1cdca90: mov      x0, x19
0x1cdca94: bl       #0x1b64694 | 

// 0x1cdca98 FakeAboutUsControl.<StartLevel>d__20$$System.Collections.IEnumerator.get_Current
0x1cdca98: ldr      x0, [x0, #0x18]
0x1cdca9c: ret      

// 0x1d82d9c LevelOverControl.<>c__DisplayClass43_0$$<Start>g__HandleTrueHomeTrueWorldEvent|15
0x1d82d9c: str      x30, [sp, #-0x20]!
0x1d82da0: stp      x20, x19, [sp, #0x10]
0x1d82da4: adrp     x20, #0x4475000
0x1d82da8: ldrb     w8, [x20, #0xfa3]
0x1d82dac: mov      x19, x0
0x1d82db0: tbnz     w8, #0, #0x1d82dec
0x1d82db4: adrp     x0, #0x4186000
0x1d82db8: ldr      x0, [x0, #0xe68]
0x1d82dbc: bl       #0x1b64570 | 
0x1d82dc0: adrp     x0, #0x4187000
0x1d82dc4: ldr      x0, [x0, #0xc78] | 0x4187c78 'TrueHomeTrueWorldRework.816ThreeNumbers.0'
0x1d82dc8: bl       #0x1b64570 | 
0x1d82dcc: adrp     x0, #0x418a000
0x1d82dd0: ldr      x0, [x0, #0xaa8] | 0x418aaa8 'Ametrine.GRYSCLMIssionary.0'
0x1d82dd4: bl       #0x1b64570 | 
0x1d82dd8: adrp     x0, #0x418a000
0x1d82ddc: ldr      x0, [x0, #0xec8] | 0x418aec8 'C9AmetrineUnlocked'
0x1d82de0: bl       #0x1b64570 | 
0x1d82de4: mov      w8, #1
0x1d82de8: strb     w8, [x20, #0xfa3]
0x1d82dec: ldr      x8, [x19, #0x10]
0x1d82df0: cbz      x8, #0x1d82eb4
0x1d82df4: ldr      x8, [x8, #0x48]
0x1d82df8: cbz      x8, #0x1d82eb4
0x1d82dfc: adrp     x9, #0x4187000
0x1d82e00: ldr      x9, [x9, #0xc78] | 0x4187c78 'TrueHomeTrueWorldRework.816ThreeNumbers.0'
0x1d82e04: ldr      x0, [x8, #0x10]
0x1d82e08: mov      x2, xzr
0x1d82e0c: ldr      x1, [x9]
0x1d82e10: bl       #0x33082c8 | System.String$$op_Inequality
0x1d82e14: tbnz     w0, #0, #0x1d82ea8
0x1d82e18: mov      x0, xzr
0x1d82e1c: bl       #0x1d1d3f8 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$get_CurrentStep
0x1d82e20: cmp      w0, #1
0x1d82e24: b.ne     #0x1d82ea8
0x1d82e28: adrp     x8, #0x4186000
0x1d82e2c: ldr      x8, [x8, #0xe68]
0x1d82e30: ldr      x0, [x8]
0x1d82e34: ldr      w8, [x0, #0xe0]
0x1d82e38: cbnz     w8, #0x1d82e40
0x1d82e3c: bl       #0x1b646a4 | 
0x1d82e40: adrp     x19, #0x418a000
0x1d82e44: ldr      x19, [x19, #0xec8] | 0x418aec8 'C9AmetrineUnlocked'
0x1d82e48: mov      w1, wzr
0x1d82e4c: mov      x2, xzr
0x1d82e50: ldr      x0, [x19]
0x1d82e54: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d82e58: ldr      x8, [x19]
0x1d82e5c: mov      w19, w0
0x1d82e60: mov      w1, #1
0x1d82e64: mov      x2, xzr
0x1d82e68: mov      x0, x8
0x1d82e6c: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d82e70: mov      x0, xzr
0x1d82e74: bl       #0x3c5aec0 | UnityEngine.PlayerPrefs$$Save
0x1d82e78: mov      x0, xzr
0x1d82e7c: bl       #0x1d1eb70 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryAwaitAmetrine
0x1d82e80: tbz      w0, #0, #0x1d82ea8
0x1d82e84: adrp     x8, #0x418a000
0x1d82e88: ldr      x8, [x8, #0xaa8] | 0x418aaa8 'Ametrine.GRYSCLMIssionary.0'
0x1d82e8c: and      w1, w19, #1
0x1d82e90: ldp      x20, x19, [sp, #0x10]
0x1d82e94: mov      w2, #1
0x1d82e98: ldr      x0, [x8]
0x1d82e9c: mov      x3, xzr
0x1d82ea0: ldr      x30, [sp], #0x20
0x1d82ea4: b        #0x1d079c0 | Phigros2.Chapter9.Chapter9UnlockNavigation$$ApplyReturnToPhase2SelectMusicIfNeeded
0x1d82ea8: ldp      x20, x19, [sp, #0x10]
0x1d82eac: ldr      x30, [sp], #0x20
0x1d82eb0: ret      
0x1d82eb4: bl       #0x1b647c8 | 

// 0x1d82eb8 LevelOverControl.<>c__DisplayClass43_0$$<Start>g__HandelAmetrineEvent|16
0x1d82eb8: stp      x30, x21, [sp, #-0x20]!
0x1d82ebc: stp      x20, x19, [sp, #0x10]
0x1d82ec0: adrp     x20, #0x4475000
0x1d82ec4: ldrb     w8, [x20, #0xfa4]
0x1d82ec8: mov      x19, x0
0x1d82ecc: tbnz     w8, #0, #0x1d82f08
0x1d82ed0: adrp     x0, #0x4186000
0x1d82ed4: ldr      x0, [x0, #0xe68]
0x1d82ed8: bl       #0x1b64570 | 
0x1d82edc: adrp     x0, #0x418a000
0x1d82ee0: ldr      x0, [x0, #0xea0] | 0x418aea0 'C9PetrichorUnlocked'
0x1d82ee4: bl       #0x1b64570 | 
0x1d82ee8: adrp     x0, #0x418a000
0x1d82eec: ldr      x0, [x0, #0xaa0] | 0x418aaa0 'Petrichor.voidMournfinale.0'
0x1d82ef0: bl       #0x1b64570 | 
0x1d82ef4: adrp     x0, #0x418a000
0x1d82ef8: ldr      x0, [x0, #0xaa8] | 0x418aaa8 'Ametrine.GRYSCLMIssionary.0'
0x1d82efc: bl       #0x1b64570 | 
0x1d82f00: mov      w8, #1
0x1d82f04: strb     w8, [x20, #0xfa4]
0x1d82f08: ldr      x8, [x19, #0x10]
0x1d82f0c: cbz      x8, #0x1d8300c
0x1d82f10: ldr      x8, [x8, #0x48]
0x1d82f14: cbz      x8, #0x1d8300c
0x1d82f18: adrp     x9, #0x418a000
0x1d82f1c: ldr      x9, [x9, #0xaa8] | 0x418aaa8 'Ametrine.GRYSCLMIssionary.0'
0x1d82f20: ldr      x0, [x8, #0x10]
0x1d82f24: mov      x2, xzr
0x1d82f28: ldr      x1, [x9]
0x1d82f2c: bl       #0x32fac7c | System.String$$op_Equality
0x1d82f30: tbz      w0, #0, #0x1d82f5c
0x1d82f34: mov      x0, xzr
0x1d82f38: bl       #0x1d1d3f8 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$get_CurrentStep
0x1d82f3c: cmp      w0, #2
0x1d82f40: b.ne     #0x1d82f5c
0x1d82f44: ldr      x8, [x19, #0x10]
0x1d82f48: cbz      x8, #0x1d8300c
0x1d82f4c: ldr      x8, [x8, #0x38]
0x1d82f50: cbz      x8, #0x1d8300c
0x1d82f54: ldrb     w8, [x8, #0x40]
0x1d82f58: cbz      w8, #0x1d82f68
0x1d82f5c: ldp      x20, x19, [sp, #0x10]
0x1d82f60: ldp      x30, x21, [sp], #0x20
0x1d82f64: ret      
0x1d82f68: adrp     x20, #0x4186000
0x1d82f6c: ldr      x20, [x20, #0xe68]
0x1d82f70: ldr      x0, [x20]
0x1d82f74: ldr      w8, [x0, #0xe0]
0x1d82f78: cbnz     w8, #0x1d82f80
0x1d82f7c: bl       #0x1b646a4 | 
0x1d82f80: adrp     x21, #0x418a000
0x1d82f84: ldr      x21, [x21, #0xea0] | 0x418aea0 'C9PetrichorUnlocked'
0x1d82f88: mov      w1, wzr
0x1d82f8c: mov      x2, xzr
0x1d82f90: ldr      x0, [x21]
0x1d82f94: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d82f98: ldr      x8, [x21]
0x1d82f9c: mov      w19, w0
0x1d82fa0: mov      w1, #1
0x1d82fa4: mov      x2, xzr
0x1d82fa8: mov      x0, x8
0x1d82fac: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d82fb0: mov      w0, wzr
0x1d82fb4: mov      x1, xzr
0x1d82fb8: bl       #0x1d1eb7c | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryCompleteAmetrine
0x1d82fbc: tbz      w0, #0, #0x1d82fe4
0x1d82fc0: adrp     x8, #0x418a000
0x1d82fc4: ldr      x8, [x8, #0xaa0] | 0x418aaa0 'Petrichor.voidMournfinale.0'
0x1d82fc8: and      w1, w19, #1
0x1d82fcc: ldp      x20, x19, [sp, #0x10]
0x1d82fd0: mov      w2, #1
0x1d82fd4: ldr      x0, [x8]
0x1d82fd8: mov      x3, xzr
0x1d82fdc: ldp      x30, x21, [sp], #0x20
0x1d82fe0: b        #0x1d079c0 | Phigros2.Chapter9.Chapter9UnlockNavigation$$ApplyReturnToPhase2SelectMusicIfNeeded
0x1d82fe4: ldr      x0, [x20]
0x1d82fe8: ldr      w8, [x0, #0xe0]
0x1d82fec: cbnz     w8, #0x1d82ff4
0x1d82ff0: bl       #0x1b646a4 | 
0x1d82ff4: ldr      x0, [x21]
0x1d82ff8: and      w1, w19, #1
0x1d82ffc: ldp      x20, x19, [sp, #0x10]
0x1d83000: mov      x2, xzr
0x1d83004: ldp      x30, x21, [sp], #0x20
0x1d83008: b        #0x1cc4f80 | SaveManagement$$SaveBool
0x1d8300c: bl       #0x1b647c8 | 

// 0x1d83010 LevelOverControl.<>c__DisplayClass43_0$$<Start>g__HandlePetrichorEvent|17
0x1d83010: str      x30, [sp, #-0x20]!
0x1d83014: stp      x20, x19, [sp, #0x10]
0x1d83018: adrp     x20, #0x4475000
0x1d8301c: ldrb     w8, [x20, #0xfa5]
0x1d83020: mov      x19, x0
0x1d83024: tbnz     w8, #0, #0x1d8303c
0x1d83028: adrp     x0, #0x418a000
0x1d8302c: ldr      x0, [x0, #0xaa0] | 0x418aaa0 'Petrichor.voidMournfinale.0'
0x1d83030: bl       #0x1b64570 | 
0x1d83034: mov      w8, #1
0x1d83038: strb     w8, [x20, #0xfa5]
0x1d8303c: ldr      x8, [x19, #0x10]
0x1d83040: cbz      x8, #0x1d830b4
0x1d83044: ldr      x8, [x8, #0x48]
0x1d83048: cbz      x8, #0x1d830b4
0x1d8304c: adrp     x9, #0x418a000
0x1d83050: ldr      x9, [x9, #0xaa0] | 0x418aaa0 'Petrichor.voidMournfinale.0'
0x1d83054: ldr      x0, [x8, #0x10]
0x1d83058: mov      x2, xzr
0x1d8305c: ldr      x1, [x9]
0x1d83060: bl       #0x32fac7c | System.String$$op_Equality
0x1d83064: tbz      w0, #0, #0x1d830a8
0x1d83068: ldr      x8, [x19, #0x10]
0x1d8306c: cbz      x8, #0x1d830b4
0x1d83070: ldr      x8, [x8, #0x38]
0x1d83074: cbz      x8, #0x1d830b4
0x1d83078: ldrb     w8, [x8, #0x41]
0x1d8307c: cbz      w8, #0x1d830a8
0x1d83080: mov      x0, xzr
0x1d83084: bl       #0x1d1d3f8 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$get_CurrentStep
0x1d83088: cmp      w0, #3
0x1d8308c: b.ne     #0x1d830a8
0x1d83090: ldr      x19, [x19, #0x10]
0x1d83094: mov      x0, xzr
0x1d83098: bl       #0x1d1eba0 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryCompletePetrichor
0x1d8309c: cbz      x19, #0x1d830b4
0x1d830a0: and      w8, w0, #1
0x1d830a4: strb     w8, [x19, #0x13a]
0x1d830a8: ldp      x20, x19, [sp, #0x10]
0x1d830ac: ldr      x30, [sp], #0x20
0x1d830b0: ret      
0x1d830b4: bl       #0x1b647c8 | 
