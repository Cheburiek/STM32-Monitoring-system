
build/STM32-Monitoring-system.elf:     file format elf32-littlearm


Disassembly of section .text:

08000190 <deregister_tm_clones>:
 8000190:	4803      	ldr	r0, [pc, #12]	; (80001a0 <deregister_tm_clones+0x10>)
 8000192:	4b04      	ldr	r3, [pc, #16]	; (80001a4 <deregister_tm_clones+0x14>)
 8000194:	4283      	cmp	r3, r0
 8000196:	d002      	beq.n	800019e <deregister_tm_clones+0xe>
 8000198:	4b03      	ldr	r3, [pc, #12]	; (80001a8 <deregister_tm_clones+0x18>)
 800019a:	b103      	cbz	r3, 800019e <deregister_tm_clones+0xe>
 800019c:	4718      	bx	r3
 800019e:	4770      	bx	lr
 80001a0:	20000190 	.word	0x20000190
 80001a4:	20000190 	.word	0x20000190
 80001a8:	00000000 	.word	0x00000000

080001ac <register_tm_clones>:
 80001ac:	4805      	ldr	r0, [pc, #20]	; (80001c4 <register_tm_clones+0x18>)
 80001ae:	4906      	ldr	r1, [pc, #24]	; (80001c8 <register_tm_clones+0x1c>)
 80001b0:	1a0b      	subs	r3, r1, r0
 80001b2:	0fd9      	lsrs	r1, r3, #31
 80001b4:	eb01 01a3 	add.w	r1, r1, r3, asr #2
 80001b8:	1049      	asrs	r1, r1, #1
 80001ba:	d002      	beq.n	80001c2 <register_tm_clones+0x16>
 80001bc:	4b03      	ldr	r3, [pc, #12]	; (80001cc <register_tm_clones+0x20>)
 80001be:	b103      	cbz	r3, 80001c2 <register_tm_clones+0x16>
 80001c0:	4718      	bx	r3
 80001c2:	4770      	bx	lr
 80001c4:	20000190 	.word	0x20000190
 80001c8:	20000190 	.word	0x20000190
 80001cc:	00000000 	.word	0x00000000

080001d0 <__do_global_dtors_aux>:
 80001d0:	b510      	push	{r4, lr}
 80001d2:	4c06      	ldr	r4, [pc, #24]	; (80001ec <__do_global_dtors_aux+0x1c>)
 80001d4:	7823      	ldrb	r3, [r4, #0]
 80001d6:	b943      	cbnz	r3, 80001ea <__do_global_dtors_aux+0x1a>
 80001d8:	f7ff ffda 	bl	8000190 <deregister_tm_clones>
 80001dc:	4b04      	ldr	r3, [pc, #16]	; (80001f0 <__do_global_dtors_aux+0x20>)
 80001de:	b113      	cbz	r3, 80001e6 <__do_global_dtors_aux+0x16>
 80001e0:	4804      	ldr	r0, [pc, #16]	; (80001f4 <__do_global_dtors_aux+0x24>)
 80001e2:	f3af 8000 	nop.w
 80001e6:	2301      	movs	r3, #1
 80001e8:	7023      	strb	r3, [r4, #0]
 80001ea:	bd10      	pop	{r4, pc}
 80001ec:	20000190 	.word	0x20000190
 80001f0:	00000000 	.word	0x00000000
 80001f4:	0800d6a4 	.word	0x0800d6a4

080001f8 <frame_dummy>:
 80001f8:	b508      	push	{r3, lr}
 80001fa:	4b04      	ldr	r3, [pc, #16]	; (800020c <frame_dummy+0x14>)
 80001fc:	b11b      	cbz	r3, 8000206 <frame_dummy+0xe>
 80001fe:	4904      	ldr	r1, [pc, #16]	; (8000210 <frame_dummy+0x18>)
 8000200:	4804      	ldr	r0, [pc, #16]	; (8000214 <frame_dummy+0x1c>)
 8000202:	f3af 8000 	nop.w
 8000206:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800020a:	e7cf      	b.n	80001ac <register_tm_clones>
 800020c:	00000000 	.word	0x00000000
 8000210:	20000194 	.word	0x20000194
 8000214:	0800d6a4 	.word	0x0800d6a4

08000218 <__errno>:
 8000218:	4b01      	ldr	r3, [pc, #4]	; (8000220 <__errno+0x8>)
 800021a:	6818      	ldr	r0, [r3, #0]
 800021c:	4770      	bx	lr
 800021e:	bf00      	nop
 8000220:	20000000 	.word	0x20000000

08000224 <__libc_init_array>:
 8000224:	b570      	push	{r4, r5, r6, lr}
 8000226:	4e0d      	ldr	r6, [pc, #52]	; (800025c <__libc_init_array+0x38>)
 8000228:	4d0d      	ldr	r5, [pc, #52]	; (8000260 <__libc_init_array+0x3c>)
 800022a:	1b76      	subs	r6, r6, r5
 800022c:	10b6      	asrs	r6, r6, #2
 800022e:	d006      	beq.n	800023e <__libc_init_array+0x1a>
 8000230:	2400      	movs	r4, #0
 8000232:	f855 3b04 	ldr.w	r3, [r5], #4
 8000236:	3401      	adds	r4, #1
 8000238:	4798      	blx	r3
 800023a:	42a6      	cmp	r6, r4
 800023c:	d1f9      	bne.n	8000232 <__libc_init_array+0xe>
 800023e:	4e09      	ldr	r6, [pc, #36]	; (8000264 <__libc_init_array+0x40>)
 8000240:	4d09      	ldr	r5, [pc, #36]	; (8000268 <__libc_init_array+0x44>)
 8000242:	1b76      	subs	r6, r6, r5
 8000244:	f00d fa2e 	bl	800d6a4 <_init>
 8000248:	10b6      	asrs	r6, r6, #2
 800024a:	d006      	beq.n	800025a <__libc_init_array+0x36>
 800024c:	2400      	movs	r4, #0
 800024e:	f855 3b04 	ldr.w	r3, [r5], #4
 8000252:	3401      	adds	r4, #1
 8000254:	4798      	blx	r3
 8000256:	42a6      	cmp	r6, r4
 8000258:	d1f9      	bne.n	800024e <__libc_init_array+0x2a>
 800025a:	bd70      	pop	{r4, r5, r6, pc}
 800025c:	0800dfcc 	.word	0x0800dfcc
 8000260:	0800dfcc 	.word	0x0800dfcc
 8000264:	0800dfd0 	.word	0x0800dfd0
 8000268:	0800dfcc 	.word	0x0800dfcc

0800026c <memcpy>:
 800026c:	4684      	mov	ip, r0
 800026e:	ea41 0300 	orr.w	r3, r1, r0
 8000272:	f013 0303 	ands.w	r3, r3, #3
 8000276:	d16d      	bne.n	8000354 <memcpy+0xe8>
 8000278:	3a40      	subs	r2, #64	; 0x40
 800027a:	d341      	bcc.n	8000300 <memcpy+0x94>
 800027c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000280:	f840 3b04 	str.w	r3, [r0], #4
 8000284:	f851 3b04 	ldr.w	r3, [r1], #4
 8000288:	f840 3b04 	str.w	r3, [r0], #4
 800028c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000290:	f840 3b04 	str.w	r3, [r0], #4
 8000294:	f851 3b04 	ldr.w	r3, [r1], #4
 8000298:	f840 3b04 	str.w	r3, [r0], #4
 800029c:	f851 3b04 	ldr.w	r3, [r1], #4
 80002a0:	f840 3b04 	str.w	r3, [r0], #4
 80002a4:	f851 3b04 	ldr.w	r3, [r1], #4
 80002a8:	f840 3b04 	str.w	r3, [r0], #4
 80002ac:	f851 3b04 	ldr.w	r3, [r1], #4
 80002b0:	f840 3b04 	str.w	r3, [r0], #4
 80002b4:	f851 3b04 	ldr.w	r3, [r1], #4
 80002b8:	f840 3b04 	str.w	r3, [r0], #4
 80002bc:	f851 3b04 	ldr.w	r3, [r1], #4
 80002c0:	f840 3b04 	str.w	r3, [r0], #4
 80002c4:	f851 3b04 	ldr.w	r3, [r1], #4
 80002c8:	f840 3b04 	str.w	r3, [r0], #4
 80002cc:	f851 3b04 	ldr.w	r3, [r1], #4
 80002d0:	f840 3b04 	str.w	r3, [r0], #4
 80002d4:	f851 3b04 	ldr.w	r3, [r1], #4
 80002d8:	f840 3b04 	str.w	r3, [r0], #4
 80002dc:	f851 3b04 	ldr.w	r3, [r1], #4
 80002e0:	f840 3b04 	str.w	r3, [r0], #4
 80002e4:	f851 3b04 	ldr.w	r3, [r1], #4
 80002e8:	f840 3b04 	str.w	r3, [r0], #4
 80002ec:	f851 3b04 	ldr.w	r3, [r1], #4
 80002f0:	f840 3b04 	str.w	r3, [r0], #4
 80002f4:	f851 3b04 	ldr.w	r3, [r1], #4
 80002f8:	f840 3b04 	str.w	r3, [r0], #4
 80002fc:	3a40      	subs	r2, #64	; 0x40
 80002fe:	d2bd      	bcs.n	800027c <memcpy+0x10>
 8000300:	3230      	adds	r2, #48	; 0x30
 8000302:	d311      	bcc.n	8000328 <memcpy+0xbc>
 8000304:	f851 3b04 	ldr.w	r3, [r1], #4
 8000308:	f840 3b04 	str.w	r3, [r0], #4
 800030c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000310:	f840 3b04 	str.w	r3, [r0], #4
 8000314:	f851 3b04 	ldr.w	r3, [r1], #4
 8000318:	f840 3b04 	str.w	r3, [r0], #4
 800031c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000320:	f840 3b04 	str.w	r3, [r0], #4
 8000324:	3a10      	subs	r2, #16
 8000326:	d2ed      	bcs.n	8000304 <memcpy+0x98>
 8000328:	320c      	adds	r2, #12
 800032a:	d305      	bcc.n	8000338 <memcpy+0xcc>
 800032c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000330:	f840 3b04 	str.w	r3, [r0], #4
 8000334:	3a04      	subs	r2, #4
 8000336:	d2f9      	bcs.n	800032c <memcpy+0xc0>
 8000338:	3204      	adds	r2, #4
 800033a:	d008      	beq.n	800034e <memcpy+0xe2>
 800033c:	07d2      	lsls	r2, r2, #31
 800033e:	bf1c      	itt	ne
 8000340:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000344:	f800 3b01 	strbne.w	r3, [r0], #1
 8000348:	d301      	bcc.n	800034e <memcpy+0xe2>
 800034a:	880b      	ldrh	r3, [r1, #0]
 800034c:	8003      	strh	r3, [r0, #0]
 800034e:	4660      	mov	r0, ip
 8000350:	4770      	bx	lr
 8000352:	bf00      	nop
 8000354:	2a08      	cmp	r2, #8
 8000356:	d313      	bcc.n	8000380 <memcpy+0x114>
 8000358:	078b      	lsls	r3, r1, #30
 800035a:	d08d      	beq.n	8000278 <memcpy+0xc>
 800035c:	f010 0303 	ands.w	r3, r0, #3
 8000360:	d08a      	beq.n	8000278 <memcpy+0xc>
 8000362:	f1c3 0304 	rsb	r3, r3, #4
 8000366:	1ad2      	subs	r2, r2, r3
 8000368:	07db      	lsls	r3, r3, #31
 800036a:	bf1c      	itt	ne
 800036c:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000370:	f800 3b01 	strbne.w	r3, [r0], #1
 8000374:	d380      	bcc.n	8000278 <memcpy+0xc>
 8000376:	f831 3b02 	ldrh.w	r3, [r1], #2
 800037a:	f820 3b02 	strh.w	r3, [r0], #2
 800037e:	e77b      	b.n	8000278 <memcpy+0xc>
 8000380:	3a04      	subs	r2, #4
 8000382:	d3d9      	bcc.n	8000338 <memcpy+0xcc>
 8000384:	3a01      	subs	r2, #1
 8000386:	f811 3b01 	ldrb.w	r3, [r1], #1
 800038a:	f800 3b01 	strb.w	r3, [r0], #1
 800038e:	d2f9      	bcs.n	8000384 <memcpy+0x118>
 8000390:	780b      	ldrb	r3, [r1, #0]
 8000392:	7003      	strb	r3, [r0, #0]
 8000394:	784b      	ldrb	r3, [r1, #1]
 8000396:	7043      	strb	r3, [r0, #1]
 8000398:	788b      	ldrb	r3, [r1, #2]
 800039a:	7083      	strb	r3, [r0, #2]
 800039c:	4660      	mov	r0, ip
 800039e:	4770      	bx	lr

080003a0 <memset>:
 80003a0:	0783      	lsls	r3, r0, #30
 80003a2:	b530      	push	{r4, r5, lr}
 80003a4:	d048      	beq.n	8000438 <memset+0x98>
 80003a6:	1e54      	subs	r4, r2, #1
 80003a8:	2a00      	cmp	r2, #0
 80003aa:	d03f      	beq.n	800042c <memset+0x8c>
 80003ac:	b2ca      	uxtb	r2, r1
 80003ae:	4603      	mov	r3, r0
 80003b0:	e001      	b.n	80003b6 <memset+0x16>
 80003b2:	3c01      	subs	r4, #1
 80003b4:	d33a      	bcc.n	800042c <memset+0x8c>
 80003b6:	f803 2b01 	strb.w	r2, [r3], #1
 80003ba:	079d      	lsls	r5, r3, #30
 80003bc:	d1f9      	bne.n	80003b2 <memset+0x12>
 80003be:	2c03      	cmp	r4, #3
 80003c0:	d92d      	bls.n	800041e <memset+0x7e>
 80003c2:	b2cd      	uxtb	r5, r1
 80003c4:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80003c8:	2c0f      	cmp	r4, #15
 80003ca:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80003ce:	d936      	bls.n	800043e <memset+0x9e>
 80003d0:	f1a4 0210 	sub.w	r2, r4, #16
 80003d4:	f022 0c0f 	bic.w	ip, r2, #15
 80003d8:	f103 0e20 	add.w	lr, r3, #32
 80003dc:	44e6      	add	lr, ip
 80003de:	ea4f 1c12 	mov.w	ip, r2, lsr #4
 80003e2:	f103 0210 	add.w	r2, r3, #16
 80003e6:	e942 5504 	strd	r5, r5, [r2, #-16]
 80003ea:	e942 5502 	strd	r5, r5, [r2, #-8]
 80003ee:	3210      	adds	r2, #16
 80003f0:	4572      	cmp	r2, lr
 80003f2:	d1f8      	bne.n	80003e6 <memset+0x46>
 80003f4:	f10c 0201 	add.w	r2, ip, #1
 80003f8:	f014 0f0c 	tst.w	r4, #12
 80003fc:	eb03 1202 	add.w	r2, r3, r2, lsl #4
 8000400:	f004 0c0f 	and.w	ip, r4, #15
 8000404:	d013      	beq.n	800042e <memset+0x8e>
 8000406:	f1ac 0304 	sub.w	r3, ip, #4
 800040a:	f023 0303 	bic.w	r3, r3, #3
 800040e:	3304      	adds	r3, #4
 8000410:	4413      	add	r3, r2
 8000412:	f842 5b04 	str.w	r5, [r2], #4
 8000416:	4293      	cmp	r3, r2
 8000418:	d1fb      	bne.n	8000412 <memset+0x72>
 800041a:	f00c 0403 	and.w	r4, ip, #3
 800041e:	b12c      	cbz	r4, 800042c <memset+0x8c>
 8000420:	b2ca      	uxtb	r2, r1
 8000422:	441c      	add	r4, r3
 8000424:	f803 2b01 	strb.w	r2, [r3], #1
 8000428:	429c      	cmp	r4, r3
 800042a:	d1fb      	bne.n	8000424 <memset+0x84>
 800042c:	bd30      	pop	{r4, r5, pc}
 800042e:	4664      	mov	r4, ip
 8000430:	4613      	mov	r3, r2
 8000432:	2c00      	cmp	r4, #0
 8000434:	d1f4      	bne.n	8000420 <memset+0x80>
 8000436:	e7f9      	b.n	800042c <memset+0x8c>
 8000438:	4603      	mov	r3, r0
 800043a:	4614      	mov	r4, r2
 800043c:	e7bf      	b.n	80003be <memset+0x1e>
 800043e:	461a      	mov	r2, r3
 8000440:	46a4      	mov	ip, r4
 8000442:	e7e0      	b.n	8000406 <memset+0x66>

08000444 <_siprintf_r>:
 8000444:	b40c      	push	{r2, r3}
 8000446:	b510      	push	{r4, lr}
 8000448:	b09c      	sub	sp, #112	; 0x70
 800044a:	ab1e      	add	r3, sp, #120	; 0x78
 800044c:	f06f 4400 	mvn.w	r4, #2147483648	; 0x80000000
 8000450:	e9cd 1406 	strd	r1, r4, [sp, #24]
 8000454:	9102      	str	r1, [sp, #8]
 8000456:	4908      	ldr	r1, [pc, #32]	; (8000478 <_siprintf_r+0x34>)
 8000458:	f853 2b04 	ldr.w	r2, [r3], #4
 800045c:	9105      	str	r1, [sp, #20]
 800045e:	a902      	add	r1, sp, #8
 8000460:	9301      	str	r3, [sp, #4]
 8000462:	9404      	str	r4, [sp, #16]
 8000464:	f000 f908 	bl	8000678 <_svfiprintf_r>
 8000468:	9b02      	ldr	r3, [sp, #8]
 800046a:	2200      	movs	r2, #0
 800046c:	701a      	strb	r2, [r3, #0]
 800046e:	b01c      	add	sp, #112	; 0x70
 8000470:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000474:	b002      	add	sp, #8
 8000476:	4770      	bx	lr
 8000478:	ffff0208 	.word	0xffff0208

0800047c <siprintf>:
 800047c:	b40e      	push	{r1, r2, r3}
 800047e:	b510      	push	{r4, lr}
 8000480:	b09d      	sub	sp, #116	; 0x74
 8000482:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
 8000486:	ab1f      	add	r3, sp, #124	; 0x7c
 8000488:	e9cd 0106 	strd	r0, r1, [sp, #24]
 800048c:	9104      	str	r1, [sp, #16]
 800048e:	4909      	ldr	r1, [pc, #36]	; (80004b4 <siprintf+0x38>)
 8000490:	f853 2b04 	ldr.w	r2, [r3], #4
 8000494:	9002      	str	r0, [sp, #8]
 8000496:	4c08      	ldr	r4, [pc, #32]	; (80004b8 <siprintf+0x3c>)
 8000498:	6808      	ldr	r0, [r1, #0]
 800049a:	9301      	str	r3, [sp, #4]
 800049c:	a902      	add	r1, sp, #8
 800049e:	9405      	str	r4, [sp, #20]
 80004a0:	f000 f8ea 	bl	8000678 <_svfiprintf_r>
 80004a4:	9b02      	ldr	r3, [sp, #8]
 80004a6:	2200      	movs	r2, #0
 80004a8:	701a      	strb	r2, [r3, #0]
 80004aa:	b01d      	add	sp, #116	; 0x74
 80004ac:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80004b0:	b003      	add	sp, #12
 80004b2:	4770      	bx	lr
 80004b4:	20000000 	.word	0x20000000
 80004b8:	ffff0208 	.word	0xffff0208

080004bc <__ssputs_r>:
 80004bc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80004c0:	688f      	ldr	r7, [r1, #8]
 80004c2:	429f      	cmp	r7, r3
 80004c4:	460c      	mov	r4, r1
 80004c6:	461d      	mov	r5, r3
 80004c8:	4616      	mov	r6, r2
 80004ca:	d838      	bhi.n	800053e <__ssputs_r+0x82>
 80004cc:	4682      	mov	sl, r0
 80004ce:	8988      	ldrh	r0, [r1, #12]
 80004d0:	f410 6f90 	tst.w	r0, #1152	; 0x480
 80004d4:	d10e      	bne.n	80004f4 <__ssputs_r+0x38>
 80004d6:	6808      	ldr	r0, [r1, #0]
 80004d8:	463d      	mov	r5, r7
 80004da:	462a      	mov	r2, r5
 80004dc:	4631      	mov	r1, r6
 80004de:	f000 fc27 	bl	8000d30 <memmove>
 80004e2:	68a2      	ldr	r2, [r4, #8]
 80004e4:	6823      	ldr	r3, [r4, #0]
 80004e6:	1bd2      	subs	r2, r2, r7
 80004e8:	442b      	add	r3, r5
 80004ea:	60a2      	str	r2, [r4, #8]
 80004ec:	6023      	str	r3, [r4, #0]
 80004ee:	2000      	movs	r0, #0
 80004f0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80004f4:	694b      	ldr	r3, [r1, #20]
 80004f6:	6909      	ldr	r1, [r1, #16]
 80004f8:	eb03 0843 	add.w	r8, r3, r3, lsl #1
 80004fc:	6823      	ldr	r3, [r4, #0]
 80004fe:	eb08 78d8 	add.w	r8, r8, r8, lsr #31
 8000502:	eba3 0901 	sub.w	r9, r3, r1
 8000506:	1c6b      	adds	r3, r5, #1
 8000508:	ea4f 0868 	mov.w	r8, r8, asr #1
 800050c:	444b      	add	r3, r9
 800050e:	4543      	cmp	r3, r8
 8000510:	4642      	mov	r2, r8
 8000512:	bf84      	itt	hi
 8000514:	4698      	movhi	r8, r3
 8000516:	4642      	movhi	r2, r8
 8000518:	0543      	lsls	r3, r0, #21
 800051a:	d513      	bpl.n	8000544 <__ssputs_r+0x88>
 800051c:	4611      	mov	r1, r2
 800051e:	4650      	mov	r0, sl
 8000520:	f000 fce4 	bl	8000eec <_malloc_r>
 8000524:	4607      	mov	r7, r0
 8000526:	b308      	cbz	r0, 800056c <__ssputs_r+0xb0>
 8000528:	6921      	ldr	r1, [r4, #16]
 800052a:	464a      	mov	r2, r9
 800052c:	f7ff fe9e 	bl	800026c <memcpy>
 8000530:	89a3      	ldrh	r3, [r4, #12]
 8000532:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
 8000536:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800053a:	81a3      	strh	r3, [r4, #12]
 800053c:	e007      	b.n	800054e <__ssputs_r+0x92>
 800053e:	6808      	ldr	r0, [r1, #0]
 8000540:	461f      	mov	r7, r3
 8000542:	e7ca      	b.n	80004da <__ssputs_r+0x1e>
 8000544:	4650      	mov	r0, sl
 8000546:	f000 fd2b 	bl	8000fa0 <_realloc_r>
 800054a:	4607      	mov	r7, r0
 800054c:	b150      	cbz	r0, 8000564 <__ssputs_r+0xa8>
 800054e:	eb07 0009 	add.w	r0, r7, r9
 8000552:	eba8 0309 	sub.w	r3, r8, r9
 8000556:	6127      	str	r7, [r4, #16]
 8000558:	f8c4 8014 	str.w	r8, [r4, #20]
 800055c:	60a3      	str	r3, [r4, #8]
 800055e:	6020      	str	r0, [r4, #0]
 8000560:	462f      	mov	r7, r5
 8000562:	e7ba      	b.n	80004da <__ssputs_r+0x1e>
 8000564:	6921      	ldr	r1, [r4, #16]
 8000566:	4650      	mov	r0, sl
 8000568:	f000 fc5e 	bl	8000e28 <_free_r>
 800056c:	230c      	movs	r3, #12
 800056e:	f8ca 3000 	str.w	r3, [sl]
 8000572:	89a3      	ldrh	r3, [r4, #12]
 8000574:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8000578:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800057c:	81a3      	strh	r3, [r4, #12]
 800057e:	e7b7      	b.n	80004f0 <__ssputs_r+0x34>

08000580 <__ssprint_r>:
 8000580:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000584:	6893      	ldr	r3, [r2, #8]
 8000586:	b083      	sub	sp, #12
 8000588:	4691      	mov	r9, r2
 800058a:	2b00      	cmp	r3, #0
 800058c:	d06e      	beq.n	800066c <__ssprint_r+0xec>
 800058e:	6817      	ldr	r7, [r2, #0]
 8000590:	688d      	ldr	r5, [r1, #8]
 8000592:	4680      	mov	r8, r0
 8000594:	460c      	mov	r4, r1
 8000596:	6808      	ldr	r0, [r1, #0]
 8000598:	3708      	adds	r7, #8
 800059a:	e044      	b.n	8000626 <__ssprint_r+0xa6>
 800059c:	89a3      	ldrh	r3, [r4, #12]
 800059e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80005a2:	d02e      	beq.n	8000602 <__ssprint_r+0x82>
 80005a4:	e9d4 1504 	ldrd	r1, r5, [r4, #16]
 80005a8:	eba0 0a01 	sub.w	sl, r0, r1
 80005ac:	eb05 0545 	add.w	r5, r5, r5, lsl #1
 80005b0:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
 80005b4:	eb0a 0006 	add.w	r0, sl, r6
 80005b8:	106d      	asrs	r5, r5, #1
 80005ba:	3001      	adds	r0, #1
 80005bc:	42a8      	cmp	r0, r5
 80005be:	462a      	mov	r2, r5
 80005c0:	bf84      	itt	hi
 80005c2:	4605      	movhi	r5, r0
 80005c4:	462a      	movhi	r2, r5
 80005c6:	055b      	lsls	r3, r3, #21
 80005c8:	d537      	bpl.n	800063a <__ssprint_r+0xba>
 80005ca:	4611      	mov	r1, r2
 80005cc:	4640      	mov	r0, r8
 80005ce:	f000 fc8d 	bl	8000eec <_malloc_r>
 80005d2:	2800      	cmp	r0, #0
 80005d4:	d03b      	beq.n	800064e <__ssprint_r+0xce>
 80005d6:	4652      	mov	r2, sl
 80005d8:	6921      	ldr	r1, [r4, #16]
 80005da:	9001      	str	r0, [sp, #4]
 80005dc:	f7ff fe46 	bl	800026c <memcpy>
 80005e0:	89a2      	ldrh	r2, [r4, #12]
 80005e2:	9b01      	ldr	r3, [sp, #4]
 80005e4:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80005e8:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80005ec:	81a2      	strh	r2, [r4, #12]
 80005ee:	eba5 020a 	sub.w	r2, r5, sl
 80005f2:	eb03 000a 	add.w	r0, r3, sl
 80005f6:	6165      	str	r5, [r4, #20]
 80005f8:	60a2      	str	r2, [r4, #8]
 80005fa:	6123      	str	r3, [r4, #16]
 80005fc:	6020      	str	r0, [r4, #0]
 80005fe:	4635      	mov	r5, r6
 8000600:	46b2      	mov	sl, r6
 8000602:	4659      	mov	r1, fp
 8000604:	4652      	mov	r2, sl
 8000606:	f000 fb93 	bl	8000d30 <memmove>
 800060a:	68a0      	ldr	r0, [r4, #8]
 800060c:	f8d9 1008 	ldr.w	r1, [r9, #8]
 8000610:	6823      	ldr	r3, [r4, #0]
 8000612:	1b45      	subs	r5, r0, r5
 8000614:	1b8e      	subs	r6, r1, r6
 8000616:	eb03 000a 	add.w	r0, r3, sl
 800061a:	60a5      	str	r5, [r4, #8]
 800061c:	6020      	str	r0, [r4, #0]
 800061e:	f8c9 6008 	str.w	r6, [r9, #8]
 8000622:	b31e      	cbz	r6, 800066c <__ssprint_r+0xec>
 8000624:	3708      	adds	r7, #8
 8000626:	e957 b602 	ldrd	fp, r6, [r7, #-8]
 800062a:	2e00      	cmp	r6, #0
 800062c:	d0fa      	beq.n	8000624 <__ssprint_r+0xa4>
 800062e:	42b5      	cmp	r5, r6
 8000630:	46aa      	mov	sl, r5
 8000632:	d9b3      	bls.n	800059c <__ssprint_r+0x1c>
 8000634:	4635      	mov	r5, r6
 8000636:	46b2      	mov	sl, r6
 8000638:	e7e3      	b.n	8000602 <__ssprint_r+0x82>
 800063a:	4640      	mov	r0, r8
 800063c:	f000 fcb0 	bl	8000fa0 <_realloc_r>
 8000640:	4603      	mov	r3, r0
 8000642:	2800      	cmp	r0, #0
 8000644:	d1d3      	bne.n	80005ee <__ssprint_r+0x6e>
 8000646:	6921      	ldr	r1, [r4, #16]
 8000648:	4640      	mov	r0, r8
 800064a:	f000 fbed 	bl	8000e28 <_free_r>
 800064e:	230c      	movs	r3, #12
 8000650:	f8c8 3000 	str.w	r3, [r8]
 8000654:	89a3      	ldrh	r3, [r4, #12]
 8000656:	2200      	movs	r2, #0
 8000658:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800065c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000660:	81a3      	strh	r3, [r4, #12]
 8000662:	e9c9 2201 	strd	r2, r2, [r9, #4]
 8000666:	b003      	add	sp, #12
 8000668:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800066c:	2000      	movs	r0, #0
 800066e:	f8c9 0004 	str.w	r0, [r9, #4]
 8000672:	b003      	add	sp, #12
 8000674:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08000678 <_svfiprintf_r>:
 8000678:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800067c:	4692      	mov	sl, r2
 800067e:	898a      	ldrh	r2, [r1, #12]
 8000680:	0615      	lsls	r5, r2, #24
 8000682:	b09d      	sub	sp, #116	; 0x74
 8000684:	4688      	mov	r8, r1
 8000686:	4681      	mov	r9, r0
 8000688:	461c      	mov	r4, r3
 800068a:	d503      	bpl.n	8000694 <_svfiprintf_r+0x1c>
 800068c:	690a      	ldr	r2, [r1, #16]
 800068e:	2a00      	cmp	r2, #0
 8000690:	f000 80ef 	beq.w	8000872 <_svfiprintf_r+0x1fa>
 8000694:	2200      	movs	r2, #0
 8000696:	9209      	str	r2, [sp, #36]	; 0x24
 8000698:	f89a 3000 	ldrb.w	r3, [sl]
 800069c:	4d7e      	ldr	r5, [pc, #504]	; (8000898 <_svfiprintf_r+0x220>)
 800069e:	9403      	str	r4, [sp, #12]
 80006a0:	2220      	movs	r2, #32
 80006a2:	f88d 2029 	strb.w	r2, [sp, #41]	; 0x29
 80006a6:	2230      	movs	r2, #48	; 0x30
 80006a8:	f88d 202a 	strb.w	r2, [sp, #42]	; 0x2a
 80006ac:	2601      	movs	r6, #1
 80006ae:	2b00      	cmp	r3, #0
 80006b0:	d072      	beq.n	8000798 <_svfiprintf_r+0x120>
 80006b2:	4654      	mov	r4, sl
 80006b4:	e003      	b.n	80006be <_svfiprintf_r+0x46>
 80006b6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80006ba:	2b00      	cmp	r3, #0
 80006bc:	d076      	beq.n	80007ac <_svfiprintf_r+0x134>
 80006be:	2b25      	cmp	r3, #37	; 0x25
 80006c0:	d1f9      	bne.n	80006b6 <_svfiprintf_r+0x3e>
 80006c2:	ebb4 0b0a 	subs.w	fp, r4, sl
 80006c6:	d174      	bne.n	80007b2 <_svfiprintf_r+0x13a>
 80006c8:	7822      	ldrb	r2, [r4, #0]
 80006ca:	2a00      	cmp	r2, #0
 80006cc:	d064      	beq.n	8000798 <_svfiprintf_r+0x120>
 80006ce:	2300      	movs	r3, #0
 80006d0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80006d4:	e9cd 2305 	strd	r2, r3, [sp, #20]
 80006d8:	9304      	str	r3, [sp, #16]
 80006da:	9307      	str	r3, [sp, #28]
 80006dc:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
 80006e0:	931a      	str	r3, [sp, #104]	; 0x68
 80006e2:	3401      	adds	r4, #1
 80006e4:	e004      	b.n	80006f0 <_svfiprintf_r+0x78>
 80006e6:	9a04      	ldr	r2, [sp, #16]
 80006e8:	fa06 f303 	lsl.w	r3, r6, r3
 80006ec:	4313      	orrs	r3, r2
 80006ee:	9304      	str	r3, [sp, #16]
 80006f0:	46a2      	mov	sl, r4
 80006f2:	2205      	movs	r2, #5
 80006f4:	f814 1b01 	ldrb.w	r1, [r4], #1
 80006f8:	4628      	mov	r0, r5
 80006fa:	f000 fac9 	bl	8000c90 <memchr>
 80006fe:	1b43      	subs	r3, r0, r5
 8000700:	2800      	cmp	r0, #0
 8000702:	d1f0      	bne.n	80006e6 <_svfiprintf_r+0x6e>
 8000704:	9b04      	ldr	r3, [sp, #16]
 8000706:	06d8      	lsls	r0, r3, #27
 8000708:	bf44      	itt	mi
 800070a:	2220      	movmi	r2, #32
 800070c:	f88d 2053 	strbmi.w	r2, [sp, #83]	; 0x53
 8000710:	0719      	lsls	r1, r3, #28
 8000712:	f89a 1000 	ldrb.w	r1, [sl]
 8000716:	bf44      	itt	mi
 8000718:	222b      	movmi	r2, #43	; 0x2b
 800071a:	f88d 2053 	strbmi.w	r2, [sp, #83]	; 0x53
 800071e:	292a      	cmp	r1, #42	; 0x2a
 8000720:	d154      	bne.n	80007cc <_svfiprintf_r+0x154>
 8000722:	9a03      	ldr	r2, [sp, #12]
 8000724:	6811      	ldr	r1, [r2, #0]
 8000726:	3204      	adds	r2, #4
 8000728:	2900      	cmp	r1, #0
 800072a:	9203      	str	r2, [sp, #12]
 800072c:	db7c      	blt.n	8000828 <_svfiprintf_r+0x1b0>
 800072e:	9107      	str	r1, [sp, #28]
 8000730:	f89a 1001 	ldrb.w	r1, [sl, #1]
 8000734:	f10a 0a01 	add.w	sl, sl, #1
 8000738:	292e      	cmp	r1, #46	; 0x2e
 800073a:	d059      	beq.n	80007f0 <_svfiprintf_r+0x178>
 800073c:	4c57      	ldr	r4, [pc, #348]	; (800089c <_svfiprintf_r+0x224>)
 800073e:	2203      	movs	r2, #3
 8000740:	4620      	mov	r0, r4
 8000742:	f000 faa5 	bl	8000c90 <memchr>
 8000746:	b140      	cbz	r0, 800075a <_svfiprintf_r+0xe2>
 8000748:	9b04      	ldr	r3, [sp, #16]
 800074a:	1b00      	subs	r0, r0, r4
 800074c:	2440      	movs	r4, #64	; 0x40
 800074e:	fa04 f000 	lsl.w	r0, r4, r0
 8000752:	4303      	orrs	r3, r0
 8000754:	9304      	str	r3, [sp, #16]
 8000756:	f10a 0a01 	add.w	sl, sl, #1
 800075a:	f81a 1b01 	ldrb.w	r1, [sl], #1
 800075e:	4850      	ldr	r0, [pc, #320]	; (80008a0 <_svfiprintf_r+0x228>)
 8000760:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
 8000764:	2206      	movs	r2, #6
 8000766:	f000 fa93 	bl	8000c90 <memchr>
 800076a:	2800      	cmp	r0, #0
 800076c:	d062      	beq.n	8000834 <_svfiprintf_r+0x1bc>
 800076e:	4b4d      	ldr	r3, [pc, #308]	; (80008a4 <_svfiprintf_r+0x22c>)
 8000770:	2b00      	cmp	r3, #0
 8000772:	d052      	beq.n	800081a <_svfiprintf_r+0x1a2>
 8000774:	aa03      	add	r2, sp, #12
 8000776:	9200      	str	r2, [sp, #0]
 8000778:	4b4b      	ldr	r3, [pc, #300]	; (80008a8 <_svfiprintf_r+0x230>)
 800077a:	4642      	mov	r2, r8
 800077c:	a904      	add	r1, sp, #16
 800077e:	4648      	mov	r0, r9
 8000780:	f3af 8000 	nop.w
 8000784:	4607      	mov	r7, r0
 8000786:	1c7a      	adds	r2, r7, #1
 8000788:	d006      	beq.n	8000798 <_svfiprintf_r+0x120>
 800078a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800078c:	443b      	add	r3, r7
 800078e:	9309      	str	r3, [sp, #36]	; 0x24
 8000790:	f89a 3000 	ldrb.w	r3, [sl]
 8000794:	2b00      	cmp	r3, #0
 8000796:	d18c      	bne.n	80006b2 <_svfiprintf_r+0x3a>
 8000798:	f8b8 300c 	ldrh.w	r3, [r8, #12]
 800079c:	065b      	lsls	r3, r3, #25
 800079e:	bf54      	ite	pl
 80007a0:	9809      	ldrpl	r0, [sp, #36]	; 0x24
 80007a2:	f04f 30ff 	movmi.w	r0, #4294967295	; 0xffffffff
 80007a6:	b01d      	add	sp, #116	; 0x74
 80007a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80007ac:	ebb4 0b0a 	subs.w	fp, r4, sl
 80007b0:	d0f2      	beq.n	8000798 <_svfiprintf_r+0x120>
 80007b2:	465b      	mov	r3, fp
 80007b4:	4652      	mov	r2, sl
 80007b6:	4641      	mov	r1, r8
 80007b8:	4648      	mov	r0, r9
 80007ba:	f7ff fe7f 	bl	80004bc <__ssputs_r>
 80007be:	3001      	adds	r0, #1
 80007c0:	d0ea      	beq.n	8000798 <_svfiprintf_r+0x120>
 80007c2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80007c4:	7822      	ldrb	r2, [r4, #0]
 80007c6:	445b      	add	r3, fp
 80007c8:	9309      	str	r3, [sp, #36]	; 0x24
 80007ca:	e77e      	b.n	80006ca <_svfiprintf_r+0x52>
 80007cc:	f1a1 0230 	sub.w	r2, r1, #48	; 0x30
 80007d0:	2a09      	cmp	r2, #9
 80007d2:	d8b1      	bhi.n	8000738 <_svfiprintf_r+0xc0>
 80007d4:	9b07      	ldr	r3, [sp, #28]
 80007d6:	f81a 1f01 	ldrb.w	r1, [sl, #1]!
 80007da:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 80007de:	eb02 0343 	add.w	r3, r2, r3, lsl #1
 80007e2:	f1a1 0230 	sub.w	r2, r1, #48	; 0x30
 80007e6:	2a09      	cmp	r2, #9
 80007e8:	d9f5      	bls.n	80007d6 <_svfiprintf_r+0x15e>
 80007ea:	292e      	cmp	r1, #46	; 0x2e
 80007ec:	9307      	str	r3, [sp, #28]
 80007ee:	d1a5      	bne.n	800073c <_svfiprintf_r+0xc4>
 80007f0:	f89a 1001 	ldrb.w	r1, [sl, #1]
 80007f4:	292a      	cmp	r1, #42	; 0x2a
 80007f6:	d127      	bne.n	8000848 <_svfiprintf_r+0x1d0>
 80007f8:	9b03      	ldr	r3, [sp, #12]
 80007fa:	f89a 1002 	ldrb.w	r1, [sl, #2]
 80007fe:	681a      	ldr	r2, [r3, #0]
 8000800:	9205      	str	r2, [sp, #20]
 8000802:	3304      	adds	r3, #4
 8000804:	2a00      	cmp	r2, #0
 8000806:	f10a 0002 	add.w	r0, sl, #2
 800080a:	9303      	str	r3, [sp, #12]
 800080c:	bfb8      	it	lt
 800080e:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
 8000812:	4682      	mov	sl, r0
 8000814:	bfb8      	it	lt
 8000816:	9305      	strlt	r3, [sp, #20]
 8000818:	e790      	b.n	800073c <_svfiprintf_r+0xc4>
 800081a:	9b03      	ldr	r3, [sp, #12]
 800081c:	3307      	adds	r3, #7
 800081e:	f023 0307 	bic.w	r3, r3, #7
 8000822:	3308      	adds	r3, #8
 8000824:	9303      	str	r3, [sp, #12]
 8000826:	e7b0      	b.n	800078a <_svfiprintf_r+0x112>
 8000828:	4249      	negs	r1, r1
 800082a:	f043 0302 	orr.w	r3, r3, #2
 800082e:	9107      	str	r1, [sp, #28]
 8000830:	9304      	str	r3, [sp, #16]
 8000832:	e77d      	b.n	8000730 <_svfiprintf_r+0xb8>
 8000834:	aa03      	add	r2, sp, #12
 8000836:	9200      	str	r2, [sp, #0]
 8000838:	4b1b      	ldr	r3, [pc, #108]	; (80008a8 <_svfiprintf_r+0x230>)
 800083a:	4642      	mov	r2, r8
 800083c:	a904      	add	r1, sp, #16
 800083e:	4648      	mov	r0, r9
 8000840:	f000 f8ca 	bl	80009d8 <_printf_i>
 8000844:	4607      	mov	r7, r0
 8000846:	e79e      	b.n	8000786 <_svfiprintf_r+0x10e>
 8000848:	f1a1 0230 	sub.w	r2, r1, #48	; 0x30
 800084c:	2300      	movs	r3, #0
 800084e:	2a09      	cmp	r2, #9
 8000850:	9305      	str	r3, [sp, #20]
 8000852:	f10a 0a01 	add.w	sl, sl, #1
 8000856:	f63f af71 	bhi.w	800073c <_svfiprintf_r+0xc4>
 800085a:	f81a 1f01 	ldrb.w	r1, [sl, #1]!
 800085e:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 8000862:	eb02 0343 	add.w	r3, r2, r3, lsl #1
 8000866:	f1a1 0230 	sub.w	r2, r1, #48	; 0x30
 800086a:	2a09      	cmp	r2, #9
 800086c:	d9f5      	bls.n	800085a <_svfiprintf_r+0x1e2>
 800086e:	9305      	str	r3, [sp, #20]
 8000870:	e764      	b.n	800073c <_svfiprintf_r+0xc4>
 8000872:	2140      	movs	r1, #64	; 0x40
 8000874:	f000 fb3a 	bl	8000eec <_malloc_r>
 8000878:	f8c8 0000 	str.w	r0, [r8]
 800087c:	f8c8 0010 	str.w	r0, [r8, #16]
 8000880:	b118      	cbz	r0, 800088a <_svfiprintf_r+0x212>
 8000882:	2240      	movs	r2, #64	; 0x40
 8000884:	f8c8 2014 	str.w	r2, [r8, #20]
 8000888:	e704      	b.n	8000694 <_svfiprintf_r+0x1c>
 800088a:	230c      	movs	r3, #12
 800088c:	f8c9 3000 	str.w	r3, [r9]
 8000890:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000894:	e787      	b.n	80007a6 <_svfiprintf_r+0x12e>
 8000896:	bf00      	nop
 8000898:	0800df88 	.word	0x0800df88
 800089c:	0800df90 	.word	0x0800df90
 80008a0:	0800df94 	.word	0x0800df94
 80008a4:	00000000 	.word	0x00000000
 80008a8:	080004bd 	.word	0x080004bd

080008ac <_printf_common>:
 80008ac:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80008b0:	4692      	mov	sl, r2
 80008b2:	461f      	mov	r7, r3
 80008b4:	690a      	ldr	r2, [r1, #16]
 80008b6:	688b      	ldr	r3, [r1, #8]
 80008b8:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
 80008bc:	429a      	cmp	r2, r3
 80008be:	bfb8      	it	lt
 80008c0:	461a      	movlt	r2, r3
 80008c2:	f8ca 2000 	str.w	r2, [sl]
 80008c6:	f891 3043 	ldrb.w	r3, [r1, #67]	; 0x43
 80008ca:	460c      	mov	r4, r1
 80008cc:	4606      	mov	r6, r0
 80008ce:	b113      	cbz	r3, 80008d6 <_printf_common+0x2a>
 80008d0:	3201      	adds	r2, #1
 80008d2:	f8ca 2000 	str.w	r2, [sl]
 80008d6:	6822      	ldr	r2, [r4, #0]
 80008d8:	0691      	lsls	r1, r2, #26
 80008da:	d55d      	bpl.n	8000998 <_printf_common+0xec>
 80008dc:	f8da 3000 	ldr.w	r3, [sl]
 80008e0:	3302      	adds	r3, #2
 80008e2:	f8ca 3000 	str.w	r3, [sl]
 80008e6:	6822      	ldr	r2, [r4, #0]
 80008e8:	f012 0f06 	tst.w	r2, #6
 80008ec:	4611      	mov	r1, r2
 80008ee:	d11e      	bne.n	800092e <_printf_common+0x82>
 80008f0:	68e1      	ldr	r1, [r4, #12]
 80008f2:	1acb      	subs	r3, r1, r3
 80008f4:	2b00      	cmp	r3, #0
 80008f6:	bfd8      	it	le
 80008f8:	4611      	movle	r1, r2
 80008fa:	dd18      	ble.n	800092e <_printf_common+0x82>
 80008fc:	f104 0b19 	add.w	fp, r4, #25
 8000900:	f04f 0800 	mov.w	r8, #0
 8000904:	e005      	b.n	8000912 <_printf_common+0x66>
 8000906:	68e5      	ldr	r5, [r4, #12]
 8000908:	f8da 3000 	ldr.w	r3, [sl]
 800090c:	1aed      	subs	r5, r5, r3
 800090e:	4545      	cmp	r5, r8
 8000910:	dd0c      	ble.n	800092c <_printf_common+0x80>
 8000912:	2301      	movs	r3, #1
 8000914:	465a      	mov	r2, fp
 8000916:	4639      	mov	r1, r7
 8000918:	4630      	mov	r0, r6
 800091a:	47c8      	blx	r9
 800091c:	3001      	adds	r0, #1
 800091e:	f108 0801 	add.w	r8, r8, #1
 8000922:	d1f0      	bne.n	8000906 <_printf_common+0x5a>
 8000924:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000928:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800092c:	6821      	ldr	r1, [r4, #0]
 800092e:	f894 3043 	ldrb.w	r3, [r4, #67]	; 0x43
 8000932:	3b00      	subs	r3, #0
 8000934:	bf18      	it	ne
 8000936:	2301      	movne	r3, #1
 8000938:	068a      	lsls	r2, r1, #26
 800093a:	d50a      	bpl.n	8000952 <_printf_common+0xa6>
 800093c:	18e1      	adds	r1, r4, r3
 800093e:	1c5a      	adds	r2, r3, #1
 8000940:	2030      	movs	r0, #48	; 0x30
 8000942:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
 8000946:	4422      	add	r2, r4
 8000948:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
 800094c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
 8000950:	3302      	adds	r3, #2
 8000952:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8000956:	4639      	mov	r1, r7
 8000958:	4630      	mov	r0, r6
 800095a:	47c8      	blx	r9
 800095c:	3001      	adds	r0, #1
 800095e:	d0e1      	beq.n	8000924 <_printf_common+0x78>
 8000960:	6823      	ldr	r3, [r4, #0]
 8000962:	f003 0306 	and.w	r3, r3, #6
 8000966:	2b04      	cmp	r3, #4
 8000968:	d01d      	beq.n	80009a6 <_printf_common+0xfa>
 800096a:	68a3      	ldr	r3, [r4, #8]
 800096c:	6922      	ldr	r2, [r4, #16]
 800096e:	4293      	cmp	r3, r2
 8000970:	dd25      	ble.n	80009be <_printf_common+0x112>
 8000972:	f04f 0800 	mov.w	r8, #0
 8000976:	1a9b      	subs	r3, r3, r2
 8000978:	4498      	add	r8, r3
 800097a:	341a      	adds	r4, #26
 800097c:	2500      	movs	r5, #0
 800097e:	e001      	b.n	8000984 <_printf_common+0xd8>
 8000980:	4545      	cmp	r5, r8
 8000982:	da1c      	bge.n	80009be <_printf_common+0x112>
 8000984:	2301      	movs	r3, #1
 8000986:	4622      	mov	r2, r4
 8000988:	4639      	mov	r1, r7
 800098a:	4630      	mov	r0, r6
 800098c:	47c8      	blx	r9
 800098e:	3001      	adds	r0, #1
 8000990:	f105 0501 	add.w	r5, r5, #1
 8000994:	d1f4      	bne.n	8000980 <_printf_common+0xd4>
 8000996:	e7c5      	b.n	8000924 <_printf_common+0x78>
 8000998:	f012 0f06 	tst.w	r2, #6
 800099c:	d012      	beq.n	80009c4 <_printf_common+0x118>
 800099e:	3b00      	subs	r3, #0
 80009a0:	bf18      	it	ne
 80009a2:	2301      	movne	r3, #1
 80009a4:	e7d5      	b.n	8000952 <_printf_common+0xa6>
 80009a6:	f8da 3000 	ldr.w	r3, [sl]
 80009aa:	68e1      	ldr	r1, [r4, #12]
 80009ac:	6922      	ldr	r2, [r4, #16]
 80009ae:	1ac9      	subs	r1, r1, r3
 80009b0:	68a3      	ldr	r3, [r4, #8]
 80009b2:	4293      	cmp	r3, r2
 80009b4:	ea21 78e1 	bic.w	r8, r1, r1, asr #31
 80009b8:	dcdd      	bgt.n	8000976 <_printf_common+0xca>
 80009ba:	2900      	cmp	r1, #0
 80009bc:	dcdd      	bgt.n	800097a <_printf_common+0xce>
 80009be:	2000      	movs	r0, #0
 80009c0:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80009c4:	68e1      	ldr	r1, [r4, #12]
 80009c6:	f8da 3000 	ldr.w	r3, [sl]
 80009ca:	1acb      	subs	r3, r1, r3
 80009cc:	2b00      	cmp	r3, #0
 80009ce:	bfd8      	it	le
 80009d0:	4611      	movle	r1, r2
 80009d2:	dc93      	bgt.n	80008fc <_printf_common+0x50>
 80009d4:	e7ab      	b.n	800092e <_printf_common+0x82>
 80009d6:	bf00      	nop

080009d8 <_printf_i>:
 80009d8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80009dc:	460c      	mov	r4, r1
 80009de:	b084      	sub	sp, #16
 80009e0:	4690      	mov	r8, r2
 80009e2:	7e22      	ldrb	r2, [r4, #24]
 80009e4:	990c      	ldr	r1, [sp, #48]	; 0x30
 80009e6:	4607      	mov	r7, r0
 80009e8:	4699      	mov	r9, r3
 80009ea:	f104 0043 	add.w	r0, r4, #67	; 0x43
 80009ee:	2a00      	cmp	r2, #0
 80009f0:	d033      	beq.n	8000a5a <_printf_i+0x82>
 80009f2:	f1a2 0358 	sub.w	r3, r2, #88	; 0x58
 80009f6:	b2dd      	uxtb	r5, r3
 80009f8:	2d20      	cmp	r5, #32
 80009fa:	d867      	bhi.n	8000acc <_printf_i+0xf4>
 80009fc:	2b20      	cmp	r3, #32
 80009fe:	d865      	bhi.n	8000acc <_printf_i+0xf4>
 8000a00:	e8df f013 	tbh	[pc, r3, lsl #1]
 8000a04:	006400de 	.word	0x006400de
 8000a08:	00640064 	.word	0x00640064
 8000a0c:	00640064 	.word	0x00640064
 8000a10:	00640064 	.word	0x00640064
 8000a14:	00640064 	.word	0x00640064
 8000a18:	00a30064 	.word	0x00a30064
 8000a1c:	0064006e 	.word	0x0064006e
 8000a20:	00640064 	.word	0x00640064
 8000a24:	006e0064 	.word	0x006e0064
 8000a28:	00640064 	.word	0x00640064
 8000a2c:	00640064 	.word	0x00640064
 8000a30:	007f0021 	.word	0x007f0021
 8000a34:	006400c0 	.word	0x006400c0
 8000a38:	00ae0064 	.word	0x00ae0064
 8000a3c:	007f0064 	.word	0x007f0064
 8000a40:	00640064 	.word	0x00640064
 8000a44:	00e5      	.short	0x00e5
 8000a46:	6823      	ldr	r3, [r4, #0]
 8000a48:	061a      	lsls	r2, r3, #24
 8000a4a:	f140 8104 	bpl.w	8000c56 <_printf_i+0x27e>
 8000a4e:	680b      	ldr	r3, [r1, #0]
 8000a50:	6962      	ldr	r2, [r4, #20]
 8000a52:	1d1d      	adds	r5, r3, #4
 8000a54:	600d      	str	r5, [r1, #0]
 8000a56:	681b      	ldr	r3, [r3, #0]
 8000a58:	601a      	str	r2, [r3, #0]
 8000a5a:	2300      	movs	r3, #0
 8000a5c:	4682      	mov	sl, r0
 8000a5e:	6123      	str	r3, [r4, #16]
 8000a60:	f8cd 9000 	str.w	r9, [sp]
 8000a64:	4643      	mov	r3, r8
 8000a66:	aa03      	add	r2, sp, #12
 8000a68:	4621      	mov	r1, r4
 8000a6a:	4638      	mov	r0, r7
 8000a6c:	f7ff ff1e 	bl	80008ac <_printf_common>
 8000a70:	3001      	adds	r0, #1
 8000a72:	d020      	beq.n	8000ab6 <_printf_i+0xde>
 8000a74:	6923      	ldr	r3, [r4, #16]
 8000a76:	4652      	mov	r2, sl
 8000a78:	4641      	mov	r1, r8
 8000a7a:	4638      	mov	r0, r7
 8000a7c:	47c8      	blx	r9
 8000a7e:	3001      	adds	r0, #1
 8000a80:	d019      	beq.n	8000ab6 <_printf_i+0xde>
 8000a82:	6823      	ldr	r3, [r4, #0]
 8000a84:	68e0      	ldr	r0, [r4, #12]
 8000a86:	9e03      	ldr	r6, [sp, #12]
 8000a88:	079b      	lsls	r3, r3, #30
 8000a8a:	d519      	bpl.n	8000ac0 <_printf_i+0xe8>
 8000a8c:	1b83      	subs	r3, r0, r6
 8000a8e:	2b00      	cmp	r3, #0
 8000a90:	dd16      	ble.n	8000ac0 <_printf_i+0xe8>
 8000a92:	f104 0a19 	add.w	sl, r4, #25
 8000a96:	2500      	movs	r5, #0
 8000a98:	e004      	b.n	8000aa4 <_printf_i+0xcc>
 8000a9a:	68e0      	ldr	r0, [r4, #12]
 8000a9c:	9e03      	ldr	r6, [sp, #12]
 8000a9e:	1b83      	subs	r3, r0, r6
 8000aa0:	42ab      	cmp	r3, r5
 8000aa2:	dd0d      	ble.n	8000ac0 <_printf_i+0xe8>
 8000aa4:	2301      	movs	r3, #1
 8000aa6:	4652      	mov	r2, sl
 8000aa8:	4641      	mov	r1, r8
 8000aaa:	4638      	mov	r0, r7
 8000aac:	47c8      	blx	r9
 8000aae:	3001      	adds	r0, #1
 8000ab0:	f105 0501 	add.w	r5, r5, #1
 8000ab4:	d1f1      	bne.n	8000a9a <_printf_i+0xc2>
 8000ab6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000aba:	b004      	add	sp, #16
 8000abc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000ac0:	42b0      	cmp	r0, r6
 8000ac2:	bfb8      	it	lt
 8000ac4:	4630      	movlt	r0, r6
 8000ac6:	b004      	add	sp, #16
 8000ac8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000acc:	2301      	movs	r3, #1
 8000ace:	f884 2042 	strb.w	r2, [r4, #66]	; 0x42
 8000ad2:	6123      	str	r3, [r4, #16]
 8000ad4:	f104 0a42 	add.w	sl, r4, #66	; 0x42
 8000ad8:	2300      	movs	r3, #0
 8000ada:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 8000ade:	e7bf      	b.n	8000a60 <_printf_i+0x88>
 8000ae0:	6823      	ldr	r3, [r4, #0]
 8000ae2:	061a      	lsls	r2, r3, #24
 8000ae4:	d402      	bmi.n	8000aec <_printf_i+0x114>
 8000ae6:	065e      	lsls	r6, r3, #25
 8000ae8:	f100 80c1 	bmi.w	8000c6e <_printf_i+0x296>
 8000aec:	680d      	ldr	r5, [r1, #0]
 8000aee:	682a      	ldr	r2, [r5, #0]
 8000af0:	3504      	adds	r5, #4
 8000af2:	600d      	str	r5, [r1, #0]
 8000af4:	4615      	mov	r5, r2
 8000af6:	2a00      	cmp	r2, #0
 8000af8:	db6b      	blt.n	8000bd2 <_printf_i+0x1fa>
 8000afa:	f8df c184 	ldr.w	ip, [pc, #388]	; 8000c80 <_printf_i+0x2a8>
 8000afe:	260a      	movs	r6, #10
 8000b00:	e010      	b.n	8000b24 <_printf_i+0x14c>
 8000b02:	6823      	ldr	r3, [r4, #0]
 8000b04:	061d      	lsls	r5, r3, #24
 8000b06:	f140 809c 	bpl.w	8000c42 <_printf_i+0x26a>
 8000b0a:	680b      	ldr	r3, [r1, #0]
 8000b0c:	1d1d      	adds	r5, r3, #4
 8000b0e:	600d      	str	r5, [r1, #0]
 8000b10:	681d      	ldr	r5, [r3, #0]
 8000b12:	f8df c16c 	ldr.w	ip, [pc, #364]	; 8000c80 <_printf_i+0x2a8>
 8000b16:	2a6f      	cmp	r2, #111	; 0x6f
 8000b18:	bf0c      	ite	eq
 8000b1a:	2608      	moveq	r6, #8
 8000b1c:	260a      	movne	r6, #10
 8000b1e:	2300      	movs	r3, #0
 8000b20:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 8000b24:	6862      	ldr	r2, [r4, #4]
 8000b26:	60a2      	str	r2, [r4, #8]
 8000b28:	2a00      	cmp	r2, #0
 8000b2a:	db7f      	blt.n	8000c2c <_printf_i+0x254>
 8000b2c:	6823      	ldr	r3, [r4, #0]
 8000b2e:	f023 0304 	bic.w	r3, r3, #4
 8000b32:	6023      	str	r3, [r4, #0]
 8000b34:	2d00      	cmp	r5, #0
 8000b36:	d15b      	bne.n	8000bf0 <_printf_i+0x218>
 8000b38:	2a00      	cmp	r2, #0
 8000b3a:	d179      	bne.n	8000c30 <_printf_i+0x258>
 8000b3c:	4682      	mov	sl, r0
 8000b3e:	2e08      	cmp	r6, #8
 8000b40:	d065      	beq.n	8000c0e <_printf_i+0x236>
 8000b42:	eba0 000a 	sub.w	r0, r0, sl
 8000b46:	6120      	str	r0, [r4, #16]
 8000b48:	e78a      	b.n	8000a60 <_printf_i+0x88>
 8000b4a:	680b      	ldr	r3, [r1, #0]
 8000b4c:	2201      	movs	r2, #1
 8000b4e:	6818      	ldr	r0, [r3, #0]
 8000b50:	3304      	adds	r3, #4
 8000b52:	600b      	str	r3, [r1, #0]
 8000b54:	f104 0a42 	add.w	sl, r4, #66	; 0x42
 8000b58:	f884 0042 	strb.w	r0, [r4, #66]	; 0x42
 8000b5c:	6122      	str	r2, [r4, #16]
 8000b5e:	e7bb      	b.n	8000ad8 <_printf_i+0x100>
 8000b60:	680b      	ldr	r3, [r1, #0]
 8000b62:	6862      	ldr	r2, [r4, #4]
 8000b64:	1d18      	adds	r0, r3, #4
 8000b66:	6008      	str	r0, [r1, #0]
 8000b68:	f8d3 a000 	ldr.w	sl, [r3]
 8000b6c:	2100      	movs	r1, #0
 8000b6e:	4650      	mov	r0, sl
 8000b70:	f000 f88e 	bl	8000c90 <memchr>
 8000b74:	2800      	cmp	r0, #0
 8000b76:	f000 8081 	beq.w	8000c7c <_printf_i+0x2a4>
 8000b7a:	eba0 000a 	sub.w	r0, r0, sl
 8000b7e:	6060      	str	r0, [r4, #4]
 8000b80:	6120      	str	r0, [r4, #16]
 8000b82:	e7a9      	b.n	8000ad8 <_printf_i+0x100>
 8000b84:	6823      	ldr	r3, [r4, #0]
 8000b86:	f043 0320 	orr.w	r3, r3, #32
 8000b8a:	6023      	str	r3, [r4, #0]
 8000b8c:	2278      	movs	r2, #120	; 0x78
 8000b8e:	f8df c0f4 	ldr.w	ip, [pc, #244]	; 8000c84 <_printf_i+0x2ac>
 8000b92:	f884 2045 	strb.w	r2, [r4, #69]	; 0x45
 8000b96:	680a      	ldr	r2, [r1, #0]
 8000b98:	1d15      	adds	r5, r2, #4
 8000b9a:	600d      	str	r5, [r1, #0]
 8000b9c:	061d      	lsls	r5, r3, #24
 8000b9e:	d443      	bmi.n	8000c28 <_printf_i+0x250>
 8000ba0:	0659      	lsls	r1, r3, #25
 8000ba2:	d541      	bpl.n	8000c28 <_printf_i+0x250>
 8000ba4:	8815      	ldrh	r5, [r2, #0]
 8000ba6:	07de      	lsls	r6, r3, #31
 8000ba8:	bf44      	itt	mi
 8000baa:	f043 0320 	orrmi.w	r3, r3, #32
 8000bae:	6023      	strmi	r3, [r4, #0]
 8000bb0:	2d00      	cmp	r5, #0
 8000bb2:	d144      	bne.n	8000c3e <_printf_i+0x266>
 8000bb4:	6823      	ldr	r3, [r4, #0]
 8000bb6:	f023 0320 	bic.w	r3, r3, #32
 8000bba:	6023      	str	r3, [r4, #0]
 8000bbc:	2610      	movs	r6, #16
 8000bbe:	e7ae      	b.n	8000b1e <_printf_i+0x146>
 8000bc0:	2358      	movs	r3, #88	; 0x58
 8000bc2:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 8000bc6:	f8df c0b8 	ldr.w	ip, [pc, #184]	; 8000c80 <_printf_i+0x2a8>
 8000bca:	6823      	ldr	r3, [r4, #0]
 8000bcc:	e7e3      	b.n	8000b96 <_printf_i+0x1be>
 8000bce:	6823      	ldr	r3, [r4, #0]
 8000bd0:	e7dc      	b.n	8000b8c <_printf_i+0x1b4>
 8000bd2:	6862      	ldr	r2, [r4, #4]
 8000bd4:	60a2      	str	r2, [r4, #8]
 8000bd6:	212d      	movs	r1, #45	; 0x2d
 8000bd8:	2a00      	cmp	r2, #0
 8000bda:	f1c5 0500 	rsb	r5, r5, #0
 8000bde:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
 8000be2:	db02      	blt.n	8000bea <_printf_i+0x212>
 8000be4:	f023 0304 	bic.w	r3, r3, #4
 8000be8:	6023      	str	r3, [r4, #0]
 8000bea:	f8df c094 	ldr.w	ip, [pc, #148]	; 8000c80 <_printf_i+0x2a8>
 8000bee:	260a      	movs	r6, #10
 8000bf0:	4682      	mov	sl, r0
 8000bf2:	fbb5 f3f6 	udiv	r3, r5, r6
 8000bf6:	fb06 5113 	mls	r1, r6, r3, r5
 8000bfa:	462a      	mov	r2, r5
 8000bfc:	f81c 1001 	ldrb.w	r1, [ip, r1]
 8000c00:	f80a 1d01 	strb.w	r1, [sl, #-1]!
 8000c04:	42b2      	cmp	r2, r6
 8000c06:	461d      	mov	r5, r3
 8000c08:	d2f3      	bcs.n	8000bf2 <_printf_i+0x21a>
 8000c0a:	2e08      	cmp	r6, #8
 8000c0c:	d199      	bne.n	8000b42 <_printf_i+0x16a>
 8000c0e:	6823      	ldr	r3, [r4, #0]
 8000c10:	07d9      	lsls	r1, r3, #31
 8000c12:	d596      	bpl.n	8000b42 <_printf_i+0x16a>
 8000c14:	6862      	ldr	r2, [r4, #4]
 8000c16:	6923      	ldr	r3, [r4, #16]
 8000c18:	429a      	cmp	r2, r3
 8000c1a:	dc92      	bgt.n	8000b42 <_printf_i+0x16a>
 8000c1c:	2330      	movs	r3, #48	; 0x30
 8000c1e:	f80a 3c01 	strb.w	r3, [sl, #-1]
 8000c22:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
 8000c26:	e78c      	b.n	8000b42 <_printf_i+0x16a>
 8000c28:	6815      	ldr	r5, [r2, #0]
 8000c2a:	e7bc      	b.n	8000ba6 <_printf_i+0x1ce>
 8000c2c:	2d00      	cmp	r5, #0
 8000c2e:	d1df      	bne.n	8000bf0 <_printf_i+0x218>
 8000c30:	f89c 3000 	ldrb.w	r3, [ip]
 8000c34:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
 8000c38:	f104 0a42 	add.w	sl, r4, #66	; 0x42
 8000c3c:	e77f      	b.n	8000b3e <_printf_i+0x166>
 8000c3e:	2610      	movs	r6, #16
 8000c40:	e76d      	b.n	8000b1e <_printf_i+0x146>
 8000c42:	f013 0f40 	tst.w	r3, #64	; 0x40
 8000c46:	680b      	ldr	r3, [r1, #0]
 8000c48:	f103 0504 	add.w	r5, r3, #4
 8000c4c:	600d      	str	r5, [r1, #0]
 8000c4e:	bf0c      	ite	eq
 8000c50:	681d      	ldreq	r5, [r3, #0]
 8000c52:	881d      	ldrhne	r5, [r3, #0]
 8000c54:	e75d      	b.n	8000b12 <_printf_i+0x13a>
 8000c56:	f013 0f40 	tst.w	r3, #64	; 0x40
 8000c5a:	680b      	ldr	r3, [r1, #0]
 8000c5c:	6962      	ldr	r2, [r4, #20]
 8000c5e:	f103 0504 	add.w	r5, r3, #4
 8000c62:	600d      	str	r5, [r1, #0]
 8000c64:	681b      	ldr	r3, [r3, #0]
 8000c66:	bf14      	ite	ne
 8000c68:	801a      	strhne	r2, [r3, #0]
 8000c6a:	601a      	streq	r2, [r3, #0]
 8000c6c:	e6f5      	b.n	8000a5a <_printf_i+0x82>
 8000c6e:	680a      	ldr	r2, [r1, #0]
 8000c70:	f9b2 5000 	ldrsh.w	r5, [r2]
 8000c74:	3204      	adds	r2, #4
 8000c76:	600a      	str	r2, [r1, #0]
 8000c78:	462a      	mov	r2, r5
 8000c7a:	e73c      	b.n	8000af6 <_printf_i+0x11e>
 8000c7c:	6860      	ldr	r0, [r4, #4]
 8000c7e:	e77f      	b.n	8000b80 <_printf_i+0x1a8>
 8000c80:	0800df9c 	.word	0x0800df9c
 8000c84:	0800dfb0 	.word	0x0800dfb0
	...

08000c90 <memchr>:
 8000c90:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8000c94:	2a10      	cmp	r2, #16
 8000c96:	db2b      	blt.n	8000cf0 <memchr+0x60>
 8000c98:	f010 0f07 	tst.w	r0, #7
 8000c9c:	d008      	beq.n	8000cb0 <memchr+0x20>
 8000c9e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000ca2:	3a01      	subs	r2, #1
 8000ca4:	428b      	cmp	r3, r1
 8000ca6:	d02d      	beq.n	8000d04 <memchr+0x74>
 8000ca8:	f010 0f07 	tst.w	r0, #7
 8000cac:	b342      	cbz	r2, 8000d00 <memchr+0x70>
 8000cae:	d1f6      	bne.n	8000c9e <memchr+0xe>
 8000cb0:	b4f0      	push	{r4, r5, r6, r7}
 8000cb2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8000cb6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 8000cba:	f022 0407 	bic.w	r4, r2, #7
 8000cbe:	f07f 0700 	mvns.w	r7, #0
 8000cc2:	2300      	movs	r3, #0
 8000cc4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8000cc8:	3c08      	subs	r4, #8
 8000cca:	ea85 0501 	eor.w	r5, r5, r1
 8000cce:	ea86 0601 	eor.w	r6, r6, r1
 8000cd2:	fa85 f547 	uadd8	r5, r5, r7
 8000cd6:	faa3 f587 	sel	r5, r3, r7
 8000cda:	fa86 f647 	uadd8	r6, r6, r7
 8000cde:	faa5 f687 	sel	r6, r5, r7
 8000ce2:	b98e      	cbnz	r6, 8000d08 <memchr+0x78>
 8000ce4:	d1ee      	bne.n	8000cc4 <memchr+0x34>
 8000ce6:	bcf0      	pop	{r4, r5, r6, r7}
 8000ce8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8000cec:	f002 0207 	and.w	r2, r2, #7
 8000cf0:	b132      	cbz	r2, 8000d00 <memchr+0x70>
 8000cf2:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000cf6:	3a01      	subs	r2, #1
 8000cf8:	ea83 0301 	eor.w	r3, r3, r1
 8000cfc:	b113      	cbz	r3, 8000d04 <memchr+0x74>
 8000cfe:	d1f8      	bne.n	8000cf2 <memchr+0x62>
 8000d00:	2000      	movs	r0, #0
 8000d02:	4770      	bx	lr
 8000d04:	3801      	subs	r0, #1
 8000d06:	4770      	bx	lr
 8000d08:	2d00      	cmp	r5, #0
 8000d0a:	bf06      	itte	eq
 8000d0c:	4635      	moveq	r5, r6
 8000d0e:	3803      	subeq	r0, #3
 8000d10:	3807      	subne	r0, #7
 8000d12:	f015 0f01 	tst.w	r5, #1
 8000d16:	d107      	bne.n	8000d28 <memchr+0x98>
 8000d18:	3001      	adds	r0, #1
 8000d1a:	f415 7f80 	tst.w	r5, #256	; 0x100
 8000d1e:	bf02      	ittt	eq
 8000d20:	3001      	addeq	r0, #1
 8000d22:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 8000d26:	3001      	addeq	r0, #1
 8000d28:	bcf0      	pop	{r4, r5, r6, r7}
 8000d2a:	3801      	subs	r0, #1
 8000d2c:	4770      	bx	lr
 8000d2e:	bf00      	nop

08000d30 <memmove>:
 8000d30:	4288      	cmp	r0, r1
 8000d32:	d90d      	bls.n	8000d50 <memmove+0x20>
 8000d34:	188b      	adds	r3, r1, r2
 8000d36:	4283      	cmp	r3, r0
 8000d38:	d90a      	bls.n	8000d50 <memmove+0x20>
 8000d3a:	eb00 0c02 	add.w	ip, r0, r2
 8000d3e:	b1ba      	cbz	r2, 8000d70 <memmove+0x40>
 8000d40:	4662      	mov	r2, ip
 8000d42:	f813 cd01 	ldrb.w	ip, [r3, #-1]!
 8000d46:	f802 cd01 	strb.w	ip, [r2, #-1]!
 8000d4a:	4299      	cmp	r1, r3
 8000d4c:	d1f9      	bne.n	8000d42 <memmove+0x12>
 8000d4e:	4770      	bx	lr
 8000d50:	2a0f      	cmp	r2, #15
 8000d52:	d80e      	bhi.n	8000d72 <memmove+0x42>
 8000d54:	4603      	mov	r3, r0
 8000d56:	f102 3cff 	add.w	ip, r2, #4294967295	; 0xffffffff
 8000d5a:	b14a      	cbz	r2, 8000d70 <memmove+0x40>
 8000d5c:	f10c 0c01 	add.w	ip, ip, #1
 8000d60:	3b01      	subs	r3, #1
 8000d62:	448c      	add	ip, r1
 8000d64:	f811 2b01 	ldrb.w	r2, [r1], #1
 8000d68:	f803 2f01 	strb.w	r2, [r3, #1]!
 8000d6c:	4561      	cmp	r1, ip
 8000d6e:	d1f9      	bne.n	8000d64 <memmove+0x34>
 8000d70:	4770      	bx	lr
 8000d72:	ea40 0301 	orr.w	r3, r0, r1
 8000d76:	079b      	lsls	r3, r3, #30
 8000d78:	d150      	bne.n	8000e1c <memmove+0xec>
 8000d7a:	f1a2 0310 	sub.w	r3, r2, #16
 8000d7e:	b570      	push	{r4, r5, r6, lr}
 8000d80:	f101 0c20 	add.w	ip, r1, #32
 8000d84:	f023 050f 	bic.w	r5, r3, #15
 8000d88:	f101 0e10 	add.w	lr, r1, #16
 8000d8c:	f100 0410 	add.w	r4, r0, #16
 8000d90:	44ac      	add	ip, r5
 8000d92:	091b      	lsrs	r3, r3, #4
 8000d94:	f85e 5c10 	ldr.w	r5, [lr, #-16]
 8000d98:	f844 5c10 	str.w	r5, [r4, #-16]
 8000d9c:	f85e 5c0c 	ldr.w	r5, [lr, #-12]
 8000da0:	f844 5c0c 	str.w	r5, [r4, #-12]
 8000da4:	f85e 5c08 	ldr.w	r5, [lr, #-8]
 8000da8:	f844 5c08 	str.w	r5, [r4, #-8]
 8000dac:	f85e 5c04 	ldr.w	r5, [lr, #-4]
 8000db0:	f844 5c04 	str.w	r5, [r4, #-4]
 8000db4:	f10e 0e10 	add.w	lr, lr, #16
 8000db8:	45e6      	cmp	lr, ip
 8000dba:	f104 0410 	add.w	r4, r4, #16
 8000dbe:	d1e9      	bne.n	8000d94 <memmove+0x64>
 8000dc0:	3301      	adds	r3, #1
 8000dc2:	f012 0f0c 	tst.w	r2, #12
 8000dc6:	eb01 1103 	add.w	r1, r1, r3, lsl #4
 8000dca:	f002 040f 	and.w	r4, r2, #15
 8000dce:	eb00 1303 	add.w	r3, r0, r3, lsl #4
 8000dd2:	d027      	beq.n	8000e24 <memmove+0xf4>
 8000dd4:	3c04      	subs	r4, #4
 8000dd6:	f024 0603 	bic.w	r6, r4, #3
 8000dda:	ea4f 0c94 	mov.w	ip, r4, lsr #2
 8000dde:	441e      	add	r6, r3
 8000de0:	1f1c      	subs	r4, r3, #4
 8000de2:	468e      	mov	lr, r1
 8000de4:	f85e 5b04 	ldr.w	r5, [lr], #4
 8000de8:	f844 5f04 	str.w	r5, [r4, #4]!
 8000dec:	42b4      	cmp	r4, r6
 8000dee:	d1f9      	bne.n	8000de4 <memmove+0xb4>
 8000df0:	f10c 0401 	add.w	r4, ip, #1
 8000df4:	f002 0203 	and.w	r2, r2, #3
 8000df8:	eb03 0384 	add.w	r3, r3, r4, lsl #2
 8000dfc:	eb01 0184 	add.w	r1, r1, r4, lsl #2
 8000e00:	f102 3cff 	add.w	ip, r2, #4294967295	; 0xffffffff
 8000e04:	b14a      	cbz	r2, 8000e1a <memmove+0xea>
 8000e06:	f10c 0c01 	add.w	ip, ip, #1
 8000e0a:	3b01      	subs	r3, #1
 8000e0c:	448c      	add	ip, r1
 8000e0e:	f811 2b01 	ldrb.w	r2, [r1], #1
 8000e12:	f803 2f01 	strb.w	r2, [r3, #1]!
 8000e16:	4561      	cmp	r1, ip
 8000e18:	d1f9      	bne.n	8000e0e <memmove+0xde>
 8000e1a:	bd70      	pop	{r4, r5, r6, pc}
 8000e1c:	f102 3cff 	add.w	ip, r2, #4294967295	; 0xffffffff
 8000e20:	4603      	mov	r3, r0
 8000e22:	e79b      	b.n	8000d5c <memmove+0x2c>
 8000e24:	4622      	mov	r2, r4
 8000e26:	e7eb      	b.n	8000e00 <memmove+0xd0>

08000e28 <_free_r>:
 8000e28:	2900      	cmp	r1, #0
 8000e2a:	d058      	beq.n	8000ede <_free_r+0xb6>
 8000e2c:	b530      	push	{r4, r5, lr}
 8000e2e:	f851 3c04 	ldr.w	r3, [r1, #-4]
 8000e32:	b083      	sub	sp, #12
 8000e34:	2b00      	cmp	r3, #0
 8000e36:	f1a1 0404 	sub.w	r4, r1, #4
 8000e3a:	bfb8      	it	lt
 8000e3c:	18e4      	addlt	r4, r4, r3
 8000e3e:	9001      	str	r0, [sp, #4]
 8000e40:	f000 f8e8 	bl	8001014 <__malloc_lock>
 8000e44:	4a28      	ldr	r2, [pc, #160]	; (8000ee8 <_free_r+0xc0>)
 8000e46:	9801      	ldr	r0, [sp, #4]
 8000e48:	6813      	ldr	r3, [r2, #0]
 8000e4a:	b133      	cbz	r3, 8000e5a <_free_r+0x32>
 8000e4c:	42a3      	cmp	r3, r4
 8000e4e:	d90d      	bls.n	8000e6c <_free_r+0x44>
 8000e50:	6821      	ldr	r1, [r4, #0]
 8000e52:	eb04 0c01 	add.w	ip, r4, r1
 8000e56:	4563      	cmp	r3, ip
 8000e58:	d02f      	beq.n	8000eba <_free_r+0x92>
 8000e5a:	6063      	str	r3, [r4, #4]
 8000e5c:	6014      	str	r4, [r2, #0]
 8000e5e:	b003      	add	sp, #12
 8000e60:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8000e64:	f000 b8d8 	b.w	8001018 <__malloc_unlock>
 8000e68:	42a3      	cmp	r3, r4
 8000e6a:	d810      	bhi.n	8000e8e <_free_r+0x66>
 8000e6c:	461a      	mov	r2, r3
 8000e6e:	685b      	ldr	r3, [r3, #4]
 8000e70:	2b00      	cmp	r3, #0
 8000e72:	d1f9      	bne.n	8000e68 <_free_r+0x40>
 8000e74:	6811      	ldr	r1, [r2, #0]
 8000e76:	eb02 0c01 	add.w	ip, r2, r1
 8000e7a:	4564      	cmp	r4, ip
 8000e7c:	d019      	beq.n	8000eb2 <_free_r+0x8a>
 8000e7e:	d32f      	bcc.n	8000ee0 <_free_r+0xb8>
 8000e80:	6063      	str	r3, [r4, #4]
 8000e82:	6054      	str	r4, [r2, #4]
 8000e84:	b003      	add	sp, #12
 8000e86:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8000e8a:	f000 b8c5 	b.w	8001018 <__malloc_unlock>
 8000e8e:	6811      	ldr	r1, [r2, #0]
 8000e90:	eb02 0c01 	add.w	ip, r2, r1
 8000e94:	45a4      	cmp	ip, r4
 8000e96:	d016      	beq.n	8000ec6 <_free_r+0x9e>
 8000e98:	d822      	bhi.n	8000ee0 <_free_r+0xb8>
 8000e9a:	6821      	ldr	r1, [r4, #0]
 8000e9c:	eb04 0c01 	add.w	ip, r4, r1
 8000ea0:	4563      	cmp	r3, ip
 8000ea2:	d1ed      	bne.n	8000e80 <_free_r+0x58>
 8000ea4:	681d      	ldr	r5, [r3, #0]
 8000ea6:	685b      	ldr	r3, [r3, #4]
 8000ea8:	4429      	add	r1, r5
 8000eaa:	e9c4 1300 	strd	r1, r3, [r4]
 8000eae:	6054      	str	r4, [r2, #4]
 8000eb0:	e7d5      	b.n	8000e5e <_free_r+0x36>
 8000eb2:	6823      	ldr	r3, [r4, #0]
 8000eb4:	4419      	add	r1, r3
 8000eb6:	6011      	str	r1, [r2, #0]
 8000eb8:	e7d1      	b.n	8000e5e <_free_r+0x36>
 8000eba:	681d      	ldr	r5, [r3, #0]
 8000ebc:	685b      	ldr	r3, [r3, #4]
 8000ebe:	4429      	add	r1, r5
 8000ec0:	e9c4 1300 	strd	r1, r3, [r4]
 8000ec4:	e7ca      	b.n	8000e5c <_free_r+0x34>
 8000ec6:	6824      	ldr	r4, [r4, #0]
 8000ec8:	4421      	add	r1, r4
 8000eca:	1854      	adds	r4, r2, r1
 8000ecc:	42a3      	cmp	r3, r4
 8000ece:	6011      	str	r1, [r2, #0]
 8000ed0:	d1c5      	bne.n	8000e5e <_free_r+0x36>
 8000ed2:	e9d3 4300 	ldrd	r4, r3, [r3]
 8000ed6:	4421      	add	r1, r4
 8000ed8:	e9c2 1300 	strd	r1, r3, [r2]
 8000edc:	e7bf      	b.n	8000e5e <_free_r+0x36>
 8000ede:	4770      	bx	lr
 8000ee0:	230c      	movs	r3, #12
 8000ee2:	6003      	str	r3, [r0, #0]
 8000ee4:	e7bb      	b.n	8000e5e <_free_r+0x36>
 8000ee6:	bf00      	nop
 8000ee8:	200001ac 	.word	0x200001ac

08000eec <_malloc_r>:
 8000eec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000eee:	1ccd      	adds	r5, r1, #3
 8000ef0:	f025 0503 	bic.w	r5, r5, #3
 8000ef4:	3508      	adds	r5, #8
 8000ef6:	2d0c      	cmp	r5, #12
 8000ef8:	bf38      	it	cc
 8000efa:	250c      	movcc	r5, #12
 8000efc:	2d00      	cmp	r5, #0
 8000efe:	4606      	mov	r6, r0
 8000f00:	db23      	blt.n	8000f4a <_malloc_r+0x5e>
 8000f02:	42a9      	cmp	r1, r5
 8000f04:	d821      	bhi.n	8000f4a <_malloc_r+0x5e>
 8000f06:	4f25      	ldr	r7, [pc, #148]	; (8000f9c <_malloc_r+0xb0>)
 8000f08:	f000 f884 	bl	8001014 <__malloc_lock>
 8000f0c:	683a      	ldr	r2, [r7, #0]
 8000f0e:	b322      	cbz	r2, 8000f5a <_malloc_r+0x6e>
 8000f10:	4614      	mov	r4, r2
 8000f12:	e003      	b.n	8000f1c <_malloc_r+0x30>
 8000f14:	6863      	ldr	r3, [r4, #4]
 8000f16:	4622      	mov	r2, r4
 8000f18:	b1fb      	cbz	r3, 8000f5a <_malloc_r+0x6e>
 8000f1a:	461c      	mov	r4, r3
 8000f1c:	6823      	ldr	r3, [r4, #0]
 8000f1e:	1b5b      	subs	r3, r3, r5
 8000f20:	d4f8      	bmi.n	8000f14 <_malloc_r+0x28>
 8000f22:	2b0b      	cmp	r3, #11
 8000f24:	d815      	bhi.n	8000f52 <_malloc_r+0x66>
 8000f26:	6863      	ldr	r3, [r4, #4]
 8000f28:	4294      	cmp	r4, r2
 8000f2a:	bf0c      	ite	eq
 8000f2c:	603b      	streq	r3, [r7, #0]
 8000f2e:	6053      	strne	r3, [r2, #4]
 8000f30:	4630      	mov	r0, r6
 8000f32:	f000 f871 	bl	8001018 <__malloc_unlock>
 8000f36:	f104 000b 	add.w	r0, r4, #11
 8000f3a:	1d23      	adds	r3, r4, #4
 8000f3c:	f020 0007 	bic.w	r0, r0, #7
 8000f40:	1ac2      	subs	r2, r0, r3
 8000f42:	d001      	beq.n	8000f48 <_malloc_r+0x5c>
 8000f44:	1a1b      	subs	r3, r3, r0
 8000f46:	50a3      	str	r3, [r4, r2]
 8000f48:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000f4a:	230c      	movs	r3, #12
 8000f4c:	6033      	str	r3, [r6, #0]
 8000f4e:	2000      	movs	r0, #0
 8000f50:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000f52:	6023      	str	r3, [r4, #0]
 8000f54:	441c      	add	r4, r3
 8000f56:	6025      	str	r5, [r4, #0]
 8000f58:	e7ea      	b.n	8000f30 <_malloc_r+0x44>
 8000f5a:	6879      	ldr	r1, [r7, #4]
 8000f5c:	b1c9      	cbz	r1, 8000f92 <_malloc_r+0xa6>
 8000f5e:	4629      	mov	r1, r5
 8000f60:	4630      	mov	r0, r6
 8000f62:	f000 f845 	bl	8000ff0 <_sbrk_r>
 8000f66:	1c43      	adds	r3, r0, #1
 8000f68:	d00c      	beq.n	8000f84 <_malloc_r+0x98>
 8000f6a:	1cc4      	adds	r4, r0, #3
 8000f6c:	f024 0403 	bic.w	r4, r4, #3
 8000f70:	42a0      	cmp	r0, r4
 8000f72:	d005      	beq.n	8000f80 <_malloc_r+0x94>
 8000f74:	1a21      	subs	r1, r4, r0
 8000f76:	4630      	mov	r0, r6
 8000f78:	f000 f83a 	bl	8000ff0 <_sbrk_r>
 8000f7c:	3001      	adds	r0, #1
 8000f7e:	d001      	beq.n	8000f84 <_malloc_r+0x98>
 8000f80:	6025      	str	r5, [r4, #0]
 8000f82:	e7d5      	b.n	8000f30 <_malloc_r+0x44>
 8000f84:	230c      	movs	r3, #12
 8000f86:	4630      	mov	r0, r6
 8000f88:	6033      	str	r3, [r6, #0]
 8000f8a:	f000 f845 	bl	8001018 <__malloc_unlock>
 8000f8e:	2000      	movs	r0, #0
 8000f90:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000f92:	4630      	mov	r0, r6
 8000f94:	f000 f82c 	bl	8000ff0 <_sbrk_r>
 8000f98:	6078      	str	r0, [r7, #4]
 8000f9a:	e7e0      	b.n	8000f5e <_malloc_r+0x72>
 8000f9c:	200001ac 	.word	0x200001ac

08000fa0 <_realloc_r>:
 8000fa0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000fa2:	4614      	mov	r4, r2
 8000fa4:	b1f9      	cbz	r1, 8000fe6 <_realloc_r+0x46>
 8000fa6:	b1ca      	cbz	r2, 8000fdc <_realloc_r+0x3c>
 8000fa8:	4606      	mov	r6, r0
 8000faa:	460d      	mov	r5, r1
 8000fac:	f000 f836 	bl	800101c <_malloc_usable_size_r>
 8000fb0:	42a0      	cmp	r0, r4
 8000fb2:	d302      	bcc.n	8000fba <_realloc_r+0x1a>
 8000fb4:	462f      	mov	r7, r5
 8000fb6:	4638      	mov	r0, r7
 8000fb8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000fba:	4621      	mov	r1, r4
 8000fbc:	4630      	mov	r0, r6
 8000fbe:	f7ff ff95 	bl	8000eec <_malloc_r>
 8000fc2:	4607      	mov	r7, r0
 8000fc4:	2800      	cmp	r0, #0
 8000fc6:	d0f6      	beq.n	8000fb6 <_realloc_r+0x16>
 8000fc8:	4622      	mov	r2, r4
 8000fca:	4629      	mov	r1, r5
 8000fcc:	f7ff f94e 	bl	800026c <memcpy>
 8000fd0:	4630      	mov	r0, r6
 8000fd2:	4629      	mov	r1, r5
 8000fd4:	f7ff ff28 	bl	8000e28 <_free_r>
 8000fd8:	4638      	mov	r0, r7
 8000fda:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000fdc:	4627      	mov	r7, r4
 8000fde:	f7ff ff23 	bl	8000e28 <_free_r>
 8000fe2:	4638      	mov	r0, r7
 8000fe4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000fe6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000fea:	4611      	mov	r1, r2
 8000fec:	f7ff bf7e 	b.w	8000eec <_malloc_r>

08000ff0 <_sbrk_r>:
 8000ff0:	b538      	push	{r3, r4, r5, lr}
 8000ff2:	4d07      	ldr	r5, [pc, #28]	; (8001010 <_sbrk_r+0x20>)
 8000ff4:	2200      	movs	r2, #0
 8000ff6:	4604      	mov	r4, r0
 8000ff8:	4608      	mov	r0, r1
 8000ffa:	602a      	str	r2, [r5, #0]
 8000ffc:	f005 f808 	bl	8006010 <_sbrk>
 8001000:	1c43      	adds	r3, r0, #1
 8001002:	d000      	beq.n	8001006 <_sbrk_r+0x16>
 8001004:	bd38      	pop	{r3, r4, r5, pc}
 8001006:	682b      	ldr	r3, [r5, #0]
 8001008:	2b00      	cmp	r3, #0
 800100a:	d0fb      	beq.n	8001004 <_sbrk_r+0x14>
 800100c:	6023      	str	r3, [r4, #0]
 800100e:	bd38      	pop	{r3, r4, r5, pc}
 8001010:	200001b4 	.word	0x200001b4

08001014 <__malloc_lock>:
 8001014:	4770      	bx	lr
 8001016:	bf00      	nop

08001018 <__malloc_unlock>:
 8001018:	4770      	bx	lr
 800101a:	bf00      	nop

0800101c <_malloc_usable_size_r>:
 800101c:	f851 0c04 	ldr.w	r0, [r1, #-4]
 8001020:	2800      	cmp	r0, #0
 8001022:	f1a0 0004 	sub.w	r0, r0, #4
 8001026:	bfbc      	itt	lt
 8001028:	580b      	ldrlt	r3, [r1, r0]
 800102a:	18c0      	addlt	r0, r0, r3
 800102c:	4770      	bx	lr
 800102e:	bf00      	nop

08001030 <log>:
 8001030:	b538      	push	{r3, r4, r5, lr}
 8001032:	ed2d 8b02 	vpush	{d8}
 8001036:	ec55 4b10 	vmov	r4, r5, d0
 800103a:	f000 f915 	bl	8001268 <__ieee754_log>
 800103e:	4b1e      	ldr	r3, [pc, #120]	; (80010b8 <log+0x88>)
 8001040:	eeb0 8a40 	vmov.f32	s16, s0
 8001044:	eef0 8a60 	vmov.f32	s17, s1
 8001048:	f993 3000 	ldrsb.w	r3, [r3]
 800104c:	3301      	adds	r3, #1
 800104e:	d01a      	beq.n	8001086 <log+0x56>
 8001050:	4622      	mov	r2, r4
 8001052:	462b      	mov	r3, r5
 8001054:	4620      	mov	r0, r4
 8001056:	4629      	mov	r1, r5
 8001058:	f001 ff2a 	bl	8002eb0 <__aeabi_dcmpun>
 800105c:	b998      	cbnz	r0, 8001086 <log+0x56>
 800105e:	2200      	movs	r2, #0
 8001060:	2300      	movs	r3, #0
 8001062:	4620      	mov	r0, r4
 8001064:	4629      	mov	r1, r5
 8001066:	f001 ff19 	bl	8002e9c <__aeabi_dcmpgt>
 800106a:	b960      	cbnz	r0, 8001086 <log+0x56>
 800106c:	2200      	movs	r2, #0
 800106e:	2300      	movs	r3, #0
 8001070:	4620      	mov	r0, r4
 8001072:	4629      	mov	r1, r5
 8001074:	f001 feea 	bl	8002e4c <__aeabi_dcmpeq>
 8001078:	b160      	cbz	r0, 8001094 <log+0x64>
 800107a:	f7ff f8cd 	bl	8000218 <__errno>
 800107e:	ed9f 8b0c 	vldr	d8, [pc, #48]	; 80010b0 <log+0x80>
 8001082:	2322      	movs	r3, #34	; 0x22
 8001084:	6003      	str	r3, [r0, #0]
 8001086:	eeb0 0a48 	vmov.f32	s0, s16
 800108a:	eef0 0a68 	vmov.f32	s1, s17
 800108e:	ecbd 8b02 	vpop	{d8}
 8001092:	bd38      	pop	{r3, r4, r5, pc}
 8001094:	f7ff f8c0 	bl	8000218 <__errno>
 8001098:	ecbd 8b02 	vpop	{d8}
 800109c:	4603      	mov	r3, r0
 800109e:	2221      	movs	r2, #33	; 0x21
 80010a0:	601a      	str	r2, [r3, #0]
 80010a2:	4806      	ldr	r0, [pc, #24]	; (80010bc <log+0x8c>)
 80010a4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80010a8:	f001 b976 	b.w	8002398 <nan>
 80010ac:	f3af 8000 	nop.w
 80010b0:	00000000 	.word	0x00000000
 80010b4:	fff00000 	.word	0xfff00000
 80010b8:	20000064 	.word	0x20000064
 80010bc:	0800d824 	.word	0x0800d824

080010c0 <pow>:
 80010c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80010c2:	ed2d 8b02 	vpush	{d8}
 80010c6:	ec57 6b10 	vmov	r6, r7, d0
 80010ca:	ec55 4b11 	vmov	r4, r5, d1
 80010ce:	f000 fae7 	bl	80016a0 <__ieee754_pow>
 80010d2:	4b63      	ldr	r3, [pc, #396]	; (8001260 <pow+0x1a0>)
 80010d4:	eeb0 8a40 	vmov.f32	s16, s0
 80010d8:	eef0 8a60 	vmov.f32	s17, s1
 80010dc:	f993 3000 	ldrsb.w	r3, [r3]
 80010e0:	3301      	adds	r3, #1
 80010e2:	d02a      	beq.n	800113a <pow+0x7a>
 80010e4:	4622      	mov	r2, r4
 80010e6:	462b      	mov	r3, r5
 80010e8:	4620      	mov	r0, r4
 80010ea:	4629      	mov	r1, r5
 80010ec:	f001 fee0 	bl	8002eb0 <__aeabi_dcmpun>
 80010f0:	bb18      	cbnz	r0, 800113a <pow+0x7a>
 80010f2:	4632      	mov	r2, r6
 80010f4:	463b      	mov	r3, r7
 80010f6:	4630      	mov	r0, r6
 80010f8:	4639      	mov	r1, r7
 80010fa:	f001 fed9 	bl	8002eb0 <__aeabi_dcmpun>
 80010fe:	2800      	cmp	r0, #0
 8001100:	d144      	bne.n	800118c <pow+0xcc>
 8001102:	2200      	movs	r2, #0
 8001104:	2300      	movs	r3, #0
 8001106:	4630      	mov	r0, r6
 8001108:	4639      	mov	r1, r7
 800110a:	f001 fe9f 	bl	8002e4c <__aeabi_dcmpeq>
 800110e:	b1d8      	cbz	r0, 8001148 <pow+0x88>
 8001110:	2200      	movs	r2, #0
 8001112:	2300      	movs	r3, #0
 8001114:	4620      	mov	r0, r4
 8001116:	4629      	mov	r1, r5
 8001118:	f001 fe98 	bl	8002e4c <__aeabi_dcmpeq>
 800111c:	2800      	cmp	r0, #0
 800111e:	d13d      	bne.n	800119c <pow+0xdc>
 8001120:	ec45 4b10 	vmov	d0, r4, r5
 8001124:	f001 f92c 	bl	8002380 <finite>
 8001128:	b138      	cbz	r0, 800113a <pow+0x7a>
 800112a:	4620      	mov	r0, r4
 800112c:	4629      	mov	r1, r5
 800112e:	2200      	movs	r2, #0
 8001130:	2300      	movs	r3, #0
 8001132:	f001 fe95 	bl	8002e60 <__aeabi_dcmplt>
 8001136:	2800      	cmp	r0, #0
 8001138:	d15c      	bne.n	80011f4 <pow+0x134>
 800113a:	eeb0 0a48 	vmov.f32	s0, s16
 800113e:	eef0 0a68 	vmov.f32	s1, s17
 8001142:	ecbd 8b02 	vpop	{d8}
 8001146:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001148:	eeb0 0a48 	vmov.f32	s0, s16
 800114c:	eef0 0a68 	vmov.f32	s1, s17
 8001150:	f001 f916 	bl	8002380 <finite>
 8001154:	b358      	cbz	r0, 80011ae <pow+0xee>
 8001156:	ec51 0b18 	vmov	r0, r1, d8
 800115a:	2200      	movs	r2, #0
 800115c:	2300      	movs	r3, #0
 800115e:	f001 fe75 	bl	8002e4c <__aeabi_dcmpeq>
 8001162:	2800      	cmp	r0, #0
 8001164:	d0e9      	beq.n	800113a <pow+0x7a>
 8001166:	ec47 6b10 	vmov	d0, r6, r7
 800116a:	f001 f909 	bl	8002380 <finite>
 800116e:	2800      	cmp	r0, #0
 8001170:	d0e3      	beq.n	800113a <pow+0x7a>
 8001172:	ec45 4b10 	vmov	d0, r4, r5
 8001176:	f001 f903 	bl	8002380 <finite>
 800117a:	2800      	cmp	r0, #0
 800117c:	d0dd      	beq.n	800113a <pow+0x7a>
 800117e:	f7ff f84b 	bl	8000218 <__errno>
 8001182:	2322      	movs	r3, #34	; 0x22
 8001184:	ed9f 8b2e 	vldr	d8, [pc, #184]	; 8001240 <pow+0x180>
 8001188:	6003      	str	r3, [r0, #0]
 800118a:	e7d6      	b.n	800113a <pow+0x7a>
 800118c:	4620      	mov	r0, r4
 800118e:	4629      	mov	r1, r5
 8001190:	2200      	movs	r2, #0
 8001192:	2300      	movs	r3, #0
 8001194:	f001 fe5a 	bl	8002e4c <__aeabi_dcmpeq>
 8001198:	2800      	cmp	r0, #0
 800119a:	d0ce      	beq.n	800113a <pow+0x7a>
 800119c:	ed9f 8b2a 	vldr	d8, [pc, #168]	; 8001248 <pow+0x188>
 80011a0:	eeb0 0a48 	vmov.f32	s0, s16
 80011a4:	eef0 0a68 	vmov.f32	s1, s17
 80011a8:	ecbd 8b02 	vpop	{d8}
 80011ac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80011ae:	ec47 6b10 	vmov	d0, r6, r7
 80011b2:	f001 f8e5 	bl	8002380 <finite>
 80011b6:	2800      	cmp	r0, #0
 80011b8:	d0cd      	beq.n	8001156 <pow+0x96>
 80011ba:	ec45 4b10 	vmov	d0, r4, r5
 80011be:	f001 f8df 	bl	8002380 <finite>
 80011c2:	2800      	cmp	r0, #0
 80011c4:	d0c7      	beq.n	8001156 <pow+0x96>
 80011c6:	ec53 2b18 	vmov	r2, r3, d8
 80011ca:	ee18 0a10 	vmov	r0, s16
 80011ce:	4619      	mov	r1, r3
 80011d0:	f001 fe6e 	bl	8002eb0 <__aeabi_dcmpun>
 80011d4:	bb20      	cbnz	r0, 8001220 <pow+0x160>
 80011d6:	f7ff f81f 	bl	8000218 <__errno>
 80011da:	4603      	mov	r3, r0
 80011dc:	2222      	movs	r2, #34	; 0x22
 80011de:	601a      	str	r2, [r3, #0]
 80011e0:	4630      	mov	r0, r6
 80011e2:	4639      	mov	r1, r7
 80011e4:	2200      	movs	r2, #0
 80011e6:	2300      	movs	r3, #0
 80011e8:	f001 fe3a 	bl	8002e60 <__aeabi_dcmplt>
 80011ec:	b948      	cbnz	r0, 8001202 <pow+0x142>
 80011ee:	ed9f 8b18 	vldr	d8, [pc, #96]	; 8001250 <pow+0x190>
 80011f2:	e7a2      	b.n	800113a <pow+0x7a>
 80011f4:	f7ff f810 	bl	8000218 <__errno>
 80011f8:	2321      	movs	r3, #33	; 0x21
 80011fa:	ed9f 8b17 	vldr	d8, [pc, #92]	; 8001258 <pow+0x198>
 80011fe:	6003      	str	r3, [r0, #0]
 8001200:	e79b      	b.n	800113a <pow+0x7a>
 8001202:	ec45 4b10 	vmov	d0, r4, r5
 8001206:	f001 f8cf 	bl	80023a8 <rint>
 800120a:	4622      	mov	r2, r4
 800120c:	ec51 0b10 	vmov	r0, r1, d0
 8001210:	462b      	mov	r3, r5
 8001212:	f001 fe1b 	bl	8002e4c <__aeabi_dcmpeq>
 8001216:	2800      	cmp	r0, #0
 8001218:	d1e9      	bne.n	80011ee <pow+0x12e>
 800121a:	ed9f 8b0f 	vldr	d8, [pc, #60]	; 8001258 <pow+0x198>
 800121e:	e78c      	b.n	800113a <pow+0x7a>
 8001220:	f7fe fffa 	bl	8000218 <__errno>
 8001224:	2200      	movs	r2, #0
 8001226:	2300      	movs	r3, #0
 8001228:	2121      	movs	r1, #33	; 0x21
 800122a:	6001      	str	r1, [r0, #0]
 800122c:	4610      	mov	r0, r2
 800122e:	4619      	mov	r1, r3
 8001230:	f001 fcce 	bl	8002bd0 <__aeabi_ddiv>
 8001234:	ec41 0b18 	vmov	d8, r0, r1
 8001238:	e77f      	b.n	800113a <pow+0x7a>
 800123a:	bf00      	nop
 800123c:	f3af 8000 	nop.w
	...
 800124c:	3ff00000 	.word	0x3ff00000
 8001250:	00000000 	.word	0x00000000
 8001254:	7ff00000 	.word	0x7ff00000
 8001258:	00000000 	.word	0x00000000
 800125c:	fff00000 	.word	0xfff00000
 8001260:	20000064 	.word	0x20000064
 8001264:	00000000 	.word	0x00000000

08001268 <__ieee754_log>:
 8001268:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800126c:	ec51 0b10 	vmov	r0, r1, d0
 8001270:	ed2d 8b02 	vpush	{d8}
 8001274:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001278:	b085      	sub	sp, #20
 800127a:	460f      	mov	r7, r1
 800127c:	da58      	bge.n	8001330 <__ieee754_log+0xc8>
 800127e:	f021 4300 	bic.w	r3, r1, #2147483648	; 0x80000000
 8001282:	4303      	orrs	r3, r0
 8001284:	ee10 2a10 	vmov	r2, s0
 8001288:	f000 80fc 	beq.w	8001484 <__ieee754_log+0x21c>
 800128c:	2900      	cmp	r1, #0
 800128e:	f2c0 813c 	blt.w	800150a <__ieee754_log+0x2a2>
 8001292:	4be1      	ldr	r3, [pc, #900]	; (8001618 <__ieee754_log+0x3b0>)
 8001294:	2200      	movs	r2, #0
 8001296:	f001 fb71 	bl	800297c <__aeabi_dmul>
 800129a:	4be0      	ldr	r3, [pc, #896]	; (800161c <__ieee754_log+0x3b4>)
 800129c:	460f      	mov	r7, r1
 800129e:	429f      	cmp	r7, r3
 80012a0:	f06f 0235 	mvn.w	r2, #53	; 0x35
 80012a4:	dc49      	bgt.n	800133a <__ieee754_log+0xd2>
 80012a6:	153e      	asrs	r6, r7, #20
 80012a8:	f3c7 0713 	ubfx	r7, r7, #0, #20
 80012ac:	f507 2315 	add.w	r3, r7, #610304	; 0x95000
 80012b0:	f2a6 36ff 	subw	r6, r6, #1023	; 0x3ff
 80012b4:	f603 7364 	addw	r3, r3, #3940	; 0xf64
 80012b8:	4416      	add	r6, r2
 80012ba:	f403 1380 	and.w	r3, r3, #1048576	; 0x100000
 80012be:	eb06 5613 	add.w	r6, r6, r3, lsr #20
 80012c2:	f083 537f 	eor.w	r3, r3, #1069547520	; 0x3fc00000
 80012c6:	f483 1340 	eor.w	r3, r3, #3145728	; 0x300000
 80012ca:	ea43 0107 	orr.w	r1, r3, r7
 80012ce:	2200      	movs	r2, #0
 80012d0:	4bd3      	ldr	r3, [pc, #844]	; (8001620 <__ieee754_log+0x3b8>)
 80012d2:	f001 f99b 	bl	800260c <__aeabi_dsub>
 80012d6:	1cbb      	adds	r3, r7, #2
 80012d8:	f3c3 0313 	ubfx	r3, r3, #0, #20
 80012dc:	2b02      	cmp	r3, #2
 80012de:	4682      	mov	sl, r0
 80012e0:	468b      	mov	fp, r1
 80012e2:	dc35      	bgt.n	8001350 <__ieee754_log+0xe8>
 80012e4:	2200      	movs	r2, #0
 80012e6:	2300      	movs	r3, #0
 80012e8:	f001 fdb0 	bl	8002e4c <__aeabi_dcmpeq>
 80012ec:	2800      	cmp	r0, #0
 80012ee:	f000 80d6 	beq.w	800149e <__ieee754_log+0x236>
 80012f2:	2e00      	cmp	r6, #0
 80012f4:	f000 8160 	beq.w	80015b8 <__ieee754_log+0x350>
 80012f8:	4630      	mov	r0, r6
 80012fa:	f001 fad5 	bl	80028a8 <__aeabi_i2d>
 80012fe:	a3b0      	add	r3, pc, #704	; (adr r3, 80015c0 <__ieee754_log+0x358>)
 8001300:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001304:	4606      	mov	r6, r0
 8001306:	460f      	mov	r7, r1
 8001308:	f001 fb38 	bl	800297c <__aeabi_dmul>
 800130c:	a3ae      	add	r3, pc, #696	; (adr r3, 80015c8 <__ieee754_log+0x360>)
 800130e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001312:	4604      	mov	r4, r0
 8001314:	460d      	mov	r5, r1
 8001316:	4630      	mov	r0, r6
 8001318:	4639      	mov	r1, r7
 800131a:	f001 fb2f 	bl	800297c <__aeabi_dmul>
 800131e:	4602      	mov	r2, r0
 8001320:	460b      	mov	r3, r1
 8001322:	4620      	mov	r0, r4
 8001324:	4629      	mov	r1, r5
 8001326:	f001 f973 	bl	8002610 <__adddf3>
 800132a:	ec41 0b10 	vmov	d0, r0, r1
 800132e:	e00a      	b.n	8001346 <__ieee754_log+0xde>
 8001330:	4bba      	ldr	r3, [pc, #744]	; (800161c <__ieee754_log+0x3b4>)
 8001332:	429f      	cmp	r7, r3
 8001334:	f04f 0200 	mov.w	r2, #0
 8001338:	ddb5      	ble.n	80012a6 <__ieee754_log+0x3e>
 800133a:	4602      	mov	r2, r0
 800133c:	460b      	mov	r3, r1
 800133e:	f001 f967 	bl	8002610 <__adddf3>
 8001342:	ec41 0b10 	vmov	d0, r0, r1
 8001346:	b005      	add	sp, #20
 8001348:	ecbd 8b02 	vpop	{d8}
 800134c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001350:	f5a7 23c2 	sub.w	r3, r7, #397312	; 0x61000
 8001354:	f2a3 437a 	subw	r3, r3, #1146	; 0x47a
 8001358:	9301      	str	r3, [sp, #4]
 800135a:	2200      	movs	r2, #0
 800135c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001360:	f001 f956 	bl	8002610 <__adddf3>
 8001364:	4602      	mov	r2, r0
 8001366:	460b      	mov	r3, r1
 8001368:	4650      	mov	r0, sl
 800136a:	4659      	mov	r1, fp
 800136c:	f001 fc30 	bl	8002bd0 <__aeabi_ddiv>
 8001370:	ec41 0b18 	vmov	d8, r0, r1
 8001374:	4630      	mov	r0, r6
 8001376:	f001 fa97 	bl	80028a8 <__aeabi_i2d>
 800137a:	ec53 2b18 	vmov	r2, r3, d8
 800137e:	e9cd 0102 	strd	r0, r1, [sp, #8]
 8001382:	ec51 0b18 	vmov	r0, r1, d8
 8001386:	f001 faf9 	bl	800297c <__aeabi_dmul>
 800138a:	4602      	mov	r2, r0
 800138c:	460b      	mov	r3, r1
 800138e:	4680      	mov	r8, r0
 8001390:	4689      	mov	r9, r1
 8001392:	f001 faf3 	bl	800297c <__aeabi_dmul>
 8001396:	a38e      	add	r3, pc, #568	; (adr r3, 80015d0 <__ieee754_log+0x368>)
 8001398:	e9d3 2300 	ldrd	r2, r3, [r3]
 800139c:	4604      	mov	r4, r0
 800139e:	460d      	mov	r5, r1
 80013a0:	f001 faec 	bl	800297c <__aeabi_dmul>
 80013a4:	a38c      	add	r3, pc, #560	; (adr r3, 80015d8 <__ieee754_log+0x370>)
 80013a6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80013aa:	f001 f931 	bl	8002610 <__adddf3>
 80013ae:	4622      	mov	r2, r4
 80013b0:	462b      	mov	r3, r5
 80013b2:	f001 fae3 	bl	800297c <__aeabi_dmul>
 80013b6:	a38a      	add	r3, pc, #552	; (adr r3, 80015e0 <__ieee754_log+0x378>)
 80013b8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80013bc:	f001 f928 	bl	8002610 <__adddf3>
 80013c0:	4622      	mov	r2, r4
 80013c2:	462b      	mov	r3, r5
 80013c4:	f001 fada 	bl	800297c <__aeabi_dmul>
 80013c8:	a387      	add	r3, pc, #540	; (adr r3, 80015e8 <__ieee754_log+0x380>)
 80013ca:	e9d3 2300 	ldrd	r2, r3, [r3]
 80013ce:	f001 f91f 	bl	8002610 <__adddf3>
 80013d2:	4642      	mov	r2, r8
 80013d4:	464b      	mov	r3, r9
 80013d6:	f001 fad1 	bl	800297c <__aeabi_dmul>
 80013da:	a385      	add	r3, pc, #532	; (adr r3, 80015f0 <__ieee754_log+0x388>)
 80013dc:	e9d3 2300 	ldrd	r2, r3, [r3]
 80013e0:	4680      	mov	r8, r0
 80013e2:	4689      	mov	r9, r1
 80013e4:	4620      	mov	r0, r4
 80013e6:	4629      	mov	r1, r5
 80013e8:	f001 fac8 	bl	800297c <__aeabi_dmul>
 80013ec:	a382      	add	r3, pc, #520	; (adr r3, 80015f8 <__ieee754_log+0x390>)
 80013ee:	e9d3 2300 	ldrd	r2, r3, [r3]
 80013f2:	f001 f90d 	bl	8002610 <__adddf3>
 80013f6:	4622      	mov	r2, r4
 80013f8:	462b      	mov	r3, r5
 80013fa:	f001 fabf 	bl	800297c <__aeabi_dmul>
 80013fe:	a380      	add	r3, pc, #512	; (adr r3, 8001600 <__ieee754_log+0x398>)
 8001400:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001404:	f001 f904 	bl	8002610 <__adddf3>
 8001408:	4622      	mov	r2, r4
 800140a:	462b      	mov	r3, r5
 800140c:	f001 fab6 	bl	800297c <__aeabi_dmul>
 8001410:	460b      	mov	r3, r1
 8001412:	4602      	mov	r2, r0
 8001414:	4649      	mov	r1, r9
 8001416:	4640      	mov	r0, r8
 8001418:	f001 f8fa 	bl	8002610 <__adddf3>
 800141c:	f5c7 27d7 	rsb	r7, r7, #440320	; 0x6b800
 8001420:	9b01      	ldr	r3, [sp, #4]
 8001422:	3751      	adds	r7, #81	; 0x51
 8001424:	431f      	orrs	r7, r3
 8001426:	2f00      	cmp	r7, #0
 8001428:	4680      	mov	r8, r0
 800142a:	4689      	mov	r9, r1
 800142c:	dd5f      	ble.n	80014ee <__ieee754_log+0x286>
 800142e:	4b7d      	ldr	r3, [pc, #500]	; (8001624 <__ieee754_log+0x3bc>)
 8001430:	2200      	movs	r2, #0
 8001432:	4650      	mov	r0, sl
 8001434:	4659      	mov	r1, fp
 8001436:	f001 faa1 	bl	800297c <__aeabi_dmul>
 800143a:	4652      	mov	r2, sl
 800143c:	465b      	mov	r3, fp
 800143e:	f001 fa9d 	bl	800297c <__aeabi_dmul>
 8001442:	4604      	mov	r4, r0
 8001444:	460d      	mov	r5, r1
 8001446:	2e00      	cmp	r6, #0
 8001448:	d169      	bne.n	800151e <__ieee754_log+0x2b6>
 800144a:	4622      	mov	r2, r4
 800144c:	462b      	mov	r3, r5
 800144e:	4640      	mov	r0, r8
 8001450:	4649      	mov	r1, r9
 8001452:	f001 f8dd 	bl	8002610 <__adddf3>
 8001456:	ec53 2b18 	vmov	r2, r3, d8
 800145a:	f001 fa8f 	bl	800297c <__aeabi_dmul>
 800145e:	4602      	mov	r2, r0
 8001460:	460b      	mov	r3, r1
 8001462:	4620      	mov	r0, r4
 8001464:	4629      	mov	r1, r5
 8001466:	f001 f8d1 	bl	800260c <__aeabi_dsub>
 800146a:	4602      	mov	r2, r0
 800146c:	460b      	mov	r3, r1
 800146e:	4650      	mov	r0, sl
 8001470:	4659      	mov	r1, fp
 8001472:	f001 f8cb 	bl	800260c <__aeabi_dsub>
 8001476:	ec41 0b10 	vmov	d0, r0, r1
 800147a:	b005      	add	sp, #20
 800147c:	ecbd 8b02 	vpop	{d8}
 8001480:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001484:	2200      	movs	r2, #0
 8001486:	2300      	movs	r3, #0
 8001488:	4967      	ldr	r1, [pc, #412]	; (8001628 <__ieee754_log+0x3c0>)
 800148a:	2000      	movs	r0, #0
 800148c:	f001 fba0 	bl	8002bd0 <__aeabi_ddiv>
 8001490:	ec41 0b10 	vmov	d0, r0, r1
 8001494:	b005      	add	sp, #20
 8001496:	ecbd 8b02 	vpop	{d8}
 800149a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800149e:	a35a      	add	r3, pc, #360	; (adr r3, 8001608 <__ieee754_log+0x3a0>)
 80014a0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80014a4:	4650      	mov	r0, sl
 80014a6:	4659      	mov	r1, fp
 80014a8:	f001 fa68 	bl	800297c <__aeabi_dmul>
 80014ac:	4602      	mov	r2, r0
 80014ae:	460b      	mov	r3, r1
 80014b0:	2000      	movs	r0, #0
 80014b2:	495c      	ldr	r1, [pc, #368]	; (8001624 <__ieee754_log+0x3bc>)
 80014b4:	f001 f8aa 	bl	800260c <__aeabi_dsub>
 80014b8:	4652      	mov	r2, sl
 80014ba:	4604      	mov	r4, r0
 80014bc:	460d      	mov	r5, r1
 80014be:	465b      	mov	r3, fp
 80014c0:	4650      	mov	r0, sl
 80014c2:	4659      	mov	r1, fp
 80014c4:	f001 fa5a 	bl	800297c <__aeabi_dmul>
 80014c8:	4602      	mov	r2, r0
 80014ca:	460b      	mov	r3, r1
 80014cc:	4620      	mov	r0, r4
 80014ce:	4629      	mov	r1, r5
 80014d0:	f001 fa54 	bl	800297c <__aeabi_dmul>
 80014d4:	4604      	mov	r4, r0
 80014d6:	460d      	mov	r5, r1
 80014d8:	2e00      	cmp	r6, #0
 80014da:	d159      	bne.n	8001590 <__ieee754_log+0x328>
 80014dc:	4602      	mov	r2, r0
 80014de:	460b      	mov	r3, r1
 80014e0:	4650      	mov	r0, sl
 80014e2:	4659      	mov	r1, fp
 80014e4:	f001 f892 	bl	800260c <__aeabi_dsub>
 80014e8:	ec41 0b10 	vmov	d0, r0, r1
 80014ec:	e72b      	b.n	8001346 <__ieee754_log+0xde>
 80014ee:	2e00      	cmp	r6, #0
 80014f0:	f040 809c 	bne.w	800162c <__ieee754_log+0x3c4>
 80014f4:	4602      	mov	r2, r0
 80014f6:	460b      	mov	r3, r1
 80014f8:	4650      	mov	r0, sl
 80014fa:	4659      	mov	r1, fp
 80014fc:	f001 f886 	bl	800260c <__aeabi_dsub>
 8001500:	ec53 2b18 	vmov	r2, r3, d8
 8001504:	f001 fa3a 	bl	800297c <__aeabi_dmul>
 8001508:	e7af      	b.n	800146a <__ieee754_log+0x202>
 800150a:	460b      	mov	r3, r1
 800150c:	f001 f87e 	bl	800260c <__aeabi_dsub>
 8001510:	2200      	movs	r2, #0
 8001512:	2300      	movs	r3, #0
 8001514:	f001 fb5c 	bl	8002bd0 <__aeabi_ddiv>
 8001518:	ec41 0b10 	vmov	d0, r0, r1
 800151c:	e713      	b.n	8001346 <__ieee754_log+0xde>
 800151e:	a328      	add	r3, pc, #160	; (adr r3, 80015c0 <__ieee754_log+0x358>)
 8001520:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001524:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8001528:	f001 fa28 	bl	800297c <__aeabi_dmul>
 800152c:	4622      	mov	r2, r4
 800152e:	462b      	mov	r3, r5
 8001530:	4606      	mov	r6, r0
 8001532:	460f      	mov	r7, r1
 8001534:	4640      	mov	r0, r8
 8001536:	4649      	mov	r1, r9
 8001538:	f001 f86a 	bl	8002610 <__adddf3>
 800153c:	ec53 2b18 	vmov	r2, r3, d8
 8001540:	f001 fa1c 	bl	800297c <__aeabi_dmul>
 8001544:	a320      	add	r3, pc, #128	; (adr r3, 80015c8 <__ieee754_log+0x360>)
 8001546:	e9d3 2300 	ldrd	r2, r3, [r3]
 800154a:	4680      	mov	r8, r0
 800154c:	4689      	mov	r9, r1
 800154e:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8001552:	f001 fa13 	bl	800297c <__aeabi_dmul>
 8001556:	4602      	mov	r2, r0
 8001558:	460b      	mov	r3, r1
 800155a:	4640      	mov	r0, r8
 800155c:	4649      	mov	r1, r9
 800155e:	f001 f857 	bl	8002610 <__adddf3>
 8001562:	4602      	mov	r2, r0
 8001564:	460b      	mov	r3, r1
 8001566:	4620      	mov	r0, r4
 8001568:	4629      	mov	r1, r5
 800156a:	f001 f84f 	bl	800260c <__aeabi_dsub>
 800156e:	4652      	mov	r2, sl
 8001570:	465b      	mov	r3, fp
 8001572:	f001 f84b 	bl	800260c <__aeabi_dsub>
 8001576:	4602      	mov	r2, r0
 8001578:	460b      	mov	r3, r1
 800157a:	4630      	mov	r0, r6
 800157c:	4639      	mov	r1, r7
 800157e:	f001 f845 	bl	800260c <__aeabi_dsub>
 8001582:	ec41 0b10 	vmov	d0, r0, r1
 8001586:	b005      	add	sp, #20
 8001588:	ecbd 8b02 	vpop	{d8}
 800158c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001590:	4630      	mov	r0, r6
 8001592:	f001 f989 	bl	80028a8 <__aeabi_i2d>
 8001596:	a30a      	add	r3, pc, #40	; (adr r3, 80015c0 <__ieee754_log+0x358>)
 8001598:	e9d3 2300 	ldrd	r2, r3, [r3]
 800159c:	4680      	mov	r8, r0
 800159e:	4689      	mov	r9, r1
 80015a0:	f001 f9ec 	bl	800297c <__aeabi_dmul>
 80015a4:	a308      	add	r3, pc, #32	; (adr r3, 80015c8 <__ieee754_log+0x360>)
 80015a6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80015aa:	4606      	mov	r6, r0
 80015ac:	460f      	mov	r7, r1
 80015ae:	4640      	mov	r0, r8
 80015b0:	4649      	mov	r1, r9
 80015b2:	f001 f9e3 	bl	800297c <__aeabi_dmul>
 80015b6:	e7d4      	b.n	8001562 <__ieee754_log+0x2fa>
 80015b8:	ed9f 0b15 	vldr	d0, [pc, #84]	; 8001610 <__ieee754_log+0x3a8>
 80015bc:	e6c3      	b.n	8001346 <__ieee754_log+0xde>
 80015be:	bf00      	nop
 80015c0:	fee00000 	.word	0xfee00000
 80015c4:	3fe62e42 	.word	0x3fe62e42
 80015c8:	35793c76 	.word	0x35793c76
 80015cc:	3dea39ef 	.word	0x3dea39ef
 80015d0:	df3e5244 	.word	0xdf3e5244
 80015d4:	3fc2f112 	.word	0x3fc2f112
 80015d8:	96cb03de 	.word	0x96cb03de
 80015dc:	3fc74664 	.word	0x3fc74664
 80015e0:	94229359 	.word	0x94229359
 80015e4:	3fd24924 	.word	0x3fd24924
 80015e8:	55555593 	.word	0x55555593
 80015ec:	3fe55555 	.word	0x3fe55555
 80015f0:	d078c69f 	.word	0xd078c69f
 80015f4:	3fc39a09 	.word	0x3fc39a09
 80015f8:	1d8e78af 	.word	0x1d8e78af
 80015fc:	3fcc71c5 	.word	0x3fcc71c5
 8001600:	9997fa04 	.word	0x9997fa04
 8001604:	3fd99999 	.word	0x3fd99999
 8001608:	55555555 	.word	0x55555555
 800160c:	3fd55555 	.word	0x3fd55555
	...
 8001618:	43500000 	.word	0x43500000
 800161c:	7fefffff 	.word	0x7fefffff
 8001620:	3ff00000 	.word	0x3ff00000
 8001624:	3fe00000 	.word	0x3fe00000
 8001628:	c3500000 	.word	0xc3500000
 800162c:	a318      	add	r3, pc, #96	; (adr r3, 8001690 <__ieee754_log+0x428>)
 800162e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001632:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8001636:	f001 f9a1 	bl	800297c <__aeabi_dmul>
 800163a:	4642      	mov	r2, r8
 800163c:	464b      	mov	r3, r9
 800163e:	4604      	mov	r4, r0
 8001640:	460d      	mov	r5, r1
 8001642:	4650      	mov	r0, sl
 8001644:	4659      	mov	r1, fp
 8001646:	f000 ffe1 	bl	800260c <__aeabi_dsub>
 800164a:	ec53 2b18 	vmov	r2, r3, d8
 800164e:	f001 f995 	bl	800297c <__aeabi_dmul>
 8001652:	a311      	add	r3, pc, #68	; (adr r3, 8001698 <__ieee754_log+0x430>)
 8001654:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001658:	4606      	mov	r6, r0
 800165a:	460f      	mov	r7, r1
 800165c:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
 8001660:	f001 f98c 	bl	800297c <__aeabi_dmul>
 8001664:	4602      	mov	r2, r0
 8001666:	460b      	mov	r3, r1
 8001668:	4630      	mov	r0, r6
 800166a:	4639      	mov	r1, r7
 800166c:	f000 ffce 	bl	800260c <__aeabi_dsub>
 8001670:	4652      	mov	r2, sl
 8001672:	465b      	mov	r3, fp
 8001674:	f000 ffca 	bl	800260c <__aeabi_dsub>
 8001678:	4602      	mov	r2, r0
 800167a:	460b      	mov	r3, r1
 800167c:	4620      	mov	r0, r4
 800167e:	4629      	mov	r1, r5
 8001680:	f000 ffc4 	bl	800260c <__aeabi_dsub>
 8001684:	ec41 0b10 	vmov	d0, r0, r1
 8001688:	e65d      	b.n	8001346 <__ieee754_log+0xde>
 800168a:	bf00      	nop
 800168c:	f3af 8000 	nop.w
 8001690:	fee00000 	.word	0xfee00000
 8001694:	3fe62e42 	.word	0x3fe62e42
 8001698:	35793c76 	.word	0x35793c76
 800169c:	3dea39ef 	.word	0x3dea39ef

080016a0 <__ieee754_pow>:
 80016a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80016a4:	ec57 6b11 	vmov	r6, r7, d1
 80016a8:	ed2d 8b0c 	vpush	{d8-d13}
 80016ac:	f027 4a00 	bic.w	sl, r7, #2147483648	; 0x80000000
 80016b0:	ea5a 0206 	orrs.w	r2, sl, r6
 80016b4:	b087      	sub	sp, #28
 80016b6:	d03d      	beq.n	8001734 <__ieee754_pow+0x94>
 80016b8:	ec55 4b10 	vmov	r4, r5, d0
 80016bc:	4972      	ldr	r1, [pc, #456]	; (8001888 <__ieee754_pow+0x1e8>)
 80016be:	f025 4800 	bic.w	r8, r5, #2147483648	; 0x80000000
 80016c2:	4588      	cmp	r8, r1
 80016c4:	ee10 2a10 	vmov	r2, s0
 80016c8:	46a9      	mov	r9, r5
 80016ca:	dc2c      	bgt.n	8001726 <__ieee754_pow+0x86>
 80016cc:	ee11 3a10 	vmov	r3, s2
 80016d0:	46bb      	mov	fp, r7
 80016d2:	d036      	beq.n	8001742 <__ieee754_pow+0xa2>
 80016d4:	458a      	cmp	sl, r1
 80016d6:	dc26      	bgt.n	8001726 <__ieee754_pow+0x86>
 80016d8:	496b      	ldr	r1, [pc, #428]	; (8001888 <__ieee754_pow+0x1e8>)
 80016da:	458a      	cmp	sl, r1
 80016dc:	d021      	beq.n	8001722 <__ieee754_pow+0x82>
 80016de:	f1b9 0f00 	cmp.w	r9, #0
 80016e2:	db39      	blt.n	8001758 <__ieee754_pow+0xb8>
 80016e4:	2100      	movs	r1, #0
 80016e6:	9100      	str	r1, [sp, #0]
 80016e8:	2b00      	cmp	r3, #0
 80016ea:	d151      	bne.n	8001790 <__ieee754_pow+0xf0>
 80016ec:	4b66      	ldr	r3, [pc, #408]	; (8001888 <__ieee754_pow+0x1e8>)
 80016ee:	459a      	cmp	sl, r3
 80016f0:	f000 80a2 	beq.w	8001838 <__ieee754_pow+0x198>
 80016f4:	4b65      	ldr	r3, [pc, #404]	; (800188c <__ieee754_pow+0x1ec>)
 80016f6:	459a      	cmp	sl, r3
 80016f8:	f000 80b0 	beq.w	800185c <__ieee754_pow+0x1bc>
 80016fc:	f1bb 4f80 	cmp.w	fp, #1073741824	; 0x40000000
 8001700:	f000 84c0 	beq.w	8002084 <__ieee754_pow+0x9e4>
 8001704:	4b62      	ldr	r3, [pc, #392]	; (8001890 <__ieee754_pow+0x1f0>)
 8001706:	459b      	cmp	fp, r3
 8001708:	d142      	bne.n	8001790 <__ieee754_pow+0xf0>
 800170a:	f1b9 0f00 	cmp.w	r9, #0
 800170e:	db3f      	blt.n	8001790 <__ieee754_pow+0xf0>
 8001710:	ec45 4b10 	vmov	d0, r4, r5
 8001714:	b007      	add	sp, #28
 8001716:	ecbd 8b0c 	vpop	{d8-d13}
 800171a:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800171e:	f000 bd59 	b.w	80021d4 <__ieee754_sqrt>
 8001722:	2b00      	cmp	r3, #0
 8001724:	d0db      	beq.n	80016de <__ieee754_pow+0x3e>
 8001726:	f108 4840 	add.w	r8, r8, #3221225472	; 0xc0000000
 800172a:	f508 1880 	add.w	r8, r8, #1048576	; 0x100000
 800172e:	ea58 0302 	orrs.w	r3, r8, r2
 8001732:	d109      	bne.n	8001748 <__ieee754_pow+0xa8>
 8001734:	ed9f 0b50 	vldr	d0, [pc, #320]	; 8001878 <__ieee754_pow+0x1d8>
 8001738:	b007      	add	sp, #28
 800173a:	ecbd 8b0c 	vpop	{d8-d13}
 800173e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001742:	b90c      	cbnz	r4, 8001748 <__ieee754_pow+0xa8>
 8001744:	45c2      	cmp	sl, r8
 8001746:	ddc7      	ble.n	80016d8 <__ieee754_pow+0x38>
 8001748:	4852      	ldr	r0, [pc, #328]	; (8001894 <__ieee754_pow+0x1f4>)
 800174a:	b007      	add	sp, #28
 800174c:	ecbd 8b0c 	vpop	{d8-d13}
 8001750:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001754:	f000 be20 	b.w	8002398 <nan>
 8001758:	494f      	ldr	r1, [pc, #316]	; (8001898 <__ieee754_pow+0x1f8>)
 800175a:	458a      	cmp	sl, r1
 800175c:	f300 8085 	bgt.w	800186a <__ieee754_pow+0x1ca>
 8001760:	f1a1 7154 	sub.w	r1, r1, #55574528	; 0x3500000
 8001764:	458a      	cmp	sl, r1
 8001766:	dd0f      	ble.n	8001788 <__ieee754_pow+0xe8>
 8001768:	ea4f 512a 	mov.w	r1, sl, asr #20
 800176c:	f2a1 31ff 	subw	r1, r1, #1023	; 0x3ff
 8001770:	2914      	cmp	r1, #20
 8001772:	f340 849b 	ble.w	80020ac <__ieee754_pow+0xa0c>
 8001776:	f1c1 0134 	rsb	r1, r1, #52	; 0x34
 800177a:	fa23 f001 	lsr.w	r0, r3, r1
 800177e:	fa00 f101 	lsl.w	r1, r0, r1
 8001782:	4299      	cmp	r1, r3
 8001784:	f000 84ed 	beq.w	8002162 <__ieee754_pow+0xac2>
 8001788:	2100      	movs	r1, #0
 800178a:	9100      	str	r1, [sp, #0]
 800178c:	2b00      	cmp	r3, #0
 800178e:	d0b1      	beq.n	80016f4 <__ieee754_pow+0x54>
 8001790:	ec45 4b10 	vmov	d0, r4, r5
 8001794:	9202      	str	r2, [sp, #8]
 8001796:	f000 fde9 	bl	800236c <fabs>
 800179a:	9a02      	ldr	r2, [sp, #8]
 800179c:	bb5a      	cbnz	r2, 80017f6 <__ieee754_pow+0x156>
 800179e:	f1b8 0f00 	cmp.w	r8, #0
 80017a2:	d004      	beq.n	80017ae <__ieee754_pow+0x10e>
 80017a4:	4b39      	ldr	r3, [pc, #228]	; (800188c <__ieee754_pow+0x1ec>)
 80017a6:	f029 4240 	bic.w	r2, r9, #3221225472	; 0xc0000000
 80017aa:	429a      	cmp	r2, r3
 80017ac:	d123      	bne.n	80017f6 <__ieee754_pow+0x156>
 80017ae:	f1bb 0f00 	cmp.w	fp, #0
 80017b2:	da07      	bge.n	80017c4 <__ieee754_pow+0x124>
 80017b4:	ec53 2b10 	vmov	r2, r3, d0
 80017b8:	4934      	ldr	r1, [pc, #208]	; (800188c <__ieee754_pow+0x1ec>)
 80017ba:	2000      	movs	r0, #0
 80017bc:	f001 fa08 	bl	8002bd0 <__aeabi_ddiv>
 80017c0:	ec41 0b10 	vmov	d0, r0, r1
 80017c4:	f1b9 0f00 	cmp.w	r9, #0
 80017c8:	dab6      	bge.n	8001738 <__ieee754_pow+0x98>
 80017ca:	9b00      	ldr	r3, [sp, #0]
 80017cc:	f108 4840 	add.w	r8, r8, #3221225472	; 0xc0000000
 80017d0:	f508 1880 	add.w	r8, r8, #1048576	; 0x100000
 80017d4:	ea58 0303 	orrs.w	r3, r8, r3
 80017d8:	f040 848d 	bne.w	80020f6 <__ieee754_pow+0xa56>
 80017dc:	ec53 2b10 	vmov	r2, r3, d0
 80017e0:	4610      	mov	r0, r2
 80017e2:	4619      	mov	r1, r3
 80017e4:	f000 ff12 	bl	800260c <__aeabi_dsub>
 80017e8:	4602      	mov	r2, r0
 80017ea:	460b      	mov	r3, r1
 80017ec:	f001 f9f0 	bl	8002bd0 <__aeabi_ddiv>
 80017f0:	ec41 0b10 	vmov	d0, r0, r1
 80017f4:	e7a0      	b.n	8001738 <__ieee754_pow+0x98>
 80017f6:	9a00      	ldr	r2, [sp, #0]
 80017f8:	ea4f 73d9 	mov.w	r3, r9, lsr #31
 80017fc:	3b01      	subs	r3, #1
 80017fe:	9304      	str	r3, [sp, #16]
 8001800:	4313      	orrs	r3, r2
 8001802:	d035      	beq.n	8001870 <__ieee754_pow+0x1d0>
 8001804:	4b25      	ldr	r3, [pc, #148]	; (800189c <__ieee754_pow+0x1fc>)
 8001806:	459a      	cmp	sl, r3
 8001808:	dd4c      	ble.n	80018a4 <__ieee754_pow+0x204>
 800180a:	f103 7304 	add.w	r3, r3, #34603008	; 0x2100000
 800180e:	459a      	cmp	sl, r3
 8001810:	4b23      	ldr	r3, [pc, #140]	; (80018a0 <__ieee754_pow+0x200>)
 8001812:	f340 83db 	ble.w	8001fcc <__ieee754_pow+0x92c>
 8001816:	4598      	cmp	r8, r3
 8001818:	f340 8360 	ble.w	8001edc <__ieee754_pow+0x83c>
 800181c:	f1bb 0f00 	cmp.w	fp, #0
 8001820:	f340 8360 	ble.w	8001ee4 <__ieee754_pow+0x844>
 8001824:	a316      	add	r3, pc, #88	; (adr r3, 8001880 <__ieee754_pow+0x1e0>)
 8001826:	e9d3 2300 	ldrd	r2, r3, [r3]
 800182a:	4610      	mov	r0, r2
 800182c:	4619      	mov	r1, r3
 800182e:	f001 f8a5 	bl	800297c <__aeabi_dmul>
 8001832:	ec41 0b10 	vmov	d0, r0, r1
 8001836:	e77f      	b.n	8001738 <__ieee754_pow+0x98>
 8001838:	f108 4340 	add.w	r3, r8, #3221225472	; 0xc0000000
 800183c:	f503 1380 	add.w	r3, r3, #1048576	; 0x100000
 8001840:	4313      	orrs	r3, r2
 8001842:	f43f af77 	beq.w	8001734 <__ieee754_pow+0x94>
 8001846:	4b16      	ldr	r3, [pc, #88]	; (80018a0 <__ieee754_pow+0x200>)
 8001848:	4598      	cmp	r8, r3
 800184a:	f340 837a 	ble.w	8001f42 <__ieee754_pow+0x8a2>
 800184e:	f1bb 0f00 	cmp.w	fp, #0
 8001852:	f2c0 8347 	blt.w	8001ee4 <__ieee754_pow+0x844>
 8001856:	ec47 6b10 	vmov	d0, r6, r7
 800185a:	e76d      	b.n	8001738 <__ieee754_pow+0x98>
 800185c:	f1bb 0f00 	cmp.w	fp, #0
 8001860:	f2c0 841a 	blt.w	8002098 <__ieee754_pow+0x9f8>
 8001864:	ec45 4b10 	vmov	d0, r4, r5
 8001868:	e766      	b.n	8001738 <__ieee754_pow+0x98>
 800186a:	2102      	movs	r1, #2
 800186c:	9100      	str	r1, [sp, #0]
 800186e:	e73b      	b.n	80016e8 <__ieee754_pow+0x48>
 8001870:	4622      	mov	r2, r4
 8001872:	462b      	mov	r3, r5
 8001874:	e7b4      	b.n	80017e0 <__ieee754_pow+0x140>
 8001876:	bf00      	nop
 8001878:	00000000 	.word	0x00000000
 800187c:	3ff00000 	.word	0x3ff00000
 8001880:	8800759c 	.word	0x8800759c
 8001884:	7e37e43c 	.word	0x7e37e43c
 8001888:	7ff00000 	.word	0x7ff00000
 800188c:	3ff00000 	.word	0x3ff00000
 8001890:	3fe00000 	.word	0x3fe00000
 8001894:	0800d824 	.word	0x0800d824
 8001898:	433fffff 	.word	0x433fffff
 800189c:	41e00000 	.word	0x41e00000
 80018a0:	3fefffff 	.word	0x3fefffff
 80018a4:	4be4      	ldr	r3, [pc, #912]	; (8001c38 <__ieee754_pow+0x598>)
 80018a6:	ea09 0303 	and.w	r3, r9, r3
 80018aa:	2200      	movs	r2, #0
 80018ac:	b953      	cbnz	r3, 80018c4 <__ieee754_pow+0x224>
 80018ae:	ec51 0b10 	vmov	r0, r1, d0
 80018b2:	4be2      	ldr	r3, [pc, #904]	; (8001c3c <__ieee754_pow+0x59c>)
 80018b4:	f001 f862 	bl	800297c <__aeabi_dmul>
 80018b8:	ec41 0b10 	vmov	d0, r0, r1
 80018bc:	ee10 8a90 	vmov	r8, s1
 80018c0:	f06f 0234 	mvn.w	r2, #52	; 0x34
 80018c4:	ea4f 5328 	mov.w	r3, r8, asr #20
 80018c8:	f2a3 33ff 	subw	r3, r3, #1023	; 0x3ff
 80018cc:	189a      	adds	r2, r3, r2
 80018ce:	4bdc      	ldr	r3, [pc, #880]	; (8001c40 <__ieee754_pow+0x5a0>)
 80018d0:	9205      	str	r2, [sp, #20]
 80018d2:	f3c8 0813 	ubfx	r8, r8, #0, #20
 80018d6:	f048 547f 	orr.w	r4, r8, #1069547520	; 0x3fc00000
 80018da:	4598      	cmp	r8, r3
 80018dc:	f444 1440 	orr.w	r4, r4, #3145728	; 0x300000
 80018e0:	dd07      	ble.n	80018f2 <__ieee754_pow+0x252>
 80018e2:	4bd8      	ldr	r3, [pc, #864]	; (8001c44 <__ieee754_pow+0x5a4>)
 80018e4:	4598      	cmp	r8, r3
 80018e6:	f340 8414 	ble.w	8002112 <__ieee754_pow+0xa72>
 80018ea:	3201      	adds	r2, #1
 80018ec:	9205      	str	r2, [sp, #20]
 80018ee:	f5a4 1480 	sub.w	r4, r4, #1048576	; 0x100000
 80018f2:	ed9f 6bb9 	vldr	d6, [pc, #740]	; 8001bd8 <__ieee754_pow+0x538>
 80018f6:	ed9f 7bba 	vldr	d7, [pc, #744]	; 8001be0 <__ieee754_pow+0x540>
 80018fa:	ec53 2b16 	vmov	r2, r3, d6
 80018fe:	eeb0 ca47 	vmov.f32	s24, s14
 8001902:	eef0 ca67 	vmov.f32	s25, s15
 8001906:	2500      	movs	r5, #0
 8001908:	eeb0 da47 	vmov.f32	s26, s14
 800190c:	eef0 da67 	vmov.f32	s27, s15
 8001910:	ec5b ab10 	vmov	sl, fp, d0
 8001914:	46a3      	mov	fp, r4
 8001916:	4650      	mov	r0, sl
 8001918:	4659      	mov	r1, fp
 800191a:	ec43 2b1a 	vmov	d10, r2, r3
 800191e:	f000 fe75 	bl	800260c <__aeabi_dsub>
 8001922:	ec53 2b1a 	vmov	r2, r3, d10
 8001926:	4680      	mov	r8, r0
 8001928:	4689      	mov	r9, r1
 800192a:	4650      	mov	r0, sl
 800192c:	4659      	mov	r1, fp
 800192e:	f000 fe6f 	bl	8002610 <__adddf3>
 8001932:	4602      	mov	r2, r0
 8001934:	460b      	mov	r3, r1
 8001936:	2000      	movs	r0, #0
 8001938:	49c3      	ldr	r1, [pc, #780]	; (8001c48 <__ieee754_pow+0x5a8>)
 800193a:	f001 f949 	bl	8002bd0 <__aeabi_ddiv>
 800193e:	ec41 0b1b 	vmov	d11, r0, r1
 8001942:	4640      	mov	r0, r8
 8001944:	ec53 2b1b 	vmov	r2, r3, d11
 8001948:	4649      	mov	r1, r9
 800194a:	f001 f817 	bl	800297c <__aeabi_dmul>
 800194e:	ec41 0b18 	vmov	d8, r0, r1
 8001952:	460a      	mov	r2, r1
 8001954:	4601      	mov	r1, r0
 8001956:	e9cd 1202 	strd	r1, r2, [sp, #8]
 800195a:	2100      	movs	r1, #0
 800195c:	9102      	str	r1, [sp, #8]
 800195e:	1064      	asrs	r4, r4, #1
 8001960:	ec4b ab19 	vmov	d9, sl, fp
 8001964:	f044 5400 	orr.w	r4, r4, #536870912	; 0x20000000
 8001968:	e9dd ab02 	ldrd	sl, fp, [sp, #8]
 800196c:	f504 2300 	add.w	r3, r4, #524288	; 0x80000
 8001970:	2000      	movs	r0, #0
 8001972:	1959      	adds	r1, r3, r5
 8001974:	4604      	mov	r4, r0
 8001976:	460d      	mov	r5, r1
 8001978:	4602      	mov	r2, r0
 800197a:	460b      	mov	r3, r1
 800197c:	4650      	mov	r0, sl
 800197e:	4659      	mov	r1, fp
 8001980:	f000 fffc 	bl	800297c <__aeabi_dmul>
 8001984:	4602      	mov	r2, r0
 8001986:	460b      	mov	r3, r1
 8001988:	4640      	mov	r0, r8
 800198a:	4649      	mov	r1, r9
 800198c:	f000 fe3e 	bl	800260c <__aeabi_dsub>
 8001990:	ec53 2b1a 	vmov	r2, r3, d10
 8001994:	4680      	mov	r8, r0
 8001996:	4689      	mov	r9, r1
 8001998:	4620      	mov	r0, r4
 800199a:	4629      	mov	r1, r5
 800199c:	f000 fe36 	bl	800260c <__aeabi_dsub>
 80019a0:	4602      	mov	r2, r0
 80019a2:	460b      	mov	r3, r1
 80019a4:	ec51 0b19 	vmov	r0, r1, d9
 80019a8:	f000 fe30 	bl	800260c <__aeabi_dsub>
 80019ac:	4652      	mov	r2, sl
 80019ae:	465b      	mov	r3, fp
 80019b0:	f000 ffe4 	bl	800297c <__aeabi_dmul>
 80019b4:	4602      	mov	r2, r0
 80019b6:	460b      	mov	r3, r1
 80019b8:	4640      	mov	r0, r8
 80019ba:	4649      	mov	r1, r9
 80019bc:	f000 fe26 	bl	800260c <__aeabi_dsub>
 80019c0:	ec53 2b1b 	vmov	r2, r3, d11
 80019c4:	f000 ffda 	bl	800297c <__aeabi_dmul>
 80019c8:	ec53 2b18 	vmov	r2, r3, d8
 80019cc:	ec41 0b19 	vmov	d9, r0, r1
 80019d0:	ec51 0b18 	vmov	r0, r1, d8
 80019d4:	f000 ffd2 	bl	800297c <__aeabi_dmul>
 80019d8:	a383      	add	r3, pc, #524	; (adr r3, 8001be8 <__ieee754_pow+0x548>)
 80019da:	e9d3 2300 	ldrd	r2, r3, [r3]
 80019de:	4604      	mov	r4, r0
 80019e0:	460d      	mov	r5, r1
 80019e2:	f000 ffcb 	bl	800297c <__aeabi_dmul>
 80019e6:	a382      	add	r3, pc, #520	; (adr r3, 8001bf0 <__ieee754_pow+0x550>)
 80019e8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80019ec:	f000 fe10 	bl	8002610 <__adddf3>
 80019f0:	4622      	mov	r2, r4
 80019f2:	462b      	mov	r3, r5
 80019f4:	f000 ffc2 	bl	800297c <__aeabi_dmul>
 80019f8:	a37f      	add	r3, pc, #508	; (adr r3, 8001bf8 <__ieee754_pow+0x558>)
 80019fa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80019fe:	f000 fe07 	bl	8002610 <__adddf3>
 8001a02:	4622      	mov	r2, r4
 8001a04:	462b      	mov	r3, r5
 8001a06:	f000 ffb9 	bl	800297c <__aeabi_dmul>
 8001a0a:	a37d      	add	r3, pc, #500	; (adr r3, 8001c00 <__ieee754_pow+0x560>)
 8001a0c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001a10:	f000 fdfe 	bl	8002610 <__adddf3>
 8001a14:	4622      	mov	r2, r4
 8001a16:	462b      	mov	r3, r5
 8001a18:	f000 ffb0 	bl	800297c <__aeabi_dmul>
 8001a1c:	a37a      	add	r3, pc, #488	; (adr r3, 8001c08 <__ieee754_pow+0x568>)
 8001a1e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001a22:	f000 fdf5 	bl	8002610 <__adddf3>
 8001a26:	4622      	mov	r2, r4
 8001a28:	462b      	mov	r3, r5
 8001a2a:	f000 ffa7 	bl	800297c <__aeabi_dmul>
 8001a2e:	a378      	add	r3, pc, #480	; (adr r3, 8001c10 <__ieee754_pow+0x570>)
 8001a30:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001a34:	f000 fdec 	bl	8002610 <__adddf3>
 8001a38:	4622      	mov	r2, r4
 8001a3a:	4680      	mov	r8, r0
 8001a3c:	4689      	mov	r9, r1
 8001a3e:	462b      	mov	r3, r5
 8001a40:	4620      	mov	r0, r4
 8001a42:	4629      	mov	r1, r5
 8001a44:	f000 ff9a 	bl	800297c <__aeabi_dmul>
 8001a48:	4602      	mov	r2, r0
 8001a4a:	460b      	mov	r3, r1
 8001a4c:	4640      	mov	r0, r8
 8001a4e:	4649      	mov	r1, r9
 8001a50:	f000 ff94 	bl	800297c <__aeabi_dmul>
 8001a54:	4652      	mov	r2, sl
 8001a56:	4604      	mov	r4, r0
 8001a58:	460d      	mov	r5, r1
 8001a5a:	465b      	mov	r3, fp
 8001a5c:	ec51 0b18 	vmov	r0, r1, d8
 8001a60:	f000 fdd6 	bl	8002610 <__adddf3>
 8001a64:	ec53 2b19 	vmov	r2, r3, d9
 8001a68:	f000 ff88 	bl	800297c <__aeabi_dmul>
 8001a6c:	4622      	mov	r2, r4
 8001a6e:	462b      	mov	r3, r5
 8001a70:	f000 fdce 	bl	8002610 <__adddf3>
 8001a74:	4652      	mov	r2, sl
 8001a76:	4680      	mov	r8, r0
 8001a78:	4689      	mov	r9, r1
 8001a7a:	465b      	mov	r3, fp
 8001a7c:	4650      	mov	r0, sl
 8001a7e:	4659      	mov	r1, fp
 8001a80:	f000 ff7c 	bl	800297c <__aeabi_dmul>
 8001a84:	4602      	mov	r2, r0
 8001a86:	460b      	mov	r3, r1
 8001a88:	ec43 2b1a 	vmov	d10, r2, r3
 8001a8c:	4b6f      	ldr	r3, [pc, #444]	; (8001c4c <__ieee754_pow+0x5ac>)
 8001a8e:	2200      	movs	r2, #0
 8001a90:	f000 fdbe 	bl	8002610 <__adddf3>
 8001a94:	4642      	mov	r2, r8
 8001a96:	464b      	mov	r3, r9
 8001a98:	f000 fdba 	bl	8002610 <__adddf3>
 8001a9c:	2400      	movs	r4, #0
 8001a9e:	460d      	mov	r5, r1
 8001aa0:	4622      	mov	r2, r4
 8001aa2:	462b      	mov	r3, r5
 8001aa4:	4650      	mov	r0, sl
 8001aa6:	4659      	mov	r1, fp
 8001aa8:	f000 ff68 	bl	800297c <__aeabi_dmul>
 8001aac:	4b67      	ldr	r3, [pc, #412]	; (8001c4c <__ieee754_pow+0x5ac>)
 8001aae:	4682      	mov	sl, r0
 8001ab0:	468b      	mov	fp, r1
 8001ab2:	2200      	movs	r2, #0
 8001ab4:	4620      	mov	r0, r4
 8001ab6:	4629      	mov	r1, r5
 8001ab8:	f000 fda8 	bl	800260c <__aeabi_dsub>
 8001abc:	ec53 2b1a 	vmov	r2, r3, d10
 8001ac0:	f000 fda4 	bl	800260c <__aeabi_dsub>
 8001ac4:	4602      	mov	r2, r0
 8001ac6:	460b      	mov	r3, r1
 8001ac8:	4640      	mov	r0, r8
 8001aca:	4649      	mov	r1, r9
 8001acc:	f000 fd9e 	bl	800260c <__aeabi_dsub>
 8001ad0:	ec53 2b18 	vmov	r2, r3, d8
 8001ad4:	f000 ff52 	bl	800297c <__aeabi_dmul>
 8001ad8:	4622      	mov	r2, r4
 8001ada:	462b      	mov	r3, r5
 8001adc:	4604      	mov	r4, r0
 8001ade:	460d      	mov	r5, r1
 8001ae0:	ec51 0b19 	vmov	r0, r1, d9
 8001ae4:	f000 ff4a 	bl	800297c <__aeabi_dmul>
 8001ae8:	4602      	mov	r2, r0
 8001aea:	460b      	mov	r3, r1
 8001aec:	4620      	mov	r0, r4
 8001aee:	4629      	mov	r1, r5
 8001af0:	f000 fd8e 	bl	8002610 <__adddf3>
 8001af4:	4680      	mov	r8, r0
 8001af6:	4689      	mov	r9, r1
 8001af8:	4642      	mov	r2, r8
 8001afa:	464b      	mov	r3, r9
 8001afc:	4650      	mov	r0, sl
 8001afe:	4659      	mov	r1, fp
 8001b00:	f000 fd86 	bl	8002610 <__adddf3>
 8001b04:	a344      	add	r3, pc, #272	; (adr r3, 8001c18 <__ieee754_pow+0x578>)
 8001b06:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001b0a:	2000      	movs	r0, #0
 8001b0c:	4604      	mov	r4, r0
 8001b0e:	460d      	mov	r5, r1
 8001b10:	f000 ff34 	bl	800297c <__aeabi_dmul>
 8001b14:	4652      	mov	r2, sl
 8001b16:	ec41 0b19 	vmov	d9, r0, r1
 8001b1a:	465b      	mov	r3, fp
 8001b1c:	4620      	mov	r0, r4
 8001b1e:	4629      	mov	r1, r5
 8001b20:	f000 fd74 	bl	800260c <__aeabi_dsub>
 8001b24:	4602      	mov	r2, r0
 8001b26:	460b      	mov	r3, r1
 8001b28:	4640      	mov	r0, r8
 8001b2a:	4649      	mov	r1, r9
 8001b2c:	f000 fd6e 	bl	800260c <__aeabi_dsub>
 8001b30:	a33b      	add	r3, pc, #236	; (adr r3, 8001c20 <__ieee754_pow+0x580>)
 8001b32:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001b36:	f000 ff21 	bl	800297c <__aeabi_dmul>
 8001b3a:	4602      	mov	r2, r0
 8001b3c:	460b      	mov	r3, r1
 8001b3e:	4620      	mov	r0, r4
 8001b40:	4629      	mov	r1, r5
 8001b42:	4614      	mov	r4, r2
 8001b44:	461d      	mov	r5, r3
 8001b46:	a338      	add	r3, pc, #224	; (adr r3, 8001c28 <__ieee754_pow+0x588>)
 8001b48:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001b4c:	f000 ff16 	bl	800297c <__aeabi_dmul>
 8001b50:	4602      	mov	r2, r0
 8001b52:	460b      	mov	r3, r1
 8001b54:	4620      	mov	r0, r4
 8001b56:	4629      	mov	r1, r5
 8001b58:	f000 fd5a 	bl	8002610 <__adddf3>
 8001b5c:	ec53 2b1d 	vmov	r2, r3, d13
 8001b60:	f000 fd56 	bl	8002610 <__adddf3>
 8001b64:	4680      	mov	r8, r0
 8001b66:	9805      	ldr	r0, [sp, #20]
 8001b68:	4689      	mov	r9, r1
 8001b6a:	f000 fe9d 	bl	80028a8 <__aeabi_i2d>
 8001b6e:	4642      	mov	r2, r8
 8001b70:	4682      	mov	sl, r0
 8001b72:	468b      	mov	fp, r1
 8001b74:	464b      	mov	r3, r9
 8001b76:	ec51 0b19 	vmov	r0, r1, d9
 8001b7a:	f000 fd49 	bl	8002610 <__adddf3>
 8001b7e:	ec53 2b1c 	vmov	r2, r3, d12
 8001b82:	f000 fd45 	bl	8002610 <__adddf3>
 8001b86:	4652      	mov	r2, sl
 8001b88:	465b      	mov	r3, fp
 8001b8a:	f000 fd41 	bl	8002610 <__adddf3>
 8001b8e:	4652      	mov	r2, sl
 8001b90:	465b      	mov	r3, fp
 8001b92:	2000      	movs	r0, #0
 8001b94:	4604      	mov	r4, r0
 8001b96:	460d      	mov	r5, r1
 8001b98:	f000 fd38 	bl	800260c <__aeabi_dsub>
 8001b9c:	ec53 2b1c 	vmov	r2, r3, d12
 8001ba0:	f000 fd34 	bl	800260c <__aeabi_dsub>
 8001ba4:	ec53 2b19 	vmov	r2, r3, d9
 8001ba8:	f000 fd30 	bl	800260c <__aeabi_dsub>
 8001bac:	4602      	mov	r2, r0
 8001bae:	460b      	mov	r3, r1
 8001bb0:	4640      	mov	r0, r8
 8001bb2:	4649      	mov	r1, r9
 8001bb4:	f000 fd2a 	bl	800260c <__aeabi_dsub>
 8001bb8:	9b00      	ldr	r3, [sp, #0]
 8001bba:	9a04      	ldr	r2, [sp, #16]
 8001bbc:	3b01      	subs	r3, #1
 8001bbe:	4313      	orrs	r3, r2
 8001bc0:	4682      	mov	sl, r0
 8001bc2:	468b      	mov	fp, r1
 8001bc4:	f040 81b6 	bne.w	8001f34 <__ieee754_pow+0x894>
 8001bc8:	ed9f 7b19 	vldr	d7, [pc, #100]	; 8001c30 <__ieee754_pow+0x590>
 8001bcc:	eeb0 8a47 	vmov.f32	s16, s14
 8001bd0:	eef0 8a67 	vmov.f32	s17, s15
 8001bd4:	e03c      	b.n	8001c50 <__ieee754_pow+0x5b0>
 8001bd6:	bf00      	nop
 8001bd8:	00000000 	.word	0x00000000
 8001bdc:	3ff00000 	.word	0x3ff00000
	...
 8001be8:	4a454eef 	.word	0x4a454eef
 8001bec:	3fca7e28 	.word	0x3fca7e28
 8001bf0:	93c9db65 	.word	0x93c9db65
 8001bf4:	3fcd864a 	.word	0x3fcd864a
 8001bf8:	a91d4101 	.word	0xa91d4101
 8001bfc:	3fd17460 	.word	0x3fd17460
 8001c00:	518f264d 	.word	0x518f264d
 8001c04:	3fd55555 	.word	0x3fd55555
 8001c08:	db6fabff 	.word	0xdb6fabff
 8001c0c:	3fdb6db6 	.word	0x3fdb6db6
 8001c10:	33333303 	.word	0x33333303
 8001c14:	3fe33333 	.word	0x3fe33333
 8001c18:	e0000000 	.word	0xe0000000
 8001c1c:	3feec709 	.word	0x3feec709
 8001c20:	dc3a03fd 	.word	0xdc3a03fd
 8001c24:	3feec709 	.word	0x3feec709
 8001c28:	145b01f5 	.word	0x145b01f5
 8001c2c:	be3e2fe0 	.word	0xbe3e2fe0
 8001c30:	00000000 	.word	0x00000000
 8001c34:	bff00000 	.word	0xbff00000
 8001c38:	7ff00000 	.word	0x7ff00000
 8001c3c:	43400000 	.word	0x43400000
 8001c40:	0003988e 	.word	0x0003988e
 8001c44:	000bb679 	.word	0x000bb679
 8001c48:	3ff00000 	.word	0x3ff00000
 8001c4c:	40080000 	.word	0x40080000
 8001c50:	2300      	movs	r3, #0
 8001c52:	e9cd 6700 	strd	r6, r7, [sp]
 8001c56:	9300      	str	r3, [sp, #0]
 8001c58:	e9dd 8900 	ldrd	r8, r9, [sp]
 8001c5c:	4630      	mov	r0, r6
 8001c5e:	4642      	mov	r2, r8
 8001c60:	464b      	mov	r3, r9
 8001c62:	4639      	mov	r1, r7
 8001c64:	f000 fcd2 	bl	800260c <__aeabi_dsub>
 8001c68:	4622      	mov	r2, r4
 8001c6a:	462b      	mov	r3, r5
 8001c6c:	f000 fe86 	bl	800297c <__aeabi_dmul>
 8001c70:	4632      	mov	r2, r6
 8001c72:	463b      	mov	r3, r7
 8001c74:	4606      	mov	r6, r0
 8001c76:	460f      	mov	r7, r1
 8001c78:	4650      	mov	r0, sl
 8001c7a:	4659      	mov	r1, fp
 8001c7c:	f000 fe7e 	bl	800297c <__aeabi_dmul>
 8001c80:	4602      	mov	r2, r0
 8001c82:	460b      	mov	r3, r1
 8001c84:	4630      	mov	r0, r6
 8001c86:	4639      	mov	r1, r7
 8001c88:	f000 fcc2 	bl	8002610 <__adddf3>
 8001c8c:	4642      	mov	r2, r8
 8001c8e:	464b      	mov	r3, r9
 8001c90:	4606      	mov	r6, r0
 8001c92:	460f      	mov	r7, r1
 8001c94:	4620      	mov	r0, r4
 8001c96:	4629      	mov	r1, r5
 8001c98:	f000 fe70 	bl	800297c <__aeabi_dmul>
 8001c9c:	4604      	mov	r4, r0
 8001c9e:	460d      	mov	r5, r1
 8001ca0:	462b      	mov	r3, r5
 8001ca2:	4630      	mov	r0, r6
 8001ca4:	4639      	mov	r1, r7
 8001ca6:	4622      	mov	r2, r4
 8001ca8:	f000 fcb2 	bl	8002610 <__adddf3>
 8001cac:	4bc2      	ldr	r3, [pc, #776]	; (8001fb8 <__ieee754_pow+0x918>)
 8001cae:	4299      	cmp	r1, r3
 8001cb0:	4680      	mov	r8, r0
 8001cb2:	4689      	mov	r9, r1
 8001cb4:	468a      	mov	sl, r1
 8001cb6:	f340 8118 	ble.w	8001eea <__ieee754_pow+0x84a>
 8001cba:	f101 433f 	add.w	r3, r1, #3204448256	; 0xbf000000
 8001cbe:	f503 03e0 	add.w	r3, r3, #7340032	; 0x700000
 8001cc2:	4303      	orrs	r3, r0
 8001cc4:	f040 8207 	bne.w	80020d6 <__ieee754_pow+0xa36>
 8001cc8:	a3a3      	add	r3, pc, #652	; (adr r3, 8001f58 <__ieee754_pow+0x8b8>)
 8001cca:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001cce:	4630      	mov	r0, r6
 8001cd0:	4639      	mov	r1, r7
 8001cd2:	f000 fc9d 	bl	8002610 <__adddf3>
 8001cd6:	4602      	mov	r2, r0
 8001cd8:	460b      	mov	r3, r1
 8001cda:	4640      	mov	r0, r8
 8001cdc:	4649      	mov	r1, r9
 8001cde:	4690      	mov	r8, r2
 8001ce0:	4699      	mov	r9, r3
 8001ce2:	4622      	mov	r2, r4
 8001ce4:	462b      	mov	r3, r5
 8001ce6:	f000 fc91 	bl	800260c <__aeabi_dsub>
 8001cea:	4602      	mov	r2, r0
 8001cec:	460b      	mov	r3, r1
 8001cee:	4640      	mov	r0, r8
 8001cf0:	4649      	mov	r1, r9
 8001cf2:	f001 f8d3 	bl	8002e9c <__aeabi_dcmpgt>
 8001cf6:	2800      	cmp	r0, #0
 8001cf8:	f040 81ed 	bne.w	80020d6 <__ieee754_pow+0xa36>
 8001cfc:	f3ca 530a 	ubfx	r3, sl, #20, #11
 8001d00:	f44f 1280 	mov.w	r2, #1048576	; 0x100000
 8001d04:	f2a3 33fe 	subw	r3, r3, #1022	; 0x3fe
 8001d08:	fa42 f303 	asr.w	r3, r2, r3
 8001d0c:	4453      	add	r3, sl
 8001d0e:	49ab      	ldr	r1, [pc, #684]	; (8001fbc <__ieee754_pow+0x91c>)
 8001d10:	f3c3 520a 	ubfx	r2, r3, #20, #11
 8001d14:	f2a2 32ff 	subw	r2, r2, #1023	; 0x3ff
 8001d18:	fa41 fc02 	asr.w	ip, r1, r2
 8001d1c:	f3c3 0113 	ubfx	r1, r3, #0, #20
 8001d20:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8001d24:	f1c2 0214 	rsb	r2, r2, #20
 8001d28:	fa41 f202 	asr.w	r2, r1, r2
 8001d2c:	2000      	movs	r0, #0
 8001d2e:	ea23 010c 	bic.w	r1, r3, ip
 8001d32:	f1ba 0f00 	cmp.w	sl, #0
 8001d36:	9200      	str	r2, [sp, #0]
 8001d38:	460b      	mov	r3, r1
 8001d3a:	4602      	mov	r2, r0
 8001d3c:	da02      	bge.n	8001d44 <__ieee754_pow+0x6a4>
 8001d3e:	9900      	ldr	r1, [sp, #0]
 8001d40:	4249      	negs	r1, r1
 8001d42:	9100      	str	r1, [sp, #0]
 8001d44:	4620      	mov	r0, r4
 8001d46:	4629      	mov	r1, r5
 8001d48:	f000 fc60 	bl	800260c <__aeabi_dsub>
 8001d4c:	9b00      	ldr	r3, [sp, #0]
 8001d4e:	051b      	lsls	r3, r3, #20
 8001d50:	9302      	str	r3, [sp, #8]
 8001d52:	4602      	mov	r2, r0
 8001d54:	460b      	mov	r3, r1
 8001d56:	4604      	mov	r4, r0
 8001d58:	460d      	mov	r5, r1
 8001d5a:	4630      	mov	r0, r6
 8001d5c:	4639      	mov	r1, r7
 8001d5e:	f000 fc57 	bl	8002610 <__adddf3>
 8001d62:	4689      	mov	r9, r1
 8001d64:	f04f 0800 	mov.w	r8, #0
 8001d68:	a37d      	add	r3, pc, #500	; (adr r3, 8001f60 <__ieee754_pow+0x8c0>)
 8001d6a:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001d6e:	4640      	mov	r0, r8
 8001d70:	4649      	mov	r1, r9
 8001d72:	f000 fe03 	bl	800297c <__aeabi_dmul>
 8001d76:	4622      	mov	r2, r4
 8001d78:	462b      	mov	r3, r5
 8001d7a:	4682      	mov	sl, r0
 8001d7c:	468b      	mov	fp, r1
 8001d7e:	4640      	mov	r0, r8
 8001d80:	4649      	mov	r1, r9
 8001d82:	f000 fc43 	bl	800260c <__aeabi_dsub>
 8001d86:	4602      	mov	r2, r0
 8001d88:	460b      	mov	r3, r1
 8001d8a:	4630      	mov	r0, r6
 8001d8c:	4639      	mov	r1, r7
 8001d8e:	f000 fc3d 	bl	800260c <__aeabi_dsub>
 8001d92:	a375      	add	r3, pc, #468	; (adr r3, 8001f68 <__ieee754_pow+0x8c8>)
 8001d94:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001d98:	f000 fdf0 	bl	800297c <__aeabi_dmul>
 8001d9c:	a374      	add	r3, pc, #464	; (adr r3, 8001f70 <__ieee754_pow+0x8d0>)
 8001d9e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001da2:	4604      	mov	r4, r0
 8001da4:	460d      	mov	r5, r1
 8001da6:	4640      	mov	r0, r8
 8001da8:	4649      	mov	r1, r9
 8001daa:	f000 fde7 	bl	800297c <__aeabi_dmul>
 8001dae:	4602      	mov	r2, r0
 8001db0:	460b      	mov	r3, r1
 8001db2:	4620      	mov	r0, r4
 8001db4:	4629      	mov	r1, r5
 8001db6:	f000 fc2b 	bl	8002610 <__adddf3>
 8001dba:	4606      	mov	r6, r0
 8001dbc:	460f      	mov	r7, r1
 8001dbe:	4632      	mov	r2, r6
 8001dc0:	463b      	mov	r3, r7
 8001dc2:	4650      	mov	r0, sl
 8001dc4:	4659      	mov	r1, fp
 8001dc6:	f000 fc23 	bl	8002610 <__adddf3>
 8001dca:	4652      	mov	r2, sl
 8001dcc:	465b      	mov	r3, fp
 8001dce:	4604      	mov	r4, r0
 8001dd0:	460d      	mov	r5, r1
 8001dd2:	f000 fc1b 	bl	800260c <__aeabi_dsub>
 8001dd6:	4602      	mov	r2, r0
 8001dd8:	460b      	mov	r3, r1
 8001dda:	4630      	mov	r0, r6
 8001ddc:	4639      	mov	r1, r7
 8001dde:	f000 fc15 	bl	800260c <__aeabi_dsub>
 8001de2:	4622      	mov	r2, r4
 8001de4:	4680      	mov	r8, r0
 8001de6:	4689      	mov	r9, r1
 8001de8:	462b      	mov	r3, r5
 8001dea:	4620      	mov	r0, r4
 8001dec:	4629      	mov	r1, r5
 8001dee:	f000 fdc5 	bl	800297c <__aeabi_dmul>
 8001df2:	a361      	add	r3, pc, #388	; (adr r3, 8001f78 <__ieee754_pow+0x8d8>)
 8001df4:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001df8:	4606      	mov	r6, r0
 8001dfa:	460f      	mov	r7, r1
 8001dfc:	f000 fdbe 	bl	800297c <__aeabi_dmul>
 8001e00:	a35f      	add	r3, pc, #380	; (adr r3, 8001f80 <__ieee754_pow+0x8e0>)
 8001e02:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001e06:	f000 fc01 	bl	800260c <__aeabi_dsub>
 8001e0a:	4632      	mov	r2, r6
 8001e0c:	463b      	mov	r3, r7
 8001e0e:	f000 fdb5 	bl	800297c <__aeabi_dmul>
 8001e12:	a35d      	add	r3, pc, #372	; (adr r3, 8001f88 <__ieee754_pow+0x8e8>)
 8001e14:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001e18:	f000 fbfa 	bl	8002610 <__adddf3>
 8001e1c:	4632      	mov	r2, r6
 8001e1e:	463b      	mov	r3, r7
 8001e20:	f000 fdac 	bl	800297c <__aeabi_dmul>
 8001e24:	a35a      	add	r3, pc, #360	; (adr r3, 8001f90 <__ieee754_pow+0x8f0>)
 8001e26:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001e2a:	f000 fbef 	bl	800260c <__aeabi_dsub>
 8001e2e:	4632      	mov	r2, r6
 8001e30:	463b      	mov	r3, r7
 8001e32:	f000 fda3 	bl	800297c <__aeabi_dmul>
 8001e36:	a358      	add	r3, pc, #352	; (adr r3, 8001f98 <__ieee754_pow+0x8f8>)
 8001e38:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001e3c:	f000 fbe8 	bl	8002610 <__adddf3>
 8001e40:	4632      	mov	r2, r6
 8001e42:	463b      	mov	r3, r7
 8001e44:	f000 fd9a 	bl	800297c <__aeabi_dmul>
 8001e48:	4602      	mov	r2, r0
 8001e4a:	460b      	mov	r3, r1
 8001e4c:	4620      	mov	r0, r4
 8001e4e:	4629      	mov	r1, r5
 8001e50:	f000 fbdc 	bl	800260c <__aeabi_dsub>
 8001e54:	4606      	mov	r6, r0
 8001e56:	460f      	mov	r7, r1
 8001e58:	4632      	mov	r2, r6
 8001e5a:	463b      	mov	r3, r7
 8001e5c:	4620      	mov	r0, r4
 8001e5e:	4629      	mov	r1, r5
 8001e60:	f000 fd8c 	bl	800297c <__aeabi_dmul>
 8001e64:	4602      	mov	r2, r0
 8001e66:	460b      	mov	r3, r1
 8001e68:	4630      	mov	r0, r6
 8001e6a:	4639      	mov	r1, r7
 8001e6c:	4616      	mov	r6, r2
 8001e6e:	461f      	mov	r7, r3
 8001e70:	2200      	movs	r2, #0
 8001e72:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
 8001e76:	f000 fbc9 	bl	800260c <__aeabi_dsub>
 8001e7a:	4602      	mov	r2, r0
 8001e7c:	460b      	mov	r3, r1
 8001e7e:	4630      	mov	r0, r6
 8001e80:	4639      	mov	r1, r7
 8001e82:	f000 fea5 	bl	8002bd0 <__aeabi_ddiv>
 8001e86:	4642      	mov	r2, r8
 8001e88:	4606      	mov	r6, r0
 8001e8a:	460f      	mov	r7, r1
 8001e8c:	464b      	mov	r3, r9
 8001e8e:	4620      	mov	r0, r4
 8001e90:	4629      	mov	r1, r5
 8001e92:	f000 fd73 	bl	800297c <__aeabi_dmul>
 8001e96:	4642      	mov	r2, r8
 8001e98:	464b      	mov	r3, r9
 8001e9a:	f000 fbb9 	bl	8002610 <__adddf3>
 8001e9e:	4602      	mov	r2, r0
 8001ea0:	460b      	mov	r3, r1
 8001ea2:	4630      	mov	r0, r6
 8001ea4:	4639      	mov	r1, r7
 8001ea6:	f000 fbb1 	bl	800260c <__aeabi_dsub>
 8001eaa:	4622      	mov	r2, r4
 8001eac:	462b      	mov	r3, r5
 8001eae:	f000 fbad 	bl	800260c <__aeabi_dsub>
 8001eb2:	4602      	mov	r2, r0
 8001eb4:	460b      	mov	r3, r1
 8001eb6:	2000      	movs	r0, #0
 8001eb8:	4941      	ldr	r1, [pc, #260]	; (8001fc0 <__ieee754_pow+0x920>)
 8001eba:	f000 fba7 	bl	800260c <__aeabi_dsub>
 8001ebe:	9a02      	ldr	r2, [sp, #8]
 8001ec0:	460b      	mov	r3, r1
 8001ec2:	4413      	add	r3, r2
 8001ec4:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001ec8:	f2c0 8143 	blt.w	8002152 <__ieee754_pow+0xab2>
 8001ecc:	4619      	mov	r1, r3
 8001ece:	ec53 2b18 	vmov	r2, r3, d8
 8001ed2:	f000 fd53 	bl	800297c <__aeabi_dmul>
 8001ed6:	ec41 0b10 	vmov	d0, r0, r1
 8001eda:	e42d      	b.n	8001738 <__ieee754_pow+0x98>
 8001edc:	f1bb 0f00 	cmp.w	fp, #0
 8001ee0:	f6ff aca0 	blt.w	8001824 <__ieee754_pow+0x184>
 8001ee4:	ed9f 0b2e 	vldr	d0, [pc, #184]	; 8001fa0 <__ieee754_pow+0x900>
 8001ee8:	e426      	b.n	8001738 <__ieee754_pow+0x98>
 8001eea:	f8df c0dc 	ldr.w	ip, [pc, #220]	; 8001fc8 <__ieee754_pow+0x928>
 8001eee:	f021 4300 	bic.w	r3, r1, #2147483648	; 0x80000000
 8001ef2:	4563      	cmp	r3, ip
 8001ef4:	f340 80e7 	ble.w	80020c6 <__ieee754_pow+0xa26>
 8001ef8:	4b32      	ldr	r3, [pc, #200]	; (8001fc4 <__ieee754_pow+0x924>)
 8001efa:	440b      	add	r3, r1
 8001efc:	4303      	orrs	r3, r0
 8001efe:	d10a      	bne.n	8001f16 <__ieee754_pow+0x876>
 8001f00:	4622      	mov	r2, r4
 8001f02:	462b      	mov	r3, r5
 8001f04:	f000 fb82 	bl	800260c <__aeabi_dsub>
 8001f08:	4632      	mov	r2, r6
 8001f0a:	463b      	mov	r3, r7
 8001f0c:	f000 ffbc 	bl	8002e88 <__aeabi_dcmpge>
 8001f10:	2800      	cmp	r0, #0
 8001f12:	f43f aef3 	beq.w	8001cfc <__ieee754_pow+0x65c>
 8001f16:	a324      	add	r3, pc, #144	; (adr r3, 8001fa8 <__ieee754_pow+0x908>)
 8001f18:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001f1c:	ec51 0b18 	vmov	r0, r1, d8
 8001f20:	f000 fd2c 	bl	800297c <__aeabi_dmul>
 8001f24:	a320      	add	r3, pc, #128	; (adr r3, 8001fa8 <__ieee754_pow+0x908>)
 8001f26:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001f2a:	f000 fd27 	bl	800297c <__aeabi_dmul>
 8001f2e:	ec41 0b10 	vmov	d0, r0, r1
 8001f32:	e401      	b.n	8001738 <__ieee754_pow+0x98>
 8001f34:	ed9f 7b1e 	vldr	d7, [pc, #120]	; 8001fb0 <__ieee754_pow+0x910>
 8001f38:	eeb0 8a47 	vmov.f32	s16, s14
 8001f3c:	eef0 8a67 	vmov.f32	s17, s15
 8001f40:	e686      	b.n	8001c50 <__ieee754_pow+0x5b0>
 8001f42:	f1bb 0f00 	cmp.w	fp, #0
 8001f46:	dacd      	bge.n	8001ee4 <__ieee754_pow+0x844>
 8001f48:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8001f4c:	ee00 6a10 	vmov	s0, r6
 8001f50:	ee00 3a90 	vmov	s1, r3
 8001f54:	f7ff bbf0 	b.w	8001738 <__ieee754_pow+0x98>
 8001f58:	652b82fe 	.word	0x652b82fe
 8001f5c:	3c971547 	.word	0x3c971547
 8001f60:	00000000 	.word	0x00000000
 8001f64:	3fe62e43 	.word	0x3fe62e43
 8001f68:	fefa39ef 	.word	0xfefa39ef
 8001f6c:	3fe62e42 	.word	0x3fe62e42
 8001f70:	0ca86c39 	.word	0x0ca86c39
 8001f74:	be205c61 	.word	0xbe205c61
 8001f78:	72bea4d0 	.word	0x72bea4d0
 8001f7c:	3e663769 	.word	0x3e663769
 8001f80:	c5d26bf1 	.word	0xc5d26bf1
 8001f84:	3ebbbd41 	.word	0x3ebbbd41
 8001f88:	af25de2c 	.word	0xaf25de2c
 8001f8c:	3f11566a 	.word	0x3f11566a
 8001f90:	16bebd93 	.word	0x16bebd93
 8001f94:	3f66c16c 	.word	0x3f66c16c
 8001f98:	5555553e 	.word	0x5555553e
 8001f9c:	3fc55555 	.word	0x3fc55555
	...
 8001fa8:	c2f8f359 	.word	0xc2f8f359
 8001fac:	01a56e1f 	.word	0x01a56e1f
 8001fb0:	00000000 	.word	0x00000000
 8001fb4:	3ff00000 	.word	0x3ff00000
 8001fb8:	408fffff 	.word	0x408fffff
 8001fbc:	000fffff 	.word	0x000fffff
 8001fc0:	3ff00000 	.word	0x3ff00000
 8001fc4:	3f6f3400 	.word	0x3f6f3400
 8001fc8:	4090cbff 	.word	0x4090cbff
 8001fcc:	4598      	cmp	r8, r3
 8001fce:	db85      	blt.n	8001edc <__ieee754_pow+0x83c>
 8001fd0:	4b7d      	ldr	r3, [pc, #500]	; (80021c8 <__ieee754_pow+0xb28>)
 8001fd2:	4598      	cmp	r8, r3
 8001fd4:	f73f ac22 	bgt.w	800181c <__ieee754_pow+0x17c>
 8001fd8:	ec51 0b10 	vmov	r0, r1, d0
 8001fdc:	4b7a      	ldr	r3, [pc, #488]	; (80021c8 <__ieee754_pow+0xb28>)
 8001fde:	2200      	movs	r2, #0
 8001fe0:	f000 fb14 	bl	800260c <__aeabi_dsub>
 8001fe4:	a368      	add	r3, pc, #416	; (adr r3, 8002188 <__ieee754_pow+0xae8>)
 8001fe6:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001fea:	4604      	mov	r4, r0
 8001fec:	460d      	mov	r5, r1
 8001fee:	f000 fcc5 	bl	800297c <__aeabi_dmul>
 8001ff2:	a367      	add	r3, pc, #412	; (adr r3, 8002190 <__ieee754_pow+0xaf0>)
 8001ff4:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001ff8:	4682      	mov	sl, r0
 8001ffa:	468b      	mov	fp, r1
 8001ffc:	4620      	mov	r0, r4
 8001ffe:	4629      	mov	r1, r5
 8002000:	f000 fcbc 	bl	800297c <__aeabi_dmul>
 8002004:	4b71      	ldr	r3, [pc, #452]	; (80021cc <__ieee754_pow+0xb2c>)
 8002006:	ec41 0b18 	vmov	d8, r0, r1
 800200a:	2200      	movs	r2, #0
 800200c:	4620      	mov	r0, r4
 800200e:	4629      	mov	r1, r5
 8002010:	f000 fcb4 	bl	800297c <__aeabi_dmul>
 8002014:	4602      	mov	r2, r0
 8002016:	460b      	mov	r3, r1
 8002018:	a15f      	add	r1, pc, #380	; (adr r1, 8002198 <__ieee754_pow+0xaf8>)
 800201a:	e9d1 0100 	ldrd	r0, r1, [r1]
 800201e:	f000 faf5 	bl	800260c <__aeabi_dsub>
 8002022:	4622      	mov	r2, r4
 8002024:	462b      	mov	r3, r5
 8002026:	f000 fca9 	bl	800297c <__aeabi_dmul>
 800202a:	4602      	mov	r2, r0
 800202c:	460b      	mov	r3, r1
 800202e:	2000      	movs	r0, #0
 8002030:	4967      	ldr	r1, [pc, #412]	; (80021d0 <__ieee754_pow+0xb30>)
 8002032:	f000 faeb 	bl	800260c <__aeabi_dsub>
 8002036:	4622      	mov	r2, r4
 8002038:	4680      	mov	r8, r0
 800203a:	4689      	mov	r9, r1
 800203c:	462b      	mov	r3, r5
 800203e:	4620      	mov	r0, r4
 8002040:	4629      	mov	r1, r5
 8002042:	f000 fc9b 	bl	800297c <__aeabi_dmul>
 8002046:	4602      	mov	r2, r0
 8002048:	460b      	mov	r3, r1
 800204a:	4640      	mov	r0, r8
 800204c:	4649      	mov	r1, r9
 800204e:	f000 fc95 	bl	800297c <__aeabi_dmul>
 8002052:	a353      	add	r3, pc, #332	; (adr r3, 80021a0 <__ieee754_pow+0xb00>)
 8002054:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002058:	f000 fc90 	bl	800297c <__aeabi_dmul>
 800205c:	4602      	mov	r2, r0
 800205e:	460b      	mov	r3, r1
 8002060:	ec51 0b18 	vmov	r0, r1, d8
 8002064:	f000 fad2 	bl	800260c <__aeabi_dsub>
 8002068:	4680      	mov	r8, r0
 800206a:	4689      	mov	r9, r1
 800206c:	4642      	mov	r2, r8
 800206e:	464b      	mov	r3, r9
 8002070:	4650      	mov	r0, sl
 8002072:	4659      	mov	r1, fp
 8002074:	f000 facc 	bl	8002610 <__adddf3>
 8002078:	2000      	movs	r0, #0
 800207a:	4652      	mov	r2, sl
 800207c:	465b      	mov	r3, fp
 800207e:	4604      	mov	r4, r0
 8002080:	460d      	mov	r5, r1
 8002082:	e591      	b.n	8001ba8 <__ieee754_pow+0x508>
 8002084:	4622      	mov	r2, r4
 8002086:	462b      	mov	r3, r5
 8002088:	4620      	mov	r0, r4
 800208a:	4629      	mov	r1, r5
 800208c:	f000 fc76 	bl	800297c <__aeabi_dmul>
 8002090:	ec41 0b10 	vmov	d0, r0, r1
 8002094:	f7ff bb50 	b.w	8001738 <__ieee754_pow+0x98>
 8002098:	494b      	ldr	r1, [pc, #300]	; (80021c8 <__ieee754_pow+0xb28>)
 800209a:	2000      	movs	r0, #0
 800209c:	4622      	mov	r2, r4
 800209e:	462b      	mov	r3, r5
 80020a0:	f000 fd96 	bl	8002bd0 <__aeabi_ddiv>
 80020a4:	ec41 0b10 	vmov	d0, r0, r1
 80020a8:	f7ff bb46 	b.w	8001738 <__ieee754_pow+0x98>
 80020ac:	2b00      	cmp	r3, #0
 80020ae:	d144      	bne.n	800213a <__ieee754_pow+0xa9a>
 80020b0:	f1c1 0114 	rsb	r1, r1, #20
 80020b4:	fa4a f001 	asr.w	r0, sl, r1
 80020b8:	fa00 f101 	lsl.w	r1, r0, r1
 80020bc:	4551      	cmp	r1, sl
 80020be:	d05a      	beq.n	8002176 <__ieee754_pow+0xad6>
 80020c0:	9300      	str	r3, [sp, #0]
 80020c2:	f7ff bb17 	b.w	80016f4 <__ieee754_pow+0x54>
 80020c6:	4a42      	ldr	r2, [pc, #264]	; (80021d0 <__ieee754_pow+0xb30>)
 80020c8:	4293      	cmp	r3, r2
 80020ca:	dc5b      	bgt.n	8002184 <__ieee754_pow+0xae4>
 80020cc:	e9dd 1200 	ldrd	r1, r2, [sp]
 80020d0:	9102      	str	r1, [sp, #8]
 80020d2:	9100      	str	r1, [sp, #0]
 80020d4:	e646      	b.n	8001d64 <__ieee754_pow+0x6c4>
 80020d6:	a334      	add	r3, pc, #208	; (adr r3, 80021a8 <__ieee754_pow+0xb08>)
 80020d8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80020dc:	ec51 0b18 	vmov	r0, r1, d8
 80020e0:	f000 fc4c 	bl	800297c <__aeabi_dmul>
 80020e4:	a330      	add	r3, pc, #192	; (adr r3, 80021a8 <__ieee754_pow+0xb08>)
 80020e6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80020ea:	f000 fc47 	bl	800297c <__aeabi_dmul>
 80020ee:	ec41 0b10 	vmov	d0, r0, r1
 80020f2:	f7ff bb21 	b.w	8001738 <__ieee754_pow+0x98>
 80020f6:	9b00      	ldr	r3, [sp, #0]
 80020f8:	2b01      	cmp	r3, #1
 80020fa:	f47f ab1d 	bne.w	8001738 <__ieee754_pow+0x98>
 80020fe:	ee10 1a90 	vmov	r1, s1
 8002102:	ee10 2a10 	vmov	r2, s0
 8002106:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 800210a:	ec43 2b10 	vmov	d0, r2, r3
 800210e:	f7ff bb13 	b.w	8001738 <__ieee754_pow+0x98>
 8002112:	ed9f 7b27 	vldr	d7, [pc, #156]	; 80021b0 <__ieee754_pow+0xb10>
 8002116:	eeb0 ca47 	vmov.f32	s24, s14
 800211a:	eef0 ca67 	vmov.f32	s25, s15
 800211e:	ed9f 7b26 	vldr	d7, [pc, #152]	; 80021b8 <__ieee754_pow+0xb18>
 8002122:	eeb0 da47 	vmov.f32	s26, s14
 8002126:	eef0 da67 	vmov.f32	s27, s15
 800212a:	ed9f 7b25 	vldr	d7, [pc, #148]	; 80021c0 <__ieee754_pow+0xb20>
 800212e:	f44f 2580 	mov.w	r5, #262144	; 0x40000
 8002132:	ec53 2b17 	vmov	r2, r3, d7
 8002136:	f7ff bbeb 	b.w	8001910 <__ieee754_pow+0x270>
 800213a:	ec45 4b10 	vmov	d0, r4, r5
 800213e:	9200      	str	r2, [sp, #0]
 8002140:	f000 f914 	bl	800236c <fabs>
 8002144:	9a00      	ldr	r2, [sp, #0]
 8002146:	2a00      	cmp	r2, #0
 8002148:	f47f ab92 	bne.w	8001870 <__ieee754_pow+0x1d0>
 800214c:	9200      	str	r2, [sp, #0]
 800214e:	f7ff bb26 	b.w	800179e <__ieee754_pow+0xfe>
 8002152:	ec41 0b10 	vmov	d0, r0, r1
 8002156:	9800      	ldr	r0, [sp, #0]
 8002158:	f000 f9c2 	bl	80024e0 <scalbn>
 800215c:	ec51 0b10 	vmov	r0, r1, d0
 8002160:	e6b5      	b.n	8001ece <__ieee754_pow+0x82e>
 8002162:	f000 0001 	and.w	r0, r0, #1
 8002166:	f1c0 0102 	rsb	r1, r0, #2
 800216a:	9100      	str	r1, [sp, #0]
 800216c:	2b00      	cmp	r3, #0
 800216e:	f43f aac1 	beq.w	80016f4 <__ieee754_pow+0x54>
 8002172:	f7ff bb0d 	b.w	8001790 <__ieee754_pow+0xf0>
 8002176:	f000 0001 	and.w	r0, r0, #1
 800217a:	f1c0 0302 	rsb	r3, r0, #2
 800217e:	9300      	str	r3, [sp, #0]
 8002180:	f7ff bab8 	b.w	80016f4 <__ieee754_pow+0x54>
 8002184:	151b      	asrs	r3, r3, #20
 8002186:	e5bb      	b.n	8001d00 <__ieee754_pow+0x660>
 8002188:	60000000 	.word	0x60000000
 800218c:	3ff71547 	.word	0x3ff71547
 8002190:	f85ddf44 	.word	0xf85ddf44
 8002194:	3e54ae0b 	.word	0x3e54ae0b
 8002198:	55555555 	.word	0x55555555
 800219c:	3fd55555 	.word	0x3fd55555
 80021a0:	652b82fe 	.word	0x652b82fe
 80021a4:	3ff71547 	.word	0x3ff71547
 80021a8:	8800759c 	.word	0x8800759c
 80021ac:	7e37e43c 	.word	0x7e37e43c
 80021b0:	40000000 	.word	0x40000000
 80021b4:	3fe2b803 	.word	0x3fe2b803
 80021b8:	43cfd006 	.word	0x43cfd006
 80021bc:	3e4cfdeb 	.word	0x3e4cfdeb
 80021c0:	00000000 	.word	0x00000000
 80021c4:	3ff80000 	.word	0x3ff80000
 80021c8:	3ff00000 	.word	0x3ff00000
 80021cc:	3fd00000 	.word	0x3fd00000
 80021d0:	3fe00000 	.word	0x3fe00000

080021d4 <__ieee754_sqrt>:
 80021d4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80021d8:	4a63      	ldr	r2, [pc, #396]	; (8002368 <__ieee754_sqrt+0x194>)
 80021da:	ec55 4b10 	vmov	r4, r5, d0
 80021de:	43aa      	bics	r2, r5
 80021e0:	f000 809f 	beq.w	8002322 <__ieee754_sqrt+0x14e>
 80021e4:	2d00      	cmp	r5, #0
 80021e6:	ee10 ca10 	vmov	ip, s0
 80021ea:	462b      	mov	r3, r5
 80021ec:	dd54      	ble.n	8002298 <__ieee754_sqrt+0xc4>
 80021ee:	1529      	asrs	r1, r5, #20
 80021f0:	d063      	beq.n	80022ba <__ieee754_sqrt+0xe6>
 80021f2:	f3c3 0313 	ubfx	r3, r3, #0, #20
 80021f6:	f2a1 37ff 	subw	r7, r1, #1023	; 0x3ff
 80021fa:	07c9      	lsls	r1, r1, #31
 80021fc:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8002200:	d404      	bmi.n	800220c <__ieee754_sqrt+0x38>
 8002202:	005b      	lsls	r3, r3, #1
 8002204:	eb03 73dc 	add.w	r3, r3, ip, lsr #31
 8002208:	ea4f 0c4c 	mov.w	ip, ip, lsl #1
 800220c:	ea4f 72dc 	mov.w	r2, ip, lsr #31
 8002210:	2600      	movs	r6, #0
 8002212:	eb02 0343 	add.w	r3, r2, r3, lsl #1
 8002216:	107f      	asrs	r7, r7, #1
 8002218:	ea4f 0c4c 	mov.w	ip, ip, lsl #1
 800221c:	f04f 0e16 	mov.w	lr, #22
 8002220:	4634      	mov	r4, r6
 8002222:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
 8002226:	18a1      	adds	r1, r4, r2
 8002228:	4299      	cmp	r1, r3
 800222a:	dc02      	bgt.n	8002232 <__ieee754_sqrt+0x5e>
 800222c:	1a5b      	subs	r3, r3, r1
 800222e:	188c      	adds	r4, r1, r2
 8002230:	4416      	add	r6, r2
 8002232:	005b      	lsls	r3, r3, #1
 8002234:	f1be 0e01 	subs.w	lr, lr, #1
 8002238:	eb03 73dc 	add.w	r3, r3, ip, lsr #31
 800223c:	ea4f 0252 	mov.w	r2, r2, lsr #1
 8002240:	ea4f 0c4c 	mov.w	ip, ip, lsl #1
 8002244:	d1ef      	bne.n	8002226 <__ieee754_sqrt+0x52>
 8002246:	4675      	mov	r5, lr
 8002248:	2020      	movs	r0, #32
 800224a:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
 800224e:	e00a      	b.n	8002266 <__ieee754_sqrt+0x92>
 8002250:	d044      	beq.n	80022dc <__ieee754_sqrt+0x108>
 8002252:	ea4f 71dc 	mov.w	r1, ip, lsr #31
 8002256:	3801      	subs	r0, #1
 8002258:	eb01 0343 	add.w	r3, r1, r3, lsl #1
 800225c:	ea4f 0c4c 	mov.w	ip, ip, lsl #1
 8002260:	ea4f 0252 	mov.w	r2, r2, lsr #1
 8002264:	d043      	beq.n	80022ee <__ieee754_sqrt+0x11a>
 8002266:	42a3      	cmp	r3, r4
 8002268:	eb02 010e 	add.w	r1, r2, lr
 800226c:	ddf0      	ble.n	8002250 <__ieee754_sqrt+0x7c>
 800226e:	2900      	cmp	r1, #0
 8002270:	eb01 0e02 	add.w	lr, r1, r2
 8002274:	db0a      	blt.n	800228c <__ieee754_sqrt+0xb8>
 8002276:	46a0      	mov	r8, r4
 8002278:	1b1b      	subs	r3, r3, r4
 800227a:	4561      	cmp	r1, ip
 800227c:	bf88      	it	hi
 800227e:	f103 33ff 	addhi.w	r3, r3, #4294967295	; 0xffffffff
 8002282:	ebac 0c01 	sub.w	ip, ip, r1
 8002286:	4415      	add	r5, r2
 8002288:	4644      	mov	r4, r8
 800228a:	e7e2      	b.n	8002252 <__ieee754_sqrt+0x7e>
 800228c:	f1be 0f00 	cmp.w	lr, #0
 8002290:	dbf1      	blt.n	8002276 <__ieee754_sqrt+0xa2>
 8002292:	f104 0801 	add.w	r8, r4, #1
 8002296:	e7ef      	b.n	8002278 <__ieee754_sqrt+0xa4>
 8002298:	f025 4200 	bic.w	r2, r5, #2147483648	; 0x80000000
 800229c:	4322      	orrs	r2, r4
 800229e:	d038      	beq.n	8002312 <__ieee754_sqrt+0x13e>
 80022a0:	2d00      	cmp	r5, #0
 80022a2:	d14e      	bne.n	8002342 <__ieee754_sqrt+0x16e>
 80022a4:	4629      	mov	r1, r5
 80022a6:	ea4f 22dc 	mov.w	r2, ip, lsr #11
 80022aa:	3915      	subs	r1, #21
 80022ac:	4613      	mov	r3, r2
 80022ae:	ea4f 5c4c 	mov.w	ip, ip, lsl #21
 80022b2:	2a00      	cmp	r2, #0
 80022b4:	d0f7      	beq.n	80022a6 <__ieee754_sqrt+0xd2>
 80022b6:	02d6      	lsls	r6, r2, #11
 80022b8:	d450      	bmi.n	800235c <__ieee754_sqrt+0x188>
 80022ba:	2000      	movs	r0, #0
 80022bc:	005b      	lsls	r3, r3, #1
 80022be:	02dd      	lsls	r5, r3, #11
 80022c0:	4604      	mov	r4, r0
 80022c2:	f100 0001 	add.w	r0, r0, #1
 80022c6:	d5f9      	bpl.n	80022bc <__ieee754_sqrt+0xe8>
 80022c8:	461a      	mov	r2, r3
 80022ca:	4663      	mov	r3, ip
 80022cc:	fa0c fc00 	lsl.w	ip, ip, r0
 80022d0:	f1c0 0020 	rsb	r0, r0, #32
 80022d4:	40c3      	lsrs	r3, r0
 80022d6:	1b09      	subs	r1, r1, r4
 80022d8:	4313      	orrs	r3, r2
 80022da:	e78a      	b.n	80021f2 <__ieee754_sqrt+0x1e>
 80022dc:	4561      	cmp	r1, ip
 80022de:	d8b8      	bhi.n	8002252 <__ieee754_sqrt+0x7e>
 80022e0:	2900      	cmp	r1, #0
 80022e2:	eb01 0e02 	add.w	lr, r1, r2
 80022e6:	dbd1      	blt.n	800228c <__ieee754_sqrt+0xb8>
 80022e8:	4698      	mov	r8, r3
 80022ea:	2300      	movs	r3, #0
 80022ec:	e7c9      	b.n	8002282 <__ieee754_sqrt+0xae>
 80022ee:	ea53 030c 	orrs.w	r3, r3, ip
 80022f2:	d110      	bne.n	8002316 <__ieee754_sqrt+0x142>
 80022f4:	0868      	lsrs	r0, r5, #1
 80022f6:	1071      	asrs	r1, r6, #1
 80022f8:	07f3      	lsls	r3, r6, #31
 80022fa:	f101 517f 	add.w	r1, r1, #1069547520	; 0x3fc00000
 80022fe:	f501 1100 	add.w	r1, r1, #2097152	; 0x200000
 8002302:	bf48      	it	mi
 8002304:	f040 4000 	orrmi.w	r0, r0, #2147483648	; 0x80000000
 8002308:	eb01 5307 	add.w	r3, r1, r7, lsl #20
 800230c:	4602      	mov	r2, r0
 800230e:	ec43 2b10 	vmov	d0, r2, r3
 8002312:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002316:	1c6a      	adds	r2, r5, #1
 8002318:	bf16      	itet	ne
 800231a:	1c68      	addne	r0, r5, #1
 800231c:	3601      	addeq	r6, #1
 800231e:	0840      	lsrne	r0, r0, #1
 8002320:	e7e9      	b.n	80022f6 <__ieee754_sqrt+0x122>
 8002322:	ee10 2a10 	vmov	r2, s0
 8002326:	ee10 0a10 	vmov	r0, s0
 800232a:	462b      	mov	r3, r5
 800232c:	4629      	mov	r1, r5
 800232e:	f000 fb25 	bl	800297c <__aeabi_dmul>
 8002332:	4622      	mov	r2, r4
 8002334:	462b      	mov	r3, r5
 8002336:	f000 f96b 	bl	8002610 <__adddf3>
 800233a:	ec41 0b10 	vmov	d0, r0, r1
 800233e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002342:	ee10 2a10 	vmov	r2, s0
 8002346:	4620      	mov	r0, r4
 8002348:	4629      	mov	r1, r5
 800234a:	f000 f95f 	bl	800260c <__aeabi_dsub>
 800234e:	4602      	mov	r2, r0
 8002350:	460b      	mov	r3, r1
 8002352:	f000 fc3d 	bl	8002bd0 <__aeabi_ddiv>
 8002356:	ec41 0b10 	vmov	d0, r0, r1
 800235a:	e7da      	b.n	8002312 <__ieee754_sqrt+0x13e>
 800235c:	4663      	mov	r3, ip
 800235e:	2020      	movs	r0, #32
 8002360:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8002364:	e7b6      	b.n	80022d4 <__ieee754_sqrt+0x100>
 8002366:	bf00      	nop
 8002368:	7ff00000 	.word	0x7ff00000

0800236c <fabs>:
 800236c:	ec51 0b10 	vmov	r0, r1, d0
 8002370:	ee10 2a10 	vmov	r2, s0
 8002374:	f021 4300 	bic.w	r3, r1, #2147483648	; 0x80000000
 8002378:	ec43 2b10 	vmov	d0, r2, r3
 800237c:	4770      	bx	lr
 800237e:	bf00      	nop

08002380 <finite>:
 8002380:	b082      	sub	sp, #8
 8002382:	ed8d 0b00 	vstr	d0, [sp]
 8002386:	9801      	ldr	r0, [sp, #4]
 8002388:	f040 4000 	orr.w	r0, r0, #2147483648	; 0x80000000
 800238c:	f500 1080 	add.w	r0, r0, #1048576	; 0x100000
 8002390:	0fc0      	lsrs	r0, r0, #31
 8002392:	b002      	add	sp, #8
 8002394:	4770      	bx	lr
 8002396:	bf00      	nop

08002398 <nan>:
 8002398:	ed9f 0b01 	vldr	d0, [pc, #4]	; 80023a0 <nan+0x8>
 800239c:	4770      	bx	lr
 800239e:	bf00      	nop
 80023a0:	00000000 	.word	0x00000000
 80023a4:	7ff80000 	.word	0x7ff80000

080023a8 <rint>:
 80023a8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80023aa:	ec53 2b10 	vmov	r2, r3, d0
 80023ae:	f3c3 5c0a 	ubfx	ip, r3, #20, #11
 80023b2:	f2ac 31ff 	subw	r1, ip, #1023	; 0x3ff
 80023b6:	2913      	cmp	r1, #19
 80023b8:	ee10 0a10 	vmov	r0, s0
 80023bc:	b083      	sub	sp, #12
 80023be:	461c      	mov	r4, r3
 80023c0:	ea4f 7ed3 	mov.w	lr, r3, lsr #31
 80023c4:	dc3a      	bgt.n	800243c <rint+0x94>
 80023c6:	2900      	cmp	r1, #0
 80023c8:	db30      	blt.n	800242c <rint+0x84>
 80023ca:	4d42      	ldr	r5, [pc, #264]	; (80024d4 <rint+0x12c>)
 80023cc:	fa45 fc01 	asr.w	ip, r5, r1
 80023d0:	ea03 050c 	and.w	r5, r3, ip
 80023d4:	4315      	orrs	r5, r2
 80023d6:	d02d      	beq.n	8002434 <rint+0x8c>
 80023d8:	ea03 035c 	and.w	r3, r3, ip, lsr #1
 80023dc:	4318      	orrs	r0, r3
 80023de:	ea4f 0c5c 	mov.w	ip, ip, lsr #1
 80023e2:	d00c      	beq.n	80023fe <rint+0x56>
 80023e4:	ea24 0c0c 	bic.w	ip, r4, ip
 80023e8:	f44f 2480 	mov.w	r4, #262144	; 0x40000
 80023ec:	2913      	cmp	r1, #19
 80023ee:	fa44 f101 	asr.w	r1, r4, r1
 80023f2:	bf0c      	ite	eq
 80023f4:	f04f 4000 	moveq.w	r0, #2147483648	; 0x80000000
 80023f8:	2000      	movne	r0, #0
 80023fa:	ea4c 0401 	orr.w	r4, ip, r1
 80023fe:	4936      	ldr	r1, [pc, #216]	; (80024d8 <rint+0x130>)
 8002400:	eb01 0ece 	add.w	lr, r1, lr, lsl #3
 8002404:	4623      	mov	r3, r4
 8002406:	e9de 4500 	ldrd	r4, r5, [lr]
 800240a:	4602      	mov	r2, r0
 800240c:	4629      	mov	r1, r5
 800240e:	4620      	mov	r0, r4
 8002410:	f000 f8fe 	bl	8002610 <__adddf3>
 8002414:	e9cd 0100 	strd	r0, r1, [sp]
 8002418:	e9dd 0100 	ldrd	r0, r1, [sp]
 800241c:	4622      	mov	r2, r4
 800241e:	462b      	mov	r3, r5
 8002420:	f000 f8f4 	bl	800260c <__aeabi_dsub>
 8002424:	ec41 0b10 	vmov	d0, r0, r1
 8002428:	b003      	add	sp, #12
 800242a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800242c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8002430:	4311      	orrs	r1, r2
 8002432:	d124      	bne.n	800247e <rint+0xd6>
 8002434:	ec43 2b10 	vmov	d0, r2, r3
 8002438:	b003      	add	sp, #12
 800243a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800243c:	2933      	cmp	r1, #51	; 0x33
 800243e:	dd08      	ble.n	8002452 <rint+0xaa>
 8002440:	f5b1 6f80 	cmp.w	r1, #1024	; 0x400
 8002444:	d1f6      	bne.n	8002434 <rint+0x8c>
 8002446:	4619      	mov	r1, r3
 8002448:	f000 f8e2 	bl	8002610 <__adddf3>
 800244c:	ec41 0b10 	vmov	d0, r0, r1
 8002450:	e7f2      	b.n	8002438 <rint+0x90>
 8002452:	f2ac 4c13 	subw	ip, ip, #1043	; 0x413
 8002456:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 800245a:	fa21 f10c 	lsr.w	r1, r1, ip
 800245e:	420a      	tst	r2, r1
 8002460:	d0e8      	beq.n	8002434 <rint+0x8c>
 8002462:	ea10 0251 	ands.w	r2, r0, r1, lsr #1
 8002466:	ea4f 0351 	mov.w	r3, r1, lsr #1
 800246a:	d0c8      	beq.n	80023fe <rint+0x56>
 800246c:	ea20 0303 	bic.w	r3, r0, r3
 8002470:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8002474:	fa40 fc0c 	asr.w	ip, r0, ip
 8002478:	ea43 000c 	orr.w	r0, r3, ip
 800247c:	e7bf      	b.n	80023fe <rint+0x56>
 800247e:	f3c3 0313 	ubfx	r3, r3, #0, #20
 8002482:	4318      	orrs	r0, r3
 8002484:	4a14      	ldr	r2, [pc, #80]	; (80024d8 <rint+0x130>)
 8002486:	4243      	negs	r3, r0
 8002488:	4303      	orrs	r3, r0
 800248a:	eb02 0ece 	add.w	lr, r2, lr, lsl #3
 800248e:	0b1b      	lsrs	r3, r3, #12
 8002490:	0c62      	lsrs	r2, r4, #17
 8002492:	f403 2300 	and.w	r3, r3, #524288	; 0x80000
 8002496:	0452      	lsls	r2, r2, #17
 8002498:	ea43 0702 	orr.w	r7, r3, r2
 800249c:	463b      	mov	r3, r7
 800249e:	e9de 6700 	ldrd	r6, r7, [lr]
 80024a2:	ee10 2a10 	vmov	r2, s0
 80024a6:	4630      	mov	r0, r6
 80024a8:	4639      	mov	r1, r7
 80024aa:	f000 f8b1 	bl	8002610 <__adddf3>
 80024ae:	e9cd 0100 	strd	r0, r1, [sp]
 80024b2:	4632      	mov	r2, r6
 80024b4:	463b      	mov	r3, r7
 80024b6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80024ba:	f000 f8a7 	bl	800260c <__aeabi_dsub>
 80024be:	f004 4400 	and.w	r4, r4, #2147483648	; 0x80000000
 80024c2:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80024c6:	4602      	mov	r2, r0
 80024c8:	ea41 0304 	orr.w	r3, r1, r4
 80024cc:	ec43 2b10 	vmov	d0, r2, r3
 80024d0:	b003      	add	sp, #12
 80024d2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80024d4:	000fffff 	.word	0x000fffff
 80024d8:	0800d6c0 	.word	0x0800d6c0
 80024dc:	00000000 	.word	0x00000000

080024e0 <scalbn>:
 80024e0:	b538      	push	{r3, r4, r5, lr}
 80024e2:	ec53 2b10 	vmov	r2, r3, d0
 80024e6:	f3c3 510a 	ubfx	r1, r3, #20, #11
 80024ea:	4604      	mov	r4, r0
 80024ec:	469c      	mov	ip, r3
 80024ee:	bb89      	cbnz	r1, 8002554 <scalbn+0x74>
 80024f0:	ee10 1a10 	vmov	r1, s0
 80024f4:	f023 4c00 	bic.w	ip, r3, #2147483648	; 0x80000000
 80024f8:	ea5c 0101 	orrs.w	r1, ip, r1
 80024fc:	d029      	beq.n	8002552 <scalbn+0x72>
 80024fe:	4619      	mov	r1, r3
 8002500:	2200      	movs	r2, #0
 8002502:	4b3d      	ldr	r3, [pc, #244]	; (80025f8 <scalbn+0x118>)
 8002504:	4d3d      	ldr	r5, [pc, #244]	; (80025fc <scalbn+0x11c>)
 8002506:	ee10 0a10 	vmov	r0, s0
 800250a:	f000 fa37 	bl	800297c <__aeabi_dmul>
 800250e:	42ac      	cmp	r4, r5
 8002510:	4602      	mov	r2, r0
 8002512:	460b      	mov	r3, r1
 8002514:	db16      	blt.n	8002544 <scalbn+0x64>
 8002516:	468c      	mov	ip, r1
 8002518:	f3c1 510a 	ubfx	r1, r1, #20, #11
 800251c:	3936      	subs	r1, #54	; 0x36
 800251e:	4421      	add	r1, r4
 8002520:	f240 70fe 	movw	r0, #2046	; 0x7fe
 8002524:	4281      	cmp	r1, r0
 8002526:	dc21      	bgt.n	800256c <scalbn+0x8c>
 8002528:	2900      	cmp	r1, #0
 800252a:	dc47      	bgt.n	80025bc <scalbn+0xdc>
 800252c:	f111 0f35 	cmn.w	r1, #53	; 0x35
 8002530:	da34      	bge.n	800259c <scalbn+0xbc>
 8002532:	f24c 3150 	movw	r1, #50000	; 0xc350
 8002536:	428c      	cmp	r4, r1
 8002538:	dc18      	bgt.n	800256c <scalbn+0x8c>
 800253a:	2b00      	cmp	r3, #0
 800253c:	a126      	add	r1, pc, #152	; (adr r1, 80025d8 <scalbn+0xf8>)
 800253e:	e9d1 0100 	ldrd	r0, r1, [r1]
 8002542:	db44      	blt.n	80025ce <scalbn+0xee>
 8002544:	a324      	add	r3, pc, #144	; (adr r3, 80025d8 <scalbn+0xf8>)
 8002546:	e9d3 2300 	ldrd	r2, r3, [r3]
 800254a:	f000 fa17 	bl	800297c <__aeabi_dmul>
 800254e:	ec41 0b10 	vmov	d0, r0, r1
 8002552:	bd38      	pop	{r3, r4, r5, pc}
 8002554:	f240 70ff 	movw	r0, #2047	; 0x7ff
 8002558:	4281      	cmp	r1, r0
 800255a:	d1e0      	bne.n	800251e <scalbn+0x3e>
 800255c:	ee10 0a10 	vmov	r0, s0
 8002560:	4619      	mov	r1, r3
 8002562:	f000 f855 	bl	8002610 <__adddf3>
 8002566:	ec41 0b10 	vmov	d0, r0, r1
 800256a:	bd38      	pop	{r3, r4, r5, pc}
 800256c:	2b00      	cmp	r3, #0
 800256e:	a11c      	add	r1, pc, #112	; (adr r1, 80025e0 <scalbn+0x100>)
 8002570:	e9d1 0100 	ldrd	r0, r1, [r1]
 8002574:	db07      	blt.n	8002586 <scalbn+0xa6>
 8002576:	a31a      	add	r3, pc, #104	; (adr r3, 80025e0 <scalbn+0x100>)
 8002578:	e9d3 2300 	ldrd	r2, r3, [r3]
 800257c:	f000 f9fe 	bl	800297c <__aeabi_dmul>
 8002580:	ec41 0b10 	vmov	d0, r0, r1
 8002584:	bd38      	pop	{r3, r4, r5, pc}
 8002586:	a118      	add	r1, pc, #96	; (adr r1, 80025e8 <scalbn+0x108>)
 8002588:	e9d1 0100 	ldrd	r0, r1, [r1]
 800258c:	a314      	add	r3, pc, #80	; (adr r3, 80025e0 <scalbn+0x100>)
 800258e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002592:	f000 f9f3 	bl	800297c <__aeabi_dmul>
 8002596:	ec41 0b10 	vmov	d0, r0, r1
 800259a:	e7f3      	b.n	8002584 <scalbn+0xa4>
 800259c:	f02c 4cff 	bic.w	ip, ip, #2139095040	; 0x7f800000
 80025a0:	f42c 0ce0 	bic.w	ip, ip, #7340032	; 0x700000
 80025a4:	3136      	adds	r1, #54	; 0x36
 80025a6:	ea4c 5301 	orr.w	r3, ip, r1, lsl #20
 80025aa:	4610      	mov	r0, r2
 80025ac:	4619      	mov	r1, r3
 80025ae:	2200      	movs	r2, #0
 80025b0:	4b13      	ldr	r3, [pc, #76]	; (8002600 <scalbn+0x120>)
 80025b2:	f000 f9e3 	bl	800297c <__aeabi_dmul>
 80025b6:	ec41 0b10 	vmov	d0, r0, r1
 80025ba:	bd38      	pop	{r3, r4, r5, pc}
 80025bc:	f02c 4cff 	bic.w	ip, ip, #2139095040	; 0x7f800000
 80025c0:	f42c 0ce0 	bic.w	ip, ip, #7340032	; 0x700000
 80025c4:	ea4c 5301 	orr.w	r3, ip, r1, lsl #20
 80025c8:	ec43 2b10 	vmov	d0, r2, r3
 80025cc:	bd38      	pop	{r3, r4, r5, pc}
 80025ce:	a108      	add	r1, pc, #32	; (adr r1, 80025f0 <scalbn+0x110>)
 80025d0:	e9d1 0100 	ldrd	r0, r1, [r1]
 80025d4:	e7b6      	b.n	8002544 <scalbn+0x64>
 80025d6:	bf00      	nop
 80025d8:	c2f8f359 	.word	0xc2f8f359
 80025dc:	01a56e1f 	.word	0x01a56e1f
 80025e0:	8800759c 	.word	0x8800759c
 80025e4:	7e37e43c 	.word	0x7e37e43c
 80025e8:	8800759c 	.word	0x8800759c
 80025ec:	fe37e43c 	.word	0xfe37e43c
 80025f0:	c2f8f359 	.word	0xc2f8f359
 80025f4:	81a56e1f 	.word	0x81a56e1f
 80025f8:	43500000 	.word	0x43500000
 80025fc:	ffff3cb0 	.word	0xffff3cb0
 8002600:	3c900000 	.word	0x3c900000

08002604 <__aeabi_drsub>:
 8002604:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 8002608:	e002      	b.n	8002610 <__adddf3>
 800260a:	bf00      	nop

0800260c <__aeabi_dsub>:
 800260c:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

08002610 <__adddf3>:
 8002610:	b530      	push	{r4, r5, lr}
 8002612:	ea4f 0441 	mov.w	r4, r1, lsl #1
 8002616:	ea4f 0543 	mov.w	r5, r3, lsl #1
 800261a:	ea94 0f05 	teq	r4, r5
 800261e:	bf08      	it	eq
 8002620:	ea90 0f02 	teqeq	r0, r2
 8002624:	bf1f      	itttt	ne
 8002626:	ea54 0c00 	orrsne.w	ip, r4, r0
 800262a:	ea55 0c02 	orrsne.w	ip, r5, r2
 800262e:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 8002632:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8002636:	f000 80e2 	beq.w	80027fe <__adddf3+0x1ee>
 800263a:	ea4f 5454 	mov.w	r4, r4, lsr #21
 800263e:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 8002642:	bfb8      	it	lt
 8002644:	426d      	neglt	r5, r5
 8002646:	dd0c      	ble.n	8002662 <__adddf3+0x52>
 8002648:	442c      	add	r4, r5
 800264a:	ea80 0202 	eor.w	r2, r0, r2
 800264e:	ea81 0303 	eor.w	r3, r1, r3
 8002652:	ea82 0000 	eor.w	r0, r2, r0
 8002656:	ea83 0101 	eor.w	r1, r3, r1
 800265a:	ea80 0202 	eor.w	r2, r0, r2
 800265e:	ea81 0303 	eor.w	r3, r1, r3
 8002662:	2d36      	cmp	r5, #54	; 0x36
 8002664:	bf88      	it	hi
 8002666:	bd30      	pophi	{r4, r5, pc}
 8002668:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 800266c:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8002670:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 8002674:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 8002678:	d002      	beq.n	8002680 <__adddf3+0x70>
 800267a:	4240      	negs	r0, r0
 800267c:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8002680:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 8002684:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8002688:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 800268c:	d002      	beq.n	8002694 <__adddf3+0x84>
 800268e:	4252      	negs	r2, r2
 8002690:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8002694:	ea94 0f05 	teq	r4, r5
 8002698:	f000 80a7 	beq.w	80027ea <__adddf3+0x1da>
 800269c:	f1a4 0401 	sub.w	r4, r4, #1
 80026a0:	f1d5 0e20 	rsbs	lr, r5, #32
 80026a4:	db0d      	blt.n	80026c2 <__adddf3+0xb2>
 80026a6:	fa02 fc0e 	lsl.w	ip, r2, lr
 80026aa:	fa22 f205 	lsr.w	r2, r2, r5
 80026ae:	1880      	adds	r0, r0, r2
 80026b0:	f141 0100 	adc.w	r1, r1, #0
 80026b4:	fa03 f20e 	lsl.w	r2, r3, lr
 80026b8:	1880      	adds	r0, r0, r2
 80026ba:	fa43 f305 	asr.w	r3, r3, r5
 80026be:	4159      	adcs	r1, r3
 80026c0:	e00e      	b.n	80026e0 <__adddf3+0xd0>
 80026c2:	f1a5 0520 	sub.w	r5, r5, #32
 80026c6:	f10e 0e20 	add.w	lr, lr, #32
 80026ca:	2a01      	cmp	r2, #1
 80026cc:	fa03 fc0e 	lsl.w	ip, r3, lr
 80026d0:	bf28      	it	cs
 80026d2:	f04c 0c02 	orrcs.w	ip, ip, #2
 80026d6:	fa43 f305 	asr.w	r3, r3, r5
 80026da:	18c0      	adds	r0, r0, r3
 80026dc:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 80026e0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80026e4:	d507      	bpl.n	80026f6 <__adddf3+0xe6>
 80026e6:	f04f 0e00 	mov.w	lr, #0
 80026ea:	f1dc 0c00 	rsbs	ip, ip, #0
 80026ee:	eb7e 0000 	sbcs.w	r0, lr, r0
 80026f2:	eb6e 0101 	sbc.w	r1, lr, r1
 80026f6:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80026fa:	d31b      	bcc.n	8002734 <__adddf3+0x124>
 80026fc:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8002700:	d30c      	bcc.n	800271c <__adddf3+0x10c>
 8002702:	0849      	lsrs	r1, r1, #1
 8002704:	ea5f 0030 	movs.w	r0, r0, rrx
 8002708:	ea4f 0c3c 	mov.w	ip, ip, rrx
 800270c:	f104 0401 	add.w	r4, r4, #1
 8002710:	ea4f 5244 	mov.w	r2, r4, lsl #21
 8002714:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 8002718:	f080 809a 	bcs.w	8002850 <__adddf3+0x240>
 800271c:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 8002720:	bf08      	it	eq
 8002722:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8002726:	f150 0000 	adcs.w	r0, r0, #0
 800272a:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 800272e:	ea41 0105 	orr.w	r1, r1, r5
 8002732:	bd30      	pop	{r4, r5, pc}
 8002734:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 8002738:	4140      	adcs	r0, r0
 800273a:	eb41 0101 	adc.w	r1, r1, r1
 800273e:	3c01      	subs	r4, #1
 8002740:	bf28      	it	cs
 8002742:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
 8002746:	d2e9      	bcs.n	800271c <__adddf3+0x10c>
 8002748:	f091 0f00 	teq	r1, #0
 800274c:	bf04      	itt	eq
 800274e:	4601      	moveq	r1, r0
 8002750:	2000      	moveq	r0, #0
 8002752:	fab1 f381 	clz	r3, r1
 8002756:	bf08      	it	eq
 8002758:	3320      	addeq	r3, #32
 800275a:	f1a3 030b 	sub.w	r3, r3, #11
 800275e:	f1b3 0220 	subs.w	r2, r3, #32
 8002762:	da0c      	bge.n	800277e <__adddf3+0x16e>
 8002764:	320c      	adds	r2, #12
 8002766:	dd08      	ble.n	800277a <__adddf3+0x16a>
 8002768:	f102 0c14 	add.w	ip, r2, #20
 800276c:	f1c2 020c 	rsb	r2, r2, #12
 8002770:	fa01 f00c 	lsl.w	r0, r1, ip
 8002774:	fa21 f102 	lsr.w	r1, r1, r2
 8002778:	e00c      	b.n	8002794 <__adddf3+0x184>
 800277a:	f102 0214 	add.w	r2, r2, #20
 800277e:	bfd8      	it	le
 8002780:	f1c2 0c20 	rsble	ip, r2, #32
 8002784:	fa01 f102 	lsl.w	r1, r1, r2
 8002788:	fa20 fc0c 	lsr.w	ip, r0, ip
 800278c:	bfdc      	itt	le
 800278e:	ea41 010c 	orrle.w	r1, r1, ip
 8002792:	4090      	lslle	r0, r2
 8002794:	1ae4      	subs	r4, r4, r3
 8002796:	bfa2      	ittt	ge
 8002798:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 800279c:	4329      	orrge	r1, r5
 800279e:	bd30      	popge	{r4, r5, pc}
 80027a0:	ea6f 0404 	mvn.w	r4, r4
 80027a4:	3c1f      	subs	r4, #31
 80027a6:	da1c      	bge.n	80027e2 <__adddf3+0x1d2>
 80027a8:	340c      	adds	r4, #12
 80027aa:	dc0e      	bgt.n	80027ca <__adddf3+0x1ba>
 80027ac:	f104 0414 	add.w	r4, r4, #20
 80027b0:	f1c4 0220 	rsb	r2, r4, #32
 80027b4:	fa20 f004 	lsr.w	r0, r0, r4
 80027b8:	fa01 f302 	lsl.w	r3, r1, r2
 80027bc:	ea40 0003 	orr.w	r0, r0, r3
 80027c0:	fa21 f304 	lsr.w	r3, r1, r4
 80027c4:	ea45 0103 	orr.w	r1, r5, r3
 80027c8:	bd30      	pop	{r4, r5, pc}
 80027ca:	f1c4 040c 	rsb	r4, r4, #12
 80027ce:	f1c4 0220 	rsb	r2, r4, #32
 80027d2:	fa20 f002 	lsr.w	r0, r0, r2
 80027d6:	fa01 f304 	lsl.w	r3, r1, r4
 80027da:	ea40 0003 	orr.w	r0, r0, r3
 80027de:	4629      	mov	r1, r5
 80027e0:	bd30      	pop	{r4, r5, pc}
 80027e2:	fa21 f004 	lsr.w	r0, r1, r4
 80027e6:	4629      	mov	r1, r5
 80027e8:	bd30      	pop	{r4, r5, pc}
 80027ea:	f094 0f00 	teq	r4, #0
 80027ee:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 80027f2:	bf06      	itte	eq
 80027f4:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 80027f8:	3401      	addeq	r4, #1
 80027fa:	3d01      	subne	r5, #1
 80027fc:	e74e      	b.n	800269c <__adddf3+0x8c>
 80027fe:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8002802:	bf18      	it	ne
 8002804:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8002808:	d029      	beq.n	800285e <__adddf3+0x24e>
 800280a:	ea94 0f05 	teq	r4, r5
 800280e:	bf08      	it	eq
 8002810:	ea90 0f02 	teqeq	r0, r2
 8002814:	d005      	beq.n	8002822 <__adddf3+0x212>
 8002816:	ea54 0c00 	orrs.w	ip, r4, r0
 800281a:	bf04      	itt	eq
 800281c:	4619      	moveq	r1, r3
 800281e:	4610      	moveq	r0, r2
 8002820:	bd30      	pop	{r4, r5, pc}
 8002822:	ea91 0f03 	teq	r1, r3
 8002826:	bf1e      	ittt	ne
 8002828:	2100      	movne	r1, #0
 800282a:	2000      	movne	r0, #0
 800282c:	bd30      	popne	{r4, r5, pc}
 800282e:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 8002832:	d105      	bne.n	8002840 <__adddf3+0x230>
 8002834:	0040      	lsls	r0, r0, #1
 8002836:	4149      	adcs	r1, r1
 8002838:	bf28      	it	cs
 800283a:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 800283e:	bd30      	pop	{r4, r5, pc}
 8002840:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 8002844:	bf3c      	itt	cc
 8002846:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 800284a:	bd30      	popcc	{r4, r5, pc}
 800284c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8002850:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 8002854:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002858:	f04f 0000 	mov.w	r0, #0
 800285c:	bd30      	pop	{r4, r5, pc}
 800285e:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8002862:	bf1a      	itte	ne
 8002864:	4619      	movne	r1, r3
 8002866:	4610      	movne	r0, r2
 8002868:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 800286c:	bf1c      	itt	ne
 800286e:	460b      	movne	r3, r1
 8002870:	4602      	movne	r2, r0
 8002872:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8002876:	bf06      	itte	eq
 8002878:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 800287c:	ea91 0f03 	teqeq	r1, r3
 8002880:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 8002884:	bd30      	pop	{r4, r5, pc}
 8002886:	bf00      	nop

08002888 <__aeabi_ui2d>:
 8002888:	f090 0f00 	teq	r0, #0
 800288c:	bf04      	itt	eq
 800288e:	2100      	moveq	r1, #0
 8002890:	4770      	bxeq	lr
 8002892:	b530      	push	{r4, r5, lr}
 8002894:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8002898:	f104 0432 	add.w	r4, r4, #50	; 0x32
 800289c:	f04f 0500 	mov.w	r5, #0
 80028a0:	f04f 0100 	mov.w	r1, #0
 80028a4:	e750      	b.n	8002748 <__adddf3+0x138>
 80028a6:	bf00      	nop

080028a8 <__aeabi_i2d>:
 80028a8:	f090 0f00 	teq	r0, #0
 80028ac:	bf04      	itt	eq
 80028ae:	2100      	moveq	r1, #0
 80028b0:	4770      	bxeq	lr
 80028b2:	b530      	push	{r4, r5, lr}
 80028b4:	f44f 6480 	mov.w	r4, #1024	; 0x400
 80028b8:	f104 0432 	add.w	r4, r4, #50	; 0x32
 80028bc:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 80028c0:	bf48      	it	mi
 80028c2:	4240      	negmi	r0, r0
 80028c4:	f04f 0100 	mov.w	r1, #0
 80028c8:	e73e      	b.n	8002748 <__adddf3+0x138>
 80028ca:	bf00      	nop

080028cc <__aeabi_f2d>:
 80028cc:	0042      	lsls	r2, r0, #1
 80028ce:	ea4f 01e2 	mov.w	r1, r2, asr #3
 80028d2:	ea4f 0131 	mov.w	r1, r1, rrx
 80028d6:	ea4f 7002 	mov.w	r0, r2, lsl #28
 80028da:	bf1f      	itttt	ne
 80028dc:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 80028e0:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 80028e4:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 80028e8:	4770      	bxne	lr
 80028ea:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
 80028ee:	bf08      	it	eq
 80028f0:	4770      	bxeq	lr
 80028f2:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
 80028f6:	bf04      	itt	eq
 80028f8:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
 80028fc:	4770      	bxeq	lr
 80028fe:	b530      	push	{r4, r5, lr}
 8002900:	f44f 7460 	mov.w	r4, #896	; 0x380
 8002904:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8002908:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800290c:	e71c      	b.n	8002748 <__adddf3+0x138>
 800290e:	bf00      	nop

08002910 <__aeabi_ul2d>:
 8002910:	ea50 0201 	orrs.w	r2, r0, r1
 8002914:	bf08      	it	eq
 8002916:	4770      	bxeq	lr
 8002918:	b530      	push	{r4, r5, lr}
 800291a:	f04f 0500 	mov.w	r5, #0
 800291e:	e00a      	b.n	8002936 <__aeabi_l2d+0x16>

08002920 <__aeabi_l2d>:
 8002920:	ea50 0201 	orrs.w	r2, r0, r1
 8002924:	bf08      	it	eq
 8002926:	4770      	bxeq	lr
 8002928:	b530      	push	{r4, r5, lr}
 800292a:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 800292e:	d502      	bpl.n	8002936 <__aeabi_l2d+0x16>
 8002930:	4240      	negs	r0, r0
 8002932:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8002936:	f44f 6480 	mov.w	r4, #1024	; 0x400
 800293a:	f104 0432 	add.w	r4, r4, #50	; 0x32
 800293e:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 8002942:	f43f aed8 	beq.w	80026f6 <__adddf3+0xe6>
 8002946:	f04f 0203 	mov.w	r2, #3
 800294a:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 800294e:	bf18      	it	ne
 8002950:	3203      	addne	r2, #3
 8002952:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8002956:	bf18      	it	ne
 8002958:	3203      	addne	r2, #3
 800295a:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 800295e:	f1c2 0320 	rsb	r3, r2, #32
 8002962:	fa00 fc03 	lsl.w	ip, r0, r3
 8002966:	fa20 f002 	lsr.w	r0, r0, r2
 800296a:	fa01 fe03 	lsl.w	lr, r1, r3
 800296e:	ea40 000e 	orr.w	r0, r0, lr
 8002972:	fa21 f102 	lsr.w	r1, r1, r2
 8002976:	4414      	add	r4, r2
 8002978:	e6bd      	b.n	80026f6 <__adddf3+0xe6>
 800297a:	bf00      	nop

0800297c <__aeabi_dmul>:
 800297c:	b570      	push	{r4, r5, r6, lr}
 800297e:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8002982:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8002986:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 800298a:	bf1d      	ittte	ne
 800298c:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8002990:	ea94 0f0c 	teqne	r4, ip
 8002994:	ea95 0f0c 	teqne	r5, ip
 8002998:	f000 f8de 	bleq	8002b58 <__aeabi_dmul+0x1dc>
 800299c:	442c      	add	r4, r5
 800299e:	ea81 0603 	eor.w	r6, r1, r3
 80029a2:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 80029a6:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 80029aa:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 80029ae:	bf18      	it	ne
 80029b0:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 80029b4:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 80029b8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80029bc:	d038      	beq.n	8002a30 <__aeabi_dmul+0xb4>
 80029be:	fba0 ce02 	umull	ip, lr, r0, r2
 80029c2:	f04f 0500 	mov.w	r5, #0
 80029c6:	fbe1 e502 	umlal	lr, r5, r1, r2
 80029ca:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 80029ce:	fbe0 e503 	umlal	lr, r5, r0, r3
 80029d2:	f04f 0600 	mov.w	r6, #0
 80029d6:	fbe1 5603 	umlal	r5, r6, r1, r3
 80029da:	f09c 0f00 	teq	ip, #0
 80029de:	bf18      	it	ne
 80029e0:	f04e 0e01 	orrne.w	lr, lr, #1
 80029e4:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 80029e8:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 80029ec:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 80029f0:	d204      	bcs.n	80029fc <__aeabi_dmul+0x80>
 80029f2:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 80029f6:	416d      	adcs	r5, r5
 80029f8:	eb46 0606 	adc.w	r6, r6, r6
 80029fc:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8002a00:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 8002a04:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8002a08:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8002a0c:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 8002a10:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8002a14:	bf88      	it	hi
 8002a16:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8002a1a:	d81e      	bhi.n	8002a5a <__aeabi_dmul+0xde>
 8002a1c:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 8002a20:	bf08      	it	eq
 8002a22:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 8002a26:	f150 0000 	adcs.w	r0, r0, #0
 8002a2a:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8002a2e:	bd70      	pop	{r4, r5, r6, pc}
 8002a30:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 8002a34:	ea46 0101 	orr.w	r1, r6, r1
 8002a38:	ea40 0002 	orr.w	r0, r0, r2
 8002a3c:	ea81 0103 	eor.w	r1, r1, r3
 8002a40:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 8002a44:	bfc2      	ittt	gt
 8002a46:	ebd4 050c 	rsbsgt	r5, r4, ip
 8002a4a:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8002a4e:	bd70      	popgt	{r4, r5, r6, pc}
 8002a50:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8002a54:	f04f 0e00 	mov.w	lr, #0
 8002a58:	3c01      	subs	r4, #1
 8002a5a:	f300 80ab 	bgt.w	8002bb4 <__aeabi_dmul+0x238>
 8002a5e:	f114 0f36 	cmn.w	r4, #54	; 0x36
 8002a62:	bfde      	ittt	le
 8002a64:	2000      	movle	r0, #0
 8002a66:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8002a6a:	bd70      	pople	{r4, r5, r6, pc}
 8002a6c:	f1c4 0400 	rsb	r4, r4, #0
 8002a70:	3c20      	subs	r4, #32
 8002a72:	da35      	bge.n	8002ae0 <__aeabi_dmul+0x164>
 8002a74:	340c      	adds	r4, #12
 8002a76:	dc1b      	bgt.n	8002ab0 <__aeabi_dmul+0x134>
 8002a78:	f104 0414 	add.w	r4, r4, #20
 8002a7c:	f1c4 0520 	rsb	r5, r4, #32
 8002a80:	fa00 f305 	lsl.w	r3, r0, r5
 8002a84:	fa20 f004 	lsr.w	r0, r0, r4
 8002a88:	fa01 f205 	lsl.w	r2, r1, r5
 8002a8c:	ea40 0002 	orr.w	r0, r0, r2
 8002a90:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 8002a94:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8002a98:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8002a9c:	fa21 f604 	lsr.w	r6, r1, r4
 8002aa0:	eb42 0106 	adc.w	r1, r2, r6
 8002aa4:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8002aa8:	bf08      	it	eq
 8002aaa:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8002aae:	bd70      	pop	{r4, r5, r6, pc}
 8002ab0:	f1c4 040c 	rsb	r4, r4, #12
 8002ab4:	f1c4 0520 	rsb	r5, r4, #32
 8002ab8:	fa00 f304 	lsl.w	r3, r0, r4
 8002abc:	fa20 f005 	lsr.w	r0, r0, r5
 8002ac0:	fa01 f204 	lsl.w	r2, r1, r4
 8002ac4:	ea40 0002 	orr.w	r0, r0, r2
 8002ac8:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8002acc:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8002ad0:	f141 0100 	adc.w	r1, r1, #0
 8002ad4:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8002ad8:	bf08      	it	eq
 8002ada:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8002ade:	bd70      	pop	{r4, r5, r6, pc}
 8002ae0:	f1c4 0520 	rsb	r5, r4, #32
 8002ae4:	fa00 f205 	lsl.w	r2, r0, r5
 8002ae8:	ea4e 0e02 	orr.w	lr, lr, r2
 8002aec:	fa20 f304 	lsr.w	r3, r0, r4
 8002af0:	fa01 f205 	lsl.w	r2, r1, r5
 8002af4:	ea43 0302 	orr.w	r3, r3, r2
 8002af8:	fa21 f004 	lsr.w	r0, r1, r4
 8002afc:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8002b00:	fa21 f204 	lsr.w	r2, r1, r4
 8002b04:	ea20 0002 	bic.w	r0, r0, r2
 8002b08:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8002b0c:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8002b10:	bf08      	it	eq
 8002b12:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8002b16:	bd70      	pop	{r4, r5, r6, pc}
 8002b18:	f094 0f00 	teq	r4, #0
 8002b1c:	d10f      	bne.n	8002b3e <__aeabi_dmul+0x1c2>
 8002b1e:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 8002b22:	0040      	lsls	r0, r0, #1
 8002b24:	eb41 0101 	adc.w	r1, r1, r1
 8002b28:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8002b2c:	bf08      	it	eq
 8002b2e:	3c01      	subeq	r4, #1
 8002b30:	d0f7      	beq.n	8002b22 <__aeabi_dmul+0x1a6>
 8002b32:	ea41 0106 	orr.w	r1, r1, r6
 8002b36:	f095 0f00 	teq	r5, #0
 8002b3a:	bf18      	it	ne
 8002b3c:	4770      	bxne	lr
 8002b3e:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 8002b42:	0052      	lsls	r2, r2, #1
 8002b44:	eb43 0303 	adc.w	r3, r3, r3
 8002b48:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8002b4c:	bf08      	it	eq
 8002b4e:	3d01      	subeq	r5, #1
 8002b50:	d0f7      	beq.n	8002b42 <__aeabi_dmul+0x1c6>
 8002b52:	ea43 0306 	orr.w	r3, r3, r6
 8002b56:	4770      	bx	lr
 8002b58:	ea94 0f0c 	teq	r4, ip
 8002b5c:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8002b60:	bf18      	it	ne
 8002b62:	ea95 0f0c 	teqne	r5, ip
 8002b66:	d00c      	beq.n	8002b82 <__aeabi_dmul+0x206>
 8002b68:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8002b6c:	bf18      	it	ne
 8002b6e:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8002b72:	d1d1      	bne.n	8002b18 <__aeabi_dmul+0x19c>
 8002b74:	ea81 0103 	eor.w	r1, r1, r3
 8002b78:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8002b7c:	f04f 0000 	mov.w	r0, #0
 8002b80:	bd70      	pop	{r4, r5, r6, pc}
 8002b82:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8002b86:	bf06      	itte	eq
 8002b88:	4610      	moveq	r0, r2
 8002b8a:	4619      	moveq	r1, r3
 8002b8c:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8002b90:	d019      	beq.n	8002bc6 <__aeabi_dmul+0x24a>
 8002b92:	ea94 0f0c 	teq	r4, ip
 8002b96:	d102      	bne.n	8002b9e <__aeabi_dmul+0x222>
 8002b98:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8002b9c:	d113      	bne.n	8002bc6 <__aeabi_dmul+0x24a>
 8002b9e:	ea95 0f0c 	teq	r5, ip
 8002ba2:	d105      	bne.n	8002bb0 <__aeabi_dmul+0x234>
 8002ba4:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8002ba8:	bf1c      	itt	ne
 8002baa:	4610      	movne	r0, r2
 8002bac:	4619      	movne	r1, r3
 8002bae:	d10a      	bne.n	8002bc6 <__aeabi_dmul+0x24a>
 8002bb0:	ea81 0103 	eor.w	r1, r1, r3
 8002bb4:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8002bb8:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8002bbc:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002bc0:	f04f 0000 	mov.w	r0, #0
 8002bc4:	bd70      	pop	{r4, r5, r6, pc}
 8002bc6:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8002bca:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 8002bce:	bd70      	pop	{r4, r5, r6, pc}

08002bd0 <__aeabi_ddiv>:
 8002bd0:	b570      	push	{r4, r5, r6, lr}
 8002bd2:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8002bd6:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8002bda:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8002bde:	bf1d      	ittte	ne
 8002be0:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8002be4:	ea94 0f0c 	teqne	r4, ip
 8002be8:	ea95 0f0c 	teqne	r5, ip
 8002bec:	f000 f8a7 	bleq	8002d3e <__aeabi_ddiv+0x16e>
 8002bf0:	eba4 0405 	sub.w	r4, r4, r5
 8002bf4:	ea81 0e03 	eor.w	lr, r1, r3
 8002bf8:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8002bfc:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8002c00:	f000 8088 	beq.w	8002d14 <__aeabi_ddiv+0x144>
 8002c04:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8002c08:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8002c0c:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 8002c10:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 8002c14:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8002c18:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8002c1c:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 8002c20:	ea4f 2600 	mov.w	r6, r0, lsl #8
 8002c24:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8002c28:	429d      	cmp	r5, r3
 8002c2a:	bf08      	it	eq
 8002c2c:	4296      	cmpeq	r6, r2
 8002c2e:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 8002c32:	f504 7440 	add.w	r4, r4, #768	; 0x300
 8002c36:	d202      	bcs.n	8002c3e <__aeabi_ddiv+0x6e>
 8002c38:	085b      	lsrs	r3, r3, #1
 8002c3a:	ea4f 0232 	mov.w	r2, r2, rrx
 8002c3e:	1ab6      	subs	r6, r6, r2
 8002c40:	eb65 0503 	sbc.w	r5, r5, r3
 8002c44:	085b      	lsrs	r3, r3, #1
 8002c46:	ea4f 0232 	mov.w	r2, r2, rrx
 8002c4a:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8002c4e:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 8002c52:	ebb6 0e02 	subs.w	lr, r6, r2
 8002c56:	eb75 0e03 	sbcs.w	lr, r5, r3
 8002c5a:	bf22      	ittt	cs
 8002c5c:	1ab6      	subcs	r6, r6, r2
 8002c5e:	4675      	movcs	r5, lr
 8002c60:	ea40 000c 	orrcs.w	r0, r0, ip
 8002c64:	085b      	lsrs	r3, r3, #1
 8002c66:	ea4f 0232 	mov.w	r2, r2, rrx
 8002c6a:	ebb6 0e02 	subs.w	lr, r6, r2
 8002c6e:	eb75 0e03 	sbcs.w	lr, r5, r3
 8002c72:	bf22      	ittt	cs
 8002c74:	1ab6      	subcs	r6, r6, r2
 8002c76:	4675      	movcs	r5, lr
 8002c78:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8002c7c:	085b      	lsrs	r3, r3, #1
 8002c7e:	ea4f 0232 	mov.w	r2, r2, rrx
 8002c82:	ebb6 0e02 	subs.w	lr, r6, r2
 8002c86:	eb75 0e03 	sbcs.w	lr, r5, r3
 8002c8a:	bf22      	ittt	cs
 8002c8c:	1ab6      	subcs	r6, r6, r2
 8002c8e:	4675      	movcs	r5, lr
 8002c90:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8002c94:	085b      	lsrs	r3, r3, #1
 8002c96:	ea4f 0232 	mov.w	r2, r2, rrx
 8002c9a:	ebb6 0e02 	subs.w	lr, r6, r2
 8002c9e:	eb75 0e03 	sbcs.w	lr, r5, r3
 8002ca2:	bf22      	ittt	cs
 8002ca4:	1ab6      	subcs	r6, r6, r2
 8002ca6:	4675      	movcs	r5, lr
 8002ca8:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8002cac:	ea55 0e06 	orrs.w	lr, r5, r6
 8002cb0:	d018      	beq.n	8002ce4 <__aeabi_ddiv+0x114>
 8002cb2:	ea4f 1505 	mov.w	r5, r5, lsl #4
 8002cb6:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 8002cba:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8002cbe:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8002cc2:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 8002cc6:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 8002cca:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 8002cce:	d1c0      	bne.n	8002c52 <__aeabi_ddiv+0x82>
 8002cd0:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8002cd4:	d10b      	bne.n	8002cee <__aeabi_ddiv+0x11e>
 8002cd6:	ea41 0100 	orr.w	r1, r1, r0
 8002cda:	f04f 0000 	mov.w	r0, #0
 8002cde:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8002ce2:	e7b6      	b.n	8002c52 <__aeabi_ddiv+0x82>
 8002ce4:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8002ce8:	bf04      	itt	eq
 8002cea:	4301      	orreq	r1, r0
 8002cec:	2000      	moveq	r0, #0
 8002cee:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8002cf2:	bf88      	it	hi
 8002cf4:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8002cf8:	f63f aeaf 	bhi.w	8002a5a <__aeabi_dmul+0xde>
 8002cfc:	ebb5 0c03 	subs.w	ip, r5, r3
 8002d00:	bf04      	itt	eq
 8002d02:	ebb6 0c02 	subseq.w	ip, r6, r2
 8002d06:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8002d0a:	f150 0000 	adcs.w	r0, r0, #0
 8002d0e:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8002d12:	bd70      	pop	{r4, r5, r6, pc}
 8002d14:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8002d18:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8002d1c:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 8002d20:	bfc2      	ittt	gt
 8002d22:	ebd4 050c 	rsbsgt	r5, r4, ip
 8002d26:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8002d2a:	bd70      	popgt	{r4, r5, r6, pc}
 8002d2c:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8002d30:	f04f 0e00 	mov.w	lr, #0
 8002d34:	3c01      	subs	r4, #1
 8002d36:	e690      	b.n	8002a5a <__aeabi_dmul+0xde>
 8002d38:	ea45 0e06 	orr.w	lr, r5, r6
 8002d3c:	e68d      	b.n	8002a5a <__aeabi_dmul+0xde>
 8002d3e:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8002d42:	ea94 0f0c 	teq	r4, ip
 8002d46:	bf08      	it	eq
 8002d48:	ea95 0f0c 	teqeq	r5, ip
 8002d4c:	f43f af3b 	beq.w	8002bc6 <__aeabi_dmul+0x24a>
 8002d50:	ea94 0f0c 	teq	r4, ip
 8002d54:	d10a      	bne.n	8002d6c <__aeabi_ddiv+0x19c>
 8002d56:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8002d5a:	f47f af34 	bne.w	8002bc6 <__aeabi_dmul+0x24a>
 8002d5e:	ea95 0f0c 	teq	r5, ip
 8002d62:	f47f af25 	bne.w	8002bb0 <__aeabi_dmul+0x234>
 8002d66:	4610      	mov	r0, r2
 8002d68:	4619      	mov	r1, r3
 8002d6a:	e72c      	b.n	8002bc6 <__aeabi_dmul+0x24a>
 8002d6c:	ea95 0f0c 	teq	r5, ip
 8002d70:	d106      	bne.n	8002d80 <__aeabi_ddiv+0x1b0>
 8002d72:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8002d76:	f43f aefd 	beq.w	8002b74 <__aeabi_dmul+0x1f8>
 8002d7a:	4610      	mov	r0, r2
 8002d7c:	4619      	mov	r1, r3
 8002d7e:	e722      	b.n	8002bc6 <__aeabi_dmul+0x24a>
 8002d80:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8002d84:	bf18      	it	ne
 8002d86:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8002d8a:	f47f aec5 	bne.w	8002b18 <__aeabi_dmul+0x19c>
 8002d8e:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 8002d92:	f47f af0d 	bne.w	8002bb0 <__aeabi_dmul+0x234>
 8002d96:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 8002d9a:	f47f aeeb 	bne.w	8002b74 <__aeabi_dmul+0x1f8>
 8002d9e:	e712      	b.n	8002bc6 <__aeabi_dmul+0x24a>

08002da0 <__gedf2>:
 8002da0:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 8002da4:	e006      	b.n	8002db4 <__cmpdf2+0x4>
 8002da6:	bf00      	nop

08002da8 <__ledf2>:
 8002da8:	f04f 0c01 	mov.w	ip, #1
 8002dac:	e002      	b.n	8002db4 <__cmpdf2+0x4>
 8002dae:	bf00      	nop

08002db0 <__cmpdf2>:
 8002db0:	f04f 0c01 	mov.w	ip, #1
 8002db4:	f84d cd04 	str.w	ip, [sp, #-4]!
 8002db8:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8002dbc:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8002dc0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002dc4:	bf18      	it	ne
 8002dc6:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 8002dca:	d01b      	beq.n	8002e04 <__cmpdf2+0x54>
 8002dcc:	b001      	add	sp, #4
 8002dce:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 8002dd2:	bf0c      	ite	eq
 8002dd4:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 8002dd8:	ea91 0f03 	teqne	r1, r3
 8002ddc:	bf02      	ittt	eq
 8002dde:	ea90 0f02 	teqeq	r0, r2
 8002de2:	2000      	moveq	r0, #0
 8002de4:	4770      	bxeq	lr
 8002de6:	f110 0f00 	cmn.w	r0, #0
 8002dea:	ea91 0f03 	teq	r1, r3
 8002dee:	bf58      	it	pl
 8002df0:	4299      	cmppl	r1, r3
 8002df2:	bf08      	it	eq
 8002df4:	4290      	cmpeq	r0, r2
 8002df6:	bf2c      	ite	cs
 8002df8:	17d8      	asrcs	r0, r3, #31
 8002dfa:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 8002dfe:	f040 0001 	orr.w	r0, r0, #1
 8002e02:	4770      	bx	lr
 8002e04:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8002e08:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8002e0c:	d102      	bne.n	8002e14 <__cmpdf2+0x64>
 8002e0e:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8002e12:	d107      	bne.n	8002e24 <__cmpdf2+0x74>
 8002e14:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002e18:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8002e1c:	d1d6      	bne.n	8002dcc <__cmpdf2+0x1c>
 8002e1e:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8002e22:	d0d3      	beq.n	8002dcc <__cmpdf2+0x1c>
 8002e24:	f85d 0b04 	ldr.w	r0, [sp], #4
 8002e28:	4770      	bx	lr
 8002e2a:	bf00      	nop

08002e2c <__aeabi_cdrcmple>:
 8002e2c:	4684      	mov	ip, r0
 8002e2e:	4610      	mov	r0, r2
 8002e30:	4662      	mov	r2, ip
 8002e32:	468c      	mov	ip, r1
 8002e34:	4619      	mov	r1, r3
 8002e36:	4663      	mov	r3, ip
 8002e38:	e000      	b.n	8002e3c <__aeabi_cdcmpeq>
 8002e3a:	bf00      	nop

08002e3c <__aeabi_cdcmpeq>:
 8002e3c:	b501      	push	{r0, lr}
 8002e3e:	f7ff ffb7 	bl	8002db0 <__cmpdf2>
 8002e42:	2800      	cmp	r0, #0
 8002e44:	bf48      	it	mi
 8002e46:	f110 0f00 	cmnmi.w	r0, #0
 8002e4a:	bd01      	pop	{r0, pc}

08002e4c <__aeabi_dcmpeq>:
 8002e4c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8002e50:	f7ff fff4 	bl	8002e3c <__aeabi_cdcmpeq>
 8002e54:	bf0c      	ite	eq
 8002e56:	2001      	moveq	r0, #1
 8002e58:	2000      	movne	r0, #0
 8002e5a:	f85d fb08 	ldr.w	pc, [sp], #8
 8002e5e:	bf00      	nop

08002e60 <__aeabi_dcmplt>:
 8002e60:	f84d ed08 	str.w	lr, [sp, #-8]!
 8002e64:	f7ff ffea 	bl	8002e3c <__aeabi_cdcmpeq>
 8002e68:	bf34      	ite	cc
 8002e6a:	2001      	movcc	r0, #1
 8002e6c:	2000      	movcs	r0, #0
 8002e6e:	f85d fb08 	ldr.w	pc, [sp], #8
 8002e72:	bf00      	nop

08002e74 <__aeabi_dcmple>:
 8002e74:	f84d ed08 	str.w	lr, [sp, #-8]!
 8002e78:	f7ff ffe0 	bl	8002e3c <__aeabi_cdcmpeq>
 8002e7c:	bf94      	ite	ls
 8002e7e:	2001      	movls	r0, #1
 8002e80:	2000      	movhi	r0, #0
 8002e82:	f85d fb08 	ldr.w	pc, [sp], #8
 8002e86:	bf00      	nop

08002e88 <__aeabi_dcmpge>:
 8002e88:	f84d ed08 	str.w	lr, [sp, #-8]!
 8002e8c:	f7ff ffce 	bl	8002e2c <__aeabi_cdrcmple>
 8002e90:	bf94      	ite	ls
 8002e92:	2001      	movls	r0, #1
 8002e94:	2000      	movhi	r0, #0
 8002e96:	f85d fb08 	ldr.w	pc, [sp], #8
 8002e9a:	bf00      	nop

08002e9c <__aeabi_dcmpgt>:
 8002e9c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8002ea0:	f7ff ffc4 	bl	8002e2c <__aeabi_cdrcmple>
 8002ea4:	bf34      	ite	cc
 8002ea6:	2001      	movcc	r0, #1
 8002ea8:	2000      	movcs	r0, #0
 8002eaa:	f85d fb08 	ldr.w	pc, [sp], #8
 8002eae:	bf00      	nop

08002eb0 <__aeabi_dcmpun>:
 8002eb0:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8002eb4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8002eb8:	d102      	bne.n	8002ec0 <__aeabi_dcmpun+0x10>
 8002eba:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8002ebe:	d10a      	bne.n	8002ed6 <__aeabi_dcmpun+0x26>
 8002ec0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002ec4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8002ec8:	d102      	bne.n	8002ed0 <__aeabi_dcmpun+0x20>
 8002eca:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8002ece:	d102      	bne.n	8002ed6 <__aeabi_dcmpun+0x26>
 8002ed0:	f04f 0000 	mov.w	r0, #0
 8002ed4:	4770      	bx	lr
 8002ed6:	f04f 0001 	mov.w	r0, #1
 8002eda:	4770      	bx	lr

08002edc <__aeabi_d2uiz>:
 8002edc:	004a      	lsls	r2, r1, #1
 8002ede:	d211      	bcs.n	8002f04 <__aeabi_d2uiz+0x28>
 8002ee0:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8002ee4:	d211      	bcs.n	8002f0a <__aeabi_d2uiz+0x2e>
 8002ee6:	d50d      	bpl.n	8002f04 <__aeabi_d2uiz+0x28>
 8002ee8:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 8002eec:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 8002ef0:	d40e      	bmi.n	8002f10 <__aeabi_d2uiz+0x34>
 8002ef2:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8002ef6:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8002efa:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 8002efe:	fa23 f002 	lsr.w	r0, r3, r2
 8002f02:	4770      	bx	lr
 8002f04:	f04f 0000 	mov.w	r0, #0
 8002f08:	4770      	bx	lr
 8002f0a:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 8002f0e:	d102      	bne.n	8002f16 <__aeabi_d2uiz+0x3a>
 8002f10:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002f14:	4770      	bx	lr
 8002f16:	f04f 0000 	mov.w	r0, #0
 8002f1a:	4770      	bx	lr

08002f1c <__aeabi_d2f>:
 8002f1c:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8002f20:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 8002f24:	bf24      	itt	cs
 8002f26:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 8002f2a:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 8002f2e:	d90d      	bls.n	8002f4c <__aeabi_d2f+0x30>
 8002f30:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 8002f34:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 8002f38:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 8002f3c:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 8002f40:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 8002f44:	bf08      	it	eq
 8002f46:	f020 0001 	biceq.w	r0, r0, #1
 8002f4a:	4770      	bx	lr
 8002f4c:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 8002f50:	d121      	bne.n	8002f96 <__aeabi_d2f+0x7a>
 8002f52:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 8002f56:	bfbc      	itt	lt
 8002f58:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 8002f5c:	4770      	bxlt	lr
 8002f5e:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8002f62:	ea4f 5252 	mov.w	r2, r2, lsr #21
 8002f66:	f1c2 0218 	rsb	r2, r2, #24
 8002f6a:	f1c2 0c20 	rsb	ip, r2, #32
 8002f6e:	fa10 f30c 	lsls.w	r3, r0, ip
 8002f72:	fa20 f002 	lsr.w	r0, r0, r2
 8002f76:	bf18      	it	ne
 8002f78:	f040 0001 	orrne.w	r0, r0, #1
 8002f7c:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8002f80:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8002f84:	fa03 fc0c 	lsl.w	ip, r3, ip
 8002f88:	ea40 000c 	orr.w	r0, r0, ip
 8002f8c:	fa23 f302 	lsr.w	r3, r3, r2
 8002f90:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8002f94:	e7cc      	b.n	8002f30 <__aeabi_d2f+0x14>
 8002f96:	ea7f 5362 	mvns.w	r3, r2, asr #21
 8002f9a:	d107      	bne.n	8002fac <__aeabi_d2f+0x90>
 8002f9c:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 8002fa0:	bf1e      	ittt	ne
 8002fa2:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8002fa6:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 8002faa:	4770      	bxne	lr
 8002fac:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 8002fb0:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8002fb4:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8002fb8:	4770      	bx	lr
 8002fba:	bf00      	nop

08002fbc <__aeabi_ldivmod>:
 8002fbc:	b97b      	cbnz	r3, 8002fde <__aeabi_ldivmod+0x22>
 8002fbe:	b972      	cbnz	r2, 8002fde <__aeabi_ldivmod+0x22>
 8002fc0:	2900      	cmp	r1, #0
 8002fc2:	bfbe      	ittt	lt
 8002fc4:	2000      	movlt	r0, #0
 8002fc6:	f04f 4100 	movlt.w	r1, #2147483648	; 0x80000000
 8002fca:	e006      	blt.n	8002fda <__aeabi_ldivmod+0x1e>
 8002fcc:	bf08      	it	eq
 8002fce:	2800      	cmpeq	r0, #0
 8002fd0:	bf1c      	itt	ne
 8002fd2:	f06f 4100 	mvnne.w	r1, #2147483648	; 0x80000000
 8002fd6:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8002fda:	f000 b9bf 	b.w	800335c <__aeabi_idiv0>
 8002fde:	f1ad 0c08 	sub.w	ip, sp, #8
 8002fe2:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8002fe6:	2900      	cmp	r1, #0
 8002fe8:	db09      	blt.n	8002ffe <__aeabi_ldivmod+0x42>
 8002fea:	2b00      	cmp	r3, #0
 8002fec:	db1a      	blt.n	8003024 <__aeabi_ldivmod+0x68>
 8002fee:	f000 f84d 	bl	800308c <__udivmoddi4>
 8002ff2:	f8dd e004 	ldr.w	lr, [sp, #4]
 8002ff6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8002ffa:	b004      	add	sp, #16
 8002ffc:	4770      	bx	lr
 8002ffe:	4240      	negs	r0, r0
 8003000:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8003004:	2b00      	cmp	r3, #0
 8003006:	db1b      	blt.n	8003040 <__aeabi_ldivmod+0x84>
 8003008:	f000 f840 	bl	800308c <__udivmoddi4>
 800300c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8003010:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8003014:	b004      	add	sp, #16
 8003016:	4240      	negs	r0, r0
 8003018:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 800301c:	4252      	negs	r2, r2
 800301e:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8003022:	4770      	bx	lr
 8003024:	4252      	negs	r2, r2
 8003026:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 800302a:	f000 f82f 	bl	800308c <__udivmoddi4>
 800302e:	f8dd e004 	ldr.w	lr, [sp, #4]
 8003032:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8003036:	b004      	add	sp, #16
 8003038:	4240      	negs	r0, r0
 800303a:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 800303e:	4770      	bx	lr
 8003040:	4252      	negs	r2, r2
 8003042:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8003046:	f000 f821 	bl	800308c <__udivmoddi4>
 800304a:	f8dd e004 	ldr.w	lr, [sp, #4]
 800304e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8003052:	b004      	add	sp, #16
 8003054:	4252      	negs	r2, r2
 8003056:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 800305a:	4770      	bx	lr

0800305c <__aeabi_uldivmod>:
 800305c:	b953      	cbnz	r3, 8003074 <__aeabi_uldivmod+0x18>
 800305e:	b94a      	cbnz	r2, 8003074 <__aeabi_uldivmod+0x18>
 8003060:	2900      	cmp	r1, #0
 8003062:	bf08      	it	eq
 8003064:	2800      	cmpeq	r0, #0
 8003066:	bf1c      	itt	ne
 8003068:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 800306c:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8003070:	f000 b974 	b.w	800335c <__aeabi_idiv0>
 8003074:	f1ad 0c08 	sub.w	ip, sp, #8
 8003078:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 800307c:	f000 f806 	bl	800308c <__udivmoddi4>
 8003080:	f8dd e004 	ldr.w	lr, [sp, #4]
 8003084:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8003088:	b004      	add	sp, #16
 800308a:	4770      	bx	lr

0800308c <__udivmoddi4>:
 800308c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8003090:	9d08      	ldr	r5, [sp, #32]
 8003092:	4604      	mov	r4, r0
 8003094:	468e      	mov	lr, r1
 8003096:	2b00      	cmp	r3, #0
 8003098:	d14d      	bne.n	8003136 <__udivmoddi4+0xaa>
 800309a:	428a      	cmp	r2, r1
 800309c:	4694      	mov	ip, r2
 800309e:	d969      	bls.n	8003174 <__udivmoddi4+0xe8>
 80030a0:	fab2 f282 	clz	r2, r2
 80030a4:	b152      	cbz	r2, 80030bc <__udivmoddi4+0x30>
 80030a6:	fa01 f302 	lsl.w	r3, r1, r2
 80030aa:	f1c2 0120 	rsb	r1, r2, #32
 80030ae:	fa20 f101 	lsr.w	r1, r0, r1
 80030b2:	fa0c fc02 	lsl.w	ip, ip, r2
 80030b6:	ea41 0e03 	orr.w	lr, r1, r3
 80030ba:	4094      	lsls	r4, r2
 80030bc:	ea4f 481c 	mov.w	r8, ip, lsr #16
 80030c0:	0c21      	lsrs	r1, r4, #16
 80030c2:	fbbe f6f8 	udiv	r6, lr, r8
 80030c6:	fa1f f78c 	uxth.w	r7, ip
 80030ca:	fb08 e316 	mls	r3, r8, r6, lr
 80030ce:	ea41 4303 	orr.w	r3, r1, r3, lsl #16
 80030d2:	fb06 f107 	mul.w	r1, r6, r7
 80030d6:	4299      	cmp	r1, r3
 80030d8:	d90a      	bls.n	80030f0 <__udivmoddi4+0x64>
 80030da:	eb1c 0303 	adds.w	r3, ip, r3
 80030de:	f106 30ff 	add.w	r0, r6, #4294967295	; 0xffffffff
 80030e2:	f080 811f 	bcs.w	8003324 <__udivmoddi4+0x298>
 80030e6:	4299      	cmp	r1, r3
 80030e8:	f240 811c 	bls.w	8003324 <__udivmoddi4+0x298>
 80030ec:	3e02      	subs	r6, #2
 80030ee:	4463      	add	r3, ip
 80030f0:	1a5b      	subs	r3, r3, r1
 80030f2:	b2a4      	uxth	r4, r4
 80030f4:	fbb3 f0f8 	udiv	r0, r3, r8
 80030f8:	fb08 3310 	mls	r3, r8, r0, r3
 80030fc:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 8003100:	fb00 f707 	mul.w	r7, r0, r7
 8003104:	42a7      	cmp	r7, r4
 8003106:	d90a      	bls.n	800311e <__udivmoddi4+0x92>
 8003108:	eb1c 0404 	adds.w	r4, ip, r4
 800310c:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8003110:	f080 810a 	bcs.w	8003328 <__udivmoddi4+0x29c>
 8003114:	42a7      	cmp	r7, r4
 8003116:	f240 8107 	bls.w	8003328 <__udivmoddi4+0x29c>
 800311a:	4464      	add	r4, ip
 800311c:	3802      	subs	r0, #2
 800311e:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
 8003122:	1be4      	subs	r4, r4, r7
 8003124:	2600      	movs	r6, #0
 8003126:	b11d      	cbz	r5, 8003130 <__udivmoddi4+0xa4>
 8003128:	40d4      	lsrs	r4, r2
 800312a:	2300      	movs	r3, #0
 800312c:	e9c5 4300 	strd	r4, r3, [r5]
 8003130:	4631      	mov	r1, r6
 8003132:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8003136:	428b      	cmp	r3, r1
 8003138:	d909      	bls.n	800314e <__udivmoddi4+0xc2>
 800313a:	2d00      	cmp	r5, #0
 800313c:	f000 80ef 	beq.w	800331e <__udivmoddi4+0x292>
 8003140:	2600      	movs	r6, #0
 8003142:	e9c5 0100 	strd	r0, r1, [r5]
 8003146:	4630      	mov	r0, r6
 8003148:	4631      	mov	r1, r6
 800314a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800314e:	fab3 f683 	clz	r6, r3
 8003152:	2e00      	cmp	r6, #0
 8003154:	d14a      	bne.n	80031ec <__udivmoddi4+0x160>
 8003156:	428b      	cmp	r3, r1
 8003158:	d302      	bcc.n	8003160 <__udivmoddi4+0xd4>
 800315a:	4282      	cmp	r2, r0
 800315c:	f200 80f9 	bhi.w	8003352 <__udivmoddi4+0x2c6>
 8003160:	1a84      	subs	r4, r0, r2
 8003162:	eb61 0303 	sbc.w	r3, r1, r3
 8003166:	2001      	movs	r0, #1
 8003168:	469e      	mov	lr, r3
 800316a:	2d00      	cmp	r5, #0
 800316c:	d0e0      	beq.n	8003130 <__udivmoddi4+0xa4>
 800316e:	e9c5 4e00 	strd	r4, lr, [r5]
 8003172:	e7dd      	b.n	8003130 <__udivmoddi4+0xa4>
 8003174:	b902      	cbnz	r2, 8003178 <__udivmoddi4+0xec>
 8003176:	deff      	udf	#255	; 0xff
 8003178:	fab2 f282 	clz	r2, r2
 800317c:	2a00      	cmp	r2, #0
 800317e:	f040 8092 	bne.w	80032a6 <__udivmoddi4+0x21a>
 8003182:	eba1 010c 	sub.w	r1, r1, ip
 8003186:	ea4f 471c 	mov.w	r7, ip, lsr #16
 800318a:	fa1f fe8c 	uxth.w	lr, ip
 800318e:	2601      	movs	r6, #1
 8003190:	0c20      	lsrs	r0, r4, #16
 8003192:	fbb1 f3f7 	udiv	r3, r1, r7
 8003196:	fb07 1113 	mls	r1, r7, r3, r1
 800319a:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
 800319e:	fb0e f003 	mul.w	r0, lr, r3
 80031a2:	4288      	cmp	r0, r1
 80031a4:	d908      	bls.n	80031b8 <__udivmoddi4+0x12c>
 80031a6:	eb1c 0101 	adds.w	r1, ip, r1
 80031aa:	f103 38ff 	add.w	r8, r3, #4294967295	; 0xffffffff
 80031ae:	d202      	bcs.n	80031b6 <__udivmoddi4+0x12a>
 80031b0:	4288      	cmp	r0, r1
 80031b2:	f200 80cb 	bhi.w	800334c <__udivmoddi4+0x2c0>
 80031b6:	4643      	mov	r3, r8
 80031b8:	1a09      	subs	r1, r1, r0
 80031ba:	b2a4      	uxth	r4, r4
 80031bc:	fbb1 f0f7 	udiv	r0, r1, r7
 80031c0:	fb07 1110 	mls	r1, r7, r0, r1
 80031c4:	ea44 4401 	orr.w	r4, r4, r1, lsl #16
 80031c8:	fb0e fe00 	mul.w	lr, lr, r0
 80031cc:	45a6      	cmp	lr, r4
 80031ce:	d908      	bls.n	80031e2 <__udivmoddi4+0x156>
 80031d0:	eb1c 0404 	adds.w	r4, ip, r4
 80031d4:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
 80031d8:	d202      	bcs.n	80031e0 <__udivmoddi4+0x154>
 80031da:	45a6      	cmp	lr, r4
 80031dc:	f200 80bb 	bhi.w	8003356 <__udivmoddi4+0x2ca>
 80031e0:	4608      	mov	r0, r1
 80031e2:	eba4 040e 	sub.w	r4, r4, lr
 80031e6:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
 80031ea:	e79c      	b.n	8003126 <__udivmoddi4+0x9a>
 80031ec:	f1c6 0720 	rsb	r7, r6, #32
 80031f0:	40b3      	lsls	r3, r6
 80031f2:	fa22 fc07 	lsr.w	ip, r2, r7
 80031f6:	ea4c 0c03 	orr.w	ip, ip, r3
 80031fa:	fa20 f407 	lsr.w	r4, r0, r7
 80031fe:	fa01 f306 	lsl.w	r3, r1, r6
 8003202:	431c      	orrs	r4, r3
 8003204:	40f9      	lsrs	r1, r7
 8003206:	ea4f 491c 	mov.w	r9, ip, lsr #16
 800320a:	fa00 f306 	lsl.w	r3, r0, r6
 800320e:	fbb1 f8f9 	udiv	r8, r1, r9
 8003212:	0c20      	lsrs	r0, r4, #16
 8003214:	fa1f fe8c 	uxth.w	lr, ip
 8003218:	fb09 1118 	mls	r1, r9, r8, r1
 800321c:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
 8003220:	fb08 f00e 	mul.w	r0, r8, lr
 8003224:	4288      	cmp	r0, r1
 8003226:	fa02 f206 	lsl.w	r2, r2, r6
 800322a:	d90b      	bls.n	8003244 <__udivmoddi4+0x1b8>
 800322c:	eb1c 0101 	adds.w	r1, ip, r1
 8003230:	f108 3aff 	add.w	sl, r8, #4294967295	; 0xffffffff
 8003234:	f080 8088 	bcs.w	8003348 <__udivmoddi4+0x2bc>
 8003238:	4288      	cmp	r0, r1
 800323a:	f240 8085 	bls.w	8003348 <__udivmoddi4+0x2bc>
 800323e:	f1a8 0802 	sub.w	r8, r8, #2
 8003242:	4461      	add	r1, ip
 8003244:	1a09      	subs	r1, r1, r0
 8003246:	b2a4      	uxth	r4, r4
 8003248:	fbb1 f0f9 	udiv	r0, r1, r9
 800324c:	fb09 1110 	mls	r1, r9, r0, r1
 8003250:	ea44 4101 	orr.w	r1, r4, r1, lsl #16
 8003254:	fb00 fe0e 	mul.w	lr, r0, lr
 8003258:	458e      	cmp	lr, r1
 800325a:	d908      	bls.n	800326e <__udivmoddi4+0x1e2>
 800325c:	eb1c 0101 	adds.w	r1, ip, r1
 8003260:	f100 34ff 	add.w	r4, r0, #4294967295	; 0xffffffff
 8003264:	d26c      	bcs.n	8003340 <__udivmoddi4+0x2b4>
 8003266:	458e      	cmp	lr, r1
 8003268:	d96a      	bls.n	8003340 <__udivmoddi4+0x2b4>
 800326a:	3802      	subs	r0, #2
 800326c:	4461      	add	r1, ip
 800326e:	ea40 4008 	orr.w	r0, r0, r8, lsl #16
 8003272:	fba0 9402 	umull	r9, r4, r0, r2
 8003276:	eba1 010e 	sub.w	r1, r1, lr
 800327a:	42a1      	cmp	r1, r4
 800327c:	46c8      	mov	r8, r9
 800327e:	46a6      	mov	lr, r4
 8003280:	d356      	bcc.n	8003330 <__udivmoddi4+0x2a4>
 8003282:	d053      	beq.n	800332c <__udivmoddi4+0x2a0>
 8003284:	b15d      	cbz	r5, 800329e <__udivmoddi4+0x212>
 8003286:	ebb3 0208 	subs.w	r2, r3, r8
 800328a:	eb61 010e 	sbc.w	r1, r1, lr
 800328e:	fa01 f707 	lsl.w	r7, r1, r7
 8003292:	fa22 f306 	lsr.w	r3, r2, r6
 8003296:	40f1      	lsrs	r1, r6
 8003298:	431f      	orrs	r7, r3
 800329a:	e9c5 7100 	strd	r7, r1, [r5]
 800329e:	2600      	movs	r6, #0
 80032a0:	4631      	mov	r1, r6
 80032a2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80032a6:	f1c2 0320 	rsb	r3, r2, #32
 80032aa:	40d8      	lsrs	r0, r3
 80032ac:	fa0c fc02 	lsl.w	ip, ip, r2
 80032b0:	fa21 f303 	lsr.w	r3, r1, r3
 80032b4:	4091      	lsls	r1, r2
 80032b6:	4301      	orrs	r1, r0
 80032b8:	ea4f 471c 	mov.w	r7, ip, lsr #16
 80032bc:	fa1f fe8c 	uxth.w	lr, ip
 80032c0:	fbb3 f0f7 	udiv	r0, r3, r7
 80032c4:	fb07 3610 	mls	r6, r7, r0, r3
 80032c8:	0c0b      	lsrs	r3, r1, #16
 80032ca:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80032ce:	fb00 f60e 	mul.w	r6, r0, lr
 80032d2:	429e      	cmp	r6, r3
 80032d4:	fa04 f402 	lsl.w	r4, r4, r2
 80032d8:	d908      	bls.n	80032ec <__udivmoddi4+0x260>
 80032da:	eb1c 0303 	adds.w	r3, ip, r3
 80032de:	f100 38ff 	add.w	r8, r0, #4294967295	; 0xffffffff
 80032e2:	d22f      	bcs.n	8003344 <__udivmoddi4+0x2b8>
 80032e4:	429e      	cmp	r6, r3
 80032e6:	d92d      	bls.n	8003344 <__udivmoddi4+0x2b8>
 80032e8:	3802      	subs	r0, #2
 80032ea:	4463      	add	r3, ip
 80032ec:	1b9b      	subs	r3, r3, r6
 80032ee:	b289      	uxth	r1, r1
 80032f0:	fbb3 f6f7 	udiv	r6, r3, r7
 80032f4:	fb07 3316 	mls	r3, r7, r6, r3
 80032f8:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 80032fc:	fb06 f30e 	mul.w	r3, r6, lr
 8003300:	428b      	cmp	r3, r1
 8003302:	d908      	bls.n	8003316 <__udivmoddi4+0x28a>
 8003304:	eb1c 0101 	adds.w	r1, ip, r1
 8003308:	f106 38ff 	add.w	r8, r6, #4294967295	; 0xffffffff
 800330c:	d216      	bcs.n	800333c <__udivmoddi4+0x2b0>
 800330e:	428b      	cmp	r3, r1
 8003310:	d914      	bls.n	800333c <__udivmoddi4+0x2b0>
 8003312:	3e02      	subs	r6, #2
 8003314:	4461      	add	r1, ip
 8003316:	1ac9      	subs	r1, r1, r3
 8003318:	ea46 4600 	orr.w	r6, r6, r0, lsl #16
 800331c:	e738      	b.n	8003190 <__udivmoddi4+0x104>
 800331e:	462e      	mov	r6, r5
 8003320:	4628      	mov	r0, r5
 8003322:	e705      	b.n	8003130 <__udivmoddi4+0xa4>
 8003324:	4606      	mov	r6, r0
 8003326:	e6e3      	b.n	80030f0 <__udivmoddi4+0x64>
 8003328:	4618      	mov	r0, r3
 800332a:	e6f8      	b.n	800311e <__udivmoddi4+0x92>
 800332c:	454b      	cmp	r3, r9
 800332e:	d2a9      	bcs.n	8003284 <__udivmoddi4+0x1f8>
 8003330:	ebb9 0802 	subs.w	r8, r9, r2
 8003334:	eb64 0e0c 	sbc.w	lr, r4, ip
 8003338:	3801      	subs	r0, #1
 800333a:	e7a3      	b.n	8003284 <__udivmoddi4+0x1f8>
 800333c:	4646      	mov	r6, r8
 800333e:	e7ea      	b.n	8003316 <__udivmoddi4+0x28a>
 8003340:	4620      	mov	r0, r4
 8003342:	e794      	b.n	800326e <__udivmoddi4+0x1e2>
 8003344:	4640      	mov	r0, r8
 8003346:	e7d1      	b.n	80032ec <__udivmoddi4+0x260>
 8003348:	46d0      	mov	r8, sl
 800334a:	e77b      	b.n	8003244 <__udivmoddi4+0x1b8>
 800334c:	3b02      	subs	r3, #2
 800334e:	4461      	add	r1, ip
 8003350:	e732      	b.n	80031b8 <__udivmoddi4+0x12c>
 8003352:	4630      	mov	r0, r6
 8003354:	e709      	b.n	800316a <__udivmoddi4+0xde>
 8003356:	4464      	add	r4, ip
 8003358:	3802      	subs	r0, #2
 800335a:	e742      	b.n	80031e2 <__udivmoddi4+0x156>

0800335c <__aeabi_idiv0>:
 800335c:	4770      	bx	lr
 800335e:	bf00      	nop

08003360 <HandleYellowButtonPress>:
 8003360:	4b01      	ldr	r3, [pc, #4]	; (8003368 <HandleYellowButtonPress+0x8>)
 8003362:	2201      	movs	r2, #1
 8003364:	701a      	strb	r2, [r3, #0]
 8003366:	4770      	bx	lr
 8003368:	200004b4 	.word	0x200004b4

0800336c <HandleBlackButtonPress>:
 800336c:	4a02      	ldr	r2, [pc, #8]	; (8003378 <HandleBlackButtonPress+0xc>)
 800336e:	7813      	ldrb	r3, [r2, #0]
 8003370:	3301      	adds	r3, #1
 8003372:	7013      	strb	r3, [r2, #0]
 8003374:	4770      	bx	lr
 8003376:	bf00      	nop
 8003378:	20000065 	.word	0x20000065

0800337c <HandleBlueButtonPress>:
 800337c:	4a02      	ldr	r2, [pc, #8]	; (8003388 <HandleBlueButtonPress+0xc>)
 800337e:	7813      	ldrb	r3, [r2, #0]
 8003380:	3b01      	subs	r3, #1
 8003382:	7013      	strb	r3, [r2, #0]
 8003384:	4770      	bx	lr
 8003386:	bf00      	nop
 8003388:	20000065 	.word	0x20000065

0800338c <HandleRedButtonPress>:
 800338c:	b410      	push	{r4}
 800338e:	4806      	ldr	r0, [pc, #24]	; (80033a8 <HandleRedButtonPress+0x1c>)
 8003390:	4c06      	ldr	r4, [pc, #24]	; (80033ac <HandleRedButtonPress+0x20>)
 8003392:	4907      	ldr	r1, [pc, #28]	; (80033b0 <HandleRedButtonPress+0x24>)
 8003394:	4a07      	ldr	r2, [pc, #28]	; (80033b4 <HandleRedButtonPress+0x28>)
 8003396:	2300      	movs	r3, #0
 8003398:	7023      	strb	r3, [r4, #0]
 800339a:	7003      	strb	r3, [r0, #0]
 800339c:	f85d 4b04 	ldr.w	r4, [sp], #4
 80033a0:	700b      	strb	r3, [r1, #0]
 80033a2:	7013      	strb	r3, [r2, #0]
 80033a4:	4770      	bx	lr
 80033a6:	bf00      	nop
 80033a8:	200004c4 	.word	0x200004c4
 80033ac:	200004a8 	.word	0x200004a8
 80033b0:	200004b4 	.word	0x200004b4
 80033b4:	200004bc 	.word	0x200004bc

080033b8 <log_out>:
 80033b8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80033ba:	460c      	mov	r4, r1
 80033bc:	b085      	sub	sp, #20
 80033be:	4601      	mov	r1, r0
 80033c0:	4615      	mov	r5, r2
 80033c2:	461e      	mov	r6, r3
 80033c4:	b314      	cbz	r4, 800340c <log_out+0x54>
 80033c6:	4a1a      	ldr	r2, [pc, #104]	; (8003430 <log_out+0x78>)
 80033c8:	481a      	ldr	r0, [pc, #104]	; (8003434 <log_out+0x7c>)
 80033ca:	4f1b      	ldr	r7, [pc, #108]	; (8003438 <log_out+0x80>)
 80033cc:	fba2 3204 	umull	r3, r2, r2, r4
 80033d0:	0952      	lsrs	r2, r2, #5
 80033d2:	2364      	movs	r3, #100	; 0x64
 80033d4:	fb03 4312 	mls	r3, r3, r2, r4
 80033d8:	f7fd f850 	bl	800047c <siprintf>
 80033dc:	2301      	movs	r3, #1
 80033de:	4602      	mov	r2, r0
 80033e0:	e9cd 3301 	strd	r3, r3, [sp, #4]
 80033e4:	2300      	movs	r3, #0
 80033e6:	9300      	str	r3, [sp, #0]
 80033e8:	803a      	strh	r2, [r7, #0]
 80033ea:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80033ee:	4a11      	ldr	r2, [pc, #68]	; (8003434 <log_out+0x7c>)
 80033f0:	4631      	mov	r1, r6
 80033f2:	4628      	mov	r0, r5
 80033f4:	f006 f8a8 	bl	8009548 <ST7735_print_config>
 80033f8:	883a      	ldrh	r2, [r7, #0]
 80033fa:	490e      	ldr	r1, [pc, #56]	; (8003434 <log_out+0x7c>)
 80033fc:	480f      	ldr	r0, [pc, #60]	; (800343c <log_out+0x84>)
 80033fe:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8003402:	b005      	add	sp, #20
 8003404:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 8003408:	f003 b9ae 	b.w	8006768 <HAL_UART_Transmit>
 800340c:	4809      	ldr	r0, [pc, #36]	; (8003434 <log_out+0x7c>)
 800340e:	4f0a      	ldr	r7, [pc, #40]	; (8003438 <log_out+0x80>)
 8003410:	f7fd f834 	bl	800047c <siprintf>
 8003414:	4602      	mov	r2, r0
 8003416:	803a      	strh	r2, [r7, #0]
 8003418:	2201      	movs	r2, #1
 800341a:	e9cd 2201 	strd	r2, r2, [sp, #4]
 800341e:	9400      	str	r4, [sp, #0]
 8003420:	4a04      	ldr	r2, [pc, #16]	; (8003434 <log_out+0x7c>)
 8003422:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8003426:	4631      	mov	r1, r6
 8003428:	4628      	mov	r0, r5
 800342a:	f006 f88d 	bl	8009548 <ST7735_print_config>
 800342e:	e7e3      	b.n	80033f8 <log_out+0x40>
 8003430:	51eb851f 	.word	0x51eb851f
 8003434:	200004c8 	.word	0x200004c8
 8003438:	200005c8 	.word	0x200005c8
 800343c:	20000418 	.word	0x20000418

08003440 <StartDefaultTask>:
 8003440:	b508      	push	{r3, lr}
 8003442:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8003446:	f009 fa47 	bl	800c8d8 <osDelay>
 800344a:	e7fa      	b.n	8003442 <StartDefaultTask+0x2>

0800344c <StartbarrierControlTask>:
 800344c:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
 8003450:	f8df 9184 	ldr.w	r9, [pc, #388]	; 80035d8 <StartbarrierControlTask+0x18c>
 8003454:	f8df 8184 	ldr.w	r8, [pc, #388]	; 80035dc <StartbarrierControlTask+0x190>
 8003458:	4e53      	ldr	r6, [pc, #332]	; (80035a8 <StartbarrierControlTask+0x15c>)
 800345a:	f8df a184 	ldr.w	sl, [pc, #388]	; 80035e0 <StartbarrierControlTask+0x194>
 800345e:	4c53      	ldr	r4, [pc, #332]	; (80035ac <StartbarrierControlTask+0x160>)
 8003460:	4f53      	ldr	r7, [pc, #332]	; (80035b0 <StartbarrierControlTask+0x164>)
 8003462:	b085      	sub	sp, #20
 8003464:	e044      	b.n	80034f0 <StartbarrierControlTask+0xa4>
 8003466:	2000      	movs	r0, #0
 8003468:	f006 f85a 	bl	8009520 <ST7735_fill>
 800346c:	f898 2000 	ldrb.w	r2, [r8]
 8003470:	4950      	ldr	r1, [pc, #320]	; (80035b4 <StartbarrierControlTask+0x168>)
 8003472:	4620      	mov	r0, r4
 8003474:	f7fd f802 	bl	800047c <siprintf>
 8003478:	2500      	movs	r5, #0
 800347a:	f04f 0b01 	mov.w	fp, #1
 800347e:	8030      	strh	r0, [r6, #0]
 8003480:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8003484:	4622      	mov	r2, r4
 8003486:	4629      	mov	r1, r5
 8003488:	4628      	mov	r0, r5
 800348a:	e9cd bb01 	strd	fp, fp, [sp, #4]
 800348e:	9500      	str	r5, [sp, #0]
 8003490:	f006 f85a 	bl	8009548 <ST7735_print_config>
 8003494:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8003498:	8832      	ldrh	r2, [r6, #0]
 800349a:	4621      	mov	r1, r4
 800349c:	4638      	mov	r0, r7
 800349e:	f003 f963 	bl	8006768 <HAL_UART_Transmit>
 80034a2:	f89a 2000 	ldrb.w	r2, [sl]
 80034a6:	4944      	ldr	r1, [pc, #272]	; (80035b8 <StartbarrierControlTask+0x16c>)
 80034a8:	4620      	mov	r0, r4
 80034aa:	f7fc ffe7 	bl	800047c <siprintf>
 80034ae:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80034b2:	8030      	strh	r0, [r6, #0]
 80034b4:	4622      	mov	r2, r4
 80034b6:	4628      	mov	r0, r5
 80034b8:	210c      	movs	r1, #12
 80034ba:	e9cd bb01 	strd	fp, fp, [sp, #4]
 80034be:	9500      	str	r5, [sp, #0]
 80034c0:	f006 f842 	bl	8009548 <ST7735_print_config>
 80034c4:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 80034c8:	8832      	ldrh	r2, [r6, #0]
 80034ca:	4621      	mov	r1, r4
 80034cc:	4638      	mov	r0, r7
 80034ce:	f003 f94b 	bl	8006768 <HAL_UART_Transmit>
 80034d2:	4b3a      	ldr	r3, [pc, #232]	; (80035bc <StartbarrierControlTask+0x170>)
 80034d4:	781b      	ldrb	r3, [r3, #0]
 80034d6:	2b00      	cmp	r3, #0
 80034d8:	d14f      	bne.n	800357a <StartbarrierControlTask+0x12e>
 80034da:	4b39      	ldr	r3, [pc, #228]	; (80035c0 <StartbarrierControlTask+0x174>)
 80034dc:	781b      	ldrb	r3, [r3, #0]
 80034de:	f888 3000 	strb.w	r3, [r8]
 80034e2:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80034e6:	f009 f9f7 	bl	800c8d8 <osDelay>
 80034ea:	2064      	movs	r0, #100	; 0x64
 80034ec:	f009 f9f4 	bl	800c8d8 <osDelay>
 80034f0:	f899 5000 	ldrb.w	r5, [r9]
 80034f4:	2d00      	cmp	r5, #0
 80034f6:	d1b6      	bne.n	8003466 <StartbarrierControlTask+0x1a>
 80034f8:	4b32      	ldr	r3, [pc, #200]	; (80035c4 <StartbarrierControlTask+0x178>)
 80034fa:	781b      	ldrb	r3, [r3, #0]
 80034fc:	2b00      	cmp	r3, #0
 80034fe:	d0f4      	beq.n	80034ea <StartbarrierControlTask+0x9e>
 8003500:	4628      	mov	r0, r5
 8003502:	f006 f80d 	bl	8009520 <ST7735_fill>
 8003506:	4b30      	ldr	r3, [pc, #192]	; (80035c8 <StartbarrierControlTask+0x17c>)
 8003508:	4930      	ldr	r1, [pc, #192]	; (80035cc <StartbarrierControlTask+0x180>)
 800350a:	781a      	ldrb	r2, [r3, #0]
 800350c:	4620      	mov	r0, r4
 800350e:	f7fc ffb5 	bl	800047c <siprintf>
 8003512:	f04f 0b01 	mov.w	fp, #1
 8003516:	8030      	strh	r0, [r6, #0]
 8003518:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800351c:	4622      	mov	r2, r4
 800351e:	4629      	mov	r1, r5
 8003520:	4628      	mov	r0, r5
 8003522:	e9cd bb01 	strd	fp, fp, [sp, #4]
 8003526:	9500      	str	r5, [sp, #0]
 8003528:	f006 f80e 	bl	8009548 <ST7735_print_config>
 800352c:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8003530:	8832      	ldrh	r2, [r6, #0]
 8003532:	4621      	mov	r1, r4
 8003534:	4638      	mov	r0, r7
 8003536:	f003 f917 	bl	8006768 <HAL_UART_Transmit>
 800353a:	4925      	ldr	r1, [pc, #148]	; (80035d0 <StartbarrierControlTask+0x184>)
 800353c:	4620      	mov	r0, r4
 800353e:	780a      	ldrb	r2, [r1, #0]
 8003540:	4924      	ldr	r1, [pc, #144]	; (80035d4 <StartbarrierControlTask+0x188>)
 8003542:	f7fc ff9b 	bl	800047c <siprintf>
 8003546:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800354a:	8030      	strh	r0, [r6, #0]
 800354c:	4622      	mov	r2, r4
 800354e:	4628      	mov	r0, r5
 8003550:	210c      	movs	r1, #12
 8003552:	e9cd bb01 	strd	fp, fp, [sp, #4]
 8003556:	9500      	str	r5, [sp, #0]
 8003558:	f005 fff6 	bl	8009548 <ST7735_print_config>
 800355c:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8003560:	4621      	mov	r1, r4
 8003562:	8832      	ldrh	r2, [r6, #0]
 8003564:	4638      	mov	r0, r7
 8003566:	f003 f8ff 	bl	8006768 <HAL_UART_Transmit>
 800356a:	4914      	ldr	r1, [pc, #80]	; (80035bc <StartbarrierControlTask+0x170>)
 800356c:	780b      	ldrb	r3, [r1, #0]
 800356e:	b98b      	cbnz	r3, 8003594 <StartbarrierControlTask+0x148>
 8003570:	4913      	ldr	r1, [pc, #76]	; (80035c0 <StartbarrierControlTask+0x174>)
 8003572:	4a15      	ldr	r2, [pc, #84]	; (80035c8 <StartbarrierControlTask+0x17c>)
 8003574:	780b      	ldrb	r3, [r1, #0]
 8003576:	7013      	strb	r3, [r2, #0]
 8003578:	e7b3      	b.n	80034e2 <StartbarrierControlTask+0x96>
 800357a:	4b11      	ldr	r3, [pc, #68]	; (80035c0 <StartbarrierControlTask+0x174>)
 800357c:	f898 2000 	ldrb.w	r2, [r8]
 8003580:	781b      	ldrb	r3, [r3, #0]
 8003582:	f88a 3000 	strb.w	r3, [sl]
 8003586:	4293      	cmp	r3, r2
 8003588:	d301      	bcc.n	800358e <StartbarrierControlTask+0x142>
 800358a:	2b64      	cmp	r3, #100	; 0x64
 800358c:	d9a9      	bls.n	80034e2 <StartbarrierControlTask+0x96>
 800358e:	f88a 2000 	strb.w	r2, [sl]
 8003592:	e7a6      	b.n	80034e2 <StartbarrierControlTask+0x96>
 8003594:	4b0a      	ldr	r3, [pc, #40]	; (80035c0 <StartbarrierControlTask+0x174>)
 8003596:	4a0c      	ldr	r2, [pc, #48]	; (80035c8 <StartbarrierControlTask+0x17c>)
 8003598:	781b      	ldrb	r3, [r3, #0]
 800359a:	7812      	ldrb	r2, [r2, #0]
 800359c:	4293      	cmp	r3, r2
 800359e:	bf38      	it	cc
 80035a0:	4613      	movcc	r3, r2
 80035a2:	4a0b      	ldr	r2, [pc, #44]	; (80035d0 <StartbarrierControlTask+0x184>)
 80035a4:	7013      	strb	r3, [r2, #0]
 80035a6:	e79c      	b.n	80034e2 <StartbarrierControlTask+0x96>
 80035a8:	200005c8 	.word	0x200005c8
 80035ac:	200004c8 	.word	0x200004c8
 80035b0:	20000418 	.word	0x20000418
 80035b4:	0800d6d0 	.word	0x0800d6d0
 80035b8:	0800d6e4 	.word	0x0800d6e4
 80035bc:	200004bc 	.word	0x200004bc
 80035c0:	20000065 	.word	0x20000065
 80035c4:	200004c4 	.word	0x200004c4
 80035c8:	2000016f 	.word	0x2000016f
 80035cc:	0800d6f8 	.word	0x0800d6f8
 80035d0:	2000016e 	.word	0x2000016e
 80035d4:	0800d710 	.word	0x0800d710
 80035d8:	200004a8 	.word	0x200004a8
 80035dc:	2000016d 	.word	0x2000016d
 80035e0:	2000016c 	.word	0x2000016c

080035e4 <Start_led_Task>:
 80035e4:	e92d 4888 	stmdb	sp!, {r3, r7, fp, lr}
 80035e8:	4b36      	ldr	r3, [pc, #216]	; (80036c4 <Start_led_Task+0xe0>)
 80035ea:	f8df 80f4 	ldr.w	r8, [pc, #244]	; 80036e0 <Start_led_Task+0xfc>
 80035ee:	6818      	ldr	r0, [r3, #0]
 80035f0:	4f35      	ldr	r7, [pc, #212]	; (80036c8 <Start_led_Task+0xe4>)
 80035f2:	4e36      	ldr	r6, [pc, #216]	; (80036cc <Start_led_Task+0xe8>)
 80035f4:	4d36      	ldr	r5, [pc, #216]	; (80036d0 <Start_led_Task+0xec>)
 80035f6:	f8df a0ec 	ldr.w	sl, [pc, #236]	; 80036e4 <Start_led_Task+0x100>
 80035fa:	f8df 90ec 	ldr.w	r9, [pc, #236]	; 80036e8 <Start_led_Task+0x104>
 80035fe:	f8df b0ec 	ldr.w	fp, [pc, #236]	; 80036ec <Start_led_Task+0x108>
 8003602:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8003606:	f009 fa57 	bl	800cab8 <osSemaphoreAcquire>
 800360a:	4b32      	ldr	r3, [pc, #200]	; (80036d4 <Start_led_Task+0xf0>)
 800360c:	24ff      	movs	r4, #255	; 0xff
 800360e:	6018      	str	r0, [r3, #0]
 8003610:	e01e      	b.n	8003650 <Start_led_Task+0x6c>
 8003612:	4a31      	ldr	r2, [pc, #196]	; (80036d8 <Start_led_Task+0xf4>)
 8003614:	7812      	ldrb	r2, [r2, #0]
 8003616:	4293      	cmp	r3, r2
 8003618:	dc20      	bgt.n	800365c <Start_led_Task+0x78>
 800361a:	882a      	ldrh	r2, [r5, #0]
 800361c:	4291      	cmp	r1, r2
 800361e:	d83b      	bhi.n	8003698 <Start_led_Task+0xb4>
 8003620:	492e      	ldr	r1, [pc, #184]	; (80036dc <Start_led_Task+0xf8>)
 8003622:	7809      	ldrb	r1, [r1, #0]
 8003624:	428a      	cmp	r2, r1
 8003626:	d848      	bhi.n	80036ba <Start_led_Task+0xd6>
 8003628:	f8da 3000 	ldr.w	r3, [sl]
 800362c:	f8d9 2000 	ldr.w	r2, [r9]
 8003630:	63dc      	str	r4, [r3, #60]	; 0x3c
 8003632:	2101      	movs	r1, #1
 8003634:	6419      	str	r1, [r3, #64]	; 0x40
 8003636:	63d4      	str	r4, [r2, #60]	; 0x3c
 8003638:	f89b 1000 	ldrb.w	r1, [fp]
 800363c:	b121      	cbz	r1, 8003648 <Start_led_Task+0x64>
 800363e:	21fa      	movs	r1, #250	; 0xfa
 8003640:	63d9      	str	r1, [r3, #60]	; 0x3c
 8003642:	641c      	str	r4, [r3, #64]	; 0x40
 8003644:	23c8      	movs	r3, #200	; 0xc8
 8003646:	63d3      	str	r3, [r2, #60]	; 0x3c
 8003648:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800364c:	f009 f944 	bl	800c8d8 <osDelay>
 8003650:	f9b8 3000 	ldrsh.w	r3, [r8]
 8003654:	7838      	ldrb	r0, [r7, #0]
 8003656:	7831      	ldrb	r1, [r6, #0]
 8003658:	4283      	cmp	r3, r0
 800365a:	dada      	bge.n	8003612 <Start_led_Task+0x2e>
 800365c:	882a      	ldrh	r2, [r5, #0]
 800365e:	4291      	cmp	r1, r2
 8003660:	d81a      	bhi.n	8003698 <Start_led_Task+0xb4>
 8003662:	491e      	ldr	r1, [pc, #120]	; (80036dc <Start_led_Task+0xf8>)
 8003664:	7809      	ldrb	r1, [r1, #0]
 8003666:	fa1f fc81 	uxth.w	ip, r1
 800366a:	4562      	cmp	r2, ip
 800366c:	d821      	bhi.n	80036b2 <Start_led_Task+0xce>
 800366e:	4283      	cmp	r3, r0
 8003670:	da02      	bge.n	8003678 <Start_led_Task+0x94>
 8003672:	380a      	subs	r0, #10
 8003674:	4283      	cmp	r3, r0
 8003676:	da12      	bge.n	800369e <Start_led_Task+0xba>
 8003678:	4a17      	ldr	r2, [pc, #92]	; (80036d8 <Start_led_Task+0xf4>)
 800367a:	7812      	ldrb	r2, [r2, #0]
 800367c:	4293      	cmp	r3, r2
 800367e:	dd02      	ble.n	8003686 <Start_led_Task+0xa2>
 8003680:	320a      	adds	r2, #10
 8003682:	4293      	cmp	r3, r2
 8003684:	dd0b      	ble.n	800369e <Start_led_Task+0xba>
 8003686:	f8da 3000 	ldr.w	r3, [sl]
 800368a:	f8d9 2000 	ldr.w	r2, [r9]
 800368e:	2101      	movs	r1, #1
 8003690:	63d9      	str	r1, [r3, #60]	; 0x3c
 8003692:	641c      	str	r4, [r3, #64]	; 0x40
 8003694:	63d4      	str	r4, [r2, #60]	; 0x3c
 8003696:	e7cf      	b.n	8003638 <Start_led_Task+0x54>
 8003698:	390a      	subs	r1, #10
 800369a:	428a      	cmp	r2, r1
 800369c:	dbe1      	blt.n	8003662 <Start_led_Task+0x7e>
 800369e:	f8da 3000 	ldr.w	r3, [sl]
 80036a2:	2264      	movs	r2, #100	; 0x64
 80036a4:	63da      	str	r2, [r3, #60]	; 0x3c
 80036a6:	220a      	movs	r2, #10
 80036a8:	641a      	str	r2, [r3, #64]	; 0x40
 80036aa:	f8d9 2000 	ldr.w	r2, [r9]
 80036ae:	63d4      	str	r4, [r2, #60]	; 0x3c
 80036b0:	e7c2      	b.n	8003638 <Start_led_Task+0x54>
 80036b2:	310a      	adds	r1, #10
 80036b4:	428a      	cmp	r2, r1
 80036b6:	ddf2      	ble.n	800369e <Start_led_Task+0xba>
 80036b8:	e7d9      	b.n	800366e <Start_led_Task+0x8a>
 80036ba:	310a      	adds	r1, #10
 80036bc:	428a      	cmp	r2, r1
 80036be:	ddee      	ble.n	800369e <Start_led_Task+0xba>
 80036c0:	e7da      	b.n	8003678 <Start_led_Task+0x94>
 80036c2:	bf00      	nop
 80036c4:	200001b8 	.word	0x200001b8
 80036c8:	2000016f 	.word	0x2000016f
 80036cc:	2000016d 	.word	0x2000016d
 80036d0:	200004aa 	.word	0x200004aa
 80036d4:	200004c0 	.word	0x200004c0
 80036d8:	2000016e 	.word	0x2000016e
 80036dc:	2000016c 	.word	0x2000016c
 80036e0:	200004c6 	.word	0x200004c6
 80036e4:	200003d0 	.word	0x200003d0
 80036e8:	20000388 	.word	0x20000388
 80036ec:	200004b4 	.word	0x200004b4

080036f0 <HandleGreenButtonPress>:
 80036f0:	4b0f      	ldr	r3, [pc, #60]	; (8003730 <HandleGreenButtonPress+0x40>)
 80036f2:	781b      	ldrb	r3, [r3, #0]
 80036f4:	b12b      	cbz	r3, 8003702 <HandleGreenButtonPress+0x12>
 80036f6:	4a0f      	ldr	r2, [pc, #60]	; (8003734 <HandleGreenButtonPress+0x44>)
 80036f8:	7813      	ldrb	r3, [r2, #0]
 80036fa:	2b01      	cmp	r3, #1
 80036fc:	d00d      	beq.n	800371a <HandleGreenButtonPress+0x2a>
 80036fe:	2b02      	cmp	r3, #2
 8003700:	d010      	beq.n	8003724 <HandleGreenButtonPress+0x34>
 8003702:	4b0d      	ldr	r3, [pc, #52]	; (8003738 <HandleGreenButtonPress+0x48>)
 8003704:	781b      	ldrb	r3, [r3, #0]
 8003706:	b11b      	cbz	r3, 8003710 <HandleGreenButtonPress+0x20>
 8003708:	4b0c      	ldr	r3, [pc, #48]	; (800373c <HandleGreenButtonPress+0x4c>)
 800370a:	2201      	movs	r2, #1
 800370c:	701a      	strb	r2, [r3, #0]
 800370e:	4770      	bx	lr
 8003710:	4b0b      	ldr	r3, [pc, #44]	; (8003740 <HandleGreenButtonPress+0x50>)
 8003712:	781b      	ldrb	r3, [r3, #0]
 8003714:	2b00      	cmp	r3, #0
 8003716:	d1f7      	bne.n	8003708 <HandleGreenButtonPress+0x18>
 8003718:	4770      	bx	lr
 800371a:	4807      	ldr	r0, [pc, #28]	; (8003738 <HandleGreenButtonPress+0x48>)
 800371c:	2100      	movs	r1, #0
 800371e:	7003      	strb	r3, [r0, #0]
 8003720:	7011      	strb	r1, [r2, #0]
 8003722:	4770      	bx	lr
 8003724:	4906      	ldr	r1, [pc, #24]	; (8003740 <HandleGreenButtonPress+0x50>)
 8003726:	2001      	movs	r0, #1
 8003728:	2300      	movs	r3, #0
 800372a:	7008      	strb	r0, [r1, #0]
 800372c:	7013      	strb	r3, [r2, #0]
 800372e:	4770      	bx	lr
 8003730:	200004b4 	.word	0x200004b4
 8003734:	20000065 	.word	0x20000065
 8003738:	200004c4 	.word	0x200004c4
 800373c:	200004bc 	.word	0x200004bc
 8003740:	200004a8 	.word	0x200004a8

08003744 <StartmeasurementTask>:
 8003744:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
 8003748:	4d7a      	ldr	r5, [pc, #488]	; (8003934 <StartmeasurementTask+0x1f0>)
 800374a:	4f7b      	ldr	r7, [pc, #492]	; (8003938 <StartmeasurementTask+0x1f4>)
 800374c:	f8df a218 	ldr.w	sl, [pc, #536]	; 8003968 <StartmeasurementTask+0x224>
 8003750:	f8df 9218 	ldr.w	r9, [pc, #536]	; 800396c <StartmeasurementTask+0x228>
 8003754:	f8df 8218 	ldr.w	r8, [pc, #536]	; 8003970 <StartmeasurementTask+0x22c>
 8003758:	eddf 8a78 	vldr	s17, [pc, #480]	; 800393c <StartmeasurementTask+0x1f8>
 800375c:	ed9f 9a78 	vldr	s18, [pc, #480]	; 8003940 <StartmeasurementTask+0x1fc>
 8003760:	4e78      	ldr	r6, [pc, #480]	; (8003944 <StartmeasurementTask+0x200>)
 8003762:	b085      	sub	sp, #20
 8003764:	e052      	b.n	800380c <StartmeasurementTask+0xc8>
 8003766:	f8df c20c 	ldr.w	ip, [pc, #524]	; 8003974 <StartmeasurementTask+0x230>
 800376a:	4c77      	ldr	r4, [pc, #476]	; (8003948 <StartmeasurementTask+0x204>)
 800376c:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
 8003770:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8003772:	e89c 000f 	ldmia.w	ip, {r0, r1, r2, r3}
 8003776:	c407      	stmia	r4!, {r0, r1, r2}
 8003778:	4622      	mov	r2, r4
 800377a:	f04f 0c00 	mov.w	ip, #0
 800377e:	f04f 0e01 	mov.w	lr, #1
 8003782:	f802 391c 	strb.w	r3, [r2], #-28
 8003786:	4661      	mov	r1, ip
 8003788:	4660      	mov	r0, ip
 800378a:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800378e:	e9cd ee01 	strd	lr, lr, [sp, #4]
 8003792:	f04f 0b1c 	mov.w	fp, #28
 8003796:	f8cd c000 	str.w	ip, [sp]
 800379a:	f8a5 b000 	strh.w	fp, [r5]
 800379e:	f005 fed3 	bl	8009548 <ST7735_print_config>
 80037a2:	882a      	ldrh	r2, [r5, #0]
 80037a4:	4869      	ldr	r0, [pc, #420]	; (800394c <StartmeasurementTask+0x208>)
 80037a6:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 80037aa:	f1a4 011c 	sub.w	r1, r4, #28
 80037ae:	f002 ffdb 	bl	8006768 <HAL_UART_Transmit>
 80037b2:	eec8 7a28 	vdiv.f32	s15, s16, s17
 80037b6:	4866      	ldr	r0, [pc, #408]	; (8003950 <StartmeasurementTask+0x20c>)
 80037b8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80037bc:	ee17 3a90 	vmov	r3, s15
 80037c0:	f8a9 3000 	strh.w	r3, [r9]
 80037c4:	f000 fea0 	bl	8004508 <calculate_brightness>
 80037c8:	4962      	ldr	r1, [pc, #392]	; (8003954 <StartmeasurementTask+0x210>)
 80037ca:	4602      	mov	r2, r0
 80037cc:	485e      	ldr	r0, [pc, #376]	; (8003948 <StartmeasurementTask+0x204>)
 80037ce:	f8c8 2000 	str.w	r2, [r8]
 80037d2:	f7fc fe53 	bl	800047c <siprintf>
 80037d6:	f04f 0c00 	mov.w	ip, #0
 80037da:	4604      	mov	r4, r0
 80037dc:	2001      	movs	r0, #1
 80037de:	e9cd 0001 	strd	r0, r0, [sp, #4]
 80037e2:	4a59      	ldr	r2, [pc, #356]	; (8003948 <StartmeasurementTask+0x204>)
 80037e4:	f8cd c000 	str.w	ip, [sp]
 80037e8:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80037ec:	2126      	movs	r1, #38	; 0x26
 80037ee:	2002      	movs	r0, #2
 80037f0:	802c      	strh	r4, [r5, #0]
 80037f2:	f005 fea9 	bl	8009548 <ST7735_print_config>
 80037f6:	4b58      	ldr	r3, [pc, #352]	; (8003958 <StartmeasurementTask+0x214>)
 80037f8:	6818      	ldr	r0, [r3, #0]
 80037fa:	f009 f991 	bl	800cb20 <osSemaphoreRelease>
 80037fe:	f242 7010 	movw	r0, #10000	; 0x2710
 8003802:	f009 f869 	bl	800c8d8 <osDelay>
 8003806:	2064      	movs	r0, #100	; 0x64
 8003808:	f009 f866 	bl	800c8d8 <osDelay>
 800380c:	f897 b000 	ldrb.w	fp, [r7]
 8003810:	f1bb 0f00 	cmp.w	fp, #0
 8003814:	d1f7      	bne.n	8003806 <StartmeasurementTask+0xc2>
 8003816:	200a      	movs	r0, #10
 8003818:	f009 f85e 	bl	800c8d8 <osDelay>
 800381c:	4658      	mov	r0, fp
 800381e:	f005 fe7f 	bl	8009520 <ST7735_fill>
 8003822:	f000 fe5b 	bl	80044dc <get_humidity_readings>
 8003826:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 800382a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800382e:	eeb0 8a40 	vmov.f32	s16, s0
 8003832:	d45b      	bmi.n	80038ec <StartmeasurementTask+0x1a8>
 8003834:	eefc 7ac0 	vcvt.u32.f32	s15, s0
 8003838:	2302      	movs	r3, #2
 800383a:	ee17 1a90 	vmov	r1, s15
 800383e:	4847      	ldr	r0, [pc, #284]	; (800395c <StartmeasurementTask+0x218>)
 8003840:	461a      	mov	r2, r3
 8003842:	f7ff fdb9 	bl	80033b8 <log_out>
 8003846:	eec8 7a28 	vdiv.f32	s15, s16, s17
 800384a:	4630      	mov	r0, r6
 800384c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 8003850:	ee17 3a90 	vmov	r3, s15
 8003854:	f8aa 3000 	strh.w	r3, [sl]
 8003858:	f000 fdee 	bl	8004438 <get_pressure_readings>
 800385c:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8003860:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003864:	d41d      	bmi.n	80038a2 <StartmeasurementTask+0x15e>
 8003866:	eefc 7ac0 	vcvt.u32.f32	s15, s0
 800386a:	483d      	ldr	r0, [pc, #244]	; (8003960 <StartmeasurementTask+0x21c>)
 800386c:	ee17 1a90 	vmov	r1, s15
 8003870:	230e      	movs	r3, #14
 8003872:	2202      	movs	r2, #2
 8003874:	f7ff fda0 	bl	80033b8 <log_out>
 8003878:	4630      	mov	r0, r6
 800387a:	f000 fdfd 	bl	8004478 <get_temperature_readings>
 800387e:	eeb4 0ac9 	vcmpe.f32	s0, s18
 8003882:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8003886:	eeb0 8a40 	vmov.f32	s16, s0
 800388a:	f67f af6c 	bls.w	8003766 <StartmeasurementTask+0x22>
 800388e:	eefc 7ac0 	vcvt.u32.f32	s15, s0
 8003892:	4834      	ldr	r0, [pc, #208]	; (8003964 <StartmeasurementTask+0x220>)
 8003894:	ee17 1a90 	vmov	r1, s15
 8003898:	231a      	movs	r3, #26
 800389a:	2202      	movs	r2, #2
 800389c:	f7ff fd8c 	bl	80033b8 <log_out>
 80038a0:	e787      	b.n	80037b2 <StartmeasurementTask+0x6e>
 80038a2:	f8df c0d4 	ldr.w	ip, [pc, #212]	; 8003978 <StartmeasurementTask+0x234>
 80038a6:	4c28      	ldr	r4, [pc, #160]	; (8003948 <StartmeasurementTask+0x204>)
 80038a8:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
 80038ac:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 80038ae:	e89c 0007 	ldmia.w	ip, {r0, r1, r2}
 80038b2:	c403      	stmia	r4!, {r0, r1}
 80038b4:	2300      	movs	r3, #0
 80038b6:	f04f 0c01 	mov.w	ip, #1
 80038ba:	e9cd cc01 	strd	ip, ip, [sp, #4]
 80038be:	f04f 0e19 	mov.w	lr, #25
 80038c2:	8022      	strh	r2, [r4, #0]
 80038c4:	4619      	mov	r1, r3
 80038c6:	f1a4 0218 	sub.w	r2, r4, #24
 80038ca:	4618      	mov	r0, r3
 80038cc:	9300      	str	r3, [sp, #0]
 80038ce:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80038d2:	f8a5 e000 	strh.w	lr, [r5]
 80038d6:	f005 fe37 	bl	8009548 <ST7735_print_config>
 80038da:	882a      	ldrh	r2, [r5, #0]
 80038dc:	481b      	ldr	r0, [pc, #108]	; (800394c <StartmeasurementTask+0x208>)
 80038de:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 80038e2:	f1a4 0118 	sub.w	r1, r4, #24
 80038e6:	f002 ff3f 	bl	8006768 <HAL_UART_Transmit>
 80038ea:	e7c5      	b.n	8003878 <StartmeasurementTask+0x134>
 80038ec:	f8df c08c 	ldr.w	ip, [pc, #140]	; 800397c <StartmeasurementTask+0x238>
 80038f0:	4c15      	ldr	r4, [pc, #84]	; (8003948 <StartmeasurementTask+0x204>)
 80038f2:	f8cd b000 	str.w	fp, [sp]
 80038f6:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
 80038fa:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 80038fc:	e89c 0007 	ldmia.w	ip, {r0, r1, r2}
 8003900:	c403      	stmia	r4!, {r0, r1}
 8003902:	2301      	movs	r3, #1
 8003904:	9302      	str	r3, [sp, #8]
 8003906:	f04f 0c19 	mov.w	ip, #25
 800390a:	8022      	strh	r2, [r4, #0]
 800390c:	4659      	mov	r1, fp
 800390e:	4658      	mov	r0, fp
 8003910:	f1a4 0218 	sub.w	r2, r4, #24
 8003914:	9301      	str	r3, [sp, #4]
 8003916:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800391a:	f8a5 c000 	strh.w	ip, [r5]
 800391e:	f005 fe13 	bl	8009548 <ST7735_print_config>
 8003922:	882a      	ldrh	r2, [r5, #0]
 8003924:	4809      	ldr	r0, [pc, #36]	; (800394c <StartmeasurementTask+0x208>)
 8003926:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 800392a:	f1a4 0118 	sub.w	r1, r4, #24
 800392e:	f002 ff1b 	bl	8006768 <HAL_UART_Transmit>
 8003932:	e788      	b.n	8003846 <StartmeasurementTask+0x102>
 8003934:	200005c8 	.word	0x200005c8
 8003938:	200004b4 	.word	0x200004b4
 800393c:	42c80000 	.word	0x42c80000
 8003940:	c2200000 	.word	0xc2200000
 8003944:	200005cc 	.word	0x200005cc
 8003948:	200004c8 	.word	0x200004c8
 800394c:	20000418 	.word	0x20000418
 8003950:	200001cc 	.word	0x200001cc
 8003954:	0800d7c8 	.word	0x0800d7c8
 8003958:	200001b8 	.word	0x200001b8
 800395c:	0800d744 	.word	0x0800d744
 8003960:	0800d778 	.word	0x0800d778
 8003964:	0800d7b0 	.word	0x0800d7b0
 8003968:	200004aa 	.word	0x200004aa
 800396c:	200004c6 	.word	0x200004c6
 8003970:	200001c4 	.word	0x200001c4
 8003974:	0800d790 	.word	0x0800d790
 8003978:	0800d75c 	.word	0x0800d75c
 800397c:	0800d728 	.word	0x0800d728

08003980 <StartmenuTask>:
 8003980:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
 8003984:	f8df 8150 	ldr.w	r8, [pc, #336]	; 8003ad8 <StartmenuTask+0x158>
 8003988:	4a4e      	ldr	r2, [pc, #312]	; (8003ac4 <StartmenuTask+0x144>)
 800398a:	f8df 9154 	ldr.w	r9, [pc, #340]	; 8003ae0 <StartmenuTask+0x160>
 800398e:	4f4e      	ldr	r7, [pc, #312]	; (8003ac8 <StartmenuTask+0x148>)
 8003990:	f8df b150 	ldr.w	fp, [pc, #336]	; 8003ae4 <StartmenuTask+0x164>
 8003994:	2301      	movs	r3, #1
 8003996:	b085      	sub	sp, #20
 8003998:	7013      	strb	r3, [r2, #0]
 800399a:	46c2      	mov	sl, r8
 800399c:	f899 3000 	ldrb.w	r3, [r9]
 80039a0:	2b00      	cmp	r3, #0
 80039a2:	f000 808b 	beq.w	8003abc <StartmenuTask+0x13c>
 80039a6:	4b49      	ldr	r3, [pc, #292]	; (8003acc <StartmenuTask+0x14c>)
 80039a8:	781b      	ldrb	r3, [r3, #0]
 80039aa:	2b00      	cmp	r3, #0
 80039ac:	f040 8086 	bne.w	8003abc <StartmenuTask+0x13c>
 80039b0:	4b47      	ldr	r3, [pc, #284]	; (8003ad0 <StartmenuTask+0x150>)
 80039b2:	781c      	ldrb	r4, [r3, #0]
 80039b4:	2601      	movs	r6, #1
 80039b6:	4620      	mov	r0, r4
 80039b8:	2c00      	cmp	r4, #0
 80039ba:	d17f      	bne.n	8003abc <StartmenuTask+0x13c>
 80039bc:	f005 fdb0 	bl	8009520 <ST7735_fill>
 80039c0:	4b44      	ldr	r3, [pc, #272]	; (8003ad4 <StartmenuTask+0x154>)
 80039c2:	9400      	str	r4, [sp, #0]
 80039c4:	e893 0003 	ldmia.w	r3, {r0, r1}
 80039c8:	2307      	movs	r3, #7
 80039ca:	e9cd 6601 	strd	r6, r6, [sp, #4]
 80039ce:	4652      	mov	r2, sl
 80039d0:	e888 0003 	stmia.w	r8, {r0, r1}
 80039d4:	803b      	strh	r3, [r7, #0]
 80039d6:	4621      	mov	r1, r4
 80039d8:	4620      	mov	r0, r4
 80039da:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80039de:	f005 fdb3 	bl	8009548 <ST7735_print_config>
 80039e2:	883a      	ldrh	r2, [r7, #0]
 80039e4:	4d3c      	ldr	r5, [pc, #240]	; (8003ad8 <StartmenuTask+0x158>)
 80039e6:	4651      	mov	r1, sl
 80039e8:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 80039ec:	4658      	mov	r0, fp
 80039ee:	f002 febb 	bl	8006768 <HAL_UART_Transmit>
 80039f2:	f8df c0f4 	ldr.w	ip, [pc, #244]	; 8003ae8 <StartmenuTask+0x168>
 80039f6:	9400      	str	r4, [sp, #0]
 80039f8:	2317      	movs	r3, #23
 80039fa:	803b      	strh	r3, [r7, #0]
 80039fc:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
 8003a00:	c50f      	stmia	r5!, {r0, r1, r2, r3}
 8003a02:	e89c 0003 	ldmia.w	ip, {r0, r1}
 8003a06:	f1a5 0210 	sub.w	r2, r5, #16
 8003a0a:	e885 0003 	stmia.w	r5, {r0, r1}
 8003a0e:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8003a12:	4620      	mov	r0, r4
 8003a14:	210c      	movs	r1, #12
 8003a16:	e9cd 6601 	strd	r6, r6, [sp, #4]
 8003a1a:	f005 fd95 	bl	8009548 <ST7735_print_config>
 8003a1e:	883a      	ldrh	r2, [r7, #0]
 8003a20:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8003a24:	f1a5 0110 	sub.w	r1, r5, #16
 8003a28:	4658      	mov	r0, fp
 8003a2a:	f002 fe9d 	bl	8006768 <HAL_UART_Transmit>
 8003a2e:	f8df c0bc 	ldr.w	ip, [pc, #188]	; 8003aec <StartmenuTask+0x16c>
 8003a32:	9400      	str	r4, [sp, #0]
 8003a34:	2314      	movs	r3, #20
 8003a36:	803b      	strh	r3, [r7, #0]
 8003a38:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
 8003a3c:	f1a5 0810 	sub.w	r8, r5, #16
 8003a40:	46c6      	mov	lr, r8
 8003a42:	e9cd 6601 	strd	r6, r6, [sp, #4]
 8003a46:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8003a4a:	e89c 0003 	ldmia.w	ip, {r0, r1}
 8003a4e:	4642      	mov	r2, r8
 8003a50:	6028      	str	r0, [r5, #0]
 8003a52:	7129      	strb	r1, [r5, #4]
 8003a54:	4620      	mov	r0, r4
 8003a56:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8003a5a:	2118      	movs	r1, #24
 8003a5c:	f005 fd74 	bl	8009548 <ST7735_print_config>
 8003a60:	883a      	ldrh	r2, [r7, #0]
 8003a62:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8003a66:	4641      	mov	r1, r8
 8003a68:	4658      	mov	r0, fp
 8003a6a:	f002 fe7d 	bl	8006768 <HAL_UART_Transmit>
 8003a6e:	4b15      	ldr	r3, [pc, #84]	; (8003ac4 <StartmenuTask+0x144>)
 8003a70:	781b      	ldrb	r3, [r3, #0]
 8003a72:	1e59      	subs	r1, r3, #1
 8003a74:	42b1      	cmp	r1, r6
 8003a76:	bf88      	it	hi
 8003a78:	4b12      	ldrhi	r3, [pc, #72]	; (8003ac4 <StartmenuTask+0x144>)
 8003a7a:	4918      	ldr	r1, [pc, #96]	; (8003adc <StartmenuTask+0x15c>)
 8003a7c:	bf88      	it	hi
 8003a7e:	701e      	strbhi	r6, [r3, #0]
 8003a80:	4632      	mov	r2, r6
 8003a82:	4650      	mov	r0, sl
 8003a84:	bf98      	it	ls
 8003a86:	461a      	movls	r2, r3
 8003a88:	f7fc fcf8 	bl	800047c <siprintf>
 8003a8c:	2000      	movs	r0, #0
 8003a8e:	2301      	movs	r3, #1
 8003a90:	220f      	movs	r2, #15
 8003a92:	e9cd 3301 	strd	r3, r3, [sp, #4]
 8003a96:	9000      	str	r0, [sp, #0]
 8003a98:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8003a9c:	803a      	strh	r2, [r7, #0]
 8003a9e:	2126      	movs	r1, #38	; 0x26
 8003aa0:	4652      	mov	r2, sl
 8003aa2:	f005 fd51 	bl	8009548 <ST7735_print_config>
 8003aa6:	883a      	ldrh	r2, [r7, #0]
 8003aa8:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8003aac:	4651      	mov	r1, sl
 8003aae:	4658      	mov	r0, fp
 8003ab0:	f002 fe5a 	bl	8006768 <HAL_UART_Transmit>
 8003ab4:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8003ab8:	f008 ff0e 	bl	800c8d8 <osDelay>
 8003abc:	2064      	movs	r0, #100	; 0x64
 8003abe:	f008 ff0b 	bl	800c8d8 <osDelay>
 8003ac2:	e76b      	b.n	800399c <StartmenuTask+0x1c>
 8003ac4:	20000065 	.word	0x20000065
 8003ac8:	200005c8 	.word	0x200005c8
 8003acc:	200004a8 	.word	0x200004a8
 8003ad0:	200004c4 	.word	0x200004c4
 8003ad4:	0800d7dc 	.word	0x0800d7dc
 8003ad8:	200004c8 	.word	0x200004c8
 8003adc:	0800d814 	.word	0x0800d814
 8003ae0:	200004b4 	.word	0x200004b4
 8003ae4:	20000418 	.word	0x20000418
 8003ae8:	0800d7e4 	.word	0x0800d7e4
 8003aec:	0800d7fc 	.word	0x0800d7fc

08003af0 <HAL_UART_RxCpltCallback>:
 8003af0:	4b03      	ldr	r3, [pc, #12]	; (8003b00 <HAL_UART_RxCpltCallback+0x10>)
 8003af2:	6802      	ldr	r2, [r0, #0]
 8003af4:	681b      	ldr	r3, [r3, #0]
 8003af6:	429a      	cmp	r2, r3
 8003af8:	d000      	beq.n	8003afc <HAL_UART_RxCpltCallback+0xc>
 8003afa:	4770      	bx	lr
 8003afc:	f006 b9be 	b.w	8009e7c <SIM800L_uart_callback>
 8003b00:	20000460 	.word	0x20000460
 8003b04:	00000000 	.word	0x00000000

08003b08 <SystemClock_Config>:
 8003b08:	b510      	push	{r4, lr}
 8003b0a:	2300      	movs	r3, #0
 8003b0c:	b094      	sub	sp, #80	; 0x50
 8003b0e:	e9cd 330a 	strd	r3, r3, [sp, #40]	; 0x28
 8003b12:	e9cd 3302 	strd	r3, r3, [sp, #8]
 8003b16:	e9cd 3304 	strd	r3, r3, [sp, #16]
 8003b1a:	4927      	ldr	r1, [pc, #156]	; (8003bb8 <SystemClock_Config+0xb0>)
 8003b1c:	9300      	str	r3, [sp, #0]
 8003b1e:	930c      	str	r3, [sp, #48]	; 0x30
 8003b20:	9306      	str	r3, [sp, #24]
 8003b22:	6c08      	ldr	r0, [r1, #64]	; 0x40
 8003b24:	4a25      	ldr	r2, [pc, #148]	; (8003bbc <SystemClock_Config+0xb4>)
 8003b26:	f040 5080 	orr.w	r0, r0, #268435456	; 0x10000000
 8003b2a:	6408      	str	r0, [r1, #64]	; 0x40
 8003b2c:	6c09      	ldr	r1, [r1, #64]	; 0x40
 8003b2e:	f001 5180 	and.w	r1, r1, #268435456	; 0x10000000
 8003b32:	9100      	str	r1, [sp, #0]
 8003b34:	9900      	ldr	r1, [sp, #0]
 8003b36:	9301      	str	r3, [sp, #4]
 8003b38:	6813      	ldr	r3, [r2, #0]
 8003b3a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8003b3e:	6013      	str	r3, [r2, #0]
 8003b40:	6813      	ldr	r3, [r2, #0]
 8003b42:	2102      	movs	r1, #2
 8003b44:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 8003b48:	2201      	movs	r2, #1
 8003b4a:	ed9f 7b17 	vldr	d7, [pc, #92]	; 8003ba8 <SystemClock_Config+0xa0>
 8003b4e:	9301      	str	r3, [sp, #4]
 8003b50:	2008      	movs	r0, #8
 8003b52:	f44f 0380 	mov.w	r3, #4194304	; 0x400000
 8003b56:	e9cd 210d 	strd	r2, r1, [sp, #52]	; 0x34
 8003b5a:	f44f 72a8 	mov.w	r2, #336	; 0x150
 8003b5e:	e9cd 0210 	strd	r0, r2, [sp, #64]	; 0x40
 8003b62:	930f      	str	r3, [sp, #60]	; 0x3c
 8003b64:	a808      	add	r0, sp, #32
 8003b66:	2304      	movs	r3, #4
 8003b68:	ed8d 7b08 	vstr	d7, [sp, #32]
 8003b6c:	e9cd 1312 	strd	r1, r3, [sp, #72]	; 0x48
 8003b70:	9c01      	ldr	r4, [sp, #4]
 8003b72:	f001 fc81 	bl	8005478 <HAL_RCC_OscConfig>
 8003b76:	b108      	cbz	r0, 8003b7c <SystemClock_Config+0x74>
 8003b78:	b672      	cpsid	i
 8003b7a:	e7fe      	b.n	8003b7a <SystemClock_Config+0x72>
 8003b7c:	ed9f 7b0c 	vldr	d7, [pc, #48]	; 8003bb0 <SystemClock_Config+0xa8>
 8003b80:	f44f 53a0 	mov.w	r3, #5120	; 0x1400
 8003b84:	2200      	movs	r2, #0
 8003b86:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8003b8a:	a802      	add	r0, sp, #8
 8003b8c:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8003b90:	2105      	movs	r1, #5
 8003b92:	ed8d 7b02 	vstr	d7, [sp, #8]
 8003b96:	9306      	str	r3, [sp, #24]
 8003b98:	f001 fe86 	bl	80058a8 <HAL_RCC_ClockConfig>
 8003b9c:	b108      	cbz	r0, 8003ba2 <SystemClock_Config+0x9a>
 8003b9e:	b672      	cpsid	i
 8003ba0:	e7fe      	b.n	8003ba0 <SystemClock_Config+0x98>
 8003ba2:	b014      	add	sp, #80	; 0x50
 8003ba4:	bd10      	pop	{r4, pc}
 8003ba6:	bf00      	nop
 8003ba8:	00000009 	.word	0x00000009
 8003bac:	00010000 	.word	0x00010000
 8003bb0:	0000000f 	.word	0x0000000f
 8003bb4:	00000002 	.word	0x00000002
 8003bb8:	40023800 	.word	0x40023800
 8003bbc:	40007000 	.word	0x40007000

08003bc0 <main>:
 8003bc0:	e92d 4880 	stmdb	sp!, {r7, fp, lr}
 8003bc4:	4ab4      	ldr	r2, [pc, #720]	; (8003e98 <main+0x2d8>)
 8003bc6:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8003bca:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8003bce:	b09d      	sub	sp, #116	; 0x74
 8003bd0:	2400      	movs	r4, #0
 8003bd2:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8003bd6:	f002 f9d3 	bl	8005f80 <HAL_Init>
 8003bda:	f7ff ff95 	bl	8003b08 <SystemClock_Config>
 8003bde:	e9cd 4412 	strd	r4, r4, [sp, #72]	; 0x48
 8003be2:	e9cd 4414 	strd	r4, r4, [sp, #80]	; 0x50
 8003be6:	4bad      	ldr	r3, [pc, #692]	; (8003e9c <main+0x2dc>)
 8003be8:	9404      	str	r4, [sp, #16]
 8003bea:	9416      	str	r4, [sp, #88]	; 0x58
 8003bec:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003bee:	48ac      	ldr	r0, [pc, #688]	; (8003ea0 <main+0x2e0>)
 8003bf0:	f042 0210 	orr.w	r2, r2, #16
 8003bf4:	631a      	str	r2, [r3, #48]	; 0x30
 8003bf6:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003bf8:	f002 0210 	and.w	r2, r2, #16
 8003bfc:	9204      	str	r2, [sp, #16]
 8003bfe:	9a04      	ldr	r2, [sp, #16]
 8003c00:	9405      	str	r4, [sp, #20]
 8003c02:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003c04:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8003c08:	631a      	str	r2, [r3, #48]	; 0x30
 8003c0a:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003c0c:	f002 0280 	and.w	r2, r2, #128	; 0x80
 8003c10:	9205      	str	r2, [sp, #20]
 8003c12:	9a05      	ldr	r2, [sp, #20]
 8003c14:	9406      	str	r4, [sp, #24]
 8003c16:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003c18:	f042 0201 	orr.w	r2, r2, #1
 8003c1c:	631a      	str	r2, [r3, #48]	; 0x30
 8003c1e:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003c20:	f002 0201 	and.w	r2, r2, #1
 8003c24:	9206      	str	r2, [sp, #24]
 8003c26:	9a06      	ldr	r2, [sp, #24]
 8003c28:	9407      	str	r4, [sp, #28]
 8003c2a:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003c2c:	f042 0202 	orr.w	r2, r2, #2
 8003c30:	631a      	str	r2, [r3, #48]	; 0x30
 8003c32:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003c34:	f002 0202 	and.w	r2, r2, #2
 8003c38:	9207      	str	r2, [sp, #28]
 8003c3a:	9a07      	ldr	r2, [sp, #28]
 8003c3c:	9408      	str	r4, [sp, #32]
 8003c3e:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003c40:	f042 0208 	orr.w	r2, r2, #8
 8003c44:	631a      	str	r2, [r3, #48]	; 0x30
 8003c46:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003c48:	f002 0208 	and.w	r2, r2, #8
 8003c4c:	9208      	str	r2, [sp, #32]
 8003c4e:	9a08      	ldr	r2, [sp, #32]
 8003c50:	9409      	str	r4, [sp, #36]	; 0x24
 8003c52:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003c54:	f042 0204 	orr.w	r2, r2, #4
 8003c58:	631a      	str	r2, [r3, #48]	; 0x30
 8003c5a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8003c5c:	f003 0304 	and.w	r3, r3, #4
 8003c60:	4622      	mov	r2, r4
 8003c62:	2140      	movs	r1, #64	; 0x40
 8003c64:	9309      	str	r3, [sp, #36]	; 0x24
 8003c66:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c68:	f002 f8be 	bl	8005de8 <HAL_GPIO_WritePin>
 8003c6c:	4622      	mov	r2, r4
 8003c6e:	488d      	ldr	r0, [pc, #564]	; (8003ea4 <main+0x2e4>)
 8003c70:	f24a 0110 	movw	r1, #40976	; 0xa010
 8003c74:	f002 f8b8 	bl	8005de8 <HAL_GPIO_WritePin>
 8003c78:	4622      	mov	r2, r4
 8003c7a:	488b      	ldr	r0, [pc, #556]	; (8003ea8 <main+0x2e8>)
 8003c7c:	f44f 7180 	mov.w	r1, #256	; 0x100
 8003c80:	f002 f8b2 	bl	8005de8 <HAL_GPIO_WritePin>
 8003c84:	227c      	movs	r2, #124	; 0x7c
 8003c86:	f44f 1388 	mov.w	r3, #1114112	; 0x110000
 8003c8a:	4888      	ldr	r0, [pc, #544]	; (8003eac <main+0x2ec>)
 8003c8c:	9414      	str	r4, [sp, #80]	; 0x50
 8003c8e:	a912      	add	r1, sp, #72	; 0x48
 8003c90:	e9cd 2312 	strd	r2, r3, [sp, #72]	; 0x48
 8003c94:	2600      	movs	r6, #0
 8003c96:	f001 ff87 	bl	8005ba8 <HAL_GPIO_Init>
 8003c9a:	2700      	movs	r7, #0
 8003c9c:	2240      	movs	r2, #64	; 0x40
 8003c9e:	2301      	movs	r3, #1
 8003ca0:	487f      	ldr	r0, [pc, #508]	; (8003ea0 <main+0x2e0>)
 8003ca2:	a912      	add	r1, sp, #72	; 0x48
 8003ca4:	e9cd 2312 	strd	r2, r3, [sp, #72]	; 0x48
 8003ca8:	e9cd 6714 	strd	r6, r7, [sp, #80]	; 0x50
 8003cac:	f001 ff7c 	bl	8005ba8 <HAL_GPIO_Init>
 8003cb0:	f24a 0210 	movw	r2, #40976	; 0xa010
 8003cb4:	2301      	movs	r3, #1
 8003cb6:	487b      	ldr	r0, [pc, #492]	; (8003ea4 <main+0x2e4>)
 8003cb8:	a912      	add	r1, sp, #72	; 0x48
 8003cba:	e9cd 2312 	strd	r2, r3, [sp, #72]	; 0x48
 8003cbe:	e9cd 6714 	strd	r6, r7, [sp, #80]	; 0x50
 8003cc2:	f001 ff71 	bl	8005ba8 <HAL_GPIO_Init>
 8003cc6:	2301      	movs	r3, #1
 8003cc8:	f44f 7280 	mov.w	r2, #256	; 0x100
 8003ccc:	4876      	ldr	r0, [pc, #472]	; (8003ea8 <main+0x2e8>)
 8003cce:	a912      	add	r1, sp, #72	; 0x48
 8003cd0:	e9cd 2312 	strd	r2, r3, [sp, #72]	; 0x48
 8003cd4:	e9cd 6714 	strd	r6, r7, [sp, #80]	; 0x50
 8003cd8:	f001 ff66 	bl	8005ba8 <HAL_GPIO_Init>
 8003cdc:	4622      	mov	r2, r4
 8003cde:	2105      	movs	r1, #5
 8003ce0:	2008      	movs	r0, #8
 8003ce2:	f002 f901 	bl	8005ee8 <HAL_NVIC_SetPriority>
 8003ce6:	2008      	movs	r0, #8
 8003ce8:	f002 f93c 	bl	8005f64 <HAL_NVIC_EnableIRQ>
 8003cec:	4622      	mov	r2, r4
 8003cee:	2105      	movs	r1, #5
 8003cf0:	2009      	movs	r0, #9
 8003cf2:	f002 f8f9 	bl	8005ee8 <HAL_NVIC_SetPriority>
 8003cf6:	2009      	movs	r0, #9
 8003cf8:	f002 f934 	bl	8005f64 <HAL_NVIC_EnableIRQ>
 8003cfc:	4622      	mov	r2, r4
 8003cfe:	2105      	movs	r1, #5
 8003d00:	200a      	movs	r0, #10
 8003d02:	f002 f8f1 	bl	8005ee8 <HAL_NVIC_SetPriority>
 8003d06:	200a      	movs	r0, #10
 8003d08:	f002 f92c 	bl	8005f64 <HAL_NVIC_EnableIRQ>
 8003d0c:	4622      	mov	r2, r4
 8003d0e:	2105      	movs	r1, #5
 8003d10:	2017      	movs	r0, #23
 8003d12:	f002 f8e9 	bl	8005ee8 <HAL_NVIC_SetPriority>
 8003d16:	2017      	movs	r0, #23
 8003d18:	f002 f924 	bl	8005f64 <HAL_NVIC_EnableIRQ>
 8003d1c:	4864      	ldr	r0, [pc, #400]	; (8003eb0 <main+0x2f0>)
 8003d1e:	4b65      	ldr	r3, [pc, #404]	; (8003eb4 <main+0x2f4>)
 8003d20:	6104      	str	r4, [r0, #16]
 8003d22:	e9c0 4402 	strd	r4, r4, [r0, #8]
 8003d26:	e9c0 4406 	strd	r4, r4, [r0, #24]
 8003d2a:	f44f 35e1 	mov.w	r5, #115200	; 0x1c200
 8003d2e:	240c      	movs	r4, #12
 8003d30:	e9c0 3500 	strd	r3, r5, [r0]
 8003d34:	6144      	str	r4, [r0, #20]
 8003d36:	f002 fc79 	bl	800662c <HAL_UART_Init>
 8003d3a:	b108      	cbz	r0, 8003d40 <main+0x180>
 8003d3c:	b672      	cpsid	i
 8003d3e:	e7fe      	b.n	8003d3e <main+0x17e>
 8003d40:	4b5d      	ldr	r3, [pc, #372]	; (8003eb8 <main+0x2f8>)
 8003d42:	4e5e      	ldr	r6, [pc, #376]	; (8003ebc <main+0x2fc>)
 8003d44:	220a      	movs	r2, #10
 8003d46:	62da      	str	r2, [r3, #44]	; 0x2c
 8003d48:	f44f 7282 	mov.w	r2, #260	; 0x104
 8003d4c:	e9c3 0002 	strd	r0, r0, [r3, #8]
 8003d50:	e9c3 0004 	strd	r0, r0, [r3, #16]
 8003d54:	e9c3 0007 	strd	r0, r0, [r3, #28]
 8003d58:	e9c3 0009 	strd	r0, r0, [r3, #36]	; 0x24
 8003d5c:	e9c3 6200 	strd	r6, r2, [r3]
 8003d60:	4618      	mov	r0, r3
 8003d62:	f44f 7200 	mov.w	r2, #512	; 0x200
 8003d66:	619a      	str	r2, [r3, #24]
 8003d68:	f002 fa22 	bl	80061b0 <HAL_SPI_Init>
 8003d6c:	b108      	cbz	r0, 8003d72 <main+0x1b2>
 8003d6e:	b672      	cpsid	i
 8003d70:	e7fe      	b.n	8003d70 <main+0x1b0>
 8003d72:	4b53      	ldr	r3, [pc, #332]	; (8003ec0 <main+0x300>)
 8003d74:	4a53      	ldr	r2, [pc, #332]	; (8003ec4 <main+0x304>)
 8003d76:	4f54      	ldr	r7, [pc, #336]	; (8003ec8 <main+0x308>)
 8003d78:	e9c3 0002 	strd	r0, r0, [r3, #8]
 8003d7c:	e9c3 0005 	strd	r0, r0, [r3, #20]
 8003d80:	e9c3 0007 	strd	r0, r0, [r3, #28]
 8003d84:	f44f 4680 	mov.w	r6, #16384	; 0x4000
 8003d88:	4618      	mov	r0, r3
 8003d8a:	e9c3 2700 	strd	r2, r7, [r3]
 8003d8e:	611e      	str	r6, [r3, #16]
 8003d90:	f003 f9fa 	bl	8007188 <HAL_I2C_Init>
 8003d94:	b980      	cbnz	r0, 8003db8 <main+0x1f8>
 8003d96:	4b4d      	ldr	r3, [pc, #308]	; (8003ecc <main+0x30c>)
 8003d98:	4a4d      	ldr	r2, [pc, #308]	; (8003ed0 <main+0x310>)
 8003d9a:	601a      	str	r2, [r3, #0]
 8003d9c:	e9c3 7001 	strd	r7, r0, [r3, #4]
 8003da0:	e9c3 0603 	strd	r0, r6, [r3, #12]
 8003da4:	e9c3 0005 	strd	r0, r0, [r3, #20]
 8003da8:	e9c3 0007 	strd	r0, r0, [r3, #28]
 8003dac:	4618      	mov	r0, r3
 8003dae:	f003 f9eb 	bl	8007188 <HAL_I2C_Init>
 8003db2:	b118      	cbz	r0, 8003dbc <main+0x1fc>
 8003db4:	b672      	cpsid	i
 8003db6:	e7fe      	b.n	8003db6 <main+0x1f6>
 8003db8:	b672      	cpsid	i
 8003dba:	e7fe      	b.n	8003dba <main+0x1fa>
 8003dbc:	4b45      	ldr	r3, [pc, #276]	; (8003ed4 <main+0x314>)
 8003dbe:	4a46      	ldr	r2, [pc, #280]	; (8003ed8 <main+0x318>)
 8003dc0:	6118      	str	r0, [r3, #16]
 8003dc2:	e9c3 0002 	strd	r0, r0, [r3, #8]
 8003dc6:	e9c3 0006 	strd	r0, r0, [r3, #24]
 8003dca:	4618      	mov	r0, r3
 8003dcc:	601a      	str	r2, [r3, #0]
 8003dce:	605d      	str	r5, [r3, #4]
 8003dd0:	615c      	str	r4, [r3, #20]
 8003dd2:	f002 fc2b 	bl	800662c <HAL_UART_Init>
 8003dd6:	4602      	mov	r2, r0
 8003dd8:	b980      	cbnz	r0, 8003dfc <main+0x23c>
 8003dda:	4840      	ldr	r0, [pc, #256]	; (8003edc <main+0x31c>)
 8003ddc:	e9c0 7201 	strd	r7, r2, [r0, #4]
 8003de0:	e9c0 2603 	strd	r2, r6, [r0, #12]
 8003de4:	e9c0 2205 	strd	r2, r2, [r0, #20]
 8003de8:	e9c0 2207 	strd	r2, r2, [r0, #28]
 8003dec:	4a3c      	ldr	r2, [pc, #240]	; (8003ee0 <main+0x320>)
 8003dee:	6002      	str	r2, [r0, #0]
 8003df0:	f003 f9ca 	bl	8007188 <HAL_I2C_Init>
 8003df4:	4603      	mov	r3, r0
 8003df6:	b118      	cbz	r0, 8003e00 <main+0x240>
 8003df8:	b672      	cpsid	i
 8003dfa:	e7fe      	b.n	8003dfa <main+0x23a>
 8003dfc:	b672      	cpsid	i
 8003dfe:	e7fe      	b.n	8003dfe <main+0x23e>
 8003e00:	4c38      	ldr	r4, [pc, #224]	; (8003ee4 <main+0x324>)
 8003e02:	4939      	ldr	r1, [pc, #228]	; (8003ee8 <main+0x328>)
 8003e04:	6021      	str	r1, [r4, #0]
 8003e06:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 8003e0a:	6061      	str	r1, [r4, #4]
 8003e0c:	4937      	ldr	r1, [pc, #220]	; (8003eec <main+0x32c>)
 8003e0e:	60a0      	str	r0, [r4, #8]
 8003e10:	2201      	movs	r2, #1
 8003e12:	e9cd 0012 	strd	r0, r0, [sp, #72]	; 0x48
 8003e16:	e9cd 0014 	strd	r0, r0, [sp, #80]	; 0x50
 8003e1a:	e9c4 100a 	strd	r1, r0, [r4, #40]	; 0x28
 8003e1e:	6120      	str	r0, [r4, #16]
 8003e20:	f884 0020 	strb.w	r0, [r4, #32]
 8003e24:	4620      	mov	r0, r4
 8003e26:	60e3      	str	r3, [r4, #12]
 8003e28:	f884 3030 	strb.w	r3, [r4, #48]	; 0x30
 8003e2c:	7622      	strb	r2, [r4, #24]
 8003e2e:	61e2      	str	r2, [r4, #28]
 8003e30:	6162      	str	r2, [r4, #20]
 8003e32:	f008 febf 	bl	800cbb4 <HAL_ADC_Init>
 8003e36:	4603      	mov	r3, r0
 8003e38:	b108      	cbz	r0, 8003e3e <main+0x27e>
 8003e3a:	b672      	cpsid	i
 8003e3c:	e7fe      	b.n	8003e3c <main+0x27c>
 8003e3e:	2609      	movs	r6, #9
 8003e40:	2701      	movs	r7, #1
 8003e42:	4620      	mov	r0, r4
 8003e44:	a912      	add	r1, sp, #72	; 0x48
 8003e46:	9314      	str	r3, [sp, #80]	; 0x50
 8003e48:	e9cd 6712 	strd	r6, r7, [sp, #72]	; 0x48
 8003e4c:	f009 f852 	bl	800cef4 <HAL_ADC_ConfigChannel>
 8003e50:	4603      	mov	r3, r0
 8003e52:	b108      	cbz	r0, 8003e58 <main+0x298>
 8003e54:	b672      	cpsid	i
 8003e56:	e7fe      	b.n	8003e56 <main+0x296>
 8003e58:	4c25      	ldr	r4, [pc, #148]	; (8003ef0 <main+0x330>)
 8003e5a:	4926      	ldr	r1, [pc, #152]	; (8003ef4 <main+0x334>)
 8003e5c:	900d      	str	r0, [sp, #52]	; 0x34
 8003e5e:	f44f 62f0 	mov.w	r2, #1920	; 0x780
 8003e62:	e9c4 1200 	strd	r1, r2, [r4]
 8003e66:	21ff      	movs	r1, #255	; 0xff
 8003e68:	e9cd 0012 	strd	r0, r0, [sp, #72]	; 0x48
 8003e6c:	e9cd 0014 	strd	r0, r0, [sp, #80]	; 0x50
 8003e70:	e9cd 0016 	strd	r0, r0, [sp, #88]	; 0x58
 8003e74:	e9c4 0102 	strd	r0, r1, [r4, #8]
 8003e78:	900a      	str	r0, [sp, #40]	; 0x28
 8003e7a:	9018      	str	r0, [sp, #96]	; 0x60
 8003e7c:	2280      	movs	r2, #128	; 0x80
 8003e7e:	6120      	str	r0, [r4, #16]
 8003e80:	4620      	mov	r0, r4
 8003e82:	e9cd 330e 	strd	r3, r3, [sp, #56]	; 0x38
 8003e86:	61a2      	str	r2, [r4, #24]
 8003e88:	9310      	str	r3, [sp, #64]	; 0x40
 8003e8a:	930b      	str	r3, [sp, #44]	; 0x2c
 8003e8c:	f000 fe6c 	bl	8004b68 <HAL_TIM_Base_Init>
 8003e90:	b390      	cbz	r0, 8003ef8 <main+0x338>
 8003e92:	b672      	cpsid	i
 8003e94:	e7fe      	b.n	8003e94 <main+0x2d4>
 8003e96:	bf00      	nop
 8003e98:	e000ed00 	.word	0xe000ed00
 8003e9c:	40023800 	.word	0x40023800
 8003ea0:	40020000 	.word	0x40020000
 8003ea4:	40020c00 	.word	0x40020c00
 8003ea8:	40020800 	.word	0x40020800
 8003eac:	40021000 	.word	0x40021000
 8003eb0:	20000418 	.word	0x20000418
 8003eb4:	40011000 	.word	0x40011000
 8003eb8:	20000330 	.word	0x20000330
 8003ebc:	40003800 	.word	0x40003800
 8003ec0:	20000214 	.word	0x20000214
 8003ec4:	40005400 	.word	0x40005400
 8003ec8:	000186a0 	.word	0x000186a0
 8003ecc:	20000268 	.word	0x20000268
 8003ed0:	40005800 	.word	0x40005800
 8003ed4:	20000460 	.word	0x20000460
 8003ed8:	40004400 	.word	0x40004400
 8003edc:	200002bc 	.word	0x200002bc
 8003ee0:	40005c00 	.word	0x40005c00
 8003ee4:	200001cc 	.word	0x200001cc
 8003ee8:	40012000 	.word	0x40012000
 8003eec:	0f000001 	.word	0x0f000001
 8003ef0:	20000388 	.word	0x20000388
 8003ef4:	40000400 	.word	0x40000400
 8003ef8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8003efc:	4620      	mov	r0, r4
 8003efe:	a90d      	add	r1, sp, #52	; 0x34
 8003f00:	930d      	str	r3, [sp, #52]	; 0x34
 8003f02:	f001 f921 	bl	8005148 <HAL_TIM_ConfigClockSource>
 8003f06:	b108      	cbz	r0, 8003f0c <main+0x34c>
 8003f08:	b672      	cpsid	i
 8003f0a:	e7fe      	b.n	8003f0a <main+0x34a>
 8003f0c:	48b4      	ldr	r0, [pc, #720]	; (80041e0 <main+0x620>)
 8003f0e:	f000 ff01 	bl	8004d14 <HAL_TIM_PWM_Init>
 8003f12:	b108      	cbz	r0, 8003f18 <main+0x358>
 8003f14:	b672      	cpsid	i
 8003f16:	e7fe      	b.n	8003f16 <main+0x356>
 8003f18:	f04f 0a00 	mov.w	sl, #0
 8003f1c:	f04f 0b00 	mov.w	fp, #0
 8003f20:	48af      	ldr	r0, [pc, #700]	; (80041e0 <main+0x620>)
 8003f22:	a90a      	add	r1, sp, #40	; 0x28
 8003f24:	e9cd ab0a 	strd	sl, fp, [sp, #40]	; 0x28
 8003f28:	f001 fa62 	bl	80053f0 <HAL_TIMEx_MasterConfigSynchronization>
 8003f2c:	b108      	cbz	r0, 8003f32 <main+0x372>
 8003f2e:	b672      	cpsid	i
 8003f30:	e7fe      	b.n	8003f30 <main+0x370>
 8003f32:	9014      	str	r0, [sp, #80]	; 0x50
 8003f34:	9016      	str	r0, [sp, #88]	; 0x58
 8003f36:	2208      	movs	r2, #8
 8003f38:	48a9      	ldr	r0, [pc, #676]	; (80041e0 <main+0x620>)
 8003f3a:	a912      	add	r1, sp, #72	; 0x48
 8003f3c:	f04f 0860 	mov.w	r8, #96	; 0x60
 8003f40:	f04f 0900 	mov.w	r9, #0
 8003f44:	e9cd 8912 	strd	r8, r9, [sp, #72]	; 0x48
 8003f48:	f000 ffee 	bl	8004f28 <HAL_TIM_PWM_ConfigChannel>
 8003f4c:	4604      	mov	r4, r0
 8003f4e:	b108      	cbz	r0, 8003f54 <main+0x394>
 8003f50:	b672      	cpsid	i
 8003f52:	e7fe      	b.n	8003f52 <main+0x392>
 8003f54:	48a2      	ldr	r0, [pc, #648]	; (80041e0 <main+0x620>)
 8003f56:	4da3      	ldr	r5, [pc, #652]	; (80041e4 <main+0x624>)
 8003f58:	f000 fd42 	bl	80049e0 <HAL_TIM_MspPostInit>
 8003f5c:	49a2      	ldr	r1, [pc, #648]	; (80041e8 <main+0x628>)
 8003f5e:	9418      	str	r4, [sp, #96]	; 0x60
 8003f60:	f44f 63f0 	mov.w	r3, #1920	; 0x780
 8003f64:	e9c5 1300 	strd	r1, r3, [r5]
 8003f68:	26ff      	movs	r6, #255	; 0xff
 8003f6a:	2380      	movs	r3, #128	; 0x80
 8003f6c:	4628      	mov	r0, r5
 8003f6e:	e9cd 440d 	strd	r4, r4, [sp, #52]	; 0x34
 8003f72:	e9cd 440f 	strd	r4, r4, [sp, #60]	; 0x3c
 8003f76:	e9cd 440a 	strd	r4, r4, [sp, #40]	; 0x28
 8003f7a:	e9cd 4412 	strd	r4, r4, [sp, #72]	; 0x48
 8003f7e:	e9cd 4414 	strd	r4, r4, [sp, #80]	; 0x50
 8003f82:	e9cd 4416 	strd	r4, r4, [sp, #88]	; 0x58
 8003f86:	60ac      	str	r4, [r5, #8]
 8003f88:	612c      	str	r4, [r5, #16]
 8003f8a:	60ee      	str	r6, [r5, #12]
 8003f8c:	61ab      	str	r3, [r5, #24]
 8003f8e:	f000 fdeb 	bl	8004b68 <HAL_TIM_Base_Init>
 8003f92:	b108      	cbz	r0, 8003f98 <main+0x3d8>
 8003f94:	b672      	cpsid	i
 8003f96:	e7fe      	b.n	8003f96 <main+0x3d6>
 8003f98:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8003f9c:	a90d      	add	r1, sp, #52	; 0x34
 8003f9e:	4628      	mov	r0, r5
 8003fa0:	930d      	str	r3, [sp, #52]	; 0x34
 8003fa2:	f001 f8d1 	bl	8005148 <HAL_TIM_ConfigClockSource>
 8003fa6:	b108      	cbz	r0, 8003fac <main+0x3ec>
 8003fa8:	b672      	cpsid	i
 8003faa:	e7fe      	b.n	8003faa <main+0x3ea>
 8003fac:	4628      	mov	r0, r5
 8003fae:	f000 feb1 	bl	8004d14 <HAL_TIM_PWM_Init>
 8003fb2:	b108      	cbz	r0, 8003fb8 <main+0x3f8>
 8003fb4:	b672      	cpsid	i
 8003fb6:	e7fe      	b.n	8003fb6 <main+0x3f6>
 8003fb8:	a90a      	add	r1, sp, #40	; 0x28
 8003fba:	4628      	mov	r0, r5
 8003fbc:	e9cd ab0a 	strd	sl, fp, [sp, #40]	; 0x28
 8003fc0:	f001 fa16 	bl	80053f0 <HAL_TIMEx_MasterConfigSynchronization>
 8003fc4:	b108      	cbz	r0, 8003fca <main+0x40a>
 8003fc6:	b672      	cpsid	i
 8003fc8:	e7fe      	b.n	8003fc8 <main+0x408>
 8003fca:	9014      	str	r0, [sp, #80]	; 0x50
 8003fcc:	9016      	str	r0, [sp, #88]	; 0x58
 8003fce:	2208      	movs	r2, #8
 8003fd0:	a912      	add	r1, sp, #72	; 0x48
 8003fd2:	4628      	mov	r0, r5
 8003fd4:	e9cd 8912 	strd	r8, r9, [sp, #72]	; 0x48
 8003fd8:	f000 ffa6 	bl	8004f28 <HAL_TIM_PWM_ConfigChannel>
 8003fdc:	b108      	cbz	r0, 8003fe2 <main+0x422>
 8003fde:	b672      	cpsid	i
 8003fe0:	e7fe      	b.n	8003fe0 <main+0x420>
 8003fe2:	220c      	movs	r2, #12
 8003fe4:	a912      	add	r1, sp, #72	; 0x48
 8003fe6:	4628      	mov	r0, r5
 8003fe8:	f000 ff9e 	bl	8004f28 <HAL_TIM_PWM_ConfigChannel>
 8003fec:	4604      	mov	r4, r0
 8003fee:	b108      	cbz	r0, 8003ff4 <main+0x434>
 8003ff0:	b672      	cpsid	i
 8003ff2:	e7fe      	b.n	8003ff2 <main+0x432>
 8003ff4:	4628      	mov	r0, r5
 8003ff6:	f000 fcf3 	bl	80049e0 <HAL_TIM_MspPostInit>
 8003ffa:	2228      	movs	r2, #40	; 0x28
 8003ffc:	4621      	mov	r1, r4
 8003ffe:	a812      	add	r0, sp, #72	; 0x48
 8004000:	e9cd 440d 	strd	r4, r4, [sp, #52]	; 0x34
 8004004:	e9cd 440f 	strd	r4, r4, [sp, #60]	; 0x3c
 8004008:	9411      	str	r4, [sp, #68]	; 0x44
 800400a:	940a      	str	r4, [sp, #40]	; 0x28
 800400c:	f7fc f9c8 	bl	80003a0 <memset>
 8004010:	4876      	ldr	r0, [pc, #472]	; (80041ec <main+0x62c>)
 8004012:	4b77      	ldr	r3, [pc, #476]	; (80041f0 <main+0x630>)
 8004014:	6003      	str	r3, [r0, #0]
 8004016:	237f      	movs	r3, #127	; 0x7f
 8004018:	e9c0 4404 	strd	r4, r4, [r0, #16]
 800401c:	60c6      	str	r6, [r0, #12]
 800401e:	6044      	str	r4, [r0, #4]
 8004020:	6184      	str	r4, [r0, #24]
 8004022:	6083      	str	r3, [r0, #8]
 8004024:	f009 f814 	bl	800d050 <HAL_RTC_Init>
 8004028:	b108      	cbz	r0, 800402e <main+0x46e>
 800402a:	b672      	cpsid	i
 800402c:	e7fe      	b.n	800402c <main+0x46c>
 800402e:	2401      	movs	r4, #1
 8004030:	2300      	movs	r3, #0
 8004032:	486e      	ldr	r0, [pc, #440]	; (80041ec <main+0x62c>)
 8004034:	f8ad 3034 	strh.w	r3, [sp, #52]	; 0x34
 8004038:	a90d      	add	r1, sp, #52	; 0x34
 800403a:	4622      	mov	r2, r4
 800403c:	e9cd 3310 	strd	r3, r3, [sp, #64]	; 0x40
 8004040:	f88d 4036 	strb.w	r4, [sp, #54]	; 0x36
 8004044:	f009 f87a 	bl	800d13c <HAL_RTC_SetTime>
 8004048:	b108      	cbz	r0, 800404e <main+0x48e>
 800404a:	b672      	cpsid	i
 800404c:	e7fe      	b.n	800404c <main+0x48c>
 800404e:	4b69      	ldr	r3, [pc, #420]	; (80041f4 <main+0x634>)
 8004050:	4866      	ldr	r0, [pc, #408]	; (80041ec <main+0x62c>)
 8004052:	930a      	str	r3, [sp, #40]	; 0x28
 8004054:	4622      	mov	r2, r4
 8004056:	a90a      	add	r1, sp, #40	; 0x28
 8004058:	f009 f920 	bl	800d29c <HAL_RTC_SetDate>
 800405c:	4603      	mov	r3, r0
 800405e:	b108      	cbz	r0, 8004064 <main+0x4a4>
 8004060:	b672      	cpsid	i
 8004062:	e7fe      	b.n	8004062 <main+0x4a2>
 8004064:	4a64      	ldr	r2, [pc, #400]	; (80041f8 <main+0x638>)
 8004066:	4861      	ldr	r0, [pc, #388]	; (80041ec <main+0x62c>)
 8004068:	f8ad 3048 	strh.w	r3, [sp, #72]	; 0x48
 800406c:	f44f 7180 	mov.w	r1, #256	; 0x100
 8004070:	e9cd 2317 	strd	r2, r3, [sp, #92]	; 0x5c
 8004074:	911b      	str	r1, [sp, #108]	; 0x6c
 8004076:	4622      	mov	r2, r4
 8004078:	a912      	add	r1, sp, #72	; 0x48
 800407a:	e9cd 3315 	strd	r3, r3, [sp, #84]	; 0x54
 800407e:	f88d 304a 	strb.w	r3, [sp, #74]	; 0x4a
 8004082:	9313      	str	r3, [sp, #76]	; 0x4c
 8004084:	9319      	str	r3, [sp, #100]	; 0x64
 8004086:	f88d 4068 	strb.w	r4, [sp, #104]	; 0x68
 800408a:	f009 f9b5 	bl	800d3f8 <HAL_RTC_SetAlarm_IT>
 800408e:	4607      	mov	r7, r0
 8004090:	b108      	cbz	r0, 8004096 <main+0x4d6>
 8004092:	b672      	cpsid	i
 8004094:	e7fe      	b.n	8004094 <main+0x4d4>
 8004096:	f000 f9a7 	bl	80043e8 <tft_display_init>
 800409a:	e9cd 4401 	strd	r4, r4, [sp, #4]
 800409e:	f8df c168 	ldr.w	ip, [pc, #360]	; 8004208 <main+0x648>
 80040a2:	4c56      	ldr	r4, [pc, #344]	; (80041fc <main+0x63c>)
 80040a4:	9700      	str	r7, [sp, #0]
 80040a6:	231a      	movs	r3, #26
 80040a8:	8023      	strh	r3, [r4, #0]
 80040aa:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
 80040ae:	4e54      	ldr	r6, [pc, #336]	; (8004200 <main+0x640>)
 80040b0:	f8df 8158 	ldr.w	r8, [pc, #344]	; 800420c <main+0x64c>
 80040b4:	f8df a158 	ldr.w	sl, [pc, #344]	; 8004210 <main+0x650>
 80040b8:	f8df 9158 	ldr.w	r9, [pc, #344]	; 8004214 <main+0x654>
 80040bc:	4635      	mov	r5, r6
 80040be:	c50f      	stmia	r5!, {r0, r1, r2, r3}
 80040c0:	e89c 0007 	ldmia.w	ip, {r0, r1, r2}
 80040c4:	c503      	stmia	r5!, {r0, r1}
 80040c6:	f825 2b02 	strh.w	r2, [r5], #2
 80040ca:	0c12      	lsrs	r2, r2, #16
 80040cc:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80040d0:	4638      	mov	r0, r7
 80040d2:	702a      	strb	r2, [r5, #0]
 80040d4:	2102      	movs	r1, #2
 80040d6:	4632      	mov	r2, r6
 80040d8:	f005 fa36 	bl	8009548 <ST7735_print_config>
 80040dc:	8822      	ldrh	r2, [r4, #0]
 80040de:	4640      	mov	r0, r8
 80040e0:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 80040e4:	4631      	mov	r1, r6
 80040e6:	f002 fb3f 	bl	8006768 <HAL_UART_Transmit>
 80040ea:	4650      	mov	r0, sl
 80040ec:	f000 f99a 	bl	8004424 <humidity_sensor_init>
 80040f0:	4607      	mov	r7, r0
 80040f2:	4d43      	ldr	r5, [pc, #268]	; (8004200 <main+0x640>)
 80040f4:	f8df c120 	ldr.w	ip, [pc, #288]	; 8004218 <main+0x658>
 80040f8:	4648      	mov	r0, r9
 80040fa:	f04f 0b00 	mov.w	fp, #0
 80040fe:	f04f 0e01 	mov.w	lr, #1
 8004102:	231e      	movs	r3, #30
 8004104:	2f00      	cmp	r7, #0
 8004106:	d043      	beq.n	8004190 <main+0x5d0>
 8004108:	8023      	strh	r3, [r4, #0]
 800410a:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
 800410e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
 8004110:	e89c 000f 	ldmia.w	ip, {r0, r1, r2, r3}
 8004114:	c507      	stmia	r5!, {r0, r1, r2}
 8004116:	462a      	mov	r2, r5
 8004118:	0c1f      	lsrs	r7, r3, #16
 800411a:	f822 391c 	strh.w	r3, [r2], #-28
 800411e:	4659      	mov	r1, fp
 8004120:	4658      	mov	r0, fp
 8004122:	f8cd b000 	str.w	fp, [sp]
 8004126:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800412a:	70af      	strb	r7, [r5, #2]
 800412c:	e9cd ee01 	strd	lr, lr, [sp, #4]
 8004130:	f005 fa0a 	bl	8009548 <ST7735_print_config>
 8004134:	8822      	ldrh	r2, [r4, #0]
 8004136:	f1a5 011c 	sub.w	r1, r5, #28
 800413a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 800413e:	4640      	mov	r0, r8
 8004140:	f002 fb12 	bl	8006768 <HAL_UART_Transmit>
 8004144:	2301      	movs	r3, #1
 8004146:	4f2f      	ldr	r7, [pc, #188]	; (8004204 <main+0x644>)
 8004148:	4d2d      	ldr	r5, [pc, #180]	; (8004200 <main+0x640>)
 800414a:	e9cd 3301 	strd	r3, r3, [sp, #4]
 800414e:	f04f 0c00 	mov.w	ip, #0
 8004152:	231b      	movs	r3, #27
 8004154:	f8cd c000 	str.w	ip, [sp]
 8004158:	8023      	strh	r3, [r4, #0]
 800415a:	cf0f      	ldmia	r7!, {r0, r1, r2, r3}
 800415c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
 800415e:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
 8004162:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8004166:	e885 0007 	stmia.w	r5, {r0, r1, r2}
 800416a:	4660      	mov	r0, ip
 800416c:	f1a5 0210 	sub.w	r2, r5, #16
 8004170:	2132      	movs	r1, #50	; 0x32
 8004172:	f005 f9e9 	bl	8009548 <ST7735_print_config>
 8004176:	8822      	ldrh	r2, [r4, #0]
 8004178:	f1a5 0110 	sub.w	r1, r5, #16
 800417c:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8004180:	4640      	mov	r0, r8
 8004182:	f002 faf1 	bl	8006768 <HAL_UART_Transmit>
 8004186:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 800418a:	f001 ff25 	bl	8005fd8 <HAL_Delay>
 800418e:	e7ac      	b.n	80040ea <main+0x52a>
 8004190:	f000 f932 	bl	80043f8 <barometr_sensor_init>
 8004194:	f8df b068 	ldr.w	fp, [pc, #104]	; 8004200 <main+0x640>
 8004198:	f8df c080 	ldr.w	ip, [pc, #128]	; 800421c <main+0x65c>
 800419c:	2301      	movs	r3, #1
 800419e:	221f      	movs	r2, #31
 80041a0:	4605      	mov	r5, r0
 80041a2:	2800      	cmp	r0, #0
 80041a4:	d03c      	beq.n	8004220 <main+0x660>
 80041a6:	8022      	strh	r2, [r4, #0]
 80041a8:	e9cd 3301 	strd	r3, r3, [sp, #4]
 80041ac:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
 80041b0:	9700      	str	r7, [sp, #0]
 80041b2:	e8ab 000f 	stmia.w	fp!, {r0, r1, r2, r3}
 80041b6:	e89c 000f 	ldmia.w	ip, {r0, r1, r2, r3}
 80041ba:	e88b 000f 	stmia.w	fp, {r0, r1, r2, r3}
 80041be:	f1ab 0210 	sub.w	r2, fp, #16
 80041c2:	4639      	mov	r1, r7
 80041c4:	4638      	mov	r0, r7
 80041c6:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80041ca:	f005 f9bd 	bl	8009548 <ST7735_print_config>
 80041ce:	8822      	ldrh	r2, [r4, #0]
 80041d0:	f1ab 0110 	sub.w	r1, fp, #16
 80041d4:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 80041d8:	4640      	mov	r0, r8
 80041da:	f002 fac5 	bl	8006768 <HAL_UART_Transmit>
 80041de:	e7b1      	b.n	8004144 <main+0x584>
 80041e0:	20000388 	.word	0x20000388
 80041e4:	200003d0 	.word	0x200003d0
 80041e8:	40000800 	.word	0x40000800
 80041ec:	20000310 	.word	0x20000310
 80041f0:	40002800 	.word	0x40002800
 80041f4:	00010101 	.word	0x00010101
 80041f8:	80808000 	.word	0x80808000
 80041fc:	200005c8 	.word	0x200005c8
 8004200:	200004c8 	.word	0x200004c8
 8004204:	0800d8a4 	.word	0x0800d8a4
 8004208:	0800d828 	.word	0x0800d828
 800420c:	20000418 	.word	0x20000418
 8004210:	20000214 	.word	0x20000214
 8004214:	20000268 	.word	0x20000268
 8004218:	0800d844 	.word	0x0800d844
 800421c:	0800d864 	.word	0x0800d864
 8004220:	4b4e      	ldr	r3, [pc, #312]	; (800435c <main+0x79c>)
 8004222:	9000      	str	r0, [sp, #0]
 8004224:	f04f 0801 	mov.w	r8, #1
 8004228:	220f      	movs	r2, #15
 800422a:	e9cd 8801 	strd	r8, r8, [sp, #4]
 800422e:	8022      	strh	r2, [r4, #0]
 8004230:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
 8004232:	4f4b      	ldr	r7, [pc, #300]	; (8004360 <main+0x7a0>)
 8004234:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
 8004238:	463a      	mov	r2, r7
 800423a:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800423e:	211a      	movs	r1, #26
 8004240:	2002      	movs	r0, #2
 8004242:	f005 f981 	bl	8009548 <ST7735_print_config>
 8004246:	8822      	ldrh	r2, [r4, #0]
 8004248:	4846      	ldr	r0, [pc, #280]	; (8004364 <main+0x7a4>)
 800424a:	4639      	mov	r1, r7
 800424c:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8004250:	f002 fa8a 	bl	8006768 <HAL_UART_Transmit>
 8004254:	4b44      	ldr	r3, [pc, #272]	; (8004368 <main+0x7a8>)
 8004256:	220e      	movs	r2, #14
 8004258:	8022      	strh	r2, [r4, #0]
 800425a:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
 800425c:	c707      	stmia	r7!, {r0, r1, r2}
 800425e:	463a      	mov	r2, r7
 8004260:	ea4f 4c13 	mov.w	ip, r3, lsr #16
 8004264:	f822 390c 	strh.w	r3, [r2], #-12
 8004268:	2126      	movs	r1, #38	; 0x26
 800426a:	f886 c00e 	strb.w	ip, [r6, #14]
 800426e:	2002      	movs	r0, #2
 8004270:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8004274:	e9cd 8801 	strd	r8, r8, [sp, #4]
 8004278:	9500      	str	r5, [sp, #0]
 800427a:	f005 f965 	bl	8009548 <ST7735_print_config>
 800427e:	8822      	ldrh	r2, [r4, #0]
 8004280:	4838      	ldr	r0, [pc, #224]	; (8004364 <main+0x7a4>)
 8004282:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8004286:	f1a7 010c 	sub.w	r1, r7, #12
 800428a:	f002 fa6d 	bl	8006768 <HAL_UART_Transmit>
 800428e:	f8df c130 	ldr.w	ip, [pc, #304]	; 80043c0 <main+0x800>
 8004292:	9500      	str	r5, [sp, #0]
 8004294:	231b      	movs	r3, #27
 8004296:	e9cd 8801 	strd	r8, r8, [sp, #4]
 800429a:	8023      	strh	r3, [r4, #0]
 800429c:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
 80042a0:	f1a7 060c 	sub.w	r6, r7, #12
 80042a4:	c60f      	stmia	r6!, {r0, r1, r2, r3}
 80042a6:	e89c 0007 	ldmia.w	ip, {r0, r1, r2}
 80042aa:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80042ae:	e886 0007 	stmia.w	r6, {r0, r1, r2}
 80042b2:	f1a7 020c 	sub.w	r2, r7, #12
 80042b6:	2132      	movs	r1, #50	; 0x32
 80042b8:	4628      	mov	r0, r5
 80042ba:	f005 f945 	bl	8009548 <ST7735_print_config>
 80042be:	8822      	ldrh	r2, [r4, #0]
 80042c0:	4828      	ldr	r0, [pc, #160]	; (8004364 <main+0x7a4>)
 80042c2:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 80042c6:	f1a7 010c 	sub.w	r1, r7, #12
 80042ca:	f002 fa4d 	bl	8006768 <HAL_UART_Transmit>
 80042ce:	f44f 60fa 	mov.w	r0, #2000	; 0x7d0
 80042d2:	f001 fe81 	bl	8005fd8 <HAL_Delay>
 80042d6:	2108      	movs	r1, #8
 80042d8:	4824      	ldr	r0, [pc, #144]	; (800436c <main+0x7ac>)
 80042da:	f000 fdb3 	bl	8004e44 <HAL_TIM_PWM_Start>
 80042de:	210c      	movs	r1, #12
 80042e0:	4822      	ldr	r0, [pc, #136]	; (800436c <main+0x7ac>)
 80042e2:	f000 fdaf 	bl	8004e44 <HAL_TIM_PWM_Start>
 80042e6:	2108      	movs	r1, #8
 80042e8:	4821      	ldr	r0, [pc, #132]	; (8004370 <main+0x7b0>)
 80042ea:	f000 fdab 	bl	8004e44 <HAL_TIM_PWM_Start>
 80042ee:	f008 fa7b 	bl	800c7e8 <osKernelInitialize>
 80042f2:	4820      	ldr	r0, [pc, #128]	; (8004374 <main+0x7b4>)
 80042f4:	f008 fafe 	bl	800c8f4 <osMutexNew>
 80042f8:	4b1f      	ldr	r3, [pc, #124]	; (8004378 <main+0x7b8>)
 80042fa:	4a20      	ldr	r2, [pc, #128]	; (800437c <main+0x7bc>)
 80042fc:	4601      	mov	r1, r0
 80042fe:	6019      	str	r1, [r3, #0]
 8004300:	4640      	mov	r0, r8
 8004302:	4629      	mov	r1, r5
 8004304:	f008 fb84 	bl	800ca10 <osSemaphoreNew>
 8004308:	4b1d      	ldr	r3, [pc, #116]	; (8004380 <main+0x7c0>)
 800430a:	4a1e      	ldr	r2, [pc, #120]	; (8004384 <main+0x7c4>)
 800430c:	6018      	str	r0, [r3, #0]
 800430e:	4629      	mov	r1, r5
 8004310:	481d      	ldr	r0, [pc, #116]	; (8004388 <main+0x7c8>)
 8004312:	f008 fa95 	bl	800c840 <osThreadNew>
 8004316:	4b1d      	ldr	r3, [pc, #116]	; (800438c <main+0x7cc>)
 8004318:	4a1d      	ldr	r2, [pc, #116]	; (8004390 <main+0x7d0>)
 800431a:	6018      	str	r0, [r3, #0]
 800431c:	4629      	mov	r1, r5
 800431e:	481d      	ldr	r0, [pc, #116]	; (8004394 <main+0x7d4>)
 8004320:	f008 fa8e 	bl	800c840 <osThreadNew>
 8004324:	4b1c      	ldr	r3, [pc, #112]	; (8004398 <main+0x7d8>)
 8004326:	4a1d      	ldr	r2, [pc, #116]	; (800439c <main+0x7dc>)
 8004328:	6018      	str	r0, [r3, #0]
 800432a:	4629      	mov	r1, r5
 800432c:	481c      	ldr	r0, [pc, #112]	; (80043a0 <main+0x7e0>)
 800432e:	f008 fa87 	bl	800c840 <osThreadNew>
 8004332:	4b1c      	ldr	r3, [pc, #112]	; (80043a4 <main+0x7e4>)
 8004334:	4a1c      	ldr	r2, [pc, #112]	; (80043a8 <main+0x7e8>)
 8004336:	6018      	str	r0, [r3, #0]
 8004338:	4629      	mov	r1, r5
 800433a:	481c      	ldr	r0, [pc, #112]	; (80043ac <main+0x7ec>)
 800433c:	f008 fa80 	bl	800c840 <osThreadNew>
 8004340:	4b1b      	ldr	r3, [pc, #108]	; (80043b0 <main+0x7f0>)
 8004342:	4a1c      	ldr	r2, [pc, #112]	; (80043b4 <main+0x7f4>)
 8004344:	4604      	mov	r4, r0
 8004346:	4629      	mov	r1, r5
 8004348:	481b      	ldr	r0, [pc, #108]	; (80043b8 <main+0x7f8>)
 800434a:	601c      	str	r4, [r3, #0]
 800434c:	f008 fa78 	bl	800c840 <osThreadNew>
 8004350:	4b1a      	ldr	r3, [pc, #104]	; (80043bc <main+0x7fc>)
 8004352:	6018      	str	r0, [r3, #0]
 8004354:	f008 fa5a 	bl	800c80c <osKernelStart>
 8004358:	e7fe      	b.n	8004358 <main+0x798>
 800435a:	bf00      	nop
 800435c:	0800d884 	.word	0x0800d884
 8004360:	200004c8 	.word	0x200004c8
 8004364:	20000418 	.word	0x20000418
 8004368:	0800d894 	.word	0x0800d894
 800436c:	200003d0 	.word	0x200003d0
 8004370:	20000388 	.word	0x20000388
 8004374:	0800d928 	.word	0x0800d928
 8004378:	200001bc 	.word	0x200001bc
 800437c:	0800d918 	.word	0x0800d918
 8004380:	200001b8 	.word	0x200001b8
 8004384:	0800d95c 	.word	0x0800d95c
 8004388:	08003441 	.word	0x08003441
 800438c:	200001c8 	.word	0x200001c8
 8004390:	0800d9c8 	.word	0x0800d9c8
 8004394:	08003981 	.word	0x08003981
 8004398:	200004b8 	.word	0x200004b8
 800439c:	0800d9a4 	.word	0x0800d9a4
 80043a0:	08003745 	.word	0x08003745
 80043a4:	200004b0 	.word	0x200004b0
 80043a8:	0800d980 	.word	0x0800d980
 80043ac:	080035e5 	.word	0x080035e5
 80043b0:	200004ac 	.word	0x200004ac
 80043b4:	0800d938 	.word	0x0800d938
 80043b8:	0800344d 	.word	0x0800344d
 80043bc:	200001c0 	.word	0x200001c0
 80043c0:	0800d8a4 	.word	0x0800d8a4

080043c4 <HAL_GPIO_EXTI_Callback>:
 80043c4:	4b01      	ldr	r3, [pc, #4]	; (80043cc <HAL_GPIO_EXTI_Callback+0x8>)
 80043c6:	f853 3020 	ldr.w	r3, [r3, r0, lsl #2]
 80043ca:	4718      	bx	r3
 80043cc:	20000068 	.word	0x20000068

080043d0 <HAL_TIM_PeriodElapsedCallback>:
 80043d0:	4b03      	ldr	r3, [pc, #12]	; (80043e0 <HAL_TIM_PeriodElapsedCallback+0x10>)
 80043d2:	6802      	ldr	r2, [r0, #0]
 80043d4:	429a      	cmp	r2, r3
 80043d6:	d000      	beq.n	80043da <HAL_TIM_PeriodElapsedCallback+0xa>
 80043d8:	4770      	bx	lr
 80043da:	f001 bdeb 	b.w	8005fb4 <HAL_IncTick>
 80043de:	bf00      	nop
 80043e0:	40001c00 	.word	0x40001c00

080043e4 <Error_Handler>:
 80043e4:	b672      	cpsid	i
 80043e6:	e7fe      	b.n	80043e6 <Error_Handler+0x2>

080043e8 <tft_display_init>:
 80043e8:	b508      	push	{r3, lr}
 80043ea:	f004 fd47 	bl	8008e7c <ST7735_init>
 80043ee:	2000      	movs	r0, #0
 80043f0:	f005 f896 	bl	8009520 <ST7735_fill>
 80043f4:	2000      	movs	r0, #0
 80043f6:	bd08      	pop	{r3, pc}

080043f8 <barometr_sensor_init>:
 80043f8:	b538      	push	{r3, r4, r5, lr}
 80043fa:	4c09      	ldr	r4, [pc, #36]	; (8004420 <barometr_sensor_init+0x28>)
 80043fc:	4605      	mov	r5, r0
 80043fe:	f104 0020 	add.w	r0, r4, #32
 8004402:	f005 fa83 	bl	800990c <BMP280_init_default_params>
 8004406:	2376      	movs	r3, #118	; 0x76
 8004408:	f104 0120 	add.w	r1, r4, #32
 800440c:	4620      	mov	r0, r4
 800440e:	8323      	strh	r3, [r4, #24]
 8004410:	61e5      	str	r5, [r4, #28]
 8004412:	f005 fa83 	bl	800991c <BMP280_init>
 8004416:	2800      	cmp	r0, #0
 8004418:	bf0c      	ite	eq
 800441a:	20fe      	moveq	r0, #254	; 0xfe
 800441c:	2000      	movne	r0, #0
 800441e:	bd38      	pop	{r3, r4, r5, pc}
 8004420:	200005cc 	.word	0x200005cc

08004424 <humidity_sensor_init>:
 8004424:	4601      	mov	r1, r0
 8004426:	b508      	push	{r3, lr}
 8004428:	2070      	movs	r0, #112	; 0x70
 800442a:	f005 f925 	bl	8009678 <AHT10_init>
 800442e:	f080 0001 	eor.w	r0, r0, #1
 8004432:	4240      	negs	r0, r0
 8004434:	b2c0      	uxtb	r0, r0
 8004436:	bd08      	pop	{r3, pc}

08004438 <get_pressure_readings>:
 8004438:	b500      	push	{lr}
 800443a:	b083      	sub	sp, #12
 800443c:	a901      	add	r1, sp, #4
 800443e:	f005 fb9f 	bl	8009b80 <BMP280_read_pressure>
 8004442:	b170      	cbz	r0, 8004462 <get_pressure_readings+0x2a>
 8004444:	9801      	ldr	r0, [sp, #4]
 8004446:	f7fe fa41 	bl	80028cc <__aeabi_f2d>
 800444a:	a309      	add	r3, pc, #36	; (adr r3, 8004470 <get_pressure_readings+0x38>)
 800444c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004450:	f7fe fa94 	bl	800297c <__aeabi_dmul>
 8004454:	f7fe fd62 	bl	8002f1c <__aeabi_d2f>
 8004458:	ee00 0a10 	vmov	s0, r0
 800445c:	b003      	add	sp, #12
 800445e:	f85d fb04 	ldr.w	pc, [sp], #4
 8004462:	eeb8 0a00 	vmov.f32	s0, #128	; 0xc0000000 -2.0
 8004466:	b003      	add	sp, #12
 8004468:	f85d fb04 	ldr.w	pc, [sp], #4
 800446c:	f3af 8000 	nop.w
 8004470:	05ff1d82 	.word	0x05ff1d82
 8004474:	3fe80082 	.word	0x3fe80082

08004478 <get_temperature_readings>:
 8004478:	b510      	push	{r4, lr}
 800447a:	ed2d 8b02 	vpush	{d8}
 800447e:	4604      	mov	r4, r0
 8004480:	b082      	sub	sp, #8
 8004482:	2001      	movs	r0, #1
 8004484:	f005 f9a8 	bl	80097d8 <AHT10_read_temperature>
 8004488:	a901      	add	r1, sp, #4
 800448a:	4620      	mov	r0, r4
 800448c:	eeb0 8a40 	vmov.f32	s16, s0
 8004490:	f005 fcaa 	bl	8009de8 <BMP280_read_temperature>
 8004494:	b1b0      	cbz	r0, 80044c4 <get_temperature_readings+0x4c>
 8004496:	eddf 7a0e 	vldr	s15, [pc, #56]	; 80044d0 <get_temperature_readings+0x58>
 800449a:	eeb4 8a67 	vcmp.f32	s16, s15
 800449e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80044a2:	d00f      	beq.n	80044c4 <get_temperature_readings+0x4c>
 80044a4:	ed9d 0a01 	vldr	s0, [sp, #4]
 80044a8:	ee38 0a00 	vadd.f32	s0, s16, s0
 80044ac:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
 80044b0:	ed9f 8a08 	vldr	s16, [pc, #32]	; 80044d4 <get_temperature_readings+0x5c>
 80044b4:	ee20 0a27 	vmul.f32	s0, s0, s15
 80044b8:	ee20 0a08 	vmul.f32	s0, s0, s16
 80044bc:	b002      	add	sp, #8
 80044be:	ecbd 8b02 	vpop	{d8}
 80044c2:	bd10      	pop	{r4, pc}
 80044c4:	ed9f 0a04 	vldr	s0, [pc, #16]	; 80044d8 <get_temperature_readings+0x60>
 80044c8:	b002      	add	sp, #8
 80044ca:	ecbd 8b02 	vpop	{d8}
 80044ce:	bd10      	pop	{r4, pc}
 80044d0:	437f0000 	.word	0x437f0000
 80044d4:	42c80000 	.word	0x42c80000
 80044d8:	c2200000 	.word	0xc2200000

080044dc <get_humidity_readings>:
 80044dc:	b508      	push	{r3, lr}
 80044de:	2001      	movs	r0, #1
 80044e0:	f005 f9b2 	bl	8009848 <AHT10_read_humidity>
 80044e4:	eddf 7a06 	vldr	s15, [pc, #24]	; 8004500 <get_humidity_readings+0x24>
 80044e8:	eeb4 0a67 	vcmp.f32	s0, s15
 80044ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80044f0:	bf16      	itet	ne
 80044f2:	eddf 7a04 	vldrne	s15, [pc, #16]	; 8004504 <get_humidity_readings+0x28>
 80044f6:	eebf 0a00 	vmoveq.f32	s0, #240	; 0xbf800000 -1.0
 80044fa:	ee20 0a27 	vmulne.f32	s0, s0, s15
 80044fe:	bd08      	pop	{r3, pc}
 8004500:	437f0000 	.word	0x437f0000
 8004504:	42c80000 	.word	0x42c80000

08004508 <calculate_brightness>:
 8004508:	b510      	push	{r4, lr}
 800450a:	4604      	mov	r4, r0
 800450c:	f008 fc00 	bl	800cd10 <HAL_ADC_Start>
 8004510:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 8004514:	4620      	mov	r0, r4
 8004516:	f008 fc8f 	bl	800ce38 <HAL_ADC_PollForConversion>
 800451a:	4620      	mov	r0, r4
 800451c:	f008 fce6 	bl	800ceec <HAL_ADC_GetValue>
 8004520:	b280      	uxth	r0, r0
 8004522:	f7fe f9c1 	bl	80028a8 <__aeabi_i2d>
 8004526:	4602      	mov	r2, r0
 8004528:	460b      	mov	r3, r1
 800452a:	a129      	add	r1, pc, #164	; (adr r1, 80045d0 <calculate_brightness+0xc8>)
 800452c:	e9d1 0100 	ldrd	r0, r1, [r1]
 8004530:	f7fe fb4e 	bl	8002bd0 <__aeabi_ddiv>
 8004534:	4b22      	ldr	r3, [pc, #136]	; (80045c0 <calculate_brightness+0xb8>)
 8004536:	2200      	movs	r2, #0
 8004538:	f7fe f868 	bl	800260c <__aeabi_dsub>
 800453c:	4602      	mov	r2, r0
 800453e:	460b      	mov	r3, r1
 8004540:	2000      	movs	r0, #0
 8004542:	4920      	ldr	r1, [pc, #128]	; (80045c4 <calculate_brightness+0xbc>)
 8004544:	f7fe fb44 	bl	8002bd0 <__aeabi_ddiv>
 8004548:	f7fe fcc8 	bl	8002edc <__aeabi_d2uiz>
 800454c:	ee07 0a90 	vmov	s15, r0
 8004550:	ed9f 7a1d 	vldr	s14, [pc, #116]	; 80045c8 <calculate_brightness+0xc0>
 8004554:	eef8 7a67 	vcvt.f32.u32	s15, s15
 8004558:	eec7 7a27 	vdiv.f32	s15, s14, s15
 800455c:	ee17 0a90 	vmov	r0, s15
 8004560:	f7fe f9b4 	bl	80028cc <__aeabi_f2d>
 8004564:	ec41 0b10 	vmov	d0, r0, r1
 8004568:	f7fc fd62 	bl	8001030 <log>
 800456c:	a310      	add	r3, pc, #64	; (adr r3, 80045b0 <calculate_brightness+0xa8>)
 800456e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004572:	ec51 0b10 	vmov	r0, r1, d0
 8004576:	f7fe fa01 	bl	800297c <__aeabi_dmul>
 800457a:	4602      	mov	r2, r0
 800457c:	460b      	mov	r3, r1
 800457e:	f7fe f847 	bl	8002610 <__adddf3>
 8004582:	4b0f      	ldr	r3, [pc, #60]	; (80045c0 <calculate_brightness+0xb8>)
 8004584:	2200      	movs	r2, #0
 8004586:	f7fe f843 	bl	8002610 <__adddf3>
 800458a:	f7fe fcc7 	bl	8002f1c <__aeabi_d2f>
 800458e:	f7fe f99d 	bl	80028cc <__aeabi_f2d>
 8004592:	ed9f 0b09 	vldr	d0, [pc, #36]	; 80045b8 <calculate_brightness+0xb0>
 8004596:	ec41 0b11 	vmov	d1, r0, r1
 800459a:	f7fc fd91 	bl	80010c0 <pow>
 800459e:	4b0b      	ldr	r3, [pc, #44]	; (80045cc <calculate_brightness+0xc4>)
 80045a0:	ec51 0b10 	vmov	r0, r1, d0
 80045a4:	2200      	movs	r2, #0
 80045a6:	f7fe f9e9 	bl	800297c <__aeabi_dmul>
 80045aa:	f7fe fc97 	bl	8002edc <__aeabi_d2uiz>
 80045ae:	bd10      	pop	{r4, pc}
 80045b0:	ae147ae1 	.word	0xae147ae1
 80045b4:	3fdae147 	.word	0x3fdae147
 80045b8:	00000000 	.word	0x00000000
 80045bc:	40240000 	.word	0x40240000
 80045c0:	3ff00000 	.word	0x3ff00000
 80045c4:	408f4000 	.word	0x408f4000
 80045c8:	461c4000 	.word	0x461c4000
 80045cc:	40140000 	.word	0x40140000
 80045d0:	00000000 	.word	0x00000000
 80045d4:	40affe00 	.word	0x40affe00

080045d8 <NMI_Handler>:
 80045d8:	e7fe      	b.n	80045d8 <NMI_Handler>
 80045da:	bf00      	nop

080045dc <HardFault_Handler>:
 80045dc:	e7fe      	b.n	80045dc <HardFault_Handler>
 80045de:	bf00      	nop

080045e0 <MemManage_Handler>:
 80045e0:	e7fe      	b.n	80045e0 <MemManage_Handler>
 80045e2:	bf00      	nop

080045e4 <BusFault_Handler>:
 80045e4:	e7fe      	b.n	80045e4 <BusFault_Handler>
 80045e6:	bf00      	nop

080045e8 <UsageFault_Handler>:
 80045e8:	e7fe      	b.n	80045e8 <UsageFault_Handler>
 80045ea:	bf00      	nop

080045ec <DebugMon_Handler>:
 80045ec:	4770      	bx	lr
 80045ee:	bf00      	nop

080045f0 <EXTI2_IRQHandler>:
 80045f0:	2004      	movs	r0, #4
 80045f2:	f001 bbfd 	b.w	8005df0 <HAL_GPIO_EXTI_IRQHandler>
 80045f6:	bf00      	nop

080045f8 <EXTI3_IRQHandler>:
 80045f8:	2008      	movs	r0, #8
 80045fa:	f001 bbf9 	b.w	8005df0 <HAL_GPIO_EXTI_IRQHandler>
 80045fe:	bf00      	nop

08004600 <EXTI4_IRQHandler>:
 8004600:	2010      	movs	r0, #16
 8004602:	f001 bbf5 	b.w	8005df0 <HAL_GPIO_EXTI_IRQHandler>
 8004606:	bf00      	nop

08004608 <EXTI9_5_IRQHandler>:
 8004608:	b508      	push	{r3, lr}
 800460a:	2020      	movs	r0, #32
 800460c:	f001 fbf0 	bl	8005df0 <HAL_GPIO_EXTI_IRQHandler>
 8004610:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8004614:	2040      	movs	r0, #64	; 0x40
 8004616:	f001 bbeb 	b.w	8005df0 <HAL_GPIO_EXTI_IRQHandler>
 800461a:	bf00      	nop

0800461c <I2C1_EV_IRQHandler>:
 800461c:	4801      	ldr	r0, [pc, #4]	; (8004624 <I2C1_EV_IRQHandler+0x8>)
 800461e:	f003 beb7 	b.w	8008390 <HAL_I2C_EV_IRQHandler>
 8004622:	bf00      	nop
 8004624:	20000214 	.word	0x20000214

08004628 <I2C2_EV_IRQHandler>:
 8004628:	4801      	ldr	r0, [pc, #4]	; (8004630 <I2C2_EV_IRQHandler+0x8>)
 800462a:	f003 beb1 	b.w	8008390 <HAL_I2C_EV_IRQHandler>
 800462e:	bf00      	nop
 8004630:	20000268 	.word	0x20000268

08004634 <SPI2_IRQHandler>:
 8004634:	4801      	ldr	r0, [pc, #4]	; (800463c <SPI2_IRQHandler+0x8>)
 8004636:	f001 bf55 	b.w	80064e4 <HAL_SPI_IRQHandler>
 800463a:	bf00      	nop
 800463c:	20000330 	.word	0x20000330

08004640 <USART1_IRQHandler>:
 8004640:	4801      	ldr	r0, [pc, #4]	; (8004648 <USART1_IRQHandler+0x8>)
 8004642:	f002 b99b 	b.w	800697c <HAL_UART_IRQHandler>
 8004646:	bf00      	nop
 8004648:	20000418 	.word	0x20000418

0800464c <USART2_IRQHandler>:
 800464c:	4801      	ldr	r0, [pc, #4]	; (8004654 <USART2_IRQHandler+0x8>)
 800464e:	f002 b995 	b.w	800697c <HAL_UART_IRQHandler>
 8004652:	bf00      	nop
 8004654:	20000460 	.word	0x20000460

08004658 <RTC_Alarm_IRQHandler>:
 8004658:	4801      	ldr	r0, [pc, #4]	; (8004660 <RTC_Alarm_IRQHandler+0x8>)
 800465a:	f008 bfcb 	b.w	800d5f4 <HAL_RTC_AlarmIRQHandler>
 800465e:	bf00      	nop
 8004660:	20000310 	.word	0x20000310

08004664 <TIM8_UP_TIM13_IRQHandler>:
 8004664:	4801      	ldr	r0, [pc, #4]	; (800466c <TIM8_UP_TIM13_IRQHandler+0x8>)
 8004666:	f000 be27 	b.w	80052b8 <HAL_TIM_IRQHandler>
 800466a:	bf00      	nop
 800466c:	20004ab0 	.word	0x20004ab0

08004670 <I2C3_EV_IRQHandler>:
 8004670:	4801      	ldr	r0, [pc, #4]	; (8004678 <I2C3_EV_IRQHandler+0x8>)
 8004672:	f003 be8d 	b.w	8008390 <HAL_I2C_EV_IRQHandler>
 8004676:	bf00      	nop
 8004678:	200002bc 	.word	0x200002bc

0800467c <HAL_MspInit>:
 800467c:	b082      	sub	sp, #8
 800467e:	4b0e      	ldr	r3, [pc, #56]	; (80046b8 <HAL_MspInit+0x3c>)
 8004680:	2200      	movs	r2, #0
 8004682:	9200      	str	r2, [sp, #0]
 8004684:	6c59      	ldr	r1, [r3, #68]	; 0x44
 8004686:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 800468a:	6459      	str	r1, [r3, #68]	; 0x44
 800468c:	6c58      	ldr	r0, [r3, #68]	; 0x44
 800468e:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8004692:	9000      	str	r0, [sp, #0]
 8004694:	9800      	ldr	r0, [sp, #0]
 8004696:	9201      	str	r2, [sp, #4]
 8004698:	6c18      	ldr	r0, [r3, #64]	; 0x40
 800469a:	f040 5080 	orr.w	r0, r0, #268435456	; 0x10000000
 800469e:	6418      	str	r0, [r3, #64]	; 0x40
 80046a0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80046a2:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 80046a6:	9301      	str	r3, [sp, #4]
 80046a8:	9b01      	ldr	r3, [sp, #4]
 80046aa:	210f      	movs	r1, #15
 80046ac:	f06f 0001 	mvn.w	r0, #1
 80046b0:	b002      	add	sp, #8
 80046b2:	f001 bc19 	b.w	8005ee8 <HAL_NVIC_SetPriority>
 80046b6:	bf00      	nop
 80046b8:	40023800 	.word	0x40023800
 80046bc:	00000000 	.word	0x00000000

080046c0 <HAL_ADC_MspInit>:
 80046c0:	b500      	push	{lr}
 80046c2:	4a19      	ldr	r2, [pc, #100]	; (8004728 <HAL_ADC_MspInit+0x68>)
 80046c4:	6801      	ldr	r1, [r0, #0]
 80046c6:	b089      	sub	sp, #36	; 0x24
 80046c8:	2300      	movs	r3, #0
 80046ca:	4291      	cmp	r1, r2
 80046cc:	e9cd 3302 	strd	r3, r3, [sp, #8]
 80046d0:	e9cd 3304 	strd	r3, r3, [sp, #16]
 80046d4:	9306      	str	r3, [sp, #24]
 80046d6:	d002      	beq.n	80046de <HAL_ADC_MspInit+0x1e>
 80046d8:	b009      	add	sp, #36	; 0x24
 80046da:	f85d fb04 	ldr.w	pc, [sp], #4
 80046de:	f502 328c 	add.w	r2, r2, #71680	; 0x11800
 80046e2:	9300      	str	r3, [sp, #0]
 80046e4:	6c50      	ldr	r0, [r2, #68]	; 0x44
 80046e6:	f440 7080 	orr.w	r0, r0, #256	; 0x100
 80046ea:	6450      	str	r0, [r2, #68]	; 0x44
 80046ec:	6c50      	ldr	r0, [r2, #68]	; 0x44
 80046ee:	f400 7080 	and.w	r0, r0, #256	; 0x100
 80046f2:	9000      	str	r0, [sp, #0]
 80046f4:	9800      	ldr	r0, [sp, #0]
 80046f6:	9301      	str	r3, [sp, #4]
 80046f8:	6b13      	ldr	r3, [r2, #48]	; 0x30
 80046fa:	480c      	ldr	r0, [pc, #48]	; (800472c <HAL_ADC_MspInit+0x6c>)
 80046fc:	f043 0302 	orr.w	r3, r3, #2
 8004700:	6313      	str	r3, [r2, #48]	; 0x30
 8004702:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8004704:	ed9f 7b06 	vldr	d7, [pc, #24]	; 8004720 <HAL_ADC_MspInit+0x60>
 8004708:	f003 0302 	and.w	r3, r3, #2
 800470c:	9301      	str	r3, [sp, #4]
 800470e:	a902      	add	r1, sp, #8
 8004710:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004714:	9b01      	ldr	r3, [sp, #4]
 8004716:	f001 fa47 	bl	8005ba8 <HAL_GPIO_Init>
 800471a:	b009      	add	sp, #36	; 0x24
 800471c:	f85d fb04 	ldr.w	pc, [sp], #4
 8004720:	00000002 	.word	0x00000002
 8004724:	00000003 	.word	0x00000003
 8004728:	40012000 	.word	0x40012000
 800472c:	40020400 	.word	0x40020400

08004730 <HAL_I2C_MspInit>:
 8004730:	b570      	push	{r4, r5, r6, lr}
 8004732:	6803      	ldr	r3, [r0, #0]
 8004734:	4a56      	ldr	r2, [pc, #344]	; (8004890 <HAL_I2C_MspInit+0x160>)
 8004736:	b08e      	sub	sp, #56	; 0x38
 8004738:	2400      	movs	r4, #0
 800473a:	4293      	cmp	r3, r2
 800473c:	e9cd 4408 	strd	r4, r4, [sp, #32]
 8004740:	e9cd 440a 	strd	r4, r4, [sp, #40]	; 0x28
 8004744:	940c      	str	r4, [sp, #48]	; 0x30
 8004746:	d007      	beq.n	8004758 <HAL_I2C_MspInit+0x28>
 8004748:	4a52      	ldr	r2, [pc, #328]	; (8004894 <HAL_I2C_MspInit+0x164>)
 800474a:	4293      	cmp	r3, r2
 800474c:	d02f      	beq.n	80047ae <HAL_I2C_MspInit+0x7e>
 800474e:	4a52      	ldr	r2, [pc, #328]	; (8004898 <HAL_I2C_MspInit+0x168>)
 8004750:	4293      	cmp	r3, r2
 8004752:	d058      	beq.n	8004806 <HAL_I2C_MspInit+0xd6>
 8004754:	b00e      	add	sp, #56	; 0x38
 8004756:	bd70      	pop	{r4, r5, r6, pc}
 8004758:	4d50      	ldr	r5, [pc, #320]	; (800489c <HAL_I2C_MspInit+0x16c>)
 800475a:	9401      	str	r4, [sp, #4]
 800475c:	6b2b      	ldr	r3, [r5, #48]	; 0x30
 800475e:	4850      	ldr	r0, [pc, #320]	; (80048a0 <HAL_I2C_MspInit+0x170>)
 8004760:	f043 0302 	orr.w	r3, r3, #2
 8004764:	632b      	str	r3, [r5, #48]	; 0x30
 8004766:	6b2b      	ldr	r3, [r5, #48]	; 0x30
 8004768:	f003 0302 	and.w	r3, r3, #2
 800476c:	9301      	str	r3, [sp, #4]
 800476e:	22c0      	movs	r2, #192	; 0xc0
 8004770:	2312      	movs	r3, #18
 8004772:	e9cd 2308 	strd	r2, r3, [sp, #32]
 8004776:	2303      	movs	r3, #3
 8004778:	a908      	add	r1, sp, #32
 800477a:	930b      	str	r3, [sp, #44]	; 0x2c
 800477c:	2304      	movs	r3, #4
 800477e:	9a01      	ldr	r2, [sp, #4]
 8004780:	930c      	str	r3, [sp, #48]	; 0x30
 8004782:	f001 fa11 	bl	8005ba8 <HAL_GPIO_Init>
 8004786:	9402      	str	r4, [sp, #8]
 8004788:	6c2b      	ldr	r3, [r5, #64]	; 0x40
 800478a:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800478e:	642b      	str	r3, [r5, #64]	; 0x40
 8004790:	6c2b      	ldr	r3, [r5, #64]	; 0x40
 8004792:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 8004796:	4622      	mov	r2, r4
 8004798:	2105      	movs	r1, #5
 800479a:	9302      	str	r3, [sp, #8]
 800479c:	201f      	movs	r0, #31
 800479e:	9b02      	ldr	r3, [sp, #8]
 80047a0:	f001 fba2 	bl	8005ee8 <HAL_NVIC_SetPriority>
 80047a4:	201f      	movs	r0, #31
 80047a6:	f001 fbdd 	bl	8005f64 <HAL_NVIC_EnableIRQ>
 80047aa:	b00e      	add	sp, #56	; 0x38
 80047ac:	bd70      	pop	{r4, r5, r6, pc}
 80047ae:	4d3b      	ldr	r5, [pc, #236]	; (800489c <HAL_I2C_MspInit+0x16c>)
 80047b0:	9403      	str	r4, [sp, #12]
 80047b2:	6b2b      	ldr	r3, [r5, #48]	; 0x30
 80047b4:	483a      	ldr	r0, [pc, #232]	; (80048a0 <HAL_I2C_MspInit+0x170>)
 80047b6:	f043 0302 	orr.w	r3, r3, #2
 80047ba:	632b      	str	r3, [r5, #48]	; 0x30
 80047bc:	6b2b      	ldr	r3, [r5, #48]	; 0x30
 80047be:	f003 0302 	and.w	r3, r3, #2
 80047c2:	9303      	str	r3, [sp, #12]
 80047c4:	f44f 6240 	mov.w	r2, #3072	; 0xc00
 80047c8:	2312      	movs	r3, #18
 80047ca:	e9cd 2308 	strd	r2, r3, [sp, #32]
 80047ce:	2303      	movs	r3, #3
 80047d0:	a908      	add	r1, sp, #32
 80047d2:	930b      	str	r3, [sp, #44]	; 0x2c
 80047d4:	2304      	movs	r3, #4
 80047d6:	9a03      	ldr	r2, [sp, #12]
 80047d8:	930c      	str	r3, [sp, #48]	; 0x30
 80047da:	f001 f9e5 	bl	8005ba8 <HAL_GPIO_Init>
 80047de:	9404      	str	r4, [sp, #16]
 80047e0:	6c2b      	ldr	r3, [r5, #64]	; 0x40
 80047e2:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 80047e6:	642b      	str	r3, [r5, #64]	; 0x40
 80047e8:	6c2b      	ldr	r3, [r5, #64]	; 0x40
 80047ea:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 80047ee:	4622      	mov	r2, r4
 80047f0:	2105      	movs	r1, #5
 80047f2:	9304      	str	r3, [sp, #16]
 80047f4:	2021      	movs	r0, #33	; 0x21
 80047f6:	9b04      	ldr	r3, [sp, #16]
 80047f8:	f001 fb76 	bl	8005ee8 <HAL_NVIC_SetPriority>
 80047fc:	2021      	movs	r0, #33	; 0x21
 80047fe:	f001 fbb1 	bl	8005f64 <HAL_NVIC_EnableIRQ>
 8004802:	b00e      	add	sp, #56	; 0x38
 8004804:	bd70      	pop	{r4, r5, r6, pc}
 8004806:	4d25      	ldr	r5, [pc, #148]	; (800489c <HAL_I2C_MspInit+0x16c>)
 8004808:	9405      	str	r4, [sp, #20]
 800480a:	6b2b      	ldr	r3, [r5, #48]	; 0x30
 800480c:	4825      	ldr	r0, [pc, #148]	; (80048a4 <HAL_I2C_MspInit+0x174>)
 800480e:	f043 0304 	orr.w	r3, r3, #4
 8004812:	632b      	str	r3, [r5, #48]	; 0x30
 8004814:	6b2b      	ldr	r3, [r5, #48]	; 0x30
 8004816:	f003 0304 	and.w	r3, r3, #4
 800481a:	9305      	str	r3, [sp, #20]
 800481c:	9b05      	ldr	r3, [sp, #20]
 800481e:	9406      	str	r4, [sp, #24]
 8004820:	6b2b      	ldr	r3, [r5, #48]	; 0x30
 8004822:	f043 0301 	orr.w	r3, r3, #1
 8004826:	632b      	str	r3, [r5, #48]	; 0x30
 8004828:	6b2b      	ldr	r3, [r5, #48]	; 0x30
 800482a:	f003 0301 	and.w	r3, r3, #1
 800482e:	9306      	str	r3, [sp, #24]
 8004830:	f44f 7200 	mov.w	r2, #512	; 0x200
 8004834:	2312      	movs	r3, #18
 8004836:	e9cd 2308 	strd	r2, r3, [sp, #32]
 800483a:	2604      	movs	r6, #4
 800483c:	a908      	add	r1, sp, #32
 800483e:	2303      	movs	r3, #3
 8004840:	930b      	str	r3, [sp, #44]	; 0x2c
 8004842:	960c      	str	r6, [sp, #48]	; 0x30
 8004844:	9b06      	ldr	r3, [sp, #24]
 8004846:	f001 f9af 	bl	8005ba8 <HAL_GPIO_Init>
 800484a:	f44f 7280 	mov.w	r2, #256	; 0x100
 800484e:	2312      	movs	r3, #18
 8004850:	e9cd 2308 	strd	r2, r3, [sp, #32]
 8004854:	a908      	add	r1, sp, #32
 8004856:	2200      	movs	r2, #0
 8004858:	2303      	movs	r3, #3
 800485a:	4813      	ldr	r0, [pc, #76]	; (80048a8 <HAL_I2C_MspInit+0x178>)
 800485c:	960c      	str	r6, [sp, #48]	; 0x30
 800485e:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 8004862:	f001 f9a1 	bl	8005ba8 <HAL_GPIO_Init>
 8004866:	9407      	str	r4, [sp, #28]
 8004868:	6c2b      	ldr	r3, [r5, #64]	; 0x40
 800486a:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 800486e:	642b      	str	r3, [r5, #64]	; 0x40
 8004870:	6c2b      	ldr	r3, [r5, #64]	; 0x40
 8004872:	f403 0300 	and.w	r3, r3, #8388608	; 0x800000
 8004876:	4622      	mov	r2, r4
 8004878:	9307      	str	r3, [sp, #28]
 800487a:	2105      	movs	r1, #5
 800487c:	2048      	movs	r0, #72	; 0x48
 800487e:	9b07      	ldr	r3, [sp, #28]
 8004880:	f001 fb32 	bl	8005ee8 <HAL_NVIC_SetPriority>
 8004884:	2048      	movs	r0, #72	; 0x48
 8004886:	f001 fb6d 	bl	8005f64 <HAL_NVIC_EnableIRQ>
 800488a:	b00e      	add	sp, #56	; 0x38
 800488c:	bd70      	pop	{r4, r5, r6, pc}
 800488e:	bf00      	nop
 8004890:	40005400 	.word	0x40005400
 8004894:	40005800 	.word	0x40005800
 8004898:	40005c00 	.word	0x40005c00
 800489c:	40023800 	.word	0x40023800
 80048a0:	40020400 	.word	0x40020400
 80048a4:	40020800 	.word	0x40020800
 80048a8:	40020000 	.word	0x40020000

080048ac <HAL_RTC_MspInit>:
 80048ac:	b500      	push	{lr}
 80048ae:	4a13      	ldr	r2, [pc, #76]	; (80048fc <HAL_RTC_MspInit+0x50>)
 80048b0:	6801      	ldr	r1, [r0, #0]
 80048b2:	b085      	sub	sp, #20
 80048b4:	2300      	movs	r3, #0
 80048b6:	4291      	cmp	r1, r2
 80048b8:	e9cd 3301 	strd	r3, r3, [sp, #4]
 80048bc:	d002      	beq.n	80048c4 <HAL_RTC_MspInit+0x18>
 80048be:	b005      	add	sp, #20
 80048c0:	f85d fb04 	ldr.w	pc, [sp], #4
 80048c4:	2202      	movs	r2, #2
 80048c6:	f44f 7300 	mov.w	r3, #512	; 0x200
 80048ca:	4668      	mov	r0, sp
 80048cc:	9200      	str	r2, [sp, #0]
 80048ce:	9303      	str	r3, [sp, #12]
 80048d0:	f001 f8ca 	bl	8005a68 <HAL_RCCEx_PeriphCLKConfig>
 80048d4:	b970      	cbnz	r0, 80048f4 <HAL_RTC_MspInit+0x48>
 80048d6:	4b0a      	ldr	r3, [pc, #40]	; (8004900 <HAL_RTC_MspInit+0x54>)
 80048d8:	2201      	movs	r2, #1
 80048da:	f8c3 2e3c 	str.w	r2, [r3, #3644]	; 0xe3c
 80048de:	2105      	movs	r1, #5
 80048e0:	2200      	movs	r2, #0
 80048e2:	2029      	movs	r0, #41	; 0x29
 80048e4:	f001 fb00 	bl	8005ee8 <HAL_NVIC_SetPriority>
 80048e8:	2029      	movs	r0, #41	; 0x29
 80048ea:	f001 fb3b 	bl	8005f64 <HAL_NVIC_EnableIRQ>
 80048ee:	b005      	add	sp, #20
 80048f0:	f85d fb04 	ldr.w	pc, [sp], #4
 80048f4:	f7ff fd76 	bl	80043e4 <Error_Handler>
 80048f8:	e7ed      	b.n	80048d6 <HAL_RTC_MspInit+0x2a>
 80048fa:	bf00      	nop
 80048fc:	40002800 	.word	0x40002800
 8004900:	42470000 	.word	0x42470000

08004904 <HAL_SPI_MspInit>:
 8004904:	b530      	push	{r4, r5, lr}
 8004906:	4b1d      	ldr	r3, [pc, #116]	; (800497c <HAL_SPI_MspInit+0x78>)
 8004908:	6802      	ldr	r2, [r0, #0]
 800490a:	b089      	sub	sp, #36	; 0x24
 800490c:	2400      	movs	r4, #0
 800490e:	429a      	cmp	r2, r3
 8004910:	e9cd 4402 	strd	r4, r4, [sp, #8]
 8004914:	e9cd 4404 	strd	r4, r4, [sp, #16]
 8004918:	9406      	str	r4, [sp, #24]
 800491a:	d001      	beq.n	8004920 <HAL_SPI_MspInit+0x1c>
 800491c:	b009      	add	sp, #36	; 0x24
 800491e:	bd30      	pop	{r4, r5, pc}
 8004920:	f503 3300 	add.w	r3, r3, #131072	; 0x20000
 8004924:	9400      	str	r4, [sp, #0]
 8004926:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 8004928:	4815      	ldr	r0, [pc, #84]	; (8004980 <HAL_SPI_MspInit+0x7c>)
 800492a:	f442 4280 	orr.w	r2, r2, #16384	; 0x4000
 800492e:	641a      	str	r2, [r3, #64]	; 0x40
 8004930:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 8004932:	f402 4280 	and.w	r2, r2, #16384	; 0x4000
 8004936:	9200      	str	r2, [sp, #0]
 8004938:	9a00      	ldr	r2, [sp, #0]
 800493a:	9401      	str	r4, [sp, #4]
 800493c:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 800493e:	f042 0202 	orr.w	r2, r2, #2
 8004942:	631a      	str	r2, [r3, #48]	; 0x30
 8004944:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004946:	f003 0302 	and.w	r3, r3, #2
 800494a:	9301      	str	r3, [sp, #4]
 800494c:	f44f 4220 	mov.w	r2, #40960	; 0xa000
 8004950:	2302      	movs	r3, #2
 8004952:	e9cd 2302 	strd	r2, r3, [sp, #8]
 8004956:	a902      	add	r1, sp, #8
 8004958:	2303      	movs	r3, #3
 800495a:	2505      	movs	r5, #5
 800495c:	e9cd 3505 	strd	r3, r5, [sp, #20]
 8004960:	9a01      	ldr	r2, [sp, #4]
 8004962:	f001 f921 	bl	8005ba8 <HAL_GPIO_Init>
 8004966:	4622      	mov	r2, r4
 8004968:	4629      	mov	r1, r5
 800496a:	2024      	movs	r0, #36	; 0x24
 800496c:	f001 fabc 	bl	8005ee8 <HAL_NVIC_SetPriority>
 8004970:	2024      	movs	r0, #36	; 0x24
 8004972:	f001 faf7 	bl	8005f64 <HAL_NVIC_EnableIRQ>
 8004976:	b009      	add	sp, #36	; 0x24
 8004978:	bd30      	pop	{r4, r5, pc}
 800497a:	bf00      	nop
 800497c:	40003800 	.word	0x40003800
 8004980:	40020400 	.word	0x40020400

08004984 <HAL_TIM_Base_MspInit>:
 8004984:	4a12      	ldr	r2, [pc, #72]	; (80049d0 <HAL_TIM_Base_MspInit+0x4c>)
 8004986:	6803      	ldr	r3, [r0, #0]
 8004988:	4293      	cmp	r3, r2
 800498a:	b082      	sub	sp, #8
 800498c:	d012      	beq.n	80049b4 <HAL_TIM_Base_MspInit+0x30>
 800498e:	4a11      	ldr	r2, [pc, #68]	; (80049d4 <HAL_TIM_Base_MspInit+0x50>)
 8004990:	4293      	cmp	r3, r2
 8004992:	d001      	beq.n	8004998 <HAL_TIM_Base_MspInit+0x14>
 8004994:	b002      	add	sp, #8
 8004996:	4770      	bx	lr
 8004998:	4b0f      	ldr	r3, [pc, #60]	; (80049d8 <HAL_TIM_Base_MspInit+0x54>)
 800499a:	2200      	movs	r2, #0
 800499c:	9201      	str	r2, [sp, #4]
 800499e:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 80049a0:	f042 0204 	orr.w	r2, r2, #4
 80049a4:	641a      	str	r2, [r3, #64]	; 0x40
 80049a6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80049a8:	f003 0304 	and.w	r3, r3, #4
 80049ac:	9301      	str	r3, [sp, #4]
 80049ae:	9b01      	ldr	r3, [sp, #4]
 80049b0:	b002      	add	sp, #8
 80049b2:	4770      	bx	lr
 80049b4:	4b08      	ldr	r3, [pc, #32]	; (80049d8 <HAL_TIM_Base_MspInit+0x54>)
 80049b6:	2200      	movs	r2, #0
 80049b8:	9200      	str	r2, [sp, #0]
 80049ba:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 80049bc:	f042 0202 	orr.w	r2, r2, #2
 80049c0:	641a      	str	r2, [r3, #64]	; 0x40
 80049c2:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80049c4:	f003 0302 	and.w	r3, r3, #2
 80049c8:	9300      	str	r3, [sp, #0]
 80049ca:	9b00      	ldr	r3, [sp, #0]
 80049cc:	b002      	add	sp, #8
 80049ce:	4770      	bx	lr
 80049d0:	40000400 	.word	0x40000400
 80049d4:	40000800 	.word	0x40000800
 80049d8:	40023800 	.word	0x40023800
 80049dc:	00000000 	.word	0x00000000

080049e0 <HAL_TIM_MspPostInit>:
 80049e0:	b500      	push	{lr}
 80049e2:	6802      	ldr	r2, [r0, #0]
 80049e4:	4924      	ldr	r1, [pc, #144]	; (8004a78 <HAL_TIM_MspPostInit+0x98>)
 80049e6:	b089      	sub	sp, #36	; 0x24
 80049e8:	2300      	movs	r3, #0
 80049ea:	428a      	cmp	r2, r1
 80049ec:	e9cd 3302 	strd	r3, r3, [sp, #8]
 80049f0:	e9cd 3304 	strd	r3, r3, [sp, #16]
 80049f4:	9306      	str	r3, [sp, #24]
 80049f6:	d005      	beq.n	8004a04 <HAL_TIM_MspPostInit+0x24>
 80049f8:	4920      	ldr	r1, [pc, #128]	; (8004a7c <HAL_TIM_MspPostInit+0x9c>)
 80049fa:	428a      	cmp	r2, r1
 80049fc:	d01a      	beq.n	8004a34 <HAL_TIM_MspPostInit+0x54>
 80049fe:	b009      	add	sp, #36	; 0x24
 8004a00:	f85d fb04 	ldr.w	pc, [sp], #4
 8004a04:	4a1e      	ldr	r2, [pc, #120]	; (8004a80 <HAL_TIM_MspPostInit+0xa0>)
 8004a06:	9300      	str	r3, [sp, #0]
 8004a08:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8004a0a:	481e      	ldr	r0, [pc, #120]	; (8004a84 <HAL_TIM_MspPostInit+0xa4>)
 8004a0c:	f043 0302 	orr.w	r3, r3, #2
 8004a10:	6313      	str	r3, [r2, #48]	; 0x30
 8004a12:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8004a14:	ed9f 7b14 	vldr	d7, [pc, #80]	; 8004a68 <HAL_TIM_MspPostInit+0x88>
 8004a18:	f003 0302 	and.w	r3, r3, #2
 8004a1c:	9300      	str	r3, [sp, #0]
 8004a1e:	a902      	add	r1, sp, #8
 8004a20:	2302      	movs	r3, #2
 8004a22:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004a26:	9a00      	ldr	r2, [sp, #0]
 8004a28:	9306      	str	r3, [sp, #24]
 8004a2a:	f001 f8bd 	bl	8005ba8 <HAL_GPIO_Init>
 8004a2e:	b009      	add	sp, #36	; 0x24
 8004a30:	f85d fb04 	ldr.w	pc, [sp], #4
 8004a34:	4a12      	ldr	r2, [pc, #72]	; (8004a80 <HAL_TIM_MspPostInit+0xa0>)
 8004a36:	9301      	str	r3, [sp, #4]
 8004a38:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8004a3a:	4812      	ldr	r0, [pc, #72]	; (8004a84 <HAL_TIM_MspPostInit+0xa4>)
 8004a3c:	f043 0302 	orr.w	r3, r3, #2
 8004a40:	6313      	str	r3, [r2, #48]	; 0x30
 8004a42:	6b13      	ldr	r3, [r2, #48]	; 0x30
 8004a44:	ed9f 7b0a 	vldr	d7, [pc, #40]	; 8004a70 <HAL_TIM_MspPostInit+0x90>
 8004a48:	f003 0302 	and.w	r3, r3, #2
 8004a4c:	9301      	str	r3, [sp, #4]
 8004a4e:	a902      	add	r1, sp, #8
 8004a50:	2302      	movs	r3, #2
 8004a52:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004a56:	9a01      	ldr	r2, [sp, #4]
 8004a58:	9306      	str	r3, [sp, #24]
 8004a5a:	f001 f8a5 	bl	8005ba8 <HAL_GPIO_Init>
 8004a5e:	b009      	add	sp, #36	; 0x24
 8004a60:	f85d fb04 	ldr.w	pc, [sp], #4
 8004a64:	f3af 8000 	nop.w
 8004a68:	00000001 	.word	0x00000001
 8004a6c:	00000002 	.word	0x00000002
 8004a70:	00000300 	.word	0x00000300
 8004a74:	00000002 	.word	0x00000002
 8004a78:	40000400 	.word	0x40000400
 8004a7c:	40000800 	.word	0x40000800
 8004a80:	40023800 	.word	0x40023800
 8004a84:	40020400 	.word	0x40020400

08004a88 <HAL_UART_MspInit>:
 8004a88:	b530      	push	{r4, r5, lr}
 8004a8a:	6803      	ldr	r3, [r0, #0]
 8004a8c:	4a32      	ldr	r2, [pc, #200]	; (8004b58 <HAL_UART_MspInit+0xd0>)
 8004a8e:	b08b      	sub	sp, #44	; 0x2c
 8004a90:	2400      	movs	r4, #0
 8004a92:	4293      	cmp	r3, r2
 8004a94:	e9cd 4404 	strd	r4, r4, [sp, #16]
 8004a98:	e9cd 4406 	strd	r4, r4, [sp, #24]
 8004a9c:	9408      	str	r4, [sp, #32]
 8004a9e:	d004      	beq.n	8004aaa <HAL_UART_MspInit+0x22>
 8004aa0:	4a2e      	ldr	r2, [pc, #184]	; (8004b5c <HAL_UART_MspInit+0xd4>)
 8004aa2:	4293      	cmp	r3, r2
 8004aa4:	d02d      	beq.n	8004b02 <HAL_UART_MspInit+0x7a>
 8004aa6:	b00b      	add	sp, #44	; 0x2c
 8004aa8:	bd30      	pop	{r4, r5, pc}
 8004aaa:	4b2d      	ldr	r3, [pc, #180]	; (8004b60 <HAL_UART_MspInit+0xd8>)
 8004aac:	9400      	str	r4, [sp, #0]
 8004aae:	6c5a      	ldr	r2, [r3, #68]	; 0x44
 8004ab0:	482c      	ldr	r0, [pc, #176]	; (8004b64 <HAL_UART_MspInit+0xdc>)
 8004ab2:	f042 0210 	orr.w	r2, r2, #16
 8004ab6:	645a      	str	r2, [r3, #68]	; 0x44
 8004ab8:	6c5a      	ldr	r2, [r3, #68]	; 0x44
 8004aba:	f002 0210 	and.w	r2, r2, #16
 8004abe:	9200      	str	r2, [sp, #0]
 8004ac0:	9a00      	ldr	r2, [sp, #0]
 8004ac2:	9401      	str	r4, [sp, #4]
 8004ac4:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8004ac6:	f042 0201 	orr.w	r2, r2, #1
 8004aca:	631a      	str	r2, [r3, #48]	; 0x30
 8004acc:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004ace:	f003 0301 	and.w	r3, r3, #1
 8004ad2:	9301      	str	r3, [sp, #4]
 8004ad4:	f44f 62c0 	mov.w	r2, #1536	; 0x600
 8004ad8:	2302      	movs	r3, #2
 8004ada:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8004ade:	a904      	add	r1, sp, #16
 8004ae0:	2307      	movs	r3, #7
 8004ae2:	2203      	movs	r2, #3
 8004ae4:	e9cd 2307 	strd	r2, r3, [sp, #28]
 8004ae8:	9d01      	ldr	r5, [sp, #4]
 8004aea:	f001 f85d 	bl	8005ba8 <HAL_GPIO_Init>
 8004aee:	4622      	mov	r2, r4
 8004af0:	2105      	movs	r1, #5
 8004af2:	2025      	movs	r0, #37	; 0x25
 8004af4:	f001 f9f8 	bl	8005ee8 <HAL_NVIC_SetPriority>
 8004af8:	2025      	movs	r0, #37	; 0x25
 8004afa:	f001 fa33 	bl	8005f64 <HAL_NVIC_EnableIRQ>
 8004afe:	b00b      	add	sp, #44	; 0x2c
 8004b00:	bd30      	pop	{r4, r5, pc}
 8004b02:	4b17      	ldr	r3, [pc, #92]	; (8004b60 <HAL_UART_MspInit+0xd8>)
 8004b04:	9402      	str	r4, [sp, #8]
 8004b06:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 8004b08:	4816      	ldr	r0, [pc, #88]	; (8004b64 <HAL_UART_MspInit+0xdc>)
 8004b0a:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 8004b0e:	641a      	str	r2, [r3, #64]	; 0x40
 8004b10:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 8004b12:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8004b16:	9202      	str	r2, [sp, #8]
 8004b18:	9a02      	ldr	r2, [sp, #8]
 8004b1a:	9403      	str	r4, [sp, #12]
 8004b1c:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8004b1e:	f042 0201 	orr.w	r2, r2, #1
 8004b22:	631a      	str	r2, [r3, #48]	; 0x30
 8004b24:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004b26:	f003 0301 	and.w	r3, r3, #1
 8004b2a:	9303      	str	r3, [sp, #12]
 8004b2c:	220c      	movs	r2, #12
 8004b2e:	2302      	movs	r3, #2
 8004b30:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8004b34:	a904      	add	r1, sp, #16
 8004b36:	2307      	movs	r3, #7
 8004b38:	2203      	movs	r2, #3
 8004b3a:	e9cd 2307 	strd	r2, r3, [sp, #28]
 8004b3e:	9d03      	ldr	r5, [sp, #12]
 8004b40:	f001 f832 	bl	8005ba8 <HAL_GPIO_Init>
 8004b44:	4622      	mov	r2, r4
 8004b46:	2105      	movs	r1, #5
 8004b48:	2026      	movs	r0, #38	; 0x26
 8004b4a:	f001 f9cd 	bl	8005ee8 <HAL_NVIC_SetPriority>
 8004b4e:	2026      	movs	r0, #38	; 0x26
 8004b50:	f001 fa08 	bl	8005f64 <HAL_NVIC_EnableIRQ>
 8004b54:	b00b      	add	sp, #44	; 0x2c
 8004b56:	bd30      	pop	{r4, r5, pc}
 8004b58:	40011000 	.word	0x40011000
 8004b5c:	40004400 	.word	0x40004400
 8004b60:	40023800 	.word	0x40023800
 8004b64:	40020000 	.word	0x40020000

08004b68 <HAL_TIM_Base_Init>:
 8004b68:	2800      	cmp	r0, #0
 8004b6a:	f000 8090 	beq.w	8004c8e <HAL_TIM_Base_Init+0x126>
 8004b6e:	b510      	push	{r4, lr}
 8004b70:	f890 303d 	ldrb.w	r3, [r0, #61]	; 0x3d
 8004b74:	4604      	mov	r4, r0
 8004b76:	f003 02ff 	and.w	r2, r3, #255	; 0xff
 8004b7a:	2b00      	cmp	r3, #0
 8004b7c:	f000 8082 	beq.w	8004c84 <HAL_TIM_Base_Init+0x11c>
 8004b80:	6822      	ldr	r2, [r4, #0]
 8004b82:	4944      	ldr	r1, [pc, #272]	; (8004c94 <HAL_TIM_Base_Init+0x12c>)
 8004b84:	2302      	movs	r3, #2
 8004b86:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 8004b8a:	428a      	cmp	r2, r1
 8004b8c:	6813      	ldr	r3, [r2, #0]
 8004b8e:	d065      	beq.n	8004c5c <HAL_TIM_Base_Init+0xf4>
 8004b90:	f1b2 4f80 	cmp.w	r2, #1073741824	; 0x40000000
 8004b94:	d031      	beq.n	8004bfa <HAL_TIM_Base_Init+0x92>
 8004b96:	f5a1 417c 	sub.w	r1, r1, #64512	; 0xfc00
 8004b9a:	428a      	cmp	r2, r1
 8004b9c:	d02d      	beq.n	8004bfa <HAL_TIM_Base_Init+0x92>
 8004b9e:	f501 6180 	add.w	r1, r1, #1024	; 0x400
 8004ba2:	428a      	cmp	r2, r1
 8004ba4:	d029      	beq.n	8004bfa <HAL_TIM_Base_Init+0x92>
 8004ba6:	f501 6180 	add.w	r1, r1, #1024	; 0x400
 8004baa:	428a      	cmp	r2, r1
 8004bac:	d025      	beq.n	8004bfa <HAL_TIM_Base_Init+0x92>
 8004bae:	f501 4178 	add.w	r1, r1, #63488	; 0xf800
 8004bb2:	428a      	cmp	r2, r1
 8004bb4:	d052      	beq.n	8004c5c <HAL_TIM_Base_Init+0xf4>
 8004bb6:	f501 5170 	add.w	r1, r1, #15360	; 0x3c00
 8004bba:	428a      	cmp	r2, r1
 8004bbc:	d021      	beq.n	8004c02 <HAL_TIM_Base_Init+0x9a>
 8004bbe:	f501 6180 	add.w	r1, r1, #1024	; 0x400
 8004bc2:	428a      	cmp	r2, r1
 8004bc4:	d01d      	beq.n	8004c02 <HAL_TIM_Base_Init+0x9a>
 8004bc6:	f501 6180 	add.w	r1, r1, #1024	; 0x400
 8004bca:	428a      	cmp	r2, r1
 8004bcc:	d019      	beq.n	8004c02 <HAL_TIM_Base_Init+0x9a>
 8004bce:	f5a1 3198 	sub.w	r1, r1, #77824	; 0x13000
 8004bd2:	428a      	cmp	r2, r1
 8004bd4:	d015      	beq.n	8004c02 <HAL_TIM_Base_Init+0x9a>
 8004bd6:	f501 6180 	add.w	r1, r1, #1024	; 0x400
 8004bda:	428a      	cmp	r2, r1
 8004bdc:	d011      	beq.n	8004c02 <HAL_TIM_Base_Init+0x9a>
 8004bde:	f501 6180 	add.w	r1, r1, #1024	; 0x400
 8004be2:	428a      	cmp	r2, r1
 8004be4:	d00d      	beq.n	8004c02 <HAL_TIM_Base_Init+0x9a>
 8004be6:	69a0      	ldr	r0, [r4, #24]
 8004be8:	68e1      	ldr	r1, [r4, #12]
 8004bea:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8004bee:	4303      	orrs	r3, r0
 8004bf0:	6013      	str	r3, [r2, #0]
 8004bf2:	6863      	ldr	r3, [r4, #4]
 8004bf4:	62d1      	str	r1, [r2, #44]	; 0x2c
 8004bf6:	6293      	str	r3, [r2, #40]	; 0x28
 8004bf8:	e010      	b.n	8004c1c <HAL_TIM_Base_Init+0xb4>
 8004bfa:	68a1      	ldr	r1, [r4, #8]
 8004bfc:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8004c00:	430b      	orrs	r3, r1
 8004c02:	6920      	ldr	r0, [r4, #16]
 8004c04:	69a1      	ldr	r1, [r4, #24]
 8004c06:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8004c0a:	4303      	orrs	r3, r0
 8004c0c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8004c10:	68e0      	ldr	r0, [r4, #12]
 8004c12:	430b      	orrs	r3, r1
 8004c14:	6861      	ldr	r1, [r4, #4]
 8004c16:	6013      	str	r3, [r2, #0]
 8004c18:	62d0      	str	r0, [r2, #44]	; 0x2c
 8004c1a:	6291      	str	r1, [r2, #40]	; 0x28
 8004c1c:	2301      	movs	r3, #1
 8004c1e:	6153      	str	r3, [r2, #20]
 8004c20:	6913      	ldr	r3, [r2, #16]
 8004c22:	07db      	lsls	r3, r3, #31
 8004c24:	d503      	bpl.n	8004c2e <HAL_TIM_Base_Init+0xc6>
 8004c26:	6913      	ldr	r3, [r2, #16]
 8004c28:	f023 0301 	bic.w	r3, r3, #1
 8004c2c:	6113      	str	r3, [r2, #16]
 8004c2e:	2301      	movs	r3, #1
 8004c30:	f884 3046 	strb.w	r3, [r4, #70]	; 0x46
 8004c34:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 8004c38:	f884 303f 	strb.w	r3, [r4, #63]	; 0x3f
 8004c3c:	f884 3040 	strb.w	r3, [r4, #64]	; 0x40
 8004c40:	f884 3041 	strb.w	r3, [r4, #65]	; 0x41
 8004c44:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
 8004c48:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 8004c4c:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 8004c50:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 8004c54:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 8004c58:	2000      	movs	r0, #0
 8004c5a:	bd10      	pop	{r4, pc}
 8004c5c:	68a0      	ldr	r0, [r4, #8]
 8004c5e:	6921      	ldr	r1, [r4, #16]
 8004c60:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8004c64:	4303      	orrs	r3, r0
 8004c66:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8004c6a:	430b      	orrs	r3, r1
 8004c6c:	69a1      	ldr	r1, [r4, #24]
 8004c6e:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8004c72:	430b      	orrs	r3, r1
 8004c74:	6013      	str	r3, [r2, #0]
 8004c76:	68e3      	ldr	r3, [r4, #12]
 8004c78:	62d3      	str	r3, [r2, #44]	; 0x2c
 8004c7a:	6863      	ldr	r3, [r4, #4]
 8004c7c:	6293      	str	r3, [r2, #40]	; 0x28
 8004c7e:	6963      	ldr	r3, [r4, #20]
 8004c80:	6313      	str	r3, [r2, #48]	; 0x30
 8004c82:	e7cb      	b.n	8004c1c <HAL_TIM_Base_Init+0xb4>
 8004c84:	f880 203c 	strb.w	r2, [r0, #60]	; 0x3c
 8004c88:	f7ff fe7c 	bl	8004984 <HAL_TIM_Base_MspInit>
 8004c8c:	e778      	b.n	8004b80 <HAL_TIM_Base_Init+0x18>
 8004c8e:	2001      	movs	r0, #1
 8004c90:	4770      	bx	lr
 8004c92:	bf00      	nop
 8004c94:	40010000 	.word	0x40010000

08004c98 <HAL_TIM_Base_Start_IT>:
 8004c98:	f890 303d 	ldrb.w	r3, [r0, #61]	; 0x3d
 8004c9c:	2b01      	cmp	r3, #1
 8004c9e:	d12f      	bne.n	8004d00 <HAL_TIM_Base_Start_IT+0x68>
 8004ca0:	6803      	ldr	r3, [r0, #0]
 8004ca2:	4919      	ldr	r1, [pc, #100]	; (8004d08 <HAL_TIM_Base_Start_IT+0x70>)
 8004ca4:	2202      	movs	r2, #2
 8004ca6:	f880 203d 	strb.w	r2, [r0, #61]	; 0x3d
 8004caa:	68da      	ldr	r2, [r3, #12]
 8004cac:	428b      	cmp	r3, r1
 8004cae:	f042 0201 	orr.w	r2, r2, #1
 8004cb2:	60da      	str	r2, [r3, #12]
 8004cb4:	d019      	beq.n	8004cea <HAL_TIM_Base_Start_IT+0x52>
 8004cb6:	f1b3 4f80 	cmp.w	r3, #1073741824	; 0x40000000
 8004cba:	d016      	beq.n	8004cea <HAL_TIM_Base_Start_IT+0x52>
 8004cbc:	4a13      	ldr	r2, [pc, #76]	; (8004d0c <HAL_TIM_Base_Start_IT+0x74>)
 8004cbe:	4293      	cmp	r3, r2
 8004cc0:	d013      	beq.n	8004cea <HAL_TIM_Base_Start_IT+0x52>
 8004cc2:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8004cc6:	4293      	cmp	r3, r2
 8004cc8:	d00f      	beq.n	8004cea <HAL_TIM_Base_Start_IT+0x52>
 8004cca:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8004cce:	4293      	cmp	r3, r2
 8004cd0:	d00b      	beq.n	8004cea <HAL_TIM_Base_Start_IT+0x52>
 8004cd2:	f502 4278 	add.w	r2, r2, #63488	; 0xf800
 8004cd6:	4293      	cmp	r3, r2
 8004cd8:	d007      	beq.n	8004cea <HAL_TIM_Base_Start_IT+0x52>
 8004cda:	f502 5270 	add.w	r2, r2, #15360	; 0x3c00
 8004cde:	4293      	cmp	r3, r2
 8004ce0:	d003      	beq.n	8004cea <HAL_TIM_Base_Start_IT+0x52>
 8004ce2:	f5a2 3294 	sub.w	r2, r2, #75776	; 0x12800
 8004ce6:	4293      	cmp	r3, r2
 8004ce8:	d104      	bne.n	8004cf4 <HAL_TIM_Base_Start_IT+0x5c>
 8004cea:	689a      	ldr	r2, [r3, #8]
 8004cec:	f002 0207 	and.w	r2, r2, #7
 8004cf0:	2a06      	cmp	r2, #6
 8004cf2:	d007      	beq.n	8004d04 <HAL_TIM_Base_Start_IT+0x6c>
 8004cf4:	681a      	ldr	r2, [r3, #0]
 8004cf6:	f042 0201 	orr.w	r2, r2, #1
 8004cfa:	2000      	movs	r0, #0
 8004cfc:	601a      	str	r2, [r3, #0]
 8004cfe:	4770      	bx	lr
 8004d00:	2001      	movs	r0, #1
 8004d02:	4770      	bx	lr
 8004d04:	2000      	movs	r0, #0
 8004d06:	4770      	bx	lr
 8004d08:	40010000 	.word	0x40010000
 8004d0c:	40000400 	.word	0x40000400

08004d10 <HAL_TIM_PWM_MspInit>:
 8004d10:	4770      	bx	lr
 8004d12:	bf00      	nop

08004d14 <HAL_TIM_PWM_Init>:
 8004d14:	2800      	cmp	r0, #0
 8004d16:	f000 8090 	beq.w	8004e3a <HAL_TIM_PWM_Init+0x126>
 8004d1a:	b510      	push	{r4, lr}
 8004d1c:	f890 303d 	ldrb.w	r3, [r0, #61]	; 0x3d
 8004d20:	4604      	mov	r4, r0
 8004d22:	f003 02ff 	and.w	r2, r3, #255	; 0xff
 8004d26:	2b00      	cmp	r3, #0
 8004d28:	f000 8082 	beq.w	8004e30 <HAL_TIM_PWM_Init+0x11c>
 8004d2c:	6822      	ldr	r2, [r4, #0]
 8004d2e:	4944      	ldr	r1, [pc, #272]	; (8004e40 <HAL_TIM_PWM_Init+0x12c>)
 8004d30:	2302      	movs	r3, #2
 8004d32:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 8004d36:	428a      	cmp	r2, r1
 8004d38:	6813      	ldr	r3, [r2, #0]
 8004d3a:	d065      	beq.n	8004e08 <HAL_TIM_PWM_Init+0xf4>
 8004d3c:	f1b2 4f80 	cmp.w	r2, #1073741824	; 0x40000000
 8004d40:	d031      	beq.n	8004da6 <HAL_TIM_PWM_Init+0x92>
 8004d42:	f5a1 417c 	sub.w	r1, r1, #64512	; 0xfc00
 8004d46:	428a      	cmp	r2, r1
 8004d48:	d02d      	beq.n	8004da6 <HAL_TIM_PWM_Init+0x92>
 8004d4a:	f501 6180 	add.w	r1, r1, #1024	; 0x400
 8004d4e:	428a      	cmp	r2, r1
 8004d50:	d029      	beq.n	8004da6 <HAL_TIM_PWM_Init+0x92>
 8004d52:	f501 6180 	add.w	r1, r1, #1024	; 0x400
 8004d56:	428a      	cmp	r2, r1
 8004d58:	d025      	beq.n	8004da6 <HAL_TIM_PWM_Init+0x92>
 8004d5a:	f501 4178 	add.w	r1, r1, #63488	; 0xf800
 8004d5e:	428a      	cmp	r2, r1
 8004d60:	d052      	beq.n	8004e08 <HAL_TIM_PWM_Init+0xf4>
 8004d62:	f501 5170 	add.w	r1, r1, #15360	; 0x3c00
 8004d66:	428a      	cmp	r2, r1
 8004d68:	d021      	beq.n	8004dae <HAL_TIM_PWM_Init+0x9a>
 8004d6a:	f501 6180 	add.w	r1, r1, #1024	; 0x400
 8004d6e:	428a      	cmp	r2, r1
 8004d70:	d01d      	beq.n	8004dae <HAL_TIM_PWM_Init+0x9a>
 8004d72:	f501 6180 	add.w	r1, r1, #1024	; 0x400
 8004d76:	428a      	cmp	r2, r1
 8004d78:	d019      	beq.n	8004dae <HAL_TIM_PWM_Init+0x9a>
 8004d7a:	f5a1 3198 	sub.w	r1, r1, #77824	; 0x13000
 8004d7e:	428a      	cmp	r2, r1
 8004d80:	d015      	beq.n	8004dae <HAL_TIM_PWM_Init+0x9a>
 8004d82:	f501 6180 	add.w	r1, r1, #1024	; 0x400
 8004d86:	428a      	cmp	r2, r1
 8004d88:	d011      	beq.n	8004dae <HAL_TIM_PWM_Init+0x9a>
 8004d8a:	f501 6180 	add.w	r1, r1, #1024	; 0x400
 8004d8e:	428a      	cmp	r2, r1
 8004d90:	d00d      	beq.n	8004dae <HAL_TIM_PWM_Init+0x9a>
 8004d92:	69a0      	ldr	r0, [r4, #24]
 8004d94:	68e1      	ldr	r1, [r4, #12]
 8004d96:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8004d9a:	4303      	orrs	r3, r0
 8004d9c:	6013      	str	r3, [r2, #0]
 8004d9e:	6863      	ldr	r3, [r4, #4]
 8004da0:	62d1      	str	r1, [r2, #44]	; 0x2c
 8004da2:	6293      	str	r3, [r2, #40]	; 0x28
 8004da4:	e010      	b.n	8004dc8 <HAL_TIM_PWM_Init+0xb4>
 8004da6:	68a1      	ldr	r1, [r4, #8]
 8004da8:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8004dac:	430b      	orrs	r3, r1
 8004dae:	6920      	ldr	r0, [r4, #16]
 8004db0:	69a1      	ldr	r1, [r4, #24]
 8004db2:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8004db6:	4303      	orrs	r3, r0
 8004db8:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8004dbc:	68e0      	ldr	r0, [r4, #12]
 8004dbe:	430b      	orrs	r3, r1
 8004dc0:	6861      	ldr	r1, [r4, #4]
 8004dc2:	6013      	str	r3, [r2, #0]
 8004dc4:	62d0      	str	r0, [r2, #44]	; 0x2c
 8004dc6:	6291      	str	r1, [r2, #40]	; 0x28
 8004dc8:	2301      	movs	r3, #1
 8004dca:	6153      	str	r3, [r2, #20]
 8004dcc:	6913      	ldr	r3, [r2, #16]
 8004dce:	07db      	lsls	r3, r3, #31
 8004dd0:	d503      	bpl.n	8004dda <HAL_TIM_PWM_Init+0xc6>
 8004dd2:	6913      	ldr	r3, [r2, #16]
 8004dd4:	f023 0301 	bic.w	r3, r3, #1
 8004dd8:	6113      	str	r3, [r2, #16]
 8004dda:	2301      	movs	r3, #1
 8004ddc:	f884 3046 	strb.w	r3, [r4, #70]	; 0x46
 8004de0:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 8004de4:	f884 303f 	strb.w	r3, [r4, #63]	; 0x3f
 8004de8:	f884 3040 	strb.w	r3, [r4, #64]	; 0x40
 8004dec:	f884 3041 	strb.w	r3, [r4, #65]	; 0x41
 8004df0:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
 8004df4:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 8004df8:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 8004dfc:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 8004e00:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 8004e04:	2000      	movs	r0, #0
 8004e06:	bd10      	pop	{r4, pc}
 8004e08:	68a0      	ldr	r0, [r4, #8]
 8004e0a:	6921      	ldr	r1, [r4, #16]
 8004e0c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8004e10:	4303      	orrs	r3, r0
 8004e12:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8004e16:	430b      	orrs	r3, r1
 8004e18:	69a1      	ldr	r1, [r4, #24]
 8004e1a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8004e1e:	430b      	orrs	r3, r1
 8004e20:	6013      	str	r3, [r2, #0]
 8004e22:	68e3      	ldr	r3, [r4, #12]
 8004e24:	62d3      	str	r3, [r2, #44]	; 0x2c
 8004e26:	6863      	ldr	r3, [r4, #4]
 8004e28:	6293      	str	r3, [r2, #40]	; 0x28
 8004e2a:	6963      	ldr	r3, [r4, #20]
 8004e2c:	6313      	str	r3, [r2, #48]	; 0x30
 8004e2e:	e7cb      	b.n	8004dc8 <HAL_TIM_PWM_Init+0xb4>
 8004e30:	f880 203c 	strb.w	r2, [r0, #60]	; 0x3c
 8004e34:	f7ff ff6c 	bl	8004d10 <HAL_TIM_PWM_MspInit>
 8004e38:	e778      	b.n	8004d2c <HAL_TIM_PWM_Init+0x18>
 8004e3a:	2001      	movs	r0, #1
 8004e3c:	4770      	bx	lr
 8004e3e:	bf00      	nop
 8004e40:	40010000 	.word	0x40010000

08004e44 <HAL_TIM_PWM_Start>:
 8004e44:	2900      	cmp	r1, #0
 8004e46:	d13d      	bne.n	8004ec4 <HAL_TIM_PWM_Start+0x80>
 8004e48:	f890 303e 	ldrb.w	r3, [r0, #62]	; 0x3e
 8004e4c:	2b01      	cmp	r3, #1
 8004e4e:	d141      	bne.n	8004ed4 <HAL_TIM_PWM_Start+0x90>
 8004e50:	2302      	movs	r3, #2
 8004e52:	f880 303e 	strb.w	r3, [r0, #62]	; 0x3e
 8004e56:	6803      	ldr	r3, [r0, #0]
 8004e58:	2201      	movs	r2, #1
 8004e5a:	6a18      	ldr	r0, [r3, #32]
 8004e5c:	f001 011f 	and.w	r1, r1, #31
 8004e60:	fa02 f101 	lsl.w	r1, r2, r1
 8004e64:	ea20 0001 	bic.w	r0, r0, r1
 8004e68:	6218      	str	r0, [r3, #32]
 8004e6a:	6a18      	ldr	r0, [r3, #32]
 8004e6c:	4a2c      	ldr	r2, [pc, #176]	; (8004f20 <HAL_TIM_PWM_Start+0xdc>)
 8004e6e:	4301      	orrs	r1, r0
 8004e70:	4293      	cmp	r3, r2
 8004e72:	6219      	str	r1, [r3, #32]
 8004e74:	d038      	beq.n	8004ee8 <HAL_TIM_PWM_Start+0xa4>
 8004e76:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8004e7a:	4293      	cmp	r3, r2
 8004e7c:	d034      	beq.n	8004ee8 <HAL_TIM_PWM_Start+0xa4>
 8004e7e:	f1b3 4f80 	cmp.w	r3, #1073741824	; 0x40000000
 8004e82:	d014      	beq.n	8004eae <HAL_TIM_PWM_Start+0x6a>
 8004e84:	4927      	ldr	r1, [pc, #156]	; (8004f24 <HAL_TIM_PWM_Start+0xe0>)
 8004e86:	428b      	cmp	r3, r1
 8004e88:	d011      	beq.n	8004eae <HAL_TIM_PWM_Start+0x6a>
 8004e8a:	f501 6180 	add.w	r1, r1, #1024	; 0x400
 8004e8e:	428b      	cmp	r3, r1
 8004e90:	d00d      	beq.n	8004eae <HAL_TIM_PWM_Start+0x6a>
 8004e92:	f501 6180 	add.w	r1, r1, #1024	; 0x400
 8004e96:	428b      	cmp	r3, r1
 8004e98:	d009      	beq.n	8004eae <HAL_TIM_PWM_Start+0x6a>
 8004e9a:	4293      	cmp	r3, r2
 8004e9c:	d007      	beq.n	8004eae <HAL_TIM_PWM_Start+0x6a>
 8004e9e:	f502 5270 	add.w	r2, r2, #15360	; 0x3c00
 8004ea2:	4293      	cmp	r3, r2
 8004ea4:	d003      	beq.n	8004eae <HAL_TIM_PWM_Start+0x6a>
 8004ea6:	f5a2 3294 	sub.w	r2, r2, #75776	; 0x12800
 8004eaa:	4293      	cmp	r3, r2
 8004eac:	d104      	bne.n	8004eb8 <HAL_TIM_PWM_Start+0x74>
 8004eae:	689a      	ldr	r2, [r3, #8]
 8004eb0:	f002 0207 	and.w	r2, r2, #7
 8004eb4:	2a06      	cmp	r2, #6
 8004eb6:	d020      	beq.n	8004efa <HAL_TIM_PWM_Start+0xb6>
 8004eb8:	681a      	ldr	r2, [r3, #0]
 8004eba:	f042 0201 	orr.w	r2, r2, #1
 8004ebe:	2000      	movs	r0, #0
 8004ec0:	601a      	str	r2, [r3, #0]
 8004ec2:	4770      	bx	lr
 8004ec4:	2904      	cmp	r1, #4
 8004ec6:	d022      	beq.n	8004f0e <HAL_TIM_PWM_Start+0xca>
 8004ec8:	2908      	cmp	r1, #8
 8004eca:	d018      	beq.n	8004efe <HAL_TIM_PWM_Start+0xba>
 8004ecc:	f890 3041 	ldrb.w	r3, [r0, #65]	; 0x41
 8004ed0:	2b01      	cmp	r3, #1
 8004ed2:	d001      	beq.n	8004ed8 <HAL_TIM_PWM_Start+0x94>
 8004ed4:	2001      	movs	r0, #1
 8004ed6:	4770      	bx	lr
 8004ed8:	2904      	cmp	r1, #4
 8004eda:	d01c      	beq.n	8004f16 <HAL_TIM_PWM_Start+0xd2>
 8004edc:	2908      	cmp	r1, #8
 8004ede:	d012      	beq.n	8004f06 <HAL_TIM_PWM_Start+0xc2>
 8004ee0:	2302      	movs	r3, #2
 8004ee2:	f880 3041 	strb.w	r3, [r0, #65]	; 0x41
 8004ee6:	e7b6      	b.n	8004e56 <HAL_TIM_PWM_Start+0x12>
 8004ee8:	6c5a      	ldr	r2, [r3, #68]	; 0x44
 8004eea:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8004eee:	645a      	str	r2, [r3, #68]	; 0x44
 8004ef0:	689a      	ldr	r2, [r3, #8]
 8004ef2:	f002 0207 	and.w	r2, r2, #7
 8004ef6:	2a06      	cmp	r2, #6
 8004ef8:	d1de      	bne.n	8004eb8 <HAL_TIM_PWM_Start+0x74>
 8004efa:	2000      	movs	r0, #0
 8004efc:	4770      	bx	lr
 8004efe:	f890 3040 	ldrb.w	r3, [r0, #64]	; 0x40
 8004f02:	2b01      	cmp	r3, #1
 8004f04:	d1e6      	bne.n	8004ed4 <HAL_TIM_PWM_Start+0x90>
 8004f06:	2302      	movs	r3, #2
 8004f08:	f880 3040 	strb.w	r3, [r0, #64]	; 0x40
 8004f0c:	e7a3      	b.n	8004e56 <HAL_TIM_PWM_Start+0x12>
 8004f0e:	f890 303f 	ldrb.w	r3, [r0, #63]	; 0x3f
 8004f12:	2b01      	cmp	r3, #1
 8004f14:	d1de      	bne.n	8004ed4 <HAL_TIM_PWM_Start+0x90>
 8004f16:	2302      	movs	r3, #2
 8004f18:	f880 303f 	strb.w	r3, [r0, #63]	; 0x3f
 8004f1c:	e79b      	b.n	8004e56 <HAL_TIM_PWM_Start+0x12>
 8004f1e:	bf00      	nop
 8004f20:	40010000 	.word	0x40010000
 8004f24:	40000400 	.word	0x40000400

08004f28 <HAL_TIM_PWM_ConfigChannel>:
 8004f28:	f890 303c 	ldrb.w	r3, [r0, #60]	; 0x3c
 8004f2c:	2b01      	cmp	r3, #1
 8004f2e:	f000 80d2 	beq.w	80050d6 <HAL_TIM_PWM_ConfigChannel+0x1ae>
 8004f32:	2301      	movs	r3, #1
 8004f34:	b570      	push	{r4, r5, r6, lr}
 8004f36:	4684      	mov	ip, r0
 8004f38:	f880 303c 	strb.w	r3, [r0, #60]	; 0x3c
 8004f3c:	2a0c      	cmp	r2, #12
 8004f3e:	d808      	bhi.n	8004f52 <HAL_TIM_PWM_ConfigChannel+0x2a>
 8004f40:	e8df f002 	tbb	[pc, r2]
 8004f44:	0707073e 	.word	0x0707073e
 8004f48:	0707076b 	.word	0x0707076b
 8004f4c:	0707079b 	.word	0x0707079b
 8004f50:	0c          	.byte	0x0c
 8004f51:	00          	.byte	0x00
 8004f52:	2300      	movs	r3, #0
 8004f54:	f88c 303c 	strb.w	r3, [ip, #60]	; 0x3c
 8004f58:	2001      	movs	r0, #1
 8004f5a:	bd70      	pop	{r4, r5, r6, pc}
 8004f5c:	6803      	ldr	r3, [r0, #0]
 8004f5e:	680d      	ldr	r5, [r1, #0]
 8004f60:	6a1a      	ldr	r2, [r3, #32]
 8004f62:	6a18      	ldr	r0, [r3, #32]
 8004f64:	f420 5080 	bic.w	r0, r0, #4096	; 0x1000
 8004f68:	6218      	str	r0, [r3, #32]
 8004f6a:	685c      	ldr	r4, [r3, #4]
 8004f6c:	69d8      	ldr	r0, [r3, #28]
 8004f6e:	f420 40e6 	bic.w	r0, r0, #29440	; 0x7300
 8004f72:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
 8004f76:	688d      	ldr	r5, [r1, #8]
 8004f78:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8004f7c:	ea42 3205 	orr.w	r2, r2, r5, lsl #12
 8004f80:	4d70      	ldr	r5, [pc, #448]	; (8005144 <HAL_TIM_PWM_ConfigChannel+0x21c>)
 8004f82:	42ab      	cmp	r3, r5
 8004f84:	f000 80c8 	beq.w	8005118 <HAL_TIM_PWM_ConfigChannel+0x1f0>
 8004f88:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8004f8c:	42ab      	cmp	r3, r5
 8004f8e:	f000 80c3 	beq.w	8005118 <HAL_TIM_PWM_ConfigChannel+0x1f0>
 8004f92:	605c      	str	r4, [r3, #4]
 8004f94:	61d8      	str	r0, [r3, #28]
 8004f96:	6848      	ldr	r0, [r1, #4]
 8004f98:	6418      	str	r0, [r3, #64]	; 0x40
 8004f9a:	621a      	str	r2, [r3, #32]
 8004f9c:	69d8      	ldr	r0, [r3, #28]
 8004f9e:	690c      	ldr	r4, [r1, #16]
 8004fa0:	f440 6000 	orr.w	r0, r0, #2048	; 0x800
 8004fa4:	61d8      	str	r0, [r3, #28]
 8004fa6:	69d9      	ldr	r1, [r3, #28]
 8004fa8:	f421 6180 	bic.w	r1, r1, #1024	; 0x400
 8004fac:	61d9      	str	r1, [r3, #28]
 8004fae:	69da      	ldr	r2, [r3, #28]
 8004fb0:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
 8004fb4:	61da      	str	r2, [r3, #28]
 8004fb6:	2300      	movs	r3, #0
 8004fb8:	f88c 303c 	strb.w	r3, [ip, #60]	; 0x3c
 8004fbc:	2000      	movs	r0, #0
 8004fbe:	bd70      	pop	{r4, r5, r6, pc}
 8004fc0:	6803      	ldr	r3, [r0, #0]
 8004fc2:	680d      	ldr	r5, [r1, #0]
 8004fc4:	6a1a      	ldr	r2, [r3, #32]
 8004fc6:	6a18      	ldr	r0, [r3, #32]
 8004fc8:	f020 0001 	bic.w	r0, r0, #1
 8004fcc:	6218      	str	r0, [r3, #32]
 8004fce:	685c      	ldr	r4, [r3, #4]
 8004fd0:	6998      	ldr	r0, [r3, #24]
 8004fd2:	f020 0073 	bic.w	r0, r0, #115	; 0x73
 8004fd6:	4328      	orrs	r0, r5
 8004fd8:	688d      	ldr	r5, [r1, #8]
 8004fda:	f022 0202 	bic.w	r2, r2, #2
 8004fde:	432a      	orrs	r2, r5
 8004fe0:	4d58      	ldr	r5, [pc, #352]	; (8005144 <HAL_TIM_PWM_ConfigChannel+0x21c>)
 8004fe2:	42ab      	cmp	r3, r5
 8004fe4:	d079      	beq.n	80050da <HAL_TIM_PWM_ConfigChannel+0x1b2>
 8004fe6:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8004fea:	42ab      	cmp	r3, r5
 8004fec:	d075      	beq.n	80050da <HAL_TIM_PWM_ConfigChannel+0x1b2>
 8004fee:	605c      	str	r4, [r3, #4]
 8004ff0:	6198      	str	r0, [r3, #24]
 8004ff2:	6848      	ldr	r0, [r1, #4]
 8004ff4:	6358      	str	r0, [r3, #52]	; 0x34
 8004ff6:	621a      	str	r2, [r3, #32]
 8004ff8:	6998      	ldr	r0, [r3, #24]
 8004ffa:	690c      	ldr	r4, [r1, #16]
 8004ffc:	f040 0008 	orr.w	r0, r0, #8
 8005000:	6198      	str	r0, [r3, #24]
 8005002:	6999      	ldr	r1, [r3, #24]
 8005004:	f021 0104 	bic.w	r1, r1, #4
 8005008:	6199      	str	r1, [r3, #24]
 800500a:	699a      	ldr	r2, [r3, #24]
 800500c:	4322      	orrs	r2, r4
 800500e:	619a      	str	r2, [r3, #24]
 8005010:	2300      	movs	r3, #0
 8005012:	f88c 303c 	strb.w	r3, [ip, #60]	; 0x3c
 8005016:	2000      	movs	r0, #0
 8005018:	bd70      	pop	{r4, r5, r6, pc}
 800501a:	6803      	ldr	r3, [r0, #0]
 800501c:	680d      	ldr	r5, [r1, #0]
 800501e:	6a1a      	ldr	r2, [r3, #32]
 8005020:	6a18      	ldr	r0, [r3, #32]
 8005022:	f020 0010 	bic.w	r0, r0, #16
 8005026:	6218      	str	r0, [r3, #32]
 8005028:	685c      	ldr	r4, [r3, #4]
 800502a:	6998      	ldr	r0, [r3, #24]
 800502c:	f420 40e6 	bic.w	r0, r0, #29440	; 0x7300
 8005030:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
 8005034:	688d      	ldr	r5, [r1, #8]
 8005036:	f022 0220 	bic.w	r2, r2, #32
 800503a:	ea42 1205 	orr.w	r2, r2, r5, lsl #4
 800503e:	4d41      	ldr	r5, [pc, #260]	; (8005144 <HAL_TIM_PWM_ConfigChannel+0x21c>)
 8005040:	42ab      	cmp	r3, r5
 8005042:	d059      	beq.n	80050f8 <HAL_TIM_PWM_ConfigChannel+0x1d0>
 8005044:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8005048:	42ab      	cmp	r3, r5
 800504a:	d055      	beq.n	80050f8 <HAL_TIM_PWM_ConfigChannel+0x1d0>
 800504c:	605c      	str	r4, [r3, #4]
 800504e:	6198      	str	r0, [r3, #24]
 8005050:	6848      	ldr	r0, [r1, #4]
 8005052:	6398      	str	r0, [r3, #56]	; 0x38
 8005054:	621a      	str	r2, [r3, #32]
 8005056:	6998      	ldr	r0, [r3, #24]
 8005058:	690c      	ldr	r4, [r1, #16]
 800505a:	f440 6000 	orr.w	r0, r0, #2048	; 0x800
 800505e:	6198      	str	r0, [r3, #24]
 8005060:	6999      	ldr	r1, [r3, #24]
 8005062:	f421 6180 	bic.w	r1, r1, #1024	; 0x400
 8005066:	6199      	str	r1, [r3, #24]
 8005068:	699a      	ldr	r2, [r3, #24]
 800506a:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
 800506e:	619a      	str	r2, [r3, #24]
 8005070:	2300      	movs	r3, #0
 8005072:	f88c 303c 	strb.w	r3, [ip, #60]	; 0x3c
 8005076:	2000      	movs	r0, #0
 8005078:	bd70      	pop	{r4, r5, r6, pc}
 800507a:	6803      	ldr	r3, [r0, #0]
 800507c:	680d      	ldr	r5, [r1, #0]
 800507e:	6a1a      	ldr	r2, [r3, #32]
 8005080:	6a18      	ldr	r0, [r3, #32]
 8005082:	f420 7080 	bic.w	r0, r0, #256	; 0x100
 8005086:	6218      	str	r0, [r3, #32]
 8005088:	685c      	ldr	r4, [r3, #4]
 800508a:	69d8      	ldr	r0, [r3, #28]
 800508c:	f020 0073 	bic.w	r0, r0, #115	; 0x73
 8005090:	4328      	orrs	r0, r5
 8005092:	688d      	ldr	r5, [r1, #8]
 8005094:	f422 7200 	bic.w	r2, r2, #512	; 0x200
 8005098:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
 800509c:	4d29      	ldr	r5, [pc, #164]	; (8005144 <HAL_TIM_PWM_ConfigChannel+0x21c>)
 800509e:	42ab      	cmp	r3, r5
 80050a0:	d040      	beq.n	8005124 <HAL_TIM_PWM_ConfigChannel+0x1fc>
 80050a2:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 80050a6:	42ab      	cmp	r3, r5
 80050a8:	d03c      	beq.n	8005124 <HAL_TIM_PWM_ConfigChannel+0x1fc>
 80050aa:	605c      	str	r4, [r3, #4]
 80050ac:	61d8      	str	r0, [r3, #28]
 80050ae:	6848      	ldr	r0, [r1, #4]
 80050b0:	63d8      	str	r0, [r3, #60]	; 0x3c
 80050b2:	621a      	str	r2, [r3, #32]
 80050b4:	69d8      	ldr	r0, [r3, #28]
 80050b6:	690c      	ldr	r4, [r1, #16]
 80050b8:	f040 0008 	orr.w	r0, r0, #8
 80050bc:	61d8      	str	r0, [r3, #28]
 80050be:	69d9      	ldr	r1, [r3, #28]
 80050c0:	f021 0104 	bic.w	r1, r1, #4
 80050c4:	61d9      	str	r1, [r3, #28]
 80050c6:	69da      	ldr	r2, [r3, #28]
 80050c8:	4322      	orrs	r2, r4
 80050ca:	61da      	str	r2, [r3, #28]
 80050cc:	2300      	movs	r3, #0
 80050ce:	f88c 303c 	strb.w	r3, [ip, #60]	; 0x3c
 80050d2:	2000      	movs	r0, #0
 80050d4:	bd70      	pop	{r4, r5, r6, pc}
 80050d6:	2002      	movs	r0, #2
 80050d8:	4770      	bx	lr
 80050da:	68cd      	ldr	r5, [r1, #12]
 80050dc:	f022 0208 	bic.w	r2, r2, #8
 80050e0:	432a      	orrs	r2, r5
 80050e2:	e9d1 6505 	ldrd	r6, r5, [r1, #20]
 80050e6:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 80050ea:	ea46 0e05 	orr.w	lr, r6, r5
 80050ee:	f022 0204 	bic.w	r2, r2, #4
 80050f2:	ea4e 0404 	orr.w	r4, lr, r4
 80050f6:	e77a      	b.n	8004fee <HAL_TIM_PWM_ConfigChannel+0xc6>
 80050f8:	68cd      	ldr	r5, [r1, #12]
 80050fa:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 80050fe:	ea42 1205 	orr.w	r2, r2, r5, lsl #4
 8005102:	e9d1 6505 	ldrd	r6, r5, [r1, #20]
 8005106:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 800510a:	ea46 0e05 	orr.w	lr, r6, r5
 800510e:	f022 0240 	bic.w	r2, r2, #64	; 0x40
 8005112:	ea44 048e 	orr.w	r4, r4, lr, lsl #2
 8005116:	e799      	b.n	800504c <HAL_TIM_PWM_ConfigChannel+0x124>
 8005118:	694d      	ldr	r5, [r1, #20]
 800511a:	f424 4480 	bic.w	r4, r4, #16384	; 0x4000
 800511e:	ea44 1485 	orr.w	r4, r4, r5, lsl #6
 8005122:	e736      	b.n	8004f92 <HAL_TIM_PWM_ConfigChannel+0x6a>
 8005124:	68cd      	ldr	r5, [r1, #12]
 8005126:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 800512a:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
 800512e:	e9d1 6505 	ldrd	r6, r5, [r1, #20]
 8005132:	f424 5440 	bic.w	r4, r4, #12288	; 0x3000
 8005136:	ea46 0e05 	orr.w	lr, r6, r5
 800513a:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 800513e:	ea44 140e 	orr.w	r4, r4, lr, lsl #4
 8005142:	e7b2      	b.n	80050aa <HAL_TIM_PWM_ConfigChannel+0x182>
 8005144:	40010000 	.word	0x40010000

08005148 <HAL_TIM_ConfigClockSource>:
 8005148:	f890 303c 	ldrb.w	r3, [r0, #60]	; 0x3c
 800514c:	2b01      	cmp	r3, #1
 800514e:	d075      	beq.n	800523c <HAL_TIM_ConfigClockSource+0xf4>
 8005150:	4602      	mov	r2, r0
 8005152:	b430      	push	{r4, r5}
 8005154:	2302      	movs	r3, #2
 8005156:	6804      	ldr	r4, [r0, #0]
 8005158:	f882 303d 	strb.w	r3, [r2, #61]	; 0x3d
 800515c:	2001      	movs	r0, #1
 800515e:	f882 003c 	strb.w	r0, [r2, #60]	; 0x3c
 8005162:	68a3      	ldr	r3, [r4, #8]
 8005164:	f423 437f 	bic.w	r3, r3, #65280	; 0xff00
 8005168:	f023 0377 	bic.w	r3, r3, #119	; 0x77
 800516c:	60a3      	str	r3, [r4, #8]
 800516e:	680b      	ldr	r3, [r1, #0]
 8005170:	2b60      	cmp	r3, #96	; 0x60
 8005172:	d065      	beq.n	8005240 <HAL_TIM_ConfigClockSource+0xf8>
 8005174:	d824      	bhi.n	80051c0 <HAL_TIM_ConfigClockSource+0x78>
 8005176:	2b40      	cmp	r3, #64	; 0x40
 8005178:	d07c      	beq.n	8005274 <HAL_TIM_ConfigClockSource+0x12c>
 800517a:	d94b      	bls.n	8005214 <HAL_TIM_ConfigClockSource+0xcc>
 800517c:	2b50      	cmp	r3, #80	; 0x50
 800517e:	d117      	bne.n	80051b0 <HAL_TIM_ConfigClockSource+0x68>
 8005180:	6848      	ldr	r0, [r1, #4]
 8005182:	68cd      	ldr	r5, [r1, #12]
 8005184:	6a21      	ldr	r1, [r4, #32]
 8005186:	6a23      	ldr	r3, [r4, #32]
 8005188:	f023 0301 	bic.w	r3, r3, #1
 800518c:	6223      	str	r3, [r4, #32]
 800518e:	69a3      	ldr	r3, [r4, #24]
 8005190:	f021 010a 	bic.w	r1, r1, #10
 8005194:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8005198:	4301      	orrs	r1, r0
 800519a:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 800519e:	61a3      	str	r3, [r4, #24]
 80051a0:	6221      	str	r1, [r4, #32]
 80051a2:	68a3      	ldr	r3, [r4, #8]
 80051a4:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80051a8:	f043 0357 	orr.w	r3, r3, #87	; 0x57
 80051ac:	2000      	movs	r0, #0
 80051ae:	60a3      	str	r3, [r4, #8]
 80051b0:	2101      	movs	r1, #1
 80051b2:	2300      	movs	r3, #0
 80051b4:	f882 103d 	strb.w	r1, [r2, #61]	; 0x3d
 80051b8:	f882 303c 	strb.w	r3, [r2, #60]	; 0x3c
 80051bc:	bc30      	pop	{r4, r5}
 80051be:	4770      	bx	lr
 80051c0:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 80051c4:	d038      	beq.n	8005238 <HAL_TIM_ConfigClockSource+0xf0>
 80051c6:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
 80051ca:	d110      	bne.n	80051ee <HAL_TIM_ConfigClockSource+0xa6>
 80051cc:	e9d1 5301 	ldrd	r5, r3, [r1, #4]
 80051d0:	68a0      	ldr	r0, [r4, #8]
 80051d2:	432b      	orrs	r3, r5
 80051d4:	68cd      	ldr	r5, [r1, #12]
 80051d6:	f420 417f 	bic.w	r1, r0, #65280	; 0xff00
 80051da:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
 80051de:	430b      	orrs	r3, r1
 80051e0:	60a3      	str	r3, [r4, #8]
 80051e2:	68a3      	ldr	r3, [r4, #8]
 80051e4:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 80051e8:	2000      	movs	r0, #0
 80051ea:	60a3      	str	r3, [r4, #8]
 80051ec:	e7e0      	b.n	80051b0 <HAL_TIM_ConfigClockSource+0x68>
 80051ee:	2b70      	cmp	r3, #112	; 0x70
 80051f0:	d1de      	bne.n	80051b0 <HAL_TIM_ConfigClockSource+0x68>
 80051f2:	e9d1 5301 	ldrd	r5, r3, [r1, #4]
 80051f6:	68a0      	ldr	r0, [r4, #8]
 80051f8:	432b      	orrs	r3, r5
 80051fa:	68cd      	ldr	r5, [r1, #12]
 80051fc:	f420 417f 	bic.w	r1, r0, #65280	; 0xff00
 8005200:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
 8005204:	430b      	orrs	r3, r1
 8005206:	60a3      	str	r3, [r4, #8]
 8005208:	68a3      	ldr	r3, [r4, #8]
 800520a:	f043 0377 	orr.w	r3, r3, #119	; 0x77
 800520e:	2000      	movs	r0, #0
 8005210:	60a3      	str	r3, [r4, #8]
 8005212:	e7cd      	b.n	80051b0 <HAL_TIM_ConfigClockSource+0x68>
 8005214:	2b20      	cmp	r3, #32
 8005216:	d002      	beq.n	800521e <HAL_TIM_ConfigClockSource+0xd6>
 8005218:	d90a      	bls.n	8005230 <HAL_TIM_ConfigClockSource+0xe8>
 800521a:	2b30      	cmp	r3, #48	; 0x30
 800521c:	d1c8      	bne.n	80051b0 <HAL_TIM_ConfigClockSource+0x68>
 800521e:	68a1      	ldr	r1, [r4, #8]
 8005220:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 8005224:	430b      	orrs	r3, r1
 8005226:	f043 0307 	orr.w	r3, r3, #7
 800522a:	2000      	movs	r0, #0
 800522c:	60a3      	str	r3, [r4, #8]
 800522e:	e7bf      	b.n	80051b0 <HAL_TIM_ConfigClockSource+0x68>
 8005230:	f033 0110 	bics.w	r1, r3, #16
 8005234:	d1bc      	bne.n	80051b0 <HAL_TIM_ConfigClockSource+0x68>
 8005236:	e7f2      	b.n	800521e <HAL_TIM_ConfigClockSource+0xd6>
 8005238:	2000      	movs	r0, #0
 800523a:	e7b9      	b.n	80051b0 <HAL_TIM_ConfigClockSource+0x68>
 800523c:	2002      	movs	r0, #2
 800523e:	4770      	bx	lr
 8005240:	6a23      	ldr	r3, [r4, #32]
 8005242:	6848      	ldr	r0, [r1, #4]
 8005244:	68cd      	ldr	r5, [r1, #12]
 8005246:	6a21      	ldr	r1, [r4, #32]
 8005248:	f021 0110 	bic.w	r1, r1, #16
 800524c:	6221      	str	r1, [r4, #32]
 800524e:	69a1      	ldr	r1, [r4, #24]
 8005250:	f023 03a0 	bic.w	r3, r3, #160	; 0xa0
 8005254:	f421 4170 	bic.w	r1, r1, #61440	; 0xf000
 8005258:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
 800525c:	ea41 3105 	orr.w	r1, r1, r5, lsl #12
 8005260:	61a1      	str	r1, [r4, #24]
 8005262:	6223      	str	r3, [r4, #32]
 8005264:	68a3      	ldr	r3, [r4, #8]
 8005266:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800526a:	f043 0367 	orr.w	r3, r3, #103	; 0x67
 800526e:	2000      	movs	r0, #0
 8005270:	60a3      	str	r3, [r4, #8]
 8005272:	e79d      	b.n	80051b0 <HAL_TIM_ConfigClockSource+0x68>
 8005274:	6848      	ldr	r0, [r1, #4]
 8005276:	68cd      	ldr	r5, [r1, #12]
 8005278:	6a21      	ldr	r1, [r4, #32]
 800527a:	6a23      	ldr	r3, [r4, #32]
 800527c:	f023 0301 	bic.w	r3, r3, #1
 8005280:	6223      	str	r3, [r4, #32]
 8005282:	69a3      	ldr	r3, [r4, #24]
 8005284:	f021 010a 	bic.w	r1, r1, #10
 8005288:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 800528c:	4301      	orrs	r1, r0
 800528e:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8005292:	61a3      	str	r3, [r4, #24]
 8005294:	6221      	str	r1, [r4, #32]
 8005296:	68a3      	ldr	r3, [r4, #8]
 8005298:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800529c:	f043 0347 	orr.w	r3, r3, #71	; 0x47
 80052a0:	2000      	movs	r0, #0
 80052a2:	60a3      	str	r3, [r4, #8]
 80052a4:	e784      	b.n	80051b0 <HAL_TIM_ConfigClockSource+0x68>
 80052a6:	bf00      	nop

080052a8 <HAL_TIM_OC_DelayElapsedCallback>:
 80052a8:	4770      	bx	lr
 80052aa:	bf00      	nop

080052ac <HAL_TIM_IC_CaptureCallback>:
 80052ac:	4770      	bx	lr
 80052ae:	bf00      	nop

080052b0 <HAL_TIM_PWM_PulseFinishedCallback>:
 80052b0:	4770      	bx	lr
 80052b2:	bf00      	nop

080052b4 <HAL_TIM_TriggerCallback>:
 80052b4:	4770      	bx	lr
 80052b6:	bf00      	nop

080052b8 <HAL_TIM_IRQHandler>:
 80052b8:	6803      	ldr	r3, [r0, #0]
 80052ba:	b570      	push	{r4, r5, r6, lr}
 80052bc:	68de      	ldr	r6, [r3, #12]
 80052be:	691d      	ldr	r5, [r3, #16]
 80052c0:	07a9      	lsls	r1, r5, #30
 80052c2:	4604      	mov	r4, r0
 80052c4:	d501      	bpl.n	80052ca <HAL_TIM_IRQHandler+0x12>
 80052c6:	07b2      	lsls	r2, r6, #30
 80052c8:	d451      	bmi.n	800536e <HAL_TIM_IRQHandler+0xb6>
 80052ca:	0769      	lsls	r1, r5, #29
 80052cc:	d501      	bpl.n	80052d2 <HAL_TIM_IRQHandler+0x1a>
 80052ce:	0772      	lsls	r2, r6, #29
 80052d0:	d43a      	bmi.n	8005348 <HAL_TIM_IRQHandler+0x90>
 80052d2:	072b      	lsls	r3, r5, #28
 80052d4:	d501      	bpl.n	80052da <HAL_TIM_IRQHandler+0x22>
 80052d6:	0730      	lsls	r0, r6, #28
 80052d8:	d424      	bmi.n	8005324 <HAL_TIM_IRQHandler+0x6c>
 80052da:	06ea      	lsls	r2, r5, #27
 80052dc:	d501      	bpl.n	80052e2 <HAL_TIM_IRQHandler+0x2a>
 80052de:	06f3      	lsls	r3, r6, #27
 80052e0:	d410      	bmi.n	8005304 <HAL_TIM_IRQHandler+0x4c>
 80052e2:	07e8      	lsls	r0, r5, #31
 80052e4:	d501      	bpl.n	80052ea <HAL_TIM_IRQHandler+0x32>
 80052e6:	07f1      	lsls	r1, r6, #31
 80052e8:	d457      	bmi.n	800539a <HAL_TIM_IRQHandler+0xe2>
 80052ea:	062a      	lsls	r2, r5, #24
 80052ec:	d501      	bpl.n	80052f2 <HAL_TIM_IRQHandler+0x3a>
 80052ee:	0633      	lsls	r3, r6, #24
 80052f0:	d45b      	bmi.n	80053aa <HAL_TIM_IRQHandler+0xf2>
 80052f2:	0668      	lsls	r0, r5, #25
 80052f4:	d501      	bpl.n	80052fa <HAL_TIM_IRQHandler+0x42>
 80052f6:	0671      	lsls	r1, r6, #25
 80052f8:	d45f      	bmi.n	80053ba <HAL_TIM_IRQHandler+0x102>
 80052fa:	06aa      	lsls	r2, r5, #26
 80052fc:	d501      	bpl.n	8005302 <HAL_TIM_IRQHandler+0x4a>
 80052fe:	06b3      	lsls	r3, r6, #26
 8005300:	d442      	bmi.n	8005388 <HAL_TIM_IRQHandler+0xd0>
 8005302:	bd70      	pop	{r4, r5, r6, pc}
 8005304:	6823      	ldr	r3, [r4, #0]
 8005306:	f06f 0210 	mvn.w	r2, #16
 800530a:	611a      	str	r2, [r3, #16]
 800530c:	2208      	movs	r2, #8
 800530e:	7722      	strb	r2, [r4, #28]
 8005310:	69db      	ldr	r3, [r3, #28]
 8005312:	f413 7f40 	tst.w	r3, #768	; 0x300
 8005316:	4620      	mov	r0, r4
 8005318:	d063      	beq.n	80053e2 <HAL_TIM_IRQHandler+0x12a>
 800531a:	f7ff ffc7 	bl	80052ac <HAL_TIM_IC_CaptureCallback>
 800531e:	2300      	movs	r3, #0
 8005320:	7723      	strb	r3, [r4, #28]
 8005322:	e7de      	b.n	80052e2 <HAL_TIM_IRQHandler+0x2a>
 8005324:	6823      	ldr	r3, [r4, #0]
 8005326:	f06f 0208 	mvn.w	r2, #8
 800532a:	611a      	str	r2, [r3, #16]
 800532c:	2204      	movs	r2, #4
 800532e:	7722      	strb	r2, [r4, #28]
 8005330:	69db      	ldr	r3, [r3, #28]
 8005332:	0799      	lsls	r1, r3, #30
 8005334:	4620      	mov	r0, r4
 8005336:	d151      	bne.n	80053dc <HAL_TIM_IRQHandler+0x124>
 8005338:	f7ff ffb6 	bl	80052a8 <HAL_TIM_OC_DelayElapsedCallback>
 800533c:	4620      	mov	r0, r4
 800533e:	f7ff ffb7 	bl	80052b0 <HAL_TIM_PWM_PulseFinishedCallback>
 8005342:	2300      	movs	r3, #0
 8005344:	7723      	strb	r3, [r4, #28]
 8005346:	e7c8      	b.n	80052da <HAL_TIM_IRQHandler+0x22>
 8005348:	6823      	ldr	r3, [r4, #0]
 800534a:	f06f 0204 	mvn.w	r2, #4
 800534e:	611a      	str	r2, [r3, #16]
 8005350:	2202      	movs	r2, #2
 8005352:	7722      	strb	r2, [r4, #28]
 8005354:	699b      	ldr	r3, [r3, #24]
 8005356:	f413 7f40 	tst.w	r3, #768	; 0x300
 800535a:	4620      	mov	r0, r4
 800535c:	d13b      	bne.n	80053d6 <HAL_TIM_IRQHandler+0x11e>
 800535e:	f7ff ffa3 	bl	80052a8 <HAL_TIM_OC_DelayElapsedCallback>
 8005362:	4620      	mov	r0, r4
 8005364:	f7ff ffa4 	bl	80052b0 <HAL_TIM_PWM_PulseFinishedCallback>
 8005368:	2300      	movs	r3, #0
 800536a:	7723      	strb	r3, [r4, #28]
 800536c:	e7b1      	b.n	80052d2 <HAL_TIM_IRQHandler+0x1a>
 800536e:	f06f 0202 	mvn.w	r2, #2
 8005372:	611a      	str	r2, [r3, #16]
 8005374:	2201      	movs	r2, #1
 8005376:	7702      	strb	r2, [r0, #28]
 8005378:	699b      	ldr	r3, [r3, #24]
 800537a:	079b      	lsls	r3, r3, #30
 800537c:	d025      	beq.n	80053ca <HAL_TIM_IRQHandler+0x112>
 800537e:	f7ff ff95 	bl	80052ac <HAL_TIM_IC_CaptureCallback>
 8005382:	2300      	movs	r3, #0
 8005384:	7723      	strb	r3, [r4, #28]
 8005386:	e7a0      	b.n	80052ca <HAL_TIM_IRQHandler+0x12>
 8005388:	6823      	ldr	r3, [r4, #0]
 800538a:	f06f 0220 	mvn.w	r2, #32
 800538e:	4620      	mov	r0, r4
 8005390:	611a      	str	r2, [r3, #16]
 8005392:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8005396:	f000 b86b 	b.w	8005470 <HAL_TIMEx_CommutCallback>
 800539a:	6823      	ldr	r3, [r4, #0]
 800539c:	f06f 0201 	mvn.w	r2, #1
 80053a0:	611a      	str	r2, [r3, #16]
 80053a2:	4620      	mov	r0, r4
 80053a4:	f7ff f814 	bl	80043d0 <HAL_TIM_PeriodElapsedCallback>
 80053a8:	e79f      	b.n	80052ea <HAL_TIM_IRQHandler+0x32>
 80053aa:	6823      	ldr	r3, [r4, #0]
 80053ac:	f06f 0280 	mvn.w	r2, #128	; 0x80
 80053b0:	611a      	str	r2, [r3, #16]
 80053b2:	4620      	mov	r0, r4
 80053b4:	f000 f85e 	bl	8005474 <HAL_TIMEx_BreakCallback>
 80053b8:	e79b      	b.n	80052f2 <HAL_TIM_IRQHandler+0x3a>
 80053ba:	6823      	ldr	r3, [r4, #0]
 80053bc:	f06f 0240 	mvn.w	r2, #64	; 0x40
 80053c0:	611a      	str	r2, [r3, #16]
 80053c2:	4620      	mov	r0, r4
 80053c4:	f7ff ff76 	bl	80052b4 <HAL_TIM_TriggerCallback>
 80053c8:	e797      	b.n	80052fa <HAL_TIM_IRQHandler+0x42>
 80053ca:	f7ff ff6d 	bl	80052a8 <HAL_TIM_OC_DelayElapsedCallback>
 80053ce:	4620      	mov	r0, r4
 80053d0:	f7ff ff6e 	bl	80052b0 <HAL_TIM_PWM_PulseFinishedCallback>
 80053d4:	e7d5      	b.n	8005382 <HAL_TIM_IRQHandler+0xca>
 80053d6:	f7ff ff69 	bl	80052ac <HAL_TIM_IC_CaptureCallback>
 80053da:	e7c5      	b.n	8005368 <HAL_TIM_IRQHandler+0xb0>
 80053dc:	f7ff ff66 	bl	80052ac <HAL_TIM_IC_CaptureCallback>
 80053e0:	e7af      	b.n	8005342 <HAL_TIM_IRQHandler+0x8a>
 80053e2:	f7ff ff61 	bl	80052a8 <HAL_TIM_OC_DelayElapsedCallback>
 80053e6:	4620      	mov	r0, r4
 80053e8:	f7ff ff62 	bl	80052b0 <HAL_TIM_PWM_PulseFinishedCallback>
 80053ec:	e797      	b.n	800531e <HAL_TIM_IRQHandler+0x66>
 80053ee:	bf00      	nop

080053f0 <HAL_TIMEx_MasterConfigSynchronization>:
 80053f0:	f890 303c 	ldrb.w	r3, [r0, #60]	; 0x3c
 80053f4:	2b01      	cmp	r3, #1
 80053f6:	d037      	beq.n	8005468 <HAL_TIMEx_MasterConfigSynchronization+0x78>
 80053f8:	6803      	ldr	r3, [r0, #0]
 80053fa:	2202      	movs	r2, #2
 80053fc:	b430      	push	{r4, r5}
 80053fe:	f880 203d 	strb.w	r2, [r0, #61]	; 0x3d
 8005402:	685a      	ldr	r2, [r3, #4]
 8005404:	680d      	ldr	r5, [r1, #0]
 8005406:	689c      	ldr	r4, [r3, #8]
 8005408:	f022 0270 	bic.w	r2, r2, #112	; 0x70
 800540c:	432a      	orrs	r2, r5
 800540e:	605a      	str	r2, [r3, #4]
 8005410:	4a16      	ldr	r2, [pc, #88]	; (800546c <HAL_TIMEx_MasterConfigSynchronization+0x7c>)
 8005412:	4293      	cmp	r3, r2
 8005414:	d01a      	beq.n	800544c <HAL_TIMEx_MasterConfigSynchronization+0x5c>
 8005416:	f1b3 4f80 	cmp.w	r3, #1073741824	; 0x40000000
 800541a:	d017      	beq.n	800544c <HAL_TIMEx_MasterConfigSynchronization+0x5c>
 800541c:	f5a2 427c 	sub.w	r2, r2, #64512	; 0xfc00
 8005420:	4293      	cmp	r3, r2
 8005422:	d013      	beq.n	800544c <HAL_TIMEx_MasterConfigSynchronization+0x5c>
 8005424:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8005428:	4293      	cmp	r3, r2
 800542a:	d00f      	beq.n	800544c <HAL_TIMEx_MasterConfigSynchronization+0x5c>
 800542c:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8005430:	4293      	cmp	r3, r2
 8005432:	d00b      	beq.n	800544c <HAL_TIMEx_MasterConfigSynchronization+0x5c>
 8005434:	f502 4278 	add.w	r2, r2, #63488	; 0xf800
 8005438:	4293      	cmp	r3, r2
 800543a:	d007      	beq.n	800544c <HAL_TIMEx_MasterConfigSynchronization+0x5c>
 800543c:	f502 5270 	add.w	r2, r2, #15360	; 0x3c00
 8005440:	4293      	cmp	r3, r2
 8005442:	d003      	beq.n	800544c <HAL_TIMEx_MasterConfigSynchronization+0x5c>
 8005444:	f5a2 3294 	sub.w	r2, r2, #75776	; 0x12800
 8005448:	4293      	cmp	r3, r2
 800544a:	d104      	bne.n	8005456 <HAL_TIMEx_MasterConfigSynchronization+0x66>
 800544c:	684a      	ldr	r2, [r1, #4]
 800544e:	f024 0480 	bic.w	r4, r4, #128	; 0x80
 8005452:	4314      	orrs	r4, r2
 8005454:	609c      	str	r4, [r3, #8]
 8005456:	2300      	movs	r3, #0
 8005458:	2201      	movs	r2, #1
 800545a:	f880 203d 	strb.w	r2, [r0, #61]	; 0x3d
 800545e:	f880 303c 	strb.w	r3, [r0, #60]	; 0x3c
 8005462:	bc30      	pop	{r4, r5}
 8005464:	4618      	mov	r0, r3
 8005466:	4770      	bx	lr
 8005468:	2002      	movs	r0, #2
 800546a:	4770      	bx	lr
 800546c:	40010000 	.word	0x40010000

08005470 <HAL_TIMEx_CommutCallback>:
 8005470:	4770      	bx	lr
 8005472:	bf00      	nop

08005474 <HAL_TIMEx_BreakCallback>:
 8005474:	4770      	bx	lr
 8005476:	bf00      	nop

08005478 <HAL_RCC_OscConfig>:
 8005478:	2800      	cmp	r0, #0
 800547a:	f000 81a2 	beq.w	80057c2 <HAL_RCC_OscConfig+0x34a>
 800547e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005482:	6803      	ldr	r3, [r0, #0]
 8005484:	07dd      	lsls	r5, r3, #31
 8005486:	b082      	sub	sp, #8
 8005488:	4604      	mov	r4, r0
 800548a:	d52f      	bpl.n	80054ec <HAL_RCC_OscConfig+0x74>
 800548c:	499e      	ldr	r1, [pc, #632]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 800548e:	688a      	ldr	r2, [r1, #8]
 8005490:	f002 020c 	and.w	r2, r2, #12
 8005494:	2a04      	cmp	r2, #4
 8005496:	f000 80ed 	beq.w	8005674 <HAL_RCC_OscConfig+0x1fc>
 800549a:	688a      	ldr	r2, [r1, #8]
 800549c:	f002 020c 	and.w	r2, r2, #12
 80054a0:	2a08      	cmp	r2, #8
 80054a2:	f000 80e3 	beq.w	800566c <HAL_RCC_OscConfig+0x1f4>
 80054a6:	6863      	ldr	r3, [r4, #4]
 80054a8:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 80054ac:	f000 80ec 	beq.w	8005688 <HAL_RCC_OscConfig+0x210>
 80054b0:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 80054b4:	f000 8175 	beq.w	80057a2 <HAL_RCC_OscConfig+0x32a>
 80054b8:	4d93      	ldr	r5, [pc, #588]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 80054ba:	682a      	ldr	r2, [r5, #0]
 80054bc:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80054c0:	602a      	str	r2, [r5, #0]
 80054c2:	682a      	ldr	r2, [r5, #0]
 80054c4:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80054c8:	602a      	str	r2, [r5, #0]
 80054ca:	2b00      	cmp	r3, #0
 80054cc:	f040 80e1 	bne.w	8005692 <HAL_RCC_OscConfig+0x21a>
 80054d0:	f000 fd7c 	bl	8005fcc <HAL_GetTick>
 80054d4:	4606      	mov	r6, r0
 80054d6:	e005      	b.n	80054e4 <HAL_RCC_OscConfig+0x6c>
 80054d8:	f000 fd78 	bl	8005fcc <HAL_GetTick>
 80054dc:	1b80      	subs	r0, r0, r6
 80054de:	2864      	cmp	r0, #100	; 0x64
 80054e0:	f200 8101 	bhi.w	80056e6 <HAL_RCC_OscConfig+0x26e>
 80054e4:	682b      	ldr	r3, [r5, #0]
 80054e6:	039b      	lsls	r3, r3, #14
 80054e8:	d4f6      	bmi.n	80054d8 <HAL_RCC_OscConfig+0x60>
 80054ea:	6823      	ldr	r3, [r4, #0]
 80054ec:	079f      	lsls	r7, r3, #30
 80054ee:	d528      	bpl.n	8005542 <HAL_RCC_OscConfig+0xca>
 80054f0:	4a85      	ldr	r2, [pc, #532]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 80054f2:	6891      	ldr	r1, [r2, #8]
 80054f4:	f011 0f0c 	tst.w	r1, #12
 80054f8:	f000 8090 	beq.w	800561c <HAL_RCC_OscConfig+0x1a4>
 80054fc:	6891      	ldr	r1, [r2, #8]
 80054fe:	f001 010c 	and.w	r1, r1, #12
 8005502:	2908      	cmp	r1, #8
 8005504:	f000 8086 	beq.w	8005614 <HAL_RCC_OscConfig+0x19c>
 8005508:	68e3      	ldr	r3, [r4, #12]
 800550a:	2b00      	cmp	r3, #0
 800550c:	f000 810e 	beq.w	800572c <HAL_RCC_OscConfig+0x2b4>
 8005510:	4b7e      	ldr	r3, [pc, #504]	; (800570c <HAL_RCC_OscConfig+0x294>)
 8005512:	4e7d      	ldr	r6, [pc, #500]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 8005514:	2201      	movs	r2, #1
 8005516:	601a      	str	r2, [r3, #0]
 8005518:	f000 fd58 	bl	8005fcc <HAL_GetTick>
 800551c:	4605      	mov	r5, r0
 800551e:	e005      	b.n	800552c <HAL_RCC_OscConfig+0xb4>
 8005520:	f000 fd54 	bl	8005fcc <HAL_GetTick>
 8005524:	1b40      	subs	r0, r0, r5
 8005526:	2802      	cmp	r0, #2
 8005528:	f200 80dd 	bhi.w	80056e6 <HAL_RCC_OscConfig+0x26e>
 800552c:	6833      	ldr	r3, [r6, #0]
 800552e:	0798      	lsls	r0, r3, #30
 8005530:	d5f6      	bpl.n	8005520 <HAL_RCC_OscConfig+0xa8>
 8005532:	6833      	ldr	r3, [r6, #0]
 8005534:	6922      	ldr	r2, [r4, #16]
 8005536:	f023 03f8 	bic.w	r3, r3, #248	; 0xf8
 800553a:	ea43 03c2 	orr.w	r3, r3, r2, lsl #3
 800553e:	6033      	str	r3, [r6, #0]
 8005540:	6823      	ldr	r3, [r4, #0]
 8005542:	071a      	lsls	r2, r3, #28
 8005544:	d451      	bmi.n	80055ea <HAL_RCC_OscConfig+0x172>
 8005546:	0758      	lsls	r0, r3, #29
 8005548:	d52f      	bpl.n	80055aa <HAL_RCC_OscConfig+0x132>
 800554a:	4a6f      	ldr	r2, [pc, #444]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 800554c:	6c13      	ldr	r3, [r2, #64]	; 0x40
 800554e:	f013 5380 	ands.w	r3, r3, #268435456	; 0x10000000
 8005552:	d07f      	beq.n	8005654 <HAL_RCC_OscConfig+0x1dc>
 8005554:	2500      	movs	r5, #0
 8005556:	4e6e      	ldr	r6, [pc, #440]	; (8005710 <HAL_RCC_OscConfig+0x298>)
 8005558:	6833      	ldr	r3, [r6, #0]
 800555a:	05d9      	lsls	r1, r3, #23
 800555c:	f140 80b3 	bpl.w	80056c6 <HAL_RCC_OscConfig+0x24e>
 8005560:	68a3      	ldr	r3, [r4, #8]
 8005562:	2b01      	cmp	r3, #1
 8005564:	f000 80c3 	beq.w	80056ee <HAL_RCC_OscConfig+0x276>
 8005568:	2b05      	cmp	r3, #5
 800556a:	f000 812c 	beq.w	80057c6 <HAL_RCC_OscConfig+0x34e>
 800556e:	4e66      	ldr	r6, [pc, #408]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 8005570:	6f32      	ldr	r2, [r6, #112]	; 0x70
 8005572:	f022 0201 	bic.w	r2, r2, #1
 8005576:	6732      	str	r2, [r6, #112]	; 0x70
 8005578:	6f32      	ldr	r2, [r6, #112]	; 0x70
 800557a:	f022 0204 	bic.w	r2, r2, #4
 800557e:	6732      	str	r2, [r6, #112]	; 0x70
 8005580:	2b00      	cmp	r3, #0
 8005582:	f040 80b9 	bne.w	80056f8 <HAL_RCC_OscConfig+0x280>
 8005586:	f000 fd21 	bl	8005fcc <HAL_GetTick>
 800558a:	f241 3888 	movw	r8, #5000	; 0x1388
 800558e:	4607      	mov	r7, r0
 8005590:	e005      	b.n	800559e <HAL_RCC_OscConfig+0x126>
 8005592:	f000 fd1b 	bl	8005fcc <HAL_GetTick>
 8005596:	1bc0      	subs	r0, r0, r7
 8005598:	4540      	cmp	r0, r8
 800559a:	f200 80a4 	bhi.w	80056e6 <HAL_RCC_OscConfig+0x26e>
 800559e:	6f33      	ldr	r3, [r6, #112]	; 0x70
 80055a0:	0798      	lsls	r0, r3, #30
 80055a2:	d4f6      	bmi.n	8005592 <HAL_RCC_OscConfig+0x11a>
 80055a4:	2d00      	cmp	r5, #0
 80055a6:	f040 8106 	bne.w	80057b6 <HAL_RCC_OscConfig+0x33e>
 80055aa:	69a0      	ldr	r0, [r4, #24]
 80055ac:	b1c8      	cbz	r0, 80055e2 <HAL_RCC_OscConfig+0x16a>
 80055ae:	4d56      	ldr	r5, [pc, #344]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 80055b0:	68ab      	ldr	r3, [r5, #8]
 80055b2:	f003 030c 	and.w	r3, r3, #12
 80055b6:	2b08      	cmp	r3, #8
 80055b8:	f000 80c9 	beq.w	800574e <HAL_RCC_OscConfig+0x2d6>
 80055bc:	4b53      	ldr	r3, [pc, #332]	; (800570c <HAL_RCC_OscConfig+0x294>)
 80055be:	2200      	movs	r2, #0
 80055c0:	2802      	cmp	r0, #2
 80055c2:	661a      	str	r2, [r3, #96]	; 0x60
 80055c4:	f000 8109 	beq.w	80057da <HAL_RCC_OscConfig+0x362>
 80055c8:	f000 fd00 	bl	8005fcc <HAL_GetTick>
 80055cc:	4604      	mov	r4, r0
 80055ce:	e005      	b.n	80055dc <HAL_RCC_OscConfig+0x164>
 80055d0:	f000 fcfc 	bl	8005fcc <HAL_GetTick>
 80055d4:	1b00      	subs	r0, r0, r4
 80055d6:	2802      	cmp	r0, #2
 80055d8:	f200 8085 	bhi.w	80056e6 <HAL_RCC_OscConfig+0x26e>
 80055dc:	682b      	ldr	r3, [r5, #0]
 80055de:	019b      	lsls	r3, r3, #6
 80055e0:	d4f6      	bmi.n	80055d0 <HAL_RCC_OscConfig+0x158>
 80055e2:	2000      	movs	r0, #0
 80055e4:	b002      	add	sp, #8
 80055e6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80055ea:	6963      	ldr	r3, [r4, #20]
 80055ec:	b30b      	cbz	r3, 8005632 <HAL_RCC_OscConfig+0x1ba>
 80055ee:	4b47      	ldr	r3, [pc, #284]	; (800570c <HAL_RCC_OscConfig+0x294>)
 80055f0:	4e45      	ldr	r6, [pc, #276]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 80055f2:	2201      	movs	r2, #1
 80055f4:	f8c3 2e80 	str.w	r2, [r3, #3712]	; 0xe80
 80055f8:	f000 fce8 	bl	8005fcc <HAL_GetTick>
 80055fc:	4605      	mov	r5, r0
 80055fe:	e004      	b.n	800560a <HAL_RCC_OscConfig+0x192>
 8005600:	f000 fce4 	bl	8005fcc <HAL_GetTick>
 8005604:	1b40      	subs	r0, r0, r5
 8005606:	2802      	cmp	r0, #2
 8005608:	d86d      	bhi.n	80056e6 <HAL_RCC_OscConfig+0x26e>
 800560a:	6f73      	ldr	r3, [r6, #116]	; 0x74
 800560c:	079b      	lsls	r3, r3, #30
 800560e:	d5f7      	bpl.n	8005600 <HAL_RCC_OscConfig+0x188>
 8005610:	6823      	ldr	r3, [r4, #0]
 8005612:	e798      	b.n	8005546 <HAL_RCC_OscConfig+0xce>
 8005614:	6852      	ldr	r2, [r2, #4]
 8005616:	0256      	lsls	r6, r2, #9
 8005618:	f53f af76 	bmi.w	8005508 <HAL_RCC_OscConfig+0x90>
 800561c:	4a3a      	ldr	r2, [pc, #232]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 800561e:	6812      	ldr	r2, [r2, #0]
 8005620:	0795      	lsls	r5, r2, #30
 8005622:	d544      	bpl.n	80056ae <HAL_RCC_OscConfig+0x236>
 8005624:	68e2      	ldr	r2, [r4, #12]
 8005626:	2a01      	cmp	r2, #1
 8005628:	d041      	beq.n	80056ae <HAL_RCC_OscConfig+0x236>
 800562a:	2001      	movs	r0, #1
 800562c:	b002      	add	sp, #8
 800562e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005632:	4a36      	ldr	r2, [pc, #216]	; (800570c <HAL_RCC_OscConfig+0x294>)
 8005634:	4e34      	ldr	r6, [pc, #208]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 8005636:	f8c2 3e80 	str.w	r3, [r2, #3712]	; 0xe80
 800563a:	f000 fcc7 	bl	8005fcc <HAL_GetTick>
 800563e:	4605      	mov	r5, r0
 8005640:	e004      	b.n	800564c <HAL_RCC_OscConfig+0x1d4>
 8005642:	f000 fcc3 	bl	8005fcc <HAL_GetTick>
 8005646:	1b40      	subs	r0, r0, r5
 8005648:	2802      	cmp	r0, #2
 800564a:	d84c      	bhi.n	80056e6 <HAL_RCC_OscConfig+0x26e>
 800564c:	6f73      	ldr	r3, [r6, #116]	; 0x74
 800564e:	079f      	lsls	r7, r3, #30
 8005650:	d4f7      	bmi.n	8005642 <HAL_RCC_OscConfig+0x1ca>
 8005652:	e7dd      	b.n	8005610 <HAL_RCC_OscConfig+0x198>
 8005654:	9301      	str	r3, [sp, #4]
 8005656:	6c13      	ldr	r3, [r2, #64]	; 0x40
 8005658:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 800565c:	6413      	str	r3, [r2, #64]	; 0x40
 800565e:	6c13      	ldr	r3, [r2, #64]	; 0x40
 8005660:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8005664:	9301      	str	r3, [sp, #4]
 8005666:	9b01      	ldr	r3, [sp, #4]
 8005668:	2501      	movs	r5, #1
 800566a:	e774      	b.n	8005556 <HAL_RCC_OscConfig+0xde>
 800566c:	684a      	ldr	r2, [r1, #4]
 800566e:	0250      	lsls	r0, r2, #9
 8005670:	f57f af19 	bpl.w	80054a6 <HAL_RCC_OscConfig+0x2e>
 8005674:	4a24      	ldr	r2, [pc, #144]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 8005676:	6812      	ldr	r2, [r2, #0]
 8005678:	0391      	lsls	r1, r2, #14
 800567a:	f57f af37 	bpl.w	80054ec <HAL_RCC_OscConfig+0x74>
 800567e:	6862      	ldr	r2, [r4, #4]
 8005680:	2a00      	cmp	r2, #0
 8005682:	f47f af33 	bne.w	80054ec <HAL_RCC_OscConfig+0x74>
 8005686:	e7d0      	b.n	800562a <HAL_RCC_OscConfig+0x1b2>
 8005688:	4a1f      	ldr	r2, [pc, #124]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 800568a:	6813      	ldr	r3, [r2, #0]
 800568c:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8005690:	6013      	str	r3, [r2, #0]
 8005692:	f000 fc9b 	bl	8005fcc <HAL_GetTick>
 8005696:	4e1c      	ldr	r6, [pc, #112]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 8005698:	4605      	mov	r5, r0
 800569a:	e004      	b.n	80056a6 <HAL_RCC_OscConfig+0x22e>
 800569c:	f000 fc96 	bl	8005fcc <HAL_GetTick>
 80056a0:	1b40      	subs	r0, r0, r5
 80056a2:	2864      	cmp	r0, #100	; 0x64
 80056a4:	d81f      	bhi.n	80056e6 <HAL_RCC_OscConfig+0x26e>
 80056a6:	6833      	ldr	r3, [r6, #0]
 80056a8:	039a      	lsls	r2, r3, #14
 80056aa:	d5f7      	bpl.n	800569c <HAL_RCC_OscConfig+0x224>
 80056ac:	e71d      	b.n	80054ea <HAL_RCC_OscConfig+0x72>
 80056ae:	4916      	ldr	r1, [pc, #88]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 80056b0:	6920      	ldr	r0, [r4, #16]
 80056b2:	680a      	ldr	r2, [r1, #0]
 80056b4:	f022 02f8 	bic.w	r2, r2, #248	; 0xf8
 80056b8:	ea42 02c0 	orr.w	r2, r2, r0, lsl #3
 80056bc:	600a      	str	r2, [r1, #0]
 80056be:	071a      	lsls	r2, r3, #28
 80056c0:	f57f af41 	bpl.w	8005546 <HAL_RCC_OscConfig+0xce>
 80056c4:	e791      	b.n	80055ea <HAL_RCC_OscConfig+0x172>
 80056c6:	6833      	ldr	r3, [r6, #0]
 80056c8:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80056cc:	6033      	str	r3, [r6, #0]
 80056ce:	f000 fc7d 	bl	8005fcc <HAL_GetTick>
 80056d2:	4607      	mov	r7, r0
 80056d4:	6833      	ldr	r3, [r6, #0]
 80056d6:	05da      	lsls	r2, r3, #23
 80056d8:	f53f af42 	bmi.w	8005560 <HAL_RCC_OscConfig+0xe8>
 80056dc:	f000 fc76 	bl	8005fcc <HAL_GetTick>
 80056e0:	1bc0      	subs	r0, r0, r7
 80056e2:	2802      	cmp	r0, #2
 80056e4:	d9f6      	bls.n	80056d4 <HAL_RCC_OscConfig+0x25c>
 80056e6:	2003      	movs	r0, #3
 80056e8:	b002      	add	sp, #8
 80056ea:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80056ee:	4a06      	ldr	r2, [pc, #24]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 80056f0:	6f13      	ldr	r3, [r2, #112]	; 0x70
 80056f2:	f043 0301 	orr.w	r3, r3, #1
 80056f6:	6713      	str	r3, [r2, #112]	; 0x70
 80056f8:	f000 fc68 	bl	8005fcc <HAL_GetTick>
 80056fc:	4f02      	ldr	r7, [pc, #8]	; (8005708 <HAL_RCC_OscConfig+0x290>)
 80056fe:	4606      	mov	r6, r0
 8005700:	f241 3888 	movw	r8, #5000	; 0x1388
 8005704:	e00b      	b.n	800571e <HAL_RCC_OscConfig+0x2a6>
 8005706:	bf00      	nop
 8005708:	40023800 	.word	0x40023800
 800570c:	42470000 	.word	0x42470000
 8005710:	40007000 	.word	0x40007000
 8005714:	f000 fc5a 	bl	8005fcc <HAL_GetTick>
 8005718:	1b80      	subs	r0, r0, r6
 800571a:	4540      	cmp	r0, r8
 800571c:	d8e3      	bhi.n	80056e6 <HAL_RCC_OscConfig+0x26e>
 800571e:	6f3b      	ldr	r3, [r7, #112]	; 0x70
 8005720:	079b      	lsls	r3, r3, #30
 8005722:	d5f7      	bpl.n	8005714 <HAL_RCC_OscConfig+0x29c>
 8005724:	2d00      	cmp	r5, #0
 8005726:	f43f af40 	beq.w	80055aa <HAL_RCC_OscConfig+0x132>
 800572a:	e044      	b.n	80057b6 <HAL_RCC_OscConfig+0x33e>
 800572c:	4a42      	ldr	r2, [pc, #264]	; (8005838 <HAL_RCC_OscConfig+0x3c0>)
 800572e:	4e43      	ldr	r6, [pc, #268]	; (800583c <HAL_RCC_OscConfig+0x3c4>)
 8005730:	6013      	str	r3, [r2, #0]
 8005732:	f000 fc4b 	bl	8005fcc <HAL_GetTick>
 8005736:	4605      	mov	r5, r0
 8005738:	e004      	b.n	8005744 <HAL_RCC_OscConfig+0x2cc>
 800573a:	f000 fc47 	bl	8005fcc <HAL_GetTick>
 800573e:	1b40      	subs	r0, r0, r5
 8005740:	2802      	cmp	r0, #2
 8005742:	d8d0      	bhi.n	80056e6 <HAL_RCC_OscConfig+0x26e>
 8005744:	6833      	ldr	r3, [r6, #0]
 8005746:	0799      	lsls	r1, r3, #30
 8005748:	d4f7      	bmi.n	800573a <HAL_RCC_OscConfig+0x2c2>
 800574a:	6823      	ldr	r3, [r4, #0]
 800574c:	e6f9      	b.n	8005542 <HAL_RCC_OscConfig+0xca>
 800574e:	2801      	cmp	r0, #1
 8005750:	f43f af48 	beq.w	80055e4 <HAL_RCC_OscConfig+0x16c>
 8005754:	686b      	ldr	r3, [r5, #4]
 8005756:	69e2      	ldr	r2, [r4, #28]
 8005758:	f403 0180 	and.w	r1, r3, #4194304	; 0x400000
 800575c:	4291      	cmp	r1, r2
 800575e:	f47f af64 	bne.w	800562a <HAL_RCC_OscConfig+0x1b2>
 8005762:	6a22      	ldr	r2, [r4, #32]
 8005764:	f003 013f 	and.w	r1, r3, #63	; 0x3f
 8005768:	4291      	cmp	r1, r2
 800576a:	f47f af5e 	bne.w	800562a <HAL_RCC_OscConfig+0x1b2>
 800576e:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8005770:	f647 72c0 	movw	r2, #32704	; 0x7fc0
 8005774:	401a      	ands	r2, r3
 8005776:	ebb2 1f81 	cmp.w	r2, r1, lsl #6
 800577a:	f47f af56 	bne.w	800562a <HAL_RCC_OscConfig+0x1b2>
 800577e:	6aa2      	ldr	r2, [r4, #40]	; 0x28
 8005780:	0852      	lsrs	r2, r2, #1
 8005782:	f403 3140 	and.w	r1, r3, #196608	; 0x30000
 8005786:	3a01      	subs	r2, #1
 8005788:	ebb1 4f02 	cmp.w	r1, r2, lsl #16
 800578c:	f47f af4d 	bne.w	800562a <HAL_RCC_OscConfig+0x1b2>
 8005790:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
 8005792:	f003 6370 	and.w	r3, r3, #251658240	; 0xf000000
 8005796:	ebb3 6f02 	cmp.w	r3, r2, lsl #24
 800579a:	bf14      	ite	ne
 800579c:	2001      	movne	r0, #1
 800579e:	2000      	moveq	r0, #0
 80057a0:	e720      	b.n	80055e4 <HAL_RCC_OscConfig+0x16c>
 80057a2:	4b26      	ldr	r3, [pc, #152]	; (800583c <HAL_RCC_OscConfig+0x3c4>)
 80057a4:	681a      	ldr	r2, [r3, #0]
 80057a6:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
 80057aa:	601a      	str	r2, [r3, #0]
 80057ac:	681a      	ldr	r2, [r3, #0]
 80057ae:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80057b2:	601a      	str	r2, [r3, #0]
 80057b4:	e76d      	b.n	8005692 <HAL_RCC_OscConfig+0x21a>
 80057b6:	4a21      	ldr	r2, [pc, #132]	; (800583c <HAL_RCC_OscConfig+0x3c4>)
 80057b8:	6c13      	ldr	r3, [r2, #64]	; 0x40
 80057ba:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 80057be:	6413      	str	r3, [r2, #64]	; 0x40
 80057c0:	e6f3      	b.n	80055aa <HAL_RCC_OscConfig+0x132>
 80057c2:	2001      	movs	r0, #1
 80057c4:	4770      	bx	lr
 80057c6:	4b1d      	ldr	r3, [pc, #116]	; (800583c <HAL_RCC_OscConfig+0x3c4>)
 80057c8:	6f1a      	ldr	r2, [r3, #112]	; 0x70
 80057ca:	f042 0204 	orr.w	r2, r2, #4
 80057ce:	671a      	str	r2, [r3, #112]	; 0x70
 80057d0:	6f1a      	ldr	r2, [r3, #112]	; 0x70
 80057d2:	f042 0201 	orr.w	r2, r2, #1
 80057d6:	671a      	str	r2, [r3, #112]	; 0x70
 80057d8:	e78e      	b.n	80056f8 <HAL_RCC_OscConfig+0x280>
 80057da:	f000 fbf7 	bl	8005fcc <HAL_GetTick>
 80057de:	4606      	mov	r6, r0
 80057e0:	e005      	b.n	80057ee <HAL_RCC_OscConfig+0x376>
 80057e2:	f000 fbf3 	bl	8005fcc <HAL_GetTick>
 80057e6:	1b80      	subs	r0, r0, r6
 80057e8:	2802      	cmp	r0, #2
 80057ea:	f63f af7c 	bhi.w	80056e6 <HAL_RCC_OscConfig+0x26e>
 80057ee:	682b      	ldr	r3, [r5, #0]
 80057f0:	0199      	lsls	r1, r3, #6
 80057f2:	d4f6      	bmi.n	80057e2 <HAL_RCC_OscConfig+0x36a>
 80057f4:	e9d4 3107 	ldrd	r3, r1, [r4, #28]
 80057f8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80057fa:	430b      	orrs	r3, r1
 80057fc:	ea43 1382 	orr.w	r3, r3, r2, lsl #6
 8005800:	e9d4 210a 	ldrd	r2, r1, [r4, #40]	; 0x28
 8005804:	0852      	lsrs	r2, r2, #1
 8005806:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
 800580a:	3a01      	subs	r2, #1
 800580c:	490a      	ldr	r1, [pc, #40]	; (8005838 <HAL_RCC_OscConfig+0x3c0>)
 800580e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 8005812:	2201      	movs	r2, #1
 8005814:	606b      	str	r3, [r5, #4]
 8005816:	660a      	str	r2, [r1, #96]	; 0x60
 8005818:	f000 fbd8 	bl	8005fcc <HAL_GetTick>
 800581c:	4d07      	ldr	r5, [pc, #28]	; (800583c <HAL_RCC_OscConfig+0x3c4>)
 800581e:	4604      	mov	r4, r0
 8005820:	e005      	b.n	800582e <HAL_RCC_OscConfig+0x3b6>
 8005822:	f000 fbd3 	bl	8005fcc <HAL_GetTick>
 8005826:	1b00      	subs	r0, r0, r4
 8005828:	2802      	cmp	r0, #2
 800582a:	f63f af5c 	bhi.w	80056e6 <HAL_RCC_OscConfig+0x26e>
 800582e:	682b      	ldr	r3, [r5, #0]
 8005830:	019a      	lsls	r2, r3, #6
 8005832:	d5f6      	bpl.n	8005822 <HAL_RCC_OscConfig+0x3aa>
 8005834:	e6d5      	b.n	80055e2 <HAL_RCC_OscConfig+0x16a>
 8005836:	bf00      	nop
 8005838:	42470000 	.word	0x42470000
 800583c:	40023800 	.word	0x40023800

08005840 <HAL_RCC_GetSysClockFreq>:
 8005840:	4916      	ldr	r1, [pc, #88]	; (800589c <HAL_RCC_GetSysClockFreq+0x5c>)
 8005842:	b508      	push	{r3, lr}
 8005844:	688b      	ldr	r3, [r1, #8]
 8005846:	f003 030c 	and.w	r3, r3, #12
 800584a:	2b04      	cmp	r3, #4
 800584c:	d01b      	beq.n	8005886 <HAL_RCC_GetSysClockFreq+0x46>
 800584e:	2b08      	cmp	r3, #8
 8005850:	d117      	bne.n	8005882 <HAL_RCC_GetSysClockFreq+0x42>
 8005852:	684a      	ldr	r2, [r1, #4]
 8005854:	684b      	ldr	r3, [r1, #4]
 8005856:	6849      	ldr	r1, [r1, #4]
 8005858:	f413 0380 	ands.w	r3, r3, #4194304	; 0x400000
 800585c:	f002 023f 	and.w	r2, r2, #63	; 0x3f
 8005860:	d113      	bne.n	800588a <HAL_RCC_GetSysClockFreq+0x4a>
 8005862:	480f      	ldr	r0, [pc, #60]	; (80058a0 <HAL_RCC_GetSysClockFreq+0x60>)
 8005864:	f3c1 1188 	ubfx	r1, r1, #6, #9
 8005868:	fba1 0100 	umull	r0, r1, r1, r0
 800586c:	f7fd fbf6 	bl	800305c <__aeabi_uldivmod>
 8005870:	4b0a      	ldr	r3, [pc, #40]	; (800589c <HAL_RCC_GetSysClockFreq+0x5c>)
 8005872:	685b      	ldr	r3, [r3, #4]
 8005874:	f3c3 4301 	ubfx	r3, r3, #16, #2
 8005878:	3301      	adds	r3, #1
 800587a:	005b      	lsls	r3, r3, #1
 800587c:	fbb0 f0f3 	udiv	r0, r0, r3
 8005880:	bd08      	pop	{r3, pc}
 8005882:	4807      	ldr	r0, [pc, #28]	; (80058a0 <HAL_RCC_GetSysClockFreq+0x60>)
 8005884:	bd08      	pop	{r3, pc}
 8005886:	4807      	ldr	r0, [pc, #28]	; (80058a4 <HAL_RCC_GetSysClockFreq+0x64>)
 8005888:	bd08      	pop	{r3, pc}
 800588a:	4806      	ldr	r0, [pc, #24]	; (80058a4 <HAL_RCC_GetSysClockFreq+0x64>)
 800588c:	f3c1 1188 	ubfx	r1, r1, #6, #9
 8005890:	2300      	movs	r3, #0
 8005892:	fba1 0100 	umull	r0, r1, r1, r0
 8005896:	f7fd fbe1 	bl	800305c <__aeabi_uldivmod>
 800589a:	e7e9      	b.n	8005870 <HAL_RCC_GetSysClockFreq+0x30>
 800589c:	40023800 	.word	0x40023800
 80058a0:	00f42400 	.word	0x00f42400
 80058a4:	007a1200 	.word	0x007a1200

080058a8 <HAL_RCC_ClockConfig>:
 80058a8:	2800      	cmp	r0, #0
 80058aa:	f000 8087 	beq.w	80059bc <HAL_RCC_ClockConfig+0x114>
 80058ae:	4a48      	ldr	r2, [pc, #288]	; (80059d0 <HAL_RCC_ClockConfig+0x128>)
 80058b0:	6813      	ldr	r3, [r2, #0]
 80058b2:	f003 0307 	and.w	r3, r3, #7
 80058b6:	428b      	cmp	r3, r1
 80058b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80058bc:	460d      	mov	r5, r1
 80058be:	4604      	mov	r4, r0
 80058c0:	d209      	bcs.n	80058d6 <HAL_RCC_ClockConfig+0x2e>
 80058c2:	b2cb      	uxtb	r3, r1
 80058c4:	7013      	strb	r3, [r2, #0]
 80058c6:	6813      	ldr	r3, [r2, #0]
 80058c8:	f003 0307 	and.w	r3, r3, #7
 80058cc:	428b      	cmp	r3, r1
 80058ce:	d002      	beq.n	80058d6 <HAL_RCC_ClockConfig+0x2e>
 80058d0:	2001      	movs	r0, #1
 80058d2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80058d6:	6823      	ldr	r3, [r4, #0]
 80058d8:	0798      	lsls	r0, r3, #30
 80058da:	d514      	bpl.n	8005906 <HAL_RCC_ClockConfig+0x5e>
 80058dc:	0759      	lsls	r1, r3, #29
 80058de:	d504      	bpl.n	80058ea <HAL_RCC_ClockConfig+0x42>
 80058e0:	493c      	ldr	r1, [pc, #240]	; (80059d4 <HAL_RCC_ClockConfig+0x12c>)
 80058e2:	688a      	ldr	r2, [r1, #8]
 80058e4:	f442 52e0 	orr.w	r2, r2, #7168	; 0x1c00
 80058e8:	608a      	str	r2, [r1, #8]
 80058ea:	071a      	lsls	r2, r3, #28
 80058ec:	d504      	bpl.n	80058f8 <HAL_RCC_ClockConfig+0x50>
 80058ee:	4939      	ldr	r1, [pc, #228]	; (80059d4 <HAL_RCC_ClockConfig+0x12c>)
 80058f0:	688a      	ldr	r2, [r1, #8]
 80058f2:	f442 4260 	orr.w	r2, r2, #57344	; 0xe000
 80058f6:	608a      	str	r2, [r1, #8]
 80058f8:	4936      	ldr	r1, [pc, #216]	; (80059d4 <HAL_RCC_ClockConfig+0x12c>)
 80058fa:	68a0      	ldr	r0, [r4, #8]
 80058fc:	688a      	ldr	r2, [r1, #8]
 80058fe:	f022 02f0 	bic.w	r2, r2, #240	; 0xf0
 8005902:	4302      	orrs	r2, r0
 8005904:	608a      	str	r2, [r1, #8]
 8005906:	07df      	lsls	r7, r3, #31
 8005908:	d521      	bpl.n	800594e <HAL_RCC_ClockConfig+0xa6>
 800590a:	6862      	ldr	r2, [r4, #4]
 800590c:	2a01      	cmp	r2, #1
 800590e:	d057      	beq.n	80059c0 <HAL_RCC_ClockConfig+0x118>
 8005910:	1e93      	subs	r3, r2, #2
 8005912:	2b01      	cmp	r3, #1
 8005914:	4b2f      	ldr	r3, [pc, #188]	; (80059d4 <HAL_RCC_ClockConfig+0x12c>)
 8005916:	681b      	ldr	r3, [r3, #0]
 8005918:	d94d      	bls.n	80059b6 <HAL_RCC_ClockConfig+0x10e>
 800591a:	0799      	lsls	r1, r3, #30
 800591c:	d5d8      	bpl.n	80058d0 <HAL_RCC_ClockConfig+0x28>
 800591e:	4e2d      	ldr	r6, [pc, #180]	; (80059d4 <HAL_RCC_ClockConfig+0x12c>)
 8005920:	68b3      	ldr	r3, [r6, #8]
 8005922:	f023 0303 	bic.w	r3, r3, #3
 8005926:	4313      	orrs	r3, r2
 8005928:	60b3      	str	r3, [r6, #8]
 800592a:	f000 fb4f 	bl	8005fcc <HAL_GetTick>
 800592e:	f241 3888 	movw	r8, #5000	; 0x1388
 8005932:	4607      	mov	r7, r0
 8005934:	e004      	b.n	8005940 <HAL_RCC_ClockConfig+0x98>
 8005936:	f000 fb49 	bl	8005fcc <HAL_GetTick>
 800593a:	1bc0      	subs	r0, r0, r7
 800593c:	4540      	cmp	r0, r8
 800593e:	d844      	bhi.n	80059ca <HAL_RCC_ClockConfig+0x122>
 8005940:	68b3      	ldr	r3, [r6, #8]
 8005942:	6862      	ldr	r2, [r4, #4]
 8005944:	f003 030c 	and.w	r3, r3, #12
 8005948:	ebb3 0f82 	cmp.w	r3, r2, lsl #2
 800594c:	d1f3      	bne.n	8005936 <HAL_RCC_ClockConfig+0x8e>
 800594e:	4a20      	ldr	r2, [pc, #128]	; (80059d0 <HAL_RCC_ClockConfig+0x128>)
 8005950:	6813      	ldr	r3, [r2, #0]
 8005952:	f003 0307 	and.w	r3, r3, #7
 8005956:	42ab      	cmp	r3, r5
 8005958:	d906      	bls.n	8005968 <HAL_RCC_ClockConfig+0xc0>
 800595a:	b2eb      	uxtb	r3, r5
 800595c:	7013      	strb	r3, [r2, #0]
 800595e:	6813      	ldr	r3, [r2, #0]
 8005960:	f003 0307 	and.w	r3, r3, #7
 8005964:	42ab      	cmp	r3, r5
 8005966:	d1b3      	bne.n	80058d0 <HAL_RCC_ClockConfig+0x28>
 8005968:	6823      	ldr	r3, [r4, #0]
 800596a:	075a      	lsls	r2, r3, #29
 800596c:	d506      	bpl.n	800597c <HAL_RCC_ClockConfig+0xd4>
 800596e:	4919      	ldr	r1, [pc, #100]	; (80059d4 <HAL_RCC_ClockConfig+0x12c>)
 8005970:	68e0      	ldr	r0, [r4, #12]
 8005972:	688a      	ldr	r2, [r1, #8]
 8005974:	f422 52e0 	bic.w	r2, r2, #7168	; 0x1c00
 8005978:	4302      	orrs	r2, r0
 800597a:	608a      	str	r2, [r1, #8]
 800597c:	071b      	lsls	r3, r3, #28
 800597e:	d507      	bpl.n	8005990 <HAL_RCC_ClockConfig+0xe8>
 8005980:	4a14      	ldr	r2, [pc, #80]	; (80059d4 <HAL_RCC_ClockConfig+0x12c>)
 8005982:	6921      	ldr	r1, [r4, #16]
 8005984:	6893      	ldr	r3, [r2, #8]
 8005986:	f423 4360 	bic.w	r3, r3, #57344	; 0xe000
 800598a:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
 800598e:	6093      	str	r3, [r2, #8]
 8005990:	f7ff ff56 	bl	8005840 <HAL_RCC_GetSysClockFreq>
 8005994:	4a0f      	ldr	r2, [pc, #60]	; (80059d4 <HAL_RCC_ClockConfig+0x12c>)
 8005996:	4c10      	ldr	r4, [pc, #64]	; (80059d8 <HAL_RCC_ClockConfig+0x130>)
 8005998:	6892      	ldr	r2, [r2, #8]
 800599a:	4910      	ldr	r1, [pc, #64]	; (80059dc <HAL_RCC_ClockConfig+0x134>)
 800599c:	f3c2 1203 	ubfx	r2, r2, #4, #4
 80059a0:	4603      	mov	r3, r0
 80059a2:	5ca2      	ldrb	r2, [r4, r2]
 80059a4:	480e      	ldr	r0, [pc, #56]	; (80059e0 <HAL_RCC_ClockConfig+0x138>)
 80059a6:	40d3      	lsrs	r3, r2
 80059a8:	6800      	ldr	r0, [r0, #0]
 80059aa:	600b      	str	r3, [r1, #0]
 80059ac:	f006 feba 	bl	800c724 <HAL_InitTick>
 80059b0:	2000      	movs	r0, #0
 80059b2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80059b6:	0198      	lsls	r0, r3, #6
 80059b8:	d4b1      	bmi.n	800591e <HAL_RCC_ClockConfig+0x76>
 80059ba:	e789      	b.n	80058d0 <HAL_RCC_ClockConfig+0x28>
 80059bc:	2001      	movs	r0, #1
 80059be:	4770      	bx	lr
 80059c0:	4b04      	ldr	r3, [pc, #16]	; (80059d4 <HAL_RCC_ClockConfig+0x12c>)
 80059c2:	681b      	ldr	r3, [r3, #0]
 80059c4:	039e      	lsls	r6, r3, #14
 80059c6:	d4aa      	bmi.n	800591e <HAL_RCC_ClockConfig+0x76>
 80059c8:	e782      	b.n	80058d0 <HAL_RCC_ClockConfig+0x28>
 80059ca:	2003      	movs	r0, #3
 80059cc:	e781      	b.n	80058d2 <HAL_RCC_ClockConfig+0x2a>
 80059ce:	bf00      	nop
 80059d0:	40023c00 	.word	0x40023c00
 80059d4:	40023800 	.word	0x40023800
 80059d8:	0800d9ec 	.word	0x0800d9ec
 80059dc:	20000178 	.word	0x20000178
 80059e0:	20000174 	.word	0x20000174

080059e4 <HAL_RCC_GetPCLK1Freq>:
 80059e4:	4b04      	ldr	r3, [pc, #16]	; (80059f8 <HAL_RCC_GetPCLK1Freq+0x14>)
 80059e6:	4905      	ldr	r1, [pc, #20]	; (80059fc <HAL_RCC_GetPCLK1Freq+0x18>)
 80059e8:	689b      	ldr	r3, [r3, #8]
 80059ea:	4a05      	ldr	r2, [pc, #20]	; (8005a00 <HAL_RCC_GetPCLK1Freq+0x1c>)
 80059ec:	6808      	ldr	r0, [r1, #0]
 80059ee:	f3c3 2382 	ubfx	r3, r3, #10, #3
 80059f2:	5cd3      	ldrb	r3, [r2, r3]
 80059f4:	40d8      	lsrs	r0, r3
 80059f6:	4770      	bx	lr
 80059f8:	40023800 	.word	0x40023800
 80059fc:	20000178 	.word	0x20000178
 8005a00:	0800d9fc 	.word	0x0800d9fc

08005a04 <HAL_RCC_GetPCLK2Freq>:
 8005a04:	4b04      	ldr	r3, [pc, #16]	; (8005a18 <HAL_RCC_GetPCLK2Freq+0x14>)
 8005a06:	4905      	ldr	r1, [pc, #20]	; (8005a1c <HAL_RCC_GetPCLK2Freq+0x18>)
 8005a08:	689b      	ldr	r3, [r3, #8]
 8005a0a:	4a05      	ldr	r2, [pc, #20]	; (8005a20 <HAL_RCC_GetPCLK2Freq+0x1c>)
 8005a0c:	6808      	ldr	r0, [r1, #0]
 8005a0e:	f3c3 3342 	ubfx	r3, r3, #13, #3
 8005a12:	5cd3      	ldrb	r3, [r2, r3]
 8005a14:	40d8      	lsrs	r0, r3
 8005a16:	4770      	bx	lr
 8005a18:	40023800 	.word	0x40023800
 8005a1c:	20000178 	.word	0x20000178
 8005a20:	0800d9fc 	.word	0x0800d9fc

08005a24 <HAL_RCC_GetClockConfig>:
 8005a24:	4b0e      	ldr	r3, [pc, #56]	; (8005a60 <HAL_RCC_GetClockConfig+0x3c>)
 8005a26:	220f      	movs	r2, #15
 8005a28:	6002      	str	r2, [r0, #0]
 8005a2a:	689a      	ldr	r2, [r3, #8]
 8005a2c:	f002 0203 	and.w	r2, r2, #3
 8005a30:	6042      	str	r2, [r0, #4]
 8005a32:	689a      	ldr	r2, [r3, #8]
 8005a34:	f002 02f0 	and.w	r2, r2, #240	; 0xf0
 8005a38:	6082      	str	r2, [r0, #8]
 8005a3a:	689a      	ldr	r2, [r3, #8]
 8005a3c:	f402 52e0 	and.w	r2, r2, #7168	; 0x1c00
 8005a40:	60c2      	str	r2, [r0, #12]
 8005a42:	689b      	ldr	r3, [r3, #8]
 8005a44:	08db      	lsrs	r3, r3, #3
 8005a46:	b410      	push	{r4}
 8005a48:	f403 53e0 	and.w	r3, r3, #7168	; 0x1c00
 8005a4c:	4c05      	ldr	r4, [pc, #20]	; (8005a64 <HAL_RCC_GetClockConfig+0x40>)
 8005a4e:	6103      	str	r3, [r0, #16]
 8005a50:	6823      	ldr	r3, [r4, #0]
 8005a52:	f85d 4b04 	ldr.w	r4, [sp], #4
 8005a56:	f003 0307 	and.w	r3, r3, #7
 8005a5a:	600b      	str	r3, [r1, #0]
 8005a5c:	4770      	bx	lr
 8005a5e:	bf00      	nop
 8005a60:	40023800 	.word	0x40023800
 8005a64:	40023c00 	.word	0x40023c00

08005a68 <HAL_RCCEx_PeriphCLKConfig>:
 8005a68:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005a6a:	6803      	ldr	r3, [r0, #0]
 8005a6c:	f013 0f05 	tst.w	r3, #5
 8005a70:	b083      	sub	sp, #12
 8005a72:	4604      	mov	r4, r0
 8005a74:	d105      	bne.n	8005a82 <HAL_RCCEx_PeriphCLKConfig+0x1a>
 8005a76:	f013 0302 	ands.w	r3, r3, #2
 8005a7a:	d13b      	bne.n	8005af4 <HAL_RCCEx_PeriphCLKConfig+0x8c>
 8005a7c:	4618      	mov	r0, r3
 8005a7e:	b003      	add	sp, #12
 8005a80:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005a82:	4b46      	ldr	r3, [pc, #280]	; (8005b9c <HAL_RCCEx_PeriphCLKConfig+0x134>)
 8005a84:	4e46      	ldr	r6, [pc, #280]	; (8005ba0 <HAL_RCCEx_PeriphCLKConfig+0x138>)
 8005a86:	2200      	movs	r2, #0
 8005a88:	669a      	str	r2, [r3, #104]	; 0x68
 8005a8a:	f000 fa9f 	bl	8005fcc <HAL_GetTick>
 8005a8e:	4605      	mov	r5, r0
 8005a90:	e004      	b.n	8005a9c <HAL_RCCEx_PeriphCLKConfig+0x34>
 8005a92:	f000 fa9b 	bl	8005fcc <HAL_GetTick>
 8005a96:	1b43      	subs	r3, r0, r5
 8005a98:	2b02      	cmp	r3, #2
 8005a9a:	d828      	bhi.n	8005aee <HAL_RCCEx_PeriphCLKConfig+0x86>
 8005a9c:	6833      	ldr	r3, [r6, #0]
 8005a9e:	011f      	lsls	r7, r3, #4
 8005aa0:	d4f7      	bmi.n	8005a92 <HAL_RCCEx_PeriphCLKConfig+0x2a>
 8005aa2:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
 8005aa6:	071b      	lsls	r3, r3, #28
 8005aa8:	ea43 1381 	orr.w	r3, r3, r1, lsl #6
 8005aac:	4a3b      	ldr	r2, [pc, #236]	; (8005b9c <HAL_RCCEx_PeriphCLKConfig+0x134>)
 8005aae:	f8c6 3084 	str.w	r3, [r6, #132]	; 0x84
 8005ab2:	2301      	movs	r3, #1
 8005ab4:	6693      	str	r3, [r2, #104]	; 0x68
 8005ab6:	f000 fa89 	bl	8005fcc <HAL_GetTick>
 8005aba:	4e39      	ldr	r6, [pc, #228]	; (8005ba0 <HAL_RCCEx_PeriphCLKConfig+0x138>)
 8005abc:	4605      	mov	r5, r0
 8005abe:	e004      	b.n	8005aca <HAL_RCCEx_PeriphCLKConfig+0x62>
 8005ac0:	f000 fa84 	bl	8005fcc <HAL_GetTick>
 8005ac4:	1b40      	subs	r0, r0, r5
 8005ac6:	2802      	cmp	r0, #2
 8005ac8:	d811      	bhi.n	8005aee <HAL_RCCEx_PeriphCLKConfig+0x86>
 8005aca:	6833      	ldr	r3, [r6, #0]
 8005acc:	0118      	lsls	r0, r3, #4
 8005ace:	d5f7      	bpl.n	8005ac0 <HAL_RCCEx_PeriphCLKConfig+0x58>
 8005ad0:	6823      	ldr	r3, [r4, #0]
 8005ad2:	e7d0      	b.n	8005a76 <HAL_RCCEx_PeriphCLKConfig+0xe>
 8005ad4:	f000 fa7a 	bl	8005fcc <HAL_GetTick>
 8005ad8:	f241 3788 	movw	r7, #5000	; 0x1388
 8005adc:	4606      	mov	r6, r0
 8005ade:	6f2b      	ldr	r3, [r5, #112]	; 0x70
 8005ae0:	079b      	lsls	r3, r3, #30
 8005ae2:	d43c      	bmi.n	8005b5e <HAL_RCCEx_PeriphCLKConfig+0xf6>
 8005ae4:	f000 fa72 	bl	8005fcc <HAL_GetTick>
 8005ae8:	1b80      	subs	r0, r0, r6
 8005aea:	42b8      	cmp	r0, r7
 8005aec:	d9f7      	bls.n	8005ade <HAL_RCCEx_PeriphCLKConfig+0x76>
 8005aee:	2003      	movs	r0, #3
 8005af0:	b003      	add	sp, #12
 8005af2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005af4:	4b2a      	ldr	r3, [pc, #168]	; (8005ba0 <HAL_RCCEx_PeriphCLKConfig+0x138>)
 8005af6:	4d2b      	ldr	r5, [pc, #172]	; (8005ba4 <HAL_RCCEx_PeriphCLKConfig+0x13c>)
 8005af8:	2200      	movs	r2, #0
 8005afa:	9201      	str	r2, [sp, #4]
 8005afc:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 8005afe:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 8005b02:	641a      	str	r2, [r3, #64]	; 0x40
 8005b04:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8005b06:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8005b0a:	9301      	str	r3, [sp, #4]
 8005b0c:	9b01      	ldr	r3, [sp, #4]
 8005b0e:	682b      	ldr	r3, [r5, #0]
 8005b10:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8005b14:	602b      	str	r3, [r5, #0]
 8005b16:	f000 fa59 	bl	8005fcc <HAL_GetTick>
 8005b1a:	4606      	mov	r6, r0
 8005b1c:	e004      	b.n	8005b28 <HAL_RCCEx_PeriphCLKConfig+0xc0>
 8005b1e:	f000 fa55 	bl	8005fcc <HAL_GetTick>
 8005b22:	1b83      	subs	r3, r0, r6
 8005b24:	2b02      	cmp	r3, #2
 8005b26:	d8e2      	bhi.n	8005aee <HAL_RCCEx_PeriphCLKConfig+0x86>
 8005b28:	682b      	ldr	r3, [r5, #0]
 8005b2a:	05d9      	lsls	r1, r3, #23
 8005b2c:	d5f7      	bpl.n	8005b1e <HAL_RCCEx_PeriphCLKConfig+0xb6>
 8005b2e:	4d1c      	ldr	r5, [pc, #112]	; (8005ba0 <HAL_RCCEx_PeriphCLKConfig+0x138>)
 8005b30:	68e3      	ldr	r3, [r4, #12]
 8005b32:	6f2a      	ldr	r2, [r5, #112]	; 0x70
 8005b34:	f412 7240 	ands.w	r2, r2, #768	; 0x300
 8005b38:	d012      	beq.n	8005b60 <HAL_RCCEx_PeriphCLKConfig+0xf8>
 8005b3a:	f403 7140 	and.w	r1, r3, #768	; 0x300
 8005b3e:	4291      	cmp	r1, r2
 8005b40:	d010      	beq.n	8005b64 <HAL_RCCEx_PeriphCLKConfig+0xfc>
 8005b42:	6f2b      	ldr	r3, [r5, #112]	; 0x70
 8005b44:	4a15      	ldr	r2, [pc, #84]	; (8005b9c <HAL_RCCEx_PeriphCLKConfig+0x134>)
 8005b46:	2101      	movs	r1, #1
 8005b48:	f8c2 1e40 	str.w	r1, [r2, #3648]	; 0xe40
 8005b4c:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8005b50:	2100      	movs	r1, #0
 8005b52:	f8c2 1e40 	str.w	r1, [r2, #3648]	; 0xe40
 8005b56:	672b      	str	r3, [r5, #112]	; 0x70
 8005b58:	6f2b      	ldr	r3, [r5, #112]	; 0x70
 8005b5a:	07da      	lsls	r2, r3, #31
 8005b5c:	d4ba      	bmi.n	8005ad4 <HAL_RCCEx_PeriphCLKConfig+0x6c>
 8005b5e:	68e3      	ldr	r3, [r4, #12]
 8005b60:	f403 7240 	and.w	r2, r3, #768	; 0x300
 8005b64:	f5b2 7f40 	cmp.w	r2, #768	; 0x300
 8005b68:	d00d      	beq.n	8005b86 <HAL_RCCEx_PeriphCLKConfig+0x11e>
 8005b6a:	490d      	ldr	r1, [pc, #52]	; (8005ba0 <HAL_RCCEx_PeriphCLKConfig+0x138>)
 8005b6c:	688a      	ldr	r2, [r1, #8]
 8005b6e:	f422 12f8 	bic.w	r2, r2, #2031616	; 0x1f0000
 8005b72:	608a      	str	r2, [r1, #8]
 8005b74:	4a0a      	ldr	r2, [pc, #40]	; (8005ba0 <HAL_RCCEx_PeriphCLKConfig+0x138>)
 8005b76:	6f11      	ldr	r1, [r2, #112]	; 0x70
 8005b78:	f3c3 030b 	ubfx	r3, r3, #0, #12
 8005b7c:	2000      	movs	r0, #0
 8005b7e:	430b      	orrs	r3, r1
 8005b80:	6713      	str	r3, [r2, #112]	; 0x70
 8005b82:	b003      	add	sp, #12
 8005b84:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005b86:	4806      	ldr	r0, [pc, #24]	; (8005ba0 <HAL_RCCEx_PeriphCLKConfig+0x138>)
 8005b88:	6882      	ldr	r2, [r0, #8]
 8005b8a:	f023 4170 	bic.w	r1, r3, #4026531840	; 0xf0000000
 8005b8e:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 8005b92:	f422 12f8 	bic.w	r2, r2, #2031616	; 0x1f0000
 8005b96:	430a      	orrs	r2, r1
 8005b98:	6082      	str	r2, [r0, #8]
 8005b9a:	e7eb      	b.n	8005b74 <HAL_RCCEx_PeriphCLKConfig+0x10c>
 8005b9c:	42470000 	.word	0x42470000
 8005ba0:	40023800 	.word	0x40023800
 8005ba4:	40007000 	.word	0x40007000

08005ba8 <HAL_GPIO_Init>:
 8005ba8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005bac:	2200      	movs	r2, #0
 8005bae:	680c      	ldr	r4, [r1, #0]
 8005bb0:	f8df a22c 	ldr.w	sl, [pc, #556]	; 8005de0 <HAL_GPIO_Init+0x238>
 8005bb4:	4e83      	ldr	r6, [pc, #524]	; (8005dc4 <HAL_GPIO_Init+0x21c>)
 8005bb6:	b085      	sub	sp, #20
 8005bb8:	4613      	mov	r3, r2
 8005bba:	4689      	mov	r9, r1
 8005bbc:	e005      	b.n	8005bca <HAL_GPIO_Init+0x22>
 8005bbe:	3301      	adds	r3, #1
 8005bc0:	2b10      	cmp	r3, #16
 8005bc2:	f102 0202 	add.w	r2, r2, #2
 8005bc6:	f000 8089 	beq.w	8005cdc <HAL_GPIO_Init+0x134>
 8005bca:	2101      	movs	r1, #1
 8005bcc:	4099      	lsls	r1, r3
 8005bce:	ea01 0b04 	and.w	fp, r1, r4
 8005bd2:	43a1      	bics	r1, r4
 8005bd4:	d1f3      	bne.n	8005bbe <HAL_GPIO_Init+0x16>
 8005bd6:	f8d9 c004 	ldr.w	ip, [r9, #4]
 8005bda:	f00c 0103 	and.w	r1, ip, #3
 8005bde:	1e4d      	subs	r5, r1, #1
 8005be0:	2d01      	cmp	r5, #1
 8005be2:	d97e      	bls.n	8005ce2 <HAL_GPIO_Init+0x13a>
 8005be4:	2903      	cmp	r1, #3
 8005be6:	f040 80be 	bne.w	8005d66 <HAL_GPIO_Init+0x1be>
 8005bea:	4091      	lsls	r1, r2
 8005bec:	43cd      	mvns	r5, r1
 8005bee:	6807      	ldr	r7, [r0, #0]
 8005bf0:	403d      	ands	r5, r7
 8005bf2:	4329      	orrs	r1, r5
 8005bf4:	f41c 3f40 	tst.w	ip, #196608	; 0x30000
 8005bf8:	6001      	str	r1, [r0, #0]
 8005bfa:	d0e0      	beq.n	8005bbe <HAL_GPIO_Init+0x16>
 8005bfc:	2100      	movs	r1, #0
 8005bfe:	9103      	str	r1, [sp, #12]
 8005c00:	f8da 1044 	ldr.w	r1, [sl, #68]	; 0x44
 8005c04:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8005c08:	f8ca 1044 	str.w	r1, [sl, #68]	; 0x44
 8005c0c:	f8da 1044 	ldr.w	r1, [sl, #68]	; 0x44
 8005c10:	f401 4180 	and.w	r1, r1, #16384	; 0x4000
 8005c14:	9103      	str	r1, [sp, #12]
 8005c16:	9903      	ldr	r1, [sp, #12]
 8005c18:	f023 0103 	bic.w	r1, r3, #3
 8005c1c:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8005c20:	f501 319c 	add.w	r1, r1, #79872	; 0x13800
 8005c24:	f003 0703 	and.w	r7, r3, #3
 8005c28:	f8d1 e008 	ldr.w	lr, [r1, #8]
 8005c2c:	00bf      	lsls	r7, r7, #2
 8005c2e:	250f      	movs	r5, #15
 8005c30:	40bd      	lsls	r5, r7
 8005c32:	ea2e 0805 	bic.w	r8, lr, r5
 8005c36:	4d64      	ldr	r5, [pc, #400]	; (8005dc8 <HAL_GPIO_Init+0x220>)
 8005c38:	42a8      	cmp	r0, r5
 8005c3a:	d024      	beq.n	8005c86 <HAL_GPIO_Init+0xde>
 8005c3c:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8005c40:	42a8      	cmp	r0, r5
 8005c42:	f000 8094 	beq.w	8005d6e <HAL_GPIO_Init+0x1c6>
 8005c46:	4d61      	ldr	r5, [pc, #388]	; (8005dcc <HAL_GPIO_Init+0x224>)
 8005c48:	42a8      	cmp	r0, r5
 8005c4a:	f000 8097 	beq.w	8005d7c <HAL_GPIO_Init+0x1d4>
 8005c4e:	4d60      	ldr	r5, [pc, #384]	; (8005dd0 <HAL_GPIO_Init+0x228>)
 8005c50:	42a8      	cmp	r0, r5
 8005c52:	f000 809a 	beq.w	8005d8a <HAL_GPIO_Init+0x1e2>
 8005c56:	4d5f      	ldr	r5, [pc, #380]	; (8005dd4 <HAL_GPIO_Init+0x22c>)
 8005c58:	42a8      	cmp	r0, r5
 8005c5a:	f000 809d 	beq.w	8005d98 <HAL_GPIO_Init+0x1f0>
 8005c5e:	4d5e      	ldr	r5, [pc, #376]	; (8005dd8 <HAL_GPIO_Init+0x230>)
 8005c60:	42a8      	cmp	r0, r5
 8005c62:	f000 80a0 	beq.w	8005da6 <HAL_GPIO_Init+0x1fe>
 8005c66:	4d5d      	ldr	r5, [pc, #372]	; (8005ddc <HAL_GPIO_Init+0x234>)
 8005c68:	42a8      	cmp	r0, r5
 8005c6a:	f000 80a3 	beq.w	8005db4 <HAL_GPIO_Init+0x20c>
 8005c6e:	f8df e174 	ldr.w	lr, [pc, #372]	; 8005de4 <HAL_GPIO_Init+0x23c>
 8005c72:	4570      	cmp	r0, lr
 8005c74:	bf0c      	ite	eq
 8005c76:	f04f 0e07 	moveq.w	lr, #7
 8005c7a:	f04f 0e08 	movne.w	lr, #8
 8005c7e:	fa0e f707 	lsl.w	r7, lr, r7
 8005c82:	ea48 0807 	orr.w	r8, r8, r7
 8005c86:	f8c1 8008 	str.w	r8, [r1, #8]
 8005c8a:	68b1      	ldr	r1, [r6, #8]
 8005c8c:	ea6f 070b 	mvn.w	r7, fp
 8005c90:	f41c 1f80 	tst.w	ip, #1048576	; 0x100000
 8005c94:	bf0c      	ite	eq
 8005c96:	4039      	andeq	r1, r7
 8005c98:	ea4b 0101 	orrne.w	r1, fp, r1
 8005c9c:	60b1      	str	r1, [r6, #8]
 8005c9e:	68f5      	ldr	r5, [r6, #12]
 8005ca0:	f41c 1f00 	tst.w	ip, #2097152	; 0x200000
 8005ca4:	bf0c      	ite	eq
 8005ca6:	403d      	andeq	r5, r7
 8005ca8:	ea4b 0505 	orrne.w	r5, fp, r5
 8005cac:	60f5      	str	r5, [r6, #12]
 8005cae:	6875      	ldr	r5, [r6, #4]
 8005cb0:	f41c 3f00 	tst.w	ip, #131072	; 0x20000
 8005cb4:	bf0c      	ite	eq
 8005cb6:	403d      	andeq	r5, r7
 8005cb8:	ea4b 0505 	orrne.w	r5, fp, r5
 8005cbc:	6075      	str	r5, [r6, #4]
 8005cbe:	6831      	ldr	r1, [r6, #0]
 8005cc0:	f41c 3f80 	tst.w	ip, #65536	; 0x10000
 8005cc4:	f103 0301 	add.w	r3, r3, #1
 8005cc8:	bf0c      	ite	eq
 8005cca:	4039      	andeq	r1, r7
 8005ccc:	ea4b 0101 	orrne.w	r1, fp, r1
 8005cd0:	2b10      	cmp	r3, #16
 8005cd2:	6031      	str	r1, [r6, #0]
 8005cd4:	f102 0202 	add.w	r2, r2, #2
 8005cd8:	f47f af77 	bne.w	8005bca <HAL_GPIO_Init+0x22>
 8005cdc:	b005      	add	sp, #20
 8005cde:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ce2:	f8d9 500c 	ldr.w	r5, [r9, #12]
 8005ce6:	6887      	ldr	r7, [r0, #8]
 8005ce8:	fa05 f802 	lsl.w	r8, r5, r2
 8005cec:	2503      	movs	r5, #3
 8005cee:	fa05 fe02 	lsl.w	lr, r5, r2
 8005cf2:	ea27 070e 	bic.w	r7, r7, lr
 8005cf6:	ea48 0707 	orr.w	r7, r8, r7
 8005cfa:	6087      	str	r7, [r0, #8]
 8005cfc:	6847      	ldr	r7, [r0, #4]
 8005cfe:	ea6f 050e 	mvn.w	r5, lr
 8005d02:	ea27 0e0b 	bic.w	lr, r7, fp
 8005d06:	f3cc 1700 	ubfx	r7, ip, #4, #1
 8005d0a:	409f      	lsls	r7, r3
 8005d0c:	ea47 070e 	orr.w	r7, r7, lr
 8005d10:	6047      	str	r7, [r0, #4]
 8005d12:	68c7      	ldr	r7, [r0, #12]
 8005d14:	ea07 0e05 	and.w	lr, r7, r5
 8005d18:	f8d9 7008 	ldr.w	r7, [r9, #8]
 8005d1c:	4097      	lsls	r7, r2
 8005d1e:	ea47 070e 	orr.w	r7, r7, lr
 8005d22:	2902      	cmp	r1, #2
 8005d24:	60c7      	str	r7, [r0, #12]
 8005d26:	fa01 f102 	lsl.w	r1, r1, r2
 8005d2a:	f47f af60 	bne.w	8005bee <HAL_GPIO_Init+0x46>
 8005d2e:	ea4f 0ed3 	mov.w	lr, r3, lsr #3
 8005d32:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
 8005d36:	f003 0807 	and.w	r8, r3, #7
 8005d3a:	f8de 7020 	ldr.w	r7, [lr, #32]
 8005d3e:	9700      	str	r7, [sp, #0]
 8005d40:	f8d9 7010 	ldr.w	r7, [r9, #16]
 8005d44:	ea4f 0888 	mov.w	r8, r8, lsl #2
 8005d48:	fa07 f708 	lsl.w	r7, r7, r8
 8005d4c:	9701      	str	r7, [sp, #4]
 8005d4e:	270f      	movs	r7, #15
 8005d50:	fa07 f808 	lsl.w	r8, r7, r8
 8005d54:	9f00      	ldr	r7, [sp, #0]
 8005d56:	ea27 0808 	bic.w	r8, r7, r8
 8005d5a:	9f01      	ldr	r7, [sp, #4]
 8005d5c:	ea47 0708 	orr.w	r7, r7, r8
 8005d60:	f8ce 7020 	str.w	r7, [lr, #32]
 8005d64:	e743      	b.n	8005bee <HAL_GPIO_Init+0x46>
 8005d66:	2503      	movs	r5, #3
 8005d68:	4095      	lsls	r5, r2
 8005d6a:	43ed      	mvns	r5, r5
 8005d6c:	e7d1      	b.n	8005d12 <HAL_GPIO_Init+0x16a>
 8005d6e:	f04f 0e01 	mov.w	lr, #1
 8005d72:	fa0e f707 	lsl.w	r7, lr, r7
 8005d76:	ea48 0807 	orr.w	r8, r8, r7
 8005d7a:	e784      	b.n	8005c86 <HAL_GPIO_Init+0xde>
 8005d7c:	f04f 0e02 	mov.w	lr, #2
 8005d80:	fa0e f707 	lsl.w	r7, lr, r7
 8005d84:	ea48 0807 	orr.w	r8, r8, r7
 8005d88:	e77d      	b.n	8005c86 <HAL_GPIO_Init+0xde>
 8005d8a:	f04f 0e03 	mov.w	lr, #3
 8005d8e:	fa0e f707 	lsl.w	r7, lr, r7
 8005d92:	ea48 0807 	orr.w	r8, r8, r7
 8005d96:	e776      	b.n	8005c86 <HAL_GPIO_Init+0xde>
 8005d98:	f04f 0e04 	mov.w	lr, #4
 8005d9c:	fa0e f707 	lsl.w	r7, lr, r7
 8005da0:	ea48 0807 	orr.w	r8, r8, r7
 8005da4:	e76f      	b.n	8005c86 <HAL_GPIO_Init+0xde>
 8005da6:	f04f 0e05 	mov.w	lr, #5
 8005daa:	fa0e f707 	lsl.w	r7, lr, r7
 8005dae:	ea48 0807 	orr.w	r8, r8, r7
 8005db2:	e768      	b.n	8005c86 <HAL_GPIO_Init+0xde>
 8005db4:	f04f 0e06 	mov.w	lr, #6
 8005db8:	fa0e f707 	lsl.w	r7, lr, r7
 8005dbc:	ea48 0807 	orr.w	r8, r8, r7
 8005dc0:	e761      	b.n	8005c86 <HAL_GPIO_Init+0xde>
 8005dc2:	bf00      	nop
 8005dc4:	40013c00 	.word	0x40013c00
 8005dc8:	40020000 	.word	0x40020000
 8005dcc:	40020800 	.word	0x40020800
 8005dd0:	40020c00 	.word	0x40020c00
 8005dd4:	40021000 	.word	0x40021000
 8005dd8:	40021400 	.word	0x40021400
 8005ddc:	40021800 	.word	0x40021800
 8005de0:	40023800 	.word	0x40023800
 8005de4:	40021c00 	.word	0x40021c00

08005de8 <HAL_GPIO_WritePin>:
 8005de8:	b902      	cbnz	r2, 8005dec <HAL_GPIO_WritePin+0x4>
 8005dea:	0409      	lsls	r1, r1, #16
 8005dec:	6181      	str	r1, [r0, #24]
 8005dee:	4770      	bx	lr

08005df0 <HAL_GPIO_EXTI_IRQHandler>:
 8005df0:	4a04      	ldr	r2, [pc, #16]	; (8005e04 <HAL_GPIO_EXTI_IRQHandler+0x14>)
 8005df2:	6951      	ldr	r1, [r2, #20]
 8005df4:	4201      	tst	r1, r0
 8005df6:	d100      	bne.n	8005dfa <HAL_GPIO_EXTI_IRQHandler+0xa>
 8005df8:	4770      	bx	lr
 8005dfa:	b508      	push	{r3, lr}
 8005dfc:	6150      	str	r0, [r2, #20]
 8005dfe:	f7fe fae1 	bl	80043c4 <HAL_GPIO_EXTI_Callback>
 8005e02:	bd08      	pop	{r3, pc}
 8005e04:	40013c00 	.word	0x40013c00

08005e08 <HAL_DMA_Abort>:
 8005e08:	b570      	push	{r4, r5, r6, lr}
 8005e0a:	4604      	mov	r4, r0
 8005e0c:	6d86      	ldr	r6, [r0, #88]	; 0x58
 8005e0e:	f000 f8dd 	bl	8005fcc <HAL_GetTick>
 8005e12:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
 8005e16:	2b02      	cmp	r3, #2
 8005e18:	d006      	beq.n	8005e28 <HAL_DMA_Abort+0x20>
 8005e1a:	2300      	movs	r3, #0
 8005e1c:	2280      	movs	r2, #128	; 0x80
 8005e1e:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
 8005e22:	6562      	str	r2, [r4, #84]	; 0x54
 8005e24:	2001      	movs	r0, #1
 8005e26:	bd70      	pop	{r4, r5, r6, pc}
 8005e28:	6823      	ldr	r3, [r4, #0]
 8005e2a:	681a      	ldr	r2, [r3, #0]
 8005e2c:	f022 0216 	bic.w	r2, r2, #22
 8005e30:	601a      	str	r2, [r3, #0]
 8005e32:	695a      	ldr	r2, [r3, #20]
 8005e34:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 8005e38:	615a      	str	r2, [r3, #20]
 8005e3a:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8005e3c:	4605      	mov	r5, r0
 8005e3e:	b332      	cbz	r2, 8005e8e <HAL_DMA_Abort+0x86>
 8005e40:	681a      	ldr	r2, [r3, #0]
 8005e42:	f022 0208 	bic.w	r2, r2, #8
 8005e46:	601a      	str	r2, [r3, #0]
 8005e48:	681a      	ldr	r2, [r3, #0]
 8005e4a:	f022 0201 	bic.w	r2, r2, #1
 8005e4e:	601a      	str	r2, [r3, #0]
 8005e50:	e005      	b.n	8005e5e <HAL_DMA_Abort+0x56>
 8005e52:	f000 f8bb 	bl	8005fcc <HAL_GetTick>
 8005e56:	1b43      	subs	r3, r0, r5
 8005e58:	2b05      	cmp	r3, #5
 8005e5a:	d80f      	bhi.n	8005e7c <HAL_DMA_Abort+0x74>
 8005e5c:	6823      	ldr	r3, [r4, #0]
 8005e5e:	681b      	ldr	r3, [r3, #0]
 8005e60:	f013 0301 	ands.w	r3, r3, #1
 8005e64:	d1f5      	bne.n	8005e52 <HAL_DMA_Abort+0x4a>
 8005e66:	6de1      	ldr	r1, [r4, #92]	; 0x5c
 8005e68:	223f      	movs	r2, #63	; 0x3f
 8005e6a:	408a      	lsls	r2, r1
 8005e6c:	2101      	movs	r1, #1
 8005e6e:	60b2      	str	r2, [r6, #8]
 8005e70:	f884 1035 	strb.w	r1, [r4, #53]	; 0x35
 8005e74:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
 8005e78:	4618      	mov	r0, r3
 8005e7a:	bd70      	pop	{r4, r5, r6, pc}
 8005e7c:	2003      	movs	r0, #3
 8005e7e:	2220      	movs	r2, #32
 8005e80:	2300      	movs	r3, #0
 8005e82:	6562      	str	r2, [r4, #84]	; 0x54
 8005e84:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
 8005e88:	f884 0035 	strb.w	r0, [r4, #53]	; 0x35
 8005e8c:	bd70      	pop	{r4, r5, r6, pc}
 8005e8e:	6ca2      	ldr	r2, [r4, #72]	; 0x48
 8005e90:	2a00      	cmp	r2, #0
 8005e92:	d1d5      	bne.n	8005e40 <HAL_DMA_Abort+0x38>
 8005e94:	e7d8      	b.n	8005e48 <HAL_DMA_Abort+0x40>
 8005e96:	bf00      	nop

08005e98 <HAL_DMA_Abort_IT>:
 8005e98:	f890 3035 	ldrb.w	r3, [r0, #53]	; 0x35
 8005e9c:	2b02      	cmp	r3, #2
 8005e9e:	d003      	beq.n	8005ea8 <HAL_DMA_Abort_IT+0x10>
 8005ea0:	2380      	movs	r3, #128	; 0x80
 8005ea2:	6543      	str	r3, [r0, #84]	; 0x54
 8005ea4:	2001      	movs	r0, #1
 8005ea6:	4770      	bx	lr
 8005ea8:	6802      	ldr	r2, [r0, #0]
 8005eaa:	2305      	movs	r3, #5
 8005eac:	f880 3035 	strb.w	r3, [r0, #53]	; 0x35
 8005eb0:	6813      	ldr	r3, [r2, #0]
 8005eb2:	f023 0301 	bic.w	r3, r3, #1
 8005eb6:	2000      	movs	r0, #0
 8005eb8:	6013      	str	r3, [r2, #0]
 8005eba:	4770      	bx	lr

08005ebc <HAL_DMA_GetState>:
 8005ebc:	f890 0035 	ldrb.w	r0, [r0, #53]	; 0x35
 8005ec0:	4770      	bx	lr
 8005ec2:	bf00      	nop

08005ec4 <HAL_NVIC_SetPriorityGrouping>:
 8005ec4:	4907      	ldr	r1, [pc, #28]	; (8005ee4 <HAL_NVIC_SetPriorityGrouping+0x20>)
 8005ec6:	68ca      	ldr	r2, [r1, #12]
 8005ec8:	0203      	lsls	r3, r0, #8
 8005eca:	f64f 00ff 	movw	r0, #63743	; 0xf8ff
 8005ece:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 8005ed2:	4002      	ands	r2, r0
 8005ed4:	4313      	orrs	r3, r2
 8005ed6:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 8005eda:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8005ede:	60cb      	str	r3, [r1, #12]
 8005ee0:	4770      	bx	lr
 8005ee2:	bf00      	nop
 8005ee4:	e000ed00 	.word	0xe000ed00

08005ee8 <HAL_NVIC_SetPriority>:
 8005ee8:	4b1c      	ldr	r3, [pc, #112]	; (8005f5c <HAL_NVIC_SetPriority+0x74>)
 8005eea:	68db      	ldr	r3, [r3, #12]
 8005eec:	f3c3 2302 	ubfx	r3, r3, #8, #3
 8005ef0:	b500      	push	{lr}
 8005ef2:	f1c3 0e07 	rsb	lr, r3, #7
 8005ef6:	f1be 0f04 	cmp.w	lr, #4
 8005efa:	f103 0c04 	add.w	ip, r3, #4
 8005efe:	bf28      	it	cs
 8005f00:	f04f 0e04 	movcs.w	lr, #4
 8005f04:	f1bc 0f06 	cmp.w	ip, #6
 8005f08:	d91b      	bls.n	8005f42 <HAL_NVIC_SetPriority+0x5a>
 8005f0a:	3b03      	subs	r3, #3
 8005f0c:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 8005f10:	fa0c fc03 	lsl.w	ip, ip, r3
 8005f14:	ea22 020c 	bic.w	r2, r2, ip
 8005f18:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 8005f1c:	fa0c fc0e 	lsl.w	ip, ip, lr
 8005f20:	ea21 010c 	bic.w	r1, r1, ip
 8005f24:	4099      	lsls	r1, r3
 8005f26:	2800      	cmp	r0, #0
 8005f28:	ea41 0102 	orr.w	r1, r1, r2
 8005f2c:	db0c      	blt.n	8005f48 <HAL_NVIC_SetPriority+0x60>
 8005f2e:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
 8005f32:	0109      	lsls	r1, r1, #4
 8005f34:	f500 4061 	add.w	r0, r0, #57600	; 0xe100
 8005f38:	b2c9      	uxtb	r1, r1
 8005f3a:	f880 1300 	strb.w	r1, [r0, #768]	; 0x300
 8005f3e:	f85d fb04 	ldr.w	pc, [sp], #4
 8005f42:	2200      	movs	r2, #0
 8005f44:	4613      	mov	r3, r2
 8005f46:	e7e7      	b.n	8005f18 <HAL_NVIC_SetPriority+0x30>
 8005f48:	4b05      	ldr	r3, [pc, #20]	; (8005f60 <HAL_NVIC_SetPriority+0x78>)
 8005f4a:	f000 000f 	and.w	r0, r0, #15
 8005f4e:	0109      	lsls	r1, r1, #4
 8005f50:	4403      	add	r3, r0
 8005f52:	b2c9      	uxtb	r1, r1
 8005f54:	7619      	strb	r1, [r3, #24]
 8005f56:	f85d fb04 	ldr.w	pc, [sp], #4
 8005f5a:	bf00      	nop
 8005f5c:	e000ed00 	.word	0xe000ed00
 8005f60:	e000ecfc 	.word	0xe000ecfc

08005f64 <HAL_NVIC_EnableIRQ>:
 8005f64:	2800      	cmp	r0, #0
 8005f66:	db08      	blt.n	8005f7a <HAL_NVIC_EnableIRQ+0x16>
 8005f68:	4a04      	ldr	r2, [pc, #16]	; (8005f7c <HAL_NVIC_EnableIRQ+0x18>)
 8005f6a:	0941      	lsrs	r1, r0, #5
 8005f6c:	2301      	movs	r3, #1
 8005f6e:	f000 001f 	and.w	r0, r0, #31
 8005f72:	fa03 f000 	lsl.w	r0, r3, r0
 8005f76:	f842 0021 	str.w	r0, [r2, r1, lsl #2]
 8005f7a:	4770      	bx	lr
 8005f7c:	e000e100 	.word	0xe000e100

08005f80 <HAL_Init>:
 8005f80:	b508      	push	{r3, lr}
 8005f82:	4b0b      	ldr	r3, [pc, #44]	; (8005fb0 <HAL_Init+0x30>)
 8005f84:	681a      	ldr	r2, [r3, #0]
 8005f86:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8005f8a:	601a      	str	r2, [r3, #0]
 8005f8c:	681a      	ldr	r2, [r3, #0]
 8005f8e:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8005f92:	601a      	str	r2, [r3, #0]
 8005f94:	681a      	ldr	r2, [r3, #0]
 8005f96:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8005f9a:	601a      	str	r2, [r3, #0]
 8005f9c:	2003      	movs	r0, #3
 8005f9e:	f7ff ff91 	bl	8005ec4 <HAL_NVIC_SetPriorityGrouping>
 8005fa2:	200f      	movs	r0, #15
 8005fa4:	f006 fbbe 	bl	800c724 <HAL_InitTick>
 8005fa8:	f7fe fb68 	bl	800467c <HAL_MspInit>
 8005fac:	2000      	movs	r0, #0
 8005fae:	bd08      	pop	{r3, pc}
 8005fb0:	40023c00 	.word	0x40023c00

08005fb4 <HAL_IncTick>:
 8005fb4:	4a03      	ldr	r2, [pc, #12]	; (8005fc4 <HAL_IncTick+0x10>)
 8005fb6:	4b04      	ldr	r3, [pc, #16]	; (8005fc8 <HAL_IncTick+0x14>)
 8005fb8:	6811      	ldr	r1, [r2, #0]
 8005fba:	781b      	ldrb	r3, [r3, #0]
 8005fbc:	440b      	add	r3, r1
 8005fbe:	6013      	str	r3, [r2, #0]
 8005fc0:	4770      	bx	lr
 8005fc2:	bf00      	nop
 8005fc4:	200005f4 	.word	0x200005f4
 8005fc8:	20000170 	.word	0x20000170

08005fcc <HAL_GetTick>:
 8005fcc:	4b01      	ldr	r3, [pc, #4]	; (8005fd4 <HAL_GetTick+0x8>)
 8005fce:	6818      	ldr	r0, [r3, #0]
 8005fd0:	4770      	bx	lr
 8005fd2:	bf00      	nop
 8005fd4:	200005f4 	.word	0x200005f4

08005fd8 <HAL_Delay>:
 8005fd8:	b538      	push	{r3, r4, r5, lr}
 8005fda:	4604      	mov	r4, r0
 8005fdc:	f7ff fff6 	bl	8005fcc <HAL_GetTick>
 8005fe0:	1c63      	adds	r3, r4, #1
 8005fe2:	4605      	mov	r5, r0
 8005fe4:	d002      	beq.n	8005fec <HAL_Delay+0x14>
 8005fe6:	4b04      	ldr	r3, [pc, #16]	; (8005ff8 <HAL_Delay+0x20>)
 8005fe8:	781b      	ldrb	r3, [r3, #0]
 8005fea:	441c      	add	r4, r3
 8005fec:	f7ff ffee 	bl	8005fcc <HAL_GetTick>
 8005ff0:	1b43      	subs	r3, r0, r5
 8005ff2:	42a3      	cmp	r3, r4
 8005ff4:	d3fa      	bcc.n	8005fec <HAL_Delay+0x14>
 8005ff6:	bd38      	pop	{r3, r4, r5, pc}
 8005ff8:	20000170 	.word	0x20000170

08005ffc <SystemInit>:
 8005ffc:	4a03      	ldr	r2, [pc, #12]	; (800600c <SystemInit+0x10>)
 8005ffe:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8006002:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8006006:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800600a:	4770      	bx	lr
 800600c:	e000ed00 	.word	0xe000ed00

08006010 <_sbrk>:
 8006010:	b510      	push	{r4, lr}
 8006012:	4c0c      	ldr	r4, [pc, #48]	; (8006044 <_sbrk+0x34>)
 8006014:	4b0c      	ldr	r3, [pc, #48]	; (8006048 <_sbrk+0x38>)
 8006016:	490d      	ldr	r1, [pc, #52]	; (800604c <_sbrk+0x3c>)
 8006018:	6822      	ldr	r2, [r4, #0]
 800601a:	1a59      	subs	r1, r3, r1
 800601c:	b12a      	cbz	r2, 800602a <_sbrk+0x1a>
 800601e:	4410      	add	r0, r2
 8006020:	4288      	cmp	r0, r1
 8006022:	d807      	bhi.n	8006034 <_sbrk+0x24>
 8006024:	6020      	str	r0, [r4, #0]
 8006026:	4610      	mov	r0, r2
 8006028:	bd10      	pop	{r4, pc}
 800602a:	4a09      	ldr	r2, [pc, #36]	; (8006050 <_sbrk+0x40>)
 800602c:	6022      	str	r2, [r4, #0]
 800602e:	4410      	add	r0, r2
 8006030:	4288      	cmp	r0, r1
 8006032:	d9f7      	bls.n	8006024 <_sbrk+0x14>
 8006034:	f7fa f8f0 	bl	8000218 <__errno>
 8006038:	230c      	movs	r3, #12
 800603a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800603e:	6003      	str	r3, [r0, #0]
 8006040:	4610      	mov	r0, r2
 8006042:	bd10      	pop	{r4, pc}
 8006044:	200005f8 	.word	0x200005f8
 8006048:	20020000 	.word	0x20020000
 800604c:	00000400 	.word	0x00000400
 8006050:	200051b8 	.word	0x200051b8

08006054 <SPI_WaitFlagStateUntilTimeout>:
 8006054:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006058:	b083      	sub	sp, #12
 800605a:	461f      	mov	r7, r3
 800605c:	4614      	mov	r4, r2
 800605e:	460d      	mov	r5, r1
 8006060:	4680      	mov	r8, r0
 8006062:	f7ff ffb3 	bl	8005fcc <HAL_GetTick>
 8006066:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8006068:	443b      	add	r3, r7
 800606a:	1a1e      	subs	r6, r3, r0
 800606c:	f7ff ffae 	bl	8005fcc <HAL_GetTick>
 8006070:	4b2d      	ldr	r3, [pc, #180]	; (8006128 <SPI_WaitFlagStateUntilTimeout+0xd4>)
 8006072:	681a      	ldr	r2, [r3, #0]
 8006074:	f3c2 32cb 	ubfx	r2, r2, #15, #12
 8006078:	fb06 f202 	mul.w	r2, r6, r2
 800607c:	4681      	mov	r9, r0
 800607e:	9201      	str	r2, [sp, #4]
 8006080:	1c7b      	adds	r3, r7, #1
 8006082:	f8d8 2000 	ldr.w	r2, [r8]
 8006086:	d10b      	bne.n	80060a0 <SPI_WaitFlagStateUntilTimeout+0x4c>
 8006088:	6893      	ldr	r3, [r2, #8]
 800608a:	ea35 0303 	bics.w	r3, r5, r3
 800608e:	bf0c      	ite	eq
 8006090:	2301      	moveq	r3, #1
 8006092:	2300      	movne	r3, #0
 8006094:	42a3      	cmp	r3, r4
 8006096:	d1f7      	bne.n	8006088 <SPI_WaitFlagStateUntilTimeout+0x34>
 8006098:	2000      	movs	r0, #0
 800609a:	b003      	add	sp, #12
 800609c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80060a0:	6893      	ldr	r3, [r2, #8]
 80060a2:	ea35 0303 	bics.w	r3, r5, r3
 80060a6:	bf0c      	ite	eq
 80060a8:	2301      	moveq	r3, #1
 80060aa:	2300      	movne	r3, #0
 80060ac:	42a3      	cmp	r3, r4
 80060ae:	d0f3      	beq.n	8006098 <SPI_WaitFlagStateUntilTimeout+0x44>
 80060b0:	f7ff ff8c 	bl	8005fcc <HAL_GetTick>
 80060b4:	eba0 0009 	sub.w	r0, r0, r9
 80060b8:	42b0      	cmp	r0, r6
 80060ba:	d208      	bcs.n	80060ce <SPI_WaitFlagStateUntilTimeout+0x7a>
 80060bc:	9b01      	ldr	r3, [sp, #4]
 80060be:	2b00      	cmp	r3, #0
 80060c0:	9b01      	ldr	r3, [sp, #4]
 80060c2:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80060c6:	bf08      	it	eq
 80060c8:	2600      	moveq	r6, #0
 80060ca:	9301      	str	r3, [sp, #4]
 80060cc:	e7d8      	b.n	8006080 <SPI_WaitFlagStateUntilTimeout+0x2c>
 80060ce:	e9d8 3100 	ldrd	r3, r1, [r8]
 80060d2:	685a      	ldr	r2, [r3, #4]
 80060d4:	f5b1 7f82 	cmp.w	r1, #260	; 0x104
 80060d8:	f022 02e0 	bic.w	r2, r2, #224	; 0xe0
 80060dc:	605a      	str	r2, [r3, #4]
 80060de:	d015      	beq.n	800610c <SPI_WaitFlagStateUntilTimeout+0xb8>
 80060e0:	f8d8 2028 	ldr.w	r2, [r8, #40]	; 0x28
 80060e4:	f5b2 5f00 	cmp.w	r2, #8192	; 0x2000
 80060e8:	d007      	beq.n	80060fa <SPI_WaitFlagStateUntilTimeout+0xa6>
 80060ea:	2201      	movs	r2, #1
 80060ec:	2300      	movs	r3, #0
 80060ee:	f888 2051 	strb.w	r2, [r8, #81]	; 0x51
 80060f2:	f888 3050 	strb.w	r3, [r8, #80]	; 0x50
 80060f6:	2003      	movs	r0, #3
 80060f8:	e7cf      	b.n	800609a <SPI_WaitFlagStateUntilTimeout+0x46>
 80060fa:	681a      	ldr	r2, [r3, #0]
 80060fc:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8006100:	601a      	str	r2, [r3, #0]
 8006102:	681a      	ldr	r2, [r3, #0]
 8006104:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006108:	601a      	str	r2, [r3, #0]
 800610a:	e7ee      	b.n	80060ea <SPI_WaitFlagStateUntilTimeout+0x96>
 800610c:	f8d8 2008 	ldr.w	r2, [r8, #8]
 8006110:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8006114:	d002      	beq.n	800611c <SPI_WaitFlagStateUntilTimeout+0xc8>
 8006116:	f5b2 6f80 	cmp.w	r2, #1024	; 0x400
 800611a:	d1e1      	bne.n	80060e0 <SPI_WaitFlagStateUntilTimeout+0x8c>
 800611c:	681a      	ldr	r2, [r3, #0]
 800611e:	f022 0240 	bic.w	r2, r2, #64	; 0x40
 8006122:	601a      	str	r2, [r3, #0]
 8006124:	e7dc      	b.n	80060e0 <SPI_WaitFlagStateUntilTimeout+0x8c>
 8006126:	bf00      	nop
 8006128:	20000178 	.word	0x20000178

0800612c <SPI_EndRxTxTransaction>:
 800612c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006130:	b084      	sub	sp, #16
 8006132:	4688      	mov	r8, r1
 8006134:	4617      	mov	r7, r2
 8006136:	9200      	str	r2, [sp, #0]
 8006138:	460b      	mov	r3, r1
 800613a:	2201      	movs	r2, #1
 800613c:	2102      	movs	r1, #2
 800613e:	4604      	mov	r4, r0
 8006140:	f7ff ff88 	bl	8006054 <SPI_WaitFlagStateUntilTimeout>
 8006144:	bb38      	cbnz	r0, 8006196 <SPI_EndRxTxTransaction+0x6a>
 8006146:	4a18      	ldr	r2, [pc, #96]	; (80061a8 <SPI_EndRxTxTransaction+0x7c>)
 8006148:	6815      	ldr	r5, [r2, #0]
 800614a:	4a18      	ldr	r2, [pc, #96]	; (80061ac <SPI_EndRxTxTransaction+0x80>)
 800614c:	fba2 3505 	umull	r3, r5, r2, r5
 8006150:	0d6d      	lsrs	r5, r5, #21
 8006152:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 8006156:	fb02 f505 	mul.w	r5, r2, r5
 800615a:	6862      	ldr	r2, [r4, #4]
 800615c:	9503      	str	r5, [sp, #12]
 800615e:	f5b2 7f82 	cmp.w	r2, #260	; 0x104
 8006162:	4606      	mov	r6, r0
 8006164:	d107      	bne.n	8006176 <SPI_EndRxTxTransaction+0x4a>
 8006166:	e00d      	b.n	8006184 <SPI_EndRxTxTransaction+0x58>
 8006168:	9b03      	ldr	r3, [sp, #12]
 800616a:	6821      	ldr	r1, [r4, #0]
 800616c:	3b01      	subs	r3, #1
 800616e:	9303      	str	r3, [sp, #12]
 8006170:	688b      	ldr	r3, [r1, #8]
 8006172:	061b      	lsls	r3, r3, #24
 8006174:	d502      	bpl.n	800617c <SPI_EndRxTxTransaction+0x50>
 8006176:	9b03      	ldr	r3, [sp, #12]
 8006178:	2b00      	cmp	r3, #0
 800617a:	d1f5      	bne.n	8006168 <SPI_EndRxTxTransaction+0x3c>
 800617c:	4630      	mov	r0, r6
 800617e:	b004      	add	sp, #16
 8006180:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006184:	4602      	mov	r2, r0
 8006186:	9700      	str	r7, [sp, #0]
 8006188:	4643      	mov	r3, r8
 800618a:	2180      	movs	r1, #128	; 0x80
 800618c:	4620      	mov	r0, r4
 800618e:	f7ff ff61 	bl	8006054 <SPI_WaitFlagStateUntilTimeout>
 8006192:	2800      	cmp	r0, #0
 8006194:	d0f2      	beq.n	800617c <SPI_EndRxTxTransaction+0x50>
 8006196:	6d63      	ldr	r3, [r4, #84]	; 0x54
 8006198:	2603      	movs	r6, #3
 800619a:	f043 0320 	orr.w	r3, r3, #32
 800619e:	4630      	mov	r0, r6
 80061a0:	6563      	str	r3, [r4, #84]	; 0x54
 80061a2:	b004      	add	sp, #16
 80061a4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80061a8:	20000178 	.word	0x20000178
 80061ac:	165e9f81 	.word	0x165e9f81

080061b0 <HAL_SPI_Init>:
 80061b0:	2800      	cmp	r0, #0
 80061b2:	d05c      	beq.n	800626e <HAL_SPI_Init+0xbe>
 80061b4:	6a41      	ldr	r1, [r0, #36]	; 0x24
 80061b6:	b570      	push	{r4, r5, r6, lr}
 80061b8:	4604      	mov	r4, r0
 80061ba:	2900      	cmp	r1, #0
 80061bc:	d047      	beq.n	800624e <HAL_SPI_Init+0x9e>
 80061be:	2300      	movs	r3, #0
 80061c0:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80061c4:	f894 2051 	ldrb.w	r2, [r4, #81]	; 0x51
 80061c8:	2300      	movs	r3, #0
 80061ca:	62a3      	str	r3, [r4, #40]	; 0x28
 80061cc:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 80061d0:	2a00      	cmp	r2, #0
 80061d2:	d042      	beq.n	800625a <HAL_SPI_Init+0xaa>
 80061d4:	469c      	mov	ip, r3
 80061d6:	6825      	ldr	r5, [r4, #0]
 80061d8:	68a2      	ldr	r2, [r4, #8]
 80061da:	2302      	movs	r3, #2
 80061dc:	f884 3051 	strb.w	r3, [r4, #81]	; 0x51
 80061e0:	682b      	ldr	r3, [r5, #0]
 80061e2:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80061e6:	602b      	str	r3, [r5, #0]
 80061e8:	6863      	ldr	r3, [r4, #4]
 80061ea:	f402 4204 	and.w	r2, r2, #33792	; 0x8400
 80061ee:	f403 7382 	and.w	r3, r3, #260	; 0x104
 80061f2:	4313      	orrs	r3, r2
 80061f4:	68e2      	ldr	r2, [r4, #12]
 80061f6:	f402 6200 	and.w	r2, r2, #2048	; 0x800
 80061fa:	4313      	orrs	r3, r2
 80061fc:	6922      	ldr	r2, [r4, #16]
 80061fe:	f002 0202 	and.w	r2, r2, #2
 8006202:	4313      	orrs	r3, r2
 8006204:	6962      	ldr	r2, [r4, #20]
 8006206:	f002 0201 	and.w	r2, r2, #1
 800620a:	431a      	orrs	r2, r3
 800620c:	69e3      	ldr	r3, [r4, #28]
 800620e:	f001 0010 	and.w	r0, r1, #16
 8006212:	f003 0638 	and.w	r6, r3, #56	; 0x38
 8006216:	69a1      	ldr	r1, [r4, #24]
 8006218:	6a23      	ldr	r3, [r4, #32]
 800621a:	f003 0e80 	and.w	lr, r3, #128	; 0x80
 800621e:	f401 7300 	and.w	r3, r1, #512	; 0x200
 8006222:	4313      	orrs	r3, r2
 8006224:	4333      	orrs	r3, r6
 8006226:	0c09      	lsrs	r1, r1, #16
 8006228:	ea43 030e 	orr.w	r3, r3, lr
 800622c:	f001 0104 	and.w	r1, r1, #4
 8006230:	ea43 030c 	orr.w	r3, r3, ip
 8006234:	4301      	orrs	r1, r0
 8006236:	602b      	str	r3, [r5, #0]
 8006238:	6069      	str	r1, [r5, #4]
 800623a:	69eb      	ldr	r3, [r5, #28]
 800623c:	2000      	movs	r0, #0
 800623e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8006242:	2201      	movs	r2, #1
 8006244:	61eb      	str	r3, [r5, #28]
 8006246:	6560      	str	r0, [r4, #84]	; 0x54
 8006248:	f884 2051 	strb.w	r2, [r4, #81]	; 0x51
 800624c:	bd70      	pop	{r4, r5, r6, pc}
 800624e:	6843      	ldr	r3, [r0, #4]
 8006250:	f5b3 7f82 	cmp.w	r3, #260	; 0x104
 8006254:	d0b6      	beq.n	80061c4 <HAL_SPI_Init+0x14>
 8006256:	61c1      	str	r1, [r0, #28]
 8006258:	e7b4      	b.n	80061c4 <HAL_SPI_Init+0x14>
 800625a:	f884 0050 	strb.w	r0, [r4, #80]	; 0x50
 800625e:	4620      	mov	r0, r4
 8006260:	f7fe fb50 	bl	8004904 <HAL_SPI_MspInit>
 8006264:	e9d4 1309 	ldrd	r1, r3, [r4, #36]	; 0x24
 8006268:	f403 5c00 	and.w	ip, r3, #8192	; 0x2000
 800626c:	e7b3      	b.n	80061d6 <HAL_SPI_Init+0x26>
 800626e:	2001      	movs	r0, #1
 8006270:	4770      	bx	lr
 8006272:	bf00      	nop

08006274 <HAL_SPI_Transmit>:
 8006274:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006278:	4604      	mov	r4, r0
 800627a:	f890 0050 	ldrb.w	r0, [r0, #80]	; 0x50
 800627e:	2801      	cmp	r0, #1
 8006280:	b083      	sub	sp, #12
 8006282:	d07c      	beq.n	800637e <HAL_SPI_Transmit+0x10a>
 8006284:	461d      	mov	r5, r3
 8006286:	2301      	movs	r3, #1
 8006288:	f884 3050 	strb.w	r3, [r4, #80]	; 0x50
 800628c:	4689      	mov	r9, r1
 800628e:	4690      	mov	r8, r2
 8006290:	f7ff fe9c 	bl	8005fcc <HAL_GetTick>
 8006294:	f894 3051 	ldrb.w	r3, [r4, #81]	; 0x51
 8006298:	2b01      	cmp	r3, #1
 800629a:	4606      	mov	r6, r0
 800629c:	b2df      	uxtb	r7, r3
 800629e:	d007      	beq.n	80062b0 <HAL_SPI_Transmit+0x3c>
 80062a0:	2702      	movs	r7, #2
 80062a2:	2300      	movs	r3, #0
 80062a4:	4638      	mov	r0, r7
 80062a6:	f884 3050 	strb.w	r3, [r4, #80]	; 0x50
 80062aa:	b003      	add	sp, #12
 80062ac:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80062b0:	f1b9 0f00 	cmp.w	r9, #0
 80062b4:	d0f5      	beq.n	80062a2 <HAL_SPI_Transmit+0x2e>
 80062b6:	f1b8 0f00 	cmp.w	r8, #0
 80062ba:	d0f2      	beq.n	80062a2 <HAL_SPI_Transmit+0x2e>
 80062bc:	68a2      	ldr	r2, [r4, #8]
 80062be:	6820      	ldr	r0, [r4, #0]
 80062c0:	f8c4 9030 	str.w	r9, [r4, #48]	; 0x30
 80062c4:	2300      	movs	r3, #0
 80062c6:	2103      	movs	r1, #3
 80062c8:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 80062cc:	f884 1051 	strb.w	r1, [r4, #81]	; 0x51
 80062d0:	e9c4 3310 	strd	r3, r3, [r4, #64]	; 0x40
 80062d4:	6563      	str	r3, [r4, #84]	; 0x54
 80062d6:	f8a4 8034 	strh.w	r8, [r4, #52]	; 0x34
 80062da:	f8a4 8036 	strh.w	r8, [r4, #54]	; 0x36
 80062de:	63a3      	str	r3, [r4, #56]	; 0x38
 80062e0:	87a3      	strh	r3, [r4, #60]	; 0x3c
 80062e2:	87e3      	strh	r3, [r4, #62]	; 0x3e
 80062e4:	d07f      	beq.n	80063e6 <HAL_SPI_Transmit+0x172>
 80062e6:	6803      	ldr	r3, [r0, #0]
 80062e8:	065b      	lsls	r3, r3, #25
 80062ea:	4602      	mov	r2, r0
 80062ec:	d403      	bmi.n	80062f6 <HAL_SPI_Transmit+0x82>
 80062ee:	6803      	ldr	r3, [r0, #0]
 80062f0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80062f4:	6003      	str	r3, [r0, #0]
 80062f6:	68e3      	ldr	r3, [r4, #12]
 80062f8:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
 80062fc:	6863      	ldr	r3, [r4, #4]
 80062fe:	d043      	beq.n	8006388 <HAL_SPI_Transmit+0x114>
 8006300:	2b00      	cmp	r3, #0
 8006302:	f000 8095 	beq.w	8006430 <HAL_SPI_Transmit+0x1bc>
 8006306:	f1b8 0f01 	cmp.w	r8, #1
 800630a:	f000 8091 	beq.w	8006430 <HAL_SPI_Transmit+0x1bc>
 800630e:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 8006310:	b29b      	uxth	r3, r3
 8006312:	b1db      	cbz	r3, 800634c <HAL_SPI_Transmit+0xd8>
 8006314:	2d00      	cmp	r5, #0
 8006316:	f000 80c9 	beq.w	80064ac <HAL_SPI_Transmit+0x238>
 800631a:	1c6b      	adds	r3, r5, #1
 800631c:	d17a      	bne.n	8006414 <HAL_SPI_Transmit+0x1a0>
 800631e:	6823      	ldr	r3, [r4, #0]
 8006320:	689a      	ldr	r2, [r3, #8]
 8006322:	0790      	lsls	r0, r2, #30
 8006324:	f140 808f 	bpl.w	8006446 <HAL_SPI_Transmit+0x1d2>
 8006328:	6b22      	ldr	r2, [r4, #48]	; 0x30
 800632a:	7812      	ldrb	r2, [r2, #0]
 800632c:	731a      	strb	r2, [r3, #12]
 800632e:	f8b4 c036 	ldrh.w	ip, [r4, #54]	; 0x36
 8006332:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8006334:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
 8006338:	fa1f fc8c 	uxth.w	ip, ip
 800633c:	f8a4 c036 	strh.w	ip, [r4, #54]	; 0x36
 8006340:	8ee1      	ldrh	r1, [r4, #54]	; 0x36
 8006342:	3301      	adds	r3, #1
 8006344:	b289      	uxth	r1, r1
 8006346:	6323      	str	r3, [r4, #48]	; 0x30
 8006348:	2900      	cmp	r1, #0
 800634a:	d1e8      	bne.n	800631e <HAL_SPI_Transmit+0xaa>
 800634c:	4632      	mov	r2, r6
 800634e:	4629      	mov	r1, r5
 8006350:	4620      	mov	r0, r4
 8006352:	f7ff feeb 	bl	800612c <SPI_EndRxTxTransaction>
 8006356:	b108      	cbz	r0, 800635c <HAL_SPI_Transmit+0xe8>
 8006358:	2320      	movs	r3, #32
 800635a:	6563      	str	r3, [r4, #84]	; 0x54
 800635c:	68a3      	ldr	r3, [r4, #8]
 800635e:	b933      	cbnz	r3, 800636e <HAL_SPI_Transmit+0xfa>
 8006360:	6822      	ldr	r2, [r4, #0]
 8006362:	9301      	str	r3, [sp, #4]
 8006364:	68d3      	ldr	r3, [r2, #12]
 8006366:	9301      	str	r3, [sp, #4]
 8006368:	6893      	ldr	r3, [r2, #8]
 800636a:	9301      	str	r3, [sp, #4]
 800636c:	9b01      	ldr	r3, [sp, #4]
 800636e:	6d63      	ldr	r3, [r4, #84]	; 0x54
 8006370:	2b00      	cmp	r3, #0
 8006372:	d196      	bne.n	80062a2 <HAL_SPI_Transmit+0x2e>
 8006374:	2201      	movs	r2, #1
 8006376:	f884 2051 	strb.w	r2, [r4, #81]	; 0x51
 800637a:	461f      	mov	r7, r3
 800637c:	e791      	b.n	80062a2 <HAL_SPI_Transmit+0x2e>
 800637e:	2702      	movs	r7, #2
 8006380:	4638      	mov	r0, r7
 8006382:	b003      	add	sp, #12
 8006384:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006388:	2b00      	cmp	r3, #0
 800638a:	d17c      	bne.n	8006486 <HAL_SPI_Transmit+0x212>
 800638c:	4649      	mov	r1, r9
 800638e:	f831 3b02 	ldrh.w	r3, [r1], #2
 8006392:	60c3      	str	r3, [r0, #12]
 8006394:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 8006396:	6321      	str	r1, [r4, #48]	; 0x30
 8006398:	3b01      	subs	r3, #1
 800639a:	b29b      	uxth	r3, r3
 800639c:	86e3      	strh	r3, [r4, #54]	; 0x36
 800639e:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 80063a0:	b29b      	uxth	r3, r3
 80063a2:	2b00      	cmp	r3, #0
 80063a4:	d0d2      	beq.n	800634c <HAL_SPI_Transmit+0xd8>
 80063a6:	2d00      	cmp	r5, #0
 80063a8:	f000 8095 	beq.w	80064d6 <HAL_SPI_Transmit+0x262>
 80063ac:	1c69      	adds	r1, r5, #1
 80063ae:	d161      	bne.n	8006474 <HAL_SPI_Transmit+0x200>
 80063b0:	6883      	ldr	r3, [r0, #8]
 80063b2:	079b      	lsls	r3, r3, #30
 80063b4:	d50f      	bpl.n	80063d6 <HAL_SPI_Transmit+0x162>
 80063b6:	6b22      	ldr	r2, [r4, #48]	; 0x30
 80063b8:	f832 3b02 	ldrh.w	r3, [r2], #2
 80063bc:	60c3      	str	r3, [r0, #12]
 80063be:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 80063c0:	6322      	str	r2, [r4, #48]	; 0x30
 80063c2:	3b01      	subs	r3, #1
 80063c4:	b29b      	uxth	r3, r3
 80063c6:	86e3      	strh	r3, [r4, #54]	; 0x36
 80063c8:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 80063ca:	b29b      	uxth	r3, r3
 80063cc:	2b00      	cmp	r3, #0
 80063ce:	d0bd      	beq.n	800634c <HAL_SPI_Transmit+0xd8>
 80063d0:	6883      	ldr	r3, [r0, #8]
 80063d2:	079b      	lsls	r3, r3, #30
 80063d4:	d4ef      	bmi.n	80063b6 <HAL_SPI_Transmit+0x142>
 80063d6:	f7ff fdf9 	bl	8005fcc <HAL_GetTick>
 80063da:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 80063dc:	b29b      	uxth	r3, r3
 80063de:	2b00      	cmp	r3, #0
 80063e0:	d0b4      	beq.n	800634c <HAL_SPI_Transmit+0xd8>
 80063e2:	6820      	ldr	r0, [r4, #0]
 80063e4:	e7e4      	b.n	80063b0 <HAL_SPI_Transmit+0x13c>
 80063e6:	6803      	ldr	r3, [r0, #0]
 80063e8:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 80063ec:	6003      	str	r3, [r0, #0]
 80063ee:	6803      	ldr	r3, [r0, #0]
 80063f0:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 80063f4:	6003      	str	r3, [r0, #0]
 80063f6:	e776      	b.n	80062e6 <HAL_SPI_Transmit+0x72>
 80063f8:	6b22      	ldr	r2, [r4, #48]	; 0x30
 80063fa:	7812      	ldrb	r2, [r2, #0]
 80063fc:	731a      	strb	r2, [r3, #12]
 80063fe:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 8006400:	6b22      	ldr	r2, [r4, #48]	; 0x30
 8006402:	3b01      	subs	r3, #1
 8006404:	3201      	adds	r2, #1
 8006406:	b29b      	uxth	r3, r3
 8006408:	86e3      	strh	r3, [r4, #54]	; 0x36
 800640a:	6322      	str	r2, [r4, #48]	; 0x30
 800640c:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 800640e:	b29b      	uxth	r3, r3
 8006410:	2b00      	cmp	r3, #0
 8006412:	d09b      	beq.n	800634c <HAL_SPI_Transmit+0xd8>
 8006414:	6823      	ldr	r3, [r4, #0]
 8006416:	689a      	ldr	r2, [r3, #8]
 8006418:	0791      	lsls	r1, r2, #30
 800641a:	d4ed      	bmi.n	80063f8 <HAL_SPI_Transmit+0x184>
 800641c:	f7ff fdd6 	bl	8005fcc <HAL_GetTick>
 8006420:	1b80      	subs	r0, r0, r6
 8006422:	4285      	cmp	r5, r0
 8006424:	d8f2      	bhi.n	800640c <HAL_SPI_Transmit+0x198>
 8006426:	2301      	movs	r3, #1
 8006428:	f884 3051 	strb.w	r3, [r4, #81]	; 0x51
 800642c:	2703      	movs	r7, #3
 800642e:	e738      	b.n	80062a2 <HAL_SPI_Transmit+0x2e>
 8006430:	f899 3000 	ldrb.w	r3, [r9]
 8006434:	7303      	strb	r3, [r0, #12]
 8006436:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8006438:	3301      	adds	r3, #1
 800643a:	6323      	str	r3, [r4, #48]	; 0x30
 800643c:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 800643e:	3b01      	subs	r3, #1
 8006440:	b29b      	uxth	r3, r3
 8006442:	86e3      	strh	r3, [r4, #54]	; 0x36
 8006444:	e763      	b.n	800630e <HAL_SPI_Transmit+0x9a>
 8006446:	f7ff fdc1 	bl	8005fcc <HAL_GetTick>
 800644a:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 800644c:	b29b      	uxth	r3, r3
 800644e:	2b00      	cmp	r3, #0
 8006450:	f47f af65 	bne.w	800631e <HAL_SPI_Transmit+0xaa>
 8006454:	e77a      	b.n	800634c <HAL_SPI_Transmit+0xd8>
 8006456:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006458:	f831 3b02 	ldrh.w	r3, [r1], #2
 800645c:	60d3      	str	r3, [r2, #12]
 800645e:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 8006460:	6321      	str	r1, [r4, #48]	; 0x30
 8006462:	3b01      	subs	r3, #1
 8006464:	b29b      	uxth	r3, r3
 8006466:	86e3      	strh	r3, [r4, #54]	; 0x36
 8006468:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 800646a:	b29b      	uxth	r3, r3
 800646c:	2b00      	cmp	r3, #0
 800646e:	f43f af6d 	beq.w	800634c <HAL_SPI_Transmit+0xd8>
 8006472:	6822      	ldr	r2, [r4, #0]
 8006474:	6893      	ldr	r3, [r2, #8]
 8006476:	0799      	lsls	r1, r3, #30
 8006478:	d4ed      	bmi.n	8006456 <HAL_SPI_Transmit+0x1e2>
 800647a:	f7ff fda7 	bl	8005fcc <HAL_GetTick>
 800647e:	1b80      	subs	r0, r0, r6
 8006480:	4285      	cmp	r5, r0
 8006482:	d9d0      	bls.n	8006426 <HAL_SPI_Transmit+0x1b2>
 8006484:	e7f0      	b.n	8006468 <HAL_SPI_Transmit+0x1f4>
 8006486:	f1b8 0f01 	cmp.w	r8, #1
 800648a:	d188      	bne.n	800639e <HAL_SPI_Transmit+0x12a>
 800648c:	e77e      	b.n	800638c <HAL_SPI_Transmit+0x118>
 800648e:	6b22      	ldr	r2, [r4, #48]	; 0x30
 8006490:	7812      	ldrb	r2, [r2, #0]
 8006492:	731a      	strb	r2, [r3, #12]
 8006494:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 8006496:	6b22      	ldr	r2, [r4, #48]	; 0x30
 8006498:	3b01      	subs	r3, #1
 800649a:	b29b      	uxth	r3, r3
 800649c:	86e3      	strh	r3, [r4, #54]	; 0x36
 800649e:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 80064a0:	3201      	adds	r2, #1
 80064a2:	b29b      	uxth	r3, r3
 80064a4:	6322      	str	r2, [r4, #48]	; 0x30
 80064a6:	2b00      	cmp	r3, #0
 80064a8:	f43f af50 	beq.w	800634c <HAL_SPI_Transmit+0xd8>
 80064ac:	6823      	ldr	r3, [r4, #0]
 80064ae:	689a      	ldr	r2, [r3, #8]
 80064b0:	0792      	lsls	r2, r2, #30
 80064b2:	d4ec      	bmi.n	800648e <HAL_SPI_Transmit+0x21a>
 80064b4:	f7ff fd8a 	bl	8005fcc <HAL_GetTick>
 80064b8:	e7b5      	b.n	8006426 <HAL_SPI_Transmit+0x1b2>
 80064ba:	6b22      	ldr	r2, [r4, #48]	; 0x30
 80064bc:	f832 3b02 	ldrh.w	r3, [r2], #2
 80064c0:	60c3      	str	r3, [r0, #12]
 80064c2:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 80064c4:	6322      	str	r2, [r4, #48]	; 0x30
 80064c6:	3b01      	subs	r3, #1
 80064c8:	b29b      	uxth	r3, r3
 80064ca:	86e3      	strh	r3, [r4, #54]	; 0x36
 80064cc:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 80064ce:	b29b      	uxth	r3, r3
 80064d0:	2b00      	cmp	r3, #0
 80064d2:	f43f af3b 	beq.w	800634c <HAL_SPI_Transmit+0xd8>
 80064d6:	6883      	ldr	r3, [r0, #8]
 80064d8:	079a      	lsls	r2, r3, #30
 80064da:	d5eb      	bpl.n	80064b4 <HAL_SPI_Transmit+0x240>
 80064dc:	e7ed      	b.n	80064ba <HAL_SPI_Transmit+0x246>
 80064de:	bf00      	nop

080064e0 <HAL_SPI_ErrorCallback>:
 80064e0:	4770      	bx	lr
 80064e2:	bf00      	nop

080064e4 <HAL_SPI_IRQHandler>:
 80064e4:	b530      	push	{r4, r5, lr}
 80064e6:	6802      	ldr	r2, [r0, #0]
 80064e8:	6851      	ldr	r1, [r2, #4]
 80064ea:	6893      	ldr	r3, [r2, #8]
 80064ec:	f013 0f40 	tst.w	r3, #64	; 0x40
 80064f0:	b085      	sub	sp, #20
 80064f2:	4604      	mov	r4, r0
 80064f4:	f3c3 1580 	ubfx	r5, r3, #6, #1
 80064f8:	d105      	bne.n	8006506 <HAL_SPI_IRQHandler+0x22>
 80064fa:	f013 0f01 	tst.w	r3, #1
 80064fe:	d002      	beq.n	8006506 <HAL_SPI_IRQHandler+0x22>
 8006500:	f011 0f40 	tst.w	r1, #64	; 0x40
 8006504:	d17a      	bne.n	80065fc <HAL_SPI_IRQHandler+0x118>
 8006506:	0798      	lsls	r0, r3, #30
 8006508:	d501      	bpl.n	800650e <HAL_SPI_IRQHandler+0x2a>
 800650a:	0608      	lsls	r0, r1, #24
 800650c:	d470      	bmi.n	80065f0 <HAL_SPI_IRQHandler+0x10c>
 800650e:	f013 0f20 	tst.w	r3, #32
 8006512:	f3c3 1040 	ubfx	r0, r3, #5, #1
 8006516:	d049      	beq.n	80065ac <HAL_SPI_IRQHandler+0xc8>
 8006518:	0688      	lsls	r0, r1, #26
 800651a:	d545      	bpl.n	80065a8 <HAL_SPI_IRQHandler+0xc4>
 800651c:	b175      	cbz	r5, 800653c <HAL_SPI_IRQHandler+0x58>
 800651e:	f894 0051 	ldrb.w	r0, [r4, #81]	; 0x51
 8006522:	2803      	cmp	r0, #3
 8006524:	d06c      	beq.n	8006600 <HAL_SPI_IRQHandler+0x11c>
 8006526:	6d60      	ldr	r0, [r4, #84]	; 0x54
 8006528:	f040 0004 	orr.w	r0, r0, #4
 800652c:	6560      	str	r0, [r4, #84]	; 0x54
 800652e:	2000      	movs	r0, #0
 8006530:	9000      	str	r0, [sp, #0]
 8006532:	68d0      	ldr	r0, [r2, #12]
 8006534:	9000      	str	r0, [sp, #0]
 8006536:	6890      	ldr	r0, [r2, #8]
 8006538:	9000      	str	r0, [sp, #0]
 800653a:	9800      	ldr	r0, [sp, #0]
 800653c:	6d60      	ldr	r0, [r4, #84]	; 0x54
 800653e:	f040 0001 	orr.w	r0, r0, #1
 8006542:	6560      	str	r0, [r4, #84]	; 0x54
 8006544:	2000      	movs	r0, #0
 8006546:	9002      	str	r0, [sp, #8]
 8006548:	6890      	ldr	r0, [r2, #8]
 800654a:	9002      	str	r0, [sp, #8]
 800654c:	6810      	ldr	r0, [r2, #0]
 800654e:	f020 0040 	bic.w	r0, r0, #64	; 0x40
 8006552:	6010      	str	r0, [r2, #0]
 8006554:	9802      	ldr	r0, [sp, #8]
 8006556:	f3c3 2300 	ubfx	r3, r3, #8, #1
 800655a:	2b00      	cmp	r3, #0
 800655c:	d13e      	bne.n	80065dc <HAL_SPI_IRQHandler+0xf8>
 800655e:	6d63      	ldr	r3, [r4, #84]	; 0x54
 8006560:	b313      	cbz	r3, 80065a8 <HAL_SPI_IRQHandler+0xc4>
 8006562:	6853      	ldr	r3, [r2, #4]
 8006564:	f023 03e0 	bic.w	r3, r3, #224	; 0xe0
 8006568:	6053      	str	r3, [r2, #4]
 800656a:	2001      	movs	r0, #1
 800656c:	078b      	lsls	r3, r1, #30
 800656e:	f884 0051 	strb.w	r0, [r4, #81]	; 0x51
 8006572:	d04d      	beq.n	8006610 <HAL_SPI_IRQHandler+0x12c>
 8006574:	6853      	ldr	r3, [r2, #4]
 8006576:	6ce0      	ldr	r0, [r4, #76]	; 0x4c
 8006578:	f023 0303 	bic.w	r3, r3, #3
 800657c:	6053      	str	r3, [r2, #4]
 800657e:	b140      	cbz	r0, 8006592 <HAL_SPI_IRQHandler+0xae>
 8006580:	4b25      	ldr	r3, [pc, #148]	; (8006618 <HAL_SPI_IRQHandler+0x134>)
 8006582:	6503      	str	r3, [r0, #80]	; 0x50
 8006584:	f7ff fc88 	bl	8005e98 <HAL_DMA_Abort_IT>
 8006588:	b118      	cbz	r0, 8006592 <HAL_SPI_IRQHandler+0xae>
 800658a:	6d63      	ldr	r3, [r4, #84]	; 0x54
 800658c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006590:	6563      	str	r3, [r4, #84]	; 0x54
 8006592:	6ca0      	ldr	r0, [r4, #72]	; 0x48
 8006594:	b140      	cbz	r0, 80065a8 <HAL_SPI_IRQHandler+0xc4>
 8006596:	4b20      	ldr	r3, [pc, #128]	; (8006618 <HAL_SPI_IRQHandler+0x134>)
 8006598:	6503      	str	r3, [r0, #80]	; 0x50
 800659a:	f7ff fc7d 	bl	8005e98 <HAL_DMA_Abort_IT>
 800659e:	b118      	cbz	r0, 80065a8 <HAL_SPI_IRQHandler+0xc4>
 80065a0:	6d63      	ldr	r3, [r4, #84]	; 0x54
 80065a2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80065a6:	6563      	str	r3, [r4, #84]	; 0x54
 80065a8:	b005      	add	sp, #20
 80065aa:	bd30      	pop	{r4, r5, pc}
 80065ac:	b195      	cbz	r5, 80065d4 <HAL_SPI_IRQHandler+0xf0>
 80065ae:	068d      	lsls	r5, r1, #26
 80065b0:	d5fa      	bpl.n	80065a8 <HAL_SPI_IRQHandler+0xc4>
 80065b2:	f894 5051 	ldrb.w	r5, [r4, #81]	; 0x51
 80065b6:	2d03      	cmp	r5, #3
 80065b8:	d022      	beq.n	8006600 <HAL_SPI_IRQHandler+0x11c>
 80065ba:	6d65      	ldr	r5, [r4, #84]	; 0x54
 80065bc:	f045 0504 	orr.w	r5, r5, #4
 80065c0:	6565      	str	r5, [r4, #84]	; 0x54
 80065c2:	9000      	str	r0, [sp, #0]
 80065c4:	68d0      	ldr	r0, [r2, #12]
 80065c6:	9000      	str	r0, [sp, #0]
 80065c8:	6890      	ldr	r0, [r2, #8]
 80065ca:	9000      	str	r0, [sp, #0]
 80065cc:	9800      	ldr	r0, [sp, #0]
 80065ce:	f3c3 2300 	ubfx	r3, r3, #8, #1
 80065d2:	e7c2      	b.n	800655a <HAL_SPI_IRQHandler+0x76>
 80065d4:	05dd      	lsls	r5, r3, #23
 80065d6:	d5e7      	bpl.n	80065a8 <HAL_SPI_IRQHandler+0xc4>
 80065d8:	068b      	lsls	r3, r1, #26
 80065da:	d5e5      	bpl.n	80065a8 <HAL_SPI_IRQHandler+0xc4>
 80065dc:	6d63      	ldr	r3, [r4, #84]	; 0x54
 80065de:	2000      	movs	r0, #0
 80065e0:	f043 0308 	orr.w	r3, r3, #8
 80065e4:	6563      	str	r3, [r4, #84]	; 0x54
 80065e6:	9003      	str	r0, [sp, #12]
 80065e8:	6893      	ldr	r3, [r2, #8]
 80065ea:	9303      	str	r3, [sp, #12]
 80065ec:	9b03      	ldr	r3, [sp, #12]
 80065ee:	e7b6      	b.n	800655e <HAL_SPI_IRQHandler+0x7a>
 80065f0:	6c63      	ldr	r3, [r4, #68]	; 0x44
 80065f2:	4620      	mov	r0, r4
 80065f4:	b005      	add	sp, #20
 80065f6:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 80065fa:	4718      	bx	r3
 80065fc:	6c03      	ldr	r3, [r0, #64]	; 0x40
 80065fe:	e7f9      	b.n	80065f4 <HAL_SPI_IRQHandler+0x110>
 8006600:	2300      	movs	r3, #0
 8006602:	9301      	str	r3, [sp, #4]
 8006604:	68d3      	ldr	r3, [r2, #12]
 8006606:	9301      	str	r3, [sp, #4]
 8006608:	6893      	ldr	r3, [r2, #8]
 800660a:	9301      	str	r3, [sp, #4]
 800660c:	9b01      	ldr	r3, [sp, #4]
 800660e:	e7cb      	b.n	80065a8 <HAL_SPI_IRQHandler+0xc4>
 8006610:	4620      	mov	r0, r4
 8006612:	f7ff ff65 	bl	80064e0 <HAL_SPI_ErrorCallback>
 8006616:	e7c7      	b.n	80065a8 <HAL_SPI_IRQHandler+0xc4>
 8006618:	0800661d 	.word	0x0800661d

0800661c <SPI_DMAAbortOnError>:
 800661c:	b508      	push	{r3, lr}
 800661e:	6b80      	ldr	r0, [r0, #56]	; 0x38
 8006620:	2300      	movs	r3, #0
 8006622:	87c3      	strh	r3, [r0, #62]	; 0x3e
 8006624:	86c3      	strh	r3, [r0, #54]	; 0x36
 8006626:	f7ff ff5b 	bl	80064e0 <HAL_SPI_ErrorCallback>
 800662a:	bd08      	pop	{r3, pc}

0800662c <HAL_UART_Init>:
 800662c:	2800      	cmp	r0, #0
 800662e:	f000 8093 	beq.w	8006758 <HAL_UART_Init+0x12c>
 8006632:	b510      	push	{r4, lr}
 8006634:	f890 3041 	ldrb.w	r3, [r0, #65]	; 0x41
 8006638:	4604      	mov	r4, r0
 800663a:	f003 02ff 	and.w	r2, r3, #255	; 0xff
 800663e:	2b00      	cmp	r3, #0
 8006640:	f000 8085 	beq.w	800674e <HAL_UART_Init+0x122>
 8006644:	6823      	ldr	r3, [r4, #0]
 8006646:	68e0      	ldr	r0, [r4, #12]
 8006648:	2224      	movs	r2, #36	; 0x24
 800664a:	f884 2041 	strb.w	r2, [r4, #65]	; 0x41
 800664e:	68da      	ldr	r2, [r3, #12]
 8006650:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8006654:	60da      	str	r2, [r3, #12]
 8006656:	6919      	ldr	r1, [r3, #16]
 8006658:	68a2      	ldr	r2, [r4, #8]
 800665a:	f421 5140 	bic.w	r1, r1, #12288	; 0x3000
 800665e:	4301      	orrs	r1, r0
 8006660:	6920      	ldr	r0, [r4, #16]
 8006662:	6119      	str	r1, [r3, #16]
 8006664:	4302      	orrs	r2, r0
 8006666:	6960      	ldr	r0, [r4, #20]
 8006668:	68d9      	ldr	r1, [r3, #12]
 800666a:	4302      	orrs	r2, r0
 800666c:	69e0      	ldr	r0, [r4, #28]
 800666e:	f421 4116 	bic.w	r1, r1, #38400	; 0x9600
 8006672:	f021 010c 	bic.w	r1, r1, #12
 8006676:	4302      	orrs	r2, r0
 8006678:	430a      	orrs	r2, r1
 800667a:	60da      	str	r2, [r3, #12]
 800667c:	695a      	ldr	r2, [r3, #20]
 800667e:	69a0      	ldr	r0, [r4, #24]
 8006680:	4936      	ldr	r1, [pc, #216]	; (800675c <HAL_UART_Init+0x130>)
 8006682:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8006686:	4302      	orrs	r2, r0
 8006688:	428b      	cmp	r3, r1
 800668a:	615a      	str	r2, [r3, #20]
 800668c:	d038      	beq.n	8006700 <HAL_UART_Init+0xd4>
 800668e:	4a34      	ldr	r2, [pc, #208]	; (8006760 <HAL_UART_Init+0x134>)
 8006690:	4293      	cmp	r3, r2
 8006692:	d035      	beq.n	8006700 <HAL_UART_Init+0xd4>
 8006694:	f7ff f9a6 	bl	80059e4 <HAL_RCC_GetPCLK1Freq>
 8006698:	69e3      	ldr	r3, [r4, #28]
 800669a:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 800669e:	d035      	beq.n	800670c <HAL_UART_Init+0xe0>
 80066a0:	6863      	ldr	r3, [r4, #4]
 80066a2:	2119      	movs	r1, #25
 80066a4:	009a      	lsls	r2, r3, #2
 80066a6:	fba0 0101 	umull	r0, r1, r0, r1
 80066aa:	0f9b      	lsrs	r3, r3, #30
 80066ac:	f7fc fcd6 	bl	800305c <__aeabi_uldivmod>
 80066b0:	492c      	ldr	r1, [pc, #176]	; (8006764 <HAL_UART_Init+0x138>)
 80066b2:	fba1 3200 	umull	r3, r2, r1, r0
 80066b6:	0952      	lsrs	r2, r2, #5
 80066b8:	f04f 0c64 	mov.w	ip, #100	; 0x64
 80066bc:	fb0c 0012 	mls	r0, ip, r2, r0
 80066c0:	0100      	lsls	r0, r0, #4
 80066c2:	3032      	adds	r0, #50	; 0x32
 80066c4:	6823      	ldr	r3, [r4, #0]
 80066c6:	fba1 1000 	umull	r1, r0, r1, r0
 80066ca:	0112      	lsls	r2, r2, #4
 80066cc:	eb02 1050 	add.w	r0, r2, r0, lsr #5
 80066d0:	6098      	str	r0, [r3, #8]
 80066d2:	6919      	ldr	r1, [r3, #16]
 80066d4:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 80066d8:	6119      	str	r1, [r3, #16]
 80066da:	6959      	ldr	r1, [r3, #20]
 80066dc:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 80066e0:	6159      	str	r1, [r3, #20]
 80066e2:	68d9      	ldr	r1, [r3, #12]
 80066e4:	2200      	movs	r2, #0
 80066e6:	f04f 0c20 	mov.w	ip, #32
 80066ea:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
 80066ee:	60d9      	str	r1, [r3, #12]
 80066f0:	6462      	str	r2, [r4, #68]	; 0x44
 80066f2:	f884 c041 	strb.w	ip, [r4, #65]	; 0x41
 80066f6:	f884 c042 	strb.w	ip, [r4, #66]	; 0x42
 80066fa:	4610      	mov	r0, r2
 80066fc:	6362      	str	r2, [r4, #52]	; 0x34
 80066fe:	bd10      	pop	{r4, pc}
 8006700:	f7ff f980 	bl	8005a04 <HAL_RCC_GetPCLK2Freq>
 8006704:	69e3      	ldr	r3, [r4, #28]
 8006706:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 800670a:	d1c9      	bne.n	80066a0 <HAL_UART_Init+0x74>
 800670c:	6862      	ldr	r2, [r4, #4]
 800670e:	2119      	movs	r1, #25
 8006710:	1892      	adds	r2, r2, r2
 8006712:	f04f 0300 	mov.w	r3, #0
 8006716:	415b      	adcs	r3, r3
 8006718:	fba0 0101 	umull	r0, r1, r0, r1
 800671c:	f7fc fc9e 	bl	800305c <__aeabi_uldivmod>
 8006720:	4b10      	ldr	r3, [pc, #64]	; (8006764 <HAL_UART_Init+0x138>)
 8006722:	fba3 2100 	umull	r2, r1, r3, r0
 8006726:	ea4f 1c51 	mov.w	ip, r1, lsr #5
 800672a:	2264      	movs	r2, #100	; 0x64
 800672c:	fb02 021c 	mls	r2, r2, ip, r0
 8006730:	00d2      	lsls	r2, r2, #3
 8006732:	3232      	adds	r2, #50	; 0x32
 8006734:	fba3 3202 	umull	r3, r2, r3, r2
 8006738:	f3c2 1142 	ubfx	r1, r2, #5, #3
 800673c:	0912      	lsrs	r2, r2, #4
 800673e:	6823      	ldr	r3, [r4, #0]
 8006740:	eb01 110c 	add.w	r1, r1, ip, lsl #4
 8006744:	f402 72f8 	and.w	r2, r2, #496	; 0x1f0
 8006748:	440a      	add	r2, r1
 800674a:	609a      	str	r2, [r3, #8]
 800674c:	e7c1      	b.n	80066d2 <HAL_UART_Init+0xa6>
 800674e:	f880 2040 	strb.w	r2, [r0, #64]	; 0x40
 8006752:	f7fe f999 	bl	8004a88 <HAL_UART_MspInit>
 8006756:	e775      	b.n	8006644 <HAL_UART_Init+0x18>
 8006758:	2001      	movs	r0, #1
 800675a:	4770      	bx	lr
 800675c:	40011000 	.word	0x40011000
 8006760:	40011400 	.word	0x40011400
 8006764:	51eb851f 	.word	0x51eb851f

08006768 <HAL_UART_Transmit>:
 8006768:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 800676c:	4605      	mov	r5, r0
 800676e:	f890 0041 	ldrb.w	r0, [r0, #65]	; 0x41
 8006772:	2820      	cmp	r0, #32
 8006774:	d149      	bne.n	800680a <HAL_UART_Transmit+0xa2>
 8006776:	4689      	mov	r9, r1
 8006778:	b109      	cbz	r1, 800677e <HAL_UART_Transmit+0x16>
 800677a:	4614      	mov	r4, r2
 800677c:	b912      	cbnz	r2, 8006784 <HAL_UART_Transmit+0x1c>
 800677e:	2001      	movs	r0, #1
 8006780:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006784:	461e      	mov	r6, r3
 8006786:	f04f 0800 	mov.w	r8, #0
 800678a:	2321      	movs	r3, #33	; 0x21
 800678c:	f8c5 8044 	str.w	r8, [r5, #68]	; 0x44
 8006790:	f885 3041 	strb.w	r3, [r5, #65]	; 0x41
 8006794:	f7ff fc1a 	bl	8005fcc <HAL_GetTick>
 8006798:	68ab      	ldr	r3, [r5, #8]
 800679a:	84ac      	strh	r4, [r5, #36]	; 0x24
 800679c:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 80067a0:	84ec      	strh	r4, [r5, #38]	; 0x26
 80067a2:	4607      	mov	r7, r0
 80067a4:	d034      	beq.n	8006810 <HAL_UART_Transmit+0xa8>
 80067a6:	8ceb      	ldrh	r3, [r5, #38]	; 0x26
 80067a8:	682c      	ldr	r4, [r5, #0]
 80067aa:	b29b      	uxth	r3, r3
 80067ac:	b193      	cbz	r3, 80067d4 <HAL_UART_Transmit+0x6c>
 80067ae:	1c72      	adds	r2, r6, #1
 80067b0:	d11a      	bne.n	80067e8 <HAL_UART_Transmit+0x80>
 80067b2:	6822      	ldr	r2, [r4, #0]
 80067b4:	0613      	lsls	r3, r2, #24
 80067b6:	d5fc      	bpl.n	80067b2 <HAL_UART_Transmit+0x4a>
 80067b8:	f1b9 0f00 	cmp.w	r9, #0
 80067bc:	d020      	beq.n	8006800 <HAL_UART_Transmit+0x98>
 80067be:	f819 3b01 	ldrb.w	r3, [r9], #1
 80067c2:	6063      	str	r3, [r4, #4]
 80067c4:	8ceb      	ldrh	r3, [r5, #38]	; 0x26
 80067c6:	3b01      	subs	r3, #1
 80067c8:	b29b      	uxth	r3, r3
 80067ca:	84eb      	strh	r3, [r5, #38]	; 0x26
 80067cc:	8ceb      	ldrh	r3, [r5, #38]	; 0x26
 80067ce:	b29b      	uxth	r3, r3
 80067d0:	2b00      	cmp	r3, #0
 80067d2:	d1ec      	bne.n	80067ae <HAL_UART_Transmit+0x46>
 80067d4:	1c71      	adds	r1, r6, #1
 80067d6:	d127      	bne.n	8006828 <HAL_UART_Transmit+0xc0>
 80067d8:	6823      	ldr	r3, [r4, #0]
 80067da:	065a      	lsls	r2, r3, #25
 80067dc:	d5fc      	bpl.n	80067d8 <HAL_UART_Transmit+0x70>
 80067de:	2320      	movs	r3, #32
 80067e0:	f885 3041 	strb.w	r3, [r5, #65]	; 0x41
 80067e4:	2000      	movs	r0, #0
 80067e6:	e7cb      	b.n	8006780 <HAL_UART_Transmit+0x18>
 80067e8:	6823      	ldr	r3, [r4, #0]
 80067ea:	0618      	lsls	r0, r3, #24
 80067ec:	d4e4      	bmi.n	80067b8 <HAL_UART_Transmit+0x50>
 80067ee:	f7ff fbed 	bl	8005fcc <HAL_GetTick>
 80067f2:	1bc0      	subs	r0, r0, r7
 80067f4:	4286      	cmp	r6, r0
 80067f6:	d311      	bcc.n	800681c <HAL_UART_Transmit+0xb4>
 80067f8:	b186      	cbz	r6, 800681c <HAL_UART_Transmit+0xb4>
 80067fa:	682c      	ldr	r4, [r5, #0]
 80067fc:	68e3      	ldr	r3, [r4, #12]
 80067fe:	e7d6      	b.n	80067ae <HAL_UART_Transmit+0x46>
 8006800:	f838 3b02 	ldrh.w	r3, [r8], #2
 8006804:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8006808:	e7db      	b.n	80067c2 <HAL_UART_Transmit+0x5a>
 800680a:	2002      	movs	r0, #2
 800680c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006810:	692b      	ldr	r3, [r5, #16]
 8006812:	2b00      	cmp	r3, #0
 8006814:	d1c7      	bne.n	80067a6 <HAL_UART_Transmit+0x3e>
 8006816:	46c8      	mov	r8, r9
 8006818:	4699      	mov	r9, r3
 800681a:	e7c4      	b.n	80067a6 <HAL_UART_Transmit+0x3e>
 800681c:	2320      	movs	r3, #32
 800681e:	f885 3041 	strb.w	r3, [r5, #65]	; 0x41
 8006822:	2003      	movs	r0, #3
 8006824:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006828:	6823      	ldr	r3, [r4, #0]
 800682a:	065b      	lsls	r3, r3, #25
 800682c:	d4d7      	bmi.n	80067de <HAL_UART_Transmit+0x76>
 800682e:	f7ff fbcd 	bl	8005fcc <HAL_GetTick>
 8006832:	1bc0      	subs	r0, r0, r7
 8006834:	4286      	cmp	r6, r0
 8006836:	d3f1      	bcc.n	800681c <HAL_UART_Transmit+0xb4>
 8006838:	2e00      	cmp	r6, #0
 800683a:	d0ef      	beq.n	800681c <HAL_UART_Transmit+0xb4>
 800683c:	682c      	ldr	r4, [r5, #0]
 800683e:	68e3      	ldr	r3, [r4, #12]
 8006840:	e7c8      	b.n	80067d4 <HAL_UART_Transmit+0x6c>
 8006842:	bf00      	nop

08006844 <HAL_UART_Receive_IT>:
 8006844:	f890 3042 	ldrb.w	r3, [r0, #66]	; 0x42
 8006848:	2b20      	cmp	r3, #32
 800684a:	d119      	bne.n	8006880 <HAL_UART_Receive_IT+0x3c>
 800684c:	b101      	cbz	r1, 8006850 <HAL_UART_Receive_IT+0xc>
 800684e:	b90a      	cbnz	r2, 8006854 <HAL_UART_Receive_IT+0x10>
 8006850:	2001      	movs	r0, #1
 8006852:	4770      	bx	lr
 8006854:	2300      	movs	r3, #0
 8006856:	6303      	str	r3, [r0, #48]	; 0x30
 8006858:	85c2      	strh	r2, [r0, #46]	; 0x2e
 800685a:	6443      	str	r3, [r0, #68]	; 0x44
 800685c:	6903      	ldr	r3, [r0, #16]
 800685e:	6281      	str	r1, [r0, #40]	; 0x28
 8006860:	2122      	movs	r1, #34	; 0x22
 8006862:	8582      	strh	r2, [r0, #44]	; 0x2c
 8006864:	f880 1042 	strb.w	r1, [r0, #66]	; 0x42
 8006868:	b963      	cbnz	r3, 8006884 <HAL_UART_Receive_IT+0x40>
 800686a:	6803      	ldr	r3, [r0, #0]
 800686c:	695a      	ldr	r2, [r3, #20]
 800686e:	f042 0201 	orr.w	r2, r2, #1
 8006872:	615a      	str	r2, [r3, #20]
 8006874:	68da      	ldr	r2, [r3, #12]
 8006876:	f042 0220 	orr.w	r2, r2, #32
 800687a:	2000      	movs	r0, #0
 800687c:	60da      	str	r2, [r3, #12]
 800687e:	4770      	bx	lr
 8006880:	2002      	movs	r0, #2
 8006882:	4770      	bx	lr
 8006884:	6803      	ldr	r3, [r0, #0]
 8006886:	68da      	ldr	r2, [r3, #12]
 8006888:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 800688c:	60da      	str	r2, [r3, #12]
 800688e:	e7ed      	b.n	800686c <HAL_UART_Receive_IT+0x28>

08006890 <HAL_UART_TxCpltCallback>:
 8006890:	4770      	bx	lr
 8006892:	bf00      	nop

08006894 <HAL_UART_ErrorCallback>:
 8006894:	4770      	bx	lr
 8006896:	bf00      	nop

08006898 <UART_DMAAbortOnError>:
 8006898:	b508      	push	{r3, lr}
 800689a:	6b80      	ldr	r0, [r0, #56]	; 0x38
 800689c:	2300      	movs	r3, #0
 800689e:	85c3      	strh	r3, [r0, #46]	; 0x2e
 80068a0:	84c3      	strh	r3, [r0, #38]	; 0x26
 80068a2:	f7ff fff7 	bl	8006894 <HAL_UART_ErrorCallback>
 80068a6:	bd08      	pop	{r3, pc}

080068a8 <HAL_UARTEx_RxEventCallback>:
 80068a8:	4770      	bx	lr
 80068aa:	bf00      	nop

080068ac <UART_Receive_IT.part.0.isra.0>:
 80068ac:	6883      	ldr	r3, [r0, #8]
 80068ae:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 80068b2:	d045      	beq.n	8006940 <UART_Receive_IT.part.0.isra.0+0x94>
 80068b4:	6a82      	ldr	r2, [r0, #40]	; 0x28
 80068b6:	2b00      	cmp	r3, #0
 80068b8:	d03a      	beq.n	8006930 <UART_Receive_IT.part.0.isra.0+0x84>
 80068ba:	6803      	ldr	r3, [r0, #0]
 80068bc:	685b      	ldr	r3, [r3, #4]
 80068be:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 80068c2:	7013      	strb	r3, [r2, #0]
 80068c4:	6a83      	ldr	r3, [r0, #40]	; 0x28
 80068c6:	3301      	adds	r3, #1
 80068c8:	6283      	str	r3, [r0, #40]	; 0x28
 80068ca:	8dc3      	ldrh	r3, [r0, #46]	; 0x2e
 80068cc:	3b01      	subs	r3, #1
 80068ce:	b29b      	uxth	r3, r3
 80068d0:	85c3      	strh	r3, [r0, #46]	; 0x2e
 80068d2:	2b00      	cmp	r3, #0
 80068d4:	d133      	bne.n	800693e <UART_Receive_IT.part.0.isra.0+0x92>
 80068d6:	6802      	ldr	r2, [r0, #0]
 80068d8:	68d1      	ldr	r1, [r2, #12]
 80068da:	f021 0120 	bic.w	r1, r1, #32
 80068de:	b500      	push	{lr}
 80068e0:	60d1      	str	r1, [r2, #12]
 80068e2:	68d1      	ldr	r1, [r2, #12]
 80068e4:	f421 7180 	bic.w	r1, r1, #256	; 0x100
 80068e8:	60d1      	str	r1, [r2, #12]
 80068ea:	6951      	ldr	r1, [r2, #20]
 80068ec:	f04f 0c20 	mov.w	ip, #32
 80068f0:	f021 0101 	bic.w	r1, r1, #1
 80068f4:	6151      	str	r1, [r2, #20]
 80068f6:	f880 c042 	strb.w	ip, [r0, #66]	; 0x42
 80068fa:	6343      	str	r3, [r0, #52]	; 0x34
 80068fc:	6b01      	ldr	r1, [r0, #48]	; 0x30
 80068fe:	2901      	cmp	r1, #1
 8006900:	b083      	sub	sp, #12
 8006902:	d128      	bne.n	8006956 <UART_Receive_IT.part.0.isra.0+0xaa>
 8006904:	6303      	str	r3, [r0, #48]	; 0x30
 8006906:	f102 030c 	add.w	r3, r2, #12
 800690a:	e853 3f00 	ldrex	r3, [r3]
 800690e:	f023 0310 	bic.w	r3, r3, #16
 8006912:	f102 0c0c 	add.w	ip, r2, #12
 8006916:	e84c 3100 	strex	r1, r3, [ip]
 800691a:	2900      	cmp	r1, #0
 800691c:	d1f3      	bne.n	8006906 <UART_Receive_IT.part.0.isra.0+0x5a>
 800691e:	6813      	ldr	r3, [r2, #0]
 8006920:	06db      	lsls	r3, r3, #27
 8006922:	d422      	bmi.n	800696a <UART_Receive_IT.part.0.isra.0+0xbe>
 8006924:	8d81      	ldrh	r1, [r0, #44]	; 0x2c
 8006926:	f7ff ffbf 	bl	80068a8 <HAL_UARTEx_RxEventCallback>
 800692a:	b003      	add	sp, #12
 800692c:	f85d fb04 	ldr.w	pc, [sp], #4
 8006930:	6903      	ldr	r3, [r0, #16]
 8006932:	2b00      	cmp	r3, #0
 8006934:	d1c1      	bne.n	80068ba <UART_Receive_IT.part.0.isra.0+0xe>
 8006936:	6803      	ldr	r3, [r0, #0]
 8006938:	685b      	ldr	r3, [r3, #4]
 800693a:	7013      	strb	r3, [r2, #0]
 800693c:	e7c2      	b.n	80068c4 <UART_Receive_IT.part.0.isra.0+0x18>
 800693e:	4770      	bx	lr
 8006940:	6903      	ldr	r3, [r0, #16]
 8006942:	b96b      	cbnz	r3, 8006960 <UART_Receive_IT.part.0.isra.0+0xb4>
 8006944:	6802      	ldr	r2, [r0, #0]
 8006946:	6a83      	ldr	r3, [r0, #40]	; 0x28
 8006948:	6852      	ldr	r2, [r2, #4]
 800694a:	f3c2 0208 	ubfx	r2, r2, #0, #9
 800694e:	f823 2b02 	strh.w	r2, [r3], #2
 8006952:	6283      	str	r3, [r0, #40]	; 0x28
 8006954:	e7b9      	b.n	80068ca <UART_Receive_IT.part.0.isra.0+0x1e>
 8006956:	f7fd f8cb 	bl	8003af0 <HAL_UART_RxCpltCallback>
 800695a:	b003      	add	sp, #12
 800695c:	f85d fb04 	ldr.w	pc, [sp], #4
 8006960:	6803      	ldr	r3, [r0, #0]
 8006962:	6a82      	ldr	r2, [r0, #40]	; 0x28
 8006964:	685b      	ldr	r3, [r3, #4]
 8006966:	7013      	strb	r3, [r2, #0]
 8006968:	e7ac      	b.n	80068c4 <UART_Receive_IT.part.0.isra.0+0x18>
 800696a:	2300      	movs	r3, #0
 800696c:	9301      	str	r3, [sp, #4]
 800696e:	6813      	ldr	r3, [r2, #0]
 8006970:	9301      	str	r3, [sp, #4]
 8006972:	6853      	ldr	r3, [r2, #4]
 8006974:	9301      	str	r3, [sp, #4]
 8006976:	9b01      	ldr	r3, [sp, #4]
 8006978:	e7d4      	b.n	8006924 <UART_Receive_IT.part.0.isra.0+0x78>
 800697a:	bf00      	nop

0800697c <HAL_UART_IRQHandler>:
 800697c:	b530      	push	{r4, r5, lr}
 800697e:	6803      	ldr	r3, [r0, #0]
 8006980:	681a      	ldr	r2, [r3, #0]
 8006982:	68d9      	ldr	r1, [r3, #12]
 8006984:	695d      	ldr	r5, [r3, #20]
 8006986:	f012 0f0f 	tst.w	r2, #15
 800698a:	b083      	sub	sp, #12
 800698c:	4604      	mov	r4, r0
 800698e:	d170      	bne.n	8006a72 <HAL_UART_IRQHandler+0xf6>
 8006990:	0695      	lsls	r5, r2, #26
 8006992:	d502      	bpl.n	800699a <HAL_UART_IRQHandler+0x1e>
 8006994:	068d      	lsls	r5, r1, #26
 8006996:	f100 80b3 	bmi.w	8006b00 <HAL_UART_IRQHandler+0x184>
 800699a:	6b20      	ldr	r0, [r4, #48]	; 0x30
 800699c:	2801      	cmp	r0, #1
 800699e:	d00b      	beq.n	80069b8 <HAL_UART_IRQHandler+0x3c>
 80069a0:	0610      	lsls	r0, r2, #24
 80069a2:	d502      	bpl.n	80069aa <HAL_UART_IRQHandler+0x2e>
 80069a4:	060d      	lsls	r5, r1, #24
 80069a6:	f100 80b5 	bmi.w	8006b14 <HAL_UART_IRQHandler+0x198>
 80069aa:	0650      	lsls	r0, r2, #25
 80069ac:	d502      	bpl.n	80069b4 <HAL_UART_IRQHandler+0x38>
 80069ae:	064a      	lsls	r2, r1, #25
 80069b0:	f100 80cf 	bmi.w	8006b52 <HAL_UART_IRQHandler+0x1d6>
 80069b4:	b003      	add	sp, #12
 80069b6:	bd30      	pop	{r4, r5, pc}
 80069b8:	06d5      	lsls	r5, r2, #27
 80069ba:	d5f1      	bpl.n	80069a0 <HAL_UART_IRQHandler+0x24>
 80069bc:	06c8      	lsls	r0, r1, #27
 80069be:	d5ef      	bpl.n	80069a0 <HAL_UART_IRQHandler+0x24>
 80069c0:	2200      	movs	r2, #0
 80069c2:	9201      	str	r2, [sp, #4]
 80069c4:	681a      	ldr	r2, [r3, #0]
 80069c6:	9201      	str	r2, [sp, #4]
 80069c8:	685a      	ldr	r2, [r3, #4]
 80069ca:	9201      	str	r2, [sp, #4]
 80069cc:	9a01      	ldr	r2, [sp, #4]
 80069ce:	695a      	ldr	r2, [r3, #20]
 80069d0:	0655      	lsls	r5, r2, #25
 80069d2:	f140 8118 	bpl.w	8006c06 <HAL_UART_IRQHandler+0x28a>
 80069d6:	6be0      	ldr	r0, [r4, #60]	; 0x3c
 80069d8:	6802      	ldr	r2, [r0, #0]
 80069da:	6852      	ldr	r2, [r2, #4]
 80069dc:	b292      	uxth	r2, r2
 80069de:	2a00      	cmp	r2, #0
 80069e0:	d0e8      	beq.n	80069b4 <HAL_UART_IRQHandler+0x38>
 80069e2:	8da1      	ldrh	r1, [r4, #44]	; 0x2c
 80069e4:	4291      	cmp	r1, r2
 80069e6:	d9e5      	bls.n	80069b4 <HAL_UART_IRQHandler+0x38>
 80069e8:	85e2      	strh	r2, [r4, #46]	; 0x2e
 80069ea:	69c2      	ldr	r2, [r0, #28]
 80069ec:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 80069f0:	d036      	beq.n	8006a60 <HAL_UART_IRQHandler+0xe4>
 80069f2:	f103 020c 	add.w	r2, r3, #12
 80069f6:	e852 2f00 	ldrex	r2, [r2]
 80069fa:	f422 7280 	bic.w	r2, r2, #256	; 0x100
 80069fe:	f103 050c 	add.w	r5, r3, #12
 8006a02:	e845 2100 	strex	r1, r2, [r5]
 8006a06:	2900      	cmp	r1, #0
 8006a08:	d1f3      	bne.n	80069f2 <HAL_UART_IRQHandler+0x76>
 8006a0a:	f103 0214 	add.w	r2, r3, #20
 8006a0e:	e852 2f00 	ldrex	r2, [r2]
 8006a12:	f022 0201 	bic.w	r2, r2, #1
 8006a16:	f103 0514 	add.w	r5, r3, #20
 8006a1a:	e845 2100 	strex	r1, r2, [r5]
 8006a1e:	2900      	cmp	r1, #0
 8006a20:	d1f3      	bne.n	8006a0a <HAL_UART_IRQHandler+0x8e>
 8006a22:	f103 0214 	add.w	r2, r3, #20
 8006a26:	e852 2f00 	ldrex	r2, [r2]
 8006a2a:	f022 0240 	bic.w	r2, r2, #64	; 0x40
 8006a2e:	f103 0514 	add.w	r5, r3, #20
 8006a32:	e845 2100 	strex	r1, r2, [r5]
 8006a36:	2900      	cmp	r1, #0
 8006a38:	d1f3      	bne.n	8006a22 <HAL_UART_IRQHandler+0xa6>
 8006a3a:	2220      	movs	r2, #32
 8006a3c:	f884 2042 	strb.w	r2, [r4, #66]	; 0x42
 8006a40:	6321      	str	r1, [r4, #48]	; 0x30
 8006a42:	f103 020c 	add.w	r2, r3, #12
 8006a46:	e852 2f00 	ldrex	r2, [r2]
 8006a4a:	f022 0210 	bic.w	r2, r2, #16
 8006a4e:	f103 050c 	add.w	r5, r3, #12
 8006a52:	e845 2100 	strex	r1, r2, [r5]
 8006a56:	2900      	cmp	r1, #0
 8006a58:	d1f3      	bne.n	8006a42 <HAL_UART_IRQHandler+0xc6>
 8006a5a:	f7ff f9d5 	bl	8005e08 <HAL_DMA_Abort>
 8006a5e:	8da1      	ldrh	r1, [r4, #44]	; 0x2c
 8006a60:	2302      	movs	r3, #2
 8006a62:	6363      	str	r3, [r4, #52]	; 0x34
 8006a64:	8de3      	ldrh	r3, [r4, #46]	; 0x2e
 8006a66:	1ac9      	subs	r1, r1, r3
 8006a68:	4620      	mov	r0, r4
 8006a6a:	b289      	uxth	r1, r1
 8006a6c:	f7ff ff1c 	bl	80068a8 <HAL_UARTEx_RxEventCallback>
 8006a70:	e7a0      	b.n	80069b4 <HAL_UART_IRQHandler+0x38>
 8006a72:	f005 0501 	and.w	r5, r5, #1
 8006a76:	f401 7090 	and.w	r0, r1, #288	; 0x120
 8006a7a:	4328      	orrs	r0, r5
 8006a7c:	d08d      	beq.n	800699a <HAL_UART_IRQHandler+0x1e>
 8006a7e:	07d0      	lsls	r0, r2, #31
 8006a80:	d505      	bpl.n	8006a8e <HAL_UART_IRQHandler+0x112>
 8006a82:	05c8      	lsls	r0, r1, #23
 8006a84:	d503      	bpl.n	8006a8e <HAL_UART_IRQHandler+0x112>
 8006a86:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8006a88:	f040 0001 	orr.w	r0, r0, #1
 8006a8c:	6460      	str	r0, [r4, #68]	; 0x44
 8006a8e:	0750      	lsls	r0, r2, #29
 8006a90:	d531      	bpl.n	8006af6 <HAL_UART_IRQHandler+0x17a>
 8006a92:	b14d      	cbz	r5, 8006aa8 <HAL_UART_IRQHandler+0x12c>
 8006a94:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8006a96:	f040 0002 	orr.w	r0, r0, #2
 8006a9a:	6460      	str	r0, [r4, #68]	; 0x44
 8006a9c:	0790      	lsls	r0, r2, #30
 8006a9e:	d503      	bpl.n	8006aa8 <HAL_UART_IRQHandler+0x12c>
 8006aa0:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8006aa2:	f040 0004 	orr.w	r0, r0, #4
 8006aa6:	6460      	str	r0, [r4, #68]	; 0x44
 8006aa8:	0710      	lsls	r0, r2, #28
 8006aaa:	d507      	bpl.n	8006abc <HAL_UART_IRQHandler+0x140>
 8006aac:	f001 0020 	and.w	r0, r1, #32
 8006ab0:	4328      	orrs	r0, r5
 8006ab2:	d003      	beq.n	8006abc <HAL_UART_IRQHandler+0x140>
 8006ab4:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8006ab6:	f040 0008 	orr.w	r0, r0, #8
 8006aba:	6460      	str	r0, [r4, #68]	; 0x44
 8006abc:	6c60      	ldr	r0, [r4, #68]	; 0x44
 8006abe:	2800      	cmp	r0, #0
 8006ac0:	f43f af78 	beq.w	80069b4 <HAL_UART_IRQHandler+0x38>
 8006ac4:	0690      	lsls	r0, r2, #26
 8006ac6:	d509      	bpl.n	8006adc <HAL_UART_IRQHandler+0x160>
 8006ac8:	0689      	lsls	r1, r1, #26
 8006aca:	d507      	bpl.n	8006adc <HAL_UART_IRQHandler+0x160>
 8006acc:	f894 2042 	ldrb.w	r2, [r4, #66]	; 0x42
 8006ad0:	2a22      	cmp	r2, #34	; 0x22
 8006ad2:	d103      	bne.n	8006adc <HAL_UART_IRQHandler+0x160>
 8006ad4:	4620      	mov	r0, r4
 8006ad6:	f7ff fee9 	bl	80068ac <UART_Receive_IT.part.0.isra.0>
 8006ada:	6823      	ldr	r3, [r4, #0]
 8006adc:	695a      	ldr	r2, [r3, #20]
 8006ade:	6c65      	ldr	r5, [r4, #68]	; 0x44
 8006ae0:	f002 0240 	and.w	r2, r2, #64	; 0x40
 8006ae4:	f005 0508 	and.w	r5, r5, #8
 8006ae8:	4315      	orrs	r5, r2
 8006aea:	d13d      	bne.n	8006b68 <HAL_UART_IRQHandler+0x1ec>
 8006aec:	4620      	mov	r0, r4
 8006aee:	f7ff fed1 	bl	8006894 <HAL_UART_ErrorCallback>
 8006af2:	6465      	str	r5, [r4, #68]	; 0x44
 8006af4:	e75e      	b.n	80069b4 <HAL_UART_IRQHandler+0x38>
 8006af6:	0790      	lsls	r0, r2, #30
 8006af8:	d5d6      	bpl.n	8006aa8 <HAL_UART_IRQHandler+0x12c>
 8006afa:	2d00      	cmp	r5, #0
 8006afc:	d1d0      	bne.n	8006aa0 <HAL_UART_IRQHandler+0x124>
 8006afe:	e7d3      	b.n	8006aa8 <HAL_UART_IRQHandler+0x12c>
 8006b00:	f890 3042 	ldrb.w	r3, [r0, #66]	; 0x42
 8006b04:	2b22      	cmp	r3, #34	; 0x22
 8006b06:	f47f af55 	bne.w	80069b4 <HAL_UART_IRQHandler+0x38>
 8006b0a:	b003      	add	sp, #12
 8006b0c:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8006b10:	f7ff becc 	b.w	80068ac <UART_Receive_IT.part.0.isra.0>
 8006b14:	f894 2041 	ldrb.w	r2, [r4, #65]	; 0x41
 8006b18:	2a21      	cmp	r2, #33	; 0x21
 8006b1a:	f47f af4b 	bne.w	80069b4 <HAL_UART_IRQHandler+0x38>
 8006b1e:	68a2      	ldr	r2, [r4, #8]
 8006b20:	f5b2 5f80 	cmp.w	r2, #4096	; 0x1000
 8006b24:	f000 80aa 	beq.w	8006c7c <HAL_UART_IRQHandler+0x300>
 8006b28:	6a22      	ldr	r2, [r4, #32]
 8006b2a:	1c51      	adds	r1, r2, #1
 8006b2c:	6221      	str	r1, [r4, #32]
 8006b2e:	7812      	ldrb	r2, [r2, #0]
 8006b30:	605a      	str	r2, [r3, #4]
 8006b32:	8ce2      	ldrh	r2, [r4, #38]	; 0x26
 8006b34:	3a01      	subs	r2, #1
 8006b36:	b292      	uxth	r2, r2
 8006b38:	84e2      	strh	r2, [r4, #38]	; 0x26
 8006b3a:	2a00      	cmp	r2, #0
 8006b3c:	f47f af3a 	bne.w	80069b4 <HAL_UART_IRQHandler+0x38>
 8006b40:	68da      	ldr	r2, [r3, #12]
 8006b42:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 8006b46:	60da      	str	r2, [r3, #12]
 8006b48:	68da      	ldr	r2, [r3, #12]
 8006b4a:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8006b4e:	60da      	str	r2, [r3, #12]
 8006b50:	e730      	b.n	80069b4 <HAL_UART_IRQHandler+0x38>
 8006b52:	68da      	ldr	r2, [r3, #12]
 8006b54:	2120      	movs	r1, #32
 8006b56:	f022 0240 	bic.w	r2, r2, #64	; 0x40
 8006b5a:	60da      	str	r2, [r3, #12]
 8006b5c:	4620      	mov	r0, r4
 8006b5e:	f884 1041 	strb.w	r1, [r4, #65]	; 0x41
 8006b62:	f7ff fe95 	bl	8006890 <HAL_UART_TxCpltCallback>
 8006b66:	e725      	b.n	80069b4 <HAL_UART_IRQHandler+0x38>
 8006b68:	f103 020c 	add.w	r2, r3, #12
 8006b6c:	e852 2f00 	ldrex	r2, [r2]
 8006b70:	f422 7290 	bic.w	r2, r2, #288	; 0x120
 8006b74:	f103 000c 	add.w	r0, r3, #12
 8006b78:	e840 2100 	strex	r1, r2, [r0]
 8006b7c:	2900      	cmp	r1, #0
 8006b7e:	d1f3      	bne.n	8006b68 <HAL_UART_IRQHandler+0x1ec>
 8006b80:	f103 0214 	add.w	r2, r3, #20
 8006b84:	e852 2f00 	ldrex	r2, [r2]
 8006b88:	f022 0201 	bic.w	r2, r2, #1
 8006b8c:	f103 0014 	add.w	r0, r3, #20
 8006b90:	e840 2100 	strex	r1, r2, [r0]
 8006b94:	2900      	cmp	r1, #0
 8006b96:	d1f3      	bne.n	8006b80 <HAL_UART_IRQHandler+0x204>
 8006b98:	6b22      	ldr	r2, [r4, #48]	; 0x30
 8006b9a:	2a01      	cmp	r2, #1
 8006b9c:	d022      	beq.n	8006be4 <HAL_UART_IRQHandler+0x268>
 8006b9e:	2200      	movs	r2, #0
 8006ba0:	2120      	movs	r1, #32
 8006ba2:	f884 1042 	strb.w	r1, [r4, #66]	; 0x42
 8006ba6:	6322      	str	r2, [r4, #48]	; 0x30
 8006ba8:	695a      	ldr	r2, [r3, #20]
 8006baa:	0652      	lsls	r2, r2, #25
 8006bac:	d527      	bpl.n	8006bfe <HAL_UART_IRQHandler+0x282>
 8006bae:	f103 0214 	add.w	r2, r3, #20
 8006bb2:	e852 2f00 	ldrex	r2, [r2]
 8006bb6:	f022 0240 	bic.w	r2, r2, #64	; 0x40
 8006bba:	f103 0014 	add.w	r0, r3, #20
 8006bbe:	e840 2100 	strex	r1, r2, [r0]
 8006bc2:	2900      	cmp	r1, #0
 8006bc4:	d1f3      	bne.n	8006bae <HAL_UART_IRQHandler+0x232>
 8006bc6:	6be0      	ldr	r0, [r4, #60]	; 0x3c
 8006bc8:	b1c8      	cbz	r0, 8006bfe <HAL_UART_IRQHandler+0x282>
 8006bca:	4b32      	ldr	r3, [pc, #200]	; (8006c94 <HAL_UART_IRQHandler+0x318>)
 8006bcc:	6503      	str	r3, [r0, #80]	; 0x50
 8006bce:	f7ff f963 	bl	8005e98 <HAL_DMA_Abort_IT>
 8006bd2:	2800      	cmp	r0, #0
 8006bd4:	f43f aeee 	beq.w	80069b4 <HAL_UART_IRQHandler+0x38>
 8006bd8:	6be0      	ldr	r0, [r4, #60]	; 0x3c
 8006bda:	6d03      	ldr	r3, [r0, #80]	; 0x50
 8006bdc:	b003      	add	sp, #12
 8006bde:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8006be2:	4718      	bx	r3
 8006be4:	f103 020c 	add.w	r2, r3, #12
 8006be8:	e852 2f00 	ldrex	r2, [r2]
 8006bec:	f022 0210 	bic.w	r2, r2, #16
 8006bf0:	f103 000c 	add.w	r0, r3, #12
 8006bf4:	e840 2100 	strex	r1, r2, [r0]
 8006bf8:	2900      	cmp	r1, #0
 8006bfa:	d1f3      	bne.n	8006be4 <HAL_UART_IRQHandler+0x268>
 8006bfc:	e7cf      	b.n	8006b9e <HAL_UART_IRQHandler+0x222>
 8006bfe:	4620      	mov	r0, r4
 8006c00:	f7ff fe48 	bl	8006894 <HAL_UART_ErrorCallback>
 8006c04:	e6d6      	b.n	80069b4 <HAL_UART_IRQHandler+0x38>
 8006c06:	8de1      	ldrh	r1, [r4, #46]	; 0x2e
 8006c08:	8de2      	ldrh	r2, [r4, #46]	; 0x2e
 8006c0a:	b292      	uxth	r2, r2
 8006c0c:	b289      	uxth	r1, r1
 8006c0e:	2a00      	cmp	r2, #0
 8006c10:	f43f aed0 	beq.w	80069b4 <HAL_UART_IRQHandler+0x38>
 8006c14:	8da2      	ldrh	r2, [r4, #44]	; 0x2c
 8006c16:	1a51      	subs	r1, r2, r1
 8006c18:	b289      	uxth	r1, r1
 8006c1a:	2900      	cmp	r1, #0
 8006c1c:	f43f aeca 	beq.w	80069b4 <HAL_UART_IRQHandler+0x38>
 8006c20:	f103 020c 	add.w	r2, r3, #12
 8006c24:	e852 2f00 	ldrex	r2, [r2]
 8006c28:	f422 7290 	bic.w	r2, r2, #288	; 0x120
 8006c2c:	f103 050c 	add.w	r5, r3, #12
 8006c30:	e845 2000 	strex	r0, r2, [r5]
 8006c34:	2800      	cmp	r0, #0
 8006c36:	d1f3      	bne.n	8006c20 <HAL_UART_IRQHandler+0x2a4>
 8006c38:	f103 0214 	add.w	r2, r3, #20
 8006c3c:	e852 2f00 	ldrex	r2, [r2]
 8006c40:	f022 0201 	bic.w	r2, r2, #1
 8006c44:	f103 0514 	add.w	r5, r3, #20
 8006c48:	e845 2000 	strex	r0, r2, [r5]
 8006c4c:	2800      	cmp	r0, #0
 8006c4e:	d1f3      	bne.n	8006c38 <HAL_UART_IRQHandler+0x2bc>
 8006c50:	2220      	movs	r2, #32
 8006c52:	f884 2042 	strb.w	r2, [r4, #66]	; 0x42
 8006c56:	6320      	str	r0, [r4, #48]	; 0x30
 8006c58:	f103 020c 	add.w	r2, r3, #12
 8006c5c:	e852 2f00 	ldrex	r2, [r2]
 8006c60:	f022 0210 	bic.w	r2, r2, #16
 8006c64:	f103 050c 	add.w	r5, r3, #12
 8006c68:	e845 2000 	strex	r0, r2, [r5]
 8006c6c:	2800      	cmp	r0, #0
 8006c6e:	d1f3      	bne.n	8006c58 <HAL_UART_IRQHandler+0x2dc>
 8006c70:	2302      	movs	r3, #2
 8006c72:	6363      	str	r3, [r4, #52]	; 0x34
 8006c74:	4620      	mov	r0, r4
 8006c76:	f7ff fe17 	bl	80068a8 <HAL_UARTEx_RxEventCallback>
 8006c7a:	e69b      	b.n	80069b4 <HAL_UART_IRQHandler+0x38>
 8006c7c:	6922      	ldr	r2, [r4, #16]
 8006c7e:	2a00      	cmp	r2, #0
 8006c80:	f47f af52 	bne.w	8006b28 <HAL_UART_IRQHandler+0x1ac>
 8006c84:	6a22      	ldr	r2, [r4, #32]
 8006c86:	f832 1b02 	ldrh.w	r1, [r2], #2
 8006c8a:	f3c1 0108 	ubfx	r1, r1, #0, #9
 8006c8e:	6059      	str	r1, [r3, #4]
 8006c90:	6222      	str	r2, [r4, #32]
 8006c92:	e74e      	b.n	8006b32 <HAL_UART_IRQHandler+0x1b6>
 8006c94:	08006899 	.word	0x08006899

08006c98 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0>:
 8006c98:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006c9a:	6804      	ldr	r4, [r0, #0]
 8006c9c:	4605      	mov	r5, r0
 8006c9e:	460e      	mov	r6, r1
 8006ca0:	4617      	mov	r7, r2
 8006ca2:	1c72      	adds	r2, r6, #1
 8006ca4:	d003      	beq.n	8006cae <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0+0x16>
 8006ca6:	e009      	b.n	8006cbc <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0+0x24>
 8006ca8:	6963      	ldr	r3, [r4, #20]
 8006caa:	055b      	lsls	r3, r3, #21
 8006cac:	d428      	bmi.n	8006d00 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0+0x68>
 8006cae:	6963      	ldr	r3, [r4, #20]
 8006cb0:	43db      	mvns	r3, r3
 8006cb2:	f013 0302 	ands.w	r3, r3, #2
 8006cb6:	d1f7      	bne.n	8006ca8 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0+0x10>
 8006cb8:	4618      	mov	r0, r3
 8006cba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006cbc:	6963      	ldr	r3, [r4, #20]
 8006cbe:	43db      	mvns	r3, r3
 8006cc0:	f013 0302 	ands.w	r3, r3, #2
 8006cc4:	d0f8      	beq.n	8006cb8 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0+0x20>
 8006cc6:	6963      	ldr	r3, [r4, #20]
 8006cc8:	0558      	lsls	r0, r3, #21
 8006cca:	d419      	bmi.n	8006d00 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0+0x68>
 8006ccc:	f7ff f97e 	bl	8005fcc <HAL_GetTick>
 8006cd0:	1bc0      	subs	r0, r0, r7
 8006cd2:	4286      	cmp	r6, r0
 8006cd4:	682c      	ldr	r4, [r5, #0]
 8006cd6:	d301      	bcc.n	8006cdc <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0+0x44>
 8006cd8:	2e00      	cmp	r6, #0
 8006cda:	d1e2      	bne.n	8006ca2 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0+0xa>
 8006cdc:	6963      	ldr	r3, [r4, #20]
 8006cde:	0799      	lsls	r1, r3, #30
 8006ce0:	d4df      	bmi.n	8006ca2 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0+0xa>
 8006ce2:	2200      	movs	r2, #0
 8006ce4:	2320      	movs	r3, #32
 8006ce6:	632a      	str	r2, [r5, #48]	; 0x30
 8006ce8:	f885 303d 	strb.w	r3, [r5, #61]	; 0x3d
 8006cec:	f885 203e 	strb.w	r2, [r5, #62]	; 0x3e
 8006cf0:	6c2b      	ldr	r3, [r5, #64]	; 0x40
 8006cf2:	f885 203c 	strb.w	r2, [r5, #60]	; 0x3c
 8006cf6:	f043 0320 	orr.w	r3, r3, #32
 8006cfa:	642b      	str	r3, [r5, #64]	; 0x40
 8006cfc:	2001      	movs	r0, #1
 8006cfe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006d00:	6823      	ldr	r3, [r4, #0]
 8006d02:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8006d06:	6023      	str	r3, [r4, #0]
 8006d08:	2200      	movs	r2, #0
 8006d0a:	f46f 6180 	mvn.w	r1, #1024	; 0x400
 8006d0e:	2320      	movs	r3, #32
 8006d10:	6161      	str	r1, [r4, #20]
 8006d12:	632a      	str	r2, [r5, #48]	; 0x30
 8006d14:	f885 303d 	strb.w	r3, [r5, #61]	; 0x3d
 8006d18:	f885 203e 	strb.w	r2, [r5, #62]	; 0x3e
 8006d1c:	6c2b      	ldr	r3, [r5, #64]	; 0x40
 8006d1e:	f885 203c 	strb.w	r2, [r5, #60]	; 0x3c
 8006d22:	f043 0304 	orr.w	r3, r3, #4
 8006d26:	642b      	str	r3, [r5, #64]	; 0x40
 8006d28:	2001      	movs	r0, #1
 8006d2a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

08006d2c <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.1>:
 8006d2c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006d2e:	6804      	ldr	r4, [r0, #0]
 8006d30:	4605      	mov	r5, r0
 8006d32:	460e      	mov	r6, r1
 8006d34:	4617      	mov	r7, r2
 8006d36:	1c72      	adds	r2, r6, #1
 8006d38:	d003      	beq.n	8006d42 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.1+0x16>
 8006d3a:	e009      	b.n	8006d50 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.1+0x24>
 8006d3c:	6963      	ldr	r3, [r4, #20]
 8006d3e:	055b      	lsls	r3, r3, #21
 8006d40:	d428      	bmi.n	8006d94 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.1+0x68>
 8006d42:	6963      	ldr	r3, [r4, #20]
 8006d44:	43db      	mvns	r3, r3
 8006d46:	f013 0308 	ands.w	r3, r3, #8
 8006d4a:	d1f7      	bne.n	8006d3c <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.1+0x10>
 8006d4c:	4618      	mov	r0, r3
 8006d4e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006d50:	6963      	ldr	r3, [r4, #20]
 8006d52:	43db      	mvns	r3, r3
 8006d54:	f013 0308 	ands.w	r3, r3, #8
 8006d58:	d0f8      	beq.n	8006d4c <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.1+0x20>
 8006d5a:	6963      	ldr	r3, [r4, #20]
 8006d5c:	0558      	lsls	r0, r3, #21
 8006d5e:	d419      	bmi.n	8006d94 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.1+0x68>
 8006d60:	f7ff f934 	bl	8005fcc <HAL_GetTick>
 8006d64:	1bc0      	subs	r0, r0, r7
 8006d66:	4286      	cmp	r6, r0
 8006d68:	682c      	ldr	r4, [r5, #0]
 8006d6a:	d301      	bcc.n	8006d70 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.1+0x44>
 8006d6c:	2e00      	cmp	r6, #0
 8006d6e:	d1e2      	bne.n	8006d36 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.1+0xa>
 8006d70:	6963      	ldr	r3, [r4, #20]
 8006d72:	0719      	lsls	r1, r3, #28
 8006d74:	d4df      	bmi.n	8006d36 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.1+0xa>
 8006d76:	2200      	movs	r2, #0
 8006d78:	2320      	movs	r3, #32
 8006d7a:	632a      	str	r2, [r5, #48]	; 0x30
 8006d7c:	f885 303d 	strb.w	r3, [r5, #61]	; 0x3d
 8006d80:	f885 203e 	strb.w	r2, [r5, #62]	; 0x3e
 8006d84:	6c2b      	ldr	r3, [r5, #64]	; 0x40
 8006d86:	f885 203c 	strb.w	r2, [r5, #60]	; 0x3c
 8006d8a:	f043 0320 	orr.w	r3, r3, #32
 8006d8e:	642b      	str	r3, [r5, #64]	; 0x40
 8006d90:	2001      	movs	r0, #1
 8006d92:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006d94:	6823      	ldr	r3, [r4, #0]
 8006d96:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8006d9a:	6023      	str	r3, [r4, #0]
 8006d9c:	2200      	movs	r2, #0
 8006d9e:	f46f 6180 	mvn.w	r1, #1024	; 0x400
 8006da2:	2320      	movs	r3, #32
 8006da4:	6161      	str	r1, [r4, #20]
 8006da6:	632a      	str	r2, [r5, #48]	; 0x30
 8006da8:	f885 303d 	strb.w	r3, [r5, #61]	; 0x3d
 8006dac:	f885 203e 	strb.w	r2, [r5, #62]	; 0x3e
 8006db0:	6c2b      	ldr	r3, [r5, #64]	; 0x40
 8006db2:	f885 203c 	strb.w	r2, [r5, #60]	; 0x3c
 8006db6:	f043 0304 	orr.w	r3, r3, #4
 8006dba:	642b      	str	r3, [r5, #64]	; 0x40
 8006dbc:	2001      	movs	r0, #1
 8006dbe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

08006dc0 <I2C_RequestMemoryWrite>:
 8006dc0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006dc4:	6805      	ldr	r5, [r0, #0]
 8006dc6:	b083      	sub	sp, #12
 8006dc8:	4699      	mov	r9, r3
 8006dca:	682b      	ldr	r3, [r5, #0]
 8006dcc:	f8dd b030 	ldr.w	fp, [sp, #48]	; 0x30
 8006dd0:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
 8006dd4:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8006dd8:	4606      	mov	r6, r0
 8006dda:	460f      	mov	r7, r1
 8006ddc:	4690      	mov	r8, r2
 8006dde:	602b      	str	r3, [r5, #0]
 8006de0:	f1bb 3fff 	cmp.w	fp, #4294967295	; 0xffffffff
 8006de4:	d111      	bne.n	8006e0a <I2C_RequestMemoryWrite+0x4a>
 8006de6:	696c      	ldr	r4, [r5, #20]
 8006de8:	07e3      	lsls	r3, r4, #31
 8006dea:	d5fc      	bpl.n	8006de6 <I2C_RequestMemoryWrite+0x26>
 8006dec:	f007 07fe 	and.w	r7, r7, #254	; 0xfe
 8006df0:	612f      	str	r7, [r5, #16]
 8006df2:	4652      	mov	r2, sl
 8006df4:	4659      	mov	r1, fp
 8006df6:	4630      	mov	r0, r6
 8006df8:	f7ff ff4e 	bl	8006c98 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0>
 8006dfc:	4604      	mov	r4, r0
 8006dfe:	b348      	cbz	r0, 8006e54 <I2C_RequestMemoryWrite+0x94>
 8006e00:	2401      	movs	r4, #1
 8006e02:	4620      	mov	r0, r4
 8006e04:	b003      	add	sp, #12
 8006e06:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006e0a:	696b      	ldr	r3, [r5, #20]
 8006e0c:	07dc      	lsls	r4, r3, #31
 8006e0e:	d4ed      	bmi.n	8006dec <I2C_RequestMemoryWrite+0x2c>
 8006e10:	f7ff f8dc 	bl	8005fcc <HAL_GetTick>
 8006e14:	eba0 000a 	sub.w	r0, r0, sl
 8006e18:	4583      	cmp	fp, r0
 8006e1a:	6835      	ldr	r5, [r6, #0]
 8006e1c:	d243      	bcs.n	8006ea6 <I2C_RequestMemoryWrite+0xe6>
 8006e1e:	696b      	ldr	r3, [r5, #20]
 8006e20:	07d9      	lsls	r1, r3, #31
 8006e22:	d4dd      	bmi.n	8006de0 <I2C_RequestMemoryWrite+0x20>
 8006e24:	2200      	movs	r2, #0
 8006e26:	2320      	movs	r3, #32
 8006e28:	6332      	str	r2, [r6, #48]	; 0x30
 8006e2a:	f886 303d 	strb.w	r3, [r6, #61]	; 0x3d
 8006e2e:	f886 203e 	strb.w	r2, [r6, #62]	; 0x3e
 8006e32:	6c33      	ldr	r3, [r6, #64]	; 0x40
 8006e34:	f886 203c 	strb.w	r2, [r6, #60]	; 0x3c
 8006e38:	f043 0320 	orr.w	r3, r3, #32
 8006e3c:	6433      	str	r3, [r6, #64]	; 0x40
 8006e3e:	682b      	ldr	r3, [r5, #0]
 8006e40:	05da      	lsls	r2, r3, #23
 8006e42:	d502      	bpl.n	8006e4a <I2C_RequestMemoryWrite+0x8a>
 8006e44:	f44f 7300 	mov.w	r3, #512	; 0x200
 8006e48:	6433      	str	r3, [r6, #64]	; 0x40
 8006e4a:	2403      	movs	r4, #3
 8006e4c:	4620      	mov	r0, r4
 8006e4e:	b003      	add	sp, #12
 8006e50:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006e54:	6833      	ldr	r3, [r6, #0]
 8006e56:	9001      	str	r0, [sp, #4]
 8006e58:	695a      	ldr	r2, [r3, #20]
 8006e5a:	9201      	str	r2, [sp, #4]
 8006e5c:	699a      	ldr	r2, [r3, #24]
 8006e5e:	9201      	str	r2, [sp, #4]
 8006e60:	9a01      	ldr	r2, [sp, #4]
 8006e62:	f1bb 3fff 	cmp.w	fp, #4294967295	; 0xffffffff
 8006e66:	d13c      	bne.n	8006ee2 <I2C_RequestMemoryWrite+0x122>
 8006e68:	695a      	ldr	r2, [r3, #20]
 8006e6a:	0611      	lsls	r1, r2, #24
 8006e6c:	d422      	bmi.n	8006eb4 <I2C_RequestMemoryWrite+0xf4>
 8006e6e:	695a      	ldr	r2, [r3, #20]
 8006e70:	0552      	lsls	r2, r2, #21
 8006e72:	d5f9      	bpl.n	8006e68 <I2C_RequestMemoryWrite+0xa8>
 8006e74:	2100      	movs	r1, #0
 8006e76:	2220      	movs	r2, #32
 8006e78:	f46f 6080 	mvn.w	r0, #1024	; 0x400
 8006e7c:	6158      	str	r0, [r3, #20]
 8006e7e:	6331      	str	r1, [r6, #48]	; 0x30
 8006e80:	f886 203d 	strb.w	r2, [r6, #61]	; 0x3d
 8006e84:	f886 103e 	strb.w	r1, [r6, #62]	; 0x3e
 8006e88:	6c32      	ldr	r2, [r6, #64]	; 0x40
 8006e8a:	f886 103c 	strb.w	r1, [r6, #60]	; 0x3c
 8006e8e:	f042 0204 	orr.w	r2, r2, #4
 8006e92:	6432      	str	r2, [r6, #64]	; 0x40
 8006e94:	6c32      	ldr	r2, [r6, #64]	; 0x40
 8006e96:	2a04      	cmp	r2, #4
 8006e98:	d1b2      	bne.n	8006e00 <I2C_RequestMemoryWrite+0x40>
 8006e9a:	681a      	ldr	r2, [r3, #0]
 8006e9c:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8006ea0:	2401      	movs	r4, #1
 8006ea2:	601a      	str	r2, [r3, #0]
 8006ea4:	e7ad      	b.n	8006e02 <I2C_RequestMemoryWrite+0x42>
 8006ea6:	f1bb 0f00 	cmp.w	fp, #0
 8006eaa:	d199      	bne.n	8006de0 <I2C_RequestMemoryWrite+0x20>
 8006eac:	696b      	ldr	r3, [r5, #20]
 8006eae:	07d9      	lsls	r1, r3, #31
 8006eb0:	d496      	bmi.n	8006de0 <I2C_RequestMemoryWrite+0x20>
 8006eb2:	e7b7      	b.n	8006e24 <I2C_RequestMemoryWrite+0x64>
 8006eb4:	f1b9 0f01 	cmp.w	r9, #1
 8006eb8:	d106      	bne.n	8006ec8 <I2C_RequestMemoryWrite+0x108>
 8006eba:	fa5f f288 	uxtb.w	r2, r8
 8006ebe:	4620      	mov	r0, r4
 8006ec0:	611a      	str	r2, [r3, #16]
 8006ec2:	b003      	add	sp, #12
 8006ec4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ec8:	ea4f 2218 	mov.w	r2, r8, lsr #8
 8006ecc:	611a      	str	r2, [r3, #16]
 8006ece:	f1bb 3fff 	cmp.w	fp, #4294967295	; 0xffffffff
 8006ed2:	d127      	bne.n	8006f24 <I2C_RequestMemoryWrite+0x164>
 8006ed4:	695a      	ldr	r2, [r3, #20]
 8006ed6:	0610      	lsls	r0, r2, #24
 8006ed8:	d4ef      	bmi.n	8006eba <I2C_RequestMemoryWrite+0xfa>
 8006eda:	695a      	ldr	r2, [r3, #20]
 8006edc:	0551      	lsls	r1, r2, #21
 8006ede:	d5f9      	bpl.n	8006ed4 <I2C_RequestMemoryWrite+0x114>
 8006ee0:	e7c8      	b.n	8006e74 <I2C_RequestMemoryWrite+0xb4>
 8006ee2:	695a      	ldr	r2, [r3, #20]
 8006ee4:	0617      	lsls	r7, r2, #24
 8006ee6:	d4e5      	bmi.n	8006eb4 <I2C_RequestMemoryWrite+0xf4>
 8006ee8:	695a      	ldr	r2, [r3, #20]
 8006eea:	0550      	lsls	r0, r2, #21
 8006eec:	d4c2      	bmi.n	8006e74 <I2C_RequestMemoryWrite+0xb4>
 8006eee:	f7ff f86d 	bl	8005fcc <HAL_GetTick>
 8006ef2:	eba0 000a 	sub.w	r0, r0, sl
 8006ef6:	4583      	cmp	fp, r0
 8006ef8:	6833      	ldr	r3, [r6, #0]
 8006efa:	d302      	bcc.n	8006f02 <I2C_RequestMemoryWrite+0x142>
 8006efc:	f1bb 0f00 	cmp.w	fp, #0
 8006f00:	d1af      	bne.n	8006e62 <I2C_RequestMemoryWrite+0xa2>
 8006f02:	695a      	ldr	r2, [r3, #20]
 8006f04:	f012 0280 	ands.w	r2, r2, #128	; 0x80
 8006f08:	d1ab      	bne.n	8006e62 <I2C_RequestMemoryWrite+0xa2>
 8006f0a:	2120      	movs	r1, #32
 8006f0c:	6332      	str	r2, [r6, #48]	; 0x30
 8006f0e:	f886 103d 	strb.w	r1, [r6, #61]	; 0x3d
 8006f12:	f886 203e 	strb.w	r2, [r6, #62]	; 0x3e
 8006f16:	6c31      	ldr	r1, [r6, #64]	; 0x40
 8006f18:	f886 203c 	strb.w	r2, [r6, #60]	; 0x3c
 8006f1c:	f041 0120 	orr.w	r1, r1, #32
 8006f20:	6431      	str	r1, [r6, #64]	; 0x40
 8006f22:	e7b7      	b.n	8006e94 <I2C_RequestMemoryWrite+0xd4>
 8006f24:	695a      	ldr	r2, [r3, #20]
 8006f26:	0612      	lsls	r2, r2, #24
 8006f28:	d4c7      	bmi.n	8006eba <I2C_RequestMemoryWrite+0xfa>
 8006f2a:	695a      	ldr	r2, [r3, #20]
 8006f2c:	0555      	lsls	r5, r2, #21
 8006f2e:	d4a1      	bmi.n	8006e74 <I2C_RequestMemoryWrite+0xb4>
 8006f30:	f7ff f84c 	bl	8005fcc <HAL_GetTick>
 8006f34:	eba0 000a 	sub.w	r0, r0, sl
 8006f38:	4583      	cmp	fp, r0
 8006f3a:	6833      	ldr	r3, [r6, #0]
 8006f3c:	d302      	bcc.n	8006f44 <I2C_RequestMemoryWrite+0x184>
 8006f3e:	f1bb 0f00 	cmp.w	fp, #0
 8006f42:	d1c4      	bne.n	8006ece <I2C_RequestMemoryWrite+0x10e>
 8006f44:	695a      	ldr	r2, [r3, #20]
 8006f46:	f012 0280 	ands.w	r2, r2, #128	; 0x80
 8006f4a:	d1c0      	bne.n	8006ece <I2C_RequestMemoryWrite+0x10e>
 8006f4c:	e7dd      	b.n	8006f0a <I2C_RequestMemoryWrite+0x14a>
 8006f4e:	bf00      	nop

08006f50 <I2C_RequestMemoryRead>:
 8006f50:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006f54:	6805      	ldr	r5, [r0, #0]
 8006f56:	4699      	mov	r9, r3
 8006f58:	682b      	ldr	r3, [r5, #0]
 8006f5a:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8006f5e:	602b      	str	r3, [r5, #0]
 8006f60:	682b      	ldr	r3, [r5, #0]
 8006f62:	b083      	sub	sp, #12
 8006f64:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8006f68:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8006f6a:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
 8006f6e:	602b      	str	r3, [r5, #0]
 8006f70:	4606      	mov	r6, r0
 8006f72:	468b      	mov	fp, r1
 8006f74:	4690      	mov	r8, r2
 8006f76:	1c79      	adds	r1, r7, #1
 8006f78:	d111      	bne.n	8006f9e <I2C_RequestMemoryRead+0x4e>
 8006f7a:	696c      	ldr	r4, [r5, #20]
 8006f7c:	07e2      	lsls	r2, r4, #31
 8006f7e:	d5fc      	bpl.n	8006f7a <I2C_RequestMemoryRead+0x2a>
 8006f80:	f00b 03fe 	and.w	r3, fp, #254	; 0xfe
 8006f84:	612b      	str	r3, [r5, #16]
 8006f86:	4652      	mov	r2, sl
 8006f88:	4639      	mov	r1, r7
 8006f8a:	4630      	mov	r0, r6
 8006f8c:	fa5f fb8b 	uxtb.w	fp, fp
 8006f90:	f7ff fe82 	bl	8006c98 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0>
 8006f94:	b338      	cbz	r0, 8006fe6 <I2C_RequestMemoryRead+0x96>
 8006f96:	2001      	movs	r0, #1
 8006f98:	b003      	add	sp, #12
 8006f9a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006f9e:	696b      	ldr	r3, [r5, #20]
 8006fa0:	07db      	lsls	r3, r3, #31
 8006fa2:	d4ed      	bmi.n	8006f80 <I2C_RequestMemoryRead+0x30>
 8006fa4:	f7ff f812 	bl	8005fcc <HAL_GetTick>
 8006fa8:	eba0 000a 	sub.w	r0, r0, sl
 8006fac:	4287      	cmp	r7, r0
 8006fae:	6835      	ldr	r5, [r6, #0]
 8006fb0:	d241      	bcs.n	8007036 <I2C_RequestMemoryRead+0xe6>
 8006fb2:	696b      	ldr	r3, [r5, #20]
 8006fb4:	07dc      	lsls	r4, r3, #31
 8006fb6:	d4de      	bmi.n	8006f76 <I2C_RequestMemoryRead+0x26>
 8006fb8:	2200      	movs	r2, #0
 8006fba:	2320      	movs	r3, #32
 8006fbc:	6332      	str	r2, [r6, #48]	; 0x30
 8006fbe:	f886 303d 	strb.w	r3, [r6, #61]	; 0x3d
 8006fc2:	f886 203e 	strb.w	r2, [r6, #62]	; 0x3e
 8006fc6:	6c33      	ldr	r3, [r6, #64]	; 0x40
 8006fc8:	f886 203c 	strb.w	r2, [r6, #60]	; 0x3c
 8006fcc:	f043 0320 	orr.w	r3, r3, #32
 8006fd0:	6433      	str	r3, [r6, #64]	; 0x40
 8006fd2:	682b      	ldr	r3, [r5, #0]
 8006fd4:	05d8      	lsls	r0, r3, #23
 8006fd6:	d502      	bpl.n	8006fde <I2C_RequestMemoryRead+0x8e>
 8006fd8:	f44f 7300 	mov.w	r3, #512	; 0x200
 8006fdc:	6433      	str	r3, [r6, #64]	; 0x40
 8006fde:	2003      	movs	r0, #3
 8006fe0:	b003      	add	sp, #12
 8006fe2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006fe6:	6834      	ldr	r4, [r6, #0]
 8006fe8:	9001      	str	r0, [sp, #4]
 8006fea:	6963      	ldr	r3, [r4, #20]
 8006fec:	9301      	str	r3, [sp, #4]
 8006fee:	69a3      	ldr	r3, [r4, #24]
 8006ff0:	9301      	str	r3, [sp, #4]
 8006ff2:	9b01      	ldr	r3, [sp, #4]
 8006ff4:	1c78      	adds	r0, r7, #1
 8006ff6:	d176      	bne.n	80070e6 <I2C_RequestMemoryRead+0x196>
 8006ff8:	6963      	ldr	r3, [r4, #20]
 8006ffa:	0619      	lsls	r1, r3, #24
 8006ffc:	d421      	bmi.n	8007042 <I2C_RequestMemoryRead+0xf2>
 8006ffe:	6963      	ldr	r3, [r4, #20]
 8007000:	055a      	lsls	r2, r3, #21
 8007002:	d5f9      	bpl.n	8006ff8 <I2C_RequestMemoryRead+0xa8>
 8007004:	2200      	movs	r2, #0
 8007006:	2320      	movs	r3, #32
 8007008:	f46f 6180 	mvn.w	r1, #1024	; 0x400
 800700c:	6161      	str	r1, [r4, #20]
 800700e:	6332      	str	r2, [r6, #48]	; 0x30
 8007010:	f886 303d 	strb.w	r3, [r6, #61]	; 0x3d
 8007014:	f886 203e 	strb.w	r2, [r6, #62]	; 0x3e
 8007018:	6c33      	ldr	r3, [r6, #64]	; 0x40
 800701a:	f886 203c 	strb.w	r2, [r6, #60]	; 0x3c
 800701e:	f043 0304 	orr.w	r3, r3, #4
 8007022:	6433      	str	r3, [r6, #64]	; 0x40
 8007024:	6c33      	ldr	r3, [r6, #64]	; 0x40
 8007026:	2b04      	cmp	r3, #4
 8007028:	d1b5      	bne.n	8006f96 <I2C_RequestMemoryRead+0x46>
 800702a:	6823      	ldr	r3, [r4, #0]
 800702c:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8007030:	2001      	movs	r0, #1
 8007032:	6023      	str	r3, [r4, #0]
 8007034:	e7b0      	b.n	8006f98 <I2C_RequestMemoryRead+0x48>
 8007036:	2f00      	cmp	r7, #0
 8007038:	d19d      	bne.n	8006f76 <I2C_RequestMemoryRead+0x26>
 800703a:	696b      	ldr	r3, [r5, #20]
 800703c:	07dc      	lsls	r4, r3, #31
 800703e:	d49a      	bmi.n	8006f76 <I2C_RequestMemoryRead+0x26>
 8007040:	e7ba      	b.n	8006fb8 <I2C_RequestMemoryRead+0x68>
 8007042:	f1b9 0f01 	cmp.w	r9, #1
 8007046:	d10b      	bne.n	8007060 <I2C_RequestMemoryRead+0x110>
 8007048:	fa5f f388 	uxtb.w	r3, r8
 800704c:	6123      	str	r3, [r4, #16]
 800704e:	1c78      	adds	r0, r7, #1
 8007050:	d16b      	bne.n	800712a <I2C_RequestMemoryRead+0x1da>
 8007052:	6963      	ldr	r3, [r4, #20]
 8007054:	0619      	lsls	r1, r3, #24
 8007056:	d40f      	bmi.n	8007078 <I2C_RequestMemoryRead+0x128>
 8007058:	6963      	ldr	r3, [r4, #20]
 800705a:	055a      	lsls	r2, r3, #21
 800705c:	d5f9      	bpl.n	8007052 <I2C_RequestMemoryRead+0x102>
 800705e:	e7d1      	b.n	8007004 <I2C_RequestMemoryRead+0xb4>
 8007060:	ea4f 2318 	mov.w	r3, r8, lsr #8
 8007064:	6123      	str	r3, [r4, #16]
 8007066:	1c78      	adds	r0, r7, #1
 8007068:	d175      	bne.n	8007156 <I2C_RequestMemoryRead+0x206>
 800706a:	6963      	ldr	r3, [r4, #20]
 800706c:	0619      	lsls	r1, r3, #24
 800706e:	d4eb      	bmi.n	8007048 <I2C_RequestMemoryRead+0xf8>
 8007070:	6963      	ldr	r3, [r4, #20]
 8007072:	055a      	lsls	r2, r3, #21
 8007074:	d5f9      	bpl.n	800706a <I2C_RequestMemoryRead+0x11a>
 8007076:	e7c5      	b.n	8007004 <I2C_RequestMemoryRead+0xb4>
 8007078:	6823      	ldr	r3, [r4, #0]
 800707a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800707e:	6023      	str	r3, [r4, #0]
 8007080:	1c79      	adds	r1, r7, #1
 8007082:	d10e      	bne.n	80070a2 <I2C_RequestMemoryRead+0x152>
 8007084:	6963      	ldr	r3, [r4, #20]
 8007086:	07da      	lsls	r2, r3, #31
 8007088:	d5fc      	bpl.n	8007084 <I2C_RequestMemoryRead+0x134>
 800708a:	f04b 0301 	orr.w	r3, fp, #1
 800708e:	6123      	str	r3, [r4, #16]
 8007090:	4652      	mov	r2, sl
 8007092:	4639      	mov	r1, r7
 8007094:	4630      	mov	r0, r6
 8007096:	f7ff fdff 	bl	8006c98 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0>
 800709a:	3800      	subs	r0, #0
 800709c:	bf18      	it	ne
 800709e:	2001      	movne	r0, #1
 80070a0:	e77a      	b.n	8006f98 <I2C_RequestMemoryRead+0x48>
 80070a2:	6963      	ldr	r3, [r4, #20]
 80070a4:	07db      	lsls	r3, r3, #31
 80070a6:	d4f0      	bmi.n	800708a <I2C_RequestMemoryRead+0x13a>
 80070a8:	f7fe ff90 	bl	8005fcc <HAL_GetTick>
 80070ac:	eba0 000a 	sub.w	r0, r0, sl
 80070b0:	4287      	cmp	r7, r0
 80070b2:	6834      	ldr	r4, [r6, #0]
 80070b4:	d214      	bcs.n	80070e0 <I2C_RequestMemoryRead+0x190>
 80070b6:	6963      	ldr	r3, [r4, #20]
 80070b8:	07dd      	lsls	r5, r3, #31
 80070ba:	d4e1      	bmi.n	8007080 <I2C_RequestMemoryRead+0x130>
 80070bc:	2200      	movs	r2, #0
 80070be:	2320      	movs	r3, #32
 80070c0:	6332      	str	r2, [r6, #48]	; 0x30
 80070c2:	f886 303d 	strb.w	r3, [r6, #61]	; 0x3d
 80070c6:	f886 203e 	strb.w	r2, [r6, #62]	; 0x3e
 80070ca:	6c33      	ldr	r3, [r6, #64]	; 0x40
 80070cc:	f886 203c 	strb.w	r2, [r6, #60]	; 0x3c
 80070d0:	f043 0320 	orr.w	r3, r3, #32
 80070d4:	6433      	str	r3, [r6, #64]	; 0x40
 80070d6:	6823      	ldr	r3, [r4, #0]
 80070d8:	05d8      	lsls	r0, r3, #23
 80070da:	f53f af7d 	bmi.w	8006fd8 <I2C_RequestMemoryRead+0x88>
 80070de:	e77e      	b.n	8006fde <I2C_RequestMemoryRead+0x8e>
 80070e0:	2f00      	cmp	r7, #0
 80070e2:	d1cd      	bne.n	8007080 <I2C_RequestMemoryRead+0x130>
 80070e4:	e7e7      	b.n	80070b6 <I2C_RequestMemoryRead+0x166>
 80070e6:	6963      	ldr	r3, [r4, #20]
 80070e8:	061b      	lsls	r3, r3, #24
 80070ea:	d4aa      	bmi.n	8007042 <I2C_RequestMemoryRead+0xf2>
 80070ec:	6963      	ldr	r3, [r4, #20]
 80070ee:	055d      	lsls	r5, r3, #21
 80070f0:	d488      	bmi.n	8007004 <I2C_RequestMemoryRead+0xb4>
 80070f2:	f7fe ff6b 	bl	8005fcc <HAL_GetTick>
 80070f6:	eba0 000a 	sub.w	r0, r0, sl
 80070fa:	4287      	cmp	r7, r0
 80070fc:	6834      	ldr	r4, [r6, #0]
 80070fe:	d302      	bcc.n	8007106 <I2C_RequestMemoryRead+0x1b6>
 8007100:	2f00      	cmp	r7, #0
 8007102:	f47f af77 	bne.w	8006ff4 <I2C_RequestMemoryRead+0xa4>
 8007106:	6963      	ldr	r3, [r4, #20]
 8007108:	f013 0380 	ands.w	r3, r3, #128	; 0x80
 800710c:	f47f af72 	bne.w	8006ff4 <I2C_RequestMemoryRead+0xa4>
 8007110:	2220      	movs	r2, #32
 8007112:	6333      	str	r3, [r6, #48]	; 0x30
 8007114:	f886 203d 	strb.w	r2, [r6, #61]	; 0x3d
 8007118:	f886 303e 	strb.w	r3, [r6, #62]	; 0x3e
 800711c:	6c32      	ldr	r2, [r6, #64]	; 0x40
 800711e:	f886 303c 	strb.w	r3, [r6, #60]	; 0x3c
 8007122:	f042 0220 	orr.w	r2, r2, #32
 8007126:	6432      	str	r2, [r6, #64]	; 0x40
 8007128:	e77c      	b.n	8007024 <I2C_RequestMemoryRead+0xd4>
 800712a:	6963      	ldr	r3, [r4, #20]
 800712c:	061b      	lsls	r3, r3, #24
 800712e:	d4a3      	bmi.n	8007078 <I2C_RequestMemoryRead+0x128>
 8007130:	6963      	ldr	r3, [r4, #20]
 8007132:	055d      	lsls	r5, r3, #21
 8007134:	f53f af66 	bmi.w	8007004 <I2C_RequestMemoryRead+0xb4>
 8007138:	f7fe ff48 	bl	8005fcc <HAL_GetTick>
 800713c:	eba0 000a 	sub.w	r0, r0, sl
 8007140:	4287      	cmp	r7, r0
 8007142:	6834      	ldr	r4, [r6, #0]
 8007144:	d301      	bcc.n	800714a <I2C_RequestMemoryRead+0x1fa>
 8007146:	2f00      	cmp	r7, #0
 8007148:	d181      	bne.n	800704e <I2C_RequestMemoryRead+0xfe>
 800714a:	6963      	ldr	r3, [r4, #20]
 800714c:	f013 0380 	ands.w	r3, r3, #128	; 0x80
 8007150:	f47f af7d 	bne.w	800704e <I2C_RequestMemoryRead+0xfe>
 8007154:	e7dc      	b.n	8007110 <I2C_RequestMemoryRead+0x1c0>
 8007156:	6963      	ldr	r3, [r4, #20]
 8007158:	061b      	lsls	r3, r3, #24
 800715a:	f53f af75 	bmi.w	8007048 <I2C_RequestMemoryRead+0xf8>
 800715e:	6963      	ldr	r3, [r4, #20]
 8007160:	055d      	lsls	r5, r3, #21
 8007162:	f53f af4f 	bmi.w	8007004 <I2C_RequestMemoryRead+0xb4>
 8007166:	f7fe ff31 	bl	8005fcc <HAL_GetTick>
 800716a:	eba0 000a 	sub.w	r0, r0, sl
 800716e:	4287      	cmp	r7, r0
 8007170:	6834      	ldr	r4, [r6, #0]
 8007172:	d302      	bcc.n	800717a <I2C_RequestMemoryRead+0x22a>
 8007174:	2f00      	cmp	r7, #0
 8007176:	f47f af76 	bne.w	8007066 <I2C_RequestMemoryRead+0x116>
 800717a:	6963      	ldr	r3, [r4, #20]
 800717c:	f013 0380 	ands.w	r3, r3, #128	; 0x80
 8007180:	f47f af71 	bne.w	8007066 <I2C_RequestMemoryRead+0x116>
 8007184:	e7c4      	b.n	8007110 <I2C_RequestMemoryRead+0x1c0>
 8007186:	bf00      	nop

08007188 <HAL_I2C_Init>:
 8007188:	2800      	cmp	r0, #0
 800718a:	f000 80b9 	beq.w	8007300 <HAL_I2C_Init+0x178>
 800718e:	b570      	push	{r4, r5, r6, lr}
 8007190:	f890 303d 	ldrb.w	r3, [r0, #61]	; 0x3d
 8007194:	4604      	mov	r4, r0
 8007196:	f003 02ff 	and.w	r2, r3, #255	; 0xff
 800719a:	2b00      	cmp	r3, #0
 800719c:	f000 8098 	beq.w	80072d0 <HAL_I2C_Init+0x148>
 80071a0:	6823      	ldr	r3, [r4, #0]
 80071a2:	2224      	movs	r2, #36	; 0x24
 80071a4:	f884 203d 	strb.w	r2, [r4, #61]	; 0x3d
 80071a8:	681a      	ldr	r2, [r3, #0]
 80071aa:	f022 0201 	bic.w	r2, r2, #1
 80071ae:	601a      	str	r2, [r3, #0]
 80071b0:	681a      	ldr	r2, [r3, #0]
 80071b2:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 80071b6:	601a      	str	r2, [r3, #0]
 80071b8:	681a      	ldr	r2, [r3, #0]
 80071ba:	f422 4200 	bic.w	r2, r2, #32768	; 0x8000
 80071be:	601a      	str	r2, [r3, #0]
 80071c0:	f7fe fc10 	bl	80059e4 <HAL_RCC_GetPCLK1Freq>
 80071c4:	6863      	ldr	r3, [r4, #4]
 80071c6:	494f      	ldr	r1, [pc, #316]	; (8007304 <HAL_I2C_Init+0x17c>)
 80071c8:	428b      	cmp	r3, r1
 80071ca:	d84f      	bhi.n	800726c <HAL_I2C_Init+0xe4>
 80071cc:	4a4e      	ldr	r2, [pc, #312]	; (8007308 <HAL_I2C_Init+0x180>)
 80071ce:	4290      	cmp	r0, r2
 80071d0:	d97c      	bls.n	80072cc <HAL_I2C_Init+0x144>
 80071d2:	4d4e      	ldr	r5, [pc, #312]	; (800730c <HAL_I2C_Init+0x184>)
 80071d4:	005a      	lsls	r2, r3, #1
 80071d6:	fba5 3500 	umull	r3, r5, r5, r0
 80071da:	1e43      	subs	r3, r0, #1
 80071dc:	fbb3 f3f2 	udiv	r3, r3, r2
 80071e0:	6822      	ldr	r2, [r4, #0]
 80071e2:	6850      	ldr	r0, [r2, #4]
 80071e4:	f020 003f 	bic.w	r0, r0, #63	; 0x3f
 80071e8:	ea40 4095 	orr.w	r0, r0, r5, lsr #18
 80071ec:	6050      	str	r0, [r2, #4]
 80071ee:	0ca9      	lsrs	r1, r5, #18
 80071f0:	f101 0c01 	add.w	ip, r1, #1
 80071f4:	6a11      	ldr	r1, [r2, #32]
 80071f6:	f021 013f 	bic.w	r1, r1, #63	; 0x3f
 80071fa:	ea41 010c 	orr.w	r1, r1, ip
 80071fe:	6211      	str	r1, [r2, #32]
 8007200:	69d1      	ldr	r1, [r2, #28]
 8007202:	f640 7efc 	movw	lr, #4092	; 0xffc
 8007206:	3301      	adds	r3, #1
 8007208:	f421 414f 	bic.w	r1, r1, #52992	; 0xcf00
 800720c:	ea13 0f0e 	tst.w	r3, lr
 8007210:	f021 01ff 	bic.w	r1, r1, #255	; 0xff
 8007214:	d161      	bne.n	80072da <HAL_I2C_Init+0x152>
 8007216:	2304      	movs	r3, #4
 8007218:	430b      	orrs	r3, r1
 800721a:	61d3      	str	r3, [r2, #28]
 800721c:	e9d4 3007 	ldrd	r3, r0, [r4, #28]
 8007220:	6811      	ldr	r1, [r2, #0]
 8007222:	4303      	orrs	r3, r0
 8007224:	f021 01c0 	bic.w	r1, r1, #192	; 0xc0
 8007228:	430b      	orrs	r3, r1
 800722a:	6013      	str	r3, [r2, #0]
 800722c:	6891      	ldr	r1, [r2, #8]
 800722e:	e9d4 0303 	ldrd	r0, r3, [r4, #12]
 8007232:	f421 4103 	bic.w	r1, r1, #33536	; 0x8300
 8007236:	4303      	orrs	r3, r0
 8007238:	f021 01ff 	bic.w	r1, r1, #255	; 0xff
 800723c:	430b      	orrs	r3, r1
 800723e:	6093      	str	r3, [r2, #8]
 8007240:	e9d4 3005 	ldrd	r3, r0, [r4, #20]
 8007244:	68d1      	ldr	r1, [r2, #12]
 8007246:	4303      	orrs	r3, r0
 8007248:	f021 01ff 	bic.w	r1, r1, #255	; 0xff
 800724c:	430b      	orrs	r3, r1
 800724e:	60d3      	str	r3, [r2, #12]
 8007250:	6811      	ldr	r1, [r2, #0]
 8007252:	2300      	movs	r3, #0
 8007254:	f041 0101 	orr.w	r1, r1, #1
 8007258:	2020      	movs	r0, #32
 800725a:	6011      	str	r1, [r2, #0]
 800725c:	6423      	str	r3, [r4, #64]	; 0x40
 800725e:	f884 003d 	strb.w	r0, [r4, #61]	; 0x3d
 8007262:	6323      	str	r3, [r4, #48]	; 0x30
 8007264:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 8007268:	4618      	mov	r0, r3
 800726a:	bd70      	pop	{r4, r5, r6, pc}
 800726c:	4a28      	ldr	r2, [pc, #160]	; (8007310 <HAL_I2C_Init+0x188>)
 800726e:	4290      	cmp	r0, r2
 8007270:	d92c      	bls.n	80072cc <HAL_I2C_Init+0x144>
 8007272:	4d26      	ldr	r5, [pc, #152]	; (800730c <HAL_I2C_Init+0x184>)
 8007274:	4e27      	ldr	r6, [pc, #156]	; (8007314 <HAL_I2C_Init+0x18c>)
 8007276:	fba5 2c00 	umull	r2, ip, r5, r0
 800727a:	6822      	ldr	r2, [r4, #0]
 800727c:	6855      	ldr	r5, [r2, #4]
 800727e:	f025 053f 	bic.w	r5, r5, #63	; 0x3f
 8007282:	ea45 459c 	orr.w	r5, r5, ip, lsr #18
 8007286:	6055      	str	r5, [r2, #4]
 8007288:	ea4f 419c 	mov.w	r1, ip, lsr #18
 800728c:	f44f 7596 	mov.w	r5, #300	; 0x12c
 8007290:	fb05 f101 	mul.w	r1, r5, r1
 8007294:	fba6 5101 	umull	r5, r1, r6, r1
 8007298:	6a15      	ldr	r5, [r2, #32]
 800729a:	0989      	lsrs	r1, r1, #6
 800729c:	f025 053f 	bic.w	r5, r5, #63	; 0x3f
 80072a0:	3101      	adds	r1, #1
 80072a2:	4329      	orrs	r1, r5
 80072a4:	6211      	str	r1, [r2, #32]
 80072a6:	69d1      	ldr	r1, [r2, #28]
 80072a8:	68a5      	ldr	r5, [r4, #8]
 80072aa:	f421 414f 	bic.w	r1, r1, #52992	; 0xcf00
 80072ae:	f021 01ff 	bic.w	r1, r1, #255	; 0xff
 80072b2:	b9ad      	cbnz	r5, 80072e0 <HAL_I2C_Init+0x158>
 80072b4:	3801      	subs	r0, #1
 80072b6:	eb03 0343 	add.w	r3, r3, r3, lsl #1
 80072ba:	fbb0 f3f3 	udiv	r3, r0, r3
 80072be:	3301      	adds	r3, #1
 80072c0:	f3c3 030b 	ubfx	r3, r3, #0, #12
 80072c4:	b1d3      	cbz	r3, 80072fc <HAL_I2C_Init+0x174>
 80072c6:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80072ca:	e7a5      	b.n	8007218 <HAL_I2C_Init+0x90>
 80072cc:	2001      	movs	r0, #1
 80072ce:	bd70      	pop	{r4, r5, r6, pc}
 80072d0:	f880 203c 	strb.w	r2, [r0, #60]	; 0x3c
 80072d4:	f7fd fa2c 	bl	8004730 <HAL_I2C_MspInit>
 80072d8:	e762      	b.n	80071a0 <HAL_I2C_Init+0x18>
 80072da:	f3c3 030b 	ubfx	r3, r3, #0, #12
 80072de:	e79b      	b.n	8007218 <HAL_I2C_Init+0x90>
 80072e0:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 80072e4:	3801      	subs	r0, #1
 80072e6:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 80072ea:	fbb0 f3f3 	udiv	r3, r0, r3
 80072ee:	3301      	adds	r3, #1
 80072f0:	f3c3 030b 	ubfx	r3, r3, #0, #12
 80072f4:	b113      	cbz	r3, 80072fc <HAL_I2C_Init+0x174>
 80072f6:	f443 4340 	orr.w	r3, r3, #49152	; 0xc000
 80072fa:	e78d      	b.n	8007218 <HAL_I2C_Init+0x90>
 80072fc:	2301      	movs	r3, #1
 80072fe:	e78b      	b.n	8007218 <HAL_I2C_Init+0x90>
 8007300:	2001      	movs	r0, #1
 8007302:	4770      	bx	lr
 8007304:	000186a0 	.word	0x000186a0
 8007308:	001e847f 	.word	0x001e847f
 800730c:	431bde83 	.word	0x431bde83
 8007310:	003d08ff 	.word	0x003d08ff
 8007314:	10624dd3 	.word	0x10624dd3

08007318 <HAL_I2C_Master_Transmit>:
 8007318:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800731c:	4604      	mov	r4, r0
 800731e:	b082      	sub	sp, #8
 8007320:	4699      	mov	r9, r3
 8007322:	9f0a      	ldr	r7, [sp, #40]	; 0x28
 8007324:	4688      	mov	r8, r1
 8007326:	4692      	mov	sl, r2
 8007328:	f7fe fe50 	bl	8005fcc <HAL_GetTick>
 800732c:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
 8007330:	2b20      	cmp	r3, #32
 8007332:	d004      	beq.n	800733e <HAL_I2C_Master_Transmit+0x26>
 8007334:	2502      	movs	r5, #2
 8007336:	4628      	mov	r0, r5
 8007338:	b002      	add	sp, #8
 800733a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800733e:	6825      	ldr	r5, [r4, #0]
 8007340:	4606      	mov	r6, r0
 8007342:	69ab      	ldr	r3, [r5, #24]
 8007344:	079b      	lsls	r3, r3, #30
 8007346:	d517      	bpl.n	8007378 <HAL_I2C_Master_Transmit+0x60>
 8007348:	f7fe fe40 	bl	8005fcc <HAL_GetTick>
 800734c:	1b85      	subs	r5, r0, r6
 800734e:	2d19      	cmp	r5, #25
 8007350:	6825      	ldr	r5, [r4, #0]
 8007352:	d9f6      	bls.n	8007342 <HAL_I2C_Master_Transmit+0x2a>
 8007354:	69ab      	ldr	r3, [r5, #24]
 8007356:	43db      	mvns	r3, r3
 8007358:	f013 0302 	ands.w	r3, r3, #2
 800735c:	d1f1      	bne.n	8007342 <HAL_I2C_Master_Transmit+0x2a>
 800735e:	2220      	movs	r2, #32
 8007360:	6323      	str	r3, [r4, #48]	; 0x30
 8007362:	f884 203d 	strb.w	r2, [r4, #61]	; 0x3d
 8007366:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 800736a:	6c22      	ldr	r2, [r4, #64]	; 0x40
 800736c:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 8007370:	f042 0220 	orr.w	r2, r2, #32
 8007374:	6422      	str	r2, [r4, #64]	; 0x40
 8007376:	e7dd      	b.n	8007334 <HAL_I2C_Master_Transmit+0x1c>
 8007378:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
 800737c:	2b01      	cmp	r3, #1
 800737e:	d0d9      	beq.n	8007334 <HAL_I2C_Master_Transmit+0x1c>
 8007380:	2301      	movs	r3, #1
 8007382:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 8007386:	682b      	ldr	r3, [r5, #0]
 8007388:	07d8      	lsls	r0, r3, #31
 800738a:	f140 8082 	bpl.w	8007492 <HAL_I2C_Master_Transmit+0x17a>
 800738e:	682b      	ldr	r3, [r5, #0]
 8007390:	4a89      	ldr	r2, [pc, #548]	; (80075b8 <HAL_I2C_Master_Transmit+0x2a0>)
 8007392:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8007396:	602b      	str	r3, [r5, #0]
 8007398:	2321      	movs	r3, #33	; 0x21
 800739a:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 800739e:	2310      	movs	r3, #16
 80073a0:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 80073a4:	2300      	movs	r3, #0
 80073a6:	6423      	str	r3, [r4, #64]	; 0x40
 80073a8:	f8a4 902a 	strh.w	r9, [r4, #42]	; 0x2a
 80073ac:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 80073ae:	62e2      	str	r2, [r4, #44]	; 0x2c
 80073b0:	8523      	strh	r3, [r4, #40]	; 0x28
 80073b2:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 80073b4:	f8c4 a024 	str.w	sl, [r4, #36]	; 0x24
 80073b8:	2b08      	cmp	r3, #8
 80073ba:	d006      	beq.n	80073ca <HAL_I2C_Master_Transmit+0xb2>
 80073bc:	2b01      	cmp	r3, #1
 80073be:	d004      	beq.n	80073ca <HAL_I2C_Master_Transmit+0xb2>
 80073c0:	4293      	cmp	r3, r2
 80073c2:	d002      	beq.n	80073ca <HAL_I2C_Master_Transmit+0xb2>
 80073c4:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80073c6:	2b12      	cmp	r3, #18
 80073c8:	d103      	bne.n	80073d2 <HAL_I2C_Master_Transmit+0xba>
 80073ca:	682b      	ldr	r3, [r5, #0]
 80073cc:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80073d0:	602b      	str	r3, [r5, #0]
 80073d2:	1c7b      	adds	r3, r7, #1
 80073d4:	d13d      	bne.n	8007452 <HAL_I2C_Master_Transmit+0x13a>
 80073d6:	696b      	ldr	r3, [r5, #20]
 80073d8:	07d8      	lsls	r0, r3, #31
 80073da:	d5fc      	bpl.n	80073d6 <HAL_I2C_Master_Transmit+0xbe>
 80073dc:	6923      	ldr	r3, [r4, #16]
 80073de:	f5b3 4f80 	cmp.w	r3, #16384	; 0x4000
 80073e2:	d15b      	bne.n	800749c <HAL_I2C_Master_Transmit+0x184>
 80073e4:	f008 01fe 	and.w	r1, r8, #254	; 0xfe
 80073e8:	6129      	str	r1, [r5, #16]
 80073ea:	4632      	mov	r2, r6
 80073ec:	4639      	mov	r1, r7
 80073ee:	4620      	mov	r0, r4
 80073f0:	f7ff fc52 	bl	8006c98 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0>
 80073f4:	4605      	mov	r5, r0
 80073f6:	bb38      	cbnz	r0, 8007448 <HAL_I2C_Master_Transmit+0x130>
 80073f8:	6823      	ldr	r3, [r4, #0]
 80073fa:	9001      	str	r0, [sp, #4]
 80073fc:	695a      	ldr	r2, [r3, #20]
 80073fe:	9201      	str	r2, [sp, #4]
 8007400:	699a      	ldr	r2, [r3, #24]
 8007402:	9201      	str	r2, [sp, #4]
 8007404:	9a01      	ldr	r2, [sp, #4]
 8007406:	8d22      	ldrh	r2, [r4, #40]	; 0x28
 8007408:	2a00      	cmp	r2, #0
 800740a:	f000 808c 	beq.w	8007526 <HAL_I2C_Master_Transmit+0x20e>
 800740e:	1c78      	adds	r0, r7, #1
 8007410:	f040 8096 	bne.w	8007540 <HAL_I2C_Master_Transmit+0x228>
 8007414:	695a      	ldr	r2, [r3, #20]
 8007416:	0611      	lsls	r1, r2, #24
 8007418:	d456      	bmi.n	80074c8 <HAL_I2C_Master_Transmit+0x1b0>
 800741a:	695a      	ldr	r2, [r3, #20]
 800741c:	0552      	lsls	r2, r2, #21
 800741e:	d5f9      	bpl.n	8007414 <HAL_I2C_Master_Transmit+0xfc>
 8007420:	2100      	movs	r1, #0
 8007422:	2220      	movs	r2, #32
 8007424:	f46f 6080 	mvn.w	r0, #1024	; 0x400
 8007428:	6158      	str	r0, [r3, #20]
 800742a:	6321      	str	r1, [r4, #48]	; 0x30
 800742c:	f884 203d 	strb.w	r2, [r4, #61]	; 0x3d
 8007430:	f884 103e 	strb.w	r1, [r4, #62]	; 0x3e
 8007434:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8007436:	f884 103c 	strb.w	r1, [r4, #60]	; 0x3c
 800743a:	f042 0204 	orr.w	r2, r2, #4
 800743e:	6422      	str	r2, [r4, #64]	; 0x40
 8007440:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8007442:	2a04      	cmp	r2, #4
 8007444:	f000 80b2 	beq.w	80075ac <HAL_I2C_Master_Transmit+0x294>
 8007448:	2501      	movs	r5, #1
 800744a:	4628      	mov	r0, r5
 800744c:	b002      	add	sp, #8
 800744e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007452:	696b      	ldr	r3, [r5, #20]
 8007454:	07d9      	lsls	r1, r3, #31
 8007456:	d4c1      	bmi.n	80073dc <HAL_I2C_Master_Transmit+0xc4>
 8007458:	f7fe fdb8 	bl	8005fcc <HAL_GetTick>
 800745c:	1b80      	subs	r0, r0, r6
 800745e:	4287      	cmp	r7, r0
 8007460:	6825      	ldr	r5, [r4, #0]
 8007462:	d22e      	bcs.n	80074c2 <HAL_I2C_Master_Transmit+0x1aa>
 8007464:	696b      	ldr	r3, [r5, #20]
 8007466:	07d9      	lsls	r1, r3, #31
 8007468:	d4b3      	bmi.n	80073d2 <HAL_I2C_Master_Transmit+0xba>
 800746a:	2200      	movs	r2, #0
 800746c:	2320      	movs	r3, #32
 800746e:	6322      	str	r2, [r4, #48]	; 0x30
 8007470:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 8007474:	f884 203e 	strb.w	r2, [r4, #62]	; 0x3e
 8007478:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800747a:	f884 203c 	strb.w	r2, [r4, #60]	; 0x3c
 800747e:	f043 0320 	orr.w	r3, r3, #32
 8007482:	6423      	str	r3, [r4, #64]	; 0x40
 8007484:	682b      	ldr	r3, [r5, #0]
 8007486:	05da      	lsls	r2, r3, #23
 8007488:	d5de      	bpl.n	8007448 <HAL_I2C_Master_Transmit+0x130>
 800748a:	f44f 7300 	mov.w	r3, #512	; 0x200
 800748e:	6423      	str	r3, [r4, #64]	; 0x40
 8007490:	e7da      	b.n	8007448 <HAL_I2C_Master_Transmit+0x130>
 8007492:	682b      	ldr	r3, [r5, #0]
 8007494:	f043 0301 	orr.w	r3, r3, #1
 8007498:	602b      	str	r3, [r5, #0]
 800749a:	e778      	b.n	800738e <HAL_I2C_Master_Transmit+0x76>
 800749c:	ea4f 13e8 	mov.w	r3, r8, asr #7
 80074a0:	f003 0306 	and.w	r3, r3, #6
 80074a4:	f043 03f0 	orr.w	r3, r3, #240	; 0xf0
 80074a8:	612b      	str	r3, [r5, #16]
 80074aa:	4632      	mov	r2, r6
 80074ac:	4639      	mov	r1, r7
 80074ae:	4620      	mov	r0, r4
 80074b0:	f7ff fc3c 	bl	8006d2c <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.1>
 80074b4:	2800      	cmp	r0, #0
 80074b6:	d1c7      	bne.n	8007448 <HAL_I2C_Master_Transmit+0x130>
 80074b8:	6822      	ldr	r2, [r4, #0]
 80074ba:	fa5f f388 	uxtb.w	r3, r8
 80074be:	6113      	str	r3, [r2, #16]
 80074c0:	e793      	b.n	80073ea <HAL_I2C_Master_Transmit+0xd2>
 80074c2:	2f00      	cmp	r7, #0
 80074c4:	d185      	bne.n	80073d2 <HAL_I2C_Master_Transmit+0xba>
 80074c6:	e7cd      	b.n	8007464 <HAL_I2C_Master_Transmit+0x14c>
 80074c8:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80074ca:	f8b4 c028 	ldrh.w	ip, [r4, #40]	; 0x28
 80074ce:	4601      	mov	r1, r0
 80074d0:	f811 2b01 	ldrb.w	r2, [r1], #1
 80074d4:	611a      	str	r2, [r3, #16]
 80074d6:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 80074d8:	6261      	str	r1, [r4, #36]	; 0x24
 80074da:	3a01      	subs	r2, #1
 80074dc:	b292      	uxth	r2, r2
 80074de:	8562      	strh	r2, [r4, #42]	; 0x2a
 80074e0:	6959      	ldr	r1, [r3, #20]
 80074e2:	f10c 32ff 	add.w	r2, ip, #4294967295	; 0xffffffff
 80074e6:	b292      	uxth	r2, r2
 80074e8:	0749      	lsls	r1, r1, #29
 80074ea:	8522      	strh	r2, [r4, #40]	; 0x28
 80074ec:	d50c      	bpl.n	8007508 <HAL_I2C_Master_Transmit+0x1f0>
 80074ee:	b15a      	cbz	r2, 8007508 <HAL_I2C_Master_Transmit+0x1f0>
 80074f0:	7842      	ldrb	r2, [r0, #1]
 80074f2:	611a      	str	r2, [r3, #16]
 80074f4:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 80074f6:	3a01      	subs	r2, #1
 80074f8:	f1ac 0c02 	sub.w	ip, ip, #2
 80074fc:	3002      	adds	r0, #2
 80074fe:	b292      	uxth	r2, r2
 8007500:	f8a4 c028 	strh.w	ip, [r4, #40]	; 0x28
 8007504:	6260      	str	r0, [r4, #36]	; 0x24
 8007506:	8562      	strh	r2, [r4, #42]	; 0x2a
 8007508:	1c7a      	adds	r2, r7, #1
 800750a:	d13b      	bne.n	8007584 <HAL_I2C_Master_Transmit+0x26c>
 800750c:	695a      	ldr	r2, [r3, #20]
 800750e:	0750      	lsls	r0, r2, #29
 8007510:	d405      	bmi.n	800751e <HAL_I2C_Master_Transmit+0x206>
 8007512:	695a      	ldr	r2, [r3, #20]
 8007514:	0551      	lsls	r1, r2, #21
 8007516:	d483      	bmi.n	8007420 <HAL_I2C_Master_Transmit+0x108>
 8007518:	695a      	ldr	r2, [r3, #20]
 800751a:	0750      	lsls	r0, r2, #29
 800751c:	d5f9      	bpl.n	8007512 <HAL_I2C_Master_Transmit+0x1fa>
 800751e:	8d22      	ldrh	r2, [r4, #40]	; 0x28
 8007520:	2a00      	cmp	r2, #0
 8007522:	f47f af74 	bne.w	800740e <HAL_I2C_Master_Transmit+0xf6>
 8007526:	681a      	ldr	r2, [r3, #0]
 8007528:	2100      	movs	r1, #0
 800752a:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 800752e:	2020      	movs	r0, #32
 8007530:	601a      	str	r2, [r3, #0]
 8007532:	f884 003d 	strb.w	r0, [r4, #61]	; 0x3d
 8007536:	f884 103c 	strb.w	r1, [r4, #60]	; 0x3c
 800753a:	f884 103e 	strb.w	r1, [r4, #62]	; 0x3e
 800753e:	e6fa      	b.n	8007336 <HAL_I2C_Master_Transmit+0x1e>
 8007540:	695a      	ldr	r2, [r3, #20]
 8007542:	0610      	lsls	r0, r2, #24
 8007544:	d4c0      	bmi.n	80074c8 <HAL_I2C_Master_Transmit+0x1b0>
 8007546:	695a      	ldr	r2, [r3, #20]
 8007548:	0552      	lsls	r2, r2, #21
 800754a:	f53f af69 	bmi.w	8007420 <HAL_I2C_Master_Transmit+0x108>
 800754e:	f7fe fd3d 	bl	8005fcc <HAL_GetTick>
 8007552:	1b80      	subs	r0, r0, r6
 8007554:	4287      	cmp	r7, r0
 8007556:	6823      	ldr	r3, [r4, #0]
 8007558:	d302      	bcc.n	8007560 <HAL_I2C_Master_Transmit+0x248>
 800755a:	2f00      	cmp	r7, #0
 800755c:	f47f af57 	bne.w	800740e <HAL_I2C_Master_Transmit+0xf6>
 8007560:	695a      	ldr	r2, [r3, #20]
 8007562:	f012 0280 	ands.w	r2, r2, #128	; 0x80
 8007566:	f47f af52 	bne.w	800740e <HAL_I2C_Master_Transmit+0xf6>
 800756a:	2120      	movs	r1, #32
 800756c:	6322      	str	r2, [r4, #48]	; 0x30
 800756e:	f884 103d 	strb.w	r1, [r4, #61]	; 0x3d
 8007572:	f884 203e 	strb.w	r2, [r4, #62]	; 0x3e
 8007576:	6c21      	ldr	r1, [r4, #64]	; 0x40
 8007578:	f884 203c 	strb.w	r2, [r4, #60]	; 0x3c
 800757c:	f041 0120 	orr.w	r1, r1, #32
 8007580:	6421      	str	r1, [r4, #64]	; 0x40
 8007582:	e75d      	b.n	8007440 <HAL_I2C_Master_Transmit+0x128>
 8007584:	695a      	ldr	r2, [r3, #20]
 8007586:	0752      	lsls	r2, r2, #29
 8007588:	d4c9      	bmi.n	800751e <HAL_I2C_Master_Transmit+0x206>
 800758a:	695a      	ldr	r2, [r3, #20]
 800758c:	0551      	lsls	r1, r2, #21
 800758e:	f53f af47 	bmi.w	8007420 <HAL_I2C_Master_Transmit+0x108>
 8007592:	f7fe fd1b 	bl	8005fcc <HAL_GetTick>
 8007596:	1b80      	subs	r0, r0, r6
 8007598:	4287      	cmp	r7, r0
 800759a:	6823      	ldr	r3, [r4, #0]
 800759c:	d301      	bcc.n	80075a2 <HAL_I2C_Master_Transmit+0x28a>
 800759e:	2f00      	cmp	r7, #0
 80075a0:	d1b2      	bne.n	8007508 <HAL_I2C_Master_Transmit+0x1f0>
 80075a2:	695a      	ldr	r2, [r3, #20]
 80075a4:	f012 0204 	ands.w	r2, r2, #4
 80075a8:	d1ae      	bne.n	8007508 <HAL_I2C_Master_Transmit+0x1f0>
 80075aa:	e7de      	b.n	800756a <HAL_I2C_Master_Transmit+0x252>
 80075ac:	681a      	ldr	r2, [r3, #0]
 80075ae:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 80075b2:	2501      	movs	r5, #1
 80075b4:	601a      	str	r2, [r3, #0]
 80075b6:	e6be      	b.n	8007336 <HAL_I2C_Master_Transmit+0x1e>
 80075b8:	ffff0000 	.word	0xffff0000

080075bc <HAL_I2C_Master_Receive>:
 80075bc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80075c0:	4604      	mov	r4, r0
 80075c2:	b087      	sub	sp, #28
 80075c4:	4698      	mov	r8, r3
 80075c6:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80075c8:	460f      	mov	r7, r1
 80075ca:	4691      	mov	r9, r2
 80075cc:	f7fe fcfe 	bl	8005fcc <HAL_GetTick>
 80075d0:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
 80075d4:	2b20      	cmp	r3, #32
 80075d6:	d004      	beq.n	80075e2 <HAL_I2C_Master_Receive+0x26>
 80075d8:	2702      	movs	r7, #2
 80075da:	4638      	mov	r0, r7
 80075dc:	b007      	add	sp, #28
 80075de:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80075e2:	4606      	mov	r6, r0
 80075e4:	6820      	ldr	r0, [r4, #0]
 80075e6:	6983      	ldr	r3, [r0, #24]
 80075e8:	0799      	lsls	r1, r3, #30
 80075ea:	d517      	bpl.n	800761c <HAL_I2C_Master_Receive+0x60>
 80075ec:	f7fe fcee 	bl	8005fcc <HAL_GetTick>
 80075f0:	1b80      	subs	r0, r0, r6
 80075f2:	2819      	cmp	r0, #25
 80075f4:	6820      	ldr	r0, [r4, #0]
 80075f6:	d9f6      	bls.n	80075e6 <HAL_I2C_Master_Receive+0x2a>
 80075f8:	6983      	ldr	r3, [r0, #24]
 80075fa:	43db      	mvns	r3, r3
 80075fc:	f013 0302 	ands.w	r3, r3, #2
 8007600:	d1f1      	bne.n	80075e6 <HAL_I2C_Master_Receive+0x2a>
 8007602:	2220      	movs	r2, #32
 8007604:	6323      	str	r3, [r4, #48]	; 0x30
 8007606:	f884 203d 	strb.w	r2, [r4, #61]	; 0x3d
 800760a:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 800760e:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8007610:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 8007614:	f042 0220 	orr.w	r2, r2, #32
 8007618:	6422      	str	r2, [r4, #64]	; 0x40
 800761a:	e7dd      	b.n	80075d8 <HAL_I2C_Master_Receive+0x1c>
 800761c:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
 8007620:	2b01      	cmp	r3, #1
 8007622:	d0d9      	beq.n	80075d8 <HAL_I2C_Master_Receive+0x1c>
 8007624:	2301      	movs	r3, #1
 8007626:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 800762a:	6803      	ldr	r3, [r0, #0]
 800762c:	07da      	lsls	r2, r3, #31
 800762e:	d573      	bpl.n	8007718 <HAL_I2C_Master_Receive+0x15c>
 8007630:	6803      	ldr	r3, [r0, #0]
 8007632:	4a8e      	ldr	r2, [pc, #568]	; (800786c <HAL_I2C_Master_Receive+0x2b0>)
 8007634:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8007638:	6003      	str	r3, [r0, #0]
 800763a:	2322      	movs	r3, #34	; 0x22
 800763c:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 8007640:	2310      	movs	r3, #16
 8007642:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 8007646:	2300      	movs	r3, #0
 8007648:	6423      	str	r3, [r4, #64]	; 0x40
 800764a:	f8a4 802a 	strh.w	r8, [r4, #42]	; 0x2a
 800764e:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 8007650:	62e2      	str	r2, [r4, #44]	; 0x2c
 8007652:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
 8007654:	8523      	strh	r3, [r4, #40]	; 0x28
 8007656:	6803      	ldr	r3, [r0, #0]
 8007658:	f8c4 9024 	str.w	r9, [r4, #36]	; 0x24
 800765c:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8007660:	2a08      	cmp	r2, #8
 8007662:	6003      	str	r3, [r0, #0]
 8007664:	d007      	beq.n	8007676 <HAL_I2C_Master_Receive+0xba>
 8007666:	2a01      	cmp	r2, #1
 8007668:	d005      	beq.n	8007676 <HAL_I2C_Master_Receive+0xba>
 800766a:	f512 3f80 	cmn.w	r2, #65536	; 0x10000
 800766e:	d002      	beq.n	8007676 <HAL_I2C_Master_Receive+0xba>
 8007670:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8007672:	2b11      	cmp	r3, #17
 8007674:	d103      	bne.n	800767e <HAL_I2C_Master_Receive+0xc2>
 8007676:	6803      	ldr	r3, [r0, #0]
 8007678:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800767c:	6003      	str	r3, [r0, #0]
 800767e:	1c69      	adds	r1, r5, #1
 8007680:	d129      	bne.n	80076d6 <HAL_I2C_Master_Receive+0x11a>
 8007682:	6943      	ldr	r3, [r0, #20]
 8007684:	07da      	lsls	r2, r3, #31
 8007686:	d5fc      	bpl.n	8007682 <HAL_I2C_Master_Receive+0xc6>
 8007688:	6923      	ldr	r3, [r4, #16]
 800768a:	f5b3 4f80 	cmp.w	r3, #16384	; 0x4000
 800768e:	d148      	bne.n	8007722 <HAL_I2C_Master_Receive+0x166>
 8007690:	f047 0301 	orr.w	r3, r7, #1
 8007694:	b2db      	uxtb	r3, r3
 8007696:	6103      	str	r3, [r0, #16]
 8007698:	4632      	mov	r2, r6
 800769a:	4629      	mov	r1, r5
 800769c:	4620      	mov	r0, r4
 800769e:	f7ff fafb 	bl	8006c98 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0>
 80076a2:	4607      	mov	r7, r0
 80076a4:	2800      	cmp	r0, #0
 80076a6:	d154      	bne.n	8007752 <HAL_I2C_Master_Receive+0x196>
 80076a8:	8d22      	ldrh	r2, [r4, #40]	; 0x28
 80076aa:	6823      	ldr	r3, [r4, #0]
 80076ac:	2a00      	cmp	r2, #0
 80076ae:	d158      	bne.n	8007762 <HAL_I2C_Master_Receive+0x1a6>
 80076b0:	9001      	str	r0, [sp, #4]
 80076b2:	695a      	ldr	r2, [r3, #20]
 80076b4:	9201      	str	r2, [sp, #4]
 80076b6:	699a      	ldr	r2, [r3, #24]
 80076b8:	9201      	str	r2, [sp, #4]
 80076ba:	9a01      	ldr	r2, [sp, #4]
 80076bc:	681a      	ldr	r2, [r3, #0]
 80076be:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 80076c2:	601a      	str	r2, [r3, #0]
 80076c4:	2300      	movs	r3, #0
 80076c6:	2220      	movs	r2, #32
 80076c8:	f884 203d 	strb.w	r2, [r4, #61]	; 0x3d
 80076cc:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 80076d0:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 80076d4:	e781      	b.n	80075da <HAL_I2C_Master_Receive+0x1e>
 80076d6:	6943      	ldr	r3, [r0, #20]
 80076d8:	07db      	lsls	r3, r3, #31
 80076da:	d4d5      	bmi.n	8007688 <HAL_I2C_Master_Receive+0xcc>
 80076dc:	f7fe fc76 	bl	8005fcc <HAL_GetTick>
 80076e0:	1b80      	subs	r0, r0, r6
 80076e2:	4285      	cmp	r5, r0
 80076e4:	6820      	ldr	r0, [r4, #0]
 80076e6:	d239      	bcs.n	800775c <HAL_I2C_Master_Receive+0x1a0>
 80076e8:	6943      	ldr	r3, [r0, #20]
 80076ea:	07db      	lsls	r3, r3, #31
 80076ec:	d4c7      	bmi.n	800767e <HAL_I2C_Master_Receive+0xc2>
 80076ee:	2200      	movs	r2, #0
 80076f0:	2320      	movs	r3, #32
 80076f2:	6322      	str	r2, [r4, #48]	; 0x30
 80076f4:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 80076f8:	f884 203e 	strb.w	r2, [r4, #62]	; 0x3e
 80076fc:	6c23      	ldr	r3, [r4, #64]	; 0x40
 80076fe:	f884 203c 	strb.w	r2, [r4, #60]	; 0x3c
 8007702:	f043 0320 	orr.w	r3, r3, #32
 8007706:	6423      	str	r3, [r4, #64]	; 0x40
 8007708:	6803      	ldr	r3, [r0, #0]
 800770a:	05d8      	lsls	r0, r3, #23
 800770c:	d521      	bpl.n	8007752 <HAL_I2C_Master_Receive+0x196>
 800770e:	f44f 7300 	mov.w	r3, #512	; 0x200
 8007712:	6423      	str	r3, [r4, #64]	; 0x40
 8007714:	2701      	movs	r7, #1
 8007716:	e760      	b.n	80075da <HAL_I2C_Master_Receive+0x1e>
 8007718:	6803      	ldr	r3, [r0, #0]
 800771a:	f043 0301 	orr.w	r3, r3, #1
 800771e:	6003      	str	r3, [r0, #0]
 8007720:	e786      	b.n	8007630 <HAL_I2C_Master_Receive+0x74>
 8007722:	ea4f 18e7 	mov.w	r8, r7, asr #7
 8007726:	f008 0806 	and.w	r8, r8, #6
 800772a:	f048 03f0 	orr.w	r3, r8, #240	; 0xf0
 800772e:	6103      	str	r3, [r0, #16]
 8007730:	4632      	mov	r2, r6
 8007732:	4629      	mov	r1, r5
 8007734:	4620      	mov	r0, r4
 8007736:	f7ff faf9 	bl	8006d2c <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.1>
 800773a:	b950      	cbnz	r0, 8007752 <HAL_I2C_Master_Receive+0x196>
 800773c:	6823      	ldr	r3, [r4, #0]
 800773e:	b2ff      	uxtb	r7, r7
 8007740:	611f      	str	r7, [r3, #16]
 8007742:	4632      	mov	r2, r6
 8007744:	4629      	mov	r1, r5
 8007746:	4620      	mov	r0, r4
 8007748:	f7ff faa6 	bl	8006c98 <I2C_WaitOnMasterAddressFlagUntilTimeout.constprop.0>
 800774c:	2800      	cmp	r0, #0
 800774e:	f000 80c1 	beq.w	80078d4 <HAL_I2C_Master_Receive+0x318>
 8007752:	2701      	movs	r7, #1
 8007754:	4638      	mov	r0, r7
 8007756:	b007      	add	sp, #28
 8007758:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800775c:	2d00      	cmp	r5, #0
 800775e:	d18e      	bne.n	800767e <HAL_I2C_Master_Receive+0xc2>
 8007760:	e7c2      	b.n	80076e8 <HAL_I2C_Master_Receive+0x12c>
 8007762:	2a01      	cmp	r2, #1
 8007764:	6819      	ldr	r1, [r3, #0]
 8007766:	f000 815f 	beq.w	8007a28 <HAL_I2C_Master_Receive+0x46c>
 800776a:	2a02      	cmp	r2, #2
 800776c:	f000 80c7 	beq.w	80078fe <HAL_I2C_Master_Receive+0x342>
 8007770:	f441 6180 	orr.w	r1, r1, #1024	; 0x400
 8007774:	6019      	str	r1, [r3, #0]
 8007776:	9004      	str	r0, [sp, #16]
 8007778:	6959      	ldr	r1, [r3, #20]
 800777a:	9104      	str	r1, [sp, #16]
 800777c:	6999      	ldr	r1, [r3, #24]
 800777e:	9104      	str	r1, [sp, #16]
 8007780:	9904      	ldr	r1, [sp, #16]
 8007782:	2a03      	cmp	r2, #3
 8007784:	d849      	bhi.n	800781a <HAL_I2C_Master_Receive+0x25e>
 8007786:	2a01      	cmp	r2, #1
 8007788:	f000 8127 	beq.w	80079da <HAL_I2C_Master_Receive+0x41e>
 800778c:	2a02      	cmp	r2, #2
 800778e:	d07c      	beq.n	800788a <HAL_I2C_Master_Receive+0x2ce>
 8007790:	1c68      	adds	r0, r5, #1
 8007792:	f040 80c2 	bne.w	800791a <HAL_I2C_Master_Receive+0x35e>
 8007796:	695a      	ldr	r2, [r3, #20]
 8007798:	0751      	lsls	r1, r2, #29
 800779a:	d5fc      	bpl.n	8007796 <HAL_I2C_Master_Receive+0x1da>
 800779c:	681a      	ldr	r2, [r3, #0]
 800779e:	6a61      	ldr	r1, [r4, #36]	; 0x24
 80077a0:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 80077a4:	601a      	str	r2, [r3, #0]
 80077a6:	691b      	ldr	r3, [r3, #16]
 80077a8:	700b      	strb	r3, [r1, #0]
 80077aa:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 80077ac:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80077ae:	8d21      	ldrh	r1, [r4, #40]	; 0x28
 80077b0:	3b01      	subs	r3, #1
 80077b2:	1c50      	adds	r0, r2, #1
 80077b4:	3901      	subs	r1, #1
 80077b6:	b29b      	uxth	r3, r3
 80077b8:	6822      	ldr	r2, [r4, #0]
 80077ba:	6260      	str	r0, [r4, #36]	; 0x24
 80077bc:	8521      	strh	r1, [r4, #40]	; 0x28
 80077be:	8563      	strh	r3, [r4, #42]	; 0x2a
 80077c0:	1c68      	adds	r0, r5, #1
 80077c2:	f040 80cd 	bne.w	8007960 <HAL_I2C_Master_Receive+0x3a4>
 80077c6:	6953      	ldr	r3, [r2, #20]
 80077c8:	0759      	lsls	r1, r3, #29
 80077ca:	d5fc      	bpl.n	80077c6 <HAL_I2C_Master_Receive+0x20a>
 80077cc:	6813      	ldr	r3, [r2, #0]
 80077ce:	6a61      	ldr	r1, [r4, #36]	; 0x24
 80077d0:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 80077d4:	6013      	str	r3, [r2, #0]
 80077d6:	6913      	ldr	r3, [r2, #16]
 80077d8:	700b      	strb	r3, [r1, #0]
 80077da:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 80077dc:	8d22      	ldrh	r2, [r4, #40]	; 0x28
 80077de:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80077e0:	6821      	ldr	r1, [r4, #0]
 80077e2:	3b01      	subs	r3, #1
 80077e4:	b29b      	uxth	r3, r3
 80077e6:	8563      	strh	r3, [r4, #42]	; 0x2a
 80077e8:	6909      	ldr	r1, [r1, #16]
 80077ea:	1e53      	subs	r3, r2, #1
 80077ec:	f100 0c01 	add.w	ip, r0, #1
 80077f0:	8523      	strh	r3, [r4, #40]	; 0x28
 80077f2:	f8c4 c024 	str.w	ip, [r4, #36]	; 0x24
 80077f6:	7041      	strb	r1, [r0, #1]
 80077f8:	8d22      	ldrh	r2, [r4, #40]	; 0x28
 80077fa:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 80077fc:	6a61      	ldr	r1, [r4, #36]	; 0x24
 80077fe:	3a01      	subs	r2, #1
 8007800:	3b01      	subs	r3, #1
 8007802:	3101      	adds	r1, #1
 8007804:	b292      	uxth	r2, r2
 8007806:	b29b      	uxth	r3, r3
 8007808:	6261      	str	r1, [r4, #36]	; 0x24
 800780a:	8522      	strh	r2, [r4, #40]	; 0x28
 800780c:	8563      	strh	r3, [r4, #42]	; 0x2a
 800780e:	2a00      	cmp	r2, #0
 8007810:	f43f af58 	beq.w	80076c4 <HAL_I2C_Master_Receive+0x108>
 8007814:	2a03      	cmp	r2, #3
 8007816:	6823      	ldr	r3, [r4, #0]
 8007818:	d9b5      	bls.n	8007786 <HAL_I2C_Master_Receive+0x1ca>
 800781a:	695a      	ldr	r2, [r3, #20]
 800781c:	0652      	lsls	r2, r2, #25
 800781e:	f100 80be 	bmi.w	800799e <HAL_I2C_Master_Receive+0x3e2>
 8007822:	2d00      	cmp	r5, #0
 8007824:	f000 80b7 	beq.w	8007996 <HAL_I2C_Master_Receive+0x3da>
 8007828:	e00c      	b.n	8007844 <HAL_I2C_Master_Receive+0x288>
 800782a:	f7fe fbcf 	bl	8005fcc <HAL_GetTick>
 800782e:	1b80      	subs	r0, r0, r6
 8007830:	4285      	cmp	r5, r0
 8007832:	6823      	ldr	r3, [r4, #0]
 8007834:	d202      	bcs.n	800783c <HAL_I2C_Master_Receive+0x280>
 8007836:	695a      	ldr	r2, [r3, #20]
 8007838:	0651      	lsls	r1, r2, #25
 800783a:	d57f      	bpl.n	800793c <HAL_I2C_Master_Receive+0x380>
 800783c:	695a      	ldr	r2, [r3, #20]
 800783e:	0652      	lsls	r2, r2, #25
 8007840:	f100 80ad 	bmi.w	800799e <HAL_I2C_Master_Receive+0x3e2>
 8007844:	695a      	ldr	r2, [r3, #20]
 8007846:	06d0      	lsls	r0, r2, #27
 8007848:	d5ef      	bpl.n	800782a <HAL_I2C_Master_Receive+0x26e>
 800784a:	2200      	movs	r2, #0
 800784c:	f06f 0010 	mvn.w	r0, #16
 8007850:	2120      	movs	r1, #32
 8007852:	6158      	str	r0, [r3, #20]
 8007854:	6322      	str	r2, [r4, #48]	; 0x30
 8007856:	f884 103d 	strb.w	r1, [r4, #61]	; 0x3d
 800785a:	f884 203e 	strb.w	r2, [r4, #62]	; 0x3e
 800785e:	6c23      	ldr	r3, [r4, #64]	; 0x40
 8007860:	6423      	str	r3, [r4, #64]	; 0x40
 8007862:	f884 203c 	strb.w	r2, [r4, #60]	; 0x3c
 8007866:	2701      	movs	r7, #1
 8007868:	e774      	b.n	8007754 <HAL_I2C_Master_Receive+0x198>
 800786a:	bf00      	nop
 800786c:	ffff0000 	.word	0xffff0000
 8007870:	695a      	ldr	r2, [r3, #20]
 8007872:	0751      	lsls	r1, r2, #29
 8007874:	d40e      	bmi.n	8007894 <HAL_I2C_Master_Receive+0x2d8>
 8007876:	f7fe fba9 	bl	8005fcc <HAL_GetTick>
 800787a:	1b80      	subs	r0, r0, r6
 800787c:	4285      	cmp	r5, r0
 800787e:	6823      	ldr	r3, [r4, #0]
 8007880:	d300      	bcc.n	8007884 <HAL_I2C_Master_Receive+0x2c8>
 8007882:	b915      	cbnz	r5, 800788a <HAL_I2C_Master_Receive+0x2ce>
 8007884:	695a      	ldr	r2, [r3, #20]
 8007886:	0751      	lsls	r1, r2, #29
 8007888:	d558      	bpl.n	800793c <HAL_I2C_Master_Receive+0x380>
 800788a:	1c6a      	adds	r2, r5, #1
 800788c:	d1f0      	bne.n	8007870 <HAL_I2C_Master_Receive+0x2b4>
 800788e:	695a      	ldr	r2, [r3, #20]
 8007890:	0750      	lsls	r0, r2, #29
 8007892:	d5fc      	bpl.n	800788e <HAL_I2C_Master_Receive+0x2d2>
 8007894:	681a      	ldr	r2, [r3, #0]
 8007896:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 800789a:	601a      	str	r2, [r3, #0]
 800789c:	691a      	ldr	r2, [r3, #16]
 800789e:	6a63      	ldr	r3, [r4, #36]	; 0x24
 80078a0:	701a      	strb	r2, [r3, #0]
 80078a2:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 80078a4:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80078a6:	3b01      	subs	r3, #1
 80078a8:	b29b      	uxth	r3, r3
 80078aa:	8563      	strh	r3, [r4, #42]	; 0x2a
 80078ac:	8d23      	ldrh	r3, [r4, #40]	; 0x28
 80078ae:	3b01      	subs	r3, #1
 80078b0:	8523      	strh	r3, [r4, #40]	; 0x28
 80078b2:	6823      	ldr	r3, [r4, #0]
 80078b4:	1c51      	adds	r1, r2, #1
 80078b6:	691b      	ldr	r3, [r3, #16]
 80078b8:	6261      	str	r1, [r4, #36]	; 0x24
 80078ba:	7053      	strb	r3, [r2, #1]
 80078bc:	6a63      	ldr	r3, [r4, #36]	; 0x24
 80078be:	8d22      	ldrh	r2, [r4, #40]	; 0x28
 80078c0:	3301      	adds	r3, #1
 80078c2:	6263      	str	r3, [r4, #36]	; 0x24
 80078c4:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 80078c6:	3a01      	subs	r2, #1
 80078c8:	3b01      	subs	r3, #1
 80078ca:	b292      	uxth	r2, r2
 80078cc:	b29b      	uxth	r3, r3
 80078ce:	8522      	strh	r2, [r4, #40]	; 0x28
 80078d0:	8563      	strh	r3, [r4, #42]	; 0x2a
 80078d2:	e79c      	b.n	800780e <HAL_I2C_Master_Receive+0x252>
 80078d4:	6822      	ldr	r2, [r4, #0]
 80078d6:	9005      	str	r0, [sp, #20]
 80078d8:	6953      	ldr	r3, [r2, #20]
 80078da:	9305      	str	r3, [sp, #20]
 80078dc:	6993      	ldr	r3, [r2, #24]
 80078de:	9305      	str	r3, [sp, #20]
 80078e0:	9b05      	ldr	r3, [sp, #20]
 80078e2:	6813      	ldr	r3, [r2, #0]
 80078e4:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80078e8:	6013      	str	r3, [r2, #0]
 80078ea:	1c6f      	adds	r7, r5, #1
 80078ec:	f040 80aa 	bne.w	8007a44 <HAL_I2C_Master_Receive+0x488>
 80078f0:	6953      	ldr	r3, [r2, #20]
 80078f2:	07d8      	lsls	r0, r3, #31
 80078f4:	d5fc      	bpl.n	80078f0 <HAL_I2C_Master_Receive+0x334>
 80078f6:	f048 03f1 	orr.w	r3, r8, #241	; 0xf1
 80078fa:	6113      	str	r3, [r2, #16]
 80078fc:	e6cc      	b.n	8007698 <HAL_I2C_Master_Receive+0xdc>
 80078fe:	f421 6180 	bic.w	r1, r1, #1024	; 0x400
 8007902:	6019      	str	r1, [r3, #0]
 8007904:	6819      	ldr	r1, [r3, #0]
 8007906:	f441 6100 	orr.w	r1, r1, #2048	; 0x800
 800790a:	6019      	str	r1, [r3, #0]
 800790c:	9003      	str	r0, [sp, #12]
 800790e:	6959      	ldr	r1, [r3, #20]
 8007910:	9103      	str	r1, [sp, #12]
 8007912:	6999      	ldr	r1, [r3, #24]
 8007914:	9103      	str	r1, [sp, #12]
 8007916:	9903      	ldr	r1, [sp, #12]
 8007918:	e733      	b.n	8007782 <HAL_I2C_Master_Receive+0x1c6>
 800791a:	695a      	ldr	r2, [r3, #20]
 800791c:	0752      	lsls	r2, r2, #29
 800791e:	f53f af3d 	bmi.w	800779c <HAL_I2C_Master_Receive+0x1e0>
 8007922:	f7fe fb53 	bl	8005fcc <HAL_GetTick>
 8007926:	1b80      	subs	r0, r0, r6
 8007928:	4285      	cmp	r5, r0
 800792a:	6823      	ldr	r3, [r4, #0]
 800792c:	d302      	bcc.n	8007934 <HAL_I2C_Master_Receive+0x378>
 800792e:	2d00      	cmp	r5, #0
 8007930:	f47f af2e 	bne.w	8007790 <HAL_I2C_Master_Receive+0x1d4>
 8007934:	695a      	ldr	r2, [r3, #20]
 8007936:	0752      	lsls	r2, r2, #29
 8007938:	f53f af2a 	bmi.w	8007790 <HAL_I2C_Master_Receive+0x1d4>
 800793c:	2200      	movs	r2, #0
 800793e:	2320      	movs	r3, #32
 8007940:	6322      	str	r2, [r4, #48]	; 0x30
 8007942:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 8007946:	f884 203e 	strb.w	r2, [r4, #62]	; 0x3e
 800794a:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800794c:	f884 203c 	strb.w	r2, [r4, #60]	; 0x3c
 8007950:	2701      	movs	r7, #1
 8007952:	f043 0320 	orr.w	r3, r3, #32
 8007956:	4638      	mov	r0, r7
 8007958:	6423      	str	r3, [r4, #64]	; 0x40
 800795a:	b007      	add	sp, #28
 800795c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8007960:	6953      	ldr	r3, [r2, #20]
 8007962:	075b      	lsls	r3, r3, #29
 8007964:	f53f af32 	bmi.w	80077cc <HAL_I2C_Master_Receive+0x210>
 8007968:	f7fe fb30 	bl	8005fcc <HAL_GetTick>
 800796c:	1b80      	subs	r0, r0, r6
 800796e:	4285      	cmp	r5, r0
 8007970:	6822      	ldr	r2, [r4, #0]
 8007972:	d302      	bcc.n	800797a <HAL_I2C_Master_Receive+0x3be>
 8007974:	2d00      	cmp	r5, #0
 8007976:	f47f af23 	bne.w	80077c0 <HAL_I2C_Master_Receive+0x204>
 800797a:	6953      	ldr	r3, [r2, #20]
 800797c:	075b      	lsls	r3, r3, #29
 800797e:	f53f af1f 	bmi.w	80077c0 <HAL_I2C_Master_Receive+0x204>
 8007982:	e7db      	b.n	800793c <HAL_I2C_Master_Receive+0x380>
 8007984:	f7fe fb22 	bl	8005fcc <HAL_GetTick>
 8007988:	6823      	ldr	r3, [r4, #0]
 800798a:	695a      	ldr	r2, [r3, #20]
 800798c:	0651      	lsls	r1, r2, #25
 800798e:	d5d5      	bpl.n	800793c <HAL_I2C_Master_Receive+0x380>
 8007990:	695a      	ldr	r2, [r3, #20]
 8007992:	0652      	lsls	r2, r2, #25
 8007994:	d403      	bmi.n	800799e <HAL_I2C_Master_Receive+0x3e2>
 8007996:	695a      	ldr	r2, [r3, #20]
 8007998:	06d0      	lsls	r0, r2, #27
 800799a:	d5f3      	bpl.n	8007984 <HAL_I2C_Master_Receive+0x3c8>
 800799c:	e755      	b.n	800784a <HAL_I2C_Master_Receive+0x28e>
 800799e:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80079a0:	691b      	ldr	r3, [r3, #16]
 80079a2:	7013      	strb	r3, [r2, #0]
 80079a4:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 80079a6:	6821      	ldr	r1, [r4, #0]
 80079a8:	8d22      	ldrh	r2, [r4, #40]	; 0x28
 80079aa:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80079ac:	3b01      	subs	r3, #1
 80079ae:	b29b      	uxth	r3, r3
 80079b0:	8563      	strh	r3, [r4, #42]	; 0x2a
 80079b2:	694b      	ldr	r3, [r1, #20]
 80079b4:	3a01      	subs	r2, #1
 80079b6:	b292      	uxth	r2, r2
 80079b8:	f100 0c01 	add.w	ip, r0, #1
 80079bc:	075b      	lsls	r3, r3, #29
 80079be:	8522      	strh	r2, [r4, #40]	; 0x28
 80079c0:	f8c4 c024 	str.w	ip, [r4, #36]	; 0x24
 80079c4:	f57f af23 	bpl.w	800780e <HAL_I2C_Master_Receive+0x252>
 80079c8:	2a03      	cmp	r2, #3
 80079ca:	d103      	bne.n	80079d4 <HAL_I2C_Master_Receive+0x418>
 80079cc:	680b      	ldr	r3, [r1, #0]
 80079ce:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 80079d2:	600b      	str	r3, [r1, #0]
 80079d4:	690b      	ldr	r3, [r1, #16]
 80079d6:	7043      	strb	r3, [r0, #1]
 80079d8:	e770      	b.n	80078bc <HAL_I2C_Master_Receive+0x300>
 80079da:	695a      	ldr	r2, [r3, #20]
 80079dc:	0650      	lsls	r0, r2, #25
 80079de:	d41f      	bmi.n	8007a20 <HAL_I2C_Master_Receive+0x464>
 80079e0:	b1d5      	cbz	r5, 8007a18 <HAL_I2C_Master_Receive+0x45c>
 80079e2:	e00b      	b.n	80079fc <HAL_I2C_Master_Receive+0x440>
 80079e4:	f7fe faf2 	bl	8005fcc <HAL_GetTick>
 80079e8:	1b80      	subs	r0, r0, r6
 80079ea:	4285      	cmp	r5, r0
 80079ec:	6823      	ldr	r3, [r4, #0]
 80079ee:	d202      	bcs.n	80079f6 <HAL_I2C_Master_Receive+0x43a>
 80079f0:	695a      	ldr	r2, [r3, #20]
 80079f2:	0652      	lsls	r2, r2, #25
 80079f4:	d5a2      	bpl.n	800793c <HAL_I2C_Master_Receive+0x380>
 80079f6:	695a      	ldr	r2, [r3, #20]
 80079f8:	0650      	lsls	r0, r2, #25
 80079fa:	d411      	bmi.n	8007a20 <HAL_I2C_Master_Receive+0x464>
 80079fc:	695a      	ldr	r2, [r3, #20]
 80079fe:	06d1      	lsls	r1, r2, #27
 8007a00:	f53f af23 	bmi.w	800784a <HAL_I2C_Master_Receive+0x28e>
 8007a04:	e7ee      	b.n	80079e4 <HAL_I2C_Master_Receive+0x428>
 8007a06:	f7fe fae1 	bl	8005fcc <HAL_GetTick>
 8007a0a:	6823      	ldr	r3, [r4, #0]
 8007a0c:	695a      	ldr	r2, [r3, #20]
 8007a0e:	0652      	lsls	r2, r2, #25
 8007a10:	d594      	bpl.n	800793c <HAL_I2C_Master_Receive+0x380>
 8007a12:	695a      	ldr	r2, [r3, #20]
 8007a14:	0650      	lsls	r0, r2, #25
 8007a16:	d403      	bmi.n	8007a20 <HAL_I2C_Master_Receive+0x464>
 8007a18:	695a      	ldr	r2, [r3, #20]
 8007a1a:	06d1      	lsls	r1, r2, #27
 8007a1c:	d5f3      	bpl.n	8007a06 <HAL_I2C_Master_Receive+0x44a>
 8007a1e:	e714      	b.n	800784a <HAL_I2C_Master_Receive+0x28e>
 8007a20:	691a      	ldr	r2, [r3, #16]
 8007a22:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8007a24:	701a      	strb	r2, [r3, #0]
 8007a26:	e749      	b.n	80078bc <HAL_I2C_Master_Receive+0x300>
 8007a28:	f421 6180 	bic.w	r1, r1, #1024	; 0x400
 8007a2c:	6019      	str	r1, [r3, #0]
 8007a2e:	9002      	str	r0, [sp, #8]
 8007a30:	6959      	ldr	r1, [r3, #20]
 8007a32:	9102      	str	r1, [sp, #8]
 8007a34:	6999      	ldr	r1, [r3, #24]
 8007a36:	9102      	str	r1, [sp, #8]
 8007a38:	9902      	ldr	r1, [sp, #8]
 8007a3a:	6819      	ldr	r1, [r3, #0]
 8007a3c:	f441 7100 	orr.w	r1, r1, #512	; 0x200
 8007a40:	6019      	str	r1, [r3, #0]
 8007a42:	e69e      	b.n	8007782 <HAL_I2C_Master_Receive+0x1c6>
 8007a44:	6953      	ldr	r3, [r2, #20]
 8007a46:	07d9      	lsls	r1, r3, #31
 8007a48:	f53f af55 	bmi.w	80078f6 <HAL_I2C_Master_Receive+0x33a>
 8007a4c:	f7fe fabe 	bl	8005fcc <HAL_GetTick>
 8007a50:	1b80      	subs	r0, r0, r6
 8007a52:	4285      	cmp	r5, r0
 8007a54:	6822      	ldr	r2, [r4, #0]
 8007a56:	d302      	bcc.n	8007a5e <HAL_I2C_Master_Receive+0x4a2>
 8007a58:	2d00      	cmp	r5, #0
 8007a5a:	f47f af46 	bne.w	80078ea <HAL_I2C_Master_Receive+0x32e>
 8007a5e:	6953      	ldr	r3, [r2, #20]
 8007a60:	07d9      	lsls	r1, r3, #31
 8007a62:	f53f af42 	bmi.w	80078ea <HAL_I2C_Master_Receive+0x32e>
 8007a66:	2100      	movs	r1, #0
 8007a68:	2320      	movs	r3, #32
 8007a6a:	6321      	str	r1, [r4, #48]	; 0x30
 8007a6c:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 8007a70:	f884 103e 	strb.w	r1, [r4, #62]	; 0x3e
 8007a74:	6c23      	ldr	r3, [r4, #64]	; 0x40
 8007a76:	f884 103c 	strb.w	r1, [r4, #60]	; 0x3c
 8007a7a:	f043 0320 	orr.w	r3, r3, #32
 8007a7e:	6423      	str	r3, [r4, #64]	; 0x40
 8007a80:	6813      	ldr	r3, [r2, #0]
 8007a82:	05db      	lsls	r3, r3, #23
 8007a84:	f53f ae43 	bmi.w	800770e <HAL_I2C_Master_Receive+0x152>
 8007a88:	e663      	b.n	8007752 <HAL_I2C_Master_Receive+0x196>
 8007a8a:	bf00      	nop

08007a8c <HAL_I2C_Mem_Write>:
 8007a8c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007a90:	4604      	mov	r4, r0
 8007a92:	b082      	sub	sp, #8
 8007a94:	4699      	mov	r9, r3
 8007a96:	f8bd a02c 	ldrh.w	sl, [sp, #44]	; 0x2c
 8007a9a:	9e0c      	ldr	r6, [sp, #48]	; 0x30
 8007a9c:	460f      	mov	r7, r1
 8007a9e:	4690      	mov	r8, r2
 8007aa0:	f7fe fa94 	bl	8005fcc <HAL_GetTick>
 8007aa4:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
 8007aa8:	2b20      	cmp	r3, #32
 8007aaa:	d004      	beq.n	8007ab6 <HAL_I2C_Mem_Write+0x2a>
 8007aac:	2702      	movs	r7, #2
 8007aae:	4638      	mov	r0, r7
 8007ab0:	b002      	add	sp, #8
 8007ab2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007ab6:	4605      	mov	r5, r0
 8007ab8:	6820      	ldr	r0, [r4, #0]
 8007aba:	6983      	ldr	r3, [r0, #24]
 8007abc:	079a      	lsls	r2, r3, #30
 8007abe:	d519      	bpl.n	8007af4 <HAL_I2C_Mem_Write+0x68>
 8007ac0:	f7fe fa84 	bl	8005fcc <HAL_GetTick>
 8007ac4:	eba0 0c05 	sub.w	ip, r0, r5
 8007ac8:	f1bc 0f19 	cmp.w	ip, #25
 8007acc:	6820      	ldr	r0, [r4, #0]
 8007ace:	d9f4      	bls.n	8007aba <HAL_I2C_Mem_Write+0x2e>
 8007ad0:	6983      	ldr	r3, [r0, #24]
 8007ad2:	43db      	mvns	r3, r3
 8007ad4:	f013 0302 	ands.w	r3, r3, #2
 8007ad8:	d1ef      	bne.n	8007aba <HAL_I2C_Mem_Write+0x2e>
 8007ada:	2220      	movs	r2, #32
 8007adc:	6323      	str	r3, [r4, #48]	; 0x30
 8007ade:	f884 203d 	strb.w	r2, [r4, #61]	; 0x3d
 8007ae2:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 8007ae6:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8007ae8:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 8007aec:	f042 0220 	orr.w	r2, r2, #32
 8007af0:	6422      	str	r2, [r4, #64]	; 0x40
 8007af2:	e7db      	b.n	8007aac <HAL_I2C_Mem_Write+0x20>
 8007af4:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
 8007af8:	2b01      	cmp	r3, #1
 8007afa:	d0d7      	beq.n	8007aac <HAL_I2C_Mem_Write+0x20>
 8007afc:	2301      	movs	r3, #1
 8007afe:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 8007b02:	6803      	ldr	r3, [r0, #0]
 8007b04:	07db      	lsls	r3, r3, #31
 8007b06:	d571      	bpl.n	8007bec <HAL_I2C_Mem_Write+0x160>
 8007b08:	4639      	mov	r1, r7
 8007b0a:	6807      	ldr	r7, [r0, #0]
 8007b0c:	f427 6700 	bic.w	r7, r7, #2048	; 0x800
 8007b10:	6007      	str	r7, [r0, #0]
 8007b12:	980a      	ldr	r0, [sp, #40]	; 0x28
 8007b14:	6260      	str	r0, [r4, #36]	; 0x24
 8007b16:	2021      	movs	r0, #33	; 0x21
 8007b18:	e9cd 6500 	strd	r6, r5, [sp]
 8007b1c:	f884 003d 	strb.w	r0, [r4, #61]	; 0x3d
 8007b20:	2040      	movs	r0, #64	; 0x40
 8007b22:	f884 003e 	strb.w	r0, [r4, #62]	; 0x3e
 8007b26:	2000      	movs	r0, #0
 8007b28:	6420      	str	r0, [r4, #64]	; 0x40
 8007b2a:	f8a4 a02a 	strh.w	sl, [r4, #42]	; 0x2a
 8007b2e:	8d60      	ldrh	r0, [r4, #42]	; 0x2a
 8007b30:	8520      	strh	r0, [r4, #40]	; 0x28
 8007b32:	4854      	ldr	r0, [pc, #336]	; (8007c84 <HAL_I2C_Mem_Write+0x1f8>)
 8007b34:	62e0      	str	r0, [r4, #44]	; 0x2c
 8007b36:	464b      	mov	r3, r9
 8007b38:	4642      	mov	r2, r8
 8007b3a:	4620      	mov	r0, r4
 8007b3c:	f7ff f940 	bl	8006dc0 <I2C_RequestMemoryWrite>
 8007b40:	4607      	mov	r7, r0
 8007b42:	b9f8      	cbnz	r0, 8007b84 <HAL_I2C_Mem_Write+0xf8>
 8007b44:	8d23      	ldrh	r3, [r4, #40]	; 0x28
 8007b46:	2b00      	cmp	r3, #0
 8007b48:	f000 809a 	beq.w	8007c80 <HAL_I2C_Mem_Write+0x1f4>
 8007b4c:	6823      	ldr	r3, [r4, #0]
 8007b4e:	1c72      	adds	r2, r6, #1
 8007b50:	d157      	bne.n	8007c02 <HAL_I2C_Mem_Write+0x176>
 8007b52:	695a      	ldr	r2, [r3, #20]
 8007b54:	0610      	lsls	r0, r2, #24
 8007b56:	d41a      	bmi.n	8007b8e <HAL_I2C_Mem_Write+0x102>
 8007b58:	695a      	ldr	r2, [r3, #20]
 8007b5a:	0551      	lsls	r1, r2, #21
 8007b5c:	d5f9      	bpl.n	8007b52 <HAL_I2C_Mem_Write+0xc6>
 8007b5e:	2100      	movs	r1, #0
 8007b60:	2220      	movs	r2, #32
 8007b62:	f46f 6080 	mvn.w	r0, #1024	; 0x400
 8007b66:	6158      	str	r0, [r3, #20]
 8007b68:	6321      	str	r1, [r4, #48]	; 0x30
 8007b6a:	f884 203d 	strb.w	r2, [r4, #61]	; 0x3d
 8007b6e:	f884 103e 	strb.w	r1, [r4, #62]	; 0x3e
 8007b72:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8007b74:	f884 103c 	strb.w	r1, [r4, #60]	; 0x3c
 8007b78:	f042 0204 	orr.w	r2, r2, #4
 8007b7c:	6422      	str	r2, [r4, #64]	; 0x40
 8007b7e:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8007b80:	2a04      	cmp	r2, #4
 8007b82:	d038      	beq.n	8007bf6 <HAL_I2C_Mem_Write+0x16a>
 8007b84:	2701      	movs	r7, #1
 8007b86:	4638      	mov	r0, r7
 8007b88:	b002      	add	sp, #8
 8007b8a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007b8e:	f8d4 c024 	ldr.w	ip, [r4, #36]	; 0x24
 8007b92:	f8b4 e028 	ldrh.w	lr, [r4, #40]	; 0x28
 8007b96:	4661      	mov	r1, ip
 8007b98:	f10e 30ff 	add.w	r0, lr, #4294967295	; 0xffffffff
 8007b9c:	f811 2b01 	ldrb.w	r2, [r1], #1
 8007ba0:	611a      	str	r2, [r3, #16]
 8007ba2:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 8007ba4:	6261      	str	r1, [r4, #36]	; 0x24
 8007ba6:	3a01      	subs	r2, #1
 8007ba8:	b292      	uxth	r2, r2
 8007baa:	8562      	strh	r2, [r4, #42]	; 0x2a
 8007bac:	b282      	uxth	r2, r0
 8007bae:	6958      	ldr	r0, [r3, #20]
 8007bb0:	8522      	strh	r2, [r4, #40]	; 0x28
 8007bb2:	0740      	lsls	r0, r0, #29
 8007bb4:	d517      	bpl.n	8007be6 <HAL_I2C_Mem_Write+0x15a>
 8007bb6:	b942      	cbnz	r2, 8007bca <HAL_I2C_Mem_Write+0x13e>
 8007bb8:	1c72      	adds	r2, r6, #1
 8007bba:	d142      	bne.n	8007c42 <HAL_I2C_Mem_Write+0x1b6>
 8007bbc:	695a      	ldr	r2, [r3, #20]
 8007bbe:	0750      	lsls	r0, r2, #29
 8007bc0:	d432      	bmi.n	8007c28 <HAL_I2C_Mem_Write+0x19c>
 8007bc2:	695a      	ldr	r2, [r3, #20]
 8007bc4:	0551      	lsls	r1, r2, #21
 8007bc6:	d5f9      	bpl.n	8007bbc <HAL_I2C_Mem_Write+0x130>
 8007bc8:	e7c9      	b.n	8007b5e <HAL_I2C_Mem_Write+0xd2>
 8007bca:	f89c 1001 	ldrb.w	r1, [ip, #1]
 8007bce:	6119      	str	r1, [r3, #16]
 8007bd0:	f10c 0102 	add.w	r1, ip, #2
 8007bd4:	6261      	str	r1, [r4, #36]	; 0x24
 8007bd6:	8d61      	ldrh	r1, [r4, #42]	; 0x2a
 8007bd8:	f1ae 0202 	sub.w	r2, lr, #2
 8007bdc:	3901      	subs	r1, #1
 8007bde:	b292      	uxth	r2, r2
 8007be0:	b289      	uxth	r1, r1
 8007be2:	8522      	strh	r2, [r4, #40]	; 0x28
 8007be4:	8561      	strh	r1, [r4, #42]	; 0x2a
 8007be6:	2a00      	cmp	r2, #0
 8007be8:	d1b1      	bne.n	8007b4e <HAL_I2C_Mem_Write+0xc2>
 8007bea:	e7e5      	b.n	8007bb8 <HAL_I2C_Mem_Write+0x12c>
 8007bec:	6803      	ldr	r3, [r0, #0]
 8007bee:	f043 0301 	orr.w	r3, r3, #1
 8007bf2:	6003      	str	r3, [r0, #0]
 8007bf4:	e788      	b.n	8007b08 <HAL_I2C_Mem_Write+0x7c>
 8007bf6:	681a      	ldr	r2, [r3, #0]
 8007bf8:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8007bfc:	2701      	movs	r7, #1
 8007bfe:	601a      	str	r2, [r3, #0]
 8007c00:	e755      	b.n	8007aae <HAL_I2C_Mem_Write+0x22>
 8007c02:	695a      	ldr	r2, [r3, #20]
 8007c04:	0612      	lsls	r2, r2, #24
 8007c06:	d4c2      	bmi.n	8007b8e <HAL_I2C_Mem_Write+0x102>
 8007c08:	695a      	ldr	r2, [r3, #20]
 8007c0a:	0551      	lsls	r1, r2, #21
 8007c0c:	d4a7      	bmi.n	8007b5e <HAL_I2C_Mem_Write+0xd2>
 8007c0e:	f7fe f9dd 	bl	8005fcc <HAL_GetTick>
 8007c12:	1b40      	subs	r0, r0, r5
 8007c14:	4286      	cmp	r6, r0
 8007c16:	6823      	ldr	r3, [r4, #0]
 8007c18:	d301      	bcc.n	8007c1e <HAL_I2C_Mem_Write+0x192>
 8007c1a:	2e00      	cmp	r6, #0
 8007c1c:	d197      	bne.n	8007b4e <HAL_I2C_Mem_Write+0xc2>
 8007c1e:	695a      	ldr	r2, [r3, #20]
 8007c20:	f012 0280 	ands.w	r2, r2, #128	; 0x80
 8007c24:	d193      	bne.n	8007b4e <HAL_I2C_Mem_Write+0xc2>
 8007c26:	e01e      	b.n	8007c66 <HAL_I2C_Mem_Write+0x1da>
 8007c28:	681a      	ldr	r2, [r3, #0]
 8007c2a:	2100      	movs	r1, #0
 8007c2c:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8007c30:	2020      	movs	r0, #32
 8007c32:	601a      	str	r2, [r3, #0]
 8007c34:	f884 003d 	strb.w	r0, [r4, #61]	; 0x3d
 8007c38:	f884 103c 	strb.w	r1, [r4, #60]	; 0x3c
 8007c3c:	f884 103e 	strb.w	r1, [r4, #62]	; 0x3e
 8007c40:	e735      	b.n	8007aae <HAL_I2C_Mem_Write+0x22>
 8007c42:	695a      	ldr	r2, [r3, #20]
 8007c44:	0752      	lsls	r2, r2, #29
 8007c46:	d4ef      	bmi.n	8007c28 <HAL_I2C_Mem_Write+0x19c>
 8007c48:	695a      	ldr	r2, [r3, #20]
 8007c4a:	0551      	lsls	r1, r2, #21
 8007c4c:	d487      	bmi.n	8007b5e <HAL_I2C_Mem_Write+0xd2>
 8007c4e:	f7fe f9bd 	bl	8005fcc <HAL_GetTick>
 8007c52:	1b40      	subs	r0, r0, r5
 8007c54:	4286      	cmp	r6, r0
 8007c56:	6823      	ldr	r3, [r4, #0]
 8007c58:	d301      	bcc.n	8007c5e <HAL_I2C_Mem_Write+0x1d2>
 8007c5a:	2e00      	cmp	r6, #0
 8007c5c:	d1ac      	bne.n	8007bb8 <HAL_I2C_Mem_Write+0x12c>
 8007c5e:	695a      	ldr	r2, [r3, #20]
 8007c60:	f012 0204 	ands.w	r2, r2, #4
 8007c64:	d1a8      	bne.n	8007bb8 <HAL_I2C_Mem_Write+0x12c>
 8007c66:	2120      	movs	r1, #32
 8007c68:	6322      	str	r2, [r4, #48]	; 0x30
 8007c6a:	f884 103d 	strb.w	r1, [r4, #61]	; 0x3d
 8007c6e:	f884 203e 	strb.w	r2, [r4, #62]	; 0x3e
 8007c72:	6c21      	ldr	r1, [r4, #64]	; 0x40
 8007c74:	f884 203c 	strb.w	r2, [r4, #60]	; 0x3c
 8007c78:	f041 0120 	orr.w	r1, r1, #32
 8007c7c:	6421      	str	r1, [r4, #64]	; 0x40
 8007c7e:	e77e      	b.n	8007b7e <HAL_I2C_Mem_Write+0xf2>
 8007c80:	6823      	ldr	r3, [r4, #0]
 8007c82:	e799      	b.n	8007bb8 <HAL_I2C_Mem_Write+0x12c>
 8007c84:	ffff0000 	.word	0xffff0000

08007c88 <HAL_I2C_Mem_Read>:
 8007c88:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007c8c:	4604      	mov	r4, r0
 8007c8e:	b086      	sub	sp, #24
 8007c90:	4699      	mov	r9, r3
 8007c92:	f8bd a03c 	ldrh.w	sl, [sp, #60]	; 0x3c
 8007c96:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8007c98:	460f      	mov	r7, r1
 8007c9a:	4690      	mov	r8, r2
 8007c9c:	f7fe f996 	bl	8005fcc <HAL_GetTick>
 8007ca0:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
 8007ca4:	2b20      	cmp	r3, #32
 8007ca6:	d004      	beq.n	8007cb2 <HAL_I2C_Mem_Read+0x2a>
 8007ca8:	2702      	movs	r7, #2
 8007caa:	4638      	mov	r0, r7
 8007cac:	b006      	add	sp, #24
 8007cae:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007cb2:	4606      	mov	r6, r0
 8007cb4:	6820      	ldr	r0, [r4, #0]
 8007cb6:	6983      	ldr	r3, [r0, #24]
 8007cb8:	079b      	lsls	r3, r3, #30
 8007cba:	d517      	bpl.n	8007cec <HAL_I2C_Mem_Read+0x64>
 8007cbc:	f7fe f986 	bl	8005fcc <HAL_GetTick>
 8007cc0:	1b80      	subs	r0, r0, r6
 8007cc2:	2819      	cmp	r0, #25
 8007cc4:	6820      	ldr	r0, [r4, #0]
 8007cc6:	d9f6      	bls.n	8007cb6 <HAL_I2C_Mem_Read+0x2e>
 8007cc8:	6983      	ldr	r3, [r0, #24]
 8007cca:	43db      	mvns	r3, r3
 8007ccc:	f013 0302 	ands.w	r3, r3, #2
 8007cd0:	d1f1      	bne.n	8007cb6 <HAL_I2C_Mem_Read+0x2e>
 8007cd2:	2220      	movs	r2, #32
 8007cd4:	6323      	str	r3, [r4, #48]	; 0x30
 8007cd6:	f884 203d 	strb.w	r2, [r4, #61]	; 0x3d
 8007cda:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 8007cde:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8007ce0:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 8007ce4:	f042 0220 	orr.w	r2, r2, #32
 8007ce8:	6422      	str	r2, [r4, #64]	; 0x40
 8007cea:	e7dd      	b.n	8007ca8 <HAL_I2C_Mem_Read+0x20>
 8007cec:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
 8007cf0:	2b01      	cmp	r3, #1
 8007cf2:	d0d9      	beq.n	8007ca8 <HAL_I2C_Mem_Read+0x20>
 8007cf4:	2301      	movs	r3, #1
 8007cf6:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 8007cfa:	6803      	ldr	r3, [r0, #0]
 8007cfc:	07d9      	lsls	r1, r3, #31
 8007cfe:	d535      	bpl.n	8007d6c <HAL_I2C_Mem_Read+0xe4>
 8007d00:	4639      	mov	r1, r7
 8007d02:	6807      	ldr	r7, [r0, #0]
 8007d04:	f427 6700 	bic.w	r7, r7, #2048	; 0x800
 8007d08:	6007      	str	r7, [r0, #0]
 8007d0a:	980e      	ldr	r0, [sp, #56]	; 0x38
 8007d0c:	6260      	str	r0, [r4, #36]	; 0x24
 8007d0e:	2022      	movs	r0, #34	; 0x22
 8007d10:	e9cd 5600 	strd	r5, r6, [sp]
 8007d14:	f884 003d 	strb.w	r0, [r4, #61]	; 0x3d
 8007d18:	2040      	movs	r0, #64	; 0x40
 8007d1a:	f884 003e 	strb.w	r0, [r4, #62]	; 0x3e
 8007d1e:	2000      	movs	r0, #0
 8007d20:	6420      	str	r0, [r4, #64]	; 0x40
 8007d22:	f8a4 a02a 	strh.w	sl, [r4, #42]	; 0x2a
 8007d26:	8d60      	ldrh	r0, [r4, #42]	; 0x2a
 8007d28:	8520      	strh	r0, [r4, #40]	; 0x28
 8007d2a:	4899      	ldr	r0, [pc, #612]	; (8007f90 <HAL_I2C_Mem_Read+0x308>)
 8007d2c:	62e0      	str	r0, [r4, #44]	; 0x2c
 8007d2e:	464b      	mov	r3, r9
 8007d30:	4642      	mov	r2, r8
 8007d32:	4620      	mov	r0, r4
 8007d34:	f7ff f90c 	bl	8006f50 <I2C_RequestMemoryRead>
 8007d38:	4607      	mov	r7, r0
 8007d3a:	2800      	cmp	r0, #0
 8007d3c:	f040 809f 	bne.w	8007e7e <HAL_I2C_Mem_Read+0x1f6>
 8007d40:	8d22      	ldrh	r2, [r4, #40]	; 0x28
 8007d42:	b9c2      	cbnz	r2, 8007d76 <HAL_I2C_Mem_Read+0xee>
 8007d44:	6823      	ldr	r3, [r4, #0]
 8007d46:	9002      	str	r0, [sp, #8]
 8007d48:	695a      	ldr	r2, [r3, #20]
 8007d4a:	9202      	str	r2, [sp, #8]
 8007d4c:	699a      	ldr	r2, [r3, #24]
 8007d4e:	9202      	str	r2, [sp, #8]
 8007d50:	9a02      	ldr	r2, [sp, #8]
 8007d52:	681a      	ldr	r2, [r3, #0]
 8007d54:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8007d58:	601a      	str	r2, [r3, #0]
 8007d5a:	2300      	movs	r3, #0
 8007d5c:	2220      	movs	r2, #32
 8007d5e:	f884 203d 	strb.w	r2, [r4, #61]	; 0x3d
 8007d62:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 8007d66:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 8007d6a:	e79e      	b.n	8007caa <HAL_I2C_Mem_Read+0x22>
 8007d6c:	6803      	ldr	r3, [r0, #0]
 8007d6e:	f043 0301 	orr.w	r3, r3, #1
 8007d72:	6003      	str	r3, [r0, #0]
 8007d74:	e7c4      	b.n	8007d00 <HAL_I2C_Mem_Read+0x78>
 8007d76:	2a01      	cmp	r2, #1
 8007d78:	f000 8151 	beq.w	800801e <HAL_I2C_Mem_Read+0x396>
 8007d7c:	2a02      	cmp	r2, #2
 8007d7e:	f000 80b5 	beq.w	8007eec <HAL_I2C_Mem_Read+0x264>
 8007d82:	6823      	ldr	r3, [r4, #0]
 8007d84:	9005      	str	r0, [sp, #20]
 8007d86:	6959      	ldr	r1, [r3, #20]
 8007d88:	9105      	str	r1, [sp, #20]
 8007d8a:	6999      	ldr	r1, [r3, #24]
 8007d8c:	9105      	str	r1, [sp, #20]
 8007d8e:	9905      	ldr	r1, [sp, #20]
 8007d90:	2a03      	cmp	r2, #3
 8007d92:	d849      	bhi.n	8007e28 <HAL_I2C_Mem_Read+0x1a0>
 8007d94:	2a01      	cmp	r2, #1
 8007d96:	f000 811b 	beq.w	8007fd0 <HAL_I2C_Mem_Read+0x348>
 8007d9a:	2a02      	cmp	r2, #2
 8007d9c:	f000 8081 	beq.w	8007ea2 <HAL_I2C_Mem_Read+0x21a>
 8007da0:	1c68      	adds	r0, r5, #1
 8007da2:	f040 80b3 	bne.w	8007f0c <HAL_I2C_Mem_Read+0x284>
 8007da6:	695a      	ldr	r2, [r3, #20]
 8007da8:	0751      	lsls	r1, r2, #29
 8007daa:	d5fc      	bpl.n	8007da6 <HAL_I2C_Mem_Read+0x11e>
 8007dac:	681a      	ldr	r2, [r3, #0]
 8007dae:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8007db0:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8007db4:	601a      	str	r2, [r3, #0]
 8007db6:	691b      	ldr	r3, [r3, #16]
 8007db8:	700b      	strb	r3, [r1, #0]
 8007dba:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 8007dbc:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8007dbe:	8d21      	ldrh	r1, [r4, #40]	; 0x28
 8007dc0:	3b01      	subs	r3, #1
 8007dc2:	1c50      	adds	r0, r2, #1
 8007dc4:	3901      	subs	r1, #1
 8007dc6:	b29b      	uxth	r3, r3
 8007dc8:	6822      	ldr	r2, [r4, #0]
 8007dca:	6260      	str	r0, [r4, #36]	; 0x24
 8007dcc:	8521      	strh	r1, [r4, #40]	; 0x28
 8007dce:	8563      	strh	r3, [r4, #42]	; 0x2a
 8007dd0:	1c68      	adds	r0, r5, #1
 8007dd2:	f040 80be 	bne.w	8007f52 <HAL_I2C_Mem_Read+0x2ca>
 8007dd6:	6953      	ldr	r3, [r2, #20]
 8007dd8:	0759      	lsls	r1, r3, #29
 8007dda:	d5fc      	bpl.n	8007dd6 <HAL_I2C_Mem_Read+0x14e>
 8007ddc:	6813      	ldr	r3, [r2, #0]
 8007dde:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8007de0:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8007de4:	6013      	str	r3, [r2, #0]
 8007de6:	6913      	ldr	r3, [r2, #16]
 8007de8:	700b      	strb	r3, [r1, #0]
 8007dea:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 8007dec:	8d22      	ldrh	r2, [r4, #40]	; 0x28
 8007dee:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8007df0:	6821      	ldr	r1, [r4, #0]
 8007df2:	3b01      	subs	r3, #1
 8007df4:	b29b      	uxth	r3, r3
 8007df6:	8563      	strh	r3, [r4, #42]	; 0x2a
 8007df8:	6909      	ldr	r1, [r1, #16]
 8007dfa:	1e53      	subs	r3, r2, #1
 8007dfc:	f100 0c01 	add.w	ip, r0, #1
 8007e00:	8523      	strh	r3, [r4, #40]	; 0x28
 8007e02:	f8c4 c024 	str.w	ip, [r4, #36]	; 0x24
 8007e06:	7041      	strb	r1, [r0, #1]
 8007e08:	8d22      	ldrh	r2, [r4, #40]	; 0x28
 8007e0a:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 8007e0c:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8007e0e:	3a01      	subs	r2, #1
 8007e10:	3b01      	subs	r3, #1
 8007e12:	3101      	adds	r1, #1
 8007e14:	b292      	uxth	r2, r2
 8007e16:	b29b      	uxth	r3, r3
 8007e18:	6261      	str	r1, [r4, #36]	; 0x24
 8007e1a:	8522      	strh	r2, [r4, #40]	; 0x28
 8007e1c:	8563      	strh	r3, [r4, #42]	; 0x2a
 8007e1e:	2a00      	cmp	r2, #0
 8007e20:	d09b      	beq.n	8007d5a <HAL_I2C_Mem_Read+0xd2>
 8007e22:	2a03      	cmp	r2, #3
 8007e24:	6823      	ldr	r3, [r4, #0]
 8007e26:	d9b5      	bls.n	8007d94 <HAL_I2C_Mem_Read+0x10c>
 8007e28:	695a      	ldr	r2, [r3, #20]
 8007e2a:	0652      	lsls	r2, r2, #25
 8007e2c:	f100 80b2 	bmi.w	8007f94 <HAL_I2C_Mem_Read+0x30c>
 8007e30:	2d00      	cmp	r5, #0
 8007e32:	f000 80a9 	beq.w	8007f88 <HAL_I2C_Mem_Read+0x300>
 8007e36:	e00c      	b.n	8007e52 <HAL_I2C_Mem_Read+0x1ca>
 8007e38:	f7fe f8c8 	bl	8005fcc <HAL_GetTick>
 8007e3c:	1b80      	subs	r0, r0, r6
 8007e3e:	4285      	cmp	r5, r0
 8007e40:	6823      	ldr	r3, [r4, #0]
 8007e42:	d202      	bcs.n	8007e4a <HAL_I2C_Mem_Read+0x1c2>
 8007e44:	695a      	ldr	r2, [r3, #20]
 8007e46:	0651      	lsls	r1, r2, #25
 8007e48:	d571      	bpl.n	8007f2e <HAL_I2C_Mem_Read+0x2a6>
 8007e4a:	695a      	ldr	r2, [r3, #20]
 8007e4c:	0652      	lsls	r2, r2, #25
 8007e4e:	f100 80a1 	bmi.w	8007f94 <HAL_I2C_Mem_Read+0x30c>
 8007e52:	695a      	ldr	r2, [r3, #20]
 8007e54:	06d0      	lsls	r0, r2, #27
 8007e56:	d5ef      	bpl.n	8007e38 <HAL_I2C_Mem_Read+0x1b0>
 8007e58:	2200      	movs	r2, #0
 8007e5a:	f06f 0010 	mvn.w	r0, #16
 8007e5e:	2120      	movs	r1, #32
 8007e60:	6158      	str	r0, [r3, #20]
 8007e62:	6322      	str	r2, [r4, #48]	; 0x30
 8007e64:	f884 103d 	strb.w	r1, [r4, #61]	; 0x3d
 8007e68:	f884 203e 	strb.w	r2, [r4, #62]	; 0x3e
 8007e6c:	6c23      	ldr	r3, [r4, #64]	; 0x40
 8007e6e:	6423      	str	r3, [r4, #64]	; 0x40
 8007e70:	2701      	movs	r7, #1
 8007e72:	4638      	mov	r0, r7
 8007e74:	f884 203c 	strb.w	r2, [r4, #60]	; 0x3c
 8007e78:	b006      	add	sp, #24
 8007e7a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007e7e:	2701      	movs	r7, #1
 8007e80:	4638      	mov	r0, r7
 8007e82:	b006      	add	sp, #24
 8007e84:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007e88:	695a      	ldr	r2, [r3, #20]
 8007e8a:	0751      	lsls	r1, r2, #29
 8007e8c:	d40e      	bmi.n	8007eac <HAL_I2C_Mem_Read+0x224>
 8007e8e:	f7fe f89d 	bl	8005fcc <HAL_GetTick>
 8007e92:	1b80      	subs	r0, r0, r6
 8007e94:	4285      	cmp	r5, r0
 8007e96:	6823      	ldr	r3, [r4, #0]
 8007e98:	d300      	bcc.n	8007e9c <HAL_I2C_Mem_Read+0x214>
 8007e9a:	b915      	cbnz	r5, 8007ea2 <HAL_I2C_Mem_Read+0x21a>
 8007e9c:	695a      	ldr	r2, [r3, #20]
 8007e9e:	0751      	lsls	r1, r2, #29
 8007ea0:	d545      	bpl.n	8007f2e <HAL_I2C_Mem_Read+0x2a6>
 8007ea2:	1c6a      	adds	r2, r5, #1
 8007ea4:	d1f0      	bne.n	8007e88 <HAL_I2C_Mem_Read+0x200>
 8007ea6:	695a      	ldr	r2, [r3, #20]
 8007ea8:	0750      	lsls	r0, r2, #29
 8007eaa:	d5fc      	bpl.n	8007ea6 <HAL_I2C_Mem_Read+0x21e>
 8007eac:	681a      	ldr	r2, [r3, #0]
 8007eae:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8007eb2:	601a      	str	r2, [r3, #0]
 8007eb4:	691a      	ldr	r2, [r3, #16]
 8007eb6:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8007eb8:	701a      	strb	r2, [r3, #0]
 8007eba:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 8007ebc:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8007ebe:	3b01      	subs	r3, #1
 8007ec0:	b29b      	uxth	r3, r3
 8007ec2:	8563      	strh	r3, [r4, #42]	; 0x2a
 8007ec4:	8d23      	ldrh	r3, [r4, #40]	; 0x28
 8007ec6:	3b01      	subs	r3, #1
 8007ec8:	8523      	strh	r3, [r4, #40]	; 0x28
 8007eca:	6823      	ldr	r3, [r4, #0]
 8007ecc:	1c51      	adds	r1, r2, #1
 8007ece:	691b      	ldr	r3, [r3, #16]
 8007ed0:	6261      	str	r1, [r4, #36]	; 0x24
 8007ed2:	7053      	strb	r3, [r2, #1]
 8007ed4:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8007ed6:	8d22      	ldrh	r2, [r4, #40]	; 0x28
 8007ed8:	3301      	adds	r3, #1
 8007eda:	6263      	str	r3, [r4, #36]	; 0x24
 8007edc:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 8007ede:	3a01      	subs	r2, #1
 8007ee0:	3b01      	subs	r3, #1
 8007ee2:	b292      	uxth	r2, r2
 8007ee4:	b29b      	uxth	r3, r3
 8007ee6:	8522      	strh	r2, [r4, #40]	; 0x28
 8007ee8:	8563      	strh	r3, [r4, #42]	; 0x2a
 8007eea:	e798      	b.n	8007e1e <HAL_I2C_Mem_Read+0x196>
 8007eec:	6823      	ldr	r3, [r4, #0]
 8007eee:	6819      	ldr	r1, [r3, #0]
 8007ef0:	f421 6180 	bic.w	r1, r1, #1024	; 0x400
 8007ef4:	6019      	str	r1, [r3, #0]
 8007ef6:	6819      	ldr	r1, [r3, #0]
 8007ef8:	f441 6100 	orr.w	r1, r1, #2048	; 0x800
 8007efc:	6019      	str	r1, [r3, #0]
 8007efe:	9004      	str	r0, [sp, #16]
 8007f00:	6959      	ldr	r1, [r3, #20]
 8007f02:	9104      	str	r1, [sp, #16]
 8007f04:	6999      	ldr	r1, [r3, #24]
 8007f06:	9104      	str	r1, [sp, #16]
 8007f08:	9904      	ldr	r1, [sp, #16]
 8007f0a:	e741      	b.n	8007d90 <HAL_I2C_Mem_Read+0x108>
 8007f0c:	695a      	ldr	r2, [r3, #20]
 8007f0e:	0752      	lsls	r2, r2, #29
 8007f10:	f53f af4c 	bmi.w	8007dac <HAL_I2C_Mem_Read+0x124>
 8007f14:	f7fe f85a 	bl	8005fcc <HAL_GetTick>
 8007f18:	1b80      	subs	r0, r0, r6
 8007f1a:	4285      	cmp	r5, r0
 8007f1c:	6823      	ldr	r3, [r4, #0]
 8007f1e:	d302      	bcc.n	8007f26 <HAL_I2C_Mem_Read+0x29e>
 8007f20:	2d00      	cmp	r5, #0
 8007f22:	f47f af3d 	bne.w	8007da0 <HAL_I2C_Mem_Read+0x118>
 8007f26:	695a      	ldr	r2, [r3, #20]
 8007f28:	0752      	lsls	r2, r2, #29
 8007f2a:	f53f af39 	bmi.w	8007da0 <HAL_I2C_Mem_Read+0x118>
 8007f2e:	2200      	movs	r2, #0
 8007f30:	2320      	movs	r3, #32
 8007f32:	6322      	str	r2, [r4, #48]	; 0x30
 8007f34:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 8007f38:	f884 203e 	strb.w	r2, [r4, #62]	; 0x3e
 8007f3c:	6c23      	ldr	r3, [r4, #64]	; 0x40
 8007f3e:	f884 203c 	strb.w	r2, [r4, #60]	; 0x3c
 8007f42:	2701      	movs	r7, #1
 8007f44:	f043 0320 	orr.w	r3, r3, #32
 8007f48:	4638      	mov	r0, r7
 8007f4a:	6423      	str	r3, [r4, #64]	; 0x40
 8007f4c:	b006      	add	sp, #24
 8007f4e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007f52:	6953      	ldr	r3, [r2, #20]
 8007f54:	075b      	lsls	r3, r3, #29
 8007f56:	f53f af41 	bmi.w	8007ddc <HAL_I2C_Mem_Read+0x154>
 8007f5a:	f7fe f837 	bl	8005fcc <HAL_GetTick>
 8007f5e:	1b80      	subs	r0, r0, r6
 8007f60:	4285      	cmp	r5, r0
 8007f62:	6822      	ldr	r2, [r4, #0]
 8007f64:	d302      	bcc.n	8007f6c <HAL_I2C_Mem_Read+0x2e4>
 8007f66:	2d00      	cmp	r5, #0
 8007f68:	f47f af32 	bne.w	8007dd0 <HAL_I2C_Mem_Read+0x148>
 8007f6c:	6953      	ldr	r3, [r2, #20]
 8007f6e:	075b      	lsls	r3, r3, #29
 8007f70:	f53f af2e 	bmi.w	8007dd0 <HAL_I2C_Mem_Read+0x148>
 8007f74:	e7db      	b.n	8007f2e <HAL_I2C_Mem_Read+0x2a6>
 8007f76:	f7fe f829 	bl	8005fcc <HAL_GetTick>
 8007f7a:	6823      	ldr	r3, [r4, #0]
 8007f7c:	695a      	ldr	r2, [r3, #20]
 8007f7e:	0651      	lsls	r1, r2, #25
 8007f80:	d5d5      	bpl.n	8007f2e <HAL_I2C_Mem_Read+0x2a6>
 8007f82:	695a      	ldr	r2, [r3, #20]
 8007f84:	0652      	lsls	r2, r2, #25
 8007f86:	d405      	bmi.n	8007f94 <HAL_I2C_Mem_Read+0x30c>
 8007f88:	695a      	ldr	r2, [r3, #20]
 8007f8a:	06d0      	lsls	r0, r2, #27
 8007f8c:	d5f3      	bpl.n	8007f76 <HAL_I2C_Mem_Read+0x2ee>
 8007f8e:	e763      	b.n	8007e58 <HAL_I2C_Mem_Read+0x1d0>
 8007f90:	ffff0000 	.word	0xffff0000
 8007f94:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8007f96:	691b      	ldr	r3, [r3, #16]
 8007f98:	7013      	strb	r3, [r2, #0]
 8007f9a:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 8007f9c:	6821      	ldr	r1, [r4, #0]
 8007f9e:	8d22      	ldrh	r2, [r4, #40]	; 0x28
 8007fa0:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8007fa2:	3b01      	subs	r3, #1
 8007fa4:	b29b      	uxth	r3, r3
 8007fa6:	8563      	strh	r3, [r4, #42]	; 0x2a
 8007fa8:	694b      	ldr	r3, [r1, #20]
 8007faa:	3a01      	subs	r2, #1
 8007fac:	b292      	uxth	r2, r2
 8007fae:	f100 0c01 	add.w	ip, r0, #1
 8007fb2:	075b      	lsls	r3, r3, #29
 8007fb4:	8522      	strh	r2, [r4, #40]	; 0x28
 8007fb6:	f8c4 c024 	str.w	ip, [r4, #36]	; 0x24
 8007fba:	f57f af30 	bpl.w	8007e1e <HAL_I2C_Mem_Read+0x196>
 8007fbe:	2a03      	cmp	r2, #3
 8007fc0:	d103      	bne.n	8007fca <HAL_I2C_Mem_Read+0x342>
 8007fc2:	680b      	ldr	r3, [r1, #0]
 8007fc4:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 8007fc8:	600b      	str	r3, [r1, #0]
 8007fca:	690b      	ldr	r3, [r1, #16]
 8007fcc:	7043      	strb	r3, [r0, #1]
 8007fce:	e781      	b.n	8007ed4 <HAL_I2C_Mem_Read+0x24c>
 8007fd0:	695a      	ldr	r2, [r3, #20]
 8007fd2:	0650      	lsls	r0, r2, #25
 8007fd4:	d41f      	bmi.n	8008016 <HAL_I2C_Mem_Read+0x38e>
 8007fd6:	b1d5      	cbz	r5, 800800e <HAL_I2C_Mem_Read+0x386>
 8007fd8:	e00b      	b.n	8007ff2 <HAL_I2C_Mem_Read+0x36a>
 8007fda:	f7fd fff7 	bl	8005fcc <HAL_GetTick>
 8007fde:	1b80      	subs	r0, r0, r6
 8007fe0:	4285      	cmp	r5, r0
 8007fe2:	6823      	ldr	r3, [r4, #0]
 8007fe4:	d202      	bcs.n	8007fec <HAL_I2C_Mem_Read+0x364>
 8007fe6:	695a      	ldr	r2, [r3, #20]
 8007fe8:	0652      	lsls	r2, r2, #25
 8007fea:	d5a0      	bpl.n	8007f2e <HAL_I2C_Mem_Read+0x2a6>
 8007fec:	695a      	ldr	r2, [r3, #20]
 8007fee:	0650      	lsls	r0, r2, #25
 8007ff0:	d411      	bmi.n	8008016 <HAL_I2C_Mem_Read+0x38e>
 8007ff2:	695a      	ldr	r2, [r3, #20]
 8007ff4:	06d1      	lsls	r1, r2, #27
 8007ff6:	f53f af2f 	bmi.w	8007e58 <HAL_I2C_Mem_Read+0x1d0>
 8007ffa:	e7ee      	b.n	8007fda <HAL_I2C_Mem_Read+0x352>
 8007ffc:	f7fd ffe6 	bl	8005fcc <HAL_GetTick>
 8008000:	6823      	ldr	r3, [r4, #0]
 8008002:	695a      	ldr	r2, [r3, #20]
 8008004:	0652      	lsls	r2, r2, #25
 8008006:	d592      	bpl.n	8007f2e <HAL_I2C_Mem_Read+0x2a6>
 8008008:	695a      	ldr	r2, [r3, #20]
 800800a:	0650      	lsls	r0, r2, #25
 800800c:	d403      	bmi.n	8008016 <HAL_I2C_Mem_Read+0x38e>
 800800e:	695a      	ldr	r2, [r3, #20]
 8008010:	06d1      	lsls	r1, r2, #27
 8008012:	d5f3      	bpl.n	8007ffc <HAL_I2C_Mem_Read+0x374>
 8008014:	e720      	b.n	8007e58 <HAL_I2C_Mem_Read+0x1d0>
 8008016:	691a      	ldr	r2, [r3, #16]
 8008018:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800801a:	701a      	strb	r2, [r3, #0]
 800801c:	e75a      	b.n	8007ed4 <HAL_I2C_Mem_Read+0x24c>
 800801e:	6823      	ldr	r3, [r4, #0]
 8008020:	6819      	ldr	r1, [r3, #0]
 8008022:	f421 6180 	bic.w	r1, r1, #1024	; 0x400
 8008026:	6019      	str	r1, [r3, #0]
 8008028:	9003      	str	r0, [sp, #12]
 800802a:	6959      	ldr	r1, [r3, #20]
 800802c:	9103      	str	r1, [sp, #12]
 800802e:	6999      	ldr	r1, [r3, #24]
 8008030:	9103      	str	r1, [sp, #12]
 8008032:	9903      	ldr	r1, [sp, #12]
 8008034:	6819      	ldr	r1, [r3, #0]
 8008036:	f441 7100 	orr.w	r1, r1, #512	; 0x200
 800803a:	6019      	str	r1, [r3, #0]
 800803c:	e6a8      	b.n	8007d90 <HAL_I2C_Mem_Read+0x108>
 800803e:	bf00      	nop

08008040 <HAL_I2C_MasterTxCpltCallback>:
 8008040:	4770      	bx	lr
 8008042:	bf00      	nop

08008044 <HAL_I2C_MasterRxCpltCallback>:
 8008044:	4770      	bx	lr
 8008046:	bf00      	nop

08008048 <HAL_I2C_SlaveTxCpltCallback>:
 8008048:	4770      	bx	lr
 800804a:	bf00      	nop

0800804c <HAL_I2C_SlaveRxCpltCallback>:
 800804c:	4770      	bx	lr
 800804e:	bf00      	nop

08008050 <HAL_I2C_AddrCallback>:
 8008050:	4770      	bx	lr
 8008052:	bf00      	nop

08008054 <HAL_I2C_ListenCpltCallback>:
 8008054:	4770      	bx	lr
 8008056:	bf00      	nop

08008058 <HAL_I2C_MemTxCpltCallback>:
 8008058:	4770      	bx	lr
 800805a:	bf00      	nop

0800805c <I2C_MemoryTransmit_TXE_BTF>:
 800805c:	f890 203d 	ldrb.w	r2, [r0, #61]	; 0x3d
 8008060:	6d01      	ldr	r1, [r0, #80]	; 0x50
 8008062:	4603      	mov	r3, r0
 8008064:	b959      	cbnz	r1, 800807e <I2C_MemoryTransmit_TXE_BTF+0x22>
 8008066:	6cc2      	ldr	r2, [r0, #76]	; 0x4c
 8008068:	6801      	ldr	r1, [r0, #0]
 800806a:	2a01      	cmp	r2, #1
 800806c:	6c82      	ldr	r2, [r0, #72]	; 0x48
 800806e:	d01c      	beq.n	80080aa <I2C_MemoryTransmit_TXE_BTF+0x4e>
 8008070:	f3c2 2207 	ubfx	r2, r2, #8, #8
 8008074:	610a      	str	r2, [r1, #16]
 8008076:	6d02      	ldr	r2, [r0, #80]	; 0x50
 8008078:	3201      	adds	r2, #1
 800807a:	6502      	str	r2, [r0, #80]	; 0x50
 800807c:	4770      	bx	lr
 800807e:	6d01      	ldr	r1, [r0, #80]	; 0x50
 8008080:	2901      	cmp	r1, #1
 8008082:	d00a      	beq.n	800809a <I2C_MemoryTransmit_TXE_BTF+0x3e>
 8008084:	6d01      	ldr	r1, [r0, #80]	; 0x50
 8008086:	2902      	cmp	r1, #2
 8008088:	d015      	beq.n	80080b6 <I2C_MemoryTransmit_TXE_BTF+0x5a>
 800808a:	6803      	ldr	r3, [r0, #0]
 800808c:	695a      	ldr	r2, [r3, #20]
 800808e:	0612      	lsls	r2, r2, #24
 8008090:	d502      	bpl.n	8008098 <I2C_MemoryTransmit_TXE_BTF+0x3c>
 8008092:	2200      	movs	r2, #0
 8008094:	611a      	str	r2, [r3, #16]
 8008096:	4770      	bx	lr
 8008098:	4770      	bx	lr
 800809a:	6c82      	ldr	r2, [r0, #72]	; 0x48
 800809c:	6801      	ldr	r1, [r0, #0]
 800809e:	b2d2      	uxtb	r2, r2
 80080a0:	610a      	str	r2, [r1, #16]
 80080a2:	6d02      	ldr	r2, [r0, #80]	; 0x50
 80080a4:	3201      	adds	r2, #1
 80080a6:	6502      	str	r2, [r0, #80]	; 0x50
 80080a8:	4770      	bx	lr
 80080aa:	b2d2      	uxtb	r2, r2
 80080ac:	610a      	str	r2, [r1, #16]
 80080ae:	6d02      	ldr	r2, [r0, #80]	; 0x50
 80080b0:	3202      	adds	r2, #2
 80080b2:	6502      	str	r2, [r0, #80]	; 0x50
 80080b4:	4770      	bx	lr
 80080b6:	b2d2      	uxtb	r2, r2
 80080b8:	2a22      	cmp	r2, #34	; 0x22
 80080ba:	d01f      	beq.n	80080fc <I2C_MemoryTransmit_TXE_BTF+0xa0>
 80080bc:	8d41      	ldrh	r1, [r0, #42]	; 0x2a
 80080be:	b289      	uxth	r1, r1
 80080c0:	b9c1      	cbnz	r1, 80080f4 <I2C_MemoryTransmit_TXE_BTF+0x98>
 80080c2:	8d41      	ldrh	r1, [r0, #42]	; 0x2a
 80080c4:	b289      	uxth	r1, r1
 80080c6:	2900      	cmp	r1, #0
 80080c8:	d1e6      	bne.n	8008098 <I2C_MemoryTransmit_TXE_BTF+0x3c>
 80080ca:	2a21      	cmp	r2, #33	; 0x21
 80080cc:	d1e4      	bne.n	8008098 <I2C_MemoryTransmit_TXE_BTF+0x3c>
 80080ce:	6802      	ldr	r2, [r0, #0]
 80080d0:	b510      	push	{r4, lr}
 80080d2:	6854      	ldr	r4, [r2, #4]
 80080d4:	f424 64e0 	bic.w	r4, r4, #1792	; 0x700
 80080d8:	6054      	str	r4, [r2, #4]
 80080da:	6814      	ldr	r4, [r2, #0]
 80080dc:	f444 7400 	orr.w	r4, r4, #512	; 0x200
 80080e0:	6014      	str	r4, [r2, #0]
 80080e2:	2220      	movs	r2, #32
 80080e4:	6301      	str	r1, [r0, #48]	; 0x30
 80080e6:	f880 203d 	strb.w	r2, [r0, #61]	; 0x3d
 80080ea:	f880 103e 	strb.w	r1, [r0, #62]	; 0x3e
 80080ee:	f7ff ffb3 	bl	8008058 <HAL_I2C_MemTxCpltCallback>
 80080f2:	bd10      	pop	{r4, pc}
 80080f4:	2a21      	cmp	r2, #33	; 0x21
 80080f6:	d00a      	beq.n	800810e <I2C_MemoryTransmit_TXE_BTF+0xb2>
 80080f8:	8d5b      	ldrh	r3, [r3, #42]	; 0x2a
 80080fa:	4770      	bx	lr
 80080fc:	6801      	ldr	r1, [r0, #0]
 80080fe:	680a      	ldr	r2, [r1, #0]
 8008100:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 8008104:	600a      	str	r2, [r1, #0]
 8008106:	6d02      	ldr	r2, [r0, #80]	; 0x50
 8008108:	3201      	adds	r2, #1
 800810a:	6502      	str	r2, [r0, #80]	; 0x50
 800810c:	4770      	bx	lr
 800810e:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8008110:	6802      	ldr	r2, [r0, #0]
 8008112:	f811 0b01 	ldrb.w	r0, [r1], #1
 8008116:	6110      	str	r0, [r2, #16]
 8008118:	8d5a      	ldrh	r2, [r3, #42]	; 0x2a
 800811a:	6259      	str	r1, [r3, #36]	; 0x24
 800811c:	3a01      	subs	r2, #1
 800811e:	b292      	uxth	r2, r2
 8008120:	855a      	strh	r2, [r3, #42]	; 0x2a
 8008122:	4770      	bx	lr

08008124 <HAL_I2C_MemRxCpltCallback>:
 8008124:	4770      	bx	lr
 8008126:	bf00      	nop

08008128 <HAL_I2C_ErrorCallback>:
 8008128:	4770      	bx	lr
 800812a:	bf00      	nop

0800812c <HAL_I2C_AbortCpltCallback>:
 800812c:	4770      	bx	lr
 800812e:	bf00      	nop

08008130 <I2C_DMAAbort>:
 8008130:	b570      	push	{r4, r5, r6, lr}
 8008132:	4b3a      	ldr	r3, [pc, #232]	; (800821c <I2C_DMAAbort+0xec>)
 8008134:	493a      	ldr	r1, [pc, #232]	; (8008220 <I2C_DMAAbort+0xf0>)
 8008136:	681b      	ldr	r3, [r3, #0]
 8008138:	6b80      	ldr	r0, [r0, #56]	; 0x38
 800813a:	b082      	sub	sp, #8
 800813c:	08db      	lsrs	r3, r3, #3
 800813e:	2200      	movs	r2, #0
 8008140:	fba1 1303 	umull	r1, r3, r1, r3
 8008144:	9201      	str	r2, [sp, #4]
 8008146:	0a1b      	lsrs	r3, r3, #8
 8008148:	f890 103d 	ldrb.w	r1, [r0, #61]	; 0x3d
 800814c:	6802      	ldr	r2, [r0, #0]
 800814e:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 8008152:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
 8008156:	b2c9      	uxtb	r1, r1
 8008158:	9301      	str	r3, [sp, #4]
 800815a:	e005      	b.n	8008168 <I2C_DMAAbort+0x38>
 800815c:	9b01      	ldr	r3, [sp, #4]
 800815e:	3b01      	subs	r3, #1
 8008160:	9301      	str	r3, [sp, #4]
 8008162:	6813      	ldr	r3, [r2, #0]
 8008164:	059b      	lsls	r3, r3, #22
 8008166:	d506      	bpl.n	8008176 <I2C_DMAAbort+0x46>
 8008168:	9b01      	ldr	r3, [sp, #4]
 800816a:	2b00      	cmp	r3, #0
 800816c:	d1f6      	bne.n	800815c <I2C_DMAAbort+0x2c>
 800816e:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8008170:	f043 0320 	orr.w	r3, r3, #32
 8008174:	6403      	str	r3, [r0, #64]	; 0x40
 8008176:	6b44      	ldr	r4, [r0, #52]	; 0x34
 8008178:	b34c      	cbz	r4, 80081ce <I2C_DMAAbort+0x9e>
 800817a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800817c:	2500      	movs	r5, #0
 800817e:	63e5      	str	r5, [r4, #60]	; 0x3c
 8008180:	b1f3      	cbz	r3, 80081c0 <I2C_DMAAbort+0x90>
 8008182:	6816      	ldr	r6, [r2, #0]
 8008184:	63dd      	str	r5, [r3, #60]	; 0x3c
 8008186:	f426 6680 	bic.w	r6, r6, #1024	; 0x400
 800818a:	6016      	str	r6, [r2, #0]
 800818c:	8545      	strh	r5, [r0, #42]	; 0x2a
 800818e:	6525      	str	r5, [r4, #80]	; 0x50
 8008190:	2400      	movs	r4, #0
 8008192:	651c      	str	r4, [r3, #80]	; 0x50
 8008194:	6813      	ldr	r3, [r2, #0]
 8008196:	f023 0301 	bic.w	r3, r3, #1
 800819a:	6013      	str	r3, [r2, #0]
 800819c:	f890 303d 	ldrb.w	r3, [r0, #61]	; 0x3d
 80081a0:	2b60      	cmp	r3, #96	; 0x60
 80081a2:	d02a      	beq.n	80081fa <I2C_DMAAbort+0xca>
 80081a4:	f001 0128 	and.w	r1, r1, #40	; 0x28
 80081a8:	2928      	cmp	r1, #40	; 0x28
 80081aa:	d019      	beq.n	80081e0 <I2C_DMAAbort+0xb0>
 80081ac:	2220      	movs	r2, #32
 80081ae:	2300      	movs	r3, #0
 80081b0:	f880 203d 	strb.w	r2, [r0, #61]	; 0x3d
 80081b4:	f880 303e 	strb.w	r3, [r0, #62]	; 0x3e
 80081b8:	f7ff ffb6 	bl	8008128 <HAL_I2C_ErrorCallback>
 80081bc:	b002      	add	sp, #8
 80081be:	bd70      	pop	{r4, r5, r6, pc}
 80081c0:	6815      	ldr	r5, [r2, #0]
 80081c2:	f425 6580 	bic.w	r5, r5, #1024	; 0x400
 80081c6:	6015      	str	r5, [r2, #0]
 80081c8:	8543      	strh	r3, [r0, #42]	; 0x2a
 80081ca:	6523      	str	r3, [r4, #80]	; 0x50
 80081cc:	e7e2      	b.n	8008194 <I2C_DMAAbort+0x64>
 80081ce:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80081d0:	b1f3      	cbz	r3, 8008210 <I2C_DMAAbort+0xe0>
 80081d2:	6815      	ldr	r5, [r2, #0]
 80081d4:	63dc      	str	r4, [r3, #60]	; 0x3c
 80081d6:	f425 6580 	bic.w	r5, r5, #1024	; 0x400
 80081da:	6015      	str	r5, [r2, #0]
 80081dc:	8544      	strh	r4, [r0, #42]	; 0x2a
 80081de:	e7d7      	b.n	8008190 <I2C_DMAAbort+0x60>
 80081e0:	6813      	ldr	r3, [r2, #0]
 80081e2:	f043 0301 	orr.w	r3, r3, #1
 80081e6:	6013      	str	r3, [r2, #0]
 80081e8:	6813      	ldr	r3, [r2, #0]
 80081ea:	2400      	movs	r4, #0
 80081ec:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 80081f0:	6013      	str	r3, [r2, #0]
 80081f2:	6304      	str	r4, [r0, #48]	; 0x30
 80081f4:	f880 103d 	strb.w	r1, [r0, #61]	; 0x3d
 80081f8:	e7de      	b.n	80081b8 <I2C_DMAAbort+0x88>
 80081fa:	2300      	movs	r3, #0
 80081fc:	2220      	movs	r2, #32
 80081fe:	f880 203d 	strb.w	r2, [r0, #61]	; 0x3d
 8008202:	f880 303e 	strb.w	r3, [r0, #62]	; 0x3e
 8008206:	6403      	str	r3, [r0, #64]	; 0x40
 8008208:	f7ff ff90 	bl	800812c <HAL_I2C_AbortCpltCallback>
 800820c:	b002      	add	sp, #8
 800820e:	bd70      	pop	{r4, r5, r6, pc}
 8008210:	6814      	ldr	r4, [r2, #0]
 8008212:	f424 6480 	bic.w	r4, r4, #1024	; 0x400
 8008216:	6014      	str	r4, [r2, #0]
 8008218:	8543      	strh	r3, [r0, #42]	; 0x2a
 800821a:	e7bb      	b.n	8008194 <I2C_DMAAbort+0x64>
 800821c:	20000178 	.word	0x20000178
 8008220:	14f8b589 	.word	0x14f8b589

08008224 <I2C_ITError>:
 8008224:	b510      	push	{r4, lr}
 8008226:	f890 203d 	ldrb.w	r2, [r0, #61]	; 0x3d
 800822a:	f890 303e 	ldrb.w	r3, [r0, #62]	; 0x3e
 800822e:	2b10      	cmp	r3, #16
 8008230:	4604      	mov	r4, r0
 8008232:	b2d2      	uxtb	r2, r2
 8008234:	d039      	beq.n	80082aa <I2C_ITError+0x86>
 8008236:	b2d9      	uxtb	r1, r3
 8008238:	2940      	cmp	r1, #64	; 0x40
 800823a:	d036      	beq.n	80082aa <I2C_ITError+0x86>
 800823c:	f002 0128 	and.w	r1, r2, #40	; 0x28
 8008240:	2928      	cmp	r1, #40	; 0x28
 8008242:	d03d      	beq.n	80082c0 <I2C_ITError+0x9c>
 8008244:	6823      	ldr	r3, [r4, #0]
 8008246:	6859      	ldr	r1, [r3, #4]
 8008248:	0508      	lsls	r0, r1, #20
 800824a:	d407      	bmi.n	800825c <I2C_ITError+0x38>
 800824c:	2a60      	cmp	r2, #96	; 0x60
 800824e:	d005      	beq.n	800825c <I2C_ITError+0x38>
 8008250:	2120      	movs	r1, #32
 8008252:	2200      	movs	r2, #0
 8008254:	f884 103d 	strb.w	r1, [r4, #61]	; 0x3d
 8008258:	f884 203e 	strb.w	r2, [r4, #62]	; 0x3e
 800825c:	2200      	movs	r2, #0
 800825e:	6322      	str	r2, [r4, #48]	; 0x30
 8008260:	685a      	ldr	r2, [r3, #4]
 8008262:	f412 6200 	ands.w	r2, r2, #2048	; 0x800
 8008266:	d134      	bne.n	80082d2 <I2C_ITError+0xae>
 8008268:	f894 103d 	ldrb.w	r1, [r4, #61]	; 0x3d
 800826c:	2960      	cmp	r1, #96	; 0x60
 800826e:	d075      	beq.n	800835c <I2C_ITError+0x138>
 8008270:	695a      	ldr	r2, [r3, #20]
 8008272:	0650      	lsls	r0, r2, #25
 8008274:	d505      	bpl.n	8008282 <I2C_ITError+0x5e>
 8008276:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8008278:	691b      	ldr	r3, [r3, #16]
 800827a:	7013      	strb	r3, [r2, #0]
 800827c:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800827e:	3301      	adds	r3, #1
 8008280:	6263      	str	r3, [r4, #36]	; 0x24
 8008282:	4620      	mov	r0, r4
 8008284:	f7ff ff50 	bl	8008128 <HAL_I2C_ErrorCallback>
 8008288:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800828a:	0719      	lsls	r1, r3, #28
 800828c:	d004      	beq.n	8008298 <I2C_ITError+0x74>
 800828e:	6822      	ldr	r2, [r4, #0]
 8008290:	6853      	ldr	r3, [r2, #4]
 8008292:	f423 63e0 	bic.w	r3, r3, #1792	; 0x700
 8008296:	6053      	str	r3, [r2, #4]
 8008298:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
 800829c:	6c22      	ldr	r2, [r4, #64]	; 0x40
 800829e:	0752      	lsls	r2, r2, #29
 80082a0:	b2db      	uxtb	r3, r3
 80082a2:	d501      	bpl.n	80082a8 <I2C_ITError+0x84>
 80082a4:	2b28      	cmp	r3, #40	; 0x28
 80082a6:	d02f      	beq.n	8008308 <I2C_ITError+0xe4>
 80082a8:	bd10      	pop	{r4, pc}
 80082aa:	2a22      	cmp	r2, #34	; 0x22
 80082ac:	d1c6      	bne.n	800823c <I2C_ITError+0x18>
 80082ae:	6823      	ldr	r3, [r4, #0]
 80082b0:	681a      	ldr	r2, [r3, #0]
 80082b2:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80082b6:	601a      	str	r2, [r3, #0]
 80082b8:	685a      	ldr	r2, [r3, #4]
 80082ba:	0512      	lsls	r2, r2, #20
 80082bc:	d5c8      	bpl.n	8008250 <I2C_ITError+0x2c>
 80082be:	e7cd      	b.n	800825c <I2C_ITError+0x38>
 80082c0:	2300      	movs	r3, #0
 80082c2:	6323      	str	r3, [r4, #48]	; 0x30
 80082c4:	6823      	ldr	r3, [r4, #0]
 80082c6:	f884 103d 	strb.w	r1, [r4, #61]	; 0x3d
 80082ca:	685a      	ldr	r2, [r3, #4]
 80082cc:	f412 6200 	ands.w	r2, r2, #2048	; 0x800
 80082d0:	d0ca      	beq.n	8008268 <I2C_ITError+0x44>
 80082d2:	685a      	ldr	r2, [r3, #4]
 80082d4:	6b60      	ldr	r0, [r4, #52]	; 0x34
 80082d6:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80082da:	605a      	str	r2, [r3, #4]
 80082dc:	f890 3035 	ldrb.w	r3, [r0, #53]	; 0x35
 80082e0:	2b01      	cmp	r3, #1
 80082e2:	d01e      	beq.n	8008322 <I2C_ITError+0xfe>
 80082e4:	4b28      	ldr	r3, [pc, #160]	; (8008388 <I2C_ITError+0x164>)
 80082e6:	6503      	str	r3, [r0, #80]	; 0x50
 80082e8:	f7fd fdd6 	bl	8005e98 <HAL_DMA_Abort_IT>
 80082ec:	2800      	cmp	r0, #0
 80082ee:	d0cb      	beq.n	8008288 <I2C_ITError+0x64>
 80082f0:	6822      	ldr	r2, [r4, #0]
 80082f2:	6b60      	ldr	r0, [r4, #52]	; 0x34
 80082f4:	6813      	ldr	r3, [r2, #0]
 80082f6:	2120      	movs	r1, #32
 80082f8:	f023 0301 	bic.w	r3, r3, #1
 80082fc:	6013      	str	r3, [r2, #0]
 80082fe:	f884 103d 	strb.w	r1, [r4, #61]	; 0x3d
 8008302:	6d03      	ldr	r3, [r0, #80]	; 0x50
 8008304:	4798      	blx	r3
 8008306:	e7bf      	b.n	8008288 <I2C_ITError+0x64>
 8008308:	2300      	movs	r3, #0
 800830a:	4920      	ldr	r1, [pc, #128]	; (800838c <I2C_ITError+0x168>)
 800830c:	62e1      	str	r1, [r4, #44]	; 0x2c
 800830e:	2220      	movs	r2, #32
 8008310:	6323      	str	r3, [r4, #48]	; 0x30
 8008312:	4620      	mov	r0, r4
 8008314:	f884 203d 	strb.w	r2, [r4, #61]	; 0x3d
 8008318:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 800831c:	f7ff fe9a 	bl	8008054 <HAL_I2C_ListenCpltCallback>
 8008320:	bd10      	pop	{r4, pc}
 8008322:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 8008324:	4b18      	ldr	r3, [pc, #96]	; (8008388 <I2C_ITError+0x164>)
 8008326:	6503      	str	r3, [r0, #80]	; 0x50
 8008328:	f7fd fdb6 	bl	8005e98 <HAL_DMA_Abort_IT>
 800832c:	2800      	cmp	r0, #0
 800832e:	d0ab      	beq.n	8008288 <I2C_ITError+0x64>
 8008330:	6823      	ldr	r3, [r4, #0]
 8008332:	695a      	ldr	r2, [r3, #20]
 8008334:	0651      	lsls	r1, r2, #25
 8008336:	d506      	bpl.n	8008346 <I2C_ITError+0x122>
 8008338:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800833a:	691b      	ldr	r3, [r3, #16]
 800833c:	7013      	strb	r3, [r2, #0]
 800833e:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8008340:	6823      	ldr	r3, [r4, #0]
 8008342:	3201      	adds	r2, #1
 8008344:	6262      	str	r2, [r4, #36]	; 0x24
 8008346:	681a      	ldr	r2, [r3, #0]
 8008348:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 800834a:	f022 0201 	bic.w	r2, r2, #1
 800834e:	2120      	movs	r1, #32
 8008350:	601a      	str	r2, [r3, #0]
 8008352:	f884 103d 	strb.w	r1, [r4, #61]	; 0x3d
 8008356:	6d03      	ldr	r3, [r0, #80]	; 0x50
 8008358:	4798      	blx	r3
 800835a:	e795      	b.n	8008288 <I2C_ITError+0x64>
 800835c:	2120      	movs	r1, #32
 800835e:	f884 103d 	strb.w	r1, [r4, #61]	; 0x3d
 8008362:	6422      	str	r2, [r4, #64]	; 0x40
 8008364:	695a      	ldr	r2, [r3, #20]
 8008366:	0652      	lsls	r2, r2, #25
 8008368:	d506      	bpl.n	8008378 <I2C_ITError+0x154>
 800836a:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800836c:	691b      	ldr	r3, [r3, #16]
 800836e:	7013      	strb	r3, [r2, #0]
 8008370:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8008372:	6823      	ldr	r3, [r4, #0]
 8008374:	3201      	adds	r2, #1
 8008376:	6262      	str	r2, [r4, #36]	; 0x24
 8008378:	681a      	ldr	r2, [r3, #0]
 800837a:	f022 0201 	bic.w	r2, r2, #1
 800837e:	4620      	mov	r0, r4
 8008380:	601a      	str	r2, [r3, #0]
 8008382:	f7ff fed3 	bl	800812c <HAL_I2C_AbortCpltCallback>
 8008386:	e77f      	b.n	8008288 <I2C_ITError+0x64>
 8008388:	08008131 	.word	0x08008131
 800838c:	ffff0000 	.word	0xffff0000

08008390 <HAL_I2C_EV_IRQHandler>:
 8008390:	b570      	push	{r4, r5, r6, lr}
 8008392:	6803      	ldr	r3, [r0, #0]
 8008394:	4604      	mov	r4, r0
 8008396:	6858      	ldr	r0, [r3, #4]
 8008398:	6ae5      	ldr	r5, [r4, #44]	; 0x2c
 800839a:	f894 103e 	ldrb.w	r1, [r4, #62]	; 0x3e
 800839e:	f894 203d 	ldrb.w	r2, [r4, #61]	; 0x3d
 80083a2:	2910      	cmp	r1, #16
 80083a4:	b08e      	sub	sp, #56	; 0x38
 80083a6:	b2d2      	uxtb	r2, r2
 80083a8:	fa5f fc81 	uxtb.w	ip, r1
 80083ac:	d024      	beq.n	80083f8 <HAL_I2C_EV_IRQHandler+0x68>
 80083ae:	f1bc 0f40 	cmp.w	ip, #64	; 0x40
 80083b2:	d021      	beq.n	80083f8 <HAL_I2C_EV_IRQHandler+0x68>
 80083b4:	6c21      	ldr	r1, [r4, #64]	; 0x40
 80083b6:	2900      	cmp	r1, #0
 80083b8:	f000 8096 	beq.w	80084e8 <HAL_I2C_EV_IRQHandler+0x158>
 80083bc:	6959      	ldr	r1, [r3, #20]
 80083be:	2500      	movs	r5, #0
 80083c0:	f011 0f02 	tst.w	r1, #2
 80083c4:	f3c1 0640 	ubfx	r6, r1, #1, #1
 80083c8:	d059      	beq.n	800847e <HAL_I2C_EV_IRQHandler+0xee>
 80083ca:	0586      	lsls	r6, r0, #22
 80083cc:	d559      	bpl.n	8008482 <HAL_I2C_EV_IRQHandler+0xf2>
 80083ce:	6c22      	ldr	r2, [r4, #64]	; 0x40
 80083d0:	b102      	cbz	r2, 80083d4 <HAL_I2C_EV_IRQHandler+0x44>
 80083d2:	699d      	ldr	r5, [r3, #24]
 80083d4:	f894 203d 	ldrb.w	r2, [r4, #61]	; 0x3d
 80083d8:	f002 0228 	and.w	r2, r2, #40	; 0x28
 80083dc:	2a28      	cmp	r2, #40	; 0x28
 80083de:	f000 8220 	beq.w	8008822 <HAL_I2C_EV_IRQHandler+0x492>
 80083e2:	2200      	movs	r2, #0
 80083e4:	920c      	str	r2, [sp, #48]	; 0x30
 80083e6:	6959      	ldr	r1, [r3, #20]
 80083e8:	910c      	str	r1, [sp, #48]	; 0x30
 80083ea:	699b      	ldr	r3, [r3, #24]
 80083ec:	930c      	str	r3, [sp, #48]	; 0x30
 80083ee:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80083f0:	f884 203c 	strb.w	r2, [r4, #60]	; 0x3c
 80083f4:	b00e      	add	sp, #56	; 0x38
 80083f6:	bd70      	pop	{r4, r5, r6, pc}
 80083f8:	699e      	ldr	r6, [r3, #24]
 80083fa:	6959      	ldr	r1, [r3, #20]
 80083fc:	f011 0f01 	tst.w	r1, #1
 8008400:	d11a      	bne.n	8008438 <HAL_I2C_EV_IRQHandler+0xa8>
 8008402:	f5b5 0f2a 	cmp.w	r5, #11141120	; 0xaa0000
 8008406:	d0f5      	beq.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008408:	f1b5 4f2a 	cmp.w	r5, #2852126720	; 0xaa000000
 800840c:	d0f2      	beq.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 800840e:	070d      	lsls	r5, r1, #28
 8008410:	d56d      	bpl.n	80084ee <HAL_I2C_EV_IRQHandler+0x15e>
 8008412:	0585      	lsls	r5, r0, #22
 8008414:	f140 8083 	bpl.w	800851e <HAL_I2C_EV_IRQHandler+0x18e>
 8008418:	6c62      	ldr	r2, [r4, #68]	; 0x44
 800841a:	6b61      	ldr	r1, [r4, #52]	; 0x34
 800841c:	b2d2      	uxtb	r2, r2
 800841e:	611a      	str	r2, [r3, #16]
 8008420:	2900      	cmp	r1, #0
 8008422:	f000 81e5 	beq.w	80087f0 <HAL_I2C_EV_IRQHandler+0x460>
 8008426:	6bca      	ldr	r2, [r1, #60]	; 0x3c
 8008428:	2a00      	cmp	r2, #0
 800842a:	f000 81e1 	beq.w	80087f0 <HAL_I2C_EV_IRQHandler+0x460>
 800842e:	685a      	ldr	r2, [r3, #4]
 8008430:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 8008434:	605a      	str	r2, [r3, #4]
 8008436:	e7dd      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008438:	0585      	lsls	r5, r0, #22
 800843a:	d56e      	bpl.n	800851a <HAL_I2C_EV_IRQHandler+0x18a>
 800843c:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
 800843e:	f5b2 0f2a 	cmp.w	r2, #11141120	; 0xaa0000
 8008442:	f000 81eb 	beq.w	800881c <HAL_I2C_EV_IRQHandler+0x48c>
 8008446:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
 8008448:	f1b2 4f2a 	cmp.w	r2, #2852126720	; 0xaa000000
 800844c:	bf04      	itt	eq
 800844e:	2208      	moveq	r2, #8
 8008450:	62e2      	streq	r2, [r4, #44]	; 0x2c
 8008452:	f894 203e 	ldrb.w	r2, [r4, #62]	; 0x3e
 8008456:	2a40      	cmp	r2, #64	; 0x40
 8008458:	f000 81d9 	beq.w	800880e <HAL_I2C_EV_IRQHandler+0x47e>
 800845c:	6922      	ldr	r2, [r4, #16]
 800845e:	f5b2 4f80 	cmp.w	r2, #16384	; 0x4000
 8008462:	f000 81b4 	beq.w	80087ce <HAL_I2C_EV_IRQHandler+0x43e>
 8008466:	6d22      	ldr	r2, [r4, #80]	; 0x50
 8008468:	2a00      	cmp	r2, #0
 800846a:	f040 81f1 	bne.w	8008850 <HAL_I2C_EV_IRQHandler+0x4c0>
 800846e:	6c62      	ldr	r2, [r4, #68]	; 0x44
 8008470:	11d2      	asrs	r2, r2, #7
 8008472:	f002 0206 	and.w	r2, r2, #6
 8008476:	f042 02f0 	orr.w	r2, r2, #240	; 0xf0
 800847a:	611a      	str	r2, [r3, #16]
 800847c:	e7ba      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 800847e:	06cd      	lsls	r5, r1, #27
 8008480:	d47c      	bmi.n	800857c <HAL_I2C_EV_IRQHandler+0x1ec>
 8008482:	f002 02f7 	and.w	r2, r2, #247	; 0xf7
 8008486:	2a21      	cmp	r2, #33	; 0x21
 8008488:	f000 80f5 	beq.w	8008676 <HAL_I2C_EV_IRQHandler+0x2e6>
 800848c:	064e      	lsls	r6, r1, #25
 800848e:	f140 8132 	bpl.w	80086f6 <HAL_I2C_EV_IRQHandler+0x366>
 8008492:	0545      	lsls	r5, r0, #21
 8008494:	f140 812f 	bpl.w	80086f6 <HAL_I2C_EV_IRQHandler+0x366>
 8008498:	0749      	lsls	r1, r1, #29
 800849a:	f100 812f 	bmi.w	80086fc <HAL_I2C_EV_IRQHandler+0x36c>
 800849e:	f894 103d 	ldrb.w	r1, [r4, #61]	; 0x3d
 80084a2:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 80084a4:	b292      	uxth	r2, r2
 80084a6:	b2c9      	uxtb	r1, r1
 80084a8:	2a00      	cmp	r2, #0
 80084aa:	d0a3      	beq.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80084ac:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80084ae:	691b      	ldr	r3, [r3, #16]
 80084b0:	7013      	strb	r3, [r2, #0]
 80084b2:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 80084b4:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80084b6:	3b01      	subs	r3, #1
 80084b8:	b29b      	uxth	r3, r3
 80084ba:	8563      	strh	r3, [r4, #42]	; 0x2a
 80084bc:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 80084be:	3201      	adds	r2, #1
 80084c0:	b29b      	uxth	r3, r3
 80084c2:	6262      	str	r2, [r4, #36]	; 0x24
 80084c4:	2b00      	cmp	r3, #0
 80084c6:	d195      	bne.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80084c8:	292a      	cmp	r1, #42	; 0x2a
 80084ca:	d193      	bne.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80084cc:	6822      	ldr	r2, [r4, #0]
 80084ce:	6853      	ldr	r3, [r2, #4]
 80084d0:	2522      	movs	r5, #34	; 0x22
 80084d2:	2128      	movs	r1, #40	; 0x28
 80084d4:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 80084d8:	6053      	str	r3, [r2, #4]
 80084da:	4620      	mov	r0, r4
 80084dc:	6325      	str	r5, [r4, #48]	; 0x30
 80084de:	f884 103d 	strb.w	r1, [r4, #61]	; 0x3d
 80084e2:	f7ff fdb3 	bl	800804c <HAL_I2C_SlaveRxCpltCallback>
 80084e6:	e785      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80084e8:	699d      	ldr	r5, [r3, #24]
 80084ea:	6959      	ldr	r1, [r3, #20]
 80084ec:	e768      	b.n	80083c0 <HAL_I2C_EV_IRQHandler+0x30>
 80084ee:	078d      	lsls	r5, r1, #30
 80084f0:	d515      	bpl.n	800851e <HAL_I2C_EV_IRQHandler+0x18e>
 80084f2:	0585      	lsls	r5, r0, #22
 80084f4:	d513      	bpl.n	800851e <HAL_I2C_EV_IRQHandler+0x18e>
 80084f6:	f894 203e 	ldrb.w	r2, [r4, #62]	; 0x3e
 80084fa:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 80084fc:	6b25      	ldr	r5, [r4, #48]	; 0x30
 80084fe:	f894 103d 	ldrb.w	r1, [r4, #61]	; 0x3d
 8008502:	2922      	cmp	r1, #34	; 0x22
 8008504:	b2d2      	uxtb	r2, r2
 8008506:	f000 81b5 	beq.w	8008874 <HAL_I2C_EV_IRQHandler+0x4e4>
 800850a:	2200      	movs	r2, #0
 800850c:	920a      	str	r2, [sp, #40]	; 0x28
 800850e:	695a      	ldr	r2, [r3, #20]
 8008510:	920a      	str	r2, [sp, #40]	; 0x28
 8008512:	699b      	ldr	r3, [r3, #24]
 8008514:	930a      	str	r3, [sp, #40]	; 0x28
 8008516:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8008518:	e76c      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 800851a:	070d      	lsls	r5, r1, #28
 800851c:	d5e7      	bpl.n	80084ee <HAL_I2C_EV_IRQHandler+0x15e>
 800851e:	0775      	lsls	r5, r6, #29
 8008520:	f140 80f5 	bpl.w	800870e <HAL_I2C_EV_IRQHandler+0x37e>
 8008524:	685d      	ldr	r5, [r3, #4]
 8008526:	052e      	lsls	r6, r5, #20
 8008528:	f53f af64 	bmi.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 800852c:	060d      	lsls	r5, r1, #24
 800852e:	f140 8115 	bpl.w	800875c <HAL_I2C_EV_IRQHandler+0x3cc>
 8008532:	0546      	lsls	r6, r0, #21
 8008534:	f140 8112 	bpl.w	800875c <HAL_I2C_EV_IRQHandler+0x3cc>
 8008538:	074d      	lsls	r5, r1, #29
 800853a:	f100 8112 	bmi.w	8008762 <HAL_I2C_EV_IRQHandler+0x3d2>
 800853e:	f894 203d 	ldrb.w	r2, [r4, #61]	; 0x3d
 8008542:	8d20      	ldrh	r0, [r4, #40]	; 0x28
 8008544:	f894 103e 	ldrb.w	r1, [r4, #62]	; 0x3e
 8008548:	6ae5      	ldr	r5, [r4, #44]	; 0x2c
 800854a:	b2d2      	uxtb	r2, r2
 800854c:	b2c9      	uxtb	r1, r1
 800854e:	2800      	cmp	r0, #0
 8008550:	f040 823d 	bne.w	80089ce <HAL_I2C_EV_IRQHandler+0x63e>
 8008554:	2a21      	cmp	r2, #33	; 0x21
 8008556:	f000 82db 	beq.w	8008b10 <HAL_I2C_EV_IRQHandler+0x780>
 800855a:	2940      	cmp	r1, #64	; 0x40
 800855c:	f47f af4a 	bne.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008560:	2a22      	cmp	r2, #34	; 0x22
 8008562:	f47f af47 	bne.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008566:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 8008568:	b292      	uxth	r2, r2
 800856a:	2a00      	cmp	r2, #0
 800856c:	f000 8272 	beq.w	8008a54 <HAL_I2C_EV_IRQHandler+0x6c4>
 8008570:	f894 203e 	ldrb.w	r2, [r4, #62]	; 0x3e
 8008574:	2a40      	cmp	r2, #64	; 0x40
 8008576:	f040 80b4 	bne.w	80086e2 <HAL_I2C_EV_IRQHandler+0x352>
 800857a:	e0fc      	b.n	8008776 <HAL_I2C_EV_IRQHandler+0x3e6>
 800857c:	0585      	lsls	r5, r0, #22
 800857e:	d580      	bpl.n	8008482 <HAL_I2C_EV_IRQHandler+0xf2>
 8008580:	f894 503d 	ldrb.w	r5, [r4, #61]	; 0x3d
 8008584:	685a      	ldr	r2, [r3, #4]
 8008586:	f422 62e0 	bic.w	r2, r2, #1792	; 0x700
 800858a:	605a      	str	r2, [r3, #4]
 800858c:	960d      	str	r6, [sp, #52]	; 0x34
 800858e:	695a      	ldr	r2, [r3, #20]
 8008590:	920d      	str	r2, [sp, #52]	; 0x34
 8008592:	681a      	ldr	r2, [r3, #0]
 8008594:	f042 0201 	orr.w	r2, r2, #1
 8008598:	601a      	str	r2, [r3, #0]
 800859a:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 800859c:	681a      	ldr	r2, [r3, #0]
 800859e:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 80085a2:	601a      	str	r2, [r3, #0]
 80085a4:	685a      	ldr	r2, [r3, #4]
 80085a6:	0511      	lsls	r1, r2, #20
 80085a8:	b2ed      	uxtb	r5, r5
 80085aa:	d521      	bpl.n	80085f0 <HAL_I2C_EV_IRQHandler+0x260>
 80085ac:	f005 02f7 	and.w	r2, r5, #247	; 0xf7
 80085b0:	2a22      	cmp	r2, #34	; 0x22
 80085b2:	f000 817c 	beq.w	80088ae <HAL_I2C_EV_IRQHandler+0x51e>
 80085b6:	6b60      	ldr	r0, [r4, #52]	; 0x34
 80085b8:	6802      	ldr	r2, [r0, #0]
 80085ba:	6852      	ldr	r2, [r2, #4]
 80085bc:	b292      	uxth	r2, r2
 80085be:	8562      	strh	r2, [r4, #42]	; 0x2a
 80085c0:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 80085c2:	b292      	uxth	r2, r2
 80085c4:	b11a      	cbz	r2, 80085ce <HAL_I2C_EV_IRQHandler+0x23e>
 80085c6:	6c22      	ldr	r2, [r4, #64]	; 0x40
 80085c8:	f042 0204 	orr.w	r2, r2, #4
 80085cc:	6422      	str	r2, [r4, #64]	; 0x40
 80085ce:	685a      	ldr	r2, [r3, #4]
 80085d0:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80085d4:	605a      	str	r2, [r3, #4]
 80085d6:	f7fd fc71 	bl	8005ebc <HAL_DMA_GetState>
 80085da:	2801      	cmp	r0, #1
 80085dc:	d008      	beq.n	80085f0 <HAL_I2C_EV_IRQHandler+0x260>
 80085de:	6b60      	ldr	r0, [r4, #52]	; 0x34
 80085e0:	4b9a      	ldr	r3, [pc, #616]	; (800884c <HAL_I2C_EV_IRQHandler+0x4bc>)
 80085e2:	6503      	str	r3, [r0, #80]	; 0x50
 80085e4:	f7fd fc58 	bl	8005e98 <HAL_DMA_Abort_IT>
 80085e8:	b110      	cbz	r0, 80085f0 <HAL_I2C_EV_IRQHandler+0x260>
 80085ea:	6b60      	ldr	r0, [r4, #52]	; 0x34
 80085ec:	6d03      	ldr	r3, [r0, #80]	; 0x50
 80085ee:	4798      	blx	r3
 80085f0:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 80085f2:	b29b      	uxth	r3, r3
 80085f4:	b313      	cbz	r3, 800863c <HAL_I2C_EV_IRQHandler+0x2ac>
 80085f6:	6823      	ldr	r3, [r4, #0]
 80085f8:	695a      	ldr	r2, [r3, #20]
 80085fa:	0752      	lsls	r2, r2, #29
 80085fc:	d50a      	bpl.n	8008614 <HAL_I2C_EV_IRQHandler+0x284>
 80085fe:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8008600:	691b      	ldr	r3, [r3, #16]
 8008602:	7013      	strb	r3, [r2, #0]
 8008604:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 8008606:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8008608:	3a01      	subs	r2, #1
 800860a:	1c59      	adds	r1, r3, #1
 800860c:	b292      	uxth	r2, r2
 800860e:	6823      	ldr	r3, [r4, #0]
 8008610:	6261      	str	r1, [r4, #36]	; 0x24
 8008612:	8562      	strh	r2, [r4, #42]	; 0x2a
 8008614:	695a      	ldr	r2, [r3, #20]
 8008616:	0656      	lsls	r6, r2, #25
 8008618:	d509      	bpl.n	800862e <HAL_I2C_EV_IRQHandler+0x29e>
 800861a:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800861c:	691b      	ldr	r3, [r3, #16]
 800861e:	7013      	strb	r3, [r2, #0]
 8008620:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 8008622:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8008624:	3b01      	subs	r3, #1
 8008626:	3201      	adds	r2, #1
 8008628:	b29b      	uxth	r3, r3
 800862a:	6262      	str	r2, [r4, #36]	; 0x24
 800862c:	8563      	strh	r3, [r4, #42]	; 0x2a
 800862e:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 8008630:	b29b      	uxth	r3, r3
 8008632:	b11b      	cbz	r3, 800863c <HAL_I2C_EV_IRQHandler+0x2ac>
 8008634:	6c23      	ldr	r3, [r4, #64]	; 0x40
 8008636:	f043 0304 	orr.w	r3, r3, #4
 800863a:	6423      	str	r3, [r4, #64]	; 0x40
 800863c:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800863e:	2b00      	cmp	r3, #0
 8008640:	f040 80df 	bne.w	8008802 <HAL_I2C_EV_IRQHandler+0x472>
 8008644:	2d2a      	cmp	r5, #42	; 0x2a
 8008646:	f000 8153 	beq.w	80088f0 <HAL_I2C_EV_IRQHandler+0x560>
 800864a:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
 800864e:	2b28      	cmp	r3, #40	; 0x28
 8008650:	f000 8156 	beq.w	8008900 <HAL_I2C_EV_IRQHandler+0x570>
 8008654:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8008656:	2b22      	cmp	r3, #34	; 0x22
 8008658:	d002      	beq.n	8008660 <HAL_I2C_EV_IRQHandler+0x2d0>
 800865a:	2d22      	cmp	r5, #34	; 0x22
 800865c:	f47f aeca 	bne.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008660:	2300      	movs	r3, #0
 8008662:	2220      	movs	r2, #32
 8008664:	6323      	str	r3, [r4, #48]	; 0x30
 8008666:	4620      	mov	r0, r4
 8008668:	f884 203d 	strb.w	r2, [r4, #61]	; 0x3d
 800866c:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 8008670:	f7ff fcec 	bl	800804c <HAL_I2C_SlaveRxCpltCallback>
 8008674:	e6be      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008676:	060d      	lsls	r5, r1, #24
 8008678:	d528      	bpl.n	80086cc <HAL_I2C_EV_IRQHandler+0x33c>
 800867a:	0546      	lsls	r6, r0, #21
 800867c:	d526      	bpl.n	80086cc <HAL_I2C_EV_IRQHandler+0x33c>
 800867e:	074d      	lsls	r5, r1, #29
 8008680:	d427      	bmi.n	80086d2 <HAL_I2C_EV_IRQHandler+0x342>
 8008682:	f894 003d 	ldrb.w	r0, [r4, #61]	; 0x3d
 8008686:	8d61      	ldrh	r1, [r4, #42]	; 0x2a
 8008688:	b289      	uxth	r1, r1
 800868a:	b2c0      	uxtb	r0, r0
 800868c:	2900      	cmp	r1, #0
 800868e:	f43f aeb1 	beq.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008692:	6a61      	ldr	r1, [r4, #36]	; 0x24
 8008694:	f811 5b01 	ldrb.w	r5, [r1], #1
 8008698:	611d      	str	r5, [r3, #16]
 800869a:	6261      	str	r1, [r4, #36]	; 0x24
 800869c:	8d61      	ldrh	r1, [r4, #42]	; 0x2a
 800869e:	3901      	subs	r1, #1
 80086a0:	b289      	uxth	r1, r1
 80086a2:	8561      	strh	r1, [r4, #42]	; 0x2a
 80086a4:	8d61      	ldrh	r1, [r4, #42]	; 0x2a
 80086a6:	b289      	uxth	r1, r1
 80086a8:	2900      	cmp	r1, #0
 80086aa:	f47f aea3 	bne.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80086ae:	2829      	cmp	r0, #41	; 0x29
 80086b0:	f47f aea0 	bne.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80086b4:	6859      	ldr	r1, [r3, #4]
 80086b6:	2528      	movs	r5, #40	; 0x28
 80086b8:	f421 6180 	bic.w	r1, r1, #1024	; 0x400
 80086bc:	6059      	str	r1, [r3, #4]
 80086be:	4620      	mov	r0, r4
 80086c0:	6322      	str	r2, [r4, #48]	; 0x30
 80086c2:	f884 503d 	strb.w	r5, [r4, #61]	; 0x3d
 80086c6:	f7ff fcbf 	bl	8008048 <HAL_I2C_SlaveTxCpltCallback>
 80086ca:	e693      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80086cc:	0749      	lsls	r1, r1, #29
 80086ce:	f57f ae91 	bpl.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80086d2:	0582      	lsls	r2, r0, #22
 80086d4:	f57f ae8e 	bpl.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80086d8:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 80086da:	b292      	uxth	r2, r2
 80086dc:	2a00      	cmp	r2, #0
 80086de:	f43f ae89 	beq.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80086e2:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80086e4:	f812 1b01 	ldrb.w	r1, [r2], #1
 80086e8:	6119      	str	r1, [r3, #16]
 80086ea:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 80086ec:	6262      	str	r2, [r4, #36]	; 0x24
 80086ee:	3b01      	subs	r3, #1
 80086f0:	b29b      	uxth	r3, r3
 80086f2:	8563      	strh	r3, [r4, #42]	; 0x2a
 80086f4:	e67e      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80086f6:	074a      	lsls	r2, r1, #29
 80086f8:	f57f ae7c 	bpl.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80086fc:	0586      	lsls	r6, r0, #22
 80086fe:	f57f ae79 	bpl.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008702:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 8008704:	b292      	uxth	r2, r2
 8008706:	2a00      	cmp	r2, #0
 8008708:	f43f ae74 	beq.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 800870c:	e01b      	b.n	8008746 <HAL_I2C_EV_IRQHandler+0x3b6>
 800870e:	685a      	ldr	r2, [r3, #4]
 8008710:	0515      	lsls	r5, r2, #20
 8008712:	f53f ae6f 	bmi.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008716:	064a      	lsls	r2, r1, #25
 8008718:	d433      	bmi.n	8008782 <HAL_I2C_EV_IRQHandler+0x3f2>
 800871a:	0749      	lsls	r1, r1, #29
 800871c:	f57f ae6a 	bpl.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008720:	0582      	lsls	r2, r0, #22
 8008722:	f57f ae67 	bpl.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008726:	6ae1      	ldr	r1, [r4, #44]	; 0x2c
 8008728:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 800872a:	b292      	uxth	r2, r2
 800872c:	2a04      	cmp	r2, #4
 800872e:	f000 811b 	beq.w	8008968 <HAL_I2C_EV_IRQHandler+0x5d8>
 8008732:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 8008734:	b292      	uxth	r2, r2
 8008736:	2a03      	cmp	r2, #3
 8008738:	f000 815b 	beq.w	80089f2 <HAL_I2C_EV_IRQHandler+0x662>
 800873c:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 800873e:	b292      	uxth	r2, r2
 8008740:	2a02      	cmp	r2, #2
 8008742:	f000 818c 	beq.w	8008a5e <HAL_I2C_EV_IRQHandler+0x6ce>
 8008746:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8008748:	691b      	ldr	r3, [r3, #16]
 800874a:	7013      	strb	r3, [r2, #0]
 800874c:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 800874e:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8008750:	3b01      	subs	r3, #1
 8008752:	3201      	adds	r2, #1
 8008754:	b29b      	uxth	r3, r3
 8008756:	6262      	str	r2, [r4, #36]	; 0x24
 8008758:	8563      	strh	r3, [r4, #42]	; 0x2a
 800875a:	e64b      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 800875c:	0749      	lsls	r1, r1, #29
 800875e:	f57f ae49 	bpl.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008762:	0586      	lsls	r6, r0, #22
 8008764:	f57f ae46 	bpl.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008768:	2a21      	cmp	r2, #33	; 0x21
 800876a:	f000 8105 	beq.w	8008978 <HAL_I2C_EV_IRQHandler+0x5e8>
 800876e:	f1bc 0f40 	cmp.w	ip, #64	; 0x40
 8008772:	f47f ae3f 	bne.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008776:	4620      	mov	r0, r4
 8008778:	b00e      	add	sp, #56	; 0x38
 800877a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800877e:	f7ff bc6d 	b.w	800805c <I2C_MemoryTransmit_TXE_BTF>
 8008782:	0546      	lsls	r6, r0, #21
 8008784:	d5c9      	bpl.n	800871a <HAL_I2C_EV_IRQHandler+0x38a>
 8008786:	074d      	lsls	r5, r1, #29
 8008788:	f3c1 0280 	ubfx	r2, r1, #2, #1
 800878c:	d4c8      	bmi.n	8008720 <HAL_I2C_EV_IRQHandler+0x390>
 800878e:	f894 103d 	ldrb.w	r1, [r4, #61]	; 0x3d
 8008792:	2922      	cmp	r1, #34	; 0x22
 8008794:	f47f ae2e 	bne.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008798:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 800879a:	8d61      	ldrh	r1, [r4, #42]	; 0x2a
 800879c:	b289      	uxth	r1, r1
 800879e:	2903      	cmp	r1, #3
 80087a0:	f240 81f4 	bls.w	8008b8c <HAL_I2C_EV_IRQHandler+0x7fc>
 80087a4:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80087a6:	691b      	ldr	r3, [r3, #16]
 80087a8:	7013      	strb	r3, [r2, #0]
 80087aa:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 80087ac:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80087ae:	3b01      	subs	r3, #1
 80087b0:	b29b      	uxth	r3, r3
 80087b2:	8563      	strh	r3, [r4, #42]	; 0x2a
 80087b4:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 80087b6:	b29b      	uxth	r3, r3
 80087b8:	3201      	adds	r2, #1
 80087ba:	2b03      	cmp	r3, #3
 80087bc:	6262      	str	r2, [r4, #36]	; 0x24
 80087be:	f47f ae19 	bne.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80087c2:	6822      	ldr	r2, [r4, #0]
 80087c4:	6853      	ldr	r3, [r2, #4]
 80087c6:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 80087ca:	6053      	str	r3, [r2, #4]
 80087cc:	e612      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80087ce:	f894 203d 	ldrb.w	r2, [r4, #61]	; 0x3d
 80087d2:	2a21      	cmp	r2, #33	; 0x21
 80087d4:	6c62      	ldr	r2, [r4, #68]	; 0x44
 80087d6:	bf16      	itet	ne
 80087d8:	f042 0201 	orrne.w	r2, r2, #1
 80087dc:	f002 02fe 	andeq.w	r2, r2, #254	; 0xfe
 80087e0:	b2d2      	uxtbne	r2, r2
 80087e2:	611a      	str	r2, [r3, #16]
 80087e4:	6b62      	ldr	r2, [r4, #52]	; 0x34
 80087e6:	b11a      	cbz	r2, 80087f0 <HAL_I2C_EV_IRQHandler+0x460>
 80087e8:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
 80087ea:	2a00      	cmp	r2, #0
 80087ec:	f47f ae1f 	bne.w	800842e <HAL_I2C_EV_IRQHandler+0x9e>
 80087f0:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80087f2:	2a00      	cmp	r2, #0
 80087f4:	f43f adfe 	beq.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80087f8:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
 80087fa:	2a00      	cmp	r2, #0
 80087fc:	f47f ae17 	bne.w	800842e <HAL_I2C_EV_IRQHandler+0x9e>
 8008800:	e5f8      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008802:	4620      	mov	r0, r4
 8008804:	b00e      	add	sp, #56	; 0x38
 8008806:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800880a:	f7ff bd0b 	b.w	8008224 <I2C_ITError>
 800880e:	6d22      	ldr	r2, [r4, #80]	; 0x50
 8008810:	bb52      	cbnz	r2, 8008868 <HAL_I2C_EV_IRQHandler+0x4d8>
 8008812:	6c62      	ldr	r2, [r4, #68]	; 0x44
 8008814:	f002 02fe 	and.w	r2, r2, #254	; 0xfe
 8008818:	611a      	str	r2, [r3, #16]
 800881a:	e5eb      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 800881c:	2201      	movs	r2, #1
 800881e:	62e2      	str	r2, [r4, #44]	; 0x2c
 8008820:	e617      	b.n	8008452 <HAL_I2C_EV_IRQHandler+0xc2>
 8008822:	685a      	ldr	r2, [r3, #4]
 8008824:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8008828:	605a      	str	r2, [r3, #4]
 800882a:	062e      	lsls	r6, r5, #24
 800882c:	ea6f 0195 	mvn.w	r1, r5, lsr #2
 8008830:	f04f 0300 	mov.w	r3, #0
 8008834:	bf54      	ite	pl
 8008836:	89a2      	ldrhpl	r2, [r4, #12]
 8008838:	8b22      	ldrhmi	r2, [r4, #24]
 800883a:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 800883e:	f001 0101 	and.w	r1, r1, #1
 8008842:	4620      	mov	r0, r4
 8008844:	f7ff fc04 	bl	8008050 <HAL_I2C_AddrCallback>
 8008848:	e5d4      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 800884a:	bf00      	nop
 800884c:	08008131 	.word	0x08008131
 8008850:	6d22      	ldr	r2, [r4, #80]	; 0x50
 8008852:	2a01      	cmp	r2, #1
 8008854:	f47f adce 	bne.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008858:	6c62      	ldr	r2, [r4, #68]	; 0x44
 800885a:	11d2      	asrs	r2, r2, #7
 800885c:	f002 0206 	and.w	r2, r2, #6
 8008860:	f042 02f1 	orr.w	r2, r2, #241	; 0xf1
 8008864:	611a      	str	r2, [r3, #16]
 8008866:	e5c5      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008868:	6c62      	ldr	r2, [r4, #68]	; 0x44
 800886a:	f042 0201 	orr.w	r2, r2, #1
 800886e:	b2d2      	uxtb	r2, r2
 8008870:	611a      	str	r2, [r3, #16]
 8008872:	e5bf      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008874:	6d21      	ldr	r1, [r4, #80]	; 0x50
 8008876:	b911      	cbnz	r1, 800887e <HAL_I2C_EV_IRQHandler+0x4ee>
 8008878:	2a40      	cmp	r2, #64	; 0x40
 800887a:	f000 80a1 	beq.w	80089c0 <HAL_I2C_EV_IRQHandler+0x630>
 800887e:	6d22      	ldr	r2, [r4, #80]	; 0x50
 8008880:	b922      	cbnz	r2, 800888c <HAL_I2C_EV_IRQHandler+0x4fc>
 8008882:	6921      	ldr	r1, [r4, #16]
 8008884:	f5b1 4f40 	cmp.w	r1, #49152	; 0xc000
 8008888:	f000 80a5 	beq.w	80089d6 <HAL_I2C_EV_IRQHandler+0x646>
 800888c:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 800888e:	b292      	uxth	r2, r2
 8008890:	2a00      	cmp	r2, #0
 8008892:	d142      	bne.n	800891a <HAL_I2C_EV_IRQHandler+0x58a>
 8008894:	9203      	str	r2, [sp, #12]
 8008896:	695a      	ldr	r2, [r3, #20]
 8008898:	9203      	str	r2, [sp, #12]
 800889a:	699a      	ldr	r2, [r3, #24]
 800889c:	9203      	str	r2, [sp, #12]
 800889e:	9a03      	ldr	r2, [sp, #12]
 80088a0:	681a      	ldr	r2, [r3, #0]
 80088a2:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 80088a6:	601a      	str	r2, [r3, #0]
 80088a8:	2300      	movs	r3, #0
 80088aa:	6523      	str	r3, [r4, #80]	; 0x50
 80088ac:	e5a2      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80088ae:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 80088b0:	6802      	ldr	r2, [r0, #0]
 80088b2:	6852      	ldr	r2, [r2, #4]
 80088b4:	b292      	uxth	r2, r2
 80088b6:	8562      	strh	r2, [r4, #42]	; 0x2a
 80088b8:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 80088ba:	b292      	uxth	r2, r2
 80088bc:	b11a      	cbz	r2, 80088c6 <HAL_I2C_EV_IRQHandler+0x536>
 80088be:	6c22      	ldr	r2, [r4, #64]	; 0x40
 80088c0:	f042 0204 	orr.w	r2, r2, #4
 80088c4:	6422      	str	r2, [r4, #64]	; 0x40
 80088c6:	685a      	ldr	r2, [r3, #4]
 80088c8:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80088cc:	605a      	str	r2, [r3, #4]
 80088ce:	f7fd faf5 	bl	8005ebc <HAL_DMA_GetState>
 80088d2:	2801      	cmp	r0, #1
 80088d4:	f43f ae8c 	beq.w	80085f0 <HAL_I2C_EV_IRQHandler+0x260>
 80088d8:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 80088da:	4ba8      	ldr	r3, [pc, #672]	; (8008b7c <HAL_I2C_EV_IRQHandler+0x7ec>)
 80088dc:	6503      	str	r3, [r0, #80]	; 0x50
 80088de:	f7fd fadb 	bl	8005e98 <HAL_DMA_Abort_IT>
 80088e2:	2800      	cmp	r0, #0
 80088e4:	f43f ae84 	beq.w	80085f0 <HAL_I2C_EV_IRQHandler+0x260>
 80088e8:	6ba0      	ldr	r0, [r4, #56]	; 0x38
 80088ea:	6d03      	ldr	r3, [r0, #80]	; 0x50
 80088ec:	4798      	blx	r3
 80088ee:	e67f      	b.n	80085f0 <HAL_I2C_EV_IRQHandler+0x260>
 80088f0:	2228      	movs	r2, #40	; 0x28
 80088f2:	6323      	str	r3, [r4, #48]	; 0x30
 80088f4:	4620      	mov	r0, r4
 80088f6:	f884 203d 	strb.w	r2, [r4, #61]	; 0x3d
 80088fa:	f7ff fba7 	bl	800804c <HAL_I2C_SlaveRxCpltCallback>
 80088fe:	e6a4      	b.n	800864a <HAL_I2C_EV_IRQHandler+0x2ba>
 8008900:	2300      	movs	r3, #0
 8008902:	499f      	ldr	r1, [pc, #636]	; (8008b80 <HAL_I2C_EV_IRQHandler+0x7f0>)
 8008904:	62e1      	str	r1, [r4, #44]	; 0x2c
 8008906:	2220      	movs	r2, #32
 8008908:	6323      	str	r3, [r4, #48]	; 0x30
 800890a:	4620      	mov	r0, r4
 800890c:	f884 203d 	strb.w	r2, [r4, #61]	; 0x3d
 8008910:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 8008914:	f7ff fb9e 	bl	8008054 <HAL_I2C_ListenCpltCallback>
 8008918:	e56c      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 800891a:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 800891c:	b292      	uxth	r2, r2
 800891e:	2a01      	cmp	r2, #1
 8008920:	d076      	beq.n	8008a10 <HAL_I2C_EV_IRQHandler+0x680>
 8008922:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 8008924:	b292      	uxth	r2, r2
 8008926:	2a02      	cmp	r2, #2
 8008928:	f000 8109 	beq.w	8008b3e <HAL_I2C_EV_IRQHandler+0x7ae>
 800892c:	681a      	ldr	r2, [r3, #0]
 800892e:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8008932:	601a      	str	r2, [r3, #0]
 8008934:	685a      	ldr	r2, [r3, #4]
 8008936:	0512      	lsls	r2, r2, #20
 8008938:	d50e      	bpl.n	8008958 <HAL_I2C_EV_IRQHandler+0x5c8>
 800893a:	f510 3f80 	cmn.w	r0, #65536	; 0x10000
 800893e:	d007      	beq.n	8008950 <HAL_I2C_EV_IRQHandler+0x5c0>
 8008940:	3801      	subs	r0, #1
 8008942:	281f      	cmp	r0, #31
 8008944:	d808      	bhi.n	8008958 <HAL_I2C_EV_IRQHandler+0x5c8>
 8008946:	4a8f      	ldr	r2, [pc, #572]	; (8008b84 <HAL_I2C_EV_IRQHandler+0x7f4>)
 8008948:	fa22 f000 	lsr.w	r0, r2, r0
 800894c:	07c6      	lsls	r6, r0, #31
 800894e:	d503      	bpl.n	8008958 <HAL_I2C_EV_IRQHandler+0x5c8>
 8008950:	685a      	ldr	r2, [r3, #4]
 8008952:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 8008956:	605a      	str	r2, [r3, #4]
 8008958:	2200      	movs	r2, #0
 800895a:	9209      	str	r2, [sp, #36]	; 0x24
 800895c:	695a      	ldr	r2, [r3, #20]
 800895e:	9209      	str	r2, [sp, #36]	; 0x24
 8008960:	699b      	ldr	r3, [r3, #24]
 8008962:	9309      	str	r3, [sp, #36]	; 0x24
 8008964:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008966:	e79f      	b.n	80088a8 <HAL_I2C_EV_IRQHandler+0x518>
 8008968:	685a      	ldr	r2, [r3, #4]
 800896a:	6a61      	ldr	r1, [r4, #36]	; 0x24
 800896c:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8008970:	605a      	str	r2, [r3, #4]
 8008972:	691b      	ldr	r3, [r3, #16]
 8008974:	700b      	strb	r3, [r1, #0]
 8008976:	e6e9      	b.n	800874c <HAL_I2C_EV_IRQHandler+0x3bc>
 8008978:	6ae1      	ldr	r1, [r4, #44]	; 0x2c
 800897a:	f894 203d 	ldrb.w	r2, [r4, #61]	; 0x3d
 800897e:	2a21      	cmp	r2, #33	; 0x21
 8008980:	f47f ad38 	bne.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008984:	8d62      	ldrh	r2, [r4, #42]	; 0x2a
 8008986:	b292      	uxth	r2, r2
 8008988:	2a00      	cmp	r2, #0
 800898a:	f47f aeaa 	bne.w	80086e2 <HAL_I2C_EV_IRQHandler+0x352>
 800898e:	2908      	cmp	r1, #8
 8008990:	f000 80a6 	beq.w	8008ae0 <HAL_I2C_EV_IRQHandler+0x750>
 8008994:	2920      	cmp	r1, #32
 8008996:	f000 80a3 	beq.w	8008ae0 <HAL_I2C_EV_IRQHandler+0x750>
 800899a:	f511 3f80 	cmn.w	r1, #65536	; 0x10000
 800899e:	f000 809f 	beq.w	8008ae0 <HAL_I2C_EV_IRQHandler+0x750>
 80089a2:	6859      	ldr	r1, [r3, #4]
 80089a4:	f421 61e0 	bic.w	r1, r1, #1792	; 0x700
 80089a8:	6059      	str	r1, [r3, #4]
 80089aa:	2011      	movs	r0, #17
 80089ac:	2320      	movs	r3, #32
 80089ae:	6320      	str	r0, [r4, #48]	; 0x30
 80089b0:	f884 203e 	strb.w	r2, [r4, #62]	; 0x3e
 80089b4:	4620      	mov	r0, r4
 80089b6:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 80089ba:	f7ff fb41 	bl	8008040 <HAL_I2C_MasterTxCpltCallback>
 80089be:	e519      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80089c0:	9101      	str	r1, [sp, #4]
 80089c2:	695a      	ldr	r2, [r3, #20]
 80089c4:	9201      	str	r2, [sp, #4]
 80089c6:	699b      	ldr	r3, [r3, #24]
 80089c8:	9301      	str	r3, [sp, #4]
 80089ca:	9b01      	ldr	r3, [sp, #4]
 80089cc:	e512      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80089ce:	2a21      	cmp	r2, #33	; 0x21
 80089d0:	f43f adc9 	beq.w	8008566 <HAL_I2C_EV_IRQHandler+0x1d6>
 80089d4:	e5c1      	b.n	800855a <HAL_I2C_EV_IRQHandler+0x1ca>
 80089d6:	9202      	str	r2, [sp, #8]
 80089d8:	695a      	ldr	r2, [r3, #20]
 80089da:	9202      	str	r2, [sp, #8]
 80089dc:	699a      	ldr	r2, [r3, #24]
 80089de:	9202      	str	r2, [sp, #8]
 80089e0:	9a02      	ldr	r2, [sp, #8]
 80089e2:	681a      	ldr	r2, [r3, #0]
 80089e4:	f442 7280 	orr.w	r2, r2, #256	; 0x100
 80089e8:	601a      	str	r2, [r3, #0]
 80089ea:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80089ec:	3301      	adds	r3, #1
 80089ee:	6523      	str	r3, [r4, #80]	; 0x50
 80089f0:	e500      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 80089f2:	685a      	ldr	r2, [r3, #4]
 80089f4:	2904      	cmp	r1, #4
 80089f6:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 80089fa:	605a      	str	r2, [r3, #4]
 80089fc:	f43f aea3 	beq.w	8008746 <HAL_I2C_EV_IRQHandler+0x3b6>
 8008a00:	2902      	cmp	r1, #2
 8008a02:	f43f aea0 	beq.w	8008746 <HAL_I2C_EV_IRQHandler+0x3b6>
 8008a06:	681a      	ldr	r2, [r3, #0]
 8008a08:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8008a0c:	601a      	str	r2, [r3, #0]
 8008a0e:	e69a      	b.n	8008746 <HAL_I2C_EV_IRQHandler+0x3b6>
 8008a10:	f510 3f80 	cmn.w	r0, #65536	; 0x10000
 8008a14:	f000 8129 	beq.w	8008c6a <HAL_I2C_EV_IRQHandler+0x8da>
 8008a18:	2808      	cmp	r0, #8
 8008a1a:	f000 80ef 	beq.w	8008bfc <HAL_I2C_EV_IRQHandler+0x86c>
 8008a1e:	2820      	cmp	r0, #32
 8008a20:	f000 80ec 	beq.w	8008bfc <HAL_I2C_EV_IRQHandler+0x86c>
 8008a24:	2d12      	cmp	r5, #18
 8008a26:	f000 8160 	beq.w	8008cea <HAL_I2C_EV_IRQHandler+0x95a>
 8008a2a:	2810      	cmp	r0, #16
 8008a2c:	f200 815f 	bhi.w	8008cee <HAL_I2C_EV_IRQHandler+0x95e>
 8008a30:	4a55      	ldr	r2, [pc, #340]	; (8008b88 <HAL_I2C_EV_IRQHandler+0x7f8>)
 8008a32:	fa22 f000 	lsr.w	r0, r2, r0
 8008a36:	07c1      	lsls	r1, r0, #31
 8008a38:	f140 8159 	bpl.w	8008cee <HAL_I2C_EV_IRQHandler+0x95e>
 8008a3c:	681a      	ldr	r2, [r3, #0]
 8008a3e:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8008a42:	601a      	str	r2, [r3, #0]
 8008a44:	2200      	movs	r2, #0
 8008a46:	9206      	str	r2, [sp, #24]
 8008a48:	695a      	ldr	r2, [r3, #20]
 8008a4a:	9206      	str	r2, [sp, #24]
 8008a4c:	699b      	ldr	r3, [r3, #24]
 8008a4e:	9306      	str	r3, [sp, #24]
 8008a50:	9b06      	ldr	r3, [sp, #24]
 8008a52:	e729      	b.n	80088a8 <HAL_I2C_EV_IRQHandler+0x518>
 8008a54:	685a      	ldr	r2, [r3, #4]
 8008a56:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8008a5a:	605a      	str	r2, [r3, #4]
 8008a5c:	e4ca      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008a5e:	2901      	cmp	r1, #1
 8008a60:	681a      	ldr	r2, [r3, #0]
 8008a62:	f000 80db 	beq.w	8008c1c <HAL_I2C_EV_IRQHandler+0x88c>
 8008a66:	2910      	cmp	r1, #16
 8008a68:	f000 80d8 	beq.w	8008c1c <HAL_I2C_EV_IRQHandler+0x88c>
 8008a6c:	2904      	cmp	r1, #4
 8008a6e:	f000 8132 	beq.w	8008cd6 <HAL_I2C_EV_IRQHandler+0x946>
 8008a72:	2902      	cmp	r1, #2
 8008a74:	f000 812f 	beq.w	8008cd6 <HAL_I2C_EV_IRQHandler+0x946>
 8008a78:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8008a7c:	601a      	str	r2, [r3, #0]
 8008a7e:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8008a80:	691b      	ldr	r3, [r3, #16]
 8008a82:	7013      	strb	r3, [r2, #0]
 8008a84:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 8008a86:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8008a88:	3b01      	subs	r3, #1
 8008a8a:	b29b      	uxth	r3, r3
 8008a8c:	8563      	strh	r3, [r4, #42]	; 0x2a
 8008a8e:	6823      	ldr	r3, [r4, #0]
 8008a90:	1c50      	adds	r0, r2, #1
 8008a92:	691b      	ldr	r3, [r3, #16]
 8008a94:	6260      	str	r0, [r4, #36]	; 0x24
 8008a96:	7053      	strb	r3, [r2, #1]
 8008a98:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 8008a9a:	6820      	ldr	r0, [r4, #0]
 8008a9c:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8008a9e:	3b01      	subs	r3, #1
 8008aa0:	b29b      	uxth	r3, r3
 8008aa2:	8563      	strh	r3, [r4, #42]	; 0x2a
 8008aa4:	6843      	ldr	r3, [r0, #4]
 8008aa6:	3201      	adds	r2, #1
 8008aa8:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8008aac:	6262      	str	r2, [r4, #36]	; 0x24
 8008aae:	6043      	str	r3, [r0, #4]
 8008ab0:	2320      	movs	r3, #32
 8008ab2:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 8008ab6:	f894 303e 	ldrb.w	r3, [r4, #62]	; 0x3e
 8008aba:	2b40      	cmp	r3, #64	; 0x40
 8008abc:	f04f 0300 	mov.w	r3, #0
 8008ac0:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 8008ac4:	f000 810b 	beq.w	8008cde <HAL_I2C_EV_IRQHandler+0x94e>
 8008ac8:	2908      	cmp	r1, #8
 8008aca:	f000 80cb 	beq.w	8008c64 <HAL_I2C_EV_IRQHandler+0x8d4>
 8008ace:	2920      	cmp	r1, #32
 8008ad0:	f000 80c8 	beq.w	8008c64 <HAL_I2C_EV_IRQHandler+0x8d4>
 8008ad4:	2312      	movs	r3, #18
 8008ad6:	6323      	str	r3, [r4, #48]	; 0x30
 8008ad8:	4620      	mov	r0, r4
 8008ada:	f7ff fab3 	bl	8008044 <HAL_I2C_MasterRxCpltCallback>
 8008ade:	e489      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008ae0:	6859      	ldr	r1, [r3, #4]
 8008ae2:	f421 61e0 	bic.w	r1, r1, #1792	; 0x700
 8008ae6:	6059      	str	r1, [r3, #4]
 8008ae8:	6819      	ldr	r1, [r3, #0]
 8008aea:	2200      	movs	r2, #0
 8008aec:	2020      	movs	r0, #32
 8008aee:	f441 7100 	orr.w	r1, r1, #512	; 0x200
 8008af2:	6019      	str	r1, [r3, #0]
 8008af4:	6322      	str	r2, [r4, #48]	; 0x30
 8008af6:	f884 003d 	strb.w	r0, [r4, #61]	; 0x3d
 8008afa:	f894 303e 	ldrb.w	r3, [r4, #62]	; 0x3e
 8008afe:	f884 203e 	strb.w	r2, [r4, #62]	; 0x3e
 8008b02:	2b40      	cmp	r3, #64	; 0x40
 8008b04:	4620      	mov	r0, r4
 8008b06:	f47f af58 	bne.w	80089ba <HAL_I2C_EV_IRQHandler+0x62a>
 8008b0a:	f7ff faa5 	bl	8008058 <HAL_I2C_MemTxCpltCallback>
 8008b0e:	e471      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008b10:	2d08      	cmp	r5, #8
 8008b12:	d0e5      	beq.n	8008ae0 <HAL_I2C_EV_IRQHandler+0x750>
 8008b14:	2d20      	cmp	r5, #32
 8008b16:	d0e3      	beq.n	8008ae0 <HAL_I2C_EV_IRQHandler+0x750>
 8008b18:	f515 3f80 	cmn.w	r5, #65536	; 0x10000
 8008b1c:	d0e0      	beq.n	8008ae0 <HAL_I2C_EV_IRQHandler+0x750>
 8008b1e:	685a      	ldr	r2, [r3, #4]
 8008b20:	f422 62e0 	bic.w	r2, r2, #1792	; 0x700
 8008b24:	605a      	str	r2, [r3, #4]
 8008b26:	2011      	movs	r0, #17
 8008b28:	2100      	movs	r1, #0
 8008b2a:	2320      	movs	r3, #32
 8008b2c:	6320      	str	r0, [r4, #48]	; 0x30
 8008b2e:	f884 103e 	strb.w	r1, [r4, #62]	; 0x3e
 8008b32:	4620      	mov	r0, r4
 8008b34:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 8008b38:	f7ff fa82 	bl	8008040 <HAL_I2C_MasterTxCpltCallback>
 8008b3c:	e45a      	b.n	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008b3e:	2810      	cmp	r0, #16
 8008b40:	f240 80a7 	bls.w	8008c92 <HAL_I2C_EV_IRQHandler+0x902>
 8008b44:	681a      	ldr	r2, [r3, #0]
 8008b46:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8008b4a:	601a      	str	r2, [r3, #0]
 8008b4c:	681a      	ldr	r2, [r3, #0]
 8008b4e:	f442 6200 	orr.w	r2, r2, #2048	; 0x800
 8008b52:	601a      	str	r2, [r3, #0]
 8008b54:	685a      	ldr	r2, [r3, #4]
 8008b56:	0516      	lsls	r6, r2, #20
 8008b58:	d507      	bpl.n	8008b6a <HAL_I2C_EV_IRQHandler+0x7da>
 8008b5a:	f510 3f80 	cmn.w	r0, #65536	; 0x10000
 8008b5e:	f040 80a5 	bne.w	8008cac <HAL_I2C_EV_IRQHandler+0x91c>
 8008b62:	685a      	ldr	r2, [r3, #4]
 8008b64:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
 8008b68:	605a      	str	r2, [r3, #4]
 8008b6a:	2200      	movs	r2, #0
 8008b6c:	9208      	str	r2, [sp, #32]
 8008b6e:	695a      	ldr	r2, [r3, #20]
 8008b70:	9208      	str	r2, [sp, #32]
 8008b72:	699b      	ldr	r3, [r3, #24]
 8008b74:	9308      	str	r3, [sp, #32]
 8008b76:	9b08      	ldr	r3, [sp, #32]
 8008b78:	e696      	b.n	80088a8 <HAL_I2C_EV_IRQHandler+0x518>
 8008b7a:	bf00      	nop
 8008b7c:	08008131 	.word	0x08008131
 8008b80:	ffff0000 	.word	0xffff0000
 8008b84:	80008081 	.word	0x80008081
 8008b88:	00010014 	.word	0x00010014
 8008b8c:	6ae5      	ldr	r5, [r4, #44]	; 0x2c
 8008b8e:	2d02      	cmp	r5, #2
 8008b90:	f43f af60 	beq.w	8008a54 <HAL_I2C_EV_IRQHandler+0x6c4>
 8008b94:	2901      	cmp	r1, #1
 8008b96:	f63f af5d 	bhi.w	8008a54 <HAL_I2C_EV_IRQHandler+0x6c4>
 8008b9a:	495a      	ldr	r1, [pc, #360]	; (8008d04 <HAL_I2C_EV_IRQHandler+0x974>)
 8008b9c:	920b      	str	r2, [sp, #44]	; 0x2c
 8008b9e:	680a      	ldr	r2, [r1, #0]
 8008ba0:	f246 11a8 	movw	r1, #25000	; 0x61a8
 8008ba4:	fbb2 f2f1 	udiv	r2, r2, r1
 8008ba8:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8008bac:	920b      	str	r2, [sp, #44]	; 0x2c
 8008bae:	e003      	b.n	8008bb8 <HAL_I2C_EV_IRQHandler+0x828>
 8008bb0:	681a      	ldr	r2, [r3, #0]
 8008bb2:	f412 7200 	ands.w	r2, r2, #512	; 0x200
 8008bb6:	d035      	beq.n	8008c24 <HAL_I2C_EV_IRQHandler+0x894>
 8008bb8:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8008bba:	3a01      	subs	r2, #1
 8008bbc:	920b      	str	r2, [sp, #44]	; 0x2c
 8008bbe:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8008bc0:	2900      	cmp	r1, #0
 8008bc2:	d1f5      	bne.n	8008bb0 <HAL_I2C_EV_IRQHandler+0x820>
 8008bc4:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8008bc6:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8008bc8:	f042 0220 	orr.w	r2, r2, #32
 8008bcc:	6422      	str	r2, [r4, #64]	; 0x40
 8008bce:	685a      	ldr	r2, [r3, #4]
 8008bd0:	f422 62e0 	bic.w	r2, r2, #1792	; 0x700
 8008bd4:	605a      	str	r2, [r3, #4]
 8008bd6:	691b      	ldr	r3, [r3, #16]
 8008bd8:	7003      	strb	r3, [r0, #0]
 8008bda:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 8008bdc:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8008bde:	3b01      	subs	r3, #1
 8008be0:	3201      	adds	r2, #1
 8008be2:	b29b      	uxth	r3, r3
 8008be4:	2020      	movs	r0, #32
 8008be6:	8563      	strh	r3, [r4, #42]	; 0x2a
 8008be8:	6262      	str	r2, [r4, #36]	; 0x24
 8008bea:	f884 003d 	strb.w	r0, [r4, #61]	; 0x3d
 8008bee:	4620      	mov	r0, r4
 8008bf0:	f884 103e 	strb.w	r1, [r4, #62]	; 0x3e
 8008bf4:	f7ff fa98 	bl	8008128 <HAL_I2C_ErrorCallback>
 8008bf8:	f7ff bbfc 	b.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008bfc:	681a      	ldr	r2, [r3, #0]
 8008bfe:	2100      	movs	r1, #0
 8008c00:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8008c04:	601a      	str	r2, [r3, #0]
 8008c06:	9107      	str	r1, [sp, #28]
 8008c08:	695a      	ldr	r2, [r3, #20]
 8008c0a:	9207      	str	r2, [sp, #28]
 8008c0c:	699a      	ldr	r2, [r3, #24]
 8008c0e:	9207      	str	r2, [sp, #28]
 8008c10:	9a07      	ldr	r2, [sp, #28]
 8008c12:	681a      	ldr	r2, [r3, #0]
 8008c14:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8008c18:	601a      	str	r2, [r3, #0]
 8008c1a:	e645      	b.n	80088a8 <HAL_I2C_EV_IRQHandler+0x518>
 8008c1c:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8008c20:	601a      	str	r2, [r3, #0]
 8008c22:	e72c      	b.n	8008a7e <HAL_I2C_EV_IRQHandler+0x6ee>
 8008c24:	6819      	ldr	r1, [r3, #0]
 8008c26:	f421 6180 	bic.w	r1, r1, #1024	; 0x400
 8008c2a:	6019      	str	r1, [r3, #0]
 8008c2c:	6859      	ldr	r1, [r3, #4]
 8008c2e:	f421 61e0 	bic.w	r1, r1, #1792	; 0x700
 8008c32:	6059      	str	r1, [r3, #4]
 8008c34:	6919      	ldr	r1, [r3, #16]
 8008c36:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8008c38:	7019      	strb	r1, [r3, #0]
 8008c3a:	8d63      	ldrh	r3, [r4, #42]	; 0x2a
 8008c3c:	3b01      	subs	r3, #1
 8008c3e:	2120      	movs	r1, #32
 8008c40:	b29b      	uxth	r3, r3
 8008c42:	8563      	strh	r3, [r4, #42]	; 0x2a
 8008c44:	f884 103d 	strb.w	r1, [r4, #61]	; 0x3d
 8008c48:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8008c4a:	f894 103e 	ldrb.w	r1, [r4, #62]	; 0x3e
 8008c4e:	f884 203e 	strb.w	r2, [r4, #62]	; 0x3e
 8008c52:	3301      	adds	r3, #1
 8008c54:	2940      	cmp	r1, #64	; 0x40
 8008c56:	6263      	str	r3, [r4, #36]	; 0x24
 8008c58:	d04e      	beq.n	8008cf8 <HAL_I2C_EV_IRQHandler+0x968>
 8008c5a:	2808      	cmp	r0, #8
 8008c5c:	d002      	beq.n	8008c64 <HAL_I2C_EV_IRQHandler+0x8d4>
 8008c5e:	2820      	cmp	r0, #32
 8008c60:	f47f af38 	bne.w	8008ad4 <HAL_I2C_EV_IRQHandler+0x744>
 8008c64:	2300      	movs	r3, #0
 8008c66:	6323      	str	r3, [r4, #48]	; 0x30
 8008c68:	e736      	b.n	8008ad8 <HAL_I2C_EV_IRQHandler+0x748>
 8008c6a:	681a      	ldr	r2, [r3, #0]
 8008c6c:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8008c70:	601a      	str	r2, [r3, #0]
 8008c72:	685a      	ldr	r2, [r3, #4]
 8008c74:	f412 6200 	ands.w	r2, r2, #2048	; 0x800
 8008c78:	d022      	beq.n	8008cc0 <HAL_I2C_EV_IRQHandler+0x930>
 8008c7a:	681a      	ldr	r2, [r3, #0]
 8008c7c:	2100      	movs	r1, #0
 8008c7e:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8008c82:	601a      	str	r2, [r3, #0]
 8008c84:	9104      	str	r1, [sp, #16]
 8008c86:	695a      	ldr	r2, [r3, #20]
 8008c88:	9204      	str	r2, [sp, #16]
 8008c8a:	699b      	ldr	r3, [r3, #24]
 8008c8c:	9304      	str	r3, [sp, #16]
 8008c8e:	9b04      	ldr	r3, [sp, #16]
 8008c90:	e60a      	b.n	80088a8 <HAL_I2C_EV_IRQHandler+0x518>
 8008c92:	4a1d      	ldr	r2, [pc, #116]	; (8008d08 <HAL_I2C_EV_IRQHandler+0x978>)
 8008c94:	40c2      	lsrs	r2, r0
 8008c96:	07d2      	lsls	r2, r2, #31
 8008c98:	f57f af54 	bpl.w	8008b44 <HAL_I2C_EV_IRQHandler+0x7b4>
 8008c9c:	681a      	ldr	r2, [r3, #0]
 8008c9e:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8008ca2:	601a      	str	r2, [r3, #0]
 8008ca4:	685a      	ldr	r2, [r3, #4]
 8008ca6:	0515      	lsls	r5, r2, #20
 8008ca8:	f57f af5f 	bpl.w	8008b6a <HAL_I2C_EV_IRQHandler+0x7da>
 8008cac:	3801      	subs	r0, #1
 8008cae:	281f      	cmp	r0, #31
 8008cb0:	f63f af5b 	bhi.w	8008b6a <HAL_I2C_EV_IRQHandler+0x7da>
 8008cb4:	4a15      	ldr	r2, [pc, #84]	; (8008d0c <HAL_I2C_EV_IRQHandler+0x97c>)
 8008cb6:	40c2      	lsrs	r2, r0
 8008cb8:	07d1      	lsls	r1, r2, #31
 8008cba:	f57f af56 	bpl.w	8008b6a <HAL_I2C_EV_IRQHandler+0x7da>
 8008cbe:	e750      	b.n	8008b62 <HAL_I2C_EV_IRQHandler+0x7d2>
 8008cc0:	9205      	str	r2, [sp, #20]
 8008cc2:	695a      	ldr	r2, [r3, #20]
 8008cc4:	9205      	str	r2, [sp, #20]
 8008cc6:	699a      	ldr	r2, [r3, #24]
 8008cc8:	9205      	str	r2, [sp, #20]
 8008cca:	9a05      	ldr	r2, [sp, #20]
 8008ccc:	681a      	ldr	r2, [r3, #0]
 8008cce:	f442 7200 	orr.w	r2, r2, #512	; 0x200
 8008cd2:	601a      	str	r2, [r3, #0]
 8008cd4:	e5e8      	b.n	80088a8 <HAL_I2C_EV_IRQHandler+0x518>
 8008cd6:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8008cda:	601a      	str	r2, [r3, #0]
 8008cdc:	e6cf      	b.n	8008a7e <HAL_I2C_EV_IRQHandler+0x6ee>
 8008cde:	4620      	mov	r0, r4
 8008ce0:	6323      	str	r3, [r4, #48]	; 0x30
 8008ce2:	f7ff fa1f 	bl	8008124 <HAL_I2C_MemRxCpltCallback>
 8008ce6:	f7ff bb85 	b.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008cea:	2801      	cmp	r0, #1
 8008cec:	d186      	bne.n	8008bfc <HAL_I2C_EV_IRQHandler+0x86c>
 8008cee:	681a      	ldr	r2, [r3, #0]
 8008cf0:	f422 6280 	bic.w	r2, r2, #1024	; 0x400
 8008cf4:	601a      	str	r2, [r3, #0]
 8008cf6:	e6a5      	b.n	8008a44 <HAL_I2C_EV_IRQHandler+0x6b4>
 8008cf8:	4620      	mov	r0, r4
 8008cfa:	6322      	str	r2, [r4, #48]	; 0x30
 8008cfc:	f7ff fa12 	bl	8008124 <HAL_I2C_MemRxCpltCallback>
 8008d00:	f7ff bb78 	b.w	80083f4 <HAL_I2C_EV_IRQHandler+0x64>
 8008d04:	20000178 	.word	0x20000178
 8008d08:	00010014 	.word	0x00010014
 8008d0c:	80008081 	.word	0x80008081

08008d10 <ST7735_set_window>:
 8008d10:	b510      	push	{r4, lr}
 8008d12:	4c56      	ldr	r4, [pc, #344]	; (8008e6c <ST7735_set_window+0x15c>)
 8008d14:	8824      	ldrh	r4, [r4, #0]
 8008d16:	4420      	add	r0, r4
 8008d18:	4c55      	ldr	r4, [pc, #340]	; (8008e70 <ST7735_set_window+0x160>)
 8008d1a:	8824      	ldrh	r4, [r4, #0]
 8008d1c:	fa5f fe80 	uxtb.w	lr, r0
 8008d20:	4421      	add	r1, r4
 8008d22:	f3c0 2407 	ubfx	r4, r0, #8, #8
 8008d26:	fa12 f080 	uxtah	r0, r2, r0
 8008d2a:	3801      	subs	r0, #1
 8008d2c:	b084      	sub	sp, #16
 8008d2e:	f102 3cff 	add.w	ip, r2, #4294967295	; 0xffffffff
 8008d32:	1202      	asrs	r2, r0, #8
 8008d34:	fa13 f081 	uxtah	r0, r3, r1
 8008d38:	3801      	subs	r0, #1
 8008d3a:	f88d 4008 	strb.w	r4, [sp, #8]
 8008d3e:	f88d 200a 	strb.w	r2, [sp, #10]
 8008d42:	b2cc      	uxtb	r4, r1
 8008d44:	eb0e 020c 	add.w	r2, lr, ip
 8008d48:	3b01      	subs	r3, #1
 8008d4a:	f3c1 2c07 	ubfx	ip, r1, #8, #8
 8008d4e:	1201      	asrs	r1, r0, #8
 8008d50:	4423      	add	r3, r4
 8008d52:	4848      	ldr	r0, [pc, #288]	; (8008e74 <ST7735_set_window+0x164>)
 8008d54:	f88d 100e 	strb.w	r1, [sp, #14]
 8008d58:	f88d 400d 	strb.w	r4, [sp, #13]
 8008d5c:	f88d 200b 	strb.w	r2, [sp, #11]
 8008d60:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8008d64:	2200      	movs	r2, #0
 8008d66:	242a      	movs	r4, #42	; 0x2a
 8008d68:	f88d 300f 	strb.w	r3, [sp, #15]
 8008d6c:	f88d e009 	strb.w	lr, [sp, #9]
 8008d70:	f88d 4007 	strb.w	r4, [sp, #7]
 8008d74:	f88d c00c 	strb.w	ip, [sp, #12]
 8008d78:	f7fd f836 	bl	8005de8 <HAL_GPIO_WritePin>
 8008d7c:	483e      	ldr	r0, [pc, #248]	; (8008e78 <ST7735_set_window+0x168>)
 8008d7e:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8008d82:	2201      	movs	r2, #1
 8008d84:	f10d 0107 	add.w	r1, sp, #7
 8008d88:	f7fd fa74 	bl	8006274 <HAL_SPI_Transmit>
 8008d8c:	b168      	cbz	r0, 8008daa <ST7735_set_window+0x9a>
 8008d8e:	4c3a      	ldr	r4, [pc, #232]	; (8008e78 <ST7735_set_window+0x168>)
 8008d90:	2014      	movs	r0, #20
 8008d92:	f7fd f921 	bl	8005fd8 <HAL_Delay>
 8008d96:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8008d9a:	2201      	movs	r2, #1
 8008d9c:	f10d 0107 	add.w	r1, sp, #7
 8008da0:	4620      	mov	r0, r4
 8008da2:	f7fd fa67 	bl	8006274 <HAL_SPI_Transmit>
 8008da6:	2800      	cmp	r0, #0
 8008da8:	d1f2      	bne.n	8008d90 <ST7735_set_window+0x80>
 8008daa:	4832      	ldr	r0, [pc, #200]	; (8008e74 <ST7735_set_window+0x164>)
 8008dac:	2201      	movs	r2, #1
 8008dae:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8008db2:	f7fd f819 	bl	8005de8 <HAL_GPIO_WritePin>
 8008db6:	2204      	movs	r2, #4
 8008db8:	482f      	ldr	r0, [pc, #188]	; (8008e78 <ST7735_set_window+0x168>)
 8008dba:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8008dbe:	a902      	add	r1, sp, #8
 8008dc0:	f7fd fa58 	bl	8006274 <HAL_SPI_Transmit>
 8008dc4:	4602      	mov	r2, r0
 8008dc6:	bb70      	cbnz	r0, 8008e26 <ST7735_set_window+0x116>
 8008dc8:	232b      	movs	r3, #43	; 0x2b
 8008dca:	482a      	ldr	r0, [pc, #168]	; (8008e74 <ST7735_set_window+0x164>)
 8008dcc:	f88d 3007 	strb.w	r3, [sp, #7]
 8008dd0:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8008dd4:	f7fd f808 	bl	8005de8 <HAL_GPIO_WritePin>
 8008dd8:	4827      	ldr	r0, [pc, #156]	; (8008e78 <ST7735_set_window+0x168>)
 8008dda:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8008dde:	2201      	movs	r2, #1
 8008de0:	f10d 0107 	add.w	r1, sp, #7
 8008de4:	f7fd fa46 	bl	8006274 <HAL_SPI_Transmit>
 8008de8:	b168      	cbz	r0, 8008e06 <ST7735_set_window+0xf6>
 8008dea:	4c23      	ldr	r4, [pc, #140]	; (8008e78 <ST7735_set_window+0x168>)
 8008dec:	2014      	movs	r0, #20
 8008dee:	f7fd f8f3 	bl	8005fd8 <HAL_Delay>
 8008df2:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8008df6:	2201      	movs	r2, #1
 8008df8:	f10d 0107 	add.w	r1, sp, #7
 8008dfc:	4620      	mov	r0, r4
 8008dfe:	f7fd fa39 	bl	8006274 <HAL_SPI_Transmit>
 8008e02:	2800      	cmp	r0, #0
 8008e04:	d1f2      	bne.n	8008dec <ST7735_set_window+0xdc>
 8008e06:	481b      	ldr	r0, [pc, #108]	; (8008e74 <ST7735_set_window+0x164>)
 8008e08:	2201      	movs	r2, #1
 8008e0a:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8008e0e:	f7fc ffeb 	bl	8005de8 <HAL_GPIO_WritePin>
 8008e12:	2204      	movs	r2, #4
 8008e14:	4818      	ldr	r0, [pc, #96]	; (8008e78 <ST7735_set_window+0x168>)
 8008e16:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8008e1a:	a903      	add	r1, sp, #12
 8008e1c:	f7fd fa2a 	bl	8006274 <HAL_SPI_Transmit>
 8008e20:	4602      	mov	r2, r0
 8008e22:	b108      	cbz	r0, 8008e28 <ST7735_set_window+0x118>
 8008e24:	e7fe      	b.n	8008e24 <ST7735_set_window+0x114>
 8008e26:	e7fe      	b.n	8008e26 <ST7735_set_window+0x116>
 8008e28:	232c      	movs	r3, #44	; 0x2c
 8008e2a:	4812      	ldr	r0, [pc, #72]	; (8008e74 <ST7735_set_window+0x164>)
 8008e2c:	f88d 3007 	strb.w	r3, [sp, #7]
 8008e30:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8008e34:	f7fc ffd8 	bl	8005de8 <HAL_GPIO_WritePin>
 8008e38:	480f      	ldr	r0, [pc, #60]	; (8008e78 <ST7735_set_window+0x168>)
 8008e3a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8008e3e:	2201      	movs	r2, #1
 8008e40:	f10d 0107 	add.w	r1, sp, #7
 8008e44:	f7fd fa16 	bl	8006274 <HAL_SPI_Transmit>
 8008e48:	b168      	cbz	r0, 8008e66 <ST7735_set_window+0x156>
 8008e4a:	4c0b      	ldr	r4, [pc, #44]	; (8008e78 <ST7735_set_window+0x168>)
 8008e4c:	2014      	movs	r0, #20
 8008e4e:	f7fd f8c3 	bl	8005fd8 <HAL_Delay>
 8008e52:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8008e56:	2201      	movs	r2, #1
 8008e58:	f10d 0107 	add.w	r1, sp, #7
 8008e5c:	4620      	mov	r0, r4
 8008e5e:	f7fd fa09 	bl	8006274 <HAL_SPI_Transmit>
 8008e62:	2800      	cmp	r0, #0
 8008e64:	d1f2      	bne.n	8008e4c <ST7735_set_window+0x13c>
 8008e66:	b004      	add	sp, #16
 8008e68:	bd10      	pop	{r4, pc}
 8008e6a:	bf00      	nop
 8008e6c:	20000600 	.word	0x20000600
 8008e70:	20000602 	.word	0x20000602
 8008e74:	40020c00 	.word	0x40020c00
 8008e78:	20000330 	.word	0x20000330

08008e7c <ST7735_init>:
 8008e7c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8008e80:	2201      	movs	r2, #1
 8008e82:	b083      	sub	sp, #12
 8008e84:	2110      	movs	r1, #16
 8008e86:	4861      	ldr	r0, [pc, #388]	; (800900c <ST7735_init+0x190>)
 8008e88:	4f60      	ldr	r7, [pc, #384]	; (800900c <ST7735_init+0x190>)
 8008e8a:	4c61      	ldr	r4, [pc, #388]	; (8009010 <ST7735_init+0x194>)
 8008e8c:	f7fc ffac 	bl	8005de8 <HAL_GPIO_WritePin>
 8008e90:	2064      	movs	r0, #100	; 0x64
 8008e92:	f7fd f8a1 	bl	8005fd8 <HAL_Delay>
 8008e96:	2200      	movs	r2, #0
 8008e98:	2110      	movs	r1, #16
 8008e9a:	485c      	ldr	r0, [pc, #368]	; (800900c <ST7735_init+0x190>)
 8008e9c:	f7fc ffa4 	bl	8005de8 <HAL_GPIO_WritePin>
 8008ea0:	2064      	movs	r0, #100	; 0x64
 8008ea2:	f7fd f899 	bl	8005fd8 <HAL_Delay>
 8008ea6:	4859      	ldr	r0, [pc, #356]	; (800900c <ST7735_init+0x190>)
 8008ea8:	2201      	movs	r2, #1
 8008eaa:	2110      	movs	r1, #16
 8008eac:	f7fc ff9c 	bl	8005de8 <HAL_GPIO_WritePin>
 8008eb0:	2064      	movs	r0, #100	; 0x64
 8008eb2:	f7fd f891 	bl	8005fd8 <HAL_Delay>
 8008eb6:	4b57      	ldr	r3, [pc, #348]	; (8009014 <ST7735_init+0x198>)
 8008eb8:	f04f 0815 	mov.w	r8, #21
 8008ebc:	2680      	movs	r6, #128	; 0x80
 8008ebe:	2501      	movs	r5, #1
 8008ec0:	2200      	movs	r2, #0
 8008ec2:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8008ec6:	4638      	mov	r0, r7
 8008ec8:	f103 0902 	add.w	r9, r3, #2
 8008ecc:	f7fc ff8c 	bl	8005de8 <HAL_GPIO_WritePin>
 8008ed0:	2200      	movs	r2, #0
 8008ed2:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8008ed6:	4638      	mov	r0, r7
 8008ed8:	f88d 5007 	strb.w	r5, [sp, #7]
 8008edc:	f7fc ff84 	bl	8005de8 <HAL_GPIO_WritePin>
 8008ee0:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8008ee4:	2201      	movs	r2, #1
 8008ee6:	f10d 0107 	add.w	r1, sp, #7
 8008eea:	4620      	mov	r0, r4
 8008eec:	f7fd f9c2 	bl	8006274 <HAL_SPI_Transmit>
 8008ef0:	f006 057f 	and.w	r5, r6, #127	; 0x7f
 8008ef4:	b9e8      	cbnz	r0, 8008f32 <ST7735_init+0xb6>
 8008ef6:	bb55      	cbnz	r5, 8008f4e <ST7735_init+0xd2>
 8008ef8:	2201      	movs	r2, #1
 8008efa:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8008efe:	4638      	mov	r0, r7
 8008f00:	f7fc ff72 	bl	8005de8 <HAL_GPIO_WritePin>
 8008f04:	0632      	lsls	r2, r6, #24
 8008f06:	eb09 0305 	add.w	r3, r9, r5
 8008f0a:	d50a      	bpl.n	8008f22 <ST7735_init+0xa6>
 8008f0c:	f819 0005 	ldrb.w	r0, [r9, r5]
 8008f10:	28ff      	cmp	r0, #255	; 0xff
 8008f12:	f103 0501 	add.w	r5, r3, #1
 8008f16:	bf08      	it	eq
 8008f18:	f44f 70fa 	moveq.w	r0, #500	; 0x1f4
 8008f1c:	f7fd f85c 	bl	8005fd8 <HAL_Delay>
 8008f20:	462b      	mov	r3, r5
 8008f22:	f108 32ff 	add.w	r2, r8, #4294967295	; 0xffffffff
 8008f26:	f012 08ff 	ands.w	r8, r2, #255	; 0xff
 8008f2a:	d020      	beq.n	8008f6e <ST7735_init+0xf2>
 8008f2c:	781d      	ldrb	r5, [r3, #0]
 8008f2e:	785e      	ldrb	r6, [r3, #1]
 8008f30:	e7c6      	b.n	8008ec0 <ST7735_init+0x44>
 8008f32:	2014      	movs	r0, #20
 8008f34:	f7fd f850 	bl	8005fd8 <HAL_Delay>
 8008f38:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8008f3c:	2201      	movs	r2, #1
 8008f3e:	f10d 0107 	add.w	r1, sp, #7
 8008f42:	4620      	mov	r0, r4
 8008f44:	f7fd f996 	bl	8006274 <HAL_SPI_Transmit>
 8008f48:	2800      	cmp	r0, #0
 8008f4a:	d1f2      	bne.n	8008f32 <ST7735_init+0xb6>
 8008f4c:	e7d3      	b.n	8008ef6 <ST7735_init+0x7a>
 8008f4e:	2201      	movs	r2, #1
 8008f50:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8008f54:	4638      	mov	r0, r7
 8008f56:	f7fc ff47 	bl	8005de8 <HAL_GPIO_WritePin>
 8008f5a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8008f5e:	462a      	mov	r2, r5
 8008f60:	4649      	mov	r1, r9
 8008f62:	4620      	mov	r0, r4
 8008f64:	f7fd f986 	bl	8006274 <HAL_SPI_Transmit>
 8008f68:	2800      	cmp	r0, #0
 8008f6a:	d0c5      	beq.n	8008ef8 <ST7735_init+0x7c>
 8008f6c:	e7fe      	b.n	8008f6c <ST7735_init+0xf0>
 8008f6e:	4827      	ldr	r0, [pc, #156]	; (800900c <ST7735_init+0x190>)
 8008f70:	4642      	mov	r2, r8
 8008f72:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8008f76:	f7fc ff37 	bl	8005de8 <HAL_GPIO_WritePin>
 8008f7a:	4a27      	ldr	r2, [pc, #156]	; (8009018 <ST7735_init+0x19c>)
 8008f7c:	4b27      	ldr	r3, [pc, #156]	; (800901c <ST7735_init+0x1a0>)
 8008f7e:	4928      	ldr	r1, [pc, #160]	; (8009020 <ST7735_init+0x1a4>)
 8008f80:	f88d 8006 	strb.w	r8, [sp, #6]
 8008f84:	20a0      	movs	r0, #160	; 0xa0
 8008f86:	8010      	strh	r0, [r2, #0]
 8008f88:	2280      	movs	r2, #128	; 0x80
 8008f8a:	801a      	strh	r2, [r3, #0]
 8008f8c:	2036      	movs	r0, #54	; 0x36
 8008f8e:	4b25      	ldr	r3, [pc, #148]	; (8009024 <ST7735_init+0x1a8>)
 8008f90:	f88d 0007 	strb.w	r0, [sp, #7]
 8008f94:	4642      	mov	r2, r8
 8008f96:	481d      	ldr	r0, [pc, #116]	; (800900c <ST7735_init+0x190>)
 8008f98:	f8a1 8000 	strh.w	r8, [r1]
 8008f9c:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8008fa0:	f8a3 8000 	strh.w	r8, [r3]
 8008fa4:	f7fc ff20 	bl	8005de8 <HAL_GPIO_WritePin>
 8008fa8:	4819      	ldr	r0, [pc, #100]	; (8009010 <ST7735_init+0x194>)
 8008faa:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8008fae:	2201      	movs	r2, #1
 8008fb0:	f10d 0107 	add.w	r1, sp, #7
 8008fb4:	f7fd f95e 	bl	8006274 <HAL_SPI_Transmit>
 8008fb8:	b168      	cbz	r0, 8008fd6 <ST7735_init+0x15a>
 8008fba:	4c15      	ldr	r4, [pc, #84]	; (8009010 <ST7735_init+0x194>)
 8008fbc:	2014      	movs	r0, #20
 8008fbe:	f7fd f80b 	bl	8005fd8 <HAL_Delay>
 8008fc2:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8008fc6:	2201      	movs	r2, #1
 8008fc8:	f10d 0107 	add.w	r1, sp, #7
 8008fcc:	4620      	mov	r0, r4
 8008fce:	f7fd f951 	bl	8006274 <HAL_SPI_Transmit>
 8008fd2:	2800      	cmp	r0, #0
 8008fd4:	d1f2      	bne.n	8008fbc <ST7735_init+0x140>
 8008fd6:	480d      	ldr	r0, [pc, #52]	; (800900c <ST7735_init+0x190>)
 8008fd8:	2201      	movs	r2, #1
 8008fda:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8008fde:	f7fc ff03 	bl	8005de8 <HAL_GPIO_WritePin>
 8008fe2:	480b      	ldr	r0, [pc, #44]	; (8009010 <ST7735_init+0x194>)
 8008fe4:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8008fe8:	2201      	movs	r2, #1
 8008fea:	f10d 0106 	add.w	r1, sp, #6
 8008fee:	f7fd f941 	bl	8006274 <HAL_SPI_Transmit>
 8008ff2:	4604      	mov	r4, r0
 8008ff4:	b100      	cbz	r0, 8008ff8 <ST7735_init+0x17c>
 8008ff6:	e7fe      	b.n	8008ff6 <ST7735_init+0x17a>
 8008ff8:	4804      	ldr	r0, [pc, #16]	; (800900c <ST7735_init+0x190>)
 8008ffa:	2201      	movs	r2, #1
 8008ffc:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8009000:	f7fc fef2 	bl	8005de8 <HAL_GPIO_WritePin>
 8009004:	4620      	mov	r0, r4
 8009006:	b003      	add	sp, #12
 8009008:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800900c:	40020c00 	.word	0x40020c00
 8009010:	20000330 	.word	0x20000330
 8009014:	0800da05 	.word	0x0800da05
 8009018:	200005fc 	.word	0x200005fc
 800901c:	200005fe 	.word	0x200005fe
 8009020:	20000600 	.word	0x20000600
 8009024:	20000602 	.word	0x20000602

08009028 <ST7735_pixel>:
 8009028:	b5f0      	push	{r4, r5, r6, r7, lr}
 800902a:	4f24      	ldr	r7, [pc, #144]	; (80090bc <ST7735_pixel+0x94>)
 800902c:	4604      	mov	r4, r0
 800902e:	b083      	sub	sp, #12
 8009030:	6838      	ldr	r0, [r7, #0]
 8009032:	460e      	mov	r6, r1
 8009034:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8009038:	4615      	mov	r5, r2
 800903a:	f003 fca3 	bl	800c984 <osMutexAcquire>
 800903e:	2c00      	cmp	r4, #0
 8009040:	db35      	blt.n	80090ae <ST7735_pixel+0x86>
 8009042:	4b1f      	ldr	r3, [pc, #124]	; (80090c0 <ST7735_pixel+0x98>)
 8009044:	881b      	ldrh	r3, [r3, #0]
 8009046:	429c      	cmp	r4, r3
 8009048:	da31      	bge.n	80090ae <ST7735_pixel+0x86>
 800904a:	2e00      	cmp	r6, #0
 800904c:	db2f      	blt.n	80090ae <ST7735_pixel+0x86>
 800904e:	4b1d      	ldr	r3, [pc, #116]	; (80090c4 <ST7735_pixel+0x9c>)
 8009050:	881b      	ldrh	r3, [r3, #0]
 8009052:	429e      	cmp	r6, r3
 8009054:	da2b      	bge.n	80090ae <ST7735_pixel+0x86>
 8009056:	481c      	ldr	r0, [pc, #112]	; (80090c8 <ST7735_pixel+0xa0>)
 8009058:	2200      	movs	r2, #0
 800905a:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800905e:	f7fc fec3 	bl	8005de8 <HAL_GPIO_WritePin>
 8009062:	2301      	movs	r3, #1
 8009064:	461a      	mov	r2, r3
 8009066:	b2b1      	uxth	r1, r6
 8009068:	b2a0      	uxth	r0, r4
 800906a:	f7ff fe51 	bl	8008d10 <ST7735_set_window>
 800906e:	4816      	ldr	r0, [pc, #88]	; (80090c8 <ST7735_pixel+0xa0>)
 8009070:	2201      	movs	r2, #1
 8009072:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8009076:	f7fc feb7 	bl	8005de8 <HAL_GPIO_WritePin>
 800907a:	0a2b      	lsrs	r3, r5, #8
 800907c:	4812      	ldr	r0, [pc, #72]	; (80090c8 <ST7735_pixel+0xa0>)
 800907e:	f88d 3004 	strb.w	r3, [sp, #4]
 8009082:	2201      	movs	r2, #1
 8009084:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8009088:	f88d 5005 	strb.w	r5, [sp, #5]
 800908c:	f7fc feac 	bl	8005de8 <HAL_GPIO_WritePin>
 8009090:	480e      	ldr	r0, [pc, #56]	; (80090cc <ST7735_pixel+0xa4>)
 8009092:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8009096:	2202      	movs	r2, #2
 8009098:	a901      	add	r1, sp, #4
 800909a:	f7fd f8eb 	bl	8006274 <HAL_SPI_Transmit>
 800909e:	b100      	cbz	r0, 80090a2 <ST7735_pixel+0x7a>
 80090a0:	e7fe      	b.n	80090a0 <ST7735_pixel+0x78>
 80090a2:	4809      	ldr	r0, [pc, #36]	; (80090c8 <ST7735_pixel+0xa0>)
 80090a4:	2201      	movs	r2, #1
 80090a6:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80090aa:	f7fc fe9d 	bl	8005de8 <HAL_GPIO_WritePin>
 80090ae:	6838      	ldr	r0, [r7, #0]
 80090b0:	b003      	add	sp, #12
 80090b2:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 80090b6:	f003 bc89 	b.w	800c9cc <osMutexRelease>
 80090ba:	bf00      	nop
 80090bc:	200001bc 	.word	0x200001bc
 80090c0:	200005fe 	.word	0x200005fe
 80090c4:	200005fc 	.word	0x200005fc
 80090c8:	40020c00 	.word	0x40020c00
 80090cc:	20000330 	.word	0x20000330

080090d0 <ST7735_fill_rect>:
 80090d0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80090d4:	4f31      	ldr	r7, [pc, #196]	; (800919c <ST7735_fill_rect+0xcc>)
 80090d6:	b084      	sub	sp, #16
 80090d8:	4688      	mov	r8, r1
 80090da:	4605      	mov	r5, r0
 80090dc:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 80090e0:	6838      	ldr	r0, [r7, #0]
 80090e2:	f8bd 6030 	ldrh.w	r6, [sp, #48]	; 0x30
 80090e6:	461c      	mov	r4, r3
 80090e8:	4691      	mov	r9, r2
 80090ea:	f003 fc4b 	bl	800c984 <osMutexAcquire>
 80090ee:	4b2c      	ldr	r3, [pc, #176]	; (80091a0 <ST7735_fill_rect+0xd0>)
 80090f0:	ea25 70e5 	bic.w	r0, r5, r5, asr #31
 80090f4:	881b      	ldrh	r3, [r3, #0]
 80090f6:	eb00 0109 	add.w	r1, r0, r9
 80090fa:	4299      	cmp	r1, r3
 80090fc:	b285      	uxth	r5, r0
 80090fe:	bfc8      	it	gt
 8009100:	1b5b      	subgt	r3, r3, r5
 8009102:	ea28 72e8 	bic.w	r2, r8, r8, asr #31
 8009106:	bfc4      	itt	gt
 8009108:	fa0f f983 	sxthgt.w	r9, r3
 800910c:	fa1f f883 	uxthgt.w	r8, r3
 8009110:	4b24      	ldr	r3, [pc, #144]	; (80091a4 <ST7735_fill_rect+0xd4>)
 8009112:	4825      	ldr	r0, [pc, #148]	; (80091a8 <ST7735_fill_rect+0xd8>)
 8009114:	881b      	ldrh	r3, [r3, #0]
 8009116:	eb02 0104 	add.w	r1, r2, r4
 800911a:	fa1f fa82 	uxth.w	sl, r2
 800911e:	bfd8      	it	le
 8009120:	fa1f f889 	uxthle.w	r8, r9
 8009124:	4299      	cmp	r1, r3
 8009126:	bfc6      	itte	gt
 8009128:	eba3 040a 	subgt.w	r4, r3, sl
 800912c:	b2a3      	uxthgt	r3, r4
 800912e:	b2a3      	uxthle	r3, r4
 8009130:	f04f 0200 	mov.w	r2, #0
 8009134:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8009138:	bfc8      	it	gt
 800913a:	b224      	sxthgt	r4, r4
 800913c:	9301      	str	r3, [sp, #4]
 800913e:	f7fc fe53 	bl	8005de8 <HAL_GPIO_WritePin>
 8009142:	9b01      	ldr	r3, [sp, #4]
 8009144:	4628      	mov	r0, r5
 8009146:	4642      	mov	r2, r8
 8009148:	4651      	mov	r1, sl
 800914a:	f7ff fde1 	bl	8008d10 <ST7735_set_window>
 800914e:	4d16      	ldr	r5, [pc, #88]	; (80091a8 <ST7735_fill_rect+0xd8>)
 8009150:	f88d 600d 	strb.w	r6, [sp, #13]
 8009154:	0a33      	lsrs	r3, r6, #8
 8009156:	4e15      	ldr	r6, [pc, #84]	; (80091ac <ST7735_fill_rect+0xdc>)
 8009158:	f88d 300c 	strb.w	r3, [sp, #12]
 800915c:	fb04 f409 	mul.w	r4, r4, r9
 8009160:	2201      	movs	r2, #1
 8009162:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8009166:	4628      	mov	r0, r5
 8009168:	b164      	cbz	r4, 8009184 <ST7735_fill_rect+0xb4>
 800916a:	f7fc fe3d 	bl	8005de8 <HAL_GPIO_WritePin>
 800916e:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8009172:	2202      	movs	r2, #2
 8009174:	a903      	add	r1, sp, #12
 8009176:	4630      	mov	r0, r6
 8009178:	f7fd f87c 	bl	8006274 <HAL_SPI_Transmit>
 800917c:	3c01      	subs	r4, #1
 800917e:	2800      	cmp	r0, #0
 8009180:	d0ee      	beq.n	8009160 <ST7735_fill_rect+0x90>
 8009182:	e7fe      	b.n	8009182 <ST7735_fill_rect+0xb2>
 8009184:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8009188:	4807      	ldr	r0, [pc, #28]	; (80091a8 <ST7735_fill_rect+0xd8>)
 800918a:	f7fc fe2d 	bl	8005de8 <HAL_GPIO_WritePin>
 800918e:	6838      	ldr	r0, [r7, #0]
 8009190:	f003 fc1c 	bl	800c9cc <osMutexRelease>
 8009194:	b004      	add	sp, #16
 8009196:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800919a:	bf00      	nop
 800919c:	200001bc 	.word	0x200001bc
 80091a0:	200005fe 	.word	0x200005fe
 80091a4:	200005fc 	.word	0x200005fc
 80091a8:	40020c00 	.word	0x40020c00
 80091ac:	20000330 	.word	0x20000330

080091b0 <ST7735_char.part.0>:
 80091b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80091b4:	b091      	sub	sp, #68	; 0x44
 80091b6:	2aaf      	cmp	r2, #175	; 0xaf
 80091b8:	bf88      	it	hi
 80091ba:	3201      	addhi	r2, #1
 80091bc:	9303      	str	r3, [sp, #12]
 80091be:	f89d 306c 	ldrb.w	r3, [sp, #108]	; 0x6c
 80091c2:	9308      	str	r3, [sp, #32]
 80091c4:	bf88      	it	hi
 80091c6:	b2d2      	uxtbhi	r2, r2
 80091c8:	4bb4      	ldr	r3, [pc, #720]	; (800949c <ST7735_char.part.0+0x2ec>)
 80091ca:	f8bd 4068 	ldrh.w	r4, [sp, #104]	; 0x68
 80091ce:	f89d 6070 	ldrb.w	r6, [sp, #112]	; 0x70
 80091d2:	9405      	str	r4, [sp, #20]
 80091d4:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80091d8:	460d      	mov	r5, r1
 80091da:	18d3      	adds	r3, r2, r3
 80091dc:	b281      	uxth	r1, r0
 80091de:	9307      	str	r3, [sp, #28]
 80091e0:	1d4b      	adds	r3, r1, #5
 80091e2:	b2a8      	uxth	r0, r5
 80091e4:	b29b      	uxth	r3, r3
 80091e6:	930a      	str	r3, [sp, #40]	; 0x28
 80091e8:	f100 0308 	add.w	r3, r0, #8
 80091ec:	b29b      	uxth	r3, r3
 80091ee:	930d      	str	r3, [sp, #52]	; 0x34
 80091f0:	f8bd 3020 	ldrh.w	r3, [sp, #32]
 80091f4:	910b      	str	r1, [sp, #44]	; 0x2c
 80091f6:	900c      	str	r0, [sp, #48]	; 0x30
 80091f8:	9309      	str	r3, [sp, #36]	; 0x24
 80091fa:	9104      	str	r1, [sp, #16]
 80091fc:	9106      	str	r1, [sp, #24]
 80091fe:	9b07      	ldr	r3, [sp, #28]
 8009200:	9a05      	ldr	r2, [sp, #20]
 8009202:	f813 4b01 	ldrb.w	r4, [r3], #1
 8009206:	9307      	str	r3, [sp, #28]
 8009208:	9b03      	ldr	r3, [sp, #12]
 800920a:	f9bd 9010 	ldrsh.w	r9, [sp, #16]
 800920e:	4293      	cmp	r3, r2
 8009210:	9b08      	ldr	r3, [sp, #32]
 8009212:	d06f      	beq.n	80092f4 <ST7735_char.part.0+0x144>
 8009214:	2e01      	cmp	r6, #1
 8009216:	f000 80ba 	beq.w	800938e <ST7735_char.part.0+0x1de>
 800921a:	2b01      	cmp	r3, #1
 800921c:	f04f 0808 	mov.w	r8, #8
 8009220:	f04f 0700 	mov.w	r7, #0
 8009224:	fa0f fa86 	sxth.w	sl, r6
 8009228:	f000 808b 	beq.w	8009342 <ST7735_char.part.0+0x192>
 800922c:	fa0f fb83 	sxth.w	fp, r3
 8009230:	e00f      	b.n	8009252 <ST7735_char.part.0+0xa2>
 8009232:	9b05      	ldr	r3, [sp, #20]
 8009234:	9300      	str	r3, [sp, #0]
 8009236:	b201      	sxth	r1, r0
 8009238:	4653      	mov	r3, sl
 800923a:	4648      	mov	r0, r9
 800923c:	f7ff ff48 	bl	80090d0 <ST7735_fill_rect>
 8009240:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8009244:	3701      	adds	r7, #1
 8009246:	f018 08ff 	ands.w	r8, r8, #255	; 0xff
 800924a:	b27f      	sxtb	r7, r7
 800924c:	ea4f 0454 	mov.w	r4, r4, lsr #1
 8009250:	d029      	beq.n	80092a6 <ST7735_char.part.0+0xf6>
 8009252:	fb07 5106 	mla	r1, r7, r6, r5
 8009256:	f014 0f01 	tst.w	r4, #1
 800925a:	4608      	mov	r0, r1
 800925c:	4653      	mov	r3, sl
 800925e:	465a      	mov	r2, fp
 8009260:	b209      	sxth	r1, r1
 8009262:	d0e6      	beq.n	8009232 <ST7735_char.part.0+0x82>
 8009264:	9803      	ldr	r0, [sp, #12]
 8009266:	9000      	str	r0, [sp, #0]
 8009268:	4648      	mov	r0, r9
 800926a:	f7ff ff31 	bl	80090d0 <ST7735_fill_rect>
 800926e:	e7e7      	b.n	8009240 <ST7735_char.part.0+0x90>
 8009270:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8009274:	fa0f fa86 	sxth.w	sl, r6
 8009278:	fb07 5106 	mla	r1, r7, r6, r5
 800927c:	f014 0f01 	tst.w	r4, #1
 8009280:	4653      	mov	r3, sl
 8009282:	ea4f 0454 	mov.w	r4, r4, lsr #1
 8009286:	f04f 0201 	mov.w	r2, #1
 800928a:	b209      	sxth	r1, r1
 800928c:	4648      	mov	r0, r9
 800928e:	d003      	beq.n	8009298 <ST7735_char.part.0+0xe8>
 8009290:	f8cd b000 	str.w	fp, [sp]
 8009294:	f7ff ff1c 	bl	80090d0 <ST7735_fill_rect>
 8009298:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 800929c:	3701      	adds	r7, #1
 800929e:	f018 08ff 	ands.w	r8, r8, #255	; 0xff
 80092a2:	b27f      	sxtb	r7, r7
 80092a4:	d1e8      	bne.n	8009278 <ST7735_char.part.0+0xc8>
 80092a6:	9b04      	ldr	r3, [sp, #16]
 80092a8:	9909      	ldr	r1, [sp, #36]	; 0x24
 80092aa:	9a06      	ldr	r2, [sp, #24]
 80092ac:	440b      	add	r3, r1
 80092ae:	b29b      	uxth	r3, r3
 80092b0:	3201      	adds	r2, #1
 80092b2:	9304      	str	r3, [sp, #16]
 80092b4:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80092b6:	b292      	uxth	r2, r2
 80092b8:	4293      	cmp	r3, r2
 80092ba:	9206      	str	r2, [sp, #24]
 80092bc:	d19f      	bne.n	80091fe <ST7735_char.part.0+0x4e>
 80092be:	9b03      	ldr	r3, [sp, #12]
 80092c0:	9a05      	ldr	r2, [sp, #20]
 80092c2:	4293      	cmp	r3, r2
 80092c4:	f000 80e7 	beq.w	8009496 <ST7735_char.part.0+0x2e6>
 80092c8:	9b08      	ldr	r3, [sp, #32]
 80092ca:	2b01      	cmp	r3, #1
 80092cc:	d102      	bne.n	80092d4 <ST7735_char.part.0+0x124>
 80092ce:	2e01      	cmp	r6, #1
 80092d0:	f000 80a4 	beq.w	800941c <ST7735_char.part.0+0x26c>
 80092d4:	9b05      	ldr	r3, [sp, #20]
 80092d6:	931a      	str	r3, [sp, #104]	; 0x68
 80092d8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80092da:	980b      	ldr	r0, [sp, #44]	; 0x2c
 80092dc:	9a08      	ldr	r2, [sp, #32]
 80092de:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 80092e2:	4418      	add	r0, r3
 80092e4:	4629      	mov	r1, r5
 80092e6:	00f3      	lsls	r3, r6, #3
 80092e8:	b200      	sxth	r0, r0
 80092ea:	b011      	add	sp, #68	; 0x44
 80092ec:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80092f0:	f7ff beee 	b.w	80090d0 <ST7735_fill_rect>
 80092f4:	2e01      	cmp	r6, #1
 80092f6:	f000 80d9 	beq.w	80094ac <ST7735_char.part.0+0x2fc>
 80092fa:	2b01      	cmp	r3, #1
 80092fc:	f04f 0808 	mov.w	r8, #8
 8009300:	f04f 0700 	mov.w	r7, #0
 8009304:	d0b4      	beq.n	8009270 <ST7735_char.part.0+0xc0>
 8009306:	fa0f fb86 	sxth.w	fp, r6
 800930a:	fa0f fa83 	sxth.w	sl, r3
 800930e:	9502      	str	r5, [sp, #8]
 8009310:	9b02      	ldr	r3, [sp, #8]
 8009312:	f014 0f01 	tst.w	r4, #1
 8009316:	fb07 3106 	mla	r1, r7, r6, r3
 800931a:	ea4f 0454 	mov.w	r4, r4, lsr #1
 800931e:	465b      	mov	r3, fp
 8009320:	4652      	mov	r2, sl
 8009322:	b209      	sxth	r1, r1
 8009324:	4648      	mov	r0, r9
 8009326:	d003      	beq.n	8009330 <ST7735_char.part.0+0x180>
 8009328:	9d03      	ldr	r5, [sp, #12]
 800932a:	9500      	str	r5, [sp, #0]
 800932c:	f7ff fed0 	bl	80090d0 <ST7735_fill_rect>
 8009330:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8009334:	3701      	adds	r7, #1
 8009336:	f018 08ff 	ands.w	r8, r8, #255	; 0xff
 800933a:	b27f      	sxtb	r7, r7
 800933c:	d1e8      	bne.n	8009310 <ST7735_char.part.0+0x160>
 800933e:	9d02      	ldr	r5, [sp, #8]
 8009340:	e7b1      	b.n	80092a6 <ST7735_char.part.0+0xf6>
 8009342:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8009346:	9402      	str	r4, [sp, #8]
 8009348:	e00d      	b.n	8009366 <ST7735_char.part.0+0x1b6>
 800934a:	9c05      	ldr	r4, [sp, #20]
 800934c:	9400      	str	r4, [sp, #0]
 800934e:	f7ff febf 	bl	80090d0 <ST7735_fill_rect>
 8009352:	9b02      	ldr	r3, [sp, #8]
 8009354:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8009358:	3701      	adds	r7, #1
 800935a:	085b      	lsrs	r3, r3, #1
 800935c:	f018 08ff 	ands.w	r8, r8, #255	; 0xff
 8009360:	b27f      	sxtb	r7, r7
 8009362:	9302      	str	r3, [sp, #8]
 8009364:	d09f      	beq.n	80092a6 <ST7735_char.part.0+0xf6>
 8009366:	9b02      	ldr	r3, [sp, #8]
 8009368:	fb07 5106 	mla	r1, r7, r6, r5
 800936c:	f013 0f01 	tst.w	r3, #1
 8009370:	468c      	mov	ip, r1
 8009372:	4653      	mov	r3, sl
 8009374:	f04f 0201 	mov.w	r2, #1
 8009378:	b209      	sxth	r1, r1
 800937a:	4648      	mov	r0, r9
 800937c:	d0e5      	beq.n	800934a <ST7735_char.part.0+0x19a>
 800937e:	f8cd b000 	str.w	fp, [sp]
 8009382:	2201      	movs	r2, #1
 8009384:	fa0f f18c 	sxth.w	r1, ip
 8009388:	f7ff fea2 	bl	80090d0 <ST7735_fill_rect>
 800938c:	e7e1      	b.n	8009352 <ST7735_char.part.0+0x1a2>
 800938e:	2b01      	cmp	r3, #1
 8009390:	d11a      	bne.n	80093c8 <ST7735_char.part.0+0x218>
 8009392:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8009394:	f9bd 8018 	ldrsh.w	r8, [sp, #24]
 8009398:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800939c:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
 80093a0:	f014 0f01 	tst.w	r4, #1
 80093a4:	b239      	sxth	r1, r7
 80093a6:	bf08      	it	eq
 80093a8:	b239      	sxtheq	r1, r7
 80093aa:	f107 0701 	add.w	r7, r7, #1
 80093ae:	464a      	mov	r2, r9
 80093b0:	4640      	mov	r0, r8
 80093b2:	bf04      	itt	eq
 80093b4:	9a05      	ldreq	r2, [sp, #20]
 80093b6:	4640      	moveq	r0, r8
 80093b8:	b2bf      	uxth	r7, r7
 80093ba:	f7ff fe35 	bl	8009028 <ST7735_pixel>
 80093be:	4557      	cmp	r7, sl
 80093c0:	ea4f 0454 	mov.w	r4, r4, lsr #1
 80093c4:	d1ec      	bne.n	80093a0 <ST7735_char.part.0+0x1f0>
 80093c6:	e76e      	b.n	80092a6 <ST7735_char.part.0+0xf6>
 80093c8:	fa0f fb83 	sxth.w	fp, r3
 80093cc:	46aa      	mov	sl, r5
 80093ce:	f04f 0808 	mov.w	r8, #8
 80093d2:	465d      	mov	r5, fp
 80093d4:	2700      	movs	r7, #0
 80093d6:	46b3      	mov	fp, r6
 80093d8:	9e03      	ldr	r6, [sp, #12]
 80093da:	e00e      	b.n	80093fa <ST7735_char.part.0+0x24a>
 80093dc:	9a05      	ldr	r2, [sp, #20]
 80093de:	9200      	str	r2, [sp, #0]
 80093e0:	4648      	mov	r0, r9
 80093e2:	462a      	mov	r2, r5
 80093e4:	f7ff fe74 	bl	80090d0 <ST7735_fill_rect>
 80093e8:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80093ec:	3701      	adds	r7, #1
 80093ee:	f018 08ff 	ands.w	r8, r8, #255	; 0xff
 80093f2:	b27f      	sxtb	r7, r7
 80093f4:	ea4f 0454 	mov.w	r4, r4, lsr #1
 80093f8:	d070      	beq.n	80094dc <ST7735_char.part.0+0x32c>
 80093fa:	eb07 010a 	add.w	r1, r7, sl
 80093fe:	f014 0f01 	tst.w	r4, #1
 8009402:	4608      	mov	r0, r1
 8009404:	f04f 0301 	mov.w	r3, #1
 8009408:	b209      	sxth	r1, r1
 800940a:	d0e7      	beq.n	80093dc <ST7735_char.part.0+0x22c>
 800940c:	b201      	sxth	r1, r0
 800940e:	9600      	str	r6, [sp, #0]
 8009410:	2301      	movs	r3, #1
 8009412:	462a      	mov	r2, r5
 8009414:	4648      	mov	r0, r9
 8009416:	f7ff fe5b 	bl	80090d0 <ST7735_fill_rect>
 800941a:	e7e5      	b.n	80093e8 <ST7735_char.part.0+0x238>
 800941c:	4f20      	ldr	r7, [pc, #128]	; (80094a0 <ST7735_char.part.0+0x2f0>)
 800941e:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8009422:	6838      	ldr	r0, [r7, #0]
 8009424:	f003 faae 	bl	800c984 <osMutexAcquire>
 8009428:	481e      	ldr	r0, [pc, #120]	; (80094a4 <ST7735_char.part.0+0x2f4>)
 800942a:	2200      	movs	r2, #0
 800942c:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8009430:	f7fc fcda 	bl	8005de8 <HAL_GPIO_WritePin>
 8009434:	b2a9      	uxth	r1, r5
 8009436:	2308      	movs	r3, #8
 8009438:	4632      	mov	r2, r6
 800943a:	980a      	ldr	r0, [sp, #40]	; 0x28
 800943c:	4d1a      	ldr	r5, [pc, #104]	; (80094a8 <ST7735_char.part.0+0x2f8>)
 800943e:	f7ff fc67 	bl	8008d10 <ST7735_set_window>
 8009442:	4632      	mov	r2, r6
 8009444:	4817      	ldr	r0, [pc, #92]	; (80094a4 <ST7735_char.part.0+0x2f4>)
 8009446:	4e17      	ldr	r6, [pc, #92]	; (80094a4 <ST7735_char.part.0+0x2f4>)
 8009448:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 800944c:	f7fc fccc 	bl	8005de8 <HAL_GPIO_WritePin>
 8009450:	9a05      	ldr	r2, [sp, #20]
 8009452:	f88d 203d 	strb.w	r2, [sp, #61]	; 0x3d
 8009456:	0a13      	lsrs	r3, r2, #8
 8009458:	f88d 303c 	strb.w	r3, [sp, #60]	; 0x3c
 800945c:	2409      	movs	r4, #9
 800945e:	2201      	movs	r2, #1
 8009460:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8009464:	4630      	mov	r0, r6
 8009466:	f7fc fcbf 	bl	8005de8 <HAL_GPIO_WritePin>
 800946a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 800946e:	2202      	movs	r2, #2
 8009470:	a90f      	add	r1, sp, #60	; 0x3c
 8009472:	4628      	mov	r0, r5
 8009474:	f7fc fefe 	bl	8006274 <HAL_SPI_Transmit>
 8009478:	3c01      	subs	r4, #1
 800947a:	b2a4      	uxth	r4, r4
 800947c:	2800      	cmp	r0, #0
 800947e:	d14e      	bne.n	800951e <ST7735_char.part.0+0x36e>
 8009480:	2c00      	cmp	r4, #0
 8009482:	d1ec      	bne.n	800945e <ST7735_char.part.0+0x2ae>
 8009484:	4807      	ldr	r0, [pc, #28]	; (80094a4 <ST7735_char.part.0+0x2f4>)
 8009486:	2201      	movs	r2, #1
 8009488:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800948c:	f7fc fcac 	bl	8005de8 <HAL_GPIO_WritePin>
 8009490:	6838      	ldr	r0, [r7, #0]
 8009492:	f003 fa9b 	bl	800c9cc <osMutexRelease>
 8009496:	b011      	add	sp, #68	; 0x44
 8009498:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800949c:	0800da78 	.word	0x0800da78
 80094a0:	200001bc 	.word	0x200001bc
 80094a4:	40020c00 	.word	0x40020c00
 80094a8:	20000330 	.word	0x20000330
 80094ac:	2b01      	cmp	r3, #1
 80094ae:	d118      	bne.n	80094e2 <ST7735_char.part.0+0x332>
 80094b0:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80094b2:	f9bd 8018 	ldrsh.w	r8, [sp, #24]
 80094b6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80094ba:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
 80094be:	f014 0f01 	tst.w	r4, #1
 80094c2:	b239      	sxth	r1, r7
 80094c4:	ea4f 0454 	mov.w	r4, r4, lsr #1
 80094c8:	464a      	mov	r2, r9
 80094ca:	4640      	mov	r0, r8
 80094cc:	d001      	beq.n	80094d2 <ST7735_char.part.0+0x322>
 80094ce:	f7ff fdab 	bl	8009028 <ST7735_pixel>
 80094d2:	3701      	adds	r7, #1
 80094d4:	b2bf      	uxth	r7, r7
 80094d6:	4557      	cmp	r7, sl
 80094d8:	d1f1      	bne.n	80094be <ST7735_char.part.0+0x30e>
 80094da:	e6e4      	b.n	80092a6 <ST7735_char.part.0+0xf6>
 80094dc:	4655      	mov	r5, sl
 80094de:	465e      	mov	r6, fp
 80094e0:	e6e1      	b.n	80092a6 <ST7735_char.part.0+0xf6>
 80094e2:	46b3      	mov	fp, r6
 80094e4:	9e03      	ldr	r6, [sp, #12]
 80094e6:	f04f 0808 	mov.w	r8, #8
 80094ea:	2700      	movs	r7, #0
 80094ec:	fa0f fa83 	sxth.w	sl, r3
 80094f0:	1979      	adds	r1, r7, r5
 80094f2:	f014 0f01 	tst.w	r4, #1
 80094f6:	f04f 0301 	mov.w	r3, #1
 80094fa:	ea4f 0454 	mov.w	r4, r4, lsr #1
 80094fe:	b209      	sxth	r1, r1
 8009500:	d004      	beq.n	800950c <ST7735_char.part.0+0x35c>
 8009502:	9600      	str	r6, [sp, #0]
 8009504:	4652      	mov	r2, sl
 8009506:	4648      	mov	r0, r9
 8009508:	f7ff fde2 	bl	80090d0 <ST7735_fill_rect>
 800950c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8009510:	3701      	adds	r7, #1
 8009512:	f018 08ff 	ands.w	r8, r8, #255	; 0xff
 8009516:	b27f      	sxtb	r7, r7
 8009518:	d1ea      	bne.n	80094f0 <ST7735_char.part.0+0x340>
 800951a:	465e      	mov	r6, fp
 800951c:	e6c3      	b.n	80092a6 <ST7735_char.part.0+0xf6>
 800951e:	e7fe      	b.n	800951e <ST7735_char.part.0+0x36e>

08009520 <ST7735_fill>:
 8009520:	b500      	push	{lr}
 8009522:	4b07      	ldr	r3, [pc, #28]	; (8009540 <ST7735_fill+0x20>)
 8009524:	4a07      	ldr	r2, [pc, #28]	; (8009544 <ST7735_fill+0x24>)
 8009526:	f9b3 3000 	ldrsh.w	r3, [r3]
 800952a:	f9b2 2000 	ldrsh.w	r2, [r2]
 800952e:	b083      	sub	sp, #12
 8009530:	2100      	movs	r1, #0
 8009532:	9000      	str	r0, [sp, #0]
 8009534:	4608      	mov	r0, r1
 8009536:	f7ff fdcb 	bl	80090d0 <ST7735_fill_rect>
 800953a:	b003      	add	sp, #12
 800953c:	f85d fb04 	ldr.w	pc, [sp], #4
 8009540:	200005fc 	.word	0x200005fc
 8009544:	200005fe 	.word	0x200005fe

08009548 <ST7735_print_config>:
 8009548:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800954c:	4e42      	ldr	r6, [pc, #264]	; (8009658 <ST7735_print_config+0x110>)
 800954e:	4d43      	ldr	r5, [pc, #268]	; (800965c <ST7735_print_config+0x114>)
 8009550:	8031      	strh	r1, [r6, #0]
 8009552:	4943      	ldr	r1, [pc, #268]	; (8009660 <ST7735_print_config+0x118>)
 8009554:	8028      	strh	r0, [r5, #0]
 8009556:	b087      	sub	sp, #28
 8009558:	800b      	strh	r3, [r1, #0]
 800955a:	4b42      	ldr	r3, [pc, #264]	; (8009664 <ST7735_print_config+0x11c>)
 800955c:	f8bd 4040 	ldrh.w	r4, [sp, #64]	; 0x40
 8009560:	4841      	ldr	r0, [pc, #260]	; (8009668 <ST7735_print_config+0x120>)
 8009562:	f89d 1044 	ldrb.w	r1, [sp, #68]	; 0x44
 8009566:	4f41      	ldr	r7, [pc, #260]	; (800966c <ST7735_print_config+0x124>)
 8009568:	801c      	strh	r4, [r3, #0]
 800956a:	7813      	ldrb	r3, [r2, #0]
 800956c:	8001      	strh	r1, [r0, #0]
 800956e:	f89d 1048 	ldrb.w	r1, [sp, #72]	; 0x48
 8009572:	8039      	strh	r1, [r7, #0]
 8009574:	2b00      	cmp	r3, #0
 8009576:	d059      	beq.n	800962c <ST7735_print_config+0xe4>
 8009578:	4614      	mov	r4, r2
 800957a:	f04f 0b00 	mov.w	fp, #0
 800957e:	461a      	mov	r2, r3
 8009580:	e047      	b.n	8009612 <ST7735_print_config+0xca>
 8009582:	2a0d      	cmp	r2, #13
 8009584:	d042      	beq.n	800960c <ST7735_print_config+0xc4>
 8009586:	4b38      	ldr	r3, [pc, #224]	; (8009668 <ST7735_print_config+0x120>)
 8009588:	4939      	ldr	r1, [pc, #228]	; (8009670 <ST7735_print_config+0x128>)
 800958a:	881b      	ldrh	r3, [r3, #0]
 800958c:	f8b5 c000 	ldrh.w	ip, [r5]
 8009590:	f8b1 8000 	ldrh.w	r8, [r1]
 8009594:	eb03 0143 	add.w	r1, r3, r3, lsl #1
 8009598:	eb0c 0141 	add.w	r1, ip, r1, lsl #1
 800959c:	4541      	cmp	r1, r8
 800959e:	ea4f 0943 	mov.w	r9, r3, lsl #1
 80095a2:	dc49      	bgt.n	8009638 <ST7735_print_config+0xf0>
 80095a4:	fa0f f18c 	sxth.w	r1, ip
 80095a8:	4608      	mov	r0, r1
 80095aa:	9105      	str	r1, [sp, #20]
 80095ac:	f8b7 a000 	ldrh.w	sl, [r7]
 80095b0:	8831      	ldrh	r1, [r6, #0]
 80095b2:	4686      	mov	lr, r0
 80095b4:	45f0      	cmp	r8, lr
 80095b6:	dd25      	ble.n	8009604 <ST7735_print_config+0xbc>
 80095b8:	f8df 80b8 	ldr.w	r8, [pc, #184]	; 8009674 <ST7735_print_config+0x12c>
 80095bc:	f8b8 8000 	ldrh.w	r8, [r8]
 80095c0:	b209      	sxth	r1, r1
 80095c2:	4541      	cmp	r1, r8
 80095c4:	da1e      	bge.n	8009604 <ST7735_print_config+0xbc>
 80095c6:	b2d8      	uxtb	r0, r3
 80095c8:	f04f 0806 	mov.w	r8, #6
 80095cc:	fb18 ee00 	smlabb	lr, r8, r0, lr
 80095d0:	f1be 0f00 	cmp.w	lr, #0
 80095d4:	dd16      	ble.n	8009604 <ST7735_print_config+0xbc>
 80095d6:	fa5f fe8a 	uxtb.w	lr, sl
 80095da:	eb01 08ce 	add.w	r8, r1, lr, lsl #3
 80095de:	f1b8 0f00 	cmp.w	r8, #0
 80095e2:	dd0f      	ble.n	8009604 <ST7735_print_config+0xbc>
 80095e4:	e9cd 0e01 	strd	r0, lr, [sp, #4]
 80095e8:	4b1e      	ldr	r3, [pc, #120]	; (8009664 <ST7735_print_config+0x11c>)
 80095ea:	9805      	ldr	r0, [sp, #20]
 80095ec:	881b      	ldrh	r3, [r3, #0]
 80095ee:	9300      	str	r3, [sp, #0]
 80095f0:	4b1b      	ldr	r3, [pc, #108]	; (8009660 <ST7735_print_config+0x118>)
 80095f2:	881b      	ldrh	r3, [r3, #0]
 80095f4:	f7ff fddc 	bl	80091b0 <ST7735_char.part.0>
 80095f8:	4b1b      	ldr	r3, [pc, #108]	; (8009668 <ST7735_print_config+0x120>)
 80095fa:	f8b5 c000 	ldrh.w	ip, [r5]
 80095fe:	881b      	ldrh	r3, [r3, #0]
 8009600:	ea4f 0943 	mov.w	r9, r3, lsl #1
 8009604:	444b      	add	r3, r9
 8009606:	eb0c 0343 	add.w	r3, ip, r3, lsl #1
 800960a:	802b      	strh	r3, [r5, #0]
 800960c:	f814 2f01 	ldrb.w	r2, [r4, #1]!
 8009610:	b162      	cbz	r2, 800962c <ST7735_print_config+0xe4>
 8009612:	2a0a      	cmp	r2, #10
 8009614:	d1b5      	bne.n	8009582 <ST7735_print_config+0x3a>
 8009616:	8833      	ldrh	r3, [r6, #0]
 8009618:	883a      	ldrh	r2, [r7, #0]
 800961a:	f8a5 b000 	strh.w	fp, [r5]
 800961e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8009622:	f814 2f01 	ldrb.w	r2, [r4, #1]!
 8009626:	8033      	strh	r3, [r6, #0]
 8009628:	2a00      	cmp	r2, #0
 800962a:	d1f2      	bne.n	8009612 <ST7735_print_config+0xca>
 800962c:	2300      	movs	r3, #0
 800962e:	802b      	strh	r3, [r5, #0]
 8009630:	8033      	strh	r3, [r6, #0]
 8009632:	b007      	add	sp, #28
 8009634:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009638:	8831      	ldrh	r1, [r6, #0]
 800963a:	f8b7 a000 	ldrh.w	sl, [r7]
 800963e:	f8a5 b000 	strh.w	fp, [r5]
 8009642:	eb01 01ca 	add.w	r1, r1, sl, lsl #3
 8009646:	f04f 0e00 	mov.w	lr, #0
 800964a:	b289      	uxth	r1, r1
 800964c:	8031      	strh	r1, [r6, #0]
 800964e:	f8cd e014 	str.w	lr, [sp, #20]
 8009652:	46f4      	mov	ip, lr
 8009654:	e7ae      	b.n	80095b4 <ST7735_print_config+0x6c>
 8009656:	bf00      	nop
 8009658:	20000606 	.word	0x20000606
 800965c:	20000604 	.word	0x20000604
 8009660:	2000017c 	.word	0x2000017c
 8009664:	20000608 	.word	0x20000608
 8009668:	2000017e 	.word	0x2000017e
 800966c:	20000180 	.word	0x20000180
 8009670:	200005fe 	.word	0x200005fe
 8009674:	200005fc 	.word	0x200005fc

08009678 <AHT10_init>:
 8009678:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800967c:	f8df 80b4 	ldr.w	r8, [pc, #180]	; 8009734 <AHT10_init+0xbc>
 8009680:	4f2a      	ldr	r7, [pc, #168]	; (800972c <AHT10_init+0xb4>)
 8009682:	4e2b      	ldr	r6, [pc, #172]	; (8009730 <AHT10_init+0xb8>)
 8009684:	6039      	str	r1, [r7, #0]
 8009686:	b085      	sub	sp, #20
 8009688:	4603      	mov	r3, r0
 800968a:	2028      	movs	r0, #40	; 0x28
 800968c:	f888 3000 	strb.w	r3, [r8]
 8009690:	f7fc fca2 	bl	8005fd8 <HAL_Delay>
 8009694:	22a8      	movs	r2, #168	; 0xa8
 8009696:	2332      	movs	r3, #50	; 0x32
 8009698:	f8ad 200c 	strh.w	r2, [sp, #12]
 800969c:	2200      	movs	r2, #0
 800969e:	9300      	str	r3, [sp, #0]
 80096a0:	f88d 200e 	strb.w	r2, [sp, #14]
 80096a4:	f898 1000 	ldrb.w	r1, [r8]
 80096a8:	6838      	ldr	r0, [r7, #0]
 80096aa:	2303      	movs	r3, #3
 80096ac:	aa03      	add	r2, sp, #12
 80096ae:	f7fd fe33 	bl	8007318 <HAL_I2C_Master_Transmit>
 80096b2:	7030      	strb	r0, [r6, #0]
 80096b4:	b918      	cbnz	r0, 80096be <AHT10_init+0x46>
 80096b6:	f44f 70af 	mov.w	r0, #350	; 0x15e
 80096ba:	f7fc fc8d 	bl	8005fd8 <HAL_Delay>
 80096be:	f640 03e1 	movw	r3, #2273	; 0x8e1
 80096c2:	f8ad 300c 	strh.w	r3, [sp, #12]
 80096c6:	2532      	movs	r5, #50	; 0x32
 80096c8:	2300      	movs	r3, #0
 80096ca:	f88d 300e 	strb.w	r3, [sp, #14]
 80096ce:	f898 1000 	ldrb.w	r1, [r8]
 80096d2:	6838      	ldr	r0, [r7, #0]
 80096d4:	9500      	str	r5, [sp, #0]
 80096d6:	aa03      	add	r2, sp, #12
 80096d8:	2303      	movs	r3, #3
 80096da:	f7fd fe1d 	bl	8007318 <HAL_I2C_Master_Transmit>
 80096de:	4604      	mov	r4, r0
 80096e0:	7030      	strb	r0, [r6, #0]
 80096e2:	b118      	cbz	r0, 80096ec <AHT10_init+0x74>
 80096e4:	2000      	movs	r0, #0
 80096e6:	b005      	add	sp, #20
 80096e8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80096ec:	f8df 9048 	ldr.w	r9, [pc, #72]	; 8009738 <AHT10_init+0xc0>
 80096f0:	f44f 70af 	mov.w	r0, #350	; 0x15e
 80096f4:	f7fc fc70 	bl	8005fd8 <HAL_Delay>
 80096f8:	f898 1000 	ldrb.w	r1, [r8]
 80096fc:	6838      	ldr	r0, [r7, #0]
 80096fe:	9500      	str	r5, [sp, #0]
 8009700:	2301      	movs	r3, #1
 8009702:	464a      	mov	r2, r9
 8009704:	f7fd ff5a 	bl	80075bc <HAL_I2C_Master_Receive>
 8009708:	7030      	strb	r0, [r6, #0]
 800970a:	b940      	cbnz	r0, 800971e <AHT10_init+0xa6>
 800970c:	f899 0000 	ldrb.w	r0, [r9]
 8009710:	28ff      	cmp	r0, #255	; 0xff
 8009712:	d0e7      	beq.n	80096e4 <AHT10_init+0x6c>
 8009714:	f3c0 00c0 	ubfx	r0, r0, #3, #1
 8009718:	b005      	add	sp, #20
 800971a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800971e:	23ff      	movs	r3, #255	; 0xff
 8009720:	4620      	mov	r0, r4
 8009722:	f889 3000 	strb.w	r3, [r9]
 8009726:	b005      	add	sp, #20
 8009728:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800972c:	2000060c 	.word	0x2000060c
 8009730:	20000610 	.word	0x20000610
 8009734:	2000060a 	.word	0x2000060a
 8009738:	20000184 	.word	0x20000184

0800973c <AHT10_read_raw_data>:
 800973c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8009740:	4e21      	ldr	r6, [pc, #132]	; (80097c8 <AHT10_read_raw_data+0x8c>)
 8009742:	4d22      	ldr	r5, [pc, #136]	; (80097cc <AHT10_read_raw_data+0x90>)
 8009744:	7831      	ldrb	r1, [r6, #0]
 8009746:	6828      	ldr	r0, [r5, #0]
 8009748:	4c21      	ldr	r4, [pc, #132]	; (80097d0 <AHT10_read_raw_data+0x94>)
 800974a:	b084      	sub	sp, #16
 800974c:	f243 32ac 	movw	r2, #13228	; 0x33ac
 8009750:	2300      	movs	r3, #0
 8009752:	2732      	movs	r7, #50	; 0x32
 8009754:	f8ad 200c 	strh.w	r2, [sp, #12]
 8009758:	f88d 300e 	strb.w	r3, [sp, #14]
 800975c:	9700      	str	r7, [sp, #0]
 800975e:	2303      	movs	r3, #3
 8009760:	aa03      	add	r2, sp, #12
 8009762:	f7fd fdd9 	bl	8007318 <HAL_I2C_Master_Transmit>
 8009766:	7020      	strb	r0, [r4, #0]
 8009768:	bb28      	cbnz	r0, 80097b6 <AHT10_read_raw_data+0x7a>
 800976a:	f8df 8068 	ldr.w	r8, [pc, #104]	; 80097d4 <AHT10_read_raw_data+0x98>
 800976e:	7831      	ldrb	r1, [r6, #0]
 8009770:	6828      	ldr	r0, [r5, #0]
 8009772:	9700      	str	r7, [sp, #0]
 8009774:	2301      	movs	r3, #1
 8009776:	4642      	mov	r2, r8
 8009778:	f7fd ff20 	bl	80075bc <HAL_I2C_Master_Receive>
 800977c:	7020      	strb	r0, [r4, #0]
 800977e:	b998      	cbnz	r0, 80097a8 <AHT10_read_raw_data+0x6c>
 8009780:	f898 3000 	ldrb.w	r3, [r8]
 8009784:	2bff      	cmp	r3, #255	; 0xff
 8009786:	d016      	beq.n	80097b6 <AHT10_read_raw_data+0x7a>
 8009788:	071a      	lsls	r2, r3, #28
 800978a:	f3c3 07c0 	ubfx	r7, r3, #3, #1
 800978e:	d512      	bpl.n	80097b6 <AHT10_read_raw_data+0x7a>
 8009790:	09db      	lsrs	r3, r3, #7
 8009792:	d115      	bne.n	80097c0 <AHT10_read_raw_data+0x84>
 8009794:	2332      	movs	r3, #50	; 0x32
 8009796:	9300      	str	r3, [sp, #0]
 8009798:	7831      	ldrb	r1, [r6, #0]
 800979a:	6828      	ldr	r0, [r5, #0]
 800979c:	4a0d      	ldr	r2, [pc, #52]	; (80097d4 <AHT10_read_raw_data+0x98>)
 800979e:	2306      	movs	r3, #6
 80097a0:	f7fd ff0c 	bl	80075bc <HAL_I2C_Master_Receive>
 80097a4:	7020      	strb	r0, [r4, #0]
 80097a6:	b138      	cbz	r0, 80097b8 <AHT10_read_raw_data+0x7c>
 80097a8:	27ff      	movs	r7, #255	; 0xff
 80097aa:	4638      	mov	r0, r7
 80097ac:	f888 7000 	strb.w	r7, [r8]
 80097b0:	b004      	add	sp, #16
 80097b2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80097b6:	27ff      	movs	r7, #255	; 0xff
 80097b8:	4638      	mov	r0, r7
 80097ba:	b004      	add	sp, #16
 80097bc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80097c0:	2050      	movs	r0, #80	; 0x50
 80097c2:	f7fc fc09 	bl	8005fd8 <HAL_Delay>
 80097c6:	e7e5      	b.n	8009794 <AHT10_read_raw_data+0x58>
 80097c8:	2000060a 	.word	0x2000060a
 80097cc:	2000060c 	.word	0x2000060c
 80097d0:	20000610 	.word	0x20000610
 80097d4:	20000184 	.word	0x20000184

080097d8 <AHT10_read_temperature>:
 80097d8:	b508      	push	{r3, lr}
 80097da:	bb10      	cbnz	r0, 8009822 <AHT10_read_temperature+0x4a>
 80097dc:	4b16      	ldr	r3, [pc, #88]	; (8009838 <AHT10_read_temperature+0x60>)
 80097de:	781a      	ldrb	r2, [r3, #0]
 80097e0:	2aff      	cmp	r2, #255	; 0xff
 80097e2:	d022      	beq.n	800982a <AHT10_read_temperature+0x52>
 80097e4:	78d8      	ldrb	r0, [r3, #3]
 80097e6:	791a      	ldrb	r2, [r3, #4]
 80097e8:	795b      	ldrb	r3, [r3, #5]
 80097ea:	0400      	lsls	r0, r0, #16
 80097ec:	f400 2070 	and.w	r0, r0, #983040	; 0xf0000
 80097f0:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
 80097f4:	4318      	orrs	r0, r3
 80097f6:	ee07 0a90 	vmov	s15, r0
 80097fa:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80097fe:	ee17 0a90 	vmov	r0, s15
 8009802:	f7f9 f863 	bl	80028cc <__aeabi_f2d>
 8009806:	a30a      	add	r3, pc, #40	; (adr r3, 8009830 <AHT10_read_temperature+0x58>)
 8009808:	e9d3 2300 	ldrd	r2, r3, [r3]
 800980c:	f7f9 f8b6 	bl	800297c <__aeabi_dmul>
 8009810:	4b0a      	ldr	r3, [pc, #40]	; (800983c <AHT10_read_temperature+0x64>)
 8009812:	2200      	movs	r2, #0
 8009814:	f7f8 fefa 	bl	800260c <__aeabi_dsub>
 8009818:	f7f9 fb80 	bl	8002f1c <__aeabi_d2f>
 800981c:	ee00 0a10 	vmov	s0, r0
 8009820:	bd08      	pop	{r3, pc}
 8009822:	f7ff ff8b 	bl	800973c <AHT10_read_raw_data>
 8009826:	28ff      	cmp	r0, #255	; 0xff
 8009828:	d1d8      	bne.n	80097dc <AHT10_read_temperature+0x4>
 800982a:	ed9f 0a05 	vldr	s0, [pc, #20]	; 8009840 <AHT10_read_temperature+0x68>
 800982e:	bd08      	pop	{r3, pc}
 8009830:	81cf7879 	.word	0x81cf7879
 8009834:	3f2908e5 	.word	0x3f2908e5
 8009838:	20000184 	.word	0x20000184
 800983c:	40490000 	.word	0x40490000
 8009840:	437f0000 	.word	0x437f0000
 8009844:	00000000 	.word	0x00000000

08009848 <AHT10_read_humidity>:
 8009848:	b508      	push	{r3, lr}
 800984a:	bb58      	cbnz	r0, 80098a4 <AHT10_read_humidity+0x5c>
 800984c:	4b1c      	ldr	r3, [pc, #112]	; (80098c0 <AHT10_read_humidity+0x78>)
 800984e:	781a      	ldrb	r2, [r3, #0]
 8009850:	2aff      	cmp	r2, #255	; 0xff
 8009852:	d02b      	beq.n	80098ac <AHT10_read_humidity+0x64>
 8009854:	785a      	ldrb	r2, [r3, #1]
 8009856:	78d8      	ldrb	r0, [r3, #3]
 8009858:	789b      	ldrb	r3, [r3, #2]
 800985a:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
 800985e:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
 8009862:	0900      	lsrs	r0, r0, #4
 8009864:	ee07 0a90 	vmov	s15, r0
 8009868:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 800986c:	ee17 0a90 	vmov	r0, s15
 8009870:	f7f9 f82c 	bl	80028cc <__aeabi_f2d>
 8009874:	a310      	add	r3, pc, #64	; (adr r3, 80098b8 <AHT10_read_humidity+0x70>)
 8009876:	e9d3 2300 	ldrd	r2, r3, [r3]
 800987a:	f7f9 f87f 	bl	800297c <__aeabi_dmul>
 800987e:	f7f9 fb4d 	bl	8002f1c <__aeabi_d2f>
 8009882:	ee00 0a10 	vmov	s0, r0
 8009886:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 800988a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800988e:	d410      	bmi.n	80098b2 <AHT10_read_humidity+0x6a>
 8009890:	eddf 7a0c 	vldr	s15, [pc, #48]	; 80098c4 <AHT10_read_humidity+0x7c>
 8009894:	eeb4 0a67 	vcmp.f32	s0, s15
 8009898:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800989c:	bfc8      	it	gt
 800989e:	eeb0 0a67 	vmovgt.f32	s0, s15
 80098a2:	bd08      	pop	{r3, pc}
 80098a4:	f7ff ff4a 	bl	800973c <AHT10_read_raw_data>
 80098a8:	28ff      	cmp	r0, #255	; 0xff
 80098aa:	d1cf      	bne.n	800984c <AHT10_read_humidity+0x4>
 80098ac:	ed9f 0a06 	vldr	s0, [pc, #24]	; 80098c8 <AHT10_read_humidity+0x80>
 80098b0:	bd08      	pop	{r3, pc}
 80098b2:	ed9f 0a06 	vldr	s0, [pc, #24]	; 80098cc <AHT10_read_humidity+0x84>
 80098b6:	bd08      	pop	{r3, pc}
 80098b8:	928e0c9e 	.word	0x928e0c9e
 80098bc:	3f18e757 	.word	0x3f18e757
 80098c0:	20000184 	.word	0x20000184
 80098c4:	42c80000 	.word	0x42c80000
 80098c8:	437f0000 	.word	0x437f0000
 80098cc:	00000000 	.word	0x00000000

080098d0 <read_register.isra.0>:
 80098d0:	b510      	push	{r4, lr}
 80098d2:	ea4f 0c40 	mov.w	ip, r0, lsl #1
 80098d6:	b086      	sub	sp, #24
 80098d8:	4608      	mov	r0, r1
 80098da:	fa1f f18c 	uxth.w	r1, ip
 80098de:	469c      	mov	ip, r3
 80098e0:	2302      	movs	r3, #2
 80098e2:	f241 3488 	movw	r4, #5000	; 0x1388
 80098e6:	9301      	str	r3, [sp, #4]
 80098e8:	ab05      	add	r3, sp, #20
 80098ea:	9402      	str	r4, [sp, #8]
 80098ec:	9300      	str	r3, [sp, #0]
 80098ee:	2301      	movs	r3, #1
 80098f0:	4664      	mov	r4, ip
 80098f2:	f7fe f9c9 	bl	8007c88 <HAL_I2C_Mem_Read>
 80098f6:	b928      	cbnz	r0, 8009904 <read_register.isra.0+0x34>
 80098f8:	f8bd 3014 	ldrh.w	r3, [sp, #20]
 80098fc:	8023      	strh	r3, [r4, #0]
 80098fe:	2001      	movs	r0, #1
 8009900:	b006      	add	sp, #24
 8009902:	bd10      	pop	{r4, pc}
 8009904:	2000      	movs	r0, #0
 8009906:	b006      	add	sp, #24
 8009908:	bd10      	pop	{r4, pc}
 800990a:	bf00      	nop

0800990c <BMP280_init_default_params>:
 800990c:	4a02      	ldr	r2, [pc, #8]	; (8009918 <BMP280_init_default_params+0xc>)
 800990e:	6002      	str	r2, [r0, #0]
 8009910:	2303      	movs	r3, #3
 8009912:	7103      	strb	r3, [r0, #4]
 8009914:	4770      	bx	lr
 8009916:	bf00      	nop
 8009918:	03030003 	.word	0x03030003

0800991c <BMP280_init>:
 800991c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8009920:	8b03      	ldrh	r3, [r0, #24]
 8009922:	2b76      	cmp	r3, #118	; 0x76
 8009924:	b086      	sub	sp, #24
 8009926:	d005      	beq.n	8009934 <BMP280_init+0x18>
 8009928:	f04f 0900 	mov.w	r9, #0
 800992c:	4648      	mov	r0, r9
 800992e:	b006      	add	sp, #24
 8009930:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8009934:	2601      	movs	r6, #1
 8009936:	f241 3788 	movw	r7, #5000	; 0x1388
 800993a:	e9cd 6701 	strd	r6, r7, [sp, #4]
 800993e:	f100 0325 	add.w	r3, r0, #37	; 0x25
 8009942:	9300      	str	r3, [sp, #0]
 8009944:	4604      	mov	r4, r0
 8009946:	460d      	mov	r5, r1
 8009948:	69c0      	ldr	r0, [r0, #28]
 800994a:	4633      	mov	r3, r6
 800994c:	22d0      	movs	r2, #208	; 0xd0
 800994e:	21ec      	movs	r1, #236	; 0xec
 8009950:	f7fe f99a 	bl	8007c88 <HAL_I2C_Mem_Read>
 8009954:	4681      	mov	r9, r0
 8009956:	2800      	cmp	r0, #0
 8009958:	d1e6      	bne.n	8009928 <BMP280_init+0xc>
 800995a:	f894 3025 	ldrb.w	r3, [r4, #37]	; 0x25
 800995e:	2b58      	cmp	r3, #88	; 0x58
 8009960:	d1e2      	bne.n	8009928 <BMP280_init+0xc>
 8009962:	9601      	str	r6, [sp, #4]
 8009964:	8b21      	ldrh	r1, [r4, #24]
 8009966:	f242 7310 	movw	r3, #10000	; 0x2710
 800996a:	f10d 0814 	add.w	r8, sp, #20
 800996e:	9302      	str	r3, [sp, #8]
 8009970:	40b1      	lsls	r1, r6
 8009972:	23b6      	movs	r3, #182	; 0xb6
 8009974:	f8cd 8000 	str.w	r8, [sp]
 8009978:	f88d 3014 	strb.w	r3, [sp, #20]
 800997c:	69e0      	ldr	r0, [r4, #28]
 800997e:	b289      	uxth	r1, r1
 8009980:	4633      	mov	r3, r6
 8009982:	22e0      	movs	r2, #224	; 0xe0
 8009984:	f7fe f882 	bl	8007a8c <HAL_I2C_Mem_Write>
 8009988:	2800      	cmp	r0, #0
 800998a:	d1cf      	bne.n	800992c <BMP280_init+0x10>
 800998c:	e9cd 6701 	strd	r6, r7, [sp, #4]
 8009990:	f8cd 8000 	str.w	r8, [sp]
 8009994:	8b23      	ldrh	r3, [r4, #24]
 8009996:	69e0      	ldr	r0, [r4, #28]
 8009998:	005b      	lsls	r3, r3, #1
 800999a:	b299      	uxth	r1, r3
 800999c:	22f3      	movs	r2, #243	; 0xf3
 800999e:	2301      	movs	r3, #1
 80099a0:	f7fe f972 	bl	8007c88 <HAL_I2C_Mem_Read>
 80099a4:	f89d 3014 	ldrb.w	r3, [sp, #20]
 80099a8:	f003 0301 	and.w	r3, r3, #1
 80099ac:	4318      	orrs	r0, r3
 80099ae:	f010 09ff 	ands.w	r9, r0, #255	; 0xff
 80099b2:	d1eb      	bne.n	800998c <BMP280_init+0x70>
 80099b4:	9702      	str	r7, [sp, #8]
 80099b6:	f8cd 8000 	str.w	r8, [sp]
 80099ba:	8b21      	ldrh	r1, [r4, #24]
 80099bc:	2602      	movs	r6, #2
 80099be:	0049      	lsls	r1, r1, #1
 80099c0:	9601      	str	r6, [sp, #4]
 80099c2:	69e0      	ldr	r0, [r4, #28]
 80099c4:	b289      	uxth	r1, r1
 80099c6:	2301      	movs	r3, #1
 80099c8:	2288      	movs	r2, #136	; 0x88
 80099ca:	f7fe f95d 	bl	8007c88 <HAL_I2C_Mem_Read>
 80099ce:	2800      	cmp	r0, #0
 80099d0:	d1ac      	bne.n	800992c <BMP280_init+0x10>
 80099d2:	e9cd 6701 	strd	r6, r7, [sp, #4]
 80099d6:	f8cd 8000 	str.w	r8, [sp]
 80099da:	8b21      	ldrh	r1, [r4, #24]
 80099dc:	f8bd 3014 	ldrh.w	r3, [sp, #20]
 80099e0:	8023      	strh	r3, [r4, #0]
 80099e2:	0049      	lsls	r1, r1, #1
 80099e4:	69e0      	ldr	r0, [r4, #28]
 80099e6:	b289      	uxth	r1, r1
 80099e8:	2301      	movs	r3, #1
 80099ea:	228a      	movs	r2, #138	; 0x8a
 80099ec:	f7fe f94c 	bl	8007c88 <HAL_I2C_Mem_Read>
 80099f0:	4681      	mov	r9, r0
 80099f2:	2800      	cmp	r0, #0
 80099f4:	d198      	bne.n	8009928 <BMP280_init+0xc>
 80099f6:	e9cd 6701 	strd	r6, r7, [sp, #4]
 80099fa:	f8cd 8000 	str.w	r8, [sp]
 80099fe:	8b21      	ldrh	r1, [r4, #24]
 8009a00:	f8bd 3014 	ldrh.w	r3, [sp, #20]
 8009a04:	8063      	strh	r3, [r4, #2]
 8009a06:	0049      	lsls	r1, r1, #1
 8009a08:	69e0      	ldr	r0, [r4, #28]
 8009a0a:	b289      	uxth	r1, r1
 8009a0c:	2301      	movs	r3, #1
 8009a0e:	228c      	movs	r2, #140	; 0x8c
 8009a10:	f7fe f93a 	bl	8007c88 <HAL_I2C_Mem_Read>
 8009a14:	2800      	cmp	r0, #0
 8009a16:	d189      	bne.n	800992c <BMP280_init+0x10>
 8009a18:	e9cd 6701 	strd	r6, r7, [sp, #4]
 8009a1c:	f8cd 8000 	str.w	r8, [sp]
 8009a20:	8b21      	ldrh	r1, [r4, #24]
 8009a22:	f8bd 3014 	ldrh.w	r3, [sp, #20]
 8009a26:	80a3      	strh	r3, [r4, #4]
 8009a28:	0049      	lsls	r1, r1, #1
 8009a2a:	69e0      	ldr	r0, [r4, #28]
 8009a2c:	b289      	uxth	r1, r1
 8009a2e:	2301      	movs	r3, #1
 8009a30:	228e      	movs	r2, #142	; 0x8e
 8009a32:	f7fe f929 	bl	8007c88 <HAL_I2C_Mem_Read>
 8009a36:	4681      	mov	r9, r0
 8009a38:	2800      	cmp	r0, #0
 8009a3a:	f47f af75 	bne.w	8009928 <BMP280_init+0xc>
 8009a3e:	e9cd 6701 	strd	r6, r7, [sp, #4]
 8009a42:	f8cd 8000 	str.w	r8, [sp]
 8009a46:	8b21      	ldrh	r1, [r4, #24]
 8009a48:	f8bd 3014 	ldrh.w	r3, [sp, #20]
 8009a4c:	80e3      	strh	r3, [r4, #6]
 8009a4e:	0049      	lsls	r1, r1, #1
 8009a50:	69e0      	ldr	r0, [r4, #28]
 8009a52:	b289      	uxth	r1, r1
 8009a54:	2301      	movs	r3, #1
 8009a56:	2290      	movs	r2, #144	; 0x90
 8009a58:	f7fe f916 	bl	8007c88 <HAL_I2C_Mem_Read>
 8009a5c:	2800      	cmp	r0, #0
 8009a5e:	f47f af65 	bne.w	800992c <BMP280_init+0x10>
 8009a62:	e9cd 6701 	strd	r6, r7, [sp, #4]
 8009a66:	f8cd 8000 	str.w	r8, [sp]
 8009a6a:	8b21      	ldrh	r1, [r4, #24]
 8009a6c:	f8bd 2014 	ldrh.w	r2, [sp, #20]
 8009a70:	8122      	strh	r2, [r4, #8]
 8009a72:	2301      	movs	r3, #1
 8009a74:	4099      	lsls	r1, r3
 8009a76:	69e0      	ldr	r0, [r4, #28]
 8009a78:	b289      	uxth	r1, r1
 8009a7a:	2292      	movs	r2, #146	; 0x92
 8009a7c:	f7fe f904 	bl	8007c88 <HAL_I2C_Mem_Read>
 8009a80:	2800      	cmp	r0, #0
 8009a82:	f47f af51 	bne.w	8009928 <BMP280_init+0xc>
 8009a86:	f8bd 3014 	ldrh.w	r3, [sp, #20]
 8009a8a:	8163      	strh	r3, [r4, #10]
 8009a8c:	69e1      	ldr	r1, [r4, #28]
 8009a8e:	8b20      	ldrh	r0, [r4, #24]
 8009a90:	f104 030c 	add.w	r3, r4, #12
 8009a94:	2294      	movs	r2, #148	; 0x94
 8009a96:	f7ff ff1b 	bl	80098d0 <read_register.isra.0>
 8009a9a:	2800      	cmp	r0, #0
 8009a9c:	f43f af44 	beq.w	8009928 <BMP280_init+0xc>
 8009aa0:	69e1      	ldr	r1, [r4, #28]
 8009aa2:	8b20      	ldrh	r0, [r4, #24]
 8009aa4:	f104 030e 	add.w	r3, r4, #14
 8009aa8:	2296      	movs	r2, #150	; 0x96
 8009aaa:	f7ff ff11 	bl	80098d0 <read_register.isra.0>
 8009aae:	2800      	cmp	r0, #0
 8009ab0:	f43f af3a 	beq.w	8009928 <BMP280_init+0xc>
 8009ab4:	69e1      	ldr	r1, [r4, #28]
 8009ab6:	8b20      	ldrh	r0, [r4, #24]
 8009ab8:	f104 0310 	add.w	r3, r4, #16
 8009abc:	2298      	movs	r2, #152	; 0x98
 8009abe:	f7ff ff07 	bl	80098d0 <read_register.isra.0>
 8009ac2:	2800      	cmp	r0, #0
 8009ac4:	f43f af30 	beq.w	8009928 <BMP280_init+0xc>
 8009ac8:	69e1      	ldr	r1, [r4, #28]
 8009aca:	8b20      	ldrh	r0, [r4, #24]
 8009acc:	f104 0312 	add.w	r3, r4, #18
 8009ad0:	229a      	movs	r2, #154	; 0x9a
 8009ad2:	f7ff fefd 	bl	80098d0 <read_register.isra.0>
 8009ad6:	2800      	cmp	r0, #0
 8009ad8:	f43f af26 	beq.w	8009928 <BMP280_init+0xc>
 8009adc:	69e1      	ldr	r1, [r4, #28]
 8009ade:	8b20      	ldrh	r0, [r4, #24]
 8009ae0:	f104 0314 	add.w	r3, r4, #20
 8009ae4:	229c      	movs	r2, #156	; 0x9c
 8009ae6:	f7ff fef3 	bl	80098d0 <read_register.isra.0>
 8009aea:	2800      	cmp	r0, #0
 8009aec:	f43f af1c 	beq.w	8009928 <BMP280_init+0xc>
 8009af0:	69e1      	ldr	r1, [r4, #28]
 8009af2:	8b20      	ldrh	r0, [r4, #24]
 8009af4:	f104 0316 	add.w	r3, r4, #22
 8009af8:	229e      	movs	r2, #158	; 0x9e
 8009afa:	f7ff fee9 	bl	80098d0 <read_register.isra.0>
 8009afe:	4681      	mov	r9, r0
 8009b00:	2800      	cmp	r0, #0
 8009b02:	f43f af11 	beq.w	8009928 <BMP280_init+0xc>
 8009b06:	8b21      	ldrh	r1, [r4, #24]
 8009b08:	f8cd 8000 	str.w	r8, [sp]
 8009b0c:	786b      	ldrb	r3, [r5, #1]
 8009b0e:	792a      	ldrb	r2, [r5, #4]
 8009b10:	009b      	lsls	r3, r3, #2
 8009b12:	ea43 1342 	orr.w	r3, r3, r2, lsl #5
 8009b16:	f88d 3014 	strb.w	r3, [sp, #20]
 8009b1a:	f242 7210 	movw	r2, #10000	; 0x2710
 8009b1e:	2301      	movs	r3, #1
 8009b20:	e9cd 3201 	strd	r3, r2, [sp, #4]
 8009b24:	0049      	lsls	r1, r1, #1
 8009b26:	69e0      	ldr	r0, [r4, #28]
 8009b28:	b289      	uxth	r1, r1
 8009b2a:	22f5      	movs	r2, #245	; 0xf5
 8009b2c:	f7fd ffae 	bl	8007a8c <HAL_I2C_Mem_Write>
 8009b30:	2800      	cmp	r0, #0
 8009b32:	f47f aef9 	bne.w	8009928 <BMP280_init+0xc>
 8009b36:	782a      	ldrb	r2, [r5, #0]
 8009b38:	2a01      	cmp	r2, #1
 8009b3a:	bf08      	it	eq
 8009b3c:	7028      	strbeq	r0, [r5, #0]
 8009b3e:	f8cd 8000 	str.w	r8, [sp]
 8009b42:	78ab      	ldrb	r3, [r5, #2]
 8009b44:	8b21      	ldrh	r1, [r4, #24]
 8009b46:	bf08      	it	eq
 8009b48:	4602      	moveq	r2, r0
 8009b4a:	69e0      	ldr	r0, [r4, #28]
 8009b4c:	78ec      	ldrb	r4, [r5, #3]
 8009b4e:	ea4f 0383 	mov.w	r3, r3, lsl #2
 8009b52:	bf18      	it	ne
 8009b54:	b252      	sxtbne	r2, r2
 8009b56:	ea43 1344 	orr.w	r3, r3, r4, lsl #5
 8009b5a:	431a      	orrs	r2, r3
 8009b5c:	0049      	lsls	r1, r1, #1
 8009b5e:	2301      	movs	r3, #1
 8009b60:	f242 7410 	movw	r4, #10000	; 0x2710
 8009b64:	f88d 2014 	strb.w	r2, [sp, #20]
 8009b68:	e9cd 3401 	strd	r3, r4, [sp, #4]
 8009b6c:	b289      	uxth	r1, r1
 8009b6e:	22f4      	movs	r2, #244	; 0xf4
 8009b70:	f7fd ff8c 	bl	8007a8c <HAL_I2C_Mem_Write>
 8009b74:	2800      	cmp	r0, #0
 8009b76:	bf18      	it	ne
 8009b78:	f04f 0900 	movne.w	r9, #0
 8009b7c:	e6d6      	b.n	800992c <BMP280_init+0x10>
 8009b7e:	bf00      	nop

08009b80 <BMP280_read_pressure>:
 8009b80:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8009b84:	f241 3288 	movw	r2, #5000	; 0x1388
 8009b88:	b087      	sub	sp, #28
 8009b8a:	4604      	mov	r4, r0
 8009b8c:	2306      	movs	r3, #6
 8009b8e:	8b00      	ldrh	r0, [r0, #24]
 8009b90:	e9cd 3201 	strd	r3, r2, [sp, #4]
 8009b94:	0040      	lsls	r0, r0, #1
 8009b96:	ab04      	add	r3, sp, #16
 8009b98:	b280      	uxth	r0, r0
 8009b9a:	9300      	str	r3, [sp, #0]
 8009b9c:	460d      	mov	r5, r1
 8009b9e:	2301      	movs	r3, #1
 8009ba0:	4601      	mov	r1, r0
 8009ba2:	22f7      	movs	r2, #247	; 0xf7
 8009ba4:	69e0      	ldr	r0, [r4, #28]
 8009ba6:	f7fe f86f 	bl	8007c88 <HAL_I2C_Mem_Read>
 8009baa:	b118      	cbz	r0, 8009bb4 <BMP280_read_pressure+0x34>
 8009bac:	2000      	movs	r0, #0
 8009bae:	b007      	add	sp, #28
 8009bb0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8009bb4:	f9b4 600a 	ldrsh.w	r6, [r4, #10]
 8009bb8:	f8b4 e006 	ldrh.w	lr, [r4, #6]
 8009bbc:	ea4f 7ce6 	mov.w	ip, r6, asr #31
 8009bc0:	0173      	lsls	r3, r6, #5
 8009bc2:	ea4f 124c 	mov.w	r2, ip, lsl #5
 8009bc6:	1b99      	subs	r1, r3, r6
 8009bc8:	ea42 62d6 	orr.w	r2, r2, r6, lsr #27
 8009bcc:	eb62 070c 	sbc.w	r7, r2, ip
 8009bd0:	01ba      	lsls	r2, r7, #6
 8009bd2:	018b      	lsls	r3, r1, #6
 8009bd4:	1a5b      	subs	r3, r3, r1
 8009bd6:	ea42 6291 	orr.w	r2, r2, r1, lsr #26
 8009bda:	eb62 0207 	sbc.w	r2, r2, r7
 8009bde:	00d2      	lsls	r2, r2, #3
 8009be0:	f9b4 7008 	ldrsh.w	r7, [r4, #8]
 8009be4:	ea42 7253 	orr.w	r2, r2, r3, lsr #29
 8009be8:	00db      	lsls	r3, r3, #3
 8009bea:	199b      	adds	r3, r3, r6
 8009bec:	ea4f 76e7 	mov.w	r6, r7, asr #31
 8009bf0:	eb4c 0c02 	adc.w	ip, ip, r2
 8009bf4:	0171      	lsls	r1, r6, #5
 8009bf6:	017a      	lsls	r2, r7, #5
 8009bf8:	1aba      	subs	r2, r7, r2
 8009bfa:	ea41 61d7 	orr.w	r1, r1, r7, lsr #27
 8009bfe:	eb66 0101 	sbc.w	r1, r6, r1
 8009c02:	0089      	lsls	r1, r1, #2
 8009c04:	ea41 7192 	orr.w	r1, r1, r2, lsr #30
 8009c08:	0092      	lsls	r2, r2, #2
 8009c0a:	1bd2      	subs	r2, r2, r7
 8009c0c:	ea4f 5c0c 	mov.w	ip, ip, lsl #20
 8009c10:	ea4c 3c13 	orr.w	ip, ip, r3, lsr #12
 8009c14:	eb61 0106 	sbc.w	r1, r1, r6
 8009c18:	051b      	lsls	r3, r3, #20
 8009c1a:	0a1b      	lsrs	r3, r3, #8
 8009c1c:	0289      	lsls	r1, r1, #10
 8009c1e:	ea41 5192 	orr.w	r1, r1, r2, lsr #22
 8009c22:	ea43 630c 	orr.w	r3, r3, ip, lsl #24
 8009c26:	f3c2 268b 	ubfx	r6, r2, #10, #12
 8009c2a:	0592      	lsls	r2, r2, #22
 8009c2c:	189a      	adds	r2, r3, r2
 8009c2e:	ea46 3601 	orr.w	r6, r6, r1, lsl #12
 8009c32:	eb46 262c 	adc.w	r6, r6, ip, asr #8
 8009c36:	fba2 230e 	umull	r2, r3, r2, lr
 8009c3a:	f506 4600 	add.w	r6, r6, #32768	; 0x8000
 8009c3e:	fb0e 3606 	mla	r6, lr, r6, r3
 8009c42:	17f3      	asrs	r3, r6, #31
 8009c44:	ea53 0166 	orrs.w	r1, r3, r6, asr #1
 8009c48:	ea4f 0266 	mov.w	r2, r6, asr #1
 8009c4c:	f000 80c6 	beq.w	8009ddc <BMP280_read_pressure+0x25c>
 8009c50:	f9b4 c010 	ldrsh.w	ip, [r4, #16]
 8009c54:	f9b4 700e 	ldrsh.w	r7, [r4, #14]
 8009c58:	ea4f 7eec 	mov.w	lr, ip, asr #31
 8009c5c:	ea4f 114c 	mov.w	r1, ip, lsl #5
 8009c60:	ea4f 164e 	mov.w	r6, lr, lsl #5
 8009c64:	ebb1 080c 	subs.w	r8, r1, ip
 8009c68:	ea46 66dc 	orr.w	r6, r6, ip, lsr #27
 8009c6c:	eb66 090e 	sbc.w	r9, r6, lr
 8009c70:	ea4f 1689 	mov.w	r6, r9, lsl #6
 8009c74:	ea4f 1188 	mov.w	r1, r8, lsl #6
 8009c78:	ebb1 0108 	subs.w	r1, r1, r8
 8009c7c:	ea46 6698 	orr.w	r6, r6, r8, lsr #26
 8009c80:	eb66 0609 	sbc.w	r6, r6, r9
 8009c84:	00f6      	lsls	r6, r6, #3
 8009c86:	ea46 7651 	orr.w	r6, r6, r1, lsr #29
 8009c8a:	00c9      	lsls	r1, r1, #3
 8009c8c:	eb11 010c 	adds.w	r1, r1, ip
 8009c90:	eb4e 0e06 	adc.w	lr, lr, r6
 8009c94:	ea4f 5e0e 	mov.w	lr, lr, lsl #20
 8009c98:	ea4f 5c01 	mov.w	ip, r1, lsl #20
 8009c9c:	ea4e 3e11 	orr.w	lr, lr, r1, lsr #12
 8009ca0:	17f9      	asrs	r1, r7, #31
 8009ca2:	014e      	lsls	r6, r1, #5
 8009ca4:	ea4f 1847 	mov.w	r8, r7, lsl #5
 8009ca8:	ebb7 0808 	subs.w	r8, r7, r8
 8009cac:	ea46 66d7 	orr.w	r6, r6, r7, lsr #27
 8009cb0:	eb61 0606 	sbc.w	r6, r1, r6
 8009cb4:	00b6      	lsls	r6, r6, #2
 8009cb6:	ea46 7698 	orr.w	r6, r6, r8, lsr #30
 8009cba:	ea4f 0888 	mov.w	r8, r8, lsl #2
 8009cbe:	ebb8 0707 	subs.w	r7, r8, r7
 8009cc2:	eb66 0601 	sbc.w	r6, r6, r1
 8009cc6:	f89d 8012 	ldrb.w	r8, [sp, #18]
 8009cca:	02b1      	lsls	r1, r6, #10
 8009ccc:	f89d 6011 	ldrb.w	r6, [sp, #17]
 8009cd0:	ea4f 1818 	mov.w	r8, r8, lsr #4
 8009cd4:	ea48 1806 	orr.w	r8, r8, r6, lsl #4
 8009cd8:	f89d 6010 	ldrb.w	r6, [sp, #16]
 8009cdc:	ea41 5197 	orr.w	r1, r1, r7, lsr #22
 8009ce0:	ea48 3806 	orr.w	r8, r8, r6, lsl #12
 8009ce4:	f3c7 1950 	ubfx	r9, r7, #5, #17
 8009ce8:	06fe      	lsls	r6, r7, #27
 8009cea:	ea49 4941 	orr.w	r9, r9, r1, lsl #17
 8009cee:	eb16 010c 	adds.w	r1, r6, ip
 8009cf2:	eb4e 0e09 	adc.w	lr, lr, r9
 8009cf6:	1840      	adds	r0, r0, r1
 8009cf8:	f9b4 100c 	ldrsh.w	r1, [r4, #12]
 8009cfc:	f5c8 1880 	rsb	r8, r8, #1048576	; 0x100000
 8009d00:	eb0e 0ec1 	add.w	lr, lr, r1, lsl #3
 8009d04:	f008 4100 	and.w	r1, r8, #2147483648	; 0x80000000
 8009d08:	ea41 0158 	orr.w	r1, r1, r8, lsr #1
 8009d0c:	ea4f 78c8 	mov.w	r8, r8, lsl #31
 8009d10:	ebb8 0000 	subs.w	r0, r8, r0
 8009d14:	eb61 0e0e 	sbc.w	lr, r1, lr
 8009d18:	eb10 0c00 	adds.w	ip, r0, r0
 8009d1c:	eb4e 010e 	adc.w	r1, lr, lr
 8009d20:	eb1c 0c00 	adds.w	ip, ip, r0
 8009d24:	eb4e 0101 	adc.w	r1, lr, r1
 8009d28:	018e      	lsls	r6, r1, #6
 8009d2a:	ea4f 178c 	mov.w	r7, ip, lsl #6
 8009d2e:	ea46 669c 	orr.w	r6, r6, ip, lsr #26
 8009d32:	eb1c 0c07 	adds.w	ip, ip, r7
 8009d36:	eb41 0106 	adc.w	r1, r1, r6
 8009d3a:	0089      	lsls	r1, r1, #2
 8009d3c:	ea41 719c 	orr.w	r1, r1, ip, lsr #30
 8009d40:	ea4f 0c8c 	mov.w	ip, ip, lsl #2
 8009d44:	eb1c 0c00 	adds.w	ip, ip, r0
 8009d48:	eb4e 0101 	adc.w	r1, lr, r1
 8009d4c:	0089      	lsls	r1, r1, #2
 8009d4e:	ea41 719c 	orr.w	r1, r1, ip, lsr #30
 8009d52:	ea4f 0c8c 	mov.w	ip, ip, lsl #2
 8009d56:	eb1c 0000 	adds.w	r0, ip, r0
 8009d5a:	eb4e 0101 	adc.w	r1, lr, r1
 8009d5e:	f7f9 f92d 	bl	8002fbc <__aeabi_ldivmod>
 8009d62:	f9b4 2016 	ldrsh.w	r2, [r4, #22]
 8009d66:	ea4f 3c61 	mov.w	ip, r1, asr #13
 8009d6a:	0b43      	lsrs	r3, r0, #13
 8009d6c:	ea43 43c1 	orr.w	r3, r3, r1, lsl #19
 8009d70:	17d7      	asrs	r7, r2, #31
 8009d72:	fb02 f60c 	mul.w	r6, r2, ip
 8009d76:	fb03 6607 	mla	r6, r3, r7, r6
 8009d7a:	fba2 2e03 	umull	r2, lr, r2, r3
 8009d7e:	4476      	add	r6, lr
 8009d80:	fb02 fc0c 	mul.w	ip, r2, ip
 8009d84:	fb03 cc06 	mla	ip, r3, r6, ip
 8009d88:	fba2 2603 	umull	r2, r6, r2, r3
 8009d8c:	4466      	add	r6, ip
 8009d8e:	0e53      	lsrs	r3, r2, #25
 8009d90:	f9b4 7014 	ldrsh.w	r7, [r4, #20]
 8009d94:	f9b4 4012 	ldrsh.w	r4, [r4, #18]
 8009d98:	ea43 13c6 	orr.w	r3, r3, r6, lsl #7
 8009d9c:	181b      	adds	r3, r3, r0
 8009d9e:	eb41 6666 	adc.w	r6, r1, r6, asr #25
 8009da2:	17fa      	asrs	r2, r7, #31
 8009da4:	fb07 f101 	mul.w	r1, r7, r1
 8009da8:	fb02 1100 	mla	r1, r2, r0, r1
 8009dac:	fba7 0700 	umull	r0, r7, r7, r0
 8009db0:	4439      	add	r1, r7
 8009db2:	0cc0      	lsrs	r0, r0, #19
 8009db4:	ea40 3041 	orr.w	r0, r0, r1, lsl #13
 8009db8:	181b      	adds	r3, r3, r0
 8009dba:	eb46 41e1 	adc.w	r1, r6, r1, asr #19
 8009dbe:	0a1b      	lsrs	r3, r3, #8
 8009dc0:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
 8009dc4:	eb03 1304 	add.w	r3, r3, r4, lsl #4
 8009dc8:	ee07 3a90 	vmov	s15, r3
 8009dcc:	eefb 7acc 	vcvt.f32.u32	s15, s15, #8
 8009dd0:	2001      	movs	r0, #1
 8009dd2:	edc5 7a00 	vstr	s15, [r5]
 8009dd6:	b007      	add	sp, #28
 8009dd8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8009ddc:	eddf 7a01 	vldr	s15, [pc, #4]	; 8009de4 <BMP280_read_pressure+0x264>
 8009de0:	e7f6      	b.n	8009dd0 <BMP280_read_pressure+0x250>
 8009de2:	bf00      	nop
 8009de4:	00000000 	.word	0x00000000

08009de8 <BMP280_read_temperature>:
 8009de8:	b530      	push	{r4, r5, lr}
 8009dea:	f241 3288 	movw	r2, #5000	; 0x1388
 8009dee:	b087      	sub	sp, #28
 8009df0:	4605      	mov	r5, r0
 8009df2:	2304      	movs	r3, #4
 8009df4:	8b00      	ldrh	r0, [r0, #24]
 8009df6:	e9cd 3201 	strd	r3, r2, [sp, #4]
 8009dfa:	0040      	lsls	r0, r0, #1
 8009dfc:	ab04      	add	r3, sp, #16
 8009dfe:	b280      	uxth	r0, r0
 8009e00:	9300      	str	r3, [sp, #0]
 8009e02:	460c      	mov	r4, r1
 8009e04:	2301      	movs	r3, #1
 8009e06:	4601      	mov	r1, r0
 8009e08:	22f7      	movs	r2, #247	; 0xf7
 8009e0a:	69e8      	ldr	r0, [r5, #28]
 8009e0c:	f7fd ff3c 	bl	8007c88 <HAL_I2C_Mem_Read>
 8009e10:	b110      	cbz	r0, 8009e18 <BMP280_read_temperature+0x30>
 8009e12:	2000      	movs	r0, #0
 8009e14:	b007      	add	sp, #28
 8009e16:	bd30      	pop	{r4, r5, pc}
 8009e18:	f89d 2014 	ldrb.w	r2, [sp, #20]
 8009e1c:	f89d 3013 	ldrb.w	r3, [sp, #19]
 8009e20:	8829      	ldrh	r1, [r5, #0]
 8009e22:	f9b5 0002 	ldrsh.w	r0, [r5, #2]
 8009e26:	f9b5 5004 	ldrsh.w	r5, [r5, #4]
 8009e2a:	eddf 6a13 	vldr	s13, [pc, #76]	; 8009e78 <BMP280_read_temperature+0x90>
 8009e2e:	0112      	lsls	r2, r2, #4
 8009e30:	ea42 3203 	orr.w	r2, r2, r3, lsl #12
 8009e34:	f89d 3015 	ldrb.w	r3, [sp, #21]
 8009e38:	ea42 1313 	orr.w	r3, r2, r3, lsr #4
 8009e3c:	ebc1 1212 	rsb	r2, r1, r2, lsr #4
 8009e40:	fb02 f202 	mul.w	r2, r2, r2
 8009e44:	0049      	lsls	r1, r1, #1
 8009e46:	ebc1 01d3 	rsb	r1, r1, r3, lsr #3
 8009e4a:	1313      	asrs	r3, r2, #12
 8009e4c:	fb05 f303 	mul.w	r3, r5, r3
 8009e50:	fb00 f101 	mul.w	r1, r0, r1
 8009e54:	139b      	asrs	r3, r3, #14
 8009e56:	eb03 23e1 	add.w	r3, r3, r1, asr #11
 8009e5a:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 8009e5e:	3380      	adds	r3, #128	; 0x80
 8009e60:	121b      	asrs	r3, r3, #8
 8009e62:	ee07 3a90 	vmov	s15, r3
 8009e66:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8009e6a:	2001      	movs	r0, #1
 8009e6c:	ee87 7aa6 	vdiv.f32	s14, s15, s13
 8009e70:	ed84 7a00 	vstr	s14, [r4]
 8009e74:	b007      	add	sp, #28
 8009e76:	bd30      	pop	{r4, r5, pc}
 8009e78:	42c80000 	.word	0x42c80000

08009e7c <SIM800L_uart_callback>:
 8009e7c:	b510      	push	{r4, lr}
 8009e7e:	f7fc f8a5 	bl	8005fcc <HAL_GetTick>
 8009e82:	4a0b      	ldr	r2, [pc, #44]	; (8009eb0 <SIM800L_uart_callback+0x34>)
 8009e84:	490b      	ldr	r1, [pc, #44]	; (8009eb4 <SIM800L_uart_callback+0x38>)
 8009e86:	8813      	ldrh	r3, [r2, #0]
 8009e88:	6008      	str	r0, [r1, #0]
 8009e8a:	f5b3 7fff 	cmp.w	r3, #510	; 0x1fe
 8009e8e:	d802      	bhi.n	8009e96 <SIM800L_uart_callback+0x1a>
 8009e90:	3301      	adds	r3, #1
 8009e92:	b29b      	uxth	r3, r3
 8009e94:	8013      	strh	r3, [r2, #0]
 8009e96:	4908      	ldr	r1, [pc, #32]	; (8009eb8 <SIM800L_uart_callback+0x3c>)
 8009e98:	4c08      	ldr	r4, [pc, #32]	; (8009ebc <SIM800L_uart_callback+0x40>)
 8009e9a:	f891 c000 	ldrb.w	ip, [r1]
 8009e9e:	f804 c003 	strb.w	ip, [r4, r3]
 8009ea2:	4807      	ldr	r0, [pc, #28]	; (8009ec0 <SIM800L_uart_callback+0x44>)
 8009ea4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8009ea8:	2201      	movs	r2, #1
 8009eaa:	f7fc bccb 	b.w	8006844 <HAL_UART_Receive_IT>
 8009eae:	bf00      	nop
 8009eb0:	20000818 	.word	0x20000818
 8009eb4:	20000814 	.word	0x20000814
 8009eb8:	20000611 	.word	0x20000611
 8009ebc:	20000614 	.word	0x20000614
 8009ec0:	20000460 	.word	0x20000460

08009ec4 <vListInitialise>:
 8009ec4:	f100 0308 	add.w	r3, r0, #8
 8009ec8:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8009ecc:	2200      	movs	r2, #0
 8009ece:	e9c0 3101 	strd	r3, r1, [r0, #4]
 8009ed2:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8009ed6:	6002      	str	r2, [r0, #0]
 8009ed8:	4770      	bx	lr
 8009eda:	bf00      	nop

08009edc <vListInitialiseItem>:
 8009edc:	2300      	movs	r3, #0
 8009ede:	6103      	str	r3, [r0, #16]
 8009ee0:	4770      	bx	lr
 8009ee2:	bf00      	nop

08009ee4 <vListInsertEnd>:
 8009ee4:	6843      	ldr	r3, [r0, #4]
 8009ee6:	689a      	ldr	r2, [r3, #8]
 8009ee8:	608a      	str	r2, [r1, #8]
 8009eea:	6802      	ldr	r2, [r0, #0]
 8009eec:	b410      	push	{r4}
 8009eee:	689c      	ldr	r4, [r3, #8]
 8009ef0:	604b      	str	r3, [r1, #4]
 8009ef2:	3201      	adds	r2, #1
 8009ef4:	6061      	str	r1, [r4, #4]
 8009ef6:	6099      	str	r1, [r3, #8]
 8009ef8:	f85d 4b04 	ldr.w	r4, [sp], #4
 8009efc:	6108      	str	r0, [r1, #16]
 8009efe:	6002      	str	r2, [r0, #0]
 8009f00:	4770      	bx	lr
 8009f02:	bf00      	nop

08009f04 <vListInsert>:
 8009f04:	b430      	push	{r4, r5}
 8009f06:	680d      	ldr	r5, [r1, #0]
 8009f08:	1c6b      	adds	r3, r5, #1
 8009f0a:	d010      	beq.n	8009f2e <vListInsert+0x2a>
 8009f0c:	f100 0308 	add.w	r3, r0, #8
 8009f10:	461c      	mov	r4, r3
 8009f12:	685b      	ldr	r3, [r3, #4]
 8009f14:	681a      	ldr	r2, [r3, #0]
 8009f16:	42aa      	cmp	r2, r5
 8009f18:	d9fa      	bls.n	8009f10 <vListInsert+0xc>
 8009f1a:	6802      	ldr	r2, [r0, #0]
 8009f1c:	604b      	str	r3, [r1, #4]
 8009f1e:	3201      	adds	r2, #1
 8009f20:	6099      	str	r1, [r3, #8]
 8009f22:	608c      	str	r4, [r1, #8]
 8009f24:	6061      	str	r1, [r4, #4]
 8009f26:	6108      	str	r0, [r1, #16]
 8009f28:	bc30      	pop	{r4, r5}
 8009f2a:	6002      	str	r2, [r0, #0]
 8009f2c:	4770      	bx	lr
 8009f2e:	6904      	ldr	r4, [r0, #16]
 8009f30:	6863      	ldr	r3, [r4, #4]
 8009f32:	e7f2      	b.n	8009f1a <vListInsert+0x16>

08009f34 <uxListRemove>:
 8009f34:	6903      	ldr	r3, [r0, #16]
 8009f36:	b410      	push	{r4}
 8009f38:	e9d0 1201 	ldrd	r1, r2, [r0, #4]
 8009f3c:	685c      	ldr	r4, [r3, #4]
 8009f3e:	608a      	str	r2, [r1, #8]
 8009f40:	4284      	cmp	r4, r0
 8009f42:	6051      	str	r1, [r2, #4]
 8009f44:	bf08      	it	eq
 8009f46:	605a      	streq	r2, [r3, #4]
 8009f48:	681a      	ldr	r2, [r3, #0]
 8009f4a:	f85d 4b04 	ldr.w	r4, [sp], #4
 8009f4e:	2100      	movs	r1, #0
 8009f50:	3a01      	subs	r2, #1
 8009f52:	6101      	str	r1, [r0, #16]
 8009f54:	601a      	str	r2, [r3, #0]
 8009f56:	6818      	ldr	r0, [r3, #0]
 8009f58:	4770      	bx	lr
 8009f5a:	bf00      	nop

08009f5c <prvCopyDataToQueue>:
 8009f5c:	b570      	push	{r4, r5, r6, lr}
 8009f5e:	4604      	mov	r4, r0
 8009f60:	6c00      	ldr	r0, [r0, #64]	; 0x40
 8009f62:	6ba6      	ldr	r6, [r4, #56]	; 0x38
 8009f64:	b920      	cbnz	r0, 8009f70 <prvCopyDataToQueue+0x14>
 8009f66:	6825      	ldr	r5, [r4, #0]
 8009f68:	b34d      	cbz	r5, 8009fbe <prvCopyDataToQueue+0x62>
 8009f6a:	3601      	adds	r6, #1
 8009f6c:	63a6      	str	r6, [r4, #56]	; 0x38
 8009f6e:	bd70      	pop	{r4, r5, r6, pc}
 8009f70:	4615      	mov	r5, r2
 8009f72:	4602      	mov	r2, r0
 8009f74:	b97d      	cbnz	r5, 8009f96 <prvCopyDataToQueue+0x3a>
 8009f76:	6860      	ldr	r0, [r4, #4]
 8009f78:	f7f6 f978 	bl	800026c <memcpy>
 8009f7c:	6863      	ldr	r3, [r4, #4]
 8009f7e:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8009f80:	4413      	add	r3, r2
 8009f82:	68a2      	ldr	r2, [r4, #8]
 8009f84:	6063      	str	r3, [r4, #4]
 8009f86:	4293      	cmp	r3, r2
 8009f88:	bf24      	itt	cs
 8009f8a:	6823      	ldrcs	r3, [r4, #0]
 8009f8c:	6063      	strcs	r3, [r4, #4]
 8009f8e:	3601      	adds	r6, #1
 8009f90:	4628      	mov	r0, r5
 8009f92:	63a6      	str	r6, [r4, #56]	; 0x38
 8009f94:	bd70      	pop	{r4, r5, r6, pc}
 8009f96:	68e0      	ldr	r0, [r4, #12]
 8009f98:	f7f6 f968 	bl	800026c <memcpy>
 8009f9c:	6c22      	ldr	r2, [r4, #64]	; 0x40
 8009f9e:	68e3      	ldr	r3, [r4, #12]
 8009fa0:	4251      	negs	r1, r2
 8009fa2:	1a9b      	subs	r3, r3, r2
 8009fa4:	6822      	ldr	r2, [r4, #0]
 8009fa6:	60e3      	str	r3, [r4, #12]
 8009fa8:	4293      	cmp	r3, r2
 8009faa:	d202      	bcs.n	8009fb2 <prvCopyDataToQueue+0x56>
 8009fac:	68a3      	ldr	r3, [r4, #8]
 8009fae:	440b      	add	r3, r1
 8009fb0:	60e3      	str	r3, [r4, #12]
 8009fb2:	2d02      	cmp	r5, #2
 8009fb4:	d008      	beq.n	8009fc8 <prvCopyDataToQueue+0x6c>
 8009fb6:	3601      	adds	r6, #1
 8009fb8:	2000      	movs	r0, #0
 8009fba:	63a6      	str	r6, [r4, #56]	; 0x38
 8009fbc:	bd70      	pop	{r4, r5, r6, pc}
 8009fbe:	68a0      	ldr	r0, [r4, #8]
 8009fc0:	f001 fe38 	bl	800bc34 <xTaskPriorityDisinherit>
 8009fc4:	60a5      	str	r5, [r4, #8]
 8009fc6:	e7d0      	b.n	8009f6a <prvCopyDataToQueue+0xe>
 8009fc8:	2e01      	cmp	r6, #1
 8009fca:	bf38      	it	cc
 8009fcc:	2601      	movcc	r6, #1
 8009fce:	2000      	movs	r0, #0
 8009fd0:	e7cc      	b.n	8009f6c <prvCopyDataToQueue+0x10>
 8009fd2:	bf00      	nop

08009fd4 <xQueueGenericCreateStatic>:
 8009fd4:	b530      	push	{r4, r5, lr}
 8009fd6:	b083      	sub	sp, #12
 8009fd8:	f89d 4018 	ldrb.w	r4, [sp, #24]
 8009fdc:	b940      	cbnz	r0, 8009ff0 <xQueueGenericCreateStatic+0x1c>
 8009fde:	f04f 0350 	mov.w	r3, #80	; 0x50
 8009fe2:	f383 8811 	msr	BASEPRI, r3
 8009fe6:	f3bf 8f6f 	isb	sy
 8009fea:	f3bf 8f4f 	dsb	sy
 8009fee:	e7fe      	b.n	8009fee <xQueueGenericCreateStatic+0x1a>
 8009ff0:	461d      	mov	r5, r3
 8009ff2:	b17b      	cbz	r3, 800a014 <xQueueGenericCreateStatic+0x40>
 8009ff4:	b302      	cbz	r2, 800a038 <xQueueGenericCreateStatic+0x64>
 8009ff6:	b1b1      	cbz	r1, 800a026 <xQueueGenericCreateStatic+0x52>
 8009ff8:	2350      	movs	r3, #80	; 0x50
 8009ffa:	9301      	str	r3, [sp, #4]
 8009ffc:	9b01      	ldr	r3, [sp, #4]
 8009ffe:	2b50      	cmp	r3, #80	; 0x50
 800a000:	d027      	beq.n	800a052 <xQueueGenericCreateStatic+0x7e>
 800a002:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a006:	f383 8811 	msr	BASEPRI, r3
 800a00a:	f3bf 8f6f 	isb	sy
 800a00e:	f3bf 8f4f 	dsb	sy
 800a012:	e7fe      	b.n	800a012 <xQueueGenericCreateStatic+0x3e>
 800a014:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a018:	f383 8811 	msr	BASEPRI, r3
 800a01c:	f3bf 8f6f 	isb	sy
 800a020:	f3bf 8f4f 	dsb	sy
 800a024:	e7fe      	b.n	800a024 <xQueueGenericCreateStatic+0x50>
 800a026:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a02a:	f383 8811 	msr	BASEPRI, r3
 800a02e:	f3bf 8f6f 	isb	sy
 800a032:	f3bf 8f4f 	dsb	sy
 800a036:	e7fe      	b.n	800a036 <xQueueGenericCreateStatic+0x62>
 800a038:	2900      	cmp	r1, #0
 800a03a:	d135      	bne.n	800a0a8 <xQueueGenericCreateStatic+0xd4>
 800a03c:	2250      	movs	r2, #80	; 0x50
 800a03e:	9201      	str	r2, [sp, #4]
 800a040:	9a01      	ldr	r2, [sp, #4]
 800a042:	2a50      	cmp	r2, #80	; 0x50
 800a044:	d1dd      	bne.n	800a002 <xQueueGenericCreateStatic+0x2e>
 800a046:	2201      	movs	r2, #1
 800a048:	f885 2046 	strb.w	r2, [r5, #70]	; 0x46
 800a04c:	9b01      	ldr	r3, [sp, #4]
 800a04e:	462a      	mov	r2, r5
 800a050:	e004      	b.n	800a05c <xQueueGenericCreateStatic+0x88>
 800a052:	f04f 0c01 	mov.w	ip, #1
 800a056:	9b01      	ldr	r3, [sp, #4]
 800a058:	f885 c046 	strb.w	ip, [r5, #70]	; 0x46
 800a05c:	e9c5 010f 	strd	r0, r1, [r5, #60]	; 0x3c
 800a060:	602a      	str	r2, [r5, #0]
 800a062:	f002 f9ff 	bl	800c464 <vPortEnterCritical>
 800a066:	e9d5 120f 	ldrd	r1, r2, [r5, #60]	; 0x3c
 800a06a:	6828      	ldr	r0, [r5, #0]
 800a06c:	6068      	str	r0, [r5, #4]
 800a06e:	fb02 f101 	mul.w	r1, r2, r1
 800a072:	1a8a      	subs	r2, r1, r2
 800a074:	4401      	add	r1, r0
 800a076:	60a9      	str	r1, [r5, #8]
 800a078:	2100      	movs	r1, #0
 800a07a:	4402      	add	r2, r0
 800a07c:	63a9      	str	r1, [r5, #56]	; 0x38
 800a07e:	21ff      	movs	r1, #255	; 0xff
 800a080:	f885 1044 	strb.w	r1, [r5, #68]	; 0x44
 800a084:	60ea      	str	r2, [r5, #12]
 800a086:	f885 1045 	strb.w	r1, [r5, #69]	; 0x45
 800a08a:	f105 0010 	add.w	r0, r5, #16
 800a08e:	f7ff ff19 	bl	8009ec4 <vListInitialise>
 800a092:	f105 0024 	add.w	r0, r5, #36	; 0x24
 800a096:	f7ff ff15 	bl	8009ec4 <vListInitialise>
 800a09a:	f002 fa05 	bl	800c4a8 <vPortExitCritical>
 800a09e:	4628      	mov	r0, r5
 800a0a0:	f885 404c 	strb.w	r4, [r5, #76]	; 0x4c
 800a0a4:	b003      	add	sp, #12
 800a0a6:	bd30      	pop	{r4, r5, pc}
 800a0a8:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a0ac:	f383 8811 	msr	BASEPRI, r3
 800a0b0:	f3bf 8f6f 	isb	sy
 800a0b4:	f3bf 8f4f 	dsb	sy
 800a0b8:	e7fe      	b.n	800a0b8 <xQueueGenericCreateStatic+0xe4>
 800a0ba:	bf00      	nop

0800a0bc <xQueueGenericCreate>:
 800a0bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a0be:	b940      	cbnz	r0, 800a0d2 <xQueueGenericCreate+0x16>
 800a0c0:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a0c4:	f383 8811 	msr	BASEPRI, r3
 800a0c8:	f3bf 8f6f 	isb	sy
 800a0cc:	f3bf 8f4f 	dsb	sy
 800a0d0:	e7fe      	b.n	800a0d0 <xQueueGenericCreate+0x14>
 800a0d2:	4605      	mov	r5, r0
 800a0d4:	fb01 f000 	mul.w	r0, r1, r0
 800a0d8:	3050      	adds	r0, #80	; 0x50
 800a0da:	460e      	mov	r6, r1
 800a0dc:	4617      	mov	r7, r2
 800a0de:	f002 f83d 	bl	800c15c <pvPortMalloc>
 800a0e2:	4604      	mov	r4, r0
 800a0e4:	b340      	cbz	r0, 800a138 <xQueueGenericCreate+0x7c>
 800a0e6:	2300      	movs	r3, #0
 800a0e8:	f880 3046 	strb.w	r3, [r0, #70]	; 0x46
 800a0ec:	b336      	cbz	r6, 800a13c <xQueueGenericCreate+0x80>
 800a0ee:	f100 0350 	add.w	r3, r0, #80	; 0x50
 800a0f2:	6023      	str	r3, [r4, #0]
 800a0f4:	e9c4 560f 	strd	r5, r6, [r4, #60]	; 0x3c
 800a0f8:	f002 f9b4 	bl	800c464 <vPortEnterCritical>
 800a0fc:	e9d4 230f 	ldrd	r2, r3, [r4, #60]	; 0x3c
 800a100:	6821      	ldr	r1, [r4, #0]
 800a102:	6061      	str	r1, [r4, #4]
 800a104:	fb03 f202 	mul.w	r2, r3, r2
 800a108:	1ad3      	subs	r3, r2, r3
 800a10a:	440a      	add	r2, r1
 800a10c:	60a2      	str	r2, [r4, #8]
 800a10e:	2200      	movs	r2, #0
 800a110:	440b      	add	r3, r1
 800a112:	63a2      	str	r2, [r4, #56]	; 0x38
 800a114:	22ff      	movs	r2, #255	; 0xff
 800a116:	f884 2044 	strb.w	r2, [r4, #68]	; 0x44
 800a11a:	60e3      	str	r3, [r4, #12]
 800a11c:	f884 2045 	strb.w	r2, [r4, #69]	; 0x45
 800a120:	f104 0010 	add.w	r0, r4, #16
 800a124:	f7ff fece 	bl	8009ec4 <vListInitialise>
 800a128:	f104 0024 	add.w	r0, r4, #36	; 0x24
 800a12c:	f7ff feca 	bl	8009ec4 <vListInitialise>
 800a130:	f002 f9ba 	bl	800c4a8 <vPortExitCritical>
 800a134:	f884 704c 	strb.w	r7, [r4, #76]	; 0x4c
 800a138:	4620      	mov	r0, r4
 800a13a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800a13c:	4603      	mov	r3, r0
 800a13e:	e7d8      	b.n	800a0f2 <xQueueGenericCreate+0x36>

0800a140 <xQueueCreateCountingSemaphoreStatic>:
 800a140:	b940      	cbnz	r0, 800a154 <xQueueCreateCountingSemaphoreStatic+0x14>
 800a142:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a146:	f383 8811 	msr	BASEPRI, r3
 800a14a:	f3bf 8f6f 	isb	sy
 800a14e:	f3bf 8f4f 	dsb	sy
 800a152:	e7fe      	b.n	800a152 <xQueueCreateCountingSemaphoreStatic+0x12>
 800a154:	4288      	cmp	r0, r1
 800a156:	d208      	bcs.n	800a16a <xQueueCreateCountingSemaphoreStatic+0x2a>
 800a158:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a15c:	f383 8811 	msr	BASEPRI, r3
 800a160:	f3bf 8f6f 	isb	sy
 800a164:	f3bf 8f4f 	dsb	sy
 800a168:	e7fe      	b.n	800a168 <xQueueCreateCountingSemaphoreStatic+0x28>
 800a16a:	b530      	push	{r4, r5, lr}
 800a16c:	4615      	mov	r5, r2
 800a16e:	b085      	sub	sp, #20
 800a170:	2a00      	cmp	r2, #0
 800a172:	d03c      	beq.n	800a1ee <xQueueCreateCountingSemaphoreStatic+0xae>
 800a174:	2350      	movs	r3, #80	; 0x50
 800a176:	9303      	str	r3, [sp, #12]
 800a178:	9b03      	ldr	r3, [sp, #12]
 800a17a:	2b50      	cmp	r3, #80	; 0x50
 800a17c:	d008      	beq.n	800a190 <xQueueCreateCountingSemaphoreStatic+0x50>
 800a17e:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a182:	f383 8811 	msr	BASEPRI, r3
 800a186:	f3bf 8f6f 	isb	sy
 800a18a:	f3bf 8f4f 	dsb	sy
 800a18e:	e7fe      	b.n	800a18e <xQueueCreateCountingSemaphoreStatic+0x4e>
 800a190:	2400      	movs	r4, #0
 800a192:	2301      	movs	r3, #1
 800a194:	f882 3046 	strb.w	r3, [r2, #70]	; 0x46
 800a198:	602a      	str	r2, [r5, #0]
 800a19a:	e9c2 040f 	strd	r0, r4, [r2, #60]	; 0x3c
 800a19e:	9101      	str	r1, [sp, #4]
 800a1a0:	9b03      	ldr	r3, [sp, #12]
 800a1a2:	f002 f95f 	bl	800c464 <vPortEnterCritical>
 800a1a6:	e9d5 030f 	ldrd	r0, r3, [r5, #60]	; 0x3c
 800a1aa:	682a      	ldr	r2, [r5, #0]
 800a1ac:	63ac      	str	r4, [r5, #56]	; 0x38
 800a1ae:	fb03 f000 	mul.w	r0, r3, r0
 800a1b2:	1ac3      	subs	r3, r0, r3
 800a1b4:	4413      	add	r3, r2
 800a1b6:	4410      	add	r0, r2
 800a1b8:	f04f 0eff 	mov.w	lr, #255	; 0xff
 800a1bc:	f885 e044 	strb.w	lr, [r5, #68]	; 0x44
 800a1c0:	60eb      	str	r3, [r5, #12]
 800a1c2:	606a      	str	r2, [r5, #4]
 800a1c4:	f885 e045 	strb.w	lr, [r5, #69]	; 0x45
 800a1c8:	60a8      	str	r0, [r5, #8]
 800a1ca:	f105 0010 	add.w	r0, r5, #16
 800a1ce:	f7ff fe79 	bl	8009ec4 <vListInitialise>
 800a1d2:	f105 0024 	add.w	r0, r5, #36	; 0x24
 800a1d6:	f7ff fe75 	bl	8009ec4 <vListInitialise>
 800a1da:	f002 f965 	bl	800c4a8 <vPortExitCritical>
 800a1de:	9901      	ldr	r1, [sp, #4]
 800a1e0:	63a9      	str	r1, [r5, #56]	; 0x38
 800a1e2:	2302      	movs	r3, #2
 800a1e4:	4628      	mov	r0, r5
 800a1e6:	f885 304c 	strb.w	r3, [r5, #76]	; 0x4c
 800a1ea:	b005      	add	sp, #20
 800a1ec:	bd30      	pop	{r4, r5, pc}
 800a1ee:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a1f2:	f383 8811 	msr	BASEPRI, r3
 800a1f6:	f3bf 8f6f 	isb	sy
 800a1fa:	f3bf 8f4f 	dsb	sy
 800a1fe:	e7fe      	b.n	800a1fe <xQueueCreateCountingSemaphoreStatic+0xbe>

0800a200 <xQueueCreateCountingSemaphore>:
 800a200:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a202:	b940      	cbnz	r0, 800a216 <xQueueCreateCountingSemaphore+0x16>
 800a204:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a208:	f383 8811 	msr	BASEPRI, r3
 800a20c:	f3bf 8f6f 	isb	sy
 800a210:	f3bf 8f4f 	dsb	sy
 800a214:	e7fe      	b.n	800a214 <xQueueCreateCountingSemaphore+0x14>
 800a216:	4288      	cmp	r0, r1
 800a218:	460e      	mov	r6, r1
 800a21a:	4604      	mov	r4, r0
 800a21c:	d208      	bcs.n	800a230 <xQueueCreateCountingSemaphore+0x30>
 800a21e:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a222:	f383 8811 	msr	BASEPRI, r3
 800a226:	f3bf 8f6f 	isb	sy
 800a22a:	f3bf 8f4f 	dsb	sy
 800a22e:	e7fe      	b.n	800a22e <xQueueCreateCountingSemaphore+0x2e>
 800a230:	2050      	movs	r0, #80	; 0x50
 800a232:	f001 ff93 	bl	800c15c <pvPortMalloc>
 800a236:	4605      	mov	r5, r0
 800a238:	b330      	cbz	r0, 800a288 <xQueueCreateCountingSemaphore+0x88>
 800a23a:	2700      	movs	r7, #0
 800a23c:	e9c0 470f 	strd	r4, r7, [r0, #60]	; 0x3c
 800a240:	f880 7046 	strb.w	r7, [r0, #70]	; 0x46
 800a244:	6000      	str	r0, [r0, #0]
 800a246:	f002 f90d 	bl	800c464 <vPortEnterCritical>
 800a24a:	e9d5 230f 	ldrd	r2, r3, [r5, #60]	; 0x3c
 800a24e:	6829      	ldr	r1, [r5, #0]
 800a250:	63af      	str	r7, [r5, #56]	; 0x38
 800a252:	fb03 f202 	mul.w	r2, r3, r2
 800a256:	1ad3      	subs	r3, r2, r3
 800a258:	440a      	add	r2, r1
 800a25a:	440b      	add	r3, r1
 800a25c:	60aa      	str	r2, [r5, #8]
 800a25e:	22ff      	movs	r2, #255	; 0xff
 800a260:	f885 2044 	strb.w	r2, [r5, #68]	; 0x44
 800a264:	60eb      	str	r3, [r5, #12]
 800a266:	6069      	str	r1, [r5, #4]
 800a268:	f885 2045 	strb.w	r2, [r5, #69]	; 0x45
 800a26c:	f105 0010 	add.w	r0, r5, #16
 800a270:	f7ff fe28 	bl	8009ec4 <vListInitialise>
 800a274:	f105 0024 	add.w	r0, r5, #36	; 0x24
 800a278:	f7ff fe24 	bl	8009ec4 <vListInitialise>
 800a27c:	f002 f914 	bl	800c4a8 <vPortExitCritical>
 800a280:	2302      	movs	r3, #2
 800a282:	f885 304c 	strb.w	r3, [r5, #76]	; 0x4c
 800a286:	63ae      	str	r6, [r5, #56]	; 0x38
 800a288:	4628      	mov	r0, r5
 800a28a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0800a28c <xQueueGenericSend>:
 800a28c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800a290:	b085      	sub	sp, #20
 800a292:	9201      	str	r2, [sp, #4]
 800a294:	2800      	cmp	r0, #0
 800a296:	f000 80a4 	beq.w	800a3e2 <xQueueGenericSend+0x156>
 800a29a:	4688      	mov	r8, r1
 800a29c:	461f      	mov	r7, r3
 800a29e:	4604      	mov	r4, r0
 800a2a0:	2900      	cmp	r1, #0
 800a2a2:	f000 8091 	beq.w	800a3c8 <xQueueGenericSend+0x13c>
 800a2a6:	2f02      	cmp	r7, #2
 800a2a8:	d10b      	bne.n	800a2c2 <xQueueGenericSend+0x36>
 800a2aa:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 800a2ac:	2b01      	cmp	r3, #1
 800a2ae:	d008      	beq.n	800a2c2 <xQueueGenericSend+0x36>
 800a2b0:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a2b4:	f383 8811 	msr	BASEPRI, r3
 800a2b8:	f3bf 8f6f 	isb	sy
 800a2bc:	f3bf 8f4f 	dsb	sy
 800a2c0:	e7fe      	b.n	800a2c0 <xQueueGenericSend+0x34>
 800a2c2:	f001 fc61 	bl	800bb88 <xTaskGetSchedulerState>
 800a2c6:	4605      	mov	r5, r0
 800a2c8:	2800      	cmp	r0, #0
 800a2ca:	f000 8093 	beq.w	800a3f4 <xQueueGenericSend+0x168>
 800a2ce:	2500      	movs	r5, #0
 800a2d0:	f104 0624 	add.w	r6, r4, #36	; 0x24
 800a2d4:	f002 f8c6 	bl	800c464 <vPortEnterCritical>
 800a2d8:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 800a2da:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 800a2dc:	429a      	cmp	r2, r3
 800a2de:	f0c0 80ef 	bcc.w	800a4c0 <xQueueGenericSend+0x234>
 800a2e2:	2f02      	cmp	r7, #2
 800a2e4:	f000 80ec 	beq.w	800a4c0 <xQueueGenericSend+0x234>
 800a2e8:	9801      	ldr	r0, [sp, #4]
 800a2ea:	2800      	cmp	r0, #0
 800a2ec:	f000 8101 	beq.w	800a4f2 <xQueueGenericSend+0x266>
 800a2f0:	2d00      	cmp	r5, #0
 800a2f2:	f000 80e1 	beq.w	800a4b8 <xQueueGenericSend+0x22c>
 800a2f6:	f002 f8d7 	bl	800c4a8 <vPortExitCritical>
 800a2fa:	f001 fa9d 	bl	800b838 <vTaskSuspendAll>
 800a2fe:	f002 f8b1 	bl	800c464 <vPortEnterCritical>
 800a302:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
 800a306:	2bff      	cmp	r3, #255	; 0xff
 800a308:	bf04      	itt	eq
 800a30a:	2300      	moveq	r3, #0
 800a30c:	f884 3044 	strbeq.w	r3, [r4, #68]	; 0x44
 800a310:	f894 3045 	ldrb.w	r3, [r4, #69]	; 0x45
 800a314:	2bff      	cmp	r3, #255	; 0xff
 800a316:	bf04      	itt	eq
 800a318:	2300      	moveq	r3, #0
 800a31a:	f884 3045 	strbeq.w	r3, [r4, #69]	; 0x45
 800a31e:	f002 f8c3 	bl	800c4a8 <vPortExitCritical>
 800a322:	a901      	add	r1, sp, #4
 800a324:	a802      	add	r0, sp, #8
 800a326:	f001 fbdb 	bl	800bae0 <xTaskCheckForTimeOut>
 800a32a:	2800      	cmp	r0, #0
 800a32c:	f040 80e6 	bne.w	800a4fc <xQueueGenericSend+0x270>
 800a330:	f002 f898 	bl	800c464 <vPortEnterCritical>
 800a334:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 800a336:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 800a338:	429a      	cmp	r2, r3
 800a33a:	d068      	beq.n	800a40e <xQueueGenericSend+0x182>
 800a33c:	f002 f8b4 	bl	800c4a8 <vPortExitCritical>
 800a340:	f002 f890 	bl	800c464 <vPortEnterCritical>
 800a344:	f894 2045 	ldrb.w	r2, [r4, #69]	; 0x45
 800a348:	b255      	sxtb	r5, r2
 800a34a:	2d00      	cmp	r5, #0
 800a34c:	dc04      	bgt.n	800a358 <xQueueGenericSend+0xcc>
 800a34e:	e011      	b.n	800a374 <xQueueGenericSend+0xe8>
 800a350:	1e6a      	subs	r2, r5, #1
 800a352:	b2d3      	uxtb	r3, r2
 800a354:	b255      	sxtb	r5, r2
 800a356:	b16b      	cbz	r3, 800a374 <xQueueGenericSend+0xe8>
 800a358:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800a35a:	4630      	mov	r0, r6
 800a35c:	b153      	cbz	r3, 800a374 <xQueueGenericSend+0xe8>
 800a35e:	f001 fb6b 	bl	800ba38 <xTaskRemoveFromEventList>
 800a362:	2800      	cmp	r0, #0
 800a364:	d0f4      	beq.n	800a350 <xQueueGenericSend+0xc4>
 800a366:	f001 fc03 	bl	800bb70 <vTaskMissedYield>
 800a36a:	1e6a      	subs	r2, r5, #1
 800a36c:	b2d3      	uxtb	r3, r2
 800a36e:	b255      	sxtb	r5, r2
 800a370:	2b00      	cmp	r3, #0
 800a372:	d1f1      	bne.n	800a358 <xQueueGenericSend+0xcc>
 800a374:	23ff      	movs	r3, #255	; 0xff
 800a376:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 800a37a:	f002 f895 	bl	800c4a8 <vPortExitCritical>
 800a37e:	f002 f871 	bl	800c464 <vPortEnterCritical>
 800a382:	f894 2044 	ldrb.w	r2, [r4, #68]	; 0x44
 800a386:	b255      	sxtb	r5, r2
 800a388:	2d00      	cmp	r5, #0
 800a38a:	dd14      	ble.n	800a3b6 <xQueueGenericSend+0x12a>
 800a38c:	f104 0910 	add.w	r9, r4, #16
 800a390:	e003      	b.n	800a39a <xQueueGenericSend+0x10e>
 800a392:	1e6a      	subs	r2, r5, #1
 800a394:	b2d3      	uxtb	r3, r2
 800a396:	b255      	sxtb	r5, r2
 800a398:	b16b      	cbz	r3, 800a3b6 <xQueueGenericSend+0x12a>
 800a39a:	6923      	ldr	r3, [r4, #16]
 800a39c:	4648      	mov	r0, r9
 800a39e:	b153      	cbz	r3, 800a3b6 <xQueueGenericSend+0x12a>
 800a3a0:	f001 fb4a 	bl	800ba38 <xTaskRemoveFromEventList>
 800a3a4:	2800      	cmp	r0, #0
 800a3a6:	d0f4      	beq.n	800a392 <xQueueGenericSend+0x106>
 800a3a8:	f001 fbe2 	bl	800bb70 <vTaskMissedYield>
 800a3ac:	1e6a      	subs	r2, r5, #1
 800a3ae:	b2d3      	uxtb	r3, r2
 800a3b0:	b255      	sxtb	r5, r2
 800a3b2:	2b00      	cmp	r3, #0
 800a3b4:	d1f1      	bne.n	800a39a <xQueueGenericSend+0x10e>
 800a3b6:	23ff      	movs	r3, #255	; 0xff
 800a3b8:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 800a3bc:	f002 f874 	bl	800c4a8 <vPortExitCritical>
 800a3c0:	f001 fa42 	bl	800b848 <xTaskResumeAll>
 800a3c4:	2501      	movs	r5, #1
 800a3c6:	e785      	b.n	800a2d4 <xQueueGenericSend+0x48>
 800a3c8:	6c03      	ldr	r3, [r0, #64]	; 0x40
 800a3ca:	2b00      	cmp	r3, #0
 800a3cc:	f43f af6b 	beq.w	800a2a6 <xQueueGenericSend+0x1a>
 800a3d0:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a3d4:	f383 8811 	msr	BASEPRI, r3
 800a3d8:	f3bf 8f6f 	isb	sy
 800a3dc:	f3bf 8f4f 	dsb	sy
 800a3e0:	e7fe      	b.n	800a3e0 <xQueueGenericSend+0x154>
 800a3e2:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a3e6:	f383 8811 	msr	BASEPRI, r3
 800a3ea:	f3bf 8f6f 	isb	sy
 800a3ee:	f3bf 8f4f 	dsb	sy
 800a3f2:	e7fe      	b.n	800a3f2 <xQueueGenericSend+0x166>
 800a3f4:	9b01      	ldr	r3, [sp, #4]
 800a3f6:	2b00      	cmp	r3, #0
 800a3f8:	f43f af6a 	beq.w	800a2d0 <xQueueGenericSend+0x44>
 800a3fc:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a400:	f383 8811 	msr	BASEPRI, r3
 800a404:	f3bf 8f6f 	isb	sy
 800a408:	f3bf 8f4f 	dsb	sy
 800a40c:	e7fe      	b.n	800a40c <xQueueGenericSend+0x180>
 800a40e:	f104 0910 	add.w	r9, r4, #16
 800a412:	f002 f849 	bl	800c4a8 <vPortExitCritical>
 800a416:	9901      	ldr	r1, [sp, #4]
 800a418:	4648      	mov	r0, r9
 800a41a:	f001 fa7f 	bl	800b91c <vTaskPlaceOnEventList>
 800a41e:	f002 f821 	bl	800c464 <vPortEnterCritical>
 800a422:	f894 3045 	ldrb.w	r3, [r4, #69]	; 0x45
 800a426:	b25d      	sxtb	r5, r3
 800a428:	2d00      	cmp	r5, #0
 800a42a:	dc04      	bgt.n	800a436 <xQueueGenericSend+0x1aa>
 800a42c:	e011      	b.n	800a452 <xQueueGenericSend+0x1c6>
 800a42e:	1e6b      	subs	r3, r5, #1
 800a430:	b2da      	uxtb	r2, r3
 800a432:	b25d      	sxtb	r5, r3
 800a434:	b16a      	cbz	r2, 800a452 <xQueueGenericSend+0x1c6>
 800a436:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800a438:	4630      	mov	r0, r6
 800a43a:	b153      	cbz	r3, 800a452 <xQueueGenericSend+0x1c6>
 800a43c:	f001 fafc 	bl	800ba38 <xTaskRemoveFromEventList>
 800a440:	2800      	cmp	r0, #0
 800a442:	d0f4      	beq.n	800a42e <xQueueGenericSend+0x1a2>
 800a444:	f001 fb94 	bl	800bb70 <vTaskMissedYield>
 800a448:	1e6b      	subs	r3, r5, #1
 800a44a:	b2da      	uxtb	r2, r3
 800a44c:	b25d      	sxtb	r5, r3
 800a44e:	2a00      	cmp	r2, #0
 800a450:	d1f1      	bne.n	800a436 <xQueueGenericSend+0x1aa>
 800a452:	23ff      	movs	r3, #255	; 0xff
 800a454:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 800a458:	f002 f826 	bl	800c4a8 <vPortExitCritical>
 800a45c:	f002 f802 	bl	800c464 <vPortEnterCritical>
 800a460:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
 800a464:	b25d      	sxtb	r5, r3
 800a466:	2d00      	cmp	r5, #0
 800a468:	dc04      	bgt.n	800a474 <xQueueGenericSend+0x1e8>
 800a46a:	e011      	b.n	800a490 <xQueueGenericSend+0x204>
 800a46c:	1e6b      	subs	r3, r5, #1
 800a46e:	b2da      	uxtb	r2, r3
 800a470:	b25d      	sxtb	r5, r3
 800a472:	b16a      	cbz	r2, 800a490 <xQueueGenericSend+0x204>
 800a474:	6923      	ldr	r3, [r4, #16]
 800a476:	4648      	mov	r0, r9
 800a478:	b153      	cbz	r3, 800a490 <xQueueGenericSend+0x204>
 800a47a:	f001 fadd 	bl	800ba38 <xTaskRemoveFromEventList>
 800a47e:	2800      	cmp	r0, #0
 800a480:	d0f4      	beq.n	800a46c <xQueueGenericSend+0x1e0>
 800a482:	f001 fb75 	bl	800bb70 <vTaskMissedYield>
 800a486:	1e6b      	subs	r3, r5, #1
 800a488:	b2da      	uxtb	r2, r3
 800a48a:	b25d      	sxtb	r5, r3
 800a48c:	2a00      	cmp	r2, #0
 800a48e:	d1f1      	bne.n	800a474 <xQueueGenericSend+0x1e8>
 800a490:	23ff      	movs	r3, #255	; 0xff
 800a492:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 800a496:	f002 f807 	bl	800c4a8 <vPortExitCritical>
 800a49a:	f001 f9d5 	bl	800b848 <xTaskResumeAll>
 800a49e:	2800      	cmp	r0, #0
 800a4a0:	d190      	bne.n	800a3c4 <xQueueGenericSend+0x138>
 800a4a2:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800a4a6:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800a4aa:	f8c3 2d04 	str.w	r2, [r3, #3332]	; 0xd04
 800a4ae:	f3bf 8f4f 	dsb	sy
 800a4b2:	f3bf 8f6f 	isb	sy
 800a4b6:	e785      	b.n	800a3c4 <xQueueGenericSend+0x138>
 800a4b8:	a802      	add	r0, sp, #8
 800a4ba:	f001 fb05 	bl	800bac8 <vTaskInternalSetTimeOutState>
 800a4be:	e71a      	b.n	800a2f6 <xQueueGenericSend+0x6a>
 800a4c0:	463a      	mov	r2, r7
 800a4c2:	4641      	mov	r1, r8
 800a4c4:	4620      	mov	r0, r4
 800a4c6:	f7ff fd49 	bl	8009f5c <prvCopyDataToQueue>
 800a4ca:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800a4cc:	2b00      	cmp	r3, #0
 800a4ce:	d153      	bne.n	800a578 <xQueueGenericSend+0x2ec>
 800a4d0:	b148      	cbz	r0, 800a4e6 <xQueueGenericSend+0x25a>
 800a4d2:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800a4d6:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800a4da:	f8c3 2d04 	str.w	r2, [r3, #3332]	; 0xd04
 800a4de:	f3bf 8f4f 	dsb	sy
 800a4e2:	f3bf 8f6f 	isb	sy
 800a4e6:	f001 ffdf 	bl	800c4a8 <vPortExitCritical>
 800a4ea:	2001      	movs	r0, #1
 800a4ec:	b005      	add	sp, #20
 800a4ee:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800a4f2:	9000      	str	r0, [sp, #0]
 800a4f4:	f001 ffd8 	bl	800c4a8 <vPortExitCritical>
 800a4f8:	9800      	ldr	r0, [sp, #0]
 800a4fa:	e7f7      	b.n	800a4ec <xQueueGenericSend+0x260>
 800a4fc:	f001 ffb2 	bl	800c464 <vPortEnterCritical>
 800a500:	f894 3045 	ldrb.w	r3, [r4, #69]	; 0x45
 800a504:	b25d      	sxtb	r5, r3
 800a506:	2d00      	cmp	r5, #0
 800a508:	dd10      	ble.n	800a52c <xQueueGenericSend+0x2a0>
 800a50a:	f104 0624 	add.w	r6, r4, #36	; 0x24
 800a50e:	e003      	b.n	800a518 <xQueueGenericSend+0x28c>
 800a510:	1e6b      	subs	r3, r5, #1
 800a512:	b2da      	uxtb	r2, r3
 800a514:	b25d      	sxtb	r5, r3
 800a516:	b14a      	cbz	r2, 800a52c <xQueueGenericSend+0x2a0>
 800a518:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800a51a:	4630      	mov	r0, r6
 800a51c:	b133      	cbz	r3, 800a52c <xQueueGenericSend+0x2a0>
 800a51e:	f001 fa8b 	bl	800ba38 <xTaskRemoveFromEventList>
 800a522:	2800      	cmp	r0, #0
 800a524:	d0f4      	beq.n	800a510 <xQueueGenericSend+0x284>
 800a526:	f001 fb23 	bl	800bb70 <vTaskMissedYield>
 800a52a:	e7f1      	b.n	800a510 <xQueueGenericSend+0x284>
 800a52c:	23ff      	movs	r3, #255	; 0xff
 800a52e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 800a532:	f001 ffb9 	bl	800c4a8 <vPortExitCritical>
 800a536:	f001 ff95 	bl	800c464 <vPortEnterCritical>
 800a53a:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
 800a53e:	b25d      	sxtb	r5, r3
 800a540:	2d00      	cmp	r5, #0
 800a542:	dd10      	ble.n	800a566 <xQueueGenericSend+0x2da>
 800a544:	f104 0610 	add.w	r6, r4, #16
 800a548:	e003      	b.n	800a552 <xQueueGenericSend+0x2c6>
 800a54a:	1e6b      	subs	r3, r5, #1
 800a54c:	b2da      	uxtb	r2, r3
 800a54e:	b25d      	sxtb	r5, r3
 800a550:	b14a      	cbz	r2, 800a566 <xQueueGenericSend+0x2da>
 800a552:	6923      	ldr	r3, [r4, #16]
 800a554:	4630      	mov	r0, r6
 800a556:	b133      	cbz	r3, 800a566 <xQueueGenericSend+0x2da>
 800a558:	f001 fa6e 	bl	800ba38 <xTaskRemoveFromEventList>
 800a55c:	2800      	cmp	r0, #0
 800a55e:	d0f4      	beq.n	800a54a <xQueueGenericSend+0x2be>
 800a560:	f001 fb06 	bl	800bb70 <vTaskMissedYield>
 800a564:	e7f1      	b.n	800a54a <xQueueGenericSend+0x2be>
 800a566:	23ff      	movs	r3, #255	; 0xff
 800a568:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 800a56c:	f001 ff9c 	bl	800c4a8 <vPortExitCritical>
 800a570:	f001 f96a 	bl	800b848 <xTaskResumeAll>
 800a574:	2000      	movs	r0, #0
 800a576:	e7b9      	b.n	800a4ec <xQueueGenericSend+0x260>
 800a578:	f104 0024 	add.w	r0, r4, #36	; 0x24
 800a57c:	f001 fa5c 	bl	800ba38 <xTaskRemoveFromEventList>
 800a580:	2800      	cmp	r0, #0
 800a582:	d0b0      	beq.n	800a4e6 <xQueueGenericSend+0x25a>
 800a584:	e7a5      	b.n	800a4d2 <xQueueGenericSend+0x246>
 800a586:	bf00      	nop

0800a588 <xQueueCreateMutexStatic>:
 800a588:	2900      	cmp	r1, #0
 800a58a:	d044      	beq.n	800a616 <xQueueCreateMutexStatic+0x8e>
 800a58c:	b570      	push	{r4, r5, r6, lr}
 800a58e:	b082      	sub	sp, #8
 800a590:	2350      	movs	r3, #80	; 0x50
 800a592:	9301      	str	r3, [sp, #4]
 800a594:	9b01      	ldr	r3, [sp, #4]
 800a596:	2b50      	cmp	r3, #80	; 0x50
 800a598:	d008      	beq.n	800a5ac <xQueueCreateMutexStatic+0x24>
 800a59a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a59e:	f383 8811 	msr	BASEPRI, r3
 800a5a2:	f3bf 8f6f 	isb	sy
 800a5a6:	f3bf 8f4f 	dsb	sy
 800a5aa:	e7fe      	b.n	800a5aa <xQueueCreateMutexStatic+0x22>
 800a5ac:	2600      	movs	r6, #0
 800a5ae:	2301      	movs	r3, #1
 800a5b0:	460c      	mov	r4, r1
 800a5b2:	e9c1 360f 	strd	r3, r6, [r1, #60]	; 0x3c
 800a5b6:	f881 3046 	strb.w	r3, [r1, #70]	; 0x46
 800a5ba:	6009      	str	r1, [r1, #0]
 800a5bc:	4605      	mov	r5, r0
 800a5be:	9b01      	ldr	r3, [sp, #4]
 800a5c0:	f001 ff50 	bl	800c464 <vPortEnterCritical>
 800a5c4:	e9d4 230f 	ldrd	r2, r3, [r4, #60]	; 0x3c
 800a5c8:	6821      	ldr	r1, [r4, #0]
 800a5ca:	6061      	str	r1, [r4, #4]
 800a5cc:	fb03 f202 	mul.w	r2, r3, r2
 800a5d0:	1ad3      	subs	r3, r2, r3
 800a5d2:	440b      	add	r3, r1
 800a5d4:	440a      	add	r2, r1
 800a5d6:	60e3      	str	r3, [r4, #12]
 800a5d8:	23ff      	movs	r3, #255	; 0xff
 800a5da:	60a2      	str	r2, [r4, #8]
 800a5dc:	63a6      	str	r6, [r4, #56]	; 0x38
 800a5de:	f104 0010 	add.w	r0, r4, #16
 800a5e2:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 800a5e6:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 800a5ea:	f7ff fc6b 	bl	8009ec4 <vListInitialise>
 800a5ee:	f104 0024 	add.w	r0, r4, #36	; 0x24
 800a5f2:	f7ff fc67 	bl	8009ec4 <vListInitialise>
 800a5f6:	f001 ff57 	bl	800c4a8 <vPortExitCritical>
 800a5fa:	f884 504c 	strb.w	r5, [r4, #76]	; 0x4c
 800a5fe:	60a6      	str	r6, [r4, #8]
 800a600:	6026      	str	r6, [r4, #0]
 800a602:	60e6      	str	r6, [r4, #12]
 800a604:	4633      	mov	r3, r6
 800a606:	4632      	mov	r2, r6
 800a608:	4631      	mov	r1, r6
 800a60a:	4620      	mov	r0, r4
 800a60c:	f7ff fe3e 	bl	800a28c <xQueueGenericSend>
 800a610:	4620      	mov	r0, r4
 800a612:	b002      	add	sp, #8
 800a614:	bd70      	pop	{r4, r5, r6, pc}
 800a616:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a61a:	f383 8811 	msr	BASEPRI, r3
 800a61e:	f3bf 8f6f 	isb	sy
 800a622:	f3bf 8f4f 	dsb	sy
 800a626:	e7fe      	b.n	800a626 <xQueueCreateMutexStatic+0x9e>

0800a628 <xQueueGiveMutexRecursive>:
 800a628:	b538      	push	{r3, r4, r5, lr}
 800a62a:	b138      	cbz	r0, 800a63c <xQueueGiveMutexRecursive+0x14>
 800a62c:	6885      	ldr	r5, [r0, #8]
 800a62e:	4604      	mov	r4, r0
 800a630:	f001 faa4 	bl	800bb7c <xTaskGetCurrentTaskHandle>
 800a634:	4285      	cmp	r5, r0
 800a636:	d00a      	beq.n	800a64e <xQueueGiveMutexRecursive+0x26>
 800a638:	2000      	movs	r0, #0
 800a63a:	bd38      	pop	{r3, r4, r5, pc}
 800a63c:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a640:	f383 8811 	msr	BASEPRI, r3
 800a644:	f3bf 8f6f 	isb	sy
 800a648:	f3bf 8f4f 	dsb	sy
 800a64c:	e7fe      	b.n	800a64c <xQueueGiveMutexRecursive+0x24>
 800a64e:	68e3      	ldr	r3, [r4, #12]
 800a650:	3b01      	subs	r3, #1
 800a652:	60e3      	str	r3, [r4, #12]
 800a654:	b10b      	cbz	r3, 800a65a <xQueueGiveMutexRecursive+0x32>
 800a656:	2001      	movs	r0, #1
 800a658:	bd38      	pop	{r3, r4, r5, pc}
 800a65a:	461a      	mov	r2, r3
 800a65c:	4619      	mov	r1, r3
 800a65e:	4620      	mov	r0, r4
 800a660:	f7ff fe14 	bl	800a28c <xQueueGenericSend>
 800a664:	2001      	movs	r0, #1
 800a666:	bd38      	pop	{r3, r4, r5, pc}

0800a668 <xQueueCreateMutex>:
 800a668:	b570      	push	{r4, r5, r6, lr}
 800a66a:	4606      	mov	r6, r0
 800a66c:	2050      	movs	r0, #80	; 0x50
 800a66e:	f001 fd75 	bl	800c15c <pvPortMalloc>
 800a672:	4604      	mov	r4, r0
 800a674:	b370      	cbz	r0, 800a6d4 <xQueueCreateMutex+0x6c>
 800a676:	2500      	movs	r5, #0
 800a678:	2301      	movs	r3, #1
 800a67a:	f880 5046 	strb.w	r5, [r0, #70]	; 0x46
 800a67e:	6020      	str	r0, [r4, #0]
 800a680:	e9c0 350f 	strd	r3, r5, [r0, #60]	; 0x3c
 800a684:	f001 feee 	bl	800c464 <vPortEnterCritical>
 800a688:	e9d4 230f 	ldrd	r2, r3, [r4, #60]	; 0x3c
 800a68c:	6821      	ldr	r1, [r4, #0]
 800a68e:	6061      	str	r1, [r4, #4]
 800a690:	fb03 f202 	mul.w	r2, r3, r2
 800a694:	1ad3      	subs	r3, r2, r3
 800a696:	440b      	add	r3, r1
 800a698:	440a      	add	r2, r1
 800a69a:	60e3      	str	r3, [r4, #12]
 800a69c:	23ff      	movs	r3, #255	; 0xff
 800a69e:	60a2      	str	r2, [r4, #8]
 800a6a0:	63a5      	str	r5, [r4, #56]	; 0x38
 800a6a2:	f104 0010 	add.w	r0, r4, #16
 800a6a6:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 800a6aa:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 800a6ae:	f7ff fc09 	bl	8009ec4 <vListInitialise>
 800a6b2:	f104 0024 	add.w	r0, r4, #36	; 0x24
 800a6b6:	f7ff fc05 	bl	8009ec4 <vListInitialise>
 800a6ba:	f001 fef5 	bl	800c4a8 <vPortExitCritical>
 800a6be:	f884 604c 	strb.w	r6, [r4, #76]	; 0x4c
 800a6c2:	60a5      	str	r5, [r4, #8]
 800a6c4:	6025      	str	r5, [r4, #0]
 800a6c6:	60e5      	str	r5, [r4, #12]
 800a6c8:	462b      	mov	r3, r5
 800a6ca:	462a      	mov	r2, r5
 800a6cc:	4629      	mov	r1, r5
 800a6ce:	4620      	mov	r0, r4
 800a6d0:	f7ff fddc 	bl	800a28c <xQueueGenericSend>
 800a6d4:	4620      	mov	r0, r4
 800a6d6:	bd70      	pop	{r4, r5, r6, pc}

0800a6d8 <xQueueGiveFromISR>:
 800a6d8:	b370      	cbz	r0, 800a738 <xQueueGiveFromISR+0x60>
 800a6da:	6c03      	ldr	r3, [r0, #64]	; 0x40
 800a6dc:	b570      	push	{r4, r5, r6, lr}
 800a6de:	4606      	mov	r6, r0
 800a6e0:	b143      	cbz	r3, 800a6f4 <xQueueGiveFromISR+0x1c>
 800a6e2:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a6e6:	f383 8811 	msr	BASEPRI, r3
 800a6ea:	f3bf 8f6f 	isb	sy
 800a6ee:	f3bf 8f4f 	dsb	sy
 800a6f2:	e7fe      	b.n	800a6f2 <xQueueGiveFromISR+0x1a>
 800a6f4:	6803      	ldr	r3, [r0, #0]
 800a6f6:	460c      	mov	r4, r1
 800a6f8:	b33b      	cbz	r3, 800a74a <xQueueGiveFromISR+0x72>
 800a6fa:	f001 ffe5 	bl	800c6c8 <vPortValidateInterruptPriority>
 800a6fe:	f3ef 8511 	mrs	r5, BASEPRI
 800a702:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a706:	f383 8811 	msr	BASEPRI, r3
 800a70a:	f3bf 8f6f 	isb	sy
 800a70e:	f3bf 8f4f 	dsb	sy
 800a712:	6bb3      	ldr	r3, [r6, #56]	; 0x38
 800a714:	6bf2      	ldr	r2, [r6, #60]	; 0x3c
 800a716:	429a      	cmp	r2, r3
 800a718:	d923      	bls.n	800a762 <xQueueGiveFromISR+0x8a>
 800a71a:	f896 2045 	ldrb.w	r2, [r6, #69]	; 0x45
 800a71e:	3301      	adds	r3, #1
 800a720:	2aff      	cmp	r2, #255	; 0xff
 800a722:	63b3      	str	r3, [r6, #56]	; 0x38
 800a724:	b253      	sxtb	r3, r2
 800a726:	d020      	beq.n	800a76a <xQueueGiveFromISR+0x92>
 800a728:	3301      	adds	r3, #1
 800a72a:	b25b      	sxtb	r3, r3
 800a72c:	f886 3045 	strb.w	r3, [r6, #69]	; 0x45
 800a730:	2001      	movs	r0, #1
 800a732:	f385 8811 	msr	BASEPRI, r5
 800a736:	bd70      	pop	{r4, r5, r6, pc}
 800a738:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a73c:	f383 8811 	msr	BASEPRI, r3
 800a740:	f3bf 8f6f 	isb	sy
 800a744:	f3bf 8f4f 	dsb	sy
 800a748:	e7fe      	b.n	800a748 <xQueueGiveFromISR+0x70>
 800a74a:	6883      	ldr	r3, [r0, #8]
 800a74c:	2b00      	cmp	r3, #0
 800a74e:	d0d4      	beq.n	800a6fa <xQueueGiveFromISR+0x22>
 800a750:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a754:	f383 8811 	msr	BASEPRI, r3
 800a758:	f3bf 8f6f 	isb	sy
 800a75c:	f3bf 8f4f 	dsb	sy
 800a760:	e7fe      	b.n	800a760 <xQueueGiveFromISR+0x88>
 800a762:	2000      	movs	r0, #0
 800a764:	f385 8811 	msr	BASEPRI, r5
 800a768:	bd70      	pop	{r4, r5, r6, pc}
 800a76a:	6a73      	ldr	r3, [r6, #36]	; 0x24
 800a76c:	2b00      	cmp	r3, #0
 800a76e:	d0df      	beq.n	800a730 <xQueueGiveFromISR+0x58>
 800a770:	f106 0024 	add.w	r0, r6, #36	; 0x24
 800a774:	f001 f960 	bl	800ba38 <xTaskRemoveFromEventList>
 800a778:	2800      	cmp	r0, #0
 800a77a:	d0d9      	beq.n	800a730 <xQueueGiveFromISR+0x58>
 800a77c:	2c00      	cmp	r4, #0
 800a77e:	d0d7      	beq.n	800a730 <xQueueGiveFromISR+0x58>
 800a780:	2001      	movs	r0, #1
 800a782:	6020      	str	r0, [r4, #0]
 800a784:	e7ee      	b.n	800a764 <xQueueGiveFromISR+0x8c>
 800a786:	bf00      	nop

0800a788 <xQueueReceive>:
 800a788:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800a78c:	b085      	sub	sp, #20
 800a78e:	9201      	str	r2, [sp, #4]
 800a790:	2800      	cmp	r0, #0
 800a792:	f000 815f 	beq.w	800aa54 <xQueueReceive+0x2cc>
 800a796:	460f      	mov	r7, r1
 800a798:	4604      	mov	r4, r0
 800a79a:	2900      	cmp	r1, #0
 800a79c:	f000 8094 	beq.w	800a8c8 <xQueueReceive+0x140>
 800a7a0:	f001 f9f2 	bl	800bb88 <xTaskGetSchedulerState>
 800a7a4:	2800      	cmp	r0, #0
 800a7a6:	f000 809c 	beq.w	800a8e2 <xQueueReceive+0x15a>
 800a7aa:	f001 fe5b 	bl	800c464 <vPortEnterCritical>
 800a7ae:	6ba5      	ldr	r5, [r4, #56]	; 0x38
 800a7b0:	2d00      	cmp	r5, #0
 800a7b2:	d172      	bne.n	800a89a <xQueueReceive+0x112>
 800a7b4:	9b01      	ldr	r3, [sp, #4]
 800a7b6:	2b00      	cmp	r3, #0
 800a7b8:	f000 80f1 	beq.w	800a99e <xQueueReceive+0x216>
 800a7bc:	a802      	add	r0, sp, #8
 800a7be:	f001 f983 	bl	800bac8 <vTaskInternalSetTimeOutState>
 800a7c2:	46a8      	mov	r8, r5
 800a7c4:	f104 0624 	add.w	r6, r4, #36	; 0x24
 800a7c8:	f001 fe6e 	bl	800c4a8 <vPortExitCritical>
 800a7cc:	f001 f834 	bl	800b838 <vTaskSuspendAll>
 800a7d0:	f001 fe48 	bl	800c464 <vPortEnterCritical>
 800a7d4:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
 800a7d8:	2bff      	cmp	r3, #255	; 0xff
 800a7da:	bf08      	it	eq
 800a7dc:	f884 8044 	strbeq.w	r8, [r4, #68]	; 0x44
 800a7e0:	f894 3045 	ldrb.w	r3, [r4, #69]	; 0x45
 800a7e4:	2bff      	cmp	r3, #255	; 0xff
 800a7e6:	bf08      	it	eq
 800a7e8:	f884 8045 	strbeq.w	r8, [r4, #69]	; 0x45
 800a7ec:	f001 fe5c 	bl	800c4a8 <vPortExitCritical>
 800a7f0:	a901      	add	r1, sp, #4
 800a7f2:	a802      	add	r0, sp, #8
 800a7f4:	f001 f974 	bl	800bae0 <xTaskCheckForTimeOut>
 800a7f8:	2800      	cmp	r0, #0
 800a7fa:	d17f      	bne.n	800a8fc <xQueueReceive+0x174>
 800a7fc:	f001 fe32 	bl	800c464 <vPortEnterCritical>
 800a800:	6ba3      	ldr	r3, [r4, #56]	; 0x38
 800a802:	2b00      	cmp	r3, #0
 800a804:	f000 80d1 	beq.w	800a9aa <xQueueReceive+0x222>
 800a808:	f001 fe4e 	bl	800c4a8 <vPortExitCritical>
 800a80c:	f001 fe2a 	bl	800c464 <vPortEnterCritical>
 800a810:	f894 3045 	ldrb.w	r3, [r4, #69]	; 0x45
 800a814:	b25d      	sxtb	r5, r3
 800a816:	2d00      	cmp	r5, #0
 800a818:	dc04      	bgt.n	800a824 <xQueueReceive+0x9c>
 800a81a:	e011      	b.n	800a840 <xQueueReceive+0xb8>
 800a81c:	1e6b      	subs	r3, r5, #1
 800a81e:	b2da      	uxtb	r2, r3
 800a820:	b25d      	sxtb	r5, r3
 800a822:	b16a      	cbz	r2, 800a840 <xQueueReceive+0xb8>
 800a824:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800a826:	4630      	mov	r0, r6
 800a828:	b153      	cbz	r3, 800a840 <xQueueReceive+0xb8>
 800a82a:	f001 f905 	bl	800ba38 <xTaskRemoveFromEventList>
 800a82e:	2800      	cmp	r0, #0
 800a830:	d0f4      	beq.n	800a81c <xQueueReceive+0x94>
 800a832:	f001 f99d 	bl	800bb70 <vTaskMissedYield>
 800a836:	1e6b      	subs	r3, r5, #1
 800a838:	b2da      	uxtb	r2, r3
 800a83a:	b25d      	sxtb	r5, r3
 800a83c:	2a00      	cmp	r2, #0
 800a83e:	d1f1      	bne.n	800a824 <xQueueReceive+0x9c>
 800a840:	23ff      	movs	r3, #255	; 0xff
 800a842:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 800a846:	f001 fe2f 	bl	800c4a8 <vPortExitCritical>
 800a84a:	f001 fe0b 	bl	800c464 <vPortEnterCritical>
 800a84e:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
 800a852:	b25d      	sxtb	r5, r3
 800a854:	2d00      	cmp	r5, #0
 800a856:	dd14      	ble.n	800a882 <xQueueReceive+0xfa>
 800a858:	f104 0910 	add.w	r9, r4, #16
 800a85c:	e003      	b.n	800a866 <xQueueReceive+0xde>
 800a85e:	1e6b      	subs	r3, r5, #1
 800a860:	b2da      	uxtb	r2, r3
 800a862:	b25d      	sxtb	r5, r3
 800a864:	b16a      	cbz	r2, 800a882 <xQueueReceive+0xfa>
 800a866:	6923      	ldr	r3, [r4, #16]
 800a868:	4648      	mov	r0, r9
 800a86a:	b153      	cbz	r3, 800a882 <xQueueReceive+0xfa>
 800a86c:	f001 f8e4 	bl	800ba38 <xTaskRemoveFromEventList>
 800a870:	2800      	cmp	r0, #0
 800a872:	d0f4      	beq.n	800a85e <xQueueReceive+0xd6>
 800a874:	f001 f97c 	bl	800bb70 <vTaskMissedYield>
 800a878:	1e6b      	subs	r3, r5, #1
 800a87a:	b2da      	uxtb	r2, r3
 800a87c:	b25d      	sxtb	r5, r3
 800a87e:	2a00      	cmp	r2, #0
 800a880:	d1f1      	bne.n	800a866 <xQueueReceive+0xde>
 800a882:	23ff      	movs	r3, #255	; 0xff
 800a884:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 800a888:	f001 fe0e 	bl	800c4a8 <vPortExitCritical>
 800a88c:	f000 ffdc 	bl	800b848 <xTaskResumeAll>
 800a890:	f001 fde8 	bl	800c464 <vPortEnterCritical>
 800a894:	6ba5      	ldr	r5, [r4, #56]	; 0x38
 800a896:	2d00      	cmp	r5, #0
 800a898:	d07d      	beq.n	800a996 <xQueueReceive+0x20e>
 800a89a:	6c22      	ldr	r2, [r4, #64]	; 0x40
 800a89c:	b152      	cbz	r2, 800a8b4 <xQueueReceive+0x12c>
 800a89e:	68e1      	ldr	r1, [r4, #12]
 800a8a0:	68a3      	ldr	r3, [r4, #8]
 800a8a2:	4411      	add	r1, r2
 800a8a4:	4299      	cmp	r1, r3
 800a8a6:	60e1      	str	r1, [r4, #12]
 800a8a8:	bf24      	itt	cs
 800a8aa:	6821      	ldrcs	r1, [r4, #0]
 800a8ac:	60e1      	strcs	r1, [r4, #12]
 800a8ae:	4638      	mov	r0, r7
 800a8b0:	f7f5 fcdc 	bl	800026c <memcpy>
 800a8b4:	3d01      	subs	r5, #1
 800a8b6:	63a5      	str	r5, [r4, #56]	; 0x38
 800a8b8:	6923      	ldr	r3, [r4, #16]
 800a8ba:	2b00      	cmp	r3, #0
 800a8bc:	f040 80d3 	bne.w	800aa66 <xQueueReceive+0x2de>
 800a8c0:	f001 fdf2 	bl	800c4a8 <vPortExitCritical>
 800a8c4:	2001      	movs	r0, #1
 800a8c6:	e06d      	b.n	800a9a4 <xQueueReceive+0x21c>
 800a8c8:	6c03      	ldr	r3, [r0, #64]	; 0x40
 800a8ca:	2b00      	cmp	r3, #0
 800a8cc:	f43f af68 	beq.w	800a7a0 <xQueueReceive+0x18>
 800a8d0:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a8d4:	f383 8811 	msr	BASEPRI, r3
 800a8d8:	f3bf 8f6f 	isb	sy
 800a8dc:	f3bf 8f4f 	dsb	sy
 800a8e0:	e7fe      	b.n	800a8e0 <xQueueReceive+0x158>
 800a8e2:	9b01      	ldr	r3, [sp, #4]
 800a8e4:	2b00      	cmp	r3, #0
 800a8e6:	f43f af60 	beq.w	800a7aa <xQueueReceive+0x22>
 800a8ea:	f04f 0350 	mov.w	r3, #80	; 0x50
 800a8ee:	f383 8811 	msr	BASEPRI, r3
 800a8f2:	f3bf 8f6f 	isb	sy
 800a8f6:	f3bf 8f4f 	dsb	sy
 800a8fa:	e7fe      	b.n	800a8fa <xQueueReceive+0x172>
 800a8fc:	f001 fdb2 	bl	800c464 <vPortEnterCritical>
 800a900:	f894 3045 	ldrb.w	r3, [r4, #69]	; 0x45
 800a904:	b25d      	sxtb	r5, r3
 800a906:	2d00      	cmp	r5, #0
 800a908:	dc04      	bgt.n	800a914 <xQueueReceive+0x18c>
 800a90a:	e011      	b.n	800a930 <xQueueReceive+0x1a8>
 800a90c:	1e6b      	subs	r3, r5, #1
 800a90e:	b2da      	uxtb	r2, r3
 800a910:	b25d      	sxtb	r5, r3
 800a912:	b16a      	cbz	r2, 800a930 <xQueueReceive+0x1a8>
 800a914:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800a916:	4630      	mov	r0, r6
 800a918:	b153      	cbz	r3, 800a930 <xQueueReceive+0x1a8>
 800a91a:	f001 f88d 	bl	800ba38 <xTaskRemoveFromEventList>
 800a91e:	2800      	cmp	r0, #0
 800a920:	d0f4      	beq.n	800a90c <xQueueReceive+0x184>
 800a922:	f001 f925 	bl	800bb70 <vTaskMissedYield>
 800a926:	1e6b      	subs	r3, r5, #1
 800a928:	b2da      	uxtb	r2, r3
 800a92a:	b25d      	sxtb	r5, r3
 800a92c:	2a00      	cmp	r2, #0
 800a92e:	d1f1      	bne.n	800a914 <xQueueReceive+0x18c>
 800a930:	23ff      	movs	r3, #255	; 0xff
 800a932:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 800a936:	f001 fdb7 	bl	800c4a8 <vPortExitCritical>
 800a93a:	f001 fd93 	bl	800c464 <vPortEnterCritical>
 800a93e:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
 800a942:	b25d      	sxtb	r5, r3
 800a944:	2d00      	cmp	r5, #0
 800a946:	dd14      	ble.n	800a972 <xQueueReceive+0x1ea>
 800a948:	f104 0910 	add.w	r9, r4, #16
 800a94c:	e003      	b.n	800a956 <xQueueReceive+0x1ce>
 800a94e:	1e6b      	subs	r3, r5, #1
 800a950:	b2da      	uxtb	r2, r3
 800a952:	b25d      	sxtb	r5, r3
 800a954:	b16a      	cbz	r2, 800a972 <xQueueReceive+0x1ea>
 800a956:	6923      	ldr	r3, [r4, #16]
 800a958:	4648      	mov	r0, r9
 800a95a:	b153      	cbz	r3, 800a972 <xQueueReceive+0x1ea>
 800a95c:	f001 f86c 	bl	800ba38 <xTaskRemoveFromEventList>
 800a960:	2800      	cmp	r0, #0
 800a962:	d0f4      	beq.n	800a94e <xQueueReceive+0x1c6>
 800a964:	f001 f904 	bl	800bb70 <vTaskMissedYield>
 800a968:	1e6b      	subs	r3, r5, #1
 800a96a:	b2da      	uxtb	r2, r3
 800a96c:	b25d      	sxtb	r5, r3
 800a96e:	2a00      	cmp	r2, #0
 800a970:	d1f1      	bne.n	800a956 <xQueueReceive+0x1ce>
 800a972:	23ff      	movs	r3, #255	; 0xff
 800a974:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 800a978:	f001 fd96 	bl	800c4a8 <vPortExitCritical>
 800a97c:	f000 ff64 	bl	800b848 <xTaskResumeAll>
 800a980:	f001 fd70 	bl	800c464 <vPortEnterCritical>
 800a984:	6ba3      	ldr	r3, [r4, #56]	; 0x38
 800a986:	b153      	cbz	r3, 800a99e <xQueueReceive+0x216>
 800a988:	f001 fd8e 	bl	800c4a8 <vPortExitCritical>
 800a98c:	f001 fd6a 	bl	800c464 <vPortEnterCritical>
 800a990:	6ba5      	ldr	r5, [r4, #56]	; 0x38
 800a992:	2d00      	cmp	r5, #0
 800a994:	d181      	bne.n	800a89a <xQueueReceive+0x112>
 800a996:	9b01      	ldr	r3, [sp, #4]
 800a998:	2b00      	cmp	r3, #0
 800a99a:	f47f af15 	bne.w	800a7c8 <xQueueReceive+0x40>
 800a99e:	f001 fd83 	bl	800c4a8 <vPortExitCritical>
 800a9a2:	2000      	movs	r0, #0
 800a9a4:	b005      	add	sp, #20
 800a9a6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800a9aa:	f001 fd7d 	bl	800c4a8 <vPortExitCritical>
 800a9ae:	9901      	ldr	r1, [sp, #4]
 800a9b0:	4630      	mov	r0, r6
 800a9b2:	f000 ffb3 	bl	800b91c <vTaskPlaceOnEventList>
 800a9b6:	f001 fd55 	bl	800c464 <vPortEnterCritical>
 800a9ba:	f894 3045 	ldrb.w	r3, [r4, #69]	; 0x45
 800a9be:	b25d      	sxtb	r5, r3
 800a9c0:	2d00      	cmp	r5, #0
 800a9c2:	dc04      	bgt.n	800a9ce <xQueueReceive+0x246>
 800a9c4:	e011      	b.n	800a9ea <xQueueReceive+0x262>
 800a9c6:	1e6b      	subs	r3, r5, #1
 800a9c8:	b2da      	uxtb	r2, r3
 800a9ca:	b25d      	sxtb	r5, r3
 800a9cc:	b16a      	cbz	r2, 800a9ea <xQueueReceive+0x262>
 800a9ce:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800a9d0:	4630      	mov	r0, r6
 800a9d2:	b153      	cbz	r3, 800a9ea <xQueueReceive+0x262>
 800a9d4:	f001 f830 	bl	800ba38 <xTaskRemoveFromEventList>
 800a9d8:	2800      	cmp	r0, #0
 800a9da:	d0f4      	beq.n	800a9c6 <xQueueReceive+0x23e>
 800a9dc:	f001 f8c8 	bl	800bb70 <vTaskMissedYield>
 800a9e0:	1e6b      	subs	r3, r5, #1
 800a9e2:	b2da      	uxtb	r2, r3
 800a9e4:	b25d      	sxtb	r5, r3
 800a9e6:	2a00      	cmp	r2, #0
 800a9e8:	d1f1      	bne.n	800a9ce <xQueueReceive+0x246>
 800a9ea:	23ff      	movs	r3, #255	; 0xff
 800a9ec:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 800a9f0:	f001 fd5a 	bl	800c4a8 <vPortExitCritical>
 800a9f4:	f001 fd36 	bl	800c464 <vPortEnterCritical>
 800a9f8:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
 800a9fc:	b25d      	sxtb	r5, r3
 800a9fe:	2d00      	cmp	r5, #0
 800aa00:	dd14      	ble.n	800aa2c <xQueueReceive+0x2a4>
 800aa02:	f104 0910 	add.w	r9, r4, #16
 800aa06:	e003      	b.n	800aa10 <xQueueReceive+0x288>
 800aa08:	1e6b      	subs	r3, r5, #1
 800aa0a:	b2da      	uxtb	r2, r3
 800aa0c:	b25d      	sxtb	r5, r3
 800aa0e:	b16a      	cbz	r2, 800aa2c <xQueueReceive+0x2a4>
 800aa10:	6923      	ldr	r3, [r4, #16]
 800aa12:	4648      	mov	r0, r9
 800aa14:	b153      	cbz	r3, 800aa2c <xQueueReceive+0x2a4>
 800aa16:	f001 f80f 	bl	800ba38 <xTaskRemoveFromEventList>
 800aa1a:	2800      	cmp	r0, #0
 800aa1c:	d0f4      	beq.n	800aa08 <xQueueReceive+0x280>
 800aa1e:	f001 f8a7 	bl	800bb70 <vTaskMissedYield>
 800aa22:	1e6b      	subs	r3, r5, #1
 800aa24:	b2da      	uxtb	r2, r3
 800aa26:	b25d      	sxtb	r5, r3
 800aa28:	2a00      	cmp	r2, #0
 800aa2a:	d1f1      	bne.n	800aa10 <xQueueReceive+0x288>
 800aa2c:	23ff      	movs	r3, #255	; 0xff
 800aa2e:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 800aa32:	f001 fd39 	bl	800c4a8 <vPortExitCritical>
 800aa36:	f000 ff07 	bl	800b848 <xTaskResumeAll>
 800aa3a:	2800      	cmp	r0, #0
 800aa3c:	d1a6      	bne.n	800a98c <xQueueReceive+0x204>
 800aa3e:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800aa42:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800aa46:	f8c3 2d04 	str.w	r2, [r3, #3332]	; 0xd04
 800aa4a:	f3bf 8f4f 	dsb	sy
 800aa4e:	f3bf 8f6f 	isb	sy
 800aa52:	e79b      	b.n	800a98c <xQueueReceive+0x204>
 800aa54:	f04f 0350 	mov.w	r3, #80	; 0x50
 800aa58:	f383 8811 	msr	BASEPRI, r3
 800aa5c:	f3bf 8f6f 	isb	sy
 800aa60:	f3bf 8f4f 	dsb	sy
 800aa64:	e7fe      	b.n	800aa64 <xQueueReceive+0x2dc>
 800aa66:	f104 0010 	add.w	r0, r4, #16
 800aa6a:	f000 ffe5 	bl	800ba38 <xTaskRemoveFromEventList>
 800aa6e:	2800      	cmp	r0, #0
 800aa70:	f43f af26 	beq.w	800a8c0 <xQueueReceive+0x138>
 800aa74:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800aa78:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800aa7c:	f8c3 2d04 	str.w	r2, [r3, #3332]	; 0xd04
 800aa80:	f3bf 8f4f 	dsb	sy
 800aa84:	f3bf 8f6f 	isb	sy
 800aa88:	e71a      	b.n	800a8c0 <xQueueReceive+0x138>
 800aa8a:	bf00      	nop

0800aa8c <xQueueSemaphoreTake>:
 800aa8c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800aa90:	b084      	sub	sp, #16
 800aa92:	9101      	str	r1, [sp, #4]
 800aa94:	2800      	cmp	r0, #0
 800aa96:	d05c      	beq.n	800ab52 <xQueueSemaphoreTake+0xc6>
 800aa98:	6c07      	ldr	r7, [r0, #64]	; 0x40
 800aa9a:	4604      	mov	r4, r0
 800aa9c:	b147      	cbz	r7, 800aab0 <xQueueSemaphoreTake+0x24>
 800aa9e:	f04f 0350 	mov.w	r3, #80	; 0x50
 800aaa2:	f383 8811 	msr	BASEPRI, r3
 800aaa6:	f3bf 8f6f 	isb	sy
 800aaaa:	f3bf 8f4f 	dsb	sy
 800aaae:	e7fe      	b.n	800aaae <xQueueSemaphoreTake+0x22>
 800aab0:	f001 f86a 	bl	800bb88 <xTaskGetSchedulerState>
 800aab4:	4605      	mov	r5, r0
 800aab6:	2800      	cmp	r0, #0
 800aab8:	d054      	beq.n	800ab64 <xQueueSemaphoreTake+0xd8>
 800aaba:	463d      	mov	r5, r7
 800aabc:	f104 0624 	add.w	r6, r4, #36	; 0x24
 800aac0:	f001 fcd0 	bl	800c464 <vPortEnterCritical>
 800aac4:	6ba3      	ldr	r3, [r4, #56]	; 0x38
 800aac6:	2b00      	cmp	r3, #0
 800aac8:	f040 8148 	bne.w	800ad5c <xQueueSemaphoreTake+0x2d0>
 800aacc:	9b01      	ldr	r3, [sp, #4]
 800aace:	2b00      	cmp	r3, #0
 800aad0:	f000 813a 	beq.w	800ad48 <xQueueSemaphoreTake+0x2bc>
 800aad4:	2d00      	cmp	r5, #0
 800aad6:	f000 809d 	beq.w	800ac14 <xQueueSemaphoreTake+0x188>
 800aada:	f001 fce5 	bl	800c4a8 <vPortExitCritical>
 800aade:	f000 feab 	bl	800b838 <vTaskSuspendAll>
 800aae2:	f001 fcbf 	bl	800c464 <vPortEnterCritical>
 800aae6:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
 800aaea:	2bff      	cmp	r3, #255	; 0xff
 800aaec:	bf04      	itt	eq
 800aaee:	2300      	moveq	r3, #0
 800aaf0:	f884 3044 	strbeq.w	r3, [r4, #68]	; 0x44
 800aaf4:	f894 3045 	ldrb.w	r3, [r4, #69]	; 0x45
 800aaf8:	2bff      	cmp	r3, #255	; 0xff
 800aafa:	bf04      	itt	eq
 800aafc:	2300      	moveq	r3, #0
 800aafe:	f884 3045 	strbeq.w	r3, [r4, #69]	; 0x45
 800ab02:	f001 fcd1 	bl	800c4a8 <vPortExitCritical>
 800ab06:	a901      	add	r1, sp, #4
 800ab08:	a802      	add	r0, sp, #8
 800ab0a:	f000 ffe9 	bl	800bae0 <xTaskCheckForTimeOut>
 800ab0e:	2800      	cmp	r0, #0
 800ab10:	d135      	bne.n	800ab7e <xQueueSemaphoreTake+0xf2>
 800ab12:	f001 fca7 	bl	800c464 <vPortEnterCritical>
 800ab16:	6ba3      	ldr	r3, [r4, #56]	; 0x38
 800ab18:	2b00      	cmp	r3, #0
 800ab1a:	f000 80a4 	beq.w	800ac66 <xQueueSemaphoreTake+0x1da>
 800ab1e:	f001 fcc3 	bl	800c4a8 <vPortExitCritical>
 800ab22:	f001 fc9f 	bl	800c464 <vPortEnterCritical>
 800ab26:	f894 3045 	ldrb.w	r3, [r4, #69]	; 0x45
 800ab2a:	b25d      	sxtb	r5, r3
 800ab2c:	2d00      	cmp	r5, #0
 800ab2e:	dc05      	bgt.n	800ab3c <xQueueSemaphoreTake+0xb0>
 800ab30:	e074      	b.n	800ac1c <xQueueSemaphoreTake+0x190>
 800ab32:	1e6b      	subs	r3, r5, #1
 800ab34:	b2da      	uxtb	r2, r3
 800ab36:	b25d      	sxtb	r5, r3
 800ab38:	2a00      	cmp	r2, #0
 800ab3a:	d06f      	beq.n	800ac1c <xQueueSemaphoreTake+0x190>
 800ab3c:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800ab3e:	4630      	mov	r0, r6
 800ab40:	2b00      	cmp	r3, #0
 800ab42:	d06b      	beq.n	800ac1c <xQueueSemaphoreTake+0x190>
 800ab44:	f000 ff78 	bl	800ba38 <xTaskRemoveFromEventList>
 800ab48:	2800      	cmp	r0, #0
 800ab4a:	d0f2      	beq.n	800ab32 <xQueueSemaphoreTake+0xa6>
 800ab4c:	f001 f810 	bl	800bb70 <vTaskMissedYield>
 800ab50:	e7ef      	b.n	800ab32 <xQueueSemaphoreTake+0xa6>
 800ab52:	f04f 0350 	mov.w	r3, #80	; 0x50
 800ab56:	f383 8811 	msr	BASEPRI, r3
 800ab5a:	f3bf 8f6f 	isb	sy
 800ab5e:	f3bf 8f4f 	dsb	sy
 800ab62:	e7fe      	b.n	800ab62 <xQueueSemaphoreTake+0xd6>
 800ab64:	9b01      	ldr	r3, [sp, #4]
 800ab66:	2b00      	cmp	r3, #0
 800ab68:	f000 80d4 	beq.w	800ad14 <xQueueSemaphoreTake+0x288>
 800ab6c:	f04f 0350 	mov.w	r3, #80	; 0x50
 800ab70:	f383 8811 	msr	BASEPRI, r3
 800ab74:	f3bf 8f6f 	isb	sy
 800ab78:	f3bf 8f4f 	dsb	sy
 800ab7c:	e7fe      	b.n	800ab7c <xQueueSemaphoreTake+0xf0>
 800ab7e:	f001 fc71 	bl	800c464 <vPortEnterCritical>
 800ab82:	f894 3045 	ldrb.w	r3, [r4, #69]	; 0x45
 800ab86:	b25d      	sxtb	r5, r3
 800ab88:	2d00      	cmp	r5, #0
 800ab8a:	dc04      	bgt.n	800ab96 <xQueueSemaphoreTake+0x10a>
 800ab8c:	e011      	b.n	800abb2 <xQueueSemaphoreTake+0x126>
 800ab8e:	1e6b      	subs	r3, r5, #1
 800ab90:	b2da      	uxtb	r2, r3
 800ab92:	b25d      	sxtb	r5, r3
 800ab94:	b16a      	cbz	r2, 800abb2 <xQueueSemaphoreTake+0x126>
 800ab96:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800ab98:	4630      	mov	r0, r6
 800ab9a:	b153      	cbz	r3, 800abb2 <xQueueSemaphoreTake+0x126>
 800ab9c:	f000 ff4c 	bl	800ba38 <xTaskRemoveFromEventList>
 800aba0:	2800      	cmp	r0, #0
 800aba2:	d0f4      	beq.n	800ab8e <xQueueSemaphoreTake+0x102>
 800aba4:	f000 ffe4 	bl	800bb70 <vTaskMissedYield>
 800aba8:	1e6b      	subs	r3, r5, #1
 800abaa:	b2da      	uxtb	r2, r3
 800abac:	b25d      	sxtb	r5, r3
 800abae:	2a00      	cmp	r2, #0
 800abb0:	d1f1      	bne.n	800ab96 <xQueueSemaphoreTake+0x10a>
 800abb2:	23ff      	movs	r3, #255	; 0xff
 800abb4:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 800abb8:	f001 fc76 	bl	800c4a8 <vPortExitCritical>
 800abbc:	f001 fc52 	bl	800c464 <vPortEnterCritical>
 800abc0:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
 800abc4:	b25d      	sxtb	r5, r3
 800abc6:	2d00      	cmp	r5, #0
 800abc8:	dd14      	ble.n	800abf4 <xQueueSemaphoreTake+0x168>
 800abca:	f104 0810 	add.w	r8, r4, #16
 800abce:	e003      	b.n	800abd8 <xQueueSemaphoreTake+0x14c>
 800abd0:	1e6b      	subs	r3, r5, #1
 800abd2:	b2da      	uxtb	r2, r3
 800abd4:	b25d      	sxtb	r5, r3
 800abd6:	b16a      	cbz	r2, 800abf4 <xQueueSemaphoreTake+0x168>
 800abd8:	6923      	ldr	r3, [r4, #16]
 800abda:	4640      	mov	r0, r8
 800abdc:	b153      	cbz	r3, 800abf4 <xQueueSemaphoreTake+0x168>
 800abde:	f000 ff2b 	bl	800ba38 <xTaskRemoveFromEventList>
 800abe2:	2800      	cmp	r0, #0
 800abe4:	d0f4      	beq.n	800abd0 <xQueueSemaphoreTake+0x144>
 800abe6:	f000 ffc3 	bl	800bb70 <vTaskMissedYield>
 800abea:	1e6b      	subs	r3, r5, #1
 800abec:	b2da      	uxtb	r2, r3
 800abee:	b25d      	sxtb	r5, r3
 800abf0:	2a00      	cmp	r2, #0
 800abf2:	d1f1      	bne.n	800abd8 <xQueueSemaphoreTake+0x14c>
 800abf4:	23ff      	movs	r3, #255	; 0xff
 800abf6:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 800abfa:	f001 fc55 	bl	800c4a8 <vPortExitCritical>
 800abfe:	f000 fe23 	bl	800b848 <xTaskResumeAll>
 800ac02:	f001 fc2f 	bl	800c464 <vPortEnterCritical>
 800ac06:	6ba3      	ldr	r3, [r4, #56]	; 0x38
 800ac08:	2b00      	cmp	r3, #0
 800ac0a:	d07c      	beq.n	800ad06 <xQueueSemaphoreTake+0x27a>
 800ac0c:	f001 fc4c 	bl	800c4a8 <vPortExitCritical>
 800ac10:	2501      	movs	r5, #1
 800ac12:	e755      	b.n	800aac0 <xQueueSemaphoreTake+0x34>
 800ac14:	a802      	add	r0, sp, #8
 800ac16:	f000 ff57 	bl	800bac8 <vTaskInternalSetTimeOutState>
 800ac1a:	e75e      	b.n	800aada <xQueueSemaphoreTake+0x4e>
 800ac1c:	23ff      	movs	r3, #255	; 0xff
 800ac1e:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 800ac22:	f001 fc41 	bl	800c4a8 <vPortExitCritical>
 800ac26:	f001 fc1d 	bl	800c464 <vPortEnterCritical>
 800ac2a:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
 800ac2e:	b25d      	sxtb	r5, r3
 800ac30:	2d00      	cmp	r5, #0
 800ac32:	dd10      	ble.n	800ac56 <xQueueSemaphoreTake+0x1ca>
 800ac34:	f104 0810 	add.w	r8, r4, #16
 800ac38:	e003      	b.n	800ac42 <xQueueSemaphoreTake+0x1b6>
 800ac3a:	1e6b      	subs	r3, r5, #1
 800ac3c:	b2da      	uxtb	r2, r3
 800ac3e:	b25d      	sxtb	r5, r3
 800ac40:	b14a      	cbz	r2, 800ac56 <xQueueSemaphoreTake+0x1ca>
 800ac42:	6923      	ldr	r3, [r4, #16]
 800ac44:	4640      	mov	r0, r8
 800ac46:	b133      	cbz	r3, 800ac56 <xQueueSemaphoreTake+0x1ca>
 800ac48:	f000 fef6 	bl	800ba38 <xTaskRemoveFromEventList>
 800ac4c:	2800      	cmp	r0, #0
 800ac4e:	d0f4      	beq.n	800ac3a <xQueueSemaphoreTake+0x1ae>
 800ac50:	f000 ff8e 	bl	800bb70 <vTaskMissedYield>
 800ac54:	e7f1      	b.n	800ac3a <xQueueSemaphoreTake+0x1ae>
 800ac56:	23ff      	movs	r3, #255	; 0xff
 800ac58:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 800ac5c:	f001 fc24 	bl	800c4a8 <vPortExitCritical>
 800ac60:	f000 fdf2 	bl	800b848 <xTaskResumeAll>
 800ac64:	e7d4      	b.n	800ac10 <xQueueSemaphoreTake+0x184>
 800ac66:	f001 fc1f 	bl	800c4a8 <vPortExitCritical>
 800ac6a:	6823      	ldr	r3, [r4, #0]
 800ac6c:	2b00      	cmp	r3, #0
 800ac6e:	d062      	beq.n	800ad36 <xQueueSemaphoreTake+0x2aa>
 800ac70:	9901      	ldr	r1, [sp, #4]
 800ac72:	4630      	mov	r0, r6
 800ac74:	f000 fe52 	bl	800b91c <vTaskPlaceOnEventList>
 800ac78:	f001 fbf4 	bl	800c464 <vPortEnterCritical>
 800ac7c:	f894 3045 	ldrb.w	r3, [r4, #69]	; 0x45
 800ac80:	b25d      	sxtb	r5, r3
 800ac82:	2d00      	cmp	r5, #0
 800ac84:	dc04      	bgt.n	800ac90 <xQueueSemaphoreTake+0x204>
 800ac86:	e00d      	b.n	800aca4 <xQueueSemaphoreTake+0x218>
 800ac88:	1e6b      	subs	r3, r5, #1
 800ac8a:	b2da      	uxtb	r2, r3
 800ac8c:	b25d      	sxtb	r5, r3
 800ac8e:	b14a      	cbz	r2, 800aca4 <xQueueSemaphoreTake+0x218>
 800ac90:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800ac92:	4630      	mov	r0, r6
 800ac94:	b133      	cbz	r3, 800aca4 <xQueueSemaphoreTake+0x218>
 800ac96:	f000 fecf 	bl	800ba38 <xTaskRemoveFromEventList>
 800ac9a:	2800      	cmp	r0, #0
 800ac9c:	d0f4      	beq.n	800ac88 <xQueueSemaphoreTake+0x1fc>
 800ac9e:	f000 ff67 	bl	800bb70 <vTaskMissedYield>
 800aca2:	e7f1      	b.n	800ac88 <xQueueSemaphoreTake+0x1fc>
 800aca4:	23ff      	movs	r3, #255	; 0xff
 800aca6:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
 800acaa:	f001 fbfd 	bl	800c4a8 <vPortExitCritical>
 800acae:	f001 fbd9 	bl	800c464 <vPortEnterCritical>
 800acb2:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
 800acb6:	b25d      	sxtb	r5, r3
 800acb8:	2d00      	cmp	r5, #0
 800acba:	dd10      	ble.n	800acde <xQueueSemaphoreTake+0x252>
 800acbc:	f104 0810 	add.w	r8, r4, #16
 800acc0:	e003      	b.n	800acca <xQueueSemaphoreTake+0x23e>
 800acc2:	1e6b      	subs	r3, r5, #1
 800acc4:	b2da      	uxtb	r2, r3
 800acc6:	b25d      	sxtb	r5, r3
 800acc8:	b14a      	cbz	r2, 800acde <xQueueSemaphoreTake+0x252>
 800acca:	6923      	ldr	r3, [r4, #16]
 800accc:	4640      	mov	r0, r8
 800acce:	b133      	cbz	r3, 800acde <xQueueSemaphoreTake+0x252>
 800acd0:	f000 feb2 	bl	800ba38 <xTaskRemoveFromEventList>
 800acd4:	2800      	cmp	r0, #0
 800acd6:	d0f4      	beq.n	800acc2 <xQueueSemaphoreTake+0x236>
 800acd8:	f000 ff4a 	bl	800bb70 <vTaskMissedYield>
 800acdc:	e7f1      	b.n	800acc2 <xQueueSemaphoreTake+0x236>
 800acde:	23ff      	movs	r3, #255	; 0xff
 800ace0:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 800ace4:	f001 fbe0 	bl	800c4a8 <vPortExitCritical>
 800ace8:	f000 fdae 	bl	800b848 <xTaskResumeAll>
 800acec:	2800      	cmp	r0, #0
 800acee:	d18f      	bne.n	800ac10 <xQueueSemaphoreTake+0x184>
 800acf0:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800acf4:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800acf8:	f8c3 2d04 	str.w	r2, [r3, #3332]	; 0xd04
 800acfc:	f3bf 8f4f 	dsb	sy
 800ad00:	f3bf 8f6f 	isb	sy
 800ad04:	e784      	b.n	800ac10 <xQueueSemaphoreTake+0x184>
 800ad06:	f001 fbcf 	bl	800c4a8 <vPortExitCritical>
 800ad0a:	b92f      	cbnz	r7, 800ad18 <xQueueSemaphoreTake+0x28c>
 800ad0c:	4638      	mov	r0, r7
 800ad0e:	b004      	add	sp, #16
 800ad10:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800ad14:	4607      	mov	r7, r0
 800ad16:	e6d1      	b.n	800aabc <xQueueSemaphoreTake+0x30>
 800ad18:	f001 fba4 	bl	800c464 <vPortEnterCritical>
 800ad1c:	6a61      	ldr	r1, [r4, #36]	; 0x24
 800ad1e:	b119      	cbz	r1, 800ad28 <xQueueSemaphoreTake+0x29c>
 800ad20:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800ad22:	6819      	ldr	r1, [r3, #0]
 800ad24:	f1c1 0138 	rsb	r1, r1, #56	; 0x38
 800ad28:	68a0      	ldr	r0, [r4, #8]
 800ad2a:	f000 ffc9 	bl	800bcc0 <vTaskPriorityDisinheritAfterTimeout>
 800ad2e:	2700      	movs	r7, #0
 800ad30:	f001 fbba 	bl	800c4a8 <vPortExitCritical>
 800ad34:	e7ea      	b.n	800ad0c <xQueueSemaphoreTake+0x280>
 800ad36:	f001 fb95 	bl	800c464 <vPortEnterCritical>
 800ad3a:	68a0      	ldr	r0, [r4, #8]
 800ad3c:	f000 ff34 	bl	800bba8 <xTaskPriorityInherit>
 800ad40:	4607      	mov	r7, r0
 800ad42:	f001 fbb1 	bl	800c4a8 <vPortExitCritical>
 800ad46:	e793      	b.n	800ac70 <xQueueSemaphoreTake+0x1e4>
 800ad48:	b197      	cbz	r7, 800ad70 <xQueueSemaphoreTake+0x2e4>
 800ad4a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800ad4e:	f383 8811 	msr	BASEPRI, r3
 800ad52:	f3bf 8f6f 	isb	sy
 800ad56:	f3bf 8f4f 	dsb	sy
 800ad5a:	e7fe      	b.n	800ad5a <xQueueSemaphoreTake+0x2ce>
 800ad5c:	6822      	ldr	r2, [r4, #0]
 800ad5e:	3b01      	subs	r3, #1
 800ad60:	63a3      	str	r3, [r4, #56]	; 0x38
 800ad62:	b1ca      	cbz	r2, 800ad98 <xQueueSemaphoreTake+0x30c>
 800ad64:	6923      	ldr	r3, [r4, #16]
 800ad66:	b933      	cbnz	r3, 800ad76 <xQueueSemaphoreTake+0x2ea>
 800ad68:	f001 fb9e 	bl	800c4a8 <vPortExitCritical>
 800ad6c:	2701      	movs	r7, #1
 800ad6e:	e7cd      	b.n	800ad0c <xQueueSemaphoreTake+0x280>
 800ad70:	f001 fb9a 	bl	800c4a8 <vPortExitCritical>
 800ad74:	e7ca      	b.n	800ad0c <xQueueSemaphoreTake+0x280>
 800ad76:	f104 0010 	add.w	r0, r4, #16
 800ad7a:	f000 fe5d 	bl	800ba38 <xTaskRemoveFromEventList>
 800ad7e:	2800      	cmp	r0, #0
 800ad80:	d0f2      	beq.n	800ad68 <xQueueSemaphoreTake+0x2dc>
 800ad82:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800ad86:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800ad8a:	f8c3 2d04 	str.w	r2, [r3, #3332]	; 0xd04
 800ad8e:	f3bf 8f4f 	dsb	sy
 800ad92:	f3bf 8f6f 	isb	sy
 800ad96:	e7e7      	b.n	800ad68 <xQueueSemaphoreTake+0x2dc>
 800ad98:	f000 ffe6 	bl	800bd68 <pvTaskIncrementMutexHeldCount>
 800ad9c:	60a0      	str	r0, [r4, #8]
 800ad9e:	e7e1      	b.n	800ad64 <xQueueSemaphoreTake+0x2d8>

0800ada0 <xQueueTakeMutexRecursive>:
 800ada0:	b1a8      	cbz	r0, 800adce <xQueueTakeMutexRecursive+0x2e>
 800ada2:	b570      	push	{r4, r5, r6, lr}
 800ada4:	6886      	ldr	r6, [r0, #8]
 800ada6:	460d      	mov	r5, r1
 800ada8:	4604      	mov	r4, r0
 800adaa:	f000 fee7 	bl	800bb7c <xTaskGetCurrentTaskHandle>
 800adae:	4286      	cmp	r6, r0
 800adb0:	d008      	beq.n	800adc4 <xQueueTakeMutexRecursive+0x24>
 800adb2:	4629      	mov	r1, r5
 800adb4:	4620      	mov	r0, r4
 800adb6:	f7ff fe69 	bl	800aa8c <xQueueSemaphoreTake>
 800adba:	b110      	cbz	r0, 800adc2 <xQueueTakeMutexRecursive+0x22>
 800adbc:	68e3      	ldr	r3, [r4, #12]
 800adbe:	3301      	adds	r3, #1
 800adc0:	60e3      	str	r3, [r4, #12]
 800adc2:	bd70      	pop	{r4, r5, r6, pc}
 800adc4:	68e3      	ldr	r3, [r4, #12]
 800adc6:	2001      	movs	r0, #1
 800adc8:	4403      	add	r3, r0
 800adca:	60e3      	str	r3, [r4, #12]
 800adcc:	bd70      	pop	{r4, r5, r6, pc}
 800adce:	f04f 0350 	mov.w	r3, #80	; 0x50
 800add2:	f383 8811 	msr	BASEPRI, r3
 800add6:	f3bf 8f6f 	isb	sy
 800adda:	f3bf 8f4f 	dsb	sy
 800adde:	e7fe      	b.n	800adde <xQueueTakeMutexRecursive+0x3e>

0800ade0 <xQueueReceiveFromISR>:
 800ade0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 800ade4:	b310      	cbz	r0, 800ae2c <xQueueReceiveFromISR+0x4c>
 800ade6:	460e      	mov	r6, r1
 800ade8:	4617      	mov	r7, r2
 800adea:	4604      	mov	r4, r0
 800adec:	b191      	cbz	r1, 800ae14 <xQueueReceiveFromISR+0x34>
 800adee:	f001 fc6b 	bl	800c6c8 <vPortValidateInterruptPriority>
 800adf2:	f3ef 8911 	mrs	r9, BASEPRI
 800adf6:	f04f 0350 	mov.w	r3, #80	; 0x50
 800adfa:	f383 8811 	msr	BASEPRI, r3
 800adfe:	f3bf 8f6f 	isb	sy
 800ae02:	f3bf 8f4f 	dsb	sy
 800ae06:	6ba5      	ldr	r5, [r4, #56]	; 0x38
 800ae08:	b9cd      	cbnz	r5, 800ae3e <xQueueReceiveFromISR+0x5e>
 800ae0a:	4628      	mov	r0, r5
 800ae0c:	f389 8811 	msr	BASEPRI, r9
 800ae10:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800ae14:	6c03      	ldr	r3, [r0, #64]	; 0x40
 800ae16:	2b00      	cmp	r3, #0
 800ae18:	d0e9      	beq.n	800adee <xQueueReceiveFromISR+0xe>
 800ae1a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800ae1e:	f383 8811 	msr	BASEPRI, r3
 800ae22:	f3bf 8f6f 	isb	sy
 800ae26:	f3bf 8f4f 	dsb	sy
 800ae2a:	e7fe      	b.n	800ae2a <xQueueReceiveFromISR+0x4a>
 800ae2c:	f04f 0350 	mov.w	r3, #80	; 0x50
 800ae30:	f383 8811 	msr	BASEPRI, r3
 800ae34:	f3bf 8f6f 	isb	sy
 800ae38:	f3bf 8f4f 	dsb	sy
 800ae3c:	e7fe      	b.n	800ae3c <xQueueReceiveFromISR+0x5c>
 800ae3e:	f894 8044 	ldrb.w	r8, [r4, #68]	; 0x44
 800ae42:	6c22      	ldr	r2, [r4, #64]	; 0x40
 800ae44:	fa4f f888 	sxtb.w	r8, r8
 800ae48:	b152      	cbz	r2, 800ae60 <xQueueReceiveFromISR+0x80>
 800ae4a:	68e1      	ldr	r1, [r4, #12]
 800ae4c:	68a3      	ldr	r3, [r4, #8]
 800ae4e:	4411      	add	r1, r2
 800ae50:	4299      	cmp	r1, r3
 800ae52:	60e1      	str	r1, [r4, #12]
 800ae54:	bf24      	itt	cs
 800ae56:	6821      	ldrcs	r1, [r4, #0]
 800ae58:	60e1      	strcs	r1, [r4, #12]
 800ae5a:	4630      	mov	r0, r6
 800ae5c:	f7f5 fa06 	bl	800026c <memcpy>
 800ae60:	3d01      	subs	r5, #1
 800ae62:	f1b8 3fff 	cmp.w	r8, #4294967295	; 0xffffffff
 800ae66:	63a5      	str	r5, [r4, #56]	; 0x38
 800ae68:	d009      	beq.n	800ae7e <xQueueReceiveFromISR+0x9e>
 800ae6a:	f108 0301 	add.w	r3, r8, #1
 800ae6e:	b25b      	sxtb	r3, r3
 800ae70:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 800ae74:	2001      	movs	r0, #1
 800ae76:	f389 8811 	msr	BASEPRI, r9
 800ae7a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800ae7e:	6923      	ldr	r3, [r4, #16]
 800ae80:	2b00      	cmp	r3, #0
 800ae82:	d0f7      	beq.n	800ae74 <xQueueReceiveFromISR+0x94>
 800ae84:	f104 0010 	add.w	r0, r4, #16
 800ae88:	f000 fdd6 	bl	800ba38 <xTaskRemoveFromEventList>
 800ae8c:	2800      	cmp	r0, #0
 800ae8e:	d0f1      	beq.n	800ae74 <xQueueReceiveFromISR+0x94>
 800ae90:	2f00      	cmp	r7, #0
 800ae92:	d0ef      	beq.n	800ae74 <xQueueReceiveFromISR+0x94>
 800ae94:	2001      	movs	r0, #1
 800ae96:	6038      	str	r0, [r7, #0]
 800ae98:	e7b8      	b.n	800ae0c <xQueueReceiveFromISR+0x2c>
 800ae9a:	bf00      	nop
 800ae9c:	0000      	movs	r0, r0
	...

0800aea0 <vQueueDelete>:
 800aea0:	b1f0      	cbz	r0, 800aee0 <vQueueDelete+0x40>
 800aea2:	4b21      	ldr	r3, [pc, #132]	; (800af28 <vQueueDelete+0x88>)
 800aea4:	685a      	ldr	r2, [r3, #4]
 800aea6:	4290      	cmp	r0, r2
 800aea8:	d025      	beq.n	800aef6 <vQueueDelete+0x56>
 800aeaa:	68da      	ldr	r2, [r3, #12]
 800aeac:	4290      	cmp	r0, r2
 800aeae:	d02c      	beq.n	800af0a <vQueueDelete+0x6a>
 800aeb0:	695a      	ldr	r2, [r3, #20]
 800aeb2:	4290      	cmp	r0, r2
 800aeb4:	d02b      	beq.n	800af0e <vQueueDelete+0x6e>
 800aeb6:	69da      	ldr	r2, [r3, #28]
 800aeb8:	4290      	cmp	r0, r2
 800aeba:	d02a      	beq.n	800af12 <vQueueDelete+0x72>
 800aebc:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 800aebe:	4290      	cmp	r0, r2
 800aec0:	d029      	beq.n	800af16 <vQueueDelete+0x76>
 800aec2:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800aec4:	4290      	cmp	r0, r2
 800aec6:	d01e      	beq.n	800af06 <vQueueDelete+0x66>
 800aec8:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 800aeca:	4290      	cmp	r0, r2
 800aecc:	d025      	beq.n	800af1a <vQueueDelete+0x7a>
 800aece:	6bda      	ldr	r2, [r3, #60]	; 0x3c
 800aed0:	4290      	cmp	r0, r2
 800aed2:	bf08      	it	eq
 800aed4:	2207      	moveq	r2, #7
 800aed6:	d00f      	beq.n	800aef8 <vQueueDelete+0x58>
 800aed8:	f890 3046 	ldrb.w	r3, [r0, #70]	; 0x46
 800aedc:	b14b      	cbz	r3, 800aef2 <vQueueDelete+0x52>
 800aede:	4770      	bx	lr
 800aee0:	f04f 0350 	mov.w	r3, #80	; 0x50
 800aee4:	f383 8811 	msr	BASEPRI, r3
 800aee8:	f3bf 8f6f 	isb	sy
 800aeec:	f3bf 8f4f 	dsb	sy
 800aef0:	e7fe      	b.n	800aef0 <vQueueDelete+0x50>
 800aef2:	f001 b9eb 	b.w	800c2cc <vPortFree>
 800aef6:	2200      	movs	r2, #0
 800aef8:	ed9f 7b09 	vldr	d7, [pc, #36]	; 800af20 <vQueueDelete+0x80>
 800aefc:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800af00:	ed83 7b00 	vstr	d7, [r3]
 800af04:	e7e8      	b.n	800aed8 <vQueueDelete+0x38>
 800af06:	2205      	movs	r2, #5
 800af08:	e7f6      	b.n	800aef8 <vQueueDelete+0x58>
 800af0a:	2201      	movs	r2, #1
 800af0c:	e7f4      	b.n	800aef8 <vQueueDelete+0x58>
 800af0e:	2202      	movs	r2, #2
 800af10:	e7f2      	b.n	800aef8 <vQueueDelete+0x58>
 800af12:	2203      	movs	r2, #3
 800af14:	e7f0      	b.n	800aef8 <vQueueDelete+0x58>
 800af16:	2204      	movs	r2, #4
 800af18:	e7ee      	b.n	800aef8 <vQueueDelete+0x58>
 800af1a:	2206      	movs	r2, #6
 800af1c:	e7ec      	b.n	800aef8 <vQueueDelete+0x58>
 800af1e:	bf00      	nop
	...
 800af28:	20000820 	.word	0x20000820

0800af2c <vQueueAddToRegistry>:
 800af2c:	4b12      	ldr	r3, [pc, #72]	; (800af78 <vQueueAddToRegistry+0x4c>)
 800af2e:	681a      	ldr	r2, [r3, #0]
 800af30:	b17a      	cbz	r2, 800af52 <vQueueAddToRegistry+0x26>
 800af32:	689a      	ldr	r2, [r3, #8]
 800af34:	b162      	cbz	r2, 800af50 <vQueueAddToRegistry+0x24>
 800af36:	691a      	ldr	r2, [r3, #16]
 800af38:	b192      	cbz	r2, 800af60 <vQueueAddToRegistry+0x34>
 800af3a:	699a      	ldr	r2, [r3, #24]
 800af3c:	b192      	cbz	r2, 800af64 <vQueueAddToRegistry+0x38>
 800af3e:	6a1a      	ldr	r2, [r3, #32]
 800af40:	b192      	cbz	r2, 800af68 <vQueueAddToRegistry+0x3c>
 800af42:	6a9a      	ldr	r2, [r3, #40]	; 0x28
 800af44:	b192      	cbz	r2, 800af6c <vQueueAddToRegistry+0x40>
 800af46:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 800af48:	b192      	cbz	r2, 800af70 <vQueueAddToRegistry+0x44>
 800af4a:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800af4c:	b192      	cbz	r2, 800af74 <vQueueAddToRegistry+0x48>
 800af4e:	4770      	bx	lr
 800af50:	2201      	movs	r2, #1
 800af52:	eb03 0cc2 	add.w	ip, r3, r2, lsl #3
 800af56:	f843 1032 	str.w	r1, [r3, r2, lsl #3]
 800af5a:	f8cc 0004 	str.w	r0, [ip, #4]
 800af5e:	4770      	bx	lr
 800af60:	2202      	movs	r2, #2
 800af62:	e7f6      	b.n	800af52 <vQueueAddToRegistry+0x26>
 800af64:	2203      	movs	r2, #3
 800af66:	e7f4      	b.n	800af52 <vQueueAddToRegistry+0x26>
 800af68:	2204      	movs	r2, #4
 800af6a:	e7f2      	b.n	800af52 <vQueueAddToRegistry+0x26>
 800af6c:	2205      	movs	r2, #5
 800af6e:	e7f0      	b.n	800af52 <vQueueAddToRegistry+0x26>
 800af70:	2206      	movs	r2, #6
 800af72:	e7ee      	b.n	800af52 <vQueueAddToRegistry+0x26>
 800af74:	2207      	movs	r2, #7
 800af76:	e7ec      	b.n	800af52 <vQueueAddToRegistry+0x26>
 800af78:	20000820 	.word	0x20000820

0800af7c <vQueueWaitForMessageRestricted>:
 800af7c:	b570      	push	{r4, r5, r6, lr}
 800af7e:	4605      	mov	r5, r0
 800af80:	460e      	mov	r6, r1
 800af82:	4614      	mov	r4, r2
 800af84:	f001 fa6e 	bl	800c464 <vPortEnterCritical>
 800af88:	f895 3044 	ldrb.w	r3, [r5, #68]	; 0x44
 800af8c:	2bff      	cmp	r3, #255	; 0xff
 800af8e:	bf04      	itt	eq
 800af90:	2300      	moveq	r3, #0
 800af92:	f885 3044 	strbeq.w	r3, [r5, #68]	; 0x44
 800af96:	f895 3045 	ldrb.w	r3, [r5, #69]	; 0x45
 800af9a:	2bff      	cmp	r3, #255	; 0xff
 800af9c:	bf04      	itt	eq
 800af9e:	2300      	moveq	r3, #0
 800afa0:	f885 3045 	strbeq.w	r3, [r5, #69]	; 0x45
 800afa4:	f001 fa80 	bl	800c4a8 <vPortExitCritical>
 800afa8:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800afaa:	2b00      	cmp	r3, #0
 800afac:	d043      	beq.n	800b036 <vQueueWaitForMessageRestricted+0xba>
 800afae:	f001 fa59 	bl	800c464 <vPortEnterCritical>
 800afb2:	f895 3045 	ldrb.w	r3, [r5, #69]	; 0x45
 800afb6:	b25c      	sxtb	r4, r3
 800afb8:	2c00      	cmp	r4, #0
 800afba:	dd14      	ble.n	800afe6 <vQueueWaitForMessageRestricted+0x6a>
 800afbc:	f105 0624 	add.w	r6, r5, #36	; 0x24
 800afc0:	e003      	b.n	800afca <vQueueWaitForMessageRestricted+0x4e>
 800afc2:	1e63      	subs	r3, r4, #1
 800afc4:	b2da      	uxtb	r2, r3
 800afc6:	b25c      	sxtb	r4, r3
 800afc8:	b16a      	cbz	r2, 800afe6 <vQueueWaitForMessageRestricted+0x6a>
 800afca:	6a6b      	ldr	r3, [r5, #36]	; 0x24
 800afcc:	4630      	mov	r0, r6
 800afce:	b153      	cbz	r3, 800afe6 <vQueueWaitForMessageRestricted+0x6a>
 800afd0:	f000 fd32 	bl	800ba38 <xTaskRemoveFromEventList>
 800afd4:	2800      	cmp	r0, #0
 800afd6:	d0f4      	beq.n	800afc2 <vQueueWaitForMessageRestricted+0x46>
 800afd8:	f000 fdca 	bl	800bb70 <vTaskMissedYield>
 800afdc:	1e63      	subs	r3, r4, #1
 800afde:	b2da      	uxtb	r2, r3
 800afe0:	b25c      	sxtb	r4, r3
 800afe2:	2a00      	cmp	r2, #0
 800afe4:	d1f1      	bne.n	800afca <vQueueWaitForMessageRestricted+0x4e>
 800afe6:	23ff      	movs	r3, #255	; 0xff
 800afe8:	f885 3045 	strb.w	r3, [r5, #69]	; 0x45
 800afec:	f001 fa5c 	bl	800c4a8 <vPortExitCritical>
 800aff0:	f001 fa38 	bl	800c464 <vPortEnterCritical>
 800aff4:	f895 3044 	ldrb.w	r3, [r5, #68]	; 0x44
 800aff8:	b25c      	sxtb	r4, r3
 800affa:	2c00      	cmp	r4, #0
 800affc:	dd14      	ble.n	800b028 <vQueueWaitForMessageRestricted+0xac>
 800affe:	f105 0610 	add.w	r6, r5, #16
 800b002:	e003      	b.n	800b00c <vQueueWaitForMessageRestricted+0x90>
 800b004:	1e63      	subs	r3, r4, #1
 800b006:	b2da      	uxtb	r2, r3
 800b008:	b25c      	sxtb	r4, r3
 800b00a:	b16a      	cbz	r2, 800b028 <vQueueWaitForMessageRestricted+0xac>
 800b00c:	692b      	ldr	r3, [r5, #16]
 800b00e:	4630      	mov	r0, r6
 800b010:	b153      	cbz	r3, 800b028 <vQueueWaitForMessageRestricted+0xac>
 800b012:	f000 fd11 	bl	800ba38 <xTaskRemoveFromEventList>
 800b016:	2800      	cmp	r0, #0
 800b018:	d0f4      	beq.n	800b004 <vQueueWaitForMessageRestricted+0x88>
 800b01a:	f000 fda9 	bl	800bb70 <vTaskMissedYield>
 800b01e:	1e63      	subs	r3, r4, #1
 800b020:	b2da      	uxtb	r2, r3
 800b022:	b25c      	sxtb	r4, r3
 800b024:	2a00      	cmp	r2, #0
 800b026:	d1f1      	bne.n	800b00c <vQueueWaitForMessageRestricted+0x90>
 800b028:	23ff      	movs	r3, #255	; 0xff
 800b02a:	f885 3044 	strb.w	r3, [r5, #68]	; 0x44
 800b02e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800b032:	f001 ba39 	b.w	800c4a8 <vPortExitCritical>
 800b036:	4622      	mov	r2, r4
 800b038:	4631      	mov	r1, r6
 800b03a:	f105 0024 	add.w	r0, r5, #36	; 0x24
 800b03e:	f000 fcb1 	bl	800b9a4 <vTaskPlaceOnEventListRestricted>
 800b042:	e7b4      	b.n	800afae <vQueueWaitForMessageRestricted+0x32>

0800b044 <prvAddNewTaskToReadyList>:
 800b044:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 800b048:	4605      	mov	r5, r0
 800b04a:	f001 fa0b 	bl	800c464 <vPortEnterCritical>
 800b04e:	4a34      	ldr	r2, [pc, #208]	; (800b120 <prvAddNewTaskToReadyList+0xdc>)
 800b050:	4e34      	ldr	r6, [pc, #208]	; (800b124 <prvAddNewTaskToReadyList+0xe0>)
 800b052:	6813      	ldr	r3, [r2, #0]
 800b054:	3301      	adds	r3, #1
 800b056:	6013      	str	r3, [r2, #0]
 800b058:	6833      	ldr	r3, [r6, #0]
 800b05a:	2b00      	cmp	r3, #0
 800b05c:	d032      	beq.n	800b0c4 <prvAddNewTaskToReadyList+0x80>
 800b05e:	4c32      	ldr	r4, [pc, #200]	; (800b128 <prvAddNewTaskToReadyList+0xe4>)
 800b060:	6823      	ldr	r3, [r4, #0]
 800b062:	b33b      	cbz	r3, 800b0b4 <prvAddNewTaskToReadyList+0x70>
 800b064:	6ae8      	ldr	r0, [r5, #44]	; 0x2c
 800b066:	4f31      	ldr	r7, [pc, #196]	; (800b12c <prvAddNewTaskToReadyList+0xe8>)
 800b068:	4a31      	ldr	r2, [pc, #196]	; (800b130 <prvAddNewTaskToReadyList+0xec>)
 800b06a:	4932      	ldr	r1, [pc, #200]	; (800b134 <prvAddNewTaskToReadyList+0xf0>)
 800b06c:	6813      	ldr	r3, [r2, #0]
 800b06e:	3301      	adds	r3, #1
 800b070:	6013      	str	r3, [r2, #0]
 800b072:	646b      	str	r3, [r5, #68]	; 0x44
 800b074:	680b      	ldr	r3, [r1, #0]
 800b076:	4283      	cmp	r3, r0
 800b078:	bf38      	it	cc
 800b07a:	6008      	strcc	r0, [r1, #0]
 800b07c:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 800b080:	eb07 0080 	add.w	r0, r7, r0, lsl #2
 800b084:	1d29      	adds	r1, r5, #4
 800b086:	f7fe ff2d 	bl	8009ee4 <vListInsertEnd>
 800b08a:	f001 fa0d 	bl	800c4a8 <vPortExitCritical>
 800b08e:	6823      	ldr	r3, [r4, #0]
 800b090:	b173      	cbz	r3, 800b0b0 <prvAddNewTaskToReadyList+0x6c>
 800b092:	6832      	ldr	r2, [r6, #0]
 800b094:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
 800b096:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800b098:	429a      	cmp	r2, r3
 800b09a:	d209      	bcs.n	800b0b0 <prvAddNewTaskToReadyList+0x6c>
 800b09c:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800b0a0:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800b0a4:	f8c3 2d04 	str.w	r2, [r3, #3332]	; 0xd04
 800b0a8:	f3bf 8f4f 	dsb	sy
 800b0ac:	f3bf 8f6f 	isb	sy
 800b0b0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800b0b4:	6833      	ldr	r3, [r6, #0]
 800b0b6:	6ae8      	ldr	r0, [r5, #44]	; 0x2c
 800b0b8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800b0ba:	4f1c      	ldr	r7, [pc, #112]	; (800b12c <prvAddNewTaskToReadyList+0xe8>)
 800b0bc:	4283      	cmp	r3, r0
 800b0be:	bf98      	it	ls
 800b0c0:	6035      	strls	r5, [r6, #0]
 800b0c2:	e7d1      	b.n	800b068 <prvAddNewTaskToReadyList+0x24>
 800b0c4:	6035      	str	r5, [r6, #0]
 800b0c6:	6813      	ldr	r3, [r2, #0]
 800b0c8:	2b01      	cmp	r3, #1
 800b0ca:	d003      	beq.n	800b0d4 <prvAddNewTaskToReadyList+0x90>
 800b0cc:	6ae8      	ldr	r0, [r5, #44]	; 0x2c
 800b0ce:	4f17      	ldr	r7, [pc, #92]	; (800b12c <prvAddNewTaskToReadyList+0xe8>)
 800b0d0:	4c15      	ldr	r4, [pc, #84]	; (800b128 <prvAddNewTaskToReadyList+0xe4>)
 800b0d2:	e7c9      	b.n	800b068 <prvAddNewTaskToReadyList+0x24>
 800b0d4:	4f15      	ldr	r7, [pc, #84]	; (800b12c <prvAddNewTaskToReadyList+0xe8>)
 800b0d6:	463c      	mov	r4, r7
 800b0d8:	f507 688c 	add.w	r8, r7, #1120	; 0x460
 800b0dc:	4620      	mov	r0, r4
 800b0de:	3414      	adds	r4, #20
 800b0e0:	f7fe fef0 	bl	8009ec4 <vListInitialise>
 800b0e4:	45a0      	cmp	r8, r4
 800b0e6:	d1f9      	bne.n	800b0dc <prvAddNewTaskToReadyList+0x98>
 800b0e8:	f8df 9060 	ldr.w	r9, [pc, #96]	; 800b14c <prvAddNewTaskToReadyList+0x108>
 800b0ec:	f8df 8060 	ldr.w	r8, [pc, #96]	; 800b150 <prvAddNewTaskToReadyList+0x10c>
 800b0f0:	4c0d      	ldr	r4, [pc, #52]	; (800b128 <prvAddNewTaskToReadyList+0xe4>)
 800b0f2:	4648      	mov	r0, r9
 800b0f4:	f7fe fee6 	bl	8009ec4 <vListInitialise>
 800b0f8:	4640      	mov	r0, r8
 800b0fa:	f7fe fee3 	bl	8009ec4 <vListInitialise>
 800b0fe:	480e      	ldr	r0, [pc, #56]	; (800b138 <prvAddNewTaskToReadyList+0xf4>)
 800b100:	f7fe fee0 	bl	8009ec4 <vListInitialise>
 800b104:	480d      	ldr	r0, [pc, #52]	; (800b13c <prvAddNewTaskToReadyList+0xf8>)
 800b106:	f7fe fedd 	bl	8009ec4 <vListInitialise>
 800b10a:	480d      	ldr	r0, [pc, #52]	; (800b140 <prvAddNewTaskToReadyList+0xfc>)
 800b10c:	f7fe feda 	bl	8009ec4 <vListInitialise>
 800b110:	4b0c      	ldr	r3, [pc, #48]	; (800b144 <prvAddNewTaskToReadyList+0x100>)
 800b112:	6ae8      	ldr	r0, [r5, #44]	; 0x2c
 800b114:	f8c3 9000 	str.w	r9, [r3]
 800b118:	4b0b      	ldr	r3, [pc, #44]	; (800b148 <prvAddNewTaskToReadyList+0x104>)
 800b11a:	f8c3 8000 	str.w	r8, [r3]
 800b11e:	e7a3      	b.n	800b068 <prvAddNewTaskToReadyList+0x24>
 800b120:	20000ccc 	.word	0x20000ccc
 800b124:	20000860 	.word	0x20000860
 800b128:	20000d28 	.word	0x20000d28
 800b12c:	2000086c 	.word	0x2000086c
 800b130:	20000cd8 	.word	0x20000cd8
 800b134:	20000cdc 	.word	0x20000cdc
 800b138:	20000d14 	.word	0x20000d14
 800b13c:	20000d40 	.word	0x20000d40
 800b140:	20000d2c 	.word	0x20000d2c
 800b144:	20000864 	.word	0x20000864
 800b148:	20000868 	.word	0x20000868
 800b14c:	20000ce0 	.word	0x20000ce0
 800b150:	20000cf4 	.word	0x20000cf4

0800b154 <prvInitialiseNewTask.constprop.0>:
 800b154:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800b158:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 800b15a:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800b15e:	ea4f 0982 	mov.w	r9, r2, lsl #2
 800b162:	464a      	mov	r2, r9
 800b164:	4606      	mov	r6, r0
 800b166:	460d      	mov	r5, r1
 800b168:	6b20      	ldr	r0, [r4, #48]	; 0x30
 800b16a:	21a5      	movs	r1, #165	; 0xa5
 800b16c:	461f      	mov	r7, r3
 800b16e:	f7f5 f917 	bl	80003a0 <memset>
 800b172:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800b174:	f1a9 0904 	sub.w	r9, r9, #4
 800b178:	4499      	add	r9, r3
 800b17a:	f029 0907 	bic.w	r9, r9, #7
 800b17e:	2d00      	cmp	r5, #0
 800b180:	d07d      	beq.n	800b27e <prvInitialiseNewTask.constprop.0+0x12a>
 800b182:	782b      	ldrb	r3, [r5, #0]
 800b184:	f884 3034 	strb.w	r3, [r4, #52]	; 0x34
 800b188:	782b      	ldrb	r3, [r5, #0]
 800b18a:	2b00      	cmp	r3, #0
 800b18c:	d04d      	beq.n	800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b18e:	786b      	ldrb	r3, [r5, #1]
 800b190:	f884 3035 	strb.w	r3, [r4, #53]	; 0x35
 800b194:	786b      	ldrb	r3, [r5, #1]
 800b196:	2b00      	cmp	r3, #0
 800b198:	d047      	beq.n	800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b19a:	78ab      	ldrb	r3, [r5, #2]
 800b19c:	f884 3036 	strb.w	r3, [r4, #54]	; 0x36
 800b1a0:	78ab      	ldrb	r3, [r5, #2]
 800b1a2:	2b00      	cmp	r3, #0
 800b1a4:	d041      	beq.n	800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b1a6:	78eb      	ldrb	r3, [r5, #3]
 800b1a8:	f884 3037 	strb.w	r3, [r4, #55]	; 0x37
 800b1ac:	78eb      	ldrb	r3, [r5, #3]
 800b1ae:	2b00      	cmp	r3, #0
 800b1b0:	d03b      	beq.n	800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b1b2:	792b      	ldrb	r3, [r5, #4]
 800b1b4:	f884 3038 	strb.w	r3, [r4, #56]	; 0x38
 800b1b8:	792b      	ldrb	r3, [r5, #4]
 800b1ba:	2b00      	cmp	r3, #0
 800b1bc:	d035      	beq.n	800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b1be:	796b      	ldrb	r3, [r5, #5]
 800b1c0:	f884 3039 	strb.w	r3, [r4, #57]	; 0x39
 800b1c4:	796b      	ldrb	r3, [r5, #5]
 800b1c6:	2b00      	cmp	r3, #0
 800b1c8:	d02f      	beq.n	800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b1ca:	79ab      	ldrb	r3, [r5, #6]
 800b1cc:	f884 303a 	strb.w	r3, [r4, #58]	; 0x3a
 800b1d0:	79ab      	ldrb	r3, [r5, #6]
 800b1d2:	b353      	cbz	r3, 800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b1d4:	79eb      	ldrb	r3, [r5, #7]
 800b1d6:	f884 303b 	strb.w	r3, [r4, #59]	; 0x3b
 800b1da:	79eb      	ldrb	r3, [r5, #7]
 800b1dc:	b32b      	cbz	r3, 800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b1de:	7a2b      	ldrb	r3, [r5, #8]
 800b1e0:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 800b1e4:	7a2b      	ldrb	r3, [r5, #8]
 800b1e6:	b303      	cbz	r3, 800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b1e8:	7a6b      	ldrb	r3, [r5, #9]
 800b1ea:	f884 303d 	strb.w	r3, [r4, #61]	; 0x3d
 800b1ee:	7a6b      	ldrb	r3, [r5, #9]
 800b1f0:	b1db      	cbz	r3, 800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b1f2:	7aab      	ldrb	r3, [r5, #10]
 800b1f4:	f884 303e 	strb.w	r3, [r4, #62]	; 0x3e
 800b1f8:	7aab      	ldrb	r3, [r5, #10]
 800b1fa:	b1b3      	cbz	r3, 800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b1fc:	7aeb      	ldrb	r3, [r5, #11]
 800b1fe:	f884 303f 	strb.w	r3, [r4, #63]	; 0x3f
 800b202:	7aeb      	ldrb	r3, [r5, #11]
 800b204:	b18b      	cbz	r3, 800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b206:	7b2b      	ldrb	r3, [r5, #12]
 800b208:	f884 3040 	strb.w	r3, [r4, #64]	; 0x40
 800b20c:	7b2b      	ldrb	r3, [r5, #12]
 800b20e:	b163      	cbz	r3, 800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b210:	7b6b      	ldrb	r3, [r5, #13]
 800b212:	f884 3041 	strb.w	r3, [r4, #65]	; 0x41
 800b216:	7b6b      	ldrb	r3, [r5, #13]
 800b218:	b13b      	cbz	r3, 800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b21a:	7bab      	ldrb	r3, [r5, #14]
 800b21c:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
 800b220:	7bab      	ldrb	r3, [r5, #14]
 800b222:	b113      	cbz	r3, 800b22a <prvInitialiseNewTask.constprop.0+0xd6>
 800b224:	7beb      	ldrb	r3, [r5, #15]
 800b226:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 800b22a:	2300      	movs	r3, #0
 800b22c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
 800b230:	9d08      	ldr	r5, [sp, #32]
 800b232:	2d37      	cmp	r5, #55	; 0x37
 800b234:	bf28      	it	cs
 800b236:	2537      	movcs	r5, #55	; 0x37
 800b238:	f04f 0a00 	mov.w	sl, #0
 800b23c:	62e5      	str	r5, [r4, #44]	; 0x2c
 800b23e:	64e5      	str	r5, [r4, #76]	; 0x4c
 800b240:	1d20      	adds	r0, r4, #4
 800b242:	f8c4 a050 	str.w	sl, [r4, #80]	; 0x50
 800b246:	f7fe fe49 	bl	8009edc <vListInitialiseItem>
 800b24a:	f1c5 0538 	rsb	r5, r5, #56	; 0x38
 800b24e:	f104 0018 	add.w	r0, r4, #24
 800b252:	f7fe fe43 	bl	8009edc <vListInitialiseItem>
 800b256:	f8c4 a054 	str.w	sl, [r4, #84]	; 0x54
 800b25a:	61a5      	str	r5, [r4, #24]
 800b25c:	f884 a058 	strb.w	sl, [r4, #88]	; 0x58
 800b260:	6124      	str	r4, [r4, #16]
 800b262:	6264      	str	r4, [r4, #36]	; 0x24
 800b264:	463a      	mov	r2, r7
 800b266:	4631      	mov	r1, r6
 800b268:	4648      	mov	r0, r9
 800b26a:	f001 f8cf 	bl	800c40c <pxPortInitialiseStack>
 800b26e:	6020      	str	r0, [r4, #0]
 800b270:	f1b8 0f00 	cmp.w	r8, #0
 800b274:	d001      	beq.n	800b27a <prvInitialiseNewTask.constprop.0+0x126>
 800b276:	f8c8 4000 	str.w	r4, [r8]
 800b27a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800b27e:	f884 5034 	strb.w	r5, [r4, #52]	; 0x34
 800b282:	e7d5      	b.n	800b230 <prvInitialiseNewTask.constprop.0+0xdc>

0800b284 <prvIdleTask>:
 800b284:	b580      	push	{r7, lr}
 800b286:	4c21      	ldr	r4, [pc, #132]	; (800b30c <prvIdleTask+0x88>)
 800b288:	4e21      	ldr	r6, [pc, #132]	; (800b310 <prvIdleTask+0x8c>)
 800b28a:	4d22      	ldr	r5, [pc, #136]	; (800b314 <prvIdleTask+0x90>)
 800b28c:	4f22      	ldr	r7, [pc, #136]	; (800b318 <prvIdleTask+0x94>)
 800b28e:	f04f 29e0 	mov.w	r9, #3758153728	; 0xe000e000
 800b292:	f04f 5880 	mov.w	r8, #268435456	; 0x10000000
 800b296:	6823      	ldr	r3, [r4, #0]
 800b298:	b353      	cbz	r3, 800b2f0 <prvIdleTask+0x6c>
 800b29a:	f001 f8e3 	bl	800c464 <vPortEnterCritical>
 800b29e:	68f3      	ldr	r3, [r6, #12]
 800b2a0:	f8d3 a00c 	ldr.w	sl, [r3, #12]
 800b2a4:	f10a 0004 	add.w	r0, sl, #4
 800b2a8:	f7fe fe44 	bl	8009f34 <uxListRemove>
 800b2ac:	682b      	ldr	r3, [r5, #0]
 800b2ae:	3b01      	subs	r3, #1
 800b2b0:	602b      	str	r3, [r5, #0]
 800b2b2:	6823      	ldr	r3, [r4, #0]
 800b2b4:	3b01      	subs	r3, #1
 800b2b6:	6023      	str	r3, [r4, #0]
 800b2b8:	f001 f8f6 	bl	800c4a8 <vPortExitCritical>
 800b2bc:	f89a 3059 	ldrb.w	r3, [sl, #89]	; 0x59
 800b2c0:	b163      	cbz	r3, 800b2dc <prvIdleTask+0x58>
 800b2c2:	2b01      	cmp	r3, #1
 800b2c4:	d01e      	beq.n	800b304 <prvIdleTask+0x80>
 800b2c6:	2b02      	cmp	r3, #2
 800b2c8:	d0e5      	beq.n	800b296 <prvIdleTask+0x12>
 800b2ca:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b2ce:	f383 8811 	msr	BASEPRI, r3
 800b2d2:	f3bf 8f6f 	isb	sy
 800b2d6:	f3bf 8f4f 	dsb	sy
 800b2da:	e7fe      	b.n	800b2da <prvIdleTask+0x56>
 800b2dc:	f8da 0030 	ldr.w	r0, [sl, #48]	; 0x30
 800b2e0:	f000 fff4 	bl	800c2cc <vPortFree>
 800b2e4:	4650      	mov	r0, sl
 800b2e6:	f000 fff1 	bl	800c2cc <vPortFree>
 800b2ea:	6823      	ldr	r3, [r4, #0]
 800b2ec:	2b00      	cmp	r3, #0
 800b2ee:	d1d4      	bne.n	800b29a <prvIdleTask+0x16>
 800b2f0:	683b      	ldr	r3, [r7, #0]
 800b2f2:	2b01      	cmp	r3, #1
 800b2f4:	d9cf      	bls.n	800b296 <prvIdleTask+0x12>
 800b2f6:	f8c9 8d04 	str.w	r8, [r9, #3332]	; 0xd04
 800b2fa:	f3bf 8f4f 	dsb	sy
 800b2fe:	f3bf 8f6f 	isb	sy
 800b302:	e7c8      	b.n	800b296 <prvIdleTask+0x12>
 800b304:	4650      	mov	r0, sl
 800b306:	f000 ffe1 	bl	800c2cc <vPortFree>
 800b30a:	e7c4      	b.n	800b296 <prvIdleTask+0x12>
 800b30c:	20000cd0 	.word	0x20000cd0
 800b310:	20000d40 	.word	0x20000d40
 800b314:	20000ccc 	.word	0x20000ccc
 800b318:	2000086c 	.word	0x2000086c

0800b31c <xTaskIncrementTick.part.0>:
 800b31c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800b320:	4b47      	ldr	r3, [pc, #284]	; (800b440 <xTaskIncrementTick.part.0+0x124>)
 800b322:	681e      	ldr	r6, [r3, #0]
 800b324:	3601      	adds	r6, #1
 800b326:	b083      	sub	sp, #12
 800b328:	601e      	str	r6, [r3, #0]
 800b32a:	2e00      	cmp	r6, #0
 800b32c:	d040      	beq.n	800b3b0 <xTaskIncrementTick.part.0+0x94>
 800b32e:	f8df b124 	ldr.w	fp, [pc, #292]	; 800b454 <xTaskIncrementTick.part.0+0x138>
 800b332:	f8db 3000 	ldr.w	r3, [fp]
 800b336:	429e      	cmp	r6, r3
 800b338:	d347      	bcc.n	800b3ca <xTaskIncrementTick.part.0+0xae>
 800b33a:	4f42      	ldr	r7, [pc, #264]	; (800b444 <xTaskIncrementTick.part.0+0x128>)
 800b33c:	f8df 9118 	ldr.w	r9, [pc, #280]	; 800b458 <xTaskIncrementTick.part.0+0x13c>
 800b340:	683b      	ldr	r3, [r7, #0]
 800b342:	f8df a118 	ldr.w	sl, [pc, #280]	; 800b45c <xTaskIncrementTick.part.0+0x140>
 800b346:	681d      	ldr	r5, [r3, #0]
 800b348:	2d00      	cmp	r5, #0
 800b34a:	d073      	beq.n	800b434 <xTaskIncrementTick.part.0+0x118>
 800b34c:	f8df 8110 	ldr.w	r8, [pc, #272]	; 800b460 <xTaskIncrementTick.part.0+0x144>
 800b350:	2500      	movs	r5, #0
 800b352:	e022      	b.n	800b39a <xTaskIncrementTick.part.0+0x7e>
 800b354:	9101      	str	r1, [sp, #4]
 800b356:	f7fe fded 	bl	8009f34 <uxListRemove>
 800b35a:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 800b35c:	9901      	ldr	r1, [sp, #4]
 800b35e:	f104 0018 	add.w	r0, r4, #24
 800b362:	b113      	cbz	r3, 800b36a <xTaskIncrementTick.part.0+0x4e>
 800b364:	f7fe fde6 	bl	8009f34 <uxListRemove>
 800b368:	9901      	ldr	r1, [sp, #4]
 800b36a:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800b36c:	f8d8 2000 	ldr.w	r2, [r8]
 800b370:	eb03 0083 	add.w	r0, r3, r3, lsl #2
 800b374:	4293      	cmp	r3, r2
 800b376:	eb09 0080 	add.w	r0, r9, r0, lsl #2
 800b37a:	bf88      	it	hi
 800b37c:	f8c8 3000 	strhi.w	r3, [r8]
 800b380:	f7fe fdb0 	bl	8009ee4 <vListInsertEnd>
 800b384:	f8da 2000 	ldr.w	r2, [sl]
 800b388:	683b      	ldr	r3, [r7, #0]
 800b38a:	6ae1      	ldr	r1, [r4, #44]	; 0x2c
 800b38c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800b38e:	681b      	ldr	r3, [r3, #0]
 800b390:	4291      	cmp	r1, r2
 800b392:	bf28      	it	cs
 800b394:	2501      	movcs	r5, #1
 800b396:	2b00      	cmp	r3, #0
 800b398:	d04c      	beq.n	800b434 <xTaskIncrementTick.part.0+0x118>
 800b39a:	683b      	ldr	r3, [r7, #0]
 800b39c:	68db      	ldr	r3, [r3, #12]
 800b39e:	68dc      	ldr	r4, [r3, #12]
 800b3a0:	6863      	ldr	r3, [r4, #4]
 800b3a2:	1d21      	adds	r1, r4, #4
 800b3a4:	429e      	cmp	r6, r3
 800b3a6:	4608      	mov	r0, r1
 800b3a8:	d2d4      	bcs.n	800b354 <xTaskIncrementTick.part.0+0x38>
 800b3aa:	f8cb 3000 	str.w	r3, [fp]
 800b3ae:	e011      	b.n	800b3d4 <xTaskIncrementTick.part.0+0xb8>
 800b3b0:	4b24      	ldr	r3, [pc, #144]	; (800b444 <xTaskIncrementTick.part.0+0x128>)
 800b3b2:	681a      	ldr	r2, [r3, #0]
 800b3b4:	6812      	ldr	r2, [r2, #0]
 800b3b6:	b30a      	cbz	r2, 800b3fc <xTaskIncrementTick.part.0+0xe0>
 800b3b8:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b3bc:	f383 8811 	msr	BASEPRI, r3
 800b3c0:	f3bf 8f6f 	isb	sy
 800b3c4:	f3bf 8f4f 	dsb	sy
 800b3c8:	e7fe      	b.n	800b3c8 <xTaskIncrementTick.part.0+0xac>
 800b3ca:	f8df 908c 	ldr.w	r9, [pc, #140]	; 800b458 <xTaskIncrementTick.part.0+0x13c>
 800b3ce:	f8df a08c 	ldr.w	sl, [pc, #140]	; 800b45c <xTaskIncrementTick.part.0+0x140>
 800b3d2:	2500      	movs	r5, #0
 800b3d4:	f8da 3000 	ldr.w	r3, [sl]
 800b3d8:	491b      	ldr	r1, [pc, #108]	; (800b448 <xTaskIncrementTick.part.0+0x12c>)
 800b3da:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800b3dc:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 800b3e0:	009b      	lsls	r3, r3, #2
 800b3e2:	f859 2003 	ldr.w	r2, [r9, r3]
 800b3e6:	680b      	ldr	r3, [r1, #0]
 800b3e8:	2a02      	cmp	r2, #2
 800b3ea:	bf28      	it	cs
 800b3ec:	2501      	movcs	r5, #1
 800b3ee:	2b00      	cmp	r3, #0
 800b3f0:	bf0c      	ite	eq
 800b3f2:	4628      	moveq	r0, r5
 800b3f4:	2001      	movne	r0, #1
 800b3f6:	b003      	add	sp, #12
 800b3f8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800b3fc:	4a13      	ldr	r2, [pc, #76]	; (800b44c <xTaskIncrementTick.part.0+0x130>)
 800b3fe:	6818      	ldr	r0, [r3, #0]
 800b400:	6811      	ldr	r1, [r2, #0]
 800b402:	6019      	str	r1, [r3, #0]
 800b404:	4912      	ldr	r1, [pc, #72]	; (800b450 <xTaskIncrementTick.part.0+0x134>)
 800b406:	6010      	str	r0, [r2, #0]
 800b408:	680a      	ldr	r2, [r1, #0]
 800b40a:	3201      	adds	r2, #1
 800b40c:	600a      	str	r2, [r1, #0]
 800b40e:	681a      	ldr	r2, [r3, #0]
 800b410:	6812      	ldr	r2, [r2, #0]
 800b412:	b932      	cbnz	r2, 800b422 <xTaskIncrementTick.part.0+0x106>
 800b414:	f8df b03c 	ldr.w	fp, [pc, #60]	; 800b454 <xTaskIncrementTick.part.0+0x138>
 800b418:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800b41c:	f8cb 3000 	str.w	r3, [fp]
 800b420:	e787      	b.n	800b332 <xTaskIncrementTick.part.0+0x16>
 800b422:	681b      	ldr	r3, [r3, #0]
 800b424:	f8df b02c 	ldr.w	fp, [pc, #44]	; 800b454 <xTaskIncrementTick.part.0+0x138>
 800b428:	68db      	ldr	r3, [r3, #12]
 800b42a:	68db      	ldr	r3, [r3, #12]
 800b42c:	685b      	ldr	r3, [r3, #4]
 800b42e:	f8cb 3000 	str.w	r3, [fp]
 800b432:	e77e      	b.n	800b332 <xTaskIncrementTick.part.0+0x16>
 800b434:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800b438:	f8cb 3000 	str.w	r3, [fp]
 800b43c:	e7ca      	b.n	800b3d4 <xTaskIncrementTick.part.0+0xb8>
 800b43e:	bf00      	nop
 800b440:	20000d54 	.word	0x20000d54
 800b444:	20000864 	.word	0x20000864
 800b448:	20000d58 	.word	0x20000d58
 800b44c:	20000868 	.word	0x20000868
 800b450:	20000d0c 	.word	0x20000d0c
 800b454:	20000d08 	.word	0x20000d08
 800b458:	2000086c 	.word	0x2000086c
 800b45c:	20000860 	.word	0x20000860
 800b460:	20000cdc 	.word	0x20000cdc

0800b464 <xTaskResumeAll.part.0>:
 800b464:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800b468:	4d41      	ldr	r5, [pc, #260]	; (800b570 <xTaskResumeAll.part.0+0x10c>)
 800b46a:	b083      	sub	sp, #12
 800b46c:	f000 fffa 	bl	800c464 <vPortEnterCritical>
 800b470:	682b      	ldr	r3, [r5, #0]
 800b472:	3b01      	subs	r3, #1
 800b474:	602b      	str	r3, [r5, #0]
 800b476:	682b      	ldr	r3, [r5, #0]
 800b478:	2b00      	cmp	r3, #0
 800b47a:	d161      	bne.n	800b540 <xTaskResumeAll.part.0+0xdc>
 800b47c:	4b3d      	ldr	r3, [pc, #244]	; (800b574 <xTaskResumeAll.part.0+0x110>)
 800b47e:	681b      	ldr	r3, [r3, #0]
 800b480:	2b00      	cmp	r3, #0
 800b482:	d05d      	beq.n	800b540 <xTaskResumeAll.part.0+0xdc>
 800b484:	4e3c      	ldr	r6, [pc, #240]	; (800b578 <xTaskResumeAll.part.0+0x114>)
 800b486:	6833      	ldr	r3, [r6, #0]
 800b488:	2b00      	cmp	r3, #0
 800b48a:	d06e      	beq.n	800b56a <xTaskResumeAll.part.0+0x106>
 800b48c:	4f3b      	ldr	r7, [pc, #236]	; (800b57c <xTaskResumeAll.part.0+0x118>)
 800b48e:	f8df 90fc 	ldr.w	r9, [pc, #252]	; 800b58c <xTaskResumeAll.part.0+0x128>
 800b492:	f8df 80fc 	ldr.w	r8, [pc, #252]	; 800b590 <xTaskResumeAll.part.0+0x12c>
 800b496:	f8df a0fc 	ldr.w	sl, [pc, #252]	; 800b594 <xTaskResumeAll.part.0+0x130>
 800b49a:	68f3      	ldr	r3, [r6, #12]
 800b49c:	68dc      	ldr	r4, [r3, #12]
 800b49e:	f104 0b04 	add.w	fp, r4, #4
 800b4a2:	f104 0018 	add.w	r0, r4, #24
 800b4a6:	f7fe fd45 	bl	8009f34 <uxListRemove>
 800b4aa:	4658      	mov	r0, fp
 800b4ac:	f7fe fd42 	bl	8009f34 <uxListRemove>
 800b4b0:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800b4b2:	683a      	ldr	r2, [r7, #0]
 800b4b4:	eb03 0083 	add.w	r0, r3, r3, lsl #2
 800b4b8:	4293      	cmp	r3, r2
 800b4ba:	4659      	mov	r1, fp
 800b4bc:	eb09 0080 	add.w	r0, r9, r0, lsl #2
 800b4c0:	bf88      	it	hi
 800b4c2:	603b      	strhi	r3, [r7, #0]
 800b4c4:	f7fe fd0e 	bl	8009ee4 <vListInsertEnd>
 800b4c8:	f8d8 3000 	ldr.w	r3, [r8]
 800b4cc:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
 800b4ce:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800b4d0:	429a      	cmp	r2, r3
 800b4d2:	d33d      	bcc.n	800b550 <xTaskResumeAll.part.0+0xec>
 800b4d4:	2301      	movs	r3, #1
 800b4d6:	f8ca 3000 	str.w	r3, [sl]
 800b4da:	6833      	ldr	r3, [r6, #0]
 800b4dc:	2b00      	cmp	r3, #0
 800b4de:	d1dc      	bne.n	800b49a <xTaskResumeAll.part.0+0x36>
 800b4e0:	4b27      	ldr	r3, [pc, #156]	; (800b580 <xTaskResumeAll.part.0+0x11c>)
 800b4e2:	681a      	ldr	r2, [r3, #0]
 800b4e4:	6812      	ldr	r2, [r2, #0]
 800b4e6:	2a00      	cmp	r2, #0
 800b4e8:	d03a      	beq.n	800b560 <xTaskResumeAll.part.0+0xfc>
 800b4ea:	681a      	ldr	r2, [r3, #0]
 800b4ec:	4b25      	ldr	r3, [pc, #148]	; (800b584 <xTaskResumeAll.part.0+0x120>)
 800b4ee:	68d2      	ldr	r2, [r2, #12]
 800b4f0:	68d2      	ldr	r2, [r2, #12]
 800b4f2:	6852      	ldr	r2, [r2, #4]
 800b4f4:	601a      	str	r2, [r3, #0]
 800b4f6:	4e24      	ldr	r6, [pc, #144]	; (800b588 <xTaskResumeAll.part.0+0x124>)
 800b4f8:	6834      	ldr	r4, [r6, #0]
 800b4fa:	b194      	cbz	r4, 800b522 <xTaskResumeAll.part.0+0xbe>
 800b4fc:	2701      	movs	r7, #1
 800b4fe:	e006      	b.n	800b50e <xTaskResumeAll.part.0+0xaa>
 800b500:	f7ff ff0c 	bl	800b31c <xTaskIncrementTick.part.0>
 800b504:	b108      	cbz	r0, 800b50a <xTaskResumeAll.part.0+0xa6>
 800b506:	f8ca 7000 	str.w	r7, [sl]
 800b50a:	3c01      	subs	r4, #1
 800b50c:	d008      	beq.n	800b520 <xTaskResumeAll.part.0+0xbc>
 800b50e:	682b      	ldr	r3, [r5, #0]
 800b510:	2b00      	cmp	r3, #0
 800b512:	d0f5      	beq.n	800b500 <xTaskResumeAll.part.0+0x9c>
 800b514:	6833      	ldr	r3, [r6, #0]
 800b516:	3c01      	subs	r4, #1
 800b518:	f103 0301 	add.w	r3, r3, #1
 800b51c:	6033      	str	r3, [r6, #0]
 800b51e:	d1f6      	bne.n	800b50e <xTaskResumeAll.part.0+0xaa>
 800b520:	6034      	str	r4, [r6, #0]
 800b522:	f8da 3000 	ldr.w	r3, [sl]
 800b526:	b15b      	cbz	r3, 800b540 <xTaskResumeAll.part.0+0xdc>
 800b528:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800b52c:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800b530:	f8c3 2d04 	str.w	r2, [r3, #3332]	; 0xd04
 800b534:	f3bf 8f4f 	dsb	sy
 800b538:	f3bf 8f6f 	isb	sy
 800b53c:	2001      	movs	r0, #1
 800b53e:	e000      	b.n	800b542 <xTaskResumeAll.part.0+0xde>
 800b540:	2000      	movs	r0, #0
 800b542:	9001      	str	r0, [sp, #4]
 800b544:	f000 ffb0 	bl	800c4a8 <vPortExitCritical>
 800b548:	9801      	ldr	r0, [sp, #4]
 800b54a:	b003      	add	sp, #12
 800b54c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800b550:	6833      	ldr	r3, [r6, #0]
 800b552:	2b00      	cmp	r3, #0
 800b554:	d1a1      	bne.n	800b49a <xTaskResumeAll.part.0+0x36>
 800b556:	4b0a      	ldr	r3, [pc, #40]	; (800b580 <xTaskResumeAll.part.0+0x11c>)
 800b558:	681a      	ldr	r2, [r3, #0]
 800b55a:	6812      	ldr	r2, [r2, #0]
 800b55c:	2a00      	cmp	r2, #0
 800b55e:	d1c4      	bne.n	800b4ea <xTaskResumeAll.part.0+0x86>
 800b560:	4b08      	ldr	r3, [pc, #32]	; (800b584 <xTaskResumeAll.part.0+0x120>)
 800b562:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800b566:	601a      	str	r2, [r3, #0]
 800b568:	e7c5      	b.n	800b4f6 <xTaskResumeAll.part.0+0x92>
 800b56a:	f8df a028 	ldr.w	sl, [pc, #40]	; 800b594 <xTaskResumeAll.part.0+0x130>
 800b56e:	e7c2      	b.n	800b4f6 <xTaskResumeAll.part.0+0x92>
 800b570:	20000cd4 	.word	0x20000cd4
 800b574:	20000ccc 	.word	0x20000ccc
 800b578:	20000d14 	.word	0x20000d14
 800b57c:	20000cdc 	.word	0x20000cdc
 800b580:	20000864 	.word	0x20000864
 800b584:	20000d08 	.word	0x20000d08
 800b588:	20000d10 	.word	0x20000d10
 800b58c:	2000086c 	.word	0x2000086c
 800b590:	20000860 	.word	0x20000860
 800b594:	20000d58 	.word	0x20000d58

0800b598 <xTaskCreateStatic>:
 800b598:	b530      	push	{r4, r5, lr}
 800b59a:	b087      	sub	sp, #28
 800b59c:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 800b59e:	b1c4      	cbz	r4, 800b5d2 <xTaskCreateStatic+0x3a>
 800b5a0:	9d0c      	ldr	r5, [sp, #48]	; 0x30
 800b5a2:	b16d      	cbz	r5, 800b5c0 <xTaskCreateStatic+0x28>
 800b5a4:	255c      	movs	r5, #92	; 0x5c
 800b5a6:	9505      	str	r5, [sp, #20]
 800b5a8:	9d05      	ldr	r5, [sp, #20]
 800b5aa:	2d5c      	cmp	r5, #92	; 0x5c
 800b5ac:	d01a      	beq.n	800b5e4 <xTaskCreateStatic+0x4c>
 800b5ae:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b5b2:	f383 8811 	msr	BASEPRI, r3
 800b5b6:	f3bf 8f6f 	isb	sy
 800b5ba:	f3bf 8f4f 	dsb	sy
 800b5be:	e7fe      	b.n	800b5be <xTaskCreateStatic+0x26>
 800b5c0:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b5c4:	f383 8811 	msr	BASEPRI, r3
 800b5c8:	f3bf 8f6f 	isb	sy
 800b5cc:	f3bf 8f4f 	dsb	sy
 800b5d0:	e7fe      	b.n	800b5d0 <xTaskCreateStatic+0x38>
 800b5d2:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b5d6:	f383 8811 	msr	BASEPRI, r3
 800b5da:	f3bf 8f6f 	isb	sy
 800b5de:	f3bf 8f4f 	dsb	sy
 800b5e2:	e7fe      	b.n	800b5e2 <xTaskCreateStatic+0x4a>
 800b5e4:	9d0c      	ldr	r5, [sp, #48]	; 0x30
 800b5e6:	632c      	str	r4, [r5, #48]	; 0x30
 800b5e8:	2402      	movs	r4, #2
 800b5ea:	f885 4059 	strb.w	r4, [r5, #89]	; 0x59
 800b5ee:	ac04      	add	r4, sp, #16
 800b5f0:	e9cd 4501 	strd	r4, r5, [sp, #4]
 800b5f4:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 800b5f6:	9400      	str	r4, [sp, #0]
 800b5f8:	9c05      	ldr	r4, [sp, #20]
 800b5fa:	f7ff fdab 	bl	800b154 <prvInitialiseNewTask.constprop.0>
 800b5fe:	980c      	ldr	r0, [sp, #48]	; 0x30
 800b600:	f7ff fd20 	bl	800b044 <prvAddNewTaskToReadyList>
 800b604:	9804      	ldr	r0, [sp, #16]
 800b606:	b007      	add	sp, #28
 800b608:	bd30      	pop	{r4, r5, pc}
 800b60a:	bf00      	nop

0800b60c <xTaskCreate>:
 800b60c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800b610:	4607      	mov	r7, r0
 800b612:	b085      	sub	sp, #20
 800b614:	0090      	lsls	r0, r2, #2
 800b616:	4615      	mov	r5, r2
 800b618:	4688      	mov	r8, r1
 800b61a:	4699      	mov	r9, r3
 800b61c:	f000 fd9e 	bl	800c15c <pvPortMalloc>
 800b620:	b1d8      	cbz	r0, 800b65a <xTaskCreate+0x4e>
 800b622:	4604      	mov	r4, r0
 800b624:	205c      	movs	r0, #92	; 0x5c
 800b626:	f000 fd99 	bl	800c15c <pvPortMalloc>
 800b62a:	4606      	mov	r6, r0
 800b62c:	b1d0      	cbz	r0, 800b664 <xTaskCreate+0x58>
 800b62e:	6304      	str	r4, [r0, #48]	; 0x30
 800b630:	2400      	movs	r4, #0
 800b632:	f886 4059 	strb.w	r4, [r6, #89]	; 0x59
 800b636:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 800b638:	9401      	str	r4, [sp, #4]
 800b63a:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 800b63c:	9602      	str	r6, [sp, #8]
 800b63e:	464b      	mov	r3, r9
 800b640:	462a      	mov	r2, r5
 800b642:	4641      	mov	r1, r8
 800b644:	4638      	mov	r0, r7
 800b646:	9400      	str	r4, [sp, #0]
 800b648:	f7ff fd84 	bl	800b154 <prvInitialiseNewTask.constprop.0>
 800b64c:	4630      	mov	r0, r6
 800b64e:	f7ff fcf9 	bl	800b044 <prvAddNewTaskToReadyList>
 800b652:	2001      	movs	r0, #1
 800b654:	b005      	add	sp, #20
 800b656:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800b65a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800b65e:	b005      	add	sp, #20
 800b660:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800b664:	4620      	mov	r0, r4
 800b666:	f000 fe31 	bl	800c2cc <vPortFree>
 800b66a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800b66e:	e7f1      	b.n	800b654 <xTaskCreate+0x48>

0800b670 <vTaskDelay>:
 800b670:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800b672:	b950      	cbnz	r0, 800b68a <vTaskDelay+0x1a>
 800b674:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800b678:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800b67c:	f8c3 2d04 	str.w	r2, [r3, #3332]	; 0xd04
 800b680:	f3bf 8f4f 	dsb	sy
 800b684:	f3bf 8f6f 	isb	sy
 800b688:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800b68a:	4d1e      	ldr	r5, [pc, #120]	; (800b704 <vTaskDelay+0x94>)
 800b68c:	682b      	ldr	r3, [r5, #0]
 800b68e:	b143      	cbz	r3, 800b6a2 <vTaskDelay+0x32>
 800b690:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b694:	f383 8811 	msr	BASEPRI, r3
 800b698:	f3bf 8f6f 	isb	sy
 800b69c:	f3bf 8f4f 	dsb	sy
 800b6a0:	e7fe      	b.n	800b6a0 <vTaskDelay+0x30>
 800b6a2:	682b      	ldr	r3, [r5, #0]
 800b6a4:	3301      	adds	r3, #1
 800b6a6:	4604      	mov	r4, r0
 800b6a8:	602b      	str	r3, [r5, #0]
 800b6aa:	4b17      	ldr	r3, [pc, #92]	; (800b708 <vTaskDelay+0x98>)
 800b6ac:	4e17      	ldr	r6, [pc, #92]	; (800b70c <vTaskDelay+0x9c>)
 800b6ae:	681f      	ldr	r7, [r3, #0]
 800b6b0:	6830      	ldr	r0, [r6, #0]
 800b6b2:	3004      	adds	r0, #4
 800b6b4:	f7fe fc3e 	bl	8009f34 <uxListRemove>
 800b6b8:	6833      	ldr	r3, [r6, #0]
 800b6ba:	19e4      	adds	r4, r4, r7
 800b6bc:	605c      	str	r4, [r3, #4]
 800b6be:	d310      	bcc.n	800b6e2 <vTaskDelay+0x72>
 800b6c0:	4b13      	ldr	r3, [pc, #76]	; (800b710 <vTaskDelay+0xa0>)
 800b6c2:	6818      	ldr	r0, [r3, #0]
 800b6c4:	6831      	ldr	r1, [r6, #0]
 800b6c6:	3104      	adds	r1, #4
 800b6c8:	f7fe fc1c 	bl	8009f04 <vListInsert>
 800b6cc:	682b      	ldr	r3, [r5, #0]
 800b6ce:	b9a3      	cbnz	r3, 800b6fa <vTaskDelay+0x8a>
 800b6d0:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b6d4:	f383 8811 	msr	BASEPRI, r3
 800b6d8:	f3bf 8f6f 	isb	sy
 800b6dc:	f3bf 8f4f 	dsb	sy
 800b6e0:	e7fe      	b.n	800b6e0 <vTaskDelay+0x70>
 800b6e2:	4b0c      	ldr	r3, [pc, #48]	; (800b714 <vTaskDelay+0xa4>)
 800b6e4:	6818      	ldr	r0, [r3, #0]
 800b6e6:	6831      	ldr	r1, [r6, #0]
 800b6e8:	3104      	adds	r1, #4
 800b6ea:	f7fe fc0b 	bl	8009f04 <vListInsert>
 800b6ee:	4b0a      	ldr	r3, [pc, #40]	; (800b718 <vTaskDelay+0xa8>)
 800b6f0:	681a      	ldr	r2, [r3, #0]
 800b6f2:	4294      	cmp	r4, r2
 800b6f4:	bf38      	it	cc
 800b6f6:	601c      	strcc	r4, [r3, #0]
 800b6f8:	e7e8      	b.n	800b6cc <vTaskDelay+0x5c>
 800b6fa:	f7ff feb3 	bl	800b464 <xTaskResumeAll.part.0>
 800b6fe:	2800      	cmp	r0, #0
 800b700:	d0b8      	beq.n	800b674 <vTaskDelay+0x4>
 800b702:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800b704:	20000cd4 	.word	0x20000cd4
 800b708:	20000d54 	.word	0x20000d54
 800b70c:	20000860 	.word	0x20000860
 800b710:	20000868 	.word	0x20000868
 800b714:	20000864 	.word	0x20000864
 800b718:	20000d08 	.word	0x20000d08

0800b71c <vTaskStartScheduler>:
 800b71c:	b570      	push	{r4, r5, r6, lr}
 800b71e:	b084      	sub	sp, #16
 800b720:	4668      	mov	r0, sp
 800b722:	2400      	movs	r4, #0
 800b724:	aa02      	add	r2, sp, #8
 800b726:	a901      	add	r1, sp, #4
 800b728:	e9cd 4400 	strd	r4, r4, [sp]
 800b72c:	f001 fa24 	bl	800cb78 <vApplicationGetIdleTaskMemory>
 800b730:	9801      	ldr	r0, [sp, #4]
 800b732:	b1c8      	cbz	r0, 800b768 <vTaskStartScheduler+0x4c>
 800b734:	9d00      	ldr	r5, [sp, #0]
 800b736:	b175      	cbz	r5, 800b756 <vTaskStartScheduler+0x3a>
 800b738:	235c      	movs	r3, #92	; 0x5c
 800b73a:	9303      	str	r3, [sp, #12]
 800b73c:	9a03      	ldr	r2, [sp, #12]
 800b73e:	9e02      	ldr	r6, [sp, #8]
 800b740:	429a      	cmp	r2, r3
 800b742:	d01a      	beq.n	800b77a <vTaskStartScheduler+0x5e>
 800b744:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b748:	f383 8811 	msr	BASEPRI, r3
 800b74c:	f3bf 8f6f 	isb	sy
 800b750:	f3bf 8f4f 	dsb	sy
 800b754:	e7fe      	b.n	800b754 <vTaskStartScheduler+0x38>
 800b756:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b75a:	f383 8811 	msr	BASEPRI, r3
 800b75e:	f3bf 8f6f 	isb	sy
 800b762:	f3bf 8f4f 	dsb	sy
 800b766:	e7fe      	b.n	800b766 <vTaskStartScheduler+0x4a>
 800b768:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b76c:	f383 8811 	msr	BASEPRI, r3
 800b770:	f3bf 8f6f 	isb	sy
 800b774:	f3bf 8f4f 	dsb	sy
 800b778:	e7fe      	b.n	800b778 <vTaskStartScheduler+0x5c>
 800b77a:	00b6      	lsls	r6, r6, #2
 800b77c:	2302      	movs	r3, #2
 800b77e:	4632      	mov	r2, r6
 800b780:	f885 3059 	strb.w	r3, [r5, #89]	; 0x59
 800b784:	21a5      	movs	r1, #165	; 0xa5
 800b786:	6328      	str	r0, [r5, #48]	; 0x30
 800b788:	9b03      	ldr	r3, [sp, #12]
 800b78a:	f7f4 fe09 	bl	80003a0 <memset>
 800b78e:	6b2a      	ldr	r2, [r5, #48]	; 0x30
 800b790:	4924      	ldr	r1, [pc, #144]	; (800b824 <vTaskStartScheduler+0x108>)
 800b792:	6369      	str	r1, [r5, #52]	; 0x34
 800b794:	1f33      	subs	r3, r6, #4
 800b796:	1d28      	adds	r0, r5, #4
 800b798:	e9c5 4413 	strd	r4, r4, [r5, #76]	; 0x4c
 800b79c:	f885 4038 	strb.w	r4, [r5, #56]	; 0x38
 800b7a0:	f885 4043 	strb.w	r4, [r5, #67]	; 0x43
 800b7a4:	62ec      	str	r4, [r5, #44]	; 0x2c
 800b7a6:	18d6      	adds	r6, r2, r3
 800b7a8:	f7fe fb98 	bl	8009edc <vListInitialiseItem>
 800b7ac:	f105 0018 	add.w	r0, r5, #24
 800b7b0:	f7fe fb94 	bl	8009edc <vListInitialiseItem>
 800b7b4:	f026 0607 	bic.w	r6, r6, #7
 800b7b8:	2338      	movs	r3, #56	; 0x38
 800b7ba:	491b      	ldr	r1, [pc, #108]	; (800b828 <vTaskStartScheduler+0x10c>)
 800b7bc:	61ab      	str	r3, [r5, #24]
 800b7be:	4622      	mov	r2, r4
 800b7c0:	656c      	str	r4, [r5, #84]	; 0x54
 800b7c2:	612d      	str	r5, [r5, #16]
 800b7c4:	626d      	str	r5, [r5, #36]	; 0x24
 800b7c6:	f885 4058 	strb.w	r4, [r5, #88]	; 0x58
 800b7ca:	4630      	mov	r0, r6
 800b7cc:	f000 fe1e 	bl	800c40c <pxPortInitialiseStack>
 800b7d0:	6028      	str	r0, [r5, #0]
 800b7d2:	4628      	mov	r0, r5
 800b7d4:	f7ff fc36 	bl	800b044 <prvAddNewTaskToReadyList>
 800b7d8:	f000 fc62 	bl	800c0a0 <xTimerCreateTimerTask>
 800b7dc:	2801      	cmp	r0, #1
 800b7de:	d00c      	beq.n	800b7fa <vTaskStartScheduler+0xde>
 800b7e0:	3001      	adds	r0, #1
 800b7e2:	d001      	beq.n	800b7e8 <vTaskStartScheduler+0xcc>
 800b7e4:	b004      	add	sp, #16
 800b7e6:	bd70      	pop	{r4, r5, r6, pc}
 800b7e8:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b7ec:	f383 8811 	msr	BASEPRI, r3
 800b7f0:	f3bf 8f6f 	isb	sy
 800b7f4:	f3bf 8f4f 	dsb	sy
 800b7f8:	e7fe      	b.n	800b7f8 <vTaskStartScheduler+0xdc>
 800b7fa:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b7fe:	f383 8811 	msr	BASEPRI, r3
 800b802:	f3bf 8f6f 	isb	sy
 800b806:	f3bf 8f4f 	dsb	sy
 800b80a:	4908      	ldr	r1, [pc, #32]	; (800b82c <vTaskStartScheduler+0x110>)
 800b80c:	4a08      	ldr	r2, [pc, #32]	; (800b830 <vTaskStartScheduler+0x114>)
 800b80e:	4b09      	ldr	r3, [pc, #36]	; (800b834 <vTaskStartScheduler+0x118>)
 800b810:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
 800b814:	600d      	str	r5, [r1, #0]
 800b816:	6010      	str	r0, [r2, #0]
 800b818:	601c      	str	r4, [r3, #0]
 800b81a:	b004      	add	sp, #16
 800b81c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800b820:	f000 beb2 	b.w	800c588 <xPortStartScheduler>
 800b824:	454c4449 	.word	0x454c4449
 800b828:	0800b285 	.word	0x0800b285
 800b82c:	20000d08 	.word	0x20000d08
 800b830:	20000d28 	.word	0x20000d28
 800b834:	20000d54 	.word	0x20000d54

0800b838 <vTaskSuspendAll>:
 800b838:	4a02      	ldr	r2, [pc, #8]	; (800b844 <vTaskSuspendAll+0xc>)
 800b83a:	6813      	ldr	r3, [r2, #0]
 800b83c:	3301      	adds	r3, #1
 800b83e:	6013      	str	r3, [r2, #0]
 800b840:	4770      	bx	lr
 800b842:	bf00      	nop
 800b844:	20000cd4 	.word	0x20000cd4

0800b848 <xTaskResumeAll>:
 800b848:	4b06      	ldr	r3, [pc, #24]	; (800b864 <xTaskResumeAll+0x1c>)
 800b84a:	681b      	ldr	r3, [r3, #0]
 800b84c:	b943      	cbnz	r3, 800b860 <xTaskResumeAll+0x18>
 800b84e:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b852:	f383 8811 	msr	BASEPRI, r3
 800b856:	f3bf 8f6f 	isb	sy
 800b85a:	f3bf 8f4f 	dsb	sy
 800b85e:	e7fe      	b.n	800b85e <xTaskResumeAll+0x16>
 800b860:	f7ff be00 	b.w	800b464 <xTaskResumeAll.part.0>
 800b864:	20000cd4 	.word	0x20000cd4

0800b868 <xTaskGetTickCount>:
 800b868:	4b01      	ldr	r3, [pc, #4]	; (800b870 <xTaskGetTickCount+0x8>)
 800b86a:	6818      	ldr	r0, [r3, #0]
 800b86c:	4770      	bx	lr
 800b86e:	bf00      	nop
 800b870:	20000d54 	.word	0x20000d54

0800b874 <xTaskIncrementTick>:
 800b874:	4b05      	ldr	r3, [pc, #20]	; (800b88c <xTaskIncrementTick+0x18>)
 800b876:	681b      	ldr	r3, [r3, #0]
 800b878:	b90b      	cbnz	r3, 800b87e <xTaskIncrementTick+0xa>
 800b87a:	f7ff bd4f 	b.w	800b31c <xTaskIncrementTick.part.0>
 800b87e:	4a04      	ldr	r2, [pc, #16]	; (800b890 <xTaskIncrementTick+0x1c>)
 800b880:	6813      	ldr	r3, [r2, #0]
 800b882:	3301      	adds	r3, #1
 800b884:	2000      	movs	r0, #0
 800b886:	6013      	str	r3, [r2, #0]
 800b888:	4770      	bx	lr
 800b88a:	bf00      	nop
 800b88c:	20000cd4 	.word	0x20000cd4
 800b890:	20000d10 	.word	0x20000d10

0800b894 <vTaskSwitchContext>:
 800b894:	4b1c      	ldr	r3, [pc, #112]	; (800b908 <vTaskSwitchContext+0x74>)
 800b896:	681b      	ldr	r3, [r3, #0]
 800b898:	b11b      	cbz	r3, 800b8a2 <vTaskSwitchContext+0xe>
 800b89a:	4b1c      	ldr	r3, [pc, #112]	; (800b90c <vTaskSwitchContext+0x78>)
 800b89c:	2201      	movs	r2, #1
 800b89e:	601a      	str	r2, [r3, #0]
 800b8a0:	4770      	bx	lr
 800b8a2:	4a1a      	ldr	r2, [pc, #104]	; (800b90c <vTaskSwitchContext+0x78>)
 800b8a4:	491a      	ldr	r1, [pc, #104]	; (800b910 <vTaskSwitchContext+0x7c>)
 800b8a6:	b410      	push	{r4}
 800b8a8:	4c1a      	ldr	r4, [pc, #104]	; (800b914 <vTaskSwitchContext+0x80>)
 800b8aa:	6013      	str	r3, [r2, #0]
 800b8ac:	6823      	ldr	r3, [r4, #0]
 800b8ae:	eb03 0283 	add.w	r2, r3, r3, lsl #2
 800b8b2:	0092      	lsls	r2, r2, #2
 800b8b4:	0098      	lsls	r0, r3, #2
 800b8b6:	588a      	ldr	r2, [r1, r2]
 800b8b8:	b942      	cbnz	r2, 800b8cc <vTaskSwitchContext+0x38>
 800b8ba:	b1db      	cbz	r3, 800b8f4 <vTaskSwitchContext+0x60>
 800b8bc:	3b01      	subs	r3, #1
 800b8be:	eb03 0283 	add.w	r2, r3, r3, lsl #2
 800b8c2:	0098      	lsls	r0, r3, #2
 800b8c4:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 800b8c8:	2a00      	cmp	r2, #0
 800b8ca:	d0f6      	beq.n	800b8ba <vTaskSwitchContext+0x26>
 800b8cc:	18c2      	adds	r2, r0, r3
 800b8ce:	eb01 0082 	add.w	r0, r1, r2, lsl #2
 800b8d2:	4602      	mov	r2, r0
 800b8d4:	6841      	ldr	r1, [r0, #4]
 800b8d6:	6849      	ldr	r1, [r1, #4]
 800b8d8:	6041      	str	r1, [r0, #4]
 800b8da:	3208      	adds	r2, #8
 800b8dc:	4291      	cmp	r1, r2
 800b8de:	bf08      	it	eq
 800b8e0:	6849      	ldreq	r1, [r1, #4]
 800b8e2:	4a0d      	ldr	r2, [pc, #52]	; (800b918 <vTaskSwitchContext+0x84>)
 800b8e4:	bf08      	it	eq
 800b8e6:	6041      	streq	r1, [r0, #4]
 800b8e8:	68c9      	ldr	r1, [r1, #12]
 800b8ea:	6011      	str	r1, [r2, #0]
 800b8ec:	6023      	str	r3, [r4, #0]
 800b8ee:	f85d 4b04 	ldr.w	r4, [sp], #4
 800b8f2:	4770      	bx	lr
 800b8f4:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b8f8:	f383 8811 	msr	BASEPRI, r3
 800b8fc:	f3bf 8f6f 	isb	sy
 800b900:	f3bf 8f4f 	dsb	sy
 800b904:	e7fe      	b.n	800b904 <vTaskSwitchContext+0x70>
 800b906:	bf00      	nop
 800b908:	20000cd4 	.word	0x20000cd4
 800b90c:	20000d58 	.word	0x20000d58
 800b910:	2000086c 	.word	0x2000086c
 800b914:	20000cdc 	.word	0x20000cdc
 800b918:	20000860 	.word	0x20000860

0800b91c <vTaskPlaceOnEventList>:
 800b91c:	b1d0      	cbz	r0, 800b954 <vTaskPlaceOnEventList+0x38>
 800b91e:	b570      	push	{r4, r5, r6, lr}
 800b920:	4d1a      	ldr	r5, [pc, #104]	; (800b98c <vTaskPlaceOnEventList+0x70>)
 800b922:	460c      	mov	r4, r1
 800b924:	6829      	ldr	r1, [r5, #0]
 800b926:	3118      	adds	r1, #24
 800b928:	f7fe faec 	bl	8009f04 <vListInsert>
 800b92c:	4b18      	ldr	r3, [pc, #96]	; (800b990 <vTaskPlaceOnEventList+0x74>)
 800b92e:	681e      	ldr	r6, [r3, #0]
 800b930:	6828      	ldr	r0, [r5, #0]
 800b932:	3004      	adds	r0, #4
 800b934:	f7fe fafe 	bl	8009f34 <uxListRemove>
 800b938:	1c63      	adds	r3, r4, #1
 800b93a:	d014      	beq.n	800b966 <vTaskPlaceOnEventList+0x4a>
 800b93c:	682b      	ldr	r3, [r5, #0]
 800b93e:	19a4      	adds	r4, r4, r6
 800b940:	605c      	str	r4, [r3, #4]
 800b942:	d317      	bcc.n	800b974 <vTaskPlaceOnEventList+0x58>
 800b944:	4b13      	ldr	r3, [pc, #76]	; (800b994 <vTaskPlaceOnEventList+0x78>)
 800b946:	6818      	ldr	r0, [r3, #0]
 800b948:	6829      	ldr	r1, [r5, #0]
 800b94a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800b94e:	3104      	adds	r1, #4
 800b950:	f7fe bad8 	b.w	8009f04 <vListInsert>
 800b954:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b958:	f383 8811 	msr	BASEPRI, r3
 800b95c:	f3bf 8f6f 	isb	sy
 800b960:	f3bf 8f4f 	dsb	sy
 800b964:	e7fe      	b.n	800b964 <vTaskPlaceOnEventList+0x48>
 800b966:	6829      	ldr	r1, [r5, #0]
 800b968:	480b      	ldr	r0, [pc, #44]	; (800b998 <vTaskPlaceOnEventList+0x7c>)
 800b96a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800b96e:	3104      	adds	r1, #4
 800b970:	f7fe bab8 	b.w	8009ee4 <vListInsertEnd>
 800b974:	4b09      	ldr	r3, [pc, #36]	; (800b99c <vTaskPlaceOnEventList+0x80>)
 800b976:	6818      	ldr	r0, [r3, #0]
 800b978:	6829      	ldr	r1, [r5, #0]
 800b97a:	3104      	adds	r1, #4
 800b97c:	f7fe fac2 	bl	8009f04 <vListInsert>
 800b980:	4b07      	ldr	r3, [pc, #28]	; (800b9a0 <vTaskPlaceOnEventList+0x84>)
 800b982:	681a      	ldr	r2, [r3, #0]
 800b984:	4294      	cmp	r4, r2
 800b986:	bf38      	it	cc
 800b988:	601c      	strcc	r4, [r3, #0]
 800b98a:	bd70      	pop	{r4, r5, r6, pc}
 800b98c:	20000860 	.word	0x20000860
 800b990:	20000d54 	.word	0x20000d54
 800b994:	20000868 	.word	0x20000868
 800b998:	20000d2c 	.word	0x20000d2c
 800b99c:	20000864 	.word	0x20000864
 800b9a0:	20000d08 	.word	0x20000d08

0800b9a4 <vTaskPlaceOnEventListRestricted>:
 800b9a4:	b330      	cbz	r0, 800b9f4 <vTaskPlaceOnEventListRestricted+0x50>
 800b9a6:	b570      	push	{r4, r5, r6, lr}
 800b9a8:	4e1d      	ldr	r6, [pc, #116]	; (800ba20 <vTaskPlaceOnEventListRestricted+0x7c>)
 800b9aa:	460c      	mov	r4, r1
 800b9ac:	6831      	ldr	r1, [r6, #0]
 800b9ae:	4615      	mov	r5, r2
 800b9b0:	3118      	adds	r1, #24
 800b9b2:	f7fe fa97 	bl	8009ee4 <vListInsertEnd>
 800b9b6:	4b1b      	ldr	r3, [pc, #108]	; (800ba24 <vTaskPlaceOnEventListRestricted+0x80>)
 800b9b8:	b985      	cbnz	r5, 800b9dc <vTaskPlaceOnEventListRestricted+0x38>
 800b9ba:	681d      	ldr	r5, [r3, #0]
 800b9bc:	6830      	ldr	r0, [r6, #0]
 800b9be:	3004      	adds	r0, #4
 800b9c0:	f7fe fab8 	bl	8009f34 <uxListRemove>
 800b9c4:	6833      	ldr	r3, [r6, #0]
 800b9c6:	1964      	adds	r4, r4, r5
 800b9c8:	605c      	str	r4, [r3, #4]
 800b9ca:	d31c      	bcc.n	800ba06 <vTaskPlaceOnEventListRestricted+0x62>
 800b9cc:	4b16      	ldr	r3, [pc, #88]	; (800ba28 <vTaskPlaceOnEventListRestricted+0x84>)
 800b9ce:	6818      	ldr	r0, [r3, #0]
 800b9d0:	6831      	ldr	r1, [r6, #0]
 800b9d2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800b9d6:	3104      	adds	r1, #4
 800b9d8:	f7fe ba94 	b.w	8009f04 <vListInsert>
 800b9dc:	681b      	ldr	r3, [r3, #0]
 800b9de:	6830      	ldr	r0, [r6, #0]
 800b9e0:	3004      	adds	r0, #4
 800b9e2:	f7fe faa7 	bl	8009f34 <uxListRemove>
 800b9e6:	6831      	ldr	r1, [r6, #0]
 800b9e8:	4810      	ldr	r0, [pc, #64]	; (800ba2c <vTaskPlaceOnEventListRestricted+0x88>)
 800b9ea:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800b9ee:	3104      	adds	r1, #4
 800b9f0:	f7fe ba78 	b.w	8009ee4 <vListInsertEnd>
 800b9f4:	f04f 0350 	mov.w	r3, #80	; 0x50
 800b9f8:	f383 8811 	msr	BASEPRI, r3
 800b9fc:	f3bf 8f6f 	isb	sy
 800ba00:	f3bf 8f4f 	dsb	sy
 800ba04:	e7fe      	b.n	800ba04 <vTaskPlaceOnEventListRestricted+0x60>
 800ba06:	4b0a      	ldr	r3, [pc, #40]	; (800ba30 <vTaskPlaceOnEventListRestricted+0x8c>)
 800ba08:	6818      	ldr	r0, [r3, #0]
 800ba0a:	6831      	ldr	r1, [r6, #0]
 800ba0c:	3104      	adds	r1, #4
 800ba0e:	f7fe fa79 	bl	8009f04 <vListInsert>
 800ba12:	4b08      	ldr	r3, [pc, #32]	; (800ba34 <vTaskPlaceOnEventListRestricted+0x90>)
 800ba14:	681a      	ldr	r2, [r3, #0]
 800ba16:	4294      	cmp	r4, r2
 800ba18:	bf38      	it	cc
 800ba1a:	601c      	strcc	r4, [r3, #0]
 800ba1c:	bd70      	pop	{r4, r5, r6, pc}
 800ba1e:	bf00      	nop
 800ba20:	20000860 	.word	0x20000860
 800ba24:	20000d54 	.word	0x20000d54
 800ba28:	20000868 	.word	0x20000868
 800ba2c:	20000d2c 	.word	0x20000d2c
 800ba30:	20000864 	.word	0x20000864
 800ba34:	20000d08 	.word	0x20000d08

0800ba38 <xTaskRemoveFromEventList>:
 800ba38:	b530      	push	{r4, r5, lr}
 800ba3a:	68c3      	ldr	r3, [r0, #12]
 800ba3c:	68dc      	ldr	r4, [r3, #12]
 800ba3e:	b083      	sub	sp, #12
 800ba40:	2c00      	cmp	r4, #0
 800ba42:	d02b      	beq.n	800ba9c <xTaskRemoveFromEventList+0x64>
 800ba44:	f104 0518 	add.w	r5, r4, #24
 800ba48:	4628      	mov	r0, r5
 800ba4a:	f7fe fa73 	bl	8009f34 <uxListRemove>
 800ba4e:	4b18      	ldr	r3, [pc, #96]	; (800bab0 <xTaskRemoveFromEventList+0x78>)
 800ba50:	681b      	ldr	r3, [r3, #0]
 800ba52:	b17b      	cbz	r3, 800ba74 <xTaskRemoveFromEventList+0x3c>
 800ba54:	4817      	ldr	r0, [pc, #92]	; (800bab4 <xTaskRemoveFromEventList+0x7c>)
 800ba56:	4629      	mov	r1, r5
 800ba58:	f7fe fa44 	bl	8009ee4 <vListInsertEnd>
 800ba5c:	4b16      	ldr	r3, [pc, #88]	; (800bab8 <xTaskRemoveFromEventList+0x80>)
 800ba5e:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
 800ba60:	681b      	ldr	r3, [r3, #0]
 800ba62:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800ba64:	429a      	cmp	r2, r3
 800ba66:	bf85      	ittet	hi
 800ba68:	4b14      	ldrhi	r3, [pc, #80]	; (800babc <xTaskRemoveFromEventList+0x84>)
 800ba6a:	2001      	movhi	r0, #1
 800ba6c:	2000      	movls	r0, #0
 800ba6e:	6018      	strhi	r0, [r3, #0]
 800ba70:	b003      	add	sp, #12
 800ba72:	bd30      	pop	{r4, r5, pc}
 800ba74:	1d21      	adds	r1, r4, #4
 800ba76:	4608      	mov	r0, r1
 800ba78:	9101      	str	r1, [sp, #4]
 800ba7a:	f7fe fa5b 	bl	8009f34 <uxListRemove>
 800ba7e:	4a10      	ldr	r2, [pc, #64]	; (800bac0 <xTaskRemoveFromEventList+0x88>)
 800ba80:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800ba82:	6810      	ldr	r0, [r2, #0]
 800ba84:	9901      	ldr	r1, [sp, #4]
 800ba86:	4283      	cmp	r3, r0
 800ba88:	480e      	ldr	r0, [pc, #56]	; (800bac4 <xTaskRemoveFromEventList+0x8c>)
 800ba8a:	bf88      	it	hi
 800ba8c:	6013      	strhi	r3, [r2, #0]
 800ba8e:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 800ba92:	eb00 0083 	add.w	r0, r0, r3, lsl #2
 800ba96:	f7fe fa25 	bl	8009ee4 <vListInsertEnd>
 800ba9a:	e7df      	b.n	800ba5c <xTaskRemoveFromEventList+0x24>
 800ba9c:	f04f 0350 	mov.w	r3, #80	; 0x50
 800baa0:	f383 8811 	msr	BASEPRI, r3
 800baa4:	f3bf 8f6f 	isb	sy
 800baa8:	f3bf 8f4f 	dsb	sy
 800baac:	e7fe      	b.n	800baac <xTaskRemoveFromEventList+0x74>
 800baae:	bf00      	nop
 800bab0:	20000cd4 	.word	0x20000cd4
 800bab4:	20000d14 	.word	0x20000d14
 800bab8:	20000860 	.word	0x20000860
 800babc:	20000d58 	.word	0x20000d58
 800bac0:	20000cdc 	.word	0x20000cdc
 800bac4:	2000086c 	.word	0x2000086c

0800bac8 <vTaskInternalSetTimeOutState>:
 800bac8:	4a03      	ldr	r2, [pc, #12]	; (800bad8 <vTaskInternalSetTimeOutState+0x10>)
 800baca:	4b04      	ldr	r3, [pc, #16]	; (800badc <vTaskInternalSetTimeOutState+0x14>)
 800bacc:	6812      	ldr	r2, [r2, #0]
 800bace:	681b      	ldr	r3, [r3, #0]
 800bad0:	e9c0 2300 	strd	r2, r3, [r0]
 800bad4:	4770      	bx	lr
 800bad6:	bf00      	nop
 800bad8:	20000d0c 	.word	0x20000d0c
 800badc:	20000d54 	.word	0x20000d54

0800bae0 <xTaskCheckForTimeOut>:
 800bae0:	b328      	cbz	r0, 800bb2e <xTaskCheckForTimeOut+0x4e>
 800bae2:	b5f0      	push	{r4, r5, r6, r7, lr}
 800bae4:	460d      	mov	r5, r1
 800bae6:	b083      	sub	sp, #12
 800bae8:	b1c1      	cbz	r1, 800bb1c <xTaskCheckForTimeOut+0x3c>
 800baea:	4604      	mov	r4, r0
 800baec:	f000 fcba 	bl	800c464 <vPortEnterCritical>
 800baf0:	682b      	ldr	r3, [r5, #0]
 800baf2:	4a1d      	ldr	r2, [pc, #116]	; (800bb68 <xTaskCheckForTimeOut+0x88>)
 800baf4:	1c58      	adds	r0, r3, #1
 800baf6:	6811      	ldr	r1, [r2, #0]
 800baf8:	d030      	beq.n	800bb5c <xTaskCheckForTimeOut+0x7c>
 800bafa:	f8df c070 	ldr.w	ip, [pc, #112]	; 800bb6c <xTaskCheckForTimeOut+0x8c>
 800bafe:	e9d4 6000 	ldrd	r6, r0, [r4]
 800bb02:	f8dc 7000 	ldr.w	r7, [ip]
 800bb06:	42be      	cmp	r6, r7
 800bb08:	d01a      	beq.n	800bb40 <xTaskCheckForTimeOut+0x60>
 800bb0a:	4288      	cmp	r0, r1
 800bb0c:	d818      	bhi.n	800bb40 <xTaskCheckForTimeOut+0x60>
 800bb0e:	2001      	movs	r0, #1
 800bb10:	9001      	str	r0, [sp, #4]
 800bb12:	f000 fcc9 	bl	800c4a8 <vPortExitCritical>
 800bb16:	9801      	ldr	r0, [sp, #4]
 800bb18:	b003      	add	sp, #12
 800bb1a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800bb1c:	f04f 0350 	mov.w	r3, #80	; 0x50
 800bb20:	f383 8811 	msr	BASEPRI, r3
 800bb24:	f3bf 8f6f 	isb	sy
 800bb28:	f3bf 8f4f 	dsb	sy
 800bb2c:	e7fe      	b.n	800bb2c <xTaskCheckForTimeOut+0x4c>
 800bb2e:	f04f 0350 	mov.w	r3, #80	; 0x50
 800bb32:	f383 8811 	msr	BASEPRI, r3
 800bb36:	f3bf 8f6f 	isb	sy
 800bb3a:	f3bf 8f4f 	dsb	sy
 800bb3e:	e7fe      	b.n	800bb3e <xTaskCheckForTimeOut+0x5e>
 800bb40:	eba1 0e00 	sub.w	lr, r1, r0
 800bb44:	4573      	cmp	r3, lr
 800bb46:	d90b      	bls.n	800bb60 <xTaskCheckForTimeOut+0x80>
 800bb48:	1a5b      	subs	r3, r3, r1
 800bb4a:	f8dc 1000 	ldr.w	r1, [ip]
 800bb4e:	6812      	ldr	r2, [r2, #0]
 800bb50:	4403      	add	r3, r0
 800bb52:	602b      	str	r3, [r5, #0]
 800bb54:	2000      	movs	r0, #0
 800bb56:	e9c4 1200 	strd	r1, r2, [r4]
 800bb5a:	e7d9      	b.n	800bb10 <xTaskCheckForTimeOut+0x30>
 800bb5c:	2000      	movs	r0, #0
 800bb5e:	e7d7      	b.n	800bb10 <xTaskCheckForTimeOut+0x30>
 800bb60:	2300      	movs	r3, #0
 800bb62:	602b      	str	r3, [r5, #0]
 800bb64:	2001      	movs	r0, #1
 800bb66:	e7d3      	b.n	800bb10 <xTaskCheckForTimeOut+0x30>
 800bb68:	20000d54 	.word	0x20000d54
 800bb6c:	20000d0c 	.word	0x20000d0c

0800bb70 <vTaskMissedYield>:
 800bb70:	4b01      	ldr	r3, [pc, #4]	; (800bb78 <vTaskMissedYield+0x8>)
 800bb72:	2201      	movs	r2, #1
 800bb74:	601a      	str	r2, [r3, #0]
 800bb76:	4770      	bx	lr
 800bb78:	20000d58 	.word	0x20000d58

0800bb7c <xTaskGetCurrentTaskHandle>:
 800bb7c:	4b01      	ldr	r3, [pc, #4]	; (800bb84 <xTaskGetCurrentTaskHandle+0x8>)
 800bb7e:	6818      	ldr	r0, [r3, #0]
 800bb80:	4770      	bx	lr
 800bb82:	bf00      	nop
 800bb84:	20000860 	.word	0x20000860

0800bb88 <xTaskGetSchedulerState>:
 800bb88:	4b05      	ldr	r3, [pc, #20]	; (800bba0 <xTaskGetSchedulerState+0x18>)
 800bb8a:	681b      	ldr	r3, [r3, #0]
 800bb8c:	b133      	cbz	r3, 800bb9c <xTaskGetSchedulerState+0x14>
 800bb8e:	4b05      	ldr	r3, [pc, #20]	; (800bba4 <xTaskGetSchedulerState+0x1c>)
 800bb90:	681b      	ldr	r3, [r3, #0]
 800bb92:	2b00      	cmp	r3, #0
 800bb94:	bf0c      	ite	eq
 800bb96:	2002      	moveq	r0, #2
 800bb98:	2000      	movne	r0, #0
 800bb9a:	4770      	bx	lr
 800bb9c:	2001      	movs	r0, #1
 800bb9e:	4770      	bx	lr
 800bba0:	20000d28 	.word	0x20000d28
 800bba4:	20000cd4 	.word	0x20000cd4

0800bba8 <xTaskPriorityInherit>:
 800bba8:	b570      	push	{r4, r5, r6, lr}
 800bbaa:	4604      	mov	r4, r0
 800bbac:	b082      	sub	sp, #8
 800bbae:	b1c8      	cbz	r0, 800bbe4 <xTaskPriorityInherit+0x3c>
 800bbb0:	4d1d      	ldr	r5, [pc, #116]	; (800bc28 <xTaskPriorityInherit+0x80>)
 800bbb2:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
 800bbb4:	682a      	ldr	r2, [r5, #0]
 800bbb6:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800bbb8:	4293      	cmp	r3, r2
 800bbba:	d215      	bcs.n	800bbe8 <xTaskPriorityInherit+0x40>
 800bbbc:	6982      	ldr	r2, [r0, #24]
 800bbbe:	2a00      	cmp	r2, #0
 800bbc0:	db04      	blt.n	800bbcc <xTaskPriorityInherit+0x24>
 800bbc2:	682a      	ldr	r2, [r5, #0]
 800bbc4:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800bbc6:	f1c2 0238 	rsb	r2, r2, #56	; 0x38
 800bbca:	6182      	str	r2, [r0, #24]
 800bbcc:	4e17      	ldr	r6, [pc, #92]	; (800bc2c <xTaskPriorityInherit+0x84>)
 800bbce:	6962      	ldr	r2, [r4, #20]
 800bbd0:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 800bbd4:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800bbd8:	429a      	cmp	r2, r3
 800bbda:	d00e      	beq.n	800bbfa <xTaskPriorityInherit+0x52>
 800bbdc:	682b      	ldr	r3, [r5, #0]
 800bbde:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800bbe0:	62e3      	str	r3, [r4, #44]	; 0x2c
 800bbe2:	2001      	movs	r0, #1
 800bbe4:	b002      	add	sp, #8
 800bbe6:	bd70      	pop	{r4, r5, r6, pc}
 800bbe8:	682b      	ldr	r3, [r5, #0]
 800bbea:	6cc0      	ldr	r0, [r0, #76]	; 0x4c
 800bbec:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800bbee:	4298      	cmp	r0, r3
 800bbf0:	bf2c      	ite	cs
 800bbf2:	2000      	movcs	r0, #0
 800bbf4:	2001      	movcc	r0, #1
 800bbf6:	b002      	add	sp, #8
 800bbf8:	bd70      	pop	{r4, r5, r6, pc}
 800bbfa:	1d21      	adds	r1, r4, #4
 800bbfc:	4608      	mov	r0, r1
 800bbfe:	9101      	str	r1, [sp, #4]
 800bc00:	f7fe f998 	bl	8009f34 <uxListRemove>
 800bc04:	682a      	ldr	r2, [r5, #0]
 800bc06:	4b0a      	ldr	r3, [pc, #40]	; (800bc30 <xTaskPriorityInherit+0x88>)
 800bc08:	6ad0      	ldr	r0, [r2, #44]	; 0x2c
 800bc0a:	681a      	ldr	r2, [r3, #0]
 800bc0c:	62e0      	str	r0, [r4, #44]	; 0x2c
 800bc0e:	4290      	cmp	r0, r2
 800bc10:	bf88      	it	hi
 800bc12:	6018      	strhi	r0, [r3, #0]
 800bc14:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 800bc18:	eb06 0080 	add.w	r0, r6, r0, lsl #2
 800bc1c:	9901      	ldr	r1, [sp, #4]
 800bc1e:	f7fe f961 	bl	8009ee4 <vListInsertEnd>
 800bc22:	2001      	movs	r0, #1
 800bc24:	e7de      	b.n	800bbe4 <xTaskPriorityInherit+0x3c>
 800bc26:	bf00      	nop
 800bc28:	20000860 	.word	0x20000860
 800bc2c:	2000086c 	.word	0x2000086c
 800bc30:	20000cdc 	.word	0x20000cdc

0800bc34 <xTaskPriorityDisinherit>:
 800bc34:	b318      	cbz	r0, 800bc7e <xTaskPriorityDisinherit+0x4a>
 800bc36:	b510      	push	{r4, lr}
 800bc38:	4b1e      	ldr	r3, [pc, #120]	; (800bcb4 <xTaskPriorityDisinherit+0x80>)
 800bc3a:	681c      	ldr	r4, [r3, #0]
 800bc3c:	4284      	cmp	r4, r0
 800bc3e:	b082      	sub	sp, #8
 800bc40:	d008      	beq.n	800bc54 <xTaskPriorityDisinherit+0x20>
 800bc42:	f04f 0350 	mov.w	r3, #80	; 0x50
 800bc46:	f383 8811 	msr	BASEPRI, r3
 800bc4a:	f3bf 8f6f 	isb	sy
 800bc4e:	f3bf 8f4f 	dsb	sy
 800bc52:	e7fe      	b.n	800bc52 <xTaskPriorityDisinherit+0x1e>
 800bc54:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800bc56:	b14b      	cbz	r3, 800bc6c <xTaskPriorityDisinherit+0x38>
 800bc58:	6ae1      	ldr	r1, [r4, #44]	; 0x2c
 800bc5a:	6ce2      	ldr	r2, [r4, #76]	; 0x4c
 800bc5c:	3b01      	subs	r3, #1
 800bc5e:	4291      	cmp	r1, r2
 800bc60:	6523      	str	r3, [r4, #80]	; 0x50
 800bc62:	d000      	beq.n	800bc66 <xTaskPriorityDisinherit+0x32>
 800bc64:	b16b      	cbz	r3, 800bc82 <xTaskPriorityDisinherit+0x4e>
 800bc66:	2000      	movs	r0, #0
 800bc68:	b002      	add	sp, #8
 800bc6a:	bd10      	pop	{r4, pc}
 800bc6c:	f04f 0350 	mov.w	r3, #80	; 0x50
 800bc70:	f383 8811 	msr	BASEPRI, r3
 800bc74:	f3bf 8f6f 	isb	sy
 800bc78:	f3bf 8f4f 	dsb	sy
 800bc7c:	e7fe      	b.n	800bc7c <xTaskPriorityDisinherit+0x48>
 800bc7e:	2000      	movs	r0, #0
 800bc80:	4770      	bx	lr
 800bc82:	1d21      	adds	r1, r4, #4
 800bc84:	4608      	mov	r0, r1
 800bc86:	9101      	str	r1, [sp, #4]
 800bc88:	f7fe f954 	bl	8009f34 <uxListRemove>
 800bc8c:	6ce3      	ldr	r3, [r4, #76]	; 0x4c
 800bc8e:	4a0a      	ldr	r2, [pc, #40]	; (800bcb8 <xTaskPriorityDisinherit+0x84>)
 800bc90:	62e3      	str	r3, [r4, #44]	; 0x2c
 800bc92:	f1c3 0038 	rsb	r0, r3, #56	; 0x38
 800bc96:	61a0      	str	r0, [r4, #24]
 800bc98:	6810      	ldr	r0, [r2, #0]
 800bc9a:	9901      	ldr	r1, [sp, #4]
 800bc9c:	4283      	cmp	r3, r0
 800bc9e:	4807      	ldr	r0, [pc, #28]	; (800bcbc <xTaskPriorityDisinherit+0x88>)
 800bca0:	bf88      	it	hi
 800bca2:	6013      	strhi	r3, [r2, #0]
 800bca4:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 800bca8:	eb00 0083 	add.w	r0, r0, r3, lsl #2
 800bcac:	f7fe f91a 	bl	8009ee4 <vListInsertEnd>
 800bcb0:	2001      	movs	r0, #1
 800bcb2:	e7d9      	b.n	800bc68 <xTaskPriorityDisinherit+0x34>
 800bcb4:	20000860 	.word	0x20000860
 800bcb8:	20000cdc 	.word	0x20000cdc
 800bcbc:	2000086c 	.word	0x2000086c

0800bcc0 <vTaskPriorityDisinheritAfterTimeout>:
 800bcc0:	2800      	cmp	r0, #0
 800bcc2:	d041      	beq.n	800bd48 <vTaskPriorityDisinheritAfterTimeout+0x88>
 800bcc4:	b530      	push	{r4, r5, lr}
 800bcc6:	6d03      	ldr	r3, [r0, #80]	; 0x50
 800bcc8:	b083      	sub	sp, #12
 800bcca:	4604      	mov	r4, r0
 800bccc:	b153      	cbz	r3, 800bce4 <vTaskPriorityDisinheritAfterTimeout+0x24>
 800bcce:	6cc0      	ldr	r0, [r0, #76]	; 0x4c
 800bcd0:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
 800bcd2:	4281      	cmp	r1, r0
 800bcd4:	bf38      	it	cc
 800bcd6:	4601      	movcc	r1, r0
 800bcd8:	428a      	cmp	r2, r1
 800bcda:	d001      	beq.n	800bce0 <vTaskPriorityDisinheritAfterTimeout+0x20>
 800bcdc:	2b01      	cmp	r3, #1
 800bcde:	d00a      	beq.n	800bcf6 <vTaskPriorityDisinheritAfterTimeout+0x36>
 800bce0:	b003      	add	sp, #12
 800bce2:	bd30      	pop	{r4, r5, pc}
 800bce4:	f04f 0350 	mov.w	r3, #80	; 0x50
 800bce8:	f383 8811 	msr	BASEPRI, r3
 800bcec:	f3bf 8f6f 	isb	sy
 800bcf0:	f3bf 8f4f 	dsb	sy
 800bcf4:	e7fe      	b.n	800bcf4 <vTaskPriorityDisinheritAfterTimeout+0x34>
 800bcf6:	4b19      	ldr	r3, [pc, #100]	; (800bd5c <vTaskPriorityDisinheritAfterTimeout+0x9c>)
 800bcf8:	681b      	ldr	r3, [r3, #0]
 800bcfa:	42a3      	cmp	r3, r4
 800bcfc:	d025      	beq.n	800bd4a <vTaskPriorityDisinheritAfterTimeout+0x8a>
 800bcfe:	69a3      	ldr	r3, [r4, #24]
 800bd00:	62e1      	str	r1, [r4, #44]	; 0x2c
 800bd02:	2b00      	cmp	r3, #0
 800bd04:	bfa8      	it	ge
 800bd06:	f1c1 0138 	rsbge	r1, r1, #56	; 0x38
 800bd0a:	4d15      	ldr	r5, [pc, #84]	; (800bd60 <vTaskPriorityDisinheritAfterTimeout+0xa0>)
 800bd0c:	bfa8      	it	ge
 800bd0e:	61a1      	strge	r1, [r4, #24]
 800bd10:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800bd14:	6961      	ldr	r1, [r4, #20]
 800bd16:	eb05 0382 	add.w	r3, r5, r2, lsl #2
 800bd1a:	4299      	cmp	r1, r3
 800bd1c:	d1e0      	bne.n	800bce0 <vTaskPriorityDisinheritAfterTimeout+0x20>
 800bd1e:	1d21      	adds	r1, r4, #4
 800bd20:	4608      	mov	r0, r1
 800bd22:	9101      	str	r1, [sp, #4]
 800bd24:	f7fe f906 	bl	8009f34 <uxListRemove>
 800bd28:	4b0e      	ldr	r3, [pc, #56]	; (800bd64 <vTaskPriorityDisinheritAfterTimeout+0xa4>)
 800bd2a:	6ae0      	ldr	r0, [r4, #44]	; 0x2c
 800bd2c:	681a      	ldr	r2, [r3, #0]
 800bd2e:	9901      	ldr	r1, [sp, #4]
 800bd30:	4290      	cmp	r0, r2
 800bd32:	bf88      	it	hi
 800bd34:	6018      	strhi	r0, [r3, #0]
 800bd36:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 800bd3a:	eb05 0080 	add.w	r0, r5, r0, lsl #2
 800bd3e:	b003      	add	sp, #12
 800bd40:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800bd44:	f7fe b8ce 	b.w	8009ee4 <vListInsertEnd>
 800bd48:	4770      	bx	lr
 800bd4a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800bd4e:	f383 8811 	msr	BASEPRI, r3
 800bd52:	f3bf 8f6f 	isb	sy
 800bd56:	f3bf 8f4f 	dsb	sy
 800bd5a:	e7fe      	b.n	800bd5a <vTaskPriorityDisinheritAfterTimeout+0x9a>
 800bd5c:	20000860 	.word	0x20000860
 800bd60:	2000086c 	.word	0x2000086c
 800bd64:	20000cdc 	.word	0x20000cdc

0800bd68 <pvTaskIncrementMutexHeldCount>:
 800bd68:	4b04      	ldr	r3, [pc, #16]	; (800bd7c <pvTaskIncrementMutexHeldCount+0x14>)
 800bd6a:	681a      	ldr	r2, [r3, #0]
 800bd6c:	b11a      	cbz	r2, 800bd76 <pvTaskIncrementMutexHeldCount+0xe>
 800bd6e:	6819      	ldr	r1, [r3, #0]
 800bd70:	6d0a      	ldr	r2, [r1, #80]	; 0x50
 800bd72:	3201      	adds	r2, #1
 800bd74:	650a      	str	r2, [r1, #80]	; 0x50
 800bd76:	6818      	ldr	r0, [r3, #0]
 800bd78:	4770      	bx	lr
 800bd7a:	bf00      	nop
 800bd7c:	20000860 	.word	0x20000860

0800bd80 <prvSwitchTimerLists>:
 800bd80:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800bd84:	4e22      	ldr	r6, [pc, #136]	; (800be10 <prvSwitchTimerLists+0x90>)
 800bd86:	f8df 9090 	ldr.w	r9, [pc, #144]	; 800be18 <prvSwitchTimerLists+0x98>
 800bd8a:	b085      	sub	sp, #20
 800bd8c:	f04f 0800 	mov.w	r8, #0
 800bd90:	e00d      	b.n	800bdae <prvSwitchTimerLists+0x2e>
 800bd92:	68db      	ldr	r3, [r3, #12]
 800bd94:	68dc      	ldr	r4, [r3, #12]
 800bd96:	681f      	ldr	r7, [r3, #0]
 800bd98:	1d25      	adds	r5, r4, #4
 800bd9a:	4628      	mov	r0, r5
 800bd9c:	f7fe f8ca 	bl	8009f34 <uxListRemove>
 800bda0:	6a23      	ldr	r3, [r4, #32]
 800bda2:	4620      	mov	r0, r4
 800bda4:	4798      	blx	r3
 800bda6:	f894 3028 	ldrb.w	r3, [r4, #40]	; 0x28
 800bdaa:	075b      	lsls	r3, r3, #29
 800bdac:	d40a      	bmi.n	800bdc4 <prvSwitchTimerLists+0x44>
 800bdae:	6833      	ldr	r3, [r6, #0]
 800bdb0:	681a      	ldr	r2, [r3, #0]
 800bdb2:	2a00      	cmp	r2, #0
 800bdb4:	d1ed      	bne.n	800bd92 <prvSwitchTimerLists+0x12>
 800bdb6:	4a17      	ldr	r2, [pc, #92]	; (800be14 <prvSwitchTimerLists+0x94>)
 800bdb8:	6811      	ldr	r1, [r2, #0]
 800bdba:	6031      	str	r1, [r6, #0]
 800bdbc:	6013      	str	r3, [r2, #0]
 800bdbe:	b005      	add	sp, #20
 800bdc0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800bdc4:	69a3      	ldr	r3, [r4, #24]
 800bdc6:	443b      	add	r3, r7
 800bdc8:	429f      	cmp	r7, r3
 800bdca:	4629      	mov	r1, r5
 800bdcc:	d205      	bcs.n	800bdda <prvSwitchTimerLists+0x5a>
 800bdce:	6830      	ldr	r0, [r6, #0]
 800bdd0:	6063      	str	r3, [r4, #4]
 800bdd2:	6124      	str	r4, [r4, #16]
 800bdd4:	f7fe f896 	bl	8009f04 <vListInsert>
 800bdd8:	e7e9      	b.n	800bdae <prvSwitchTimerLists+0x2e>
 800bdda:	f8d9 3000 	ldr.w	r3, [r9]
 800bdde:	b16b      	cbz	r3, 800bdfc <prvSwitchTimerLists+0x7c>
 800bde0:	e9cd 8700 	strd	r8, r7, [sp]
 800bde4:	9402      	str	r4, [sp, #8]
 800bde6:	f7ff fecf 	bl	800bb88 <xTaskGetSchedulerState>
 800bdea:	2300      	movs	r3, #0
 800bdec:	f8d9 0000 	ldr.w	r0, [r9]
 800bdf0:	461a      	mov	r2, r3
 800bdf2:	4669      	mov	r1, sp
 800bdf4:	f7fe fa4a 	bl	800a28c <xQueueGenericSend>
 800bdf8:	2800      	cmp	r0, #0
 800bdfa:	d1d8      	bne.n	800bdae <prvSwitchTimerLists+0x2e>
 800bdfc:	f04f 0350 	mov.w	r3, #80	; 0x50
 800be00:	f383 8811 	msr	BASEPRI, r3
 800be04:	f3bf 8f6f 	isb	sy
 800be08:	f3bf 8f4f 	dsb	sy
 800be0c:	e7fe      	b.n	800be0c <prvSwitchTimerLists+0x8c>
 800be0e:	bf00      	nop
 800be10:	20000d5c 	.word	0x20000d5c
 800be14:	20000d60 	.word	0x20000d60
 800be18:	20000e80 	.word	0x20000e80

0800be1c <prvTimerTask>:
 800be1c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800be20:	4e9b      	ldr	r6, [pc, #620]	; (800c090 <prvTimerTask+0x274>)
 800be22:	4d9c      	ldr	r5, [pc, #624]	; (800c094 <prvTimerTask+0x278>)
 800be24:	4c9c      	ldr	r4, [pc, #624]	; (800c098 <prvTimerTask+0x27c>)
 800be26:	b08b      	sub	sp, #44	; 0x2c
 800be28:	f04f 29e0 	mov.w	r9, #3758153728	; 0xe000e000
 800be2c:	f04f 5880 	mov.w	r8, #268435456	; 0x10000000
 800be30:	6833      	ldr	r3, [r6, #0]
 800be32:	681f      	ldr	r7, [r3, #0]
 800be34:	2f00      	cmp	r7, #0
 800be36:	f000 80a8 	beq.w	800bf8a <prvTimerTask+0x16e>
 800be3a:	68db      	ldr	r3, [r3, #12]
 800be3c:	681f      	ldr	r7, [r3, #0]
 800be3e:	f7ff fcfb 	bl	800b838 <vTaskSuspendAll>
 800be42:	f7ff fd11 	bl	800b868 <xTaskGetTickCount>
 800be46:	682a      	ldr	r2, [r5, #0]
 800be48:	4290      	cmp	r0, r2
 800be4a:	4682      	mov	sl, r0
 800be4c:	f0c0 80ae 	bcc.w	800bfac <prvTimerTask+0x190>
 800be50:	42b8      	cmp	r0, r7
 800be52:	6028      	str	r0, [r5, #0]
 800be54:	f080 80b4 	bcs.w	800bfc0 <prvTimerTask+0x1a4>
 800be58:	2200      	movs	r2, #0
 800be5a:	6820      	ldr	r0, [r4, #0]
 800be5c:	eba7 010a 	sub.w	r1, r7, sl
 800be60:	f7ff f88c 	bl	800af7c <vQueueWaitForMessageRestricted>
 800be64:	f7ff fcf0 	bl	800b848 <xTaskResumeAll>
 800be68:	b928      	cbnz	r0, 800be76 <prvTimerTask+0x5a>
 800be6a:	f8c9 8d04 	str.w	r8, [r9, #3332]	; 0xd04
 800be6e:	f3bf 8f4f 	dsb	sy
 800be72:	f3bf 8f6f 	isb	sy
 800be76:	6820      	ldr	r0, [r4, #0]
 800be78:	2200      	movs	r2, #0
 800be7a:	a902      	add	r1, sp, #8
 800be7c:	f7fe fc84 	bl	800a788 <xQueueReceive>
 800be80:	2800      	cmp	r0, #0
 800be82:	d0d5      	beq.n	800be30 <prvTimerTask+0x14>
 800be84:	9b02      	ldr	r3, [sp, #8]
 800be86:	2b00      	cmp	r3, #0
 800be88:	db76      	blt.n	800bf78 <prvTimerTask+0x15c>
 800be8a:	9f04      	ldr	r7, [sp, #16]
 800be8c:	697b      	ldr	r3, [r7, #20]
 800be8e:	b113      	cbz	r3, 800be96 <prvTimerTask+0x7a>
 800be90:	1d38      	adds	r0, r7, #4
 800be92:	f7fe f84f 	bl	8009f34 <uxListRemove>
 800be96:	f7ff fce7 	bl	800b868 <xTaskGetTickCount>
 800be9a:	682b      	ldr	r3, [r5, #0]
 800be9c:	4298      	cmp	r0, r3
 800be9e:	4682      	mov	sl, r0
 800bea0:	f0c0 808b 	bcc.w	800bfba <prvTimerTask+0x19e>
 800bea4:	9b02      	ldr	r3, [sp, #8]
 800bea6:	f8c5 a000 	str.w	sl, [r5]
 800beaa:	2b09      	cmp	r3, #9
 800beac:	d8e3      	bhi.n	800be76 <prvTimerTask+0x5a>
 800beae:	e8df f003 	tbb	[pc, r3]
 800beb2:	0505      	.short	0x0505
 800beb4:	5a3d5305 	.word	0x5a3d5305
 800beb8:	3d530505 	.word	0x3d530505
 800bebc:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
 800bec0:	69ba      	ldr	r2, [r7, #24]
 800bec2:	613f      	str	r7, [r7, #16]
 800bec4:	f043 0301 	orr.w	r3, r3, #1
 800bec8:	f887 3028 	strb.w	r3, [r7, #40]	; 0x28
 800becc:	9b03      	ldr	r3, [sp, #12]
 800bece:	1899      	adds	r1, r3, r2
 800bed0:	bf2c      	ite	cs
 800bed2:	2001      	movcs	r0, #1
 800bed4:	2000      	movcc	r0, #0
 800bed6:	4551      	cmp	r1, sl
 800bed8:	6079      	str	r1, [r7, #4]
 800beda:	f200 808c 	bhi.w	800bff6 <prvTimerTask+0x1da>
 800bede:	ebaa 0303 	sub.w	r3, sl, r3
 800bee2:	429a      	cmp	r2, r3
 800bee4:	d832      	bhi.n	800bf4c <prvTimerTask+0x130>
 800bee6:	6a3b      	ldr	r3, [r7, #32]
 800bee8:	4638      	mov	r0, r7
 800beea:	4798      	blx	r3
 800beec:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
 800bef0:	075b      	lsls	r3, r3, #29
 800bef2:	d5c0      	bpl.n	800be76 <prvTimerTask+0x5a>
 800bef4:	6823      	ldr	r3, [r4, #0]
 800bef6:	b183      	cbz	r3, 800bf1a <prvTimerTask+0xfe>
 800bef8:	2200      	movs	r2, #0
 800befa:	69bb      	ldr	r3, [r7, #24]
 800befc:	9206      	str	r2, [sp, #24]
 800befe:	9a03      	ldr	r2, [sp, #12]
 800bf00:	9708      	str	r7, [sp, #32]
 800bf02:	4413      	add	r3, r2
 800bf04:	9307      	str	r3, [sp, #28]
 800bf06:	f7ff fe3f 	bl	800bb88 <xTaskGetSchedulerState>
 800bf0a:	2300      	movs	r3, #0
 800bf0c:	6820      	ldr	r0, [r4, #0]
 800bf0e:	461a      	mov	r2, r3
 800bf10:	a906      	add	r1, sp, #24
 800bf12:	f7fe f9bb 	bl	800a28c <xQueueGenericSend>
 800bf16:	2800      	cmp	r0, #0
 800bf18:	d1ad      	bne.n	800be76 <prvTimerTask+0x5a>
 800bf1a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800bf1e:	f383 8811 	msr	BASEPRI, r3
 800bf22:	f3bf 8f6f 	isb	sy
 800bf26:	f3bf 8f4f 	dsb	sy
 800bf2a:	e7fe      	b.n	800bf2a <prvTimerTask+0x10e>
 800bf2c:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
 800bf30:	f043 0301 	orr.w	r3, r3, #1
 800bf34:	f887 3028 	strb.w	r3, [r7, #40]	; 0x28
 800bf38:	9b03      	ldr	r3, [sp, #12]
 800bf3a:	61bb      	str	r3, [r7, #24]
 800bf3c:	2b00      	cmp	r3, #0
 800bf3e:	f000 809d 	beq.w	800c07c <prvTimerTask+0x260>
 800bf42:	4453      	add	r3, sl
 800bf44:	4553      	cmp	r3, sl
 800bf46:	607b      	str	r3, [r7, #4]
 800bf48:	613f      	str	r7, [r7, #16]
 800bf4a:	d85e      	bhi.n	800c00a <prvTimerTask+0x1ee>
 800bf4c:	4b53      	ldr	r3, [pc, #332]	; (800c09c <prvTimerTask+0x280>)
 800bf4e:	1d39      	adds	r1, r7, #4
 800bf50:	6818      	ldr	r0, [r3, #0]
 800bf52:	f7fd ffd7 	bl	8009f04 <vListInsert>
 800bf56:	e78e      	b.n	800be76 <prvTimerTask+0x5a>
 800bf58:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
 800bf5c:	f023 0301 	bic.w	r3, r3, #1
 800bf60:	f887 3028 	strb.w	r3, [r7, #40]	; 0x28
 800bf64:	e787      	b.n	800be76 <prvTimerTask+0x5a>
 800bf66:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
 800bf6a:	079a      	lsls	r2, r3, #30
 800bf6c:	d552      	bpl.n	800c014 <prvTimerTask+0x1f8>
 800bf6e:	f023 0301 	bic.w	r3, r3, #1
 800bf72:	f887 3028 	strb.w	r3, [r7, #40]	; 0x28
 800bf76:	e77e      	b.n	800be76 <prvTimerTask+0x5a>
 800bf78:	9b03      	ldr	r3, [sp, #12]
 800bf7a:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 800bf7e:	4798      	blx	r3
 800bf80:	9b02      	ldr	r3, [sp, #8]
 800bf82:	2b00      	cmp	r3, #0
 800bf84:	f6ff af77 	blt.w	800be76 <prvTimerTask+0x5a>
 800bf88:	e77f      	b.n	800be8a <prvTimerTask+0x6e>
 800bf8a:	f7ff fc55 	bl	800b838 <vTaskSuspendAll>
 800bf8e:	f7ff fc6b 	bl	800b868 <xTaskGetTickCount>
 800bf92:	682a      	ldr	r2, [r5, #0]
 800bf94:	4282      	cmp	r2, r0
 800bf96:	4682      	mov	sl, r0
 800bf98:	d808      	bhi.n	800bfac <prvTimerTask+0x190>
 800bf9a:	4b40      	ldr	r3, [pc, #256]	; (800c09c <prvTimerTask+0x280>)
 800bf9c:	f8c5 a000 	str.w	sl, [r5]
 800bfa0:	681a      	ldr	r2, [r3, #0]
 800bfa2:	6812      	ldr	r2, [r2, #0]
 800bfa4:	fab2 f282 	clz	r2, r2
 800bfa8:	0952      	lsrs	r2, r2, #5
 800bfaa:	e756      	b.n	800be5a <prvTimerTask+0x3e>
 800bfac:	f7ff fee8 	bl	800bd80 <prvSwitchTimerLists>
 800bfb0:	f8c5 a000 	str.w	sl, [r5]
 800bfb4:	f7ff fc48 	bl	800b848 <xTaskResumeAll>
 800bfb8:	e75d      	b.n	800be76 <prvTimerTask+0x5a>
 800bfba:	f7ff fee1 	bl	800bd80 <prvSwitchTimerLists>
 800bfbe:	e771      	b.n	800bea4 <prvTimerTask+0x88>
 800bfc0:	f7ff fc42 	bl	800b848 <xTaskResumeAll>
 800bfc4:	6832      	ldr	r2, [r6, #0]
 800bfc6:	68d2      	ldr	r2, [r2, #12]
 800bfc8:	f8d2 b00c 	ldr.w	fp, [r2, #12]
 800bfcc:	f10b 0104 	add.w	r1, fp, #4
 800bfd0:	4608      	mov	r0, r1
 800bfd2:	9101      	str	r1, [sp, #4]
 800bfd4:	f7fd ffae 	bl	8009f34 <uxListRemove>
 800bfd8:	f89b 0028 	ldrb.w	r0, [fp, #40]	; 0x28
 800bfdc:	9901      	ldr	r1, [sp, #4]
 800bfde:	f010 0f04 	tst.w	r0, #4
 800bfe2:	d11b      	bne.n	800c01c <prvTimerTask+0x200>
 800bfe4:	f020 0001 	bic.w	r0, r0, #1
 800bfe8:	f88b 0028 	strb.w	r0, [fp, #40]	; 0x28
 800bfec:	f8db 3020 	ldr.w	r3, [fp, #32]
 800bff0:	4658      	mov	r0, fp
 800bff2:	4798      	blx	r3
 800bff4:	e73f      	b.n	800be76 <prvTimerTask+0x5a>
 800bff6:	4553      	cmp	r3, sl
 800bff8:	d902      	bls.n	800c000 <prvTimerTask+0x1e4>
 800bffa:	2800      	cmp	r0, #0
 800bffc:	f43f af73 	beq.w	800bee6 <prvTimerTask+0xca>
 800c000:	6830      	ldr	r0, [r6, #0]
 800c002:	1d39      	adds	r1, r7, #4
 800c004:	f7fd ff7e 	bl	8009f04 <vListInsert>
 800c008:	e735      	b.n	800be76 <prvTimerTask+0x5a>
 800c00a:	6830      	ldr	r0, [r6, #0]
 800c00c:	1d39      	adds	r1, r7, #4
 800c00e:	f7fd ff79 	bl	8009f04 <vListInsert>
 800c012:	e730      	b.n	800be76 <prvTimerTask+0x5a>
 800c014:	4638      	mov	r0, r7
 800c016:	f000 f959 	bl	800c2cc <vPortFree>
 800c01a:	e72c      	b.n	800be76 <prvTimerTask+0x5a>
 800c01c:	f8db 2018 	ldr.w	r2, [fp, #24]
 800c020:	f8cb b010 	str.w	fp, [fp, #16]
 800c024:	18b8      	adds	r0, r7, r2
 800c026:	4582      	cmp	sl, r0
 800c028:	f8cb 0004 	str.w	r0, [fp, #4]
 800c02c:	d203      	bcs.n	800c036 <prvTimerTask+0x21a>
 800c02e:	6830      	ldr	r0, [r6, #0]
 800c030:	f7fd ff68 	bl	8009f04 <vListInsert>
 800c034:	e7da      	b.n	800bfec <prvTimerTask+0x1d0>
 800c036:	ebaa 0307 	sub.w	r3, sl, r7
 800c03a:	429a      	cmp	r2, r3
 800c03c:	d819      	bhi.n	800c072 <prvTimerTask+0x256>
 800c03e:	6823      	ldr	r3, [r4, #0]
 800c040:	b173      	cbz	r3, 800c060 <prvTimerTask+0x244>
 800c042:	2300      	movs	r3, #0
 800c044:	9306      	str	r3, [sp, #24]
 800c046:	9707      	str	r7, [sp, #28]
 800c048:	f8cd b020 	str.w	fp, [sp, #32]
 800c04c:	f7ff fd9c 	bl	800bb88 <xTaskGetSchedulerState>
 800c050:	2300      	movs	r3, #0
 800c052:	6820      	ldr	r0, [r4, #0]
 800c054:	461a      	mov	r2, r3
 800c056:	a906      	add	r1, sp, #24
 800c058:	f7fe f918 	bl	800a28c <xQueueGenericSend>
 800c05c:	2800      	cmp	r0, #0
 800c05e:	d1c5      	bne.n	800bfec <prvTimerTask+0x1d0>
 800c060:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c064:	f383 8811 	msr	BASEPRI, r3
 800c068:	f3bf 8f6f 	isb	sy
 800c06c:	f3bf 8f4f 	dsb	sy
 800c070:	e7fe      	b.n	800c070 <prvTimerTask+0x254>
 800c072:	4b0a      	ldr	r3, [pc, #40]	; (800c09c <prvTimerTask+0x280>)
 800c074:	6818      	ldr	r0, [r3, #0]
 800c076:	f7fd ff45 	bl	8009f04 <vListInsert>
 800c07a:	e7b7      	b.n	800bfec <prvTimerTask+0x1d0>
 800c07c:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c080:	f383 8811 	msr	BASEPRI, r3
 800c084:	f3bf 8f6f 	isb	sy
 800c088:	f3bf 8f4f 	dsb	sy
 800c08c:	e7fe      	b.n	800c08c <prvTimerTask+0x270>
 800c08e:	bf00      	nop
 800c090:	20000d5c 	.word	0x20000d5c
 800c094:	20000e2c 	.word	0x20000e2c
 800c098:	20000e80 	.word	0x20000e80
 800c09c:	20000d60 	.word	0x20000d60

0800c0a0 <xTimerCreateTimerTask>:
 800c0a0:	b5f0      	push	{r4, r5, r6, r7, lr}
 800c0a2:	4c23      	ldr	r4, [pc, #140]	; (800c130 <xTimerCreateTimerTask+0x90>)
 800c0a4:	b089      	sub	sp, #36	; 0x24
 800c0a6:	f000 f9dd 	bl	800c464 <vPortEnterCritical>
 800c0aa:	6825      	ldr	r5, [r4, #0]
 800c0ac:	b335      	cbz	r5, 800c0fc <xTimerCreateTimerTask+0x5c>
 800c0ae:	f000 f9fb 	bl	800c4a8 <vPortExitCritical>
 800c0b2:	6823      	ldr	r3, [r4, #0]
 800c0b4:	b1cb      	cbz	r3, 800c0ea <xTimerCreateTimerTask+0x4a>
 800c0b6:	2400      	movs	r4, #0
 800c0b8:	aa07      	add	r2, sp, #28
 800c0ba:	a906      	add	r1, sp, #24
 800c0bc:	a805      	add	r0, sp, #20
 800c0be:	e9cd 4405 	strd	r4, r4, [sp, #20]
 800c0c2:	f000 fd67 	bl	800cb94 <vApplicationGetTimerTaskMemory>
 800c0c6:	e9dd 0105 	ldrd	r0, r1, [sp, #20]
 800c0ca:	2302      	movs	r3, #2
 800c0cc:	e9cd 1001 	strd	r1, r0, [sp, #4]
 800c0d0:	9300      	str	r3, [sp, #0]
 800c0d2:	9a07      	ldr	r2, [sp, #28]
 800c0d4:	4917      	ldr	r1, [pc, #92]	; (800c134 <xTimerCreateTimerTask+0x94>)
 800c0d6:	4818      	ldr	r0, [pc, #96]	; (800c138 <xTimerCreateTimerTask+0x98>)
 800c0d8:	4623      	mov	r3, r4
 800c0da:	f7ff fa5d 	bl	800b598 <xTaskCreateStatic>
 800c0de:	4b17      	ldr	r3, [pc, #92]	; (800c13c <xTimerCreateTimerTask+0x9c>)
 800c0e0:	6018      	str	r0, [r3, #0]
 800c0e2:	b110      	cbz	r0, 800c0ea <xTimerCreateTimerTask+0x4a>
 800c0e4:	2001      	movs	r0, #1
 800c0e6:	b009      	add	sp, #36	; 0x24
 800c0e8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800c0ea:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c0ee:	f383 8811 	msr	BASEPRI, r3
 800c0f2:	f3bf 8f6f 	isb	sy
 800c0f6:	f3bf 8f4f 	dsb	sy
 800c0fa:	e7fe      	b.n	800c0fa <xTimerCreateTimerTask+0x5a>
 800c0fc:	4f10      	ldr	r7, [pc, #64]	; (800c140 <xTimerCreateTimerTask+0xa0>)
 800c0fe:	4e11      	ldr	r6, [pc, #68]	; (800c144 <xTimerCreateTimerTask+0xa4>)
 800c100:	4638      	mov	r0, r7
 800c102:	f7fd fedf 	bl	8009ec4 <vListInitialise>
 800c106:	4630      	mov	r0, r6
 800c108:	f7fd fedc 	bl	8009ec4 <vListInitialise>
 800c10c:	4a0e      	ldr	r2, [pc, #56]	; (800c148 <xTimerCreateTimerTask+0xa8>)
 800c10e:	9500      	str	r5, [sp, #0]
 800c110:	6017      	str	r7, [r2, #0]
 800c112:	4a0e      	ldr	r2, [pc, #56]	; (800c14c <xTimerCreateTimerTask+0xac>)
 800c114:	4b0e      	ldr	r3, [pc, #56]	; (800c150 <xTimerCreateTimerTask+0xb0>)
 800c116:	6016      	str	r6, [r2, #0]
 800c118:	2110      	movs	r1, #16
 800c11a:	4a0e      	ldr	r2, [pc, #56]	; (800c154 <xTimerCreateTimerTask+0xb4>)
 800c11c:	200a      	movs	r0, #10
 800c11e:	f7fd ff59 	bl	8009fd4 <xQueueGenericCreateStatic>
 800c122:	6020      	str	r0, [r4, #0]
 800c124:	2800      	cmp	r0, #0
 800c126:	d0c2      	beq.n	800c0ae <xTimerCreateTimerTask+0xe>
 800c128:	490b      	ldr	r1, [pc, #44]	; (800c158 <xTimerCreateTimerTask+0xb8>)
 800c12a:	f7fe feff 	bl	800af2c <vQueueAddToRegistry>
 800c12e:	e7be      	b.n	800c0ae <xTimerCreateTimerTask+0xe>
 800c130:	20000e80 	.word	0x20000e80
 800c134:	0800df80 	.word	0x0800df80
 800c138:	0800be1d 	.word	0x0800be1d
 800c13c:	20000e84 	.word	0x20000e84
 800c140:	20000e04 	.word	0x20000e04
 800c144:	20000e18 	.word	0x20000e18
 800c148:	20000d5c 	.word	0x20000d5c
 800c14c:	20000d60 	.word	0x20000d60
 800c150:	20000e30 	.word	0x20000e30
 800c154:	20000d64 	.word	0x20000d64
 800c158:	0800df78 	.word	0x0800df78

0800c15c <pvPortMalloc>:
 800c15c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800c160:	4606      	mov	r6, r0
 800c162:	f7ff fb69 	bl	800b838 <vTaskSuspendAll>
 800c166:	4b52      	ldr	r3, [pc, #328]	; (800c2b0 <pvPortMalloc+0x154>)
 800c168:	681d      	ldr	r5, [r3, #0]
 800c16a:	2d00      	cmp	r5, #0
 800c16c:	d06e      	beq.n	800c24c <pvPortMalloc+0xf0>
 800c16e:	4b51      	ldr	r3, [pc, #324]	; (800c2b4 <pvPortMalloc+0x158>)
 800c170:	681f      	ldr	r7, [r3, #0]
 800c172:	423e      	tst	r6, r7
 800c174:	d12e      	bne.n	800c1d4 <pvPortMalloc+0x78>
 800c176:	b36e      	cbz	r6, 800c1d4 <pvPortMalloc+0x78>
 800c178:	f106 0408 	add.w	r4, r6, #8
 800c17c:	0776      	lsls	r6, r6, #29
 800c17e:	bf1c      	itt	ne
 800c180:	f024 0407 	bicne.w	r4, r4, #7
 800c184:	3408      	addne	r4, #8
 800c186:	b32c      	cbz	r4, 800c1d4 <pvPortMalloc+0x78>
 800c188:	f8df c13c 	ldr.w	ip, [pc, #316]	; 800c2c8 <pvPortMalloc+0x16c>
 800c18c:	f8dc 6000 	ldr.w	r6, [ip]
 800c190:	42a6      	cmp	r6, r4
 800c192:	d31f      	bcc.n	800c1d4 <pvPortMalloc+0x78>
 800c194:	4848      	ldr	r0, [pc, #288]	; (800c2b8 <pvPortMalloc+0x15c>)
 800c196:	6803      	ldr	r3, [r0, #0]
 800c198:	e003      	b.n	800c1a2 <pvPortMalloc+0x46>
 800c19a:	681a      	ldr	r2, [r3, #0]
 800c19c:	b122      	cbz	r2, 800c1a8 <pvPortMalloc+0x4c>
 800c19e:	4618      	mov	r0, r3
 800c1a0:	4613      	mov	r3, r2
 800c1a2:	6859      	ldr	r1, [r3, #4]
 800c1a4:	42a1      	cmp	r1, r4
 800c1a6:	d3f8      	bcc.n	800c19a <pvPortMalloc+0x3e>
 800c1a8:	42ab      	cmp	r3, r5
 800c1aa:	d013      	beq.n	800c1d4 <pvPortMalloc+0x78>
 800c1ac:	4698      	mov	r8, r3
 800c1ae:	1b0a      	subs	r2, r1, r4
 800c1b0:	f858 eb08 	ldr.w	lr, [r8], #8
 800c1b4:	f8c0 e000 	str.w	lr, [r0]
 800c1b8:	2a10      	cmp	r2, #16
 800c1ba:	d929      	bls.n	800c210 <pvPortMalloc+0xb4>
 800c1bc:	1919      	adds	r1, r3, r4
 800c1be:	0748      	lsls	r0, r1, #29
 800c1c0:	d00f      	beq.n	800c1e2 <pvPortMalloc+0x86>
 800c1c2:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c1c6:	f383 8811 	msr	BASEPRI, r3
 800c1ca:	f3bf 8f6f 	isb	sy
 800c1ce:	f3bf 8f4f 	dsb	sy
 800c1d2:	e7fe      	b.n	800c1d2 <pvPortMalloc+0x76>
 800c1d4:	f7ff fb38 	bl	800b848 <xTaskResumeAll>
 800c1d8:	f04f 0800 	mov.w	r8, #0
 800c1dc:	4640      	mov	r0, r8
 800c1de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800c1e2:	604a      	str	r2, [r1, #4]
 800c1e4:	4a34      	ldr	r2, [pc, #208]	; (800c2b8 <pvPortMalloc+0x15c>)
 800c1e6:	605c      	str	r4, [r3, #4]
 800c1e8:	4614      	mov	r4, r2
 800c1ea:	6812      	ldr	r2, [r2, #0]
 800c1ec:	4291      	cmp	r1, r2
 800c1ee:	d8fb      	bhi.n	800c1e8 <pvPortMalloc+0x8c>
 800c1f0:	6860      	ldr	r0, [r4, #4]
 800c1f2:	eb04 0e00 	add.w	lr, r4, r0
 800c1f6:	4571      	cmp	r1, lr
 800c1f8:	d04a      	beq.n	800c290 <pvPortMalloc+0x134>
 800c1fa:	f8d1 e004 	ldr.w	lr, [r1, #4]
 800c1fe:	eb01 000e 	add.w	r0, r1, lr
 800c202:	4282      	cmp	r2, r0
 800c204:	d04b      	beq.n	800c29e <pvPortMalloc+0x142>
 800c206:	600a      	str	r2, [r1, #0]
 800c208:	428c      	cmp	r4, r1
 800c20a:	bf18      	it	ne
 800c20c:	6021      	strne	r1, [r4, #0]
 800c20e:	6859      	ldr	r1, [r3, #4]
 800c210:	4a2a      	ldr	r2, [pc, #168]	; (800c2bc <pvPortMalloc+0x160>)
 800c212:	6810      	ldr	r0, [r2, #0]
 800c214:	1a76      	subs	r6, r6, r1
 800c216:	4286      	cmp	r6, r0
 800c218:	bf38      	it	cc
 800c21a:	6016      	strcc	r6, [r2, #0]
 800c21c:	4a28      	ldr	r2, [pc, #160]	; (800c2c0 <pvPortMalloc+0x164>)
 800c21e:	f8cc 6000 	str.w	r6, [ip]
 800c222:	4339      	orrs	r1, r7
 800c224:	2000      	movs	r0, #0
 800c226:	e9c3 0100 	strd	r0, r1, [r3]
 800c22a:	6813      	ldr	r3, [r2, #0]
 800c22c:	3301      	adds	r3, #1
 800c22e:	6013      	str	r3, [r2, #0]
 800c230:	f7ff fb0a 	bl	800b848 <xTaskResumeAll>
 800c234:	f018 0f07 	tst.w	r8, #7
 800c238:	d0d0      	beq.n	800c1dc <pvPortMalloc+0x80>
 800c23a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c23e:	f383 8811 	msr	BASEPRI, r3
 800c242:	f3bf 8f6f 	isb	sy
 800c246:	f3bf 8f4f 	dsb	sy
 800c24a:	e7fe      	b.n	800c24a <pvPortMalloc+0xee>
 800c24c:	491d      	ldr	r1, [pc, #116]	; (800c2c4 <pvPortMalloc+0x168>)
 800c24e:	4c19      	ldr	r4, [pc, #100]	; (800c2b4 <pvPortMalloc+0x158>)
 800c250:	074f      	lsls	r7, r1, #29
 800c252:	bf14      	ite	ne
 800c254:	1dca      	addne	r2, r1, #7
 800c256:	460a      	moveq	r2, r1
 800c258:	f501 5170 	add.w	r1, r1, #15360	; 0x3c00
 800c25c:	f1a1 0508 	sub.w	r5, r1, #8
 800c260:	f025 0507 	bic.w	r5, r5, #7
 800c264:	bf18      	it	ne
 800c266:	f022 0207 	bicne.w	r2, r2, #7
 800c26a:	4914      	ldr	r1, [pc, #80]	; (800c2bc <pvPortMalloc+0x160>)
 800c26c:	601d      	str	r5, [r3, #0]
 800c26e:	4610      	mov	r0, r2
 800c270:	1aab      	subs	r3, r5, r2
 800c272:	4a15      	ldr	r2, [pc, #84]	; (800c2c8 <pvPortMalloc+0x16c>)
 800c274:	600b      	str	r3, [r1, #0]
 800c276:	4910      	ldr	r1, [pc, #64]	; (800c2b8 <pvPortMalloc+0x15c>)
 800c278:	6013      	str	r3, [r2, #0]
 800c27a:	f04f 4700 	mov.w	r7, #2147483648	; 0x80000000
 800c27e:	2200      	movs	r2, #0
 800c280:	6008      	str	r0, [r1, #0]
 800c282:	604a      	str	r2, [r1, #4]
 800c284:	6027      	str	r7, [r4, #0]
 800c286:	e9c5 2200 	strd	r2, r2, [r5]
 800c28a:	e9c0 5300 	strd	r5, r3, [r0]
 800c28e:	e770      	b.n	800c172 <pvPortMalloc+0x16>
 800c290:	6849      	ldr	r1, [r1, #4]
 800c292:	eb00 0e01 	add.w	lr, r0, r1
 800c296:	f8c4 e004 	str.w	lr, [r4, #4]
 800c29a:	4621      	mov	r1, r4
 800c29c:	e7af      	b.n	800c1fe <pvPortMalloc+0xa2>
 800c29e:	42aa      	cmp	r2, r5
 800c2a0:	d0b1      	beq.n	800c206 <pvPortMalloc+0xaa>
 800c2a2:	6850      	ldr	r0, [r2, #4]
 800c2a4:	6812      	ldr	r2, [r2, #0]
 800c2a6:	600a      	str	r2, [r1, #0]
 800c2a8:	4470      	add	r0, lr
 800c2aa:	6048      	str	r0, [r1, #4]
 800c2ac:	e7ac      	b.n	800c208 <pvPortMalloc+0xac>
 800c2ae:	bf00      	nop
 800c2b0:	20000e88 	.word	0x20000e88
 800c2b4:	20004a8c 	.word	0x20004a8c
 800c2b8:	20004aa0 	.word	0x20004aa0
 800c2bc:	20004a94 	.word	0x20004a94
 800c2c0:	20004a98 	.word	0x20004a98
 800c2c4:	20000e8c 	.word	0x20000e8c
 800c2c8:	20004a90 	.word	0x20004a90

0800c2cc <vPortFree>:
 800c2cc:	b1d0      	cbz	r0, 800c304 <vPortFree+0x38>
 800c2ce:	4a2b      	ldr	r2, [pc, #172]	; (800c37c <vPortFree+0xb0>)
 800c2d0:	f850 3c04 	ldr.w	r3, [r0, #-4]
 800c2d4:	6812      	ldr	r2, [r2, #0]
 800c2d6:	4213      	tst	r3, r2
 800c2d8:	d00b      	beq.n	800c2f2 <vPortFree+0x26>
 800c2da:	f850 1c08 	ldr.w	r1, [r0, #-8]
 800c2de:	b191      	cbz	r1, 800c306 <vPortFree+0x3a>
 800c2e0:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c2e4:	f383 8811 	msr	BASEPRI, r3
 800c2e8:	f3bf 8f6f 	isb	sy
 800c2ec:	f3bf 8f4f 	dsb	sy
 800c2f0:	e7fe      	b.n	800c2f0 <vPortFree+0x24>
 800c2f2:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c2f6:	f383 8811 	msr	BASEPRI, r3
 800c2fa:	f3bf 8f6f 	isb	sy
 800c2fe:	f3bf 8f4f 	dsb	sy
 800c302:	e7fe      	b.n	800c302 <vPortFree+0x36>
 800c304:	4770      	bx	lr
 800c306:	b510      	push	{r4, lr}
 800c308:	ea23 0302 	bic.w	r3, r3, r2
 800c30c:	b082      	sub	sp, #8
 800c30e:	f840 3c04 	str.w	r3, [r0, #-4]
 800c312:	4c1b      	ldr	r4, [pc, #108]	; (800c380 <vPortFree+0xb4>)
 800c314:	9001      	str	r0, [sp, #4]
 800c316:	f7ff fa8f 	bl	800b838 <vTaskSuspendAll>
 800c31a:	9801      	ldr	r0, [sp, #4]
 800c31c:	6822      	ldr	r2, [r4, #0]
 800c31e:	f850 1c04 	ldr.w	r1, [r0, #-4]
 800c322:	4b18      	ldr	r3, [pc, #96]	; (800c384 <vPortFree+0xb8>)
 800c324:	440a      	add	r2, r1
 800c326:	3808      	subs	r0, #8
 800c328:	6022      	str	r2, [r4, #0]
 800c32a:	461a      	mov	r2, r3
 800c32c:	681b      	ldr	r3, [r3, #0]
 800c32e:	4298      	cmp	r0, r3
 800c330:	d8fb      	bhi.n	800c32a <vPortFree+0x5e>
 800c332:	6854      	ldr	r4, [r2, #4]
 800c334:	eb02 0e04 	add.w	lr, r2, r4
 800c338:	4570      	cmp	r0, lr
 800c33a:	d01a      	beq.n	800c372 <vPortFree+0xa6>
 800c33c:	eb00 0c01 	add.w	ip, r0, r1
 800c340:	4563      	cmp	r3, ip
 800c342:	d00c      	beq.n	800c35e <vPortFree+0x92>
 800c344:	6003      	str	r3, [r0, #0]
 800c346:	4282      	cmp	r2, r0
 800c348:	bf18      	it	ne
 800c34a:	6010      	strne	r0, [r2, #0]
 800c34c:	4a0e      	ldr	r2, [pc, #56]	; (800c388 <vPortFree+0xbc>)
 800c34e:	6813      	ldr	r3, [r2, #0]
 800c350:	3301      	adds	r3, #1
 800c352:	6013      	str	r3, [r2, #0]
 800c354:	b002      	add	sp, #8
 800c356:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800c35a:	f7ff ba75 	b.w	800b848 <xTaskResumeAll>
 800c35e:	4c0b      	ldr	r4, [pc, #44]	; (800c38c <vPortFree+0xc0>)
 800c360:	6824      	ldr	r4, [r4, #0]
 800c362:	42a3      	cmp	r3, r4
 800c364:	d0ee      	beq.n	800c344 <vPortFree+0x78>
 800c366:	e9d3 3400 	ldrd	r3, r4, [r3]
 800c36a:	4421      	add	r1, r4
 800c36c:	e9c0 3100 	strd	r3, r1, [r0]
 800c370:	e7e9      	b.n	800c346 <vPortFree+0x7a>
 800c372:	4421      	add	r1, r4
 800c374:	6051      	str	r1, [r2, #4]
 800c376:	4610      	mov	r0, r2
 800c378:	e7e0      	b.n	800c33c <vPortFree+0x70>
 800c37a:	bf00      	nop
 800c37c:	20004a8c 	.word	0x20004a8c
 800c380:	20004a90 	.word	0x20004a90
 800c384:	20004aa0 	.word	0x20004aa0
 800c388:	20004a9c 	.word	0x20004a9c
 800c38c:	20000e88 	.word	0x20000e88

0800c390 <prvPortStartFirstTask>:
 800c390:	4808      	ldr	r0, [pc, #32]	; (800c3b4 <prvPortStartFirstTask+0x24>)
 800c392:	6800      	ldr	r0, [r0, #0]
 800c394:	6800      	ldr	r0, [r0, #0]
 800c396:	f380 8808 	msr	MSP, r0
 800c39a:	f04f 0000 	mov.w	r0, #0
 800c39e:	f380 8814 	msr	CONTROL, r0
 800c3a2:	b662      	cpsie	i
 800c3a4:	b661      	cpsie	f
 800c3a6:	f3bf 8f4f 	dsb	sy
 800c3aa:	f3bf 8f6f 	isb	sy
 800c3ae:	df00      	svc	0
 800c3b0:	bf00      	nop
 800c3b2:	0000      	.short	0x0000
 800c3b4:	e000ed08 	.word	0xe000ed08

0800c3b8 <vPortEnableVFP>:
 800c3b8:	f8df 000c 	ldr.w	r0, [pc, #12]	; 800c3c8 <vPortEnableVFP+0x10>
 800c3bc:	6801      	ldr	r1, [r0, #0]
 800c3be:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800c3c2:	6001      	str	r1, [r0, #0]
 800c3c4:	4770      	bx	lr
 800c3c6:	0000      	.short	0x0000
 800c3c8:	e000ed88 	.word	0xe000ed88

0800c3cc <prvTaskExitError>:
 800c3cc:	4b0e      	ldr	r3, [pc, #56]	; (800c408 <prvTaskExitError+0x3c>)
 800c3ce:	681b      	ldr	r3, [r3, #0]
 800c3d0:	b082      	sub	sp, #8
 800c3d2:	2200      	movs	r2, #0
 800c3d4:	3301      	adds	r3, #1
 800c3d6:	9201      	str	r2, [sp, #4]
 800c3d8:	d008      	beq.n	800c3ec <prvTaskExitError+0x20>
 800c3da:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c3de:	f383 8811 	msr	BASEPRI, r3
 800c3e2:	f3bf 8f6f 	isb	sy
 800c3e6:	f3bf 8f4f 	dsb	sy
 800c3ea:	e7fe      	b.n	800c3ea <prvTaskExitError+0x1e>
 800c3ec:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c3f0:	f383 8811 	msr	BASEPRI, r3
 800c3f4:	f3bf 8f6f 	isb	sy
 800c3f8:	f3bf 8f4f 	dsb	sy
 800c3fc:	9b01      	ldr	r3, [sp, #4]
 800c3fe:	2b00      	cmp	r3, #0
 800c400:	d0fc      	beq.n	800c3fc <prvTaskExitError+0x30>
 800c402:	b002      	add	sp, #8
 800c404:	4770      	bx	lr
 800c406:	bf00      	nop
 800c408:	2000018c 	.word	0x2000018c

0800c40c <pxPortInitialiseStack>:
 800c40c:	b410      	push	{r4}
 800c40e:	f04f 7380 	mov.w	r3, #16777216	; 0x1000000
 800c412:	4c07      	ldr	r4, [pc, #28]	; (800c430 <pxPortInitialiseStack+0x24>)
 800c414:	f840 3c04 	str.w	r3, [r0, #-4]
 800c418:	f021 0101 	bic.w	r1, r1, #1
 800c41c:	f06f 0302 	mvn.w	r3, #2
 800c420:	e940 4103 	strd	r4, r1, [r0, #-12]
 800c424:	e940 3209 	strd	r3, r2, [r0, #-36]	; 0x24
 800c428:	f85d 4b04 	ldr.w	r4, [sp], #4
 800c42c:	3844      	subs	r0, #68	; 0x44
 800c42e:	4770      	bx	lr
 800c430:	0800c3cd 	.word	0x0800c3cd
	...

0800c440 <SVC_Handler>:
 800c440:	4b07      	ldr	r3, [pc, #28]	; (800c460 <pxCurrentTCBConst2>)
 800c442:	6819      	ldr	r1, [r3, #0]
 800c444:	6808      	ldr	r0, [r1, #0]
 800c446:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800c44a:	f380 8809 	msr	PSP, r0
 800c44e:	f3bf 8f6f 	isb	sy
 800c452:	f04f 0000 	mov.w	r0, #0
 800c456:	f380 8811 	msr	BASEPRI, r0
 800c45a:	4770      	bx	lr
 800c45c:	f3af 8000 	nop.w

0800c460 <pxCurrentTCBConst2>:
 800c460:	20000860 	.word	0x20000860

0800c464 <vPortEnterCritical>:
 800c464:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c468:	f383 8811 	msr	BASEPRI, r3
 800c46c:	f3bf 8f6f 	isb	sy
 800c470:	f3bf 8f4f 	dsb	sy
 800c474:	4a0b      	ldr	r2, [pc, #44]	; (800c4a4 <vPortEnterCritical+0x40>)
 800c476:	6813      	ldr	r3, [r2, #0]
 800c478:	3301      	adds	r3, #1
 800c47a:	2b01      	cmp	r3, #1
 800c47c:	6013      	str	r3, [r2, #0]
 800c47e:	d000      	beq.n	800c482 <vPortEnterCritical+0x1e>
 800c480:	4770      	bx	lr
 800c482:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800c486:	f8d3 3d04 	ldr.w	r3, [r3, #3332]	; 0xd04
 800c48a:	b2db      	uxtb	r3, r3
 800c48c:	2b00      	cmp	r3, #0
 800c48e:	d0f7      	beq.n	800c480 <vPortEnterCritical+0x1c>
 800c490:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c494:	f383 8811 	msr	BASEPRI, r3
 800c498:	f3bf 8f6f 	isb	sy
 800c49c:	f3bf 8f4f 	dsb	sy
 800c4a0:	e7fe      	b.n	800c4a0 <vPortEnterCritical+0x3c>
 800c4a2:	bf00      	nop
 800c4a4:	2000018c 	.word	0x2000018c

0800c4a8 <vPortExitCritical>:
 800c4a8:	4a08      	ldr	r2, [pc, #32]	; (800c4cc <vPortExitCritical+0x24>)
 800c4aa:	6813      	ldr	r3, [r2, #0]
 800c4ac:	b943      	cbnz	r3, 800c4c0 <vPortExitCritical+0x18>
 800c4ae:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c4b2:	f383 8811 	msr	BASEPRI, r3
 800c4b6:	f3bf 8f6f 	isb	sy
 800c4ba:	f3bf 8f4f 	dsb	sy
 800c4be:	e7fe      	b.n	800c4be <vPortExitCritical+0x16>
 800c4c0:	3b01      	subs	r3, #1
 800c4c2:	6013      	str	r3, [r2, #0]
 800c4c4:	b90b      	cbnz	r3, 800c4ca <vPortExitCritical+0x22>
 800c4c6:	f383 8811 	msr	BASEPRI, r3
 800c4ca:	4770      	bx	lr
 800c4cc:	2000018c 	.word	0x2000018c

0800c4d0 <PendSV_Handler>:
 800c4d0:	f3ef 8009 	mrs	r0, PSP
 800c4d4:	f3bf 8f6f 	isb	sy
 800c4d8:	4b15      	ldr	r3, [pc, #84]	; (800c530 <pxCurrentTCBConst>)
 800c4da:	681a      	ldr	r2, [r3, #0]
 800c4dc:	f01e 0f10 	tst.w	lr, #16
 800c4e0:	bf08      	it	eq
 800c4e2:	ed20 8a10 	vstmdbeq	r0!, {s16-s31}
 800c4e6:	e920 4ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800c4ea:	6010      	str	r0, [r2, #0]
 800c4ec:	e92d 0009 	stmdb	sp!, {r0, r3}
 800c4f0:	f04f 0050 	mov.w	r0, #80	; 0x50
 800c4f4:	f380 8811 	msr	BASEPRI, r0
 800c4f8:	f3bf 8f4f 	dsb	sy
 800c4fc:	f3bf 8f6f 	isb	sy
 800c500:	f7ff f9c8 	bl	800b894 <vTaskSwitchContext>
 800c504:	f04f 0000 	mov.w	r0, #0
 800c508:	f380 8811 	msr	BASEPRI, r0
 800c50c:	bc09      	pop	{r0, r3}
 800c50e:	6819      	ldr	r1, [r3, #0]
 800c510:	6808      	ldr	r0, [r1, #0]
 800c512:	e8b0 4ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800c516:	f01e 0f10 	tst.w	lr, #16
 800c51a:	bf08      	it	eq
 800c51c:	ecb0 8a10 	vldmiaeq	r0!, {s16-s31}
 800c520:	f380 8809 	msr	PSP, r0
 800c524:	f3bf 8f6f 	isb	sy
 800c528:	4770      	bx	lr
 800c52a:	bf00      	nop
 800c52c:	f3af 8000 	nop.w

0800c530 <pxCurrentTCBConst>:
 800c530:	20000860 	.word	0x20000860

0800c534 <xPortSysTickHandler>:
 800c534:	b508      	push	{r3, lr}
 800c536:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c53a:	f383 8811 	msr	BASEPRI, r3
 800c53e:	f3bf 8f6f 	isb	sy
 800c542:	f3bf 8f4f 	dsb	sy
 800c546:	f7ff f995 	bl	800b874 <xTaskIncrementTick>
 800c54a:	b128      	cbz	r0, 800c558 <xPortSysTickHandler+0x24>
 800c54c:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800c550:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800c554:	f8c3 2d04 	str.w	r2, [r3, #3332]	; 0xd04
 800c558:	2300      	movs	r3, #0
 800c55a:	f383 8811 	msr	BASEPRI, r3
 800c55e:	bd08      	pop	{r3, pc}

0800c560 <vPortSetupTimerInterrupt>:
 800c560:	f04f 22e0 	mov.w	r2, #3758153728	; 0xe000e000
 800c564:	2300      	movs	r3, #0
 800c566:	4906      	ldr	r1, [pc, #24]	; (800c580 <vPortSetupTimerInterrupt+0x20>)
 800c568:	6113      	str	r3, [r2, #16]
 800c56a:	6193      	str	r3, [r2, #24]
 800c56c:	680b      	ldr	r3, [r1, #0]
 800c56e:	4805      	ldr	r0, [pc, #20]	; (800c584 <vPortSetupTimerInterrupt+0x24>)
 800c570:	fba0 0303 	umull	r0, r3, r0, r3
 800c574:	099b      	lsrs	r3, r3, #6
 800c576:	2107      	movs	r1, #7
 800c578:	3b01      	subs	r3, #1
 800c57a:	6153      	str	r3, [r2, #20]
 800c57c:	6111      	str	r1, [r2, #16]
 800c57e:	4770      	bx	lr
 800c580:	20000178 	.word	0x20000178
 800c584:	10624dd3 	.word	0x10624dd3

0800c588 <xPortStartScheduler>:
 800c588:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800c58c:	4a48      	ldr	r2, [pc, #288]	; (800c6b0 <xPortStartScheduler+0x128>)
 800c58e:	f8d3 1d00 	ldr.w	r1, [r3, #3328]	; 0xd00
 800c592:	4291      	cmp	r1, r2
 800c594:	d041      	beq.n	800c61a <xPortStartScheduler+0x92>
 800c596:	f8d3 2d00 	ldr.w	r2, [r3, #3328]	; 0xd00
 800c59a:	4b46      	ldr	r3, [pc, #280]	; (800c6b4 <xPortStartScheduler+0x12c>)
 800c59c:	429a      	cmp	r2, r3
 800c59e:	d033      	beq.n	800c608 <xPortStartScheduler+0x80>
 800c5a0:	b570      	push	{r4, r5, r6, lr}
 800c5a2:	4b45      	ldr	r3, [pc, #276]	; (800c6b8 <xPortStartScheduler+0x130>)
 800c5a4:	4c45      	ldr	r4, [pc, #276]	; (800c6bc <xPortStartScheduler+0x134>)
 800c5a6:	781a      	ldrb	r2, [r3, #0]
 800c5a8:	4845      	ldr	r0, [pc, #276]	; (800c6c0 <xPortStartScheduler+0x138>)
 800c5aa:	b084      	sub	sp, #16
 800c5ac:	21ff      	movs	r1, #255	; 0xff
 800c5ae:	b2d2      	uxtb	r2, r2
 800c5b0:	9202      	str	r2, [sp, #8]
 800c5b2:	7019      	strb	r1, [r3, #0]
 800c5b4:	781b      	ldrb	r3, [r3, #0]
 800c5b6:	b2db      	uxtb	r3, r3
 800c5b8:	f88d 3007 	strb.w	r3, [sp, #7]
 800c5bc:	f89d 3007 	ldrb.w	r3, [sp, #7]
 800c5c0:	f89d 2007 	ldrb.w	r2, [sp, #7]
 800c5c4:	f003 0350 	and.w	r3, r3, #80	; 0x50
 800c5c8:	2107      	movs	r1, #7
 800c5ca:	0612      	lsls	r2, r2, #24
 800c5cc:	7023      	strb	r3, [r4, #0]
 800c5ce:	6001      	str	r1, [r0, #0]
 800c5d0:	bf48      	it	mi
 800c5d2:	2206      	movmi	r2, #6
 800c5d4:	d50f      	bpl.n	800c5f6 <xPortStartScheduler+0x6e>
 800c5d6:	f89d 3007 	ldrb.w	r3, [sp, #7]
 800c5da:	005b      	lsls	r3, r3, #1
 800c5dc:	b2db      	uxtb	r3, r3
 800c5de:	f88d 3007 	strb.w	r3, [sp, #7]
 800c5e2:	f89d 3007 	ldrb.w	r3, [sp, #7]
 800c5e6:	061b      	lsls	r3, r3, #24
 800c5e8:	4611      	mov	r1, r2
 800c5ea:	f102 32ff 	add.w	r2, r2, #4294967295	; 0xffffffff
 800c5ee:	d4f2      	bmi.n	800c5d6 <xPortStartScheduler+0x4e>
 800c5f0:	2903      	cmp	r1, #3
 800c5f2:	d01b      	beq.n	800c62c <xPortStartScheduler+0xa4>
 800c5f4:	6001      	str	r1, [r0, #0]
 800c5f6:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c5fa:	f383 8811 	msr	BASEPRI, r3
 800c5fe:	f3bf 8f6f 	isb	sy
 800c602:	f3bf 8f4f 	dsb	sy
 800c606:	e7fe      	b.n	800c606 <xPortStartScheduler+0x7e>
 800c608:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c60c:	f383 8811 	msr	BASEPRI, r3
 800c610:	f3bf 8f6f 	isb	sy
 800c614:	f3bf 8f4f 	dsb	sy
 800c618:	e7fe      	b.n	800c618 <xPortStartScheduler+0x90>
 800c61a:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c61e:	f383 8811 	msr	BASEPRI, r3
 800c622:	f3bf 8f6f 	isb	sy
 800c626:	f3bf 8f4f 	dsb	sy
 800c62a:	e7fe      	b.n	800c62a <xPortStartScheduler+0xa2>
 800c62c:	9b02      	ldr	r3, [sp, #8]
 800c62e:	4a22      	ldr	r2, [pc, #136]	; (800c6b8 <xPortStartScheduler+0x130>)
 800c630:	4d24      	ldr	r5, [pc, #144]	; (800c6c4 <xPortStartScheduler+0x13c>)
 800c632:	f04f 24e0 	mov.w	r4, #3758153728	; 0xe000e000
 800c636:	f44f 7140 	mov.w	r1, #768	; 0x300
 800c63a:	b2db      	uxtb	r3, r3
 800c63c:	6001      	str	r1, [r0, #0]
 800c63e:	7013      	strb	r3, [r2, #0]
 800c640:	f8d4 3d20 	ldr.w	r3, [r4, #3360]	; 0xd20
 800c644:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800c648:	f8c4 3d20 	str.w	r3, [r4, #3360]	; 0xd20
 800c64c:	f8d4 3d20 	ldr.w	r3, [r4, #3360]	; 0xd20
 800c650:	f043 4370 	orr.w	r3, r3, #4026531840	; 0xf0000000
 800c654:	f8c4 3d20 	str.w	r3, [r4, #3360]	; 0xd20
 800c658:	2600      	movs	r6, #0
 800c65a:	f7ff ff81 	bl	800c560 <vPortSetupTimerInterrupt>
 800c65e:	602e      	str	r6, [r5, #0]
 800c660:	f7ff feaa 	bl	800c3b8 <vPortEnableVFP>
 800c664:	f8d4 3f34 	ldr.w	r3, [r4, #3892]	; 0xf34
 800c668:	f043 4340 	orr.w	r3, r3, #3221225472	; 0xc0000000
 800c66c:	f8c4 3f34 	str.w	r3, [r4, #3892]	; 0xf34
 800c670:	f7ff fe8e 	bl	800c390 <prvPortStartFirstTask>
 800c674:	f7ff f90e 	bl	800b894 <vTaskSwitchContext>
 800c678:	682b      	ldr	r3, [r5, #0]
 800c67a:	9603      	str	r6, [sp, #12]
 800c67c:	3301      	adds	r3, #1
 800c67e:	d008      	beq.n	800c692 <xPortStartScheduler+0x10a>
 800c680:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c684:	f383 8811 	msr	BASEPRI, r3
 800c688:	f3bf 8f6f 	isb	sy
 800c68c:	f3bf 8f4f 	dsb	sy
 800c690:	e7fe      	b.n	800c690 <xPortStartScheduler+0x108>
 800c692:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c696:	f383 8811 	msr	BASEPRI, r3
 800c69a:	f3bf 8f6f 	isb	sy
 800c69e:	f3bf 8f4f 	dsb	sy
 800c6a2:	9b03      	ldr	r3, [sp, #12]
 800c6a4:	2b00      	cmp	r3, #0
 800c6a6:	d0fc      	beq.n	800c6a2 <xPortStartScheduler+0x11a>
 800c6a8:	2000      	movs	r0, #0
 800c6aa:	b004      	add	sp, #16
 800c6ac:	bd70      	pop	{r4, r5, r6, pc}
 800c6ae:	bf00      	nop
 800c6b0:	410fc271 	.word	0x410fc271
 800c6b4:	410fc270 	.word	0x410fc270
 800c6b8:	e000e400 	.word	0xe000e400
 800c6bc:	20004aa8 	.word	0x20004aa8
 800c6c0:	20004aac 	.word	0x20004aac
 800c6c4:	2000018c 	.word	0x2000018c

0800c6c8 <vPortValidateInterruptPriority>:
 800c6c8:	f3ef 8305 	mrs	r3, IPSR
 800c6cc:	2b0f      	cmp	r3, #15
 800c6ce:	d90e      	bls.n	800c6ee <vPortValidateInterruptPriority+0x26>
 800c6d0:	4911      	ldr	r1, [pc, #68]	; (800c718 <vPortValidateInterruptPriority+0x50>)
 800c6d2:	4a12      	ldr	r2, [pc, #72]	; (800c71c <vPortValidateInterruptPriority+0x54>)
 800c6d4:	5c5b      	ldrb	r3, [r3, r1]
 800c6d6:	7812      	ldrb	r2, [r2, #0]
 800c6d8:	429a      	cmp	r2, r3
 800c6da:	d908      	bls.n	800c6ee <vPortValidateInterruptPriority+0x26>
 800c6dc:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c6e0:	f383 8811 	msr	BASEPRI, r3
 800c6e4:	f3bf 8f6f 	isb	sy
 800c6e8:	f3bf 8f4f 	dsb	sy
 800c6ec:	e7fe      	b.n	800c6ec <vPortValidateInterruptPriority+0x24>
 800c6ee:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800c6f2:	4a0b      	ldr	r2, [pc, #44]	; (800c720 <vPortValidateInterruptPriority+0x58>)
 800c6f4:	f8d3 3d0c 	ldr.w	r3, [r3, #3340]	; 0xd0c
 800c6f8:	6812      	ldr	r2, [r2, #0]
 800c6fa:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 800c6fe:	4293      	cmp	r3, r2
 800c700:	d908      	bls.n	800c714 <vPortValidateInterruptPriority+0x4c>
 800c702:	f04f 0350 	mov.w	r3, #80	; 0x50
 800c706:	f383 8811 	msr	BASEPRI, r3
 800c70a:	f3bf 8f6f 	isb	sy
 800c70e:	f3bf 8f4f 	dsb	sy
 800c712:	e7fe      	b.n	800c712 <vPortValidateInterruptPriority+0x4a>
 800c714:	4770      	bx	lr
 800c716:	bf00      	nop
 800c718:	e000e3f0 	.word	0xe000e3f0
 800c71c:	20004aa8 	.word	0x20004aa8
 800c720:	20004aac 	.word	0x20004aac

0800c724 <HAL_InitTick>:
 800c724:	b570      	push	{r4, r5, r6, lr}
 800c726:	b088      	sub	sp, #32
 800c728:	4b23      	ldr	r3, [pc, #140]	; (800c7b8 <HAL_InitTick+0x94>)
 800c72a:	2200      	movs	r2, #0
 800c72c:	9202      	str	r2, [sp, #8]
 800c72e:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 800c730:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800c734:	641a      	str	r2, [r3, #64]	; 0x40
 800c736:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800c738:	f003 0380 	and.w	r3, r3, #128	; 0x80
 800c73c:	9302      	str	r3, [sp, #8]
 800c73e:	4605      	mov	r5, r0
 800c740:	a901      	add	r1, sp, #4
 800c742:	a803      	add	r0, sp, #12
 800c744:	9b02      	ldr	r3, [sp, #8]
 800c746:	f7f9 f96d 	bl	8005a24 <HAL_RCC_GetClockConfig>
 800c74a:	9b06      	ldr	r3, [sp, #24]
 800c74c:	b9d3      	cbnz	r3, 800c784 <HAL_InitTick+0x60>
 800c74e:	f7f9 f949 	bl	80059e4 <HAL_RCC_GetPCLK1Freq>
 800c752:	4603      	mov	r3, r0
 800c754:	4819      	ldr	r0, [pc, #100]	; (800c7bc <HAL_InitTick+0x98>)
 800c756:	4c1a      	ldr	r4, [pc, #104]	; (800c7c0 <HAL_InitTick+0x9c>)
 800c758:	491a      	ldr	r1, [pc, #104]	; (800c7c4 <HAL_InitTick+0xa0>)
 800c75a:	fba0 2303 	umull	r2, r3, r0, r3
 800c75e:	0c9b      	lsrs	r3, r3, #18
 800c760:	3b01      	subs	r3, #1
 800c762:	2200      	movs	r2, #0
 800c764:	e9c4 1300 	strd	r1, r3, [r4]
 800c768:	4620      	mov	r0, r4
 800c76a:	f240 33e7 	movw	r3, #999	; 0x3e7
 800c76e:	6122      	str	r2, [r4, #16]
 800c770:	60a2      	str	r2, [r4, #8]
 800c772:	61a2      	str	r2, [r4, #24]
 800c774:	60e3      	str	r3, [r4, #12]
 800c776:	f7f8 f9f7 	bl	8004b68 <HAL_TIM_Base_Init>
 800c77a:	4606      	mov	r6, r0
 800c77c:	b130      	cbz	r0, 800c78c <HAL_InitTick+0x68>
 800c77e:	4630      	mov	r0, r6
 800c780:	b008      	add	sp, #32
 800c782:	bd70      	pop	{r4, r5, r6, pc}
 800c784:	f7f9 f92e 	bl	80059e4 <HAL_RCC_GetPCLK1Freq>
 800c788:	0043      	lsls	r3, r0, #1
 800c78a:	e7e3      	b.n	800c754 <HAL_InitTick+0x30>
 800c78c:	4620      	mov	r0, r4
 800c78e:	f7f8 fa83 	bl	8004c98 <HAL_TIM_Base_Start_IT>
 800c792:	4606      	mov	r6, r0
 800c794:	2800      	cmp	r0, #0
 800c796:	d1f2      	bne.n	800c77e <HAL_InitTick+0x5a>
 800c798:	202c      	movs	r0, #44	; 0x2c
 800c79a:	f7f9 fbe3 	bl	8005f64 <HAL_NVIC_EnableIRQ>
 800c79e:	2d0f      	cmp	r5, #15
 800c7a0:	d901      	bls.n	800c7a6 <HAL_InitTick+0x82>
 800c7a2:	2601      	movs	r6, #1
 800c7a4:	e7eb      	b.n	800c77e <HAL_InitTick+0x5a>
 800c7a6:	4632      	mov	r2, r6
 800c7a8:	4629      	mov	r1, r5
 800c7aa:	202c      	movs	r0, #44	; 0x2c
 800c7ac:	f7f9 fb9c 	bl	8005ee8 <HAL_NVIC_SetPriority>
 800c7b0:	4b05      	ldr	r3, [pc, #20]	; (800c7c8 <HAL_InitTick+0xa4>)
 800c7b2:	601d      	str	r5, [r3, #0]
 800c7b4:	e7e3      	b.n	800c77e <HAL_InitTick+0x5a>
 800c7b6:	bf00      	nop
 800c7b8:	40023800 	.word	0x40023800
 800c7bc:	431bde83 	.word	0x431bde83
 800c7c0:	20004ab0 	.word	0x20004ab0
 800c7c4:	40001c00 	.word	0x40001c00
 800c7c8:	20000174 	.word	0x20000174

0800c7cc <SysTick_Handler>:
 800c7cc:	b508      	push	{r3, lr}
 800c7ce:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800c7d2:	691b      	ldr	r3, [r3, #16]
 800c7d4:	f7ff f9d8 	bl	800bb88 <xTaskGetSchedulerState>
 800c7d8:	2801      	cmp	r0, #1
 800c7da:	d100      	bne.n	800c7de <SysTick_Handler+0x12>
 800c7dc:	bd08      	pop	{r3, pc}
 800c7de:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800c7e2:	f7ff bea7 	b.w	800c534 <xPortSysTickHandler>
 800c7e6:	bf00      	nop

0800c7e8 <osKernelInitialize>:
 800c7e8:	f3ef 8305 	mrs	r3, IPSR
 800c7ec:	b92b      	cbnz	r3, 800c7fa <osKernelInitialize+0x12>
 800c7ee:	4b06      	ldr	r3, [pc, #24]	; (800c808 <osKernelInitialize+0x20>)
 800c7f0:	6818      	ldr	r0, [r3, #0]
 800c7f2:	b928      	cbnz	r0, 800c800 <osKernelInitialize+0x18>
 800c7f4:	2201      	movs	r2, #1
 800c7f6:	601a      	str	r2, [r3, #0]
 800c7f8:	4770      	bx	lr
 800c7fa:	f06f 0005 	mvn.w	r0, #5
 800c7fe:	4770      	bx	lr
 800c800:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800c804:	4770      	bx	lr
 800c806:	bf00      	nop
 800c808:	20004d54 	.word	0x20004d54

0800c80c <osKernelStart>:
 800c80c:	b510      	push	{r4, lr}
 800c80e:	f3ef 8405 	mrs	r4, IPSR
 800c812:	b974      	cbnz	r4, 800c832 <osKernelStart+0x26>
 800c814:	4b08      	ldr	r3, [pc, #32]	; (800c838 <osKernelStart+0x2c>)
 800c816:	681a      	ldr	r2, [r3, #0]
 800c818:	2a01      	cmp	r2, #1
 800c81a:	d107      	bne.n	800c82c <osKernelStart+0x20>
 800c81c:	4907      	ldr	r1, [pc, #28]	; (800c83c <osKernelStart+0x30>)
 800c81e:	2202      	movs	r2, #2
 800c820:	77cc      	strb	r4, [r1, #31]
 800c822:	601a      	str	r2, [r3, #0]
 800c824:	f7fe ff7a 	bl	800b71c <vTaskStartScheduler>
 800c828:	4620      	mov	r0, r4
 800c82a:	bd10      	pop	{r4, pc}
 800c82c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800c830:	bd10      	pop	{r4, pc}
 800c832:	f06f 0005 	mvn.w	r0, #5
 800c836:	bd10      	pop	{r4, pc}
 800c838:	20004d54 	.word	0x20004d54
 800c83c:	e000ed00 	.word	0xe000ed00

0800c840 <osThreadNew>:
 800c840:	b5f0      	push	{r4, r5, r6, r7, lr}
 800c842:	b087      	sub	sp, #28
 800c844:	2400      	movs	r4, #0
 800c846:	4615      	mov	r5, r2
 800c848:	9405      	str	r4, [sp, #20]
 800c84a:	f3ef 8205 	mrs	r2, IPSR
 800c84e:	b9ea      	cbnz	r2, 800c88c <osThreadNew+0x4c>
 800c850:	b350      	cbz	r0, 800c8a8 <osThreadNew+0x68>
 800c852:	b1f5      	cbz	r5, 800c892 <osThreadNew+0x52>
 800c854:	69ab      	ldr	r3, [r5, #24]
 800c856:	bb5b      	cbnz	r3, 800c8b0 <osThreadNew+0x70>
 800c858:	2318      	movs	r3, #24
 800c85a:	686a      	ldr	r2, [r5, #4]
 800c85c:	07d2      	lsls	r2, r2, #31
 800c85e:	d423      	bmi.n	800c8a8 <osThreadNew+0x68>
 800c860:	696e      	ldr	r6, [r5, #20]
 800c862:	b34e      	cbz	r6, 800c8b8 <osThreadNew+0x78>
 800c864:	ea4f 0c96 	mov.w	ip, r6, lsr #2
 800c868:	68ac      	ldr	r4, [r5, #8]
 800c86a:	682f      	ldr	r7, [r5, #0]
 800c86c:	b34c      	cbz	r4, 800c8c2 <osThreadNew+0x82>
 800c86e:	68ea      	ldr	r2, [r5, #12]
 800c870:	2a5b      	cmp	r2, #91	; 0x5b
 800c872:	d919      	bls.n	800c8a8 <osThreadNew+0x68>
 800c874:	692d      	ldr	r5, [r5, #16]
 800c876:	b1bd      	cbz	r5, 800c8a8 <osThreadNew+0x68>
 800c878:	b1b6      	cbz	r6, 800c8a8 <osThreadNew+0x68>
 800c87a:	e9cd 5401 	strd	r5, r4, [sp, #4]
 800c87e:	9300      	str	r3, [sp, #0]
 800c880:	4662      	mov	r2, ip
 800c882:	460b      	mov	r3, r1
 800c884:	4639      	mov	r1, r7
 800c886:	f7fe fe87 	bl	800b598 <xTaskCreateStatic>
 800c88a:	4604      	mov	r4, r0
 800c88c:	4620      	mov	r0, r4
 800c88e:	b007      	add	sp, #28
 800c890:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800c892:	2280      	movs	r2, #128	; 0x80
 800c894:	2318      	movs	r3, #24
 800c896:	ac05      	add	r4, sp, #20
 800c898:	9300      	str	r3, [sp, #0]
 800c89a:	9401      	str	r4, [sp, #4]
 800c89c:	460b      	mov	r3, r1
 800c89e:	4629      	mov	r1, r5
 800c8a0:	f7fe feb4 	bl	800b60c <xTaskCreate>
 800c8a4:	2801      	cmp	r0, #1
 800c8a6:	d00a      	beq.n	800c8be <osThreadNew+0x7e>
 800c8a8:	2400      	movs	r4, #0
 800c8aa:	4620      	mov	r0, r4
 800c8ac:	b007      	add	sp, #28
 800c8ae:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800c8b0:	1e5c      	subs	r4, r3, #1
 800c8b2:	2c37      	cmp	r4, #55	; 0x37
 800c8b4:	d9d1      	bls.n	800c85a <osThreadNew+0x1a>
 800c8b6:	e7f7      	b.n	800c8a8 <osThreadNew+0x68>
 800c8b8:	f04f 0c80 	mov.w	ip, #128	; 0x80
 800c8bc:	e7d4      	b.n	800c868 <osThreadNew+0x28>
 800c8be:	9c05      	ldr	r4, [sp, #20]
 800c8c0:	e7e4      	b.n	800c88c <osThreadNew+0x4c>
 800c8c2:	68ee      	ldr	r6, [r5, #12]
 800c8c4:	2e00      	cmp	r6, #0
 800c8c6:	d1e1      	bne.n	800c88c <osThreadNew+0x4c>
 800c8c8:	692d      	ldr	r5, [r5, #16]
 800c8ca:	2d00      	cmp	r5, #0
 800c8cc:	d1de      	bne.n	800c88c <osThreadNew+0x4c>
 800c8ce:	fa1f f28c 	uxth.w	r2, ip
 800c8d2:	463d      	mov	r5, r7
 800c8d4:	e7df      	b.n	800c896 <osThreadNew+0x56>
 800c8d6:	bf00      	nop

0800c8d8 <osDelay>:
 800c8d8:	b510      	push	{r4, lr}
 800c8da:	f3ef 8405 	mrs	r4, IPSR
 800c8de:	b92c      	cbnz	r4, 800c8ec <osDelay+0x14>
 800c8e0:	b900      	cbnz	r0, 800c8e4 <osDelay+0xc>
 800c8e2:	bd10      	pop	{r4, pc}
 800c8e4:	f7fe fec4 	bl	800b670 <vTaskDelay>
 800c8e8:	4620      	mov	r0, r4
 800c8ea:	bd10      	pop	{r4, pc}
 800c8ec:	f06f 0005 	mvn.w	r0, #5
 800c8f0:	bd10      	pop	{r4, pc}
 800c8f2:	bf00      	nop

0800c8f4 <osMutexNew>:
 800c8f4:	b570      	push	{r4, r5, r6, lr}
 800c8f6:	f3ef 8305 	mrs	r3, IPSR
 800c8fa:	b9db      	cbnz	r3, 800c934 <osMutexNew+0x40>
 800c8fc:	4604      	mov	r4, r0
 800c8fe:	b1e0      	cbz	r0, 800c93a <osMutexNew+0x46>
 800c900:	6846      	ldr	r6, [r0, #4]
 800c902:	0733      	lsls	r3, r6, #28
 800c904:	d416      	bmi.n	800c934 <osMutexNew+0x40>
 800c906:	6881      	ldr	r1, [r0, #8]
 800c908:	68c3      	ldr	r3, [r0, #12]
 800c90a:	f006 0601 	and.w	r6, r6, #1
 800c90e:	b181      	cbz	r1, 800c932 <osMutexNew+0x3e>
 800c910:	2b4f      	cmp	r3, #79	; 0x4f
 800c912:	d90f      	bls.n	800c934 <osMutexNew+0x40>
 800c914:	b1de      	cbz	r6, 800c94e <osMutexNew+0x5a>
 800c916:	2004      	movs	r0, #4
 800c918:	f7fd fe36 	bl	800a588 <xQueueCreateMutexStatic>
 800c91c:	4605      	mov	r5, r0
 800c91e:	b14d      	cbz	r5, 800c934 <osMutexNew+0x40>
 800c920:	6821      	ldr	r1, [r4, #0]
 800c922:	4628      	mov	r0, r5
 800c924:	f7fe fb02 	bl	800af2c <vQueueAddToRegistry>
 800c928:	b12e      	cbz	r6, 800c936 <osMutexNew+0x42>
 800c92a:	f045 0501 	orr.w	r5, r5, #1
 800c92e:	4628      	mov	r0, r5
 800c930:	bd70      	pop	{r4, r5, r6, pc}
 800c932:	b18b      	cbz	r3, 800c958 <osMutexNew+0x64>
 800c934:	2500      	movs	r5, #0
 800c936:	4628      	mov	r0, r5
 800c938:	bd70      	pop	{r4, r5, r6, pc}
 800c93a:	2001      	movs	r0, #1
 800c93c:	f7fd fe94 	bl	800a668 <xQueueCreateMutex>
 800c940:	4605      	mov	r5, r0
 800c942:	2800      	cmp	r0, #0
 800c944:	d0f6      	beq.n	800c934 <osMutexNew+0x40>
 800c946:	4621      	mov	r1, r4
 800c948:	f7fe faf0 	bl	800af2c <vQueueAddToRegistry>
 800c94c:	e7f3      	b.n	800c936 <osMutexNew+0x42>
 800c94e:	2001      	movs	r0, #1
 800c950:	f7fd fe1a 	bl	800a588 <xQueueCreateMutexStatic>
 800c954:	4605      	mov	r5, r0
 800c956:	e7e2      	b.n	800c91e <osMutexNew+0x2a>
 800c958:	b14e      	cbz	r6, 800c96e <osMutexNew+0x7a>
 800c95a:	2004      	movs	r0, #4
 800c95c:	f7fd fe84 	bl	800a668 <xQueueCreateMutex>
 800c960:	4605      	mov	r5, r0
 800c962:	2800      	cmp	r0, #0
 800c964:	d0e6      	beq.n	800c934 <osMutexNew+0x40>
 800c966:	6821      	ldr	r1, [r4, #0]
 800c968:	f7fe fae0 	bl	800af2c <vQueueAddToRegistry>
 800c96c:	e7dd      	b.n	800c92a <osMutexNew+0x36>
 800c96e:	2001      	movs	r0, #1
 800c970:	f7fd fe7a 	bl	800a668 <xQueueCreateMutex>
 800c974:	4605      	mov	r5, r0
 800c976:	2800      	cmp	r0, #0
 800c978:	d0dc      	beq.n	800c934 <osMutexNew+0x40>
 800c97a:	6821      	ldr	r1, [r4, #0]
 800c97c:	f7fe fad6 	bl	800af2c <vQueueAddToRegistry>
 800c980:	e7d9      	b.n	800c936 <osMutexNew+0x42>
 800c982:	bf00      	nop

0800c984 <osMutexAcquire>:
 800c984:	f020 0201 	bic.w	r2, r0, #1
 800c988:	f000 0301 	and.w	r3, r0, #1
 800c98c:	f3ef 8005 	mrs	r0, IPSR
 800c990:	b9a8      	cbnz	r0, 800c9be <osMutexAcquire+0x3a>
 800c992:	b1ba      	cbz	r2, 800c9c4 <osMutexAcquire+0x40>
 800c994:	b510      	push	{r4, lr}
 800c996:	4610      	mov	r0, r2
 800c998:	460c      	mov	r4, r1
 800c99a:	b953      	cbnz	r3, 800c9b2 <osMutexAcquire+0x2e>
 800c99c:	f7fe f876 	bl	800aa8c <xQueueSemaphoreTake>
 800c9a0:	2801      	cmp	r0, #1
 800c9a2:	d00a      	beq.n	800c9ba <osMutexAcquire+0x36>
 800c9a4:	2c00      	cmp	r4, #0
 800c9a6:	bf14      	ite	ne
 800c9a8:	f06f 0001 	mvnne.w	r0, #1
 800c9ac:	f06f 0002 	mvneq.w	r0, #2
 800c9b0:	bd10      	pop	{r4, pc}
 800c9b2:	f7fe f9f5 	bl	800ada0 <xQueueTakeMutexRecursive>
 800c9b6:	2801      	cmp	r0, #1
 800c9b8:	d1f4      	bne.n	800c9a4 <osMutexAcquire+0x20>
 800c9ba:	2000      	movs	r0, #0
 800c9bc:	bd10      	pop	{r4, pc}
 800c9be:	f06f 0005 	mvn.w	r0, #5
 800c9c2:	4770      	bx	lr
 800c9c4:	f06f 0003 	mvn.w	r0, #3
 800c9c8:	4770      	bx	lr
 800c9ca:	bf00      	nop

0800c9cc <osMutexRelease>:
 800c9cc:	f3ef 8205 	mrs	r2, IPSR
 800c9d0:	b9ba      	cbnz	r2, 800ca02 <osMutexRelease+0x36>
 800c9d2:	b510      	push	{r4, lr}
 800c9d4:	f020 0401 	bic.w	r4, r0, #1
 800c9d8:	b1b4      	cbz	r4, 800ca08 <osMutexRelease+0x3c>
 800c9da:	f000 0301 	and.w	r3, r0, #1
 800c9de:	b943      	cbnz	r3, 800c9f2 <osMutexRelease+0x26>
 800c9e0:	461a      	mov	r2, r3
 800c9e2:	4619      	mov	r1, r3
 800c9e4:	4620      	mov	r0, r4
 800c9e6:	f7fd fc51 	bl	800a28c <xQueueGenericSend>
 800c9ea:	2801      	cmp	r0, #1
 800c9ec:	d106      	bne.n	800c9fc <osMutexRelease+0x30>
 800c9ee:	2000      	movs	r0, #0
 800c9f0:	bd10      	pop	{r4, pc}
 800c9f2:	4620      	mov	r0, r4
 800c9f4:	f7fd fe18 	bl	800a628 <xQueueGiveMutexRecursive>
 800c9f8:	2801      	cmp	r0, #1
 800c9fa:	d0f8      	beq.n	800c9ee <osMutexRelease+0x22>
 800c9fc:	f06f 0002 	mvn.w	r0, #2
 800ca00:	bd10      	pop	{r4, pc}
 800ca02:	f06f 0005 	mvn.w	r0, #5
 800ca06:	4770      	bx	lr
 800ca08:	f06f 0003 	mvn.w	r0, #3
 800ca0c:	bd10      	pop	{r4, pc}
 800ca0e:	bf00      	nop

0800ca10 <osSemaphoreNew>:
 800ca10:	b5f0      	push	{r4, r5, r6, r7, lr}
 800ca12:	b083      	sub	sp, #12
 800ca14:	f3ef 8605 	mrs	r6, IPSR
 800ca18:	b9fe      	cbnz	r6, 800ca5a <osSemaphoreNew+0x4a>
 800ca1a:	b1f0      	cbz	r0, 800ca5a <osSemaphoreNew+0x4a>
 800ca1c:	4288      	cmp	r0, r1
 800ca1e:	460f      	mov	r7, r1
 800ca20:	d31b      	bcc.n	800ca5a <osSemaphoreNew+0x4a>
 800ca22:	4615      	mov	r5, r2
 800ca24:	b192      	cbz	r2, 800ca4c <osSemaphoreNew+0x3c>
 800ca26:	e9d2 2302 	ldrd	r2, r3, [r2, #8]
 800ca2a:	b1d2      	cbz	r2, 800ca62 <osSemaphoreNew+0x52>
 800ca2c:	2b4f      	cmp	r3, #79	; 0x4f
 800ca2e:	d914      	bls.n	800ca5a <osSemaphoreNew+0x4a>
 800ca30:	2801      	cmp	r0, #1
 800ca32:	d038      	beq.n	800caa6 <osSemaphoreNew+0x96>
 800ca34:	f7fd fb84 	bl	800a140 <xQueueCreateCountingSemaphoreStatic>
 800ca38:	4604      	mov	r4, r0
 800ca3a:	b170      	cbz	r0, 800ca5a <osSemaphoreNew+0x4a>
 800ca3c:	682d      	ldr	r5, [r5, #0]
 800ca3e:	4620      	mov	r0, r4
 800ca40:	4629      	mov	r1, r5
 800ca42:	f7fe fa73 	bl	800af2c <vQueueAddToRegistry>
 800ca46:	4620      	mov	r0, r4
 800ca48:	b003      	add	sp, #12
 800ca4a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800ca4c:	2801      	cmp	r0, #1
 800ca4e:	d012      	beq.n	800ca76 <osSemaphoreNew+0x66>
 800ca50:	f7fd fbd6 	bl	800a200 <xQueueCreateCountingSemaphore>
 800ca54:	4604      	mov	r4, r0
 800ca56:	2800      	cmp	r0, #0
 800ca58:	d1f1      	bne.n	800ca3e <osSemaphoreNew+0x2e>
 800ca5a:	2400      	movs	r4, #0
 800ca5c:	4620      	mov	r0, r4
 800ca5e:	b003      	add	sp, #12
 800ca60:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800ca62:	2b00      	cmp	r3, #0
 800ca64:	d1f9      	bne.n	800ca5a <osSemaphoreNew+0x4a>
 800ca66:	2801      	cmp	r0, #1
 800ca68:	d005      	beq.n	800ca76 <osSemaphoreNew+0x66>
 800ca6a:	f7fd fbc9 	bl	800a200 <xQueueCreateCountingSemaphore>
 800ca6e:	4604      	mov	r4, r0
 800ca70:	2800      	cmp	r0, #0
 800ca72:	d1e3      	bne.n	800ca3c <osSemaphoreNew+0x2c>
 800ca74:	e7f1      	b.n	800ca5a <osSemaphoreNew+0x4a>
 800ca76:	2203      	movs	r2, #3
 800ca78:	2100      	movs	r1, #0
 800ca7a:	2001      	movs	r0, #1
 800ca7c:	f7fd fb1e 	bl	800a0bc <xQueueGenericCreate>
 800ca80:	4604      	mov	r4, r0
 800ca82:	2c00      	cmp	r4, #0
 800ca84:	d0e9      	beq.n	800ca5a <osSemaphoreNew+0x4a>
 800ca86:	b917      	cbnz	r7, 800ca8e <osSemaphoreNew+0x7e>
 800ca88:	2d00      	cmp	r5, #0
 800ca8a:	d1d7      	bne.n	800ca3c <osSemaphoreNew+0x2c>
 800ca8c:	e7d7      	b.n	800ca3e <osSemaphoreNew+0x2e>
 800ca8e:	2300      	movs	r3, #0
 800ca90:	461a      	mov	r2, r3
 800ca92:	4619      	mov	r1, r3
 800ca94:	4620      	mov	r0, r4
 800ca96:	f7fd fbf9 	bl	800a28c <xQueueGenericSend>
 800ca9a:	2801      	cmp	r0, #1
 800ca9c:	d0f4      	beq.n	800ca88 <osSemaphoreNew+0x78>
 800ca9e:	4620      	mov	r0, r4
 800caa0:	f7fe f9fe 	bl	800aea0 <vQueueDelete>
 800caa4:	e7d9      	b.n	800ca5a <osSemaphoreNew+0x4a>
 800caa6:	4613      	mov	r3, r2
 800caa8:	2203      	movs	r2, #3
 800caaa:	9200      	str	r2, [sp, #0]
 800caac:	4631      	mov	r1, r6
 800caae:	4632      	mov	r2, r6
 800cab0:	f7fd fa90 	bl	8009fd4 <xQueueGenericCreateStatic>
 800cab4:	4604      	mov	r4, r0
 800cab6:	e7e4      	b.n	800ca82 <osSemaphoreNew+0x72>

0800cab8 <osSemaphoreAcquire>:
 800cab8:	b370      	cbz	r0, 800cb18 <osSemaphoreAcquire+0x60>
 800caba:	b510      	push	{r4, lr}
 800cabc:	460c      	mov	r4, r1
 800cabe:	b082      	sub	sp, #8
 800cac0:	f3ef 8305 	mrs	r3, IPSR
 800cac4:	b1c3      	cbz	r3, 800caf8 <osSemaphoreAcquire+0x40>
 800cac6:	bb21      	cbnz	r1, 800cb12 <osSemaphoreAcquire+0x5a>
 800cac8:	aa01      	add	r2, sp, #4
 800caca:	9101      	str	r1, [sp, #4]
 800cacc:	f7fe f988 	bl	800ade0 <xQueueReceiveFromISR>
 800cad0:	2801      	cmp	r0, #1
 800cad2:	d11a      	bne.n	800cb0a <osSemaphoreAcquire+0x52>
 800cad4:	9b01      	ldr	r3, [sp, #4]
 800cad6:	b913      	cbnz	r3, 800cade <osSemaphoreAcquire+0x26>
 800cad8:	2000      	movs	r0, #0
 800cada:	b002      	add	sp, #8
 800cadc:	bd10      	pop	{r4, pc}
 800cade:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800cae2:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800cae6:	f8c3 2d04 	str.w	r2, [r3, #3332]	; 0xd04
 800caea:	f3bf 8f4f 	dsb	sy
 800caee:	f3bf 8f6f 	isb	sy
 800caf2:	4620      	mov	r0, r4
 800caf4:	b002      	add	sp, #8
 800caf6:	bd10      	pop	{r4, pc}
 800caf8:	f7fd ffc8 	bl	800aa8c <xQueueSemaphoreTake>
 800cafc:	2801      	cmp	r0, #1
 800cafe:	d0eb      	beq.n	800cad8 <osSemaphoreAcquire+0x20>
 800cb00:	b11c      	cbz	r4, 800cb0a <osSemaphoreAcquire+0x52>
 800cb02:	f06f 0001 	mvn.w	r0, #1
 800cb06:	b002      	add	sp, #8
 800cb08:	bd10      	pop	{r4, pc}
 800cb0a:	f06f 0002 	mvn.w	r0, #2
 800cb0e:	b002      	add	sp, #8
 800cb10:	bd10      	pop	{r4, pc}
 800cb12:	f06f 0003 	mvn.w	r0, #3
 800cb16:	e7e0      	b.n	800cada <osSemaphoreAcquire+0x22>
 800cb18:	f06f 0003 	mvn.w	r0, #3
 800cb1c:	4770      	bx	lr
 800cb1e:	bf00      	nop

0800cb20 <osSemaphoreRelease>:
 800cb20:	b330      	cbz	r0, 800cb70 <osSemaphoreRelease+0x50>
 800cb22:	b510      	push	{r4, lr}
 800cb24:	b082      	sub	sp, #8
 800cb26:	f3ef 8305 	mrs	r3, IPSR
 800cb2a:	b1ab      	cbz	r3, 800cb58 <osSemaphoreRelease+0x38>
 800cb2c:	2400      	movs	r4, #0
 800cb2e:	a901      	add	r1, sp, #4
 800cb30:	9401      	str	r4, [sp, #4]
 800cb32:	f7fd fdd1 	bl	800a6d8 <xQueueGiveFromISR>
 800cb36:	2801      	cmp	r0, #1
 800cb38:	d117      	bne.n	800cb6a <osSemaphoreRelease+0x4a>
 800cb3a:	9b01      	ldr	r3, [sp, #4]
 800cb3c:	b193      	cbz	r3, 800cb64 <osSemaphoreRelease+0x44>
 800cb3e:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 800cb42:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
 800cb46:	f8c3 2d04 	str.w	r2, [r3, #3332]	; 0xd04
 800cb4a:	f3bf 8f4f 	dsb	sy
 800cb4e:	f3bf 8f6f 	isb	sy
 800cb52:	4620      	mov	r0, r4
 800cb54:	b002      	add	sp, #8
 800cb56:	bd10      	pop	{r4, pc}
 800cb58:	461a      	mov	r2, r3
 800cb5a:	4619      	mov	r1, r3
 800cb5c:	f7fd fb96 	bl	800a28c <xQueueGenericSend>
 800cb60:	2801      	cmp	r0, #1
 800cb62:	d102      	bne.n	800cb6a <osSemaphoreRelease+0x4a>
 800cb64:	2000      	movs	r0, #0
 800cb66:	b002      	add	sp, #8
 800cb68:	bd10      	pop	{r4, pc}
 800cb6a:	f06f 0002 	mvn.w	r0, #2
 800cb6e:	e7fa      	b.n	800cb66 <osSemaphoreRelease+0x46>
 800cb70:	f06f 0003 	mvn.w	r0, #3
 800cb74:	4770      	bx	lr
 800cb76:	bf00      	nop

0800cb78 <vApplicationGetIdleTaskMemory>:
 800cb78:	4b04      	ldr	r3, [pc, #16]	; (800cb8c <vApplicationGetIdleTaskMemory+0x14>)
 800cb7a:	6003      	str	r3, [r0, #0]
 800cb7c:	b410      	push	{r4}
 800cb7e:	2380      	movs	r3, #128	; 0x80
 800cb80:	4c03      	ldr	r4, [pc, #12]	; (800cb90 <vApplicationGetIdleTaskMemory+0x18>)
 800cb82:	600c      	str	r4, [r1, #0]
 800cb84:	f85d 4b04 	ldr.w	r4, [sp], #4
 800cb88:	6013      	str	r3, [r2, #0]
 800cb8a:	4770      	bx	lr
 800cb8c:	20004cf8 	.word	0x20004cf8
 800cb90:	20004af8 	.word	0x20004af8

0800cb94 <vApplicationGetTimerTaskMemory>:
 800cb94:	4b05      	ldr	r3, [pc, #20]	; (800cbac <vApplicationGetTimerTaskMemory+0x18>)
 800cb96:	6003      	str	r3, [r0, #0]
 800cb98:	b410      	push	{r4}
 800cb9a:	f44f 7380 	mov.w	r3, #256	; 0x100
 800cb9e:	4c04      	ldr	r4, [pc, #16]	; (800cbb0 <vApplicationGetTimerTaskMemory+0x1c>)
 800cba0:	600c      	str	r4, [r1, #0]
 800cba2:	f85d 4b04 	ldr.w	r4, [sp], #4
 800cba6:	6013      	str	r3, [r2, #0]
 800cba8:	4770      	bx	lr
 800cbaa:	bf00      	nop
 800cbac:	20005158 	.word	0x20005158
 800cbb0:	20004d58 	.word	0x20004d58

0800cbb4 <HAL_ADC_Init>:
 800cbb4:	2800      	cmp	r0, #0
 800cbb6:	f000 809f 	beq.w	800ccf8 <HAL_ADC_Init+0x144>
 800cbba:	b538      	push	{r3, r4, r5, lr}
 800cbbc:	6c05      	ldr	r5, [r0, #64]	; 0x40
 800cbbe:	4604      	mov	r4, r0
 800cbc0:	b13d      	cbz	r5, 800cbd2 <HAL_ADC_Init+0x1e>
 800cbc2:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800cbc4:	06db      	lsls	r3, r3, #27
 800cbc6:	d50c      	bpl.n	800cbe2 <HAL_ADC_Init+0x2e>
 800cbc8:	2300      	movs	r3, #0
 800cbca:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 800cbce:	2001      	movs	r0, #1
 800cbd0:	bd38      	pop	{r3, r4, r5, pc}
 800cbd2:	f7f7 fd75 	bl	80046c0 <HAL_ADC_MspInit>
 800cbd6:	6465      	str	r5, [r4, #68]	; 0x44
 800cbd8:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800cbda:	f884 503c 	strb.w	r5, [r4, #60]	; 0x3c
 800cbde:	06db      	lsls	r3, r3, #27
 800cbe0:	d4f2      	bmi.n	800cbc8 <HAL_ADC_Init+0x14>
 800cbe2:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800cbe4:	4a48      	ldr	r2, [pc, #288]	; (800cd08 <HAL_ADC_Init+0x154>)
 800cbe6:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
 800cbea:	f023 0302 	bic.w	r3, r3, #2
 800cbee:	f043 0302 	orr.w	r3, r3, #2
 800cbf2:	6423      	str	r3, [r4, #64]	; 0x40
 800cbf4:	6851      	ldr	r1, [r2, #4]
 800cbf6:	6823      	ldr	r3, [r4, #0]
 800cbf8:	f421 3140 	bic.w	r1, r1, #196608	; 0x30000
 800cbfc:	6051      	str	r1, [r2, #4]
 800cbfe:	6851      	ldr	r1, [r2, #4]
 800cc00:	6860      	ldr	r0, [r4, #4]
 800cc02:	4301      	orrs	r1, r0
 800cc04:	6051      	str	r1, [r2, #4]
 800cc06:	685a      	ldr	r2, [r3, #4]
 800cc08:	6925      	ldr	r5, [r4, #16]
 800cc0a:	68a0      	ldr	r0, [r4, #8]
 800cc0c:	f422 7280 	bic.w	r2, r2, #256	; 0x100
 800cc10:	605a      	str	r2, [r3, #4]
 800cc12:	6859      	ldr	r1, [r3, #4]
 800cc14:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
 800cc18:	6059      	str	r1, [r3, #4]
 800cc1a:	6859      	ldr	r1, [r3, #4]
 800cc1c:	f021 7140 	bic.w	r1, r1, #50331648	; 0x3000000
 800cc20:	6059      	str	r1, [r3, #4]
 800cc22:	685a      	ldr	r2, [r3, #4]
 800cc24:	4302      	orrs	r2, r0
 800cc26:	605a      	str	r2, [r3, #4]
 800cc28:	6899      	ldr	r1, [r3, #8]
 800cc2a:	68e0      	ldr	r0, [r4, #12]
 800cc2c:	f421 6100 	bic.w	r1, r1, #2048	; 0x800
 800cc30:	6099      	str	r1, [r3, #8]
 800cc32:	689a      	ldr	r2, [r3, #8]
 800cc34:	6aa1      	ldr	r1, [r4, #40]	; 0x28
 800cc36:	4302      	orrs	r2, r0
 800cc38:	609a      	str	r2, [r3, #8]
 800cc3a:	4a34      	ldr	r2, [pc, #208]	; (800cd0c <HAL_ADC_Init+0x158>)
 800cc3c:	4291      	cmp	r1, r2
 800cc3e:	d052      	beq.n	800cce6 <HAL_ADC_Init+0x132>
 800cc40:	6898      	ldr	r0, [r3, #8]
 800cc42:	6ae5      	ldr	r5, [r4, #44]	; 0x2c
 800cc44:	f020 6070 	bic.w	r0, r0, #251658240	; 0xf000000
 800cc48:	6098      	str	r0, [r3, #8]
 800cc4a:	689a      	ldr	r2, [r3, #8]
 800cc4c:	4311      	orrs	r1, r2
 800cc4e:	6099      	str	r1, [r3, #8]
 800cc50:	6899      	ldr	r1, [r3, #8]
 800cc52:	f021 5140 	bic.w	r1, r1, #805306368	; 0x30000000
 800cc56:	6099      	str	r1, [r3, #8]
 800cc58:	689a      	ldr	r2, [r3, #8]
 800cc5a:	432a      	orrs	r2, r5
 800cc5c:	609a      	str	r2, [r3, #8]
 800cc5e:	689a      	ldr	r2, [r3, #8]
 800cc60:	f022 0202 	bic.w	r2, r2, #2
 800cc64:	609a      	str	r2, [r3, #8]
 800cc66:	689a      	ldr	r2, [r3, #8]
 800cc68:	7e21      	ldrb	r1, [r4, #24]
 800cc6a:	ea42 0241 	orr.w	r2, r2, r1, lsl #1
 800cc6e:	609a      	str	r2, [r3, #8]
 800cc70:	f894 2020 	ldrb.w	r2, [r4, #32]
 800cc74:	2a00      	cmp	r2, #0
 800cc76:	d041      	beq.n	800ccfc <HAL_ADC_Init+0x148>
 800cc78:	6859      	ldr	r1, [r3, #4]
 800cc7a:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800cc7c:	f441 6100 	orr.w	r1, r1, #2048	; 0x800
 800cc80:	6059      	str	r1, [r3, #4]
 800cc82:	6858      	ldr	r0, [r3, #4]
 800cc84:	f420 4060 	bic.w	r0, r0, #57344	; 0xe000
 800cc88:	6058      	str	r0, [r3, #4]
 800cc8a:	1e51      	subs	r1, r2, #1
 800cc8c:	685a      	ldr	r2, [r3, #4]
 800cc8e:	ea42 3241 	orr.w	r2, r2, r1, lsl #13
 800cc92:	605a      	str	r2, [r3, #4]
 800cc94:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800cc96:	69e1      	ldr	r1, [r4, #28]
 800cc98:	6965      	ldr	r5, [r4, #20]
 800cc9a:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 800cc9e:	62da      	str	r2, [r3, #44]	; 0x2c
 800cca0:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800cca2:	3901      	subs	r1, #1
 800cca4:	ea42 5201 	orr.w	r2, r2, r1, lsl #20
 800cca8:	62da      	str	r2, [r3, #44]	; 0x2c
 800ccaa:	6899      	ldr	r1, [r3, #8]
 800ccac:	f421 7100 	bic.w	r1, r1, #512	; 0x200
 800ccb0:	6099      	str	r1, [r3, #8]
 800ccb2:	6899      	ldr	r1, [r3, #8]
 800ccb4:	f894 2030 	ldrb.w	r2, [r4, #48]	; 0x30
 800ccb8:	ea41 2142 	orr.w	r1, r1, r2, lsl #9
 800ccbc:	6099      	str	r1, [r3, #8]
 800ccbe:	6899      	ldr	r1, [r3, #8]
 800ccc0:	f421 6180 	bic.w	r1, r1, #1024	; 0x400
 800ccc4:	6099      	str	r1, [r3, #8]
 800ccc6:	689a      	ldr	r2, [r3, #8]
 800ccc8:	2000      	movs	r0, #0
 800ccca:	ea42 2285 	orr.w	r2, r2, r5, lsl #10
 800ccce:	609a      	str	r2, [r3, #8]
 800ccd0:	6460      	str	r0, [r4, #68]	; 0x44
 800ccd2:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800ccd4:	f023 0303 	bic.w	r3, r3, #3
 800ccd8:	f043 0301 	orr.w	r3, r3, #1
 800ccdc:	6423      	str	r3, [r4, #64]	; 0x40
 800ccde:	2300      	movs	r3, #0
 800cce0:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 800cce4:	bd38      	pop	{r3, r4, r5, pc}
 800cce6:	689a      	ldr	r2, [r3, #8]
 800cce8:	f022 6270 	bic.w	r2, r2, #251658240	; 0xf000000
 800ccec:	609a      	str	r2, [r3, #8]
 800ccee:	689a      	ldr	r2, [r3, #8]
 800ccf0:	f022 5240 	bic.w	r2, r2, #805306368	; 0x30000000
 800ccf4:	609a      	str	r2, [r3, #8]
 800ccf6:	e7b2      	b.n	800cc5e <HAL_ADC_Init+0xaa>
 800ccf8:	2001      	movs	r0, #1
 800ccfa:	4770      	bx	lr
 800ccfc:	685a      	ldr	r2, [r3, #4]
 800ccfe:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 800cd02:	605a      	str	r2, [r3, #4]
 800cd04:	e7c6      	b.n	800cc94 <HAL_ADC_Init+0xe0>
 800cd06:	bf00      	nop
 800cd08:	40012300 	.word	0x40012300
 800cd0c:	0f000001 	.word	0x0f000001

0800cd10 <HAL_ADC_Start>:
 800cd10:	b410      	push	{r4}
 800cd12:	f890 303c 	ldrb.w	r3, [r0, #60]	; 0x3c
 800cd16:	b083      	sub	sp, #12
 800cd18:	2100      	movs	r1, #0
 800cd1a:	2b01      	cmp	r3, #1
 800cd1c:	9101      	str	r1, [sp, #4]
 800cd1e:	d077      	beq.n	800ce10 <HAL_ADC_Start+0x100>
 800cd20:	2301      	movs	r3, #1
 800cd22:	6801      	ldr	r1, [r0, #0]
 800cd24:	f880 303c 	strb.w	r3, [r0, #60]	; 0x3c
 800cd28:	688b      	ldr	r3, [r1, #8]
 800cd2a:	07dc      	lsls	r4, r3, #31
 800cd2c:	4602      	mov	r2, r0
 800cd2e:	d414      	bmi.n	800cd5a <HAL_ADC_Start+0x4a>
 800cd30:	4b3c      	ldr	r3, [pc, #240]	; (800ce24 <HAL_ADC_Start+0x114>)
 800cd32:	4c3d      	ldr	r4, [pc, #244]	; (800ce28 <HAL_ADC_Start+0x118>)
 800cd34:	681b      	ldr	r3, [r3, #0]
 800cd36:	6888      	ldr	r0, [r1, #8]
 800cd38:	fba4 4303 	umull	r4, r3, r4, r3
 800cd3c:	0c9b      	lsrs	r3, r3, #18
 800cd3e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
 800cd42:	f040 0001 	orr.w	r0, r0, #1
 800cd46:	6088      	str	r0, [r1, #8]
 800cd48:	9301      	str	r3, [sp, #4]
 800cd4a:	9b01      	ldr	r3, [sp, #4]
 800cd4c:	b12b      	cbz	r3, 800cd5a <HAL_ADC_Start+0x4a>
 800cd4e:	9b01      	ldr	r3, [sp, #4]
 800cd50:	3b01      	subs	r3, #1
 800cd52:	9301      	str	r3, [sp, #4]
 800cd54:	9b01      	ldr	r3, [sp, #4]
 800cd56:	2b00      	cmp	r3, #0
 800cd58:	d1f9      	bne.n	800cd4e <HAL_ADC_Start+0x3e>
 800cd5a:	6888      	ldr	r0, [r1, #8]
 800cd5c:	6c13      	ldr	r3, [r2, #64]	; 0x40
 800cd5e:	f010 0001 	ands.w	r0, r0, #1
 800cd62:	d031      	beq.n	800cdc8 <HAL_ADC_Start+0xb8>
 800cd64:	f423 63e0 	bic.w	r3, r3, #1792	; 0x700
 800cd68:	f023 0301 	bic.w	r3, r3, #1
 800cd6c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800cd70:	6413      	str	r3, [r2, #64]	; 0x40
 800cd72:	684b      	ldr	r3, [r1, #4]
 800cd74:	0558      	lsls	r0, r3, #21
 800cd76:	d505      	bpl.n	800cd84 <HAL_ADC_Start+0x74>
 800cd78:	6c13      	ldr	r3, [r2, #64]	; 0x40
 800cd7a:	f423 5340 	bic.w	r3, r3, #12288	; 0x3000
 800cd7e:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 800cd82:	6413      	str	r3, [r2, #64]	; 0x40
 800cd84:	6c13      	ldr	r3, [r2, #64]	; 0x40
 800cd86:	4c29      	ldr	r4, [pc, #164]	; (800ce2c <HAL_ADC_Start+0x11c>)
 800cd88:	f413 5380 	ands.w	r3, r3, #4096	; 0x1000
 800cd8c:	bf1c      	itt	ne
 800cd8e:	6c53      	ldrne	r3, [r2, #68]	; 0x44
 800cd90:	f023 0306 	bicne.w	r3, r3, #6
 800cd94:	6453      	str	r3, [r2, #68]	; 0x44
 800cd96:	2000      	movs	r0, #0
 800cd98:	f06f 0322 	mvn.w	r3, #34	; 0x22
 800cd9c:	f882 003c 	strb.w	r0, [r2, #60]	; 0x3c
 800cda0:	600b      	str	r3, [r1, #0]
 800cda2:	6863      	ldr	r3, [r4, #4]
 800cda4:	f013 031f 	ands.w	r3, r3, #31
 800cda8:	d119      	bne.n	800cdde <HAL_ADC_Start+0xce>
 800cdaa:	4a21      	ldr	r2, [pc, #132]	; (800ce30 <HAL_ADC_Start+0x120>)
 800cdac:	4291      	cmp	r1, r2
 800cdae:	d026      	beq.n	800cdfe <HAL_ADC_Start+0xee>
 800cdb0:	f502 7280 	add.w	r2, r2, #256	; 0x100
 800cdb4:	4291      	cmp	r1, r2
 800cdb6:	d01f      	beq.n	800cdf8 <HAL_ADC_Start+0xe8>
 800cdb8:	4a1e      	ldr	r2, [pc, #120]	; (800ce34 <HAL_ADC_Start+0x124>)
 800cdba:	4291      	cmp	r1, r2
 800cdbc:	d02d      	beq.n	800ce1a <HAL_ADC_Start+0x10a>
 800cdbe:	2000      	movs	r0, #0
 800cdc0:	b003      	add	sp, #12
 800cdc2:	f85d 4b04 	ldr.w	r4, [sp], #4
 800cdc6:	4770      	bx	lr
 800cdc8:	f043 0310 	orr.w	r3, r3, #16
 800cdcc:	6413      	str	r3, [r2, #64]	; 0x40
 800cdce:	6c53      	ldr	r3, [r2, #68]	; 0x44
 800cdd0:	f043 0301 	orr.w	r3, r3, #1
 800cdd4:	6453      	str	r3, [r2, #68]	; 0x44
 800cdd6:	b003      	add	sp, #12
 800cdd8:	f85d 4b04 	ldr.w	r4, [sp], #4
 800cddc:	4770      	bx	lr
 800cdde:	4b14      	ldr	r3, [pc, #80]	; (800ce30 <HAL_ADC_Start+0x120>)
 800cde0:	4299      	cmp	r1, r3
 800cde2:	d1f8      	bne.n	800cdd6 <HAL_ADC_Start+0xc6>
 800cde4:	688b      	ldr	r3, [r1, #8]
 800cde6:	f013 5340 	ands.w	r3, r3, #805306368	; 0x30000000
 800cdea:	d1f4      	bne.n	800cdd6 <HAL_ADC_Start+0xc6>
 800cdec:	688a      	ldr	r2, [r1, #8]
 800cdee:	f042 4280 	orr.w	r2, r2, #1073741824	; 0x40000000
 800cdf2:	4618      	mov	r0, r3
 800cdf4:	608a      	str	r2, [r1, #8]
 800cdf6:	e7ee      	b.n	800cdd6 <HAL_ADC_Start+0xc6>
 800cdf8:	6862      	ldr	r2, [r4, #4]
 800cdfa:	06d2      	lsls	r2, r2, #27
 800cdfc:	d1df      	bne.n	800cdbe <HAL_ADC_Start+0xae>
 800cdfe:	6888      	ldr	r0, [r1, #8]
 800ce00:	f010 5040 	ands.w	r0, r0, #805306368	; 0x30000000
 800ce04:	d1db      	bne.n	800cdbe <HAL_ADC_Start+0xae>
 800ce06:	688b      	ldr	r3, [r1, #8]
 800ce08:	f043 4380 	orr.w	r3, r3, #1073741824	; 0x40000000
 800ce0c:	608b      	str	r3, [r1, #8]
 800ce0e:	e7e2      	b.n	800cdd6 <HAL_ADC_Start+0xc6>
 800ce10:	2002      	movs	r0, #2
 800ce12:	b003      	add	sp, #12
 800ce14:	f85d 4b04 	ldr.w	r4, [sp], #4
 800ce18:	4770      	bx	lr
 800ce1a:	6862      	ldr	r2, [r4, #4]
 800ce1c:	06d3      	lsls	r3, r2, #27
 800ce1e:	d4ce      	bmi.n	800cdbe <HAL_ADC_Start+0xae>
 800ce20:	e7ed      	b.n	800cdfe <HAL_ADC_Start+0xee>
 800ce22:	bf00      	nop
 800ce24:	20000178 	.word	0x20000178
 800ce28:	431bde83 	.word	0x431bde83
 800ce2c:	40012300 	.word	0x40012300
 800ce30:	40012000 	.word	0x40012000
 800ce34:	40012200 	.word	0x40012200

0800ce38 <HAL_ADC_PollForConversion>:
 800ce38:	6803      	ldr	r3, [r0, #0]
 800ce3a:	689a      	ldr	r2, [r3, #8]
 800ce3c:	b570      	push	{r4, r5, r6, lr}
 800ce3e:	460d      	mov	r5, r1
 800ce40:	0551      	lsls	r1, r2, #21
 800ce42:	4604      	mov	r4, r0
 800ce44:	d502      	bpl.n	800ce4c <HAL_ADC_PollForConversion+0x14>
 800ce46:	689b      	ldr	r3, [r3, #8]
 800ce48:	05da      	lsls	r2, r3, #23
 800ce4a:	d445      	bmi.n	800ced8 <HAL_ADC_PollForConversion+0xa0>
 800ce4c:	f7f9 f8be 	bl	8005fcc <HAL_GetTick>
 800ce50:	6822      	ldr	r2, [r4, #0]
 800ce52:	4606      	mov	r6, r0
 800ce54:	1c6b      	adds	r3, r5, #1
 800ce56:	d124      	bne.n	800cea2 <HAL_ADC_PollForConversion+0x6a>
 800ce58:	6813      	ldr	r3, [r2, #0]
 800ce5a:	0798      	lsls	r0, r3, #30
 800ce5c:	d5fc      	bpl.n	800ce58 <HAL_ADC_PollForConversion+0x20>
 800ce5e:	f06f 0312 	mvn.w	r3, #18
 800ce62:	6013      	str	r3, [r2, #0]
 800ce64:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800ce66:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 800ce6a:	6423      	str	r3, [r4, #64]	; 0x40
 800ce6c:	6893      	ldr	r3, [r2, #8]
 800ce6e:	f013 5f40 	tst.w	r3, #805306368	; 0x30000000
 800ce72:	d114      	bne.n	800ce9e <HAL_ADC_PollForConversion+0x66>
 800ce74:	7e20      	ldrb	r0, [r4, #24]
 800ce76:	b990      	cbnz	r0, 800ce9e <HAL_ADC_PollForConversion+0x66>
 800ce78:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
 800ce7a:	f413 0f70 	tst.w	r3, #15728640	; 0xf00000
 800ce7e:	d002      	beq.n	800ce86 <HAL_ADC_PollForConversion+0x4e>
 800ce80:	6893      	ldr	r3, [r2, #8]
 800ce82:	055a      	lsls	r2, r3, #21
 800ce84:	d40b      	bmi.n	800ce9e <HAL_ADC_PollForConversion+0x66>
 800ce86:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800ce88:	f423 7380 	bic.w	r3, r3, #256	; 0x100
 800ce8c:	6423      	str	r3, [r4, #64]	; 0x40
 800ce8e:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800ce90:	04db      	lsls	r3, r3, #19
 800ce92:	d404      	bmi.n	800ce9e <HAL_ADC_PollForConversion+0x66>
 800ce94:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800ce96:	f043 0301 	orr.w	r3, r3, #1
 800ce9a:	6423      	str	r3, [r4, #64]	; 0x40
 800ce9c:	bd70      	pop	{r4, r5, r6, pc}
 800ce9e:	2000      	movs	r0, #0
 800cea0:	bd70      	pop	{r4, r5, r6, pc}
 800cea2:	6813      	ldr	r3, [r2, #0]
 800cea4:	0799      	lsls	r1, r3, #30
 800cea6:	d4da      	bmi.n	800ce5e <HAL_ADC_PollForConversion+0x26>
 800cea8:	b95d      	cbnz	r5, 800cec2 <HAL_ADC_PollForConversion+0x8a>
 800ceaa:	6813      	ldr	r3, [r2, #0]
 800ceac:	f013 0302 	ands.w	r3, r3, #2
 800ceb0:	d1d0      	bne.n	800ce54 <HAL_ADC_PollForConversion+0x1c>
 800ceb2:	6c22      	ldr	r2, [r4, #64]	; 0x40
 800ceb4:	f884 303c 	strb.w	r3, [r4, #60]	; 0x3c
 800ceb8:	f042 0204 	orr.w	r2, r2, #4
 800cebc:	6422      	str	r2, [r4, #64]	; 0x40
 800cebe:	2003      	movs	r0, #3
 800cec0:	bd70      	pop	{r4, r5, r6, pc}
 800cec2:	f7f9 f883 	bl	8005fcc <HAL_GetTick>
 800cec6:	1b80      	subs	r0, r0, r6
 800cec8:	42a8      	cmp	r0, r5
 800ceca:	6822      	ldr	r2, [r4, #0]
 800cecc:	d9c2      	bls.n	800ce54 <HAL_ADC_PollForConversion+0x1c>
 800cece:	6813      	ldr	r3, [r2, #0]
 800ced0:	f013 0302 	ands.w	r3, r3, #2
 800ced4:	d1be      	bne.n	800ce54 <HAL_ADC_PollForConversion+0x1c>
 800ced6:	e7ec      	b.n	800ceb2 <HAL_ADC_PollForConversion+0x7a>
 800ced8:	6c03      	ldr	r3, [r0, #64]	; 0x40
 800ceda:	2200      	movs	r2, #0
 800cedc:	f043 0320 	orr.w	r3, r3, #32
 800cee0:	f880 203c 	strb.w	r2, [r0, #60]	; 0x3c
 800cee4:	6403      	str	r3, [r0, #64]	; 0x40
 800cee6:	2001      	movs	r0, #1
 800cee8:	bd70      	pop	{r4, r5, r6, pc}
 800ceea:	bf00      	nop

0800ceec <HAL_ADC_GetValue>:
 800ceec:	6803      	ldr	r3, [r0, #0]
 800ceee:	6cd8      	ldr	r0, [r3, #76]	; 0x4c
 800cef0:	4770      	bx	lr
 800cef2:	bf00      	nop

0800cef4 <HAL_ADC_ConfigChannel>:
 800cef4:	b530      	push	{r4, r5, lr}
 800cef6:	f890 303c 	ldrb.w	r3, [r0, #60]	; 0x3c
 800cefa:	b083      	sub	sp, #12
 800cefc:	2200      	movs	r2, #0
 800cefe:	2b01      	cmp	r3, #1
 800cf00:	9201      	str	r2, [sp, #4]
 800cf02:	f000 809c 	beq.w	800d03e <HAL_ADC_ConfigChannel+0x14a>
 800cf06:	2301      	movs	r3, #1
 800cf08:	f880 303c 	strb.w	r3, [r0, #60]	; 0x3c
 800cf0c:	680c      	ldr	r4, [r1, #0]
 800cf0e:	6803      	ldr	r3, [r0, #0]
 800cf10:	2c09      	cmp	r4, #9
 800cf12:	d82d      	bhi.n	800cf70 <HAL_ADC_ConfigChannel+0x7c>
 800cf14:	691d      	ldr	r5, [r3, #16]
 800cf16:	688a      	ldr	r2, [r1, #8]
 800cf18:	eb04 0e44 	add.w	lr, r4, r4, lsl #1
 800cf1c:	f04f 0c07 	mov.w	ip, #7
 800cf20:	fa0c fc0e 	lsl.w	ip, ip, lr
 800cf24:	ea25 050c 	bic.w	r5, r5, ip
 800cf28:	611d      	str	r5, [r3, #16]
 800cf2a:	691d      	ldr	r5, [r3, #16]
 800cf2c:	fa02 f20e 	lsl.w	r2, r2, lr
 800cf30:	432a      	orrs	r2, r5
 800cf32:	611a      	str	r2, [r3, #16]
 800cf34:	684a      	ldr	r2, [r1, #4]
 800cf36:	2a06      	cmp	r2, #6
 800cf38:	46a4      	mov	ip, r4
 800cf3a:	d82f      	bhi.n	800cf9c <HAL_ADC_ConfigChannel+0xa8>
 800cf3c:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800cf40:	6b59      	ldr	r1, [r3, #52]	; 0x34
 800cf42:	3a05      	subs	r2, #5
 800cf44:	f04f 0e1f 	mov.w	lr, #31
 800cf48:	fa0c fc02 	lsl.w	ip, ip, r2
 800cf4c:	fa0e f202 	lsl.w	r2, lr, r2
 800cf50:	ea21 0202 	bic.w	r2, r1, r2
 800cf54:	635a      	str	r2, [r3, #52]	; 0x34
 800cf56:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 800cf58:	ea4c 0202 	orr.w	r2, ip, r2
 800cf5c:	635a      	str	r2, [r3, #52]	; 0x34
 800cf5e:	4a39      	ldr	r2, [pc, #228]	; (800d044 <HAL_ADC_ConfigChannel+0x150>)
 800cf60:	4293      	cmp	r3, r2
 800cf62:	d030      	beq.n	800cfc6 <HAL_ADC_ConfigChannel+0xd2>
 800cf64:	2300      	movs	r3, #0
 800cf66:	f880 303c 	strb.w	r3, [r0, #60]	; 0x3c
 800cf6a:	4618      	mov	r0, r3
 800cf6c:	b003      	add	sp, #12
 800cf6e:	bd30      	pop	{r4, r5, pc}
 800cf70:	fa1f fc84 	uxth.w	ip, r4
 800cf74:	eb0c 024c 	add.w	r2, ip, ip, lsl #1
 800cf78:	68dd      	ldr	r5, [r3, #12]
 800cf7a:	f1a2 0e1e 	sub.w	lr, r2, #30
 800cf7e:	2207      	movs	r2, #7
 800cf80:	fa02 f20e 	lsl.w	r2, r2, lr
 800cf84:	ea25 0202 	bic.w	r2, r5, r2
 800cf88:	60da      	str	r2, [r3, #12]
 800cf8a:	688a      	ldr	r2, [r1, #8]
 800cf8c:	68dd      	ldr	r5, [r3, #12]
 800cf8e:	fa02 f20e 	lsl.w	r2, r2, lr
 800cf92:	432a      	orrs	r2, r5
 800cf94:	60da      	str	r2, [r3, #12]
 800cf96:	684a      	ldr	r2, [r1, #4]
 800cf98:	2a06      	cmp	r2, #6
 800cf9a:	d9cf      	bls.n	800cf3c <HAL_ADC_ConfigChannel+0x48>
 800cf9c:	2a0c      	cmp	r2, #12
 800cf9e:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800cfa2:	d836      	bhi.n	800d012 <HAL_ADC_ConfigChannel+0x11e>
 800cfa4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800cfa6:	3a23      	subs	r2, #35	; 0x23
 800cfa8:	251f      	movs	r5, #31
 800cfaa:	fa0c fc02 	lsl.w	ip, ip, r2
 800cfae:	fa05 f202 	lsl.w	r2, r5, r2
 800cfb2:	ea21 0202 	bic.w	r2, r1, r2
 800cfb6:	631a      	str	r2, [r3, #48]	; 0x30
 800cfb8:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 800cfba:	ea4c 0202 	orr.w	r2, ip, r2
 800cfbe:	631a      	str	r2, [r3, #48]	; 0x30
 800cfc0:	4a20      	ldr	r2, [pc, #128]	; (800d044 <HAL_ADC_ConfigChannel+0x150>)
 800cfc2:	4293      	cmp	r3, r2
 800cfc4:	d1ce      	bne.n	800cf64 <HAL_ADC_ConfigChannel+0x70>
 800cfc6:	2c12      	cmp	r4, #18
 800cfc8:	d032      	beq.n	800d030 <HAL_ADC_ConfigChannel+0x13c>
 800cfca:	f1a4 0310 	sub.w	r3, r4, #16
 800cfce:	2b01      	cmp	r3, #1
 800cfd0:	d8c8      	bhi.n	800cf64 <HAL_ADC_ConfigChannel+0x70>
 800cfd2:	4a1d      	ldr	r2, [pc, #116]	; (800d048 <HAL_ADC_ConfigChannel+0x154>)
 800cfd4:	6853      	ldr	r3, [r2, #4]
 800cfd6:	2c10      	cmp	r4, #16
 800cfd8:	f443 0300 	orr.w	r3, r3, #8388608	; 0x800000
 800cfdc:	6053      	str	r3, [r2, #4]
 800cfde:	d1c1      	bne.n	800cf64 <HAL_ADC_ConfigChannel+0x70>
 800cfe0:	4b1a      	ldr	r3, [pc, #104]	; (800d04c <HAL_ADC_ConfigChannel+0x158>)
 800cfe2:	f102 7246 	add.w	r2, r2, #51904512	; 0x3180000
 800cfe6:	681b      	ldr	r3, [r3, #0]
 800cfe8:	f502 322e 	add.w	r2, r2, #178176	; 0x2b800
 800cfec:	f202 3283 	addw	r2, r2, #899	; 0x383
 800cff0:	fba2 2303 	umull	r2, r3, r2, r3
 800cff4:	0c9b      	lsrs	r3, r3, #18
 800cff6:	eb03 0383 	add.w	r3, r3, r3, lsl #2
 800cffa:	005b      	lsls	r3, r3, #1
 800cffc:	9301      	str	r3, [sp, #4]
 800cffe:	9b01      	ldr	r3, [sp, #4]
 800d000:	2b00      	cmp	r3, #0
 800d002:	d0af      	beq.n	800cf64 <HAL_ADC_ConfigChannel+0x70>
 800d004:	9b01      	ldr	r3, [sp, #4]
 800d006:	3b01      	subs	r3, #1
 800d008:	9301      	str	r3, [sp, #4]
 800d00a:	9b01      	ldr	r3, [sp, #4]
 800d00c:	2b00      	cmp	r3, #0
 800d00e:	d1f9      	bne.n	800d004 <HAL_ADC_ConfigChannel+0x110>
 800d010:	e7a8      	b.n	800cf64 <HAL_ADC_ConfigChannel+0x70>
 800d012:	6ad9      	ldr	r1, [r3, #44]	; 0x2c
 800d014:	3a41      	subs	r2, #65	; 0x41
 800d016:	251f      	movs	r5, #31
 800d018:	fa0c fc02 	lsl.w	ip, ip, r2
 800d01c:	fa05 f202 	lsl.w	r2, r5, r2
 800d020:	ea21 0202 	bic.w	r2, r1, r2
 800d024:	62da      	str	r2, [r3, #44]	; 0x2c
 800d026:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800d028:	ea4c 0202 	orr.w	r2, ip, r2
 800d02c:	62da      	str	r2, [r3, #44]	; 0x2c
 800d02e:	e796      	b.n	800cf5e <HAL_ADC_ConfigChannel+0x6a>
 800d030:	f8d2 3304 	ldr.w	r3, [r2, #772]	; 0x304
 800d034:	f443 0380 	orr.w	r3, r3, #4194304	; 0x400000
 800d038:	f8c2 3304 	str.w	r3, [r2, #772]	; 0x304
 800d03c:	e792      	b.n	800cf64 <HAL_ADC_ConfigChannel+0x70>
 800d03e:	2002      	movs	r0, #2
 800d040:	b003      	add	sp, #12
 800d042:	bd30      	pop	{r4, r5, pc}
 800d044:	40012000 	.word	0x40012000
 800d048:	40012300 	.word	0x40012300
 800d04c:	20000178 	.word	0x20000178

0800d050 <HAL_RTC_Init>:
 800d050:	2800      	cmp	r0, #0
 800d052:	d054      	beq.n	800d0fe <HAL_RTC_Init+0xae>
 800d054:	b538      	push	{r3, r4, r5, lr}
 800d056:	7f43      	ldrb	r3, [r0, #29]
 800d058:	4604      	mov	r4, r0
 800d05a:	f003 02ff 	and.w	r2, r3, #255	; 0xff
 800d05e:	b14b      	cbz	r3, 800d074 <HAL_RTC_Init+0x24>
 800d060:	2202      	movs	r2, #2
 800d062:	6823      	ldr	r3, [r4, #0]
 800d064:	7762      	strb	r2, [r4, #29]
 800d066:	68da      	ldr	r2, [r3, #12]
 800d068:	06d2      	lsls	r2, r2, #27
 800d06a:	d507      	bpl.n	800d07c <HAL_RTC_Init+0x2c>
 800d06c:	2301      	movs	r3, #1
 800d06e:	7763      	strb	r3, [r4, #29]
 800d070:	2000      	movs	r0, #0
 800d072:	bd38      	pop	{r3, r4, r5, pc}
 800d074:	7702      	strb	r2, [r0, #28]
 800d076:	f7f7 fc19 	bl	80048ac <HAL_RTC_MspInit>
 800d07a:	e7f1      	b.n	800d060 <HAL_RTC_Init+0x10>
 800d07c:	2253      	movs	r2, #83	; 0x53
 800d07e:	21ca      	movs	r1, #202	; 0xca
 800d080:	6259      	str	r1, [r3, #36]	; 0x24
 800d082:	625a      	str	r2, [r3, #36]	; 0x24
 800d084:	68da      	ldr	r2, [r3, #12]
 800d086:	0655      	lsls	r5, r2, #25
 800d088:	d526      	bpl.n	800d0d8 <HAL_RTC_Init+0x88>
 800d08a:	6899      	ldr	r1, [r3, #8]
 800d08c:	6862      	ldr	r2, [r4, #4]
 800d08e:	6925      	ldr	r5, [r4, #16]
 800d090:	f421 01e0 	bic.w	r1, r1, #7340032	; 0x700000
 800d094:	f021 0140 	bic.w	r1, r1, #64	; 0x40
 800d098:	6099      	str	r1, [r3, #8]
 800d09a:	6961      	ldr	r1, [r4, #20]
 800d09c:	6898      	ldr	r0, [r3, #8]
 800d09e:	432a      	orrs	r2, r5
 800d0a0:	430a      	orrs	r2, r1
 800d0a2:	4302      	orrs	r2, r0
 800d0a4:	68e1      	ldr	r1, [r4, #12]
 800d0a6:	609a      	str	r2, [r3, #8]
 800d0a8:	6119      	str	r1, [r3, #16]
 800d0aa:	691a      	ldr	r2, [r3, #16]
 800d0ac:	68a1      	ldr	r1, [r4, #8]
 800d0ae:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
 800d0b2:	611a      	str	r2, [r3, #16]
 800d0b4:	68da      	ldr	r2, [r3, #12]
 800d0b6:	f022 0280 	bic.w	r2, r2, #128	; 0x80
 800d0ba:	60da      	str	r2, [r3, #12]
 800d0bc:	689a      	ldr	r2, [r3, #8]
 800d0be:	0691      	lsls	r1, r2, #26
 800d0c0:	d527      	bpl.n	800d112 <HAL_RTC_Init+0xc2>
 800d0c2:	6c19      	ldr	r1, [r3, #64]	; 0x40
 800d0c4:	69a0      	ldr	r0, [r4, #24]
 800d0c6:	f421 2180 	bic.w	r1, r1, #262144	; 0x40000
 800d0ca:	6419      	str	r1, [r3, #64]	; 0x40
 800d0cc:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 800d0ce:	21ff      	movs	r1, #255	; 0xff
 800d0d0:	4302      	orrs	r2, r0
 800d0d2:	641a      	str	r2, [r3, #64]	; 0x40
 800d0d4:	6259      	str	r1, [r3, #36]	; 0x24
 800d0d6:	e7c9      	b.n	800d06c <HAL_RTC_Init+0x1c>
 800d0d8:	68da      	ldr	r2, [r3, #12]
 800d0da:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800d0de:	60da      	str	r2, [r3, #12]
 800d0e0:	f7f8 ff74 	bl	8005fcc <HAL_GetTick>
 800d0e4:	4605      	mov	r5, r0
 800d0e6:	e005      	b.n	800d0f4 <HAL_RTC_Init+0xa4>
 800d0e8:	f7f8 ff70 	bl	8005fcc <HAL_GetTick>
 800d0ec:	1b40      	subs	r0, r0, r5
 800d0ee:	f5b0 7f7a 	cmp.w	r0, #1000	; 0x3e8
 800d0f2:	d806      	bhi.n	800d102 <HAL_RTC_Init+0xb2>
 800d0f4:	6823      	ldr	r3, [r4, #0]
 800d0f6:	68da      	ldr	r2, [r3, #12]
 800d0f8:	0650      	lsls	r0, r2, #25
 800d0fa:	d4c6      	bmi.n	800d08a <HAL_RTC_Init+0x3a>
 800d0fc:	e7f4      	b.n	800d0e8 <HAL_RTC_Init+0x98>
 800d0fe:	2001      	movs	r0, #1
 800d100:	4770      	bx	lr
 800d102:	2304      	movs	r3, #4
 800d104:	6822      	ldr	r2, [r4, #0]
 800d106:	7763      	strb	r3, [r4, #29]
 800d108:	68d3      	ldr	r3, [r2, #12]
 800d10a:	23ff      	movs	r3, #255	; 0xff
 800d10c:	6253      	str	r3, [r2, #36]	; 0x24
 800d10e:	2001      	movs	r0, #1
 800d110:	bd38      	pop	{r3, r4, r5, pc}
 800d112:	4a09      	ldr	r2, [pc, #36]	; (800d138 <HAL_RTC_Init+0xe8>)
 800d114:	60da      	str	r2, [r3, #12]
 800d116:	f7f8 ff59 	bl	8005fcc <HAL_GetTick>
 800d11a:	4605      	mov	r5, r0
 800d11c:	6823      	ldr	r3, [r4, #0]
 800d11e:	68da      	ldr	r2, [r3, #12]
 800d120:	0692      	lsls	r2, r2, #26
 800d122:	d4ce      	bmi.n	800d0c2 <HAL_RTC_Init+0x72>
 800d124:	f7f8 ff52 	bl	8005fcc <HAL_GetTick>
 800d128:	1b40      	subs	r0, r0, r5
 800d12a:	f5b0 7f7a 	cmp.w	r0, #1000	; 0x3e8
 800d12e:	d9f5      	bls.n	800d11c <HAL_RTC_Init+0xcc>
 800d130:	2304      	movs	r3, #4
 800d132:	6822      	ldr	r2, [r4, #0]
 800d134:	7763      	strb	r3, [r4, #29]
 800d136:	e7e8      	b.n	800d10a <HAL_RTC_Init+0xba>
 800d138:	00017f5f 	.word	0x00017f5f

0800d13c <HAL_RTC_SetTime>:
 800d13c:	7f03      	ldrb	r3, [r0, #28]
 800d13e:	2b01      	cmp	r3, #1
 800d140:	f000 80a2 	beq.w	800d288 <HAL_RTC_SetTime+0x14c>
 800d144:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800d148:	2302      	movs	r3, #2
 800d14a:	460d      	mov	r5, r1
 800d14c:	2101      	movs	r1, #1
 800d14e:	6807      	ldr	r7, [r0, #0]
 800d150:	7701      	strb	r1, [r0, #28]
 800d152:	4606      	mov	r6, r0
 800d154:	7743      	strb	r3, [r0, #29]
 800d156:	2a00      	cmp	r2, #0
 800d158:	d138      	bne.n	800d1cc <HAL_RTC_SetTime+0x90>
 800d15a:	68bc      	ldr	r4, [r7, #8]
 800d15c:	782b      	ldrb	r3, [r5, #0]
 800d15e:	f014 0c40 	ands.w	ip, r4, #64	; 0x40
 800d162:	bf16      	itet	ne
 800d164:	78ec      	ldrbne	r4, [r5, #3]
 800d166:	f885 c003 	strbeq.w	ip, [r5, #3]
 800d16a:	ea4f 5c84 	movne.w	ip, r4, lsl #22
 800d16e:	2b09      	cmp	r3, #9
 800d170:	d909      	bls.n	800d186 <HAL_RTC_SetTime+0x4a>
 800d172:	2100      	movs	r1, #0
 800d174:	3b0a      	subs	r3, #10
 800d176:	b2db      	uxtb	r3, r3
 800d178:	2b09      	cmp	r3, #9
 800d17a:	f101 0101 	add.w	r1, r1, #1
 800d17e:	d8f9      	bhi.n	800d174 <HAL_RTC_SetTime+0x38>
 800d180:	ea43 1301 	orr.w	r3, r3, r1, lsl #4
 800d184:	b2db      	uxtb	r3, r3
 800d186:	7869      	ldrb	r1, [r5, #1]
 800d188:	2909      	cmp	r1, #9
 800d18a:	ea4f 4303 	mov.w	r3, r3, lsl #16
 800d18e:	d909      	bls.n	800d1a4 <HAL_RTC_SetTime+0x68>
 800d190:	2400      	movs	r4, #0
 800d192:	390a      	subs	r1, #10
 800d194:	b2c9      	uxtb	r1, r1
 800d196:	2909      	cmp	r1, #9
 800d198:	f104 0401 	add.w	r4, r4, #1
 800d19c:	d8f9      	bhi.n	800d192 <HAL_RTC_SetTime+0x56>
 800d19e:	ea41 1104 	orr.w	r1, r1, r4, lsl #4
 800d1a2:	b2c9      	uxtb	r1, r1
 800d1a4:	78a8      	ldrb	r0, [r5, #2]
 800d1a6:	2809      	cmp	r0, #9
 800d1a8:	ea4f 2101 	mov.w	r1, r1, lsl #8
 800d1ac:	d909      	bls.n	800d1c2 <HAL_RTC_SetTime+0x86>
 800d1ae:	f1a0 040a 	sub.w	r4, r0, #10
 800d1b2:	b2e0      	uxtb	r0, r4
 800d1b4:	2809      	cmp	r0, #9
 800d1b6:	f102 0201 	add.w	r2, r2, #1
 800d1ba:	d8f8      	bhi.n	800d1ae <HAL_RTC_SetTime+0x72>
 800d1bc:	ea40 1402 	orr.w	r4, r0, r2, lsl #4
 800d1c0:	b2e0      	uxtb	r0, r4
 800d1c2:	ea43 040c 	orr.w	r4, r3, ip
 800d1c6:	430c      	orrs	r4, r1
 800d1c8:	4304      	orrs	r4, r0
 800d1ca:	e00e      	b.n	800d1ea <HAL_RTC_SetTime+0xae>
 800d1cc:	68bb      	ldr	r3, [r7, #8]
 800d1ce:	782a      	ldrb	r2, [r5, #0]
 800d1d0:	f013 0340 	ands.w	r3, r3, #64	; 0x40
 800d1d4:	bf16      	itet	ne
 800d1d6:	78ec      	ldrbne	r4, [r5, #3]
 800d1d8:	70eb      	strbeq	r3, [r5, #3]
 800d1da:	05a3      	lslne	r3, r4, #22
 800d1dc:	786c      	ldrb	r4, [r5, #1]
 800d1de:	0224      	lsls	r4, r4, #8
 800d1e0:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
 800d1e4:	78aa      	ldrb	r2, [r5, #2]
 800d1e6:	4314      	orrs	r4, r2
 800d1e8:	431c      	orrs	r4, r3
 800d1ea:	23ca      	movs	r3, #202	; 0xca
 800d1ec:	627b      	str	r3, [r7, #36]	; 0x24
 800d1ee:	2353      	movs	r3, #83	; 0x53
 800d1f0:	627b      	str	r3, [r7, #36]	; 0x24
 800d1f2:	68fb      	ldr	r3, [r7, #12]
 800d1f4:	0658      	lsls	r0, r3, #25
 800d1f6:	d51e      	bpl.n	800d236 <HAL_RTC_SetTime+0xfa>
 800d1f8:	f004 347f 	and.w	r4, r4, #2139062143	; 0x7f7f7f7f
 800d1fc:	f024 44fe 	bic.w	r4, r4, #2130706432	; 0x7f000000
 800d200:	603c      	str	r4, [r7, #0]
 800d202:	68ba      	ldr	r2, [r7, #8]
 800d204:	68eb      	ldr	r3, [r5, #12]
 800d206:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800d20a:	60ba      	str	r2, [r7, #8]
 800d20c:	692a      	ldr	r2, [r5, #16]
 800d20e:	4313      	orrs	r3, r2
 800d210:	68ba      	ldr	r2, [r7, #8]
 800d212:	4313      	orrs	r3, r2
 800d214:	60bb      	str	r3, [r7, #8]
 800d216:	68fb      	ldr	r3, [r7, #12]
 800d218:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800d21c:	60fb      	str	r3, [r7, #12]
 800d21e:	68bb      	ldr	r3, [r7, #8]
 800d220:	069a      	lsls	r2, r3, #26
 800d222:	d520      	bpl.n	800d266 <HAL_RTC_SetTime+0x12a>
 800d224:	2301      	movs	r3, #1
 800d226:	7773      	strb	r3, [r6, #29]
 800d228:	2000      	movs	r0, #0
 800d22a:	22ff      	movs	r2, #255	; 0xff
 800d22c:	2300      	movs	r3, #0
 800d22e:	627a      	str	r2, [r7, #36]	; 0x24
 800d230:	7733      	strb	r3, [r6, #28]
 800d232:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800d236:	68fb      	ldr	r3, [r7, #12]
 800d238:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800d23c:	60fb      	str	r3, [r7, #12]
 800d23e:	f7f8 fec5 	bl	8005fcc <HAL_GetTick>
 800d242:	4680      	mov	r8, r0
 800d244:	6837      	ldr	r7, [r6, #0]
 800d246:	68fb      	ldr	r3, [r7, #12]
 800d248:	0659      	lsls	r1, r3, #25
 800d24a:	d4d5      	bmi.n	800d1f8 <HAL_RTC_SetTime+0xbc>
 800d24c:	f7f8 febe 	bl	8005fcc <HAL_GetTick>
 800d250:	eba0 0008 	sub.w	r0, r0, r8
 800d254:	f5b0 7f7a 	cmp.w	r0, #1000	; 0x3e8
 800d258:	d9f4      	bls.n	800d244 <HAL_RTC_SetTime+0x108>
 800d25a:	2304      	movs	r3, #4
 800d25c:	6837      	ldr	r7, [r6, #0]
 800d25e:	7773      	strb	r3, [r6, #29]
 800d260:	68fb      	ldr	r3, [r7, #12]
 800d262:	2001      	movs	r0, #1
 800d264:	e7e1      	b.n	800d22a <HAL_RTC_SetTime+0xee>
 800d266:	4b0c      	ldr	r3, [pc, #48]	; (800d298 <HAL_RTC_SetTime+0x15c>)
 800d268:	60fb      	str	r3, [r7, #12]
 800d26a:	f7f8 feaf 	bl	8005fcc <HAL_GetTick>
 800d26e:	4604      	mov	r4, r0
 800d270:	e005      	b.n	800d27e <HAL_RTC_SetTime+0x142>
 800d272:	f7f8 feab 	bl	8005fcc <HAL_GetTick>
 800d276:	1b00      	subs	r0, r0, r4
 800d278:	f5b0 7f7a 	cmp.w	r0, #1000	; 0x3e8
 800d27c:	d806      	bhi.n	800d28c <HAL_RTC_SetTime+0x150>
 800d27e:	6837      	ldr	r7, [r6, #0]
 800d280:	68fb      	ldr	r3, [r7, #12]
 800d282:	069b      	lsls	r3, r3, #26
 800d284:	d5f5      	bpl.n	800d272 <HAL_RTC_SetTime+0x136>
 800d286:	e7cd      	b.n	800d224 <HAL_RTC_SetTime+0xe8>
 800d288:	2002      	movs	r0, #2
 800d28a:	4770      	bx	lr
 800d28c:	2304      	movs	r3, #4
 800d28e:	6837      	ldr	r7, [r6, #0]
 800d290:	7773      	strb	r3, [r6, #29]
 800d292:	2001      	movs	r0, #1
 800d294:	e7c9      	b.n	800d22a <HAL_RTC_SetTime+0xee>
 800d296:	bf00      	nop
 800d298:	00017f5f 	.word	0x00017f5f

0800d29c <HAL_RTC_SetDate>:
 800d29c:	7f03      	ldrb	r3, [r0, #28]
 800d29e:	2b01      	cmp	r3, #1
 800d2a0:	f000 809d 	beq.w	800d3de <HAL_RTC_SetDate+0x142>
 800d2a4:	b570      	push	{r4, r5, r6, lr}
 800d2a6:	4604      	mov	r4, r0
 800d2a8:	2302      	movs	r3, #2
 800d2aa:	2001      	movs	r0, #1
 800d2ac:	7720      	strb	r0, [r4, #28]
 800d2ae:	7763      	strb	r3, [r4, #29]
 800d2b0:	b32a      	cbz	r2, 800d2fe <HAL_RTC_SetDate+0x62>
 800d2b2:	784d      	ldrb	r5, [r1, #1]
 800d2b4:	78c8      	ldrb	r0, [r1, #3]
 800d2b6:	788a      	ldrb	r2, [r1, #2]
 800d2b8:	780b      	ldrb	r3, [r1, #0]
 800d2ba:	022d      	lsls	r5, r5, #8
 800d2bc:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
 800d2c0:	4315      	orrs	r5, r2
 800d2c2:	ea45 3543 	orr.w	r5, r5, r3, lsl #13
 800d2c6:	6822      	ldr	r2, [r4, #0]
 800d2c8:	2353      	movs	r3, #83	; 0x53
 800d2ca:	21ca      	movs	r1, #202	; 0xca
 800d2cc:	6251      	str	r1, [r2, #36]	; 0x24
 800d2ce:	6253      	str	r3, [r2, #36]	; 0x24
 800d2d0:	68d3      	ldr	r3, [r2, #12]
 800d2d2:	065e      	lsls	r6, r3, #25
 800d2d4:	d551      	bpl.n	800d37a <HAL_RTC_SetDate+0xde>
 800d2d6:	f025 457f 	bic.w	r5, r5, #4278190080	; 0xff000000
 800d2da:	f025 05c0 	bic.w	r5, r5, #192	; 0xc0
 800d2de:	6055      	str	r5, [r2, #4]
 800d2e0:	68d3      	ldr	r3, [r2, #12]
 800d2e2:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800d2e6:	60d3      	str	r3, [r2, #12]
 800d2e8:	6893      	ldr	r3, [r2, #8]
 800d2ea:	0699      	lsls	r1, r3, #26
 800d2ec:	d566      	bpl.n	800d3bc <HAL_RTC_SetDate+0x120>
 800d2ee:	2301      	movs	r3, #1
 800d2f0:	7763      	strb	r3, [r4, #29]
 800d2f2:	2000      	movs	r0, #0
 800d2f4:	21ff      	movs	r1, #255	; 0xff
 800d2f6:	2300      	movs	r3, #0
 800d2f8:	6251      	str	r1, [r2, #36]	; 0x24
 800d2fa:	7723      	strb	r3, [r4, #28]
 800d2fc:	bd70      	pop	{r4, r5, r6, pc}
 800d2fe:	784b      	ldrb	r3, [r1, #1]
 800d300:	06d8      	lsls	r0, r3, #27
 800d302:	d555      	bpl.n	800d3b0 <HAL_RTC_SetDate+0x114>
 800d304:	f891 c003 	ldrb.w	ip, [r1, #3]
 800d308:	f023 0310 	bic.w	r3, r3, #16
 800d30c:	330a      	adds	r3, #10
 800d30e:	b2db      	uxtb	r3, r3
 800d310:	f1bc 0f09 	cmp.w	ip, #9
 800d314:	704b      	strb	r3, [r1, #1]
 800d316:	d964      	bls.n	800d3e2 <HAL_RTC_SetDate+0x146>
 800d318:	2000      	movs	r0, #0
 800d31a:	f1ac 0c0a 	sub.w	ip, ip, #10
 800d31e:	fa5f fc8c 	uxtb.w	ip, ip
 800d322:	f1bc 0f09 	cmp.w	ip, #9
 800d326:	f100 0001 	add.w	r0, r0, #1
 800d32a:	d8f6      	bhi.n	800d31a <HAL_RTC_SetDate+0x7e>
 800d32c:	ea4c 1c00 	orr.w	ip, ip, r0, lsl #4
 800d330:	fa5f fc8c 	uxtb.w	ip, ip
 800d334:	2b09      	cmp	r3, #9
 800d336:	ea4f 4c0c 	mov.w	ip, ip, lsl #16
 800d33a:	d909      	bls.n	800d350 <HAL_RTC_SetDate+0xb4>
 800d33c:	2000      	movs	r0, #0
 800d33e:	3b0a      	subs	r3, #10
 800d340:	b2db      	uxtb	r3, r3
 800d342:	2b09      	cmp	r3, #9
 800d344:	f100 0001 	add.w	r0, r0, #1
 800d348:	d8f9      	bhi.n	800d33e <HAL_RTC_SetDate+0xa2>
 800d34a:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
 800d34e:	b2db      	uxtb	r3, r3
 800d350:	788d      	ldrb	r5, [r1, #2]
 800d352:	2d09      	cmp	r5, #9
 800d354:	ea4f 2303 	mov.w	r3, r3, lsl #8
 800d358:	d908      	bls.n	800d36c <HAL_RTC_SetDate+0xd0>
 800d35a:	3d0a      	subs	r5, #10
 800d35c:	b2ed      	uxtb	r5, r5
 800d35e:	2d09      	cmp	r5, #9
 800d360:	f102 0201 	add.w	r2, r2, #1
 800d364:	d8f9      	bhi.n	800d35a <HAL_RTC_SetDate+0xbe>
 800d366:	ea45 1502 	orr.w	r5, r5, r2, lsl #4
 800d36a:	b2ed      	uxtb	r5, r5
 800d36c:	780a      	ldrb	r2, [r1, #0]
 800d36e:	ea4c 3c42 	orr.w	ip, ip, r2, lsl #13
 800d372:	ea4c 0303 	orr.w	r3, ip, r3
 800d376:	431d      	orrs	r5, r3
 800d378:	e7a5      	b.n	800d2c6 <HAL_RTC_SetDate+0x2a>
 800d37a:	68d3      	ldr	r3, [r2, #12]
 800d37c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800d380:	60d3      	str	r3, [r2, #12]
 800d382:	f7f8 fe23 	bl	8005fcc <HAL_GetTick>
 800d386:	4606      	mov	r6, r0
 800d388:	6822      	ldr	r2, [r4, #0]
 800d38a:	68d3      	ldr	r3, [r2, #12]
 800d38c:	0658      	lsls	r0, r3, #25
 800d38e:	d4a2      	bmi.n	800d2d6 <HAL_RTC_SetDate+0x3a>
 800d390:	f7f8 fe1c 	bl	8005fcc <HAL_GetTick>
 800d394:	1b80      	subs	r0, r0, r6
 800d396:	f5b0 7f7a 	cmp.w	r0, #1000	; 0x3e8
 800d39a:	d9f5      	bls.n	800d388 <HAL_RTC_SetDate+0xec>
 800d39c:	6822      	ldr	r2, [r4, #0]
 800d39e:	2304      	movs	r3, #4
 800d3a0:	7763      	strb	r3, [r4, #29]
 800d3a2:	68d3      	ldr	r3, [r2, #12]
 800d3a4:	21ff      	movs	r1, #255	; 0xff
 800d3a6:	2300      	movs	r3, #0
 800d3a8:	6251      	str	r1, [r2, #36]	; 0x24
 800d3aa:	7723      	strb	r3, [r4, #28]
 800d3ac:	2001      	movs	r0, #1
 800d3ae:	bd70      	pop	{r4, r5, r6, pc}
 800d3b0:	f891 c003 	ldrb.w	ip, [r1, #3]
 800d3b4:	f1bc 0f09 	cmp.w	ip, #9
 800d3b8:	d8ae      	bhi.n	800d318 <HAL_RTC_SetDate+0x7c>
 800d3ba:	e7bb      	b.n	800d334 <HAL_RTC_SetDate+0x98>
 800d3bc:	4b0d      	ldr	r3, [pc, #52]	; (800d3f4 <HAL_RTC_SetDate+0x158>)
 800d3be:	60d3      	str	r3, [r2, #12]
 800d3c0:	f7f8 fe04 	bl	8005fcc <HAL_GetTick>
 800d3c4:	4605      	mov	r5, r0
 800d3c6:	e005      	b.n	800d3d4 <HAL_RTC_SetDate+0x138>
 800d3c8:	f7f8 fe00 	bl	8005fcc <HAL_GetTick>
 800d3cc:	1b40      	subs	r0, r0, r5
 800d3ce:	f5b0 7f7a 	cmp.w	r0, #1000	; 0x3e8
 800d3d2:	d809      	bhi.n	800d3e8 <HAL_RTC_SetDate+0x14c>
 800d3d4:	6822      	ldr	r2, [r4, #0]
 800d3d6:	68d3      	ldr	r3, [r2, #12]
 800d3d8:	069b      	lsls	r3, r3, #26
 800d3da:	d5f5      	bpl.n	800d3c8 <HAL_RTC_SetDate+0x12c>
 800d3dc:	e787      	b.n	800d2ee <HAL_RTC_SetDate+0x52>
 800d3de:	2002      	movs	r0, #2
 800d3e0:	4770      	bx	lr
 800d3e2:	ea4f 4c0c 	mov.w	ip, ip, lsl #16
 800d3e6:	e7a9      	b.n	800d33c <HAL_RTC_SetDate+0xa0>
 800d3e8:	2304      	movs	r3, #4
 800d3ea:	6822      	ldr	r2, [r4, #0]
 800d3ec:	7763      	strb	r3, [r4, #29]
 800d3ee:	2001      	movs	r0, #1
 800d3f0:	e780      	b.n	800d2f4 <HAL_RTC_SetDate+0x58>
 800d3f2:	bf00      	nop
 800d3f4:	00017f5f 	.word	0x00017f5f

0800d3f8 <HAL_RTC_SetAlarm_IT>:
 800d3f8:	4b7a      	ldr	r3, [pc, #488]	; (800d5e4 <HAL_RTC_SetAlarm_IT+0x1ec>)
 800d3fa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800d3fe:	681b      	ldr	r3, [r3, #0]
 800d400:	4c79      	ldr	r4, [pc, #484]	; (800d5e8 <HAL_RTC_SetAlarm_IT+0x1f0>)
 800d402:	4686      	mov	lr, r0
 800d404:	fba4 3003 	umull	r3, r0, r4, r3
 800d408:	0ac0      	lsrs	r0, r0, #11
 800d40a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 800d40e:	fb03 f000 	mul.w	r0, r3, r0
 800d412:	f89e 301c 	ldrb.w	r3, [lr, #28]
 800d416:	b082      	sub	sp, #8
 800d418:	2b01      	cmp	r3, #1
 800d41a:	9001      	str	r0, [sp, #4]
 800d41c:	f000 80dd 	beq.w	800d5da <HAL_RTC_SetAlarm_IT+0x1e2>
 800d420:	2301      	movs	r3, #1
 800d422:	f88e 301c 	strb.w	r3, [lr, #28]
 800d426:	2302      	movs	r3, #2
 800d428:	f8de 4000 	ldr.w	r4, [lr]
 800d42c:	f88e 301d 	strb.w	r3, [lr, #29]
 800d430:	2a00      	cmp	r2, #0
 800d432:	d043      	beq.n	800d4bc <HAL_RTC_SetAlarm_IT+0xc4>
 800d434:	68a7      	ldr	r7, [r4, #8]
 800d436:	69cb      	ldr	r3, [r1, #28]
 800d438:	f017 0840 	ands.w	r8, r7, #64	; 0x40
 800d43c:	bf16      	itet	ne
 800d43e:	78cf      	ldrbne	r7, [r1, #3]
 800d440:	f881 8003 	strbeq.w	r8, [r1, #3]
 800d444:	ea4f 5887 	movne.w	r8, r7, lsl #22
 800d448:	694f      	ldr	r7, [r1, #20]
 800d44a:	431f      	orrs	r7, r3
 800d44c:	788b      	ldrb	r3, [r1, #2]
 800d44e:	431f      	orrs	r7, r3
 800d450:	780b      	ldrb	r3, [r1, #0]
 800d452:	ea47 4703 	orr.w	r7, r7, r3, lsl #16
 800d456:	784b      	ldrb	r3, [r1, #1]
 800d458:	ea47 2703 	orr.w	r7, r7, r3, lsl #8
 800d45c:	f891 3020 	ldrb.w	r3, [r1, #32]
 800d460:	ea47 6703 	orr.w	r7, r7, r3, lsl #24
 800d464:	ea47 0708 	orr.w	r7, r7, r8
 800d468:	698b      	ldr	r3, [r1, #24]
 800d46a:	684a      	ldr	r2, [r1, #4]
 800d46c:	431a      	orrs	r2, r3
 800d46e:	6a4b      	ldr	r3, [r1, #36]	; 0x24
 800d470:	21ca      	movs	r1, #202	; 0xca
 800d472:	6261      	str	r1, [r4, #36]	; 0x24
 800d474:	2153      	movs	r1, #83	; 0x53
 800d476:	6261      	str	r1, [r4, #36]	; 0x24
 800d478:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 800d47c:	68a3      	ldr	r3, [r4, #8]
 800d47e:	d06f      	beq.n	800d560 <HAL_RTC_SetAlarm_IT+0x168>
 800d480:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 800d484:	60a3      	str	r3, [r4, #8]
 800d486:	68e3      	ldr	r3, [r4, #12]
 800d488:	b2db      	uxtb	r3, r3
 800d48a:	f463 7320 	orn	r3, r3, #640	; 0x280
 800d48e:	60e3      	str	r3, [r4, #12]
 800d490:	9001      	str	r0, [sp, #4]
 800d492:	e002      	b.n	800d49a <HAL_RTC_SetAlarm_IT+0xa2>
 800d494:	68e3      	ldr	r3, [r4, #12]
 800d496:	079b      	lsls	r3, r3, #30
 800d498:	d475      	bmi.n	800d586 <HAL_RTC_SetAlarm_IT+0x18e>
 800d49a:	9b01      	ldr	r3, [sp, #4]
 800d49c:	3b01      	subs	r3, #1
 800d49e:	9301      	str	r3, [sp, #4]
 800d4a0:	9b01      	ldr	r3, [sp, #4]
 800d4a2:	2b00      	cmp	r3, #0
 800d4a4:	d1f6      	bne.n	800d494 <HAL_RTC_SetAlarm_IT+0x9c>
 800d4a6:	2203      	movs	r2, #3
 800d4a8:	21ff      	movs	r1, #255	; 0xff
 800d4aa:	4610      	mov	r0, r2
 800d4ac:	6261      	str	r1, [r4, #36]	; 0x24
 800d4ae:	f88e 201d 	strb.w	r2, [lr, #29]
 800d4b2:	f88e 301c 	strb.w	r3, [lr, #28]
 800d4b6:	b002      	add	sp, #8
 800d4b8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800d4bc:	68a6      	ldr	r6, [r4, #8]
 800d4be:	780b      	ldrb	r3, [r1, #0]
 800d4c0:	69cd      	ldr	r5, [r1, #28]
 800d4c2:	f016 0640 	ands.w	r6, r6, #64	; 0x40
 800d4c6:	bf16      	itet	ne
 800d4c8:	78ce      	ldrbne	r6, [r1, #3]
 800d4ca:	70ce      	strbeq	r6, [r1, #3]
 800d4cc:	05b6      	lslne	r6, r6, #22
 800d4ce:	2b09      	cmp	r3, #9
 800d4d0:	d909      	bls.n	800d4e6 <HAL_RTC_SetAlarm_IT+0xee>
 800d4d2:	2700      	movs	r7, #0
 800d4d4:	3b0a      	subs	r3, #10
 800d4d6:	b2db      	uxtb	r3, r3
 800d4d8:	2b09      	cmp	r3, #9
 800d4da:	f107 0701 	add.w	r7, r7, #1
 800d4de:	d8f9      	bhi.n	800d4d4 <HAL_RTC_SetAlarm_IT+0xdc>
 800d4e0:	ea43 1307 	orr.w	r3, r3, r7, lsl #4
 800d4e4:	b2db      	uxtb	r3, r3
 800d4e6:	ea4f 4c03 	mov.w	ip, r3, lsl #16
 800d4ea:	784b      	ldrb	r3, [r1, #1]
 800d4ec:	2b09      	cmp	r3, #9
 800d4ee:	d909      	bls.n	800d504 <HAL_RTC_SetAlarm_IT+0x10c>
 800d4f0:	2700      	movs	r7, #0
 800d4f2:	3b0a      	subs	r3, #10
 800d4f4:	b2db      	uxtb	r3, r3
 800d4f6:	2b09      	cmp	r3, #9
 800d4f8:	f107 0701 	add.w	r7, r7, #1
 800d4fc:	d8f9      	bhi.n	800d4f2 <HAL_RTC_SetAlarm_IT+0xfa>
 800d4fe:	ea43 1307 	orr.w	r3, r3, r7, lsl #4
 800d502:	b2db      	uxtb	r3, r3
 800d504:	f891 8002 	ldrb.w	r8, [r1, #2]
 800d508:	f1b8 0f09 	cmp.w	r8, #9
 800d50c:	ea4f 2303 	mov.w	r3, r3, lsl #8
 800d510:	d90d      	bls.n	800d52e <HAL_RTC_SetAlarm_IT+0x136>
 800d512:	2700      	movs	r7, #0
 800d514:	f1a8 080a 	sub.w	r8, r8, #10
 800d518:	fa5f f888 	uxtb.w	r8, r8
 800d51c:	f1b8 0f09 	cmp.w	r8, #9
 800d520:	f107 0701 	add.w	r7, r7, #1
 800d524:	d8f6      	bhi.n	800d514 <HAL_RTC_SetAlarm_IT+0x11c>
 800d526:	ea48 1807 	orr.w	r8, r8, r7, lsl #4
 800d52a:	fa5f f888 	uxtb.w	r8, r8
 800d52e:	f891 7020 	ldrb.w	r7, [r1, #32]
 800d532:	2f09      	cmp	r7, #9
 800d534:	d908      	bls.n	800d548 <HAL_RTC_SetAlarm_IT+0x150>
 800d536:	3f0a      	subs	r7, #10
 800d538:	b2ff      	uxtb	r7, r7
 800d53a:	2f09      	cmp	r7, #9
 800d53c:	f102 0201 	add.w	r2, r2, #1
 800d540:	d8f9      	bhi.n	800d536 <HAL_RTC_SetAlarm_IT+0x13e>
 800d542:	ea47 1702 	orr.w	r7, r7, r2, lsl #4
 800d546:	b2ff      	uxtb	r7, r7
 800d548:	694a      	ldr	r2, [r1, #20]
 800d54a:	432a      	orrs	r2, r5
 800d54c:	4316      	orrs	r6, r2
 800d54e:	ea46 0c0c 	orr.w	ip, r6, ip
 800d552:	ea4c 0303 	orr.w	r3, ip, r3
 800d556:	ea43 0808 	orr.w	r8, r3, r8
 800d55a:	ea48 6707 	orr.w	r7, r8, r7, lsl #24
 800d55e:	e783      	b.n	800d468 <HAL_RTC_SetAlarm_IT+0x70>
 800d560:	f423 7380 	bic.w	r3, r3, #256	; 0x100
 800d564:	60a3      	str	r3, [r4, #8]
 800d566:	68e3      	ldr	r3, [r4, #12]
 800d568:	b2db      	uxtb	r3, r3
 800d56a:	f463 73c0 	orn	r3, r3, #384	; 0x180
 800d56e:	60e3      	str	r3, [r4, #12]
 800d570:	e002      	b.n	800d578 <HAL_RTC_SetAlarm_IT+0x180>
 800d572:	68e3      	ldr	r3, [r4, #12]
 800d574:	07d9      	lsls	r1, r3, #31
 800d576:	d425      	bmi.n	800d5c4 <HAL_RTC_SetAlarm_IT+0x1cc>
 800d578:	9b01      	ldr	r3, [sp, #4]
 800d57a:	3b01      	subs	r3, #1
 800d57c:	9301      	str	r3, [sp, #4]
 800d57e:	9b01      	ldr	r3, [sp, #4]
 800d580:	2b00      	cmp	r3, #0
 800d582:	d1f6      	bne.n	800d572 <HAL_RTC_SetAlarm_IT+0x17a>
 800d584:	e78f      	b.n	800d4a6 <HAL_RTC_SetAlarm_IT+0xae>
 800d586:	6227      	str	r7, [r4, #32]
 800d588:	64a2      	str	r2, [r4, #72]	; 0x48
 800d58a:	68a3      	ldr	r3, [r4, #8]
 800d58c:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 800d590:	60a3      	str	r3, [r4, #8]
 800d592:	68a3      	ldr	r3, [r4, #8]
 800d594:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800d598:	60a3      	str	r3, [r4, #8]
 800d59a:	4b14      	ldr	r3, [pc, #80]	; (800d5ec <HAL_RTC_SetAlarm_IT+0x1f4>)
 800d59c:	681a      	ldr	r2, [r3, #0]
 800d59e:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 800d5a2:	601a      	str	r2, [r3, #0]
 800d5a4:	689a      	ldr	r2, [r3, #8]
 800d5a6:	2100      	movs	r1, #0
 800d5a8:	f442 3200 	orr.w	r2, r2, #131072	; 0x20000
 800d5ac:	609a      	str	r2, [r3, #8]
 800d5ae:	4608      	mov	r0, r1
 800d5b0:	22ff      	movs	r2, #255	; 0xff
 800d5b2:	2301      	movs	r3, #1
 800d5b4:	6262      	str	r2, [r4, #36]	; 0x24
 800d5b6:	f88e 301d 	strb.w	r3, [lr, #29]
 800d5ba:	f88e 101c 	strb.w	r1, [lr, #28]
 800d5be:	b002      	add	sp, #8
 800d5c0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800d5c4:	61e7      	str	r7, [r4, #28]
 800d5c6:	6462      	str	r2, [r4, #68]	; 0x44
 800d5c8:	68a3      	ldr	r3, [r4, #8]
 800d5ca:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800d5ce:	60a3      	str	r3, [r4, #8]
 800d5d0:	68a3      	ldr	r3, [r4, #8]
 800d5d2:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 800d5d6:	60a3      	str	r3, [r4, #8]
 800d5d8:	e7df      	b.n	800d59a <HAL_RTC_SetAlarm_IT+0x1a2>
 800d5da:	2002      	movs	r0, #2
 800d5dc:	b002      	add	sp, #8
 800d5de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800d5e2:	bf00      	nop
 800d5e4:	20000178 	.word	0x20000178
 800d5e8:	10624dd3 	.word	0x10624dd3
 800d5ec:	40013c00 	.word	0x40013c00

0800d5f0 <HAL_RTC_AlarmAEventCallback>:
 800d5f0:	4770      	bx	lr
 800d5f2:	bf00      	nop

0800d5f4 <HAL_RTC_AlarmIRQHandler>:
 800d5f4:	4a14      	ldr	r2, [pc, #80]	; (800d648 <HAL_RTC_AlarmIRQHandler+0x54>)
 800d5f6:	6803      	ldr	r3, [r0, #0]
 800d5f8:	f44f 3100 	mov.w	r1, #131072	; 0x20000
 800d5fc:	b510      	push	{r4, lr}
 800d5fe:	6151      	str	r1, [r2, #20]
 800d600:	689a      	ldr	r2, [r3, #8]
 800d602:	04d1      	lsls	r1, r2, #19
 800d604:	4604      	mov	r4, r0
 800d606:	d502      	bpl.n	800d60e <HAL_RTC_AlarmIRQHandler+0x1a>
 800d608:	68da      	ldr	r2, [r3, #12]
 800d60a:	05d2      	lsls	r2, r2, #23
 800d60c:	d413      	bmi.n	800d636 <HAL_RTC_AlarmIRQHandler+0x42>
 800d60e:	689a      	ldr	r2, [r3, #8]
 800d610:	0491      	lsls	r1, r2, #18
 800d612:	d502      	bpl.n	800d61a <HAL_RTC_AlarmIRQHandler+0x26>
 800d614:	68da      	ldr	r2, [r3, #12]
 800d616:	0592      	lsls	r2, r2, #22
 800d618:	d402      	bmi.n	800d620 <HAL_RTC_AlarmIRQHandler+0x2c>
 800d61a:	2301      	movs	r3, #1
 800d61c:	7763      	strb	r3, [r4, #29]
 800d61e:	bd10      	pop	{r4, pc}
 800d620:	68da      	ldr	r2, [r3, #12]
 800d622:	b2d2      	uxtb	r2, r2
 800d624:	f462 7220 	orn	r2, r2, #640	; 0x280
 800d628:	60da      	str	r2, [r3, #12]
 800d62a:	4620      	mov	r0, r4
 800d62c:	f000 f80e 	bl	800d64c <HAL_RTCEx_AlarmBEventCallback>
 800d630:	2301      	movs	r3, #1
 800d632:	7763      	strb	r3, [r4, #29]
 800d634:	bd10      	pop	{r4, pc}
 800d636:	68da      	ldr	r2, [r3, #12]
 800d638:	b2d2      	uxtb	r2, r2
 800d63a:	f462 72c0 	orn	r2, r2, #384	; 0x180
 800d63e:	60da      	str	r2, [r3, #12]
 800d640:	f7ff ffd6 	bl	800d5f0 <HAL_RTC_AlarmAEventCallback>
 800d644:	6823      	ldr	r3, [r4, #0]
 800d646:	e7e2      	b.n	800d60e <HAL_RTC_AlarmIRQHandler+0x1a>
 800d648:	40013c00 	.word	0x40013c00

0800d64c <HAL_RTCEx_AlarmBEventCallback>:
 800d64c:	4770      	bx	lr
 800d64e:	bf00      	nop

0800d650 <Reset_Handler>:
 800d650:	f8df d034 	ldr.w	sp, [pc, #52]	; 800d688 <LoopFillZerobss+0xe>
 800d654:	f7f8 fcd2 	bl	8005ffc <SystemInit>
 800d658:	480c      	ldr	r0, [pc, #48]	; (800d68c <LoopFillZerobss+0x12>)
 800d65a:	490d      	ldr	r1, [pc, #52]	; (800d690 <LoopFillZerobss+0x16>)
 800d65c:	4a0d      	ldr	r2, [pc, #52]	; (800d694 <LoopFillZerobss+0x1a>)
 800d65e:	2300      	movs	r3, #0
 800d660:	e002      	b.n	800d668 <LoopCopyDataInit>

0800d662 <CopyDataInit>:
 800d662:	58d4      	ldr	r4, [r2, r3]
 800d664:	50c4      	str	r4, [r0, r3]
 800d666:	3304      	adds	r3, #4

0800d668 <LoopCopyDataInit>:
 800d668:	18c4      	adds	r4, r0, r3
 800d66a:	428c      	cmp	r4, r1
 800d66c:	d3f9      	bcc.n	800d662 <CopyDataInit>
 800d66e:	4a0a      	ldr	r2, [pc, #40]	; (800d698 <LoopFillZerobss+0x1e>)
 800d670:	4c0a      	ldr	r4, [pc, #40]	; (800d69c <LoopFillZerobss+0x22>)
 800d672:	2300      	movs	r3, #0
 800d674:	e001      	b.n	800d67a <LoopFillZerobss>

0800d676 <FillZerobss>:
 800d676:	6013      	str	r3, [r2, #0]
 800d678:	3204      	adds	r2, #4

0800d67a <LoopFillZerobss>:
 800d67a:	42a2      	cmp	r2, r4
 800d67c:	d3fb      	bcc.n	800d676 <FillZerobss>
 800d67e:	f7f2 fdd1 	bl	8000224 <__libc_init_array>
 800d682:	f7f6 fa9d 	bl	8003bc0 <main>
 800d686:	4770      	bx	lr
 800d688:	20020000 	.word	0x20020000
 800d68c:	20000000 	.word	0x20000000
 800d690:	20000190 	.word	0x20000190
 800d694:	0800dfd4 	.word	0x0800dfd4
 800d698:	20000190 	.word	0x20000190
 800d69c:	200051b4 	.word	0x200051b4

0800d6a0 <ADC_IRQHandler>:
 800d6a0:	e7fe      	b.n	800d6a0 <ADC_IRQHandler>
	...

0800d6a4 <_init>:
 800d6a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800d6a6:	bf00      	nop
 800d6a8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800d6aa:	bc08      	pop	{r3}
 800d6ac:	469e      	mov	lr, r3
 800d6ae:	4770      	bx	lr

0800d6b0 <_fini>:
 800d6b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800d6b2:	bf00      	nop
 800d6b4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800d6b6:	bc08      	pop	{r3}
 800d6b8:	469e      	mov	lr, r3
 800d6ba:	4770      	bx	lr
