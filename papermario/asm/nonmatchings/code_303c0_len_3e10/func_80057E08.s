.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80057E08
/* 033208 80057E08 0000302D */  daddu $a2, $zero, $zero
/* 03320C 80057E0C 3C05800A */  lui   $a1, 0x800a
/* 033210 80057E10 8CA53FE0 */  lw    $a1, 0x3fe0($a1)
/* 033214 80057E14 3C03800A */  lui   $v1, 0x800a
/* 033218 80057E18 8C633FE4 */  lw    $v1, 0x3fe4($v1)
.L80057E1C:
/* 03321C 80057E1C ACA00000 */  sw    $zero, ($a1)
/* 033220 80057E20 24A50004 */  addiu $a1, $a1, 4
/* 033224 80057E24 AC600000 */  sw    $zero, ($v1)
/* 033228 80057E28 24C60001 */  addiu $a2, $a2, 1
/* 03322C 80057E2C 28C20170 */  slti  $v0, $a2, 0x170
/* 033230 80057E30 1440FFFA */  bnez  $v0, .L80057E1C
/* 033234 80057E34 24630004 */   addiu $v1, $v1, 4
/* 033238 80057E38 24020001 */  addiu $v0, $zero, 1
/* 03323C 80057E3C 3C01800A */  lui   $at, 0x800a
/* 033240 80057E40 A0243FEC */  sb    $a0, 0x3fec($at)
/* 033244 80057E44 3C01800A */  lui   $at, 0x800a
/* 033248 80057E48 A4223FEE */  sh    $v0, 0x3fee($at)
/* 03324C 80057E4C 3C01800A */  lui   $at, 0x800a
/* 033250 80057E50 AC203FE8 */  sw    $zero, 0x3fe8($at)
/* 033254 80057E54 03E00008 */  jr    $ra
/* 033258 80057E58 00000000 */   nop   

