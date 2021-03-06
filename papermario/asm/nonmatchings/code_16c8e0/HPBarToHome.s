.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel HPBarToHome
/* 19BF44 8026D664 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 19BF48 8026D668 AFB00010 */  sw    $s0, 0x10($sp)
/* 19BF4C 8026D66C 0080802D */  daddu $s0, $a0, $zero
/* 19BF50 8026D670 AFBF0014 */  sw    $ra, 0x14($sp)
/* 19BF54 8026D674 8E02000C */  lw    $v0, 0xc($s0)
/* 19BF58 8026D678 0C0B1EAF */  jal   get_variable
/* 19BF5C 8026D67C 8C450000 */   lw    $a1, ($v0)
/* 19BF60 8026D680 0040202D */  daddu $a0, $v0, $zero
/* 19BF64 8026D684 2402FF81 */  addiu $v0, $zero, -0x7f
/* 19BF68 8026D688 14820002 */  bne   $a0, $v0, .L8026D694
/* 19BF6C 8026D68C 00000000 */   nop   
/* 19BF70 8026D690 8E040148 */  lw    $a0, 0x148($s0)
.L8026D694:
/* 19BF74 8026D694 0C09A75B */  jal   get_actor
/* 19BF78 8026D698 00000000 */   nop   
/* 19BF7C 8026D69C 0040282D */  daddu $a1, $v0, $zero
/* 19BF80 8026D6A0 8CA20008 */  lw    $v0, 8($a1)
/* 19BF84 8026D6A4 80420022 */  lb    $v0, 0x22($v0)
/* 19BF88 8026D6A8 C4A00138 */  lwc1  $f0, 0x138($a1)
/* 19BF8C 8026D6AC 44821000 */  mtc1  $v0, $f2
/* 19BF90 8026D6B0 00000000 */  nop   
/* 19BF94 8026D6B4 468010A0 */  cvt.s.w $f2, $f2
/* 19BF98 8026D6B8 46020000 */  add.s $f0, $f0, $f2
/* 19BF9C 8026D6BC 8CA30008 */  lw    $v1, 8($a1)
/* 19BFA0 8026D6C0 C4A20140 */  lwc1  $f2, 0x140($a1)
/* 19BFA4 8026D6C4 4600018D */  trunc.w.s $f6, $f0
/* 19BFA8 8026D6C8 44023000 */  mfc1  $v0, $f6
/* 19BFAC 8026D6CC 00000000 */  nop   
/* 19BFB0 8026D6D0 A4A20156 */  sh    $v0, 0x156($a1)
/* 19BFB4 8026D6D4 80620023 */  lb    $v0, 0x23($v1)
/* 19BFB8 8026D6D8 C4A0013C */  lwc1  $f0, 0x13c($a1)
/* 19BFBC 8026D6DC 44822000 */  mtc1  $v0, $f4
/* 19BFC0 8026D6E0 00000000 */  nop   
/* 19BFC4 8026D6E4 46802120 */  cvt.s.w $f4, $f4
/* 19BFC8 8026D6E8 4600118D */  trunc.w.s $f6, $f2
/* 19BFCC 8026D6EC 44023000 */  mfc1  $v0, $f6
/* 19BFD0 8026D6F0 46040000 */  add.s $f0, $f0, $f4
/* 19BFD4 8026D6F4 A4A2015A */  sh    $v0, 0x15a($a1)
/* 19BFD8 8026D6F8 8CA20000 */  lw    $v0, ($a1)
/* 19BFDC 8026D6FC 30420800 */  andi  $v0, $v0, 0x800
/* 19BFE0 8026D700 4600018D */  trunc.w.s $f6, $f0
/* 19BFE4 8026D704 44033000 */  mfc1  $v1, $f6
/* 19BFE8 8026D708 10400011 */  beqz  $v0, .L8026D750
/* 19BFEC 8026D70C A4A30158 */   sh    $v1, 0x158($a1)
/* 19BFF0 8026D710 90A20191 */  lbu   $v0, 0x191($a1)
/* 19BFF4 8026D714 C4A0013C */  lwc1  $f0, 0x13c($a1)
/* 19BFF8 8026D718 44821000 */  mtc1  $v0, $f2
/* 19BFFC 8026D71C 00000000 */  nop   
/* 19C000 8026D720 468010A0 */  cvt.s.w $f2, $f2
/* 19C004 8026D724 8CA20008 */  lw    $v0, 8($a1)
/* 19C008 8026D728 46020001 */  sub.s $f0, $f0, $f2
/* 19C00C 8026D72C 80420023 */  lb    $v0, 0x23($v0)
/* 19C010 8026D730 44821000 */  mtc1  $v0, $f2
/* 19C014 8026D734 00000000 */  nop   
/* 19C018 8026D738 468010A0 */  cvt.s.w $f2, $f2
/* 19C01C 8026D73C 46020001 */  sub.s $f0, $f0, $f2
/* 19C020 8026D740 4600018D */  trunc.w.s $f6, $f0
/* 19C024 8026D744 44023000 */  mfc1  $v0, $f6
/* 19C028 8026D748 00000000 */  nop   
/* 19C02C 8026D74C A4A20158 */  sh    $v0, 0x158($a1)
.L8026D750:
/* 19C030 8026D750 80A201B8 */  lb    $v0, 0x1b8($a1)
/* 19C034 8026D754 80A401B9 */  lb    $a0, 0x1b9($a1)
/* 19C038 8026D758 00021840 */  sll   $v1, $v0, 1
/* 19C03C 8026D75C 00621821 */  addu  $v1, $v1, $v0
/* 19C040 8026D760 000318C0 */  sll   $v1, $v1, 3
/* 19C044 8026D764 00621821 */  addu  $v1, $v1, $v0
/* 19C048 8026D768 14800002 */  bnez  $a0, .L8026D774
/* 19C04C 8026D76C 0064001A */   div   $zero, $v1, $a0
/* 19C050 8026D770 0007000D */  break 7
.L8026D774:
/* 19C054 8026D774 2401FFFF */  addiu $at, $zero, -1
/* 19C058 8026D778 14810004 */  bne   $a0, $at, .L8026D78C
/* 19C05C 8026D77C 3C018000 */   lui   $at, 0x8000
/* 19C060 8026D780 14610002 */  bne   $v1, $at, .L8026D78C
/* 19C064 8026D784 00000000 */   nop   
/* 19C068 8026D788 0006000D */  break 6
.L8026D78C:
/* 19C06C 8026D78C 00001812 */  mflo  $v1
/* 19C070 8026D790 A0A301BC */  sb    $v1, 0x1bc($a1)
/* 19C074 8026D794 8FBF0014 */  lw    $ra, 0x14($sp)
/* 19C078 8026D798 8FB00010 */  lw    $s0, 0x10($sp)
/* 19C07C 8026D79C 24020002 */  addiu $v0, $zero, 2
/* 19C080 8026D7A0 03E00008 */  jr    $ra
/* 19C084 8026D7A4 27BD0018 */   addiu $sp, $sp, 0x18

