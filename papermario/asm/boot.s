
.section .text00000000, "ax"

/* 000040 00000000 40806800 */  mtc0  $zero, $13
/* 000044 00000004 40804800 */  mtc0  $zero, $9
/* 000048 00000008 40805800 */  mtc0  $zero, $11
/* 00004C 0000000C 3C08A470 */  lui   $t0, 0xa470
/* 000050 00000010 25080000 */  addiu $t0, $t0, 0
/* 000054 00000014 8D09000C */  lw    $t1, 0xc($t0)
/* 000058 00000018 152000ED */  bnez  $t1, .L000003D0
/* 00005C 0000001C 00000000 */   nop   
/* 000060 00000020 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 000064 00000024 AFB30000 */  sw    $s3, ($sp)
/* 000068 00000028 AFB40004 */  sw    $s4, 4($sp)
/* 00006C 0000002C AFB50008 */  sw    $s5, 8($sp)
/* 000070 00000030 AFB6000C */  sw    $s6, 0xc($sp)
/* 000074 00000034 AFB70010 */  sw    $s7, 0x10($sp)
/* 000078 00000038 3C08A470 */  lui   $t0, 0xa470
/* 00007C 0000003C 25080000 */  addiu $t0, $t0, 0
/* 000080 00000040 3C0AA3F8 */  lui   $t2, 0xa3f8
/* 000084 00000044 3C0BA3F0 */  lui   $t3, 0xa3f0
/* 000088 00000048 3C0CA430 */  lui   $t4, 0xa430
/* 00008C 0000004C 258C0000 */  addiu $t4, $t4, 0
/* 000090 00000050 34090040 */  ori   $t1, $zero, 0x40
/* 000094 00000054 AD090004 */  sw    $t1, 4($t0)
/* 000098 00000058 24112260 */  addiu $s1, $zero, 0x2260
.L0000005C:
/* 00009C 0000005C 00000000 */  nop   
/* 0000A0 00000060 2231FFFF */  addi  $s1, $s1, -1
/* 0000A4 00000064 1620FFFD */  bnez  $s1, .L0000005C
/* 0000A8 00000068 00000000 */   nop   
/* 0000AC 0000006C AD000008 */  sw    $zero, 8($t0)
/* 0000B0 00000070 34090014 */  ori   $t1, $zero, 0x14
/* 0000B4 00000074 AD09000C */  sw    $t1, 0xc($t0)
/* 0000B8 00000078 AD000000 */  sw    $zero, ($t0)
/* 0000BC 0000007C 24110004 */  addiu $s1, $zero, 4
.L00000080:
/* 0000C0 00000080 00000000 */  nop   
/* 0000C4 00000084 2231FFFF */  addi  $s1, $s1, -1
/* 0000C8 00000088 1620FFFD */  bnez  $s1, .L00000080
/* 0000CC 0000008C 00000000 */   nop   
/* 0000D0 00000090 3409000E */  ori   $t1, $zero, 0xe
/* 0000D4 00000094 AD090000 */  sw    $t1, ($t0)
/* 0000D8 00000098 24110020 */  addiu $s1, $zero, 0x20
.L0000009C:
/* 0000DC 0000009C 2231FFFF */  addi  $s1, $s1, -1
/* 0000E0 000000A0 1620FFFE */  bnez  $s1, .L0000009C
/* 0000E4 000000A4 3409010F */   ori   $t1, $zero, 0x10f
/* 0000E8 000000A8 AD890000 */  sw    $t1, ($t4)
/* 0000EC 000000AC 3C091808 */  lui   $t1, 0x1808
/* 0000F0 000000B0 35292838 */  ori   $t1, $t1, 0x2838
/* 0000F4 000000B4 AD490008 */  sw    $t1, 8($t2)
/* 0000F8 000000B8 AD400014 */  sw    $zero, 0x14($t2)
/* 0000FC 000000BC 3C098000 */  lui   $t1, 0x8000
/* 000100 000000C0 AD490004 */  sw    $t1, 4($t2)
/* 000104 000000C4 00006825 */  or    $t5, $zero, $zero
/* 000108 000000C8 00007025 */  or    $t6, $zero, $zero
/* 00010C 000000CC 3C0FA3F0 */  lui   $t7, 0xa3f0
/* 000110 000000D0 0000C025 */  or    $t8, $zero, $zero
/* 000114 000000D4 3C19A3F0 */  lui   $t9, 0xa3f0
/* 000118 000000D8 3C16A000 */  lui   $s6, 0xa000
/* 00011C 000000DC 0000B825 */  or    $s7, $zero, $zero
/* 000120 000000E0 3C06A3F0 */  lui   $a2, 0xa3f0
/* 000124 000000E4 3C07A000 */  lui   $a3, 0xa000
/* 000128 000000E8 00009025 */  or    $s2, $zero, $zero
/* 00012C 000000EC 3C14A000 */  lui   $s4, 0xa000
/* 000130 000000F0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 000134 000000F4 03A0F025 */  or    $fp, $sp, $zero
/* 000138 000000F8 3C10A430 */  lui   $s0, 0xa430
/* 00013C 000000FC 8E100004 */  lw    $s0, 4($s0)
/* 000140 00000100 3C110101 */  lui   $s1, 0x101
/* 000144 00000104 26310101 */  addiu $s1, $s1, 0x101
/* 000148 00000108 16110005 */  bne   $s0, $s1, .L00000120
/* 00014C 0000010C 00000000 */   nop   
/* 000150 00000110 24100200 */  addiu $s0, $zero, 0x200
/* 000154 00000114 35714000 */  ori   $s1, $t3, 0x4000
/* 000158 00000118 10000003 */  b     .L00000128
/* 00015C 0000011C 00000000 */   nop   
.L00000120:
/* 000160 00000120 24100400 */  addiu $s0, $zero, 0x400
/* 000164 00000124 35718000 */  ori   $s1, $t3, 0x8000
.L00000128:
/* 000168 00000128 AE2E0004 */  sw    $t6, 4($s1)
/* 00016C 0000012C 25F5000C */  addiu $s5, $t7, 0xc
/* 000170 00000130 0D0001DB */  jal   func_0400076C
/* 000174 00000134 00000000 */   nop   
/* 000178 00000138 10400038 */  beqz  $v0, .L0000021C
/* 00017C 0000013C 00000000 */   nop   
/* 000180 00000140 AFA20000 */  sw    $v0, ($sp)
/* 000184 00000144 24092000 */  addiu $t1, $zero, 0x2000
/* 000188 00000148 AD890000 */  sw    $t1, ($t4)
/* 00018C 0000014C 8DEB0000 */  lw    $t3, ($t7)
/* 000190 00000150 3C08F0FF */  lui   $t0, 0xf0ff
/* 000194 00000154 01685824 */  and   $t3, $t3, $t0
/* 000198 00000158 AFAB0004 */  sw    $t3, 4($sp)
/* 00019C 0000015C 23BD0008 */  addi  $sp, $sp, 8
/* 0001A0 00000160 24091000 */  addiu $t1, $zero, 0x1000
/* 0001A4 00000164 AD890000 */  sw    $t1, ($t4)
/* 0001A8 00000168 3C08B019 */  lui   $t0, 0xb019
/* 0001AC 0000016C 1568000C */  bne   $t3, $t0, .L000001A0
/* 0001B0 00000170 00000000 */   nop   
/* 0001B4 00000174 3C080800 */  lui   $t0, 0x800
/* 0001B8 00000178 0308C020 */  add   $t8, $t8, $t0
/* 0001BC 0000017C 0330C820 */  add   $t9, $t9, $s0
/* 0001C0 00000180 0330C820 */  add   $t9, $t9, $s0
/* 0001C4 00000184 3C080020 */  lui   $t0, 0x20
/* 0001C8 00000188 02C8B020 */  add   $s6, $s6, $t0
/* 0001CC 0000018C 0288A020 */  add   $s4, $s4, $t0
/* 0001D0 00000190 00129040 */  sll   $s2, $s2, 1
/* 0001D4 00000194 22520001 */  addi  $s2, $s2, 1
/* 0001D8 00000198 10000003 */  b     .L000001A8
/* 0001DC 0000019C 00000000 */   nop   
.L000001A0:
/* 0001E0 000001A0 3C080010 */  lui   $t0, 0x10
/* 0001E4 000001A4 0288A020 */  add   $s4, $s4, $t0
.L000001A8:
/* 0001E8 000001A8 24082000 */  addiu $t0, $zero, 0x2000
/* 0001EC 000001AC AD880000 */  sw    $t0, ($t4)
/* 0001F0 000001B0 8DE90024 */  lw    $t1, 0x24($t7)
/* 0001F4 000001B4 8DFA0000 */  lw    $k0, ($t7)
/* 0001F8 000001B8 24081000 */  addiu $t0, $zero, 0x1000
/* 0001FC 000001BC AD880000 */  sw    $t0, ($t4)
/* 000200 000001C0 3129FFFF */  andi  $t1, $t1, 0xffff
/* 000204 000001C4 24080500 */  addiu $t0, $zero, 0x500
/* 000208 000001C8 15280009 */  bne   $t1, $t0, .L000001F0
/* 00020C 000001CC 00000000 */   nop   
/* 000210 000001D0 3C1B0100 */  lui   $k1, 0x100
/* 000214 000001D4 035BD024 */  and   $k0, $k0, $k1
/* 000218 000001D8 17400005 */  bnez  $k0, .L000001F0
/* 00021C 000001DC 00000000 */   nop   
/* 000220 000001E0 3C08101C */  lui   $t0, 0x101c
/* 000224 000001E4 35080A04 */  ori   $t0, $t0, 0xa04
/* 000228 000001E8 ADE80018 */  sw    $t0, 0x18($t7)
/* 00022C 000001EC 10000003 */  b     .L000001FC
.L000001F0:
/* 000230 000001F0 3C08080C */   lui   $t0, 0x80c
/* 000234 000001F4 35081204 */  ori   $t0, $t0, 0x1204
/* 000238 000001F8 ADE80018 */  sw    $t0, 0x18($t7)
.L000001FC:
/* 00023C 000001FC 3C080800 */  lui   $t0, 0x800
/* 000240 00000200 01C87020 */  add   $t6, $t6, $t0
/* 000244 00000204 01F07820 */  add   $t7, $t7, $s0
/* 000248 00000208 01F07820 */  add   $t7, $t7, $s0
/* 00024C 0000020C 25AD0001 */  addiu $t5, $t5, 1
/* 000250 00000210 2DA80008 */  sltiu $t0, $t5, 8
/* 000254 00000214 1500FFC4 */  bnez  $t0, .L00000128
/* 000258 00000218 00000000 */   nop   
.L0000021C:
/* 00025C 0000021C 3C08C400 */  lui   $t0, 0xc400
/* 000260 00000220 AD48000C */  sw    $t0, 0xc($t2)
/* 000264 00000224 3C088000 */  lui   $t0, 0x8000
/* 000268 00000228 AD480004 */  sw    $t0, 4($t2)
/* 00026C 0000022C 03C0E825 */  or    $sp, $fp, $zero
/* 000270 00000230 00001825 */  or    $v1, $zero, $zero
.L00000234:
/* 000274 00000234 8FA90004 */  lw    $t1, 4($sp)
/* 000278 00000238 3C08B009 */  lui   $t0, 0xb009
/* 00027C 0000023C 15280016 */  bne   $t1, $t0, .L00000298
/* 000280 00000240 00000000 */   nop   
/* 000284 00000244 AE380004 */  sw    $t8, 4($s1)
/* 000288 00000248 2735000C */  addiu $s5, $t9, 0xc
/* 00028C 0000024C 8FA40000 */  lw    $a0, ($sp)
/* 000290 00000250 23BD0008 */  addi  $sp, $sp, 8
/* 000294 00000254 24050001 */  addiu $a1, $zero, 1
/* 000298 00000258 0D00028D */  jal   func_04000A34
/* 00029C 0000025C 00000000 */   nop   
/* 0002A0 00000260 8EC80000 */  lw    $t0, ($s6)
/* 0002A4 00000264 3C080008 */  lui   $t0, 8
/* 0002A8 00000268 01164020 */  add   $t0, $t0, $s6
/* 0002AC 0000026C 8D090000 */  lw    $t1, ($t0)
/* 0002B0 00000270 8EC80000 */  lw    $t0, ($s6)
/* 0002B4 00000274 3C080008 */  lui   $t0, 8
/* 0002B8 00000278 01164020 */  add   $t0, $t0, $s6
/* 0002BC 0000027C 8D090000 */  lw    $t1, ($t0)
/* 0002C0 00000280 3C080400 */  lui   $t0, 0x400
/* 0002C4 00000284 01C87020 */  add   $t6, $t6, $t0
/* 0002C8 00000288 0330C820 */  add   $t9, $t9, $s0
/* 0002CC 0000028C 3C080010 */  lui   $t0, 0x10
/* 0002D0 00000290 02C8B020 */  add   $s6, $s6, $t0
/* 0002D4 00000294 10000021 */  b     .L0000031C
.L00000298:
/* 0002D8 00000298 AE370004 */   sw    $s7, 4($s1)
/* 0002DC 0000029C 24D5000C */  addiu $s5, $a2, 0xc
/* 0002E0 000002A0 8FA40000 */  lw    $a0, ($sp)
/* 0002E4 000002A4 23BD0008 */  addi  $sp, $sp, 8
/* 0002E8 000002A8 24050001 */  addiu $a1, $zero, 1
/* 0002EC 000002AC 0D00028D */  jal   func_04000A34
/* 0002F0 000002B0 00000000 */   nop   
/* 0002F4 000002B4 8CE80000 */  lw    $t0, ($a3)
/* 0002F8 000002B8 3C080008 */  lui   $t0, 8
/* 0002FC 000002BC 01074020 */  add   $t0, $t0, $a3
/* 000300 000002C0 8D090000 */  lw    $t1, ($t0)
/* 000304 000002C4 3C080010 */  lui   $t0, 0x10
/* 000308 000002C8 01074020 */  add   $t0, $t0, $a3
/* 00030C 000002CC 8D090000 */  lw    $t1, ($t0)
/* 000310 000002D0 3C080018 */  lui   $t0, 0x18
/* 000314 000002D4 01074020 */  add   $t0, $t0, $a3
/* 000318 000002D8 8D090000 */  lw    $t1, ($t0)
/* 00031C 000002DC 8CE80000 */  lw    $t0, ($a3)
/* 000320 000002E0 3C080008 */  lui   $t0, 8
/* 000324 000002E4 01074020 */  add   $t0, $t0, $a3
/* 000328 000002E8 8D090000 */  lw    $t1, ($t0)
/* 00032C 000002EC 3C080010 */  lui   $t0, 0x10
/* 000330 000002F0 01074020 */  add   $t0, $t0, $a3
/* 000334 000002F4 8D090000 */  lw    $t1, ($t0)
/* 000338 000002F8 3C080018 */  lui   $t0, 0x18
/* 00033C 000002FC 01074020 */  add   $t0, $t0, $a3
/* 000340 00000300 8D090000 */  lw    $t1, ($t0)
/* 000344 00000304 3C080800 */  lui   $t0, 0x800
/* 000348 00000308 02E8B820 */  add   $s7, $s7, $t0
/* 00034C 0000030C 00D03020 */  add   $a2, $a2, $s0
/* 000350 00000310 00D03020 */  add   $a2, $a2, $s0
/* 000354 00000314 3C080020 */  lui   $t0, 0x20
/* 000358 00000318 00E83820 */  add   $a3, $a3, $t0
.L0000031C:
/* 00035C 0000031C 24630001 */  addiu $v1, $v1, 1
/* 000360 00000320 006D402A */  slt   $t0, $v1, $t5
/* 000364 00000324 1500FFC3 */  bnez  $t0, .L00000234
/* 000368 00000328 00000000 */   nop   
/* 00036C 0000032C 3C0AA470 */  lui   $t2, 0xa470
/* 000370 00000330 001294C0 */  sll   $s2, $s2, 0x13
/* 000374 00000334 3C090006 */  lui   $t1, 6
/* 000378 00000338 35293634 */  ori   $t1, $t1, 0x3634
/* 00037C 0000033C 01324825 */  or    $t1, $t1, $s2
/* 000380 00000340 AD490010 */  sw    $t1, 0x10($t2)
/* 000384 00000344 8D490010 */  lw    $t1, 0x10($t2)
/* 000388 00000348 3C08A000 */  lui   $t0, 0xa000
/* 00038C 0000034C 35080300 */  ori   $t0, $t0, 0x300
/* 000390 00000350 3C090FFF */  lui   $t1, 0xfff
/* 000394 00000354 3529FFFF */  ori   $t1, $t1, 0xffff
/* 000398 00000358 02C9B024 */  and   $s6, $s6, $t1
/* 00039C 0000035C AD160018 */  sw    $s6, 0x18($t0)
/* 0003A0 00000360 03C0E825 */  or    $sp, $fp, $zero
/* 0003A4 00000364 27BD0048 */  addiu $sp, $sp, 0x48
/* 0003A8 00000368 8FB30000 */  lw    $s3, ($sp)
/* 0003AC 0000036C 8FB40004 */  lw    $s4, 4($sp)
/* 0003B0 00000370 8FB50008 */  lw    $s5, 8($sp)
/* 0003B4 00000374 8FB6000C */  lw    $s6, 0xc($sp)
/* 0003B8 00000378 8FB70010 */  lw    $s7, 0x10($sp)
/* 0003BC 0000037C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0003C0 00000380 3C088000 */  lui   $t0, 0x8000
/* 0003C4 00000384 25080000 */  addiu $t0, $t0, 0
/* 0003C8 00000388 25094000 */  addiu $t1, $t0, 0x4000
/* 0003CC 0000038C 2529FFE0 */  addiu $t1, $t1, -0x20
/* 0003D0 00000390 4080E000 */  mtc0  $zero, $28
/* 0003D4 00000394 4080E800 */  mtc0  $zero, $29
.L00000398:
/* 0003D8 00000398 BD080000 */  cache 8, ($t0)
/* 0003DC 0000039C 0109082B */  sltu  $at, $t0, $t1
/* 0003E0 000003A0 1420FFFD */  bnez  $at, .L00000398
/* 0003E4 000003A4 25080020 */   addiu $t0, $t0, 0x20
/* 0003E8 000003A8 3C088000 */  lui   $t0, 0x8000
/* 0003EC 000003AC 25080000 */  addiu $t0, $t0, 0
/* 0003F0 000003B0 25092000 */  addiu $t1, $t0, 0x2000
/* 0003F4 000003B4 2529FFF0 */  addiu $t1, $t1, -0x10
.L000003B8:
/* 0003F8 000003B8 BD090000 */  cache 9, ($t0)
/* 0003FC 000003BC 0109082B */  sltu  $at, $t0, $t1
/* 000400 000003C0 1420FFFD */  bnez  $at, .L000003B8
/* 000404 000003C4 25080010 */   addiu $t0, $t0, 0x10
/* 000408 000003C8 10000013 */  b     .L00000418
/* 00040C 000003CC 00000000 */   nop   
.L000003D0:
/* 000410 000003D0 3C088000 */  lui   $t0, 0x8000
/* 000414 000003D4 25080000 */  addiu $t0, $t0, 0
/* 000418 000003D8 25094000 */  addiu $t1, $t0, 0x4000
/* 00041C 000003DC 2529FFE0 */  addiu $t1, $t1, -0x20
/* 000420 000003E0 4080E000 */  mtc0  $zero, $28
/* 000424 000003E4 4080E800 */  mtc0  $zero, $29
.L000003E8:
/* 000428 000003E8 BD080000 */  cache 8, ($t0)
/* 00042C 000003EC 0109082B */  sltu  $at, $t0, $t1
/* 000430 000003F0 1420FFFD */  bnez  $at, .L000003E8
/* 000434 000003F4 25080020 */   addiu $t0, $t0, 0x20
/* 000438 000003F8 3C088000 */  lui   $t0, 0x8000
/* 00043C 000003FC 25080000 */  addiu $t0, $t0, 0
/* 000440 00000400 25092000 */  addiu $t1, $t0, 0x2000
/* 000444 00000404 2529FFF0 */  addiu $t1, $t1, -0x10
.L00000408:
/* 000448 00000408 BD010000 */  cache 1, ($t0)
/* 00044C 0000040C 0109082B */  sltu  $at, $t0, $t1
/* 000450 00000410 1420FFFD */  bnez  $at, .L00000408
/* 000454 00000414 25080010 */   addiu $t0, $t0, 0x10
.L00000418:
/* 000458 00000418 3C0AA400 */  lui   $t2, 0xa400
/* 00045C 0000041C 254A0000 */  addiu $t2, $t2, 0
/* 000460 00000420 3C0BFFF0 */  lui   $t3, 0xfff0
/* 000464 00000424 3C090010 */  lui   $t1, 0x10
/* 000468 00000428 014B5024 */  and   $t2, $t2, $t3
/* 00046C 0000042C 3C08A400 */  lui   $t0, 0xa400
/* 000470 00000430 2529FFFF */  addiu $t1, $t1, -1
/* 000474 00000434 3C0BA400 */  lui   $t3, 0xa400
/* 000478 00000438 250804C0 */  addiu $t0, $t0, 0x4c0
/* 00047C 0000043C 256B0768 */  addiu $t3, $t3, 0x768
/* 000480 00000440 01094024 */  and   $t0, $t0, $t1
/* 000484 00000444 01695824 */  and   $t3, $t3, $t1
/* 000488 00000448 3C09A000 */  lui   $t1, 0xa000
/* 00048C 0000044C 010A4025 */  or    $t0, $t0, $t2
/* 000490 00000450 016A5825 */  or    $t3, $t3, $t2
/* 000494 00000454 25290000 */  addiu $t1, $t1, 0
.L00000458:
/* 000498 00000458 8D0D0000 */  lw    $t5, ($t0)
/* 00049C 0000045C 25080004 */  addiu $t0, $t0, 4
/* 0004A0 00000460 010B082B */  sltu  $at, $t0, $t3
/* 0004A4 00000464 25290004 */  addiu $t1, $t1, 4
/* 0004A8 00000468 1420FFFB */  bnez  $at, .L00000458
/* 0004AC 0000046C AD2DFFFC */   sw    $t5, -4($t1)
/* 0004B0 00000470 3C0C8000 */  lui   $t4, 0x8000
/* 0004B4 00000474 258C0000 */  addiu $t4, $t4, 0
/* 0004B8 00000478 01800008 */  jr    $t4
/* 0004BC 0000047C 00000000 */   nop   
/* 0004C0 00000480 3C0BB000 */  lui   $t3, 0xb000
/* 0004C4 00000484 8D690008 */  lw    $t1, 8($t3)
/* 0004C8 00000488 3C0A1FFF */  lui   $t2, 0x1fff
/* 0004CC 0000048C 354AFFFF */  ori   $t2, $t2, 0xffff
/* 0004D0 00000490 3C010010 */  lui   $at, 0x10
/* 0004D4 00000494 012A4824 */  and   $t1, $t1, $t2
/* 0004D8 00000498 01214823 */  subu  $t1, $t1, $at
/* 0004DC 0000049C 3C01A460 */  lui   $at, 0xa460
/* 0004E0 000004A0 AC290000 */  sw    $t1, ($at)
/* 0004E4 000004A4 3C08A460 */  lui   $t0, 0xa460
.L000004A8:
/* 0004E8 000004A8 8D080010 */  lw    $t0, 0x10($t0)
/* 0004EC 000004AC 31080002 */  andi  $t0, $t0, 2
/* 0004F0 000004B0 5500FFFD */  bnezl $t0, .L000004A8
/* 0004F4 000004B4 3C08A460 */   lui   $t0, 0xa460
/* 0004F8 000004B8 24081000 */  addiu $t0, $zero, 0x1000
/* 0004FC 000004BC 010B4020 */  add   $t0, $t0, $t3
/* 000500 000004C0 010A4024 */  and   $t0, $t0, $t2
/* 000504 000004C4 3C01A460 */  lui   $at, 0xa460
/* 000508 000004C8 AC280004 */  sw    $t0, 4($at)
/* 00050C 000004CC 3C0A0010 */  lui   $t2, 0x10
/* 000510 000004D0 254A0003 */  addiu $t2, $t2, 3
/* 000514 000004D4 3C01A460 */  lui   $at, 0xa460
/* 000518 000004D8 AC2A000C */  sw    $t2, 0xc($at)
.L000004DC:
/* 00051C 000004DC 00000000 */  nop   
/* 000520 000004E0 00000000 */  nop   
/* 000524 000004E4 00000000 */  nop   
/* 000528 000004E8 00000000 */  nop   
/* 00052C 000004EC 00000000 */  nop   
/* 000530 000004F0 00000000 */  nop   
/* 000534 000004F4 00000000 */  nop   
/* 000538 000004F8 00000000 */  nop   
/* 00053C 000004FC 00000000 */  nop   
/* 000540 00000500 00000000 */  nop   
/* 000544 00000504 00000000 */  nop   
/* 000548 00000508 00000000 */  nop   
/* 00054C 0000050C 3C0BA460 */  lui   $t3, 0xa460
/* 000550 00000510 8D6B0010 */  lw    $t3, 0x10($t3)
/* 000554 00000514 316B0001 */  andi  $t3, $t3, 1
/* 000558 00000518 1560FFF0 */  bnez  $t3, .L000004DC
/* 00055C 0000051C 00000000 */   nop   
/* 000560 00000520 3C0BB000 */  lui   $t3, 0xb000
/* 000564 00000524 8D640008 */  lw    $a0, 8($t3)
/* 000568 00000528 3C010010 */  lui   $at, 0x10
/* 00056C 0000052C 02C02825 */  or    $a1, $s6, $zero
/* 000570 00000530 00812023 */  subu  $a0, $a0, $at
/* 000574 00000534 3C016C07 */  lui   $at, 0x6c07
/* 000578 00000538 34218965 */  ori   $at, $at, 0x8965
/* 00057C 0000053C 00A10019 */  multu $a1, $at
/* 000580 00000540 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 000584 00000544 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000588 00000548 AFB00014 */  sw    $s0, 0x14($sp)
/* 00058C 0000054C 3C1F0010 */  lui   $ra, 0x10
/* 000590 00000550 00001825 */  or $v1, $zero, $zero
/* 000594 00000554 00004025 */  or $t0, $zero, $zero
/* 000598 00000558 00804825 */  or $t1, $a0, $zero
/* 00059C 0000055C 240D0020 */  addiu $t5, $zero, 0x20
/* 0005A0 00000560 00001012 */  mflo  $v0
/* 0005A4 00000564 24420001 */  addiu $v0, $v0, 1
/* 0005A8 00000568 00403825 */  or $a3, $v0, $zero
/* 0005AC 0000056C 00405025 */  or $t2, $v0, $zero
/* 0005B0 00000570 00405825 */  or $t3, $v0, $zero
/* 0005B4 00000574 00408025 */  or $s0, $v0, $zero
/* 0005B8 00000578 00403025 */  or $a2, $v0, $zero
/* 0005BC 0000057C 00406025 */  or $t4, $v0, $zero
.L00000580:
/* 0005C0 00000580 8D220000 */  lw    $v0, ($t1)
/* 0005C4 00000584 00E21821 */  addu  $v1, $a3, $v0
/* 0005C8 00000588 0067082B */  sltu  $at, $v1, $a3
/* 0005CC 0000058C 10200002 */  beqz  $at, .L00000598
/* 0005D0 00000590 00602825 */   or $a1, $v1, $zero
/* 0005D4 00000594 254A0001 */  addiu $t2, $t2, 1
.L00000598:
/* 0005D8 00000598 3043001F */  andi  $v1, $v0, 0x1f
/* 0005DC 0000059C 01A37823 */  subu  $t7, $t5, $v1
/* 0005E0 000005A0 01E2C006 */  srlv  $t8, $v0, $t7
/* 0005E4 000005A4 00627004 */  sllv  $t6, $v0, $v1
/* 0005E8 000005A8 01D82025 */  or    $a0, $t6, $t8
/* 0005EC 000005AC 00C2082B */  sltu  $at, $a2, $v0
/* 0005F0 000005B0 00A03825 */  or $a3, $a1, $zero
/* 0005F4 000005B4 01625826 */  xor   $t3, $t3, $v0
/* 0005F8 000005B8 10200004 */  beqz  $at, .L000005CC
/* 0005FC 000005BC 02048021 */   addu  $s0, $s0, $a0
/* 000600 000005C0 00E2C826 */  xor   $t9, $a3, $v0
/* 000604 000005C4 10000002 */  b     .L000005D0
/* 000608 000005C8 03263026 */   xor   $a2, $t9, $a2
.L000005CC:
/* 00060C 000005CC 00C43026 */  xor   $a2, $a2, $a0
.L000005D0:
/* 000610 000005D0 25080004 */  addiu $t0, $t0, 4
/* 000614 000005D4 00507826 */  xor   $t7, $v0, $s0
/* 000618 000005D8 25290004 */  addiu $t1, $t1, 4
/* 00061C 000005DC 151FFFE8 */  bne   $t0, $ra, .L00000580
/* 000620 000005E0 01EC6021 */   addu  $t4, $t7, $t4
/* 000624 000005E4 00EA7026 */  xor   $t6, $a3, $t2
/* 000628 000005E8 01CB3821 */  addu  $a3, $t6, $t3
/* 00062C 000005EC 0206C026 */  xor   $t8, $s0, $a2
/* 000630 000005F0 030C8021 */  addu  $s0, $t8, $t4
/* 000634 000005F4 3C0BB000 */  lui   $t3, 0xb000
/* 000638 000005F8 8D680010 */  lw    $t0, 0x10($t3)
/* 00063C 000005FC 14E80006 */  bne   $a3, $t0, .L00000618
/* 000640 00000600 00000000 */   nop   
/* 000644 00000604 8D680014 */  lw    $t0, 0x14($t3)
/* 000648 00000608 16080003 */  bne   $s0, $t0, .L00000618
/* 00064C 0000060C 00000000 */   nop   
/* 000650 00000610 04110003 */  bal   func_00000620
/* 000654 00000614 00000000 */   nop   
func_00000618:
.L00000618:
/* 000658 00000618 0411FFFF */  bal   func_00000618
/* 00065C 0000061C 00000000 */   nop   
func_00000620:
/* 000660 00000620 3C09A408 */  lui   $t1, 0xa408
/* 000664 00000624 8D290000 */  lw    $t1, ($t1)
/* 000668 00000628 8FB00014 */  lw    $s0, 0x14($sp)
/* 00066C 0000062C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000670 00000630 11200006 */  beqz  $t1, .L0000064C
/* 000674 00000634 27BD0020 */   addiu $sp, $sp, 0x20
/* 000678 00000638 240A0041 */  addiu $t2, $zero, 0x41
/* 00067C 0000063C 3C01A404 */  lui   $at, 0xa404
/* 000680 00000640 AC2A0010 */  sw    $t2, 0x10($at)
/* 000684 00000644 3C01A408 */  lui   $at, 0xa408
/* 000688 00000648 AC200000 */  sw    $zero, ($at)
.L0000064C:
/* 00068C 0000064C 3C0B00AA */  lui   $t3, 0xaa
/* 000690 00000650 356BAAAE */  ori   $t3, $t3, 0xaaae
/* 000694 00000654 3C01A404 */  lui   $at, 0xa404
/* 000698 00000658 AC2B0010 */  sw    $t3, 0x10($at)
/* 00069C 0000065C 3C01A430 */  lui   $at, 0xa430
/* 0006A0 00000660 24080555 */  addiu $t0, $zero, 0x555
/* 0006A4 00000664 AC28000C */  sw    $t0, 0xc($at)
/* 0006A8 00000668 3C01A480 */  lui   $at, 0xa480
/* 0006AC 0000066C AC200018 */  sw    $zero, 0x18($at)
/* 0006B0 00000670 3C01A450 */  lui   $at, 0xa450
/* 0006B4 00000674 AC20000C */  sw    $zero, 0xc($at)
/* 0006B8 00000678 3C01A430 */  lui   $at, 0xa430
/* 0006BC 0000067C 24090800 */  addiu $t1, $zero, 0x800
/* 0006C0 00000680 AC290000 */  sw    $t1, ($at)
/* 0006C4 00000684 24090002 */  addiu $t1, $zero, 2
/* 0006C8 00000688 3C01A460 */  lui   $at, 0xa460
/* 0006CC 0000068C AC290010 */  sw    $t1, 0x10($at)
/* 0006D0 00000690 3C08A000 */  lui   $t0, 0xa000
/* 0006D4 00000694 35080300 */  ori   $t0, $t0, 0x300
/* 0006D8 00000698 240917D7 */  addiu $t1, $zero, 0x17d7
/* 0006DC 0000069C AD090010 */  sw    $t1, 0x10($t0)
/* 0006E0 000006A0 AD140000 */  sw    $s4, ($t0)
/* 0006E4 000006A4 AD130004 */  sw    $s3, 4($t0)
/* 0006E8 000006A8 AD15000C */  sw    $s5, 0xc($t0)
/* 0006EC 000006AC 12600004 */  beqz  $s3, .L000006C0
/* 0006F0 000006B0 AD170014 */   sw    $s7, 0x14($t0)
/* 0006F4 000006B4 3C09A600 */  lui   $t1, 0xa600
/* 0006F8 000006B8 10000003 */  b     .L000006C8
/* 0006FC 000006BC 25290000 */   addiu $t1, $t1, 0
.L000006C0:
/* 000700 000006C0 3C09B000 */  lui   $t1, 0xb000
/* 000704 000006C4 25290000 */  addiu $t1, $t1, 0
.L000006C8:
/* 000708 000006C8 AD090008 */  sw    $t1, 8($t0)
/* 00070C 000006CC 3C08A400 */  lui   $t0, 0xa400
/* 000710 000006D0 25080000 */  addiu $t0, $t0, 0
/* 000714 000006D4 21091000 */  addi  $t1, $t0, 0x1000
/* 000718 000006D8 240AFFFF */  addiu $t2, $zero, -1
.L000006DC:
/* 00071C 000006DC 25080004 */  addiu $t0, $t0, 4
/* 000720 000006E0 1509FFFE */  bne   $t0, $t1, .L000006DC
/* 000724 000006E4 AD0AFFFC */   sw    $t2, -4($t0)
/* 000728 000006E8 3C08A400 */  lui   $t0, 0xa400
/* 00072C 000006EC 25081000 */  addiu $t0, $t0, 0x1000
/* 000730 000006F0 21091000 */  addi  $t1, $t0, 0x1000
.L000006F4:
/* 000734 000006F4 25080004 */  addiu $t0, $t0, 4
/* 000738 000006F8 1509FFFE */  bne   $t0, $t1, .L000006F4
/* 00073C 000006FC AD0AFFFC */   sw    $t2, -4($t0)
/* 000740 00000700 3C0AA400 */  lui   $t2, 0xa400
/* 000744 00000704 240B17D7 */  addiu $t3, $zero, 0x17d7
/* 000748 00000708 AD4B1000 */  sw    $t3, 0x1000($t2)
/* 00074C 0000070C 3C0BB000 */  lui   $t3, 0xb000
/* 000750 00000710 254A1000 */  addiu $t2, $t2, 0x1000
/* 000754 00000714 8D690008 */  lw    $t1, 8($t3)
/* 000758 00000718 3C010010 */  lui   $at, 0x10
/* 00075C 0000071C 01214823 */  subu  $t1, $t1, $at
/* 000760 00000720 01200008 */  jr    $t1
/* 000764 00000724 00000000 */   nop   
/* 000768 00000728 00000000 */  nop   
/* 00076C 0000072C 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 000770 00000730 AFB00040 */  sw    $s0, 0x40($sp)
/* 000774 00000734 AFB10044 */  sw    $s1, 0x44($sp)
/* 000778 00000738 00008825 */  or $s1, $zero, $zero
/* 00077C 0000073C 00008025 */  or $s0, $zero, $zero
/* 000780 00000740 AFA20000 */  sw    $v0, ($sp)
/* 000784 00000744 AFA30004 */  sw    $v1, 4($sp)
/* 000788 00000748 AFA40008 */  sw    $a0, 8($sp)
/* 00078C 0000074C AFA5000C */  sw    $a1, 0xc($sp)
/* 000790 00000750 AFA60010 */  sw    $a2, 0x10($sp)
/* 000794 00000754 AFA70014 */  sw    $a3, 0x14($sp)
/* 000798 00000758 AFA80018 */  sw    $t0, 0x18($sp)
/* 00079C 0000075C AFA9001C */  sw    $t1, 0x1c($sp)
/* 0007A0 00000760 AFAA0020 */  sw    $t2, 0x20($sp)
/* 0007A4 00000764 AFAB0024 */  sw    $t3, 0x24($sp)
/* 0007A8 00000768 AFAC0028 */  sw    $t4, 0x28($sp)
/* 0007AC 0000076C AFAD002C */  sw    $t5, 0x2c($sp)
/* 0007B0 00000770 AFAE0030 */  sw    $t6, 0x30($sp)
/* 0007B4 00000774 AFAF0034 */  sw    $t7, 0x34($sp)
/* 0007B8 00000778 AFB80038 */  sw    $t8, 0x38($sp)
/* 0007BC 0000077C AFB9003C */  sw    $t9, 0x3c($sp)
/* 0007C0 00000780 AFB20048 */  sw    $s2, 0x48($sp)
/* 0007C4 00000784 AFB3004C */  sw    $s3, 0x4c($sp)
/* 0007C8 00000788 AFB40050 */  sw    $s4, 0x50($sp)
/* 0007CC 0000078C AFB50054 */  sw    $s5, 0x54($sp)
/* 0007D0 00000790 AFB60058 */  sw    $s6, 0x58($sp)
/* 0007D4 00000794 AFB7005C */  sw    $s7, 0x5c($sp)
/* 0007D8 00000798 AFBE0060 */  sw    $fp, 0x60($sp)
/* 0007DC 0000079C AFBF0064 */  sw    $ra, 0x64($sp)
.L000007A0:
/* 0007E0 000007A0 0D00021D */  jal   func_04000874
/* 0007E4 000007A4 00000000 */   nop   
/* 0007E8 000007A8 26100001 */  addiu $s0, $s0, 1
/* 0007EC 000007AC 2A090004 */  slti  $t1, $s0, 4
/* 0007F0 000007B0 1520FFFB */  bnez  $t1, .L000007A0
/* 0007F4 000007B4 02228821 */   addu  $s1, $s1, $v0
/* 0007F8 000007B8 00112082 */  srl   $a0, $s1, 2
/* 0007FC 000007BC 0D00028D */  jal   func_04000A34
/* 000800 000007C0 24050001 */   addiu $a1, $zero, 1
/* 000804 000007C4 8FBF0064 */  lw    $ra, 0x64($sp)
/* 000808 000007C8 00111082 */  srl   $v0, $s1, 2
/* 00080C 000007CC 8FB10044 */  lw    $s1, 0x44($sp)
/* 000810 000007D0 8FA30004 */  lw    $v1, 4($sp)
/* 000814 000007D4 8FA40008 */  lw    $a0, 8($sp)
/* 000818 000007D8 8FA5000C */  lw    $a1, 0xc($sp)
/* 00081C 000007DC 8FA60010 */  lw    $a2, 0x10($sp)
/* 000820 000007E0 8FA70014 */  lw    $a3, 0x14($sp)
/* 000824 000007E4 8FA80018 */  lw    $t0, 0x18($sp)
/* 000828 000007E8 8FA9001C */  lw    $t1, 0x1c($sp)
/* 00082C 000007EC 8FAA0020 */  lw    $t2, 0x20($sp)
/* 000830 000007F0 8FAB0024 */  lw    $t3, 0x24($sp)
/* 000834 000007F4 8FAC0028 */  lw    $t4, 0x28($sp)
/* 000838 000007F8 8FAD002C */  lw    $t5, 0x2c($sp)
/* 00083C 000007FC 8FAE0030 */  lw    $t6, 0x30($sp)
/* 000840 00000800 8FAF0034 */  lw    $t7, 0x34($sp)
/* 000844 00000804 8FB80038 */  lw    $t8, 0x38($sp)
/* 000848 00000808 8FB9003C */  lw    $t9, 0x3c($sp)
/* 00084C 0000080C 8FB00040 */  lw    $s0, 0x40($sp)
/* 000850 00000810 8FB20048 */  lw    $s2, 0x48($sp)
/* 000854 00000814 8FB3004C */  lw    $s3, 0x4c($sp)
/* 000858 00000818 8FB40050 */  lw    $s4, 0x50($sp)
/* 00085C 0000081C 8FB50054 */  lw    $s5, 0x54($sp)
/* 000860 00000820 8FB60058 */  lw    $s6, 0x58($sp)
/* 000864 00000824 8FB7005C */  lw    $s7, 0x5c($sp)
/* 000868 00000828 8FBE0060 */  lw    $fp, 0x60($sp)
/* 00086C 0000082C 03E00008 */  jr    $ra
/* 000870 00000830 27BD00A0 */   addiu $sp, $sp, 0xa0

/* 000874 00000834 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 000878 00000838 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00087C 0000083C 00004825 */  or $t1, $zero, $zero
/* 000880 00000840 00005825 */  or $t3, $zero, $zero
/* 000884 00000844 00006025 */  or $t4, $zero, $zero
.L00000848:
/* 000888 00000848 299A0040 */  slti  $k0, $t4, 0x40
/* 00088C 0000084C 53400018 */  beql  $k0, $zero, .L000008B0
/* 000890 00000850 00001025 */   or $v0, $zero, $zero
/* 000894 00000854 0D000240 */  jal   func_04000900
/* 000898 00000858 01802025 */   or $a0, $t4, $zero
/* 00089C 0000085C 58400008 */  blezl $v0, .L00000880
/* 0008A0 00000860 293A0050 */   slti  $k0, $t1, 0x50
/* 0008A4 00000864 0049D023 */  subu  $k0, $v0, $t1
/* 0008A8 00000868 034C0019 */  multu $k0, $t4
/* 0008AC 0000086C 00404825 */  or $t1, $v0, $zero
/* 0008B0 00000870 0000D012 */  mflo  $k0
/* 0008B4 00000874 017A5821 */  addu  $t3, $t3, $k0
/* 0008B8 00000878 00000000 */  nop   
/* 0008BC 0000087C 293A0050 */  slti  $k0, $t1, 0x50
.L00000880:
/* 0008C0 00000880 1740FFF1 */  bnez  $k0, .L00000848
/* 0008C4 00000884 258C0001 */   addiu $t4, $t4, 1
/* 0008C8 00000888 000B2080 */  sll   $a0, $t3, 2
/* 0008CC 0000088C 008B2023 */  subu  $a0, $a0, $t3
/* 0008D0 00000890 00042080 */  sll   $a0, $a0, 2
/* 0008D4 00000894 008B2023 */  subu  $a0, $a0, $t3
/* 0008D8 00000898 00042040 */  sll   $a0, $a0, 1
/* 0008DC 0000089C 0D00025D */  jal   func_04000974
/* 0008E0 000008A0 2484FC90 */   addiu $a0, $a0, -0x370
/* 0008E4 000008A4 10000003 */  b     .L000008B4
/* 0008E8 000008A8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0008EC 000008AC 00001025 */  or $v0, $zero, $zero
.L000008B0:
/* 0008F0 000008B0 8FBF001C */  lw    $ra, 0x1c($sp)
.L000008B4:
/* 0008F4 000008B4 27BD0020 */  addiu $sp, $sp, 0x20
/* 0008F8 000008B8 03E00008 */  jr    $ra
/* 0008FC 000008BC 00000000 */   nop   

/* 000900 000008C0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 000904 000008C4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000908 000008C8 00001025 */  or $v0, $zero, $zero
/* 00090C 000008CC 0D00028D */  jal   func_04000A34
/* 000910 000008D0 24050002 */   addiu $a1, $zero, 2
/* 000914 000008D4 0000F025 */  or $fp, $zero, $zero
/* 000918 000008D8 241AFFFF */  addiu $k0, $zero, -1
.L000008DC:
/* 00091C 000008DC AE9A0004 */  sw    $k0, 4($s4)
/* 000920 000008E0 8E830004 */  lw    $v1, 4($s4)
/* 000924 000008E4 AE9A0000 */  sw    $k0, ($s4)
/* 000928 000008E8 AE9A0000 */  sw    $k0, ($s4)
/* 00092C 000008EC 0000E025 */  or $gp, $zero, $zero
/* 000930 000008F0 00031C02 */  srl   $v1, $v1, 0x10
.L000008F4:
/* 000934 000008F4 307A0001 */  andi  $k0, $v1, 1
/* 000938 000008F8 53400003 */  beql  $k0, $zero, .L00000908
/* 00093C 000008FC 279C0001 */   addiu $gp, $gp, 1
/* 000940 00000900 24420001 */  addiu $v0, $v0, 1
/* 000944 00000904 279C0001 */  addiu $gp, $gp, 1
.L00000908:
/* 000948 00000908 2B9A0008 */  slti  $k0, $gp, 8
/* 00094C 0000090C 1740FFF9 */  bnez  $k0, .L000008F4
/* 000950 00000910 00031842 */   srl   $v1, $v1, 1
/* 000954 00000914 27DE0001 */  addiu $fp, $fp, 1
/* 000958 00000918 2BDA000A */  slti  $k0, $fp, 0xa
/* 00095C 0000091C 5740FFEF */  bnezl $k0, .L000008DC
/* 000960 00000920 241AFFFF */   addiu $k0, $zero, -1
/* 000964 00000924 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000968 00000928 27BD0028 */  addiu $sp, $sp, 0x28
/* 00096C 0000092C 03E00008 */  jr    $ra
/* 000970 00000930 00000000 */   nop   

/* 000974 00000934 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 000978 00000938 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00097C 0000093C AFA40020 */  sw    $a0, 0x20($sp)
/* 000980 00000940 A3A00027 */  sb    $zero, 0x27($sp)
/* 000984 00000944 00004025 */  or $t0, $zero, $zero
/* 000988 00000948 00005025 */  or $t2, $zero, $zero
/* 00098C 0000094C 340DC800 */  ori   $t5, $zero, 0xc800
/* 000990 00000950 00007025 */  or $t6, $zero, $zero
/* 000994 00000954 29DA0040 */  slti  $k0, $t6, 0x40
.L00000958:
/* 000998 00000958 57400004 */  bnezl $k0, .L0000096C
/* 00099C 0000095C 01C02025 */   or $a0, $t6, $zero
/* 0009A0 00000960 10000020 */  b     .L000009E4
/* 0009A4 00000964 00001025 */   or $v0, $zero, $zero
/* 0009A8 00000968 01C02025 */  or $a0, $t6, $zero
.L0000096C:
/* 0009AC 0000096C 0D00028D */  jal   func_04000A34
/* 0009B0 00000970 24050001 */   addiu $a1, $zero, 1
/* 0009B4 00000974 0D0002B1 */  jal   func_04000AC4
/* 0009B8 00000978 27A40027 */   addiu $a0, $sp, 0x27
/* 0009BC 0000097C 0D0002B1 */  jal   func_04000AC4
/* 0009C0 00000980 27A40027 */   addiu $a0, $sp, 0x27
/* 0009C4 00000984 93BA0027 */  lbu   $k0, 0x27($sp)
/* 0009C8 00000988 241B0320 */  addiu $k1, $zero, 0x320
/* 0009CC 0000098C 8FA40020 */  lw    $a0, 0x20($sp)
/* 0009D0 00000990 035B0019 */  multu $k0, $k1
/* 0009D4 00000994 00004012 */  mflo  $t0
/* 0009D8 00000998 0104D023 */  subu  $k0, $t0, $a0
/* 0009DC 0000099C 07430003 */  bgezl $k0, .L000009AC
/* 0009E0 000009A0 034DD82A */   slt   $k1, $k0, $t5
/* 0009E4 000009A4 0088D023 */  subu  $k0, $a0, $t0
/* 0009E8 000009A8 034DD82A */  slt   $k1, $k0, $t5
.L000009AC:
/* 0009EC 000009AC 53600004 */  beql  $k1, $zero, .L000009C0
/* 0009F0 000009B0 8FA40020 */   lw    $a0, 0x20($sp)
/* 0009F4 000009B4 03406825 */  or $t5, $k0, $zero
/* 0009F8 000009B8 01C05025 */  or $t2, $t6, $zero
/* 0009FC 000009BC 8FA40020 */  lw    $a0, 0x20($sp)
.L000009C0:
/* 000A00 000009C0 0104D82A */  slt   $k1, $t0, $a0
/* 000A04 000009C4 53600006 */  beql  $k1, $zero, .L000009E0
/* 000A08 000009C8 014E1021 */   addu  $v0, $t2, $t6
/* 000A0C 000009CC 25CE0001 */  addiu $t6, $t6, 1
/* 000A10 000009D0 29DB0041 */  slti  $k1, $t6, 0x41
/* 000A14 000009D4 5760FFE0 */  bnezl $k1, .L00000958
/* 000A18 000009D8 29DA0040 */   slti  $k0, $t6, 0x40
/* 000A1C 000009DC 014E1021 */  addu  $v0, $t2, $t6
.L000009E0:
/* 000A20 000009E0 00021042 */  srl   $v0, $v0, 1
.L000009E4:
/* 000A24 000009E4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000A28 000009E8 27BD0028 */  addiu $sp, $sp, 0x28
/* 000A2C 000009EC 03E00008 */  jr    $ra
/* 000A30 000009F0 00000000 */   nop   

/* 000A34 000009F4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 000A38 000009F8 308400FF */  andi  $a0, $a0, 0xff
/* 000A3C 000009FC 241B0001 */  addiu $k1, $zero, 1
/* 000A40 00000A00 3884003F */  xori  $a0, $a0, 0x3f
/* 000A44 00000A04 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000A48 00000A08 14BB0003 */  bne   $a1, $k1, .L00000A18
/* 000A4C 00000A0C 3C0F4600 */   lui   $t7, 0x4600
/* 000A50 00000A10 3C1A8000 */  lui   $k0, 0x8000
/* 000A54 00000A14 01FA7825 */  or    $t7, $t7, $k0
.L00000A18:
/* 000A58 00000A18 309A0001 */  andi  $k0, $a0, 1
/* 000A5C 00000A1C 001AD180 */  sll   $k0, $k0, 6
/* 000A60 00000A20 01FA7825 */  or    $t7, $t7, $k0
/* 000A64 00000A24 309A0002 */  andi  $k0, $a0, 2
/* 000A68 00000A28 001AD340 */  sll   $k0, $k0, 0xd
/* 000A6C 00000A2C 01FA7825 */  or    $t7, $t7, $k0
/* 000A70 00000A30 309A0004 */  andi  $k0, $a0, 4
/* 000A74 00000A34 001AD500 */  sll   $k0, $k0, 0x14
/* 000A78 00000A38 01FA7825 */  or    $t7, $t7, $k0
/* 000A7C 00000A3C 309A0008 */  andi  $k0, $a0, 8
/* 000A80 00000A40 001AD100 */  sll   $k0, $k0, 4
/* 000A84 00000A44 01FA7825 */  or    $t7, $t7, $k0
/* 000A88 00000A48 309A0010 */  andi  $k0, $a0, 0x10
/* 000A8C 00000A4C 001AD2C0 */  sll   $k0, $k0, 0xb
/* 000A90 00000A50 01FA7825 */  or    $t7, $t7, $k0
/* 000A94 00000A54 309A0020 */  andi  $k0, $a0, 0x20
/* 000A98 00000A58 001AD480 */  sll   $k0, $k0, 0x12
/* 000A9C 00000A5C 01FA7825 */  or    $t7, $t7, $k0
/* 000AA0 00000A60 241B0001 */  addiu $k1, $zero, 1
/* 000AA4 00000A64 14BB0003 */  bne   $a1, $k1, .L00000A74
/* 000AA8 00000A68 AEAF0000 */   sw    $t7, ($s5)
/* 000AAC 00000A6C 3C1AA430 */  lui   $k0, 0xa430
/* 000AB0 00000A70 AF400000 */  sw    $zero, ($k0)
.L00000A74:
/* 000AB4 00000A74 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000AB8 00000A78 27BD0028 */  addiu $sp, $sp, 0x28
/* 000ABC 00000A7C 03E00008 */  jr    $ra
/* 000AC0 00000A80 00000000 */   nop   

/* 000AC4 00000A84 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 000AC8 00000A88 AFBF001C */  sw    $ra, 0x1c($sp)
/* 000ACC 00000A8C 241A2000 */  addiu $k0, $zero, 0x2000
/* 000AD0 00000A90 3C1BA430 */  lui   $k1, 0xa430
/* 000AD4 00000A94 AF7A0000 */  sw    $k0, ($k1)
/* 000AD8 00000A98 0000F025 */  or $fp, $zero, $zero
/* 000ADC 00000A9C 8EBE0000 */  lw    $fp, ($s5)
/* 000AE0 00000AA0 241A1000 */  addiu $k0, $zero, 0x1000
/* 000AE4 00000AA4 AF7A0000 */  sw    $k0, ($k1)
/* 000AE8 00000AA8 241B0040 */  addiu $k1, $zero, 0x40
/* 000AEC 00000AAC 037ED824 */  and   $k1, $k1, $fp
/* 000AF0 00000AB0 001BD982 */  srl   $k1, $k1, 6
/* 000AF4 00000AB4 0000D025 */  or $k0, $zero, $zero
/* 000AF8 00000AB8 035BD025 */  or    $k0, $k0, $k1
/* 000AFC 00000ABC 241B4000 */  addiu $k1, $zero, 0x4000
/* 000B00 00000AC0 037ED824 */  and   $k1, $k1, $fp
/* 000B04 00000AC4 001BDB42 */  srl   $k1, $k1, 0xd
/* 000B08 00000AC8 035BD025 */  or    $k0, $k0, $k1
/* 000B0C 00000ACC 3C1B0040 */  lui   $k1, 0x40
/* 000B10 00000AD0 037ED824 */  and   $k1, $k1, $fp
/* 000B14 00000AD4 001BDD02 */  srl   $k1, $k1, 0x14
/* 000B18 00000AD8 035BD025 */  or    $k0, $k0, $k1
/* 000B1C 00000ADC 241B0080 */  addiu $k1, $zero, 0x80
/* 000B20 00000AE0 037ED824 */  and   $k1, $k1, $fp
/* 000B24 00000AE4 001BD902 */  srl   $k1, $k1, 4
/* 000B28 00000AE8 035BD025 */  or    $k0, $k0, $k1
/* 000B2C 00000AEC 341B8000 */  ori   $k1, $zero, 0x8000
/* 000B30 00000AF0 037ED824 */  and   $k1, $k1, $fp
/* 000B34 00000AF4 001BDAC2 */  srl   $k1, $k1, 0xb
/* 000B38 00000AF8 035BD025 */  or    $k0, $k0, $k1
/* 000B3C 00000AFC 3C1B0080 */  lui   $k1, 0x80
/* 000B40 00000B00 037ED824 */  and   $k1, $k1, $fp
/* 000B44 00000B04 001BDC82 */  srl   $k1, $k1, 0x12
/* 000B48 00000B08 035BD025 */  or    $k0, $k0, $k1
/* 000B4C 00000B0C A09A0000 */  sb    $k0, ($a0)
/* 000B50 00000B10 8FBF001C */  lw    $ra, 0x1c($sp)
/* 000B54 00000B14 27BD0028 */  addiu $sp, $sp, 0x28
/* 000B58 00000B18 03E00008 */  jr    $ra
/* 000B5C 00000B1C 00000000 */   nop   

/* 000B60 00000B20 00000000 */  nop   
/* 000B64 00000B24 00000000 */  nop   
/* 000B68 00000B28 00000000 */  nop   
/* 000B6C 00000B2C 00000000 */  nop   
