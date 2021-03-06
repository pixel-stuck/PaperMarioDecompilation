.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel set_shadow_scale_peach
/* 0A90D4 801129D4 3C028007 */  lui   $v0, 0x8007
/* 0A90D8 801129D8 8C42419C */  lw    $v0, 0x419c($v0)
/* 0A90DC 801129DC 44852000 */  mtc1  $a1, $f4
/* 0A90E0 801129E0 80420070 */  lb    $v0, 0x70($v0)
/* 0A90E4 801129E4 3C013DF5 */  lui   $at, 0x3df5
/* 0A90E8 801129E8 3421C28F */  ori   $at, $at, 0xc28f
/* 0A90EC 801129EC 44811000 */  mtc1  $at, $f2
/* 0A90F0 801129F0 14400036 */  bnez  $v0, .L80112ACC
/* 0A90F4 801129F4 3C03000C */   lui   $v1, 0xc
/* 0A90F8 801129F8 3C028011 */  lui   $v0, 0x8011
/* 0A90FC 801129FC 2442EFC8 */  addiu $v0, $v0, -0x1038
/* 0A9100 80112A00 8C4500B8 */  lw    $a1, 0xb8($v0)
/* 0A9104 80112A04 34630018 */  ori   $v1, $v1, 0x18
/* 0A9108 80112A08 00A3182B */  sltu  $v1, $a1, $v1
/* 0A910C 80112A0C 1460002C */  bnez  $v1, .L80112AC0
/* 0A9110 80112A10 3C02000C */   lui   $v0, 0xc
/* 0A9114 80112A14 3442001A */  ori   $v0, $v0, 0x1a
/* 0A9118 80112A18 0045102B */  sltu  $v0, $v0, $a1
/* 0A911C 80112A1C 10400004 */  beqz  $v0, .L80112A30
/* 0A9120 80112A20 3C02000D */   lui   $v0, 0xd
/* 0A9124 80112A24 34420008 */  ori   $v0, $v0, 8
/* 0A9128 80112A28 14A20025 */  bne   $a1, $v0, .L80112AC0
/* 0A912C 80112A2C 00000000 */   nop   
.L80112A30:
/* 0A9130 80112A30 3C014522 */  lui   $at, 0x4522
/* 0A9134 80112A34 34218000 */  ori   $at, $at, 0x8000
/* 0A9138 80112A38 44810000 */  mtc1  $at, $f0
/* 0A913C 80112A3C 3C013E85 */  lui   $at, 0x3e85
/* 0A9140 80112A40 34211EB8 */  ori   $at, $at, 0x1eb8
/* 0A9144 80112A44 44811000 */  mtc1  $at, $f2
/* 0A9148 80112A48 46002103 */  div.s $f4, $f4, $f0
/* 0A914C 80112A4C 46041081 */  sub.s $f2, $f2, $f4
/* 0A9150 80112A50 3C018015 */  lui   $at, 0x8015
/* 0A9154 80112A54 D426F980 */  ldc1  $f6, -0x680($at)
/* 0A9158 80112A58 46001021 */  cvt.d.s $f0, $f2
/* 0A915C 80112A5C 4626003C */  c.lt.d $f0, $f6
/* 0A9160 80112A60 00000000 */  nop   
/* 0A9164 80112A64 45000006 */  bc1f  .L80112A80
/* 0A9168 80112A68 E482001C */   swc1  $f2, 0x1c($a0)
/* 0A916C 80112A6C 3C013C23 */  lui   $at, 0x3c23
/* 0A9170 80112A70 3421D70A */  ori   $at, $at, 0xd70a
/* 0A9174 80112A74 44810000 */  mtc1  $at, $f0
/* 0A9178 80112A78 00000000 */  nop   
/* 0A917C 80112A7C E480001C */  swc1  $f0, 0x1c($a0)
.L80112A80:
/* 0A9180 80112A80 3C013E05 */  lui   $at, 0x3e05
/* 0A9184 80112A84 34211EB8 */  ori   $at, $at, 0x1eb8
/* 0A9188 80112A88 44810000 */  mtc1  $at, $f0
/* 0A918C 80112A8C 00000000 */  nop   
/* 0A9190 80112A90 46040001 */  sub.s $f0, $f0, $f4
/* 0A9194 80112A94 E4800024 */  swc1  $f0, 0x24($a0)
/* 0A9198 80112A98 46000021 */  cvt.d.s $f0, $f0
/* 0A919C 80112A9C 4626003C */  c.lt.d $f0, $f6
/* 0A91A0 80112AA0 00000000 */  nop   
/* 0A91A4 80112AA4 4500001C */  bc1f  .L80112B18
/* 0A91A8 80112AA8 00000000 */   nop   
/* 0A91AC 80112AAC 3C013C23 */  lui   $at, 0x3c23
/* 0A91B0 80112AB0 3421D70A */  ori   $at, $at, 0xd70a
/* 0A91B4 80112AB4 44810000 */  mtc1  $at, $f0
/* 0A91B8 80112AB8 03E00008 */  jr    $ra
/* 0A91BC 80112ABC E4800024 */   swc1  $f0, 0x24($a0)

.L80112AC0:
/* 0A91C0 80112AC0 3C013E23 */  lui   $at, 0x3e23
/* 0A91C4 80112AC4 3421D70A */  ori   $at, $at, 0xd70a
/* 0A91C8 80112AC8 44811000 */  mtc1  $at, $f2
.L80112ACC:
/* 0A91CC 80112ACC 3C014561 */  lui   $at, 0x4561
/* 0A91D0 80112AD0 44810000 */  mtc1  $at, $f0
/* 0A91D4 80112AD4 00000000 */  nop   
/* 0A91D8 80112AD8 46002003 */  div.s $f0, $f4, $f0
/* 0A91DC 80112ADC 46001001 */  sub.s $f0, $f2, $f0
/* 0A91E0 80112AE0 3C018015 */  lui   $at, 0x8015
/* 0A91E4 80112AE4 D424F988 */  ldc1  $f4, -0x678($at)
/* 0A91E8 80112AE8 460000A1 */  cvt.d.s $f2, $f0
/* 0A91EC 80112AEC 4624103C */  c.lt.d $f2, $f4
/* 0A91F0 80112AF0 00000000 */  nop   
/* 0A91F4 80112AF4 45000006 */  bc1f  .L80112B10
/* 0A91F8 80112AF8 E480001C */   swc1  $f0, 0x1c($a0)
/* 0A91FC 80112AFC 3C013C23 */  lui   $at, 0x3c23
/* 0A9200 80112B00 3421D70A */  ori   $at, $at, 0xd70a
/* 0A9204 80112B04 44810000 */  mtc1  $at, $f0
/* 0A9208 80112B08 00000000 */  nop   
/* 0A920C 80112B0C E480001C */  swc1  $f0, 0x1c($a0)
.L80112B10:
/* 0A9210 80112B10 C480001C */  lwc1  $f0, 0x1c($a0)
/* 0A9214 80112B14 E4800024 */  swc1  $f0, 0x24($a0)
.L80112B18:
/* 0A9218 80112B18 03E00008 */  jr    $ra
/* 0A921C 80112B1C 00000000 */   nop   

