	.cpu cortex-m4
	.text
	.thumb
	.syntax unified
	.global main
	.type main, %function

    .global SystemInit
	.type SystemInit, %function

pjpeg_need_bytes_callback:
	push	{r3, r4, r5, r6, r7, lr}
	movw	r5, #992	
	movt	r5, #8192	
	mov	r6, r2
	ldr	r7, [r5, #0]
	rsb	r4, r7, #568	
	adds	r4, #2
	cmp	r4, r1
	it	cs
	movcs	r4, r1
	movw	r1, #0
	movt	r1, #8192	
	add	r1, r7
	mov	r2, r4
	bl	memcpy
	strb	r4, [r6, #0]
	ldr	r1, [r5, #0]
	add	r1, r4
	movs	r0, #0
	str	r1, [r5, #0]
	pop	{r3, r4, r5, r6, r7, pc}
	nop
benchmark_body.constprop.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	movw	r5, #992	
	movt	r5, #8192	
	movw	r6, #509	
	mov	r4, #1008	
	mov	r8, #0
	movt	r6, #2048	
	adds	r7, r5, #4
lab1: 	movs	r3, #0
	mov	r2, r3
	mov	r1, r6
	mov	r0, r7
	str	r8, [r5]
push {r1, r2}
	ldr r1, =1658
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	pjpeg_decode_init
lab0:push {r1, r2}
	ldr r1, =2257
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	push {r1, r2}
	ldr r1, =1658
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	bl	pjpeg_decode_mcu
	push {r1, r2}
	ldr r1, =2257
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #1
	bne	lab0
	subs	r4, #1
	bne	lab1
	mov	r0, r4
	nop
	push {r1, r2}
	ldr r1, =3066
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
benchmark_body.isra.0:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	subs	r5, r0, #0
	ble	lab2
	movw	r6, #992	
	movs	r4, #0
	movt	r6, #8192	
	movw	r7, #509	
	mov	r9, r4
	movt	r7, #2048	
	add	r8, r6, #4
lab4: 	movs	r3, #0
	mov	r2, r3
	mov	r1, r7
	mov	r0, r8
	str	r9, [r6]
push {r1, r2}
	ldr r1, =525
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	pjpeg_decode_init
lab3:push {r1, r2}
	ldr r1, =3270
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	push {r1, r2}
	ldr r1, =525
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	bl	pjpeg_decode_mcu
	push {r1, r2}
	ldr r1, =3270
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #1
	bne	lab3
	adds	r4, #1
	cmp	r4, r5
	bne	lab4
lab2:	nop
	push {r1, r2}
	ldr r1, =3328
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	nop
verify_benchmark:
	push	{r3, r4, r5, lr}
	movw	r5, #992	
	movt	r5, #8192	
	movw	r1, #572	
	ldr	r0, [r5, #36]	
	movt	r1, #8192	
	movs	r2, #64	
push {r1, r2}
	ldr r1, =6755
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memcmp
	push {r1, r2}
	ldr r1, =6755
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab5
	movw	r1, #636	
	mov	r4, r0
	movt	r1, #8192	
	ldr	r0, [r5, #40]	
	movs	r2, #64	
push {r1, r2}
	ldr r1, =519
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memcmp
	push {r1, r2}
	ldr r1, =519
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab6
	movw	r1, #700	
	ldr	r0, [r5, #44]	
	movt	r1, #8192	
	movs	r2, #64	
push {r1, r2}
	ldr r1, =6220
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memcmp
	push {r1, r2}
	ldr r1, =6220
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	clz	r4, r0
	lsrs	r4, r4, #5
lab6: 	mov	r0, r4
	nop
	push {r1, r2}
	ldr r1, =4448
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab5: 	movs	r4, #0
	mov	r0, r4
	nop
	push {r1, r2}
	ldr r1, =6982
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
initialise_benchmark:
	bx	lr
	nop
warm_caches:
	b	benchmark_body.isra.0
	nop
benchmark:
	b	benchmark_body.constprop.0
	nop
	.ltorg
SystemInit:
	mov	r3, #14336	
	movt	r3, #16386	
	movs	r1, #0
	ldr	r2, [r3, #0]
	orr	r2, r2, #1
	str	r2, [r3, #0]
	str	r1, [r3, #8]
	ldr	r2, [r3, #0]
	movw	r0, #12304	
	bic	r2, r2, #17301504	
	bic	r2, r2, #65536	
	movt	r0, #9216	
	str	r2, [r3, #0]
	str	r0, [r3, #4]
	ldr	r2, [r3, #0]
	bic	r2, r2, #262144	
	str	r2, [r3, #0]
	str	r1, [r3, #12]
	bx	lr
	nop
set_sysclk_to_168:
	mov	r3, #14336	
	movt	r3, #16386	
	ldr	r2, [r3, #0]
	orr	r2, r2, #65536	
	str	r2, [r3, #0]
lab7: 	ldr	r2, [r3, #0]
	lsls	r0, r2, #14
	bpl	lab7
	ldr	r1, [r3, #64]	
	mov	r2, #28672	
	movt	r2, #16384	
	orr	r1, r1, #268435456	
	str	r1, [r3, #64]	
	ldr	r1, [r2, #0]
	orr	r1, r1, #16384	
	str	r1, [r2, #0]
	ldr	r2, [r3, #8]
	str	r2, [r3, #8]
	ldr	r2, [r3, #8]
	orr	r2, r2, #5120	
	str	r2, [r3, #8]
	ldr	r1, [r3, #8]
	movw	r0, #23048	
	orr	r1, r1, #32768	
	movt	r0, #1856	
	str	r1, [r3, #8]
	str	r0, [r3, #4]
	ldr	r1, [r3, #0]
	mov	r2, #14336	
	orr	r1, r1, #16777216	
	movt	r2, #16386	
	str	r1, [r3, #0]
lab8: 	ldr	r3, [r2, #0]
	lsls	r1, r3, #6
	bpl	lab8
	mov	r3, #15360	
	movt	r3, #16386	
	movw	r1, #1797	
	str	r1, [r3, #0]
	ldr	r3, [r2, #8]
	bic	r3, r3, #3
	str	r3, [r2, #8]
	ldr	r3, [r2, #8]
	mov	r1, #14336	
	orr	r3, r3, #2
	movt	r1, #16386	
	str	r3, [r2, #8]
lab9: 	ldr	r3, [r1, #8]
	lsls	r3, r3, #28
	bpl	lab9
	movw	r3, #988	
	movt	r3, #8192	
	mov	r2, #31232	
	movt	r2, #2563	
	str	r2, [r3, #0]
	bx	lr
	nop
main:
	push	{lr}
	sub	sp, #12
	bl	initialise_board
	bl	initialise_benchmark
	movs	r0, #0
	bl	warm_caches
	push {r1, r2}
	ldr r1, =6850
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	start_trigger
	bl	benchmark
	push {r1, r2}
	ldr r1, =4266
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r0, [sp, #4]
	bl	stop_trigger
	ldr	r0, [sp, #4]
	bl	verify_benchmark
	push {r1, r2}
	ldr r1, =7839
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	clz	r0, r0
	lsrs	r0, r0, #5
	add	sp, #12
	ldr	pc, [sp], #4
	nop
initialise_board:
	mov	r1, #3758153728	
	mov	r2, #4096	
	ldr	r3, [r1, #3580]	
	movt	r2, #57344	
	orr	r3, r3, #16777216	
	movs	r0, #0
	str	r3, [r1, #3580]	
	str	r0, [r2, #4]
	bx	lr
	nop
start_trigger:
	mov	r3, #4096	
	movt	r3, #57344	
	ldr	r2, [r3, #0]
	orr	r2, r2, #1
	str	r2, [r3, #0]
	bx	lr
	nop
stop_trigger:
	mov	r3, #4096	
	movt	r3, #57344	
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r2, [r3, #0]
	bic	r2, r2, #1
	str	r2, [r3, #0]
	bx	lr
	nop
upsampleCb:
	movw	r3, #1040	
	movt	r3, #8192	
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	add	r7, r3, r0, lsl #1
	add	r6, r3, #128	
	add	r3, r3, #384	
	add	r4, r7, #8
	add	r6, r1
	adds	r5, r3, r1
	adds	r7, #72	
lab35: 	sub	lr, r4, #8
	add	ip, r6, #2
	adds	r0, r5, #2
lab34: 	ldrsh	r3, [lr], #2
	ldrb	r8, [ip, #-2]
	uxtb	r1, r3
	add	r2, r1, r1, lsl #2
	add	r2, r1, r2, lsl #1
	lsrs	r2, r2, #5
	subs	r2, #44	
	uxth	r2, r2
	sub	r8, r8, r2
	uxth	r8, r8
	cmp	r8, #255	
	mov	r3, r1
	bls	lab10
	sxth	r9, r8
	cmp	r9, #0
	blt	lab11
	cmp	r9, #255	
	bgt	lab12
lab10: 	uxtb	r9, r8
lab36: 	ldrb	r8, [ip, #-1]
	strb	r9, [ip, #-2]
	sub	r8, r8, r2
	uxth	r8, r8
	cmp	r8, #255	
	bls	lab13
	sxth	r9, r8
	cmp	r9, #0
	blt	lab14
	cmp	r9, #255	
	bgt	lab15
lab13: 	uxtb	r9, r8
lab37: 	ldrb	r8, [ip, #6]
	strb	r9, [ip, #-1]
	sub	r8, r8, r2
	uxth	r8, r8
	cmp	r8, #255	
	bls	lab16
	sxth	r9, r8
	cmp	r9, #0
	blt	lab17
	cmp	r9, #255	
	bgt	lab18
lab16: 	uxtb	r8, r8
lab38: 	ldrb	r9, [ip, #7]
	strb	r8, [ip, #6]
	sub	r2, r9, r2
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab19
	sxth	r8, r2
	cmp	r8, #0
	blt	lab20
	cmp	r8, #255	
	bgt	lab21
lab19: 	uxtb	r2, r2
lab39: 	add	r1, r1, r1, lsl #1
	subs	r3, #227	
	add	r1, r1, r1, lsl #5
	add	r1, r3, r1, lsr #7
	ldrb	r8, [r0, #-2]
	strb	r2, [ip, #7]
	uxth	r3, r1
	add	r1, r3, r8
	uxth	r1, r1
	cmp	r1, #255	
	bls	lab22
	sxth	r2, r1
	cmp	r2, #0
	blt	lab23
	cmp	r2, #255	
	bgt	lab24
lab22: 	uxtb	r1, r1
lab40: 	ldrb	r2, [r0, #-1]
	strb	r1, [r0, #-2]
	add	r2, r3
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab25
	sxth	r1, r2
	cmp	r1, #0
	blt	lab26
	cmp	r1, #255	
	bgt	lab27
lab25: 	uxtb	r1, r2
lab41: 	ldrb	r2, [r0, #6]
	strb	r1, [r0, #-1]
	add	r2, r3
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab28
	sxth	r1, r2
	cmp	r1, #0
	blt	lab29
	cmp	r1, #255	
	bgt	lab30
lab28: 	uxtb	r2, r2
lab42: 	ldrb	r1, [r0, #7]
	strb	r2, [r0, #6]
	add	r3, r1
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab31
	sxth	r2, r3
	cmp	r2, #0
	blt	lab32
	cmp	r2, #255	
	bgt	lab33
lab31: 	uxtb	r3, r3
lab43: 	cmp	lr, r4
	strb	r3, [r0, #7]
	add	ip, ip, #2
	add	r0, r0, #2
	bne	lab34
	add	r4, lr, #16
	cmp	r4, r7
	add	r6, r6, #16
	add	r5, r5, #16
	bne	lab35
	nop
	push {r1, r2}
	ldr r1, =7027
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab11: 	mov	r9, #0
	b	lab36
lab14: 	mov	r9, #0
	b	lab37
lab17: 	mov	r8, #0
	b	lab38
lab20: 	movs	r2, #0
	b	lab39
lab23: 	movs	r1, #0
	b	lab40
lab26: 	movs	r1, #0
	b	lab41
lab29: 	movs	r2, #0
	b	lab42
lab32: 	movs	r3, #0
	b	lab43
lab30: 	movs	r2, #255	
	b	lab42
lab33: 	movs	r3, #255	
	b	lab43
lab24: 	movs	r1, #255	
	b	lab40
lab27: 	movs	r1, #255	
	b	lab41
lab18: 	mov	r8, #255	
	b	lab38
lab21: 	movs	r2, #255	
	b	lab39
lab12: 	mov	r9, #255	
	b	lab36
lab15: 	mov	r9, #255	
	b	lab37
	nop
upsampleCbH:
	movw	r3, #1040	
	movt	r3, #8192	
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	add	r6, r3, r0, lsl #1
	add	r5, r3, #128	
	add	r3, r3, #384	
	add	lr, r6, #8
	add	r5, r1
	adds	r4, r3, r1
	adds	r6, #136	
lab57: 	sub	ip, lr, #8
	adds	r0, r5, #2
	adds	r1, r4, #2
lab56: 	ldrsh	r2, [ip], #2
	ldrb	r8, [r0, #-2]
	uxtb	r3, r2
	add	r7, r3, r3, lsl #2
	add	r7, r3, r7, lsl #1
	lsrs	r7, r7, #5
	subs	r7, #44	
	uxth	r7, r7
	sub	r8, r8, r7
	uxth	r8, r8
	cmp	r8, #255	
	mov	r2, r3
	bls	lab44
	sxth	r9, r8
	cmp	r9, #0
	blt	lab45
	cmp	r9, #255	
	bgt	lab46
lab44: 	uxtb	r8, r8
lab58: 	ldrb	r9, [r0, #-1]
	strb	r8, [r0, #-2]
	sub	r7, r9, r7
	uxth	r7, r7
	cmp	r7, #255	
	bls	lab47
	sxth	r8, r7
	cmp	r8, #0
	blt	lab48
	cmp	r8, #255	
	bgt	lab49
lab47: 	uxtb	r7, r7
lab59: 	add	r3, r3, r3, lsl #1
	sub	r8, r2, #227	
	add	r3, r3, r3, lsl #5
	ldrb	r2, [r1, #-2]
	strb	r7, [r0, #-1]
	add	r3, r8, r3, lsr #7
	uxth	r3, r3
	add	r2, r3
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab50
	sxth	r7, r2
	cmp	r7, #0
	blt	lab51
	cmp	r7, #255	
	bgt	lab52
lab50: 	uxtb	r2, r2
lab60: 	ldrb	r7, [r1, #-1]
	strb	r2, [r1, #-2]
	add	r3, r7
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab53
	sxth	r2, r3
	cmp	r2, #0
	blt	lab54
	cmp	r2, #255	
	bgt	lab55
lab53: 	uxtb	r3, r3
lab61: 	cmp	ip, lr
	strb	r3, [r1, #-1]
	add	r0, r0, #2
	add	r1, r1, #2
	bne	lab56
	add	lr, ip, #16
	cmp	r6, lr
	add	r5, r5, #8
	add	r4, r4, #8
	bne	lab57
	nop
	push {r1, r2}
	ldr r1, =7380
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab45: 	mov	r8, #0
	b	lab58
lab48: 	movs	r7, #0
	b	lab59
lab51: 	movs	r2, #0
	b	lab60
lab54: 	movs	r3, #0
	b	lab61
lab52: 	movs	r2, #255	
	b	lab60
lab55: 	movs	r3, #255	
	b	lab61
lab46: 	mov	r8, #255	
	b	lab58
lab49: 	movs	r7, #255	
	b	lab59
upsampleCbV:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r5, #1040	
	movt	r5, #8192	
	add	r6, r5, #128	
	add	r7, r5, #384	
	add	r6, r1
	add	r5, r5, r0, lsl #1
	add	r7, r1
	adds	r5, #16
	add	r8, r6, #64	
lab78: 	sub	r1, r5, #16
	subs	r4, r6, #1
	add	lr, r7, #4294967295	
	add	ip, r6, #7
	adds	r0, r7, #7
	b	lab62
lab75: 	cmp	fp, #255	
	bgt	lab63
lab74: 	uxtb	sl, sl
lab76: 	strb	sl, [r4]
	ldrb	sl, [ip, #1]
	sub	r2, sl, r2
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab64
	sxth	sl, r2
	cmp	sl, #0
	blt	lab65
	cmp	sl, #255	
	bgt	lab66
lab64: 	uxtb	r2, r2
lab79: 	add	r3, r3, r3, lsl #1
	sub	sl, r9, #227	
	add	r3, r3, r3, lsl #5
	ldrb	r9, [lr, #1]
	strb	r2, [ip, #1]!
	add	r3, sl, r3, lsr #7
	uxth	r3, r3
	add	r9, r3
	uxth	r9, r9
	cmp	r9, #255	
	bls	lab67
	sxth	r2, r9
	cmp	r2, #0
	blt	lab68
	cmp	r2, #255	
	bgt	lab69
lab67: 	uxtb	r9, r9
lab77: 	strb	r9, [lr, #1]!
	ldrb	r9, [r0, #1]
	add	r3, r9
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab70
	sxth	r2, r3
	cmp	r2, #0
	blt	lab71
	cmp	r2, #255	
	bgt	lab72
lab70: 	uxtb	r3, r3
lab80: 	cmp	r1, r5
	strb	r3, [r0, #1]!
	beq	lab73
lab62: 	ldrsh	r9, [r1], #2
	ldrb	sl, [r4, #1]!
	uxtb	r3, r9
	add	r2, r3, r3, lsl #2
	add	r2, r3, r2, lsl #1
	lsrs	r2, r2, #5
	subs	r2, #44	
	uxth	r2, r2
	sub	sl, sl, r2
	uxth	sl, sl
	cmp	sl, #255	
	mov	r9, r3
	bls	lab74
	sxth	fp, sl
	cmp	fp, #0
	bge	lab75
	mov	sl, #0
	b	lab76
lab68: 	mov	r9, #0
	b	lab77
lab71: 	movs	r3, #0
	cmp	r1, r5
	strb	r3, [r0, #1]!
	bne	lab62
lab73: 	adds	r6, #16
	cmp	r8, r6
	add	r7, r7, #16
	add	r5, r1, #16
	bne	lab78
	nop
	push {r1, r2}
	ldr r1, =2551
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab65: 	movs	r2, #0
	b	lab79
lab66: 	movs	r2, #255	
	b	lab79
lab63: 	mov	sl, #255	
	b	lab76
lab69: 	mov	r9, #255	
	b	lab77
lab72: 	movs	r3, #255	
	b	lab80
upsampleCr:
	movw	r3, #1040	
	movt	r3, #8192	
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	add	r6, r3, r0, lsl #1
	add	r5, r3, #640	
	adds	r3, #128	
	add	lr, r6, #8
	add	r5, r1
	adds	r4, r3, r1
	adds	r6, #72	
lab106: 	sub	ip, lr, #8
	adds	r0, r5, #2
	adds	r1, r4, #2
lab105: 	ldrsh	r8, [ip], #2
	ldrb	r7, [r0, #-2]
	uxtb	r2, r8
	add	r9, r2, r2, lsl #1
	add	r9, r9, r9, lsl #4
	add	r9, r2, r9, lsl #1
	sub	r3, r2, #179	
	add	r3, r3, r9, lsr #8
	uxth	r3, r3
	add	r7, r3
	uxth	r7, r7
	cmp	r7, #255	
	bls	lab81
	sxth	r8, r7
	cmp	r8, #0
	blt	lab82
	cmp	r8, #255	
	bgt	lab83
lab81: 	uxtb	r8, r7
lab107: 	ldrb	r7, [r0, #-1]
	strb	r8, [r0, #-2]
	add	r7, r3
	uxth	r7, r7
	cmp	r7, #255	
	bls	lab84
	sxth	r8, r7
	cmp	r8, #0
	blt	lab85
	cmp	r8, #255	
	bgt	lab86
lab84: 	uxtb	r8, r7
lab108: 	ldrb	r7, [r0, #6]
	strb	r8, [r0, #-1]
	add	r7, r3
	uxth	r7, r7
	cmp	r7, #255	
	bls	lab87
	sxth	r8, r7
	cmp	r8, #0
	blt	lab88
	cmp	r8, #255	
	bgt	lab89
lab87: 	uxtb	r7, r7
lab109: 	ldrb	r8, [r0, #7]
	strb	r7, [r0, #6]
	add	r3, r8
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab90
	sxth	r7, r3
	cmp	r7, #0
	blt	lab91
	cmp	r7, #255	
	bgt	lab92
lab90: 	uxtb	r3, r3
lab110: 	rsb	r7, r2, r2, lsl #4
	add	r2, r2, r7, lsl #2
	rsb	r2, r2, r2, lsl #2
	lsrs	r2, r2, #8
	ldrb	r7, [r1, #-2]
	strb	r3, [r0, #7]
	subs	r2, #91	
	uxth	r2, r2
	subs	r7, r7, r2
	uxth	r7, r7
	cmp	r7, #255	
	bls	lab93
	sxth	r3, r7
	cmp	r3, #0
	blt	lab94
	cmp	r3, #255	
	bgt	lab95
lab93: 	uxtb	r7, r7
lab111: 	ldrb	r3, [r1, #-1]
	strb	r7, [r1, #-2]
	subs	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab96
	sxth	r7, r3
	cmp	r7, #0
	blt	lab97
	cmp	r7, #255	
	bgt	lab98
lab96: 	uxtb	r7, r3
lab112: 	ldrb	r3, [r1, #6]
	strb	r7, [r1, #-1]
	subs	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab99
	sxth	r7, r3
	cmp	r7, #0
	blt	lab100
	cmp	r7, #255	
	bgt	lab101
lab99: 	uxtb	r7, r3
lab113: 	ldrb	r3, [r1, #7]
	strb	r7, [r1, #6]
	subs	r2, r3, r2
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab102
	sxth	r3, r2
	cmp	r3, #0
	blt	lab103
	cmp	r3, #255	
	bgt	lab104
lab102: 	uxtb	r2, r2
lab114: 	cmp	ip, lr
	strb	r2, [r1, #7]
	add	r0, r0, #2
	add	r1, r1, #2
	bne	lab105
	add	lr, ip, #16
	cmp	lr, r6
	add	r5, r5, #16
	add	r4, r4, #16
	bne	lab106
	nop
	push {r1, r2}
	ldr r1, =1300
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab82: 	mov	r8, #0
	b	lab107
lab85: 	mov	r8, #0
	b	lab108
lab88: 	movs	r7, #0
	b	lab109
lab91: 	movs	r3, #0
	b	lab110
lab94: 	movs	r7, #0
	b	lab111
lab97: 	movs	r7, #0
	b	lab112
lab100: 	movs	r7, #0
	b	lab113
lab103: 	movs	r2, #0
	b	lab114
lab101: 	movs	r7, #255	
	b	lab113
lab104: 	movs	r2, #255	
	b	lab114
lab95: 	movs	r7, #255	
	b	lab111
lab98: 	movs	r7, #255	
	b	lab112
lab89: 	movs	r7, #255	
	b	lab109
lab92: 	movs	r3, #255	
	b	lab110
lab83: 	mov	r8, #255	
	b	lab107
lab86: 	mov	r8, #255	
	b	lab108
	nop
upsampleCrH:
	movw	r3, #1040	
	movt	r3, #8192	
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	add	r6, r3, r0, lsl #1
	add	r5, r3, #640	
	adds	r3, #128	
	add	lr, r6, #8
	add	r5, r1
	adds	r4, r3, r1
	adds	r6, #136	
lab128: 	sub	ip, lr, #8
	adds	r0, r5, #2
	adds	r1, r4, #2
lab127: 	ldrsh	r3, [ip], #2
	ldrb	r7, [r0, #-2]
	uxtb	r2, r3
	add	r8, r2, r2, lsl #1
	add	r8, r8, r8, lsl #4
	add	r8, r2, r8, lsl #1
	sub	r3, r2, #179	
	add	r3, r3, r8, lsr #8
	uxth	r3, r3
	add	r7, r3
	uxth	r7, r7
	cmp	r7, #255	
	bls	lab115
	sxth	r8, r7
	cmp	r8, #0
	blt	lab116
	cmp	r8, #255	
	bgt	lab117
lab115: 	uxtb	r7, r7
lab129: 	ldrb	r8, [r0, #-1]
	strb	r7, [r0, #-2]
	add	r3, r8
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab118
	sxth	r7, r3
	cmp	r7, #0
	blt	lab119
	cmp	r7, #255	
	bgt	lab120
lab118: 	uxtb	r3, r3
lab130: 	rsb	r7, r2, r2, lsl #4
	add	r2, r2, r7, lsl #2
	rsb	r2, r2, r2, lsl #2
	lsrs	r2, r2, #8
	ldrb	r7, [r1, #-2]
	strb	r3, [r0, #-1]
	subs	r2, #91	
	uxth	r2, r2
	subs	r7, r7, r2
	uxth	r7, r7
	cmp	r7, #255	
	bls	lab121
	sxth	r3, r7
	cmp	r3, #0
	blt	lab122
	cmp	r3, #255	
	bgt	lab123
lab121: 	uxtb	r7, r7
lab131: 	ldrb	r3, [r1, #-1]
	strb	r7, [r1, #-2]
	subs	r2, r3, r2
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab124
	sxth	r3, r2
	cmp	r3, #0
	blt	lab125
	cmp	r3, #255	
	bgt	lab126
lab124: 	uxtb	r2, r2
lab132: 	cmp	ip, lr
	strb	r2, [r1, #-1]
	add	r0, r0, #2
	add	r1, r1, #2
	bne	lab127
	add	lr, ip, #16
	cmp	r6, lr
	add	r5, r5, #8
	add	r4, r4, #8
	bne	lab128
	nop
	push {r1, r2}
	ldr r1, =5318
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab116: 	movs	r7, #0
	b	lab129
lab119: 	movs	r3, #0
	b	lab130
lab122: 	movs	r7, #0
	b	lab131
lab125: 	movs	r2, #0
	b	lab132
lab123: 	movs	r7, #255	
	b	lab131
lab126: 	movs	r2, #255	
	b	lab132
lab117: 	movs	r7, #255	
	b	lab129
lab120: 	movs	r3, #255	
	b	lab130
upsampleCrV:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r5, #1040	
	movt	r5, #8192	
	add	r6, r5, #640	
	add	r7, r5, #128	
	add	r6, r1
	add	r5, r5, r0, lsl #1
	add	r7, r1
	adds	r5, #16
	add	r8, r6, #64	
lab149: 	sub	r1, r5, #16
	subs	r4, r6, #1
	add	lr, r7, #4294967295	
	add	ip, r6, #7
	adds	r0, r7, #7
	b	lab133
lab146: 	cmp	sl, #255	
	bgt	lab134
lab145: 	uxtb	r9, r9
lab147: 	strb	r9, [r4]
	ldrb	r9, [ip, #1]
	add	r3, r9
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab135
	sxth	r9, r3
	cmp	r9, #0
	blt	lab136
	cmp	r9, #255	
	bgt	lab137
lab135: 	uxtb	r3, r3
lab150: 	rsb	r9, r2, r2, lsl #4
	add	r2, r2, r9, lsl #2
	rsb	r2, r2, r2, lsl #2
	lsrs	r2, r2, #8
	ldrb	r9, [lr, #1]
	strb	r3, [ip, #1]!
	subs	r2, #91	
	uxth	r2, r2
	sub	r9, r9, r2
	uxth	r9, r9
	cmp	r9, #255	
	bls	lab138
	sxth	r3, r9
	cmp	r3, #0
	blt	lab139
	cmp	r3, #255	
	bgt	lab140
lab138: 	uxtb	r9, r9
lab148: 	strb	r9, [lr, #1]!
	ldrb	r3, [r0, #1]
	subs	r2, r3, r2
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab141
	sxth	r3, r2
	cmp	r3, #0
	blt	lab142
	cmp	r3, #255	
	bgt	lab143
lab141: 	uxtb	r2, r2
lab151: 	cmp	r1, r5
	strb	r2, [r0, #1]!
	beq	lab144
lab133: 	ldrsh	r9, [r1], #2
	uxtb	r2, r9
	add	sl, r2, r2, lsl #1
	add	sl, sl, sl, lsl #4
	add	sl, r2, sl, lsl #1
	sub	r3, r2, #179	
	ldrb	r9, [r4, #1]!
	add	r3, r3, sl, lsr #8
	uxth	r3, r3
	add	r9, r3
	uxth	r9, r9
	cmp	r9, #255	
	bls	lab145
	sxth	sl, r9
	cmp	sl, #0
	bge	lab146
	mov	r9, #0
	b	lab147
lab139: 	mov	r9, #0
	b	lab148
lab142: 	movs	r2, #0
	cmp	r1, r5
	strb	r2, [r0, #1]!
	bne	lab133
lab144: 	adds	r6, #16
	cmp	r6, r8
	add	r7, r7, #16
	add	r5, r1, #16
	bne	lab149
	nop
	push {r1, r2}
	ldr r1, =1398
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab136: 	movs	r3, #0
	b	lab150
lab137: 	movs	r3, #255	
	b	lab150
lab134: 	mov	r9, #255	
	b	lab147
lab140: 	mov	r9, #255	
	b	lab148
lab143: 	movs	r2, #255	
	b	lab151
	nop
getChar:
	push	{r4, lr}
	movw	r4, #1040	
	movt	r4, #8192	
	ldrb	r2, [r4, #896]	
	cmp r2, #0
	bne lab152
	movs	r1, #4
	strb	r2, [r4, #896]	
	strb	r1, [r4, #897]	
	ldr	r3, [r4, #900]	
	ldr	ip, [r4, #1160]	
	add	r2, r4, #896	
	movs	r1, #252	
	add	r0, r4, #908	
	blx	ip
	cmp r0, #0
	beq lab153
	strb	r0, [r4, #1164]	
lab153: 	ldrb	r2, [r4, #896]	
	cmp r2, #0
	beq lab154
lab152: 	ldrb	r3, [r4, #897]	
	adds	r1, r4, r3
	subs	r2, #1
	adds	r3, #1
	ldrb	r0, [r1, #904]	
	strb	r2, [r4, #896]	
	strb	r3, [r4, #897]	
	nop
	push {r1, r2}
	ldr r1, =7939
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
lab154: 	ldrb	r3, [r4, #1165]	
	mvns	r3, r3
	uxtb	r3, r3
	cmp	r3, #0
	strb	r3, [r4, #1165]	
	ite	ne
	movne	r0, #255	
	moveq	r0, #217	
	nop
	push {r1, r2}
	ldr r1, =7367
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
getBits.constprop.1:
	push	{r3, r4, r5, lr}
	movw	r4, #1040	
	movt	r4, #8192	
	ldrh	r5, [r4, #1166]	
	ldrb	r3, [r4, #1168]	
	lsl	r3, r5, r3
	strh	r3, [r4, #1166]	
push {r1, r2}
	ldr r1, =2507
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =2507
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r3, [r4, #1166]	
	ldrb	r2, [r4, #1168]	
	orrs	r3, r0
	uxth	r3, r3
	rsb	r0, r2, #8
	lsls	r3, r0
	bic	r5, r5, #255	
	ubfx	r1, r3, #8, #8
	cmp	r2, #7
	orr	r5, r5, r1
	bls	lab155
	subs	r2, #8
	lsls	r3, r3, #8
	strb	r2, [r4, #1168]	
	strh	r3, [r4, #1166]	
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =2937
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab155: 	uxth	r3, r3
	lsls	r3, r2
	strh	r3, [r4, #1166]	
push {r1, r2}
	ldr r1, =6853
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =6853
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r2, [r4, #1166]	
	ldrb	r3, [r4, #1168]	
	orrs	r0, r2
	rsb	r3, r3, #8
	uxth	r0, r0
	lsls	r0, r3
	strh	r0, [r4, #1166]	
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =2952
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	nop
getOctet.part.0:
	push	{r4, lr}
	movw	r4, #1040	
	movt	r4, #8192	
	ldrb	r2, [r4, #896]	
	cmp r2, #0
	bne lab156
	movs	r1, #4
	strb	r2, [r4, #896]	
	strb	r1, [r4, #897]	
	ldr	r3, [r4, #900]	
	ldr	ip, [r4, #1160]	
	add	r2, r4, #896	
	movs	r1, #252	
	add	r0, r4, #908	
	blx	ip
	cmp r0, #0
	beq lab157
	strb	r0, [r4, #1164]	
lab157: 	ldrb	r2, [r4, #896]	
	cmp r2, #0
	beq lab158
lab156: 	ldrb	r3, [r4, #897]	
	adds	r0, r4, r3
	subs	r2, #1
	mov	r1, r3
	ldrb	r0, [r0, #904]	
	adds	r3, #1
	uxtb	r2, r2
	uxtb	r3, r3
	strb	r2, [r4, #896]	
	strb	r3, [r4, #897]	
	cmp r0, #0
	bne lab159
	nop
	push {r1, r2}
	ldr r1, =4613
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
lab158: 	ldrb	r3, [r4, #1165]	
	mvns	r3, r3
	uxtb	r3, r3
	strb	r3, [r4, #1165]	
	cmp r3, #0
	beq lab160
	ldrb	r3, [r4, #897]	
	subs	r1, r3, #1
	movs	r0, #255	
	uxtb	r1, r1
lab159: 	add	r1, r4
	subs	r3, #2
	uxtb	r3, r3
	strb	r0, [r1, #904]	
	adds	r1, r4, r3
	movs	r0, #255	
	adds	r2, #2
	strb	r0, [r1, #904]	
	strb	r3, [r4, #897]	
	strb	r2, [r4, #896]	
	nop
	push {r1, r2}
	ldr r1, =976
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
lab160: 	ldrb	r3, [r4, #897]	
	subs	r1, r3, #1
	movs	r0, #217	
	uxtb	r1, r1
	b	lab159
huffDecode:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r8, #1040	
	movt	r8, #8192	
	sub	sp, #12
	ldrh	r3, [r8, #1166]	
	ldrb	r5, [r8, #1168]	
	strd	r0, r1, [sp]
	lsrs	r4, r3, #15
	cmp	r5, #0
	beq	lab161
lab170: 	ldr	r1, [sp, #0]
	subs	r5, #1
	lsls	r3, r3, #1
	uxtb	r5, r5
	uxth	r3, r3
	strb	r5, [r8, #1168]	
	strh	r3, [r8, #1166]	
	uxth	r2, r4
	add	sl, r1, #30
	mov	r9, #0
	movw	fp, #65535	
	b	lab162
lab166: 	subs	r5, #1
	lsls	r3, r3, #1
	uxtb	r5, r5
	uxth	r3, r3
	cmp	r9, #16
	strb	r5, [r8, #1168]	
	strh	r3, [r8, #1166]	
	orr	r2, r6, r7
	beq	lab163
lab162: 	ldrh	r4, [sl, #2]!
	cmp	r4, r2
	mov	r0, r2, lsl #1
	bcc	lab164
	cmp	r4, fp
	bne	lab165
lab164: 	add	r9, r9, #1
	lsrs	r7, r3, #15
	uxth	r6, r0
	cmp	r5, #0
	bne	lab166
push {r1, r2}
	ldr r1, =3878
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =3878
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #255	
	mov	r4, r0
	beq	lab167
lab168: 	ldrh	r3, [r8, #1166]	
	ldrb	r5, [r8, #1168]	
	orrs	r3, r4
	adds	r5, #8
	uxth	r3, r3
	uxtb	r5, r5
	b	lab166
lab167:push {r1, r2}
	ldr r1, =939
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	getChar
	push {r1, r2}
	ldr r1, =939
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab168
	ldrb	r3, [r8, #896]	
	ldrb	r5, [r8, #897]	
	adds	r3, #2
	strb	r3, [r8, #896]	
	subs	r3, r5, #2
	uxtb	r3, r3
	subs	r5, #1
	uxtab	r5, r8, r5
	strb	r3, [r8, #897]	
	add	r3, r8
	strb	r0, [r5, #904]	
	strb	r4, [r3, #904]	
	b	lab168
lab163: 	movs	r0, #0
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =5477
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab165: 	ldr	r1, [sp, #0]
	add	r3, r1, r9
	ldrh	r1, [r1, r9, lsl #1]
	ldrb	r3, [r3, #64]	
	add	r3, r2
	subs	r3, r3, r1
	ldr	r2, [sp, #4]
	and	r3, r3, #255	
	ldrb	r0, [r2, r3]
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =2957
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab161:push {r1, r2}
	ldr r1, =683
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	getChar
	push {r1, r2}
	ldr r1, =683
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #255	
	mov	r5, r0
	beq	lab169
lab171: 	ldrh	r3, [r8, #1166]	
	orrs	r3, r5
	ldrb	r5, [r8, #1168]	
	adds	r5, #8
	uxth	r3, r3
	uxtb	r5, r5
	b	lab170
lab169:push {r1, r2}
	ldr r1, =6272
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	getOctet.part.0
	push {r1, r2}
	ldr r1, =6272
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab171
	nop
getBits.constprop.2:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	movw	r4, #1040	
	movt	r4, #8192	
	cmp	r0, #8
	ldrh	r7, [r4, #1166]	
	ldrb	r2, [r4, #1168]	
	mov	r5, r0
	bhi	lab172
	mov	r8, r0
	cmp	r8, r2
	mov	r3, r7
	bhi	lab173
lab175: 	rsb	r5, r5, #16
	sub	r2, r2, r8
	lsl	r3, r3, r8
	asr	r5, r7, r5
	strb	r2, [r4, #1168]	
	strh	r3, [r4, #1166]	
	uxth	r0, r5
	nop
	push {r1, r2}
	ldr r1, =2535
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab172: 	sub	r3, r0, #8
	lsl	r2, r7, r2
	uxtb	r8, r3
	strh	r2, [r4, #1166]	
push {r1, r2}
	ldr r1, =5173
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =5173
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #255	
	mov	r6, r0
	beq	lab174
lab177: 	ldrh	r3, [r4, #1166]	
	ldrb	r2, [r4, #1168]	
	orrs	r6, r3
	uxth	r6, r6
	rsb	r3, r2, #8
	lsls	r6, r3
	ubfx	r3, r6, #8, #8
	bic	r7, r7, #255	
	cmp	r8, r2
	orr	r7, r7, r3
	uxth	r3, r6
	bls	lab175
lab173: 	lsls	r3, r2
	strh	r3, [r4, #1166]	
push {r1, r2}
	ldr r1, =4906
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =4906
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #255	
	mov	r6, r0
	beq	lab176
lab178: 	ldrh	r0, [r4, #1166]	
	ldrb	r3, [r4, #1168]	
	orrs	r6, r0
	sub	r2, r8, r3
	uxth	r6, r6
	adds	r3, #8
	rsb	r5, r5, #16
	lsls	r6, r2
	sub	r3, r3, r8
	asr	r5, r7, r5
	strh	r6, [r4, #1166]	
	strb	r3, [r4, #1168]	
	uxth	r0, r5
	nop
	push {r1, r2}
	ldr r1, =293
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab174:push {r1, r2}
	ldr r1, =4867
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	getOctet.part.0
	push {r1, r2}
	ldr r1, =4867
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab177
lab176:push {r1, r2}
	ldr r1, =2596
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	getOctet.part.0
	push {r1, r2}
	ldr r1, =2596
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab178
processMarkers:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r2, #63496	
	sub	sp, #44	
	movw	r6, #1040	
	movt	r6, #8192	
	movt	r2, #7
	str	r2, [sp, #12]
	movw	r2, #764	
	movt	r2, #8192	
	ldrh	r4, [r6, #1166]	
	ldrb	r3, [r6, #1168]	
	str	r0, [sp, #20]
	str	r2, [sp, #16]
lab180: 	cmp	r3, #7
	bls	lab179
lab211: 	asrs	r2, r4, #8
	subs	r3, #8
	uxtb	r3, r3
	lsls	r1, r4, #8
	cmp	r2, #255	
	strb	r3, [r6, #1168]	
	uxth	r4, r1
	bne	lab180
lab182: 	cmp	r3, #7
	sub	r0, r3, #8
	mov	r1, r4, lsl #8
	mov	r2, r4, asr #8
	bls	lab181
lab212: 	uxtb	r3, r0
	uxth	r4, r1
	cmp	r2, #255	
	strb	r3, [r6, #1168]	
	strh	r4, [r6, #1166]	
	beq	lab182
	uxtb	r1, r2
	cmp	r2, #0
	beq	lab180
lab213: 	cmp	r1, #215	
	bhi	lab183
	cmp	r1, #196	
	bhi	lab184
	bne	lab185
push {r1, r2}
	ldr r1, =4386
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.1
	push {r1, r2}
	ldr r1, =4386
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #1
	bls	lab186
	subs	r3, r0, #2
	uxth	r3, r3
	str	r3, [sp, #4]
	cmp	r3, #0
	beq	lab186
	ldrh	r4, [r6, #1166]	
	ldrb	r3, [r6, #1168]	
	add	r7, sp, #39	
	mov	fp, r6
lab210: 	cmp	r3, #7
	bls	lab187
	subs	r3, #8
	uxtb	r3, r3
	lsls	r2, r4, #8
	mov	r5, r4
	strb	r3, [fp, #1168]	
	uxth	r4, r2
lab240: 	ubfx	r2, r5, #8, #8
	ands	r9, r2, #14
	mov	r5, r5, asr #8
	bne	lab188
	and	r0, r2, #240	
	cmp	r0, #16
	bhi	lab188
	lsrs	r2, r2, #3
	ldr	r6, [sp, #16]
	and	r1, r2, #2
	and	r2, r5, #1
	orr	r0, r1, r2
	add	r2, r6, r0, lsl #2
	ldrb	r5, [fp, #1428]	
	ldr	sl, [r6, r0, lsl #2]
	ldr	r6, [r2, #16]
	str	r0, [sp, #8]
	movs	r2, #1
	lsls	r2, r0
	orrs	r2, r5
	strb	r2, [fp, #1428]	
	add	r8, sp, #23
	mov	r5, r9
lab190: 	asrs	r1, r4, #8
	cmp	r3, #7
	sub	ip, r3, #8
	mov	r2, r4, lsl #8
	add	r0, r5, r1
	bls	lab189
	strb	r1, [r8, #1]!
	uxtb	r3, ip
	cmp	r7, r8
	strb	r3, [fp, #1168]	
	uxth	r4, r2
	uxth	r5, r0
	bne	lab190
lab223: 	ldr	r2, [sp, #8]
	cmp	r2, #2
	ite	lt
	movlt	r2, #12
	movge	r2, #255	
	cmp	r2, r5
	bcc	lab188
	cmp r5, #0
	beq lab191
lab193: 	add	r1, r9, #1
	cmp	r3, #7
	sub	ip, r3, #8
	mov	lr, r4, lsl #8
	mov	r2, r4, asr #8
	uxtb	r0, r1
	bls	lab192
	uxtb	r3, ip
	cmp	r0, r5
	strb	r2, [r6, r9]
	strb	r3, [fp, #1168]	
	uxth	r4, lr
	uxtb	r9, r1
	bcc	lab193
lab191: 	ldr	r1, [sp, #4]
	add	r2, r5, #17
	uxth	r2, r2
	cmp	r2, r1
	bhi	lab188
	subs	r2, r1, r2
	ldrb	r1, [sp, #24]
	uxth	r2, r2
	str	r2, [sp, #4]
	cmp	r1, #0
	beq	lab194
	movs	r2, #0
	strh	r2, [sl]
	strb	r2, [sl, #64]	
	subs	r2, r1, #1
	strh	r2, [sl, #32]
	lsls	r2, r1, #1
lab239: 	ldrb	r0, [sp, #25]
	cmp	r0, #0
	beq	lab195
	strh	r2, [sl, #2]
	add	r2, r0
	uxth	r2, r2
	add	r0, r1
	strb	r1, [sl, #65]	
	uxtb	r1, r0
	subs	r0, r2, #1
	strh	r0, [sl, #34]	
lab238: 	ldrb	r0, [sp, #26]
	lsls	r2, r2, #1
	uxth	r2, r2
	cmp	r0, #0
	beq	lab196
	strh	r2, [sl, #4]
	add	r2, r0
	uxth	r2, r2
	add	r0, r1
	strb	r1, [sl, #66]	
	uxtb	r1, r0
	subs	r0, r2, #1
	strh	r0, [sl, #36]	
lab237: 	ldrb	r0, [sp, #27]
	lsls	r2, r2, #1
	uxth	r2, r2
	cmp	r0, #0
	beq	lab197
	strh	r2, [sl, #6]
	add	r2, r0
	uxth	r2, r2
	add	r0, r1
	strb	r1, [sl, #67]	
	uxtb	r1, r0
	subs	r0, r2, #1
	strh	r0, [sl, #38]	
lab236: 	ldrb	r0, [sp, #28]
	lsls	r2, r2, #1
	uxth	r2, r2
	cmp	r0, #0
	beq	lab198
	strh	r2, [sl, #8]
	add	r2, r0
	uxth	r2, r2
	add	r0, r1
	strb	r1, [sl, #68]	
	uxtb	r1, r0
	subs	r0, r2, #1
	strh	r0, [sl, #40]	
lab235: 	ldrb	r0, [sp, #29]
	lsls	r2, r2, #1
	uxth	r2, r2
	cmp	r0, #0
	beq	lab199
	strh	r2, [sl, #10]
	add	r2, r0
	uxth	r2, r2
	add	r0, r1
	strb	r1, [sl, #69]	
	uxtb	r1, r0
	subs	r0, r2, #1
	strh	r0, [sl, #42]	
lab234: 	ldrb	r0, [sp, #30]
	lsls	r2, r2, #1
	uxth	r2, r2
	cmp	r0, #0
	beq	lab200
	strh	r2, [sl, #12]
	add	r2, r0
	uxth	r2, r2
	add	r0, r1
	strb	r1, [sl, #70]	
	uxtb	r1, r0
	subs	r0, r2, #1
	strh	r0, [sl, #44]	
lab233: 	ldrb	r0, [sp, #31]
	lsls	r2, r2, #1
	uxth	r2, r2
	cmp	r0, #0
	beq	lab201
	strh	r2, [sl, #14]
	add	r2, r0
	uxth	r2, r2
	add	r0, r1
	strb	r1, [sl, #71]	
	uxtb	r1, r0
	subs	r0, r2, #1
	strh	r0, [sl, #46]	
lab232: 	ldrb	r0, [sp, #32]
	lsls	r2, r2, #1
	uxth	r2, r2
	cmp	r0, #0
	beq	lab202
	strh	r2, [sl, #16]
	add	r2, r0
	uxth	r2, r2
	add	r0, r1
	strb	r1, [sl, #72]	
	uxtb	r1, r0
	subs	r0, r2, #1
	strh	r0, [sl, #48]	
lab231: 	ldrb	r0, [sp, #33]	
	lsls	r2, r2, #1
	uxth	r2, r2
	cmp	r0, #0
	beq	lab203
	strh	r2, [sl, #18]
	add	r2, r0
	uxth	r2, r2
	add	r0, r1
	strb	r1, [sl, #73]	
	uxtb	r1, r0
	subs	r0, r2, #1
	strh	r0, [sl, #50]	
lab230: 	ldrb	r0, [sp, #34]	
	lsls	r2, r2, #1
	uxth	r2, r2
	cmp	r0, #0
	beq	lab204
	strh	r2, [sl, #20]
	add	r2, r0
	uxth	r2, r2
	add	r0, r1
	strb	r1, [sl, #74]	
	uxtb	r1, r0
	subs	r0, r2, #1
	strh	r0, [sl, #52]	
lab229: 	ldrb	r0, [sp, #35]	
	lsls	r2, r2, #1
	uxth	r2, r2
	cmp	r0, #0
	beq	lab205
	strh	r2, [sl, #22]
	add	r2, r0
	uxth	r2, r2
	add	r0, r1
	strb	r1, [sl, #75]	
	uxtb	r1, r0
	subs	r0, r2, #1
	strh	r0, [sl, #54]	
lab228: 	ldrb	r0, [sp, #36]	
	lsls	r2, r2, #1
	uxth	r2, r2
	cmp	r0, #0
	beq	lab206
	strh	r2, [sl, #24]
	add	r2, r0
	uxth	r2, r2
	add	r0, r1
	strb	r1, [sl, #76]	
	uxtb	r1, r0
	subs	r0, r2, #1
	strh	r0, [sl, #56]	
lab227: 	ldrb	r0, [sp, #37]	
	lsls	r2, r2, #1
	uxth	r2, r2
	cmp	r0, #0
	beq	lab207
	strh	r2, [sl, #26]
	add	r2, r0
	uxth	r2, r2
	add	r0, r1
	strb	r1, [sl, #77]	
	uxtb	r1, r0
	subs	r0, r2, #1
	strh	r0, [sl, #58]	
lab226: 	ldrb	r0, [sp, #38]	
	lsls	r2, r2, #1
	uxth	r2, r2
	cmp	r0, #0
	beq	lab208
	strh	r2, [sl, #28]
	add	r2, r0
	uxth	r2, r2
	add	r0, r1
	strb	r1, [sl, #78]	
	uxtb	r1, r0
	subs	r0, r2, #1
	strh	r0, [sl, #60]	
lab225: 	ldrb	r0, [sp, #39]	
	cmp	r0, #0
	bne	lab209
	movw	r2, #65535	
	strh	r0, [sl, #30]
	strb	r0, [sl, #79]	
	strh	r2, [sl, #62]	
lab224: 	ldr	r2, [sp, #4]
	cmp	r2, #0
	bne	lab210
lab188: 	cmp	r3, #7
	mov	r6, fp
	bhi	lab211
lab179: 	lsl	r3, r4, r3
	strh	r3, [r6, #1166]	
push {r1, r2}
	ldr r1, =4563
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =4563
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r2, [r6, #1166]	
	ldrb	r3, [r6, #1168]	
	orrs	r2, r0
	rsb	r1, r3, #8
	uxth	r2, r2
	lsls	r2, r1
	asrs	r1, r4, #8
	cmp	r1, #255	
	uxth	r4, r2
	bne	lab180
	cmp	r3, #7
	sub	r0, r3, #8
	mov	r1, r4, lsl #8
	mov	r2, r4, asr #8
	bhi	lab212
lab181: 	lsl	r3, r4, r3
	strh	r3, [r6, #1166]	
push {r1, r2}
	ldr r1, =6837
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =6837
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r2, [r6, #1166]	
	ldrb	r3, [r6, #1168]	
	orrs	r0, r2
	uxth	r0, r0
	mov	r2, r4
	rsb	r1, r3, #8
	lsl	r4, r0, r1
	asrs	r2, r2, #8
	uxth	r4, r4
	cmp	r2, #255	
	strh	r4, [r6, #1166]	
	beq	lab182
	uxtb	r1, r2
	cmp	r2, #0
	beq	lab180
	b	lab213
lab183: 	cmp	r1, #219	
	beq	lab214
	bls	lab215
	cmp	r1, #221	
	bne	lab216
push {r1, r2}
	ldr r1, =6374
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.1
	push {r1, r2}
	ldr r1, =6374
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #4
	beq	lab217
lab186: 	ldrh	r4, [r6, #1166]	
	ldrb	r3, [r6, #1168]	
	b	lab180
lab185: 	cmp	r1, #1
	beq	lab218
	add	r3, r1, #64	
	uxtb	r3, r3
	cmp	r3, #3
	bhi	lab216
lab219: 	ldr	r3, [sp, #20]
	movs	r0, #0
	strb	r1, [r3, #0]
	add	sp, #44	
	nop
	push {r1, r2}
	ldr r1, =133
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab184: 	add	r3, r1, #59	
	uxtb	r2, r3
	movs	r3, #1
	lsls	r3, r2
	ldr	r2, [sp, #12]
	tst	r3, r2
	bne	lab218
	movw	r2, #1911	
	tst	r3, r2
	bne	lab219
	lsls	r3, r3, #24
	bpl	lab216
	movs	r0, #17
	add	sp, #44	
	nop
	push {r1, r2}
	ldr r1, =5180
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab215: 	bne	lab219
lab216:push {r1, r2}
	ldr r1, =392
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	getBits.constprop.1
	push {r1, r2}
	ldr r1, =392
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #1
	bls	lab186
	subs	r3, r0, #2
	uxth	r5, r3
	cmp	r5, #0
	beq	lab186
	ldrh	r4, [r6, #1166]	
	ldrb	r3, [r6, #1168]	
	b	lab220
lab221: 	subs	r3, #8
	uxtb	r3, r3
	lsls	r4, r4, #8
	strb	r3, [r6, #1168]	
	uxth	r4, r4
lab222: 	subs	r5, #1
	uxth	r5, r5
	cmp	r5, #0
	beq	lab180
lab220: 	cmp	r3, #7
	bhi	lab221
	lsls	r4, r3
	strh	r4, [r6, #1166]	
push {r1, r2}
	ldr r1, =7329
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =7329
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r4, [r6, #1166]	
	ldrb	r3, [r6, #1168]	
	orrs	r4, r0
	uxth	r4, r4
	rsb	r2, r3, #8
	lsls	r4, r2
	uxth	r4, r4
	b	lab222
lab218: 	movs	r0, #18
	add	sp, #44	
	nop
	push {r1, r2}
	ldr r1, =915
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab189: 	lsl	r3, r4, r3
	strh	r3, [fp, #1166]	
push {r1, r2}
	ldr r1, =8186
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =8186
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r1, [fp, #1166]	
	ldrb	r3, [fp, #1168]	
	asrs	r2, r4, #8
	strb	r2, [r8, #1]!
	orr	r4, r0, r1
	uxth	r4, r4
	rsb	r1, r3, #8
	lsls	r4, r1
	add	r5, r2
	cmp	r8, r7
	uxth	r4, r4
	uxth	r5, r5
	bne	lab190
	b	lab223
lab192: 	lsl	r3, r4, r3
	strh	r3, [fp, #1166]	
push {r1, r2}
	ldr r1, =6497
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =6497
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r2, [fp, #1166]	
	ldrb	r3, [fp, #1168]	
	asrs	r4, r4, #8
	strb	r4, [r6, r9]
	orrs	r2, r0
	add	r9, r9, #1
	uxtb	r1, r9
	uxth	r2, r2
	rsb	r4, r3, #8
	lsl	r4, r2, r4
	cmp	r1, r5
	mov	r9, r1
	uxth	r4, r4
	bcc	lab193
	b	lab191
lab209: 	lsls	r2, r2, #1
	uxth	r2, r2
	strb	r1, [sl, #79]	
	subs	r1, r0, #1
	add	r1, r2
	strh	r2, [sl, #30]
	strh	r1, [sl, #62]	
	b	lab224
lab208: 	strh	r0, [sl, #28]
	strb	r0, [sl, #78]	
	movw	r0, #65535	
	strh	r0, [sl, #60]	
	b	lab225
lab207: 	strh	r0, [sl, #26]
	strb	r0, [sl, #77]	
	movw	r0, #65535	
	strh	r0, [sl, #58]	
	b	lab226
lab206: 	strh	r0, [sl, #24]
	strb	r0, [sl, #76]	
	movw	r0, #65535	
	strh	r0, [sl, #56]	
	b	lab227
lab205: 	strh	r0, [sl, #22]
	strb	r0, [sl, #75]	
	movw	r0, #65535	
	strh	r0, [sl, #54]	
	b	lab228
lab204: 	strh	r0, [sl, #20]
	strb	r0, [sl, #74]	
	movw	r0, #65535	
	strh	r0, [sl, #52]	
	b	lab229
lab203: 	strh	r0, [sl, #18]
	strb	r0, [sl, #73]	
	movw	r0, #65535	
	strh	r0, [sl, #50]	
	b	lab230
lab202: 	strh	r0, [sl, #16]
	strb	r0, [sl, #72]	
	movw	r0, #65535	
	strh	r0, [sl, #48]	
	b	lab231
lab201: 	strh	r0, [sl, #14]
	strb	r0, [sl, #71]	
	movw	r0, #65535	
	strh	r0, [sl, #46]	
	b	lab232
lab200: 	strh	r0, [sl, #12]
	strb	r0, [sl, #70]	
	movw	r0, #65535	
	strh	r0, [sl, #44]	
	b	lab233
lab199: 	strh	r0, [sl, #10]
	strb	r0, [sl, #69]	
	movw	r0, #65535	
	strh	r0, [sl, #42]	
	b	lab234
lab198: 	strh	r0, [sl, #8]
	strb	r0, [sl, #68]	
	movw	r0, #65535	
	strh	r0, [sl, #40]	
	b	lab235
lab197: 	strh	r0, [sl, #6]
	strb	r0, [sl, #67]	
	movw	r0, #65535	
	strh	r0, [sl, #38]	
	b	lab236
lab196: 	strh	r0, [sl, #4]
	strb	r0, [sl, #66]	
	movw	r0, #65535	
	strh	r0, [sl, #36]	
	b	lab237
lab195: 	strh	r0, [sl, #2]
	strb	r0, [sl, #65]	
	movw	r0, #65535	
	strh	r0, [sl, #34]	
	b	lab238
lab194: 	movw	r2, #65535	
	strh	r2, [sl, #32]
	strh	r1, [sl]
	strb	r1, [sl, #64]	
	mov	r2, r1
	b	lab239
lab187: 	lsl	r3, r4, r3
	strh	r3, [fp, #1166]	
push {r1, r2}
	ldr r1, =5513
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =5513
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r5, r4
	ldrh	r4, [fp, #1166]	
	ldrb	r3, [fp, #1168]	
	orrs	r4, r0
	uxth	r4, r4
	rsb	r2, r3, #8
	lsls	r4, r2
	uxth	r4, r4
	b	lab240
lab214:push {r1, r2}
	ldr r1, =7807
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	getBits.constprop.1
	push {r1, r2}
	ldr r1, =7807
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #1
	bls	lab186
	subs	r3, r0, #2
	uxth	r5, r3
	cmp	r5, #0
	beq	lab186
	ldrb	r3, [r6, #1168]	
	ldrh	r9, [r6, #1166]	
	cmp	r3, #7
	mov	r8, #4
	bls	lab241
lab249: 	subs	r3, #8
	uxtb	r3, r3
	mov	r4, r9, lsl #8
	strb	r3, [r6, #1168]	
	uxth	r4, r4
lab250: 	mov	r1, r9, lsr #8
	tst	r1, #14
	mov	r7, r9, lsr #12
	ubfx	r2, r9, #8, #4
	bne	lab180
	cmp	r2, #0
	beq	lab242
	ldrb	r2, [r6, #1432]	
	orr	r2, r2, #2
	strb	r2, [r6, #1432]	
	cmp	r7, #0
	bne	lab243
	movw	r9, #2338	
	movt	r9, #8192	
	add	sl, r9, #128	
	b	lab244
lab246: 	strh	r0, [r9, #2]!
	cmp	sl, r9
	strb	r1, [r6, #1168]	
	strh	r2, [r6, #1166]	
	beq	lab245
lab247: 	ldrh	r4, [r6, #1166]	
	ldrb	r3, [r6, #1168]	
lab244: 	cmp	r3, #7
	mov	r0, r4, asr #8
	sub	r1, r3, #8
	mov	r2, r4, lsl #8
	bhi	lab246
	lsl	r3, r4, r3
	strh	r3, [r6, #1166]	
push {r1, r2}
	ldr r1, =790
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =790
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r3, [r6, #1166]	
	ldrb	r2, [r6, #1168]	
	asrs	r4, r4, #8
	strh	r4, [r9, #2]!
	orrs	r3, r0
	uxth	r3, r3
	rsb	r2, r2, #8
	lsls	r3, r2
	cmp	r9, sl
	strh	r3, [r6, #1166]	
	bne	lab247
lab245: 	movw	r2, #2340	
	movt	r2, #8192	
lab256: 	movw	r1, #796	
	movt	r1, #8192	
	subs	r2, #2
	add	r4, r1, #64	
lab248: 	ldrb	r0, [r1], #1
	ldrh	r3, [r2, #2]!
	smlabb	r3, r3, r0, r8
	asrs	r3, r3, #3
	cmp	r1, r4
	strh	r3, [r2, #0]
	bne	lab248
	cmp	r7, #0
	ite	eq
	moveq	r3, #65	
	movne	r3, #129	
	cmp	r3, r5
	bhi	lab186
	subs	r5, r5, r3
	uxth	r5, r5
	cmp	r5, #0
	beq	lab186
	ldrb	r3, [r6, #1168]	
	ldrh	r9, [r6, #1166]	
	cmp	r3, #7
	bhi	lab249
lab241: 	lsl	r3, r9, r3
	strh	r3, [r6, #1166]	
push {r1, r2}
	ldr r1, =4760
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =4760
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r4, [r6, #1166]	
	ldrb	r3, [r6, #1168]	
	orrs	r4, r0
	uxth	r4, r4
	rsb	r2, r3, #8
	lsls	r4, r2
	uxth	r4, r4
	b	lab250
lab242: 	ldrb	r2, [r6, #1432]	
	orr	r2, r2, #1
	strb	r2, [r6, #1432]	
	cmp r7, #0
	bne lab251
	movw	r9, #2210	
	movt	r9, #8192	
	add	sl, r9, #128	
	b	lab252
lab254: 	strh	r0, [r9, #2]!
	cmp	sl, r9
	strb	r1, [r6, #1168]	
	strh	r2, [r6, #1166]	
	beq	lab253
lab255: 	ldrh	r4, [r6, #1166]	
	ldrb	r3, [r6, #1168]	
lab252: 	cmp	r3, #7
	mov	r0, r4, asr #8
	sub	r1, r3, #8
	mov	r2, r4, lsl #8
	bhi	lab254
	lsl	r3, r4, r3
	strh	r3, [r6, #1166]	
push {r1, r2}
	ldr r1, =3358
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =3358
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r3, [r6, #1166]	
	ldrb	r2, [r6, #1168]	
	asrs	r4, r4, #8
	strh	r4, [r9, #2]!
	orrs	r3, r0
	uxth	r3, r3
	rsb	r2, r2, #8
	lsls	r3, r2
	cmp	sl, r9
	strh	r3, [r6, #1166]	
	bne	lab255
lab253: 	movw	r2, #2212	
	movt	r2, #8192	
	b	lab256
lab251: 	movw	sl, #2210	
	movt	sl, #8192	
	add	r9, sl, #128	
	b	lab257
lab259: 	strb	r2, [r6, #1168]	
	uxth	fp, fp
lab260: 	and	r4, r4, #65280	
	cmp	r2, #7
	sub	r0, r2, #8
	mov	r1, fp, lsl #8
	add	r3, r4, fp, lsr #8
	bls	lab258
	strh	r3, [sl, #2]!
	cmp	r9, sl
	strb	r0, [r6, #1168]	
	strh	r1, [r6, #1166]	
	beq	lab253
lab261: 	ldrh	r4, [r6, #1166]	
	ldrb	r3, [r6, #1168]	
lab257: 	sub	r2, r3, #8
	cmp	r3, #7
	uxtb	r2, r2
	mov	fp, r4, lsl #8
	bhi	lab259
	lsl	r3, r4, r3
	strh	r3, [r6, #1166]	
push {r1, r2}
	ldr r1, =5628
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =5628
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	fp, [r6, #1166]	
	ldrb	r2, [r6, #1168]	
	orr	fp, r0, fp
	uxth	fp, fp
	rsb	r3, r2, #8
	lsl	fp, fp, r3
	uxth	fp, fp
	b	lab260
lab258: 	lsl	r2, fp, r2
	strh	r2, [r6, #1166]	
push {r1, r2}
	ldr r1, =2401
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =2401
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r3, [r6, #1166]	
	ldrb	r2, [r6, #1168]	
	add	r4, r4, fp, lsr #8
	strh	r4, [sl, #2]!
	orrs	r3, r0
	uxth	r3, r3
	rsb	r2, r2, #8
	lsls	r3, r2
	cmp	sl, r9
	strh	r3, [r6, #1166]	
	bne	lab261
	movw	r2, #2212	
	movt	r2, #8192	
	b	lab256
lab243: 	movw	sl, #2338	
	movt	sl, #8192	
	add	fp, sl, #128	
	b	lab262
lab264: 	subs	r3, #8
	uxtb	r3, r3
	mov	r9, r4, lsl #8
	strb	r3, [r6, #1168]	
	uxth	r9, r9
lab265: 	and	r4, r4, #65280	
	cmp	r3, #7
	sub	r0, r3, #8
	mov	r1, r9, lsl #8
	add	r2, r4, r9, lsr #8
	bls	lab263
	strh	r2, [sl, #2]!
	cmp	sl, fp
	strb	r0, [r6, #1168]	
	strh	r1, [r6, #1166]	
	beq	lab245
lab266: 	ldrh	r4, [r6, #1166]	
	ldrb	r3, [r6, #1168]	
lab262: 	cmp	r3, #7
	bhi	lab264
	lsl	r3, r4, r3
	strh	r3, [r6, #1166]	
push {r1, r2}
	ldr r1, =5728
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =5728
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r9, [r6, #1166]	
	ldrb	r3, [r6, #1168]	
	orr	r9, r0, r9
	uxth	r9, r9
	rsb	r2, r3, #8
	lsl	r9, r9, r2
	uxth	r9, r9
	b	lab265
lab263: 	lsl	r3, r9, r3
	strh	r3, [r6, #1166]	
push {r1, r2}
	ldr r1, =6729
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =6729
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r3, [r6, #1166]	
	ldrb	r2, [r6, #1168]	
	add	r4, r4, r9, lsr #8
	strh	r4, [sl, #2]!
	orrs	r3, r0
	uxth	r3, r3
	rsb	r2, r2, #8
	lsls	r3, r2
	cmp	sl, fp
	strh	r3, [r6, #1166]	
	bne	lab266
	b	lab245
lab217:push {r1, r2}
	ldr r1, =7718
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	getBits.constprop.1
	push {r1, r2}
	ldr r1, =7718
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r4, [r6, #1166]	
	ldrb	r3, [r6, #1168]	
	strh	r0, [r6, #1430]	
	b	lab180
	nop
getBits.constprop.0:
	push	{r4, r5, r6, lr}
	movw	r4, #1040	
	movt	r4, #8192	
	ldrb	r3, [r4, #1168]	
	ldrh	r5, [r4, #1166]	
	cmp	r3, #7
	bls	lab267
	subs	r3, #8
	lsls	r2, r5, #8
	strb	r3, [r4, #1168]	
	strh	r2, [r4, #1166]	
	lsrs	r0, r5, #8
	nop
	push {r1, r2}
	ldr r1, =1286
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab267: 	ldrb	r2, [r4, #896]	
	lsl	r3, r5, r3
	mov	r6, r0
	strh	r3, [r4, #1166]	
	cmp r2, #0
	bne lab268
	movs	r3, #4
	strb	r2, [r4, #896]	
	strb	r3, [r4, #897]	
	ldr	ip, [r4, #1160]	
	ldr	r3, [r4, #900]	
	add	r2, r4, #896	
	movs	r1, #252	
	add	r0, r4, #908	
	blx	ip
	cmp r0, #0
	beq lab269
	strb	r0, [r4, #1164]	
lab269: 	ldrb	r2, [r4, #896]	
	cmp r2, #0
	bne lab268
	ldrb	r3, [r4, #1165]	
	mvns	r3, r3
	uxtb	r3, r3
	strb	r3, [r4, #1165]	
	cmp r3, #0
	beq lab270
	cmp r6, #0
	beq lab271
lab275:push {r1, r2}
	ldr r1, =1821
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	getOctet.part.0
lab271:	push {r1, r2}
	ldr r1, =1821
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	movs	r3, #255	
	b	lab272
lab268: 	ldrb	r3, [r4, #897]	
	subs	r2, #1
	strb	r2, [r4, #896]	
	adds	r2, r4, r3
	adds	r3, #1
	strb	r3, [r4, #897]	
	ldrb	r3, [r2, #904]	
	cmp r6, #0
	bne lab273
lab274: 	uxth	r3, r3
lab272: 	ldrh	r1, [r4, #1166]	
	ldrb	r2, [r4, #1168]	
	orrs	r3, r1
	rsb	r2, r2, #8
	lsls	r3, r2
	strh	r3, [r4, #1166]	
	lsrs	r0, r5, #8
	nop
	push {r1, r2}
	ldr r1, =6251
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab273: 	cmp	r3, #255	
	bne	lab274
	b	lab275
lab270: 	movs	r3, #217	
	b	lab272
pjpeg_decode_mcu:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r9, #1040	
	movt	r9, #8192	
	sub	sp, #28
	ldrb	r3, [r9, #1164]	
	str	r3, [sp, #4]
	cmp r3, #0
	bne lab276
	ldrh	r3, [r9, #1628]	
	cmp r3, #0
	bne lab277
	movs	r3, #1
	str	r3, [sp, #4]
lab276: 	ldr	r0, [sp, #4]
	add	sp, #28
	nop
	push {r1, r2}
	ldr r1, =305
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab277: 	ldrh	r2, [r9, #1430]	
	cmp	r2, #0
	bne	lab278
	ldrb	r2, [r9, #1640]	
	cmp	r2, #0
	beq	lab279
lab298: 	movs	r3, #0
	strd	r3, r3, [sp, #8]
	movw	r3, #2704	
	movt	r3, #8192	
	sub	r2, r3, #148	
	subs	r3, #52	
	str	r2, [sp, #16]
	str	r3, [sp, #20]
lab295: 	ldr	r3, [sp, #8]
	add	r3, r9
	movw	sl, #2340	
	ldrb	r5, [r3, #1644]	
	add	r3, r9, r5
	movt	sl, #8192	
	ldrb	r2, [r3, #1656]	
	ldrb	r3, [r3, #1652]	
	sub	r1, sl, #128	
	cmp	r2, #0
	it	eq
	moveq	sl, r1
	cmp	r3, #0
	beq	lab280
	add	r0, r1, #360	
	ldr	r1, [sp, #20]
push {r1, r2}
	ldr r1, =2305
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	huffDecode
	push {r1, r2}
	ldr r1, =2305
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	ands	r0, r0, #15
	bne	lab281
lab321: 	subs	r4, #1
	uxtb	r4, r4
	cmp	r4, #14
	bhi	lab282
	movw	r3, #764	
	movt	r3, #8192	
	add	r3, r3, r4, lsl #1
	ldrh	r2, [r3, #96]	
	cmp	r2, r0
	bls	lab282
	ldrh	r3, [r3, #128]	
	add	r0, r3
	uxth	r0, r0
lab282: 	add	r3, r9, r5, lsl #1
	add	r5, r9
	ldrh	r1, [r3, #1632]	
	ldrb	r2, [r5, #1660]	
	add	r0, r1
	uxth	r0, r0
	strh	r0, [r3, #1632]	
	ldrh	r3, [sl]
	smulbb	r0, r3, r0
	ldrb	r3, [r9, #1663]	
	strh	r0, [r9]
	str	r3, [sp, #0]
	cmp	r3, #0
	beq	lab283
	movw	r3, #2704	
	movt	r3, #8192	
	cmp	r2, #0
	add	r2, r3, #256	
	ite	ne
	movne	r6, r3
	moveq	r6, r2
	add	r3, r3, #512	
	add	r2, r2, #336	
	ite	ne
	movne	r5, r3
	moveq	r5, r2
	movs	r4, #1
	b	lab284
lab287: 	cmp	r3, #15
	bne	lab285
	cmp	r4, #48	
	bhi	lab286
	adds	r4, #15
	uxtb	r4, r4
lab288: 	adds	r4, #1
	uxtb	r4, r4
	cmp	r4, #63	
	bhi	lab285
lab284: 	mov	r1, r6
	mov	r0, r5
push {r1, r2}
	ldr r1, =766
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	huffDecode
	push {r1, r2}
	ldr r1, =766
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r7, r0
	ubfx	r3, r0, #4, #8
	ands	r0, r0, #15
	beq	lab287
push {r1, r2}
	ldr r1, =576
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.2
	push {r1, r2}
	ldr r1, =576
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ubfx	r3, r7, #4, #8
	tst	r7, #4080	
	add	r3, r4
	beq	lab288
	cmp	r3, #63	
	bgt	lab286
	uxtb	r4, r3
	adds	r4, #1
	uxtb	r4, r4
	cmp	r4, #63	
	bls	lab284
lab285: 	ldrsh	r3, [r9]
	ldrb	r2, [r9, #2336]	
	adds	r3, #64	
	lsrs	r3, r3, #7
	adds	r3, #128	
	uxth	r3, r3
	cmp	r3, #255	
	itt	hi
	mvnhi	r3, r3
	sbfxhi	r3, r3, #15, #1
	cmp	r2, #2
	uxtb	r3, r3
	beq	lab289
	bhi	lab290
	cmp	r2, #0
	beq	lab291
	ldr	r2, [sp, #8]
	cmp	r2, #1
	beq	lab292
	cmp	r2, #2
	beq	lab293
lab326: 	cmp r2, #0
	bne lab294
lab371: 	strb	r3, [r9, #640]	
	strb	r3, [r9, #128]	
lab452: 	strb	r3, [r9, #384]	
lab294: 	ldr	r3, [sp, #12]
	adds	r3, #1
	mov	r2, r3
	str	r3, [sp, #12]
	ldrb	r3, [r9, #1640]	
	uxtb	r2, r2
	cmp	r3, r2
	str	r2, [sp, #8]
	bhi	lab295
lab299: 	ldrb	r3, [r9, #1164]	
	cmp	r3, #0
	bne	lab296
	ldrh	r3, [r9, #1628]	
lab279: 	ldr	r0, [sp, #4]
	subs	r3, #1
	strh	r3, [r9, #1628]	
	add	sp, #28
	nop
	push {r1, r2}
	ldr r1, =905
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab278: 	ldrh	r3, [r9, #1630]	
	cmp	r3, #0
	beq	lab297
lab492: 	ldrb	r2, [r9, #1640]	
	subs	r3, #1
	strh	r3, [r9, #1630]	
	cmp	r2, #0
	bne	lab298
	b	lab299
lab283: 	movw	r3, #2704	
	cmp	r2, #0
	movt	r3, #8192	
	movw	r6, #764	
	add	r2, r3, #256	
	movt	r6, #8192	
	it	ne
	movne	r8, r3
	add	r3, r3, #512	
	ite	eq
	moveq	r8, r2
	movne	r7, r3
	add	r2, r2, #336	
	mov	r3, r6
	it	eq
	moveq	r7, r2
	mov	r6, r9
	movs	r4, #1
	mov	r9, r3
	b	lab300
lab304: 	ubfx	fp, r0, #4, #8
	cmp	fp, #15
	bne	lab301
	cmp	r4, #48	
	bhi	lab302
	add	r2, r9, r4
	add	r1, r4, #13
	ldrsb	r2, [r2, #160]	
	strh	r5, [r6, r2, lsl #1]
	adds	r2, r4, #1
	uxtab	r2, r9, r2
	uxtab	r1, r9, r1
	ldrsb	r2, [r2, #160]	
	ldrsb	r1, [r1, #160]	
	strh	r5, [r6, r2, lsl #1]
	adds	r2, r4, #2
	uxtab	r2, r9, r2
	add	r0, r4, #15
	ldrsb	r2, [r2, #160]	
	strh	r5, [r6, r2, lsl #1]
	adds	r2, r4, #3
	uxtab	r2, r9, r2
	ldrsb	r2, [r2, #160]	
	strh	r5, [r6, r2, lsl #1]
	adds	r2, r4, #4
	uxtab	r2, r9, r2
	ldrsb	r2, [r2, #160]	
	strh	r5, [r6, r2, lsl #1]
	adds	r2, r4, #5
	uxtab	r2, r9, r2
	ldrsb	r2, [r2, #160]	
	strh	r5, [r6, r2, lsl #1]
	adds	r2, r4, #6
	uxtab	r2, r9, r2
	ldrsb	r2, [r2, #160]	
	strh	r5, [r6, r2, lsl #1]
	adds	r2, r4, #7
	uxtab	r2, r9, r2
	ldrsb	r2, [r2, #160]	
	strh	r5, [r6, r2, lsl #1]
	add	r2, r4, #8
	uxtab	r2, r9, r2
	ldrsb	r2, [r2, #160]	
	strh	r5, [r6, r2, lsl #1]
	add	r2, r4, #9
	uxtab	r2, r9, r2
	ldrsb	r2, [r2, #160]	
	strh	r5, [r6, r2, lsl #1]
	add	r2, r4, #10
	uxtab	r2, r9, r2
	ldrsb	r2, [r2, #160]	
	strh	r5, [r6, r2, lsl #1]
	add	r2, r4, #11
	uxtab	r2, r9, r2
	ldrsb	r2, [r2, #160]	
	strh	r5, [r6, r2, lsl #1]
	add	r2, r4, #12
	uxtab	r2, r9, r2
	ldrsb	r2, [r2, #160]	
	strh	r5, [r6, r2, lsl #1]
	add	r2, r4, #14
	uxtab	r2, r9, r2
	uxtb	r4, r0
	ldrsb	r2, [r2, #160]	
	strh	r5, [r6, r1, lsl #1]
	strh	r5, [r6, r2, lsl #1]
	add	r2, r9, r4
	adds	r4, #1
	ldrsb	r2, [r2, #160]	
	uxtb	r4, r4
	cmp	r4, #63	
	strh	r5, [r6, r2, lsl #1]
	bhi	lab303
lab300: 	mov	r1, r8
	mov	r0, r7
push {r1, r2}
	ldr r1, =6939
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	huffDecode
	push {r1, r2}
	ldr r1, =6939
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ands	r5, r0, #15
	mov	fp, r0
	beq	lab304
	mov	r0, r5
push {r1, r2}
	ldr r1, =2903
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.2
	push {r1, r2}
	ldr r1, =2903
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	tst	fp, #4080	
	ubfx	r1, fp, #4, #8
	bne	lab305
lab320: 	subs	r5, #1
	uxtb	r5, r5
	add	r5, r9, r5, lsl #1
	ldrh	r2, [r5, #96]	
	cmp	r2, r0
	bls	lab306
	ldrh	r2, [r5, #128]	
	add	r0, r2
	uxth	r0, r0
lab306: 	add	r2, r9, r4
	ldrsb	r1, [r2, #160]	
	ldrh	r2, [sl, r4, lsl #1]
	adds	r4, #1
	uxtb	r4, r4
	smulbb	r0, r2, r0
	cmp	r4, #63	
	strh	r0, [r6, r1, lsl #1]
	bls	lab300
lab303: 	mov	r9, r6
lab360: 	movw	r3, #1056	
	movt	r3, #8192	
	mov	lr, #128	
	b	lab307
lab309: 	ldrsh	r2, [r3, #-16]
	strh	r2, [r3, #-14]
	strh	r2, [r3, #-12]
	strh	r2, [r3, #-10]
	strh	r2, [r3, #-8]
	strh	r2, [r3, #-6]
	strh	r2, [r3, #-4]
	strh	r2, [r3, #-2]
	movw	r2, #1184	
	adds	r3, #16
	movt	r2, #8192	
	cmp	r3, r2
	beq	lab308
lab307: 	ldrsh	r4, [r3, #-14]
	ldrsh	r2, [r3, #-12]
	ldrsh	r1, [r3, #-10]
	ldrsh	r5, [r3, #-8]
	ldrsh	ip, [r3, #-6]
	ldrsh	r8, [r3, #-4]
	uxth	r0, r4
	orrs	r4, r2
	uxth	r6, r1
	orrs	r1, r4
	uxth	r7, ip
	orrs	r1, r5
	orr	ip, ip, r1
	subs	r1, r7, r6
	orr	ip, r8, ip
	uxth	r2, r2
	uxth	r8, r8
	add	r7, r6
	uxth	r1, r1
	movw	r6, #669	
	subs	r4, r1, r0
	smlabb	r1, r1, r6, lr
	add	r6, r2, r8
	sub	r2, r2, r8
	mov	r8, #362	
	smlabb	r2, r2, r8, lr
	ldrsh	r8, [r3, #-2]
	orrs	ip, r8, ip
	uxth	ip, r8
	add	r4, ip
	mov	r8, #196	
	smlabb	r4, r4, r8, lr
	ubfx	r4, r4, #8, #16
	uxth	r5, r5
	uxth	r7, r7
	uxth	r6, r6
	ubfx	r2, r2, #8, #16
	sub	r1, r4, r1, asr #8
	beq	lab309
	ldrh	sl, [r3, #-16]
	add	r8, r0, ip
	sub	fp, sl, r5
	sub	r0, r0, ip
	uxth	ip, r8
	movw	r8, #277	
	smlabb	r0, r0, r8, lr
	uxth	fp, fp
	add	r8, r7, ip
	uxth	r8, r8
	ubfx	r0, r0, #8, #16
	sub	r7, ip, r7
	add	r5, sl
	mov	ip, #362	
	sub	sl, fp, r6
	smlabb	r7, r7, ip, lr
	add	sl, r2
	sub	ip, r8, r0
	add	ip, r4
	uxth	sl, sl
	sub	r0, r0, r8
	add	r0, sl
	uxth	ip, ip
	uxth	r5, r5
	subs	r4, r0, r4
	add	fp, r6
	adds	r0, r5, r6
	add	r7, ip, r7, asr #8
	uxth	r7, r7
	uxth	r0, r0
	sub	r2, fp, r2
	strh	r4, [r3, #-14]
	uxth	r2, r2
	add	r4, r8, r0
	add	r1, r7
	sub	r0, r0, r8
	subs	r6, r5, r6
	strh	r0, [r3, #-2]
	uxth	r1, r1
	uxth	r6, r6
	adds	r0, r7, r2
	subs	r2, r2, r7
	strh	r2, [r3, #-6]
	subs	r2, r6, r1
	strh	r2, [r3, #-10]
	add	sl, ip
	add	r1, r6
	movw	r2, #1184	
	strh	sl, [r3, #-4]
	strh	r4, [r3, #-16]
	strh	r0, [r3, #-12]
	strh	r1, [r3, #-8]
	movt	r2, #8192	
	adds	r3, #16
	cmp	r3, r2
	bne	lab307
lab308: 	movw	r3, #1040	
	movt	r3, #8192	
	mov	fp, #128	
	b	lab310
lab312: 	ldrsh	r2, [r3]
	adds	r2, #64	
	lsrs	r2, r2, #7
	adds	r2, #128	
	uxth	r2, r2
	cmp	r2, #255	
	itt	hi
	mvnhi	r2, r2
	sbfxhi	r2, r2, #15, #1
	uxtb	r2, r2
	sxth	r2, r2
	strh	r2, [r3, #0]
	strh	r2, [r3, #16]
	strh	r2, [r3, #32]
	strh	r2, [r3, #48]	
	strh	r2, [r3, #64]	
	strh	r2, [r3, #80]	
	strh	r2, [r3, #96]	
	strh	r2, [r3, #112]	
	movw	r2, #1056	
	adds	r3, #2
	movt	r2, #8192	
	cmp	r3, r2
	beq	lab311
lab310: 	ldrsh	r7, [r3, #16]
	ldrsh	r0, [r3, #32]
	ldrsh	ip, [r3, #48]	
	ldrsh	r4, [r3, #64]	
	ldrsh	r1, [r3, #80]	
	ldrsh	lr, [r3, #96]	
	ldrsh	r5, [r3, #112]	
	orr	r2, r0, r7
	orr	r2, ip, r2
	orrs	r2, r4
	orrs	r2, r1
	orr	r2, lr, r2
	orrs	r2, r5
	beq	lab312
	uxth	r6, ip
	uxth	r1, r1
	uxth	r7, r7
	uxth	r5, r5
	add	r8, r6, r1
	subs	r1, r1, r6
	uxth	r2, r0
	uxth	r6, r1
	ldrh	r0, [r3, #0]
	adds	r1, r5, r7
	uxth	r4, r4
	uxth	ip, lr
	uxth	r8, r8
	uxth	r1, r1
	add	lr, r4, r0
	add	sl, ip, r2
	subs	r0, r0, r4
	sub	ip, r2, ip
	mov	r4, #362	
	add	r2, r1, r8
	sub	r1, r1, r8
	smlabb	r1, r1, r4, fp
	smlabb	ip, ip, r4, fp
	movw	r8, #277	
	subs	r4, r7, r5
	smlabb	r4, r4, r8, fp
	subs	r7, r6, r7
	ubfx	r4, r4, #8, #16
	add	r5, r7
	movs	r7, #196	
	uxth	sl, sl
	uxth	r2, r2
	uxth	lr, lr
	smlabb	r5, r5, r7, fp
	rsb	r7, r4, r1, asr #8
	movw	r1, #669	
	ubfx	r5, r5, #8, #16
	uxth	r0, r0
	add	r7, r2
	smlabb	r6, r6, r1, fp
	subs	r1, r4, r2
	sxth	r4, r2
	add	r2, sl, lr
	ubfx	ip, ip, #8, #16
	add	r7, r5
	sub	r6, r5, r6, asr #8
	sxth	r2, r2
	subs	r5, r1, r5
	sub	r1, r0, sl
	add	r8, r4, r2
	add	r1, ip
	sxth	r5, r5
	sxth	r1, r1
	add	r8, r8, #64	
	add	r0, sl
	sub	r0, r0, ip
	mov	r8, r8, lsr #7
	add	ip, r5, r1
	add	r8, r8, #128	
	add	ip, ip, #64	
	uxth	r8, r8
	mov	ip, ip, lsr #7
	cmp	r8, #255	
	add	ip, ip, #128	
	uxth	ip, ip
	itt	hi
	mvnhi	r8, r8
	sbfxhi	r8, r8, #15, #1
	cmp	ip, #255	
	itt	hi
	mvnhi	ip, ip
	sbfxhi	ip, ip, #15, #1
	uxtah	r6, r6, r7
	sxth	r0, r0
	sxth	r7, r7
	uxtb	ip, ip
	strh	ip, [r3, #16]
	add	ip, r7, r0
	add	ip, ip, #64	
	mov	ip, ip, lsr #7
	add	ip, ip, #128	
	uxth	ip, ip
	cmp	ip, #255	
	itt	hi
	mvnhi	ip, ip
	sbfxhi	ip, ip, #15, #1
	sub	lr, lr, sl
	sxth	r6, r6
	sxth	lr, lr
	uxtb	ip, ip
	strh	ip, [r3, #32]
	sub	ip, lr, r6
	add	ip, ip, #64	
	mov	ip, ip, lsr #7
	add	r6, lr
	add	ip, ip, #128	
	adds	r6, #64	
	uxth	ip, ip
	lsrs	r6, r6, #7
	subs	r0, r0, r7
	cmp	ip, #255	
	add	r6, r6, #128	
	add	r0, r0, #64	
	uxth	r6, r6
	it	hi
	mvnhi	ip, ip
	mov	r0, r0, lsr #7
	sub	r1, r1, r5
	it	hi
	sbfxhi	ip, ip, #15, #1
	adds	r0, #128	
	cmp	r6, #255	
	add	r1, r1, #64	
	uxth	r0, r0
	it	hi
	mvnhi	r6, r6
	mov	r1, r1, lsr #7
	sub	r2, r2, r4
	it	hi
	sbfxhi	r6, r6, #15, #1
	adds	r1, #128	
	cmp	r0, #255	
	add	r2, r2, #64	
	uxth	r1, r1
	it	hi
	mvnhi	r0, r0
	mov	r2, r2, lsr #7
	it	hi
	sbfxhi	r0, r0, #15, #1
	adds	r2, #128	
	cmp	r1, #255	
	uxth	r2, r2
	itt	hi
	mvnhi	r1, r1
	sbfxhi	r1, r1, #15, #1
	cmp	r2, #255	
	itt	hi
	mvnhi	r2, r2
	sbfxhi	r2, r2, #15, #1
	uxtb	r2, r2
	strh	r2, [r3, #112]	
	uxtb	r8, r8
	uxtb	ip, ip
	uxtb	r6, r6
	uxtb	r0, r0
	uxtb	r1, r1
	movw	r2, #1056	
	strh	r8, [r3]
	strh	ip, [r3, #48]	
	strh	r6, [r3, #64]	
	strh	r0, [r3, #80]	
	strh	r1, [r3, #96]	
	movt	r2, #8192	
	adds	r3, #2
	cmp	r3, r2
	bne	lab310
lab311: 	ldrb	r4, [r9, #2336]	
	cmp	r4, #2
	beq	lab313
	bhi	lab314
	cmp	r4, #0
	beq	lab315
	ldr	r3, [sp, #8]
	cmp	r3, #1
	beq	lab316
	cmp	r3, #2
	beq	lab317
	cmp	r3, #0
	bne	lab294
	movw	r0, #1424	
	movt	r0, #8192	
	sub	r1, r0, #256	
	mov	r5, r1
	add	r4, r0, #256	
	sub	r2, r0, #384	
lab318: 	ldrh	r3, [r2], #2
	uxtb	r3, r3
	cmp	r2, r1
	strb	r3, [r4], #1
	strb	r3, [r5], #1
	strb	r3, [r0], #1
	bne	lab318
	b	lab294
lab305: 	add	ip, r1, r4
	cmp	ip, #63	
	bgt	lab302
	add	r2, r9, r4
	ldr	r3, [sp, #0]
	ldrsb	r2, [r2, #160]	
	cmp	r1, #1
	strh	r3, [r6, r2, lsl #1]
	add	r2, r4, #1
	uxtb	lr, r2
	uxth	r2, r1
	beq	lab319
	add	lr, r9
	cmp	r2, #2
	ldrsb	r1, [lr, #160]	
	strh	r3, [r6, r1, lsl #1]
	add	r1, r4, #2
	uxtb	r1, r1
	beq	lab319
	add	r1, r9
	cmp	r2, #3
	ldrsb	r1, [r1, #160]	
	strh	r3, [r6, r1, lsl #1]
	add	r1, r4, #3
	uxtb	r1, r1
	beq	lab319
	add	r1, r9
	cmp	r2, #4
	ldrsb	r1, [r1, #160]	
	strh	r3, [r6, r1, lsl #1]
	add	r1, r4, #4
	uxtb	r1, r1
	beq	lab319
	add	r1, r9
	cmp	r2, #5
	ldrsb	r1, [r1, #160]	
	strh	r3, [r6, r1, lsl #1]
	add	r1, r4, #5
	uxtb	r1, r1
	beq	lab319
	add	r1, r9
	cmp	r2, #6
	ldrsb	r1, [r1, #160]	
	strh	r3, [r6, r1, lsl #1]
	add	r1, r4, #6
	uxtb	r1, r1
	beq	lab319
	add	r1, r9
	cmp	r2, #7
	ldrsb	r1, [r1, #160]	
	strh	r3, [r6, r1, lsl #1]
	add	r1, r4, #7
	uxtb	r1, r1
	beq	lab319
	add	r1, r9
	cmp	r2, #8
	ldrsb	r1, [r1, #160]	
	strh	r3, [r6, r1, lsl #1]
	add	r1, r4, #8
	uxtb	r1, r1
	beq	lab319
	add	r1, r9
	cmp	r2, #9
	ldrsb	r1, [r1, #160]	
	strh	r3, [r6, r1, lsl #1]
	add	r1, r4, #9
	uxtb	r1, r1
	beq	lab319
	add	r1, r9
	cmp	r2, #10
	ldrsb	r1, [r1, #160]	
	strh	r3, [r6, r1, lsl #1]
	add	r1, r4, #10
	uxtb	r1, r1
	beq	lab319
	add	r1, r9
	cmp	r2, #11
	ldrsb	r1, [r1, #160]	
	strh	r3, [r6, r1, lsl #1]
	add	r1, r4, #11
	uxtb	r1, r1
	beq	lab319
	add	r1, r9
	cmp	r2, #12
	ldrsb	r1, [r1, #160]	
	strh	r3, [r6, r1, lsl #1]
	add	r1, r4, #12
	uxtb	r1, r1
	beq	lab319
	add	r1, r9
	subs	r2, #13
	ldrsb	r1, [r1, #160]	
	uxth	r2, r2
	strh	r3, [r6, r1, lsl #1]
	add	r1, r4, #13
	uxtb	r1, r1
	cmp r2, #0
	beq lab319
	add	r1, r9
	adds	r4, #14
	ldrsb	r1, [r1, #160]	
	cmp	r2, #1
	strh	r3, [r6, r1, lsl #1]
	uxtb	r1, r4
	beq	lab319
	add	r2, r9, r1
	ldrsb	r2, [r2, #160]	
	strh	r3, [r6, r2, lsl #1]
lab319: 	uxtb	r4, ip
	b	lab320
lab280: 	movw	r0, #2476	
	ldr	r1, [sp, #16]
	movt	r0, #8192	
push {r1, r2}
	ldr r1, =1362
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	huffDecode
	push {r1, r2}
	ldr r1, =1362
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	ands	r0, r0, #15
	beq	lab321
lab281:push {r1, r2}
	ldr r1, =1679
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	getBits.constprop.2
	push {r1, r2}
	ldr r1, =1679
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab321
lab290: 	cmp	r2, #3
	beq	lab322
	cmp	r2, #4
	bne	lab294
	ldr	r2, [sp, #8]
	cmp	r2, #3
	beq	lab323
	bhi	lab324
	cmp	r2, #1
	beq	lab325
	cmp	r2, #2
	bne	lab326
lab386: 	strb	r3, [r9, #768]	
	strb	r3, [r9, #256]	
lab473: 	strb	r3, [r9, #512]	
	b	lab294
lab324: 	cmp	r2, #4
	beq	lab327
	cmp	r2, #5
	bne	lab294
	add	r2, r3, r3, lsl #1
	add	r2, r2, r2, lsl #4
	sub	r1, r3, #179	
	add	r2, r3, r2, lsl #1
	add	r2, r1, r2, lsr #8
	uxth	r1, r2
	sxth	r2, r3
	ldrb	r3, [r9, #640]	
	add	r3, r1
	uxth	r3, r3
	cmp	r3, #255	
	bhi	lab328
lab488: 	uxtb	r3, r3
lab489: 	strb	r3, [r9, #640]	
	ldrb	r3, [r9, #704]	
	add	r3, r1
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab329
	sxth	r0, r3
	cmp	r0, #0
	blt	lab330
	cmp	r0, #255	
	bgt	lab331
lab329: 	uxtb	r3, r3
lab497: 	strb	r3, [r9, #704]	
	ldrb	r3, [r9, #768]	
	add	r3, r1
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab332
	sxth	r0, r3
	cmp	r0, #0
	blt	lab333
	cmp	r0, #255	
	bgt	lab334
lab332: 	uxtb	r3, r3
lab498: 	strb	r3, [r9, #768]	
	ldrb	r3, [r9, #832]	
	add	r3, r1
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab335
	sxth	r1, r3
	cmp	r1, #0
	blt	lab336
	cmp	r1, #255	
	bgt	lab337
lab335: 	uxtb	r3, r3
lab499: 	strb	r3, [r9, #832]	
	rsb	r3, r2, r2, lsl #4
	add	r2, r2, r3, lsl #2
	rsb	r2, r2, r2, lsl #2
	lsrs	r3, r2, #8
	subs	r3, #91	
	ldrb	r2, [r9, #128]	
	uxth	r3, r3
	subs	r2, r2, r3
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab338
	sxth	r1, r2
	cmp	r1, #0
	blt	lab339
	cmp	r1, #255	
	bgt	lab340
lab338: 	uxtb	r2, r2
lab500: 	strb	r2, [r9, #128]	
	ldrb	r2, [r9, #192]	
	subs	r2, r2, r3
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab341
	sxth	r1, r2
	cmp	r1, #0
	blt	lab342
	cmp	r1, #255	
	bgt	lab343
lab341: 	uxtb	r2, r2
lab501: 	strb	r2, [r9, #192]	
	ldrb	r2, [r9, #256]	
	subs	r2, r2, r3
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab344
	sxth	r1, r2
	cmp	r1, #0
	blt	lab345
	cmp	r1, #255	
	bgt	lab346
lab344: 	uxtb	r2, r2
lab502: 	strb	r2, [r9, #256]	
	ldrb	r2, [r9, #320]	
	subs	r3, r2, r3
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab347
	sxth	r2, r3
	cmp	r2, #0
	blt	lab348
	cmp	r2, #255	
	bgt	lab349
lab347: 	uxtb	r3, r3
lab512: 	strb	r3, [r9, #320]	
	b	lab294
lab314: 	cmp	r4, #3
	beq	lab350
	cmp	r4, #4
	bne	lab294
	ldr	r3, [sp, #8]
	cmp	r3, #3
	beq	lab351
	bhi	lab352
	cmp	r3, #1
	beq	lab353
	cmp	r3, #2
	bne	lab354
	movw	r1, #1168	
	movt	r1, #8192	
	add	r5, r9, #512	
	add	r4, r1, #128	
	add	r0, r9, #768	
	sub	r2, r1, #128	
lab355: 	ldrh	r3, [r2], #2
	uxtb	r3, r3
	cmp	r2, r1
	strb	r3, [r0], #1
	strb	r3, [r4], #1
	strb	r3, [r5], #1
	bne	lab355
	b	lab294
lab352: 	cmp	r3, #4
	beq	lab356
	cmp	r3, #5
	bne	lab294
	movs	r1, #0
	mov	r0, r1
push {r1, r2}
	ldr r1, =625
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCr
	push {r1, r2}
	ldr r1, =625
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r0, r4
	movs	r1, #64	
push {r1, r2}
	ldr r1, =3946
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCr
	push {r1, r2}
	ldr r1, =3946
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r1, #128	
	movs	r0, #32
push {r1, r2}
	ldr r1, =1495
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCr
	push {r1, r2}
	ldr r1, =1495
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r1, #192	
	movs	r0, #36	
push {r1, r2}
	ldr r1, =7153
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCr
	push {r1, r2}
	ldr r1, =7153
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab294
lab354: 	cmp	r3, #0
	bne	lab294
	movw	r0, #1424	
	movt	r0, #8192	
	sub	r1, r0, #256	
	mov	r5, r1
	add	r4, r0, #256	
	sub	r2, r0, #384	
lab357: 	ldrh	r3, [r2], #2
	uxtb	r3, r3
	cmp	r2, r1
	strb	r3, [r4], #1
	strb	r3, [r5], #1
	strb	r3, [r0], #1
	bne	lab357
	b	lab294
lab302: 	mov	r9, r6
lab286: 	movs	r3, #28
	str	r3, [sp, #4]
	mov	r2, r3
lab404: 	ldrb	r3, [r9, #1164]	
	cmp	r3, #0
	it	ne
	movne	r2, r3
	str	r2, [sp, #4]
	ldr	r0, [sp, #4]
	add	sp, #28
	nop
	push {r1, r2}
	ldr r1, =6023
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab315: 	movw	r0, #1424	
	movt	r0, #8192	
	sub	r1, r0, #256	
	mov	r5, r1
	add	r4, r0, #256	
	sub	r2, r0, #384	
lab358: 	ldrh	r3, [r2], #2
	uxtb	r3, r3
	cmp	r2, r1
	strb	r3, [r4], #1
	strb	r3, [r5], #1
	strb	r3, [r0], #1
	bne	lab358
	b	lab294
lab301: 	movw	r3, #924	
	movt	r3, #8192	
	adds	r1, r3, #1
	rsb	r2, r4, #63	
	add	r1, r4
	mov	r9, r6
	add	r4, r3
	uxtab	r2, r1, r2
lab359: 	ldrsb	r3, [r4], #1
	cmp	r2, r4
	strh	r5, [r9, r3, lsl #1]
	bne	lab359
	b	lab360
lab296: 	str	r3, [sp, #4]
	b	lab276
lab313: 	ldr	r3, [sp, #8]
	cmp	r3, #2
	beq	lab361
	bhi	lab362
	cmp	r3, #0
	beq	lab363
	movw	r2, #1040	
	movt	r2, #8192	
	add	r5, r9, #448	
	add	r4, r9, #192	
	add	r0, r9, #704	
	add	r1, r2, #128	
lab364: 	ldrh	r3, [r2], #2
	uxtb	r3, r3
	cmp	r2, r1
	strb	r3, [r0], #1
	strb	r3, [r4], #1
	strb	r3, [r5], #1
	bne	lab364
	b	lab294
lab362: 	cmp	r3, #3
	bne	lab294
	movs	r1, #0
	mov	r0, r1
push {r1, r2}
	ldr r1, =660
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCrH
	push {r1, r2}
	ldr r1, =660
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r1, #64	
	movs	r0, #4
push {r1, r2}
	ldr r1, =2659
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCrH
	push {r1, r2}
	ldr r1, =2659
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab294
lab350: 	ldr	r3, [sp, #8]
	cmp	r3, #2
	beq	lab365
	bhi	lab366
	cmp	r3, #0
	beq	lab367
	movw	r1, #1168	
	movt	r1, #8192	
	add	r5, r9, #512	
	add	r4, r1, #128	
	add	r0, r9, #768	
	sub	r2, r1, #128	
lab368: 	ldrh	r3, [r2], #2
	uxtb	r3, r3
	cmp	r2, r1
	strb	r3, [r0], #1
	strb	r3, [r4], #1
	strb	r3, [r5], #1
	bne	lab368
	b	lab294
lab366: 	cmp	r3, #3
	bne	lab294
	movs	r1, #0
	mov	r0, r1
push {r1, r2}
	ldr r1, =7104
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCrV
	push {r1, r2}
	ldr r1, =7104
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r1, #128	
	movs	r0, #32
push {r1, r2}
	ldr r1, =4232
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCrV
	push {r1, r2}
	ldr r1, =4232
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab294
lab289: 	ldr	r2, [sp, #8]
	cmp	r2, #2
	beq	lab369
	bhi	lab370
	cmp	r2, #0
	beq	lab371
lab325: 	strb	r3, [r9, #704]	
	strb	r3, [r9, #192]	
lab486: 	strb	r3, [r9, #448]	
	b	lab294
lab370: 	cmp	r2, #3
	bne	lab294
	add	r2, r3, r3, lsl #1
	add	r2, r2, r2, lsl #4
	add	r2, r3, r2, lsl #1
	sub	r1, r3, #179	
	add	r1, r1, r2, lsr #8
	sxth	r2, r3
	ldrb	r3, [r9, #640]	
	uxth	r1, r1
	add	r3, r1
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab372
	sxth	r0, r3
	cmp	r0, #0
	blt	lab373
	cmp	r0, #255	
	bgt	lab374
lab372: 	uxtb	r3, r3
lab510: 	strb	r3, [r9, #640]	
	ldrb	r3, [r9, #704]	
	add	r3, r1
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab375
	sxth	r1, r3
	cmp	r1, #0
	blt	lab376
	cmp	r1, #255	
	bgt	lab377
lab375: 	uxtb	r3, r3
lab511: 	strb	r3, [r9, #704]	
	rsb	r3, r2, r2, lsl #4
	add	r2, r2, r3, lsl #2
	rsb	r2, r2, r2, lsl #2
	lsrs	r3, r2, #8
	subs	r3, #91	
	ldrb	r2, [r9, #128]	
	uxth	r3, r3
	subs	r2, r2, r3
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab378
	sxth	r1, r2
	cmp	r1, #0
	blt	lab379
	cmp	r1, #255	
	bgt	lab380
lab378: 	uxtb	r2, r2
lab506: 	strb	r2, [r9, #128]	
	ldrb	r2, [r9, #192]	
	subs	r3, r2, r3
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab381
	sxth	r2, r3
	cmp	r2, #0
	blt	lab382
	cmp	r2, #255	
	bgt	lab383
lab381: 	uxtb	r3, r3
lab507: 	strb	r3, [r9, #192]	
	b	lab294
lab322: 	ldr	r2, [sp, #8]
	cmp	r2, #2
	beq	lab384
	bhi	lab385
	cmp	r2, #0
	bne	lab386
	b	lab371
lab385: 	cmp	r2, #3
	bne	lab294
	add	r2, r3, r3, lsl #1
	add	r2, r2, r2, lsl #4
	add	r2, r3, r2, lsl #1
	sub	r1, r3, #179	
	add	r1, r1, r2, lsr #8
	sxth	r2, r3
	ldrb	r3, [r9, #640]	
	uxth	r1, r1
	add	r3, r1
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab387
	sxth	r0, r3
	cmp	r0, #0
	blt	lab388
	cmp	r0, #255	
	bgt	lab389
lab387: 	uxtb	r3, r3
lab524: 	strb	r3, [r9, #640]	
	ldrb	r3, [r9, #768]	
	add	r3, r1
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab390
	sxth	r1, r3
	cmp	r1, #0
	blt	lab391
	cmp	r1, #255	
	bgt	lab392
lab390: 	uxtb	r3, r3
lab525: 	strb	r3, [r9, #768]	
	rsb	r3, r2, r2, lsl #4
	add	r2, r2, r3, lsl #2
	rsb	r2, r2, r2, lsl #2
	lsrs	r3, r2, #8
	subs	r3, #91	
	ldrb	r2, [r9, #128]	
	uxth	r3, r3
	subs	r2, r2, r3
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab393
	sxth	r1, r2
	cmp	r1, #0
	blt	lab394
	cmp	r1, #255	
	bgt	lab395
lab393: 	uxtb	r2, r2
lab508: 	strb	r2, [r9, #128]	
	ldrb	r2, [r9, #256]	
	subs	r3, r2, r3
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab396
	sxth	r2, r3
	cmp	r2, #0
	blt	lab397
	cmp	r2, #255	
	bgt	lab398
lab396: 	uxtb	r3, r3
lab509: 	strb	r3, [r9, #256]	
	b	lab294
lab291: 	strb	r3, [r9, #640]	
	b	lab294
lab297: 	mov	r4, #1536	
	b	lab399
lab401: 	uxth	r4, r3
	cmp r4, #0
	beq lab400
lab399:push {r1, r2}
	ldr r1, =4217
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	getChar
	push {r1, r2}
	ldr r1, =4217
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #255	
	add	r3, r4, #4294967295	
	bne	lab401
lab403:push {r1, r2}
	ldr r1, =8029
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	getChar
	push {r1, r2}
	ldr r1, =8029
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r4, #1
	cmp	r0, #255	
	uxth	r4, r4
	bne	lab402
	cmp	r4, #0
	bne	lab403
lab400: 	movs	r3, #29
	str	r3, [sp, #4]
	mov	r2, r3
	b	lab404
lab367: 	movw	r0, #1424	
	movt	r0, #8192	
	sub	r1, r0, #256	
	mov	r5, r1
	add	r4, r0, #256	
	sub	r2, r0, #384	
lab405: 	ldrh	r3, [r2], #2
	uxtb	r3, r3
	cmp	r2, r1
	strb	r3, [r4], #1
	strb	r3, [r5], #1
	strb	r3, [r0], #1
	bne	lab405
	b	lab294
lab363: 	movw	r0, #1424	
	movt	r0, #8192	
	sub	r1, r0, #256	
	mov	r5, r1
	add	r4, r0, #256	
	sub	r2, r0, #384	
lab406: 	ldrh	r3, [r2], #2
	uxtb	r3, r3
	cmp	r2, r1
	strb	r3, [r4], #1
	strb	r3, [r5], #1
	strb	r3, [r0], #1
	bne	lab406
	b	lab294
lab317: 	movw	r2, #1168	
	movt	r2, #8192	
	addw	r1, r9, #639	
	sub	r0, r2, #128	
	add	r4, r2, #64	
	b	lab407
lab413: 	cmp	r6, #255	
	bgt	lab408
lab412: 	uxtb	r5, r5
lab414: 	strb	r5, [r1, #0]
	rsb	r5, r3, r3, lsl #4
	add	r3, r3, r5, lsl #2
	rsb	r3, r3, r3, lsl #2
	ldrb	r5, [r2, #0]
	lsrs	r3, r3, #8
	rsb	r3, r3, #91	
	add	r3, r5
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab409
	sxth	r5, r3
	cmp	r5, #0
	blt	lab410
	cmp	r5, #255	
	bgt	lab411
lab409: 	uxtb	r3, r3
lab491: 	strb	r3, [r2], #1
	cmp	r2, r4
	beq	lab294
lab407: 	ldrsh	r3, [r0], #2
	ldrb	r5, [r1, #1]!
	uxtb	r3, r3
	add	r6, r3, r3, lsl #1
	add	r5, r3
	add	r6, r6, r6, lsl #4
	add	r6, r3, r6, lsl #1
	subs	r5, #179	
	add	r5, r5, r6, lsr #8
	uxth	r5, r5
	cmp	r5, #255	
	sxth	r3, r3
	bls	lab412
	sxth	r6, r5
	cmp	r6, #0
	bge	lab413
	movs	r5, #0
	b	lab414
lab356: 	movs	r1, #0
	mov	r0, r1
push {r1, r2}
	ldr r1, =168
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCb
	push {r1, r2}
	ldr r1, =168
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r0, [sp, #8]
	movs	r1, #64	
push {r1, r2}
	ldr r1, =4693
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCb
	push {r1, r2}
	ldr r1, =4693
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r1, #128	
	movs	r0, #32
push {r1, r2}
	ldr r1, =8106
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCb
	push {r1, r2}
	ldr r1, =8106
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r1, #192	
	movs	r0, #36	
push {r1, r2}
	ldr r1, =7813
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCb
	push {r1, r2}
	ldr r1, =7813
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab294
lab327: 	add	r1, r3, r3, lsl #2
	add	r1, r3, r1, lsl #1
	ubfx	r1, r1, #5, #24
	ldrb	r0, [r9, #128]	
	subs	r1, #44	
	uxth	r1, r1
	subs	r0, r0, r1
	uxth	r0, r0
	cmp	r0, #255	
	sxth	r2, r3
	bls	lab415
	sxth	r4, r0
	cmp	r4, #0
	blt	lab416
	cmp	r4, #255	
	bgt	lab417
lab415: 	uxtb	r0, r0
lab494: 	strb	r0, [r9, #128]	
	ldrb	r0, [r9, #192]	
	subs	r0, r0, r1
	uxth	r0, r0
	cmp	r0, #255	
	bls	lab418
	sxth	r4, r0
	cmp	r4, #0
	blt	lab419
	cmp	r4, #255	
	bgt	lab420
lab418: 	uxtb	r0, r0
lab495: 	strb	r0, [r9, #192]	
	ldrb	r0, [r9, #256]	
	subs	r0, r0, r1
	uxth	r0, r0
	cmp	r0, #255	
	bls	lab421
	sxth	r4, r0
	cmp	r4, #0
	blt	lab422
	cmp	r4, #255	
	bgt	lab423
lab421: 	uxtb	r0, r0
lab496: 	strb	r0, [r9, #256]	
	ldrb	r0, [r9, #320]	
	subs	r1, r0, r1
	uxth	r1, r1
	cmp	r1, #255	
	bls	lab424
	sxth	r0, r1
	cmp	r0, #0
	blt	lab425
	cmp	r0, #255	
	bgt	lab426
lab424: 	uxtb	r1, r1
lab515: 	add	r2, r2, r2, lsl #1
	add	r2, r2, r2, lsl #5
	ubfx	r2, r2, #7, #24
	subs	r3, #227	
	add	r3, r2
	ldrb	r2, [r9, #384]	
	strb	r1, [r9, #320]	
	uxth	r3, r3
	add	r2, r3
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab427
	sxth	r1, r2
	cmp	r1, #0
	blt	lab428
	cmp	r1, #255	
	bgt	lab429
lab427: 	uxtb	r2, r2
lab516: 	strb	r2, [r9, #384]	
	ldrb	r2, [r9, #448]	
	add	r2, r3
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab430
	sxth	r1, r2
	cmp	r1, #0
	blt	lab431
	cmp	r1, #255	
	bgt	lab432
lab430: 	uxtb	r2, r2
lab517: 	strb	r2, [r9, #448]	
	ldrb	r2, [r9, #512]	
	add	r2, r3
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab433
	sxth	r1, r2
	cmp	r1, #0
	blt	lab434
	cmp	r1, #255	
	bgt	lab435
lab433: 	uxtb	r2, r2
lab518: 	strb	r2, [r9, #512]	
	ldrb	r2, [r9, #576]	
	add	r3, r2
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab436
	sxth	r2, r3
	cmp	r2, #0
	blt	lab437
	cmp	r2, #255	
	bgt	lab438
lab436: 	uxtb	r3, r3
lab505: 	strb	r3, [r9, #576]	
	b	lab294
lab353: 	movw	r2, #1040	
	movt	r2, #8192	
	add	r5, r9, #448	
	add	r4, r9, #192	
	add	r0, r9, #704	
	add	r1, r2, #128	
lab439: 	ldrh	r3, [r2], #2
	uxtb	r3, r3
	cmp	r2, r1
	strb	r3, [r0], #1
	strb	r3, [r4], #1
	strb	r3, [r5], #1
	bne	lab439
	b	lab294
lab293: 	ldrb	r1, [r9, #640]	
	add	r2, r3, r3, lsl #1
	subs	r1, #179	
	add	r2, r2, r2, lsl #4
	add	r2, r3, r2, lsl #1
	add	r1, r3
	add	r1, r1, r2, lsr #8
	uxth	r1, r1
	cmp	r1, #255	
	sxth	r2, r3
	bls	lab440
	sxth	r3, r1
	cmp	r3, #0
	blt	lab441
	cmp	r3, #255	
	bgt	lab442
lab440: 	uxtb	r3, r1
lab503: 	strb	r3, [r9, #640]	
	rsb	r1, r2, r2, lsl #4
	ldrb	r3, [r9, #128]	
	add	r2, r2, r1, lsl #2
	adds	r3, #91	
	rsb	r2, r2, r2, lsl #2
	sub	r3, r3, r2, lsr #8
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab443
	sxth	r2, r3
	cmp	r2, #0
	blt	lab444
	cmp	r2, #255	
	bgt	lab445
lab443: 	uxtb	r3, r3
lab504: 	strb	r3, [r9, #128]	
	b	lab294
lab292: 	ldrb	r1, [r9, #128]	
	add	r2, r3, r3, lsl #2
	add	r2, r3, r2, lsl #1
	ubfx	r2, r2, #5, #24
	adds	r1, #44	
	subs	r1, r1, r2
	uxth	r1, r1
	cmp	r1, #255	
	sxth	r2, r3
	bls	lab446
	sxth	r0, r1
	cmp	r0, #0
	blt	lab447
	cmp	r0, #255	
	bgt	lab448
lab446: 	uxtb	r1, r1
lab514: 	add	r2, r2, r2, lsl #1
	add	r2, r2, r2, lsl #5
	strb	r1, [r9, #128]	
	ubfx	r1, r2, #7, #24
	ldrb	r2, [r9, #384]	
	subs	r2, #227	
	add	r3, r2
	add	r3, r1
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab449
	sxth	r2, r3
	cmp	r2, #0
	blt	lab450
	cmp	r2, #255	
	bgt	lab451
lab449: 	uxtb	r3, r3
	b	lab452
lab365: 	movs	r1, #0
	mov	r0, r1
push {r1, r2}
	ldr r1, =2267
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCbV
	push {r1, r2}
	ldr r1, =2267
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r1, #128	
	movs	r0, #32
push {r1, r2}
	ldr r1, =5982
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCbV
	push {r1, r2}
	ldr r1, =5982
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab294
lab361: 	movs	r1, #0
	mov	r0, r1
push {r1, r2}
	ldr r1, =6667
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCbH
	push {r1, r2}
	ldr r1, =6667
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r1, #64	
	movs	r0, #4
push {r1, r2}
	ldr r1, =3787
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	upsampleCbH
	push {r1, r2}
	ldr r1, =3787
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab294
lab316: 	movw	r2, #1424	
	movt	r2, #8192	
	add	r1, r9, #127	
	sub	r0, r2, #384	
	add	r4, r2, #64	
	b	lab453
lab459: 	cmp	r6, #255	
	bgt	lab454
lab458: 	uxtb	r3, r3
lab460: 	add	r5, r5, r5, lsl #1
	strb	r3, [r1, #0]
	add	r5, r5, r5, lsl #5
	sub	r3, r7, #227	
	add	r5, r3, r5, lsr #7
	ldrb	r3, [r2, #0]
	add	r3, r5
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab455
	sxth	r5, r3
	cmp	r5, #0
	blt	lab456
	cmp	r5, #255	
	bgt	lab457
lab455: 	uxtb	r3, r3
lab490: 	strb	r3, [r2], #1
	cmp	r2, r4
	beq	lab294
lab453: 	ldrsh	r6, [r0], #2
	ldrb	r3, [r1, #1]!
	uxtb	r5, r6
	add	r6, r5, r5, lsl #2
	adds	r3, #44	
	add	r6, r5, r6, lsl #1
	sub	r3, r3, r6, lsr #5
	uxth	r3, r3
	cmp	r3, #255	
	mov	r7, r5
	bls	lab458
	sxth	r6, r3
	cmp	r6, #0
	bge	lab459
	movs	r3, #0
	b	lab460
lab384: 	add	r1, r3, r3, lsl #2
	add	r1, r3, r1, lsl #1
	ubfx	r1, r1, #5, #24
	subs	r1, #44	
	uxth	r0, r1
	ldrb	r1, [r9, #128]	
	subs	r1, r1, r0
	uxth	r1, r1
	cmp	r1, #255	
	sxth	r2, r3
	bls	lab461
	sxth	r4, r1
	cmp	r4, #0
	blt	lab462
	cmp	r4, #255	
	bgt	lab463
lab461: 	uxtb	r1, r1
lab513: 	strb	r1, [r9, #128]	
	ldrb	r1, [r9, #256]	
	subs	r1, r1, r0
	uxth	r1, r1
	cmp	r1, #255	
	bls	lab464
	sxth	r0, r1
	cmp	r0, #0
	blt	lab465
	cmp	r0, #255	
	bgt	lab466
lab464: 	uxtb	r1, r1
lab519: 	add	r2, r2, r2, lsl #1
	add	r2, r2, r2, lsl #5
	ubfx	r2, r2, #7, #24
	subs	r3, #227	
	add	r3, r2
	ldrb	r2, [r9, #384]	
	strb	r1, [r9, #256]	
	uxth	r3, r3
	add	r2, r3
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab467
	sxth	r1, r2
	cmp	r1, #0
	blt	lab468
	cmp	r1, #255	
	bgt	lab469
lab467: 	uxtb	r2, r2
lab520: 	strb	r2, [r9, #384]	
	ldrb	r2, [r9, #512]	
	add	r3, r2
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab470
	sxth	r2, r3
	cmp	r2, #0
	blt	lab471
	cmp	r2, #255	
	bgt	lab472
lab470: 	uxtb	r3, r3
	b	lab473
lab369: 	add	r1, r3, r3, lsl #2
	add	r1, r3, r1, lsl #1
	ubfx	r1, r1, #5, #24
	subs	r1, #44	
	uxth	r0, r1
	ldrb	r1, [r9, #128]	
	subs	r1, r1, r0
	uxth	r1, r1
	cmp	r1, #255	
	sxth	r2, r3
	bls	lab474
	sxth	r4, r1
	cmp	r4, #0
	blt	lab475
	cmp	r4, #255	
	bgt	lab476
lab474: 	uxtb	r1, r1
lab521: 	strb	r1, [r9, #128]	
	ldrb	r1, [r9, #192]	
	subs	r1, r1, r0
	uxth	r1, r1
	cmp	r1, #255	
	bls	lab477
	sxth	r0, r1
	cmp	r0, #0
	blt	lab478
	cmp	r0, #255	
	bgt	lab479
lab477: 	uxtb	r1, r1
lab522: 	add	r2, r2, r2, lsl #1
	add	r2, r2, r2, lsl #5
	ubfx	r2, r2, #7, #24
	subs	r3, #227	
	add	r3, r2
	ldrb	r2, [r9, #384]	
	strb	r1, [r9, #192]	
	uxth	r3, r3
	add	r2, r3
	uxth	r2, r2
	cmp	r2, #255	
	bls	lab480
	sxth	r1, r2
	cmp	r1, #0
	blt	lab481
	cmp	r1, #255	
	bgt	lab482
lab480: 	uxtb	r2, r2
lab523: 	strb	r2, [r9, #384]	
	ldrb	r2, [r9, #448]	
	add	r3, r2
	uxth	r3, r3
	cmp	r3, #255	
	bls	lab483
	sxth	r2, r3
	cmp	r2, #0
	blt	lab484
	cmp	r2, #255	
	bgt	lab485
lab483: 	uxtb	r3, r3
	b	lab486
lab323: 	strb	r3, [r9, #832]	
	strb	r3, [r9, #320]	
	strb	r3, [r9, #576]	
	b	lab294
lab328: 	sxth	r0, r3
	cmp	r0, #0
	blt	lab487
	cmp	r0, #255	
	ble	lab488
	movs	r3, #255	
	b	lab489
lab456: 	movs	r3, #0
	b	lab490
lab410: 	movs	r3, #0
	b	lab491
lab411: 	movs	r3, #255	
	b	lab491
lab454: 	movs	r3, #255	
	b	lab460
lab408: 	movs	r5, #255	
	b	lab414
lab457: 	movs	r3, #255	
	b	lab490
lab402: 	ldrh	r3, [r9, #1638]	
	add	r2, r3, #208	
	cmp	r0, r2
	bne	lab400
	movs	r2, #0
	adds	r3, #1
	and	r3, r3, #7
	ldrh	r1, [r9, #1430]	
	str	r2, [r9, #1632]	
	strh	r2, [r9, #1636]	
	movs	r0, #1
	movs	r2, #8
	strh	r3, [r9, #1638]	
	strh	r1, [r9, #1630]	
	strb	r2, [r9, #1168]	
push {r1, r2}
	ldr r1, =2450
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =2450
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r0, #1
push {r1, r2}
	ldr r1, =5699
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =5699
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r3, [r9, #1630]	
	b	lab492
lab351: 	movw	r2, #1040	
	movt	r2, #8192	
	add	r5, r9, #576	
	add	r4, r9, #320	
	add	r0, r9, #832	
	add	r1, r2, #128	
lab493: 	ldrh	r3, [r2], #2
	uxtb	r3, r3
	cmp	r2, r1
	strb	r3, [r0], #1
	strb	r3, [r4], #1
	strb	r3, [r5], #1
	bne	lab493
	b	lab294
lab487: 	movs	r3, #0
	b	lab489
lab417: 	movs	r0, #255	
	b	lab494
lab416: 	movs	r0, #0
	b	lab494
lab420: 	movs	r0, #255	
	b	lab495
lab419: 	movs	r0, #0
	b	lab495
lab423: 	movs	r0, #255	
	b	lab496
lab422: 	movs	r0, #0
	b	lab496
lab331: 	movs	r3, #255	
	b	lab497
lab330: 	movs	r3, #0
	b	lab497
lab334: 	movs	r3, #255	
	b	lab498
lab333: 	movs	r3, #0
	b	lab498
lab337: 	movs	r3, #255	
	b	lab499
lab336: 	movs	r3, #0
	b	lab499
lab340: 	movs	r2, #255	
	b	lab500
lab339: 	movs	r2, #0
	b	lab500
lab343: 	movs	r2, #255	
	b	lab501
lab342: 	movs	r2, #0
	b	lab501
lab346: 	movs	r2, #255	
	b	lab502
lab345: 	movs	r2, #0
	b	lab502
lab442: 	movs	r3, #255	
	b	lab503
lab441: 	movs	r3, #0
	b	lab503
lab445: 	movs	r3, #255	
	b	lab504
lab444: 	movs	r3, #0
	b	lab504
lab472: 	movs	r3, #255	
	b	lab473
lab471: 	movs	r3, #0
	b	lab473
lab438: 	movs	r3, #255	
	b	lab505
lab437: 	movs	r3, #0
	b	lab505
lab380: 	movs	r2, #255	
	b	lab506
lab379: 	movs	r2, #0
	b	lab506
lab383: 	movs	r3, #255	
	b	lab507
lab382: 	movs	r3, #0
	b	lab507
lab395: 	movs	r2, #255	
	b	lab508
lab394: 	movs	r2, #0
	b	lab508
lab398: 	movs	r3, #255	
	b	lab509
lab397: 	movs	r3, #0
	b	lab509
lab374: 	movs	r3, #255	
	b	lab510
lab373: 	movs	r3, #0
	b	lab510
lab377: 	movs	r3, #255	
	b	lab511
lab376: 	movs	r3, #0
	b	lab511
lab349: 	movs	r3, #255	
	b	lab512
lab348: 	movs	r3, #0
	b	lab512
lab463: 	movs	r1, #255	
	b	lab513
lab462: 	movs	r1, #0
	b	lab513
lab451: 	movs	r3, #255	
	b	lab452
lab450: 	movs	r3, #0
	b	lab452
lab448: 	movs	r1, #255	
	b	lab514
lab447: 	movs	r1, #0
	b	lab514
lab426: 	movs	r1, #255	
	b	lab515
lab425: 	movs	r1, #0
	b	lab515
lab429: 	movs	r2, #255	
	b	lab516
lab428: 	movs	r2, #0
	b	lab516
lab432: 	movs	r2, #255	
	b	lab517
lab431: 	movs	r2, #0
	b	lab517
lab435: 	movs	r2, #255	
	b	lab518
lab434: 	movs	r2, #0
	b	lab518
lab466: 	movs	r1, #255	
	b	lab519
lab465: 	movs	r1, #0
	b	lab519
lab469: 	movs	r2, #255	
	b	lab520
lab468: 	movs	r2, #0
	b	lab520
lab476: 	movs	r1, #255	
	b	lab521
lab475: 	movs	r1, #0
	b	lab521
lab479: 	movs	r1, #255	
	b	lab522
lab478: 	movs	r1, #0
	b	lab522
lab482: 	movs	r2, #255	
	b	lab523
lab481: 	movs	r2, #0
	b	lab523
lab485: 	movs	r3, #255	
	b	lab486
lab484: 	movs	r3, #0
	b	lab486
lab389: 	movs	r3, #255	
	b	lab524
lab388: 	movs	r3, #0
	b	lab524
lab392: 	movs	r3, #255	
	b	lab525
lab391: 	movs	r3, #0
	b	lab525
	nop
pjpeg_decode_init:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	movw	r4, #1040	
	movt	r4, #8192	
	movs	r6, #0
	strd	r6, r6, [r0]
	strd	r6, r6, [r0, #8]
	strd	r6, r6, [r0, #24]
	strd	r6, r6, [r0, #32]
	str	r6, [r0, #16]
	strb	r6, [r0, #20]
	str	r6, [r0, #40]	
	sub	sp, #12
	str	r2, [r4, #900]	
	mov	r5, r0
	movs	r2, #8
	mov	r0, r6
	str	r1, [r4, #1160]	
	strb	r6, [r4, #1164]	
	strb	r3, [r4, #1663]	
	strh	r6, [r4, #2338]	
	strh	r6, [r4, #2340]	
	strb	r6, [r4, #2342]	
	strh	r6, [r4, #1430]	
	strb	r6, [r4, #2343]	
	strb	r6, [r4, #1428]	
	strb	r6, [r4, #1432]	
	strb	r6, [r4, #1165]	
	strb	r6, [r4, #897]	
	strb	r6, [r4, #896]	
	strh	r6, [r4, #1166]	
	strb	r2, [r4, #1168]	
push {r1, r2}
	ldr r1, =146
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =146
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r0, r6
push {r1, r2}
	ldr r1, =4850
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =4850
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r6, [r4, #1164]	
	cmp r6, #0
	beq lab526
lab553: 	mov	r0, r6
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =6425
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab526: 	mov	r0, r6
push {r1, r2}
	ldr r1, =7334
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =7334
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r7, r0
	mov	r0, r6
push {r1, r2}
	ldr r1, =7818
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =7818
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	uxtb	r7, r7
	cmp	r7, #255	
	uxtb	r8, r0
	beq	lab527
lab535: 	ldrb	r2, [r4, #1168]	
	ldrh	r3, [r4, #1166]	
	cmp	r2, #7
	movw	r6, #4095	
	mov	r1, r3, lsl #8
	bls	lab528
lab531: 	mov	r7, r3
	subs	r2, #8
	uxth	r3, r1
	strb	r2, [r4, #1168]	
	strh	r3, [r4, #1166]	
lab532: 	subs	r6, #1
	cmp	r8, #255	
	mov	r2, r7, asr #8
	uxth	r6, r6
	ubfx	r7, r7, #8, #8
	beq	lab529
lab534: 	cmp r6, #0
	beq lab530
	ldrb	r2, [r4, #1168]	
	cmp	r2, #7
	mov	r8, r7
	mov	r1, r3, lsl #8
	bhi	lab531
lab528: 	lsl	r2, r3, r2
	mov	r7, r3
	strh	r2, [r4, #1166]	
push {r1, r2}
	ldr r1, =7423
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =7423
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r3, [r4, #1166]	
	ldrb	r2, [r4, #1168]	
	orrs	r3, r0
	uxth	r3, r3
	rsb	r2, r2, #8
	lsls	r3, r2
	uxth	r3, r3
	strh	r3, [r4, #1166]	
	b	lab532
lab529: 	cmp	r2, #216	
	beq	lab533
	cmp	r2, #217	
	bne	lab534
lab530: 	movs	r6, #19
lab536: 	ldrb	r3, [r4, #1164]	
	cmp	r3, #0
	it	ne
	movne	r6, r3
	mov	r0, r6
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =7609
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab527: 	cmp	r8, #216	
	bne	lab535
lab540: 	add	r0, sp, #7
push {r1, r2}
	ldr r1, =4111
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	processMarkers
	push {r1, r2}
	ldr r1, =4111
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r6, r0
	cmp	r0, #0
	bne	lab536
	ldrb	r3, [sp, #7]
	cmp	r3, #194	
	beq	lab537
	cmp	r3, #201	
	beq	lab538
	cmp	r3, #192	
	beq	lab539
	movs	r6, #20
	b	lab536
lab533: 	lsrs	r3, r3, #8
	cmp	r3, #255	
	beq	lab540
	b	lab530
lab537: 	movs	r6, #37	
	b	lab536
lab539:push {r1, r2}
	ldr r1, =7770
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	getBits.constprop.1
	push {r1, r2}
	ldr r1, =7770
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r8, r0
	mov	r0, r6
push {r1, r2}
	ldr r1, =6815
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =6815
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #8
	mov	r7, r0
	beq	lab541
	movs	r6, #7
	b	lab536
lab538: 	movs	r6, #17
	b	lab536
lab541:push {r1, r2}
	ldr r1, =1123
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	getBits.constprop.1
	push {r1, r2}
	ldr r1, =1123
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r3, r0, #1
	cmp	r3, #16384	
	strh	r0, [r4, #2340]	
	bcs	lab542
push {r1, r2}
	ldr r1, =5922
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.1
	push {r1, r2}
	ldr r1, =5922
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r3, r0, #1
	cmp	r3, #16384	
	strh	r0, [r4, #2338]	
	bcs	lab543
	mov	r0, r6
push {r1, r2}
	ldr r1, =2544
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =2544
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	uxtb	r0, r0
	cmp	r0, #3
	strb	r0, [r4, #2342]	
	bhi	lab544
	movs	r2, #3
	smlabb	r7, r2, r0, r7
	cmp	r8, r7
	bne	lab545
	cmp	r0, #0
	beq	lab546
	movs	r6, #0
	mov	r7, r6
	b	lab547
lab551: 	subs	r3, #4
	uxtb	r3, r3
	mov	r9, r8, lsl #4
	uxth	r9, r9
	strb	r3, [r4, #1168]	
lab552: 	adds	r2, r4, r7
	mov	r8, r8, asr #12
	cmp	r3, #3
	strb	r8, [r2, #2348]	
	bls	lab548
	subs	r3, #4
	mov	r2, r9, lsl #4
	strb	r3, [r4, #1168]	
	strh	r2, [r4, #1166]	
lab565: 	add	r8, r4, r7
	mov	r9, r9, asr #12
	movs	r0, #0
	strb	r9, [r8, #2352]	
push {r1, r2}
	ldr r1, =3187
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =3187
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	uxtb	r3, r0
	adds	r6, #1
	cmp	r3, #1
	uxtb	r7, r6
	strb	r3, [r8, #1656]	
	bhi	lab549
	ldrb	r3, [r4, #2342]	
	cmp	r3, r7
	bls	lab550
lab547: 	movs	r0, #0
push {r1, r2}
	ldr r1, =4289
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =4289
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r3, [r4, #1168]	
	ldrh	r8, [r4, #1166]	
	adds	r2, r4, r7
	cmp	r3, #3
	strb	r0, [r2, #2344]	
	bhi	lab551
	lsl	r3, r8, r3
	strh	r3, [r4, #1166]	
push {r1, r2}
	ldr r1, =2677
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =2677
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r9, [r4, #1166]	
	ldrb	r3, [r4, #1168]	
	orr	r9, r0, r9
	rsb	r2, r3, #4
	uxth	r9, r9
	adds	r3, #4
	lsl	r9, r9, r2
	uxtb	r3, r3
	uxth	r9, r9
	strb	r3, [r4, #1168]	
	b	lab552
lab550: 	ldrb	r6, [r4, #1164]	
	cmp	r6, #0
	bne	lab553
	cmp	r3, #1
	beq	lab554
	cmp	r3, #3
	bne	lab555
	ldrb	r3, [r4, #2349]	
	cmp	r3, #1
	bne	lab556
	ldrb	r3, [r4, #2353]	
	cmp	r3, #1
	bne	lab556
	ldrb	r3, [r4, #2350]	
	cmp	r3, #1
	bne	lab556
	ldrb	r3, [r4, #2354]	
	cmp	r3, #1
	bne	lab556
	ldrb	r3, [r4, #2348]	
	cmp	r3, #1
	beq	lab557
	cmp	r3, #2
	beq	lab558
lab556: 	movs	r6, #27
	b	lab553
lab554: 	ldrb	r3, [r4, #2348]	
	cmp	r3, #1
	bne	lab556
	ldrb	r3, [r4, #2352]	
	cmp	r3, #1
	bne	lab556
	strb	r3, [r4, #1640]	
	movs	r3, #8
	strb	r6, [r4, #2336]	
	strb	r6, [r4, #1644]	
	strb	r3, [r4, #2355]	
	strb	r3, [r4, #2356]	
	movs	r1, #7
lab567: 	ldrh	r2, [r4, #2338]	
	movs	r0, #3
	adds	r2, #7
lab569: 	cmp	r3, #8
	asr	r3, r2, r0
	ldrh	r2, [r4, #2340]	
	add	r2, r1
	ite	eq
	moveq	r1, #3
	movne	r1, #4
	asrs	r2, r1
	uxth	r2, r2
	uxth	r3, r3
	strh	r3, [r4, #2358]	
	add	r0, sp, #7
	smulbb	r3, r3, r2
	strh	r2, [r4, #2360]	
	strh	r3, [r4, #1628]	
push {r1, r2}
	ldr r1, =5783
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	processMarkers
	push {r1, r2}
	ldr r1, =5783
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r6, r0
	cmp	r0, #0
	bne	lab536
	ldrb	r3, [sp, #7]
	cmp	r3, #218	
	bne	lab559
push {r1, r2}
	ldr r1, =7303
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.1
	push {r1, r2}
	ldr r1, =7303
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r7, r0
	mov	r0, r6
push {r1, r2}
	ldr r1, =6448
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =6448
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r7, #3
	uxtb	r3, r0
	movs	r2, #3
	uxth	r9, r7
	add	r2, r2, r3, lsl #1
	cmp	r9, r2
	strb	r3, [r4, #2343]	
	bne	lab560
	subs	r3, #1
	cmp	r3, #2
	bhi	lab560
lab570: 	movs	r0, #0
push {r1, r2}
	ldr r1, =1878
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =1878
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	uxtb	r8, r0
	movs	r0, #0
push {r1, r2}
	ldr r1, =1534
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =1534
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r2, [r4, #2342]	
	sub	r1, r9, #2
	mov	r7, r9
	uxtb	r3, r0
	uxth	r9, r1
	cmp r2, #0
	beq lab561
	ldrb	r1, [r4, #2344]	
	cmp	r1, r8
	beq	lab562
	cmp	r2, #1
	beq	lab561
	ldrb	r1, [r4, #2345]	
	cmp	r1, r8
	beq	lab563
	cmp	r2, #2
	beq	lab561
	ldrb	r2, [r4, #2346]	
	cmp	r2, r8
	beq	lab564
lab561: 	movs	r6, #15
	b	lab536
lab555: 	movs	r6, #26
	b	lab553
lab559: 	movs	r6, #18
	b	lab536
lab548: 	lsl	r3, r9, r3
	strh	r3, [r4, #1166]	
push {r1, r2}
	ldr r1, =1164
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =1164
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r1, [r4, #1166]	
	ldrb	r2, [r4, #1168]	
	orr	r3, r0, r1
	uxth	r3, r3
	rsb	r1, r2, #4
	lsls	r3, r1
	adds	r2, #4
	strh	r3, [r4, #1166]	
	strb	r2, [r4, #1168]	
	b	lab565
lab560: 	movs	r6, #14
	b	lab536
lab542: 	mov	r6, r7
	b	lab536
lab557: 	ldrb	r2, [r4, #2352]	
	cmp	r2, #1
	beq	lab566
	cmp	r2, #2
	bne	lab556
	movs	r2, #0
	movt	r2, #513	
	str	r2, [r4, #1644]	
	movs	r2, #8
	movs	r1, #3
	movs	r3, #16
	strb	r2, [r4, #2355]	
	movs	r2, #4
	strb	r1, [r4, #2336]	
	strb	r3, [r4, #2356]	
	movs	r1, #15
	strb	r2, [r4, #1640]	
	b	lab567
lab543: 	movs	r6, #9
	b	lab536
lab558: 	ldrb	r2, [r4, #2352]	
	cmp	r2, #1
	beq	lab568
	cmp	r2, #2
	bne	lab556
	movs	r2, #4
	strb	r2, [r4, #2336]	
	movs	r2, #6
	strb	r2, [r4, #1640]	
	movs	r2, #0
	movs	r3, #16
	str	r2, [r4, #1644]	
	movw	r2, #513	
	strh	r2, [r4, #1648]	
	strb	r3, [r4, #2355]	
	strb	r3, [r4, #2356]	
	movs	r1, #15
lab583: 	ldrh	r2, [r4, #2338]	
	movs	r0, #4
	adds	r2, #15
	b	lab569
lab563: 	movs	r2, #1
	mov	r1, r2
lab582: 	uxtab	r0, r4, r6
	add	r2, r4
	strb	r1, [r0, #2368]	
	adds	r6, #1
	lsrs	r0, r3, #4
	ldrb	r1, [r4, #2343]	
	strb	r0, [r2, #1652]	
	and	r3, r3, #15
	strb	r3, [r2, #1660]	
	uxtb	r3, r6
	cmp	r1, r3
	bhi	lab570
	movs	r0, #0
push {r1, r2}
	ldr r1, =7542
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =7542
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	uxtb	r3, r0
	movs	r0, #0
	strb	r3, [r4, #2362]	
push {r1, r2}
	ldr r1, =3231
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =3231
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	uxtb	r3, r0
	strb	r3, [r4, #2363]	
	ldrb	r3, [r4, #1168]	
	ldrh	r8, [r4, #1166]	
	cmp	r3, #3
	bls	lab571
	subs	r3, #4
	uxtb	r3, r3
	mov	r6, r8, lsl #4
	strb	r3, [r4, #1168]	
	uxth	r6, r6
lab585: 	mov	r8, r8, lsr #12
	cmp	r3, #3
	strb	r8, [r4, #2364]	
	bls	lab572
	subs	r3, #4
	strb	r3, [r4, #1168]	
	lsls	r3, r6, #4
	strh	r3, [r4, #1166]	
lab584: 	subs	r7, #5
	lsrs	r6, r6, #12
	uxth	r7, r7
	strb	r6, [r4, #2365]	
	cmp r7, #0
	beq lab573
lab574: 	subs	r7, #1
	movs	r0, #0
	uxth	r7, r7
push {r1, r2}
	ldr r1, =4421
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =4421
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r7, #0
	bne	lab574
lab573: 	ldrb	r2, [r4, #2343]	
	cmp	r2, #0
	beq	lab575
	ldrb	r1, [r4, #2368]	
	ldrb	r0, [r4, #1428]	
	adds	r7, r4, r1
	movs	r6, #1
	ldrb	r3, [r7, #1660]	
	ldrb	r7, [r7, #1652]	
	adds	r3, #2
	uxtb	r3, r3
	lsl	r3, r6, r3
	lsl	r7, r6, r7
	orrs	r3, r7
	bics	r3, r0
	bne	lab576
	cmp	r2, r6
	beq	lab577
	ldrb	r7, [r4, #2369]	
	add	r7, r4
	ldrb	r3, [r7, #1660]	
	ldrb	r7, [r7, #1652]	
	adds	r3, #2
	uxtb	r3, r3
	lsl	r3, r6, r3
	lsl	r7, r6, r7
	orrs	r3, r7
	bics	r3, r0
	bne	lab576
	cmp	r2, #2
	beq	lab577
	ldrb	r7, [r4, #2370]	
	add	r7, r4
	ldrb	r3, [r7, #1660]	
	ldrb	r7, [r7, #1652]	
	adds	r3, #2
	uxtb	r3, r3
	lsl	r3, r6, r3
	lsls	r6, r7
	orrs	r3, r6
	bics	r3, r0
	bne	lab576
lab577: 	add	r1, r4
	ldrb	r3, [r4, #1432]	
	ldrb	r1, [r1, #1656]	
	cmp	r1, #0
	ite	ne
	movne	r1, #2
	moveq	r1, #1
	tst	r3, r1
	beq	lab578
	cmp	r2, #1
	beq	lab575
	ldrb	r1, [r4, #2369]	
	add	r1, r4
	ldrb	r1, [r1, #1656]	
	cmp	r1, #0
	ite	ne
	movne	r1, #2
	moveq	r1, #1
	tst	r3, r1
	beq	lab578
	cmp	r2, #2
	beq	lab575
	ldrb	r2, [r4, #2370]	
	add	r2, r4
	ldrb	r2, [r2, #1656]	
	cmp	r2, #0
	ite	ne
	movne	r2, #2
	moveq	r2, #1
	tst	r3, r2
	beq	lab578
lab575: 	ldrh	r2, [r4, #1430]	
	movs	r3, #0
	str	r3, [r4, #1632]	
	strh	r3, [r4, #1636]	
	cmp r2, #0
	beq lab579
	strh	r2, [r4, #1630]	
	strh	r3, [r4, #1638]	
lab579: 	ldrb	r3, [r4, #1168]	
	cmp	r3, #0
	bne	lab580
	ldrh	r1, [r4, #1166]	
	ldrb	r3, [r4, #897]	
	ldrb	r2, [r4, #896]	
lab581: 	subs	r3, #1
	uxtb	r3, r3
	strb	r3, [r4, #897]	
	add	r3, r4
	lsrs	r1, r1, #8
	adds	r2, #1
	strb	r2, [r4, #896]	
	strb	r1, [r3, #904]	
	movs	r2, #8
	movs	r0, #1
	strb	r2, [r4, #1168]	
push {r1, r2}
	ldr r1, =617
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =617
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r0, #1
push {r1, r2}
	ldr r1, =4798
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getBits.constprop.0
	push {r1, r2}
	ldr r1, =4798
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r6, [r4, #1164]	
	cmp	r6, #0
	bne	lab553
	ldrh	r2, [r4, #2338]	
	str	r2, [r5, #0]
	ldrh	r2, [r4, #2340]	
	str	r2, [r5, #4]
	ldrb	r2, [r4, #2342]	
	str	r2, [r5, #8]
	ldrb	r2, [r4, #2336]	
	strb	r2, [r5, #20]
	ldrh	r2, [r4, #2358]	
	ldrb	r1, [r4, #2356]	
	str	r2, [r5, #12]
	movw	r3, #1680	
	ldrh	r2, [r4, #2360]	
	str	r2, [r5, #16]
	movt	r3, #8192	
	ldrb	r2, [r4, #2355]	
	str	r2, [r5, #24]
	strd	r1, r3, [r5, #28]
	sub	r2, r3, #512	
	sub	r3, r3, #256	
	strd	r2, r3, [r5, #36]	
	b	lab553
lab580: 	ldrb	r3, [r4, #897]	
	ldrb	r2, [r4, #896]	
	ldrh	r1, [r4, #1166]	
	subs	r3, #1
	uxtb	r3, r3
	adds	r0, r4, r3
	adds	r2, #1
	strb	r1, [r0, #904]	
	uxtb	r2, r2
	b	lab581
lab576: 	movs	r6, #24
	b	lab536
lab545: 	movs	r6, #11
	b	lab536
lab562: 	movs	r1, #0
	mov	r2, r1
	b	lab582
lab568: 	movs	r2, #0
	movt	r2, #513	
	movs	r1, #4
	strb	r3, [r4, #2336]	
	str	r2, [r4, #1644]	
	movs	r3, #8
	movs	r2, #16
	strb	r1, [r4, #1640]	
	strb	r2, [r4, #2355]	
	strb	r3, [r4, #2356]	
	movs	r1, #7
	b	lab583
lab572: 	lsl	r3, r6, r3
	strh	r3, [r4, #1166]	
push {r1, r2}
	ldr r1, =152
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =152
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r2, [r4, #1166]	
	orr	r3, r0, r2
	ldrb	r2, [r4, #1168]	
	uxth	r3, r3
	rsb	r1, r2, #4
	lsls	r3, r1
	adds	r2, #4
	strh	r3, [r4, #1166]	
	strb	r2, [r4, #1168]	
	b	lab584
lab571: 	lsl	r3, r8, r3
	strh	r3, [r4, #1166]	
push {r1, r2}
	ldr r1, =1839
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	getChar
	push {r1, r2}
	ldr r1, =1839
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r6, [r4, #1166]	
	ldrb	r3, [r4, #1168]	
	orrs	r6, r0
	rsb	r2, r3, #4
	uxth	r6, r6
	adds	r3, #4
	lsls	r6, r2
	uxtb	r3, r3
	uxth	r6, r6
	strb	r3, [r4, #1168]	
	b	lab585
lab564: 	movs	r2, #2
	mov	r1, r2
	b	lab582
lab549: 	movs	r6, #36	
	b	lab536
lab578: 	movs	r6, #23
	b	lab536
lab544: 	movs	r6, #10
	b	lab536
lab566: 	strb	r2, [r4, #2336]	
	mov	r2, #256	
	movs	r3, #8
	movs	r1, #3
	strh	r2, [r4, #1644]	
	movs	r2, #2
	strb	r1, [r4, #1640]	
	strb	r3, [r4, #2355]	
	strb	r3, [r4, #2356]	
	strb	r2, [r4, #1646]	
	movs	r1, #7
	b	lab567
lab546: 	ldrb	r6, [r4, #1164]	
	cmp	r6, #0
	it	eq
	moveq	r6, #26
	b	lab553
memcpy:
	mov	ip, r0
	orr	r3, r1, r0
	ands	r3, r3, #3
	bne	lab586
lab595: 	subs	r2, #64	
	bcc	lab587
lab588: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #64	
	bcs	lab588
lab587: 	adds	r2, #48	
	bcc	lab589
lab590: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #16
	bcs	lab590
lab589: 	adds	r2, #12
	bcc	lab591
lab592: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #4
	bcs	lab592
lab591: 	adds	r2, #4
	beq	lab593
	lsls	r2, r2, #31
	itt	ne
	ldrbne	r3, [r1], #1
	strbne	r3, [r0], #1
	bcc	lab593
	ldrh	r3, [r1, #0]
	strh	r3, [r0, #0]
lab593: 	mov	r0, ip
	bx	lr
	nop
lab586: 	cmp	r2, #8
	bcc	lab594
	lsls	r3, r1, #30
	beq	lab595
	ands	r3, r0, #3
	beq	lab595
	rsb	r3, r3, #4
	subs	r2, r2, r3
	lsls	r3, r3, #31
	itt	ne
	ldrbne	r3, [r1], #1
	strbne	r3, [r0], #1
	bcc	lab595
	ldrh	r3, [r1], #2
	strh	r3, [r0], #2
	b	lab595
lab594: 	subs	r2, #4
	bcc	lab591
lab596: 	subs	r2, #1
	ldrb	r3, [r1], #1
	strb	r3, [r0], #1
	bcs	lab596
	ldrb	r3, [r1, #0]
	strb	r3, [r0, #0]
	ldrb	r3, [r1, #1]
	strb	r3, [r0, #1]
	ldrb	r3, [r1, #2]
	strb	r3, [r0, #2]
	mov	r0, ip
	bx	lr
memcmp:
	cmp	r2, #3
	push	{r4, lr}
	bls	lab597
	orr	ip, r0, r1
	tst	ip, #3
	mov	r4, r0
	mov	r3, r1
	bne	lab598
lab599: 	mov	r1, r3
	mov	r0, r4
	ldr	lr, [r1]
	ldr	ip, [r0]
	cmp	ip, lr
	add	r4, r4, #4
	add	r3, r3, #4
	bne	lab598
	subs	r2, #4
	cmp	r2, #3
	mov	r0, r4
	mov	r1, r3
	bhi	lab599
lab597: 	subs	r4, r2, #1
	cmp r2, #0
	beq lab600
lab604: 	add	ip, r0, #4294967295	
	subs	r1, #1
	b	lab601
lab603: 	adds	r3, r0, r3
	beq	lab602
lab601: 	ldrb	lr, [ip, #1]!
	ldrb	r2, [r1, #1]!
	cmp	lr, r2
	sub	r3, r4, ip
	beq	lab603
	sub	r0, lr, r2
	nop
	push {r1, r2}
	ldr r1, =7719
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
lab598: 	subs	r4, r2, #1
	b	lab604
lab602: 	mov	r0, r3
	nop
	push {r1, r2}
	ldr r1, =7763
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
lab600: 	mov	r0, r2
	nop
	push {r1, r2}
	ldr r1, =6816
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}


	 .section .rodata

jpeg_data:
	.word	0xe0ffd8ff
	.word	0x464a1000
	.word	0x01004649
	.word	0x48000101
	.word	0x00004800
	.word	0x4300dbff
	.word	0x3c375000
	.word	0x50323c46
	.word	0x5a464146
	.word	0x785f5055
	.word	0x6e7882c8
	.word	0xaff5786e
	.word	0xffc891b9
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0x00dbffff
	.word	0x5a550143
	.word	0x7869785a
	.word	0xeb8282eb
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0xc0ffffff
	.word	0x00081100
	.word	0x03330040
	.word	0x02001101
	.word	0x11030111
	.word	0x00c4ff01
	.word	0x03000018
	.word	0x00000101
	.word	0x00000000
	.word	0x00000000
	.word	0x02010000
	.word	0xff040003
	.word	0x102600c4
	.word	0x01020200
	.word	0x03040303
	.word	0x00000001
	.word	0x00000000
	.word	0x11000201
	.word	0x31211203
	.word	0x04716141
	.word	0x13915322
	.word	0xff625123
	.word	0x011500c4
	.word	0x00000101
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0xc4ff0100
	.word	0x01111400
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x0c00daff
	.word	0x02000103
	.word	0x00110311
	.word	0x88c7003f
	.word	0x664d280b
	.word	0x58cf02e1
	.word	0x00884505
	.word	0x0e3410a9
	.word	0x54686faf
	.word	0x61036433
	.word	0xdb496a02
	.word	0x50598449
	.word	0x3da05091
	.word	0x887c80a4
	.word	0x0548d518
	.word	0xffeb4309
	.word	0x02f52b00
	.word	0xac1cd478
	.word	0xb58e1048
	.word	0xa50ca855
	.word	0x2a52db2f
	.word	0x82f65319
	.word	0x450ea104
	.word	0xad0d84f8
	.word	0xd020217e
	.word	0x5c930430
	.word	0xc6e24399
	.word	0xd7d42057
	.word	0xe13a207d
	.word	0xf149f640
	.word	0x178ba320
	.word	0x264709c5
	.word	0x1eb50535
	.word	0x95027520
	.word	0xcf81fac0
	.word	0x0d6c0c52
	.word	0xddbd25a0
	.word	0x282af3d1
	.word	0x0e04b043
	.word	0xb229dc3a
	.word	0x116af813
	.word	0xa9225325
	.word	0xa82ee07d
	.word	0xa0dac106
	.word	0x304d2129
	.word	0xb9282a35
	.word	0x15068517
	.word	0xd88c9750
	.word	0x01e520ef
	.word	0xa152d3f9
	.word	0x14b00eb5
	.word	0x28323990
	.word	0x17d960e2
	.word	0xb1d9a2cc
	.word	0x1e583502
	.word	0x95580c60
	.word	0xf820a606
	.word	0x41673b90
	.word	0x4f02b3b0
	.word	0x8e40559c
	.word	0x5109feb5
	.word	0xfd01d712
	.word	0x7b99113b
	.word	0x4b7d5598
	.word	0xec0064bb
	.word	0x450504bd
	.word	0x3bb23662
	.word	0x1c2a1b42
	.word	0x11b87440
	.word	0x1fb80006
	.word	0x0000d9ff
r_ref.2:
	.word	0x21212121
	.word	0x21212121
	.word	0x20202020
	.word	0x20202020
	.word	0x1d1d1d1d
	.word	0x1d1d1d1d
	.word	0x19191919
	.word	0x19191919
	.word	0x15151515
	.word	0x15151515
	.word	0x11111111
	.word	0x11111111
	.word	0x0e0e0e0e
	.word	0x0e0e0e0e
	.word	0x0d0d0d0d
	.word	0x0d0d0d0d
g_ref.1:
	.word	0x35353535
	.word	0x35353535
	.word	0x34343434
	.word	0x34343434
	.word	0x31313131
	.word	0x31313131
	.word	0x2d2d2d2d
	.word	0x2d2d2d2d
	.word	0x29292929
	.word	0x29292929
	.word	0x25252525
	.word	0x25252525
	.word	0x22222222
	.word	0x22222222
	.word	0x21212121
	.word	0x21212121
b_ref.0:
	.word	0x43434343
	.word	0x43434343
	.word	0x42424242
	.word	0x42424242
	.word	0x3f3f3f3f
	.word	0x3f3f3f3f
	.word	0x3b3b3b3b
	.word	0x3b3b3b3b
	.word	0x37373737
	.word	0x37373737
	.word	0x33333333
	.word	0x33333333
	.word	0x30303030
	.word	0x30303030
	.word	0x2f2f2f2f
	.word	0x2f2f2f2f
CSWTCH.306:
	.word	0x200009ac
	.word	0x20000a0c
	.word	0x20000ce0
	.word	0x20000c90
CSWTCH.308:
	.word	0x200009fc
	.word	0x20000a5c
	.word	0x20000b90
	.word	0x20000a90
gWinogradQuant:
	.word	0xa7b2b280
	.word	0xe897a7f6
	.word	0xd18097e8
	.word	0x6580d1db
	.word	0xb2c5c5b2
	.word	0xa78b4565
	.word	0x458ba7b1
	.word	0x97836023
	.word	0x23608397
	.word	0x80765b31
	.word	0x2e315b76
	.word	0x51656551
	.word	0x4f452a2e
	.word	0x36232a45
	.word	0x251c2336
	.word	0x0a13131c
CSWTCH.299:
	.word	0x00020001
	.word	0x00080004
	.word	0x00200010
	.word	0x00800040
	.word	0x02000100
	.word	0x08000400
	.word	0x20001000
	.word	0x00004000
CSWTCH.301:
	.word	0xfffdffff
	.word	0xfff1fff9
	.word	0xffc1ffe1
	.word	0xff01ff81
	.word	0xfc01fe01
	.word	0xf001f801
	.word	0xc001e001
	.word	0x00008001
ZAG:
	.word	0x10080100
	.word	0x0a030209
	.word	0x19201811
	.word	0x05040b12
	.word	0x211a130c
	.word	0x22293028
	.word	0x060d141b
	.word	0x1c150e07
	.word	0x38312a23
	.word	0x242b3239
	.word	0x170f161d
	.word	0x332c251e
	.word	0x2d343b3a
	.word	0x2e271f26
	.word	0x363d3c35
	.word	0x3f3e372f


	 .section .data

SystemCoreClock:
	.word	0x00f42400


	 .section .bss

jpeg_off:
	.word	0x00000000
pInfo:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gCoeffBuf:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gMCUBufG:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gMCUBufB:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gMCUBufR:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gInBufLeft:
	.word	0x00000000
gInBufOfs:
	.word	0x00000000
g_pCallback_data:
	.word	0x00000000
gInBuf:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
g_pNeedBytesCallback:
	.word	0x00000000
gCallbackStatus:
	.word	0x00000000
gTemFlag:
	.word	0x00000000
gBitBuf:
	.word	0x00000000
gBitsLeft:
	.word	0x00000000
gQuant0:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gQuant1:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gValidHuffTables:
	.word	0x00000000
gRestartInterval:
	.word	0x00000000
gValidQuantTables:
	.word	0x00000000
gHuffTab0:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gHuffVal0:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gHuffTab1:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gHuffVal1:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gNumMCUSRemaining:
	.word	0x00000000
gRestartsLeft:
	.word	0x00000000
gLastDC:
	.word	0x00000000
	.word	0x00000000
gNextRestartNum:
	.word	0x00000000
gMaxBlocksPerMCU:
	.word	0x00000000
gMCUOrg:
	.word	0x00000000
	.word	0x00000000
gCompDCTab:
	.word	0x00000000
gCompQuant:
	.word	0x00000000
gCompACTab:
	.word	0x00000000
gReduce:
	.word	0x00000000
gHuffVal3:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gHuffVal2:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gHuffTab3:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gHuffTab2:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
gScanType:
	.word	0x00000000
gImageXSize:
	.word	0x00000000
gImageYSize:
	.word	0x00000000
gCompsInFrame:
	.word	0x00000000
gCompsInScan:
	.word	0x00000000
gCompIdent:
	.word	0x00000000
gCompHSamp:
	.word	0x00000000
gCompVSamp:
	.word	0x00000000
gMaxMCUXSize:
	.word	0x00000000
gMaxMCUYSize:
	.word	0x00000000
gMaxMCUSPerRow:
	.word	0x00000000
gMaxMCUSPerCol:
	.word	0x00000000
spectral_start:
	.word	0x00000000
spectral_end:
	.word	0x00000000
successive_high:
	.word	0x00000000
successive_low:
	.word	0x00000000
gCompList:
	.word	0x0


	 .section .heap

_heap_bottom_0x5:
	.word	0x00000000
	.word	0x00000000
_heap_bottom:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
_heap_top:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
