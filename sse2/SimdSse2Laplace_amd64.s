//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

DATA LCDATA1<>+0x000(SB)/8, $0x0000000000000000
DATA LCDATA1<>+0x008(SB)/8, $0xff00000000000000
GLOBL LCDATA1<>(SB), 8, $16

TEXT ·_SimdSse2Laplace(SB), 7, $24-48

	MOVQ arg1+0(FP), DI
	MOVQ arg2+8(FP), SI
	MOVQ arg3+16(FP), DX
	MOVQ arg4+24(FP), CX
	MOVQ arg5+32(FP), R8
	MOVQ arg6+40(FP), R9
	LEAQ LCDATA1<>(SB), BP
	SUBQ $24, SP

	QUAD $0x4c894808244c894c; QUAD $0xf08948f989481024
	LONG $0xf0e08348; WORD $0x3948; BYTE $0xf0
	JNE  LBB0_9
	QUAD $0x48f0e08348c88948
	WORD $0xc839
	JNE  LBB0_9
	QUAD $0xf8894808247c8b48
	LONG $0xf0e08348; WORD $0x3948; BYTE $0xf8
	JNE  LBB0_9
	QUAD $0x4cf0e08348c0894c
	WORD $0xc039
	JNE  LBB0_9
	LONG $0x247c8348; WORD $0x0010
	JE   LBB0_13
	QUAD $0xf0e48349ff628d4c; QUAD $0x788d481024448b48
	QUAD $0x4cfe0824648348ff; QUAD $0xffb8f6314511598d
	QUAD $0xc86e0f4466000000; QUAD $0x0f4466e4ef0f4566
	WORD $0x456f; BYTE $0x00

LBB0_6:
	QUAD $0xc6af0f48ff468d49; QUAD $0x4d303c8d4cc80148
	QUAD $0x0f66f6854d372c8d; QUAD $0x546f0f44f3061c6f
	QUAD $0x3949c7440f490106; QUAD $0x0f4466ef440f4dfe
	QUAD $0x66c56f0f4166286f; QUAD $0x6f0f416601f8730f
	QUAD $0x0f66e1db0f4166e5; QUAD $0x6601706f0ff3e0eb
	QUAD $0x01fa730f66d36f0f; QUAD $0xdb0f4166c36f0f66
	QUAD $0x0f4566c2eb0f66c1; QUAD $0xfb6f0f4166005d6f
	QUAD $0x0f416601ff730f66; QUAD $0x66d1db0f4166d36f
	QUAD $0x7d6f0f41f3d7eb0f; QUAD $0x4166ed6f0f416601
	QUAD $0x66ce6f0f66ec600f; QUAD $0xcdfd0f66cc600f41
	QUAD $0x0f4166ea6f0f4166; QUAD $0x0f66cdfd0f66ec60
	QUAD $0x66ec600f4166eb6f; QUAD $0xe9f90f6603f5710f
	QUAD $0x600f4166cc6f0f66; QUAD $0x0f4166e9f90f66cc
	QUAD $0x66cc600f4166cb6f; QUAD $0x66cf6f0f66e9f90f
	QUAD $0xe9f90f66cc600f41; QUAD $0x600f4166c86f0f66
	QUAD $0x6f0f66e9f90f66cc; QUAD $0x0f66cc600f4166ca
	QUAD $0x66287f0f4166e9f9; QUAD $0x680f4166ec680f45
	QUAD $0x4566f5fd0f4166f4; QUAD $0xf2fd0f4166d4680f
	QUAD $0x710f66dc680f4166; QUAD $0x4166def90f6603f3
	QUAD $0x66dcf90f66e4680f; QUAD $0xf90f4166dc680f45
	QUAD $0x0f66fc680f4166db; QUAD $0x66c4680f4166dff9
	QUAD $0xd4680f4166d8f90f; QUAD $0x7f0f4166daf90f66
	QUAD $0x894c10fc83491058
	LONG $0x0fba41db; WORD $0x0000; BYTE $0x00
	JBE  LBB0_7

LBB0_8:
	QUAD $0x426610146f0f42f3; QUAD $0x0f42f301106c6f0f
	QUAD $0x7b6f0ff30210446f; QUAD $0x0ff3ff5b6f0f66fe
	QUAD $0x156c6f0f47f3336f; QUAD $0x01155c6f0f476600
	QUAD $0x660215546f0f47f3; QUAD $0xcc600f4166ca6f0f
	QUAD $0x600f4166e56f0f66; QUAD $0x6f0f66e1fd0f66e4
	QUAD $0x0f66cc600f4166c8; QUAD $0x4166cf6f0f66e1fd
	QUAD $0x66e1fd0f66cc600f; QUAD $0xcc600f4166cb6f0f
	QUAD $0xf90f6603f1710f66; QUAD $0x0f4166e66f0f66cc
	QUAD $0x4166ccf90f66e460; QUAD $0xe4600f4166e56f0f
	QUAD $0x6f0f4166ccf90f66; QUAD $0x0f66e4600f4166e3
	QUAD $0x66e26f0f4166ccf9; QUAD $0xccf90f66e4600f41
	QUAD $0x6602504c7f0f4366; QUAD $0x680f4166d4680f41
	QUAD $0x0f4166eafd0f66ec; QUAD $0x4166e8fd0f66c468
	QUAD $0x66effd0f66fc680f; QUAD $0xf3710f66dc680f41
	QUAD $0x0f4166ddf90f6603; QUAD $0x4566def90f66f468
	QUAD $0xddf90f4166ec680f; QUAD $0x0f4166dc680f4566
	QUAD $0x66d4680f4566dbf9; QUAD $0x7f0f4366daf90f41
	QUAD $0x49104a8d4d12505c; QUAD $0x4d10c3834811c283
	LONG $0x894de239; BYTE $0xca
	JB   LBB0_8

LBB0_7:
	QUAD $0xf3ef10546f0f44f3; QUAD $0x6f0f66f0107c6f0f
	QUAD $0x0f6601d8730f66c7; QUAD $0x66e8db0f4166ef6f
	QUAD $0x5c6f0f45f3e8eb0f; QUAD $0x175c6f0f41f3ef17
	QUAD $0x730f66c36f0f66f0; QUAD $0x4166f36f0f6601d8
	QUAD $0xf3f0eb0f66f0db0f; QUAD $0x41f3ef156c6f0f45
	QUAD $0x6f0f66f015446f0f; QUAD $0x0f6601d9730f66c8
	QUAD $0x66d0db0f4166d06f; QUAD $0xca6f0f4166d1eb0f
	QUAD $0x6f0f66cc600f4166; QUAD $0x0f66e4600f4166e7
	QUAD $0x66cb6f0f4166e1fd; QUAD $0xe1fd0f66cc600f41
	QUAD $0x0f4166cd6f0f4166; QUAD $0x0f66e1fd0f66cc60
	QUAD $0x66cc600f4166cb6f; QUAD $0xccf90f6603f1710f
	QUAD $0x600f4166e56f0f66; QUAD $0x6f0f66ccf90f66e4
	QUAD $0x0f66e4600f4166e0; QUAD $0x4166e66f0f66ccf9
	QUAD $0x66ccf90f66e4600f; QUAD $0xe4600f4166e26f0f
	QUAD $0x7f0f41f3ccf90f66; QUAD $0xd4680f4566e0504c
	QUAD $0x0f4166fc680f4166; QUAD $0x66dc680f4566fafd
	QUAD $0x680f4566fbfd0f41; QUAD $0x4166fdfd0f4166ec
	QUAD $0x03f3710f66dc680f; QUAD $0x680f4166dff90f66
	QUAD $0x0f4166ddf90f66ec; QUAD $0x4166d8f90f66c468
	QUAD $0x66def90f66f4680f; QUAD $0xdaf90f66d4680f41
	QUAD $0x4cf0505c7f0f41f3; QUAD $0x49c6ff4908244403
	LONG $0x3b4cf301; WORD $0x2474; BYTE $0x10
	JNE  LBB0_6
	JMP  LBB0_13

LBB0_9:
	LONG $0x247c8348; WORD $0x0010
	JE   LBB0_13
	QUAD $0xf0e48349ff628d4c; QUAD $0x788d481024448b48
	QUAD $0x4cfe0824648348ff; QUAD $0xffb8f6314511598d
	QUAD $0xc86e0f4466000000; QUAD $0x0f4466e4ef0f4566
	WORD $0x456f; BYTE $0x00

LBB0_11:
	QUAD $0xc6af0f48ff468d49; QUAD $0x4d303c8d4cc80148
	QUAD $0x0ff3f6854d372c8d; QUAD $0x546f0f44f3061c6f
	QUAD $0x3949c7440f490106; QUAD $0x0f44f3ef440f4dfe
	QUAD $0x6601786f0ff3286f; QUAD $0xf8730f66c56f0f41
	QUAD $0x4166d56f0f416601; QUAD $0x66d0eb0f66d1db0f
	QUAD $0x01f8730f66c36f0f; QUAD $0xdb0f4166e36f0f66
	QUAD $0x0f41f3e0eb0f66e1; QUAD $0x5d6f0f45f300456f
	QUAD $0x730f66c86f0f6601; QUAD $0x4166e86f0f6601f9
	QUAD $0x66e9eb0f66e9db0f; QUAD $0x600f4166cd6f0f41
	QUAD $0x0f4166f76f0f66cc; QUAD $0x4166f1fd0f66f460
	QUAD $0xcc600f4166ca6f0f; QUAD $0xcb6f0f66f1fd0f66
	QUAD $0x710f66cc600f4166; QUAD $0x0f66cef90f6603f1
	QUAD $0x66f4600f4166f26f; QUAD $0x66f06f0f66cef90f
	QUAD $0xcef90f66f4600f41; QUAD $0x0f4166f36f0f4166
	QUAD $0x0f66cef90f66f460; QUAD $0x66f4600f4166f46f
	QUAD $0x66f56f0f66cef90f; QUAD $0xcef90f66f4600f41
	QUAD $0x0f4566087f0f41f3; QUAD $0x66fc680f4166ec68
	QUAD $0x680f4566fdfd0f41; QUAD $0x4166fafd0f4166d4
	QUAD $0x03f3710f66dc680f; QUAD $0x680f4166dff90f66
	QUAD $0x0f4166daf90f66d4; QUAD $0x4566d8f90f66c468
	QUAD $0xdbf90f4166dc680f; QUAD $0xf90f66e4680f4166
	QUAD $0x0f66ec680f4166dc; QUAD $0x10587f0f41f3ddf9
	QUAD $0x41db894c10fc8349
	LONG $0x00000fba; BYTE $0x00
	JBE  LBB0_12

LBB0_14:
	QUAD $0x42f310146f0f42f3; QUAD $0x0f42f301106c6f0f
	QUAD $0x7b6f0ff30210446f; QUAD $0x0ff3ff5b6f0ff3fe
	QUAD $0x156c6f0f47f3336f; QUAD $0x01155c6f0f47f300
	QUAD $0x660215546f0f47f3; QUAD $0xcc600f4166ca6f0f
	QUAD $0x600f4166e56f0f66; QUAD $0x6f0f66e1fd0f66e4
	QUAD $0x0f66cc600f4166c8; QUAD $0x4166cf6f0f66e1fd
	QUAD $0x66e1fd0f66cc600f; QUAD $0xcc600f4166cb6f0f
	QUAD $0xf90f6603f1710f66; QUAD $0x0f4166e66f0f66cc
	QUAD $0x4166ccf90f66e460; QUAD $0xe4600f4166e56f0f
	QUAD $0x6f0f4166ccf90f66; QUAD $0x0f66e4600f4166e3
	QUAD $0x66e26f0f4166ccf9; QUAD $0xccf90f66e4600f41
	QUAD $0x6602504c7f0f43f3; QUAD $0x680f4166d4680f41
	QUAD $0x0f4166eafd0f66ec; QUAD $0x4166e8fd0f66c468
	QUAD $0x66effd0f66fc680f; QUAD $0xf3710f66dc680f41
	QUAD $0x0f4166ddf90f6603; QUAD $0x4566def90f66f468
	QUAD $0xddf90f4166ec680f; QUAD $0x0f4166dc680f4566
	QUAD $0x66d4680f4566dbf9; QUAD $0x7f0f43f3daf90f41
	QUAD $0x49104a8d4d12505c; QUAD $0x4d10c3834811c283
	LONG $0x894de239; BYTE $0xca
	JB   LBB0_14

LBB0_12:
	QUAD $0xf3ef10546f0f44f3; QUAD $0x6f0f66f0107c6f0f
	QUAD $0x0f6601d8730f66c7; QUAD $0x66e8db0f4166ef6f
	QUAD $0x5c6f0f45f3e8eb0f; QUAD $0x175c6f0f41f3ef17
	QUAD $0x730f66c36f0f66f0; QUAD $0x4166f36f0f6601d8
	QUAD $0xf3f0eb0f66f0db0f; QUAD $0x41f3ef156c6f0f45
	QUAD $0x6f0f66f015446f0f; QUAD $0x0f6601d9730f66c8
	QUAD $0x66d0db0f4166d06f; QUAD $0xca6f0f4166d1eb0f
	QUAD $0x6f0f66cc600f4166; QUAD $0x0f66e4600f4166e7
	QUAD $0x66cb6f0f4166e1fd; QUAD $0xe1fd0f66cc600f41
	QUAD $0x0f4166cd6f0f4166; QUAD $0x0f66e1fd0f66cc60
	QUAD $0x66cc600f4166cb6f; QUAD $0xccf90f6603f1710f
	QUAD $0x600f4166e56f0f66; QUAD $0x6f0f66ccf90f66e4
	QUAD $0x0f66e4600f4166e0; QUAD $0x4166e66f0f66ccf9
	QUAD $0x66ccf90f66e4600f; QUAD $0xe4600f4166e26f0f
	QUAD $0x7f0f41f3ccf90f66; QUAD $0xd4680f4566e0504c
	QUAD $0x0f4166fc680f4166; QUAD $0x66dc680f4566fafd
	QUAD $0x680f4566fbfd0f41; QUAD $0x4166fdfd0f4166ec
	QUAD $0x03f3710f66dc680f; QUAD $0x680f4166dff90f66
	QUAD $0x0f4166ddf90f66ec; QUAD $0x4166d8f90f66c468
	QUAD $0x66def90f66f4680f; QUAD $0xdaf90f66d4680f41
	QUAD $0x4cf0505c7f0f41f3; QUAD $0x49c6ff4908244403
	LONG $0x3b4cf301; WORD $0x2474; BYTE $0x10
	JNE  LBB0_11

LBB0_13:
	ADDQ $24, SP
	RET
