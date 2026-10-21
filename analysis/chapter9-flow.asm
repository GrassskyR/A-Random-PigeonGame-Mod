
// 0x1cff530 Phigros2.Chapter9.Chapter9Phase1Control$$ToPhase2
0x1cff530: stp      x30, x21, [sp, #-0x20]!
0x1cff534: stp      x20, x19, [sp, #0x10]
0x1cff538: adrp     x20, #0x4475000
0x1cff53c: ldrb     w8, [x20, #0xb7c]
0x1cff540: mov      x19, x0
0x1cff544: tbnz     w8, #0, #0x1cff580
0x1cff548: adrp     x0, #0x418a000
0x1cff54c: ldr      x0, [x0, #0x2c0]
0x1cff550: bl       #0x1b64570 | 
0x1cff554: adrp     x0, #0x4186000
0x1cff558: ldr      x0, [x0, #0xe68]
0x1cff55c: bl       #0x1b64570 | 
0x1cff560: adrp     x0, #0x418a000
0x1cff564: ldr      x0, [x0, #0x660] | 0x418a660 'Chapter9Phase2'
0x1cff568: bl       #0x1b64570 | 
0x1cff56c: adrp     x0, #0x418a000
0x1cff570: ldr      x0, [x0, #0x668] | 0x418a668 'Chapter9UnlockSecondPhaseBegin'
0x1cff574: bl       #0x1b64570 | 
0x1cff578: mov      w8, #1
0x1cff57c: strb     w8, [x20, #0xb7c]
0x1cff580: ldrb     w8, [x19, #0x251]
0x1cff584: cbnz     w8, #0x1cff590
0x1cff588: ldrb     w8, [x19, #0x250]
0x1cff58c: cbz      w8, #0x1cff59c
0x1cff590: ldp      x20, x19, [sp, #0x10]
0x1cff594: ldp      x30, x21, [sp], #0x20
0x1cff598: ret      
0x1cff59c: mov      x0, x19
0x1cff5a0: bl       #0x1cfe110 | Phigros2.Chapter9.Chapter9Phase1Control$$FadeOutBgm
0x1cff5a4: mov      x1, x0
0x1cff5a8: mov      x0, x19
0x1cff5ac: bl       #0x1cfafec | Phigros2.Chapter9.Chapter9Phase1Control$$StartBgmTransition
0x1cff5b0: mov      w8, #1
0x1cff5b4: strb     w8, [x19, #0x251]
0x1cff5b8: adrp     x8, #0x4186000
0x1cff5bc: ldr      x8, [x8, #0xe68]
0x1cff5c0: ldr      x0, [x8]
0x1cff5c4: ldr      w8, [x0, #0xe0]
0x1cff5c8: cbnz     w8, #0x1cff5d0
0x1cff5cc: bl       #0x1b646a4 | 
0x1cff5d0: adrp     x8, #0x418a000
0x1cff5d4: ldr      x8, [x8, #0x668] | 0x418a668 'Chapter9UnlockSecondPhaseBegin'
0x1cff5d8: mov      w1, #1
0x1cff5dc: mov      x2, xzr
0x1cff5e0: ldr      x0, [x8]
0x1cff5e4: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1cff5e8: mov      x0, xzr
0x1cff5ec: bl       #0x1d1e788 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryBeginSecondPhase
0x1cff5f0: mov      x0, xzr
0x1cff5f4: bl       #0x3c5aec0 | UnityEngine.PlayerPrefs$$Save
0x1cff5f8: ldr      x0, [x19, #0x240]
0x1cff5fc: cbz      x0, #0x1cff680
0x1cff600: mov      x1, xzr
0x1cff604: bl       #0x1cc969c | TweenInfo$$Play
0x1cff608: mov      x0, xzr
0x1cff60c: bl       #0x1d1d3f8 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$get_CurrentStep
0x1cff610: mov      w21, w0
0x1cff614: mov      x0, x19
0x1cff618: bl       #0x1cff684 | Phigros2.Chapter9.Chapter9Phase1Control$$<ToPhase2>g__CreateBlackScreenTransition|164_0
0x1cff61c: mov      x20, x0
0x1cff620: cbz      w21, #0x1cff648
0x1cff624: cbz      x20, #0x1cff680
0x1cff628: adrp     x8, #0x418a000
0x1cff62c: ldr      x8, [x8, #0x660] | 0x418a660 'Chapter9Phase2'
0x1cff630: mov      x0, x20
0x1cff634: ldp      x20, x19, [sp, #0x10]
0x1cff638: mov      x2, xzr
0x1cff63c: ldr      x1, [x8]
0x1cff640: ldp      x30, x21, [sp], #0x20
0x1cff644: b        #0x1d540ec | BlackScreenTransition$$TransitionTo
0x1cff648: adrp     x8, #0x418a000
0x1cff64c: ldr      x8, [x8, #0x2c0]
0x1cff650: ldr      x0, [x8]
0x1cff654: ldr      w8, [x0, #0xe0]
0x1cff658: cbnz     w8, #0x1cff660
0x1cff65c: bl       #0x1b646a4 | 
0x1cff660: mov      x0, x20
0x1cff664: bl       #0x1cff718 | Phigros2.Chapter9.Chapter9Phase1Control$$<ToPhase2>g__FirstEnterPhase2Coroutine|164_1
0x1cff668: mov      x1, x0
0x1cff66c: mov      x0, x19
0x1cff670: ldp      x20, x19, [sp, #0x10]
0x1cff674: mov      x2, xzr
0x1cff678: ldp      x30, x21, [sp], #0x20
0x1cff67c: b        #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1cff680: bl       #0x1b647c8 | 

// 0x1d18358 Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$Start
0x1d18358: stp      x30, x23, [sp, #-0x30]!
0x1d1835c: stp      x22, x21, [sp, #0x10]
0x1d18360: stp      x20, x19, [sp, #0x20]
0x1d18364: adrp     x21, #0x4475000
0x1d18368: adrp     x20, #0x4186000
0x1d1836c: ldrb     w8, [x21, #0xc7c]
0x1d18370: ldr      x20, [x20, #0xe68]
0x1d18374: mov      x19, x0
0x1d18378: tbnz     w8, #0, #0x1d183fc
0x1d1837c: adrp     x0, #0x4186000
0x1d18380: ldr      x0, [x0, #0xf18]
0x1d18384: bl       #0x1b64570 | 
0x1d18388: adrp     x0, #0x418a000
0x1d1838c: ldr      x0, [x0, #0x470]
0x1d18390: bl       #0x1b64570 | 
0x1d18394: adrp     x0, #0x418a000
0x1d18398: ldr      x0, [x0, #0x2c8]
0x1d1839c: bl       #0x1b64570 | 
0x1d183a0: adrp     x0, #0x4185000
0x1d183a4: ldr      x0, [x0, #0x208]
0x1d183a8: bl       #0x1b64570 | 
0x1d183ac: adrp     x0, #0x4186000
0x1d183b0: ldr      x0, [x0, #0xe68]
0x1d183b4: bl       #0x1b64570 | 
0x1d183b8: adrp     x0, #0x418a000
0x1d183bc: ldr      x0, [x0, #0xe98]
0x1d183c0: bl       #0x1b64570 | 
0x1d183c4: adrp     x0, #0x418a000
0x1d183c8: ldr      x0, [x0, #0xea0] | 0x418aea0 'C9PetrichorUnlocked'
0x1d183cc: bl       #0x1b64570 | 
0x1d183d0: adrp     x0, #0x418a000
0x1d183d4: ldr      x0, [x0, #0x498] | 0x418a498 'Chapter9LastSelectMusicIsPhase2'
0x1d183d8: bl       #0x1b64570 | 
0x1d183dc: adrp     x0, #0x418a000
0x1d183e0: ldr      x0, [x0, #0xea8] | 0x418aea8 '1keythenoise'
0x1d183e4: bl       #0x1b64570 | 
0x1d183e8: adrp     x0, #0x4187000
0x1d183ec: ldr      x0, [x0, #0xca8] | 0x4187ca8 'Chapter9Phase2Passed'
0x1d183f0: bl       #0x1b64570 | 
0x1d183f4: mov      w8, #1
0x1d183f8: strb     w8, [x21, #0xc7c]
0x1d183fc: ldr      x0, [x20]
0x1d18400: adrp     x22, #0x418a000
0x1d18404: adrp     x21, #0x418a000
0x1d18408: ldr      w8, [x0, #0xe0]
0x1d1840c: ldr      x22, [x22, #0x498] | 0x418a498 'Chapter9LastSelectMusicIsPhase2'
0x1d18410: ldr      x21, [x21, #0xea0] | 0x418aea0 'C9PetrichorUnlocked'
0x1d18414: cbnz     w8, #0x1d1841c
0x1d18418: bl       #0x1b646a4 | 
0x1d1841c: ldr      x0, [x22]
0x1d18420: mov      w1, #1
0x1d18424: mov      x2, xzr
0x1d18428: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d1842c: mov      x0, xzr
0x1d18430: bl       #0x1d1e788 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$TryBeginSecondPhase
0x1d18434: ldr      x0, [x21]
0x1d18438: mov      w1, wzr
0x1d1843c: mov      x2, xzr
0x1d18440: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d18444: tbz      w0, #0, #0x1d184c8
0x1d18448: ldr      x0, [x20]
0x1d1844c: ldr      w8, [x0, #0xe0]
0x1d18450: cbnz     w8, #0x1d18458
0x1d18454: bl       #0x1b646a4 | 
0x1d18458: adrp     x8, #0x418a000
0x1d1845c: ldr      x8, [x8, #0xea8] | 0x418aea8 '1keythenoise'
0x1d18460: mov      w1, wzr
0x1d18464: mov      x2, xzr
0x1d18468: ldr      x0, [x8]
0x1d1846c: bl       #0x1cc5ccc | SaveManagement$$LoadInt
0x1d18470: cmp      w0, #0
0x1d18474: b.gt     #0x1d184c8
0x1d18478: adrp     x21, #0x4475000
0x1d1847c: ldrb     w8, [x21, #0x8c0]
0x1d18480: cbnz     w8, #0x1d18498
0x1d18484: adrp     x0, #0x4186000
0x1d18488: ldr      x0, [x0, #0xef8]
0x1d1848c: bl       #0x1b64570 | 
0x1d18490: mov      w8, #1
0x1d18494: strb     w8, [x21, #0x8c0]
0x1d18498: adrp     x8, #0x4186000
0x1d1849c: ldr      x8, [x8, #0xef8]
0x1d184a0: ldr      x8, [x8]
0x1d184a4: ldr      x8, [x8, #0xb8]
0x1d184a8: ldr      x8, [x8]
0x1d184ac: cbz      x8, #0x1d187b0
0x1d184b0: ldr      x0, [x8, #0xa0]
0x1d184b4: cbz      x0, #0x1d187b0
0x1d184b8: mov      x1, xzr
0x1d184bc: bl       #0x1ca91e8 | GetCollectionControl$$EvaluateStateUnlocks
0x1d184c0: mov      x0, xzr
0x1d184c4: bl       #0x3c5aec0 | UnityEngine.PlayerPrefs$$Save
0x1d184c8: adrp     x21, #0x4187000
0x1d184cc: ldr      x21, [x21, #0xca8] | 0x4187ca8 'Chapter9Phase2Passed'
0x1d184d0: mov      x0, x19
0x1d184d4: bl       #0x1d187b8 | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$BuildSongList
0x1d184d8: ldr      x0, [x20]
0x1d184dc: ldr      w8, [x0, #0xe0]
0x1d184e0: cbnz     w8, #0x1d184e8
0x1d184e4: bl       #0x1b646a4 | 
0x1d184e8: ldr      x0, [x21]
0x1d184ec: mov      w1, wzr
0x1d184f0: mov      x2, xzr
0x1d184f4: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d184f8: tbz      w0, #0, #0x1d18508
0x1d184fc: ldr      x0, [x19, #0xe0]
0x1d18500: cbnz     x0, #0x1d18510
0x1d18504: b        #0x1d187b0 | 
0x1d18508: ldr      x0, [x19, #0xd8]
0x1d1850c: cbz      x0, #0x1d187b0
0x1d18510: mov      w1, #1
0x1d18514: mov      x2, xzr
0x1d18518: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d1851c: ldr      x21, [x19, #0xe8]
0x1d18520: cbz      x21, #0x1d187b0
0x1d18524: ldr      w8, [x21, #0x18]
0x1d18528: cmp      w8, #1
0x1d1852c: b.lt     #0x1d18580
0x1d18530: mov      w22, wzr
0x1d18534: cmp      w22, w8
0x1d18538: b.hs     #0x1d187b4
0x1d1853c: ldr      x0, [x19, #0x1f0]
0x1d18540: cbz      x0, #0x1d187b0
0x1d18544: add      x8, x21, w22, sxtw #3
0x1d18548: ldr      x20, [x8, #0x20]
0x1d1854c: mov      x1, xzr
0x1d18550: bl       #0x1cd906c | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$get_LocaleText
0x1d18554: cbz      x20, #0x1d187b0
0x1d18558: ldr      x8, [x20]
0x1d1855c: mov      x1, x0
0x1d18560: mov      x0, x20
0x1d18564: ldr      x9, [x8, #0x5e8]
0x1d18568: ldr      x2, [x8, #0x5f0]
0x1d1856c: blr      x9
0x1d18570: ldr      w8, [x21, #0x18]
0x1d18574: add      w22, w22, #1
0x1d18578: cmp      w22, w8
0x1d1857c: b.lt     #0x1d18534
0x1d18580: ldr      x21, [x19, #0xf0]
0x1d18584: cbz      x21, #0x1d187b0
0x1d18588: ldr      w8, [x21, #0x18]
0x1d1858c: cmp      w8, #1
0x1d18590: b.lt     #0x1d185e4
0x1d18594: mov      w22, wzr
0x1d18598: cmp      w22, w8
0x1d1859c: b.hs     #0x1d187b4
0x1d185a0: ldr      x0, [x19, #0x1f8]
0x1d185a4: cbz      x0, #0x1d187b0
0x1d185a8: add      x8, x21, w22, sxtw #3
0x1d185ac: ldr      x20, [x8, #0x20]
0x1d185b0: mov      x1, xzr
0x1d185b4: bl       #0x1cd906c | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$get_LocaleText
0x1d185b8: cbz      x20, #0x1d187b0
0x1d185bc: ldr      x8, [x20]
0x1d185c0: mov      x1, x0
0x1d185c4: mov      x0, x20
0x1d185c8: ldr      x9, [x8, #0x5e8]
0x1d185cc: ldr      x2, [x8, #0x5f0]
0x1d185d0: blr      x9
0x1d185d4: ldr      w8, [x21, #0x18]
0x1d185d8: add      w22, w22, #1
0x1d185dc: cmp      w22, w8
0x1d185e0: b.lt     #0x1d18598
0x1d185e4: adrp     x21, #0x418a000
0x1d185e8: ldr      x21, [x21, #0xe98]
0x1d185ec: adrp     x22, #0x418a000
0x1d185f0: ldr      x8, [x21]
0x1d185f4: ldr      x8, [x8, #0xb8]
0x1d185f8: ldr      x20, [x8]
0x1d185fc: ldr      x22, [x22, #0x2c8]
0x1d18600: cbnz     x20, #0x1d1863c
0x1d18604: adrp     x8, #0x4186000
0x1d18608: ldr      x8, [x8, #0xf18]
0x1d1860c: ldr      x0, [x8]
0x1d18610: bl       #0x1b647b8 | 
0x1d18614: adrp     x8, #0x418a000
0x1d18618: ldr      x8, [x8, #0x470]
0x1d1861c: mov      x1, xzr
0x1d18620: mov      x3, xzr
0x1d18624: mov      x20, x0
0x1d18628: ldr      x2, [x8]
0x1d1862c: bl       #0x33ee8e4 | System.Action$$.ctor
0x1d18630: ldr      x8, [x21]
0x1d18634: ldr      x8, [x8, #0xb8]
0x1d18638: str      x20, [x8]
0x1d1863c: adrp     x23, #0x4185000
0x1d18640: ldr      x23, [x23, #0x208]
0x1d18644: mov      x0, x19
0x1d18648: mov      x1, x20
0x1d1864c: mov      x2, xzr
0x1d18650: bl       #0x1cc89d4 | SimpleCoroutine$$SimpleYield
0x1d18654: mov      x0, x19
0x1d18658: bl       #0x1d18c9c | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$ApplyMapCover
0x1d1865c: mov      x0, xzr
0x1d18660: bl       #0x1d07a68 | Phigros2.Chapter9.Chapter9UnlockNavigation$$ConsumePendingPhase2SelectMusicFocusSongId
0x1d18664: ldr      x8, [x22]
0x1d18668: mov      x21, x0
0x1d1866c: ldr      w9, [x8, #0xe0]
0x1d18670: cbnz     w9, #0x1d18680
0x1d18674: mov      x0, x8
0x1d18678: bl       #0x1b646a4 | 
0x1d1867c: ldr      x8, [x22]
0x1d18680: ldr      x8, [x8, #0xb8]
0x1d18684: mov      x0, x19
0x1d18688: mov      x1, x21
0x1d1868c: ldr      x20, [x8, #8]
0x1d18690: str      xzr, [x8, #8]
0x1d18694: bl       #0x1d18e80 | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$GetMapElement
0x1d18698: ldr      x8, [x23]
0x1d1869c: mov      x21, x0
0x1d186a0: ldr      w9, [x8, #0xe0]
0x1d186a4: cbnz     w9, #0x1d186b0
0x1d186a8: mov      x0, x8
0x1d186ac: bl       #0x1b646a4 | 
0x1d186b0: mov      x0, x21
0x1d186b4: mov      x1, xzr
0x1d186b8: mov      x2, xzr
0x1d186bc: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1d186c0: tbz      w0, #0, #0x1d1873c
0x1d186c4: ldr      x0, [x23]
0x1d186c8: ldr      x22, [x19, #0x70]
0x1d186cc: ldr      w8, [x0, #0xe0]
0x1d186d0: cbnz     w8, #0x1d186d8
0x1d186d4: bl       #0x1b646a4 | 
0x1d186d8: mov      x0, x22
0x1d186dc: mov      x1, xzr
0x1d186e0: mov      x2, xzr
0x1d186e4: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1d186e8: tbz      w0, #0, #0x1d1873c
0x1d186ec: ldr      x0, [x23]
0x1d186f0: ldr      x22, [x19, #0x68]
0x1d186f4: ldr      w8, [x0, #0xe0]
0x1d186f8: cbnz     w8, #0x1d18700
0x1d186fc: bl       #0x1b646a4 | 
0x1d18700: mov      x0, x22
0x1d18704: mov      x1, xzr
0x1d18708: mov      x2, xzr
0x1d1870c: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1d18710: tbz      w0, #0, #0x1d1873c
0x1d18714: mov      x0, x19
0x1d18718: mov      x1, x21
0x1d1871c: bl       #0x1d190cc | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$PlayUnlockReturnSequence
0x1d18720: mov      x1, x0
0x1d18724: mov      x0, x19
0x1d18728: ldp      x20, x19, [sp, #0x20]
0x1d1872c: ldp      x22, x21, [sp, #0x10]
0x1d18730: mov      x2, xzr
0x1d18734: ldp      x30, x23, [sp], #0x30
0x1d18738: b        #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1d1873c: mov      x0, x19
0x1d18740: mov      x1, x20
0x1d18744: bl       #0x1d19138 | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$ApplyReturnMapPosition
0x1d18748: mov      x0, x19
0x1d1874c: bl       #0x1d19304 | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$FadeInBgm
0x1d18750: mov      x1, x0
0x1d18754: mov      x0, x19
0x1d18758: bl       #0x1d19364 | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$StartBgmTransition
0x1d1875c: ldr      x0, [x19, #0x128]
0x1d18760: cbz      x0, #0x1d187b0
0x1d18764: fmov     s0, wzr
0x1d18768: fmov     s1, #-5.00000000
0x1d1876c: fmov     s2, #-10.00000000
0x1d18770: mov      x1, xzr
0x1d18774: bl       #0x3c6a5e0 | UnityEngine.Transform$$set_localPosition
0x1d18778: ldr      x0, [x19, #0x110]
0x1d1877c: mov      w8, #1
0x1d18780: strb     w8, [x19, #0x140]
0x1d18784: cbz      x0, #0x1d187b0
0x1d18788: mov      w1, wzr
0x1d1878c: mov      x2, xzr
0x1d18790: bl       #0x3e7309c | UnityEngine.UI.Selectable$$set_interactable
0x1d18794: ldr      x0, [x19, #0x130]
0x1d18798: cbz      x0, #0x1d187b0
0x1d1879c: ldp      x20, x19, [sp, #0x20]
0x1d187a0: ldp      x22, x21, [sp, #0x10]
0x1d187a4: mov      x1, xzr
0x1d187a8: ldp      x30, x23, [sp], #0x30
0x1d187ac: b        #0x1cc969c | TweenInfo$$Play
0x1d187b0: bl       #0x1b647c8 | 
0x1d187b4: bl       #0x1b647d0 | 

// 0x1d19364 Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$StartBgmTransition
0x1d19364: str      x30, [sp, #-0x20]!
0x1d19368: stp      x20, x19, [sp, #0x10]
0x1d1936c: ldr      x8, [x0, #0x180]
0x1d19370: mov      x19, x0
0x1d19374: mov      x20, x1
0x1d19378: cbz      x8, #0x1d1938c
0x1d1937c: mov      x0, x19
0x1d19380: mov      x1, x8
0x1d19384: mov      x2, xzr
0x1d19388: bl       #0x3c622d8 | UnityEngine.MonoBehaviour$$StopCoroutine
0x1d1938c: mov      x0, x19
0x1d19390: mov      x1, x20
0x1d19394: mov      x2, xzr
0x1d19398: bl       #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1d1939c: str      x0, [x19, #0x180]
0x1d193a0: ldp      x20, x19, [sp, #0x10]
0x1d193a4: ldr      x30, [sp], #0x20
0x1d193a8: ret      

// 0x1d19aec Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$EnterAwaitKeyCollections
0x1d19aec: stp      x30, x21, [sp, #-0x20]!
0x1d19af0: stp      x20, x19, [sp, #0x10]
0x1d19af4: adrp     x21, #0x4475000
0x1d19af8: adrp     x20, #0x418a000
0x1d19afc: ldrb     w8, [x21, #0xc85]
0x1d19b00: ldr      x20, [x20, #0x2c8]
0x1d19b04: mov      x19, x0
0x1d19b08: tbnz     w8, #0, #0x1d19b20
0x1d19b0c: adrp     x0, #0x418a000
0x1d19b10: ldr      x0, [x0, #0x2c8]
0x1d19b14: bl       #0x1b64570 | 
0x1d19b18: mov      w8, #1
0x1d19b1c: strb     w8, [x21, #0xc85]
0x1d19b20: mov      w8, #1
0x1d19b24: mov      x0, x19
0x1d19b28: strb     w8, [x19, #0x1d0]
0x1d19b2c: bl       #0x1d19a8c | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$FadeOutBgm
0x1d19b30: mov      x1, x0
0x1d19b34: mov      x0, x19
0x1d19b38: bl       #0x1d19364 | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$StartBgmTransition
0x1d19b3c: ldr      x0, [x20]
0x1d19b40: ldr      w8, [x0, #0xe0]
0x1d19b44: cbnz     w8, #0x1d19b4c
0x1d19b48: bl       #0x1b646a4 | 
0x1d19b4c: bl       #0x1d19b68 | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$EnterPuzzle
0x1d19b50: mov      x1, x0
0x1d19b54: mov      x0, x19
0x1d19b58: ldp      x20, x19, [sp, #0x10]
0x1d19b5c: mov      x2, xzr
0x1d19b60: ldp      x30, x21, [sp], #0x20
0x1d19b64: b        #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine

// 0x1d1a3e4 Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$OpenSongDetail
0x1d1a3e4: stp      x30, x21, [sp, #-0x20]!
0x1d1a3e8: stp      x20, x19, [sp, #0x10]
0x1d1a3ec: adrp     x20, #0x4475000
0x1d1a3f0: ldrb     w8, [x20, #0xc8c]
0x1d1a3f4: mov      w21, w1
0x1d1a3f8: mov      x19, x0
0x1d1a3fc: tbnz     w8, #0, #0x1d1a450
0x1d1a400: adrp     x0, #0x418a000
0x1d1a404: ldr      x0, [x0, #0x5d0]
0x1d1a408: bl       #0x1b64570 | 
0x1d1a40c: adrp     x0, #0x4189000
0x1d1a410: ldr      x0, [x0, #0xaa8]
0x1d1a414: bl       #0x1b64570 | 
0x1d1a418: adrp     x0, #0x4186000
0x1d1a41c: ldr      x0, [x0, #0xe68]
0x1d1a420: bl       #0x1b64570 | 
0x1d1a424: adrp     x0, #0x418a000
0x1d1a428: ldr      x0, [x0, #0xed0] | 0x418aed0 'ハテ.rNFrums.0'
0x1d1a42c: bl       #0x1b64570 | 
0x1d1a430: adrp     x0, #0x4189000
0x1d1a434: ldr      x0, [x0, #0x600] | 0x4189600 'NowLevel'
0x1d1a438: bl       #0x1b64570 | 
0x1d1a43c: adrp     x0, #0x4187000
0x1d1a440: ldr      x0, [x0, #0xca8] | 0x4187ca8 'Chapter9Phase2Passed'
0x1d1a444: bl       #0x1b64570 | 
0x1d1a448: mov      w8, #1
0x1d1a44c: strb     w8, [x20, #0xc8c]
0x1d1a450: ldrb     w8, [x19, #0x1d1]
0x1d1a454: cbz      w8, #0x1d1a464
0x1d1a458: ldp      x20, x19, [sp, #0x10]
0x1d1a45c: ldp      x30, x21, [sp], #0x20
0x1d1a460: ret      
0x1d1a464: tbnz     w21, #0x1f, #0x1d1a458
0x1d1a468: ldrb     w8, [x19, #0x1d0]
0x1d1a46c: cbnz     w8, #0x1d1a458
0x1d1a470: ldr      x0, [x19, #0x1c0]
0x1d1a474: cbz      x0, #0x1d1a66c
0x1d1a478: ldr      w8, [x0, #0x18]
0x1d1a47c: cmp      w8, w21
0x1d1a480: b.le     #0x1d1a458
0x1d1a484: adrp     x20, #0x4189000
0x1d1a488: ldr      x20, [x20, #0xaa8]
0x1d1a48c: mov      w1, w21
0x1d1a490: ldr      x2, [x20]
0x1d1a494: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1d1a498: cbz      x0, #0x1d1a458
0x1d1a49c: ldr      x0, [x19, #0x1c0]
0x1d1a4a0: cbz      x0, #0x1d1a66c
0x1d1a4a4: ldr      x2, [x20]
0x1d1a4a8: mov      w1, w21
0x1d1a4ac: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1d1a4b0: cbz      x0, #0x1d1a66c
0x1d1a4b4: ldr      x8, [x0, #0x10]
0x1d1a4b8: mov      x20, x0
0x1d1a4bc: cbz      x8, #0x1d1a66c
0x1d1a4c0: ldr      x0, [x8, #0x10]
0x1d1a4c4: adrp     x8, #0x418a000
0x1d1a4c8: ldr      x8, [x8, #0xed0] | 0x418aed0 'ハテ.rNFrums.0'
0x1d1a4cc: mov      x2, xzr
0x1d1a4d0: ldr      x1, [x8]
0x1d1a4d4: bl       #0x32fac7c | System.String$$op_Equality
0x1d1a4d8: tbz      w0, #0, #0x1d1a520
0x1d1a4dc: mov      x0, xzr
0x1d1a4e0: bl       #0x1d1d3f8 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$get_CurrentStep
0x1d1a4e4: cmp      w0, #4
0x1d1a4e8: b.ne     #0x1d1a520
0x1d1a4ec: adrp     x8, #0x4186000
0x1d1a4f0: ldr      x8, [x8, #0xe68]
0x1d1a4f4: ldr      x0, [x8]
0x1d1a4f8: ldr      w8, [x0, #0xe0]
0x1d1a4fc: cbnz     w8, #0x1d1a504
0x1d1a500: bl       #0x1b646a4 | 
0x1d1a504: adrp     x8, #0x4187000
0x1d1a508: ldr      x8, [x8, #0xca8] | 0x4187ca8 'Chapter9Phase2Passed'
0x1d1a50c: mov      w1, wzr
0x1d1a510: mov      x2, xzr
0x1d1a514: ldr      x0, [x8]
0x1d1a518: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d1a51c: tbz      w0, #0, #0x1d1a65c
0x1d1a520: ldrb     w8, [x20, #0x18]
0x1d1a524: str      w21, [x19, #0x1c8]
0x1d1a528: cbz      w8, #0x1d1a5f8
0x1d1a52c: adrp     x8, #0x4186000
0x1d1a530: ldr      x8, [x8, #0xe68]
0x1d1a534: ldr      x0, [x8]
0x1d1a538: ldr      w8, [x0, #0xe0]
0x1d1a53c: cbnz     w8, #0x1d1a544
0x1d1a540: bl       #0x1b646a4 | 
0x1d1a544: adrp     x8, #0x4189000
0x1d1a548: ldr      x8, [x8, #0x600] | 0x4189600 'NowLevel'
0x1d1a54c: mov      w1, wzr
0x1d1a550: mov      x2, xzr
0x1d1a554: ldr      x0, [x8]
0x1d1a558: bl       #0x1cc5ccc | SaveManagement$$LoadInt
0x1d1a55c: str      w0, [x19, #0x1cc]
0x1d1a560: ldr      w8, [x20, #0x1c]
0x1d1a564: cmp      w0, w8
0x1d1a568: b.lt     #0x1d1a574
0x1d1a56c: sub      w8, w8, #1
0x1d1a570: str      w8, [x19, #0x1cc]
0x1d1a574: mov      x0, x19
0x1d1a578: mov      w1, wzr
0x1d1a57c: bl       #0x1d1a670 | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$PrepareBlurBackground
0x1d1a580: ldr      x0, [x19, #0x38]
0x1d1a584: cbz      x0, #0x1d1a66c
0x1d1a588: ldr      w2, [x19, #0x1cc]
0x1d1a58c: mov      x1, x20
0x1d1a590: mov      x3, xzr
0x1d1a594: bl       #0x1cfe350 | Phigros2.Chapter9.Chapter9SongLevelStartControl$$PrepareBackground
0x1d1a598: ldr      x0, [x19, #0x68]
0x1d1a59c: cbz      x0, #0x1d1a66c
0x1d1a5a0: mov      w1, wzr
0x1d1a5a4: mov      x2, xzr
0x1d1a5a8: bl       #0x3c5ccc4 | UnityEngine.Behaviour$$set_enabled
0x1d1a5ac: ldr      x0, [x19, #0x28]
0x1d1a5b0: cbz      x0, #0x1d1a66c
0x1d1a5b4: ldr      w2, [x19, #0x1cc]
0x1d1a5b8: mov      x1, x20
0x1d1a5bc: mov      w3, wzr
0x1d1a5c0: mov      x4, xzr
0x1d1a5c4: bl       #0x1d51ac0 | Chapter9SongDetailsControl$$Open
0x1d1a5c8: ldr      x0, [x19, #0x158]
0x1d1a5cc: cbz      x0, #0x1d1a66c
0x1d1a5d0: mov      x1, xzr
0x1d1a5d4: bl       #0x3c1868c | UnityEngine.AudioSource$$Play
0x1d1a5d8: mov      x0, x19
0x1d1a5dc: bl       #0x1d1a778 | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$DuckBgm
0x1d1a5e0: mov      x1, x0
0x1d1a5e4: mov      x0, x19
0x1d1a5e8: bl       #0x1d19364 | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$StartBgmTransition
0x1d1a5ec: mov      w8, #1
0x1d1a5f0: strb     w8, [x19, #0x1e0]
0x1d1a5f4: b        #0x1d1a458 | 
0x1d1a5f8: mov      x0, x19
0x1d1a5fc: mov      w1, wzr
0x1d1a600: bl       #0x1d1a670 | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$PrepareBlurBackground
0x1d1a604: ldr      x0, [x19, #0x68]
0x1d1a608: cbz      x0, #0x1d1a66c
0x1d1a60c: mov      w1, wzr
0x1d1a610: mov      x2, xzr
0x1d1a614: bl       #0x3c5ccc4 | UnityEngine.Behaviour$$set_enabled
0x1d1a618: ldr      x0, [x19, #0x30]
0x1d1a61c: cbz      x0, #0x1d1a66c
0x1d1a620: mov      x1, x20
0x1d1a624: mov      x2, xzr
0x1d1a628: bl       #0x1d53474 | Chapter9SongDetailsLockedControl$$Open
0x1d1a62c: ldr      x0, [x19, #0x158]
0x1d1a630: cbz      x0, #0x1d1a66c
0x1d1a634: mov      x1, xzr
0x1d1a638: bl       #0x3c1868c | UnityEngine.AudioSource$$Play
0x1d1a63c: mov      x0, x19
0x1d1a640: bl       #0x1d1a778 | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$DuckBgm
0x1d1a644: mov      x1, x0
0x1d1a648: mov      x0, x19
0x1d1a64c: bl       #0x1d19364 | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$StartBgmTransition
0x1d1a650: mov      w8, #1
0x1d1a654: strb     w8, [x19, #0x1e1]
0x1d1a658: b        #0x1d1a458 | 
0x1d1a65c: mov      x0, x19
0x1d1a660: ldp      x20, x19, [sp, #0x10]
0x1d1a664: ldp      x30, x21, [sp], #0x20
0x1d1a668: b        #0x1d19aec | Phigros2.Chapter9.Scripts.Chapter9Phase2Control$$EnterAwaitKeyCollections
0x1d1a66c: bl       #0x1b647c8 | 

// 0x1d3f2e4 Chapter9PuzzlePiece$$get_Completed
0x1d3f2e4: ldr      w8, [x0, #0x68]
0x1d3f2e8: cmp      w8, #3
0x1d3f2ec: cset     w0, eq
0x1d3f2f0: ret      

// 0x1d3f2f8 Chapter9PuzzleControl.<PlayNextStage>d__39$$MoveNext
0x1d3f2f8: str      x30, [sp, #-0x20]!
0x1d3f2fc: stp      x20, x19, [sp, #0x10]
0x1d3f300: adrp     x20, #0x4475000
0x1d3f304: ldrb     w8, [x20, #0xdda]
0x1d3f308: mov      x19, x0
0x1d3f30c: tbnz     w8, #0, #0x1d3f354
0x1d3f310: adrp     x0, #0x418a000
0x1d3f314: ldr      x0, [x0, #0xaf0]
0x1d3f318: bl       #0x1b64570 | 
0x1d3f31c: adrp     x0, #0x4186000
0x1d3f320: ldr      x0, [x0, #0xe68]
0x1d3f324: bl       #0x1b64570 | 
0x1d3f328: adrp     x0, #0x4186000
0x1d3f32c: ldr      x0, [x0, #0xe30]
0x1d3f330: bl       #0x1b64570 | 
0x1d3f334: adrp     x0, #0x4189000
0x1d3f338: ldr      x0, [x0, #0x600] | 0x4189600 'NowLevel'
0x1d3f33c: bl       #0x1b64570 | 
0x1d3f340: adrp     x0, #0x4188000
0x1d3f344: ldr      x0, [x0, #0xf40] | 0x4188f40 'Level'
0x1d3f348: bl       #0x1b64570 | 
0x1d3f34c: mov      w8, #1
0x1d3f350: strb     w8, [x20, #0xdda]
0x1d3f354: ldr      w8, [x19, #0x10]
0x1d3f358: ldr      x20, [x19, #0x20]
0x1d3f35c: cmp      w8, #1
0x1d3f360: b.eq     #0x1d3f3cc
0x1d3f364: cbnz     w8, #0x1d3f4a4
0x1d3f368: mov      w8, #-1
0x1d3f36c: str      w8, [x19, #0x10]
0x1d3f370: adrp     x8, #0x418a000
0x1d3f374: ldr      x8, [x8, #0xaf0]
0x1d3f378: ldr      x0, [x8]
0x1d3f37c: ldr      w8, [x0, #0xe0]
0x1d3f380: cbnz     w8, #0x1d3f388
0x1d3f384: bl       #0x1b646a4 | 
0x1d3f388: mov      x0, xzr
0x1d3f38c: bl       #0x3e820fc | UnityEngine.EventSystems.EventSystem$$get_current
0x1d3f390: cbz      x0, #0x1d3f4b4
0x1d3f394: mov      w1, wzr
0x1d3f398: mov      x2, xzr
0x1d3f39c: bl       #0x3c5ccc4 | UnityEngine.Behaviour$$set_enabled
0x1d3f3a0: cbz      x20, #0x1d3f4b4
0x1d3f3a4: ldr      x0, [x20, #0xa8]
0x1d3f3a8: cbz      x0, #0x1d3f4b4
0x1d3f3ac: mov      x1, xzr
0x1d3f3b0: bl       #0x3cb660c | UnityEngine.ParticleSystem$$Play
0x1d3f3b4: mov      x0, x20
0x1d3f3b8: bl       #0x1d3f0cc | Chapter9PuzzleControl$$TweenLeavePostEffects
0x1d3f3bc: str      x0, [x19, #0x18]
0x1d3f3c0: mov      w0, #1
0x1d3f3c4: str      w0, [x19, #0x10]
0x1d3f3c8: b        #0x1d3f4a8 | 
0x1d3f3cc: mov      w8, #-1
0x1d3f3d0: str      w8, [x19, #0x10]
0x1d3f3d4: adrp     x8, #0x4186000
0x1d3f3d8: ldr      x8, [x8, #0xe68]
0x1d3f3dc: ldr      x0, [x8]
0x1d3f3e0: ldr      w8, [x0, #0xe0]
0x1d3f3e4: cbnz     w8, #0x1d3f3ec
0x1d3f3e8: bl       #0x1b646a4 | 
0x1d3f3ec: adrp     x8, #0x4189000
0x1d3f3f0: ldr      x8, [x8, #0x600] | 0x4189600 'NowLevel'
0x1d3f3f4: mov      w1, #2
0x1d3f3f8: mov      x2, xzr
0x1d3f3fc: mov      w19, #2
0x1d3f400: ldr      x0, [x8]
0x1d3f404: bl       #0x1cc5ccc | SaveManagement$$LoadInt
0x1d3f408: cmp      w0, #2
0x1d3f40c: csel     w19, w0, w19, lt
0x1d3f410: mov      x0, xzr
0x1d3f414: bl       #0x1d1e22c | Phigros2.Chapter9.Phase2.Chapter9Phase2Session$$Reset
0x1d3f418: cbz      x20, #0x1d3f4b4
0x1d3f41c: ldr      x0, [x20, #0x20]
0x1d3f420: bic      w1, w19, w19, asr #31
0x1d3f424: mov      x2, xzr
0x1d3f428: bl       #0x1d1df8c | Phigros2.Chapter9.Phase2.Chapter9Phase2Session$$TryBeginBaselineChallenge
0x1d3f42c: tbz      w0, #0, #0x1d3f474
0x1d3f430: mov      x0, xzr
0x1d3f434: bl       #0x1d1e164 | Phigros2.Chapter9.Phase2.Chapter9Phase2Session$$TryApplyCurrentLevel
0x1d3f438: tbz      w0, #0, #0x1d3f46c
0x1d3f43c: adrp     x8, #0x4186000
0x1d3f440: ldr      x8, [x8, #0xe30]
0x1d3f444: ldr      x0, [x8]
0x1d3f448: ldr      w8, [x0, #0xe0]
0x1d3f44c: cbnz     w8, #0x1d3f454
0x1d3f450: bl       #0x1b646a4 | 
0x1d3f454: adrp     x8, #0x4188000
0x1d3f458: ldr      x8, [x8, #0xf40] | 0x4188f40 'Level'
0x1d3f45c: mov      x1, xzr
0x1d3f460: ldr      x0, [x8]
0x1d3f464: bl       #0x3c75460 | UnityEngine.SceneManagement.SceneManager$$LoadScene
0x1d3f468: b        #0x1d3f4a4 | 
0x1d3f46c: mov      x0, xzr
0x1d3f470: bl       #0x1d1e22c | Phigros2.Chapter9.Phase2.Chapter9Phase2Session$$Reset
0x1d3f474: adrp     x8, #0x418a000
0x1d3f478: ldr      x8, [x8, #0xaf0]
0x1d3f47c: ldr      x0, [x8]
0x1d3f480: ldr      w8, [x0, #0xe0]
0x1d3f484: cbnz     w8, #0x1d3f48c
0x1d3f488: bl       #0x1b646a4 | 
0x1d3f48c: mov      x0, xzr
0x1d3f490: bl       #0x3e820fc | UnityEngine.EventSystems.EventSystem$$get_current
0x1d3f494: cbz      x0, #0x1d3f4b4
0x1d3f498: mov      w1, #1
0x1d3f49c: mov      x2, xzr
0x1d3f4a0: bl       #0x3c5ccc4 | UnityEngine.Behaviour$$set_enabled
0x1d3f4a4: mov      w0, wzr
0x1d3f4a8: ldp      x20, x19, [sp, #0x10]
0x1d3f4ac: ldr      x30, [sp], #0x20
0x1d3f4b0: ret      
0x1d3f4b4: bl       #0x1b647c8 | 

// 0x1d3f504 Chapter9PuzzleControl.<ShowPopupExposure>d__40$$MoveNext
0x1d3f504: str      x30, [sp, #-0x20]!
0x1d3f508: stp      x20, x19, [sp, #0x10]
0x1d3f50c: adrp     x20, #0x4475000
0x1d3f510: ldrb     w8, [x20, #0xddb]
0x1d3f514: mov      x19, x0
0x1d3f518: tbnz     w8, #0, #0x1d3f530
0x1d3f51c: adrp     x0, #0x4186000
0x1d3f520: ldr      x0, [x0, #0x168]
0x1d3f524: bl       #0x1b64570 | 
0x1d3f528: mov      w8, #1
0x1d3f52c: strb     w8, [x20, #0xddb]
0x1d3f530: ldr      w8, [x19, #0x10]
0x1d3f534: cmp      w8, #3
0x1d3f538: b.hi     #0x1d3f594
0x1d3f53c: ldr      x0, [x19, #0x20]
0x1d3f540: adrp     x9, #0xc36000
0x1d3f544: add      x9, x9, #0x449
0x1d3f548: adr      x10, #0x1d3f558
0x1d3f54c: ldrb     w11, [x9, x8]
0x1d3f550: add      x10, x10, x11, lsl #2
0x1d3f554: br       x10
0x1d3f558: mov      w8, #-1
0x1d3f55c: str      w8, [x19, #0x10]
0x1d3f560: adrp     x8, #0x4186000
0x1d3f564: ldr      x8, [x8, #0x168]
0x1d3f568: ldr      x0, [x8]
0x1d3f56c: bl       #0x1b647b8 | 
0x1d3f570: adrp     x8, #0xc35000
0x1d3f574: ldr      s0, [x8, #0x194]
0x1d3f578: mov      x1, xzr
0x1d3f57c: mov      x20, x0
0x1d3f580: bl       #0x3c66cf4 | UnityEngine.WaitForSeconds$$.ctor
0x1d3f584: mov      w0, #1
0x1d3f588: str      x20, [x19, #0x18]
0x1d3f58c: str      w0, [x19, #0x10]
0x1d3f590: b        #0x1d3f624 | 
0x1d3f594: mov      w0, wzr
0x1d3f598: b        #0x1d3f624 | 
0x1d3f59c: mov      w8, #-1
0x1d3f5a0: str      w8, [x19, #0x10]
0x1d3f5a4: cbz      x0, #0x1d3f630
0x1d3f5a8: adrp     x8, #0xc35000
0x1d3f5ac: ldr      x1, [x0, #0x68]
0x1d3f5b0: ldr      s2, [x8, #0x19c]
0x1d3f5b4: fmov     s0, wzr
0x1d3f5b8: fmov     s1, #0.50000000
0x1d3f5bc: bl       #0x1d3f154 | Chapter9PuzzleControl$$TweenExposure
0x1d3f5c0: str      x0, [x19, #0x18]
0x1d3f5c4: mov      w8, #2
0x1d3f5c8: b        #0x1d3f5f4 | 
0x1d3f5cc: mov      w8, #-1
0x1d3f5d0: str      w8, [x19, #0x10]
0x1d3f5d4: cbz      x0, #0x1d3f630
0x1d3f5d8: ldr      x1, [x0, #0x70]
0x1d3f5dc: fmov     s0, #0.50000000
0x1d3f5e0: fmov     s1, wzr
0x1d3f5e4: fmov     s2, #0.50000000
0x1d3f5e8: bl       #0x1d3f154 | Chapter9PuzzleControl$$TweenExposure
0x1d3f5ec: mov      w8, #3
0x1d3f5f0: str      x0, [x19, #0x18]
0x1d3f5f4: str      w8, [x19, #0x10]
0x1d3f5f8: mov      w0, #1
0x1d3f5fc: b        #0x1d3f624 | 
0x1d3f600: mov      w8, #-1
0x1d3f604: str      w8, [x19, #0x10]
0x1d3f608: cbz      x0, #0x1d3f630
0x1d3f60c: ldr      x8, [x0, #0x60]
0x1d3f610: cbz      x8, #0x1d3f630
0x1d3f614: mov      w0, wzr
0x1d3f618: mov      w9, #0x3f800000
0x1d3f61c: str      w9, [x8, #0x34]
0x1d3f620: str      wzr, [x8, #0x3c]
0x1d3f624: ldp      x20, x19, [sp, #0x10]
0x1d3f628: ldr      x30, [sp], #0x20
0x1d3f62c: ret      
0x1d3f630: bl       #0x1b647c8 | 

// 0x1d3f680 Chapter9PuzzleControl.<TweenCompletePostEffects>d__41$$MoveNext
0x1d3f680: str      d8, [sp, #-0x20]!
0x1d3f684: str      x30, [sp, #8]
0x1d3f688: stp      x20, x19, [sp, #0x10]
0x1d3f68c: adrp     x20, #0x4475000
0x1d3f690: ldrb     w8, [x20, #0xddc]
0x1d3f694: mov      x19, x0
0x1d3f698: tbnz     w8, #0, #0x1d3f6b0
0x1d3f69c: adrp     x0, #0x4186000
0x1d3f6a0: ldr      x0, [x0, #0x168]
0x1d3f6a4: bl       #0x1b64570 | 
0x1d3f6a8: mov      w8, #1
0x1d3f6ac: strb     w8, [x20, #0xddc]
0x1d3f6b0: ldr      w8, [x19, #0x10]
0x1d3f6b4: ldr      x20, [x19, #0x20]
0x1d3f6b8: cmp      w8, #2
0x1d3f6bc: b.eq     #0x1d3f708
0x1d3f6c0: cmp      w8, #1
0x1d3f6c4: b.eq     #0x1d3f728
0x1d3f6c8: cbnz     w8, #0x1d3f7c4
0x1d3f6cc: mov      w8, #-1
0x1d3f6d0: str      wzr, [x19, #0x28]
0x1d3f6d4: str      w8, [x19, #0x10]
0x1d3f6d8: adrp     x8, #0x4186000
0x1d3f6dc: ldr      x8, [x8, #0x168]
0x1d3f6e0: ldr      x0, [x8]
0x1d3f6e4: bl       #0x1b647b8 | 
0x1d3f6e8: fmov     s0, #1.50000000
0x1d3f6ec: mov      x1, xzr
0x1d3f6f0: mov      x20, x0
0x1d3f6f4: bl       #0x3c66cf4 | UnityEngine.WaitForSeconds$$.ctor
0x1d3f6f8: mov      w0, #1
0x1d3f6fc: str      x20, [x19, #0x18]
0x1d3f700: str      w0, [x19, #0x10]
0x1d3f704: b        #0x1d3f7c8 | 
0x1d3f708: ldr      s8, [x19, #0x28]
0x1d3f70c: mov      w8, #-1
0x1d3f710: mov      x0, xzr
0x1d3f714: str      w8, [x19, #0x10]
0x1d3f718: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1d3f71c: fadd     s0, s8, s0
0x1d3f720: str      s0, [x19, #0x28]
0x1d3f724: b        #0x1d3f730 | 
0x1d3f728: mov      w8, #-1
0x1d3f72c: str      w8, [x19, #0x10]
0x1d3f730: cbz      x20, #0x1d3f7d8
0x1d3f734: ldr      x0, [x20, #0x58]
0x1d3f738: cbz      x0, #0x1d3f7d8
0x1d3f73c: ldr      s0, [x19, #0x28]
0x1d3f740: fmov     s1, #1.00000000
0x1d3f744: fmov     s8, wzr
0x1d3f748: mov      x1, xzr
0x1d3f74c: fmin     s1, s0, s1
0x1d3f750: fcmp     s0, #0.0
0x1d3f754: fcsel    s0, s1, s8, pl
0x1d3f758: bl       #0x3c1cc6c | UnityEngine.AnimationCurve$$Evaluate
0x1d3f75c: ldr      x8, [x20, #0x40]
0x1d3f760: cbz      x8, #0x1d3f7d8
0x1d3f764: fadd     s1, s0, s8
0x1d3f768: str      s1, [x8, #0x6c]
0x1d3f76c: ldr      x8, [x20, #0x50]
0x1d3f770: cbz      x8, #0x1d3f7d8
0x1d3f774: adrp     x9, #0xc35000
0x1d3f778: ldr      s1, [x9, #0x220]
0x1d3f77c: adrp     x9, #0xc35000
0x1d3f780: ldr      s2, [x9, #0x518]
0x1d3f784: fmul     s1, s0, s1
0x1d3f788: fadd     s1, s1, s2
0x1d3f78c: str      s1, [x8, #0x3c]
0x1d3f790: ldr      x8, [x20, #0x48]
0x1d3f794: cbz      x8, #0x1d3f7d8
0x1d3f798: fmov     s1, #1.00000000
0x1d3f79c: fsub     s0, s1, s0
0x1d3f7a0: str      s0, [x8, #0x3c]
0x1d3f7a4: ldr      s0, [x19, #0x28]
0x1d3f7a8: fcmp     s0, s1
0x1d3f7ac: b.ge     #0x1d3f7c4
0x1d3f7b0: mov      w8, #2
0x1d3f7b4: str      xzr, [x19, #0x18]
0x1d3f7b8: str      w8, [x19, #0x10]
0x1d3f7bc: mov      w0, #1
0x1d3f7c0: b        #0x1d3f7c8 | 
0x1d3f7c4: mov      w0, wzr
0x1d3f7c8: ldp      x20, x19, [sp, #0x10]
0x1d3f7cc: ldr      x30, [sp, #8]
0x1d3f7d0: ldr      d8, [sp], #0x20
0x1d3f7d4: ret      
0x1d3f7d8: bl       #0x1b647c8 | 

// 0x1d3f828 Chapter9PuzzleControl.<TweenExposure>d__43$$MoveNext
0x1d3f828: stp      d9, d8, [sp, #-0x30]!
0x1d3f82c: str      x30, [sp, #0x10]
0x1d3f830: stp      x20, x19, [sp, #0x20]
0x1d3f834: ldr      w8, [x0, #0x10]
0x1d3f838: ldr      x20, [x0, #0x28]
0x1d3f83c: mov      x19, x0
0x1d3f840: cmp      w8, #1
0x1d3f844: b.eq     #0x1d3f860
0x1d3f848: cbnz     w8, #0x1d3f8e4
0x1d3f84c: mov      w8, #-1
0x1d3f850: fmov     s0, wzr
0x1d3f854: str      wzr, [x19, #0x40]
0x1d3f858: str      w8, [x19, #0x10]
0x1d3f85c: b        #0x1d3f87c | 
0x1d3f860: ldr      s8, [x19, #0x40]
0x1d3f864: mov      w8, #-1
0x1d3f868: mov      x0, xzr
0x1d3f86c: str      w8, [x19, #0x10]
0x1d3f870: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1d3f874: fadd     s0, s8, s0
0x1d3f878: str      s0, [x19, #0x40]
0x1d3f87c: ldr      x0, [x19, #0x38]
0x1d3f880: cbz      x0, #0x1d3f8f8
0x1d3f884: ldr      s1, [x19, #0x20]
0x1d3f888: ldp      s8, s9, [x19, #0x30]
0x1d3f88c: fmov     s2, #1.00000000
0x1d3f890: mov      x1, xzr
0x1d3f894: fdiv     s0, s0, s1
0x1d3f898: fmin     s1, s0, s2
0x1d3f89c: fcmp     s0, #0.0
0x1d3f8a0: fmov     s0, wzr
0x1d3f8a4: fcsel    s0, s1, s0, pl
0x1d3f8a8: bl       #0x3c1cc6c | UnityEngine.AnimationCurve$$Evaluate
0x1d3f8ac: cbz      x20, #0x1d3f8f8
0x1d3f8b0: fsub     s1, s9, s8
0x1d3f8b4: fmul     s0, s1, s0
0x1d3f8b8: fadd     s0, s8, s0
0x1d3f8bc: mov      x0, x20
0x1d3f8c0: bl       #0x1d3f210 | Chapter9PuzzleControl$$ApplyExposure
0x1d3f8c4: ldr      s0, [x19, #0x40]
0x1d3f8c8: ldr      s1, [x19, #0x20]
0x1d3f8cc: fcmp     s0, s1
0x1d3f8d0: b.ge     #0x1d3f8e4
0x1d3f8d4: mov      w0, #1
0x1d3f8d8: str      xzr, [x19, #0x18]
0x1d3f8dc: str      w0, [x19, #0x10]
0x1d3f8e0: b        #0x1d3f8e8 | 
0x1d3f8e4: mov      w0, wzr
0x1d3f8e8: ldp      x20, x19, [sp, #0x20]
0x1d3f8ec: ldr      x30, [sp, #0x10]
0x1d3f8f0: ldp      d9, d8, [sp], #0x30
0x1d3f8f4: ret      
0x1d3f8f8: bl       #0x1b647c8 | 

// 0x1d3f948 Chapter9PuzzleControl.<TweenLeavePostEffects>d__42$$MoveNext
0x1d3f948: stp      d9, d8, [sp, #-0x30]!
0x1d3f94c: stp      x30, x21, [sp, #0x10]
0x1d3f950: stp      x20, x19, [sp, #0x20]
0x1d3f954: ldr      w8, [x0, #0x10]
0x1d3f958: ldr      x20, [x0, #0x20]
0x1d3f95c: mov      x19, x0
0x1d3f960: cmp      w8, #1
0x1d3f964: b.eq     #0x1d3f9b4
0x1d3f968: cbnz     w8, #0x1d3fabc
0x1d3f96c: mov      w8, #-1
0x1d3f970: str      w8, [x19, #0x10]
0x1d3f974: cbz      x20, #0x1d3fad0
0x1d3f978: ldr      x8, [x20, #0x78]
0x1d3f97c: cbz      x8, #0x1d3fad0
0x1d3f980: ldr      s0, [x8, #0x30]
0x1d3f984: str      s0, [x19, #0x28]
0x1d3f988: ldr      x8, [x20, #0x50]
0x1d3f98c: cbz      x8, #0x1d3fad0
0x1d3f990: ldr      s0, [x8, #0x3c]
0x1d3f994: str      s0, [x19, #0x2c]
0x1d3f998: ldr      x8, [x20, #0x60]
0x1d3f99c: cbz      x8, #0x1d3fad0
0x1d3f9a0: ldr      s0, [x8, #0x40]
0x1d3f9a4: str      wzr, [x19, #0x34]
0x1d3f9a8: str      s0, [x19, #0x30]
0x1d3f9ac: fmov     s0, wzr
0x1d3f9b0: b        #0x1d3f9d4 | 
0x1d3f9b4: ldr      s8, [x19, #0x34]
0x1d3f9b8: mov      w8, #-1
0x1d3f9bc: mov      x0, xzr
0x1d3f9c0: str      w8, [x19, #0x10]
0x1d3f9c4: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1d3f9c8: fadd     s0, s8, s0
0x1d3f9cc: str      s0, [x19, #0x34]
0x1d3f9d0: cbz      x20, #0x1d3fad0
0x1d3f9d4: ldr      s1, [x20, #0x80]
0x1d3f9d8: fmov     s8, #1.00000000
0x1d3f9dc: fcmp     s1, #0.0
0x1d3f9e0: b.ls     #0x1d3f9fc
0x1d3f9e4: fdiv     s0, s0, s1
0x1d3f9e8: fcmp     s0, #0.0
0x1d3f9ec: fmov     s8, wzr
0x1d3f9f0: b.mi     #0x1d3f9fc
0x1d3f9f4: fmov     s1, #1.00000000
0x1d3f9f8: fmin     s8, s0, s1
0x1d3f9fc: ldr      x0, [x20, #0x88]
0x1d3fa00: cbz      x0, #0x1d3fad0
0x1d3fa04: ldr      x21, [x20, #0x78]
0x1d3fa08: ldr      s9, [x19, #0x28]
0x1d3fa0c: mov      v0.16b, v8.16b
0x1d3fa10: mov      x1, xzr
0x1d3fa14: bl       #0x3c1cc6c | UnityEngine.AnimationCurve$$Evaluate
0x1d3fa18: cbz      x21, #0x1d3fad0
0x1d3fa1c: fmov     s1, #0.50000000
0x1d3fa20: fsub     s1, s1, s9
0x1d3fa24: fmul     s0, s1, s0
0x1d3fa28: fadd     s0, s9, s0
0x1d3fa2c: str      s0, [x21, #0x30]
0x1d3fa30: ldr      x0, [x20, #0x90]
0x1d3fa34: cbz      x0, #0x1d3fad0
0x1d3fa38: ldr      x21, [x20, #0x50]
0x1d3fa3c: ldr      s9, [x19, #0x2c]
0x1d3fa40: mov      v0.16b, v8.16b
0x1d3fa44: mov      x1, xzr
0x1d3fa48: bl       #0x3c1cc6c | UnityEngine.AnimationCurve$$Evaluate
0x1d3fa4c: cbz      x21, #0x1d3fad0
0x1d3fa50: adrp     x8, #0xc35000
0x1d3fa54: ldr      s1, [x8, #0x19c]
0x1d3fa58: fsub     s1, s1, s9
0x1d3fa5c: fmul     s0, s1, s0
0x1d3fa60: fadd     s0, s9, s0
0x1d3fa64: str      s0, [x21, #0x3c]
0x1d3fa68: ldr      x0, [x20, #0x98]
0x1d3fa6c: cbz      x0, #0x1d3fad0
0x1d3fa70: ldr      x21, [x20, #0x60]
0x1d3fa74: ldr      s9, [x19, #0x30]
0x1d3fa78: mov      v0.16b, v8.16b
0x1d3fa7c: mov      x1, xzr
0x1d3fa80: bl       #0x3c1cc6c | UnityEngine.AnimationCurve$$Evaluate
0x1d3fa84: cbz      x21, #0x1d3fad0
0x1d3fa88: fmov     s1, wzr
0x1d3fa8c: fsub     s1, s1, s9
0x1d3fa90: fmul     s0, s1, s0
0x1d3fa94: fadd     s0, s9, s0
0x1d3fa98: str      s0, [x21, #0x40]
0x1d3fa9c: ldr      s0, [x19, #0x34]
0x1d3faa0: ldr      s1, [x20, #0x80]
0x1d3faa4: fcmp     s0, s1
0x1d3faa8: b.ge     #0x1d3fabc
0x1d3faac: mov      w0, #1
0x1d3fab0: str      xzr, [x19, #0x18]
0x1d3fab4: str      w0, [x19, #0x10]
0x1d3fab8: b        #0x1d3fac0 | 
0x1d3fabc: mov      w0, wzr
0x1d3fac0: ldp      x20, x19, [sp, #0x20]
0x1d3fac4: ldp      x30, x21, [sp, #0x10]
0x1d3fac8: ldp      d9, d8, [sp], #0x30
0x1d3facc: ret      
0x1d3fad0: bl       #0x1b647c8 | 

// 0x1d693a8 GameProgressSaveModule$$.cctor
0x1d693a8: str      x30, [sp, #-0x20]!
0x1d693ac: stp      x20, x19, [sp, #0x10]
0x1d693b0: adrp     x20, #0x4475000
0x1d693b4: adrp     x19, #0x4185000
0x1d693b8: ldrb     w8, [x20, #0xedb]
0x1d693bc: ldr      x19, [x19, #0x8a8]
0x1d693c0: tbnz     w8, #0, #0x1d694a4
0x1d693c4: adrp     x0, #0x418c000
0x1d693c8: ldr      x0, [x0, #0xc08]
0x1d693cc: bl       #0x1b64570 | 
0x1d693d0: adrp     x0, #0x4185000
0x1d693d4: ldr      x0, [x0, #0x8a8]
0x1d693d8: bl       #0x1b64570 | 
0x1d693dc: adrp     x0, #0x4187000
0x1d693e0: ldr      x0, [x0, #0x1b0] | 0x41871b0 'HD'
0x1d693e4: bl       #0x1b64570 | 
0x1d693e8: adrp     x0, #0x4187000
0x1d693ec: ldr      x0, [x0, #0x1b8] | 0x41871b8 'AT'
0x1d693f0: bl       #0x1b64570 | 
0x1d693f4: adrp     x0, #0x418a000
0x1d693f8: ldr      x0, [x0, #0xea0] | 0x418aea0 'C9PetrichorUnlocked'
0x1d693fc: bl       #0x1b64570 | 
0x1d69400: adrp     x0, #0x4187000
0x1d69404: ldr      x0, [x0, #0xa60] | 0x4187a60 'C9S6Unlocked'
0x1d69408: bl       #0x1b64570 | 
0x1d6940c: adrp     x0, #0x418a000
0x1d69410: ldr      x0, [x0, #0x650] | 0x418a650 'C9ExoplanetaryMirageUnlocked'
0x1d69414: bl       #0x1b64570 | 
0x1d69418: adrp     x0, #0x418a000
0x1d6941c: ldr      x0, [x0, #0x308] | 0x418a308 'C9EvanescentUnlocked'
0x1d69420: bl       #0x1b64570 | 
0x1d69424: adrp     x0, #0x4187000
0x1d69428: ldr      x0, [x0, #0x1c0] | 0x41871c0 'IN'
0x1d6942c: bl       #0x1b64570 | 
0x1d69430: adrp     x0, #0x418a000
0x1d69434: ldr      x0, [x0, #0xec0] | 0x418aec0 'C9HateUnlocked'
0x1d69438: bl       #0x1b64570 | 
0x1d6943c: adrp     x0, #0x4187000
0x1d69440: ldr      x0, [x0, #0x1d0] | 0x41871d0 'EZ'
0x1d69444: bl       #0x1b64570 | 
0x1d69448: adrp     x0, #0x418c000
0x1d6944c: ldr      x0, [x0, #0x140] | 0x418c140 'C9DesultorySignalsUnlocked'
0x1d69450: bl       #0x1b64570 | 
0x1d69454: adrp     x0, #0x418c000
0x1d69458: ldr      x0, [x0, #0x148] | 0x418c148 'C9MessageUnlocked'
0x1d6945c: bl       #0x1b64570 | 
0x1d69460: adrp     x0, #0x418a000
0x1d69464: ldr      x0, [x0, #0x2a8] | 0x418a2a8 'C9AboutTheUniverseUnlocked'
0x1d69468: bl       #0x1b64570 | 
0x1d6946c: adrp     x0, #0x418a000
0x1d69470: ldr      x0, [x0, #0x310] | 0x418a310 'C9EntranceToTheChaosUnlocked'
0x1d69474: bl       #0x1b64570 | 
0x1d69478: adrp     x0, #0x418a000
0x1d6947c: ldr      x0, [x0, #0x318] | 0x418a318 'C9ImplexroughUnlocked'
0x1d69480: bl       #0x1b64570 | 
0x1d69484: adrp     x0, #0x418a000
0x1d69488: ldr      x0, [x0, #0xec8] | 0x418aec8 'C9AmetrineUnlocked'
0x1d6948c: bl       #0x1b64570 | 
0x1d69490: adrp     x0, #0x418c000
0x1d69494: ldr      x0, [x0, #0x150] | 0x418c150 'C9HappyEndingUnlocked'
0x1d69498: bl       #0x1b64570 | 
0x1d6949c: mov      w8, #1
0x1d694a0: strb     w8, [x20, #0xedb]
0x1d694a4: ldr      x0, [x19]
0x1d694a8: mov      w1, #4
0x1d694ac: bl       #0x1b64614 | 
0x1d694b0: cbz      x0, #0x1d69690
0x1d694b4: ldr      w8, [x0, #0x18]
0x1d694b8: cbz      w8, #0x1d6968c
0x1d694bc: adrp     x9, #0x4187000
0x1d694c0: ldr      x9, [x9, #0x1d0] | 0x41871d0 'EZ'
0x1d694c4: cmp      w8, #1
0x1d694c8: ldr      x9, [x9]
0x1d694cc: str      x9, [x0, #0x20]
0x1d694d0: b.eq     #0x1d6968c
0x1d694d4: adrp     x9, #0x4187000
0x1d694d8: ldr      x9, [x9, #0x1b0] | 0x41871b0 'HD'
0x1d694dc: cmp      w8, #2
0x1d694e0: ldr      x9, [x9]
0x1d694e4: str      x9, [x0, #0x28]
0x1d694e8: b.ls     #0x1d6968c
0x1d694ec: adrp     x9, #0x4187000
0x1d694f0: ldr      x9, [x9, #0x1c0] | 0x41871c0 'IN'
0x1d694f4: cmp      w8, #3
0x1d694f8: ldr      x9, [x9]
0x1d694fc: str      x9, [x0, #0x30]
0x1d69500: b.eq     #0x1d6968c
0x1d69504: adrp     x8, #0x4187000
0x1d69508: ldr      x8, [x8, #0x1b8] | 0x41871b8 'AT'
0x1d6950c: adrp     x20, #0x418c000
0x1d69510: mov      w1, #6
0x1d69514: ldr      x8, [x8]
0x1d69518: ldr      x20, [x20, #0xc08]
0x1d6951c: str      x8, [x0, #0x38]
0x1d69520: ldr      x8, [x20]
0x1d69524: ldr      x8, [x8, #0xb8]
0x1d69528: str      x0, [x8]
0x1d6952c: ldr      x0, [x19]
0x1d69530: bl       #0x1b64614 | 
0x1d69534: cbz      x0, #0x1d69690
0x1d69538: ldr      w8, [x0, #0x18]
0x1d6953c: cbz      w8, #0x1d6968c
0x1d69540: adrp     x9, #0x418a000
0x1d69544: ldr      x9, [x9, #0x318] | 0x418a318 'C9ImplexroughUnlocked'
0x1d69548: cmp      w8, #1
0x1d6954c: ldr      x9, [x9]
0x1d69550: str      x9, [x0, #0x20]
0x1d69554: b.eq     #0x1d6968c
0x1d69558: adrp     x9, #0x418a000
0x1d6955c: ldr      x9, [x9, #0x2a8] | 0x418a2a8 'C9AboutTheUniverseUnlocked'
0x1d69560: cmp      w8, #2
0x1d69564: ldr      x9, [x9]
0x1d69568: str      x9, [x0, #0x28]
0x1d6956c: b.ls     #0x1d6968c
0x1d69570: adrp     x9, #0x418a000
0x1d69574: ldr      x9, [x9, #0x308] | 0x418a308 'C9EvanescentUnlocked'
0x1d69578: cmp      w8, #3
0x1d6957c: ldr      x9, [x9]
0x1d69580: str      x9, [x0, #0x30]
0x1d69584: b.eq     #0x1d6968c
0x1d69588: adrp     x9, #0x418a000
0x1d6958c: ldr      x9, [x9, #0x650] | 0x418a650 'C9ExoplanetaryMirageUnlocked'
0x1d69590: cmp      w8, #4
0x1d69594: ldr      x9, [x9]
0x1d69598: str      x9, [x0, #0x38]
0x1d6959c: b.ls     #0x1d6968c
0x1d695a0: adrp     x9, #0x418a000
0x1d695a4: ldr      x9, [x9, #0x310] | 0x418a310 'C9EntranceToTheChaosUnlocked'
0x1d695a8: cmp      w8, #5
0x1d695ac: ldr      x9, [x9]
0x1d695b0: str      x9, [x0, #0x40]
0x1d695b4: b.eq     #0x1d6968c
0x1d695b8: adrp     x8, #0x4187000
0x1d695bc: ldr      x8, [x8, #0xa60] | 0x4187a60 'C9S6Unlocked'
0x1d695c0: mov      w1, #6
0x1d695c4: ldr      x8, [x8]
0x1d695c8: str      x8, [x0, #0x48]
0x1d695cc: ldr      x8, [x20]
0x1d695d0: ldr      x8, [x8, #0xb8]
0x1d695d4: str      x0, [x8, #8]
0x1d695d8: ldr      x0, [x19]
0x1d695dc: bl       #0x1b64614 | 
0x1d695e0: cbz      x0, #0x1d69690
0x1d695e4: ldr      w8, [x0, #0x18]
0x1d695e8: cbz      w8, #0x1d6968c
0x1d695ec: adrp     x9, #0x418a000
0x1d695f0: ldr      x9, [x9, #0xec8] | 0x418aec8 'C9AmetrineUnlocked'
0x1d695f4: cmp      w8, #1
0x1d695f8: ldr      x9, [x9]
0x1d695fc: str      x9, [x0, #0x20]
0x1d69600: b.eq     #0x1d6968c
0x1d69604: adrp     x9, #0x418a000
0x1d69608: ldr      x9, [x9, #0xea0] | 0x418aea0 'C9PetrichorUnlocked'
0x1d6960c: cmp      w8, #2
0x1d69610: ldr      x9, [x9]
0x1d69614: str      x9, [x0, #0x28]
0x1d69618: b.ls     #0x1d6968c
0x1d6961c: adrp     x9, #0x418a000
0x1d69620: ldr      x9, [x9, #0xec0] | 0x418aec0 'C9HateUnlocked'
0x1d69624: cmp      w8, #3
0x1d69628: ldr      x9, [x9]
0x1d6962c: str      x9, [x0, #0x30]
0x1d69630: b.eq     #0x1d6968c
0x1d69634: adrp     x9, #0x418c000
0x1d69638: ldr      x9, [x9, #0x140] | 0x418c140 'C9DesultorySignalsUnlocked'
0x1d6963c: cmp      w8, #4
0x1d69640: ldr      x9, [x9]
0x1d69644: str      x9, [x0, #0x38]
0x1d69648: b.ls     #0x1d6968c
0x1d6964c: adrp     x9, #0x418c000
0x1d69650: ldr      x9, [x9, #0x148] | 0x418c148 'C9MessageUnlocked'
0x1d69654: cmp      w8, #5
0x1d69658: ldr      x9, [x9]
0x1d6965c: str      x9, [x0, #0x40]
0x1d69660: b.eq     #0x1d6968c
0x1d69664: adrp     x8, #0x418c000
0x1d69668: ldr      x8, [x8, #0x150] | 0x418c150 'C9HappyEndingUnlocked'
0x1d6966c: ldr      x8, [x8]
0x1d69670: str      x8, [x0, #0x48]
0x1d69674: ldr      x8, [x20]
0x1d69678: ldp      x20, x19, [sp, #0x10]
0x1d6967c: ldr      x8, [x8, #0xb8]
0x1d69680: str      x0, [x8, #0x10]
0x1d69684: ldr      x30, [sp], #0x20
0x1d69688: ret      
0x1d6968c: bl       #0x1b647d0 | 
0x1d69690: bl       #0x1b647c8 | 
