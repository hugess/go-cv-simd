//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

DATA LCDATA1<>+0x000(SB)/8, $0x00ff00ff00ff00ff
DATA LCDATA1<>+0x008(SB)/8, $0x00ff00ff00ff00ff
DATA LCDATA1<>+0x010(SB)/8, $0x0002000200020002
DATA LCDATA1<>+0x018(SB)/8, $0x0002000200020002
GLOBL LCDATA1<>(SB), 8, $32

TEXT ·_SimdSse2ReduceGray2x2(SB), 7, $24-56

	MOVQ arg1+0(FP), DI
	MOVQ arg2+8(FP), SI
	MOVQ arg3+16(FP), DX
	MOVQ arg4+24(FP), CX
	MOVQ arg5+32(FP), R8
	MOVQ arg6+40(FP), R9
	LEAQ LCDATA1<>(SB), BP
	SUBQ $24, SP

	QUAD $0xc2894d10244c894c; QUAD $0x48f0e08348f88948
	WORD $0xf839
	JNE  LBB0_13
	QUAD $0x48f0e08348c88948
	WORD $0xc839
	JNE  LBB0_13
	QUAD $0x4cf0e08348d0894c
	WORD $0xd039
	JNE  LBB0_13
	QUAD $0xc389483824448b48
	LONG $0xf0e08348; WORD $0x3948; BYTE $0xd8
	JNE  LBB0_13
	WORD $0x8548; BYTE $0xd2
	JE   LBB0_22
	QUAD $0x49e0e18349f18949; QUAD $0x8d4cfee38349f389
	QUAD $0x394909248d4cff72; QUAD $0x48dbb60fd3950ff3
	QUAD $0x48d829481024448b; QUAD $0x0f66ed3145f0c083
	QUAD $0x104d6f0f6600456f

LBB0_6:
	QUAD $0x48f5394d0f1c8d48
	LONG $0x4ddf440f; WORD $0xc985
	JE   LBB0_9
	LONG $0x45d0894d; WORD $0xff31

LBB0_8:
	QUAD $0x42663f1c6f0f4266; QUAD $0x6f0f66103f646f0f
	QUAD $0x710f66e8db0f66eb; QUAD $0x3b346f0f426608d3
	QUAD $0x66103b7c6f0f4266; QUAD $0x66d0db0f66d66f0f
	QUAD $0xd5fd0f6608d6710f; QUAD $0xd6fd0f66d3fd0f66
	QUAD $0xd2710f66d1fd0f66; QUAD $0xdb0f66dc6f0f6602
	QUAD $0x0f6608d4710f66d8; QUAD $0x0f66e8db0f66ef6f
	QUAD $0x66ebfd0f6608d771; QUAD $0x66effd0f66ecfd0f
	QUAD $0x02d5710f66e9fd0f; QUAD $0x7f0f4166d5670f66
	QUAD $0xc0834920c7834910
	LONG $0xcf394d10
	JB   LBB0_8

LBB0_9:
	WORD $0x3949; BYTE $0xf1
	JE   LBB0_12
	QUAD $0x66e01f5c6f0f4266; QUAD $0x0f66f01f646f0f42
	QUAD $0x0f66e8db0f66eb6f; QUAD $0x746f0f426608d371
	QUAD $0x1b7c6f0f4266e01b; QUAD $0xdb0f66d66f0f66f0
	QUAD $0x0f6608d6710f66d0; QUAD $0x0f66d3fd0f66d5fd
	QUAD $0x0f66d1fd0f66d6fd; QUAD $0x66dc6f0f6602d271
	QUAD $0x08d4710f66d8db0f; QUAD $0xe8db0f66ef6f0f66
	QUAD $0xfd0f6608d7710f66; QUAD $0xfd0f66ecfd0f66eb
	QUAD $0x710f66e9fd0f66ef; QUAD $0x4166d5670f6602d5
	LONG $0x02147f0f; WORD $0x3949; BYTE $0xf3
	JE   LBB0_12
	QUAD $0xb60f421f04b60f46; QUAD $0xd101185c8d411b1c
	QUAD $0x24448b48c08949eb; QUAD $0x894cff025c884110
	BYTE $0xc0

LBB0_12:
	QUAD $0x382454034ce7014c
	LONG $0x02c58349; WORD $0x3949; BYTE $0xd5
	JB   LBB0_6
	JMP  LBB0_22

LBB0_13:
	WORD $0x8548; BYTE $0xd2
	JE   LBB0_22
	QUAD $0x49e0e08349f08949; QUAD $0x8d4cfee38349f389
	QUAD $0x394909248d4cff72; QUAD $0x4cc0b60fd0950ff3
	QUAD $0x49c7294910247c8b; QUAD $0x0f66ed3145f0c783
	QUAD $0x104d6f0f6600456f

LBB0_15:
	QUAD $0x48f5394d0f1c8d48
	LONG $0x4ddf440f; WORD $0xc085
	JE   LBB0_18
	LONG $0x45d0894c; WORD $0xc931

LBB0_17:
	QUAD $0x42f30f1c6f0f42f3; QUAD $0x0f42f3100f646f0f
	QUAD $0x746f0f42f30b2c6f; QUAD $0x0f66fb6f0f66100b
	QUAD $0x6608d3710f66f8db; QUAD $0x66d0db0f66d56f0f
	QUAD $0xd7fd0f6608d5710f; QUAD $0xd5fd0f66d3fd0f66
	QUAD $0xd2710f66d1fd0f66; QUAD $0xdb0f66dc6f0f6602
	QUAD $0x0f6608d4710f66d8; QUAD $0x0f66e8db0f66ee6f
	QUAD $0x66ebfd0f6608d671; QUAD $0x66eefd0f66ecfd0f
	QUAD $0x02d5710f66e9fd0f; QUAD $0x107f0ff3d5670f66
	QUAD $0x10c0834820c18349
	WORD $0x394d; BYTE $0xc1
	JB   LBB0_17

LBB0_18:
	WORD $0x3949; BYTE $0xf0
	JE   LBB0_21
	QUAD $0xf3e01f5c6f0f42f3; QUAD $0x42f3f01f646f0f42
	QUAD $0x0f42f3e01b6c6f0f; QUAD $0xfb6f0f66f01b746f
	QUAD $0xd3710f66f8db0f66; QUAD $0xdb0f66d56f0f6608
	QUAD $0x0f6608d5710f66d0; QUAD $0x0f66d3fd0f66d7fd
	QUAD $0x0f66d1fd0f66d5fd; QUAD $0x66dc6f0f6602d271
	QUAD $0x08d4710f66d8db0f; QUAD $0xe8db0f66ee6f0f66
	QUAD $0xfd0f6608d6710f66; QUAD $0xfd0f66ecfd0f66eb
	QUAD $0x710f66e9fd0f66ee; QUAD $0x43f3d5670f6602d5
	LONG $0x3a147f0f; WORD $0x3949; BYTE $0xf3
	JE   LBB0_21
	QUAD $0xb60f421f04b60f42; QUAD $0xe8d10118448d1b1c
	QUAD $0x44884110245c8b48
	WORD $0xff1a

LBB0_21:
	QUAD $0x382454034ce7014c
	LONG $0x02c58349; WORD $0x3949; BYTE $0xd5
	JB   LBB0_15

LBB0_22:
	ADDQ $24, SP
	RET
