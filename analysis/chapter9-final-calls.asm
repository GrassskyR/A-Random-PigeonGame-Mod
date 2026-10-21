
// 0x1cdbf50 FakeAboutUsControl$$Start
0x1cdbf74: bl       #0x1b64570 | 
0x1cdbf80: bl       #0x1b64570 | 
0x1cdbf8c: bl       #0x1b64570 | 
0x1cdbf94: ldr      x0, [x0, #0x1b0] | 0x41871b0 'HD'
0x1cdbf98: bl       #0x1b64570 | 
0x1cdbfa0: ldr      x0, [x0, #0x1b8] | 0x41871b8 'AT'
0x1cdbfa4: bl       #0x1b64570 | 
0x1cdbfac: ldr      x0, [x0, #0x328] | 0x4189328 'chartMirror'
0x1cdbfb0: bl       #0x1b64570 | 
0x1cdbfb8: ldr      x0, [x0, #0x1c0] | 0x41871c0 'IN'
0x1cdbfbc: bl       #0x1b64570 | 
0x1cdbfc4: ldr      x0, [x0, #0x1d0] | 0x41871d0 'EZ'
0x1cdbfc8: bl       #0x1b64570 | 
0x1cdbff0: bl       #0x3e953dc | UnityEngine.Video.VideoPlayer$$Prepare
0x1cdbffc: bl       #0x1b647b8 | 
0x1cdc010: bl       #0x3e97088 | UnityEngine.Video.VideoPlayer.ErrorEventHandler$$.ctor
0x1cdc024: bl       #0x3e968c8 | UnityEngine.Video.VideoPlayer$$add_errorReceived
0x1cdc03c: bl       #0x1b64570 | 
0x1cdc064: bl       #0x3c22cb4 | UnityEngine.Camera$$get_main
0x1cdc070: bl       #0x3c2bf0c | UnityEngine.Screen$$get_width
0x1cdc07c: bl       #0x3c2bf34 | UnityEngine.Screen$$get_height
0x1cdc0a0: bl       #0x3c2bf0c | UnityEngine.Screen$$get_width
0x1cdc0ac: bl       #0x3c2bf34 | UnityEngine.Screen$$get_height
0x1cdc0e0: ldr      x9, [x9, #0x1d0] | 0x41871d0 'EZ'
0x1cdc0f4: bl       #0x32fac7c | System.String$$op_Equality
0x1cdc100: b        #0x1cdc170 | 
0x1cdc108: ldr      x8, [x8, #0x1b0] | 0x41871b0 'HD'
0x1cdc118: bl       #0x32fac7c | System.String$$op_Equality
0x1cdc124: b        #0x1cdc170 | 
0x1cdc12c: ldr      x8, [x8, #0x1c0] | 0x41871c0 'IN'
0x1cdc13c: bl       #0x32fac7c | System.String$$op_Equality
0x1cdc148: b        #0x1cdc170 | 
0x1cdc150: ldr      x8, [x8, #0x1b8] | 0x41871b8 'AT'
0x1cdc160: bl       #0x32fac7c | System.String$$op_Equality
0x1cdc180: bl       #0x1ca8974 | GameInformation$$GetSongInformation
0x1cdc194: bl       #0x1cb8b38 | SongsItem$$GetLevelStartInfo
0x1cdc1b4: bl       #0x1b64570 | 
0x1cdc1f8: ldr      x21, [x21, #0x328] | 0x4189328 'chartMirror'
0x1cdc200: bl       #0x1b646a4 | 
0x1cdc210: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1cdc294: b        #0x3c1fae8 | UnityEngine.Camera$$set_orthographicSize
0x1cdc298: bl       #0x1b647c8 | 

// 0x1cdc29c FakeAboutUsControl$$playUnlockVideo
0x1cdc2a8: bl       #0x3c688f4 | UnityEngine.Time$$get_timeSinceLevelLoad
0x1cdc2c8: bl       #0x1cdc2e0 | FakeAboutUsControl$$PlayUnlock
0x1cdc2dc: b        #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine

// 0x1cdc2e0 FakeAboutUsControl$$PlayUnlock
0x1cdc308: bl       #0x1b64570 | 
0x1cdc318: bl       #0x1b647b8 | 
0x1cdc324: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1cdc340 FakeAboutUsControl.<PlayUnlock>d__18$$.ctor
0x1cdc354: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1cdc368 FakeAboutUsControl$$WaitingForVideoOver
0x1cdc370: bl       #0x1cdc388 | FakeAboutUsControl$$StartLevel
0x1cdc384: b        #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine

// 0x1cdc388 FakeAboutUsControl$$StartLevel
0x1cdc3b0: bl       #0x1b64570 | 
0x1cdc3c0: bl       #0x1b647b8 | 
0x1cdc3cc: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1cdc3e8 FakeAboutUsControl.<StartLevel>d__20$$.ctor
0x1cdc3fc: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1cdc410 FakeAboutUsControl$$.ctor
0x1cdc438: bl       #0x1b64570 | 
0x1cdc44c: bl       #0x1b64614 | 
0x1cdc46c: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor

// 0x1cdc470 FakeAboutUsControl$$<Start>g__OnErrorReceived|15_0
0x1cdc48c: ldr      x22, [x22, #0x6f0] | 0x41896f0 'Error received: '
0x1cdc4a4: bl       #0x1b64570 | 
0x1cdc4ac: ldr      x0, [x0, #0x6f0] | 0x41896f0 'Error received: '
0x1cdc4b0: bl       #0x1b64570 | 
0x1cdc4c8: bl       #0x32fce8c | System.String$$Concat
0x1cdc4e0: bl       #0x1b646a4 | 
0x1cdc4f8: b        #0x3c25308 | UnityEngine.Debug$$LogError

// 0x1cdc4fc FakeAboutUsControl$$<PlayUnlock>b__18_0
0x1cdc50c: bl       #0x3e956bc | UnityEngine.Video.VideoPlayer$$get_time
0x1cdc528: bl       #0x1b647c8 | 

// 0x1cdc52c FakeAboutUsControl.<PlayUnlock>d__18$$System.IDisposable.Dispose

// 0x1cdc530 FakeAboutUsControl.<PlayUnlock>d__18$$MoveNext
0x1cdc55c: bl       #0x1b64570 | 
0x1cdc568: bl       #0x1b64570 | 
0x1cdc574: bl       #0x1b64570 | 
0x1cdc580: bl       #0x1b64570 | 
0x1cdc58c: bl       #0x1b64570 | 
0x1cdc598: bl       #0x1b64570 | 
0x1cdc5a0: ldr      x0, [x0, #0x700] | 0x4189700 'VideoIn'
0x1cdc5a4: bl       #0x1b64570 | 
0x1cdc5f0: bl       #0x3e95554 | UnityEngine.Video.VideoPlayer$$Play
0x1cdc600: bl       #0x1b647b8 | 
0x1cdc61c: bl       #0x2c503d8 | System.Func<bool>$$.ctor
0x1cdc62c: bl       #0x1b647b8 | 
0x1cdc63c: bl       #0x3c66e5c | UnityEngine.WaitUntil$$.ctor
0x1cdc64c: b        #0x1cdc87c | 
0x1cdc66c: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1cdc67c: ldr      x8, [x8, #0x700] | 0x4189700 'VideoIn'
0x1cdc688: bl       #0x3c0db9c | UnityEngine.Animator$$SetTrigger
0x1cdc698: bl       #0x1b647b8 | 
0x1cdc6a8: bl       #0x3c66cf4 | UnityEngine.WaitForSeconds$$.ctor
0x1cdc6b4: b        #0x1cdc874 | 
0x1cdc6d4: bl       #0x3c1faac | UnityEngine.Camera$$get_orthographicSize
0x1cdc6f0: b        #0x1cdc700 | 
0x1cdc720: bl       #0x3c1fae8 | UnityEngine.Camera$$set_orthographicSize
0x1cdc728: b        #0x1cdc87c | 
0x1cdc744: bl       #0x1b646a4 | 
0x1cdc754: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1cdc77c: bl       #0x3c18a20 | UnityEngine.AudioSource$$get_isPlaying
0x1cdc794: bl       #0x3c183b0 | UnityEngine.AudioSource$$set_volume
0x1cdc7a4: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1cdc7bc: bl       #0x1b646a4 | 
0x1cdc7c8: bl       #0x3c652c4 | UnityEngine.Object$$Destroy
0x1cdc7d8: b        #0x1cdc800 | 
0x1cdc7ec: bl       #0x3c183b0 | UnityEngine.AudioSource$$set_volume
0x1cdc804: bl       #0x3c183b0 | UnityEngine.AudioSource$$set_volume
0x1cdc83c: bl       #0x3c1fae8 | UnityEngine.Camera$$set_orthographicSize
0x1cdc848: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1cdc868: bl       #0x1b646ac | 
0x1cdc894: bl       #0x1b647c8 | 

// 0x1cdc898 FakeAboutUsControl.<PlayUnlock>d__18$$System.Collections.Generic.IEnumerator<System.Object>.get_Current

// 0x1cdc8a0 FakeAboutUsControl.<PlayUnlock>d__18$$System.Collections.IEnumerator.Reset
0x1cdc8ac: bl       #0x1b64584 | 
0x1cdc8b0: bl       #0x1b647b8 | 
0x1cdc8bc: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1cdc8c8: bl       #0x1b64584 | 
0x1cdc8d4: bl       #0x1b64694 | 

// 0x1cdc8d8 FakeAboutUsControl.<PlayUnlock>d__18$$System.Collections.IEnumerator.get_Current

// 0x1cdc8e0 FakeAboutUsControl.<StartLevel>d__20$$System.IDisposable.Dispose

// 0x1cdc8e4 FakeAboutUsControl.<StartLevel>d__20$$MoveNext
0x1cdc90c: bl       #0x1b64570 | 
0x1cdc918: bl       #0x1b64570 | 
0x1cdc924: bl       #0x1b64570 | 
0x1cdc930: bl       #0x1b64570 | 
0x1cdc938: ldr      x0, [x0, #0xf40] | 0x4188f40 'Level'
0x1cdc93c: bl       #0x1b64570 | 
0x1cdc9b8: bl       #0x1b646a4 | 
0x1cdc9cc: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1cdc9d4: bl       #0x3c65590 | UnityEngine.Object$$DontDestroyOnLoad
0x1cdc9ec: bl       #0x1b646a4 | 
0x1cdc9f4: ldr      x8, [x8, #0xf40] | 0x4188f40 'Level'
0x1cdca00: bl       #0x3c75460 | UnityEngine.SceneManagement.SceneManager$$LoadScene
0x1cdca08: b        #0x1cdca40 | 
0x1cdca10: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1cdca30: bl       #0x1b646ac | 
0x1cdca54: bl       #0x1b647c8 | 

// 0x1cdca58 FakeAboutUsControl.<StartLevel>d__20$$System.Collections.Generic.IEnumerator<System.Object>.get_Current

// 0x1cdca60 FakeAboutUsControl.<StartLevel>d__20$$System.Collections.IEnumerator.Reset
0x1cdca6c: bl       #0x1b64584 | 
0x1cdca70: bl       #0x1b647b8 | 
0x1cdca7c: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1cdca88: bl       #0x1b64584 | 
0x1cdca94: bl       #0x1b64694 | 

// 0x1cdca98 FakeAboutUsControl.<StartLevel>d__20$$System.Collections.IEnumerator.get_Current

// 0x1ce27b0 Phigros2.Utils.TrueRandom$$RandomInt
0x1ce27dc: bl       #0x1b64570 | 
0x1ce27e8: bl       #0x1b64570 | 
0x1ce27fc: bl       #0x1b64614 | 
0x1ce280c: bl       #0x1b647b8 | 
0x1ce2818: bl       #0x334c814 | System.Security.Cryptography.RNGCryptoServiceProvider$$.ctor
0x1ce2848: b        #0x33f17d0 | System.BitConverter$$ToInt32
0x1ce284c: bl       #0x1b647c8 | 

// 0x1ce2850 Phigros2.Utils.TrueRandom$$RandomInt
0x1ce2864: bl       #0x1ce27b0 | Phigros2.Utils.TrueRandom$$RandomInt
0x1ce2880: bl       #0x1b64570 | 
0x1ce28a0: bl       #0x1b646a4 | 

// 0x1ce28c8 Phigros2.Utils.TrueRandom$$RandomInt
0x1ce28d4: bl       #0x1ce2850 | Phigros2.Utils.TrueRandom$$RandomInt

// 0x1ce28e4 Phigros2.Utils.TrueRandom$$RandomFloat
0x1ce2910: bl       #0x1b64570 | 
0x1ce291c: bl       #0x1b64570 | 
0x1ce2930: bl       #0x1b64614 | 
0x1ce2940: bl       #0x1b647b8 | 
0x1ce294c: bl       #0x334c814 | System.Security.Cryptography.RNGCryptoServiceProvider$$.ctor
0x1ce2974: bl       #0x33f17d0 | System.BitConverter$$ToInt32
0x1ce2994: bl       #0x1b647c8 | 

// 0x1ce2998 Phigros2.Utils.TrueRandom$$RandomFloat
0x1ce29a4: bl       #0x1ce28e4 | Phigros2.Utils.TrueRandom$$RandomFloat
0x1ce29bc: b        #0x3e99930 | 

// 0x1ce29c0 Phigros2.Utils.TrueRandom$$RandomFloat
0x1ce29d0: bl       #0x1ce28e4 | Phigros2.Utils.TrueRandom$$RandomFloat
0x1ce29e0: bl       #0x3e99930 | 

// 0x1ce29f4 Phigros2.Utils.TrueRandom$$.ctor
0x1ce29f8: b        #0x34c04f0 | System.Object$$.ctor

// 0x1d0cd98 Phigros2.Chapter9.ExoplanetaryMirageUnlock$$IsProcessActive
0x1d0cdbc: bl       #0x1b64570 | 
0x1d0cdc4: ldr      x0, [x0, #0x5e0] | 0x418a5e0 'poyidomejiu1'
0x1d0cdc8: bl       #0x1b64570 | 
0x1d0cdd0: ldr      x0, [x0, #0x650] | 0x418a650 'C9ExoplanetaryMirageUnlocked'
0x1d0cdd4: bl       #0x1b64570 | 
0x1d0cddc: ldr      x0, [x0, #0x490] | 0x418a490 'Chapter9UnlockBegin'
0x1d0cde0: bl       #0x1b64570 | 
0x1d0cdf8: ldr      x20, [x20, #0x490] | 0x418a490 'Chapter9UnlockBegin'
0x1d0ce00: bl       #0x1b646a4 | 
0x1d0ce10: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d0ce24: ldr      x19, [x19, #0x650] | 0x418a650 'C9ExoplanetaryMirageUnlocked'
0x1d0ce2c: bl       #0x1b646a4 | 
0x1d0ce3c: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d0ce58: ldr      x8, [x8, #0x5e0] | 0x418a5e0 'poyidomejiu1'
0x1d0ce68: b        #0x1d0ce6c | Phigros2.Chapter9.Key$$IsCollectionRead

// 0x1d0cf1c Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ShouldMirrorIllustration
0x1d0cf3c: bl       #0x1b64570 | 
0x1d0cf44: ldr      x0, [x0, #0xc10] | 0x4187c10 'ChallengeMode'
0x1d0cf48: bl       #0x1b64570 | 
0x1d0cf54: bl       #0x1d0cd98 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$IsProcessActive
0x1d0cf74: ldr      x9, [x9, #0xc10] | 0x4187c10 'ChallengeMode'
0x1d0cf80: bl       #0x32fac7c | System.String$$op_Equality
0x1d0cf94: b        #0x1d0cfa8 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$IsUnlockSong

// 0x1d0cfa8 Phigros2.Chapter9.ExoplanetaryMirageUnlock$$IsUnlockSong
0x1d0cfbc: ldr      x21, [x21, #0x568] | 0x418a568 'Evanescent.LeaF.0'
0x1d0cfcc: ldr      x0, [x0, #0x3b8] | 0x418a3b8 'AboutTheUniverse.SOTUIMIssionary.0'
0x1d0cfd0: bl       #0x1b64570 | 
0x1d0cfd8: ldr      x0, [x0, #0x568] | 0x418a568 'Evanescent.LeaF.0'
0x1d0cfdc: bl       #0x1b64570 | 
0x1d0cff4: bl       #0x32fac7c | System.String$$op_Equality
0x1d0d010: ldr      x8, [x8, #0x3b8] | 0x418a3b8 'AboutTheUniverse.SOTUIMIssionary.0'
0x1d0d028: b        #0x32fac7c | System.String$$op_Equality

// 0x1d0d02c Phigros2.Chapter9.ExoplanetaryMirageUnlock$$GetPendingHiddenThirdSongId
0x1d0d048: ldr      x0, [x0, #0x560] | 0x418a560 'ExoplanetaryMirage.かめりあ.0'
0x1d0d04c: bl       #0x1b64570 | 
0x1d0d058: bl       #0x1d0cd98 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$IsProcessActive
0x1d0d064: ldr      x20, [x20, #0x560] | 0x418a560 'ExoplanetaryMirage.かめりあ.0'
0x1d0d06c: bl       #0x1d0d090 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$IsValidUnlockSelection
0x1d0d07c: b        #0x1d0d084 | 

// 0x1d0d090 Phigros2.Chapter9.ExoplanetaryMirageUnlock$$IsValidUnlockSelection
0x1d0d0b0: bl       #0x1b64570 | 
0x1d0d0bc: bl       #0x1b64570 | 
0x1d0d0c4: ldr      x0, [x0, #0x3b8] | 0x418a3b8 'AboutTheUniverse.SOTUIMIssionary.0'
0x1d0d0c8: bl       #0x1b64570 | 
0x1d0d0d0: ldr      x0, [x0, #0x568] | 0x418a568 'Evanescent.LeaF.0'
0x1d0d0d4: bl       #0x1b64570 | 
0x1d0d124: bl       #0x1bc5638 | 
0x1d0d128: b        #0x1d0d138 | 
0x1d0d18c: bl       #0x1bc5638 | 
0x1d0d190: b        #0x1d0d1a0 | 
0x1d0d1ec: bl       #0x1bc5638 | 
0x1d0d1f0: b        #0x1d0d200 | 
0x1d0d240: b        #0x1d0d248 | 
0x1d0d24c: ldr      x8, [x8, #0x568] | 0x418a568 'Evanescent.LeaF.0'
0x1d0d258: bl       #0x32fac7c | System.String$$op_Equality
0x1d0d274: b        #0x1d0d28c | 
0x1d0d290: ldr      x8, [x8, #0x3b8] | 0x418a3b8 'AboutTheUniverse.SOTUIMIssionary.0'
0x1d0d2a4: b        #0x32fac7c | System.String$$op_Equality

// 0x1d0d2a8 Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ShouldBlockChallengeStart
0x1d0d2b0: bl       #0x1d0cd98 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$IsProcessActive
0x1d0d2bc: bl       #0x1d0d2e4 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ContainsUnlockSong
0x1d0d2c8: bl       #0x1d0d090 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$IsValidUnlockSelection
0x1d0d2d0: b        #0x1d0d2d8 | 

// 0x1d0d2e4 Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ContainsUnlockSong
0x1d0d308: bl       #0x1b64570 | 
0x1d0d314: bl       #0x1b64570 | 
0x1d0d370: bl       #0x1bc5638 | 
0x1d0d374: b        #0x1d0d384 | 
0x1d0d3d4: bl       #0x1bc5638 | 
0x1d0d3d8: b        #0x1d0d3e8 | 
0x1d0d410: b        #0x1d0d418 | 
0x1d0d418: bl       #0x1d0cfa8 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$IsUnlockSong
0x1d0d424: b        #0x1d0d42c | 

// 0x1d0d440 Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ShouldLockSelector
0x1d0d444: bl       #0x1d0d02c | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$GetPendingHiddenThirdSongId

// 0x1d0d458 Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ApplyIllustrationMirror
0x1d0d464: bl       #0x1d0cf1c | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ShouldMirrorIllustration
0x1d0d474: b        #0x1d0d478 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$SetMirrored

// 0x1d0d478 Phigros2.Chapter9.ExoplanetaryMirageUnlock$$SetMirrored
0x1d0d4ac: bl       #0x1b64570 | 
0x1d0d4b8: bl       #0x1b64570 | 
0x1d0d4c4: bl       #0x1b64570 | 
0x1d0d4d0: bl       #0x1b64570 | 
0x1d0d4f0: bl       #0x1b646a4 | 
0x1d0d500: bl       #0x3c619b8 | UnityEngine.Object$$op_Equality
0x1d0d520: bl       #0x1f4aea8 | UnityEngine.Component$$TryGetComponent<object>
0x1d0d538: bl       #0x3c6f208 | UnityEngine.SpriteRenderer$$set_flipX
0x1d0d53c: b        #0x1d0d624 | 
0x1d0d554: bl       #0x1f4aea8 | UnityEngine.Component$$TryGetComponent<object>
0x1d0d564: bl       #0x1d0d680 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$SetTextMirrored
0x1d0d568: b        #0x1d0d624 | 
0x1d0d574: bl       #0x3c5d744 | UnityEngine.Component$$get_transform
0x1d0d584: bl       #0x3c6bdfc | UnityEngine.Transform$$get_localScale
0x1d0d5a0: bl       #0x1d0d850 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$FlipLocalX
0x1d0d5ac: bl       #0x3c6df94 | UnityEngine.Transform$$get_childCount
0x1d0d5d0: bl       #0x3c6e5e8 | UnityEngine.Transform$$GetChild
0x1d0d5d8: bl       #0x1d0d850 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$FlipLocalX
0x1d0d5f8: bl       #0x3c6a1cc | UnityEngine.RectTransform$$get_anchoredPosition
0x1d0d608: bl       #0x3c6a25c | UnityEngine.RectTransform$$set_anchoredPosition
0x1d0d618: bl       #0x3c6df94 | UnityEngine.Transform$$get_childCount
0x1d0d638: bl       #0x1b647c8 | 

// 0x1d0d63c Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ApplyTextMirror
0x1d0d648: bl       #0x1d0cf1c | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ShouldMirrorIllustration
0x1d0d658: b        #0x1d0d478 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$SetMirrored

// 0x1d0d65c Phigros2.Chapter9.ExoplanetaryMirageUnlock$$SongId

// 0x1d0d680 Phigros2.Chapter9.ExoplanetaryMirageUnlock$$SetTextMirrored
0x1d0d6b0: bl       #0x1b64570 | 
0x1d0d6c8: bl       #0x3c5d744 | UnityEngine.Component$$get_transform
0x1d0d6d8: bl       #0x3c6bdfc | UnityEngine.Transform$$get_localScale
0x1d0d6f8: bl       #0x3c6bdfc | UnityEngine.Transform$$get_localScale
0x1d0d704: bl       #0x1d0d850 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$FlipLocalX
0x1d0d710: bl       #0x3e77738 | UnityEngine.UI.Text$$get_alignment
0x1d0d734: bl       #0x3e77754 | UnityEngine.UI.Text$$set_alignment
0x1d0d75c: bl       #0x3c6a404 | UnityEngine.RectTransform$$get_pivot
0x1d0d778: bl       #0x1b64570 | 
0x1d0d7d4: bl       #0x3c6a1cc | UnityEngine.RectTransform$$get_anchoredPosition
0x1d0d7e8: bl       #0x3c6a404 | UnityEngine.RectTransform$$get_pivot
0x1d0d7f8: bl       #0x3c69ef8 | UnityEngine.RectTransform$$get_rect
0x1d0d830: b        #0x3c6a25c | UnityEngine.RectTransform$$set_anchoredPosition
0x1d0d84c: bl       #0x1b647c8 | 

// 0x1d0d850 Phigros2.Chapter9.ExoplanetaryMirageUnlock$$FlipLocalX
0x1d0d860: bl       #0x3c6bdfc | UnityEngine.Transform$$get_localScale
0x1d0d874: b        #0x3c6be9c | UnityEngine.Transform$$set_localScale
0x1d0d878: bl       #0x1b647c8 | 

// 0x1d0d87c Phigros2.Chapter9.ExoplanetaryMirageUnlock$$MirrorHorizontalAlignment

// 0x1d1d32c Phigros2.Chapter9.Scripts.Phase2.HateEffects$$Start
0x1d1d34c: bl       #0x1b64570 | 
0x1d1d354: ldr      x0, [x0, #0xca8] | 0x4187ca8 'Chapter9Phase2Passed'
0x1d1d358: bl       #0x1b64570 | 
0x1d1d364: bl       #0x1d1e654 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$LoadCurrentStep
0x1d1d384: bl       #0x1b646a4 | 
0x1d1d38c: ldr      x8, [x8, #0xca8] | 0x4187ca8 'Chapter9Phase2Passed'
0x1d1d39c: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d1d3c0: bl       #0x1d1e654 | Phigros2.Chapter9.Phase2.Chapter9Phase2Progress$$LoadCurrentStep
0x1d1d3e4: b        #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d1d3f4: bl       #0x1b647c8 | 

// 0x1d1d3fc Phigros2.Chapter9.Scripts.Phase2.HateEffects$$.ctor
0x1d1d400: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor

// 0x1d23a28 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$Start
0x1d23a5c: bl       #0x1b64570 | 
0x1d23a68: bl       #0x1b64570 | 
0x1d23a74: bl       #0x1b64570 | 
0x1d23a80: bl       #0x1b64570 | 
0x1d23a8c: bl       #0x1b64570 | 
0x1d23a94: ldr      x0, [x0, #0x1b0] | 0x41871b0 'HD'
0x1d23a98: bl       #0x1b64570 | 
0x1d23aa0: ldr      x0, [x0, #0x1b8] | 0x41871b8 'AT'
0x1d23aa4: bl       #0x1b64570 | 
0x1d23aac: ldr      x0, [x0, #0xed0] | 0x4186ed0 'LastChapterBackgroundCode'
0x1d23ab0: bl       #0x1b64570 | 
0x1d23ab8: ldr      x0, [x0, #0x2f0] | 0x418b2f0 'D7'
0x1d23abc: bl       #0x1b64570 | 
0x1d23ac4: ldr      x0, [x0, #0x1c0] | 0x41871c0 'IN'
0x1d23ac8: bl       #0x1b64570 | 
0x1d23ad0: ldr      x0, [x0, #0x2f8] | 0x418b2f8 'Lv.'
0x1d23ad4: bl       #0x1b64570 | 
0x1d23adc: ldr      x0, [x0, #0x1d0] | 0x41871d0 'EZ'
0x1d23ae0: bl       #0x1b64570 | 
0x1d23ae8: ldr      x0, [x0, #0xeb0] | 0x4186eb0 'MainStoryLegacy'
0x1d23aec: bl       #0x1b64570 | 
0x1d23b18: bl       #0x1b64570 | 
0x1d23b48: ldr      x9, [x9, #0x1d0] | 0x41871d0 'EZ'
0x1d23b5c: bl       #0x32fac7c | System.String$$op_Equality
0x1d23b68: b        #0x1d23bd4 | 
0x1d23b70: ldr      x8, [x8, #0x1b0] | 0x41871b0 'HD'
0x1d23b80: bl       #0x32fac7c | System.String$$op_Equality
0x1d23b8c: b        #0x1d23bd4 | 
0x1d23b94: ldr      x8, [x8, #0x1c0] | 0x41871c0 'IN'
0x1d23ba4: bl       #0x32fac7c | System.String$$op_Equality
0x1d23bb0: ldr      x8, [x8, #0x1b8] | 0x41871b8 'AT'
0x1d23bc0: bl       #0x32fac7c | System.String$$op_Equality
0x1d23bcc: b        #0x1d23bd4 | 
0x1d23be4: bl       #0x1db7aec | AddressableAudioSource$$set_Clip
0x1d23bf4: bl       #0x1db7e54 | AddressableAudioSource$$Play
0x1d23c0c: bl       #0x1b64570 | 
0x1d23c60: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1d23c78: bl       #0x1b64570 | 
0x1d23cb4: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1d23d68: bl       #0x3478b00 | System.Int32$$ToString
0x1d23d70: ldr      x8, [x8, #0x2f8] | 0x418b2f8 'Lv.'
0x1d23d84: bl       #0x32fce8c | System.String$$Concat
0x1d23df4: ldr      x9, [x9, #0x2f0] | 0x418b2f0 'D7'
0x1d23e08: bl       #0x3478b94 | System.Int32$$ToString
0x1d23e4c: bl       #0x3478b00 | System.Int32$$ToString
0x1d23e80: bl       #0x3478b00 | System.Int32$$ToString
0x1d23eb4: bl       #0x3478b00 | System.Int32$$ToString
0x1d23ee8: bl       #0x3478b00 | System.Int32$$ToString
0x1d23f20: bl       #0x3478b00 | System.Int32$$ToString
0x1d23f54: bl       #0x3478b00 | System.Int32$$ToString
0x1d23f90: bl       #0x1daeef8 | AddressableImageLoader$$set_Code
0x1d23fa0: bl       #0x1d0d458 | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ApplyIllustrationMirror
0x1d23fb0: bl       #0x1d0d63c | Phigros2.Chapter9.ExoplanetaryMirageUnlock$$ApplyTextMirror
0x1d23fc8: ldr      x8, [x8, #0x2f0] | 0x418b2f0 'D7'
0x1d23fd8: bl       #0x3478b94 | System.Int32$$ToString
0x1d24000: ldr      x23, [x23, #0xed0] | 0x4186ed0 'LastChapterBackgroundCode'
0x1d24004: b        #0x3e994d4 | 
0x1d24018: bl       #0x1d24250 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$SetRating
0x1d2401c: b        #0x1d24134 | 
0x1d24048: bl       #0x1d242bc | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$SetRatingWithScore
0x1d24060: bl       #0x1b646a4 | 
0x1d24064: bl       #0x1d24350 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$UnlockC9HiddenSongKeys
0x1d24078: bl       #0x1b64570 | 
0x1d240ac: bl       #0x1b646a4 | 
0x1d240b4: bl       #0x1d244dc | Phigros2.ChallengeMode.Scripts.SecretChallengeLifeRules$$ApplyAfterSuccess
0x1d24110: b        #0x1d24130 | 
0x1d24118: b        #0x1d24130 | 
0x1d24120: b        #0x1d24130 | 
0x1d24128: b        #0x1d24130 | 
0x1d24140: bl       #0x1db30e4 | IdBuilder$$BuildBlurBackgroundImageId
0x1d24160: bl       #0x1b646a4 | 
0x1d24170: bl       #0x1cc612c | SaveManagement$$LoadString
0x1d24184: bl       #0x1daeef8 | AddressableImageLoader$$set_Code
0x1d24194: bl       #0x1db30e4 | IdBuilder$$BuildBlurBackgroundImageId
0x1d241a8: bl       #0x1cc612c | SaveManagement$$LoadString
0x1d241bc: bl       #0x1daeef8 | AddressableImageLoader$$set_Code
0x1d241d0: bl       #0x1b64570 | 
0x1d24210: bl       #0x3e7309c | UnityEngine.UI.Selectable$$set_interactable
0x1d24224: bl       #0x1d245b0 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<Start>g__SetSecretChallengeResult|27_0
0x1d24248: bl       #0x1b647c8 | 
0x1d2424c: bl       #0x1b647d0 | 

// 0x1d24250 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$SetRating
0x1d24298: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d242a8: bl       #0x1b647c8 | 
0x1d242b8: bl       #0x1b647d0 | 

// 0x1d242bc Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$SetRatingWithScore
0x1d2432c: b        #0x1d24250 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$SetRating
0x1d24334: b        #0x1d24250 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$SetRating
0x1d2433c: b        #0x1d24250 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$SetRating
0x1d24344: b        #0x1d24250 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$SetRating
0x1d2434c: b        #0x1d24250 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$SetRating

// 0x1d24350 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$UnlockC9HiddenSongKeys
0x1d24374: bl       #0x1b64570 | 
0x1d24380: bl       #0x1b64570 | 
0x1d2438c: bl       #0x1b64570 | 
0x1d24398: bl       #0x1b64570 | 
0x1d243a0: ldr      x0, [x0, #0x490] | 0x418a490 'Chapter9UnlockBegin'
0x1d243a4: bl       #0x1b64570 | 
0x1d243bc: ldr      x19, [x19, #0x490] | 0x418a490 'Chapter9UnlockBegin'
0x1d243c4: bl       #0x1b646a4 | 
0x1d243d4: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d243f0: bl       #0x1b64570 | 
0x1d24448: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1d24468: bl       #0x1b646a4 | 
0x1d24470: bl       #0x1d246e4 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<UnlockC9HiddenSongKeys>g__TryUnlock|30_0
0x1d24484: bl       #0x1b64570 | 
0x1d244b8: bl       #0x1b646a4 | 
0x1d244c8: b        #0x1d246e4 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<UnlockC9HiddenSongKeys>g__TryUnlock|30_0
0x1d244d8: bl       #0x1b647c8 | 

// 0x1d245b0 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<Start>g__SetSecretChallengeResult|27_0
0x1d245d4: bl       #0x1b64570 | 
0x1d245f0: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d24618: bl       #0x1b646a4 | 
0x1d24620: bl       #0x1d246a0 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$HasHiddenChallengeSong
0x1d24628: b        #0x1d24630 | 
0x1d24644: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d24658: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d2466c: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d24678: bl       #0x1d25004 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<Start>g__SetLifeImage|27_1
0x1d24684: bl       #0x1d2516c | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<Start>g__SetBackground|27_2
0x1d24698: b        #0x1d251b4 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<Start>g__SetDamageText|27_3
0x1d2469c: bl       #0x1b647c8 | 

// 0x1d246a0 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$HasHiddenChallengeSong
0x1d246c8: bl       #0x3308894 | System.String$$IsNullOrEmpty
0x1d246d0: b        #0x1d246d8 | 

// 0x1d246e4 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<UnlockC9HiddenSongKeys>g__TryUnlock|30_0
0x1d24704: bl       #0x1b64570 | 
0x1d24710: bl       #0x1b64570 | 
0x1d2471c: bl       #0x1b64570 | 
0x1d24758: bl       #0x1b646a4 | 
0x1d24780: bl       #0x2a132c4 | System.Collections.Generic.Dictionary<object, object>$$TryGetValue
0x1d247a0: bl       #0x1b646a4 | 
0x1d247b0: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d247c8: bl       #0x1cc4f80 | SaveManagement$$SaveBool
0x1d247dc: bl       #0x1d0785c | Phigros2.Chapter9.Chapter9UnlockNavigation$$ApplyReturnToSelectMusicIfNeeded
0x1d247ec: bl       #0x1b647c8 | 

// 0x1d247f0 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$OpenRankWindow
0x1d24810: bl       #0x1b64570 | 
0x1d2483c: bl       #0x1b64570 | 
0x1d24878: b        #0x1d24928 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$Back
0x1d248d4: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d248e4: bl       #0x3478b00 | System.Int32$$ToString
0x1d2491c: b        #0x3c5ccc4 | UnityEngine.Behaviour$$set_enabled
0x1d24920: bl       #0x1b647c8 | 
0x1d24924: bl       #0x1b647d0 | 

// 0x1d24928 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$Back
0x1d24954: bl       #0x1b64570 | 
0x1d24960: bl       #0x1b64570 | 
0x1d2496c: bl       #0x1b64570 | 
0x1d24978: bl       #0x1b64570 | 
0x1d24984: bl       #0x1b64570 | 
0x1d2498c: ldr      x0, [x0, #0x308] | 0x418b308 'ChallengeModeRank'
0x1d24990: bl       #0x1b64570 | 
0x1d24998: ldr      x0, [x0, #0x698] | 0x4187698 'Loading'
0x1d2499c: bl       #0x1b64570 | 
0x1d249c8: bl       #0x1b64570 | 
0x1d24a0c: bl       #0x1b646a4 | 
0x1d24a14: ldr      x8, [x8, #0x308] | 0x418b308 'ChallengeModeRank'
0x1d24a28: bl       #0x1cc5034 | SaveManagement$$SaveInt
0x1d24a44: bl       #0x1b64570 | 
0x1d24a6c: ldr      x24, [x24, #0x698] | 0x4187698 'Loading'
0x1d24a78: bl       #0x1b646a4 | 
0x1d24a90: bl       #0x1d24b08 | Phigros2.ChallengeMode.Scripts.SecretChallengeLifeRules$$ClearRuntimeState
0x1d24a9c: bl       #0x1d24b88 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$TurnToNextScene
0x1d24aac: bl       #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1d24ac0: bl       #0x1b646a4 | 
0x1d24acc: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1d24b04: bl       #0x1b647c8 | 

// 0x1d24b88 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$TurnToNextScene
0x1d24bb8: bl       #0x1b64570 | 
0x1d24bc8: bl       #0x1b647b8 | 
0x1d24bd4: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d24bf4 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$Retry
0x1d24c18: bl       #0x1b64570 | 
0x1d24c24: bl       #0x1b64570 | 
0x1d24c30: bl       #0x1b64570 | 
0x1d24c3c: bl       #0x1b64570 | 
0x1d24c48: bl       #0x1b64570 | 
0x1d24c54: bl       #0x1b64570 | 
0x1d24c5c: ldr      x0, [x0, #0xc10] | 0x4187c10 'ChallengeMode'
0x1d24c60: bl       #0x1b64570 | 
0x1d24c80: bl       #0x1b64570 | 
0x1d24cec: ldr      x8, [x8, #0xc10] | 0x4187c10 'ChallengeMode'
0x1d24cf8: bl       #0x1d24b88 | Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$TurnToNextScene
0x1d24d08: bl       #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1d24d24: bl       #0x1b646a4 | 
0x1d24d38: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1d24d4c: bl       #0x1b64570 | 
0x1d24d88: bl       #0x1b64570 | 
0x1d24dc4: bl       #0x2e61324 | System.Collections.Generic.List<object>$$RemoveAt
0x1d24dcc: b        #0x1d24d7c | 
0x1d24de4: bl       #0x1b646a4 | 
0x1d24df8: b        #0x1d24e00 | Phigros2.ChallengeMode.Scripts.SecretChallengeLifeRules$$RestartRun
0x1d24dfc: bl       #0x1b647c8 | 

// 0x1d24eac Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl.<TurnToNextScene>d__35$$.ctor
0x1d24ec0: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d24ed4 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$.ctor
0x1d24ee0: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor

// 0x1d24ee4 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$.cctor
0x1d24f14: bl       #0x1b64570 | 
0x1d24f20: bl       #0x1b64570 | 
0x1d24f2c: bl       #0x1b64570 | 
0x1d24f38: bl       #0x1b64570 | 
0x1d24f40: ldr      x0, [x0, #0x650] | 0x418a650 'C9ExoplanetaryMirageUnlocked'
0x1d24f44: bl       #0x1b64570 | 
0x1d24f4c: ldr      x0, [x0, #0x560] | 0x418a560 'ExoplanetaryMirage.かめりあ.0'
0x1d24f50: bl       #0x1b64570 | 
0x1d24f58: ldr      x0, [x0, #0x310] | 0x418a310 'C9EntranceToTheChaosUnlocked'
0x1d24f5c: bl       #0x1b64570 | 
0x1d24f64: ldr      x0, [x0, #0x368] | 0x418a368 'EntrancetotheChaos.打打だいずvssiromaru.0'
0x1d24f68: bl       #0x1b64570 | 
0x1d24f78: bl       #0x1b647b8 | 
0x1d24f84: bl       #0x2a11200 | System.Collections.Generic.Dictionary<object, object>$$.ctor
0x1d24f98: ldr      x8, [x8, #0x560] | 0x418a560 'ExoplanetaryMirage.かめりあ.0'
0x1d24f9c: ldr      x9, [x9, #0x650] | 0x418a650 'C9ExoplanetaryMirageUnlocked'
0x1d24fbc: ldr      x21, [x21, #0x368] | 0x418a368 'EntrancetotheChaos.打打だいずvssiromaru.0'
0x1d24fc0: ldr      x22, [x22, #0x310] | 0x418a310 'C9EntranceToTheChaosUnlocked'
0x1d24fcc: bl       #0x2a11b54 | System.Collections.Generic.Dictionary<object, object>$$Add
0x1d24fe0: bl       #0x2a11b54 | System.Collections.Generic.Dictionary<object, object>$$Add
0x1d25000: bl       #0x1b647c8 | 

// 0x1d25004 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<Start>g__SetLifeImage|27_1
0x1d2502c: bl       #0x1b64570 | 
0x1d25038: bl       #0x1b64570 | 
0x1d25044: bl       #0x1b64570 | 
0x1d2504c: ldr      x0, [x0, #0xb88] | 0x4189b88 'LifeBadgeControl has no sprite configured for LIFE tier index {0}.'
0x1d25050: bl       #0x1b64570 | 
0x1d250a0: bl       #0x1b646a4 | 
0x1d250b0: bl       #0x3c619b8 | UnityEngine.Object$$op_Equality
0x1d250d0: ldr      x20, [x20, #0xb88] | 0x4189b88 'LifeBadgeControl has no sprite configured for LIFE tier index {0}.'
0x1d250dc: bl       #0x1b646ac | 
0x1d250f0: bl       #0x32faa44 | System.String$$Format
0x1d25108: bl       #0x1b646a4 | 
0x1d25118: bl       #0x3c25870 | UnityEngine.Debug$$LogWarning
0x1d25160: b        #0x3d01294 | UnityEngine.UI.Image$$set_sprite
0x1d25164: bl       #0x1b647c8 | 
0x1d25168: bl       #0x1b647d0 | 

// 0x1d2516c Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<Start>g__SetBackground|27_2
0x1d251a8: b        #0x3d01294 | UnityEngine.UI.Image$$set_sprite
0x1d251ac: bl       #0x1b647c8 | 
0x1d251b0: bl       #0x1b647d0 | 

// 0x1d251b4 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl$$<Start>g__SetDamageText|27_3
0x1d251dc: bl       #0x1b64570 | 
0x1d2520c: bl       #0x1b646a4 | 
0x1d25214: bl       #0x1d25268 | Phigros2.ChallengeMode.Scripts.SecretChallengeLifeRules$$GetLifeForTierIndex
0x1d25234: bl       #0x3478b00 | System.Int32$$ToString
0x1d25264: bl       #0x1b647c8 | 

// 0x1d252ec Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl.LevelOverComponent$$.ctor
0x1d252f0: b        #0x34c04f0 | System.Object$$.ctor

// 0x1d252f4 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl.<TurnToNextScene>d__35$$System.IDisposable.Dispose

// 0x1d252f8 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl.<TurnToNextScene>d__35$$MoveNext
0x1d25320: bl       #0x1b64570 | 
0x1d2532c: bl       #0x1b64570 | 
0x1d25338: bl       #0x1b64570 | 
0x1d25340: ldr      x0, [x0, #0xf00] | 0x4186f00 'TurnToScene'
0x1d25344: bl       #0x1b64570 | 
0x1d25388: bl       #0x1ca7ba4 | GameInformation$$set_ListenerVolume
0x1d253b8: bl       #0x1b646a4 | 
0x1d253c0: ldr      x8, [x8, #0xf00] | 0x4186f00 'TurnToScene'
0x1d253cc: bl       #0x3c75460 | UnityEngine.SceneManagement.SceneManager$$LoadScene
0x1d253d4: b        #0x1d25420 | 
0x1d253e4: bl       #0x1ca7ba4 | GameInformation$$set_ListenerVolume
0x1d253f0: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1d25410: bl       #0x1b646ac | 
0x1d25434: bl       #0x1b647c8 | 

// 0x1d25438 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl.<TurnToNextScene>d__35$$System.Collections.Generic.IEnumerator<System.Object>.get_Current

// 0x1d25440 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl.<TurnToNextScene>d__35$$System.Collections.IEnumerator.Reset
0x1d2544c: bl       #0x1b64584 | 
0x1d25450: bl       #0x1b647b8 | 
0x1d2545c: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1d25468: bl       #0x1b64584 | 
0x1d25474: bl       #0x1b64694 | 

// 0x1d25478 Phigros2.ChallengeMode.Scripts.ChallengeModeOverControl.<TurnToNextScene>d__35$$System.Collections.IEnumerator.get_Current

// 0x1d43044 DesultorySignalsIntroCanvasScaller$$OnEnable
0x1d43080: bl       #0x1b64570 | 
0x1d4308c: bl       #0x1b64570 | 
0x1d43098: bl       #0x1b64570 | 
0x1d430ac: bl       #0x1f49fe4 | UnityEngine.Component$$GetComponent<object>
0x1d430b8: bl       #0x1b647b8 | 
0x1d430cc: bl       #0x3e57424 | UnityEngine.Canvas.WillRenderCanvases$$.ctor
0x1d430d8: bl       #0x3e56310 | UnityEngine.Canvas$$add_willRenderCanvases
0x1d430ec: b        #0x1d430f0 | DesultorySignalsIntroCanvasScaller$$Apply

// 0x1d430f0 DesultorySignalsIntroCanvasScaller$$Apply
0x1d43114: bl       #0x1b64570 | 
0x1d43140: bl       #0x1b646a4 | 
0x1d43150: bl       #0x3c619b8 | UnityEngine.Object$$op_Equality
0x1d4315c: bl       #0x3c2bf0c | UnityEngine.Screen$$get_width
0x1d43168: bl       #0x3c2bf34 | UnityEngine.Screen$$get_height
0x1d431a0: b        #0x1d431c8 | 
0x1d431bc: b        #0x1d431c8 | 
0x1d431dc: bl       #0x3e565e0 | UnityEngine.Canvas$$get_scaleFactor
0x1d431f8: bl       #0x1b64570 | 
0x1d43268: bl       #0x3e5661c | UnityEngine.Canvas$$set_scaleFactor
0x1d4328c: b        #0x1d431d0 | 
0x1d43290: bl       #0x1b647c8 | 

// 0x1d43294 DesultorySignalsIntroCanvasScaller$$OnDisable
0x1d432c8: bl       #0x1b64570 | 
0x1d432d4: bl       #0x1b64570 | 
0x1d432e4: bl       #0x1b647b8 | 
0x1d432f8: bl       #0x3e57424 | UnityEngine.Canvas.WillRenderCanvases$$.ctor
0x1d43310: b        #0x3e563cc | UnityEngine.Canvas$$remove_willRenderCanvases

// 0x1d43314 DesultorySignalsIntroCanvasScaller$$.ctor
0x1d43318: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor

// 0x1d4331c DesultorySignalsIntroControl$$Start
0x1d43330: bl       #0x3e953dc | UnityEngine.Video.VideoPlayer$$Prepare
0x1d43340: bl       #0x3e953dc | UnityEngine.Video.VideoPlayer$$Prepare
0x1d43350: bl       #0x3e953dc | UnityEngine.Video.VideoPlayer$$Prepare
0x1d43360: bl       #0x3e953dc | UnityEngine.Video.VideoPlayer$$Prepare
0x1d43370: bl       #0x3e953dc | UnityEngine.Video.VideoPlayer$$Prepare
0x1d43380: bl       #0x3e953dc | UnityEngine.Video.VideoPlayer$$Prepare
0x1d43388: bl       #0x1d433bc | DesultorySignalsIntroControl$$ClearVideoRT
0x1d433a0: bl       #0x1d43410 | DesultorySignalsIntroControl$$MainVideoPlayer
0x1d433b4: b        #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1d433b8: bl       #0x1b647c8 | 

// 0x1d433bc DesultorySignalsIntroControl$$ClearVideoRT
0x1d433c8: bl       #0x3c4ca90 | UnityEngine.RenderTexture$$get_active
0x1d433dc: bl       #0x3c4cab8 | UnityEngine.RenderTexture$$set_active
0x1d433fc: bl       #0x3c2dac8 | UnityEngine.GL$$Clear
0x1d4340c: b        #0x3c4cab8 | UnityEngine.RenderTexture$$set_active

// 0x1d43410 DesultorySignalsIntroControl$$MainVideoPlayer
0x1d43438: bl       #0x1b64570 | 
0x1d43448: bl       #0x1b647b8 | 
0x1d43454: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d43470 DesultorySignalsIntroControl$$WaitUntilPrepared
0x1d434a0: bl       #0x1b64570 | 
0x1d434b0: bl       #0x1b647b8 | 
0x1d434bc: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d434dc DesultorySignalsIntroControl.<WaitUntilPrepared>d__14$$.ctor
0x1d434f0: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d43504 DesultorySignalsIntroControl$$WaitWhilePlaying
0x1d43540: bl       #0x1b64570 | 
0x1d43550: bl       #0x1b647b8 | 
0x1d4355c: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d43588 DesultorySignalsIntroControl.<WaitWhilePlaying>d__15$$.ctor
0x1d4359c: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d435b0 DesultorySignalsIntroControl.<MainVideoPlayer>d__16$$.ctor
0x1d435c4: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d435d8 DesultorySignalsIntroControl$$DiffSelectVideoPlayer
0x1d43600: bl       #0x1b64570 | 
0x1d43610: bl       #0x1b647b8 | 
0x1d4361c: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d43638 DesultorySignalsIntroControl.<DiffSelectVideoPlayer>d__20$$.ctor
0x1d4364c: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d43660 DesultorySignalsIntroControl$$ToggleLensDistortion
0x1d43688: bl       #0x1b64570 | 
0x1d43698: bl       #0x1b647b8 | 
0x1d436a4: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d436c0 DesultorySignalsIntroControl.<ToggleLensDistortion>d__21$$.ctor
0x1d436d4: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d436e8 DesultorySignalsIntroControl$$PlayDiffVideo
0x1d4370c: ldr      x0, [x0, #0x198] | 0x418c198 'hd'
0x1d43710: bl       #0x1b64570 | 
0x1d43718: ldr      x0, [x0, #0x1a0] | 0x418c1a0 'at'
0x1d4371c: bl       #0x1b64570 | 
0x1d43724: ldr      x0, [x0, #0x1a8] | 0x418c1a8 'in'
0x1d43728: bl       #0x1b64570 | 
0x1d43730: ldr      x0, [x0, #0x1b0] | 0x418c1b0 'ez'
0x1d43734: bl       #0x1b64570 | 
0x1d43774: bl       #0x3e7309c | UnityEngine.UI.Selectable$$set_interactable
0x1d4378c: ldr      x8, [x8, #0x1b0] | 0x418c1b0 'ez'
0x1d4379c: bl       #0x32fac7c | System.String$$op_Equality
0x1d437ac: b        #0x1d43830 | 
0x1d437b4: ldr      x8, [x8, #0x198] | 0x418c198 'hd'
0x1d437c4: bl       #0x32fac7c | System.String$$op_Equality
0x1d437d8: b        #0x1d43830 | 
0x1d437e0: ldr      x8, [x8, #0x1a8] | 0x418c1a8 'in'
0x1d437f0: bl       #0x32fac7c | System.String$$op_Equality
0x1d43804: b        #0x1d43830 | 
0x1d4380c: ldr      x8, [x8, #0x1a0] | 0x418c1a0 'at'
0x1d4381c: bl       #0x32fac7c | System.String$$op_Equality
0x1d43838: bl       #0x1d43870 | DesultorySignalsIntroControl$$DiffVideoPlayer
0x1d43854: b        #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1d43868: bl       #0x1b647d0 | 
0x1d4386c: bl       #0x1b647c8 | 

// 0x1d43870 DesultorySignalsIntroControl$$DiffVideoPlayer
0x1d438a0: bl       #0x1b64570 | 
0x1d438b0: bl       #0x1b647b8 | 
0x1d438bc: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d438dc DesultorySignalsIntroControl.<DiffVideoPlayer>d__24$$.ctor
0x1d438f0: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d43904 DesultorySignalsIntroControl$$NextScene
0x1d43930: bl       #0x1b64570 | 
0x1d4393c: bl       #0x1b64570 | 
0x1d43948: bl       #0x1b64570 | 
0x1d43950: ldr      x0, [x0, #0xf40] | 0x4188f40 'Level'
0x1d43954: bl       #0x1b64570 | 
0x1d43970: bl       #0x2ff57e8 | System.Nullable<int>$$.ctor
0x1d43980: bl       #0x1d1fbc4 | Phigros2.Chapter9.Phase2.Chapter9Phase2Session$$TryPrepareCurrentLevel
0x1d43998: bl       #0x1b64570 | 
0x1d439c8: bl       #0x3c2bf0c | UnityEngine.Screen$$get_width
0x1d439e4: bl       #0x1b64570 | 
0x1d43a00: bl       #0x3c2bf34 | UnityEngine.Screen$$get_height
0x1d43a20: bl       #0x1b64570 | 
0x1d43a54: bl       #0x1b646a4 | 
0x1d43a64: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1d43a70: bl       #0x3c463e0 | UnityEngine.Texture2D$$get_whiteTexture
0x1d43a84: bl       #0x3e6b424 | UnityEngine.UI.RawImage$$set_texture
0x1d43ab8: ldr      x19, [x19, #0xf40] | 0x4188f40 'Level'
0x1d43ac0: bl       #0x1cf5e5c | Phigros2.Chapter9.C9S6Unlock$$ArmFadeInFromBlack
0x1d43ad0: bl       #0x1b646a4 | 
0x1d43adc: bl       #0x3c75460 | UnityEngine.SceneManagement.SceneManager$$LoadScene
0x1d43af0: bl       #0x1b647c8 | 

// 0x1d43af4 DesultorySignalsIntroControl$$OnDestroy
0x1d43af4: b        #0x1d433bc | DesultorySignalsIntroControl$$ClearVideoRT

// 0x1d43af8 DesultorySignalsIntroControl$$.ctor
0x1d43afc: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor

// 0x1d43b00 DesultorySignalsIntroControl.<>c__DisplayClass20_0$$.ctor
0x1d43b04: b        #0x34c04f0 | System.Object$$.ctor

// 0x1d43b08 DesultorySignalsIntroControl.<>c__DisplayClass20_0$$<DiffSelectVideoPlayer>b__0
0x1d43b2c: bl       #0x3c60794 | UnityEngine.GameObject$$get_activeSelf
0x1d43b6c: b        #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d43b70: bl       #0x1b647c8 | 

// 0x1d43b74 DesultorySignalsIntroControl.<DiffSelectVideoPlayer>d__20$$System.IDisposable.Dispose

// 0x1d43b78 DesultorySignalsIntroControl.<DiffSelectVideoPlayer>d__20$$MoveNext
0x1d43ba0: bl       #0x1b64570 | 
0x1d43bac: bl       #0x1b64570 | 
0x1d43bb8: bl       #0x1b64570 | 
0x1d43bf4: bl       #0x1b647b8 | 
0x1d43c00: bl       #0x34c04f0 | System.Object$$.ctor
0x1d43c1c: bl       #0x1d433bc | DesultorySignalsIntroControl$$ClearVideoRT
0x1d43c2c: b        #0x1d43d30 | 
0x1d43c70: bl       #0x3e7309c | UnityEngine.UI.Selectable$$set_interactable
0x1d43c88: b        #0x1d43d30 | 
0x1d43ca4: bl       #0x3e95554 | UnityEngine.Video.VideoPlayer$$Play
0x1d43cac: bl       #0x1d43660 | DesultorySignalsIntroControl$$ToggleLensDistortion
0x1d43cbc: bl       #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1d43cec: bl       #0x1b647b8 | 
0x1d43d08: bl       #0x303503c | System.Action<double>$$.ctor
0x1d43d1c: bl       #0x1d43504 | DesultorySignalsIntroControl$$WaitWhilePlaying
0x1d43d44: bl       #0x1b647c8 | 
0x1d43d48: bl       #0x1b647d0 | 

// 0x1d43d4c DesultorySignalsIntroControl.<DiffSelectVideoPlayer>d__20$$System.Collections.Generic.IEnumerator<System.Object>.get_Current

// 0x1d43d54 DesultorySignalsIntroControl.<DiffSelectVideoPlayer>d__20$$System.Collections.IEnumerator.Reset
0x1d43d60: bl       #0x1b64584 | 
0x1d43d64: bl       #0x1b647b8 | 
0x1d43d70: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1d43d7c: bl       #0x1b64584 | 
0x1d43d88: bl       #0x1b64694 | 

// 0x1d43d8c DesultorySignalsIntroControl.<DiffSelectVideoPlayer>d__20$$System.Collections.IEnumerator.get_Current

// 0x1d43d94 DesultorySignalsIntroControl.<DiffVideoPlayer>d__24$$System.IDisposable.Dispose

// 0x1d43d98 DesultorySignalsIntroControl.<DiffVideoPlayer>d__24$$MoveNext
0x1d43dd8: bl       #0x3e955cc | UnityEngine.Video.VideoPlayer$$Stop
0x1d43de0: bl       #0x1d433bc | DesultorySignalsIntroControl$$ClearVideoRT
0x1d43df0: b        #0x1d43e64 | 
0x1d43e04: bl       #0x1d43904 | DesultorySignalsIntroControl$$NextScene
0x1d43e0c: b        #0x1d43e64 | 
0x1d43e24: bl       #0x3e95554 | UnityEngine.Video.VideoPlayer$$Play
0x1d43e3c: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d43e50: bl       #0x1d43504 | DesultorySignalsIntroControl$$WaitWhilePlaying
0x1d43e70: bl       #0x1b647c8 | 

// 0x1d43e74 DesultorySignalsIntroControl.<DiffVideoPlayer>d__24$$System.Collections.Generic.IEnumerator<System.Object>.get_Current

// 0x1d43e7c DesultorySignalsIntroControl.<DiffVideoPlayer>d__24$$System.Collections.IEnumerator.Reset
0x1d43e88: bl       #0x1b64584 | 
0x1d43e8c: bl       #0x1b647b8 | 
0x1d43e98: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1d43ea4: bl       #0x1b64584 | 
0x1d43eb0: bl       #0x1b64694 | 

// 0x1d43eb4 DesultorySignalsIntroControl.<DiffVideoPlayer>d__24$$System.Collections.IEnumerator.get_Current

// 0x1d43ebc DesultorySignalsIntroControl.<MainVideoPlayer>d__16$$System.IDisposable.Dispose

// 0x1d43ec0 DesultorySignalsIntroControl.<MainVideoPlayer>d__16$$MoveNext
0x1d43ee0: bl       #0x1b64570 | 
0x1d43f30: bl       #0x1d43470 | DesultorySignalsIntroControl$$WaitUntilPrepared
0x1d43f3c: b        #0x1d43fe0 | 
0x1d43f58: bl       #0x3e95418 | UnityEngine.Video.VideoPlayer$$get_isPrepared
0x1d43f6c: bl       #0x1b647b8 | 
0x1d43f7c: bl       #0x3c66cf4 | UnityEngine.WaitForSeconds$$.ctor
0x1d43f84: b        #0x1d43fe0 | 
0x1d43fa0: bl       #0x3e95554 | UnityEngine.Video.VideoPlayer$$Play
0x1d43fb4: bl       #0x1d43504 | DesultorySignalsIntroControl$$WaitWhilePlaying
0x1d43fc0: b        #0x1d43fe0 | 
0x1d43fd4: bl       #0x1d435d8 | DesultorySignalsIntroControl$$DiffSelectVideoPlayer
0x1d43ff8: bl       #0x1b647c8 | 

// 0x1d43ffc DesultorySignalsIntroControl.<MainVideoPlayer>d__16$$System.Collections.Generic.IEnumerator<System.Object>.get_Current

// 0x1d44004 DesultorySignalsIntroControl.<MainVideoPlayer>d__16$$System.Collections.IEnumerator.Reset
0x1d44010: bl       #0x1b64584 | 
0x1d44014: bl       #0x1b647b8 | 
0x1d44020: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1d4402c: bl       #0x1b64584 | 
0x1d44038: bl       #0x1b64694 | 

// 0x1d4403c DesultorySignalsIntroControl.<MainVideoPlayer>d__16$$System.Collections.IEnumerator.get_Current

// 0x1d44044 DesultorySignalsIntroControl.<ToggleLensDistortion>d__21$$System.IDisposable.Dispose

// 0x1d44048 DesultorySignalsIntroControl.<ToggleLensDistortion>d__21$$MoveNext
0x1d440a0: b        #0x1d4412c | 
0x1d4410c: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1d44124: b        #0x1d4412c | 
0x1d44138: bl       #0x1b647c8 | 

// 0x1d4413c DesultorySignalsIntroControl.<ToggleLensDistortion>d__21$$System.Collections.Generic.IEnumerator<System.Object>.get_Current

// 0x1d44144 DesultorySignalsIntroControl.<ToggleLensDistortion>d__21$$System.Collections.IEnumerator.Reset
0x1d44150: bl       #0x1b64584 | 
0x1d44154: bl       #0x1b647b8 | 
0x1d44160: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1d4416c: bl       #0x1b64584 | 
0x1d44178: bl       #0x1b64694 | 

// 0x1d4417c DesultorySignalsIntroControl.<ToggleLensDistortion>d__21$$System.Collections.IEnumerator.get_Current

// 0x1d44184 DesultorySignalsIntroControl.<WaitUntilPrepared>d__14$$System.IDisposable.Dispose

// 0x1d44188 DesultorySignalsIntroControl.<WaitUntilPrepared>d__14$$MoveNext
0x1d441b8: b        #0x1d441c4 | 
0x1d441d0: bl       #0x3e95418 | UnityEngine.Video.VideoPlayer$$get_isPrepared
0x1d441f0: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1d44208: b        #0x1d44210 | 
0x1d44220: bl       #0x1b647c8 | 

// 0x1d44224 DesultorySignalsIntroControl.<WaitUntilPrepared>d__14$$System.Collections.Generic.IEnumerator<System.Object>.get_Current

// 0x1d4422c DesultorySignalsIntroControl.<WaitUntilPrepared>d__14$$System.Collections.IEnumerator.Reset
0x1d44238: bl       #0x1b64584 | 
0x1d4423c: bl       #0x1b647b8 | 
0x1d44248: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1d44254: bl       #0x1b64584 | 
0x1d44260: bl       #0x1b64694 | 

// 0x1d44264 DesultorySignalsIntroControl.<WaitUntilPrepared>d__14$$System.Collections.IEnumerator.get_Current

// 0x1d4426c DesultorySignalsIntroControl.<WaitWhilePlaying>d__15$$System.IDisposable.Dispose

// 0x1d44270 DesultorySignalsIntroControl.<WaitWhilePlaying>d__15$$MoveNext
0x1d442a8: b        #0x1d442d0 | 
0x1d442b4: b        #0x1d44310 | 
0x1d442dc: bl       #0x3e95608 | UnityEngine.Video.VideoPlayer$$get_isPlaying
0x1d442f0: bl       #0x3e95608 | UnityEngine.Video.VideoPlayer$$get_isPlaying
0x1d44304: bl       #0x3e956bc | UnityEngine.Video.VideoPlayer$$get_time
0x1d4431c: bl       #0x3e95608 | UnityEngine.Video.VideoPlayer$$get_isPlaying
0x1d44330: bl       #0x3e956bc | UnityEngine.Video.VideoPlayer$$get_time
0x1d44378: b        #0x1d443c4 | 
0x1d44384: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1d4439c: b        #0x1d443dc | 
0x1d443a8: bl       #0x3c68994 | UnityEngine.Time$$get_unscaledDeltaTime
0x1d443d4: b        #0x1d443dc | 
0x1d443ec: bl       #0x1b647c8 | 

// 0x1d443f0 DesultorySignalsIntroControl.<WaitWhilePlaying>d__15$$System.Collections.Generic.IEnumerator<System.Object>.get_Current

// 0x1d443f8 DesultorySignalsIntroControl.<WaitWhilePlaying>d__15$$System.Collections.IEnumerator.Reset
0x1d44404: bl       #0x1b64584 | 
0x1d44408: bl       #0x1b647b8 | 
0x1d44414: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1d44420: bl       #0x1b64584 | 
0x1d4442c: bl       #0x1b64694 | 

// 0x1d44430 DesultorySignalsIntroControl.<WaitWhilePlaying>d__15$$System.Collections.IEnumerator.get_Current

// 0x1d45c88 DesultorySignalsLevelEffects$$SortSlashes
0x1d45cb8: bl       #0x1b64570 | 
0x1d45cc4: bl       #0x1b64570 | 
0x1d45cd0: bl       #0x1b64570 | 
0x1d45cdc: bl       #0x1b64570 | 
0x1d45ce8: bl       #0x1b64570 | 
0x1d45cf4: bl       #0x1b64570 | 
0x1d45d00: bl       #0x1b64570 | 
0x1d45d0c: bl       #0x1b64570 | 
0x1d45d18: bl       #0x1b64570 | 
0x1d45d34: bl       #0x1b646a4 | 
0x1d45d60: bl       #0x1b646a4 | 
0x1d45d7c: bl       #0x1b647b8 | 
0x1d45d98: bl       #0x2c569ec | System.Func<object, float>$$.ctor
0x1d45db4: bl       #0x1f7527c | System.Linq.Enumerable$$OrderBy<object, float>
0x1d45dbc: bl       #0x1f80630 | System.Linq.Enumerable$$ToList<object>
0x1d45dd4: bl       #0x1b646a4 | 
0x1d45df0: bl       #0x1b646a4 | 
0x1d45e0c: bl       #0x1b647b8 | 
0x1d45e28: bl       #0x2c569ec | System.Func<object, float>$$.ctor
0x1d45e44: bl       #0x1f7527c | System.Linq.Enumerable$$OrderBy<object, float>
0x1d45e4c: bl       #0x1f80630 | System.Linq.Enumerable$$ToList<object>
0x1d45e64: bl       #0x1b646a4 | 
0x1d45e80: bl       #0x1b646a4 | 
0x1d45e9c: bl       #0x1b647b8 | 
0x1d45eb8: bl       #0x2c569ec | System.Func<object, float>$$.ctor
0x1d45ed4: bl       #0x1f7527c | System.Linq.Enumerable$$OrderBy<object, float>
0x1d45edc: bl       #0x1f80630 | System.Linq.Enumerable$$ToList<object>
0x1d45ef4: bl       #0x1b646a4 | 
0x1d45f10: bl       #0x1b646a4 | 
0x1d45f2c: bl       #0x1b647b8 | 
0x1d45f48: bl       #0x2c569ec | System.Func<object, float>$$.ctor
0x1d45f64: bl       #0x1f7527c | System.Linq.Enumerable$$OrderBy<object, float>
0x1d45f6c: bl       #0x1f80630 | System.Linq.Enumerable$$ToList<object>
0x1d45f84: bl       #0x1b646a4 | 
0x1d45fa0: bl       #0x1b646a4 | 
0x1d45fbc: bl       #0x1b647b8 | 
0x1d45fd8: bl       #0x2c569ec | System.Func<object, float>$$.ctor
0x1d45ff4: bl       #0x1f7527c | System.Linq.Enumerable$$OrderBy<object, float>
0x1d45ffc: bl       #0x1f80630 | System.Linq.Enumerable$$ToList<object>

// 0x1d46018 DesultorySignalsLevelEffects$$Start
0x1d46040: bl       #0x1b64570 | 
0x1d4604c: bl       #0x1b64570 | 
0x1d46058: bl       #0x1b64570 | 
0x1d46068: bl       #0x3c22cb4 | UnityEngine.Camera$$get_main
0x1d46080: bl       #0x1b646a4 | 
0x1d46090: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1d460a4: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1d460b4: bl       #0x1f4af4c | VoxelBusters.Utility.ComponentExtensions$$AddComponentIfNotFound<object>
0x1d460d0: bl       #0x3e56ff0 | UnityEngine.Canvas$$set_worldCamera
0x1d460d8: bl       #0x1d46210 | DesultorySignalsLevelEffects$$GetUIElements
0x1d460e0: bl       #0x1d46368 | DesultorySignalsLevelEffects$$HideUIElements
0x1d460f8: bl       #0x1b64570 | 
0x1d46134: bl       #0x1dc03b8 | PostProcessingManager$$ClearEffects
0x1d46140: bl       #0x1d4647c | DesultorySignalsLevelEffects$$AddEffect
0x1d4614c: bl       #0x1d4647c | DesultorySignalsLevelEffects$$AddEffect
0x1d46158: bl       #0x1d4647c | DesultorySignalsLevelEffects$$AddEffect
0x1d46164: bl       #0x1d4647c | DesultorySignalsLevelEffects$$AddEffect
0x1d46170: bl       #0x1d4647c | DesultorySignalsLevelEffects$$AddEffect
0x1d4617c: bl       #0x1d4647c | DesultorySignalsLevelEffects$$AddEffect
0x1d46188: bl       #0x1d4647c | DesultorySignalsLevelEffects$$AddEffect
0x1d46194: bl       #0x3c5d744 | UnityEngine.Component$$get_transform
0x1d461a8: bl       #0x1f4a6a0 | UnityEngine.Component$$GetComponentInParent<object>
0x1d461dc: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1d461f4: bl       #0x1b646a4 | 
0x1d46208: b        #0x3c652c4 | UnityEngine.Object$$Destroy
0x1d4620c: bl       #0x1b647c8 | 

// 0x1d46210 DesultorySignalsLevelEffects$$GetUIElements
0x1d4623c: ldr      x22, [x22, #0xa8] | 0x41890a8 'Pause'
0x1d46240: ldr      x24, [x24, #0xd8] | 0x41890d8 'Progress Bar'
0x1d46244: ldr      x23, [x23, #0x1f0] | 0x41881f0 'Score'
0x1d46248: ldr      x21, [x21, #0xb8] | 0x41890b8 'SongsLevel'
0x1d4624c: ldr      x20, [x20, #0xf0] | 0x41890f0 'SongsName'
0x1d46260: bl       #0x1b64570 | 
0x1d46268: ldr      x0, [x0, #0x60] | 0x4189060 'Combo'
0x1d4626c: bl       #0x1b64570 | 
0x1d46274: ldr      x0, [x0, #0x1f0] | 0x41881f0 'Score'
0x1d46278: bl       #0x1b64570 | 
0x1d46280: ldr      x0, [x0, #0x98] | 0x4189098 'ComboText'
0x1d46284: bl       #0x1b64570 | 
0x1d4628c: ldr      x0, [x0, #0xa8] | 0x41890a8 'Pause'
0x1d46290: bl       #0x1b64570 | 
0x1d46298: ldr      x0, [x0, #0xb8] | 0x41890b8 'SongsLevel'
0x1d4629c: bl       #0x1b64570 | 
0x1d462a4: ldr      x0, [x0, #0xd8] | 0x41890d8 'Progress Bar'
0x1d462a8: bl       #0x1b64570 | 
0x1d462b0: ldr      x0, [x0, #0xf0] | 0x41890f0 'SongsName'
0x1d462b4: bl       #0x1b64570 | 
0x1d462cc: ldr      x25, [x25, #0x60] | 0x4189060 'Combo'
0x1d462d0: ldr      x22, [x22, #0x98] | 0x4189098 'ComboText'
0x1d462d8: bl       #0x3c60e1c | UnityEngine.GameObject$$Find
0x1d462e8: bl       #0x3c60e1c | UnityEngine.GameObject$$Find
0x1d462f8: bl       #0x3c60e1c | UnityEngine.GameObject$$Find
0x1d46308: bl       #0x3c60e1c | UnityEngine.GameObject$$Find
0x1d46318: bl       #0x3c60e1c | UnityEngine.GameObject$$Find
0x1d4632c: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1d4633c: bl       #0x3c60e1c | UnityEngine.GameObject$$Find
0x1d4634c: bl       #0x3c60e1c | UnityEngine.GameObject$$Find

// 0x1d46368 DesultorySignalsLevelEffects$$HideUIElements
0x1d46388: bl       #0x1b64570 | 
0x1d463a4: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d463b8: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d463cc: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d463e0: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d463f4: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d46410: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d46424: bl       #0x1b646a4 | 
0x1d46434: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1d46478: bl       #0x1b647c8 | 

// 0x1d4647c DesultorySignalsLevelEffects$$AddEffect
0x1d464ac: bl       #0x1b64570 | 
0x1d464c4: bl       #0x1b646a4 | 
0x1d464d4: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1d464f8: b        #0x1db0084 | PostProcessingManager$$AddEffects
0x1d4650c: bl       #0x1b647c8 | 

// 0x1d46510 DesultorySignalsLevelEffects$$Update
0x1d4652c: bl       #0x1d465b8 | DesultorySignalsLevelEffects$$UpdateEffects
0x1d46558: bl       #0x3c18a20 | UnityEngine.AudioSource$$get_isPlaying
0x1d46598: bl       #0x1d46950 | DesultorySignalsLevelEffects$$CompleteAfterDelay
0x1d465b0: b        #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1d465b4: bl       #0x1b647c8 | 

// 0x1d465b8 DesultorySignalsLevelEffects$$UpdateEffects
0x1d465ec: bl       #0x1b64570 | 
0x1d4660c: bl       #0x1b646a4 | 
0x1d46638: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d46670: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d466a8: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d466e0: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d46718: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d46750: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d46784: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d467d0: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d46808: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d46840: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d46878: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d46904: bl       #0x1b646a4 | 
0x1d46924: bl       #0x3c3881c | UnityEngine.Material$$SetFloat
0x1d46948: b        #0x1d46a00 | DesultorySignalsLevelEffects$$UpdateSlashInfo
0x1d4694c: bl       #0x1b647c8 | 

// 0x1d46950 DesultorySignalsLevelEffects$$CompleteAfterDelay
0x1d46978: bl       #0x1b64570 | 
0x1d46988: bl       #0x1b647b8 | 
0x1d46994: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d469b0 DesultorySignalsLevelEffects.<CompleteAfterDelay>d__50$$.ctor
0x1d469c4: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d469d8 DesultorySignalsLevelEffects$$Evaluate
0x1d469f4: b        #0x1d2e02c | AnimationDirector$$Evaluate

// 0x1d46a00 DesultorySignalsLevelEffects$$UpdateSlashInfo
0x1d46a2c: bl       #0x1b64570 | 
0x1d46a38: bl       #0x1b64570 | 
0x1d46a64: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1d46a80: bl       #0x1b646a4 | 
0x1d46a8c: bl       #0x1d46bbc | DesultorySignalsLevelEffects$$GetSlashInfo
0x1d46aa0: bl       #0x1d46d18 | DesultorySignalsLevelEffects$$ApplySlash
0x1d46ab4: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1d46ac8: bl       #0x1d46bbc | DesultorySignalsLevelEffects$$GetSlashInfo
0x1d46adc: bl       #0x1d46d18 | DesultorySignalsLevelEffects$$ApplySlash
0x1d46af0: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1d46b04: bl       #0x1d46bbc | DesultorySignalsLevelEffects$$GetSlashInfo
0x1d46b18: bl       #0x1d46d18 | DesultorySignalsLevelEffects$$ApplySlash
0x1d46b2c: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1d46b40: bl       #0x1d46bbc | DesultorySignalsLevelEffects$$GetSlashInfo
0x1d46b54: bl       #0x1d46d18 | DesultorySignalsLevelEffects$$ApplySlash
0x1d46b68: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1d46b7c: bl       #0x1d46bbc | DesultorySignalsLevelEffects$$GetSlashInfo
0x1d46b90: bl       #0x1d46d18 | DesultorySignalsLevelEffects$$ApplySlash
0x1d46bb8: bl       #0x1b647c8 | 

// 0x1d46bbc DesultorySignalsLevelEffects$$GetSlashInfo
0x1d46bf0: bl       #0x1b64570 | 
0x1d46bfc: bl       #0x1b64570 | 
0x1d46c08: bl       #0x1b64570 | 
0x1d46c14: bl       #0x1b64570 | 
0x1d46c20: bl       #0x1b64570 | 
0x1d46c2c: bl       #0x1b64570 | 
0x1d46c38: bl       #0x1b64570 | 
0x1d46c48: bl       #0x1b647b8 | 
0x1d46c54: bl       #0x34c04f0 | System.Object$$.ctor
0x1d46c80: bl       #0x1b647b8 | 
0x1d46c9c: bl       #0x3085d78 | System.Predicate<object>$$.ctor
0x1d46cb4: bl       #0x2e60578 | System.Collections.Generic.List<object>$$FindLastIndex
0x1d46ce0: b        #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1d46cf0: bl       #0x1b646a4 | 
0x1d46d14: bl       #0x1b647c8 | 

// 0x1d46d18 DesultorySignalsLevelEffects$$ApplySlash
0x1d46d4c: bl       #0x1b64570 | 
0x1d46d8c: bl       #0x1b646a4 | 
0x1d46db8: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d46dd4: bl       #0x1b647c8 | 

// 0x1d46dd8 DesultorySignalsLevelEffects.<>c__DisplayClass58_0$$.ctor
0x1d46ddc: b        #0x34c04f0 | System.Object$$.ctor

// 0x1d46de0 DesultorySignalsLevelEffects$$OnDestroy
0x1d46e00: bl       #0x1b64570 | 
0x1d46e58: bl       #0x1b646a4 | 
0x1d46e80: b        #0x3c3881c | UnityEngine.Material$$SetFloat
0x1d46e84: bl       #0x1b647c8 | 

// 0x1d46e88 DesultorySignalsLevelEffects$$.ctor
0x1d46ec4: bl       #0x1b64570 | 
0x1d46ed0: bl       #0x1b64570 | 
0x1d46edc: bl       #0x1b64570 | 
0x1d46ee8: bl       #0x1b64570 | 
0x1d46f04: bl       #0x1b647b8 | 
0x1d46f10: bl       #0x2e5f474 | System.Collections.Generic.List<object>$$.ctor
0x1d46f18: bl       #0x1b647b8 | 
0x1d46f24: bl       #0x1dbc054 | DimensionSlashSettings.Slash$$.ctor
0x1d46f6c: b        #0x1d46f88 | 
0x1d46f84: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1d46f8c: bl       #0x1b647b8 | 
0x1d46f98: bl       #0x1dbc054 | DimensionSlashSettings.Slash$$.ctor
0x1d46fd4: b        #0x1d46ff0 | 
0x1d46fec: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1d46ff4: bl       #0x1b647b8 | 
0x1d47000: bl       #0x1dbc054 | DimensionSlashSettings.Slash$$.ctor
0x1d4703c: b        #0x1d47058 | 
0x1d47054: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1d4705c: bl       #0x1b647b8 | 
0x1d47068: bl       #0x1dbc054 | DimensionSlashSettings.Slash$$.ctor
0x1d470a4: b        #0x1d470c0 | 
0x1d470bc: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1d470c4: bl       #0x1b647b8 | 
0x1d470d0: bl       #0x1dbc054 | DimensionSlashSettings.Slash$$.ctor
0x1d4710c: b        #0x1d47128 | 
0x1d47124: bl       #0x2e5fc40 | System.Collections.Generic.List<object>$$AddWithResize
0x1d47140: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor
0x1d47144: bl       #0x1b647c8 | 

// 0x1d47148 DesultorySignalsLevelEffects$$.cctor
0x1d47168: ldr      x22, [x22, #0x3f0] | 0x418c3f0 '_ScaleSpeed'
0x1d47180: bl       #0x1b64570 | 
0x1d4718c: bl       #0x1b64570 | 
0x1d47194: ldr      x0, [x0, #0x3f0] | 0x418c3f0 '_ScaleSpeed'
0x1d47198: bl       #0x1b64570 | 
0x1d471ac: bl       #0x3c2f22c | UnityEngine.Shader$$PropertyToID
0x1d471c0: bl       #0x1b647b8 | 
0x1d471cc: bl       #0x34c04f0 | System.Object$$.ctor
0x1d471ec: bl       #0x1b64570 | 
0x1d47230: bl       #0x1b647c8 | 

// 0x1d47234 DesultorySignalsLevelEffects.SlashInfo$$.ctor
0x1d47238: b        #0x34c04f0 | System.Object$$.ctor

// 0x1d4723c DesultorySignalsLevelEffects.<>c$$.cctor
0x1d47260: bl       #0x1b64570 | 
0x1d47270: bl       #0x1b647b8 | 
0x1d4727c: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d47298 DesultorySignalsLevelEffects.<>c$$.ctor
0x1d4729c: b        #0x34c04f0 | System.Object$$.ctor

// 0x1d472a0 DesultorySignalsLevelEffects.<>c$$<SortSlashes>b__36_0
0x1d472b4: bl       #0x1b647c8 | 

// 0x1d472b8 DesultorySignalsLevelEffects.<>c$$<SortSlashes>b__36_1
0x1d472cc: bl       #0x1b647c8 | 

// 0x1d472d0 DesultorySignalsLevelEffects.<>c$$<SortSlashes>b__36_2
0x1d472e4: bl       #0x1b647c8 | 

// 0x1d472e8 DesultorySignalsLevelEffects.<>c$$<SortSlashes>b__36_3
0x1d472fc: bl       #0x1b647c8 | 

// 0x1d47300 DesultorySignalsLevelEffects.<>c$$<SortSlashes>b__36_4
0x1d47314: bl       #0x1b647c8 | 

// 0x1d47318 DesultorySignalsLevelEffects.<>c__DisplayClass58_0$$<GetSlashInfo>b__0
0x1d47338: bl       #0x1b647c8 | 

// 0x1d4733c DesultorySignalsLevelEffects.<CompleteAfterDelay>d__50$$System.IDisposable.Dispose

// 0x1d47340 DesultorySignalsLevelEffects.<CompleteAfterDelay>d__50$$MoveNext
0x1d47360: bl       #0x1b64570 | 
0x1d47390: bl       #0x1b647b8 | 
0x1d473a0: bl       #0x3c66df0 | UnityEngine.WaitForSecondsRealtime$$.ctor
0x1d473b0: b        #0x1d473e8 | 
0x1d473e0: b        #0x1d473e8 | 
0x1d473f4: bl       #0x1b647c8 | 

// 0x1d473f8 DesultorySignalsLevelEffects.<CompleteAfterDelay>d__50$$System.Collections.Generic.IEnumerator<System.Object>.get_Current

// 0x1d47400 DesultorySignalsLevelEffects.<CompleteAfterDelay>d__50$$System.Collections.IEnumerator.Reset
0x1d4740c: bl       #0x1b64584 | 
0x1d47410: bl       #0x1b647b8 | 
0x1d4741c: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1d47428: bl       #0x1b64584 | 
0x1d47434: bl       #0x1b64694 | 

// 0x1d47438 DesultorySignalsLevelEffects.<CompleteAfterDelay>d__50$$System.Collections.IEnumerator.get_Current

// 0x1d485c4 HateLevelEffects$$Start
0x1d485ec: bl       #0x1b64570 | 
0x1d485f8: bl       #0x1b64570 | 
0x1d48604: bl       #0x1b64570 | 
0x1d48614: bl       #0x3c22cb4 | UnityEngine.Camera$$get_main
0x1d4862c: bl       #0x1b646a4 | 
0x1d4863c: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1d48650: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1d48660: bl       #0x1f4af4c | VoxelBusters.Utility.ComponentExtensions$$AddComponentIfNotFound<object>
0x1d4867c: bl       #0x3e56ff0 | UnityEngine.Canvas$$set_worldCamera
0x1d4868c: bl       #0x1dc03b8 | PostProcessingManager$$ClearEffects
0x1d48698: bl       #0x1d487a4 | HateLevelEffects$$AddEffect
0x1d486a4: bl       #0x1d487a4 | HateLevelEffects$$AddEffect
0x1d486b0: bl       #0x1d487a4 | HateLevelEffects$$AddEffect
0x1d486bc: bl       #0x1d487a4 | HateLevelEffects$$AddEffect
0x1d486c8: bl       #0x1d487a4 | HateLevelEffects$$AddEffect
0x1d486d4: bl       #0x3c5d744 | UnityEngine.Component$$get_transform
0x1d486e8: bl       #0x1f4a6a0 | UnityEngine.Component$$GetComponentInParent<object>
0x1d4870c: bl       #0x1d48838 | HateLevelEffects$$GetUIElements
0x1d48714: bl       #0x1d48990 | HateLevelEffects$$HideUIElements
0x1d4872c: bl       #0x1b64570 | 
0x1d48770: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1d48788: bl       #0x1b646a4 | 
0x1d4879c: b        #0x3c652c4 | UnityEngine.Object$$Destroy
0x1d487a0: bl       #0x1b647c8 | 

// 0x1d487a4 HateLevelEffects$$AddEffect
0x1d487d4: bl       #0x1b64570 | 
0x1d487ec: bl       #0x1b646a4 | 
0x1d487fc: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1d48820: b        #0x1db0084 | PostProcessingManager$$AddEffects
0x1d48834: bl       #0x1b647c8 | 

// 0x1d48838 HateLevelEffects$$GetUIElements
0x1d48864: ldr      x22, [x22, #0xa8] | 0x41890a8 'Pause'
0x1d48868: ldr      x24, [x24, #0xd8] | 0x41890d8 'Progress Bar'
0x1d4886c: ldr      x23, [x23, #0x1f0] | 0x41881f0 'Score'
0x1d48870: ldr      x21, [x21, #0xb8] | 0x41890b8 'SongsLevel'
0x1d48874: ldr      x20, [x20, #0xf0] | 0x41890f0 'SongsName'
0x1d48888: bl       #0x1b64570 | 
0x1d48890: ldr      x0, [x0, #0x60] | 0x4189060 'Combo'
0x1d48894: bl       #0x1b64570 | 
0x1d4889c: ldr      x0, [x0, #0x1f0] | 0x41881f0 'Score'
0x1d488a0: bl       #0x1b64570 | 
0x1d488a8: ldr      x0, [x0, #0x98] | 0x4189098 'ComboText'
0x1d488ac: bl       #0x1b64570 | 
0x1d488b4: ldr      x0, [x0, #0xa8] | 0x41890a8 'Pause'
0x1d488b8: bl       #0x1b64570 | 
0x1d488c0: ldr      x0, [x0, #0xb8] | 0x41890b8 'SongsLevel'
0x1d488c4: bl       #0x1b64570 | 
0x1d488cc: ldr      x0, [x0, #0xd8] | 0x41890d8 'Progress Bar'
0x1d488d0: bl       #0x1b64570 | 
0x1d488d8: ldr      x0, [x0, #0xf0] | 0x41890f0 'SongsName'
0x1d488dc: bl       #0x1b64570 | 
0x1d488f4: ldr      x25, [x25, #0x60] | 0x4189060 'Combo'
0x1d488f8: ldr      x22, [x22, #0x98] | 0x4189098 'ComboText'
0x1d48900: bl       #0x3c60e1c | UnityEngine.GameObject$$Find
0x1d48910: bl       #0x3c60e1c | UnityEngine.GameObject$$Find
0x1d48920: bl       #0x3c60e1c | UnityEngine.GameObject$$Find
0x1d48930: bl       #0x3c60e1c | UnityEngine.GameObject$$Find
0x1d48940: bl       #0x3c60e1c | UnityEngine.GameObject$$Find
0x1d48954: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1d48964: bl       #0x3c60e1c | UnityEngine.GameObject$$Find
0x1d48974: bl       #0x3c60e1c | UnityEngine.GameObject$$Find

// 0x1d48990 HateLevelEffects$$HideUIElements
0x1d489b0: bl       #0x1b64570 | 
0x1d489cc: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d489e0: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d489f4: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d48a08: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d48a1c: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d48a38: bl       #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1d48a4c: bl       #0x1b646a4 | 
0x1d48a5c: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1d48aa0: bl       #0x1b647c8 | 

// 0x1d48aa4 HateLevelEffects$$Update
0x1d48ac0: bl       #0x1d48b24 | HateLevelEffects$$UpdateEffects
0x1d48aec: bl       #0x3c18a20 | UnityEngine.AudioSource$$get_isPlaying
0x1d48b20: bl       #0x1b647c8 | 

// 0x1d48b24 HateLevelEffects$$UpdateEffects
0x1d48b64: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d48b9c: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d48bd4: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d48c0c: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d48c44: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d48c7c: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d48cb4: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d48cec: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d48d24: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d48d5c: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d48d94: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d48dcc: bl       #0x1d2e02c | AnimationDirector$$Evaluate
0x1d48e04: bl       #0x1b647c8 | 

// 0x1d48e08 HateLevelEffects$$Evaluate
0x1d48e24: b        #0x1d2e02c | AnimationDirector$$Evaluate

// 0x1d48e30 HateLevelEffects$$.ctor
0x1d48e3c: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor

// 0x1d8a734 EvanescentExitEvent$$TryBegin
0x1d8a760: bl       #0x1b64570 | 
0x1d8a76c: bl       #0x1b64570 | 
0x1d8a778: bl       #0x1b64570 | 
0x1d8a784: bl       #0x1b64570 | 
0x1d8a78c: ldr      x0, [x0, #0x140] | 0x418e140 'SongDetailCanvas failed to start the Evanescent presentation.'
0x1d8a790: bl       #0x1b64570 | 
0x1d8a798: ldr      x0, [x0, #0x148] | 0x418e148 'SongDetailCanvas is missing one or more Evanescent auto-play presenter references.'
0x1d8a79c: bl       #0x1b64570 | 
0x1d8a7a4: ldr      x0, [x0, #0x568] | 0x418a568 'Evanescent.LeaF.0'
0x1d8a7a8: bl       #0x1b64570 | 
0x1d8a7f8: bl       #0x1b646a4 | 
0x1d8a804: bl       #0x3c64618 | UnityEngine.Object$$op_Implicit
0x1d8a83c: bl       #0x1b64570 | 
0x1d8a868: ldr      x8, [x8, #0x568] | 0x418a568 'Evanescent.LeaF.0'
0x1d8a874: bl       #0x1ca8974 | GameInformation$$GetSongInformation
0x1d8a87c: bl       #0x1d8aa80 | EvanescentExitEvent$$GetPlayableLevelCount
0x1d8a898: bl       #0x1cdcb6c | Assets.Phigros2.Utils.Tools$$DifficultyToIndex
0x1d8a8a8: b        #0x1d8a8b0 | 
0x1d8a8bc: bl       #0x1cb8b38 | SongsItem$$GetLevelStartInfo
0x1d8a8e0: bl       #0x1b646a4 | 
0x1d8a8f4: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1d8a904: bl       #0x3c619b8 | UnityEngine.Object$$op_Equality
0x1d8a918: bl       #0x1d3d9b0 | SongDetailAutoPlayPresenter$$get_IsConfigured
0x1d8a930: bl       #0x1d3dc28 | SongDetailAutoPlayPresenter$$Begin
0x1d8a950: bl       #0x1b64570 | 
0x1d8a99c: b        #0x1d8a7c0 | 
0x1d8a9ac: bl       #0x1b646a4 | 
0x1d8a9bc: bl       #0x3c60058 | UnityEngine.Object$$op_Inequality
0x1d8a9d0: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1d8a9e8: bl       #0x1b646a4 | 
0x1d8a9f4: bl       #0x3c652c4 | UnityEngine.Object$$Destroy
0x1d8aa0c: bl       #0x1b646a4 | 
0x1d8aa14: ldr      x8, [x8, #0x148] | 0x418e148 'SongDetailCanvas is missing one or more Evanescent auto-play presenter references.'
0x1d8aa20: bl       #0x3c25308 | UnityEngine.Debug$$LogError
0x1d8aa24: b        #0x1d8a7bc | 
0x1d8aa30: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1d8aa48: bl       #0x1b646a4 | 
0x1d8aa54: bl       #0x3c652c4 | UnityEngine.Object$$Destroy
0x1d8aa6c: bl       #0x1b646a4 | 
0x1d8aa74: ldr      x8, [x8, #0x140] | 0x418e140 'SongDetailCanvas failed to start the Evanescent presentation.'
0x1d8aa78: b        #0x1d8aa18 | 
0x1d8aa7c: bl       #0x1b647c8 | 

// 0x1d8aa80 EvanescentExitEvent$$GetPlayableLevelCount
0x1d8ab04: bl       #0x3308894 | System.String$$IsNullOrEmpty
0x1d8ab20: bl       #0x1b647c8 | 
0x1d8ab40: b        #0x1d8ab28 | 
0x1d8ab44: bl       #0x1b647d0 | 

// 0x1d8ab48 EvanescentExitEvent$$ResolveTargetDifficultyIndex
0x1d8ab60: bl       #0x1cdcb6c | Assets.Phigros2.Utils.Tools$$DifficultyToIndex
0x1d8ab70: b        #0x1d8ab78 | 

// 0x1d8ab84 EvanescentExitEvent$$Start
0x1d8aba8: bl       #0x1b64570 | 
0x1d8abb4: bl       #0x1b64570 | 
0x1d8abc0: bl       #0x1b64570 | 
0x1d8abc8: ldr      x0, [x0, #0x308] | 0x418a308 'C9EvanescentUnlocked'
0x1d8abcc: bl       #0x1b64570 | 
0x1d8abd4: ldr      x0, [x0, #0x620] | 0x418a620 'poyidomejiu0'
0x1d8abd8: bl       #0x1b64570 | 
0x1d8abe0: ldr      x0, [x0, #0x2d8] | 0x41852d8 ''
0x1d8abe4: bl       #0x1b64570 | 
0x1d8ac04: bl       #0x1b64570 | 
0x1d8ac34: ldr      x8, [x8, #0x620] | 0x418a620 'poyidomejiu0'
0x1d8ac4c: ldr      x23, [x23, #0x308] | 0x418a308 'C9EvanescentUnlocked'
0x1d8ac54: bl       #0x1d0ce6c | Phigros2.Chapter9.Key$$IsCollectionRead
0x1d8ac6c: bl       #0x1b646a4 | 
0x1d8ac7c: bl       #0x1cc52bc | SaveManagement$$LoadBool
0x1d8ac8c: bl       #0x1d8ad1c | EvanescentExitEvent$$ShouldShowUnlockHint
0x1d8aca4: ldr      x21, [x21, #0x2d8] | 0x41852d8 ''
0x1d8acb0: bl       #0x1daddc4 | IdBuilder$$BuildBlurImageId
0x1d8acd0: bl       #0x1b646a4 | 
0x1d8ace4: bl       #0x1eebfcc | AssetStore$$Get<object>
0x1d8acf8: bl       #0x1dba06c | IdBuilder$$BuildLowResImageId
0x1d8ad00: bl       #0x1eebfcc | AssetStore$$Get<object>
0x1d8ad18: bl       #0x1b647c8 | 

// 0x1d8ad1c EvanescentExitEvent$$ShouldShowUnlockHint
0x1d8ad48: bl       #0x1b64570 | 
0x1d8ad50: ldr      x0, [x0, #0xc10] | 0x4187c10 'ChallengeMode'
0x1d8ad54: bl       #0x1b64570 | 
0x1d8ad5c: ldr      x0, [x0, #0x150] | 0x418e150 'Doppelganger.LeaF.0'
0x1d8ad60: bl       #0x1b64570 | 
0x1d8ad78: ldr      x8, [x8, #0x150] | 0x418e150 'Doppelganger.LeaF.0'
0x1d8ad88: bl       #0x32fac7c | System.String$$op_Equality
0x1d8ada8: ldr      x9, [x9, #0xc10] | 0x4187c10 'ChallengeMode'
0x1d8adc0: b        #0x33082c8 | System.String$$op_Inequality

// 0x1d8add8 EvanescentExitEvent$$OnDestroy
0x1d8adf8: bl       #0x1b64570 | 
0x1d8ae18: bl       #0x27657dc | AssetStore.AssetRef<object>$$Release
0x1d8ae2c: bl       #0x27657dc | AssetStore.AssetRef<object>$$Release

// 0x1d8ae40 EvanescentExitEvent$$.ctor
0x1d8ae44: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor

// 0x1daebb0 SongSelector.<>c__DisplayClass186_0$$<GameStart>g__ProcessHappyEndingIllustrator|5
0x1daebcc: ldr      x0, [x0, #0x980] | 0x418a980 'WhatdoyouwantmorethanaHappyending.Apo11oHALOprogramft安月名莉子大瀬良あい.0'
0x1daebd0: bl       #0x1b64570 | 
0x1daebd8: ldr      x0, [x0, #0x1b0] | 0x41871b0 'HD'
0x1daebdc: bl       #0x1b64570 | 
0x1daebe4: ldr      x0, [x0, #0x988] | 0x418a988 'Falsehood'
0x1daebe8: bl       #0x1b64570 | 
0x1daebf0: ldr      x0, [x0, #0x990] | 0x418a990 'Authentic Choice'
0x1daebf4: bl       #0x1b64570 | 
0x1daebfc: ldr      x0, [x0, #0x1c0] | 0x41871c0 'IN'
0x1daec00: bl       #0x1b64570 | 
0x1daec08: ldr      x0, [x0, #0x998] | 0x418a998 'Amor fati'
0x1daec0c: bl       #0x1b64570 | 
0x1daec14: ldr      x0, [x0, #0x1d0] | 0x41871d0 'EZ'
0x1daec18: bl       #0x1b64570 | 
0x1daec20: ldr      x0, [x0, #0x9a0] | 0x418a9a0 'Significance'
0x1daec24: bl       #0x1b64570 | 
0x1daec3c: ldr      x9, [x9, #0x980] | 0x418a980 'WhatdoyouwantmorethanaHappyending.Apo11oHALOprogramft安月名莉子大瀬良あい.0'
0x1daec4c: bl       #0x32fac7c | System.String$$op_Equality
0x1daec70: ldr      x8, [x8, #0x1d0] | 0x41871d0 'EZ'
0x1daec80: bl       #0x32fac7c | System.String$$op_Equality
0x1daec8c: ldr      x8, [x8, #0x9a0] | 0x418a9a0 'Significance'
0x1daec90: b        #0x1daecf8 | 
0x1daeca4: ldr      x8, [x8, #0x1b0] | 0x41871b0 'HD'
0x1daecb4: bl       #0x32fac7c | System.String$$op_Equality
0x1daecc0: ldr      x8, [x8, #0x988] | 0x418a988 'Falsehood'
0x1daecc4: b        #0x1daecf8 | 
0x1daeccc: ldr      x8, [x8, #0x1c0] | 0x41871c0 'IN'
0x1daecdc: bl       #0x32fac7c | System.String$$op_Equality
0x1daece8: ldr      x8, [x8, #0x998] | 0x418a998 'Amor fati'
0x1daecec: ldr      x9, [x9, #0x990] | 0x418a990 'Authentic Choice'
0x1daed1c: bl       #0x1b647c8 | 

// 0x1db9fe4 DesultorySignalsSessionBootStrap$$get_IsActive

// 0x1db9fec HateSessionBootStrap$$get_IsActive
