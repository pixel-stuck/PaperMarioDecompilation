
.section .text00200000, "ax"

func_00200000:
/* 3169F0 00200000 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 3169F4 00200004 3C05AC29 */  lui   $a1, 0xac29
/* 3169F8 00200008 34A5007B */  ori   $a1, $a1, 0x7b
/* 3169FC 0020000C 3C06B000 */  lui   $a2, 0xb000
/* 316A00 00200010 34C606A8 */  ori   $a2, $a2, 0x6a8
/* 316A04 00200014 3C02A460 */  lui   $v0, 0xa460
/* 316A08 00200018 34420010 */  ori   $v0, $v0, 0x10
/* 316A0C 0020001C AFBF0010 */  sw    $ra, 0x10($sp)
/* 316A10 00200020 8C420000 */  lw    $v0, ($v0)
/* 316A14 00200024 3C048005 */  lui   $a0, 0x8005
/* 316A18 00200028 2484AA85 */  addiu $a0, $a0, -0x557b
/* 316A1C 0020002C 30420003 */  andi  $v0, $v0, 3
/* 316A20 00200030 10400006 */  beqz  $v0, .L0020004C
/* 316A24 00200034 3C03A460 */   lui   $v1, 0xa460
/* 316A28 00200038 34630010 */  ori   $v1, $v1, 0x10
.L0020003C:
/* 316A2C 0020003C 8C620000 */  lw    $v0, ($v1)
/* 316A30 00200040 30420003 */  andi  $v0, $v0, 3
/* 316A34 00200044 1440FFFD */  bnez  $v0, .L0020003C
/* 316A38 00200048 00000000 */   nop   
.L0020004C:
/* 316A3C 0020004C 24C2FE38 */  addiu $v0, $a2, -0x1c8
/* 316A40 00200050 3C03A000 */  lui   $v1, 0xa000
/* 316A44 00200054 00431025 */  or    $v0, $v0, $v1
/* 316A48 00200058 8C420000 */  lw    $v0, ($v0)
/* 316A4C 0020005C 00A22823 */  subu  $a1, $a1, $v0
/* 316A50 00200060 00852021 */  addu  $a0, $a0, $a1
/* 316A54 00200064 0080F809 */  jalr  $a0
/* 316A58 00200068 00000000 */  nop   
/* 316A5C 0020006C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 316A60 00200070 03E00008 */  jr    $ra
/* 316A64 00200074 27BD0018 */   addiu $sp, $sp, 0x18

/* 316A68 00200078 00000000 */  nop   
/* 316A6C 0020007C 00000000 */  nop   
