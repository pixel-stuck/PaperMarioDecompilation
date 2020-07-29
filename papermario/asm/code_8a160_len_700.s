# %s disassembly and split file
# generated by n64split v%s - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.include "globals.inc"


.section .text800F0CB0, "ax"

func_800F0CB0:
/* 08A160 800F0CB0 3C038011 */  lui   $v1, 0x8011
/* 08A164 800F0CB4 2463D000 */  addiu $v1, $v1, -0x3000
/* 08A168 800F0CB8 00041040 */  sll   $v0, $a0, 1
/* 08A16C 800F0CBC 00441021 */  addu  $v0, $v0, $a0
/* 08A170 800F0CC0 000210C0 */  sll   $v0, $v0, 3
/* 08A174 800F0CC4 00441021 */  addu  $v0, $v0, $a0
/* 08A178 800F0CC8 00021100 */  sll   $v0, $v0, 4
/* 08A17C 800F0CCC 00441023 */  subu  $v0, $v0, $a0
/* 08A180 800F0CD0 00021080 */  sll   $v0, $v0, 2
/* 08A184 800F0CD4 44850000 */  mtc1  $a1, $f0
/* 08A188 800F0CD8 00432821 */  addu  $a1, $v0, $v1
/* 08A18C 800F0CDC 44861000 */  mtc1  $a2, $f2
/* 08A190 800F0CE0 44872000 */  mtc1  $a3, $f4
/* 08A194 800F0CE4 1C80001B */  bgtz  $a0, .L800F0D54
/* 08A198 800F0CE8 24060039 */   addiu $a2, $zero, 0x39
/* 08A19C 800F0CEC 24020001 */  addiu $v0, $zero, 1
/* 08A1A0 800F0CF0 A0A20000 */  sb    $v0, ($a1)
/* 08A1A4 800F0CF4 24020028 */  addiu $v0, $zero, 0x28
/* 08A1A8 800F0CF8 E4A00008 */  swc1  $f0, 8($a1)
/* 08A1AC 800F0CFC E4A2000C */  swc1  $f2, 0xc($a1)
/* 08A1B0 800F0D00 E4A40018 */  swc1  $f4, 0x18($a1)
/* 08A1B4 800F0D04 A0A20001 */  sb    $v0, 1($a1)
/* 08A1B8 800F0D08 A0A00002 */  sb    $zero, 2($a1)
/* 08A1BC 800F0D0C 24A5001C */  addiu $a1, $a1, 0x1c
/* 08A1C0 800F0D10 24030001 */  addiu $v1, $zero, 1
/* 08A1C4 800F0D14 44801000 */  mtc1  $zero, $f2
.L800F0D18:
/* 08A1C8 800F0D18 44830000 */  mtc1  $v1, $f0
/* 08A1CC 800F0D1C 00000000 */  nop   
/* 08A1D0 800F0D20 46800020 */  cvt.s.w $f0, $f0
/* 08A1D4 800F0D24 46000007 */  neg.s $f0, $f0
/* 08A1D8 800F0D28 46020002 */  mul.s $f0, $f0, $f2
/* 08A1DC 800F0D2C 00000000 */  nop   
/* 08A1E0 800F0D30 24630001 */  addiu $v1, $v1, 1
/* 08A1E4 800F0D34 4600018D */  trunc.w.s $f6, $f0
/* 08A1E8 800F0D38 44023000 */  mfc1  $v0, $f6
/* 08A1EC 800F0D3C 00000000 */  nop   
/* 08A1F0 800F0D40 2442FFFF */  addiu $v0, $v0, -1
/* 08A1F4 800F0D44 A0A20007 */  sb    $v0, 7($a1)
/* 08A1F8 800F0D48 0066102A */  slt   $v0, $v1, $a2
/* 08A1FC 800F0D4C 1440FFF2 */  bnez  $v0, .L800F0D18
/* 08A200 800F0D50 24A5001C */   addiu $a1, $a1, 0x1c
.L800F0D54:
/* 08A204 800F0D54 03E00008 */  jr    $ra
/* 08A208 800F0D58 00000000 */   nop   

func_800F0D5C:
/* 08A20C 800F0D5C 0000182D */  daddu $v1, $zero, $zero
/* 08A210 800F0D60 3C028011 */  lui   $v0, 0x8011
/* 08A214 800F0D64 2442D000 */  addiu $v0, $v0, -0x3000
.L800F0D68:
/* 08A218 800F0D68 A0400000 */  sb    $zero, ($v0)
/* 08A21C 800F0D6C 24630001 */  addiu $v1, $v1, 1
/* 08A220 800F0D70 1860FFFD */  blez  $v1, .L800F0D68
/* 08A224 800F0D74 2442063C */   addiu $v0, $v0, 0x63c
/* 08A228 800F0D78 03E00008 */  jr    $ra
/* 08A22C 800F0D7C 00000000 */   nop   

func_800F0D80:
/* 08A230 800F0D80 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 08A234 800F0D84 F7B60040 */  sdc1  $f22, 0x40($sp)
/* 08A238 800F0D88 3C018011 */  lui   $at, 0x8011
/* 08A23C 800F0D8C D436C310 */  ldc1  $f22, -0x3cf0($at)
/* 08A240 800F0D90 F7B40038 */  sdc1  $f20, 0x38($sp)
/* 08A244 800F0D94 3C018011 */  lui   $at, 0x8011
/* 08A248 800F0D98 D434C318 */  ldc1  $f20, -0x3ce8($at)
/* 08A24C 800F0D9C AFB40020 */  sw    $s4, 0x20($sp)
/* 08A250 800F0DA0 0000A02D */  daddu $s4, $zero, $zero
/* 08A254 800F0DA4 AFBE0030 */  sw    $fp, 0x30($sp)
/* 08A258 800F0DA8 3C1E8011 */  lui   $fp, 0x8011
/* 08A25C 800F0DAC 27DE9820 */  addiu $fp, $fp, -0x67e0
/* 08A260 800F0DB0 AFB60028 */  sw    $s6, 0x28($sp)
/* 08A264 800F0DB4 2416007F */  addiu $s6, $zero, 0x7f
/* 08A268 800F0DB8 AFB7002C */  sw    $s7, 0x2c($sp)
/* 08A26C 800F0DBC 3C178011 */  lui   $s7, 0x8011
/* 08A270 800F0DC0 26F79800 */  addiu $s7, $s7, -0x6800
/* 08A274 800F0DC4 AFB3001C */  sw    $s3, 0x1c($sp)
/* 08A278 800F0DC8 0280982D */  daddu $s3, $s4, $zero
/* 08A27C 800F0DCC AFBF0034 */  sw    $ra, 0x34($sp)
/* 08A280 800F0DD0 AFB50024 */  sw    $s5, 0x24($sp)
/* 08A284 800F0DD4 AFB20018 */  sw    $s2, 0x18($sp)
/* 08A288 800F0DD8 AFB10014 */  sw    $s1, 0x14($sp)
/* 08A28C 800F0DDC AFB00010 */  sw    $s0, 0x10($sp)
/* 08A290 800F0DE0 F7BA0050 */  sdc1  $f26, 0x50($sp)
/* 08A294 800F0DE4 F7B80048 */  sdc1  $f24, 0x48($sp)
.L800F0DE8:
/* 08A298 800F0DE8 3C058011 */  lui   $a1, 0x8011
/* 08A29C 800F0DEC 24A5D000 */  addiu $a1, $a1, -0x3000
/* 08A2A0 800F0DF0 02651821 */  addu  $v1, $s3, $a1
/* 08A2A4 800F0DF4 90620000 */  lbu   $v0, ($v1)
/* 08A2A8 800F0DF8 5040007A */  beql  $v0, $zero, .L800F0FE4
/* 08A2AC 800F0DFC 26940001 */   addiu $s4, $s4, 1
/* 08A2B0 800F0E00 90620001 */  lbu   $v0, 1($v1)
/* 08A2B4 800F0E04 2442FFFF */  addiu $v0, $v0, -1
/* 08A2B8 800F0E08 A0620001 */  sb    $v0, 1($v1)
/* 08A2BC 800F0E0C 90620002 */  lbu   $v0, 2($v1)
/* 08A2C0 800F0E10 80640001 */  lb    $a0, 1($v1)
/* 08A2C4 800F0E14 24420001 */  addiu $v0, $v0, 1
/* 08A2C8 800F0E18 04810003 */  bgez  $a0, .L800F0E28
/* 08A2CC 800F0E1C A0620002 */   sb    $v0, 2($v1)
/* 08A2D0 800F0E20 0803C3F8 */  j     .L800F0FE0
/* 08A2D4 800F0E24 A0600000 */   sb    $zero, ($v1)

.L800F0E28:
/* 08A2D8 800F0E28 0080A82D */  daddu $s5, $a0, $zero
/* 08A2DC 800F0E2C 24120001 */  addiu $s2, $zero, 1
/* 08A2E0 800F0E30 24700034 */  addiu $s0, $v1, 0x34
/* 08A2E4 800F0E34 0000882D */  daddu $s1, $zero, $zero
/* 08A2E8 800F0E38 C47A0008 */  lwc1  $f26, 8($v1)
/* 08A2EC 800F0E3C C478000C */  lwc1  $f24, 0xc($v1)
.L800F0E40:
/* 08A2F0 800F0E40 9202FFEF */  lbu   $v0, -0x11($s0)
/* 08A2F4 800F0E44 24420001 */  addiu $v0, $v0, 1
/* 08A2F8 800F0E48 A202FFEF */  sb    $v0, -0x11($s0)
/* 08A2FC 800F0E4C 00021600 */  sll   $v0, $v0, 0x18
/* 08A300 800F0E50 00021603 */  sra   $v0, $v0, 0x18
/* 08A304 800F0E54 2842001E */  slti  $v0, $v0, 0x1e
/* 08A308 800F0E58 14400006 */  bnez  $v0, .L800F0E74
/* 08A30C 800F0E5C 2AA2001E */   slti  $v0, $s5, 0x1e
/* 08A310 800F0E60 10400003 */  beqz  $v0, .L800F0E70
/* 08A314 800F0E64 2402FFE1 */   addiu $v0, $zero, -0x1f
/* 08A318 800F0E68 0803C39D */  j     .L800F0E74
/* 08A31C 800F0E6C A202FFEF */   sb    $v0, -0x11($s0)

.L800F0E70:
/* 08A320 800F0E70 A200FFEF */  sb    $zero, -0x11($s0)
.L800F0E74:
/* 08A324 800F0E74 8202FFEF */  lb    $v0, -0x11($s0)
/* 08A328 800F0E78 04420055 */  bltzl $v0, .L800F0FD0
/* 08A32C 800F0E7C 26310002 */   addiu $s1, $s1, 2
/* 08A330 800F0E80 14400031 */  bnez  $v0, .L800F0F48
/* 08A334 800F0E84 023E1821 */   addu  $v1, $s1, $fp
/* 08A338 800F0E88 80620000 */  lb    $v0, ($v1)
/* 08A33C 800F0E8C 44821000 */  mtc1  $v0, $f2
/* 08A340 800F0E90 00000000 */  nop   
/* 08A344 800F0E94 468010A0 */  cvt.s.w $f2, $f2
/* 08A348 800F0E98 460010A1 */  cvt.d.s $f2, $f2
/* 08A34C 800F0E9C 46361082 */  mul.d $f2, $f2, $f22
/* 08A350 800F0EA0 00000000 */  nop   
/* 08A354 800F0EA4 80620001 */  lb    $v0, 1($v1)
/* 08A358 800F0EA8 44820000 */  mtc1  $v0, $f0
/* 08A35C 800F0EAC 00000000 */  nop   
/* 08A360 800F0EB0 46800020 */  cvt.s.w $f0, $f0
/* 08A364 800F0EB4 46000007 */  neg.s $f0, $f0
/* 08A368 800F0EB8 46000021 */  cvt.d.s $f0, $f0
/* 08A36C 800F0EBC 46360002 */  mul.d $f0, $f0, $f22
/* 08A370 800F0EC0 00000000 */  nop   
/* 08A374 800F0EC4 3C013F80 */  lui   $at, 0x3f80
/* 08A378 800F0EC8 44812000 */  mtc1  $at, $f4
/* 08A37C 800F0ECC 2404007F */  addiu $a0, $zero, 0x7f
/* 08A380 800F0ED0 E61AFFF0 */  swc1  $f26, -0x10($s0)
/* 08A384 800F0ED4 E618FFF4 */  swc1  $f24, -0xc($s0)
/* 08A388 800F0ED8 E6040000 */  swc1  $f4, ($s0)
/* 08A38C 800F0EDC 462010A0 */  cvt.s.d $f2, $f2
/* 08A390 800F0EE0 E602FFF8 */  swc1  $f2, -8($s0)
/* 08A394 800F0EE4 46200020 */  cvt.s.d $f0, $f0
/* 08A398 800F0EE8 0C00A67F */  jal   rand_int
/* 08A39C 800F0EEC E600FFFC */   swc1  $f0, -4($s0)
/* 08A3A0 800F0EF0 A202FFEB */  sb    $v0, -0x15($s0)
/* 08A3A4 800F0EF4 304400FF */  andi  $a0, $v0, 0xff
/* 08A3A8 800F0EF8 0C00A67F */  jal   rand_int
/* 08A3AC 800F0EFC 02C42023 */   subu  $a0, $s6, $a0
/* 08A3B0 800F0F00 A202FFEC */  sb    $v0, -0x14($s0)
/* 08A3B4 800F0F04 304400FF */  andi  $a0, $v0, 0xff
/* 08A3B8 800F0F08 9202FFEB */  lbu   $v0, -0x15($s0)
/* 08A3BC 800F0F0C 02C42023 */  subu  $a0, $s6, $a0
/* 08A3C0 800F0F10 0C00A67F */  jal   rand_int
/* 08A3C4 800F0F14 00822023 */   subu  $a0, $a0, $v0
/* 08A3C8 800F0F18 9203FFEB */  lbu   $v1, -0x15($s0)
/* 08A3CC 800F0F1C A202FFED */  sb    $v0, -0x13($s0)
/* 08A3D0 800F0F20 240200FF */  addiu $v0, $zero, 0xff
/* 08A3D4 800F0F24 A202FFEE */  sb    $v0, -0x12($s0)
/* 08A3D8 800F0F28 9202FFEC */  lbu   $v0, -0x14($s0)
/* 08A3DC 800F0F2C 24630080 */  addiu $v1, $v1, 0x80
/* 08A3E0 800F0F30 A203FFEB */  sb    $v1, -0x15($s0)
/* 08A3E4 800F0F34 9203FFED */  lbu   $v1, -0x13($s0)
/* 08A3E8 800F0F38 24420080 */  addiu $v0, $v0, 0x80
/* 08A3EC 800F0F3C A202FFEC */  sb    $v0, -0x14($s0)
/* 08A3F0 800F0F40 24630080 */  addiu $v1, $v1, 0x80
/* 08A3F4 800F0F44 A203FFED */  sb    $v1, -0x13($s0)
.L800F0F48:
/* 08A3F8 800F0F48 C600FFF8 */  lwc1  $f0, -8($s0)
/* 08A3FC 800F0F4C 46000021 */  cvt.d.s $f0, $f0
/* 08A400 800F0F50 46340002 */  mul.d $f0, $f0, $f20
/* 08A404 800F0F54 00000000 */  nop   
/* 08A408 800F0F58 C602FFFC */  lwc1  $f2, -4($s0)
/* 08A40C 800F0F5C 460010A1 */  cvt.d.s $f2, $f2
/* 08A410 800F0F60 46341082 */  mul.d $f2, $f2, $f20
/* 08A414 800F0F64 00000000 */  nop   
/* 08A418 800F0F68 C608FFF0 */  lwc1  $f8, -0x10($s0)
/* 08A41C 800F0F6C C604FFF8 */  lwc1  $f4, -8($s0)
/* 08A420 800F0F70 C606FFF4 */  lwc1  $f6, -0xc($s0)
/* 08A424 800F0F74 46044200 */  add.s $f8, $f8, $f4
/* 08A428 800F0F78 C604FFFC */  lwc1  $f4, -4($s0)
/* 08A42C 800F0F7C 8202FFEF */  lb    $v0, -0x11($s0)
/* 08A430 800F0F80 46043180 */  add.s $f6, $f6, $f4
/* 08A434 800F0F84 00571021 */  addu  $v0, $v0, $s7
/* 08A438 800F0F88 E608FFF0 */  swc1  $f8, -0x10($s0)
/* 08A43C 800F0F8C E606FFF4 */  swc1  $f6, -0xc($s0)
/* 08A440 800F0F90 46200020 */  cvt.s.d $f0, $f0
/* 08A444 800F0F94 462010A0 */  cvt.s.d $f2, $f2
/* 08A448 800F0F98 E600FFF8 */  swc1  $f0, -8($s0)
/* 08A44C 800F0F9C E602FFFC */  swc1  $f2, -4($s0)
/* 08A450 800F0FA0 90420000 */  lbu   $v0, ($v0)
/* 08A454 800F0FA4 3C018011 */  lui   $at, 0x8011
/* 08A458 800F0FA8 D422C320 */  ldc1  $f2, -0x3ce0($at)
/* 08A45C 800F0FAC 44820000 */  mtc1  $v0, $f0
/* 08A460 800F0FB0 00000000 */  nop   
/* 08A464 800F0FB4 46800020 */  cvt.s.w $f0, $f0
/* 08A468 800F0FB8 46000021 */  cvt.d.s $f0, $f0
/* 08A46C 800F0FBC 46220002 */  mul.d $f0, $f0, $f2
/* 08A470 800F0FC0 00000000 */  nop   
/* 08A474 800F0FC4 46200020 */  cvt.s.d $f0, $f0
/* 08A478 800F0FC8 E6000000 */  swc1  $f0, ($s0)
/* 08A47C 800F0FCC 26310002 */  addiu $s1, $s1, 2
.L800F0FD0:
/* 08A480 800F0FD0 26520001 */  addiu $s2, $s2, 1
/* 08A484 800F0FD4 2A420039 */  slti  $v0, $s2, 0x39
/* 08A488 800F0FD8 1440FF99 */  bnez  $v0, .L800F0E40
/* 08A48C 800F0FDC 2610001C */   addiu $s0, $s0, 0x1c
.L800F0FE0:
/* 08A490 800F0FE0 26940001 */  addiu $s4, $s4, 1
.L800F0FE4:
/* 08A494 800F0FE4 1A80FF80 */  blez  $s4, .L800F0DE8
/* 08A498 800F0FE8 2673063C */   addiu $s3, $s3, 0x63c
/* 08A49C 800F0FEC 8FBF0034 */  lw    $ra, 0x34($sp)
/* 08A4A0 800F0FF0 8FBE0030 */  lw    $fp, 0x30($sp)
/* 08A4A4 800F0FF4 8FB7002C */  lw    $s7, 0x2c($sp)
/* 08A4A8 800F0FF8 8FB60028 */  lw    $s6, 0x28($sp)
/* 08A4AC 800F0FFC 8FB50024 */  lw    $s5, 0x24($sp)
/* 08A4B0 800F1000 8FB40020 */  lw    $s4, 0x20($sp)
/* 08A4B4 800F1004 8FB3001C */  lw    $s3, 0x1c($sp)
/* 08A4B8 800F1008 8FB20018 */  lw    $s2, 0x18($sp)
/* 08A4BC 800F100C 8FB10014 */  lw    $s1, 0x14($sp)
/* 08A4C0 800F1010 8FB00010 */  lw    $s0, 0x10($sp)
/* 08A4C4 800F1014 D7BA0050 */  ldc1  $f26, 0x50($sp)
/* 08A4C8 800F1018 D7B80048 */  ldc1  $f24, 0x48($sp)
/* 08A4CC 800F101C D7B60040 */  ldc1  $f22, 0x40($sp)
/* 08A4D0 800F1020 D7B40038 */  ldc1  $f20, 0x38($sp)
/* 08A4D4 800F1024 03E00008 */  jr    $ra
/* 08A4D8 800F1028 27BD0058 */   addiu $sp, $sp, 0x58

func_800F102C:
/* 08A4DC 800F102C 27BDFF28 */  addiu $sp, $sp, -0xd8
/* 08A4E0 800F1030 3C090050 */  lui   $t1, 0x50
/* 08A4E4 800F1034 352903C0 */  ori   $t1, $t1, 0x3c0
/* 08A4E8 800F1038 3C0ADC08 */  lui   $t2, 0xdc08
/* 08A4EC 800F103C 354A0008 */  ori   $t2, $t2, 8
/* 08A4F0 800F1040 27A40020 */  addiu $a0, $sp, 0x20
/* 08A4F4 800F1044 AFB100A4 */  sw    $s1, 0xa4($sp)
/* 08A4F8 800F1048 3C110001 */  lui   $s1, 1
/* 08A4FC 800F104C 36311630 */  ori   $s1, $s1, 0x1630
/* 08A500 800F1050 AFB700BC */  sw    $s7, 0xbc($sp)
/* 08A504 800F1054 0000B82D */  daddu $s7, $zero, $zero
/* 08A508 800F1058 AFB600B8 */  sw    $s6, 0xb8($sp)
/* 08A50C 800F105C 27B60060 */  addiu $s6, $sp, 0x60
/* 08A510 800F1060 3C02800A */  lui   $v0, 0x800a
/* 08A514 800F1064 2442A674 */  addiu $v0, $v0, -0x598c
/* 08A518 800F1068 AFBE00C0 */  sw    $fp, 0xc0($sp)
/* 08A51C 800F106C 0040F02D */  daddu $fp, $v0, $zero
/* 08A520 800F1070 3C028007 */  lui   $v0, 0x8007
/* 08A524 800F1074 244241F0 */  addiu $v0, $v0, 0x41f0
/* 08A528 800F1078 AFB300AC */  sw    $s3, 0xac($sp)
/* 08A52C 800F107C 0040982D */  daddu $s3, $v0, $zero
/* 08A530 800F1080 AFB500B4 */  sw    $s5, 0xb4($sp)
/* 08A534 800F1084 3C150001 */  lui   $s5, 1
/* 08A538 800F1088 36B51630 */  ori   $s5, $s5, 0x1630
/* 08A53C 800F108C AFB400B0 */  sw    $s4, 0xb0($sp)
/* 08A540 800F1090 02E0A02D */  daddu $s4, $s7, $zero
/* 08A544 800F1094 AFB000A0 */  sw    $s0, 0xa0($sp)
/* 08A548 800F1098 3C10800A */  lui   $s0, 0x800a
/* 08A54C 800F109C 2610A66C */  addiu $s0, $s0, -0x5994
/* 08A550 800F10A0 3C02E700 */  lui   $v0, 0xe700
/* 08A554 800F10A4 AFBF00C4 */  sw    $ra, 0xc4($sp)
/* 08A558 800F10A8 AFB200A8 */  sw    $s2, 0xa8($sp)
/* 08A55C 800F10AC F7B600D0 */  sdc1  $f22, 0xd0($sp)
/* 08A560 800F10B0 F7B400C8 */  sdc1  $f20, 0xc8($sp)
/* 08A564 800F10B4 8E030000 */  lw    $v1, ($s0)
/* 08A568 800F10B8 3C0643A0 */  lui   $a2, 0x43a0
/* 08A56C 800F10BC 3C074370 */  lui   $a3, 0x4370
/* 08A570 800F10C0 44800000 */  mtc1  $zero, $f0
/* 08A574 800F10C4 3C0142C8 */  lui   $at, 0x42c8
/* 08A578 800F10C8 44811000 */  mtc1  $at, $f2
/* 08A57C 800F10CC 3C013F80 */  lui   $at, 0x3f80
/* 08A580 800F10D0 44812000 */  mtc1  $at, $f4
/* 08A584 800F10D4 0060402D */  daddu $t0, $v1, $zero
/* 08A588 800F10D8 44050000 */  mfc1  $a1, $f0
/* 08A58C 800F10DC 3C01C2C8 */  lui   $at, 0xc2c8
/* 08A590 800F10E0 44810000 */  mtc1  $at, $f0
/* 08A594 800F10E4 24630008 */  addiu $v1, $v1, 8
/* 08A598 800F10E8 AE030000 */  sw    $v1, ($s0)
/* 08A59C 800F10EC AD020000 */  sw    $v0, ($t0)
/* 08A5A0 800F10F0 24620008 */  addiu $v0, $v1, 8
/* 08A5A4 800F10F4 AD000004 */  sw    $zero, 4($t0)
/* 08A5A8 800F10F8 AE020000 */  sw    $v0, ($s0)
/* 08A5AC 800F10FC 3C02DB06 */  lui   $v0, 0xdb06
/* 08A5B0 800F1100 AC620000 */  sw    $v0, ($v1)
/* 08A5B4 800F1104 24620010 */  addiu $v0, $v1, 0x10
/* 08A5B8 800F1108 AC600004 */  sw    $zero, 4($v1)
/* 08A5BC 800F110C AE020000 */  sw    $v0, ($s0)
/* 08A5C0 800F1110 3C02ED00 */  lui   $v0, 0xed00
/* 08A5C4 800F1114 AC620008 */  sw    $v0, 8($v1)
/* 08A5C8 800F1118 24620018 */  addiu $v0, $v1, 0x18
/* 08A5CC 800F111C AC69000C */  sw    $t1, 0xc($v1)
/* 08A5D0 800F1120 AE020000 */  sw    $v0, ($s0)
/* 08A5D4 800F1124 4485B000 */  mtc1  $a1, $f22
/* 08A5D8 800F1128 3C028011 */  lui   $v0, 0x8011
/* 08A5DC 800F112C 244296B0 */  addiu $v0, $v0, -0x6950
/* 08A5E0 800F1130 AC6A0010 */  sw    $t2, 0x10($v1)
/* 08A5E4 800F1134 AC620014 */  sw    $v0, 0x14($v1)
/* 08A5E8 800F1138 E7A20018 */  swc1  $f2, 0x18($sp)
/* 08A5EC 800F113C E7A4001C */  swc1  $f4, 0x1c($sp)
/* 08A5F0 800F1140 AFA50010 */  sw    $a1, 0x10($sp)
/* 08A5F4 800F1144 0C018E44 */  jal   guOrthoF
/* 08A5F8 800F1148 E7A00014 */   swc1  $f0, 0x14($sp)
/* 08A5FC 800F114C 27A40020 */  addiu $a0, $sp, 0x20
/* 08A600 800F1150 96650000 */  lhu   $a1, ($s3)
/* 08A604 800F1154 8FC20000 */  lw    $v0, ($fp)
/* 08A608 800F1158 00052980 */  sll   $a1, $a1, 6
/* 08A60C 800F115C 00B12821 */  addu  $a1, $a1, $s1
/* 08A610 800F1160 0C019D40 */  jal   guMtxF2L
/* 08A614 800F1164 00452821 */   addu  $a1, $v0, $a1
/* 08A618 800F1168 3C03DA38 */  lui   $v1, 0xda38
/* 08A61C 800F116C 34630007 */  ori   $v1, $v1, 7
/* 08A620 800F1170 3C067F7F */  lui   $a2, 0x7f7f
/* 08A624 800F1174 34C67F7F */  ori   $a2, $a2, 0x7f7f
/* 08A628 800F1178 8E040000 */  lw    $a0, ($s0)
/* 08A62C 800F117C 96620000 */  lhu   $v0, ($s3)
/* 08A630 800F1180 0080282D */  daddu $a1, $a0, $zero
/* 08A634 800F1184 24840008 */  addiu $a0, $a0, 8
/* 08A638 800F1188 AE040000 */  sw    $a0, ($s0)
/* 08A63C 800F118C ACA30000 */  sw    $v1, ($a1)
/* 08A640 800F1190 24430001 */  addiu $v1, $v0, 1
/* 08A644 800F1194 3042FFFF */  andi  $v0, $v0, 0xffff
/* 08A648 800F1198 00021180 */  sll   $v0, $v0, 6
/* 08A64C 800F119C A6630000 */  sh    $v1, ($s3)
/* 08A650 800F11A0 8FC30000 */  lw    $v1, ($fp)
/* 08A654 800F11A4 00511021 */  addu  $v0, $v0, $s1
/* 08A658 800F11A8 00621821 */  addu  $v1, $v1, $v0
/* 08A65C 800F11AC 24820008 */  addiu $v0, $a0, 8
/* 08A660 800F11B0 ACA30004 */  sw    $v1, 4($a1)
/* 08A664 800F11B4 AE020000 */  sw    $v0, ($s0)
/* 08A668 800F11B8 3C02DE00 */  lui   $v0, 0xde00
/* 08A66C 800F11BC AC820000 */  sw    $v0, ($a0)
/* 08A670 800F11C0 3C028011 */  lui   $v0, 0x8011
/* 08A674 800F11C4 24429710 */  addiu $v0, $v0, -0x68f0
/* 08A678 800F11C8 AC820004 */  sw    $v0, 4($a0)
/* 08A67C 800F11CC 24820010 */  addiu $v0, $a0, 0x10
/* 08A680 800F11D0 AE020000 */  sw    $v0, ($s0)
/* 08A684 800F11D4 3C02FB00 */  lui   $v0, 0xfb00
/* 08A688 800F11D8 AC820008 */  sw    $v0, 8($a0)
/* 08A68C 800F11DC AC86000C */  sw    $a2, 0xc($a0)
.L800F11E0:
/* 08A690 800F11E0 3C0B8011 */  lui   $t3, 0x8011
/* 08A694 800F11E4 256BD000 */  addiu $t3, $t3, -0x3000
/* 08A698 800F11E8 028B1821 */  addu  $v1, $s4, $t3
/* 08A69C 800F11EC 90620000 */  lbu   $v0, ($v1)
/* 08A6A0 800F11F0 5040005C */  beql  $v0, $zero, .L800F1364
/* 08A6A4 800F11F4 26F70001 */   addiu $s7, $s7, 1
/* 08A6A8 800F11F8 C4740018 */  lwc1  $f20, 0x18($v1)
/* 08A6AC 800F11FC 24120001 */  addiu $s2, $zero, 1
/* 08A6B0 800F1200 3C11800A */  lui   $s1, 0x800a
/* 08A6B4 800F1204 2631A66C */  addiu $s1, $s1, -0x5994
/* 08A6B8 800F1208 24700022 */  addiu $s0, $v1, 0x22
.L800F120C:
/* 08A6BC 800F120C 82020001 */  lb    $v0, 1($s0)
/* 08A6C0 800F1210 0440004F */  bltz  $v0, .L800F1350
/* 08A6C4 800F1214 02C0202D */   daddu $a0, $s6, $zero
/* 08A6C8 800F1218 C6000012 */  lwc1  $f0, 0x12($s0)
/* 08A6CC 800F121C 4405B000 */  mfc1  $a1, $f22
/* 08A6D0 800F1220 3C028007 */  lui   $v0, 0x8007
/* 08A6D4 800F1224 8C42419C */  lw    $v0, 0x419c($v0)
/* 08A6D8 800F1228 4406B000 */  mfc1  $a2, $f22
/* 08A6DC 800F122C 94430134 */  lhu   $v1, 0x134($v0)
/* 08A6E0 800F1230 46140002 */  mul.s $f0, $f0, $f20
/* 08A6E4 800F1234 00000000 */  nop   
/* 08A6E8 800F1238 00031080 */  sll   $v0, $v1, 2
/* 08A6EC 800F123C 00431021 */  addu  $v0, $v0, $v1
/* 08A6F0 800F1240 00021040 */  sll   $v0, $v0, 1
/* 08A6F4 800F1244 44823000 */  mtc1  $v0, $f6
/* 08A6F8 800F1248 00000000 */  nop   
/* 08A6FC 800F124C 468031A0 */  cvt.s.w $f6, $f6
/* 08A700 800F1250 44073000 */  mfc1  $a3, $f6
/* 08A704 800F1254 E7A00010 */  swc1  $f0, 0x10($sp)
/* 08A708 800F1258 C6000002 */  lwc1  $f0, 2($s0)
/* 08A70C 800F125C E7A00014 */  swc1  $f0, 0x14($sp)
/* 08A710 800F1260 C6000006 */  lwc1  $f0, 6($s0)
/* 08A714 800F1264 E7B6001C */  swc1  $f22, 0x1c($sp)
/* 08A718 800F1268 0C018FC4 */  jal   guPositionF
/* 08A71C 800F126C E7A00018 */   swc1  $f0, 0x18($sp)
/* 08A720 800F1270 02C0202D */  daddu $a0, $s6, $zero
/* 08A724 800F1274 96650000 */  lhu   $a1, ($s3)
/* 08A728 800F1278 8FC20000 */  lw    $v0, ($fp)
/* 08A72C 800F127C 00052980 */  sll   $a1, $a1, 6
/* 08A730 800F1280 00B52821 */  addu  $a1, $a1, $s5
/* 08A734 800F1284 0C019D40 */  jal   guMtxF2L
/* 08A738 800F1288 00452821 */   addu  $a1, $v0, $a1
/* 08A73C 800F128C 3C08D838 */  lui   $t0, 0xd838
/* 08A740 800F1290 8E240000 */  lw    $a0, ($s1)
/* 08A744 800F1294 35080002 */  ori   $t0, $t0, 2
/* 08A748 800F1298 0080282D */  daddu $a1, $a0, $zero
/* 08A74C 800F129C 24840008 */  addiu $a0, $a0, 8
/* 08A750 800F12A0 AE240000 */  sw    $a0, ($s1)
/* 08A754 800F12A4 96620000 */  lhu   $v0, ($s3)
/* 08A758 800F12A8 3C03DA38 */  lui   $v1, 0xda38
/* 08A75C 800F12AC ACA30000 */  sw    $v1, ($a1)
/* 08A760 800F12B0 24430001 */  addiu $v1, $v0, 1
/* 08A764 800F12B4 3042FFFF */  andi  $v0, $v0, 0xffff
/* 08A768 800F12B8 00021180 */  sll   $v0, $v0, 6
/* 08A76C 800F12BC A6630000 */  sh    $v1, ($s3)
/* 08A770 800F12C0 8FC30000 */  lw    $v1, ($fp)
/* 08A774 800F12C4 00551021 */  addu  $v0, $v0, $s5
/* 08A778 800F12C8 00621821 */  addu  $v1, $v1, $v0
/* 08A77C 800F12CC 24820008 */  addiu $v0, $a0, 8
/* 08A780 800F12D0 ACA30004 */  sw    $v1, 4($a1)
/* 08A784 800F12D4 AE220000 */  sw    $v0, ($s1)
/* 08A788 800F12D8 82030001 */  lb    $v1, 1($s0)
/* 08A78C 800F12DC 24020050 */  addiu $v0, $zero, 0x50
/* 08A790 800F12E0 00431023 */  subu  $v0, $v0, $v1
/* 08A794 800F12E4 304200FF */  andi  $v0, $v0, 0xff
/* 08A798 800F12E8 3C03FA00 */  lui   $v1, 0xfa00
/* 08A79C 800F12EC 00431025 */  or    $v0, $v0, $v1
/* 08A7A0 800F12F0 AC820000 */  sw    $v0, ($a0)
/* 08A7A4 800F12F4 9203FFFD */  lbu   $v1, -3($s0)
/* 08A7A8 800F12F8 9205FFFE */  lbu   $a1, -2($s0)
/* 08A7AC 800F12FC 9206FFFF */  lbu   $a2, -1($s0)
/* 08A7B0 800F1300 92070000 */  lbu   $a3, ($s0)
/* 08A7B4 800F1304 24820010 */  addiu $v0, $a0, 0x10
/* 08A7B8 800F1308 AE220000 */  sw    $v0, ($s1)
/* 08A7BC 800F130C 3C02DE00 */  lui   $v0, 0xde00
/* 08A7C0 800F1310 AC820008 */  sw    $v0, 8($a0)
/* 08A7C4 800F1314 3C028011 */  lui   $v0, 0x8011
/* 08A7C8 800F1318 244297D8 */  addiu $v0, $v0, -0x6828
/* 08A7CC 800F131C AC82000C */  sw    $v0, 0xc($a0)
/* 08A7D0 800F1320 24820018 */  addiu $v0, $a0, 0x18
/* 08A7D4 800F1324 AE220000 */  sw    $v0, ($s1)
/* 08A7D8 800F1328 24020040 */  addiu $v0, $zero, 0x40
/* 08A7DC 800F132C AC880010 */  sw    $t0, 0x10($a0)
/* 08A7E0 800F1330 AC820014 */  sw    $v0, 0x14($a0)
/* 08A7E4 800F1334 00031E00 */  sll   $v1, $v1, 0x18
/* 08A7E8 800F1338 00052C00 */  sll   $a1, $a1, 0x10
/* 08A7EC 800F133C 00651825 */  or    $v1, $v1, $a1
/* 08A7F0 800F1340 00063200 */  sll   $a2, $a2, 8
/* 08A7F4 800F1344 00661825 */  or    $v1, $v1, $a2
/* 08A7F8 800F1348 00671825 */  or    $v1, $v1, $a3
/* 08A7FC 800F134C AC830004 */  sw    $v1, 4($a0)
.L800F1350:
/* 08A800 800F1350 26520001 */  addiu $s2, $s2, 1
/* 08A804 800F1354 2A420039 */  slti  $v0, $s2, 0x39
/* 08A808 800F1358 1440FFAC */  bnez  $v0, .L800F120C
/* 08A80C 800F135C 2610001C */   addiu $s0, $s0, 0x1c
/* 08A810 800F1360 26F70001 */  addiu $s7, $s7, 1
.L800F1364:
/* 08A814 800F1364 1AE0FF9E */  blez  $s7, .L800F11E0
/* 08A818 800F1368 2694063C */   addiu $s4, $s4, 0x63c
/* 08A81C 800F136C 8FBF00C4 */  lw    $ra, 0xc4($sp)
/* 08A820 800F1370 8FBE00C0 */  lw    $fp, 0xc0($sp)
/* 08A824 800F1374 8FB700BC */  lw    $s7, 0xbc($sp)
/* 08A828 800F1378 8FB600B8 */  lw    $s6, 0xb8($sp)
/* 08A82C 800F137C 8FB500B4 */  lw    $s5, 0xb4($sp)
/* 08A830 800F1380 8FB400B0 */  lw    $s4, 0xb0($sp)
/* 08A834 800F1384 8FB300AC */  lw    $s3, 0xac($sp)
/* 08A838 800F1388 8FB200A8 */  lw    $s2, 0xa8($sp)
/* 08A83C 800F138C 8FB100A4 */  lw    $s1, 0xa4($sp)
/* 08A840 800F1390 8FB000A0 */  lw    $s0, 0xa0($sp)
/* 08A844 800F1394 D7B600D0 */  ldc1  $f22, 0xd0($sp)
/* 08A848 800F1398 D7B400C8 */  ldc1  $f20, 0xc8($sp)
/* 08A84C 800F139C 03E00008 */  jr    $ra
/* 08A850 800F13A0 27BD00D8 */   addiu $sp, $sp, 0xd8

/* 08A854 800F13A4 00000000 */  nop   
/* 08A858 800F13A8 00000000 */  nop   
/* 08A85C 800F13AC 00000000 */  nop   