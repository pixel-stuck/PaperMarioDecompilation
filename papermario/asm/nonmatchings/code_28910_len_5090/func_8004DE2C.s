.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8004DE2C
/* 02922C 8004DE2C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 029230 8004DE30 AFB3001C */  sw    $s3, 0x1c($sp)
/* 029234 8004DE34 0080982D */  daddu $s3, $a0, $zero
/* 029238 8004DE38 AFB20018 */  sw    $s2, 0x18($sp)
/* 02923C 8004DE3C AFBF0024 */  sw    $ra, 0x24($sp)
/* 029240 8004DE40 AFB40020 */  sw    $s4, 0x20($sp)
/* 029244 8004DE44 AFB10014 */  sw    $s1, 0x14($sp)
/* 029248 8004DE48 AFB00010 */  sw    $s0, 0x10($sp)
/* 02924C 8004DE4C 8E740000 */  lw    $s4, ($s3)
/* 029250 8004DE50 8E700010 */  lw    $s0, 0x10($s3)
/* 029254 8004DE54 12800055 */  beqz  $s4, .L8004DFAC
/* 029258 8004DE58 0000902D */   daddu $s2, $zero, $zero
/* 02925C 8004DE5C 8E620014 */  lw    $v0, 0x14($s3)
/* 029260 8004DE60 14400045 */  bnez  $v0, .L8004DF78
/* 029264 8004DE64 00000000 */   nop   
/* 029268 8004DE68 0C014FD9 */  jal   func_80053F64
/* 02926C 8004DE6C 0200202D */   daddu $a0, $s0, $zero
/* 029270 8004DE70 0040882D */  daddu $s1, $v0, $zero
/* 029274 8004DE74 1220003E */  beqz  $s1, .L8004DF70
/* 029278 8004DE78 001010C0 */   sll   $v0, $s0, 3
/* 02927C 8004DE7C 8E230000 */  lw    $v1, ($s1)
/* 029280 8004DE80 00622021 */  addu  $a0, $v1, $v0
/* 029284 8004DE84 90830070 */  lbu   $v1, 0x70($a0)
/* 029288 8004DE88 24020001 */  addiu $v0, $zero, 1
/* 02928C 8004DE8C 54620048 */  bnel  $v1, $v0, .L8004DFB0
/* 029290 8004DE90 24120004 */   addiu $s2, $zero, 4
/* 029294 8004DE94 90840071 */  lbu   $a0, 0x71($a0)
/* 029298 8004DE98 0C015092 */  jal   func_80054248
/* 02929C 8004DE9C 00000000 */   nop   
/* 0292A0 8004DEA0 0040802D */  daddu $s0, $v0, $zero
/* 0292A4 8004DEA4 52000042 */  beql  $s0, $zero, .L8004DFB0
/* 0292A8 8004DEA8 24120006 */   addiu $s2, $zero, 6
/* 0292AC 8004DEAC 0C0136CA */  jal   func_8004DB28
/* 0292B0 8004DEB0 0200202D */   daddu $a0, $s0, $zero
/* 0292B4 8004DEB4 1440003E */  bnez  $v0, .L8004DFB0
/* 0292B8 8004DEB8 24120007 */   addiu $s2, $zero, 7
/* 0292BC 8004DEBC 8E240028 */  lw    $a0, 0x28($s1)
/* 0292C0 8004DEC0 0C014F96 */  jal   func_80053E58
/* 0292C4 8004DEC4 8E250064 */   lw    $a1, 0x64($s1)
/* 0292C8 8004DEC8 8E650004 */  lw    $a1, 4($s3)
/* 0292CC 8004DECC 10A00008 */  beqz  $a1, .L8004DEF0
/* 0292D0 8004DED0 0040902D */   daddu $s2, $v0, $zero
/* 0292D4 8004DED4 28A22711 */  slti  $v0, $a1, 0x2711
/* 0292D8 8004DED8 14400003 */  bnez  $v0, .L8004DEE8
/* 0292DC 8004DEDC 28A200FA */   slti  $v0, $a1, 0xfa
/* 0292E0 8004DEE0 080137BC */  j     .L8004DEF0
/* 0292E4 8004DEE4 24052710 */   addiu $a1, $zero, 0x2710

.L8004DEE8:
/* 0292E8 8004DEE8 54400001 */  bnel  $v0, $zero, .L8004DEF0
/* 0292EC 8004DEEC 240500FA */   addiu $a1, $zero, 0xfa
.L8004DEF0:
/* 0292F0 8004DEF0 8E630008 */  lw    $v1, 8($s3)
/* 0292F4 8004DEF4 28620080 */  slti  $v0, $v1, 0x80
/* 0292F8 8004DEF8 50400001 */  beql  $v0, $zero, .L8004DF00
/* 0292FC 8004DEFC 2403007F */   addiu $v1, $zero, 0x7f
.L8004DF00:
/* 029300 8004DF00 10600002 */  beqz  $v1, .L8004DF0C
/* 029304 8004DF04 00031200 */   sll   $v0, $v1, 8
/* 029308 8004DF08 344300FF */  ori   $v1, $v0, 0xff
.L8004DF0C:
/* 02930C 8004DF0C 8E64000C */  lw    $a0, 0xc($s3)
/* 029310 8004DF10 28820080 */  slti  $v0, $a0, 0x80
/* 029314 8004DF14 50400001 */  beql  $v0, $zero, .L8004DF1C
/* 029318 8004DF18 2404007F */   addiu $a0, $zero, 0x7f
.L8004DF1C:
/* 02931C 8004DF1C 10800003 */  beqz  $a0, .L8004DF2C
/* 029320 8004DF20 00041200 */   sll   $v0, $a0, 8
/* 029324 8004DF24 080137CC */  j     .L8004DF30
/* 029328 8004DF28 344400FF */   ori   $a0, $v0, 0xff

.L8004DF2C:
/* 02932C 8004DF2C 24047FFF */  addiu $a0, $zero, 0x7fff
.L8004DF30:
/* 029330 8004DF30 8E020000 */  lw    $v0, ($s0)
/* 029334 8004DF34 AC500074 */  sw    $s0, 0x74($v0)
/* 029338 8004DF38 8E020000 */  lw    $v0, ($s0)
/* 02933C 8004DF3C AC510078 */  sw    $s1, 0x78($v0)
/* 029340 8004DF40 8E020000 */  lw    $v0, ($s0)
/* 029344 8004DF44 AC54007C */  sw    $s4, 0x7c($v0)
/* 029348 8004DF48 8E020000 */  lw    $v0, ($s0)
/* 02934C 8004DF4C AC450084 */  sw    $a1, 0x84($v0)
/* 029350 8004DF50 8E020000 */  lw    $v0, ($s0)
/* 029354 8004DF54 AC430088 */  sw    $v1, 0x88($v0)
/* 029358 8004DF58 8E020000 */  lw    $v0, ($s0)
/* 02935C 8004DF5C AC44008C */  sw    $a0, 0x8c($v0)
/* 029360 8004DF60 8E030000 */  lw    $v1, ($s0)
/* 029364 8004DF64 24020001 */  addiu $v0, $zero, 1
/* 029368 8004DF68 080137EC */  j     .L8004DFB0
/* 02936C 8004DF6C AC620080 */   sw    $v0, 0x80($v1)

.L8004DF70:
/* 029370 8004DF70 080137EC */  j     .L8004DFB0
/* 029374 8004DF74 24120004 */   addiu $s2, $zero, 4

.L8004DF78:
/* 029378 8004DF78 0C0135E5 */  jal   func_8004D794
/* 02937C 8004DF7C 0280202D */   daddu $a0, $s4, $zero
/* 029380 8004DF80 0040802D */  daddu $s0, $v0, $zero
/* 029384 8004DF84 1200000B */  beqz  $s0, .L8004DFB4
/* 029388 8004DF88 0240102D */   daddu $v0, $s2, $zero
/* 02938C 8004DF8C 8E02001C */  lw    $v0, 0x1c($s0)
/* 029390 8004DF90 16820008 */  bne   $s4, $v0, .L8004DFB4
/* 029394 8004DF94 0240102D */   daddu $v0, $s2, $zero
/* 029398 8004DF98 92020220 */  lbu   $v0, 0x220($s0)
/* 02939C 8004DF9C 54400004 */  bnel  $v0, $zero, .L8004DFB0
/* 0293A0 8004DFA0 A2000220 */   sb    $zero, 0x220($s0)
/* 0293A4 8004DFA4 080137ED */  j     .L8004DFB4
/* 0293A8 8004DFA8 0240102D */   daddu $v0, $s2, $zero

.L8004DFAC:
/* 0293AC 8004DFAC 24120003 */  addiu $s2, $zero, 3
.L8004DFB0:
/* 0293B0 8004DFB0 0240102D */  daddu $v0, $s2, $zero
.L8004DFB4:
/* 0293B4 8004DFB4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0293B8 8004DFB8 8FB40020 */  lw    $s4, 0x20($sp)
/* 0293BC 8004DFBC 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0293C0 8004DFC0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0293C4 8004DFC4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0293C8 8004DFC8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0293CC 8004DFCC 03E00008 */  jr    $ra
/* 0293D0 8004DFD0 27BD0028 */   addiu $sp, $sp, 0x28

