
// 0x1cb4418 AboutUs$$Start
0x1cb4440: bl       #0x1b64570 | 
0x1cb4450: bl       #0x1b647b8 | 
0x1cb445c: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1cb44a0 AboutUs$$Back
0x1cb44c0: bl       #0x1b64570 | 
0x1cb44cc: bl       #0x1b64570 | 
0x1cb44d8: bl       #0x1b64570 | 
0x1cb44e4: bl       #0x1b64570 | 
0x1cb44ec: ldr      x0, [x0, #0x688] | 0x4187688 'ChapterSelector'
0x1cb44f0: bl       #0x1b64570 | 
0x1cb44f8: ldr      x0, [x0, #0x690] | 0x4187690 'Top'
0x1cb44fc: bl       #0x1b64570 | 
0x1cb4504: ldr      x0, [x0, #0x698] | 0x4187698 'Loading'
0x1cb4508: bl       #0x1b64570 | 
0x1cb4544: ldr      x9, [x9, #0x688] | 0x4187688 'ChapterSelector'
0x1cb4558: ldr      x8, [x8, #0x698] | 0x4187698 'Loading'
0x1cb4560: bl       #0x1cb4604 | AboutUs$$StartNextScene
0x1cb4570: bl       #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine
0x1cb458c: bl       #0x1b646a4 | 
0x1cb45a0: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1cb45b4: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1cb45c0: ldr      x8, [x8, #0x690] | 0x4187690 'Top'
0x1cb45cc: bl       #0x3e56c2c | UnityEngine.Canvas$$set_sortingLayerName
0x1cb45d8: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1cb45e4: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1cb45fc: b        #0x3e569f0 | UnityEngine.Canvas$$set_sortingOrder
0x1cb4600: bl       #0x1b647c8 | 

// 0x1cb4604 AboutUs$$StartNextScene
0x1cb4634: bl       #0x1b64570 | 
0x1cb4644: bl       #0x1b647b8 | 
0x1cb4650: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1cb4698 AboutUs$$StartPlay
0x1cb46c4: bl       #0x1b64570 | 
0x1cb46cc: ldr      x0, [x0, #0x6a8] | 0x41876a8 '4.0'
0x1cb46d0: bl       #0x1b64570 | 
0x1cb46d8: ldr      x0, [x0, #0x6b0] | 0x41876b0 'GameCompleted'
0x1cb46dc: bl       #0x1b64570 | 
0x1cb46e4: ldr      x0, [x0, #0x2d8] | 0x41852d8 ''
0x1cb46e8: bl       #0x1b64570 | 
0x1cb4708: ldr      x21, [x21, #0x6b0] | 0x41876b0 'GameCompleted'
0x1cb470c: ldr      x23, [x23, #0x2d8] | 0x41852d8 ''
0x1cb4710: ldr      x22, [x22, #0x6a8] | 0x41876a8 '4.0'
0x1cb4718: bl       #0x1b646a4 | 
0x1cb4728: bl       #0x1cc612c | SaveManagement$$LoadString
0x1cb4734: bl       #0x33082c8 | System.String$$op_Inequality
0x1cb4748: bl       #0x1b646a4 | 
0x1cb4758: bl       #0x1cc5240 | SaveManagement$$SaveString
0x1cb4760: bl       #0x3c688f4 | UnityEngine.Time$$get_timeSinceLevelLoad
0x1cb47a4: b        #0x3c60750 | UnityEngine.GameObject$$SetActive
0x1cb47a8: bl       #0x1b647c8 | 

// 0x1cb47ac AboutUs$$Update
0x1cb47d4: bl       #0x1b64570 | 
0x1cb47dc: ldr      x0, [x0, #0x6c0] | 0x41876c0 'skip'
0x1cb47e0: bl       #0x1b64570 | 
0x1cb4808: bl       #0x33082c8 | System.String$$op_Inequality
0x1cb4824: bl       #0x33082c8 | System.String$$op_Inequality
0x1cb483c: bl       #0x1db7cd0 | AddressableAudioSource$$get_Volume
0x1cb4848: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1cb4864: bl       #0x1db7cec | AddressableAudioSource$$set_Volume
0x1cb4874: bl       #0x1db7cd0 | AddressableAudioSource$$get_Volume
0x1cb4898: bl       #0x1db7aec | AddressableAudioSource$$set_Clip
0x1cb48a8: bl       #0x1db7e54 | AddressableAudioSource$$Play
0x1cb48bc: bl       #0x1db7cec | AddressableAudioSource$$set_Volume
0x1cb48c8: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1cb4924: bl       #0x1db7aec | AddressableAudioSource$$set_Clip
0x1cb4934: bl       #0x1db7e54 | AddressableAudioSource$$Play
0x1cb4968: bl       #0x1db7bcc | AddressableAudioSource$$Pause
0x1cb4994: bl       #0x3c5d744 | UnityEngine.Component$$get_transform
0x1cb49ac: bl       #0x3c6b41c | UnityEngine.Transform$$set_position
0x1cb49b4: bl       #0x1cc45e8 | MyInput$$get_touches
0x1cb49e0: ldr      x8, [x8, #0x6c0] | 0x41876c0 'skip'
0x1cb49ec: bl       #0x3c0c2c0 | UnityEngine.Animation$$get_Item
0x1cb49fc: bl       #0x3c0c6cc | UnityEngine.AnimationState$$set_speed
0x1cb4a0c: bl       #0x3c0c348 | UnityEngine.Animation$$Play
0x1cb4a1c: bl       #0x3c5d780 | UnityEngine.Component$$get_gameObject
0x1cb4a30: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1cb4a6c: b        #0x1cb44a0 | AboutUs$$Back
0x1cb4a84: ldr      x20, [x20, #0x6c0] | 0x41876c0 'skip'
0x1cb4a90: bl       #0x3c0c2c0 | UnityEngine.Animation$$get_Item
0x1cb4aa4: bl       #0x3c0c680 | UnityEngine.AnimationState$$set_normalizedTime
0x1cb4ab8: bl       #0x3c0c2c0 | UnityEngine.Animation$$get_Item
0x1cb4ad8: b        #0x3c0c6cc | UnityEngine.AnimationState$$set_speed
0x1cb4af0: bl       #0x1b647c8 | 

// 0x1cb4af4 AboutUs$$.ctor
0x1cb4af8: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor

// 0x1d44438 DSUnlockControl$$OnDestroy
0x1d44458: bl       #0x1b64570 | 
0x1d44478: bl       #0x27657dc | AssetStore.AssetRef<object>$$Release

// 0x1d4448c DSUnlockControl$$Start
0x1d44494: bl       #0x1d444ac | DSUnlockControl$$PlayUnlockPopup
0x1d444a8: b        #0x3c6206c | UnityEngine.MonoBehaviour$$StartCoroutine

// 0x1d444ac DSUnlockControl$$PlayUnlockPopup
0x1d444d4: bl       #0x1b64570 | 
0x1d444e4: bl       #0x1b647b8 | 
0x1d444f0: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d4450c DSUnlockControl.<PlayUnlockPopup>d__9$$.ctor
0x1d44520: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d44534 DSUnlockControl$$CreateBlackout
0x1d44570: bl       #0x1b64570 | 
0x1d4457c: bl       #0x1b64570 | 
0x1d44588: bl       #0x1b64570 | 
0x1d44594: bl       #0x1b64570 | 
0x1d445a0: bl       #0x1b64570 | 
0x1d445ac: bl       #0x1b64570 | 
0x1d445b8: bl       #0x1b64570 | 
0x1d445c4: bl       #0x1b64570 | 
0x1d445cc: ldr      x0, [x0, #0x580] | 0x418a580 'Blackout'
0x1d445d0: bl       #0x1b64570 | 
0x1d445e4: bl       #0x1b64614 | 
0x1d44600: bl       #0x1b646a4 | 
0x1d4460c: bl       #0x3489b94 | System.Type$$GetTypeFromHandle
0x1d44628: bl       #0x1b646a8 | 
0x1d4464c: bl       #0x3489b94 | System.Type$$GetTypeFromHandle
0x1d44664: bl       #0x1b646a8 | 
0x1d4468c: bl       #0x3489b94 | System.Type$$GetTypeFromHandle
0x1d446a4: bl       #0x1b646a8 | 
0x1d446cc: ldr      x20, [x20, #0x580] | 0x418a580 'Blackout'
0x1d446d0: bl       #0x1b647b8 | 
0x1d446e4: bl       #0x3c60d0c | UnityEngine.GameObject$$.ctor
0x1d446f4: bl       #0x3c60614 | UnityEngine.GameObject$$get_transform
0x1d44708: bl       #0x3c6c108 | UnityEngine.Transform$$SetParent
0x1d44714: bl       #0x3c60614 | UnityEngine.GameObject$$get_transform
0x1d44720: bl       #0x3c6e00c | UnityEngine.Transform$$SetAsFirstSibling
0x1d4472c: bl       #0x3c60614 | UnityEngine.GameObject$$get_transform
0x1d44764: bl       #0x1b64570 | 
0x1d44790: bl       #0x3c6a024 | UnityEngine.RectTransform$$set_anchorMin
0x1d447a8: bl       #0x1b64570 | 
0x1d447c8: bl       #0x3c6a140 | UnityEngine.RectTransform$$set_anchorMax
0x1d447dc: bl       #0x1b64570 | 
0x1d44804: bl       #0x3c6a688 | UnityEngine.RectTransform$$set_offsetMin
0x1d44818: bl       #0x1b64570 | 
0x1d44838: bl       #0x3c6a81c | UnityEngine.RectTransform$$set_offsetMax
0x1d44844: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1d4489c: bl       #0x1b647c8 | 
0x1d448a0: bl       #0x1b647d0 | 
0x1d448a4: bl       #0x1b647ec | 
0x1d448ac: bl       #0x1b64694 | 
0x1d448b4: bl       #0x1b64b68 | 

// 0x1d448b8 DSUnlockControl$$FadeOut
0x1d448e8: bl       #0x1b64570 | 
0x1d448f8: bl       #0x1b647b8 | 
0x1d44904: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d44928 DSUnlockControl.<FadeOut>d__11$$.ctor
0x1d4493c: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d44950 DSUnlockControl$$FadeAmbient
0x1d4498c: bl       #0x1b64570 | 
0x1d4499c: bl       #0x1b647b8 | 
0x1d449a8: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d449d4 DSUnlockControl.<FadeAmbient>d__12$$.ctor
0x1d449e8: bl       #0x34c04f0 | System.Object$$.ctor

// 0x1d449fc DSUnlockControl$$.ctor
0x1d44a00: b        #0x3c625a0 | UnityEngine.MonoBehaviour$$.ctor

// 0x1d44a04 DSUnlockControl$$.cctor
0x1d44a30: bl       #0x1b64570 | 
0x1d44a3c: bl       #0x1b64570 | 
0x1d44a48: bl       #0x1b64570 | 
0x1d44a50: ldr      x0, [x0, #0x230] | 0x418c230 '「逃げ出してもいいのかな？」'
0x1d44a54: bl       #0x1b64570 | 
0x1d44a5c: ldr      x0, [x0, #0x238] | 0x418c238 '“面對它，擊潰它！”'
0x1d44a60: bl       #0x1b64570 | 
0x1d44a68: ldr      x0, [x0, #0x240] | 0x418c240 '“해봤어…… 하지만……”'
0x1d44a6c: bl       #0x1b64570 | 
0x1d44a74: ldr      x0, [x0, #0x248] | 0x418c248 '“我能逃避吗？”'
0x1d44a78: bl       #0x1b64570 | 
0x1d44a80: ldr      x0, [x0, #0x250] | 0x418c250 '"Could I run?"'
0x1d44a84: bl       #0x1b64570 | 
0x1d44a8c: ldr      x0, [x0, #0x258] | 0x418c258 '“我能逃避嗎？”'
0x1d44a90: bl       #0x1b64570 | 
0x1d44a98: ldr      x0, [x0, #0x260] | 0x418c260 '“我嘗試了……但……”'
0x1d44a9c: bl       #0x1b64570 | 
0x1d44aa4: ldr      x0, [x0, #0x268] | 0x418c268 '“도망칠 수 있을까?”'
0x1d44aa8: bl       #0x1b64570 | 
0x1d44ab0: ldr      x0, [x0, #0x270] | 0x418c270 '「……いや。」'
0x1d44ab4: bl       #0x1b64570 | 
0x1d44abc: ldr      x0, [x0, #0x278] | 0x418c278 '“面对它，击溃它！”'
0x1d44ac0: bl       #0x1b64570 | 
0x1d44ac8: ldr      x0, [x0, #0x280] | 0x418c280 '「私は失敗したの？」'
0x1d44acc: bl       #0x1b64570 | 
0x1d44ad4: ldr      x0, [x0, #0x288] | 0x418c288 '“我尝试了……但……”'
0x1d44ad8: bl       #0x1b64570 | 
0x1d44ae0: ldr      x0, [x0, #0x290] | 0x418c290 '「やってみた……けど……」'
0x1d44ae4: bl       #0x1b64570 | 
0x1d44aec: ldr      x0, [x0, #0x298] | 0x418c298 '"Face it, and defeat it!"'
0x1d44af0: bl       #0x1b64570 | 
0x1d44af8: ldr      x0, [x0, #0x2a0] | 0x418c2a0 '“내가 실패한 걸까?”'
0x1d44afc: bl       #0x1b64570 | 
0x1d44b04: ldr      x0, [x0, #0x2a8] | 0x418c2a8 '“……아니.”'
0x1d44b08: bl       #0x1b64570 | 
0x1d44b10: ldr      x0, [x0, #0x2b0] | 0x418c2b0 '"……No."'
0x1d44b14: bl       #0x1b64570 | 
0x1d44b1c: ldr      x0, [x0, #0x2b8] | 0x418c2b8 '"Did I fail?"'
0x1d44b20: bl       #0x1b64570 | 
0x1d44b28: ldr      x0, [x0, #0x2c0] | 0x418c2c0 '「立ち向かって、撃ち砕くんだ！」'
0x1d44b2c: bl       #0x1b64570 | 
0x1d44b34: ldr      x0, [x0, #0x2c8] | 0x418c2c8 '“……不。”'
0x1d44b38: bl       #0x1b64570 | 
0x1d44b40: ldr      x0, [x0, #0x2d0] | 0x418c2d0 '“我失败了吗？”'
0x1d44b44: bl       #0x1b64570 | 
0x1d44b4c: ldr      x0, [x0, #0x2d8] | 0x418c2d8 '“我失敗了嗎？”'
0x1d44b50: bl       #0x1b64570 | 
0x1d44b58: ldr      x0, [x0, #0x2e0] | 0x418c2e0 '"I tried... but..."'
0x1d44b5c: bl       #0x1b64570 | 
0x1d44b64: ldr      x0, [x0, #0x2e8] | 0x418c2e8 '“맞서서, 무너뜨려보자!”'
0x1d44b68: bl       #0x1b64570 | 
0x1d44b7c: bl       #0x1b64614 | 
0x1d44b8c: bl       #0x1b647b8 | 
0x1d44b98: bl       #0x1cd9064 | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$.ctor
0x1d44ba4: ldr      x8, [x8, #0x288] | 0x418c288 '“我尝试了……但……”'
0x1d44bb0: ldr      x9, [x9, #0x260] | 0x418c260 '“我嘗試了……但……”'
0x1d44bc0: ldr      x9, [x9, #0x2e0] | 0x418c2e0 '"I tried... but..."'
0x1d44bd0: ldr      x9, [x9, #0x290] | 0x418c290 '「やってみた……けど……」'
0x1d44be0: ldr      x9, [x9, #0x240] | 0x418c240 '“해봤어…… 하지만……”'
0x1d44bfc: bl       #0x1b646a8 | 
0x1d44c14: bl       #0x1b647b8 | 
0x1d44c20: bl       #0x1cd9064 | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$.ctor
0x1d44c2c: ldr      x8, [x8, #0x2d0] | 0x418c2d0 '“我失败了吗？”'
0x1d44c3c: ldr      x9, [x9, #0x2d8] | 0x418c2d8 '“我失敗了嗎？”'
0x1d44c4c: ldr      x9, [x9, #0x2b8] | 0x418c2b8 '"Did I fail?"'
0x1d44c5c: ldr      x9, [x9, #0x280] | 0x418c280 '「私は失敗したの？」'
0x1d44c6c: ldr      x9, [x9, #0x2a0] | 0x418c2a0 '“내가 실패한 걸까?”'
0x1d44c80: bl       #0x1b646a8 | 
0x1d44c9c: bl       #0x1b647b8 | 
0x1d44ca8: bl       #0x1cd9064 | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$.ctor
0x1d44cb4: ldr      x8, [x8, #0x248] | 0x418c248 '“我能逃避吗？”'
0x1d44cc4: ldr      x9, [x9, #0x258] | 0x418c258 '“我能逃避嗎？”'
0x1d44cd4: ldr      x9, [x9, #0x250] | 0x418c250 '"Could I run?"'
0x1d44ce4: ldr      x9, [x9, #0x230] | 0x418c230 '「逃げ出してもいいのかな？」'
0x1d44cf4: ldr      x9, [x9, #0x268] | 0x418c268 '“도망칠 수 있을까?”'
0x1d44d08: bl       #0x1b646a8 | 
0x1d44d24: bl       #0x1b647b8 | 
0x1d44d30: bl       #0x1cd9064 | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$.ctor
0x1d44d3c: ldr      x8, [x8, #0x2c8] | 0x418c2c8 '“……不。”'
0x1d44d4c: ldr      x9, [x9, #0x2b0] | 0x418c2b0 '"……No."'
0x1d44d5c: ldr      x9, [x9, #0x270] | 0x418c270 '「……いや。」'
0x1d44d6c: ldr      x9, [x9, #0x2a8] | 0x418c2a8 '“……아니.”'
0x1d44d80: bl       #0x1b646a8 | 
0x1d44d9c: bl       #0x1b647b8 | 
0x1d44da8: bl       #0x1cd9064 | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$.ctor
0x1d44db4: ldr      x8, [x8, #0x278] | 0x418c278 '“面对它，击溃它！”'
0x1d44dc4: ldr      x9, [x9, #0x238] | 0x418c238 '“面對它，擊潰它！”'
0x1d44dd4: ldr      x9, [x9, #0x298] | 0x418c298 '"Face it, and defeat it!"'
0x1d44de4: ldr      x9, [x9, #0x2c0] | 0x418c2c0 '「立ち向かって、撃ち砕くんだ！」'
0x1d44df4: ldr      x9, [x9, #0x2e8] | 0x418c2e8 '“맞서서, 무너뜨려보자!”'
0x1d44e08: bl       #0x1b646a8 | 
0x1d44e40: bl       #0x1b647c8 | 
0x1d44e44: bl       #0x1b647ec | 
0x1d44e4c: bl       #0x1b64694 | 
0x1d44e50: bl       #0x1b647d0 | 

// 0x1d44e54 DSUnlockControl.<FadeAmbient>d__12$$System.IDisposable.Dispose

// 0x1d44e58 DSUnlockControl.<FadeAmbient>d__12$$MoveNext
0x1d44e84: b        #0x1d44e94 | 
0x1d44ea4: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1d44eec: bl       #0x3c183b0 | UnityEngine.AudioSource$$set_volume
0x1d44efc: b        #0x1d44f18 | 
0x1d44f10: bl       #0x3c183b0 | UnityEngine.AudioSource$$set_volume
0x1d44f24: bl       #0x1b647c8 | 

// 0x1d44f28 DSUnlockControl.<FadeAmbient>d__12$$System.Collections.Generic.IEnumerator<System.Object>.get_Current

// 0x1d44f30 DSUnlockControl.<FadeAmbient>d__12$$System.Collections.IEnumerator.Reset
0x1d44f3c: bl       #0x1b64584 | 
0x1d44f40: bl       #0x1b647b8 | 
0x1d44f4c: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1d44f58: bl       #0x1b64584 | 
0x1d44f64: bl       #0x1b64694 | 

// 0x1d44f68 DSUnlockControl.<FadeAmbient>d__12$$System.Collections.IEnumerator.get_Current

// 0x1d44f70 DSUnlockControl.<FadeOut>d__11$$System.IDisposable.Dispose

// 0x1d44f74 DSUnlockControl.<FadeOut>d__11$$MoveNext
0x1d44fbc: b        #0x1d44fc8 | 
0x1d44fd8: bl       #0x3c68944 | UnityEngine.Time$$get_deltaTime
0x1d45030: b        #0x1d45060 | 
0x1d4506c: bl       #0x1b647c8 | 

// 0x1d45070 DSUnlockControl.<FadeOut>d__11$$System.Collections.Generic.IEnumerator<System.Object>.get_Current

// 0x1d45078 DSUnlockControl.<FadeOut>d__11$$System.Collections.IEnumerator.Reset
0x1d45084: bl       #0x1b64584 | 
0x1d45088: bl       #0x1b647b8 | 
0x1d45094: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1d450a0: bl       #0x1b64584 | 
0x1d450ac: bl       #0x1b64694 | 

// 0x1d450b0 DSUnlockControl.<FadeOut>d__11$$System.Collections.IEnumerator.get_Current

// 0x1d450b8 DSUnlockControl.<PlayUnlockPopup>d__9$$System.IDisposable.Dispose

// 0x1d450bc DSUnlockControl.<PlayUnlockPopup>d__9$$MoveNext
0x1d450dc: bl       #0x1b64570 | 
0x1d450e8: bl       #0x1b64570 | 
0x1d450f4: bl       #0x1b64570 | 
0x1d45100: bl       #0x1b64570 | 
0x1d4510c: bl       #0x1b64570 | 
0x1d45118: bl       #0x1b64570 | 
0x1d45124: bl       #0x1b64570 | 
0x1d4512c: ldr      x0, [x0, #0x300] | 0x418c300 'DesultorySignalsIntro'
0x1d45130: bl       #0x1b64570 | 
0x1d45188: bl       #0x1b646a4 | 
0x1d4519c: bl       #0x1fd4d08 | UnityEngine.Object$$Instantiate<object>
0x1d451ac: bl       #0x3c60614 | UnityEngine.GameObject$$get_transform
0x1d451c8: bl       #0x1b64570 | 
0x1d451f8: bl       #0x3c6be9c | UnityEngine.Transform$$set_localScale
0x1d45210: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1d45224: bl       #0x3e564c4 | UnityEngine.Canvas$$set_renderMode
0x1d45234: bl       #0x3e56970 | UnityEngine.Canvas$$set_overrideSorting
0x1d45244: bl       #0x3e569f0 | UnityEngine.Canvas$$set_sortingOrder
0x1d45254: bl       #0x3c60614 | UnityEngine.GameObject$$get_transform
0x1d45274: bl       #0x1b646a4 | 
0x1d4527c: bl       #0x1d44534 | DSUnlockControl$$CreateBlackout
0x1d4529c: bl       #0x1f91b08 | UnityEngine.GameObject$$GetComponent<object>
0x1d452bc: b        #0x1d452d8 | 
0x1d45300: bl       #0x1cd906c | Phigros2.Utils.MultiLanguageText.MultiLanguageTextString$$get_LocaleText
0x1d45318: bl       #0x1cdf81c | Ch8Effect.MessageController$$ShowUntilClick
0x1d45328: b        #0x1d45400 | 
0x1d4534c: bl       #0x1b646a4 | 
0x1d45358: bl       #0x1d448b8 | DSUnlockControl$$FadeOut
0x1d45364: b        #0x1d453f8 | 
0x1d45388: bl       #0x1b646a4 | 
0x1d45394: bl       #0x3c652c4 | UnityEngine.Object$$Destroy
0x1d453ac: bl       #0x1b646a4 | 
0x1d453b4: ldr      x8, [x8, #0x300] | 0x418c300 'DesultorySignalsIntro'
0x1d453c0: bl       #0x3c75460 | UnityEngine.SceneManagement.SceneManager$$LoadScene
0x1d453c8: b        #0x1d45400 | 
0x1d453dc: bl       #0x1b647b8 | 
0x1d453ec: bl       #0x3c66cf4 | UnityEngine.WaitForSeconds$$.ctor
0x1d4540c: bl       #0x1b647c8 | 
0x1d45410: bl       #0x1b647d0 | 

// 0x1d45414 DSUnlockControl.<PlayUnlockPopup>d__9$$System.Collections.Generic.IEnumerator<System.Object>.get_Current

// 0x1d4541c DSUnlockControl.<PlayUnlockPopup>d__9$$System.Collections.IEnumerator.Reset
0x1d45428: bl       #0x1b64584 | 
0x1d4542c: bl       #0x1b647b8 | 
0x1d45438: bl       #0x347d80c | System.NotSupportedException$$.ctor
0x1d45444: bl       #0x1b64584 | 
0x1d45450: bl       #0x1b64694 | 

// 0x1d45454 DSUnlockControl.<PlayUnlockPopup>d__9$$System.Collections.IEnumerator.get_Current

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
