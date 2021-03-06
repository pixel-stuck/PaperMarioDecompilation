.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osCheckPackId
/* 044EA4 80069AA4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 044EA8 80069AA8 AFB40038 */  sw    $s4, 0x38($sp)
/* 044EAC 80069AAC 0080A021 */  addu  $s4, $a0, $zero
/* 044EB0 80069AB0 AFBF0040 */  sw    $ra, 0x40($sp)
/* 044EB4 80069AB4 AFB5003C */  sw    $s5, 0x3c($sp)
/* 044EB8 80069AB8 AFB30034 */  sw    $s3, 0x34($sp)
/* 044EBC 80069ABC AFB20030 */  sw    $s2, 0x30($sp)
/* 044EC0 80069AC0 AFB1002C */  sw    $s1, 0x2c($sp)
/* 044EC4 80069AC4 AFB00028 */  sw    $s0, 0x28($sp)
/* 044EC8 80069AC8 92820065 */  lbu   $v0, 0x65($s4)
/* 044ECC 80069ACC 10400005 */  beqz  $v0, .L80069AE4
/* 044ED0 80069AD0 00A09021 */   addu  $s2, $a1, $zero
/* 044ED4 80069AD4 0C01A5B4 */  jal   osPfsSelectBank
/* 044ED8 80069AD8 00002821 */   addu  $a1, $zero, $zero
/* 044EDC 80069ADC 14400041 */  bnez  $v0, .L80069BE4
/* 044EE0 80069AE0 00000000 */   nop   
.L80069AE4:
/* 044EE4 80069AE4 24130001 */  addiu $s3, $zero, 1
/* 044EE8 80069AE8 27B0001A */  addiu $s0, $sp, 0x1a
/* 044EEC 80069AEC 24020001 */  addiu $v0, $zero, 1
/* 044EF0 80069AF0 A7A20018 */  sh    $v0, 0x18($sp)
/* 044EF4 80069AF4 24020003 */  addiu $v0, $zero, 3
/* 044EF8 80069AF8 A7A2001A */  sh    $v0, 0x1a($sp)
/* 044EFC 80069AFC 24020004 */  addiu $v0, $zero, 4
/* 044F00 80069B00 A7A2001C */  sh    $v0, 0x1c($sp)
/* 044F04 80069B04 24020006 */  addiu $v0, $zero, 6
/* 044F08 80069B08 A7A2001E */  sh    $v0, 0x1e($sp)
.L80069B0C:
/* 044F0C 80069B0C 8E840004 */  lw    $a0, 4($s4)
/* 044F10 80069B10 8E850008 */  lw    $a1, 8($s4)
/* 044F14 80069B14 96060000 */  lhu   $a2, ($s0)
/* 044F18 80069B18 0C01A874 */  jal   osContRamRead
/* 044F1C 80069B1C 02403821 */   addu  $a3, $s2, $zero
/* 044F20 80069B20 14400030 */  bnez  $v0, .L80069BE4
/* 044F24 80069B24 02402821 */   addu  $a1, $s2, $zero
/* 044F28 80069B28 2647001C */  addiu $a3, $s2, 0x1c
/* 044F2C 80069B2C A7A00022 */  sh    $zero, 0x22($sp)
/* 044F30 80069B30 A7A00020 */  sh    $zero, 0x20($sp)
.L80069B34:
/* 044F34 80069B34 94A20000 */  lhu   $v0, ($a1)
/* 044F38 80069B38 97A30020 */  lhu   $v1, 0x20($sp)
/* 044F3C 80069B3C 97A40022 */  lhu   $a0, 0x22($sp)
/* 044F40 80069B40 24A50002 */  addiu $a1, $a1, 2
/* 044F44 80069B44 00623021 */  addu  $a2, $v1, $v0
/* 044F48 80069B48 00021027 */  nor   $v0, $zero, $v0
/* 044F4C 80069B4C 00822021 */  addu  $a0, $a0, $v0
/* 044F50 80069B50 00A7102B */  sltu  $v0, $a1, $a3
/* 044F54 80069B54 A7A60020 */  sh    $a2, 0x20($sp)
/* 044F58 80069B58 1440FFF6 */  bnez  $v0, .L80069B34
/* 044F5C 80069B5C A7A40022 */   sh    $a0, 0x22($sp)
/* 044F60 80069B60 9643001C */  lhu   $v1, 0x1c($s2)
/* 044F64 80069B64 30C2FFFF */  andi  $v0, $a2, 0xffff
/* 044F68 80069B68 54620006 */  bnel  $v1, $v0, .L80069B84
/* 044F6C 80069B6C 26730001 */   addiu $s3, $s3, 1
/* 044F70 80069B70 9643001E */  lhu   $v1, 0x1e($s2)
/* 044F74 80069B74 3082FFFF */  andi  $v0, $a0, 0xffff
/* 044F78 80069B78 10620006 */  beq   $v1, $v0, .L80069B94
/* 044F7C 80069B7C 24020004 */   addiu $v0, $zero, 4
/* 044F80 80069B80 26730001 */  addiu $s3, $s3, 1
.L80069B84:
/* 044F84 80069B84 2A620004 */  slti  $v0, $s3, 4
/* 044F88 80069B88 1440FFE0 */  bnez  $v0, .L80069B0C
/* 044F8C 80069B8C 26100002 */   addiu $s0, $s0, 2
/* 044F90 80069B90 24020004 */  addiu $v0, $zero, 4
.L80069B94:
/* 044F94 80069B94 16620003 */  bne   $s3, $v0, .L80069BA4
/* 044F98 80069B98 00008021 */   addu  $s0, $zero, $zero
/* 044F9C 80069B9C 0801A6F9 */  j     .L80069BE4
/* 044FA0 80069BA0 2402000A */   addiu $v0, $zero, 0xa

.L80069BA4:
/* 044FA4 80069BA4 24150001 */  addiu $s5, $zero, 1
/* 044FA8 80069BA8 27B10018 */  addiu $s1, $sp, 0x18
.L80069BAC:
/* 044FAC 80069BAC 52130009 */  beql  $s0, $s3, .L80069BD4
/* 044FB0 80069BB0 26100001 */   addiu $s0, $s0, 1
/* 044FB4 80069BB4 96260000 */  lhu   $a2, ($s1)
/* 044FB8 80069BB8 AFB50010 */  sw    $s5, 0x10($sp)
/* 044FBC 80069BBC 8E840004 */  lw    $a0, 4($s4)
/* 044FC0 80069BC0 8E850008 */  lw    $a1, 8($s4)
/* 044FC4 80069BC4 0C01A8F0 */  jal   osContRamWrite
/* 044FC8 80069BC8 02403821 */   addu  $a3, $s2, $zero
/* 044FCC 80069BCC 14400005 */  bnez  $v0, .L80069BE4
/* 044FD0 80069BD0 26100001 */   addiu $s0, $s0, 1
.L80069BD4:
/* 044FD4 80069BD4 2A020004 */  slti  $v0, $s0, 4
/* 044FD8 80069BD8 1440FFF4 */  bnez  $v0, .L80069BAC
/* 044FDC 80069BDC 26310002 */   addiu $s1, $s1, 2
/* 044FE0 80069BE0 00001021 */  addu  $v0, $zero, $zero
.L80069BE4:
/* 044FE4 80069BE4 8FBF0040 */  lw    $ra, 0x40($sp)
/* 044FE8 80069BE8 8FB5003C */  lw    $s5, 0x3c($sp)
/* 044FEC 80069BEC 8FB40038 */  lw    $s4, 0x38($sp)
/* 044FF0 80069BF0 8FB30034 */  lw    $s3, 0x34($sp)
/* 044FF4 80069BF4 8FB20030 */  lw    $s2, 0x30($sp)
/* 044FF8 80069BF8 8FB1002C */  lw    $s1, 0x2c($sp)
/* 044FFC 80069BFC 8FB00028 */  lw    $s0, 0x28($sp)
/* 045000 80069C00 03E00008 */  jr    $ra
/* 045004 80069C04 27BD0048 */   addiu $sp, $sp, 0x48

