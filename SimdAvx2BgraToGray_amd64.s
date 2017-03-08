//+build !noasm !appengine
// AUTO-GENERATED BY CAGAC -- DO NOT EDIT

TEXT ·_SimdAvx2BgraToGray(SB), 7, $0

	// Load golang arguments into respective registers for standard 64-bit function call interface

	// Parameter 1: const HidHaarCascade & hid
	MOVQ hid+0(FP), DI // rdi = hid

	// Parameter 2: const Image & mask
	MOVQ mask+8(FP), SI // rsi = mask

	// Parameter 3: const Rect & rect
	MOVQ rect+16(FP), DX // rdx = rect

	// Parameter 4: Image & dst
	MOVQ dst+24(FP), CX // rcx = dst

	// Parameter 5: Buffer<uint32_t>* pbuffer
	MOVQ buffer+32(FP), R8 // r8 = buffer

	// Parameter 6: stack pointer
	MOVQ stack+40(FP), R9 // r9 = stack pointer

	// Setup base pointer for loading constants
	LEAQ LCBGRATOGRAY<>(SB), BP

	///////////////////////////////////////////////////
	//
	//  I M P O R T E D   A S S E M B L Y
	//
	///////////////////////////////////////////////////
    WORD $0x8948; BYTE $0xf8     // mov    rax, rdi
    LONG $0xe0e08348             // and    rax, -32
    WORD $0x3948; BYTE $0xf8     // cmp    rax, rdi
	JNE    LBB0_9
    WORD $0x894d; BYTE $0xca     // mov    r10, r9
    WORD $0x0949; BYTE $0xca     // or    r10, rcx
    WORD $0x894c; BYTE $0xd0     // mov    rax, r10
    LONG $0xe0e08348             // and    rax, -32
    WORD $0x394c; BYTE $0xd0     // cmp    rax, r10
	JNE    LBB0_9
    WORD $0x894c; BYTE $0xc0     // mov    rax, r8
    LONG $0xe0e08348             // and    rax, -32
    WORD $0x394c; BYTE $0xc0     // cmp    rax, r8
	JNE    LBB0_9
    WORD $0x8548; BYTE $0xd2     // test    rdx, rdx
	JE    LBB0_15
    WORD $0x8949; BYTE $0xf3     // mov    r11, rsi
    LONG $0xe0e38349             // and    r11, -32
    WORD $0x3145; BYTE $0xd2     // xor    r10d, r10d
    LONG $0x456ffdc5; BYTE $0x00 // vmovdqa    ymm0, 0x000[rbp] /* [rip + LCPI0_0] */
    LONG $0x4d6ffdc5; BYTE $0x20 // vmovdqa    ymm1, 0x020[rbp] /* [rip + LCPI0_1] */
    LONG $0x556ffdc5; BYTE $0x40 // vmovdqa    ymm2, 0x040[rbp] /* [rip + LCPI0_2] */
    LONG $0x587de2c4; WORD $0x605d // vpbroadcastd    ymm3, dword 0x060[rbp] /* [rip + LCPI0_3] */
LBB0_5:
    LONG $0x000000b8; BYTE $0x00 // mov    eax, 0
    WORD $0x854d; BYTE $0xdb     // test    r11, r11
	JE    LBB0_6
LBB0_16:
    LONG $0x246ffec5; BYTE $0x87 // vmovdqu    ymm4, [rdi + 4*rax]
    LONG $0x6c6ffec5; WORD $0x2087 // vmovdqu    ymm5, [rdi + 4*rax + 32]
    LONG $0x746ffec5; WORD $0x4087 // vmovdqu    ymm6, [rdi + 4*rax + 64]
    LONG $0x7c6ffec5; WORD $0x6087 // vmovdqu    ymm7, [rdi + 4*rax + 96]
    LONG $0xd471bdc5; BYTE $0x08 // vpsrlw    ymm8, ymm4, 8
    LONG $0xe0dbddc5             // vpand    ymm4, ymm4, ymm0
    LONG $0xc1f53dc5             // vpmaddwd    ymm8, ymm8, ymm1
    LONG $0xe2f5ddc5             // vpmaddwd    ymm4, ymm4, ymm2
    LONG $0xe4febdc5             // vpaddd    ymm4, ymm8, ymm4
    LONG $0xe3feddc5             // vpaddd    ymm4, ymm4, ymm3
    LONG $0xd472ddc5; BYTE $0x0e // vpsrld    ymm4, ymm4, 14
    LONG $0xd571bdc5; BYTE $0x08 // vpsrlw    ymm8, ymm5, 8
    LONG $0xe8dbd5c5             // vpand    ymm5, ymm5, ymm0
    LONG $0xc1f53dc5             // vpmaddwd    ymm8, ymm8, ymm1
    LONG $0xeaf5d5c5             // vpmaddwd    ymm5, ymm5, ymm2
    LONG $0xedfebdc5             // vpaddd    ymm5, ymm8, ymm5
    LONG $0xebfed5c5             // vpaddd    ymm5, ymm5, ymm3
    LONG $0xd572d5c5; BYTE $0x0e // vpsrld    ymm5, ymm5, 14
    LONG $0xe56bddc5             // vpackssdw    ymm4, ymm4, ymm5
    LONG $0x00fde3c4; WORD $0xd8e4 // vpermq    ymm4, ymm4, 216
    LONG $0xd671d5c5; BYTE $0x08 // vpsrlw    ymm5, ymm6, 8
    LONG $0xf0dbcdc5             // vpand    ymm6, ymm6, ymm0
    LONG $0xe9f5d5c5             // vpmaddwd    ymm5, ymm5, ymm1
    LONG $0xf2f5cdc5             // vpmaddwd    ymm6, ymm6, ymm2
    LONG $0xeefed5c5             // vpaddd    ymm5, ymm5, ymm6
    LONG $0xebfed5c5             // vpaddd    ymm5, ymm5, ymm3
    LONG $0xd572d5c5; BYTE $0x0e // vpsrld    ymm5, ymm5, 14
    LONG $0xd771cdc5; BYTE $0x08 // vpsrlw    ymm6, ymm7, 8
    LONG $0xf8dbc5c5             // vpand    ymm7, ymm7, ymm0
    LONG $0xf1f5cdc5             // vpmaddwd    ymm6, ymm6, ymm1
    LONG $0xfaf5c5c5             // vpmaddwd    ymm7, ymm7, ymm2
    LONG $0xf7fecdc5             // vpaddd    ymm6, ymm6, ymm7
    LONG $0xf3fecdc5             // vpaddd    ymm6, ymm6, ymm3
    LONG $0xd672cdc5; BYTE $0x0e // vpsrld    ymm6, ymm6, 14
    LONG $0xee6bd5c5             // vpackssdw    ymm5, ymm5, ymm6
    LONG $0x00fde3c4; WORD $0xd8ed // vpermq    ymm5, ymm5, 216
    LONG $0xe567ddc5             // vpackuswb    ymm4, ymm4, ymm5
    LONG $0x00fde3c4; WORD $0xd8e4 // vpermq    ymm4, ymm4, 216
    LONG $0x7f7ec1c4; WORD $0x0024 // vmovdqu    [r8 + rax], ymm4
    LONG $0x20c08348             // add    rax, 32
    WORD $0x394c; BYTE $0xd8     // cmp    rax, r11
	JB    LBB0_16
LBB0_6:
    WORD $0x3949; BYTE $0xf3     // cmp    r11, rsi
	JE    LBB0_8
    LONG $0x646ffec5; WORD $0x80b7 // vmovdqu    ymm4, [rdi + 4*rsi - 128]
    LONG $0x6c6ffec5; WORD $0xa0b7 // vmovdqu    ymm5, [rdi + 4*rsi - 96]
    LONG $0x746ffec5; WORD $0xc0b7 // vmovdqu    ymm6, [rdi + 4*rsi - 64]
    LONG $0x7c6ffec5; WORD $0xe0b7 // vmovdqu    ymm7, [rdi + 4*rsi - 32]
    LONG $0xd471bdc5; BYTE $0x08 // vpsrlw    ymm8, ymm4, 8
    LONG $0xe0dbddc5             // vpand    ymm4, ymm4, ymm0
    LONG $0xc1f53dc5             // vpmaddwd    ymm8, ymm8, ymm1
    LONG $0xe2f5ddc5             // vpmaddwd    ymm4, ymm4, ymm2
    LONG $0xe4febdc5             // vpaddd    ymm4, ymm8, ymm4
    LONG $0xe3feddc5             // vpaddd    ymm4, ymm4, ymm3
    LONG $0xd472ddc5; BYTE $0x0e // vpsrld    ymm4, ymm4, 14
    LONG $0xd571bdc5; BYTE $0x08 // vpsrlw    ymm8, ymm5, 8
    LONG $0xe8dbd5c5             // vpand    ymm5, ymm5, ymm0
    LONG $0xc1f53dc5             // vpmaddwd    ymm8, ymm8, ymm1
    LONG $0xeaf5d5c5             // vpmaddwd    ymm5, ymm5, ymm2
    LONG $0xedfebdc5             // vpaddd    ymm5, ymm8, ymm5
    LONG $0xebfed5c5             // vpaddd    ymm5, ymm5, ymm3
    LONG $0xd572d5c5; BYTE $0x0e // vpsrld    ymm5, ymm5, 14
    LONG $0xe56bddc5             // vpackssdw    ymm4, ymm4, ymm5
    LONG $0x00fde3c4; WORD $0xd8e4 // vpermq    ymm4, ymm4, 216
    LONG $0xd671d5c5; BYTE $0x08 // vpsrlw    ymm5, ymm6, 8
    LONG $0xf0dbcdc5             // vpand    ymm6, ymm6, ymm0
    LONG $0xe9f5d5c5             // vpmaddwd    ymm5, ymm5, ymm1
    LONG $0xf2f5cdc5             // vpmaddwd    ymm6, ymm6, ymm2
    LONG $0xeefed5c5             // vpaddd    ymm5, ymm5, ymm6
    LONG $0xebfed5c5             // vpaddd    ymm5, ymm5, ymm3
    LONG $0xd572d5c5; BYTE $0x0e // vpsrld    ymm5, ymm5, 14
    LONG $0xd771cdc5; BYTE $0x08 // vpsrlw    ymm6, ymm7, 8
    LONG $0xf8dbc5c5             // vpand    ymm7, ymm7, ymm0
    LONG $0xf1f5cdc5             // vpmaddwd    ymm6, ymm6, ymm1
    LONG $0xfaf5c5c5             // vpmaddwd    ymm7, ymm7, ymm2
    LONG $0xf7fecdc5             // vpaddd    ymm6, ymm6, ymm7
    LONG $0xf3fecdc5             // vpaddd    ymm6, ymm6, ymm3
    LONG $0xd672cdc5; BYTE $0x0e // vpsrld    ymm6, ymm6, 14
    LONG $0xee6bd5c5             // vpackssdw    ymm5, ymm5, ymm6
    LONG $0x00fde3c4; WORD $0xd8ed // vpermq    ymm5, ymm5, 216
    LONG $0xe567ddc5             // vpackuswb    ymm4, ymm4, ymm5
    LONG $0x00fde3c4; WORD $0xd8e4 // vpermq    ymm4, ymm4, 216
    LONG $0x7f7ec1c4; WORD $0x3064; BYTE $0xe0 // vmovdqu    [r8 + rsi - 32], ymm4
LBB0_8:
    WORD $0x0148; BYTE $0xcf     // add    rdi, rcx
    WORD $0x014d; BYTE $0xc8     // add    r8, r9
    WORD $0xff49; BYTE $0xc2     // inc    r10
    WORD $0x3949; BYTE $0xd2     // cmp    r10, rdx
	JNE    LBB0_5
	JMP    LBB0_15
LBB0_9:
    WORD $0x8548; BYTE $0xd2     // test    rdx, rdx
	JE    LBB0_15
    WORD $0x8949; BYTE $0xf3     // mov    r11, rsi
    LONG $0xe0e38349             // and    r11, -32
    WORD $0x3145; BYTE $0xd2     // xor    r10d, r10d
    LONG $0x456ffdc5; BYTE $0x00 // vmovdqa    ymm0, 0x000[rbp] /* [rip + LCPI0_0] */
    LONG $0x4d6ffdc5; BYTE $0x20 // vmovdqa    ymm1, 0x020[rbp] /* [rip + LCPI0_1] */
    LONG $0x556ffdc5; BYTE $0x40 // vmovdqa    ymm2, 0x040[rbp] /* [rip + LCPI0_2] */
    LONG $0x587de2c4; WORD $0x605d // vpbroadcastd    ymm3, dword 0x060[rbp] /* [rip + LCPI0_3] */
LBB0_11:
    LONG $0x000000b8; BYTE $0x00 // mov    eax, 0
    WORD $0x854d; BYTE $0xdb     // test    r11, r11
	JE    LBB0_12
LBB0_17:
    LONG $0x246ffec5; BYTE $0x87 // vmovdqu    ymm4, [rdi + 4*rax]
    LONG $0x6c6ffec5; WORD $0x2087 // vmovdqu    ymm5, [rdi + 4*rax + 32]
    LONG $0x746ffec5; WORD $0x4087 // vmovdqu    ymm6, [rdi + 4*rax + 64]
    LONG $0x7c6ffec5; WORD $0x6087 // vmovdqu    ymm7, [rdi + 4*rax + 96]
    LONG $0xd471bdc5; BYTE $0x08 // vpsrlw    ymm8, ymm4, 8
    LONG $0xe0dbddc5             // vpand    ymm4, ymm4, ymm0
    LONG $0xc1f53dc5             // vpmaddwd    ymm8, ymm8, ymm1
    LONG $0xe2f5ddc5             // vpmaddwd    ymm4, ymm4, ymm2
    LONG $0xe4febdc5             // vpaddd    ymm4, ymm8, ymm4
    LONG $0xe3feddc5             // vpaddd    ymm4, ymm4, ymm3
    LONG $0xd472ddc5; BYTE $0x0e // vpsrld    ymm4, ymm4, 14
    LONG $0xd571bdc5; BYTE $0x08 // vpsrlw    ymm8, ymm5, 8
    LONG $0xe8dbd5c5             // vpand    ymm5, ymm5, ymm0
    LONG $0xc1f53dc5             // vpmaddwd    ymm8, ymm8, ymm1
    LONG $0xeaf5d5c5             // vpmaddwd    ymm5, ymm5, ymm2
    LONG $0xedfebdc5             // vpaddd    ymm5, ymm8, ymm5
    LONG $0xebfed5c5             // vpaddd    ymm5, ymm5, ymm3
    LONG $0xd572d5c5; BYTE $0x0e // vpsrld    ymm5, ymm5, 14
    LONG $0xe56bddc5             // vpackssdw    ymm4, ymm4, ymm5
    LONG $0x00fde3c4; WORD $0xd8e4 // vpermq    ymm4, ymm4, 216
    LONG $0xd671d5c5; BYTE $0x08 // vpsrlw    ymm5, ymm6, 8
    LONG $0xf0dbcdc5             // vpand    ymm6, ymm6, ymm0
    LONG $0xe9f5d5c5             // vpmaddwd    ymm5, ymm5, ymm1
    LONG $0xf2f5cdc5             // vpmaddwd    ymm6, ymm6, ymm2
    LONG $0xeefed5c5             // vpaddd    ymm5, ymm5, ymm6
    LONG $0xebfed5c5             // vpaddd    ymm5, ymm5, ymm3
    LONG $0xd572d5c5; BYTE $0x0e // vpsrld    ymm5, ymm5, 14
    LONG $0xd771cdc5; BYTE $0x08 // vpsrlw    ymm6, ymm7, 8
    LONG $0xf8dbc5c5             // vpand    ymm7, ymm7, ymm0
    LONG $0xf1f5cdc5             // vpmaddwd    ymm6, ymm6, ymm1
    LONG $0xfaf5c5c5             // vpmaddwd    ymm7, ymm7, ymm2
    LONG $0xf7fecdc5             // vpaddd    ymm6, ymm6, ymm7
    LONG $0xf3fecdc5             // vpaddd    ymm6, ymm6, ymm3
    LONG $0xd672cdc5; BYTE $0x0e // vpsrld    ymm6, ymm6, 14
    LONG $0xee6bd5c5             // vpackssdw    ymm5, ymm5, ymm6
    LONG $0x00fde3c4; WORD $0xd8ed // vpermq    ymm5, ymm5, 216
    LONG $0xe567ddc5             // vpackuswb    ymm4, ymm4, ymm5
    LONG $0x00fde3c4; WORD $0xd8e4 // vpermq    ymm4, ymm4, 216
    LONG $0x7f7ec1c4; WORD $0x0024 // vmovdqu    [r8 + rax], ymm4
    LONG $0x20c08348             // add    rax, 32
    WORD $0x394c; BYTE $0xd8     // cmp    rax, r11
	JB    LBB0_17
LBB0_12:
    WORD $0x3949; BYTE $0xf3     // cmp    r11, rsi
	JE    LBB0_14
    LONG $0x646ffec5; WORD $0x80b7 // vmovdqu    ymm4, [rdi + 4*rsi - 128]
    LONG $0x6c6ffec5; WORD $0xa0b7 // vmovdqu    ymm5, [rdi + 4*rsi - 96]
    LONG $0x746ffec5; WORD $0xc0b7 // vmovdqu    ymm6, [rdi + 4*rsi - 64]
    LONG $0x7c6ffec5; WORD $0xe0b7 // vmovdqu    ymm7, [rdi + 4*rsi - 32]
    LONG $0xd471bdc5; BYTE $0x08 // vpsrlw    ymm8, ymm4, 8
    LONG $0xe0dbddc5             // vpand    ymm4, ymm4, ymm0
    LONG $0xc1f53dc5             // vpmaddwd    ymm8, ymm8, ymm1
    LONG $0xe2f5ddc5             // vpmaddwd    ymm4, ymm4, ymm2
    LONG $0xe4febdc5             // vpaddd    ymm4, ymm8, ymm4
    LONG $0xe3feddc5             // vpaddd    ymm4, ymm4, ymm3
    LONG $0xd472ddc5; BYTE $0x0e // vpsrld    ymm4, ymm4, 14
    LONG $0xd571bdc5; BYTE $0x08 // vpsrlw    ymm8, ymm5, 8
    LONG $0xe8dbd5c5             // vpand    ymm5, ymm5, ymm0
    LONG $0xc1f53dc5             // vpmaddwd    ymm8, ymm8, ymm1
    LONG $0xeaf5d5c5             // vpmaddwd    ymm5, ymm5, ymm2
    LONG $0xedfebdc5             // vpaddd    ymm5, ymm8, ymm5
    LONG $0xebfed5c5             // vpaddd    ymm5, ymm5, ymm3
    LONG $0xd572d5c5; BYTE $0x0e // vpsrld    ymm5, ymm5, 14
    LONG $0xe56bddc5             // vpackssdw    ymm4, ymm4, ymm5
    LONG $0x00fde3c4; WORD $0xd8e4 // vpermq    ymm4, ymm4, 216
    LONG $0xd671d5c5; BYTE $0x08 // vpsrlw    ymm5, ymm6, 8
    LONG $0xf0dbcdc5             // vpand    ymm6, ymm6, ymm0
    LONG $0xe9f5d5c5             // vpmaddwd    ymm5, ymm5, ymm1
    LONG $0xf2f5cdc5             // vpmaddwd    ymm6, ymm6, ymm2
    LONG $0xeefed5c5             // vpaddd    ymm5, ymm5, ymm6
    LONG $0xebfed5c5             // vpaddd    ymm5, ymm5, ymm3
    LONG $0xd572d5c5; BYTE $0x0e // vpsrld    ymm5, ymm5, 14
    LONG $0xd771cdc5; BYTE $0x08 // vpsrlw    ymm6, ymm7, 8
    LONG $0xf8dbc5c5             // vpand    ymm7, ymm7, ymm0
    LONG $0xf1f5cdc5             // vpmaddwd    ymm6, ymm6, ymm1
    LONG $0xfaf5c5c5             // vpmaddwd    ymm7, ymm7, ymm2
    LONG $0xf7fecdc5             // vpaddd    ymm6, ymm6, ymm7
    LONG $0xf3fecdc5             // vpaddd    ymm6, ymm6, ymm3
    LONG $0xd672cdc5; BYTE $0x0e // vpsrld    ymm6, ymm6, 14
    LONG $0xee6bd5c5             // vpackssdw    ymm5, ymm5, ymm6
    LONG $0x00fde3c4; WORD $0xd8ed // vpermq    ymm5, ymm5, 216
    LONG $0xe567ddc5             // vpackuswb    ymm4, ymm4, ymm5
    LONG $0x00fde3c4; WORD $0xd8e4 // vpermq    ymm4, ymm4, 216
    LONG $0x7f7ec1c4; WORD $0x3064; BYTE $0xe0 // vmovdqu    [r8 + rsi - 32], ymm4
LBB0_14:
    WORD $0x0148; BYTE $0xcf     // add    rdi, rcx
    WORD $0x014d; BYTE $0xc8     // add    r8, r9
    WORD $0xff49; BYTE $0xc2     // inc    r10
    WORD $0x3949; BYTE $0xd2     // cmp    r10, rdx
	JNE    LBB0_11
LBB0_15:
	///////////////////////////////////////////////////
	//
	//  E N D   O F   I M P O R T E D   A S S E M B L Y
	//
	///////////////////////////////////////////////////

	VZEROUPPER
	RET

//        .align  5
//LCPI0_0:
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
//        .byte   255                     ## 0xff
//        .byte   0                       ## 0x0
DATA LCBGRATOGRAY<>+0x000(SB)/8, $0x00ff00ff00ff00ff
DATA LCBGRATOGRAY<>+0x008(SB)/8, $0x00ff00ff00ff00ff
DATA LCBGRATOGRAY<>+0x010(SB)/8, $0x00ff00ff00ff00ff
DATA LCBGRATOGRAY<>+0x018(SB)/8, $0x00ff00ff00ff00ff
//LCPI0_1:
//        .short  9617                    ## 0x2591
//        .short  0                       ## 0x0
//        .short  9617                    ## 0x2591
//        .short  0                       ## 0x0
//        .short  9617                    ## 0x2591
//        .short  0                       ## 0x0
//        .short  9617                    ## 0x2591
//        .short  0                       ## 0x0
//        .short  9617                    ## 0x2591
//        .short  0                       ## 0x0
//        .short  9617                    ## 0x2591
//        .short  0                       ## 0x0
//        .short  9617                    ## 0x2591
//        .short  0                       ## 0x0
//        .short  9617                    ## 0x2591
//        .short  0                       ## 0x0
DATA LCBGRATOGRAY<>+0x020(SB)/8, $0x0000259100002591
DATA LCBGRATOGRAY<>+0x028(SB)/8, $0x0000259100002591
DATA LCBGRATOGRAY<>+0x030(SB)/8, $0x0000259100002591
DATA LCBGRATOGRAY<>+0x038(SB)/8, $0x0000259100002591
//LCPI0_2:
//        .short  1868                    ## 0x74c
//        .short  4899                    ## 0x1323
//        .short  1868                    ## 0x74c
//        .short  4899                    ## 0x1323
//        .short  1868                    ## 0x74c
//        .short  4899                    ## 0x1323
//        .short  1868                    ## 0x74c
//        .short  4899                     ## 0x1323
//        .short  1868                    ## 0x74c
//        .short  4899                    ## 0x1323
//        .short  1868                    ## 0x74c
//        .short  4899                    ## 0x1323
//        .short  1868                    ## 0x74c
//        .short  4899                    ## 0x1323
//        .short  1868                    ## 0x74c
//        .short  4899                    ## 0x1323
DATA LCBGRATOGRAY<>+0x040(SB)/8, $0x1323074c1323074c
DATA LCBGRATOGRAY<>+0x048(SB)/8, $0x1323074c1323074c
DATA LCBGRATOGRAY<>+0x050(SB)/8, $0x1323074c1323074c
DATA LCBGRATOGRAY<>+0x058(SB)/8, $0x1323074c1323074c
//        .section        __TEXT,__literal4,4byte_literals
//        .align  2
//LCPI0_3:
//        .long   8192                    ## 0x2000
DATA LCBGRATOGRAY<>+0x060(SB)/8, $0x0000000000002000
GLOBL LCBGRATOGRAY<>(SB), 8, $104

