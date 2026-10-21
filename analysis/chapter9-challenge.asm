
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

// 0x1cb44a0 AboutUs$$Back
0x1cb44a0: stp      x30, x21, [sp, #-0x20]!
0x1cb44a4: stp      x20, x19, [sp, #0x10]
0x1cb44a8: adrp     x20, #0x4475000
0x1cb44ac: ldrb     w8, [x20, #0x86a]
0x1cb44b0: mov      x19, x0
0x1cb44b4: tbnz     w8, #0, #0x1cb4514
0x1cb44b8: adrp     x0, #0x4186000
0x1cb44bc: ldr      x0, [x0, #0xef8]
0x1cb44c0: bl       #0x1b64570 | 
0x1cb44c4: adrp     x0, #0x4187000
0x1cb44c8: ldr      x0, [x0, #0x680]
0x1cb44cc: bl       #0x1b64570 | 
0x1cb44d0: adrp     x0, #0x4186000
0x1cb44d4: ldr      x0, [x0, #0xe60]
0x1cb44d8: bl       #0x1b64570 | 
0x1cb44dc: adrp     x0, #0x4185000
0x1cb44e0: ldr      x0, [x0, #0x208]
0x1cb44e4: bl       #0x1b64570 | 
0x1cb44e8: adrp     x0, #0x4187000
0x1cb44ec: ldr      x0, [x0, #0x688] | 0x4187688 'ChapterSelector'
0x1cb44f0: bl       #0x1b64570 | 
0x1cb44f4: adrp     x0, #0x4187000
0x1cb44f8: ldr      x0, [x0, #0x690] | 0x4187690 'Top'
0x1cb44fc: bl       #0x1b64570 | 
0x1cb4500: adrp     x0, #0x4187000
0x1cb4504: ldr      x0, [x0, #0x698] | 0x4187698 'Loading'
0x1cb4508: bl       #0x1b64570 | 
0x1cb450c: mov      w8, #1
0x1cb4510: strb     w8, [x20, #0x86a]
0x1cb4514: ldrb     w8, [x19, #0x7c]
0x1cb4518: cbz      w8, #0x1cb4528
0x1cb451c: ldp      x20, x19, [sp, #0x10]
0x1cb4520: ldp      x30, x21, [sp], #0x20
0x1cb4524: ret      
0x1cb4528: adrp     x9, #0x4186000
0x1cb452c: ldr      x9, [x9, #0xef8]
0x1cb4530: mov      w8, #1
0x1cb4534: strb     w8, [x19, #0x7c]
0x1cb4538: mov      x0, x19
0x1cb453c: ldr      x8, [x9]
0x1cb4540: adrp     x9, #0x4187000
0x1cb4544: ldr      x9, [x9, #0x688] | 0x4187688 'ChapterSelector'
0x1cb4548: ldr      x8, [x8, #0xb8]
0x1cb454c: ldr      x9, [x9]
0x1cb4550: str      x9, [x8, #0x20]
0x1cb4554: adrp     x8, #0x4187000
0x1cb4558: ldr      x8, [x8, #0x698] | 0x4187698 'Loading'
0x1cb455c: ldr      x1, [x8]
0x1cb4560: bl       #0x1cb4604 | AboutUs$$StartNextScene
0x1cb4564: mov      x1, x0
0x1cb4568: mov      x0, x19
0x1cb456c: mov      x2, xzr
0x1cb4570: bl       #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1cb4574: adrp     x8, #0x4185000
0x1cb4578: ldr      x8, [x8, #0x208]
0x1cb457c: ldr      x20, [x19, #0x58]
0x1cb4580: ldr      x0, [x8]
0x1cb4584: ldr      w8, [x0, #0xe0]
0x1cb4588: cbnz     w8, #0x1cb4590
0x1cb458c: bl       #0x1b646a4 | 
0x1cb4590: adrp     x21, #0x4186000
0x1cb4594: ldr      x21, [x21, #0xe60]
0x1cb4598: mov      x0, x20
0x1cb459c: ldr      x1, [x21]
0x1cb45a0: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1cb45a4: cbz      x0, #0x1cb4600
0x1cb45a8: adrp     x20, #0x4187000
0x1cb45ac: ldr      x20, [x20, #0x680]
0x1cb45b0: ldr      x1, [x20]
0x1cb45b4: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1cb45b8: cbz      x0, #0x1cb4600
0x1cb45bc: adrp     x8, #0x4187000
0x1cb45c0: ldr      x8, [x8, #0x690] | 0x4187690 'Top'
0x1cb45c4: mov      x2, xzr
0x1cb45c8: ldr      x1, [x8]
0x1cb45cc: bl       #0x3e56c2c | UnityEngine.Canvas$$set_sortingLayerName
0x1cb45d0: ldr      x0, [x19, #0x58]
0x1cb45d4: ldr      x1, [x21]
0x1cb45d8: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1cb45dc: cbz      x0, #0x1cb4600
0x1cb45e0: ldr      x1, [x20]
0x1cb45e4: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1cb45e8: cbz      x0, #0x1cb4600
0x1cb45ec: ldp      x20, x19, [sp, #0x10]
0x1cb45f0: mov      w1, #0xa
0x1cb45f4: mov      x2, xzr
0x1cb45f8: ldp      x30, x21, [sp], #0x20
0x1cb45fc: b        #0x3e569f0 | UnityEngine.Canvas$$set_sortingOrder
0x1cb4600: bl       #0x1b647c8 | 

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

// 0x1cb47ac AboutUs$$Update
0x1cb47ac: sub      sp, sp, #0x30
0x1cb47b0: str      d8, [sp, #0x10]
0x1cb47b4: str      x30, [sp, #0x18]
0x1cb47b8: stp      x20, x19, [sp, #0x20]
0x1cb47bc: adrp     x20, #0x4475000
0x1cb47c0: ldrb     w8, [x20, #0x86d]
0x1cb47c4: mov      x19, x0
0x1cb47c8: tbnz     w8, #0, #0x1cb47ec
0x1cb47cc: adrp     x0, #0x4187000
0x1cb47d0: ldr      x0, [x0, #0x6b8]
0x1cb47d4: bl       #0x1b64570 | 
0x1cb47d8: adrp     x0, #0x4187000
0x1cb47dc: ldr      x0, [x0, #0x6c0] | 0x41876c0 'skip'
0x1cb47e0: bl       #0x1b64570 | 
0x1cb47e4: mov      w8, #1
0x1cb47e8: strb     w8, [x20, #0x86d]
0x1cb47ec: ldrb     w8, [x19, #0x70]
0x1cb47f0: cbz      w8, #0x1cb4adc
0x1cb47f4: ldr      x8, [x19, #0x50]
0x1cb47f8: cbz      x8, #0x1cb4af0
0x1cb47fc: ldr      x0, [x8, #0x20]
0x1cb4800: ldr      x1, [x19, #0x38]
0x1cb4804: mov      x2, xzr
0x1cb4808: bl       #0x33082c8 | System.String$$op_Inequality
0x1cb480c: tbz      w0, #0, #0x1cb48c0
0x1cb4810: ldr      x8, [x19, #0x50]
0x1cb4814: cbz      x8, #0x1cb4af0
0x1cb4818: ldr      x0, [x8, #0x20]
0x1cb481c: ldr      x1, [x19, #0x40]
0x1cb4820: mov      x2, xzr
0x1cb4824: bl       #0x33082c8 | System.String$$op_Inequality
0x1cb4828: tbz      w0, #0, #0x1cb48c0
0x1cb482c: ldr      x20, [x19, #0x50]
0x1cb4830: cbz      x20, #0x1cb4af0
0x1cb4834: mov      x0, x20
0x1cb4838: mov      x1, xzr
0x1cb483c: bl       #0x1db7cd0 | AddressableAudioSource$$get_Volume
0x1cb4840: mov      x0, xzr
0x1cb4844: mov      v8.16b, v0.16b
0x1cb4848: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1cb484c: adrp     x8, #0xc35000
0x1cb4850: ldr      s1, [x8, #0x360]
0x1cb4854: mov      x0, x20
0x1cb4858: mov      x1, xzr
0x1cb485c: fmul     s0, s0, s1
0x1cb4860: fadd     s0, s8, s0
0x1cb4864: bl       #0x1db7cec | AddressableAudioSource$$set_Volume
0x1cb4868: ldr      x0, [x19, #0x50]
0x1cb486c: cbz      x0, #0x1cb4af0
0x1cb4870: mov      x1, xzr
0x1cb4874: bl       #0x1db7cd0 | AddressableAudioSource$$get_Volume
0x1cb4878: adrp     x8, #0xc35000
0x1cb487c: ldr      s1, [x8, #0x2f0]
0x1cb4880: fcmp     s0, s1
0x1cb4884: b.hi     #0x1cb48c0
0x1cb4888: ldr      x0, [x19, #0x50]
0x1cb488c: cbz      x0, #0x1cb4af0
0x1cb4890: ldr      x1, [x19, #0x38]
0x1cb4894: mov      x2, xzr
0x1cb4898: bl       #0x1db7aec | AddressableAudioSource$$set_Clip
0x1cb489c: ldr      x0, [x19, #0x50]
0x1cb48a0: cbz      x0, #0x1cb4af0
0x1cb48a4: mov      x1, xzr
0x1cb48a8: bl       #0x1db7e54 | AddressableAudioSource$$Play
0x1cb48ac: ldr      x0, [x19, #0x50]
0x1cb48b0: cbz      x0, #0x1cb4af0
0x1cb48b4: fmov     s0, #1.00000000
0x1cb48b8: mov      x1, xzr
0x1cb48bc: bl       #0x1db7cec | AddressableAudioSource$$set_Volume
0x1cb48c0: ldr      s8, [x19, #0x74]
0x1cb48c4: mov      x0, xzr
0x1cb48c8: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1cb48cc: ldr      s1, [x19, #0x30]
0x1cb48d0: ldr      d3, [x19, #0x28]
0x1cb48d4: fadd     s0, s8, s0
0x1cb48d8: str      s0, [x19, #0x74]
0x1cb48dc: fcmp     s0, s1
0x1cb48e0: b.pl     #0x1cb48fc
0x1cb48e4: ldr      d2, [x19, #0x20]
0x1cb48e8: dup      v1.2s, v1.s[0]
0x1cb48ec: fsub     v3.2s, v3.2s, v2.2s
0x1cb48f0: fmul     v3.2s, v3.2s, v0.s[0]
0x1cb48f4: fdiv     v1.2s, v3.2s, v1.2s
0x1cb48f8: fadd     v3.2s, v2.2s, v1.2s
0x1cb48fc: ldr      s1, [x19, #0x48]
0x1cb4900: str      q3, [sp]
0x1cb4904: fcmp     s0, s1
0x1cb4908: b.le     #0x1cb4944
0x1cb490c: ldr      x8, [x19, #0x38]
0x1cb4910: cbz      x8, #0x1cb4944
0x1cb4914: ldr      x0, [x19, #0x50]
0x1cb4918: cbz      x0, #0x1cb4af0
0x1cb491c: ldr      x1, [x19, #0x40]
0x1cb4920: mov      x2, xzr
0x1cb4924: bl       #0x1db7aec | AddressableAudioSource$$set_Clip
0x1cb4928: ldr      x0, [x19, #0x50]
0x1cb492c: cbz      x0, #0x1cb4af0
0x1cb4930: mov      x1, xzr
0x1cb4934: bl       #0x1db7e54 | AddressableAudioSource$$Play
0x1cb4938: ldr      s0, [x19, #0x74]
0x1cb493c: ldr      s1, [x19, #0x48]
0x1cb4940: str      xzr, [x19, #0x38]
0x1cb4944: ldr      s2, [x19, #0x4c]
0x1cb4948: fadd     s1, s1, s2
0x1cb494c: fcmp     s0, s1
0x1cb4950: b.le     #0x1cb497c
0x1cb4954: ldr      x8, [x19, #0x40]
0x1cb4958: cbz      x8, #0x1cb497c
0x1cb495c: ldr      x0, [x19, #0x50]
0x1cb4960: cbz      x0, #0x1cb4af0
0x1cb4964: mov      x1, xzr
0x1cb4968: bl       #0x1db7bcc | AddressableAudioSource$$Pause
0x1cb496c: ldp      s1, s2, [x19, #0x48]
0x1cb4970: ldr      s0, [x19, #0x74]
0x1cb4974: str      xzr, [x19, #0x40]
0x1cb4978: fadd     s1, s1, s2
0x1cb497c: fmov     s2, #6.00000000
0x1cb4980: fadd     s1, s1, s2
0x1cb4984: fcmp     s0, s1
0x1cb4988: b.gt     #0x1cb4a58
0x1cb498c: mov      x0, x19
0x1cb4990: mov      x1, xzr
0x1cb4994: bl       #0x3c5d744 | UnityEngine.Component$$get_transform
0x1cb4998: cbz      x0, #0x1cb4af0
0x1cb499c: ldr      q0, [sp]
0x1cb49a0: fmov     s2, wzr
0x1cb49a4: mov      x1, xzr
0x1cb49a8: mov      s1, v0.s[1]
0x1cb49ac: bl       #0x3c6b41c | UnityEngine.Transform$$set_position
0x1cb49b0: mov      x0, xzr
0x1cb49b4: bl       #0x1cc45e8 | MyInput$$get_touches
0x1cb49b8: cbz      x0, #0x1cb4af0
0x1cb49bc: ldr      x9, [x0, #0x18]
0x1cb49c0: ldrb     w8, [x19, #0x71]
0x1cb49c4: cbz      x9, #0x1cb4a70
0x1cb49c8: cbnz     w8, #0x1cb4a10
0x1cb49cc: ldr      x0, [x19, #0x60]
0x1cb49d0: mov      w8, #1
0x1cb49d4: strb     w8, [x19, #0x71]
0x1cb49d8: cbz      x0, #0x1cb4af0
0x1cb49dc: adrp     x8, #0x4187000
0x1cb49e0: ldr      x8, [x8, #0x6c0] | 0x41876c0 'skip'
0x1cb49e4: mov      x2, xzr
0x1cb49e8: ldr      x1, [x8]
0x1cb49ec: bl       #0x3c0c2c0 | UnityEngine.Animation$$get_Item
0x1cb49f0: cbz      x0, #0x1cb4af0
0x1cb49f4: fmov     s0, #1.00000000
0x1cb49f8: mov      x1, xzr
0x1cb49fc: bl       #0x3c0c6cc | UnityEngine.AnimationState$$set_speed
0x1cb4a00: ldr      x0, [x19, #0x60]
0x1cb4a04: cbz      x0, #0x1cb4af0
0x1cb4a08: mov      x1, xzr
0x1cb4a0c: bl       #0x3c0c348 | UnityEngine.Animation$$Play
0x1cb4a10: ldr      x0, [x19, #0x60]
0x1cb4a14: cbz      x0, #0x1cb4af0
0x1cb4a18: mov      x1, xzr
0x1cb4a1c: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1cb4a20: cbz      x0, #0x1cb4af0
0x1cb4a24: adrp     x8, #0x4187000
0x1cb4a28: ldr      x8, [x8, #0x6b8]
0x1cb4a2c: ldr      x1, [x8]
0x1cb4a30: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1cb4a34: cbz      x0, #0x1cb4af0
0x1cb4a38: ldr      x8, [x0]
0x1cb4a3c: ldr      x9, [x8, #0x298]
0x1cb4a40: ldr      x1, [x8, #0x2a0]
0x1cb4a44: blr      x9
0x1cb4a48: adrp     x8, #0xc35000
0x1cb4a4c: ldr      s0, [x8, #0x148]
0x1cb4a50: fcmp     s3, s0
0x1cb4a54: b.le     #0x1cb4adc
0x1cb4a58: mov      x0, x19
0x1cb4a5c: ldp      x20, x19, [sp, #0x20]
0x1cb4a60: ldr      x30, [sp, #0x18]
0x1cb4a64: ldr      d8, [sp, #0x10]
0x1cb4a68: add      sp, sp, #0x30
0x1cb4a6c: b        #0x1cb44a0 | AboutUs$$Back
0x1cb4a70: cbz      w8, #0x1cb4adc
0x1cb4a74: ldr      x0, [x19, #0x60]
0x1cb4a78: strb     wzr, [x19, #0x71]
0x1cb4a7c: cbz      x0, #0x1cb4af0
0x1cb4a80: adrp     x20, #0x4187000
0x1cb4a84: ldr      x20, [x20, #0x6c0] | 0x41876c0 'skip'
0x1cb4a88: mov      x2, xzr
0x1cb4a8c: ldr      x1, [x20]
0x1cb4a90: bl       #0x3c0c2c0 | UnityEngine.Animation$$get_Item
0x1cb4a94: cbz      x0, #0x1cb4af0
0x1cb4a98: adrp     x8, #0xc35000
0x1cb4a9c: ldr      s0, [x8, #0x3c4]
0x1cb4aa0: mov      x1, xzr
0x1cb4aa4: bl       #0x3c0c680 | UnityEngine.AnimationState$$set_normalizedTime
0x1cb4aa8: ldr      x0, [x19, #0x60]
0x1cb4aac: cbz      x0, #0x1cb4af0
0x1cb4ab0: ldr      x1, [x20]
0x1cb4ab4: mov      x2, xzr
0x1cb4ab8: bl       #0x3c0c2c0 | UnityEngine.Animation$$get_Item
0x1cb4abc: cbz      x0, #0x1cb4af0
0x1cb4ac0: ldp      x20, x19, [sp, #0x20]
0x1cb4ac4: ldr      x30, [sp, #0x18]
0x1cb4ac8: ldr      d8, [sp, #0x10]
0x1cb4acc: fmov     s0, #-1.00000000
0x1cb4ad0: mov      x1, xzr
0x1cb4ad4: add      sp, sp, #0x30
0x1cb4ad8: b        #0x3c0c6cc | UnityEngine.AnimationState$$set_speed
0x1cb4adc: ldp      x20, x19, [sp, #0x20]
0x1cb4ae0: ldr      x30, [sp, #0x18]
0x1cb4ae4: ldr      d8, [sp, #0x10]
0x1cb4ae8: add      sp, sp, #0x30
0x1cb4aec: ret      
0x1cb4af0: bl       #0x1b647c8 | 

// 0x1cb4af4 AboutUs$$.ctor
0x1cb4af4: mov      x1, xzr
0x1cb4af8: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor

// 0x1cf7d88 Phigros2.Chapter9.Chapter9FakeChallengeSongSelector$$PlayWhiteoutEntrance
0x1cf7d88: stp      x30, x21, [sp, #-0x20]!
0x1cf7d8c: stp      x20, x19, [sp, #0x10]
0x1cf7d90: adrp     x20, #0x4475000
0x1cf7d94: adrp     x21, #0x418a000
0x1cf7d98: ldrb     w8, [x20, #0xb2c]
0x1cf7d9c: ldr      x21, [x21, #0x348]
0x1cf7da0: mov      x19, x0
0x1cf7da4: tbnz     w8, #0, #0x1cf7dbc
0x1cf7da8: adrp     x0, #0x418a000
0x1cf7dac: ldr      x0, [x0, #0x348]
0x1cf7db0: bl       #0x1b64570 | 
0x1cf7db4: mov      w8, #1
0x1cf7db8: strb     w8, [x20, #0xb2c]
0x1cf7dbc: ldr      x0, [x21]
0x1cf7dc0: bl       #0x1b647b8 | 
0x1cf7dc4: mov      w1, wzr
0x1cf7dc8: mov      x2, xzr
0x1cf7dcc: mov      x20, x0
0x1cf7dd0: bl       #0x1cf95a4 | Phigros2.Chapter9.Chapter9FakeChallengeSongSelector.<PlayWhiteoutEntrance>d__36$$.ctor
0x1cf7dd4: cbz      x20, #0x1cf7dec
0x1cf7dd8: str      x19, [x20, #0x20]
0x1cf7ddc: mov      x0, x20
0x1cf7de0: ldp      x20, x19, [sp, #0x10]
0x1cf7de4: ldp      x30, x21, [sp], #0x20
0x1cf7de8: ret      
0x1cf7dec: bl       #0x1b647c8 | 

// 0x1cf7f20 Phigros2.Chapter9.Chapter9FakeChallengeSongSelector$$PlayUnlock
0x1cf7f20: str      x30, [sp, #-0x60]!
0x1cf7f24: stp      x28, x27, [sp, #0x10]
0x1cf7f28: stp      x26, x25, [sp, #0x20]
0x1cf7f2c: stp      x24, x23, [sp, #0x30]
0x1cf7f30: stp      x22, x21, [sp, #0x40]
0x1cf7f34: stp      x20, x19, [sp, #0x50]
0x1cf7f38: adrp     x20, #0x4475000
0x1cf7f3c: ldrb     w8, [x20, #0xb2e]
0x1cf7f40: mov      x19, x0
0x1cf7f44: tbnz     w8, #0, #0x1cf7fd4
0x1cf7f48: adrp     x0, #0x4189000
0x1cf7f4c: ldr      x0, [x0, #0xa80]
0x1cf7f50: bl       #0x1b64570 | 
0x1cf7f54: adrp     x0, #0x418a000
0x1cf7f58: ldr      x0, [x0, #0x328]
0x1cf7f5c: bl       #0x1b64570 | 
0x1cf7f60: adrp     x0, #0x418a000
0x1cf7f64: ldr      x0, [x0, #0x350]
0x1cf7f68: bl       #0x1b64570 | 
0x1cf7f6c: adrp     x0, #0x4189000
0x1cf7f70: ldr      x0, [x0, #0xa88]
0x1cf7f74: bl       #0x1b64570 | 
0x1cf7f78: adrp     x0, #0x418a000
0x1cf7f7c: ldr      x0, [x0, #0x358]
0x1cf7f80: bl       #0x1b64570 | 
0x1cf7f84: adrp     x0, #0x418a000
0x1cf7f88: ldr      x0, [x0, #0x360]
0x1cf7f8c: bl       #0x1b64570 | 
0x1cf7f90: adrp     x0, #0x4186000
0x1cf7f94: ldr      x0, [x0, #0xe60]
0x1cf7f98: bl       #0x1b64570 | 
0x1cf7f9c: adrp     x0, #0x4185000
0x1cf7fa0: ldr      x0, [x0, #0x208]
0x1cf7fa4: bl       #0x1b64570 | 
0x1cf7fa8: adrp     x0, #0x4189000
0x1cf7fac: ldr      x0, [x0, #0xac8]
0x1cf7fb0: bl       #0x1b64570 | 
0x1cf7fb4: adrp     x0, #0x4187000
0x1cf7fb8: ldr      x0, [x0, #0xc10] | 0x4187c10 'ChallengeMode'
0x1cf7fbc: bl       #0x1b64570 | 
0x1cf7fc0: adrp     x0, #0x418a000
0x1cf7fc4: ldr      x0, [x0, #0x368] | 0x418a368 'EntrancetotheChaos.打打だいずvssiromaru.0'
0x1cf7fc8: bl       #0x1b64570 | 
0x1cf7fcc: mov      w8, #1
0x1cf7fd0: strb     w8, [x20, #0xb2e]
0x1cf7fd4: ldrb     w8, [x19, #0xe8]
0x1cf7fd8: cbz      w8, #0x1cf7ff8
0x1cf7fdc: ldp      x20, x19, [sp, #0x50]
0x1cf7fe0: ldp      x22, x21, [sp, #0x40]
0x1cf7fe4: ldp      x24, x23, [sp, #0x30]
0x1cf7fe8: ldp      x26, x25, [sp, #0x20]
0x1cf7fec: ldp      x28, x27, [sp, #0x10]
0x1cf7ff0: ldr      x30, [sp], #0x60
0x1cf7ff4: ret      
0x1cf7ff8: ldr      x8, [x19, #0xd8]
0x1cf7ffc: cbz      x8, #0x1cf7fdc
0x1cf8000: ldr      w8, [x8, #0x18]
0x1cf8004: cmp      w8, #2
0x1cf8008: b.lt     #0x1cf7fdc
0x1cf800c: adrp     x8, #0x418a000
0x1cf8010: ldr      x8, [x8, #0x328]
0x1cf8014: ldr      x0, [x8]
0x1cf8018: ldr      w8, [x0, #0xe0]
0x1cf801c: cbnz     w8, #0x1cf8024
0x1cf8020: bl       #0x1b646a4 | 
0x1cf8024: adrp     x8, #0x418a000
0x1cf8028: ldr      x8, [x8, #0x368] | 0x418a368 'EntrancetotheChaos.打打だいずvssiromaru.0'
0x1cf802c: ldr      x0, [x8]
0x1cf8030: bl       #0x1cf82d0 | Phigros2.Chapter9.Chapter9FakeChallengeSongSelector$$CreateSongItem
0x1cf8034: cbz      x0, #0x1cf7fdc
0x1cf8038: mov      x21, x0
0x1cf803c: ldr      x0, [x19, #0xb0]
0x1cf8040: mov      w8, #1
0x1cf8044: strb     w8, [x19, #0xe8]
0x1cf8048: strb     w8, [x19, #0x60]
0x1cf804c: cbz      x0, #0x1cf82c8
0x1cf8050: mov      x1, xzr
0x1cf8054: bl       #0x3c1868c | UnityEngine.AudioSource$$Play
0x1cf8058: adrp     x8, #0x4185000
0x1cf805c: ldr      x8, [x8, #0x208]
0x1cf8060: ldr      x20, [x19, #0x68]
0x1cf8064: ldr      x0, [x8]
0x1cf8068: ldr      w8, [x0, #0xe0]
0x1cf806c: cbnz     w8, #0x1cf8074
0x1cf8070: bl       #0x1b646a4 | 
0x1cf8074: adrp     x8, #0x4186000
0x1cf8078: ldr      x8, [x8, #0xe60]
0x1cf807c: mov      x0, x20
0x1cf8080: ldr      x1, [x8]
0x1cf8084: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1cf8088: adrp     x8, #0x418a000
0x1cf808c: ldr      x8, [x8, #0x360]
0x1cf8090: ldr      x0, [x8]
0x1cf8094: bl       #0x1b647b8 | 
0x1cf8098: adrp     x8, #0x418a000
0x1cf809c: ldr      x8, [x8, #0x358]
0x1cf80a0: mov      w1, #3
0x1cf80a4: mov      x20, x0
0x1cf80a8: ldr      x2, [x8]
0x1cf80ac: bl       #0x2e5f4e0 | System.Collections.Generic.List<object>$$.ctor
0x1cf80b0: ldr      x23, [x19, #0xd8]
0x1cf80b4: cbz      x23, #0x1cf82c8
0x1cf80b8: ldr      x8, [x23, #0x18]
0x1cf80bc: cmp      w8, #1
0x1cf80c0: b.lt     #0x1cf8178
0x1cf80c4: adrp     x26, #0x4189000
0x1cf80c8: adrp     x27, #0x4189000
0x1cf80cc: ldr      x26, [x26, #0xa80]
0x1cf80d0: ldr      x27, [x27, #0xa88]
0x1cf80d4: mov      x24, xzr
0x1cf80d8: and      x8, x8, #0xffffffff
0x1cf80dc: add      x25, x23, #0x20
0x1cf80e0: cmp      x24, w8, uxtw
0x1cf80e4: b.hs     #0x1cf82cc
0x1cf80e8: ldr      x0, [x26]
0x1cf80ec: ldr      x28, [x25, x24, lsl #3]
0x1cf80f0: bl       #0x1b647b8 | 
0x1cf80f4: mov      x1, xzr
0x1cf80f8: mov      x22, x0
0x1cf80fc: bl       #0x1ce3ac8 | Phigros2.SongSelector.Scripts.ChallengeSongItem$$.ctor
0x1cf8100: cbz      x22, #0x1cf82c8
0x1cf8104: str      x28, [x22, #0x10]
0x1cf8108: ldr      w8, [x19, #0x20]
0x1cf810c: str      w8, [x22, #0x18]
0x1cf8110: cbz      x20, #0x1cf82c8
0x1cf8114: ldr      w10, [x20, #0x1c]
0x1cf8118: ldr      x8, [x20, #0x10]
0x1cf811c: ldr      x9, [x27]
0x1cf8120: add      w10, w10, #1
0x1cf8124: str      w10, [x20, #0x1c]
0x1cf8128: cbz      x8, #0x1cf82c8
0x1cf812c: ldrsw    x10, [x20, #0x18]
0x1cf8130: ldr      w11, [x8, #0x18]
0x1cf8134: cmp      w10, w11
0x1cf8138: b.hs     #0x1cf8150
0x1cf813c: add      w9, w10, #1
0x1cf8140: add      x8, x8, x10, lsl #3
0x1cf8144: str      w9, [x20, #0x18]
0x1cf8148: str      x22, [x8, #0x20]
0x1cf814c: b        #0x1cf8168 | 
0x1cf8150: ldr      x8, [x9, #0x20]
0x1cf8154: mov      x0, x20
0x1cf8158: mov      x1, x22
0x1cf815c: ldr      x8, [x8, #0xc0]
0x1cf8160: ldr      x2, [x8, #0x70]
0x1cf8164: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1cf8168: ldr      w8, [x23, #0x18]
0x1cf816c: add      x24, x24, #1
0x1cf8170: cmp      x24, w8, sxtw
0x1cf8174: b.lt     #0x1cf80e0
0x1cf8178: adrp     x8, #0x4189000
0x1cf817c: ldr      x8, [x8, #0xa80]
0x1cf8180: ldr      x0, [x8]
0x1cf8184: bl       #0x1b647b8 | 
0x1cf8188: mov      x1, xzr
0x1cf818c: mov      x22, x0
0x1cf8190: bl       #0x1ce3ac8 | Phigros2.SongSelector.Scripts.ChallengeSongItem$$.ctor
0x1cf8194: cbz      x22, #0x1cf82c8
0x1cf8198: str      x21, [x22, #0x10]
0x1cf819c: ldr      w8, [x19, #0x20]
0x1cf81a0: str      w8, [x22, #0x18]
0x1cf81a4: cbz      x20, #0x1cf82c8
0x1cf81a8: adrp     x9, #0x4189000
0x1cf81ac: ldr      x9, [x9, #0xa88]
0x1cf81b0: ldr      w10, [x20, #0x1c]
0x1cf81b4: ldr      x8, [x20, #0x10]
0x1cf81b8: ldr      x9, [x9]
0x1cf81bc: add      w10, w10, #1
0x1cf81c0: str      w10, [x20, #0x1c]
0x1cf81c4: cbz      x8, #0x1cf82c8
0x1cf81c8: ldrsw    x10, [x20, #0x18]
0x1cf81cc: ldr      w11, [x8, #0x18]
0x1cf81d0: cmp      w10, w11
0x1cf81d4: b.hs     #0x1cf81ec
0x1cf81d8: add      w9, w10, #1
0x1cf81dc: add      x8, x8, x10, lsl #3
0x1cf81e0: str      w9, [x20, #0x18]
0x1cf81e4: str      x22, [x8, #0x20]
0x1cf81e8: b        #0x1cf8204 | 
0x1cf81ec: ldr      x8, [x9, #0x20]
0x1cf81f0: mov      x0, x20
0x1cf81f4: mov      x1, x22
0x1cf81f8: ldr      x8, [x8, #0xc0]
0x1cf81fc: ldr      x2, [x8, #0x70]
0x1cf8200: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1cf8204: adrp     x21, #0x4475000
0x1cf8208: ldrb     w8, [x21, #0x8c0]
0x1cf820c: cbnz     w8, #0x1cf8224
0x1cf8210: adrp     x0, #0x4186000
0x1cf8214: ldr      x0, [x0, #0xef8]
0x1cf8218: bl       #0x1b64570 | 
0x1cf821c: mov      w8, #1
0x1cf8220: strb     w8, [x21, #0x8c0]
0x1cf8224: adrp     x8, #0x4186000
0x1cf8228: ldr      x8, [x8, #0xef8]
0x1cf822c: ldr      x8, [x8]
0x1cf8230: ldr      x8, [x8, #0xb8]
0x1cf8234: ldr      x21, [x8]
0x1cf8238: cbz      x21, #0x1cf82c8
0x1cf823c: str      wzr, [x21, #0x68]
0x1cf8240: stp      x20, xzr, [x21, #0x70]
0x1cf8244: adrp     x8, #0x418a000
0x1cf8248: ldr      x8, [x8, #0x350]
0x1cf824c: ldr      x0, [x8]
0x1cf8250: bl       #0x1b647b8 | 
0x1cf8254: mov      x1, xzr
0x1cf8258: mov      x20, x0
0x1cf825c: bl       #0x1cc0fc8 | LevelResultInfo$$.ctor
0x1cf8260: str      x20, [x21, #0x38]
0x1cf8264: adrp     x8, #0x4189000
0x1cf8268: ldr      x8, [x8, #0xac8]
0x1cf826c: ldr      x0, [x8]
0x1cf8270: ldr      w8, [x0, #0xe0]
0x1cf8274: cbnz     w8, #0x1cf827c
0x1cf8278: bl       #0x1b646a4 | 
0x1cf827c: mov      w1, #1
0x1cf8280: mov      x0, x21
0x1cf8284: mov      x2, xzr
0x1cf8288: bl       #0x1d25e10 | Phigros2.ChallengeMode.Scripts.SecretChallengeLifeRules$$BeginRun
0x1cf828c: adrp     x8, #0x4187000
0x1cf8290: ldr      x8, [x8, #0xc10] | 0x4187c10 'ChallengeMode'
0x1cf8294: mov      x0, x19
0x1cf8298: ldr      x1, [x8]
0x1cf829c: bl       #0x1cf83e8 | Phigros2.Chapter9.Chapter9FakeChallengeSongSelector$$TurnToNextScene
0x1cf82a0: mov      x1, x0
0x1cf82a4: mov      x0, x19
0x1cf82a8: ldp      x20, x19, [sp, #0x50]
0x1cf82ac: ldp      x22, x21, [sp, #0x40]
0x1cf82b0: ldp      x24, x23, [sp, #0x30]
0x1cf82b4: ldp      x26, x25, [sp, #0x20]
0x1cf82b8: ldp      x28, x27, [sp, #0x10]
0x1cf82bc: mov      x2, xzr
0x1cf82c0: ldr      x30, [sp], #0x60
0x1cf82c4: b        #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1cf82c8: bl       #0x1b647c8 | 
0x1cf82cc: bl       #0x1b647d0 | 

// 0x1d0cd98 Phigros2.Chapter9.ExoplanetaryMirageUnlock$$IsProcessActive
0x1d0cd98: str      x30, [sp, #-0x20]!
0x1d0cd9c: stp      x20, x19, [sp, #0x10]
0x1d0cda0: adrp     x20, #0x4475000
0x1d0cda4: adrp     x19, #0x4186000
0x1d0cda8: ldrb     w8, [x20, #0xc00]
0x1d0cdac: ldr      x19, [x19, #0xe68]
0x1d0cdb0: tbnz     w8, #0, #0x1d0cdec
0x1d0cdb4: adrp     x0, #0x4186000
0x1d0cdb8: ldr      x0, [x0, #0xe68]
0x1d0cdbc: bl       #0x1b64570 | 
0x1d0cdc0: adrp     x0, #0x418a000
0x1d0cdc4: ldr      x0, [x0, #0x5e0] | 0x418a5e0 'poyidomejiu1'
0x1d0cdc8: bl       #0x1b64570 | 
0x1d0cdcc: adrp     x0, #0x418a000
0x1d0cdd0: ldr      x0, [x0, #0x650] | 0x418a650 'C9ExoplanetaryMirageUnlocked'
0x1d0cdd4: bl       #0x1b64570 | 
0x1d0cdd8: adrp     x0, #0x418a000
0x1d0cddc: ldr      x0, [x0, #0x490] | 0x418a490 'Chapter9UnlockBegin'
0x1d0cde0: bl       #0x1b64570 | 
0x1d0cde4: mov      w8, #1
0x1d0cde8: strb     w8, [x20, #0xc00]
0x1d0cdec: ldr      x0, [x19]
0x1d0cdf0: adrp     x20, #0x418a000
0x1d0cdf4: ldr      w8, [x0, #0xe0]
0x1d0cdf8: ldr      x20, [x20, #0x490] | 0x418a490 'Chapter9UnlockBegin'
0x1d0cdfc: cbnz     w8, #0x1d0ce04
0x1d0ce00: bl       #0x1b646a4 | 
0x1d0ce04: ldr      x0, [x20]
0x1d0ce08: mov      w1, wzr
0x1d0ce0c: mov      x2, xzr
0x1d0ce10: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d0ce14: tbz      w0, #0, #0x1d0ce44
0x1d0ce18: ldr      x0, [x19]
0x1d0ce1c: adrp     x19, #0x418a000
0x1d0ce20: ldr      w8, [x0, #0xe0]
0x1d0ce24: ldr      x19, [x19, #0x650] | 0x418a650 'C9ExoplanetaryMirageUnlocked'
0x1d0ce28: cbnz     w8, #0x1d0ce30
0x1d0ce2c: bl       #0x1b646a4 | 
0x1d0ce30: ldr      x0, [x19]
0x1d0ce34: mov      w1, wzr
0x1d0ce38: mov      x2, xzr
0x1d0ce3c: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d0ce40: tbz      w0, #0, #0x1d0ce54
0x1d0ce44: ldp      x20, x19, [sp, #0x10]
0x1d0ce48: mov      w0, wzr
0x1d0ce4c: ldr      x30, [sp], #0x20
0x1d0ce50: ret      
0x1d0ce54: adrp     x8, #0x418a000
0x1d0ce58: ldr      x8, [x8, #0x5e0] | 0x418a5e0 'poyidomejiu1'
0x1d0ce5c: ldp      x20, x19, [sp, #0x10]
0x1d0ce60: ldr      x0, [x8]
0x1d0ce64: ldr      x30, [sp], #0x20
0x1d0ce68: b        #0x1d0ce6c | Phigros2.Chapter9.Key$$IsCollectionRead

// 0x1d0d090 Phigros2.Chapter9.ExoplanetaryMirageUnlock$$IsValidUnlockSelection
0x1d0d090: str      x30, [sp, #-0x20]!
0x1d0d094: stp      x20, x19, [sp, #0x10]
0x1d0d098: adrp     x20, #0x4475000
0x1d0d09c: ldrb     w8, [x20, #0xc05]
0x1d0d0a0: mov      x19, x0
0x1d0d0a4: tbnz     w8, #0, #0x1d0d0e0
0x1d0d0a8: adrp     x0, #0x418a000
0x1d0d0ac: ldr      x0, [x0, #0xc20]
0x1d0d0b0: bl       #0x1b64570 | 
0x1d0d0b4: adrp     x0, #0x418a000
0x1d0d0b8: ldr      x0, [x0, #0xc28]
0x1d0d0bc: bl       #0x1b64570 | 
0x1d0d0c0: adrp     x0, #0x418a000
0x1d0d0c4: ldr      x0, [x0, #0x3b8] | 0x418a3b8 'AboutTheUniverse.SOTUIMIssionary.0'
0x1d0d0c8: bl       #0x1b64570 | 
0x1d0d0cc: adrp     x0, #0x418a000
0x1d0d0d0: ldr      x0, [x0, #0x568] | 0x418a568 'Evanescent.LeaF.0'
0x1d0d0d4: bl       #0x1b64570 | 
0x1d0d0d8: mov      w8, #1
0x1d0d0dc: strb     w8, [x20, #0xc05]
0x1d0d0e0: cbz      x19, #0x1d0d278
0x1d0d0e4: adrp     x10, #0x418a000
0x1d0d0e8: ldr      x8, [x19]
0x1d0d0ec: ldr      x10, [x10, #0xc20]
0x1d0d0f0: ldrh     w9, [x8, #0x12e]
0x1d0d0f4: ldr      x1, [x10]
0x1d0d0f8: cbz      x9, #0x1d0d11c
0x1d0d0fc: ldr      x10, [x8, #0xb0]
0x1d0d100: add      x10, x10, #8
0x1d0d104: ldur     x11, [x10, #-8]
0x1d0d108: cmp      x11, x1
0x1d0d10c: b.eq     #0x1d0d12c
0x1d0d110: subs     x9, x9, #1
0x1d0d114: add      x10, x10, #0x10
0x1d0d118: b.ne     #0x1d0d104
0x1d0d11c: mov      x0, x19
0x1d0d120: mov      w2, wzr
0x1d0d124: bl       #0x1bc5638 | 
0x1d0d128: b        #0x1d0d138 | 
0x1d0d12c: ldrsw    x9, [x10]
0x1d0d130: add      x8, x8, x9, lsl #4
0x1d0d134: add      x0, x8, #0x138
0x1d0d138: ldp      x8, x1, [x0]
0x1d0d13c: mov      x0, x19
0x1d0d140: blr      x8
0x1d0d144: cmp      w0, #2
0x1d0d148: b.ne     #0x1d0d278
0x1d0d14c: adrp     x20, #0x418a000
0x1d0d150: ldr      x8, [x19]
0x1d0d154: ldr      x20, [x20, #0xc28]
0x1d0d158: ldrh     w9, [x8, #0x12e]
0x1d0d15c: ldr      x1, [x20]
0x1d0d160: cbz      x9, #0x1d0d184
0x1d0d164: ldr      x10, [x8, #0xb0]
0x1d0d168: add      x10, x10, #8
0x1d0d16c: ldur     x11, [x10, #-8]
0x1d0d170: cmp      x11, x1
0x1d0d174: b.eq     #0x1d0d194
0x1d0d178: subs     x9, x9, #1
0x1d0d17c: add      x10, x10, #0x10
0x1d0d180: b.ne     #0x1d0d16c
0x1d0d184: mov      x0, x19
0x1d0d188: mov      w2, wzr
0x1d0d18c: bl       #0x1bc5638 | 
0x1d0d190: b        #0x1d0d1a0 | 
0x1d0d194: ldrsw    x9, [x10]
0x1d0d198: add      x8, x8, x9, lsl #4
0x1d0d19c: add      x0, x8, #0x138
0x1d0d1a0: ldp      x8, x2, [x0]
0x1d0d1a4: mov      x0, x19
0x1d0d1a8: mov      w1, wzr
0x1d0d1ac: blr      x8
0x1d0d1b0: ldr      x8, [x19]
0x1d0d1b4: ldr      x1, [x20]
0x1d0d1b8: mov      x20, x0
0x1d0d1bc: ldrh     w9, [x8, #0x12e]
0x1d0d1c0: cbz      x9, #0x1d0d1e4
0x1d0d1c4: ldr      x10, [x8, #0xb0]
0x1d0d1c8: add      x10, x10, #8
0x1d0d1cc: ldur     x11, [x10, #-8]
0x1d0d1d0: cmp      x11, x1
0x1d0d1d4: b.eq     #0x1d0d1f4
0x1d0d1d8: subs     x9, x9, #1
0x1d0d1dc: add      x10, x10, #0x10
0x1d0d1e0: b.ne     #0x1d0d1cc
0x1d0d1e4: mov      x0, x19
0x1d0d1e8: mov      w2, wzr
0x1d0d1ec: bl       #0x1bc5638 | 
0x1d0d1f0: b        #0x1d0d200 | 
0x1d0d1f4: ldrsw    x9, [x10]
0x1d0d1f8: add      x8, x8, x9, lsl #4
0x1d0d1fc: add      x0, x8, #0x138
0x1d0d200: ldp      x8, x2, [x0]
0x1d0d204: mov      w1, #1
0x1d0d208: mov      x0, x19
0x1d0d20c: blr      x8
0x1d0d210: cbz      x20, #0x1d0d278
0x1d0d214: mov      x19, x0
0x1d0d218: cbz      x0, #0x1d0d278
0x1d0d21c: ldr      w8, [x20, #0x18]
0x1d0d220: ldr      w9, [x19, #0x18]
0x1d0d224: cmp      w8, w9
0x1d0d228: b.ne     #0x1d0d278
0x1d0d22c: ldr      x8, [x20, #0x10]
0x1d0d230: cbz      x8, #0x1d0d244
0x1d0d234: ldr      x8, [x8, #0x10]
0x1d0d238: cbz      x8, #0x1d0d244
0x1d0d23c: ldr      x0, [x8, #0x10]
0x1d0d240: b        #0x1d0d248 | 
0x1d0d244: mov      x0, xzr
0x1d0d248: adrp     x8, #0x418a000
0x1d0d24c: ldr      x8, [x8, #0x568] | 0x418a568 'Evanescent.LeaF.0'
0x1d0d250: mov      x2, xzr
0x1d0d254: ldr      x1, [x8]
0x1d0d258: bl       #0x32fac7c | System.String$$op_Equality
0x1d0d25c: tbz      w0, #0, #0x1d0d278
0x1d0d260: ldr      x8, [x19, #0x10]
0x1d0d264: cbz      x8, #0x1d0d288
0x1d0d268: ldr      x8, [x8, #0x10]
0x1d0d26c: cbz      x8, #0x1d0d288
0x1d0d270: ldr      x0, [x8, #0x10]
0x1d0d274: b        #0x1d0d28c | 
0x1d0d278: ldp      x20, x19, [sp, #0x10]
0x1d0d27c: mov      w0, wzr
0x1d0d280: ldr      x30, [sp], #0x20
0x1d0d284: ret      
0x1d0d288: mov      x0, xzr
0x1d0d28c: adrp     x8, #0x418a000
0x1d0d290: ldr      x8, [x8, #0x3b8] | 0x418a3b8 'AboutTheUniverse.SOTUIMIssionary.0'
0x1d0d294: ldp      x20, x19, [sp, #0x10]
0x1d0d298: mov      x2, xzr
0x1d0d29c: ldr      x1, [x8]
0x1d0d2a0: ldr      x30, [sp], #0x20
0x1d0d2a4: b        #0x32fac7c | System.String$$op_Equality

// 0x1d1df8c Phigros2.Chapter9.Phase2.Chapter9Phase2Session$$TryBeginBaselineChallenge
0x1d1df8c: str      x30, [sp, #-0x30]!
0x1d1df90: stp      x22, x21, [sp, #0x10]
0x1d1df94: stp      x20, x19, [sp, #0x20]
0x1d1df98: adrp     x19, #0x4475000
0x1d1df9c: ldrb     w8, [x19, #0xcd0]
0x1d1dfa0: mov      w20, w1
0x1d1dfa4: mov      x21, x0
0x1d1dfa8: tbnz     w8, #0, #0x1d1dff0
0x1d1dfac: adrp     x0, #0x418a000
0x1d1dfb0: ldr      x0, [x0, #0x88]
0x1d1dfb4: bl       #0x1b64570 | 
0x1d1dfb8: adrp     x0, #0x4186000
0x1d1dfbc: ldr      x0, [x0, #0xe68]
0x1d1dfc0: bl       #0x1b64570 | 
0x1d1dfc4: adrp     x0, #0x418b000
0x1d1dfc8: ldr      x0, [x0, #0x30] | 0x418b030 'BaselineChallenge is not available in the current persistent state.'
0x1d1dfcc: bl       #0x1b64570 | 
0x1d1dfd0: adrp     x0, #0x418b000
0x1d1dfd4: ldr      x0, [x0, #0x38] | 0x418b038 'A BaselineChallenge session is already active.'
0x1d1dfd8: bl       #0x1b64570 | 
0x1d1dfdc: adrp     x0, #0x4187000
0x1d1dfe0: ldr      x0, [x0, #0xca8] | 0x4187ca8 'Chapter9Phase2Passed'
0x1d1dfe4: bl       #0x1b64570 | 
0x1d1dfe8: mov      w8, #1
0x1d1dfec: strb     w8, [x19, #0xcd0]
0x1d1dff0: adrp     x22, #0x4475000
0x1d1dff4: adrp     x19, #0x418a000
0x1d1dff8: ldrb     w8, [x22, #0xb3c]
0x1d1dffc: ldr      x19, [x19, #0x88]
0x1d1e000: cbnz     w8, #0x1d1e018
0x1d1e004: adrp     x0, #0x418a000
0x1d1e008: ldr      x0, [x0, #0x88]
0x1d1e00c: bl       #0x1b64570 | 
0x1d1e010: mov      w8, #1
0x1d1e014: strb     w8, [x22, #0xb3c]
0x1d1e018: ldr      x8, [x19]
0x1d1e01c: ldr      x8, [x8, #0xb8]
0x1d1e020: ldrb     w8, [x8, #9]
0x1d1e024: cbz      w8, #0x1d1e034
0x1d1e028: adrp     x8, #0x418b000
0x1d1e02c: ldr      x8, [x8, #0x38] | 0x418b038 'A BaselineChallenge session is already active.'
0x1d1e030: b        #0x1d1e07c | 
0x1d1e034: bl       #0x1d1e654 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$LoadCurrentStep
0x1d1e038: cmp      w0, #4
0x1d1e03c: b.ne     #0x1d1e074
0x1d1e040: adrp     x8, #0x4186000
0x1d1e044: ldr      x8, [x8, #0xe68]
0x1d1e048: ldr      x0, [x8]
0x1d1e04c: ldr      w8, [x0, #0xe0]
0x1d1e050: cbnz     w8, #0x1d1e058
0x1d1e054: bl       #0x1b646a4 | 
0x1d1e058: adrp     x8, #0x4187000
0x1d1e05c: ldr      x8, [x8, #0xca8] | 0x4187ca8 'Chapter9Phase2Passed'
0x1d1e060: mov      w1, wzr
0x1d1e064: mov      x2, xzr
0x1d1e068: ldr      x0, [x8]
0x1d1e06c: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d1e070: tbz      w0, #0, #0x1d1e09c
0x1d1e074: adrp     x8, #0x418b000
0x1d1e078: ldr      x8, [x8, #0x30] | 0x418b030 'BaselineChallenge is not available in the current persistent state.'
0x1d1e07c: ldr      x0, [x8]
0x1d1e080: bl       #0x1d1f59c | Phigros2.Chapter9.Phase2.Chapter9Phase2Session$$Fail
0x1d1e084: mov      w20, wzr
0x1d1e088: mov      w0, w20
0x1d1e08c: ldp      x20, x19, [sp, #0x20]
0x1d1e090: ldp      x22, x21, [sp, #0x10]
0x1d1e094: ldr      x30, [sp], #0x30
0x1d1e098: ret      
0x1d1e09c: mov      x0, x21
0x1d1e0a0: mov      w1, w20
0x1d1e0a4: bl       #0x1d1f630 | Phigros2.Chapter9.Phase2.Chapter9Phase2Session$$TryValidateConfig
0x1d1e0a8: tbz      w0, #0, #0x1d1e084
0x1d1e0ac: ldr      x8, [x19]
0x1d1e0b0: ldr      x8, [x8, #0xb8]
0x1d1e0b4: str      x21, [x8]
0x1d1e0b8: adrp     x21, #0x4475000
0x1d1e0bc: ldrb     w8, [x21, #0xd5d]
0x1d1e0c0: cbnz     w8, #0x1d1e0d8
0x1d1e0c4: adrp     x0, #0x418a000
0x1d1e0c8: ldr      x0, [x0, #0x88]
0x1d1e0cc: bl       #0x1b64570 | 
0x1d1e0d0: mov      w8, #1
0x1d1e0d4: strb     w8, [x21, #0xd5d]
0x1d1e0d8: ldr      x8, [x19]
0x1d1e0dc: ldr      x8, [x8, #0xb8]
0x1d1e0e0: str      w20, [x8, #0x14]
0x1d1e0e4: adrp     x20, #0x4475000
0x1d1e0e8: ldrb     w9, [x20, #0xd5e]
0x1d1e0ec: cbnz     w9, #0x1d1e108
0x1d1e0f0: mov      x0, x19
0x1d1e0f4: bl       #0x1b64570 | 
0x1d1e0f8: ldr      x8, [x19]
0x1d1e0fc: mov      w9, #1
0x1d1e100: strb     w9, [x20, #0xd5e]
0x1d1e104: ldr      x8, [x8, #0xb8]
0x1d1e108: str      wzr, [x8, #0x10]
0x1d1e10c: adrp     x20, #0x4475000
0x1d1e110: ldrb     w9, [x20, #0xd5f]
0x1d1e114: cbnz     w9, #0x1d1e130
0x1d1e118: mov      x0, x19
0x1d1e11c: bl       #0x1b64570 | 
0x1d1e120: ldr      x8, [x19]
0x1d1e124: mov      w9, #1
0x1d1e128: strb     w9, [x20, #0xd5f]
0x1d1e12c: ldr      x8, [x8, #0xb8]
0x1d1e130: mov      w20, #1
0x1d1e134: strb     wzr, [x8, #8]
0x1d1e138: str      w20, [x8, #0xc]
0x1d1e13c: adrp     x21, #0x4475000
0x1d1e140: ldrb     w9, [x21, #0xd60]
0x1d1e144: cbnz     w9, #0x1d1e15c
0x1d1e148: mov      x0, x19
0x1d1e14c: bl       #0x1b64570 | 
0x1d1e150: ldr      x8, [x19]
0x1d1e154: strb     w20, [x21, #0xd60]
0x1d1e158: ldr      x8, [x8, #0xb8]
0x1d1e15c: strb     w20, [x8, #9]
0x1d1e160: b        #0x1d1e088 | 

// 0x1d244dc Phigros2.ChallengeMode.Scripts.SecretChallengeLifeRules$$ApplyAfterSuccess
0x1d244dc: stp      x30, x21, [sp, #-0x20]!
0x1d244e0: stp      x20, x19, [sp, #0x10]
0x1d244e4: adrp     x20, #0x4475000
0x1d244e8: adrp     x21, #0x4185000
0x1d244ec: ldrb     w8, [x20, #0xd08]
0x1d244f0: ldr      x21, [x21, #0x208]
0x1d244f4: mov      x19, x0
0x1d244f8: tbnz     w8, #0, #0x1d2451c
0x1d244fc: adrp     x0, #0x4185000
0x1d24500: ldr      x0, [x0, #0x208]
0x1d24504: bl       #0x1b64570 | 
0x1d24508: adrp     x0, #0x4189000
0x1d2450c: ldr      x0, [x0, #0xac8]
0x1d24510: bl       #0x1b64570 | 
0x1d24514: mov      w8, #1
0x1d24518: strb     w8, [x20, #0xd08]
0x1d2451c: ldr      x0, [x21]
0x1d24520: ldr      w8, [x0, #0xe0]
0x1d24524: cbnz     w8, #0x1d2452c
0x1d24528: bl       #0x1b646a4 | 
0x1d2452c: mov      x0, x19
0x1d24530: mov      x1, xzr
0x1d24534: mov      x2, xzr
0x1d24538: bl       #0x3c619b8 | UnityEngine.Object$$op_Equality
0x1d2453c: tbnz     w0, #0, #0x1d245a0
0x1d24540: cbz      x19, #0x1d245ac
0x1d24544: ldrb     w8, [x19, #0x80]
0x1d24548: cbz      w8, #0x1d245a0
0x1d2454c: ldrb     w8, [x19, #0x90]
0x1d24550: cbnz     w8, #0x1d245a0
0x1d24554: adrp     x20, #0x4189000
0x1d24558: ldr      x20, [x20, #0xac8]
0x1d2455c: ldr      x0, [x20]
0x1d24560: ldr      w8, [x0, #0xe0]
0x1d24564: cbnz     w8, #0x1d2456c
0x1d24568: bl       #0x1b646a4 | 
0x1d2456c: mov      x0, x19
0x1d24570: bl       #0x1d25a20 | Phigros2.ChallengeMode.Scripts.SecretChallengeLifeRules$$ContainsSecretSong
0x1d24574: tbz      w0, #0, #0x1d245a0
0x1d24578: ldr      x0, [x20]
0x1d2457c: ldr      w19, [x19, #0x8c]
0x1d24580: ldr      w8, [x0, #0xe0]
0x1d24584: cbnz     w8, #0x1d2458c
0x1d24588: bl       #0x1b646a4 | 
0x1d2458c: mov      w0, w19
0x1d24590: bl       #0x1d25604 | Phigros2.ChallengeMode.Scripts.SecretChallengeLifeRules$$GetStartingTierIndexAfterPreviousUnlock
0x1d24594: ldp      x20, x19, [sp, #0x10]
0x1d24598: ldp      x30, x21, [sp], #0x20
0x1d2459c: b        #0x1d2566c | Phigros2.ChallengeMode.Scripts.SecretChallengeLifeRules$$SetUnlockedTierIndex
0x1d245a0: ldp      x20, x19, [sp, #0x10]
0x1d245a4: ldp      x30, x21, [sp], #0x20
0x1d245a8: ret      
0x1d245ac: bl       #0x1b647c8 | 
