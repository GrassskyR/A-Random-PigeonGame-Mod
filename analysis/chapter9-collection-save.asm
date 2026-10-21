
// 0x1ca8f68 GetCollectionControl$$UnlockCollectionTo
0x1ca8f68: str      x30, [sp, #-0x50]!
0x1ca8f6c: stp      x26, x25, [sp, #0x10]
0x1ca8f70: stp      x24, x23, [sp, #0x20]
0x1ca8f74: stp      x22, x21, [sp, #0x30]
0x1ca8f78: stp      x20, x19, [sp, #0x40]
0x1ca8f7c: adrp     x20, #0x4475000
0x1ca8f80: adrp     x23, #0x4187000
0x1ca8f84: ldrb     w8, [x20, #0x800]
0x1ca8f88: ldr      x23, [x23, #0xc8]
0x1ca8f8c: mov      w21, w2
0x1ca8f90: mov      x22, x1
0x1ca8f94: mov      x19, x0
0x1ca8f98: tbnz     w8, #0, #0x1ca9004
0x1ca8f9c: adrp     x0, #0x4186000
0x1ca8fa0: ldr      x0, [x0, #0xf10]
0x1ca8fa4: bl       #0x1b64570 | 
0x1ca8fa8: adrp     x0, #0x4186000
0x1ca8fac: ldr      x0, [x0, #0xf68]
0x1ca8fb0: bl       #0x1b64570 | 
0x1ca8fb4: adrp     x0, #0x4185000
0x1ca8fb8: ldr      x0, [x0, #0x840]
0x1ca8fbc: bl       #0x1b64570 | 
0x1ca8fc0: adrp     x0, #0x4186000
0x1ca8fc4: ldr      x0, [x0, #0xf70]
0x1ca8fc8: bl       #0x1b64570 | 
0x1ca8fcc: adrp     x0, #0x4186000
0x1ca8fd0: ldr      x0, [x0, #0xe68]
0x1ca8fd4: bl       #0x1b64570 | 
0x1ca8fd8: adrp     x0, #0x4187000
0x1ca8fdc: ldr      x0, [x0, #0xd0]
0x1ca8fe0: bl       #0x1b64570 | 
0x1ca8fe4: adrp     x0, #0x4187000
0x1ca8fe8: ldr      x0, [x0, #0xc8]
0x1ca8fec: bl       #0x1b64570 | 
0x1ca8ff0: adrp     x0, #0x4187000
0x1ca8ff4: ldr      x0, [x0, #0xd8] | 0x41870d8 '1key'
0x1ca8ff8: bl       #0x1b64570 | 
0x1ca8ffc: mov      w8, #1
0x1ca9000: strb     w8, [x20, #0x800]
0x1ca9004: ldr      x0, [x23]
0x1ca9008: bl       #0x1b647b8 | 
0x1ca900c: mov      x1, xzr
0x1ca9010: mov      x20, x0
0x1ca9014: bl       #0x34c04f0 | System.Object$$.ctor
0x1ca9018: cbz      x20, #0x1ca91e4
0x1ca901c: adrp     x26, #0x4187000
0x1ca9020: ldr      x26, [x26, #0xd8] | 0x41870d8 '1key'
0x1ca9024: str      x22, [x20, #0x10]
0x1ca9028: adrp     x25, #0x4186000
0x1ca902c: mov      x1, x22
0x1ca9030: ldr      x0, [x26]
0x1ca9034: ldr      x25, [x25, #0xe68]
0x1ca9038: mov      x2, xzr
0x1ca903c: bl       #0x32fce8c | System.String$$Concat
0x1ca9040: ldr      x8, [x25]
0x1ca9044: mov      x22, x0
0x1ca9048: ldr      w9, [x8, #0xe0]
0x1ca904c: cbnz     w9, #0x1ca9058
0x1ca9050: mov      x0, x8
0x1ca9054: bl       #0x1b646a4 | 
0x1ca9058: mov      x0, x22
0x1ca905c: mov      w1, wzr
0x1ca9060: mov      x2, xzr
0x1ca9064: bl       #0x1cc5ccc | SaveManagement$$LoadInt
0x1ca9068: mov      w22, w0
0x1ca906c: cmp      w0, w21
0x1ca9070: mov      w0, wzr
0x1ca9074: b.ge     #0x1ca91cc
0x1ca9078: adrp     x23, #0x4475000
0x1ca907c: ldrb     w8, [x23, #0x8c0]
0x1ca9080: cbnz     w8, #0x1ca9098
0x1ca9084: adrp     x0, #0x4186000
0x1ca9088: ldr      x0, [x0, #0xef8]
0x1ca908c: bl       #0x1b64570 | 
0x1ca9090: mov      w8, #1
0x1ca9094: strb     w8, [x23, #0x8c0]
0x1ca9098: adrp     x8, #0x4186000
0x1ca909c: ldr      x8, [x8, #0xef8]
0x1ca90a0: ldr      x8, [x8]
0x1ca90a4: ldr      x8, [x8, #0xb8]
0x1ca90a8: ldr      x0, [x8]
0x1ca90ac: cbz      x0, #0x1ca91e4
0x1ca90b0: ldr      x1, [x20, #0x10]
0x1ca90b4: mov      w2, #1
0x1ca90b8: bl       #0x1ca99f8 | GameInformation$$FindKey
0x1ca90bc: mov      x23, x0
0x1ca90c0: cbz      x0, #0x1ca90f4
0x1ca90c4: adrp     x8, #0x4185000
0x1ca90c8: ldr      x8, [x8, #0x840]
0x1ca90cc: ldr      w24, [x23, #0x20]
0x1ca90d0: ldr      x0, [x8]
0x1ca90d4: ldr      w8, [x0, #0xe0]
0x1ca90d8: cbnz     w8, #0x1ca90e0
0x1ca90dc: bl       #0x1b646a4 | 
0x1ca90e0: mov      w0, w21
0x1ca90e4: mov      w1, w24
0x1ca90e8: mov      x2, xzr
0x1ca90ec: bl       #0x347c428 | System.Math$$Min
0x1ca90f0: mov      w21, w0
0x1ca90f4: str      w21, [x20, #0x18]
0x1ca90f8: ldr      x1, [x20, #0x10]
0x1ca90fc: ldr      x0, [x26]
0x1ca9100: mov      x2, xzr
0x1ca9104: bl       #0x32fce8c | System.String$$Concat
0x1ca9108: ldr      x8, [x25]
0x1ca910c: ldr      w21, [x20, #0x18]
0x1ca9110: mov      x24, x0
0x1ca9114: ldr      w9, [x8, #0xe0]
0x1ca9118: cbnz     w9, #0x1ca9124
0x1ca911c: mov      x0, x8
0x1ca9120: bl       #0x1b646a4 | 
0x1ca9124: mov      x0, x24
0x1ca9128: mov      w1, w21
0x1ca912c: mov      x2, xzr
0x1ca9130: bl       #0x1cc5034 | SaveManagement$$SaveInt
0x1ca9134: cbz      x23, #0x1ca9140
0x1ca9138: ldr      w8, [x20, #0x18]
0x1ca913c: str      w8, [x23, #0x18]
0x1ca9140: adrp     x8, #0x4186000
0x1ca9144: ldr      x21, [x19, #0x20]
0x1ca9148: ldr      x8, [x8, #0xf70]
0x1ca914c: ldr      x0, [x8]
0x1ca9150: bl       #0x1b647b8 | 
0x1ca9154: adrp     x8, #0x4187000
0x1ca9158: ldr      x8, [x8, #0xd0]
0x1ca915c: mov      x1, x20
0x1ca9160: mov      x3, xzr
0x1ca9164: mov      x23, x0
0x1ca9168: ldr      x2, [x8]
0x1ca916c: bl       #0x3085d78 | System.Predicate<object>$$.ctor
0x1ca9170: cbz      x21, #0x1ca91e4
0x1ca9174: adrp     x8, #0x4186000
0x1ca9178: ldr      x8, [x8, #0xf68]
0x1ca917c: mov      x0, x21
0x1ca9180: mov      x1, x23
0x1ca9184: ldr      x2, [x8]
0x1ca9188: bl       #0x2e611b8 | System.Collections.Generic.List<object>$$RemoveAll
0x1ca918c: adrp     x8, #0x4186000
0x1ca9190: ldr      x8, [x8, #0xf10]
0x1ca9194: ldr      x8, [x8]
0x1ca9198: ldr      x8, [x8, #0xb8]
0x1ca919c: ldr      x8, [x8]
0x1ca91a0: cbz      x8, #0x1ca91b4
0x1ca91a4: ldr      x9, [x8, #0x18]
0x1ca91a8: ldr      x0, [x8, #0x40]
0x1ca91ac: ldr      x1, [x8, #0x28]
0x1ca91b0: blr      x9
0x1ca91b4: ldr      w8, [x20, #0x18]
0x1ca91b8: cmp      w8, w22
0x1ca91bc: b.le     #0x1ca91c8
0x1ca91c0: mov      x0, x19
0x1ca91c4: bl       #0x1ca91e8 | GetCollectionControl$$EvaluateStateUnlocks
0x1ca91c8: mov      w0, #1
0x1ca91cc: ldp      x20, x19, [sp, #0x40]
0x1ca91d0: ldp      x22, x21, [sp, #0x30]
0x1ca91d4: ldp      x24, x23, [sp, #0x20]
0x1ca91d8: ldp      x26, x25, [sp, #0x10]
0x1ca91dc: ldr      x30, [sp], #0x50
0x1ca91e0: ret      
0x1ca91e4: bl       #0x1b647c8 | 

// 0x1ca96e4 GetCollectionControl$$MarkCollectionRead
0x1ca96e4: sub      sp, sp, #0x60
0x1ca96e8: stp      x30, x25, [sp, #0x20]
0x1ca96ec: stp      x24, x23, [sp, #0x30]
0x1ca96f0: stp      x22, x21, [sp, #0x40]
0x1ca96f4: stp      x20, x19, [sp, #0x50]
0x1ca96f8: adrp     x23, #0x4475000
0x1ca96fc: adrp     x21, #0x4187000
0x1ca9700: ldrb     w8, [x23, #0x7ff]
0x1ca9704: ldr      x21, [x21, #0x108]
0x1ca9708: mov      w22, w2
0x1ca970c: mov      x20, x1
0x1ca9710: mov      x19, x0
0x1ca9714: tbnz     w8, #0, #0x1ca97bc
0x1ca9718: adrp     x0, #0x4187000
0x1ca971c: ldr      x0, [x0, #0x98]
0x1ca9720: bl       #0x1b64570 | 
0x1ca9724: adrp     x0, #0x4186000
0x1ca9728: ldr      x0, [x0, #0xfd0]
0x1ca972c: bl       #0x1b64570 | 
0x1ca9730: adrp     x0, #0x4187000
0x1ca9734: ldr      x0, [x0, #0xa0]
0x1ca9738: bl       #0x1b64570 | 
0x1ca973c: adrp     x0, #0x4187000
0x1ca9740: ldr      x0, [x0, #0xa8]
0x1ca9744: bl       #0x1b64570 | 
0x1ca9748: adrp     x0, #0x4187000
0x1ca974c: ldr      x0, [x0, #0xb0]
0x1ca9750: bl       #0x1b64570 | 
0x1ca9754: adrp     x0, #0x4186000
0x1ca9758: ldr      x0, [x0, #0xff0]
0x1ca975c: bl       #0x1b64570 | 
0x1ca9760: adrp     x0, #0x4186000
0x1ca9764: ldr      x0, [x0, #0xf10]
0x1ca9768: bl       #0x1b64570 | 
0x1ca976c: adrp     x0, #0x4187000
0x1ca9770: ldr      x0, [x0, #0xb8]
0x1ca9774: bl       #0x1b64570 | 
0x1ca9778: adrp     x0, #0x4185000
0x1ca977c: ldr      x0, [x0, #0x840]
0x1ca9780: bl       #0x1b64570 | 
0x1ca9784: adrp     x0, #0x4186000
0x1ca9788: ldr      x0, [x0, #0xe68]
0x1ca978c: bl       #0x1b64570 | 
0x1ca9790: adrp     x0, #0x4187000
0x1ca9794: ldr      x0, [x0, #0x110]
0x1ca9798: bl       #0x1b64570 | 
0x1ca979c: adrp     x0, #0x4187000
0x1ca97a0: ldr      x0, [x0, #0x108]
0x1ca97a4: bl       #0x1b64570 | 
0x1ca97a8: adrp     x0, #0x4187000
0x1ca97ac: ldr      x0, [x0, #0x118] | 0x4187118 'CollectionTextOpened'
0x1ca97b0: bl       #0x1b64570 | 
0x1ca97b4: mov      w8, #1
0x1ca97b8: strb     w8, [x23, #0x7ff]
0x1ca97bc: ldr      x0, [x21]
0x1ca97c0: stp      xzr, xzr, [sp, #8]
0x1ca97c4: str      xzr, [sp, #0x18]
0x1ca97c8: bl       #0x1b647b8 | 
0x1ca97cc: mov      x1, xzr
0x1ca97d0: mov      x21, x0
0x1ca97d4: bl       #0x34c04f0 | System.Object$$.ctor
0x1ca97d8: cbz      x21, #0x1ca9978
0x1ca97dc: adrp     x8, #0x4187000
0x1ca97e0: ldr      x8, [x8, #0x118] | 0x4187118 'CollectionTextOpened'
0x1ca97e4: str      x20, [x21, #0x10]
0x1ca97e8: str      w22, [x21, #0x18]
0x1ca97ec: adrp     x23, #0x4186000
0x1ca97f0: ldr      x1, [x8]
0x1ca97f4: adrp     x22, #0x4185000
0x1ca97f8: ldr      x23, [x23, #0xe68]
0x1ca97fc: ldr      x22, [x22, #0x840]
0x1ca9800: mov      x0, x20
0x1ca9804: mov      x2, xzr
0x1ca9808: bl       #0x32fce8c | System.String$$Concat
0x1ca980c: ldr      x8, [x23]
0x1ca9810: mov      x20, x0
0x1ca9814: ldr      w9, [x8, #0xe0]
0x1ca9818: cbnz     w9, #0x1ca9824
0x1ca981c: mov      x0, x8
0x1ca9820: bl       #0x1b646a4 | 
0x1ca9824: mov      x0, x20
0x1ca9828: mov      w1, wzr
0x1ca982c: mov      x2, xzr
0x1ca9830: bl       #0x1cc5ccc | SaveManagement$$LoadInt
0x1ca9834: ldr      x8, [x22]
0x1ca9838: ldr      w22, [x21, #0x18]
0x1ca983c: mov      w23, w0
0x1ca9840: ldr      w9, [x8, #0xe0]
0x1ca9844: cbnz     w9, #0x1ca9850
0x1ca9848: mov      x0, x8
0x1ca984c: bl       #0x1b646a4 | 
0x1ca9850: adrp     x25, #0x4186000
0x1ca9854: adrp     x24, #0x4187000
0x1ca9858: ldr      x25, [x25, #0xfd0]
0x1ca985c: ldr      x24, [x24, #0x98]
0x1ca9860: mov      w0, w23
0x1ca9864: mov      w1, w22
0x1ca9868: mov      x2, xzr
0x1ca986c: bl       #0x347c2e0 | System.Math$$Max
0x1ca9870: mov      w1, w0
0x1ca9874: mov      x0, x20
0x1ca9878: mov      x2, xzr
0x1ca987c: bl       #0x1cc5034 | SaveManagement$$SaveInt
0x1ca9880: ldr      x22, [x21, #0x20]
0x1ca9884: ldr      x20, [x19, #0x20]
0x1ca9888: cbnz     x22, #0x1ca98bc
0x1ca988c: adrp     x8, #0x4186000
0x1ca9890: ldr      x8, [x8, #0xff0]
0x1ca9894: ldr      x0, [x8]
0x1ca9898: bl       #0x1b647b8 | 
0x1ca989c: adrp     x8, #0x4187000
0x1ca98a0: ldr      x8, [x8, #0x110]
0x1ca98a4: mov      x1, x21
0x1ca98a8: mov      x3, xzr
0x1ca98ac: mov      x22, x0
0x1ca98b0: ldr      x2, [x8]
0x1ca98b4: bl       #0x2c5614c | System.Func<object, bool>$$.ctor
0x1ca98b8: str      x22, [x21, #0x20]
0x1ca98bc: ldr      x2, [x25]
0x1ca98c0: mov      x0, x20
0x1ca98c4: mov      x1, x22
0x1ca98c8: bl       #0x1f81400 | System.Linq.Enumerable$$Where<object>
0x1ca98cc: ldr      x1, [x24]
0x1ca98d0: bl       #0x1f80630 | System.Linq.Enumerable$$ToList<object>
0x1ca98d4: cbz      x0, #0x1ca9978
0x1ca98d8: adrp     x8, #0x4187000
0x1ca98dc: ldr      x8, [x8, #0xb8]
0x1ca98e0: adrp     x20, #0x4187000
0x1ca98e4: adrp     x21, #0x4186000
0x1ca98e8: adrp     x22, #0x4187000
0x1ca98ec: ldr      x1, [x8]
0x1ca98f0: ldr      x20, [x20, #0xa8]
0x1ca98f4: ldr      x21, [x21, #0xf10]
0x1ca98f8: ldr      x22, [x22, #0xa0]
0x1ca98fc: add      x8, sp, #8
0x1ca9900: bl       #0x2e6072c | System.Collections.Generic.List<object>$$GetEnumerator
0x1ca9904: ldr      x1, [x20]
0x1ca9908: add      x0, sp, #8
0x1ca990c: bl       #0x2ae8064 | System.Collections.Generic.List.Enumerator<object>$$MoveNext
0x1ca9910: tbz      w0, #0, #0x1ca9930
0x1ca9914: ldr      x8, [sp, #0x18]
0x1ca9918: cbz      x8, #0x1ca9974
0x1ca991c: ldr      x1, [x8, #0x38]
0x1ca9920: ldr      w2, [x8, #0x40]
0x1ca9924: mov      x0, x19
0x1ca9928: bl       #0x1ca8f68 | GetCollectionControl$$UnlockCollectionTo
0x1ca992c: b        #0x1ca9904 | 
0x1ca9930: ldr      x1, [x22]
0x1ca9934: add      x0, sp, #8
0x1ca9938: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1ca993c: ldr      x8, [x21]
0x1ca9940: ldr      x8, [x8, #0xb8]
0x1ca9944: ldr      x8, [x8]
0x1ca9948: cbz      x8, #0x1ca995c
0x1ca994c: ldr      x9, [x8, #0x18]
0x1ca9950: ldr      x0, [x8, #0x40]
0x1ca9954: ldr      x1, [x8, #0x28]
0x1ca9958: blr      x9
0x1ca995c: ldp      x20, x19, [sp, #0x50]
0x1ca9960: ldp      x22, x21, [sp, #0x40]
0x1ca9964: ldp      x24, x23, [sp, #0x30]
0x1ca9968: ldp      x30, x25, [sp, #0x20]
0x1ca996c: add      sp, sp, #0x60
0x1ca9970: ret      
0x1ca9974: bl       #0x1b647c8 | 
0x1ca9978: bl       #0x1b647c8 | 
0x1ca997c: b        #0x1ca9984 | 
0x1ca9980: b        #0x1ca9984 | 
0x1ca9984: mov      x19, x0
0x1ca9988: cmp      w1, #1
0x1ca998c: b.ne     #0x1ca99b8
0x1ca9990: mov      x0, x19
0x1ca9994: bl       #0x3e998d0 | 
0x1ca9998: ldr      x20, [x0]
0x1ca999c: bl       #0x3e998e0 | 
0x1ca99a0: ldr      x1, [x22]
0x1ca99a4: add      x0, sp, #8
0x1ca99a8: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1ca99ac: cbz      x20, #0x1ca993c
0x1ca99b0: mov      x0, x20
0x1ca99b4: bl       #0x1b647c0 | 
0x1ca99b8: mov      x20, xzr
0x1ca99bc: b        #0x1ca99c4 | 
0x1ca99c0: mov      x19, x0
0x1ca99c4: ldr      x1, [x22]
0x1ca99c8: add      x0, sp, #8
0x1ca99cc: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1ca99d0: cbnz     x20, #0x1ca99dc
0x1ca99d4: mov      x0, x19
0x1ca99d8: bl       #0x1c65b3c | 
0x1ca99dc: mov      x0, x20
0x1ca99e0: bl       #0x1b647c0 | 
0x1ca99e4: bl       #0x194772c | 

// 0x1ca9ed8 GameInformation$$GetKey
0x1ca9ed8: stp      x30, x23, [sp, #-0x30]!
0x1ca9edc: stp      x22, x21, [sp, #0x10]
0x1ca9ee0: stp      x20, x19, [sp, #0x20]
0x1ca9ee4: adrp     x20, #0x4475000
0x1ca9ee8: ldrb     w8, [x20, #0x8a9]
0x1ca9eec: mov      w21, w2
0x1ca9ef0: mov      x22, x1
0x1ca9ef4: mov      x19, x0
0x1ca9ef8: tbnz     w8, #0, #0x1ca9f34
0x1ca9efc: adrp     x0, #0x4187000
0x1ca9f00: ldr      x0, [x0, #0x188]
0x1ca9f04: bl       #0x1b64570 | 
0x1ca9f08: adrp     x0, #0x4187000
0x1ca9f0c: ldr      x0, [x0, #0x190]
0x1ca9f10: bl       #0x1b64570 | 
0x1ca9f14: adrp     x0, #0x4186000
0x1ca9f18: ldr      x0, [x0, #0xe68]
0x1ca9f1c: bl       #0x1b64570 | 
0x1ca9f20: adrp     x0, #0x4186000
0x1ca9f24: ldr      x0, [x0, #0xaa8] | 0x4186aa8 'key'
0x1ca9f28: bl       #0x1b64570 | 
0x1ca9f2c: mov      w8, #1
0x1ca9f30: strb     w8, [x20, #0x8a9]
0x1ca9f34: ldr      x0, [x19, #0xf0]
0x1ca9f38: cbz      x0, #0x1caa0e4
0x1ca9f3c: adrp     x23, #0x4187000
0x1ca9f40: ldr      x23, [x23, #0x190]
0x1ca9f44: mov      w20, wzr
0x1ca9f48: ldr      w8, [x0, #0x18]
0x1ca9f4c: cmp      w20, w8
0x1ca9f50: b.ge     #0x1ca9fac
0x1ca9f54: ldr      x2, [x23]
0x1ca9f58: mov      w1, w20
0x1ca9f5c: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1ca9f60: cbz      x0, #0x1caa0e4
0x1ca9f64: ldr      x0, [x0, #0x10]
0x1ca9f68: mov      x1, x22
0x1ca9f6c: mov      x2, xzr
0x1ca9f70: bl       #0x32fac7c | System.String$$op_Equality
0x1ca9f74: tbz      w0, #0, #0x1ca9f9c
0x1ca9f78: ldr      x0, [x19, #0xf0]
0x1ca9f7c: cbz      x0, #0x1caa0e4
0x1ca9f80: ldr      x2, [x23]
0x1ca9f84: mov      w1, w20
0x1ca9f88: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1ca9f8c: cbz      x0, #0x1caa0e4
0x1ca9f90: ldr      w8, [x0, #0x1c]
0x1ca9f94: cmp      w8, w21
0x1ca9f98: b.eq     #0x1ca9fbc
0x1ca9f9c: ldr      x0, [x19, #0xf0]
0x1ca9fa0: add      w20, w20, #1
0x1ca9fa4: cbnz     x0, #0x1ca9f48
0x1ca9fa8: b        #0x1caa0e4 | 
0x1ca9fac: ldp      x20, x19, [sp, #0x20]
0x1ca9fb0: ldp      x22, x21, [sp, #0x10]
0x1ca9fb4: ldp      x30, x23, [sp], #0x30
0x1ca9fb8: ret      
0x1ca9fbc: ldr      x0, [x19, #0xf0]
0x1ca9fc0: cbz      x0, #0x1caa0e4
0x1ca9fc4: ldr      x2, [x23]
0x1ca9fc8: mov      w1, w20
0x1ca9fcc: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1ca9fd0: cbz      x0, #0x1caa0e4
0x1ca9fd4: ldr      x8, [x19, #0xf0]
0x1ca9fd8: cbz      x8, #0x1caa0e4
0x1ca9fdc: ldr      x2, [x23]
0x1ca9fe0: ldr      w21, [x0, #0x20]
0x1ca9fe4: mov      x0, x8
0x1ca9fe8: mov      w1, w20
0x1ca9fec: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1ca9ff0: cbz      x0, #0x1caa0e4
0x1ca9ff4: ldr      w8, [x0, #0x18]
0x1ca9ff8: sub      w8, w21, w8
0x1ca9ffc: cmp      w8, #1
0x1caa000: b.lt     #0x1caa028
0x1caa004: ldr      x0, [x19, #0xf0]
0x1caa008: cbz      x0, #0x1caa0e4
0x1caa00c: ldr      x2, [x23]
0x1caa010: mov      w1, w20
0x1caa014: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1caa018: cbz      x0, #0x1caa0e4
0x1caa01c: ldr      w8, [x0, #0x18]
0x1caa020: add      w8, w8, #1
0x1caa024: str      w8, [x0, #0x18]
0x1caa028: ldr      x0, [x19, #0xf0]
0x1caa02c: cbz      x0, #0x1caa0e4
0x1caa030: ldr      x2, [x23]
0x1caa034: mov      w1, w20
0x1caa038: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1caa03c: cbz      x0, #0x1caa0e4
0x1caa040: add      x0, x0, #0x1c
0x1caa044: mov      x1, xzr
0x1caa048: bl       #0x3478b00 | System.Int32$$ToString
0x1caa04c: ldr      x8, [x19, #0xf0]
0x1caa050: cbz      x8, #0x1caa0e4
0x1caa054: ldr      x2, [x23]
0x1caa058: mov      x21, x0
0x1caa05c: mov      x0, x8
0x1caa060: mov      w1, w20
0x1caa064: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1caa068: cbz      x0, #0x1caa0e4
0x1caa06c: adrp     x8, #0x4186000
0x1caa070: ldr      x2, [x0, #0x10]
0x1caa074: ldr      x8, [x8, #0xaa8] | 0x4186aa8 'key'
0x1caa078: mov      x0, x21
0x1caa07c: mov      x3, xzr
0x1caa080: ldr      x1, [x8]
0x1caa084: bl       #0x33087d4 | System.String$$Concat
0x1caa088: ldr      x8, [x19, #0xf0]
0x1caa08c: cbz      x8, #0x1caa0e4
0x1caa090: ldr      x2, [x23]
0x1caa094: mov      x19, x0
0x1caa098: mov      x0, x8
0x1caa09c: mov      w1, w20
0x1caa0a0: bl       #0x2e5f97c | System.Collections.Generic.List<object>$$get_Item
0x1caa0a4: cbz      x0, #0x1caa0e4
0x1caa0a8: adrp     x8, #0x4186000
0x1caa0ac: ldr      x8, [x8, #0xe68]
0x1caa0b0: ldr      w20, [x0, #0x18]
0x1caa0b4: ldr      x8, [x8]
0x1caa0b8: ldr      w9, [x8, #0xe0]
0x1caa0bc: cbnz     w9, #0x1caa0c8
0x1caa0c0: mov      x0, x8
0x1caa0c4: bl       #0x1b646a4 | 
0x1caa0c8: mov      x0, x19
0x1caa0cc: mov      w1, w20
0x1caa0d0: ldp      x20, x19, [sp, #0x20]
0x1caa0d4: ldp      x22, x21, [sp, #0x10]
0x1caa0d8: mov      x2, xzr
0x1caa0dc: ldp      x30, x23, [sp], #0x30
0x1caa0e0: b        #0x1cc5034 | SaveManagement$$SaveInt
0x1caa0e4: bl       #0x1b647c8 | 

// 0x1cbddc0 GameInformation$$GetRemainingUnlockTimes
0x1cbddc0: sub      sp, sp, #0x50
0x1cbddc4: stp      x30, x23, [sp, #0x20]
0x1cbddc8: stp      x22, x21, [sp, #0x30]
0x1cbddcc: stp      x20, x19, [sp, #0x40]
0x1cbddd0: adrp     x22, #0x4475000
0x1cbddd4: ldrb     w8, [x22, #0x8aa]
0x1cbddd8: mov      w19, w2
0x1cbdddc: mov      x20, x1
0x1cbdde0: mov      x21, x0
0x1cbdde4: tbnz     w8, #0, #0x1cbde20
0x1cbdde8: adrp     x0, #0x4187000
0x1cbddec: ldr      x0, [x0, #0xcb8]
0x1cbddf0: bl       #0x1b64570 | 
0x1cbddf4: adrp     x0, #0x4187000
0x1cbddf8: ldr      x0, [x0, #0xcc0]
0x1cbddfc: bl       #0x1b64570 | 
0x1cbde00: adrp     x0, #0x4187000
0x1cbde04: ldr      x0, [x0, #0xcc8]
0x1cbde08: bl       #0x1b64570 | 
0x1cbde0c: adrp     x0, #0x4187000
0x1cbde10: ldr      x0, [x0, #0xcd0]
0x1cbde14: bl       #0x1b64570 | 
0x1cbde18: mov      w8, #1
0x1cbde1c: strb     w8, [x22, #0x8aa]
0x1cbde20: stp      xzr, xzr, [sp, #8]
0x1cbde24: str      xzr, [sp, #0x18]
0x1cbde28: ldr      x0, [x21, #0xf0]
0x1cbde2c: cbz      x0, #0x1cbdec8
0x1cbde30: adrp     x8, #0x4187000
0x1cbde34: ldr      x8, [x8, #0xcd0]
0x1cbde38: adrp     x22, #0x4187000
0x1cbde3c: adrp     x21, #0x4187000
0x1cbde40: ldr      x1, [x8]
0x1cbde44: ldr      x22, [x22, #0xcc0]
0x1cbde48: ldr      x21, [x21, #0xcb8]
0x1cbde4c: add      x8, sp, #8
0x1cbde50: bl       #0x2e6072c | System.Collections.Generic.List<object>$$GetEnumerator
0x1cbde54: ldr      x1, [x22]
0x1cbde58: add      x0, sp, #8
0x1cbde5c: bl       #0x2ae8064 | System.Collections.Generic.List.Enumerator<object>$$MoveNext
0x1cbde60: tbz      w0, #0, #0x1cbde9c
0x1cbde64: ldr      x23, [sp, #0x18]
0x1cbde68: cbz      x23, #0x1cbdec4
0x1cbde6c: ldr      x0, [x23, #0x10]
0x1cbde70: mov      x1, x20
0x1cbde74: mov      x2, xzr
0x1cbde78: bl       #0x32fac7c | System.String$$op_Equality
0x1cbde7c: tbz      w0, #0, #0x1cbde54
0x1cbde80: ldr      w8, [x23, #0x1c]
0x1cbde84: cmp      w8, w19
0x1cbde88: b.ne     #0x1cbde54
0x1cbde8c: ldr      w8, [x23, #0x20]
0x1cbde90: ldr      w9, [x23, #0x18]
0x1cbde94: sub      w19, w8, w9
0x1cbde98: b        #0x1cbdea0 | 
0x1cbde9c: mov      w19, #-1
0x1cbdea0: ldr      x1, [x21]
0x1cbdea4: add      x0, sp, #8
0x1cbdea8: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1cbdeac: mov      w0, w19
0x1cbdeb0: ldp      x20, x19, [sp, #0x40]
0x1cbdeb4: ldp      x22, x21, [sp, #0x30]
0x1cbdeb8: ldp      x30, x23, [sp, #0x20]
0x1cbdebc: add      sp, sp, #0x50
0x1cbdec0: ret      
0x1cbdec4: bl       #0x1b647c8 | 
0x1cbdec8: bl       #0x1b647c8 | 
0x1cbdecc: b        #0x1cbded4 | 
0x1cbded0: b        #0x1cbded4 | 
0x1cbded4: mov      x19, x0
0x1cbded8: cmp      w1, #1
0x1cbdedc: b.ne     #0x1cbdf08
0x1cbdee0: mov      x0, x19
0x1cbdee4: bl       #0x3e998d0 | 
0x1cbdee8: ldr      x20, [x0]
0x1cbdeec: bl       #0x3e998e0 | 
0x1cbdef0: ldr      x1, [x21]
0x1cbdef4: add      x0, sp, #8
0x1cbdef8: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1cbdefc: cbnz     x20, #0x1cbdf10
0x1cbdf00: mov      w19, #-1
0x1cbdf04: b        #0x1cbdeac | 
0x1cbdf08: mov      x20, xzr
0x1cbdf0c: b        #0x1cbdf1c | 
0x1cbdf10: mov      x0, x20
0x1cbdf14: bl       #0x1b647c0 | 
0x1cbdf18: mov      x19, x0
0x1cbdf1c: ldr      x1, [x21]
0x1cbdf20: add      x0, sp, #8
0x1cbdf24: bl       #0x2ae8060 | System.Collections.Generic.List.Enumerator<object>$$Dispose
0x1cbdf28: cbnz     x20, #0x1cbdf34
0x1cbdf2c: mov      x0, x19
0x1cbdf30: bl       #0x1c65b3c | 
0x1cbdf34: mov      x0, x20
0x1cbdf38: bl       #0x1b647c0 | 
0x1cbdf3c: bl       #0x194772c | 

// 0x1cf6504 Phigros2.Chapter9.Chapter9CollectionUnlockSprite$$get_State
0x1cf6504: ldr      w0, [x0, #0x74]
0x1cf6508: ret      

// 0x1cf6530 Phigros2.Chapter9.Chapter9CollectionUnlockSprite$$SyncRaycastPadding
0x1cf6530: stp      d11, d10, [sp, #-0x40]!
0x1cf6534: stp      d9, d8, [sp, #0x10]
0x1cf6538: stp      x30, x21, [sp, #0x20]
0x1cf653c: stp      x20, x19, [sp, #0x30]
0x1cf6540: adrp     x20, #0x4475000
0x1cf6544: ldrb     w8, [x20, #0xb21]
0x1cf6548: mov      x19, x0
0x1cf654c: tbnz     w8, #0, #0x1cf6570
0x1cf6550: adrp     x0, #0x418a000
0x1cf6554: ldr      x0, [x0, #0x2b0]
0x1cf6558: bl       #0x1b64570 | 
0x1cf655c: adrp     x0, #0x4185000
0x1cf6560: ldr      x0, [x0, #0x208]
0x1cf6564: bl       #0x1b64570 | 
0x1cf6568: mov      w8, #1
0x1cf656c: strb     w8, [x20, #0xb21]
0x1cf6570: ldr      x0, [x19, #0x30]
0x1cf6574: cbz      x0, #0x1cf6684
0x1cf6578: mov      x1, xzr
0x1cf657c: bl       #0x3d093e4 | UnityEngine.UI.Graphic$$get_rectTransform
0x1cf6580: cbz      x0, #0x1cf6684
0x1cf6584: adrp     x20, #0x4185000
0x1cf6588: adrp     x21, #0x418a000
0x1cf658c: ldr      x20, [x20, #0x208]
0x1cf6590: ldr      x21, [x21, #0x2b0]
0x1cf6594: mov      x1, xzr
0x1cf6598: bl       #0x3c69ef8 | UnityEngine.RectTransform$$get_rect
0x1cf659c: ldr      x0, [x20]
0x1cf65a0: ldr      x20, [x19, #0x60]
0x1cf65a4: mov      v9.16b, v0.16b
0x1cf65a8: mov      v8.16b, v1.16b
0x1cf65ac: ldr      w8, [x0, #0xe0]
0x1cf65b0: mov      v10.16b, v2.16b
0x1cf65b4: mov      v11.16b, v3.16b
0x1cf65b8: cbnz     w8, #0x1cf65c0
0x1cf65bc: bl       #0x1b646a4 | 
0x1cf65c0: mov      x0, x20
0x1cf65c4: mov      x1, xzr
0x1cf65c8: bl       #0x3c64618 | UnityEngine.Object$$op_Implicit
0x1cf65cc: ldr      x8, [x21]
0x1cf65d0: mov      w20, w0
0x1cf65d4: ldr      w9, [x8, #0xe0]
0x1cf65d8: cbnz     w9, #0x1cf65e8
0x1cf65dc: mov      x0, x8
0x1cf65e0: bl       #0x1b646a4 | 
0x1cf65e4: ldr      x8, [x21]
0x1cf65e8: ldr      x8, [x8, #0xb8]
0x1cf65ec: tbz      w20, #0, #0x1cf6604
0x1cf65f0: ldr      s0, [x8, #0x18]
0x1cf65f4: ldr      s1, [x8, #0x20]
0x1cf65f8: add      x9, x8, #0x24
0x1cf65fc: fadd     s0, s0, s1
0x1cf6600: b        #0x1cf660c | 
0x1cf6604: ldr      s0, [x8, #0x28]
0x1cf6608: add      x9, x8, #0x34
0x1cf660c: ldr      x8, [x19, #0x30]
0x1cf6610: cbz      x8, #0x1cf6684
0x1cf6614: fmov     s1, #0.50000000
0x1cf6618: ldr      s2, [x9]
0x1cf661c: fmul     s6, s10, s1
0x1cf6620: fmul     s1, s11, s1
0x1cf6624: fadd     s6, s9, s6
0x1cf6628: fadd     s1, s8, s1
0x1cf662c: fsub     s7, s6, s0
0x1cf6630: fadd     s0, s6, s0
0x1cf6634: fsub     s6, s7, s9
0x1cf6638: fsub     s7, s1, s2
0x1cf663c: fadd     s3, s10, s9
0x1cf6640: fadd     s4, s11, s8
0x1cf6644: fadd     s1, s1, s2
0x1cf6648: fsub     s2, s7, s8
0x1cf664c: ldp      x20, x19, [sp, #0x30]
0x1cf6650: ldp      x30, x21, [sp, #0x20]
0x1cf6654: ldp      d9, d8, [sp, #0x10]
0x1cf6658: fmov     s5, wzr
0x1cf665c: fsub     s0, s3, s0
0x1cf6660: fsub     s1, s4, s1
0x1cf6664: fmin     s0, s0, s5
0x1cf6668: fmin     s3, s6, s5
0x1cf666c: fmin     s1, s1, s5
0x1cf6670: fmin     s2, s2, s5
0x1cf6674: stp      s3, s2, [x8, #0x3c]
0x1cf6678: stp      s0, s1, [x8, #0x44]
0x1cf667c: ldp      d11, d10, [sp], #0x40
0x1cf6680: ret      
0x1cf6684: bl       #0x1b647c8 | 

// 0x1d0ce6c Phigros2.Chapter9.Key$$IsCollectionRead
0x1d0ce6c: stp      x30, x21, [sp, #-0x20]!
0x1d0ce70: stp      x20, x19, [sp, #0x10]
0x1d0ce74: adrp     x20, #0x4475000
0x1d0ce78: ldrb     w8, [x20, #0xc09]
0x1d0ce7c: mov      x19, x0
0x1d0ce80: tbnz     w8, #0, #0x1d0cea4
0x1d0ce84: adrp     x0, #0x4186000
0x1d0ce88: ldr      x0, [x0, #0xe68]
0x1d0ce8c: bl       #0x1b64570 | 
0x1d0ce90: adrp     x0, #0x4187000
0x1d0ce94: ldr      x0, [x0, #0x118] | 0x4187118 'CollectionTextOpened'
0x1d0ce98: bl       #0x1b64570 | 
0x1d0ce9c: mov      w8, #1
0x1d0cea0: strb     w8, [x20, #0xc09]
0x1d0cea4: cbz      x19, #0x1d0cf18
0x1d0cea8: ldr      w8, [x19, #0x10]
0x1d0ceac: adrp     x20, #0x4187000
0x1d0ceb0: adrp     x21, #0x4186000
0x1d0ceb4: ldr      x20, [x20, #0x118] | 0x4187118 'CollectionTextOpened'
0x1d0ceb8: ldr      x21, [x21, #0xe68]
0x1d0cebc: sub      w2, w8, #1
0x1d0cec0: mov      x0, x19
0x1d0cec4: mov      w1, wzr
0x1d0cec8: mov      x3, xzr
0x1d0cecc: bl       #0x3309e78 | System.String$$Substring
0x1d0ced0: ldr      x1, [x20]
0x1d0ced4: mov      x2, xzr
0x1d0ced8: bl       #0x32fce8c | System.String$$Concat
0x1d0cedc: ldr      x8, [x21]
0x1d0cee0: mov      x20, x0
0x1d0cee4: ldr      w9, [x8, #0xe0]
0x1d0cee8: cbnz     w9, #0x1d0cef4
0x1d0ceec: mov      x0, x8
0x1d0cef0: bl       #0x1b646a4 | 
0x1d0cef4: mov      x0, x20
0x1d0cef8: mov      w1, wzr
0x1d0cefc: mov      x2, xzr
0x1d0cf00: bl       #0x1cc5ccc | SaveManagement$$LoadInt
0x1d0cf04: mov      w1, w0
0x1d0cf08: mov      x0, x19
0x1d0cf0c: ldp      x20, x19, [sp, #0x10]
0x1d0cf10: ldp      x30, x21, [sp], #0x20
0x1d0cf14: b        #0x1d0daf0 | Phigros2.Chapter9.Key$$IsCollectionRead
0x1d0cf18: bl       #0x1b647c8 | 

// 0x1d0da0c Phigros2.Chapter9.Key$$IsCollectionUnlocked
0x1d0da0c: str      x30, [sp, #-0x30]!
0x1d0da10: stp      x22, x21, [sp, #0x10]
0x1d0da14: stp      x20, x19, [sp, #0x20]
0x1d0da18: adrp     x20, #0x4475000
0x1d0da1c: ldrb     w8, [x20, #0xc08]
0x1d0da20: mov      x19, x0
0x1d0da24: tbnz     w8, #0, #0x1d0da48
0x1d0da28: adrp     x0, #0x4186000
0x1d0da2c: ldr      x0, [x0, #0xe68]
0x1d0da30: bl       #0x1b64570 | 
0x1d0da34: adrp     x0, #0x4187000
0x1d0da38: ldr      x0, [x0, #0xd8] | 0x41870d8 '1key'
0x1d0da3c: bl       #0x1b64570 | 
0x1d0da40: mov      w8, #1
0x1d0da44: strb     w8, [x20, #0xc08]
0x1d0da48: cbz      x19, #0x1d0daec
0x1d0da4c: ldr      w8, [x19, #0x10]
0x1d0da50: adrp     x21, #0x4187000
0x1d0da54: adrp     x22, #0x4186000
0x1d0da58: ldr      x21, [x21, #0xd8] | 0x41870d8 '1key'
0x1d0da5c: ldr      x22, [x22, #0xe68]
0x1d0da60: sub      w2, w8, #1
0x1d0da64: mov      x0, x19
0x1d0da68: mov      w1, wzr
0x1d0da6c: mov      x3, xzr
0x1d0da70: bl       #0x3309e78 | System.String$$Substring
0x1d0da74: ldr      w8, [x19, #0x10]
0x1d0da78: mov      x20, x0
0x1d0da7c: mov      x0, x19
0x1d0da80: mov      x2, xzr
0x1d0da84: sub      w1, w8, #1
0x1d0da88: bl       #0x3303f24 | System.String$$get_Chars
0x1d0da8c: ldr      x8, [x21]
0x1d0da90: mov      w19, w0
0x1d0da94: mov      x1, x20
0x1d0da98: mov      x2, xzr
0x1d0da9c: mov      x0, x8
0x1d0daa0: bl       #0x32fce8c | System.String$$Concat
0x1d0daa4: ldr      x8, [x22]
0x1d0daa8: mov      x20, x0
0x1d0daac: ldr      w9, [x8, #0xe0]
0x1d0dab0: cbnz     w9, #0x1d0dabc
0x1d0dab4: mov      x0, x8
0x1d0dab8: bl       #0x1b646a4 | 
0x1d0dabc: mov      x0, x20
0x1d0dac0: mov      w1, wzr
0x1d0dac4: mov      x2, xzr
0x1d0dac8: and      w19, w19, #0xffff
0x1d0dacc: bl       #0x1cc5ccc | SaveManagement$$LoadInt
0x1d0dad0: sub      w8, w19, #0x2f
0x1d0dad4: ldp      x20, x19, [sp, #0x20]
0x1d0dad8: ldp      x22, x21, [sp, #0x10]
0x1d0dadc: cmp      w0, w8
0x1d0dae0: cset     w0, ge
0x1d0dae4: ldr      x30, [sp], #0x30
0x1d0dae8: ret      
0x1d0daec: bl       #0x1b647c8 | 

// 0x1d0daf0 Phigros2.Chapter9.Key$$IsCollectionRead
0x1d0daf0: stp      x30, x19, [sp, #-0x10]!
0x1d0daf4: cbz      x0, #0x1d0db24
0x1d0daf8: ldr      w8, [x0, #0x10]
0x1d0dafc: mov      w19, w1
0x1d0db00: mov      x2, xzr
0x1d0db04: sub      w1, w8, #1
0x1d0db08: bl       #0x3303f24 | System.String$$get_Chars
0x1d0db0c: and      w8, w0, #0xffff
0x1d0db10: sub      w8, w8, #0x2f
0x1d0db14: cmp      w8, w19
0x1d0db18: cset     w0, le
0x1d0db1c: ldp      x30, x19, [sp], #0x10
0x1d0db20: ret      
0x1d0db24: bl       #0x1b647c8 | 
