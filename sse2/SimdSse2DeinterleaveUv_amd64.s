//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

DATA LCDATA1<>+0x000(SB)/8, $0x00ff00ff00ff00ff
DATA LCDATA1<>+0x008(SB)/8, $0x00ff00ff00ff00ff
GLOBL LCDATA1<>(SB), 8, $16

TEXT ·_SimdSse2DeinterleaveUv(SB), 7, $0-64

	MOVQ arg1+0(FP), DI
	MOVQ arg2+8(FP), SI
	MOVQ arg3+16(FP), DX
	MOVQ arg4+24(FP), CX
	MOVQ arg5+32(FP), R8
	MOVQ arg6+40(FP), R9
	LEAQ LCDATA1<>(SB), BP

	QUAD $0x648b4c4024548b4c; QUAD $0xe08348f089483824
	LONG $0xf03948f0
	JNE  LBB0_20
	QUAD $0x48f0e08348f88948
	WORD $0xf839
	JNE  LBB0_20
	QUAD $0x4cf0e08348c8894c
	WORD $0xc839
	JNE  LBB0_20
	QUAD $0x4cf0e08348c0894c
	WORD $0xc039
	JNE  LBB0_20
	QUAD $0x4cf0e08348d0894c
	WORD $0xd039
	JNE  LBB0_20
	QUAD $0x4cf0e08348e0894c
	WORD $0xe039
	JNE  LBB0_20
	WORD $0x8548; BYTE $0xc9
	JE   LBB0_34
	LONG $0x49d78949; WORD $0xe783; BYTE $0xf0
	JE   LBB0_13
	LONG $0x49db3145; WORD $0xd739
	JNE  LBB0_16
	LONG $0x456f0f66; BYTE $0x00

LBB0_10:
	WORD $0xc031

LBB0_11:
	QUAD $0x6f0f66470c6f0f66; QUAD $0x6f0f66d0db0f66d1
	QUAD $0x66e36f0f6610475c; QUAD $0x66d4670f66e0db0f
	QUAD $0x710f6600147f0f41; QUAD $0x6608d3710f6608d1
	QUAD $0x0c7f0f4166cb670f; QUAD $0xd0394810c0834804
	JB   LBB0_11
	QUAD $0x014dc8014df70148
	LONG $0xc3ff49d4; WORD $0x3949; BYTE $0xcb
	JNE  LBB0_10
	JMP  LBB0_34

LBB0_20:
	WORD $0x8548; BYTE $0xc9
	JE   LBB0_34
	LONG $0x48d38948; WORD $0xe383; BYTE $0xf0
	JE   LBB0_27
	LONG $0x48db3145; WORD $0xd339
	JNE  LBB0_30
	LONG $0x456f0f66; BYTE $0x00

LBB0_24:
	WORD $0xc031

LBB0_25:
	QUAD $0x6f0ff3470c6f0ff3; QUAD $0x66d96f0f66104754
	QUAD $0x66e26f0f66d8db0f; QUAD $0xf3dc670f66e0db0f
	QUAD $0x710f66001c7f0f41; QUAD $0x6608d2710f6608d1
	QUAD $0x0c7f0f41f3ca670f; QUAD $0xd0394810c0834804
	JB   LBB0_25
	QUAD $0x014dc8014df70148
	LONG $0xc3ff49d4; WORD $0x3949; BYTE $0xcb
	JNE  LBB0_24
	JMP  LBB0_34

LBB0_27:
	WORD $0x3948; BYTE $0xd3
	JE   LBB0_34
	QUAD $0x5c8d49f0577c8d48; QUAD $0x66f014448d49f010
	LONG $0x00456f0f

LBB0_29:
	QUAD $0x6f0ff3f04f6f0ff3; QUAD $0xdb0f66d96f0f6617
	QUAD $0xdb0f66e26f0f66d8; QUAD $0x7f0ff3dc670f66e0
	QUAD $0x0f6608d1710f661b; QUAD $0xf3ca670f6608d271
	QUAD $0x014cf70148087f0f
	LONG $0xd0014ccb; WORD $0xff48; BYTE $0xc9
	JNE  LBB0_29
	JMP  LBB0_34

LBB0_30:
	QUAD $0x456f0f66f0728d4c
	BYTE $0x00

LBB0_31:
	WORD $0xc031

LBB0_32:
	QUAD $0x6f0ff3470c6f0ff3; QUAD $0x66d96f0f66104754
	QUAD $0x66e26f0f66d8db0f; QUAD $0xf3dc670f66e0db0f
	QUAD $0x710f66001c7f0f41; QUAD $0x6608d2710f6608d1
	QUAD $0x0c7f0f41f3ca670f; QUAD $0xd8394810c0834804
	JB   LBB0_32
	QUAD $0x0ff3e0574c6f0ff3; QUAD $0xd96f0f66f057546f
	QUAD $0xe26f0f66d8db0f66; QUAD $0xdc670f66e0db0f66
	QUAD $0x0f66301c7f0f43f3; QUAD $0x08d2710f6608d171
	QUAD $0x7f0f43f3ca670f66; QUAD $0xc8014df70148340c
	QUAD $0x3949c3ff49d4014d
	BYTE $0xcb
	JNE  LBB0_31

LBB0_34:
	RET

LBB0_13:
	WORD $0x3949; BYTE $0xd7
	JE   LBB0_34
	QUAD $0x5c8d49f0577c8d48; QUAD $0x66f014448d49f010
	LONG $0x00456f0f

LBB0_15:
	QUAD $0x6f0ff3f04f6f0ff3; QUAD $0xdb0f66d96f0f6617
	QUAD $0xdb0f66e26f0f66d8; QUAD $0x7f0ff3dc670f66e0
	QUAD $0x0f6608d1710f661b; QUAD $0xf3ca670f6608d271
	QUAD $0x014cf70148087f0f
	LONG $0xd0014ccb; WORD $0xff48; BYTE $0xc9
	JNE  LBB0_15
	JMP  LBB0_34

LBB0_16:
	QUAD $0x456f0f66f0728d4c
	BYTE $0x00

LBB0_17:
	WORD $0xdb31

LBB0_18:
	QUAD $0x6f0f665f0c6f0f66; QUAD $0x6f0f66d0db0f66d1
	QUAD $0x66e36f0f66105f5c; QUAD $0x66d4670f66e0db0f
	QUAD $0x710f6618147f0f41; QUAD $0x6608d3710f6608d1
	QUAD $0x0c7f0f4166cb670f; QUAD $0xfb394c10c383481c
	JB   LBB0_18
	QUAD $0x0ff3e0574c6f0ff3; QUAD $0xd96f0f66f057546f
	QUAD $0xe26f0f66d8db0f66; QUAD $0xdc670f66e0db0f66
	QUAD $0x0f66301c7f0f43f3; QUAD $0x08d2710f6608d171
	QUAD $0x7f0f43f3ca670f66; QUAD $0xc8014df70148340c
	QUAD $0x3949c3ff49d4014d
	BYTE $0xcb
	JNE  LBB0_17
	JMP  LBB0_34