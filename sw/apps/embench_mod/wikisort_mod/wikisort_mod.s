	.cpu cortex-m4
	.text
	.thumb
	.syntax unified
	.global main
	.type main, %function

    .global SystemInit
	.type SystemInit, %function

TestCompare:
	push	{lr}
	sub	sp, #20
	cmp	r0, r2
	add	lr, sp, #16
	stmdb	lr, {r0, r1}
	mov	ip, sp
	ite	ge
	movge	r0, #0
	movlt	r0, #1
	stmia	ip, {r2, r3}
	add	sp, #20
	ldr	pc, [sp], #4
TestingAscending:
	bx	lr
	nop
TestingDescending:
	subs	r0, r1, r0
	bx	lr
TestingEqual:
	mov	r0, #1000	
	bx	lr
	nop
TestingRandom:
	b	rand_beebs
TestingMostlyDescending:
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r1
	mov	r6, r0
	bl	rand_beebs
push {r1, r2}
	ldr r1, =956
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =956
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #0
	movw	r3, #65535	
	movt	r2, #65472	
	movt	r3, #16863	
push {r1, r2}
	ldr r1, =3797
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =3797
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16404	
push {r1, r2}
	ldr r1, =7911
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7911
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	subs	r0, r7, r6
	mov	r5, r1
push {r1, r2}
	ldr r1, =5338
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =5338
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =3562
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =3562
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16388	
	bl	__aeabi_dsub
	bl	__aeabi_d2iz
	pop	{r3, r4, r5, r6, r7, pc}
TestingMostlyAscending:
	push	{r4, r5, r6, lr}
	mov	r6, r0
	bl	rand_beebs
push {r1, r2}
	ldr r1, =781
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =781
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #0
	movw	r3, #65535	
	movt	r2, #65472	
	movt	r3, #16863	
push {r1, r2}
	ldr r1, =4472
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =4472
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16404	
push {r1, r2}
	ldr r1, =3734
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3734
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	mov	r0, r6
	mov	r5, r1
push {r1, r2}
	ldr r1, =2233
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =2233
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =6698
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =6698
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16388	
	bl	__aeabi_dsub
	bl	__aeabi_d2iz
	pop	{r4, r5, r6, pc}
	nop
TestingJittered:
	push	{r4, lr}
	mov	r4, r0
	bl	rand_beebs
push {r1, r2}
	ldr r1, =4014
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =4014
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #0
	movw	r3, #65535	
	movt	r2, #65472	
	movt	r3, #16863	
push {r1, r2}
	ldr r1, =6059
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =6059
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #52429	
	movw	r3, #52428	
	movt	r2, #52428	
	movt	r3, #16364	
	bl	__aeabi_dcmple
	cmp r0, #0
	bne lab0
	subs	r4, #2
lab0: 	mov	r0, r4
	pop	{r4, pc}
	nop
TestingMostlyEqual:
	push	{r3, lr}
	bl	rand_beebs
	negs	r3, r0
	and	r3, r3, #3
	and	r0, r0, #3
	it	pl
	negpl	r0, r3
	add	r0, r0, #1000	
	pop	{r3, pc}
	nop
TestingPathological:
	cmp r0, #0
	beq lab1
	add	r3, r1, r1, lsr #31
	cmp	r0, r3, asr #1
	blt	lab2
	subs	r1, #1
	cmp	r0, r1
	ite	eq
	moveq	r0, #10
	movne	r0, #9
	bx	lr
lab2: 	movs	r0, #11
	bx	lr
lab1: 	movs	r0, #10
	bx	lr
WikiMerge.constprop.1.isra.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, #44	
	add	r4, sp, #40	
	sub	r8, r3, r2
	stmdb	r4, {r2, r3}
	ldr	ip, [sp, #88]	
	str	r2, [sp, #20]
	mov	r4, r0
	cmp	r8, #512	
	ldr	r0, [sp, #80]	
	str	r1, [sp, #12]
	ldr	r6, [sp, #92]	
	str	ip, [sp, #8]
	mov	r1, r2
	str	r0, [sp, #16]
	ldr	r2, [sp, #84]	
	bgt	lab3
	add	r3, r4, r1, lsl #3
	subs	r1, r2, r0
	cmp	r1, #0
	add	sl, r6, r8, lsl #3
	ble	lab4
	cmp	r8, #0
	ble	lab4
	add	r7, r4, r0, lsl #3
	add	r4, r4, r2, lsl #3
	mov	r8, r4
	add	r5, r3, #8
	mov	r4, ip
	b	lab5
lab6: 	ldmia	r6, {r0, r1}
	adds	r6, #8
	cmp	sl, r6
	stmdb	r5, {r0, r1}
	beq	lab4
lab7: 	adds	r5, #8
lab5: 	ldmia	r6, {r2, r3}
	ldmia	r7, {r0, r1}
	blx	r4
	mov	r3, r5
	cmp	r0, #0
	beq	lab6
	ldmia	r7, {r0, r1}
	adds	r7, #8
	cmp	r8, r7
	stmdb	r5, {r0, r1}
	bne	lab7
lab4: 	sub	r2, sl, r6
	mov	r1, r6
	mov	r0, r3
	add	sp, #44	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	memcpy
lab3: 	subs	r3, r2, r0
	cmp	r3, #0
	str	r3, [sp, #24]
	ble	lab8
	ldr	r3, [sp, #20]
	str	r8, [sp, #28]
	add	r7, r4, r3, lsl #3
	mov	fp, #0
	movs	r3, #1
	ldr	r9, [sp, #12]
	str	r3, [sp, #4]
	adds	r7, #4
	mov	sl, fp
	mov	r8, r0
	b	lab9
lab11: 	mov	r3, r7
	ldmia	r6, {r0, r1}
	ldr	r2, [r3], #-4
	ldr	r5, [r7, #-4]
	stmia	r3, {r0, r1}
	ldr	r3, [sp, #28]
	str	r5, [r4, r9, lsl #3]
	add	sl, sl, #1
	cmp	r3, sl
	str	r2, [r6, #4]
	ble	lab10
	ldr	r3, [sp, #12]
	add	r9, sl, r3
lab13: 	ldr	r3, [sp, #4]
	adds	r3, #1
	str	r3, [sp, #4]
	adds	r7, #8
lab9: 	add	r5, r4, r8, lsl #3
	add	r6, r4, r9, lsl #3
	ldmia	r5, {r0, r1}
	ldmia	r6, {r2, r3}
	ldr	ip, [sp, #8]
	blx	ip
	cmp	r0, #0
	beq	lab11
	mov	r3, r7
	ldmia	r5, {r0, r1}
	ldr	r2, [r3], #-4
	ldr	r6, [r7, #-4]
	stmia	r3, {r0, r1}
	ldr	r3, [sp, #24]
	str	r6, [r4, r8, lsl #3]
	add	fp, fp, #1
	cmp	r3, fp
	str	r2, [r5, #4]
	ble	lab12
	ldr	r3, [sp, #16]
	add	r8, r3, fp
	b	lab13
lab12: 	ldr	r8, [sp, #28]
	str	r9, [sp, #12]
lab16: 	ldr	r3, [sp, #20]
	ldr	r2, [sp, #4]
	sub	r8, r8, sl
	add	r3, r2
	cmp	r8, #0
	str	r3, [sp, #20]
	ble	lab14
lab8: 	ldr	r3, [sp, #12]
	add	r2, r4, r3, lsl #3
	ldr	r3, [sp, #20]
	add	r4, r4, r3, lsl #3
	add	lr, r2, #4
	add	ip, r4, #4
	movs	r3, #0
lab15: 	add	r1, r4, r3, lsl #3
	ldmia	r1, {r0, r1}
	ldr	r7, [r2, r3, lsl #3]
	ldr	r6, [lr, r3, lsl #3]
	add	r5, r2, r3, lsl #3
	stmia	r5, {r0, r1}
	str	r7, [r4, r3, lsl #3]
	str	r6, [ip, r3, lsl #3]
	adds	r3, #1
	cmp	r3, r8
	blt	lab15
lab14: 	add	sp, #44	
	nop
	push {r1, r2}
	ldr r1, =1367
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab10: 	mov	r8, r3
	ldr	r3, [sp, #12]
	add	r3, sl
	str	r3, [sp, #12]
	b	lab16
	nop
WikiMerge.constprop.0.isra.0:
	sub	sp, #8
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	ip, r2, r1
	sub	sp, #36	
	add	r4, sp, #32
	cmp	ip, #512	
	stmdb	r4, {r1, r2}
	str	r0, [sp, #4]
	ldr	r4, [sp, #84]	
	ldr	r7, [sp, #80]	
	str	r1, [sp, #12]
	str	r3, [sp, #76]	
	mov	r0, r3
	str	r3, [sp, #8]
	bgt	lab17
	movw	r3, #6236	
	movt	r3, #8192	
	add	r6, r3, r1, lsl #3
	subs	r1, r7, r0
	cmp	r1, #0
	add	r2, r4, ip, lsl #3
	ble	lab18
	cmp	ip, #0
	ble	lab18
	add	r5, r3, r0, lsl #3
	add	r7, r3, r7, lsl #3
	add	r3, r6, #8
	b	lab19
lab20: 	ldmia	r4, {r0, r1}
	adds	r4, #8
	cmp	r2, r4
	stmdb	r3, {r0, r1}
	beq	lab18
lab21: 	adds	r3, #8
lab19: 	ldr	r0, [r4, #0]
	ldr	r1, [r5, #0]
	cmp	r0, r1
	mov	r6, r3
	ble	lab20
	ldmia	r5, {r0, r1}
	adds	r5, #8
	cmp	r7, r5
	stmdb	r3, {r0, r1}
	bne	lab21
lab18: 	subs	r2, r2, r4
	mov	r1, r4
	mov	r0, r6
	add	sp, #36	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	sp, #8
	b	memcpy
lab17: 	subs	r3, r7, r3
	cmp	r3, #0
	str	r3, [sp, #16]
	ble	lab22
	lsls	r1, r1, #3
	movw	r3, #6236	
	movt	r3, #8192	
	adds	r2, r1, #4
	subs	r1, #4
	adds	r1, r3, r1
	mov	fp, #0
	ldr	lr, [sp, #4]
	str	ip, [sp, #20]
	mov	r5, r0
	add	r2, r3
	movs	r4, #1
	mov	sl, fp
	mov	r9, r1
	b	lab23
lab25: 	ldmia	r8, {r0, r1}
	ldr	ip, [r7, #-4]!
	ldr	r6, [r9, r4, lsl #3]
	stmia	r7, {r0, r1}
	ldr	r1, [sp, #20]
	str	ip, [r3, lr, lsl #3]
	add	sl, sl, #1
	cmp	r1, sl
	str	r6, [r8, #4]
	ble	lab24
	ldr	r1, [sp, #4]
	add	lr, sl, r1
lab27: 	adds	r4, #1
	adds	r2, #8
lab23: 	ldr	r0, [r3, lr, lsl #3]
	ldr	r1, [r3, r5, lsl #3]
	cmp	r0, r1
	mov	r7, r2
	mov	r6, r2
	add	ip, r3, r5, lsl #3
	add	r8, r3, lr, lsl #3
	ble	lab25
	ldmia	ip, {r0, r1}
	ldr	r8, [r6, #-4]!
	ldr	r7, [r9, r4, lsl #3]
	stmia	r6, {r0, r1}
	ldr	r1, [sp, #16]
	str	r8, [r3, r5, lsl #3]
	add	fp, fp, #1
	cmp	r1, fp
	str	r7, [ip, #4]
	ble	lab26
	ldr	r1, [sp, #8]
	add	r5, r1, fp
	b	lab27
lab22: 	movw	r3, #6236	
	movt	r3, #8192	
lab29: 	ldr	r2, [sp, #4]
	add	r4, r3, r2, lsl #3
	ldr	r2, [sp, #12]
	add	r3, r3, r2, lsl #3
	add	r8, r4, #4
	add	lr, r3, #4
	movs	r2, #0
lab28: 	add	r1, r3, r2, lsl #3
	ldmia	r1, {r0, r1}
	ldr	r7, [r4, r2, lsl #3]
	ldr	r6, [r8, r2, lsl #3]
	add	r5, r4, r2, lsl #3
	stmia	r5, {r0, r1}
	str	r7, [r3, r2, lsl #3]
	str	r6, [lr, r2, lsl #3]
	adds	r2, #1
	cmp	ip, r2
	bgt	lab28
lab30: 	add	sp, #36	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	sp, #8
	nop
	push {r1, r2}
	ldr r1, =4329
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
lab26: 	ldr	ip, [sp, #20]
	str	lr, [sp, #4]
lab31: 	ldr	r2, [sp, #12]
	sub	ip, ip, sl
	add	r2, r4
	cmp	ip, #0
	str	r2, [sp, #12]
	bgt	lab29
	b	lab30
lab24: 	ldr	r2, [sp, #4]
	add	r2, sl
	mov	ip, r1
	str	r2, [sp, #4]
	b	lab31
Rotate.constprop.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r6, r2
	sub	sp, #8
	add	r4, sp, #8
	cmp	r6, r1
	stmdb	r4, {r1, r2}
	ldr	r2, [sp, #40]	
	beq	lab32
	cmp	r0, #0
	ite	lt
	addlt	r5, r0, r6
	addge	r5, r0, r1
	mov	r8, r0
	sub	r7, r6, r5
	it	lt
	sublt	r8, r5, r1
	cmp	r7, r8
	mov	r4, r1
	mov	r9, r3
	bge	lab33
	cmp	r7, r2
	ble	lab34
lab40: 	add	r3, r8, r8, lsr #31
	cmp	r8, #1
	mov	r3, r3, asr #1
	ble	lab35
	movw	r8, #6236	
	movt	r8, #8192	
	subs	r2, r5, r3
	add	r3, r4
	add	r2, r8, r2, lsl #3
	add	r3, r8, r3, lsl #3
	add	r8, r8, #4
	adds	r2, #4
	add	r8, r8, r5, lsl #3
lab36: 	subs	r1, r2, #4
	ldmia	r1, {r0, r1}
	ldrd	lr, ip, [r3, #-8]
	subs	r3, #8
	stmia	r3, {r0, r1}
	str	lr, [r2, #-4]
	str	ip, [r2], #8
	cmp	r8, r2
	bne	lab36
lab35: 	add	r2, r7, r7, lsr #31
	cmp	r7, #1
	mov	r2, r2, asr #1
	ble	lab37
	movw	ip, #6236	
	movt	ip, #8192	
	adds	r3, r5, r2
	subs	r2, r6, r2
	add	r2, ip, r2, lsl #3
	add	r3, ip, r3, lsl #3
	add	ip, ip, #4
	adds	r2, #4
	add	ip, ip, r6, lsl #3
lab38: 	subs	r1, r2, #4
	ldmia	r1, {r0, r1}
	ldrd	r7, r5, [r3, #-8]
	subs	r3, #8
	stmia	r3, {r0, r1}
	str	r7, [r2, #-4]
	str	r5, [r2], #8
	cmp	ip, r2
	bne	lab38
lab37: 	subs	r2, r6, r4
	add	r3, r2, r2, lsr #31
	cmp	r2, #1
	mov	r3, r3, asr #1
	ble	lab32
	movw	r1, #6236	
	movt	r1, #8192	
	subs	r2, r6, r3
	add	r3, r4
	add	r2, r1, r2, lsl #3
	add	r3, r1, r3, lsl #3
	adds	r1, #4
	add	r6, r1, r6, lsl #3
	adds	r2, #4
lab39: 	subs	r1, r2, #4
	ldmia	r1, {r0, r1}
	ldrd	r5, r4, [r3, #-8]
	subs	r3, #8
	stmia	r3, {r0, r1}
	str	r5, [r2, #-4]
	str	r4, [r2], #8
	cmp	r6, r2
	bne	lab39
lab32: 	add	sp, #8
	nop
	push {r1, r2}
	ldr r1, =4836
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab33: 	cmp	r2, r8
	blt	lab40
	movw	r6, #6236	
	movt	r6, #8192	
	mov	r8, r8, lsl #3
	add	sl, r6, r1, lsl #3
	mov	r2, r8
	mov	r1, sl
	mov	r0, r3
	bl	memcpy
	add	r1, r6, r5, lsl #3
	lsls	r2, r7, #3
	mov	r0, sl
push {r1, r2}
	ldr r1, =3866
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3866
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r0, r7, r4
	mov	r2, r8
	mov	r1, r9
	add	r0, r6, r0, lsl #3
lab41: 	add	sp, #8
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	b	memcpy
lab34: 	mov	sl, r7, lsl #3
	movw	r7, #6236	
	movt	r7, #8192	
	add	r1, r7, r5, lsl #3
	mov	r2, sl
	mov	r0, r3
	bl	memcpy
	add	r4, r7, r4, lsl #3
	sub	r0, r6, r8
	mov	r2, r8, lsl #3
	mov	r1, r4
	add	r0, r7, r0, lsl #3
push {r1, r2}
	ldr r1, =4922
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =4922
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, sl
	mov	r1, r9
	mov	r0, r4
	b	lab41
	nop
WikiSort.constprop.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	fp, #6236	
	sub	sp, sp, #4320	
	movs	r5, #0
	sub	sp, #28
	movt	fp, #8192	
	mov	ip, #2
	mov	lr, #1
	mov	r7, r5
lab47: 	cmp	lr, r5
	add	r7, r7, #25
	mov	r6, lr
	bgt	lab42
	cmp	r7, ip
	mov	r6, ip
	ble	lab43
lab42: 	add	r3, fp, r6, lsl #3
	ldr	r4, [fp, r6, lsl #3]
	ldr	r8, [r3, #4]
	mov	r2, r6
	b	lab44
lab46: 	ldmdb	r3, {r0, r1}
	cmp	r5, r2
	stmia	r3, {r0, r1}
	bge	lab45
lab44: 	add	r3, fp, r2, lsl #3
	subs	r2, #1
	ldr	r1, [r3, #-8]
	cmp	r1, r4
	bgt	lab46
	adds	r6, #1
	cmp	r7, r6
	strd	r4, r8, [r3]
	bgt	lab42
lab76: 	cmp	r7, #400	
	add	r5, r5, #25
	add	lr, lr, #25
	add	ip, ip, #25
	bne	lab47
	movs	r3, #4
	str	r3, [sp, #124]	
	movs	r3, #25
	str	r3, [sp, #72]	
	add	r3, sp, #224	
	str	r3, [sp, #148]	
	mov	r9, fp
lab79: 	ldr	r4, [sp, #72]	
	mov	r0, r4
push {r1, r2}
	ldr r1, =1393
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =1393
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
push {r1, r2}
	ldr r1, =1444
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sqrt
	push {r1, r2}
	ldr r1, =1444
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	__aeabi_d2iz
	sdiv	r3, r4, r0
	mov	r6, r0
	str	r3, [sp, #116]	
	adds	r3, #1
	lsls	r2, r4, #3
	lsls	r0, r3, #1
	str	r3, [sp, #112]	
	lsls	r3, r6, #3
	str	r3, [sp, #76]	
	sub	r3, r2, #8
	add	r3, r9
	mov	r1, r4
	str	r3, [sp, #56]	
	subs	r3, r0, #2
	subs	r3, r1, r3
	movs	r5, #0
	str	r4, [sp, #36]	
	str	r3, [sp, #144]	
	lsls	r4, r4, #4
	lsls	r3, r1, #1
	str	r3, [sp, #72]	
	strd	r5, r5, [sp, #104]	
	sub	r3, r4, #8
	strd	r5, r5, [sp, #44]	
	str	r3, [sp, #88]	
	movs	r3, #1
	str	r2, [sp, #136]	
	str	r0, [sp, #140]	
	str	r4, [sp, #96]	
	str	r5, [sp, #132]	
	str	r1, [sp, #100]	
	str	r9, [sp, #52]	
	str	r3, [sp, #68]	
	str	r5, [sp, #128]	
	str	r5, [sp, #120]	
	str	r5, [sp, #80]	
	str	r5, [sp, #60]	
	mov	fp, r6
lab77: 	ldr	r0, [sp, #52]	
	ldr	r3, [sp, #88]	
	ldr	r6, [sp, #60]	
	ldr	r2, [r0, #0]
	ldr	r3, [r0, r3]
	ldr	r1, [sp, #72]	
	ldr	r4, [sp, #36]	
	str	r6, [sp, #28]
	adds	r1, r6, r1
	cmp	r2, r3
	str	r1, [sp, #64]	
	str	r4, [sp, #12]
	str	r1, [sp, #60]	
	str	r0, [sp, #8]
	bgt	lab48
	ldr	r3, [sp, #56]	
	ldr	r2, [r3, #8]
	ldr	r3, [r3, #0]
	cmp	r2, r3
	bge	lab49
	ldr	r3, [sp, #100]	
	cmp	r3, #512	
	ble	lab50
	ldr	r3, [sp, #80]	
	ldr	r2, [sp, #48]	
	subs	r3, r3, r2
	cmp	r3, #0
	str	r3, [sp, #92]	
	ble	lab51
	ldr	r7, [sp, #100]	
	str	r1, [sp, #84]	
	mov	sl, r7
	mov	r3, r6
lab96: 	sdiv	lr, r7, fp
	mls	lr, fp, lr, r7
	add	r8, r3, lr
	ldr	r3, [sp, #36]	
	add	r6, r8, #1
	cmp	r3, r6
	mov	r5, r8
	ble	lab52
	ldr	r3, [sp, #48]	
	ldr	ip, [sp, #76]	
	add	r4, r9, r3, lsl #3
	strd	lr, r8, [sp, #16]
	ldr	lr, [sp, #36]	
	adds	r4, #4
	add	r3, r9, r8, lsl #3
lab53: 	mov	r2, r4
	add	r1, r3, #8
	ldmia	r1, {r0, r1}
	ldr	r7, [r4, #-4]
	ldr	r5, [r2], #-4
	add	r6, fp
	cmp	lr, r6
	stmia	r2, {r0, r1}
	add	r4, r4, #8
	strd	r7, r5, [r3, #8]
	add	r3, ip
	bgt	lab53
	ldrd	lr, r5, [sp, #16]
lab52: 	ldr	r3, [sp, #36]	
	cmp	fp, sl
	ite	le
	addle	r3, fp
	addgt	r3, sl
	cmp	lr, #512	
	ldr	sl, [r9, r8, lsl #3]
	str	r3, [sp, #16]
	bgt	lab54
	ldr	r1, [sp, #8]
	mov	r2, lr, lsl #3
	add	r0, sp, #248	
	bl	memcpy
lab98: 	ldr	r3, [sp, #36]	
	str	r3, [sp, #20]
	movs	r6, #0
	add	r3, r9, #4
	str	r8, [sp, #24]
	str	r8, [sp, #8]
	mov	r4, r6
	str	r6, [sp, #40]	
	str	r3, [sp, #32]
lab71: 	subs	r3, r6, r4
	cmp	r3, #0
	ble	lab55
lab68: 	add	r3, r6, #536870912	
	subs	r3, #1
	ldr	r3, [r9, r3, lsl #3]
	cmp	r3, sl
	blt	lab55
lab69: 	subs	r7, r6, #1
	cmp	r4, r7
	bge	lab56
	ldr	r0, [r9, r5, lsl #3]
	mov	r2, r7
lab58: 	subs	r3, r2, r4
	add	r3, r4, r3, asr #1
	ldr	r1, [r9, r3, lsl #3]
	cmp	r1, r0
	bge	lab57
	adds	r4, r3, #1
	cmp	r2, r4
	bgt	lab58
lab56: 	cmp	r7, r4
	bne	lab59
	ldr	r2, [r9, r4, lsl #3]
	ldr	r3, [r9, r5, lsl #3]
	cmp	r2, r3
	it	lt
	addlt	r4, #1
lab59: 	cmp	fp, #0
	ldr	r3, [sp, #8]
	sub	r6, r6, r4
	ble	lab60
	subs	r5, r5, r3
	add	r2, r9, r3, lsl #3
	add	r7, fp, r3
	ldr	r3, [sp, #32]
	adds	r2, #4
	add	sl, r3, r7, lsl #3
	mov	r8, r5, lsl #3
	mov	ip, r6
	mov	lr, r4
lab61: 	mov	r3, r2
	ldr	r6, [r2, #-4]
	ldr	r4, [r3], #-4
	add	r1, r3, r8
	ldmia	r1, {r0, r1}
	stmia	r3, {r0, r1}
	str	r6, [r3, r5, lsl #3]
	str	r4, [r2, r5, lsl #3]
	adds	r2, #8
	cmp	r2, sl
	bne	lab61
	mov	r6, ip
	mov	r4, lr
lab81: 	add	r2, sp, #248	
	strd	r4, r2, [sp]
	ldr	r1, [sp, #48]	
	ldr	r2, [sp, #40]	
	ldr	r3, [sp, #28]
	str	r3, [sp, #152]	
	add	r8, r1, r2
	adds	r2, #1
	str	r2, [sp, #40]	
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #24]
	str	r3, [sp, #156]	
	adds	r5, r2, #1
	add	ip, r9, r8, lsl #3
	ldmia	ip, {r0, r1}
	add	lr, r9, r5, lsl #3
	ldr	sl, [r9, r5, lsl #3]
	ldr	r2, [lr, #4]
	stmia	lr, {r0, r1}
	str	sl, [r9, r8, lsl #3]
	str	r2, [ip, #4]
	add	r2, sp, #152	
	ldmia	r2, {r1, r2}
	ldr	r0, [sp, #44]	
	strd	r3, r4, [sp, #208]	
push {r1, r2}
	ldr r1, =1747
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	WikiMerge.constprop.0.isra.0
	push {r1, r2}
	ldr r1, =1747
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	fp, #512	
	mov	r5, r5, lsl #3
	bgt	lab62
	sub	r1, r5, #8
	ldr	r2, [sp, #76]	
	add	r1, r9
	add	r0, sp, #248	
	bl	memcpy
lab73: 	cmp	r6, #0
	sub	r5, r7, r6
	ble	lab63
	ldr	r3, [sp, #32]
	subs	r5, r5, r4
	add	r2, r9, r4, lsl #3
	add	r4, r6
	adds	r2, #4
	add	lr, r3, r4, lsl #3
	mov	r8, r5, lsl #3
	mov	ip, r6
lab64: 	mov	r3, r2
	ldr	r6, [r2, #-4]
	ldr	r4, [r3], #-4
	add	r1, r3, r8
	ldmia	r1, {r0, r1}
	stmia	r3, {r0, r1}
	str	r6, [r3, r5, lsl #3]
	str	r4, [r2, r5, lsl #3]
	adds	r2, #8
	cmp	lr, r2
	bne	lab64
	mov	r6, ip
lab63: 	ldr	r3, [sp, #8]
	subs	r3, r3, r6
	str	r3, [sp, #28]
	add	r3, fp
	str	r3, [sp, #24]
	add	r6, r3
	ldr	r3, [sp, #12]
	cmp	r7, r3
	beq	lab65
	adds	r5, r7, #1
	mov	r0, r3
	add	r3, fp, r5
	cmp	r0, r3
	ble	lab66
	ldr	r1, [r9, r5, lsl #3]
lab67: 	ldr	r2, [r9, r3, lsl #3]
	cmp	r1, r2
	it	gt
	movgt	r5, r3
	add	r3, fp
	it	gt
	movgt	r1, r2
	cmp	r3, r0
	blt	lab67
	subs	r5, #1
lab82: 	ldr	r4, [sp, #24]
	ldr	sl, [r9, r5, lsl #3]
	str	r7, [sp, #8]
	subs	r3, r6, r4
	cmp	r3, #0
	bgt	lab68
lab55: 	ldrd	r3, r2, [sp, #16]
	cmp	r3, r2
	beq	lab69
	subs	r6, r3, r2
	cmp	fp, r6
	ble	lab70
	ldr	r4, [sp, #8]
	subs	r0, r2, r3
	strd	r4, r3, [sp, #200]	
	movs	r3, #0
	str	r3, [sp, #0]
	ldr	r3, [sp, #12]
	add	r3, r6
	str	r3, [sp, #12]
	add	r3, sp, #200	
	mov	r7, r2
	add	r5, r6
	ldmia	r3, {r1, r2}
	add	r6, r4
	add	r3, sp, #248	
push {r1, r2}
	ldr r1, =7271
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.0
	push {r1, r2}
	ldr r1, =7271
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r7, [sp, #16]
	str	r6, [sp, #8]
	b	lab71
lab57: 	cmp	r4, r3
	bge	lab56
	mov	r2, r3
	b	lab58
lab62: 	ldr	r3, [sp, #44]	
	ldr	r1, [sp, #8]
	subs	r2, r5, #4
	subs	r5, r3, r1
	ldr	r3, [sp, #32]
	add	r2, r9
	add	sl, r3, r7, lsl #3
	mov	r8, r5, lsl #3
	mov	ip, r6
	mov	lr, r4
lab72: 	mov	r3, r2
	ldr	r6, [r2, #-4]
	ldr	r4, [r3], #-4
	add	r1, r3, r8
	ldmia	r1, {r0, r1}
	stmia	r3, {r0, r1}
	str	r6, [r3, r5, lsl #3]
	str	r4, [r2, r5, lsl #3]
	adds	r2, #8
	cmp	r2, sl
	bne	lab72
	mov	r6, ip
	mov	r4, lr
	b	lab73
lab70: 	cmp	fp, #0
	ble	lab74
	ldr	r1, [sp, #8]
	mov	r3, r2
	subs	r4, r3, r1
	ldr	r3, [sp, #32]
	add	r2, r9, r1, lsl #3
	add	r7, fp, r1
	adds	r2, #4
	add	r8, r3, r7, lsl #3
	mov	lr, r4, lsl #3
	mov	ip, r5
lab75: 	mov	r3, r2
	ldr	r5, [r2, #-4]
	ldr	r6, [r3], #-4
	add	r1, r3, lr
	ldmia	r1, {r0, r1}
	stmia	r3, {r0, r1}
	str	r5, [r3, r4, lsl #3]
	str	r6, [r2, r4, lsl #3]
	adds	r2, #8
	cmp	r8, r2
	bne	lab75
	mov	r5, ip
lab99: 	ldrd	r1, r2, [sp, #8]
	cmp	r5, r1
	it	eq
	moveq	r5, r2
	add	r2, fp
	str	r2, [sp, #12]
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #16]
	str	r7, [sp, #8]
	add	r2, fp
	str	r2, [sp, #20]
	ldr	r2, [sp, #84]	
	add	r3, fp
	cmp	r3, r2
	it	ge
	movge	r3, r2
	mov	r6, r7
	mov	r4, r1
	str	r3, [sp, #16]
	b	lab71
lab45: 	adds	r6, #1
	add	r3, fp, r2, lsl #3
	cmp	r7, r6
	strd	r4, r8, [r3]
	bgt	lab42
	b	lab76
lab50: 	mov	r1, r0
	ldr	r2, [sp, #136]	
	add	r0, sp, #248	
	bl	memcpy
	add	r3, sp, #248	
	ldr	r0, [sp, #36]	
	str	r3, [sp, #4]
	ldr	r3, [sp, #60]	
	str	r0, [sp, #164]	
	strd	r0, r3, [sp, #168]	
	str	r3, [sp, #0]
	str	r6, [sp, #160]	
	add	r3, sp, #160	
	ldmia	r3, {r1, r2}
	mov	r3, r0
	movs	r0, #0
push {r1, r2}
	ldr r1, =3759
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	WikiMerge.constprop.0.isra.0
lab49:	push {r1, r2}
	ldr r1, =3759
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r3, [sp, #80]	
	ldr	r2, [sp, #48]	
	subs	r3, r3, r2
	str	r3, [sp, #92]	
lab80: 	ldr	r3, [sp, #52]	
	ldr	r2, [sp, #96]	
	ldr	r1, [sp, #72]	
	add	r3, r2
	str	r3, [sp, #52]	
	ldr	r3, [sp, #36]	
	add	r3, r1
	str	r3, [sp, #36]	
	ldr	r3, [sp, #68]	
	add	r3, r1
	str	r3, [sp, #68]	
	ldr	r3, [sp, #56]	
	add	r3, r2
	str	r3, [sp, #56]	
	ldr	r3, [sp, #64]	
	cmp	r3, #400	
	blt	lab77
	ldr	r3, [sp, #92]	
	cmp	r3, #0
	bgt	lab78
lab146: 	ldr	r3, [sp, #124]	
	subs	r3, #1
	str	r3, [sp, #124]	
	bne	lab79
	add	sp, sp, #4320	
	add	sp, #28
	nop
	push {r1, r2}
	ldr r1, =8172
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab48: 	str	r1, [sp, #244]	
	ldr	r2, [sp, #80]	
	ldr	r1, [sp, #48]	
	str	r6, [sp, #240]	
	mov	r3, #512	
	str	r3, [sp, #0]
	subs	r2, r2, r1
	add	r3, sp, #248	
	str	r2, [sp, #92]	
	ldr	r0, [sp, #100]	
	ldrd	r1, r2, [r3, #-8]
push {r1, r2}
	ldr r1, =7480
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.0
	push {r1, r2}
	ldr r1, =7480
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab80
lab60: 	add	r7, fp, r3
	b	lab81
lab65: 	ldr	r3, [sp, #28]
	str	r3, [sp, #152]	
	add	r2, sp, #248	
	ldr	r3, [sp, #24]
	str	r2, [sp, #4]
	ldr	r2, [sp, #84]	
	str	r2, [sp, #0]
	strd	r3, r2, [sp, #192]	
	str	r3, [sp, #156]	
	add	r2, sp, #152	
	ldmia	r2, {r1, r2}
	ldr	r0, [sp, #44]	
push {r1, r2}
	ldr r1, =3858
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	WikiMerge.constprop.0.isra.0
	push {r1, r2}
	ldr r1, =3858
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab80
lab66: 	mov	r5, r7
	b	lab82
lab51: 	mov	r0, r4
	ldr	r7, [sp, #116]	
	ldr	r4, [sp, #68]	
	movs	r5, #1
lab86: 	add	r3, r9, r4, lsl #3
	ldr	r2, [r9, r4, lsl #3]
	ldr	r3, [r3, #-8]
	cmp	r2, r3
	add	r1, r5, #1
	bgt	lab83
	bge	lab84
lab83: 	cmp	r7, r5
	mov	r5, r1
	beq	lab85
lab84: 	adds	r4, #1
	cmp	r0, r4
	bgt	lab86
lab85: 	ldr	r3, [sp, #112]	
	cmp	r3, #512	
	bgt	lab87
	cmp	r3, r5
	bne	lab88
	ldr	r2, [sp, #28]
	ldr	sl, [sp, #64]	
	str	r2, [sp, #120]	
	add	r3, r2
	strd	sl, r3, [sp, #104]	
	str	r3, [sp, #80]	
	movs	r3, #0
	str	r2, [sp, #44]	
	str	r3, [sp, #16]
lab164: 	str	r5, [sp, #92]	
	mov	r2, r4
lab155: 	ldr	r3, [sp, #68]	
	ldr	r7, [sp, #148]	
	str	fp, [sp, #8]
	movs	r6, #0
	add	r8, r3, #4294967295	
lab91: 	cmp	r4, r8
	add	fp, r9, r4, lsl #3
	add	lr, r2, #1
	add	r1, r4, #1
	rsb	r0, r6, #0
	add	r3, sp, #248	
	beq	lab89
	ldr	fp, [fp, #-8]
	ldr	ip, [r9, r4, lsl #3]
	cmp	fp, ip
	blt	lab89
	ble	lab90
lab89: 	strd	r1, lr, [sp, #224]	
	mov	ip, #512	
	ldmia	r7, {r1, r2}
	str	ip, [sp]
push {r1, r2}
	ldr r1, =4781
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.0
	push {r1, r2}
	ldr r1, =4781
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r2, r4, r6
	adds	r6, #1
lab90: 	cmp	r6, r5
	add	r4, r4, #4294967295	
	blt	lab91
	ldr	r3, [sp, #108]	
	ldr	r2, [sp, #36]	
	ldr	fp, [sp, #8]
	subs	r7, r2, r3
	add	r3, r9, r3, lsl #3
	str	r3, [sp, #8]
	ldr	r3, [sp, #28]
	str	r3, [sp, #48]	
lab157: 	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	lab92
	ldr	r3, [sp, #64]	
	str	fp, [sp, #20]
	subs	r6, r3, #1
	mov	r4, sl
	mov	fp, r6
	mov	r6, sl
	ldr	sl, [sp, #16]
	movs	r5, #0
	add	r8, sp, #216	
lab95: 	cmp	r4, fp
	add	r2, r9, r4, lsl #3
	mov	r0, r5
	add	r3, sp, #248	
	beq	lab93
	ldr	r1, [r9, r4, lsl #3]
	ldr	r2, [r2, #8]
	cmp	r1, r2
	blt	lab93
	ble	lab94
lab93: 	strd	r6, r4, [sp, #216]	
	mov	r6, #512	
	ldmia	r8, {r1, r2}
	str	r6, [sp, #0]
push {r1, r2}
	ldr r1, =6045
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.0
	push {r1, r2}
	ldr r1, =6045
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r6, r4, r5
	adds	r5, #1
lab94: 	cmp	r5, sl
	add	r4, r4, #1
	blt	lab95
	ldr	fp, [sp, #20]
lab92: 	ldr	r3, [sp, #28]
	ldr	r2, [sp, #36]	
	str	r3, [sp, #128]	
	ldr	r3, [sp, #104]	
	str	r3, [sp, #84]	
	sub	sl, r3, r2
	ldr	r3, [sp, #64]	
	str	r3, [sp, #132]	
	ldr	r3, [sp, #108]	
	str	r3, [sp, #28]
	b	lab96
lab43: 	adds	r5, #25
	add	lr, lr, #25
	add	ip, ip, #25
	b	lab47
lab54: 	ldr	r1, [sp, #28]
	ldr	r3, [sp, #44]	
	add	r2, r9, r1, lsl #3
	add	ip, r9, #4
	subs	r4, r3, r1
	adds	r2, #4
	add	ip, ip, r8, lsl #3
	mov	lr, r4, lsl #3
lab97: 	mov	r3, r2
	ldr	r7, [r2, #-4]
	ldr	r6, [r3], #-4
	add	r1, r3, lr
	ldmia	r1, {r0, r1}
	stmia	r3, {r0, r1}
	str	r7, [r3, r4, lsl #3]
	str	r6, [r2, r4, lsl #3]
	adds	r2, #8
	cmp	ip, r2
	bne	lab97
	b	lab98
lab74: 	ldr	r3, [sp, #8]
	add	r7, fp, r3
	b	lab99
lab88: 	ldr	r3, [sp, #64]	
	ldr	r2, [sp, #36]	
	subs	r3, #2
	cmp	r2, r3
	bgt	lab100
	ldr	r6, [sp, #116]	
	movs	r0, #1
	subs	r4, r2, #1
lab104: 	add	r2, r9, r3, lsl #3
	ldr	r1, [r9, r3, lsl #3]
	ldr	r2, [r2, #8]
	cmp	r2, r1
	add	r5, r0, #1
	bgt	lab101
	bge	lab102
lab101: 	cmp	r6, r0
	beq	lab103
	mov	r0, r5
lab102: 	subs	r3, #1
	cmp	r3, r4
	mov	sl, r4
	bne	lab104
lab166: 	ldr	r2, [sp, #112]	
	cmp	r2, r0
	add	r3, r0, sl
	beq	lab105
lab156: 	ble	lab106
lab131: 	ldr	r3, [sp, #64]	
	str	fp, [sp, #16]
	subs	r6, r3, #1
	mov	sl, r6
	ldr	r6, [sp, #12]
	ldr	r5, [sp, #28]
	add	r8, sp, #232	
	mov	fp, r3
	cmp	r6, sl
	strd	r6, fp, [sp, #168]	
	mov	r7, #512	
	str	r8, [sp, #8]
	bge	lab107
lab116: 	ldr	r0, [r9, r5, lsl #3]
	mov	r4, r6
	mov	r2, sl
lab109: 	subs	r3, r2, r4
	add	r3, r4, r3, asr #1
	ldr	r1, [r9, r3, lsl #3]
	cmp	r1, r0
	bge	lab108
	adds	r4, r3, #1
	cmp	r4, r2
	blt	lab109
lab117: 	cmp	r4, sl
	bne	lab110
	ldr	r3, [sp, #52]	
	ldr	r2, [sp, #88]	
	ldr	r2, [r3, r2]
	ldr	r3, [r9, r5, lsl #3]
	cmp	r2, r3
	it	lt
	movlt	r4, fp
lab110: 	strd	r5, r4, [sp, #232]	
	ldr	r2, [sp, #8]
	str	r7, [sp, #0]
	ldmia	r2, {r1, r2}
	add	r3, sp, #248	
	subs	r0, r6, r4
push {r1, r2}
	ldr r1, =7118
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.0
	push {r1, r2}
	ldr r1, =7118
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	ip, r6, #4294967295	
	sub	r8, r4, r6
	cmp	r5, ip
	strd	r5, r6, [sp, #160]	
	add	lr, r8, r5
	bge	lab111
	ldr	r0, [r9, lr, lsl #3]
	mov	r2, ip
lab113: 	subs	r3, r2, r5
	add	r3, r5, r3, asr #1
	ldr	r1, [r9, r3, lsl #3]
	cmp	r1, r0
	bgt	lab112
	adds	r5, r3, #1
	cmp	r5, r2
	blt	lab113
lab111: 	cmp	r5, ip
	beq	lab114
lab118: 	sub	r8, r4, r5
	cmp	r8, #0
	ble	lab115
lab119: 	sub	r3, fp, r4
	cmp	r3, #0
	ble	lab115
	mov	r6, r4
	cmp	r6, sl
	strd	r6, fp, [sp, #168]	
	blt	lab116
lab107: 	mov	r4, r6
	b	lab117
lab112: 	cmp	r3, r5
	ble	lab111
	mov	r2, r3
	b	lab113
lab108: 	cmp	r3, r4
	ble	lab117
	mov	r2, r3
	b	lab109
lab114: 	ldr	r2, [r9, lr, lsl #3]
	ldr	r3, [r9, r5, lsl #3]
	cmp	r2, r3
	blt	lab118
	cmp	r8, #0
	mov	r5, r6
	bgt	lab119
lab115: 	ldr	fp, [sp, #16]
	b	lab80
lab87: 	ldr	ip, [sp, #36]	
	adds	r2, r4, #1
	cmp	ip, r2
	ble	lab120
	ldr	lr, [sp, #116]	
	movs	r0, #0
lab124: 	add	r3, r9, r2, lsl #3
	ldr	r1, [r9, r2, lsl #3]
	ldr	r3, [r3, #-8]
	cmp	r1, r3
	add	r7, r0, #1
	bgt	lab121
	bge	lab122
lab121: 	cmp	lr, r0
	mov	r0, r7
	beq	lab123
lab122: 	adds	r2, #1
	cmp	ip, r2
	bne	lab124
lab123: 	ldr	r3, [sp, #112]	
	cmp	r3, r0
	beq	lab125
lab120: 	ldr	r3, [sp, #112]	
	cmp	r3, r5
	ldr	r3, [sp, #64]	
	beq	lab126
	subs	r2, r3, #2
	ldr	r3, [sp, #36]	
	cmp	r3, r2
	bgt	lab127
	ldr	r6, [sp, #116]	
	movs	r0, #1
	subs	r4, r3, #1
lab130: 	add	r3, r9, r2, lsl #3
	ldr	r1, [r9, r2, lsl #3]
	ldr	r3, [r3, #8]
	cmp	r3, r1
	add	r5, r0, #1
	bgt	lab128
	bge	lab129
lab128: 	cmp	r6, r0
	beq	lab127
	mov	r0, r5
lab129: 	subs	r2, #1
	cmp	r2, r4
	mov	r3, r4
	bne	lab130
lab159: 	ldr	r2, [sp, #36]	
	subs	r3, #1
	cmp	r2, r3
	bgt	lab131
	ldr	r6, [sp, #116]	
	movs	r0, #0
	subs	r4, r2, #1
lab135: 	add	r2, r9, r3, lsl #3
	ldr	r1, [r9, r3, lsl #3]
	ldr	r2, [r2, #8]
	cmp	r2, r1
	add	r5, r0, #1
	bgt	lab132
	bge	lab133
lab132: 	cmp	r6, r0
	beq	lab134
	mov	r0, r5
lab133: 	subs	r3, #1
	cmp	r3, r4
	mov	sl, r4
	bne	lab135
	ldr	r3, [sp, #112]	
	cmp	r3, r0
	bne	lab131
lab158: 	mov	r0, r3
	ldr	r3, [sp, #116]	
	ldr	r2, [sp, #64]	
	ldr	r1, [sp, #36]	
	mvns	r3, r3
	adds	r2, r3, r2
	ldr	r3, [sp, #144]	
	str	r2, [sp, #48]	
	subs	r3, #2
	add	r3, r1
	str	r3, [sp, #44]	
	ldr	r3, [sp, #140]	
	str	r2, [sp, #120]	
	add	r3, sl
	b	lab136
lab78: 	ldr	r3, [sp, #44]	
	adds	r5, r3, #1
	ldr	r3, [sp, #120]	
	cmp	r3, r5
	ble	lab137
	ldr	r6, [sp, #44]	
	mov	ip, r3
lab141: 	add	r3, r9, r5, lsl #3
	ldr	r4, [r9, r5, lsl #3]
	ldr	r7, [r3, #4]
	mov	r2, r5
	b	lab138
lab140: 	ldmdb	r3, {r0, r1}
	cmp	r6, r2
	stmia	r3, {r0, r1}
	bge	lab139
lab138: 	add	r3, r9, r2, lsl #3
	subs	r2, #1
	ldr	r1, [r3, #-8]
	cmp	r1, r4
	bgt	lab140
	adds	r5, #1
	cmp	ip, r5
	strd	r4, r7, [r3]
	bgt	lab141
lab137: 	ldr	r3, [sp, #108]	
	ldr	r2, [sp, #128]	
	subs	r3, r3, r2
	cmp	r3, #0
	ble	lab142
	ldr	ip, [sp, #108]	
	mov	r6, r2
	mov	r4, ip
	mov	r8, #512	
	add	r7, sp, #184	
lab145: 	ldr	r3, [sp, #104]	
	cmp	r3, r4
	beq	lab143
lab151: 	ldr	r1, [r9, r6, lsl #3]
	ldr	r2, [r9, r4, lsl #3]
	cmp	r1, r2
	sub	r5, r4, ip
	sub	r0, ip, r4
	add	r3, sp, #248	
	sub	lr, ip, r6
	ble	lab144
	cmp	lr, #0
	add	r4, r4, #1
	bgt	lab145
lab142: 	ldr	r3, [sp, #132]	
	ldr	r2, [sp, #104]	
	subs	r3, r3, r2
	cmp	r3, #0
	ble	lab146
	ldrd	sl, r7, [sp, #128]	
	mov	r6, r2
	mvn	r4, #3758096384	
	add	r5, sp, #176	
lab153: 	cmp	sl, r6
	add	r0, r6, r4
	add	r1, r7, r4
	beq	lab147
lab149: 	ldr	r0, [r9, r0, lsl #3]
	ldr	r1, [r9, r1, lsl #3]
	cmp	r0, r1
	sub	r8, r2, r6
	mov	ip, #512	
	add	r3, sp, #248	
	sub	lr, r7, r2
	ble	lab148
	cmp	lr, #0
	add	r6, r6, #4294967295	
	ble	lab146
	cmp	sl, r6
	add	r0, r6, r4
	add	r1, r7, r4
	bne	lab149
lab147: 	mov	r8, r7
	mov	r7, r6
	strd	r7, r8, [sp, #176]	
	mov	r5, #512	
	subs	r6, r2, r6
	str	r5, [sp, #0]
	add	r4, sp, #176	
	ldmia	r4, {r1, r2}
	add	r3, sp, #248	
	mov	r0, r6
push {r1, r2}
	ldr r1, =3569
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.0
	push {r1, r2}
	ldr r1, =3569
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r6, #1
	mov	r2, r8
	subs	r6, r2, r6
	subs	r3, r6, r7
	cmp	r3, #0
	ble	lab146
lab150: 	strd	r7, r6, [sp, #176]	
	add	r3, sp, #248	
	ldmia	r4, {r1, r2}
	movs	r0, #0
	str	r5, [sp, #0]
	subs	r6, #1
push {r1, r2}
	ldr r1, =2510
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.0
	push {r1, r2}
	ldr r1, =2510
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r3, r6, r7
	cmp	r3, #0
	bgt	lab150
	b	lab146
lab139: 	adds	r5, #1
	add	r3, r9, r2, lsl #3
	cmp	ip, r5
	strd	r4, r7, [r3]
	bgt	lab141
	b	lab137
lab144: 	strd	r6, r4, [sp, #184]	
	adds	r5, #1
	ldmia	r7, {r1, r2}
	add	r6, r5
	str	r8, [sp]
push {r1, r2}
	ldr r1, =5112
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.0
	push {r1, r2}
	ldr r1, =5112
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r3, r4, r6
	cmp	r3, #0
	ble	lab142
	ldr	r3, [sp, #104]	
	cmp	r3, r4
	mov	ip, r4
	bne	lab151
lab143: 	strd	r6, r3, [sp, #184]	
	mov	r2, ip
	mov	r8, #512	
	subs	r5, r3, r2
	subs	r0, r2, r3
	str	r8, [sp]
	add	r2, sp, #248	
	add	r7, sp, #184	
	mov	r3, r2
	ldmia	r7, {r1, r2}
push {r1, r2}
	ldr r1, =5365
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.0
	push {r1, r2}
	ldr r1, =5365
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r5, #1
	ldr	r3, [sp, #104]	
	add	r6, r5
	subs	r3, r3, r6
	cmp	r3, #0
	ble	lab142
lab152: 	strd	r6, r4, [sp, #184]	
	str	r8, [sp]
	add	r3, sp, #248	
	ldmia	r7, {r1, r2}
	adds	r6, #1
	movs	r0, #0
push {r1, r2}
	ldr r1, =6383
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.0
	push {r1, r2}
	ldr r1, =6383
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r3, r4, r6
	cmp	r3, #0
	bgt	lab152
	b	lab142
lab148: 	strd	r6, r7, [sp, #176]	
	str	ip, [sp]
	mov	r0, r8
	add	r8, r8, #1
	ldmia	r5, {r1, r2}
	sub	r7, r7, r8
push {r1, r2}
	ldr r1, =6239
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.0
	push {r1, r2}
	ldr r1, =6239
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r3, r7, r6
	cmp	r3, #0
	ble	lab146
	mov	r2, r6
	b	lab153
lab125: 	ldr	r3, [sp, #140]	
	ldr	r0, [sp, #68]	
	adds	r1, r3, r6
	str	r1, [sp, #120]	
	ldr	r1, [sp, #116]	
	cmp	r3, #0
	add	r1, r0
	str	r1, [sp, #80]	
	ble	lab154
	mov	r5, r3
	ldr	r3, [sp, #120]	
	str	r3, [sp, #108]	
	ldr	r3, [sp, #112]	
	str	r3, [sp, #92]	
	ldr	r3, [sp, #80]	
	ldr	sl, [sp, #64]	
	str	r3, [sp, #44]	
	movs	r3, #0
	str	sl, [sp, #104]	
	mov	r4, r2
	str	r3, [sp, #16]
	b	lab155
lab103: 	ldr	r2, [sp, #112]	
	mov	r0, r5
	mov	sl, r3
	cmp	r2, r0
	add	r3, r0, sl
	bne	lab156
lab105: 	mov	r1, r2
	ldr	r2, [sp, #64]	
	subs	r2, r2, r1
	str	r2, [sp, #48]	
	ldr	r2, [sp, #28]
	str	r2, [sp, #120]	
	str	r2, [sp, #44]	
lab136: 	ldr	r2, [sp, #64]	
	str	r2, [sp, #80]	
lab167: 	sub	r2, r3, sl
	ldr	r3, [sp, #64]	
	ldr	r7, [sp, #100]	
	str	r2, [sp, #16]
	subs	r3, r3, r2
	str	r3, [sp, #104]	
	ldr	r3, [sp, #28]
	str	r0, [sp, #92]	
	str	r3, [sp, #108]	
	b	lab157
lab134: 	mov	sl, r3
	ldr	r3, [sp, #112]	
	mov	r0, r5
	cmp	r3, r0
	bne	lab131
	b	lab158
lab127: 	mov	r3, r2
	b	lab159
lab126: 	ldr	r2, [sp, #36]	
	subs	r3, #2
	cmp	r2, r3
	bgt	lab131
	ldr	ip, [sp, #116]	
	movs	r0, #1
	subs	r6, r2, #1
lab163: 	add	r2, r9, r3, lsl #3
	ldr	r1, [r9, r3, lsl #3]
	ldr	r7, [r2, #8]
	cmp	r7, r1
	add	r2, r0, #1
	bgt	lab160
	bge	lab161
lab160: 	cmp	ip, r0
	beq	lab162
	mov	r0, r2
lab161: 	subs	r3, #1
	cmp	r3, r6
	mov	sl, r6
	bne	lab163
	cmp	r5, r0
	bne	lab131
lab165: 	ldr	r1, [sp, #64]	
	ldr	r3, [sp, #28]
	str	r5, [sp, #16]
	adds	r3, r5, r3
	subs	r2, r1, r5
	str	r3, [sp, #80]	
	str	r2, [sp, #44]	
	str	r2, [sp, #104]	
	str	r3, [sp, #108]	
	str	r1, [sp, #120]	
	b	lab164
lab162: 	mov	r0, r2
	cmp	r5, r0
	mov	sl, r3
	bne	lab131
	b	lab165
lab100: 	mov	sl, r3
	movs	r0, #1
	b	lab166
lab154: 	ldr	r3, [sp, #120]	
	ldr	r2, [sp, #36]	
	subs	r7, r2, r3
	add	r2, r9, r3, lsl #3
	str	r2, [sp, #8]
	ldr	r2, [sp, #112]	
	str	r2, [sp, #92]	
	ldr	r2, [sp, #64]	
	strd	r2, r3, [sp, #104]	
	ldr	r3, [sp, #80]	
	str	r3, [sp, #44]	
	ldr	r3, [sp, #28]
	str	r3, [sp, #48]	
	b	lab92
lab106: 	ldr	r2, [sp, #28]
	str	r3, [sp, #80]	
	str	r2, [sp, #44]	
	str	r2, [sp, #120]	
	str	sl, [sp, #48]	
	b	lab167
	nop
benchmark_body.constprop.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	movw	r4, #0
	movt	r4, #8192	
	ldmia	r4!, {r0, r1, r2, r3}
	sub	sp, #44	
	add	r6, sp, #4
	stmia	r6!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r6!, {r0, r1, r2, r3}
	movw	r5, #6236	
	ldr	r3, [r4, #0]
	str	r3, [r6, #0]
	mov	r8, #168	
	mov	r9, r6
	movt	r5, #8192	
lab170: 	movs	r0, #0
	bl	srand_beebs
	mov	r7, sp
lab169: 	ldr	r6, [r7, #4]!
	movs	r4, #0
lab168: 	mov	r0, r4
	mov	r1, #400	
	blx	r6
	add	r3, r5, r4, lsl #3
	str	r0, [r5, r4, lsl #3]
	str	r4, [r3, #4]
	adds	r4, #1
	cmp	r4, #400	
	bne	lab168
push {r1, r2}
	ldr r1, =8180
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	WikiSort.constprop.0
	push {r1, r2}
	ldr r1, =8180
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r7, r9
	bne	lab169
	subs	r8, r8, #1
	bne	lab170
	mov	r0, r8
	add	sp, #44	
	nop
	push {r1, r2}
	ldr r1, =3580
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
benchmark_body.isra.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r4, #0
	movt	r4, #8192	
	mov	r9, r0
	ldmia	r4!, {r0, r1, r2, r3}
	sub	sp, #40	
	add	r5, sp, #4
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	cmp	r9, #0
	ldr	r3, [r4, #0]
	str	r3, [r5, #0]
	ble	lab171
	movw	r5, #6236	
	mov	sl, #0
	add	r8, sp, #36	
	movt	r5, #8192	
lab174: 	movs	r0, #0
	bl	srand_beebs
	mov	r7, sp
lab173: 	ldr	r6, [r7, #4]!
	movs	r4, #0
lab172: 	mov	r0, r4
	mov	r1, #400	
	blx	r6
	add	r3, r5, r4, lsl #3
	str	r0, [r5, r4, lsl #3]
	str	r4, [r3, #4]
	adds	r4, #1
	cmp	r4, #400	
	bne	lab172
push {r1, r2}
	ldr r1, =659
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	WikiSort.constprop.0
	push {r1, r2}
	ldr r1, =659
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r7, r8
	bne	lab173
	add	sl, sl, #1
	cmp	sl, r9
	bne	lab174
lab171: 	add	sp, #40	
	nop
	push {r1, r2}
	ldr r1, =6849
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	nop
Rotate.constprop.1:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	sub	sp, #8
	add	r4, sp, #8
	cmp	r3, r2
	stmdb	r4, {r2, r3}
	ldr	sl, [sp, #40]	
	beq	lab175
	cmp	r1, #0
	ite	lt
	addlt	r5, r1, r3
	addge	r5, r1, r2
	mov	r9, r1
	sub	r8, r3, r5
	it	lt
	sublt	r9, r5, r2
	cmp	r8, r9
	mov	r7, r2
	mov	r6, r3
	mov	r4, r0
	bge	lab176
	cmp	r8, #512	
	ble	lab177
lab183: 	add	r2, r9, r9, lsr #31
	cmp	r9, #1
	mov	r2, r2, asr #1
	ble	lab178
	subs	r3, r5, r2
	add	r3, r4, r3, lsl #3
	add	r2, r7
	add	r9, r4, #4
	add	r2, r4, r2, lsl #3
	adds	r3, #4
	add	r9, r9, r5, lsl #3
lab179: 	subs	r1, r3, #4
	ldmia	r1, {r0, r1}
	ldrd	lr, ip, [r2, #-8]
	subs	r2, #8
	stmia	r2, {r0, r1}
	str	lr, [r3, #-4]
	str	ip, [r3], #8
	cmp	r9, r3
	bne	lab179
lab178: 	add	r3, r8, r8, lsr #31
	cmp	r8, #1
	mov	r3, r3, asr #1
	ble	lab180
	adds	r2, r5, r3
	subs	r5, r6, r3
	add	r5, r4, r5, lsl #3
	add	lr, r4, r6, lsl #3
	add	r2, r4, r2, lsl #3
	adds	r5, #4
	add	lr, lr, #4
lab181: 	subs	r3, r5, #4
	ldmia	r3, {r0, r1}
	ldrd	ip, r3, [r2, #-8]
	subs	r2, #8
	stmia	r2, {r0, r1}
	str	ip, [r5, #-4]
	str	r3, [r5], #8
	cmp	lr, r5
	bne	lab181
lab180: 	subs	r2, r6, r7
	add	r3, r2, r2, lsr #31
	cmp	r2, #1
	mov	r3, r3, asr #1
	ble	lab175
	subs	r2, r6, r3
	add	r2, r4, r2, lsl #3
	add	r3, r7
	add	r6, r4, r6, lsl #3
	add	r3, r4, r3, lsl #3
	adds	r2, #4
	adds	r6, #4
lab182: 	subs	r1, r2, #4
	ldmia	r1, {r0, r1}
	ldrd	r5, r4, [r3, #-8]
	subs	r3, #8
	stmia	r3, {r0, r1}
	str	r5, [r2, #-4]
	str	r4, [r2], #8
	cmp	r6, r2
	bne	lab182
lab175: 	add	sp, #8
	nop
	push {r1, r2}
	ldr r1, =7576
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab176: 	cmp	r9, #512	
	bgt	lab183
	add	r6, r0, r2, lsl #3
	mov	r9, r9, lsl #3
	mov	r2, r9
	mov	r1, r6
	mov	r0, sl
	bl	memcpy
	add	r1, r4, r5, lsl #3
	mov	r2, r8, lsl #3
	mov	r0, r6
push {r1, r2}
	ldr r1, =1090
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =1090
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	r0, r8, r7
	mov	r2, r9
	mov	r1, sl
	add	r0, r4, r0, lsl #3
lab184: 	add	sp, #8
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	b	memcpy
lab177: 	mov	r8, r8, lsl #3
	add	r7, r0, r2, lsl #3
	add	r1, r0, r5, lsl #3
	mov	r2, r8
	mov	r0, sl
	bl	memcpy
	sub	r0, r6, r9
	mov	r2, r9, lsl #3
	mov	r1, r7
	add	r0, r4, r0, lsl #3
push {r1, r2}
	ldr r1, =3103
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3103
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r1, sl
	mov	r0, r7
	b	lab184
	nop
Min:
	cmp	r0, r1
	it	ge
	movge	r0, r1
	bx	lr
Max:
	cmp	r0, r1
	it	lt
	movlt	r0, r1
	bx	lr
Range_length:
	sub	sp, #8
	add	r3, sp, #8
	stmdb	r3, {r0, r1}
	ldr	r3, [sp, #0]
	subs	r0, r1, r3
	add	sp, #8
	bx	lr
MakeRange:
	strd	r1, r2, [r0]
	bx	lr
	nop
FloorPowerOfTwo:
	orr	r0, r0, r0, asr #1
	orr	r0, r0, r0, asr #2
	orr	r0, r0, r0, asr #4
	orr	r0, r0, r0, asr #8
	orr	r0, r0, r0, asr #16
	sub	r0, r0, r0, asr #1
	bx	lr
	nop
BinaryFirst:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	sl, r3, #4294967295	
	sub	sp, #12
	add	r4, sp, #8
	cmp	r2, sl
	stmdb	r4, {r2, r3}
	ldr	r9, [sp, #48]	
	mov	r5, r2
	mov	r8, r0
	mov	fp, r1
	bge	lab185
	add	r6, r0, r1, lsl #3
	mov	r7, sl
lab187: 	subs	r4, r7, r5
	add	r4, r5, r4, asr #1
	add	r1, r8, r4, lsl #3
	ldmia	r6, {r2, r3}
	ldmia	r1, {r0, r1}
	blx	r9
	cmp r0, #0
	beq lab186
	adds	r5, r4, #1
	cmp	r5, r7
	blt	lab187
lab185: 	cmp	sl, r5
	beq	lab188
lab189: 	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =4883
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab186: 	cmp	r4, r5
	ble	lab185
	mov	r7, r4
	b	lab187
lab188: 	add	fp, r8, fp, lsl #3
	add	r8, r8, r5, lsl #3
	ldmia	fp, {r2, r3}
	ldmia	r8, {r0, r1}
	blx	r9
	cmp	r0, #0
	beq	lab189
	adds	r5, #1
	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =4309
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	nop
BinaryLast:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	sl, r3, #4294967295	
	sub	sp, #12
	add	r4, sp, #8
	cmp	r2, sl
	stmdb	r4, {r2, r3}
	ldr	r9, [sp, #48]	
	mov	r5, r2
	mov	r8, r0
	mov	fp, r1
	bge	lab190
	add	r6, r0, r1, lsl #3
	mov	r7, sl
lab192: 	subs	r4, r7, r5
	add	r4, r5, r4, asr #1
	add	r3, r8, r4, lsl #3
	ldmia	r3, {r2, r3}
	ldmia	r6, {r0, r1}
	blx	r9
	cmp r0, #0
	bne lab191
	adds	r5, r4, #1
	cmp	r5, r7
	blt	lab192
lab190: 	cmp	sl, r5
	beq	lab193
lab194: 	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =8095
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab191: 	cmp	r4, r5
	ble	lab190
	mov	r7, r4
	b	lab192
lab193: 	add	r3, r8, r5, lsl #3
	add	r8, r8, fp, lsl #3
	ldmia	r8, {r0, r1}
	ldmia	r3, {r2, r3}
	blx	r9
	cmp	r0, #0
	bne	lab194
	adds	r5, #1
	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =7730
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
InsertionSort:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	r9, r1, #1
	sub	sp, #28
	add	r4, sp, #8
	cmp	r2, r9
	stmia	r4, {r1, r2}
	str	r0, [sp, #4]
	ble	lab195
	mov	r8, r1
	mov	fp, r2
	mov	r7, r3
	add	r4, r0, r1, lsl #3
	add	r6, sp, #16
lab199: 	add	sl, r4, #8
	ldmia	sl, {r0, r1}
	mov	r5, r9
	stmia	r6, {r0, r1}
	b	lab196
lab198: 	ldmia	r4, {r0, r1}
	subs	r5, #1
	cmp	r8, r5
	stmia	r3, {r0, r1}
	sub	r4, r4, #8
	bge	lab197
lab196: 	ldmia	r4, {r2, r3}
	ldmia	r6, {r0, r1}
	blx	r7
	add	r3, r4, #8
	cmp	r0, #0
	bne	lab198
lab197: 	ldmia	r6, {r0, r1}
	ldr	r3, [sp, #4]
	add	r9, r9, #1
	add	r5, r3, r5, lsl #3
	cmp	fp, r9
	stmia	r5, {r0, r1}
	mov	r4, sl
	bgt	lab199
lab195: 	add	sp, #28
	nop
	push {r1, r2}
	ldr r1, =4062
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
Reverse:
	push	{r4, r5}
	sub	sp, #8
	add	r3, sp, #8
	mov	r4, r1
	stmdb	r3, {r1, r2}
	mov	r1, r2
	subs	r2, r2, r4
	cmp	r2, #1
	add	r3, r2, r2, lsr #31
	ble	lab200
	asrs	r3, r3, #1
	subs	r2, r1, r3
	add	r2, r0, r2, lsl #3
	add	r3, r4
	add	ip, r0, r1, lsl #3
	add	r3, r0, r3, lsl #3
	adds	r2, #4
	add	ip, ip, #4
lab201: 	subs	r1, r2, #4
	ldmia	r1, {r0, r1}
	ldrd	r5, r4, [r3, #-8]
	subs	r3, #8
	stmia	r3, {r0, r1}
	str	r5, [r2, #-4]
	str	r4, [r2], #8
	cmp	r2, ip
	bne	lab201
lab200: 	add	sp, #8
	pop	{r4, r5}
	bx	lr
BlockSwap:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	subs	r6, r3, #0
	ble	lab202
	add	lr, r0, r2, lsl #3
	add	r3, r0, r1, lsl #3
	add	r8, r3, #4
	add	r7, lr, #4
	movs	r2, #0
lab203: 	add	r1, lr, r2, lsl #3
	ldmia	r1, {r0, r1}
	ldr	r5, [r3, r2, lsl #3]
	ldr	r4, [r8, r2, lsl #3]
	add	ip, r3, r2, lsl #3
	stmia	ip, {r0, r1}
	str	r5, [lr, r2, lsl #3]
	str	r4, [r7, r2, lsl #3]
	adds	r2, #1
	cmp	r6, r2
	bne	lab203
lab202: 	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
	nop
Rotate:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r6, r3
	sub	sp, #8
	add	r4, sp, #8
	cmp	r6, r2
	stmdb	r4, {r2, r3}
	ldrd	sl, r3, [sp, #40]	
	beq	lab204
	cmp	r1, #0
	ite	lt
	addlt	r5, r1, r6
	addge	r5, r1, r2
	mov	r9, r1
	sub	r8, r6, r5
	it	lt
	sublt	r9, r5, r2
	cmp	r8, r9
	mov	r7, r2
	mov	r4, r0
	bge	lab205
	cmp	r3, r8
	bge	lab206
lab212: 	add	r2, r9, r9, lsr #31
	cmp	r9, #1
	mov	r2, r2, asr #1
	ble	lab207
	subs	r3, r5, r2
	add	r3, r4, r3, lsl #3
	add	r2, r7
	add	r9, r4, #4
	add	r2, r4, r2, lsl #3
	adds	r3, #4
	add	r9, r9, r5, lsl #3
lab208: 	subs	r1, r3, #4
	ldmia	r1, {r0, r1}
	ldrd	lr, ip, [r2, #-8]
	subs	r2, #8
	stmia	r2, {r0, r1}
	str	lr, [r3, #-4]
	str	ip, [r3], #8
	cmp	r9, r3
	bne	lab208
lab207: 	add	r3, r8, r8, lsr #31
	cmp	r8, #1
	mov	r3, r3, asr #1
	ble	lab209
	adds	r2, r5, r3
	subs	r5, r6, r3
	add	r5, r4, r5, lsl #3
	add	lr, r4, r6, lsl #3
	add	r2, r4, r2, lsl #3
	adds	r5, #4
	add	lr, lr, #4
lab210: 	subs	r3, r5, #4
	ldmia	r3, {r0, r1}
	ldrd	ip, r3, [r2, #-8]
	subs	r2, #8
	stmia	r2, {r0, r1}
	str	ip, [r5, #-4]
	str	r3, [r5], #8
	cmp	lr, r5
	bne	lab210
lab209: 	subs	r2, r6, r7
	add	r3, r2, r2, lsr #31
	cmp	r2, #1
	mov	r3, r3, asr #1
	ble	lab204
	subs	r2, r6, r3
	add	r2, r4, r2, lsl #3
	add	r3, r7
	add	r6, r4, r6, lsl #3
	add	r3, r4, r3, lsl #3
	adds	r2, #4
	adds	r6, #4
lab211: 	subs	r1, r2, #4
	ldmia	r1, {r0, r1}
	ldrd	r5, r4, [r3, #-8]
	subs	r3, #8
	stmia	r3, {r0, r1}
	str	r5, [r2, #-4]
	str	r4, [r2], #8
	cmp	r6, r2
	bne	lab211
lab204: 	add	sp, #8
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab205: 	cmp	r3, r9
	blt	lab212
	add	r6, r0, r2, lsl #3
	mov	r9, r9, lsl #3
	mov	r2, r9
	mov	r1, r6
	mov	r0, sl
	bl	memcpy
	add	r1, r4, r5, lsl #3
	mov	r2, r8, lsl #3
	mov	r0, r6
push {r1, r2}
	ldr r1, =4430
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =4430
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	r0, r8, r7
	mov	r2, r9
	mov	r1, sl
	add	r0, r4, r0, lsl #3
lab213: 	add	sp, #8
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	b	memcpy
lab206: 	mov	r8, r8, lsl #3
	add	r7, r0, r2, lsl #3
	add	r1, r0, r5, lsl #3
	mov	r2, r8
	mov	r0, sl
	bl	memcpy
	sub	r0, r6, r9
	mov	r2, r9, lsl #3
	mov	r1, r7
	add	r0, r4, r0, lsl #3
push {r1, r2}
	ldr r1, =6100
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =6100
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r1, sl
	mov	r0, r7
	b	lab213
	nop
WikiMerge:
	sub	sp, #8
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, #44	
	add	r4, sp, #40	
	stmdb	r4, {r1, r2}
	str	r3, [sp, #84]	
	mov	r1, r3
	str	r3, [sp, #24]
	ldr	r3, [sp, #88]	
	ldr	r5, [sp, #108]	
	ldr	ip, [sp, #100]	
	ldr	r6, [sp, #104]	
	ldr	r2, [sp, #96]	
	str	ip, [sp, #8]
	sub	r8, r3, r1
	mov	r4, r0
	cmp	r5, r8
	ldr	r0, [sp, #92]	
	str	r0, [sp, #12]
	blt	lab214
	add	r3, r4, r1, lsl #3
	subs	r1, r2, r0
	cmp	r1, #0
	add	sl, r6, r8, lsl #3
	ble	lab215
	cmp	r8, #0
	ble	lab215
	add	r7, r4, r0, lsl #3
	add	r4, r4, r2, lsl #3
	mov	r8, r4
	add	r5, r3, #8
	mov	r4, ip
	b	lab216
lab217: 	ldmia	r6, {r0, r1}
	adds	r6, #8
	cmp	sl, r6
	stmdb	r5, {r0, r1}
	beq	lab215
lab218: 	adds	r5, #8
lab216: 	ldmia	r6, {r2, r3}
	ldmia	r7, {r0, r1}
	blx	r4
	mov	r3, r5
	cmp	r0, #0
	beq	lab217
	ldmia	r7, {r0, r1}
	adds	r7, #8
	cmp	r8, r7
	stmdb	r5, {r0, r1}
	bne	lab218
lab215: 	sub	r2, sl, r6
	mov	r1, r6
	mov	r0, r3
	add	sp, #44	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	sp, #8
	b	memcpy
lab214: 	subs	r3, r2, r0
	ldr	r9, [sp, #32]
	str	r3, [sp, #20]
	cmp	r3, #0
	str	r9, [sp, #16]
	ble	lab219
	cmp	r8, #0
	ble	lab220
	ldr	r3, [sp, #24]
	str	r8, [sp, #28]
	add	r7, r4, r3, lsl #3
	mov	fp, #0
	movs	r3, #1
	adds	r7, #4
	str	r3, [sp, #4]
	mov	sl, fp
	mov	r8, r0
	b	lab221
lab223: 	mov	r3, r7
	ldmia	r6, {r0, r1}
	ldr	r2, [r3], #-4
	ldr	r5, [r7, #-4]
	stmia	r3, {r0, r1}
	ldr	r3, [sp, #28]
	str	r5, [r4, r9, lsl #3]
	add	sl, sl, #1
	cmp	sl, r3
	str	r2, [r6, #4]
	bge	lab222
	ldr	r3, [sp, #16]
	add	r9, sl, r3
lab225: 	ldr	r3, [sp, #4]
	adds	r3, #1
	str	r3, [sp, #4]
	adds	r7, #8
lab221: 	add	r5, r4, r8, lsl #3
	add	r6, r4, r9, lsl #3
	ldmia	r5, {r0, r1}
	ldmia	r6, {r2, r3}
	ldr	ip, [sp, #8]
	blx	ip
	cmp	r0, #0
	beq	lab223
	mov	r3, r7
	ldmia	r5, {r0, r1}
	ldr	r2, [r3], #-4
	ldr	r6, [r7, #-4]
	stmia	r3, {r0, r1}
	ldr	r3, [sp, #20]
	str	r6, [r4, r8, lsl #3]
	add	fp, fp, #1
	cmp	fp, r3
	str	r2, [r5, #4]
	bge	lab224
	ldr	r3, [sp, #12]
	add	r8, fp, r3
	b	lab225
lab224: 	ldrd	r3, r8, [sp, #24]
	ldr	r2, [sp, #4]
	str	r9, [sp, #16]
	add	r3, r2
	str	r3, [sp, #24]
	sub	r8, r8, sl
lab219: 	cmp	r8, #0
	ble	lab220
	ldr	r3, [sp, #16]
	add	r5, r4, r3, lsl #3
	ldr	r3, [sp, #24]
	add	r4, r4, r3, lsl #3
	add	lr, r5, #4
	add	ip, r4, #4
	movs	r2, #0
lab226: 	add	r3, r4, r2, lsl #3
	ldmia	r3, {r0, r1}
	ldr	r7, [r5, r2, lsl #3]
	ldr	r6, [lr, r2, lsl #3]
	add	r3, r5, r2, lsl #3
	stmia	r3, {r0, r1}
	str	r7, [r4, r2, lsl #3]
	str	r6, [ip, r2, lsl #3]
	adds	r2, #1
	cmp	r2, r8
	bne	lab226
lab220: 	add	sp, #44	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	sp, #8
	bx	lr
lab222: 	mov	r8, r3
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #24]
	add	r3, r2
	str	r3, [sp, #24]
	ldr	r3, [sp, #16]
	add	r3, sl
	str	r3, [sp, #16]
	sub	r8, r8, sl
	b	lab219
	nop
WikiSort:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #4352	
	sub	sp, #28
	cmp	r1, #32
	str	r1, [sp, #104]	
	str	r2, [sp, #24]
	ble	lab227
	orr	r3, r1, r1, asr #1
	orr	r3, r3, r3, asr #2
	orr	r3, r3, r3, asr #4
	orr	r3, r3, r3, asr #8
	orr	r3, r3, r3, asr #16
	sub	r2, r3, r3, asr #1
	cmp	r2, #0
	mov	r3, r2
	ldr	r1, [sp, #104]	
	str	r2, [sp, #152]	
	it	lt
	addlt	r3, r2, #15
	asrs	r3, r3, #4
	movs	r2, #0
	sdiv	r7, r1, r3
	mov	r5, r2
	mls	fp, r3, r7, r1
	mov	r9, r3
	ldr	sl, [sp, #24]
	str	r3, [sp, #84]	
	add	r5, fp
	cmp	r9, r5
	mov	r6, r0
	str	fp, [sp, #80]	
	str	r7, [sp, #68]	
	add	r8, sp, #208	
	mov	r3, sl
	add	r4, r7, r2
	bgt	lab228
lab230: 	adds	r4, #1
	strd	r2, r4, [sp, #208]	
	mov	r0, r6
	ldmia	r8, {r1, r2}
push {r1, r2}
	ldr r1, =5870
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	InsertionSort
	push {r1, r2}
	ldr r1, =5870
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #104]	
	cmp	r3, r4
	sub	r5, r5, r9
	ble	lab229
lab231: 	add	r5, fp
	mov	r2, r4
	cmp	r9, r5
	mov	r3, sl
	add	r4, r7, r2
	ble	lab230
lab228: 	strd	r2, r4, [sp, #208]	
	mov	r0, r6
	ldmia	r8, {r1, r2}
push {r1, r2}
	ldr r1, =4837
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	InsertionSort
	push {r1, r2}
	ldr r1, =4837
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #104]	
	cmp	r3, r4
	bgt	lab231
lab229: 	ldr	r3, [sp, #152]	
	cmp	r3, #16
	ble	lab232
	movs	r3, #16
	str	r3, [sp, #136]	
	mov	r7, r6
lab275: 	ldr	r4, [sp, #68]	
	mov	r0, r4
push {r1, r2}
	ldr r1, =7436
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =7436
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
push {r1, r2}
	ldr r1, =7266
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sqrt
	push {r1, r2}
	ldr r1, =7266
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	__aeabi_d2iz
	sdiv	r3, r4, r0
	str	r3, [sp, #128]	
	adds	r3, #1
	str	r3, [sp, #120]	
	lsls	r3, r3, #1
	movs	r2, #0
	str	r3, [sp, #148]	
	lsls	r3, r0, #3
	str	r2, [sp, #60]	
	str	r3, [sp, #92]	
	str	r2, [sp, #96]	
	str	r2, [sp, #140]	
	str	r2, [sp, #132]	
	str	r2, [sp, #36]	
	str	r2, [sp, #64]	
	str	r2, [sp, #116]	
	str	r2, [sp, #124]	
	str	r2, [sp, #56]	
	str	r2, [sp, #144]	
	mov	r9, r0
	mov	r1, r2
lab269: 	ldr	r3, [sp, #64]	
	ldr	r2, [sp, #80]	
	add	r3, r2
	ldr	r2, [sp, #68]	
	add	fp, r2, r1
	ldr	r2, [sp, #84]	
	ldr	r1, [sp, #84]	
	cmp	r2, r3
	it	le
	suble	r3, r3, r2
	ldr	r2, [sp, #80]	
	add	r3, r2
	ldr	r2, [sp, #68]	
	str	r3, [sp, #64]	
	it	le
	addle	fp, fp, #1
	add	r0, fp, r2
	cmp	r1, r3
	str	r0, [sp, #48]	
	bgt	lab233
	subs	r2, r3, r1
	mov	r3, r0
	adds	r3, #1
	str	r2, [sp, #64]	
	str	r3, [sp, #48]	
lab233: 	ldr	r3, [sp, #48]	
	ldr	r2, [sp, #36]	
	ldr	r4, [sp, #24]
	add	r3, r3, #536870912	
	subs	r3, #1
	add	r3, r7, r3, lsl #3
	add	r8, r7, r2, lsl #3
	ldmia	r3, {r0, r1}
	ldmia	r8, {r2, r3}
	blx	r4
	mov	r4, r0
	cmp	r0, #0
	bne	lab234
	add	r1, r7, fp, lsl #3
	ldmdb	r1, {r2, r3}
	ldr	r5, [sp, #24]
	ldmia	r1, {r0, r1}
	blx	r5
	cmp	r0, #0
	beq	lab235
	ldr	r3, [sp, #36]	
	sub	r3, fp, r3
	cmp	r3, #512	
	str	r3, [sp, #20]
	ble	lab236
	ldr	r3, [sp, #96]	
	ldr	r2, [sp, #56]	
	subs	r3, r3, r2
	cmp	r3, #0
	str	r3, [sp, #100]	
	ble	lab237
	ldr	r3, [sp, #48]	
	str	r3, [sp, #88]	
lab293: 	ldr	r2, [sp, #20]
	sdiv	r3, r2, r9
	mls	lr, r9, r3, r2
	ldr	r3, [sp, #36]	
	add	sl, lr, r3
	add	r3, sl, #1
	cmp	fp, r3
	ble	lab238
	ldr	r2, [sp, #56]	
	add	r4, r7, r2, lsl #3
	adds	r4, #4
	add	ip, r7, #4
lab239: 	mov	r2, r4
	add	r1, r7, r3, lsl #3
	ldmia	r1, {r0, r1}
	ldr	r5, [r2], #-4
	ldr	r6, [r4, #-4]
	stmia	r2, {r0, r1}
	str	r6, [r7, r3, lsl #3]
	str	r5, [ip, r3, lsl #3]
	add	r3, r9
	cmp	fp, r3
	add	r4, r4, #8
	bgt	lab239
lab238: 	add	r3, r7, sl, lsl #3
	ldmia	r3, {r0, r1}
	ldr	r3, [sp, #88]	
	sub	r3, r3, fp
	cmp	r3, r9
	ite	le
	addle	r3, fp
	addgt	r3, fp, r9
	str	r3, [sp, #28]
	cmp	lr, #512	
	add	r3, sp, #184	
	stmia	r3, {r0, r1}
	bgt	lab240
	mov	r2, lr, lsl #3
	mov	r1, r8
	add	r0, sp, #280	
	bl	memcpy
	ldr	r3, [sp, #60]	
	lsls	r3, r3, #3
	str	r3, [sp, #20]
lab295: 	ldr	r3, [sp, #20]
	str	sl, [sp, #44]	
	add	r3, r7
	str	r3, [sp, #108]	
	adds	r3, #4
	str	r3, [sp, #112]	
	add	r3, sp, #176	
	movs	r5, #0
	str	r3, [sp, #72]	
	add	r3, sp, #168	
	str	fp, [sp, #32]
	str	sl, [sp, #20]
	mov	r4, r5
	str	r5, [sp, #52]	
	str	r3, [sp, #76]	
	str	fp, [sp, #40]	
lab263: 	subs	r3, r5, r4
	cmp	r3, #0
	ble	lab241
lab250: 	add	r3, r5, #536870912	
	subs	r3, #1
	add	r3, r7, r3, lsl #3
	ldmia	r3, {r0, r1}
	add	r3, sp, #184	
	ldmia	r3, {r2, r3}
	ldr	r6, [sp, #24]
	blx	r6
	cmp	r0, #0
	bne	lab241
lab251: 	strd	r4, r5, [sp, #176]	
	ldr	r3, [sp, #24]
	str	r3, [sp, #0]
	ldr	r3, [sp, #72]	
	mov	r1, sl
	ldmia	r3, {r2, r3}
	mov	r0, r7
push {r1, r2}
	ldr r1, =7679
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	BinaryFirst
	push {r1, r2}
	ldr r1, =7679
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r9, #0
	mov	r4, r0
	sub	r5, r5, r0
	ble	lab242
	ldr	r3, [sp, #20]
	add	sl, r7, sl, lsl #3
	add	r6, r7, r3, lsl #3
	add	fp, r6, #4
	add	r8, sl, #4
	movs	r3, #0
	mov	ip, r0
	mov	lr, r5
lab243: 	add	r2, sl, r3, lsl #3
	ldmia	r2, {r0, r1}
	ldr	r5, [r6, r3, lsl #3]
	ldr	r4, [fp, r3, lsl #3]
	add	r2, r6, r3, lsl #3
	stmia	r2, {r0, r1}
	str	r5, [sl, r3, lsl #3]
	str	r4, [r8, r3, lsl #3]
	adds	r3, #1
	cmp	r9, r3
	bne	lab243
	mov	r4, ip
	mov	r5, lr
lab242: 	ldr	r3, [sp, #36]	
	str	r3, [sp, #168]	
	ldr	r3, [sp, #44]	
	str	r3, [sp, #248]	
	str	r3, [sp, #172]	
	add	r3, sp, #280	
	str	r3, [sp, #12]
	ldr	r3, [sp, #24]
	str	r3, [sp, #8]
	ldrd	r3, r2, [sp, #52]	
	add	lr, r3, r2
	ldr	r2, [sp, #20]
	str	r4, [sp, #252]	
	adds	r3, #1
	adds	r6, r2, #1
	str	r3, [sp, #52]	
	add	r3, r7, lr, lsl #3
	ldmia	r3, {r0, r1}
	add	ip, r7, r6, lsl #3
	ldr	r8, [r7, r6, lsl #3]
	ldr	r2, [ip, #4]
	stmia	ip, {r0, r1}
	str	r8, [r7, lr, lsl #3]
	str	r2, [r3, #4]
	add	r3, sp, #248	
	ldmia	r3, {r0, r1}
	stmia	sp, {r0, r1}
	ldr	r3, [sp, #76]	
	ldr	r1, [sp, #60]	
	ldmia	r3, {r2, r3}
	mov	r0, r7
push {r1, r2}
	ldr r1, =1727
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	WikiMerge.constprop.1.isra.0
	push {r1, r2}
	ldr r1, =1727
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r9, #512	
	mov	r6, r6, lsl #3
	bgt	lab244
	sub	r1, r6, #8
	ldr	r2, [sp, #92]	
	add	r1, r7
	add	r0, sp, #280	
	bl	memcpy
lab265: 	ldr	r3, [sp, #20]
	cmp	r5, #0
	add	r6, r9, r3
	sub	ip, r6, r5
	ble	lab245
	add	r4, r7, r4, lsl #3
	add	ip, r7, ip, lsl #3
	add	fp, r4, #4
	add	sl, ip, #4
	movs	r3, #0
	mov	r8, r6
	mov	lr, r5
lab246: 	add	r2, ip, r3, lsl #3
	ldmia	r2, {r0, r1}
	ldr	r6, [r4, r3, lsl #3]
	ldr	r5, [fp, r3, lsl #3]
	add	r2, r4, r3, lsl #3
	stmia	r2, {r0, r1}
	str	r6, [ip, r3, lsl #3]
	str	r5, [sl, r3, lsl #3]
	adds	r3, #1
	cmp	lr, r3
	bne	lab246
	mov	r6, r8
	mov	r5, lr
lab245: 	ldr	r3, [sp, #20]
	subs	r3, r3, r5
	str	r3, [sp, #36]	
	add	r3, r9
	str	r3, [sp, #44]	
	add	r5, r3
	ldr	r3, [sp, #40]	
	cmp	r6, r3
	beq	lab247
	add	sl, r6, #1
	add	r4, r9, sl
	cmp	r4, r3
	mov	r8, r3
	bge	lab248
	mov	fp, r5
	ldr	r5, [sp, #24]
lab249: 	add	r3, r7, sl, lsl #3
	add	r1, r7, r4, lsl #3
	ldmia	r3, {r2, r3}
	ldmia	r1, {r0, r1}
	blx	r5
	cmp	r0, #0
	it	ne
	movne	sl, r4
	add	r4, r9
	cmp	r4, r8
	blt	lab249
	mov	r5, fp
	add	sl, sl, #4294967295	
lab277: 	add	r3, r7, sl, lsl #3
	ldmia	r3, {r0, r1}
	ldr	r4, [sp, #44]	
	str	r6, [sp, #20]
	add	r3, sp, #184	
	stmia	r3, {r0, r1}
	subs	r3, r5, r4
	cmp	r3, #0
	bgt	lab250
lab241: 	ldrd	r2, r3, [sp, #28]
	cmp	r3, r2
	beq	lab251
	mov	r3, r2
	ldr	r2, [sp, #32]
	subs	r6, r3, r2
	cmp	r9, r6
	ble	lab252
	subs	r4, r2, r3
	ldr	r2, [sp, #20]
	cmp	r2, r3
	mov	r3, r2
	beq	lab253
	cmp	r4, #0
	blt	lab254
	ldr	r3, [sp, #28]
	adds	r2, r4, r2
	sub	r8, r3, r2
	cmp	r4, r8
	ble	lab255
	cmp	r8, #0
	ble	lab256
lab255: 	add	r3, r4, r4, lsr #31
	cmp	r4, #1
	mov	r3, r3, asr #1
	ble	lab257
	ldr	r1, [sp, #20]
	subs	r4, r2, r3
	adds	r5, r7, #4
	add	r3, r1
	add	r4, r7, r4, lsl #3
	add	r5, r5, r2, lsl #3
	add	r3, r7, r3, lsl #3
	adds	r4, #4
	mov	lr, r2
	mov	ip, r5
lab258: 	subs	r1, r4, #4
	ldmia	r1, {r0, r1}
	ldrd	r2, r5, [r3, #-8]
	subs	r3, #8
	stmia	r3, {r0, r1}
	str	r2, [r4, #-4]
	str	r5, [r4], #8
	cmp	ip, r4
	bne	lab258
	mov	r2, lr
lab257: 	add	r3, r8, r8, lsr #31
	cmp	r8, #1
	mov	r3, r3, asr #1
	ble	lab259
	ldr	r1, [sp, #28]
	add	r2, r3
	adds	r5, r7, #4
	subs	r3, r1, r3
	add	r3, r7, r3, lsl #3
	add	r5, r5, r1, lsl #3
	add	r2, r7, r2, lsl #3
	adds	r3, #4
	mov	ip, r5
lab260: 	subs	r1, r3, #4
	ldmia	r1, {r0, r1}
	ldrd	r5, r4, [r2, #-8]
	subs	r2, #8
	stmia	r2, {r0, r1}
	str	r5, [r3, #-4]
	str	r4, [r3], #8
	cmp	ip, r3
	bne	lab260
lab259: 	ldr	r3, [sp, #28]
	ldr	r2, [sp, #20]
	subs	r2, r3, r2
	add	r3, r2, r2, lsr #31
	cmp	r2, #1
	mov	r3, r3, asr #1
	ble	lab261
	ldr	r1, [sp, #28]
	ldr	r0, [sp, #20]
	subs	r2, r1, r3
	adds	r5, r7, #4
	add	r3, r0
	add	r2, r7, r2, lsl #3
	add	r5, r5, r1, lsl #3
	add	r3, r7, r3, lsl #3
	adds	r2, #4
	mov	ip, r5
lab262: 	subs	r1, r2, #4
	ldmia	r1, {r0, r1}
	ldrd	r5, r4, [r3, #-8]
	subs	r3, #8
	stmia	r3, {r0, r1}
	str	r5, [r2, #-4]
	str	r4, [r2], #8
	cmp	ip, r2
	bne	lab262
lab261: 	ldr	r3, [sp, #20]
	adds	r5, r3, r6
	mov	r4, r3
lab271: 	ldr	r3, [sp, #40]	
	str	r5, [sp, #20]
	add	r3, r6
	str	r3, [sp, #40]	
	ldr	r3, [sp, #32]
	str	r3, [sp, #28]
	add	sl, r6
	b	lab263
lab244: 	sub	r2, r6, #8
	ldrd	ip, lr, [sp, #108]	
	add	r2, r7
	add	r8, r2, #4
	movs	r3, #0
	mov	sl, r4
	mov	fp, r5
lab264: 	add	r1, ip, r3, lsl #3
	ldmia	r1, {r0, r1}
	ldr	r5, [r2, r3, lsl #3]
	ldr	r4, [r8, r3, lsl #3]
	add	r6, r2, r3, lsl #3
	stmia	r6, {r0, r1}
	str	r5, [ip, r3, lsl #3]
	str	r4, [lr, r3, lsl #3]
	adds	r3, #1
	cmp	r9, r3
	bne	lab264
	mov	r4, sl
	mov	r5, fp
	b	lab265
lab252: 	cmp	r9, #0
	ble	lab266
	ldr	r3, [sp, #20]
	add	r5, r7, r3, lsl #3
	ldr	r3, [sp, #32]
	add	r4, r7, r3, lsl #3
	add	r8, r5, #4
	add	lr, r4, #4
	movs	r3, #0
	mov	ip, r7
lab267: 	add	r2, r4, r3, lsl #3
	ldmia	r2, {r0, r1}
	ldr	r7, [r5, r3, lsl #3]
	ldr	r6, [r8, r3, lsl #3]
	add	r2, r5, r3, lsl #3
	stmia	r2, {r0, r1}
	str	r7, [r4, r3, lsl #3]
	str	r6, [lr, r3, lsl #3]
	adds	r3, #1
	cmp	r9, r3
	bne	lab267
	mov	r7, ip
lab266: 	ldr	r3, [sp, #20]
	ldr	r2, [sp, #40]	
	ldr	r5, [sp, #28]
	ldr	r1, [sp, #32]
	cmp	sl, r3
	it	eq
	moveq	sl, r2
	add	r2, r9
	str	r2, [sp, #40]	
	ldr	r2, [sp, #88]	
	add	r5, r9
	cmp	r5, r2
	it	ge
	movge	r5, r2
	add	r1, r9
	str	r5, [sp, #28]
	add	r5, r9, r3
	str	r1, [sp, #32]
	mov	r4, r3
	str	r5, [sp, #20]
	b	lab263
lab236: 	lsls	r2, r3, #3
	mov	r1, r8
	add	r0, sp, #280	
	bl	memcpy
	ldr	r3, [sp, #36]	
	str	r3, [sp, #192]	
	ldr	r3, [sp, #48]	
	str	r3, [sp, #204]	
	strd	fp, fp, [sp, #196]	
	add	r3, sp, #280	
	str	r3, [sp, #12]
	ldr	r3, [sp, #24]
	str	r3, [sp, #8]
	add	r3, sp, #200	
	ldmia	r3, {r0, r1}
	stmia	sp, {r0, r1}
	add	r3, sp, #192	
	ldmia	r3, {r2, r3}
	mov	r1, r4
	mov	r0, r7
push {r1, r2}
	ldr r1, =6757
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	WikiMerge.constprop.1.isra.0
lab235:	push {r1, r2}
	ldr r1, =6757
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r3, [sp, #96]	
	ldr	r2, [sp, #56]	
	subs	r3, r3, r2
	str	r3, [sp, #100]	
lab276: 	ldr	r3, [sp, #48]	
	ldr	r2, [sp, #104]	
	cmp	r3, r2
	bge	lab268
lab272: 	str	r3, [sp, #36]	
	mov	r1, r3
	b	lab269
lab254: 	ldr	r2, [sp, #32]
	subs	r4, r2, r3
	cmp	r6, r4
	bge	lab270
	mov	r8, r6
	cmp	r8, #0
	bgt	lab255
lab256: 	mov	r8, r8, lsl #3
	add	r1, r7, r2, lsl #3
	add	r0, sp, #280	
	mov	r2, r8
	bl	memcpy
	ldr	r3, [sp, #28]
	ldr	r5, [sp, #20]
	subs	r0, r3, r4
	lsls	r2, r4, #3
	add	r4, r7, r5, lsl #3
	mov	r1, r4
	add	r0, r7, r0, lsl #3
push {r1, r2}
	ldr r1, =5614
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =5614
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r0, r4
	mov	r2, r8
	add	r1, sp, #280	
	bl	memcpy
	add	r5, r6
	ldr	r4, [sp, #20]
	b	lab271
lab234: 	ldr	r3, [sp, #36]	
	str	r3, [sp, #216]	
	sub	r1, fp, r3
	ldr	r3, [sp, #48]	
	str	r3, [sp, #220]	
	add	r3, sp, #280	
	str	r3, [sp, #0]
	add	r3, sp, #216	
	ldmia	r3, {r2, r3}
	mov	r0, r7
push {r1, r2}
	ldr r1, =3676
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.1
	push {r1, r2}
	ldr r1, =3676
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r2, [sp, #56]	
	ldr	r3, [sp, #96]	
	subs	r3, r3, r2
	str	r3, [sp, #100]	
	ldr	r2, [sp, #104]	
	ldr	r3, [sp, #48]	
	cmp	r3, r2
	blt	lab272
lab268: 	ldr	r3, [sp, #100]	
	cmp	r3, #0
	bgt	lab273
lab329: 	ldr	r2, [sp, #68]	
	ldr	r3, [sp, #80]	
	lsls	r2, r2, #1
	str	r2, [sp, #68]	
	ldr	r2, [sp, #84]	
	lsls	r3, r3, #1
	cmp	r2, r3
	str	r3, [sp, #80]	
	bgt	lab274
	subs	r3, r3, r2
	str	r3, [sp, #80]	
	ldr	r3, [sp, #68]	
	adds	r3, #1
	str	r3, [sp, #68]	
lab274: 	ldr	r3, [sp, #136]	
	ldr	r2, [sp, #152]	
	lsls	r3, r3, #1
	cmp	r3, r2
	str	r3, [sp, #136]	
	blt	lab275
lab232: 	add	sp, sp, #4352	
	add	sp, #28
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab247: 	ldr	r3, [sp, #88]	
	str	r3, [sp, #260]	
	ldr	r3, [sp, #36]	
	str	r3, [sp, #168]	
	ldr	r3, [sp, #44]	
	str	r3, [sp, #256]	
	str	r3, [sp, #172]	
	add	r3, sp, #280	
	str	r3, [sp, #12]
	ldr	r3, [sp, #24]
	str	r3, [sp, #8]
	add	r3, sp, #256	
	ldmia	r3, {r0, r1}
	stmia	sp, {r0, r1}
	add	r3, sp, #168	
	ldmia	r3, {r2, r3}
	ldr	r1, [sp, #60]	
	mov	r0, r7
push {r1, r2}
	ldr r1, =15
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	WikiMerge.constprop.1.isra.0
	push {r1, r2}
	ldr r1, =15
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab276
lab253: 	adds	r5, r2, r6
	mov	r4, r2
	b	lab271
lab248: 	mov	sl, r6
	b	lab277
lab270: 	cmp	r4, #0
	bgt	lab278
	add	r5, r7, r3, lsl #3
	lsls	r4, r4, #3
	mov	r2, r4
	mov	r1, r5
	add	r0, sp, #280	
	mov	r8, r3
	bl	memcpy
	ldr	r3, [sp, #32]
	mov	r0, r5
	add	r1, r7, r3, lsl #3
	lsls	r2, r6, #3
push {r1, r2}
	ldr r1, =7290
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =7290
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r8
	adds	r5, r3, r6
	mov	r2, r4
	add	r1, sp, #280	
	add	r0, r7, r5, lsl #3
	bl	memcpy
	ldr	r4, [sp, #20]
	b	lab271
lab237: 	ldr	r3, [sp, #36]	
	add	sl, r3, #1
	cmp	sl, fp
	bge	lab279
	add	r5, r7, r3, lsl #3
	str	r8, [sp, #28]
	str	r9, [sp, #32]
	ldr	r8, [sp, #128]	
	mov	r9, r7
	ldr	r7, [sp, #24]
	movs	r4, #1
lab283: 	mov	r6, r5
	adds	r5, #8
	ldmia	r5, {r2, r3}
	ldmia	r6, {r0, r1}
	blx	r7
	cmp r0, #0
	bne lab280
	ldmia	r6, {r2, r3}
	ldmia	r5, {r0, r1}
	blx	r7
	cmp r0, #0
	beq lab281
lab280: 	cmp	r8, r4
	add	r3, r4, #1
	beq	lab282
	mov	r4, r3
lab281: 	add	sl, sl, #1
	cmp	sl, fp
	bne	lab283
	mov	r7, r9
	ldr	r8, [sp, #28]
	ldr	r9, [sp, #32]
lab347: 	ldr	r3, [sp, #120]	
	cmp	r3, #512	
	bgt	lab284
lab296: 	cmp	r4, r3
	bne	lab285
	ldr	r2, [sp, #36]	
	ldr	r1, [sp, #48]	
	str	r1, [sp, #116]	
	add	r3, r2
	str	r3, [sp, #96]	
	str	r3, [sp, #124]	
	movs	r3, #0
	str	r2, [sp, #132]	
	str	r2, [sp, #60]	
	str	r1, [sp, #28]
	str	r3, [sp, #32]
lab346: 	ldr	r3, [sp, #120]	
	mov	r1, r3
lab337: 	strd	r9, fp, [sp, #40]	
	add	r5, r7, sl, lsl #3
	add	r3, sp, #232	
	mov	fp, r7
	ldr	r7, [sp, #24]
	str	r3, [sp, #20]
	mov	r4, sl
	mov	r8, #0
	mov	r9, r1
lab288: 	ldr	r3, [sp, #36]	
	cmp	r4, r3
	sub	r6, r5, #8
	beq	lab286
	ldmia	r5, {r2, r3}
	ldmia	r6, {r0, r1}
	blx	r7
	cmp r0, #0
	bne lab286
	ldmia	r5, {r0, r1}
	ldmia	r6, {r2, r3}
	blx	r7
	cmp r0, #0
	beq lab287
lab286: 	add	r3, sl, #1
	adds	r2, r4, #1
	strd	r2, r3, [sp, #232]	
	ldr	r3, [sp, #20]
	add	r0, sp, #280	
	ldmia	r3, {r2, r3}
	rsb	r1, r8, #0
	str	r0, [sp, #0]
	mov	r0, fp
push {r1, r2}
	ldr r1, =6338
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.1
	push {r1, r2}
	ldr r1, =6338
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	sl, r4, r8
	add	r8, r8, #1
lab287: 	cmp	r8, r9
	add	r4, r4, #4294967295	
	mov	r5, r6
	blt	lab288
	ldr	r3, [sp, #124]	
	ldr	r9, [sp, #40]	
	mov	r7, fp
	ldr	fp, [sp, #44]	
	add	r8, r7, r3, lsl #3
	sub	r2, fp, r3
	ldr	r3, [sp, #120]	
	str	r3, [sp, #100]	
	ldr	r3, [sp, #36]	
	str	r2, [sp, #20]
	str	r3, [sp, #56]	
lab314: 	ldr	r3, [sp, #32]
	cmp	r3, #0
	ble	lab289
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #48]	
	str	fp, [sp, #52]	
	strd	r8, r9, [sp, #40]	
	adds	r4, r3, #1
	add	sl, r2, #4294967295	
	ldr	r9, [sp, #32]
	add	r2, sp, #240	
	add	r4, r7, r4, lsl #3
	mov	fp, r7
	mov	r5, r3
	movs	r6, #0
	str	r2, [sp, #28]
	mov	r7, r3
lab292: 	cmp	r5, sl
	sub	r8, r4, #8
	beq	lab290
	ldmia	r4, {r2, r3}
	ldmia	r8, {r0, r1}
	ldr	ip, [sp, #24]
	blx	ip
	cmp r0, #0
	bne lab290
	ldmia	r4, {r0, r1}
	ldmia	r8, {r2, r3}
	ldr	ip, [sp, #24]
	blx	ip
	cmp r0, #0
	beq lab291
lab290: 	strd	r7, r5, [sp, #240]	
	ldr	r3, [sp, #28]
	add	r0, sp, #280	
	ldmia	r3, {r2, r3}
	mov	r1, r6
	str	r0, [sp, #0]
	mov	r0, fp
push {r1, r2}
	ldr r1, =372
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.1
	push {r1, r2}
	ldr r1, =372
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r7, r5, r6
	adds	r6, #1
lab291: 	cmp	r6, r9
	add	r5, r5, #1
	add	r4, r4, #8
	blt	lab292
	ldrd	r8, r9, [sp, #40]	
	mov	r7, fp
	ldr	fp, [sp, #52]	
lab289: 	ldr	r3, [sp, #36]	
	str	r3, [sp, #140]	
	ldr	r3, [sp, #116]	
	str	r3, [sp, #88]	
	ldr	r3, [sp, #48]	
	str	r3, [sp, #144]	
	ldr	r3, [sp, #124]	
	str	r3, [sp, #36]	
	b	lab293
lab240: 	ldr	r3, [sp, #36]	
	str	sl, [sp, #32]
	add	r5, r7, r3, lsl #3
	ldr	r3, [sp, #60]	
	add	r4, r7, r3, lsl #3
	adds	r2, r4, #4
	lsls	r3, r3, #3
	str	r3, [sp, #20]
	add	r8, r5, #4
	movs	r3, #0
	mov	ip, r2
	mov	sl, r7
lab294: 	add	r2, r4, r3, lsl #3
	ldmia	r2, {r0, r1}
	ldr	r7, [r5, r3, lsl #3]
	ldr	r6, [r8, r3, lsl #3]
	add	r2, r5, r3, lsl #3
	stmia	r2, {r0, r1}
	str	r7, [r4, r3, lsl #3]
	str	r6, [ip, r3, lsl #3]
	adds	r3, #1
	cmp	lr, r3
	bne	lab294
	mov	r7, sl
	ldr	sl, [sp, #32]
	b	lab295
lab278: 	mov	r8, r6
	b	lab255
lab282: 	mov	r4, r3
	ldr	r3, [sp, #120]	
	ldr	r8, [sp, #28]
	cmp	r3, #512	
	mov	r7, r9
	ldr	r9, [sp, #32]
	ble	lab296
lab284: 	add	r6, sl, #1
	cmp	r6, fp
	bge	lab297
	strd	sl, r8, [sp, #28]
	add	r5, r7, sl, lsl #3
	movs	r3, #0
	str	r9, [sp, #44]	
	mov	sl, r7
	ldr	r9, [sp, #128]	
	ldr	r7, [sp, #24]
	str	r4, [sp, #40]	
	mov	r8, r3
lab301: 	mov	r4, r5
	adds	r5, #8
	ldmia	r5, {r2, r3}
	ldmia	r4, {r0, r1}
	blx	r7
	cmp r0, #0
	bne lab298
	ldmia	r4, {r2, r3}
	ldmia	r5, {r0, r1}
	blx	r7
	cmp r0, #0
	beq lab299
lab298: 	cmp	r9, r8
	add	r3, r8, #1
	beq	lab300
	mov	r8, r3
lab299: 	adds	r6, #1
	cmp	r6, fp
	bne	lab301
	mov	r3, r8
	mov	r7, sl
	ldr	r4, [sp, #40]	
	ldr	r8, [sp, #32]
	ldr	r9, [sp, #44]	
	ldr	sl, [sp, #28]
lab340: 	ldr	r2, [sp, #120]	
	cmp	r3, r2
	beq	lab302
lab297: 	ldr	r3, [sp, #120]	
	cmp	r4, r3
	ldr	r3, [sp, #48]	
	beq	lab303
	sub	sl, r3, #2
	cmp	sl, fp
	blt	lab304
	add	r4, r7, sl, lsl #3
	str	r8, [sp, #28]
	str	r7, [sp, #32]
	ldr	r8, [sp, #128]	
	ldr	r7, [sp, #24]
	movs	r6, #1
lab308: 	add	r5, r4, #8
	ldmia	r4, {r0, r1}
	ldmia	r5, {r2, r3}
	blx	r7
	cmp r0, #0
	bne lab305
	ldmia	r4, {r2, r3}
	ldmia	r5, {r0, r1}
	blx	r7
	cmp r0, #0
	beq lab306
lab305: 	cmp	r8, r6
	add	r3, r6, #1
	beq	lab307
	mov	r6, r3
lab306: 	add	sl, sl, #4294967295	
	cmp	sl, fp
	sub	r4, r4, #8
	bge	lab308
lab307: 	ldrd	r8, r7, [sp, #28]
lab304: 	add	r3, sl, #4294967295	
	cmp	r3, fp
	blt	lab309
	strd	r9, r8, [sp, #28]
	add	r4, r7, r3, lsl #3
	mov	sl, r7
	ldr	r9, [sp, #128]	
	ldr	r7, [sp, #24]
	movs	r6, #0
	mov	r8, r3
lab313: 	add	r5, r4, #8
	ldmia	r4, {r0, r1}
	ldmia	r5, {r2, r3}
	blx	r7
	cmp r0, #0
	bne lab310
	ldmia	r4, {r2, r3}
	ldmia	r5, {r0, r1}
	blx	r7
	cmp r0, #0
	beq lab311
lab310: 	cmp	r9, r6
	add	r3, r6, #1
	beq	lab312
	mov	r6, r3
lab311: 	add	r8, r8, #4294967295	
	cmp	r8, fp
	sub	r4, r4, #8
	bge	lab313
	ldr	r9, [sp, #28]
	str	r8, [sp, #28]
	ldr	r8, [sp, #32]
	mov	r7, sl
lab341: 	ldr	r3, [sp, #120]	
	cmp	r6, r3
	bne	lab309
	ldr	r2, [sp, #48]	
	ldr	r0, [sp, #148]	
	ldr	r4, [sp, #28]
	mov	r1, r3
	subs	r3, r2, r3
	str	r3, [sp, #56]	
	str	r3, [sp, #132]	
	ldr	r3, [sp, #120]	
	str	r3, [sp, #100]	
	add	r0, r4
	ldr	r3, [sp, #48]	
	str	r0, [sp, #156]	
	sub	r2, r2, r1, lsl #1
	str	r2, [sp, #60]	
	str	r3, [sp, #96]	
lab339: 	ldr	r2, [sp, #28]
	ldr	r3, [sp, #156]	
	subs	r3, r3, r2
	ldr	r2, [sp, #48]	
	str	r3, [sp, #32]
	subs	r3, r2, r3
	str	r3, [sp, #116]	
	ldr	r3, [sp, #36]	
	str	r3, [sp, #124]	
	b	lab314
lab285: 	ldr	r3, [sp, #48]	
	subs	r3, #2
	cmp	r3, fp
	str	r3, [sp, #28]
	blt	lab315
	strd	r9, r8, [sp, #28]
	add	r4, r7, r3, lsl #3
	mov	sl, r7
	ldr	r9, [sp, #128]	
	ldr	r7, [sp, #24]
	movs	r6, #1
	mov	r8, r3
lab319: 	add	r5, r4, #8
	ldmia	r4, {r0, r1}
	ldmia	r5, {r2, r3}
	blx	r7
	cmp r0, #0
	bne lab316
	ldmia	r4, {r2, r3}
	ldmia	r5, {r0, r1}
	blx	r7
	cmp r0, #0
	beq lab317
lab316: 	cmp	r9, r6
	add	r3, r6, #1
	beq	lab318
	mov	r6, r3
lab317: 	add	r8, r8, #4294967295	
	cmp	r8, fp
	sub	r4, r4, #8
	bge	lab319
	ldr	r9, [sp, #28]
	str	r8, [sp, #28]
	ldr	r8, [sp, #32]
	mov	r7, sl
lab349: 	ldr	r3, [sp, #120]	
	cmp	r6, r3
	beq	lab320
lab338: 	ldr	r3, [sp, #28]
	add	r3, r6
	bge	lab321
lab309: 	ldr	r2, [sp, #48]	
	sub	r3, r2, fp
	cmp	r3, #0
	ble	lab276
	add	r3, sp, #280	
	add	r6, sp, #200	
	sub	r5, r3, #56	
	str	r9, [sp, #28]
	str	r6, [sp, #20]
	ldr	r4, [sp, #36]	
	ldr	sl, [sp, #24]
	mov	r6, fp
	sub	r8, r3, #88	
	mov	r9, r2
	mov	fp, r5
	b	lab322
lab324: 	cmp	r2, #0
	ble	lab323
lab322: 	strd	r6, r9, [sp, #200]	
	ldr	r3, [sp, #20]
	mov	r1, r4
	ldmia	r3, {r2, r3}
	mov	r0, r7
	str	sl, [sp]
push {r1, r2}
	ldr r1, =794
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	BinaryFirst
	push {r1, r2}
	ldr r1, =794
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	r4, r0, [sp, #224]	
	mov	r5, r6
	add	ip, sp, #280	
	mov	r6, r0
	ldmia	fp, {r2, r3}
	subs	r1, r5, r0
	str	ip, [sp]
	mov	r0, r7
push {r1, r2}
	ldr r1, =3669
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.1
	push {r1, r2}
	ldr r1, =3669
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	r4, r5, [sp, #192]	
	subs	r1, r6, r5
	ldmia	r8, {r2, r3}
	add	r1, r4
	str	sl, [sp]
	mov	r0, r7
	bl	BinaryLast
	push {r1, r2}
	ldr r1, =5693
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r3, r6, r0
	cmp	r3, #0
	mov	r4, r0
	sub	r2, r9, r6
	bgt	lab324
lab323: 	ldr	r9, [sp, #28]
	b	lab276
lab273: 	ldr	r3, [sp, #60]	
	str	r3, [sp, #160]	
	ldr	r3, [sp, #132]	
	str	r3, [sp, #164]	
	add	r3, sp, #160	
	ldmia	r3, {r1, r2}
	mov	r0, r7
	ldr	r3, [sp, #24]
push {r1, r2}
	ldr r1, =4250
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	InsertionSort
	push {r1, r2}
	ldr r1, =4250
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #124]	
	ldr	r2, [sp, #140]	
	subs	r3, r3, r2
	cmp	r3, #0
	ble	lab325
	ldr	r5, [sp, #124]	
	mov	r6, r2
	mov	r4, r5
	add	r8, sp, #264	
lab328: 	ldr	r2, [sp, #116]	
	cmp	r2, r4
	add	r3, r7, r6, lsl #3
	add	r1, r7, r4, lsl #3
	beq	lab326
lab333: 	ldmia	r3, {r2, r3}
	ldmia	r1, {r0, r1}
	ldr	ip, [sp, #24]
	blx	ip
	sub	r9, r4, r5
	subs	r1, r5, r4
	subs	r3, r5, r6
	cmp r0, #0
	beq lab327
	cmp	r3, #0
	add	r4, r4, #1
	bgt	lab328
lab325: 	ldr	r3, [sp, #144]	
	ldr	r2, [sp, #116]	
	subs	r3, r3, r2
	cmp	r3, #0
	ble	lab329
	ldrd	fp, r9, [sp, #140]	
	mov	r5, r2
	mov	r4, r2
	mvn	r6, #3758096384	
	add	r8, sp, #272	
lab332: 	adds	r3, r5, r6
	add	r1, r9, r6
	cmp	fp, r5
	add	r3, r7, r3, lsl #3
	add	r1, r7, r1, lsl #3
	beq	lab330
	ldmia	r3, {r2, r3}
	ldmia	r1, {r0, r1}
	ldr	ip, [sp, #24]
	blx	ip
	sub	sl, r4, r5
	mov	r3, r0
	mov	r1, sl
	mov	r0, r7
	sub	r2, r9, r4
	cmp	r3, #0
	beq	lab331
	cmp	r2, #0
	add	r5, r5, #4294967295	
	bgt	lab332
	b	lab329
lab327: 	strd	r6, r4, [sp, #264]	
	add	r0, sp, #280	
	add	r9, r9, #1
	ldmia	r8, {r2, r3}
	add	r6, r9
	str	r0, [sp, #0]
	mov	r0, r7
push {r1, r2}
	ldr r1, =7230
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.1
	push {r1, r2}
	ldr r1, =7230
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r3, r4, r6
	cmp	r3, #0
	ble	lab325
	ldr	r2, [sp, #116]	
	cmp	r2, r4
	mov	r5, r4
	add	r3, r7, r6, lsl #3
	add	r1, r7, r4, lsl #3
	bne	lab333
lab326: 	mov	r3, r2
	strd	r6, r3, [sp, #264]	
	add	r1, sp, #280	
	mov	r2, r5
	str	r1, [sp, #0]
	sub	r8, r1, #16
	subs	r5, r3, r5
	subs	r1, r2, r3
	mov	r0, r7
	ldmia	r8, {r2, r3}
push {r1, r2}
	ldr r1, =4552
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.1
	push {r1, r2}
	ldr r1, =4552
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r5, #1
	ldr	r3, [sp, #116]	
	add	r6, r5
	subs	r3, r3, r6
	cmp	r3, #0
	ble	lab325
	mov	r5, r8
lab334: 	strd	r6, r4, [sp, #264]	
	add	r3, sp, #280	
	str	r3, [sp, #0]
	ldmia	r5, {r2, r3}
	adds	r6, #1
	movs	r1, #0
	mov	r0, r7
push {r1, r2}
	ldr r1, =549
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.1
	push {r1, r2}
	ldr r1, =549
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r3, r4, r6
	cmp	r3, #0
	bgt	lab334
	b	lab325
lab331: 	strd	r5, r9, [sp, #272]	
	add	r4, sp, #280	
	add	sl, sl, #1
	ldmia	r8, {r2, r3}
	sub	r9, r9, sl
	str	r4, [sp, #0]
push {r1, r2}
	ldr r1, =7058
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.1
	push {r1, r2}
	ldr r1, =7058
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	sub	r3, r9, r5
	cmp	r3, #0
	ble	lab329
	mov	r4, r5
	b	lab332
lab330: 	strd	r5, r9, [sp, #272]	
	add	r3, sp, #280	
	subs	r4, r4, r5
	mov	r6, r5
	str	r3, [sp, #0]
	sub	r5, r3, #8
	ldmia	r5, {r2, r3}
	mov	r1, r4
	mov	r0, r7
push {r1, r2}
	ldr r1, =7689
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.1
	push {r1, r2}
	ldr r1, =7689
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r4, #1
	mov	r2, r9
	subs	r4, r2, r4
	subs	r3, r4, r6
	cmp	r3, #0
	ble	lab329
lab335: 	strd	r6, r4, [sp, #272]	
	add	r3, sp, #280	
	str	r3, [sp, #0]
	ldmia	r5, {r2, r3}
	subs	r4, #1
	movs	r1, #0
	mov	r0, r7
push {r1, r2}
	ldr r1, =1264
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	Rotate.constprop.1
	push {r1, r2}
	ldr r1, =1264
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r3, r4, r6
	cmp	r3, #0
	bgt	lab335
	b	lab329
lab302: 	ldr	r3, [sp, #36]	
	add	r2, r3
	str	r2, [sp, #96]	
	ldr	r2, [sp, #148]	
	adds	r3, r2, r3
	cmp	r2, #0
	str	r3, [sp, #132]	
	ble	lab336
	mov	r2, r3
	str	r2, [sp, #124]	
	ldr	r2, [sp, #148]	
	ldr	r3, [sp, #48]	
	str	r3, [sp, #116]	
	mov	r1, r2
	str	r3, [sp, #28]
	ldr	r2, [sp, #96]	
	str	r2, [sp, #60]	
	movs	r3, #0
	mov	sl, r6
	str	r3, [sp, #32]
	b	lab337
lab318: 	mov	r6, r3
	ldr	r3, [sp, #120]	
	ldr	r9, [sp, #28]
	str	r8, [sp, #28]
	cmp	r6, r3
	ldr	r8, [sp, #32]
	mov	r7, sl
	bne	lab338
lab320: 	ldr	r2, [sp, #28]
	adds	r2, r3, r2
	str	r2, [sp, #156]	
	ldr	r2, [sp, #48]	
	subs	r3, r2, r3
	str	r3, [sp, #56]	
	ldr	r3, [sp, #36]	
	str	r3, [sp, #132]	
	str	r3, [sp, #60]	
	ldr	r3, [sp, #120]	
	str	r3, [sp, #100]	
	ldr	r3, [sp, #48]	
	str	r3, [sp, #96]	
	b	lab339
lab300: 	mov	r7, sl
	ldrd	r4, r9, [sp, #40]	
	ldr	r8, [sp, #32]
	ldr	sl, [sp, #28]
	b	lab340
lab312: 	ldr	r9, [sp, #28]
	str	r8, [sp, #28]
	mov	r7, sl
	ldr	r8, [sp, #32]
	mov	r6, r3
	b	lab341
lab303: 	subs	r3, #2
	cmp	r3, fp
	str	r3, [sp, #28]
	blt	lab309
	mov	r8, r3
	add	r5, r7, r3, lsl #3
	movs	r6, #1
lab345: 	add	r4, r5, #8
	ldmia	r5, {r0, r1}
	ldmia	r4, {r2, r3}
	ldr	ip, [sp, #24]
	blx	ip
	cmp r0, #0
	bne lab342
	ldmia	r4, {r0, r1}
	ldmia	r5, {r2, r3}
	ldr	r4, [sp, #24]
	blx	r4
	cmp r0, #0
	beq lab343
lab342: 	ldr	r2, [sp, #128]	
	cmp	r2, r6
	add	r3, r6, #1
	beq	lab344
	mov	r6, r3
lab343: 	add	r8, r8, #4294967295	
	cmp	r8, fp
	sub	r5, r5, #8
	bge	lab345
	str	r8, [sp, #28]
lab348: 	ldr	r3, [sp, #120]	
	cmp	r6, r3
	bne	lab309
	ldr	r0, [sp, #48]	
	ldr	r2, [sp, #36]	
	str	r3, [sp, #32]
	adds	r2, r3, r2
	subs	r1, r0, r3
	str	r2, [sp, #96]	
	str	r1, [sp, #60]	
	str	r1, [sp, #116]	
	str	r2, [sp, #124]	
	str	r0, [sp, #132]	
	b	lab346
lab279: 	movs	r4, #1
	b	lab347
lab227: 	movs	r2, #0
	add	r3, sp, #280	
	str	r2, [sp, #280]	
	str	r1, [sp, #284]	
	ldmia	r3, {r1, r2}
	ldr	r3, [sp, #24]
	add	sp, sp, #4352	
	add	sp, #28
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	InsertionSort
lab344: 	str	r8, [sp, #28]
	mov	r6, r3
	b	lab348
lab315: 	movs	r6, #1
	b	lab349
lab321: 	strd	r3, r6, [sp, #96]	
	ldr	r3, [sp, #36]	
	str	r3, [sp, #60]	
	str	r3, [sp, #132]	
	ldr	r3, [sp, #28]
	str	r3, [sp, #56]	
	b	lab339
lab336: 	ldr	r3, [sp, #132]	
	str	r3, [sp, #124]	
	sub	r2, fp, r3
	str	r2, [sp, #20]
	add	r8, r7, r3, lsl #3
	ldr	r2, [sp, #120]	
	ldr	r3, [sp, #36]	
	str	r2, [sp, #100]	
	str	r3, [sp, #56]	
	ldr	r2, [sp, #48]	
	ldr	r3, [sp, #96]	
	str	r2, [sp, #116]	
	str	r3, [sp, #60]	
	b	lab289
verify_benchmark:
	push	{r4, lr}
	sub	sp, sp, #3200	
	mov	r4, #3200	
	movw	r1, #36	
	mov	r2, r4
	movt	r1, #8192	
	mov	r0, sp
	bl	memcpy
	movw	r0, #6236	
	mov	r2, r4
	mov	r1, sp
	movt	r0, #8192	
	bl	memcmp
	push {r1, r2}
	ldr r1, =5580
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	clz	r0, r0
	lsrs	r0, r0, #5
	add	sp, sp, #3200	
	nop
	push {r1, r2}
	ldr r1, =6533
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
	nop
initialise_benchmark:
	bx	lr
	nop
warm_caches:
	b	benchmark_body.isra.0
benchmark:
	b	benchmark_body.constprop.0
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
lab350: 	ldr	r2, [r3, #0]
	lsls	r0, r2, #14
	bpl	lab350
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
lab351: 	ldr	r3, [r2, #0]
	lsls	r1, r3, #6
	bpl	lab351
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
lab352: 	ldr	r3, [r1, #8]
	lsls	r3, r3, #28
	bpl	lab352
	movw	r3, #3760	
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
	ldr r1, =6386
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	start_trigger
	bl	benchmark
	push {r1, r2}
	ldr r1, =56
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r0, [sp, #4]
	bl	stop_trigger
	ldr	r0, [sp, #4]
	bl	verify_benchmark
	push {r1, r2}
	ldr r1, =4725
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
rand_beebs:
	movw	r3, #9436	
	movt	r3, #8192	
	movw	r2, #20077	
	ldr	r1, [r3, #0]
	movt	r2, #16838	
	movw	r0, #12345	
	mla	r0, r2, r1, r0
	bic	r0, r0, #2147483648	
	str	r0, [r3, #0]
	lsrs	r0, r0, #16
	bx	lr
srand_beebs:
	movw	r3, #9436	
	movt	r3, #8192	
	str	r0, [r3, #0]
	bx	lr
init_heap_beebs:
	ands	r2, r1, #3
	push	{r3, lr}
	bne	lab353
	movw	r3, #9436	
	movt	r3, #8192	
	add	r1, r0
	strd	r0, r1, [r3, #4]
	str	r2, [r3, #12]
	pop	{r3, pc}
lab353: 	movw	r3, #3240	
	movw	r2, #3320	
	movw	r0, #3272	
	movt	r3, #8192	
	movt	r2, #8192	
	movs	r1, #65	
	movt	r0, #8192	
	bl	__assert_func
check_heap_beebs:
	movw	r3, #9436	
	movt	r3, #8192	
	ldrd	r3, r2, [r3, #8]
	add	r0, r2
	cmp	r3, r0
	ite	cc
	movcc	r0, #0
	movcs	r0, #1
	bx	lr
malloc_beebs:
	mov	r3, r0
	cmp r0, #0
	beq lab354
	movw	r2, #9436	
	movt	r2, #8192	
	ldr	r0, [r2, #4]
	ldr	ip, [r2, #12]
	adds	r1, r0, r3
	add	r3, ip
	ands	ip, r1, #3
	itt	ne
	rsbne	ip, ip, #4
	addne	r3, ip
	str	r3, [r2, #12]
	ldr	r3, [r2, #8]
	it	ne
	addne	r1, ip
	cmp	r3, r1
	bcc	lab354
	str	r1, [r2, #4]
	bx	lr
lab354: 	movs	r0, #0
	bx	lr
	nop
calloc_beebs:
	mul	r2, r1, r0
	push	{r4, lr}
	cmp r2, #0
	beq lab355
	movw	r3, #9436	
	movt	r3, #8192	
	ldr	r4, [r3, #4]
	ldr	r0, [r3, #12]
	adds	r1, r4, r2
	ands	ip, r1, #3
	add	r0, r2
	itt	ne
	rsbne	ip, ip, #4
	addne	r0, ip
	str	r0, [r3, #12]
	ldr	r0, [r3, #8]
	it	ne
	addne	r1, ip
	cmp	r0, r1
	bcc	lab355
	str	r1, [r3, #4]
	cmp r4, #0
	beq lab356
	movs	r1, #0
	mov	r0, r4
push {r1, r2}
	ldr r1, =7949
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
lab356:	push {r1, r2}
	ldr r1, =7949
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r4
	pop	{r4, pc}
lab355: 	movs	r4, #0
	mov	r0, r4
	pop	{r4, pc}
	nop
realloc_beebs:
	cmp	r0, #0
	beq	lab357
	cmp	r1, #0
	beq	lab357
	movw	r3, #9436	
	movt	r3, #8192	
	mov	r2, r0
	ldr	r0, [r3, #4]
	push	{r4, r5, lr}
	adds	r4, r0, r1
	ldr	r5, [r3, #12]
	ands	ip, r4, #3
	add	r5, r1
	itt	ne
	rsbne	ip, ip, #4
	addne	r5, ip
	str	r5, [r3, #12]
	ldr	r5, [r3, #8]
	it	ne
	addne	r4, ip
	cmp	r5, r4
	bcc	lab358
	str	r4, [r3, #4]
	cmp r0, #0
	beq lab358
	adds	r3, r2, #1
	subs	r3, r0, r3
	cmp	r3, #2
	add	r4, r1, #4294967295	
	bls	lab359
	cmp	r4, #7
	bls	lab359
	bic	r4, r1, #3
	mov	r3, r2
	mov	ip, r0
	add	r4, r2
lab360: 	ldr	lr, [r3], #4
	str	lr, [ip], #4
	cmp	r3, r4
	bne	lab360
	lsls	r4, r1, #30
	bic	r3, r1, #3
	beq	lab361
	ldrb	r4, [r2, r3]
	strb	r4, [r0, r3]
	adds	r4, r3, #1
	cmp	r1, r4
	bls	lab361
	adds	r3, #2
	ldrb	r5, [r2, r4]
	strb	r5, [r0, r4]
	cmp	r1, r3
	bls	lab361
	ldrb	r2, [r2, r3]
	strb	r2, [r0, r3]
lab361: 	pop	{r4, r5, pc}
lab358: 	movs	r0, #0
	pop	{r4, r5, pc}
lab359: 	subs	r3, r2, #1
	subs	r1, r0, #1
	add	r2, r4
lab362: 	ldrb	r4, [r3, #1]!
	strb	r4, [r1, #1]!
	cmp	r3, r2
	bne	lab362
	pop	{r4, r5, pc}
lab357: 	movs	r0, #0
	bx	lr
free_beebs:
	bx	lr
	nop
	push	{r4, r5, r6, lr}
	mov	ip, #255	
	orr	ip, ip, #1792	
	ands	r4, ip, r1, lsr #20
	ittte	ne
	andsne	r5, ip, r3, lsr #20
	teqne	r4, ip
	teqne	r5, ip
	bleq	lab363
	add	r4, r5
	eor	r6, r1, r3
	bic	r1, r1, ip, lsl #21
	bic	r3, r3, ip, lsl #21
	orrs	r5, r0, r1, lsl #12
	it	ne
	orrsne	r5, r2, r3, lsl #12
	orr	r1, r1, #1048576	
	orr	r3, r3, #1048576	
	beq	lab364
	umull	ip, lr, r0, r2
	mov	r5, #0
	umlal	lr, r5, r1, r2
	and	r2, r6, #2147483648	
	umlal	lr, r5, r0, r3
	mov	r6, #0
	umlal	r5, r6, r1, r3
	teq	ip, #0
	it	ne
	orrne	lr, lr, #1
	sub	r4, r4, #255	
	cmp	r6, #512	
	sbc	r4, r4, #768	
	bcs	lab365
	movs	lr, lr, lsl #1
	adcs	r5, r5
	adc	r6, r6, r6
lab365: 	orr	r1, r2, r6, lsl #11
	orr	r1, r1, r5, lsr #21
	mov	r0, r5, lsl #11
	orr	r0, r0, lr, lsr #21
	mov	lr, lr, lsl #11
	subs	ip, r4, #253	
	it	hi
	cmphi	ip, #1792	
	bhi	lab366
	cmp	lr, #2147483648	
	it	eq
	movseq	lr, r0, lsr #1
	adcs	r0, r0, #0
	adc	r1, r1, r4, lsl #20
	pop	{r4, r5, r6, pc}
lab364: 	and	r6, r6, #2147483648	
	orr	r1, r6, r1
	orr	r0, r0, r2
	eor	r1, r1, r3
	subs	r4, r4, ip, lsr #1
	ittt	gt
	rsbsgt	r5, r4, ip
	orrgt	r1, r1, r4, lsl #20
	popgt	{r4, r5, r6, pc}
	orr	r1, r1, #1048576	
	mov	lr, #0
	subs	r4, #1
lab366: 	bgt	lab367
	cmn	r4, #54	
	ittt	le
	movle	r0, #0
	andle	r1, r1, #2147483648	
	pople	{r4, r5, r6, pc}
	rsb	r4, r4, #0
	subs	r4, #32
	bge	lab368
	adds	r4, #12
	bgt	lab369
	add	r4, r4, #20
	rsb	r5, r4, #32
	lsl	r3, r0, r5
	lsr	r0, r0, r4
	lsl	r2, r1, r5
	orr	r0, r0, r2
	and	r2, r1, #2147483648	
	bic	r1, r1, #2147483648	
	adds	r0, r0, r3, lsr #31
	lsr	r6, r1, r4
	adc	r1, r2, r6
	orrs	lr, lr, r3, lsl #1
	it	eq
	biceq	r0, r0, r3, lsr #31
	pop	{r4, r5, r6, pc}
lab369: 	rsb	r4, r4, #12
	rsb	r5, r4, #32
	lsl	r3, r0, r4
	lsr	r0, r0, r5
	lsl	r2, r1, r4
	orr	r0, r0, r2
	and	r1, r1, #2147483648	
	adds	r0, r0, r3, lsr #31
	adc	r1, r1, #0
	orrs	lr, lr, r3, lsl #1
	it	eq
	biceq	r0, r0, r3, lsr #31
	pop	{r4, r5, r6, pc}
lab368: 	rsb	r5, r4, #32
	lsl	r2, r0, r5
	orr	lr, lr, r2
	lsr	r3, r0, r4
	lsl	r2, r1, r5
	orr	r3, r3, r2
	lsr	r0, r1, r4
	and	r1, r1, #2147483648	
	lsr	r2, r1, r4
	bic	r0, r0, r2
	add	r0, r0, r3, lsr #31
	orrs	lr, lr, r3, lsl #1
	it	eq
	biceq	r0, r0, r3, lsr #31
	pop	{r4, r5, r6, pc}
lab374: 	teq	r4, #0
	bne	lab370
	and	r6, r1, #2147483648	
lab371: 	lsls	r0, r0, #1
	adc	r1, r1, r1
	tst	r1, #1048576	
	it	eq
	subeq	r4, #1
	beq	lab371
	orr	r1, r1, r6
	teq	r5, #0
	it	ne
	bxne	lr
lab370: 	and	r6, r3, #2147483648	
lab372: 	lsls	r2, r2, #1
	adc	r3, r3, r3
	tst	r3, #1048576	
	it	eq
	subeq	r5, #1
	beq	lab372
	orr	r3, r3, r6
	bx	lr
lab363: 	teq	r4, ip
	and	r5, ip, r3, lsr #20
	it	ne
	teqne	r5, ip
	beq	lab373
	orrs	r6, r0, r1, lsl #1
	it	ne
	orrsne	r6, r2, r3, lsl #1
	bne	lab374
	eor	r1, r1, r3
	and	r1, r1, #2147483648	
	mov	r0, #0
	pop	{r4, r5, r6, pc}
lab373: 	orrs	r6, r0, r1, lsl #1
	itte	eq
	moveq	r0, r2
	moveq	r1, r3
	orrsne	r6, r2, r3, lsl #1
	beq	lab375
	teq	r4, ip
	bne	lab376
	orrs	r6, r0, r1, lsl #12
	bne	lab375
lab376: 	teq	r5, ip
	bne	lab377
	orrs	r6, r2, r3, lsl #12
	itt	ne
	movne	r0, r2
	movne	r1, r3
	bne	lab375
lab377: 	eor	r1, r1, r3
lab367: 	and	r1, r1, #2147483648	
	orr	r1, r1, #2130706432	
	orr	r1, r1, #15728640	
	mov	r0, #0
	pop	{r4, r5, r6, pc}
lab375: 	orr	r1, r1, #2130706432	
	orr	r1, r1, #16252928	
	pop	{r4, r5, r6, pc}
__aeabi_drsub:
	eor	r1, r1, #2147483648	
	b	__adddf3
	nop
__aeabi_dsub:
	eor	r3, r3, #2147483648	
__adddf3:
	push	{r4, r5, lr}
	mov	r4, r1, lsl #1
	mov	r5, r3, lsl #1
	teq	r4, r5
	it	eq
	teqeq	r0, r2
	itttt	ne
	orrsne	ip, r4, r0
	orrsne	ip, r5, r2
	mvnsne	ip, r4, asr #21
	mvnsne	ip, r5, asr #21
	beq	lab378
	mov	r4, r4, lsr #21
	rsbs	r5, r4, r5, lsr #21
	it	lt
	neglt	r5, r5
	ble	lab379
	add	r4, r5
	eor	r2, r0, r2
	eor	r3, r1, r3
	eor	r0, r2, r0
	eor	r1, r3, r1
	eor	r2, r0, r2
	eor	r3, r1, r3
lab379: 	cmp	r5, #54	
	it	hi
	nop
	push {r1, r2}
	ldr r1, =7238
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pophi	{r4, r5, pc}
	tst	r1, #2147483648	
	mov	r1, r1, lsl #12
	mov	ip, #1048576	
	orr	r1, ip, r1, lsr #12
	beq	lab380
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
lab380: 	tst	r3, #2147483648	
	mov	r3, r3, lsl #12
	orr	r3, ip, r3, lsr #12
	beq	lab381
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
lab381: 	teq	r4, r5
	beq	lab382
lab394: 	sub	r4, r4, #1
	rsbs	lr, r5, #32
	blt	lab383
	lsl	ip, r2, lr
	lsr	r2, r2, r5
	adds	r0, r0, r2
	adc	r1, r1, #0
	lsl	r2, r3, lr
	adds	r0, r0, r2
	asr	r3, r3, r5
	adcs	r1, r3
	b	lab384
lab383: 	sub	r5, r5, #32
	add	lr, lr, #32
	cmp	r2, #1
	lsl	ip, r3, lr
	it	cs
	orrcs	ip, ip, #2
	asr	r3, r3, r5
	adds	r0, r0, r3
	adcs	r1, r1, r3, asr #31
lab384: 	and	r5, r1, #2147483648	
	bpl	lab385
	mov	lr, #0
	rsbs	ip, ip, #0
	sbcs	r0, lr, r0
	sbc	r1, lr, r1
lab385: 	cmp	r1, #1048576	
	bcc	lab386
	cmp	r1, #2097152	
	bcc	lab387
	lsrs	r1, r1, #1
	movs	r0, r0, rrx
	mov	ip, ip, rrx
	add	r4, r4, #1
	mov	r2, r4, lsl #21
	cmn	r2, #4194304	
	bcs	lab388
lab387: 	cmp	ip, #2147483648	
	it	eq
	movseq	ip, r0, lsr #1
	adcs	r0, r0, #0
	adc	r1, r1, r4, lsl #20
	orr	r1, r1, r5
	nop
	push {r1, r2}
	ldr r1, =5511
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab386: 	movs	ip, ip, lsl #1
	adcs	r0, r0
	adc	r1, r1, r1
	subs	r4, #1
	it	cs
	cmpcs	r1, #1048576	
	bcs	lab387
lab398: 	teq	r1, #0
	itt	eq
	moveq	r1, r0
	moveq	r0, #0
	clz	r3, r1
	it	eq
	addeq	r3, #32
	sub	r3, r3, #11
	subs	r2, r3, #32
	bge	lab389
	adds	r2, #12
	ble	lab390
	add	ip, r2, #20
	rsb	r2, r2, #12
	lsl	r0, r1, ip
	lsr	r1, r1, r2
	b	lab391
lab390: 	add	r2, r2, #20
lab389: 	it	le
	rsble	ip, r2, #32
	lsl	r1, r1, r2
	lsr	ip, r0, ip
	itt	le
	orrle	r1, r1, ip
	lslle	r0, r2
lab391: 	subs	r4, r4, r3
	ittt	ge
	addge	r1, r1, r4, lsl #20
	orrge	r1, r5
	nop
	push {r1, r2}
	ldr r1, =6935
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popge	{r4, r5, pc}
	mvn	r4, r4
	subs	r4, #31
	bge	lab392
	adds	r4, #12
	bgt	lab393
	add	r4, r4, #20
	rsb	r2, r4, #32
	lsr	r0, r0, r4
	lsl	r3, r1, r2
	orr	r0, r0, r3
	lsr	r3, r1, r4
	orr	r1, r5, r3
	pop	{r4, r5, pc}
lab393: 	rsb	r4, r4, #12
	rsb	r2, r4, #32
	lsr	r0, r0, r2
	lsl	r3, r1, r4
	orr	r0, r0, r3
	mov	r1, r5
	pop	{r4, r5, pc}
lab392: 	lsr	r0, r1, r4
	mov	r1, r5
	pop	{r4, r5, pc}
lab382: 	teq	r4, #0
	eor	r3, r3, #1048576	
	itte	eq
	eoreq	r1, r1, #1048576	
	addeq	r4, #1
	subne	r5, #1
	b	lab394
lab378: 	mvns	ip, r4, asr #21
	it	ne
	mvnsne	ip, r5, asr #21
	beq	lab395
	teq	r4, r5
	it	eq
	teqeq	r0, r2
	beq	lab396
	orrs	ip, r4, r0
	itt	eq
	moveq	r1, r3
	moveq	r0, r2
	nop
	push {r1, r2}
	ldr r1, =7787
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab396: 	teq	r1, r3
	ittt	ne
	movne	r1, #0
	movne	r0, #0
	nop
	push {r1, r2}
	ldr r1, =4279
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popne	{r4, r5, pc}
	movs	ip, r4, lsr #21
	bne	lab397
	lsls	r0, r0, #1
	adcs	r1, r1
	it	cs
	orrcs	r1, r1, #2147483648	
	nop
	push {r1, r2}
	ldr r1, =4407
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab397: 	adds	r4, r4, #4194304	
	itt	cc
	addcc	r1, r1, #1048576	
	nop
	push {r1, r2}
	ldr r1, =4071
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popcc	{r4, r5, pc}
	and	r5, r1, #2147483648	
lab388: 	orr	r1, r5, #2130706432	
	orr	r1, r1, #15728640	
	mov	r0, #0
	nop
	push {r1, r2}
	ldr r1, =5776
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab395: 	mvns	ip, r4, asr #21
	itte	ne
	movne	r1, r3
	movne	r0, r2
	mvnseq	ip, r5, asr #21
	itt	ne
	movne	r3, r1
	movne	r2, r0
	orrs	r4, r0, r1, lsl #12
	itte	eq
	orrseq	r5, r2, r3, lsl #12
	teqeq	r1, r3
	orrne	r1, r1, #524288	
	nop
	push {r1, r2}
	ldr r1, =6932
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
	nop
__aeabi_ui2d:
	teq	r0, #0
	itt	eq
	moveq	r1, #0
	bxeq	lr
	push	{r4, r5, lr}
	mov	r4, #1024	
	add	r4, r4, #50	
	mov	r5, #0
	mov	r1, #0
	b	lab398
	nop
__aeabi_i2d:
	teq	r0, #0
	itt	eq
	moveq	r1, #0
	nop
	push {r1, r2}
	ldr r1, =6382
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bxeq	lr
	push	{r4, r5, lr}
	mov	r4, #1024	
	add	r4, r4, #50	
	ands	r5, r0, #2147483648	
	it	mi
	negmi	r0, r0
	mov	r1, #0
	b	lab398
	nop
__aeabi_f2d:
	lsls	r2, r0, #1
	mov	r1, r2, asr #3
	mov	r1, r1, rrx
	mov	r0, r2, lsl #28
	itttt	ne
	andsne	r3, r2, #4278190080	
	teqne	r3, #4278190080	
	eorne	r1, r1, #939524096	
	bxne	lr
	bics	r2, r2, #4278190080	
	it	eq
	bxeq	lr
	teq	r3, #4278190080	
	itt	eq
	orreq	r1, r1, #524288	
	bxeq	lr
	push	{r4, r5, lr}
	mov	r4, #896	
	and	r5, r1, #2147483648	
	bic	r1, r1, #2147483648	
	b	lab398
	nop
__aeabi_ul2d:
	orrs	r2, r0, r1
	it	eq
	bxeq	lr
	push	{r4, r5, lr}
	mov	r5, #0
	b	lab399
__aeabi_l2d:
	orrs	r2, r0, r1
	it	eq
	bxeq	lr
	push	{r4, r5, lr}
	ands	r5, r1, #2147483648	
	bpl	lab399
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
lab399: 	mov	r4, #1024	
	add	r4, r4, #50	
	movs	ip, r1, lsr #22
	beq	lab385
	mov	r2, #3
	movs	ip, ip, lsr #3
	it	ne
	addne	r2, #3
	movs	ip, ip, lsr #3
	it	ne
	addne	r2, #3
	add	r2, r2, ip, lsr #3
	rsb	r3, r2, #32
	lsl	ip, r0, r3
	lsr	r0, r0, r2
	lsl	lr, r1, r3
	orr	r0, r0, lr
	lsr	r1, r1, r2
	add	r4, r2
	b	lab385
	nop
__aeabi_dmul:
	push	{r4, r5, r6, lr}
	mov	ip, #255	
	orr	ip, ip, #1792	
	ands	r4, ip, r1, lsr #20
	ittte	ne
	andsne	r5, ip, r3, lsr #20
	teqne	r4, ip
	teqne	r5, ip
	bleq	lab400
	add	r4, r5
	eor	r6, r1, r3
	bic	r1, r1, ip, lsl #21
	bic	r3, r3, ip, lsl #21
	orrs	r5, r0, r1, lsl #12
	it	ne
	orrsne	r5, r2, r3, lsl #12
	orr	r1, r1, #1048576	
	orr	r3, r3, #1048576	
	beq	lab401
	umull	ip, lr, r0, r2
	mov	r5, #0
	umlal	lr, r5, r1, r2
	and	r2, r6, #2147483648	
	umlal	lr, r5, r0, r3
	mov	r6, #0
	umlal	r5, r6, r1, r3
	teq	ip, #0
	it	ne
	orrne	lr, lr, #1
	sub	r4, r4, #255	
	cmp	r6, #512	
	sbc	r4, r4, #768	
	bcs	lab402
	movs	lr, lr, lsl #1
	adcs	r5, r5
	adc	r6, r6, r6
lab402: 	orr	r1, r2, r6, lsl #11
	orr	r1, r1, r5, lsr #21
	mov	r0, r5, lsl #11
	orr	r0, r0, lr, lsr #21
	mov	lr, lr, lsl #11
	subs	ip, r4, #253	
	it	hi
	cmphi	ip, #1792	
	bhi	lab403
	cmp	lr, #2147483648	
	it	eq
	movseq	lr, r0, lsr #1
	adcs	r0, r0, #0
	adc	r1, r1, r4, lsl #20
	nop
	push {r1, r2}
	ldr r1, =5001
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab401: 	and	r6, r6, #2147483648	
	orr	r1, r6, r1
	orr	r0, r0, r2
	eor	r1, r1, r3
	subs	r4, r4, ip, lsr #1
	ittt	gt
	rsbsgt	r5, r4, ip
	orrgt	r1, r1, r4, lsl #20
	nop
	push {r1, r2}
	ldr r1, =5563
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popgt	{r4, r5, r6, pc}
	orr	r1, r1, #1048576	
	mov	lr, #0
	subs	r4, #1
lab403: 	bgt	lab404
	cmn	r4, #54	
	ittt	le
	movle	r0, #0
	andle	r1, r1, #2147483648	
	nop
	push {r1, r2}
	ldr r1, =3689
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pople	{r4, r5, r6, pc}
	rsb	r4, r4, #0
	subs	r4, #32
	bge	lab405
	adds	r4, #12
	bgt	lab406
	add	r4, r4, #20
	rsb	r5, r4, #32
	lsl	r3, r0, r5
	lsr	r0, r0, r4
	lsl	r2, r1, r5
	orr	r0, r0, r2
	and	r2, r1, #2147483648	
	bic	r1, r1, #2147483648	
	adds	r0, r0, r3, lsr #31
	lsr	r6, r1, r4
	adc	r1, r2, r6
	orrs	lr, lr, r3, lsl #1
	it	eq
	biceq	r0, r0, r3, lsr #31
	pop	{r4, r5, r6, pc}
lab406: 	rsb	r4, r4, #12
	rsb	r5, r4, #32
	lsl	r3, r0, r4
	lsr	r0, r0, r5
	lsl	r2, r1, r4
	orr	r0, r0, r2
	and	r1, r1, #2147483648	
	adds	r0, r0, r3, lsr #31
	adc	r1, r1, #0
	orrs	lr, lr, r3, lsl #1
	it	eq
	biceq	r0, r0, r3, lsr #31
	pop	{r4, r5, r6, pc}
lab405: 	rsb	r5, r4, #32
	lsl	r2, r0, r5
	orr	lr, lr, r2
	lsr	r3, r0, r4
	lsl	r2, r1, r5
	orr	r3, r3, r2
	lsr	r0, r1, r4
	and	r1, r1, #2147483648	
	lsr	r2, r1, r4
	bic	r0, r0, r2
	add	r0, r0, r3, lsr #31
	orrs	lr, lr, r3, lsl #1
	it	eq
	biceq	r0, r0, r3, lsr #31
	pop	{r4, r5, r6, pc}
lab411: 	teq	r4, #0
	bne	lab407
	and	r6, r1, #2147483648	
lab408: 	lsls	r0, r0, #1
	adc	r1, r1, r1
	tst	r1, #1048576	
	it	eq
	subeq	r4, #1
	beq	lab408
	orr	r1, r1, r6
	teq	r5, #0
	it	ne
	bxne	lr
lab407: 	and	r6, r3, #2147483648	
lab409: 	lsls	r2, r2, #1
	adc	r3, r3, r3
	tst	r3, #1048576	
	it	eq
	subeq	r5, #1
	beq	lab409
	orr	r3, r3, r6
	bx	lr
lab400: 	teq	r4, ip
	and	r5, ip, r3, lsr #20
	it	ne
	teqne	r5, ip
	beq	lab410
	orrs	r6, r0, r1, lsl #1
	it	ne
	orrsne	r6, r2, r3, lsl #1
	bne	lab411
lab423: 	eor	r1, r1, r3
	and	r1, r1, #2147483648	
	mov	r0, #0
	pop	{r4, r5, r6, pc}
lab410: 	orrs	r6, r0, r1, lsl #1
	itte	eq
	moveq	r0, r2
	moveq	r1, r3
	orrsne	r6, r2, r3, lsl #1
	beq	lab412
	teq	r4, ip
	bne	lab413
	orrs	r6, r0, r1, lsl #12
	bne	lab412
lab413: 	teq	r5, ip
	bne	lab414
	orrs	r6, r2, r3, lsl #12
	itt	ne
	movne	r0, r2
	movne	r1, r3
	bne	lab412
lab414: 	eor	r1, r1, r3
lab404: 	and	r1, r1, #2147483648	
	orr	r1, r1, #2130706432	
	orr	r1, r1, #15728640	
	mov	r0, #0
	nop
	push {r1, r2}
	ldr r1, =2255
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab412: 	orr	r1, r1, #2130706432	
	orr	r1, r1, #16252928	
	pop	{r4, r5, r6, pc}
__aeabi_ddiv:
	push	{r4, r5, r6, lr}
	mov	ip, #255	
	orr	ip, ip, #1792	
	ands	r4, ip, r1, lsr #20
	ittte	ne
	andsne	r5, ip, r3, lsr #20
	teqne	r4, ip
	teqne	r5, ip
	bleq	lab415
	sub	r4, r4, r5
	eor	lr, r1, r3
	orrs	r5, r2, r3, lsl #12
	mov	r1, r1, lsl #12
	beq	lab416
	mov	r3, r3, lsl #12
	mov	r5, #268435456	
	orr	r3, r5, r3, lsr #4
	orr	r3, r3, r2, lsr #24
	mov	r2, r2, lsl #8
	orr	r5, r5, r1, lsr #4
	orr	r5, r5, r0, lsr #24
	mov	r6, r0, lsl #8
	and	r1, lr, #2147483648	
	cmp	r5, r3
	it	eq
	cmpeq	r6, r2
	adc	r4, r4, #253	
	add	r4, r4, #768	
	bcs	lab417
	lsrs	r3, r3, #1
	mov	r2, r2, rrx
lab417: 	subs	r6, r6, r2
	sbc	r5, r5, r3
	lsrs	r3, r3, #1
	mov	r2, r2, rrx
	mov	r0, #1048576	
	mov	ip, #524288	
lab419: 	subs	lr, r6, r2
	sbcs	lr, r5, r3
	ittt	cs
	subcs	r6, r6, r2
	movcs	r5, lr
	orrcs	r0, r0, ip
	lsrs	r3, r3, #1
	mov	r2, r2, rrx
	subs	lr, r6, r2
	sbcs	lr, r5, r3
	ittt	cs
	subcs	r6, r6, r2
	movcs	r5, lr
	orrcs	r0, r0, ip, lsr #1
	lsrs	r3, r3, #1
	mov	r2, r2, rrx
	subs	lr, r6, r2
	sbcs	lr, r5, r3
	ittt	cs
	subcs	r6, r6, r2
	movcs	r5, lr
	orrcs	r0, r0, ip, lsr #2
	lsrs	r3, r3, #1
	mov	r2, r2, rrx
	subs	lr, r6, r2
	sbcs	lr, r5, r3
	ittt	cs
	subcs	r6, r6, r2
	movcs	r5, lr
	orrcs	r0, r0, ip, lsr #3
	orrs	lr, r5, r6
	beq	lab418
	mov	r5, r5, lsl #4
	orr	r5, r5, r6, lsr #28
	mov	r6, r6, lsl #4
	mov	r3, r3, lsl #3
	orr	r3, r3, r2, lsr #29
	mov	r2, r2, lsl #3
	movs	ip, ip, lsr #4
	bne	lab419
	tst	r1, #1048576	
	bne	lab420
	orr	r1, r1, r0
	mov	r0, #0
	mov	ip, #2147483648	
	b	lab419
lab418: 	tst	r1, #1048576	
	itt	eq
	orreq	r1, r0
	moveq	r0, #0
lab420: 	subs	ip, r4, #253	
	it	hi
	cmphi	ip, #1792	
	bhi	lab403
	subs	ip, r5, r3
	itt	eq
	subseq	ip, r6, r2
	movseq	ip, r0, lsr #1
	adcs	r0, r0, #0
	adc	r1, r1, r4, lsl #20
	nop
	push {r1, r2}
	ldr r1, =2670
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab416: 	and	lr, lr, #2147483648	
	orr	r1, lr, r1, lsr #12
	adds	r4, r4, ip, lsr #1
	ittt	gt
	rsbsgt	r5, r4, ip
	orrgt	r1, r1, r4, lsl #20
	nop
	push {r1, r2}
	ldr r1, =3519
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popgt	{r4, r5, r6, pc}
	orr	r1, r1, #1048576	
	mov	lr, #0
	subs	r4, #1
	b	lab403
	orr	lr, r5, r6
	b	lab403
lab415: 	and	r5, ip, r3, lsr #20
	teq	r4, ip
	it	eq
	teqeq	r5, ip
	beq	lab412
	teq	r4, ip
	bne	lab421
	orrs	r4, r0, r1, lsl #12
	bne	lab412
	teq	r5, ip
	bne	lab414
	mov	r0, r2
	mov	r1, r3
	b	lab412
lab421: 	teq	r5, ip
	bne	lab422
	orrs	r5, r2, r3, lsl #12
	beq	lab423
	mov	r0, r2
	mov	r1, r3
	b	lab412
lab422: 	orrs	r6, r0, r1, lsl #1
	it	ne
	orrsne	r6, r2, r3, lsl #1
	bne	lab411
	orrs	r4, r0, r1, lsl #1
	bne	lab414
	orrs	r5, r2, r3, lsl #1
	bne	lab423
	b	lab412
__gedf2:
	mov	ip, #4294967295	
	b	lab424
	nop
__ledf2:
	mov	ip, #1
	b	lab424
	nop
__cmpdf2:
	mov	ip, #1
lab424: 	str	ip, [sp, #-4]!
	mov	ip, r1, lsl #1
	mvns	ip, ip, asr #21
	mov	ip, r3, lsl #1
	it	ne
	mvnsne	ip, ip, asr #21
	beq	lab425
lab428: 	add	sp, #4
	orrs	ip, r0, r1, lsl #1
	ite	eq
	orrseq	ip, r2, r3, lsl #1
	teqne	r1, r3
	ittt	eq
	teqeq	r0, r2
	moveq	r0, #0
	bxeq	lr
	cmn	r0, #0
	teq	r1, r3
	it	pl
	cmppl	r1, r3
	it	eq
	cmpeq	r0, r2
	ite	cs
	asrcs	r0, r3, #31
	mvncc	r0, r3, asr #31
	orr	r0, r0, #1
	bx	lr
lab425: 	mov	ip, r1, lsl #1
	mvns	ip, ip, asr #21
	bne	lab426
	orrs	ip, r0, r1, lsl #12
	bne	lab427
lab426: 	mov	ip, r3, lsl #1
	mvns	ip, ip, asr #21
	bne	lab428
	orrs	ip, r2, r3, lsl #12
	beq	lab428
lab427: 	ldr	r0, [sp], #4
	bx	lr
	nop
__aeabi_cdrcmple:
	mov	ip, r0
	mov	r0, r2
	mov	r2, ip
	mov	ip, r1
	mov	r1, r3
	mov	r3, ip
	b	__aeabi_cdcmpeq
	nop
__aeabi_cdcmpeq:
	push	{r0, lr}
	bl	__cmpdf2
	cmp	r0, #0
	it	mi
	cmnmi	r0, #0
	nop
	push {r1, r2}
	ldr r1, =5641
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r0, pc}
__aeabi_dcmpeq:
	str	lr, [sp, #-8]!
push {r1, r2}
	ldr r1, =2988
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdcmpeq
	push {r1, r2}
	ldr r1, =2988
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ite	eq
	moveq	r0, #1
	movne	r0, #0
	ldr	pc, [sp], #8
	nop
__aeabi_dcmplt:
	str	lr, [sp, #-8]!
push {r1, r2}
	ldr r1, =7896
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdcmpeq
	push {r1, r2}
	ldr r1, =7896
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ite	cc
	movcc	r0, #1
	movcs	r0, #0
	ldr	pc, [sp], #8
	nop
__aeabi_dcmple:
	str	lr, [sp, #-8]!
push {r1, r2}
	ldr r1, =4277
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdcmpeq
	push {r1, r2}
	ldr r1, =4277
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ite	ls
	movls	r0, #1
	movhi	r0, #0
	ldr	pc, [sp], #8
	nop
__aeabi_dcmpge:
	str	lr, [sp, #-8]!
push {r1, r2}
	ldr r1, =7709
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdrcmple
	push {r1, r2}
	ldr r1, =7709
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ite	ls
	movls	r0, #1
	movhi	r0, #0
	ldr	pc, [sp], #8
	nop
__aeabi_dcmpgt:
	str	lr, [sp, #-8]!
push {r1, r2}
	ldr r1, =2035
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdrcmple
	push {r1, r2}
	ldr r1, =2035
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ite	cc
	movcc	r0, #1
	movcs	r0, #0
	ldr	pc, [sp], #8
	nop
__aeabi_dcmpun:
	mov	ip, r1, lsl #1
	mvns	ip, ip, asr #21
	bne	lab429
	orrs	ip, r0, r1, lsl #12
	bne	lab430
lab429: 	mov	ip, r3, lsl #1
	mvns	ip, ip, asr #21
	bne	lab431
	orrs	ip, r2, r3, lsl #12
	bne	lab430
lab431: 	mov	r0, #0
	bx	lr
lab430: 	mov	r0, #1
	bx	lr
__aeabi_d2iz:
	mov	r2, r1, lsl #1
	adds	r2, r2, #2097152	
	bcs	lab432
	bpl	lab433
	mvn	r3, #992	
	subs	r2, r3, r2, asr #21
	bls	lab434
	mov	r3, r1, lsl #11
	orr	r3, r3, #2147483648	
	orr	r3, r3, r0, lsr #21
	tst	r1, #2147483648	
	lsr	r0, r3, r2
	it	ne
	negne	r0, r0
	bx	lr
lab433: 	mov	r0, #0
	bx	lr
lab432: 	orrs	r0, r0, r1, lsl #12
	bne	lab435
lab434: 	ands	r0, r1, #2147483648	
	it	eq
	mvneq	r0, #2147483648	
	bx	lr
lab435: 	mov	r0, #0
	bx	lr
	nop
memcpy:
	mov	ip, r0
	orr	r3, r1, r0
	ands	r3, r3, #3
	bne	lab436
lab445: 	subs	r2, #64	
	bcc	lab437
lab438: 	ldr	r3, [r1], #4
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
	bcs	lab438
lab437: 	adds	r2, #48	
	bcc	lab439
lab440: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #16
	bcs	lab440
lab439: 	adds	r2, #12
	bcc	lab441
lab442: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #4
	bcs	lab442
lab441: 	adds	r2, #4
	beq	lab443
	lsls	r2, r2, #31
	itt	ne
	ldrbne	r3, [r1], #1
	strbne	r3, [r0], #1
	bcc	lab443
	ldrh	r3, [r1, #0]
	strh	r3, [r0, #0]
lab443: 	mov	r0, ip
	bx	lr
	nop
lab436: 	cmp	r2, #8
	bcc	lab444
	lsls	r3, r1, #30
	beq	lab445
	ands	r3, r0, #3
	beq	lab445
	rsb	r3, r3, #4
	subs	r2, r2, r3
	lsls	r3, r3, #31
	itt	ne
	ldrbne	r3, [r1], #1
	strbne	r3, [r0], #1
	bcc	lab445
	ldrh	r3, [r1], #2
	strh	r3, [r0], #2
	b	lab445
lab444: 	subs	r2, #4
	bcc	lab441
lab446: 	subs	r2, #1
	ldrb	r3, [r1], #1
	strb	r3, [r0], #1
	bcs	lab446
	ldrb	r3, [r1, #0]
	strb	r3, [r0, #0]
	ldrb	r3, [r1, #1]
	strb	r3, [r0, #1]
	ldrb	r3, [r1, #2]
	strb	r3, [r0, #2]
	mov	r0, ip
	bx	lr
memchr:
	and	r1, r1, #255	
	cmp	r2, #16
	blt	lab447
	tst	r0, #7
	beq	lab448
lab451: 	ldrb	r3, [r0], #1
	subs	r2, #1
	cmp	r3, r1
	beq	lab449
	tst	r0, #7
	cmp r2, #0
	beq lab450
	bne	lab451
lab448: 	push	{r4, r5, r6, r7}
	orr	r1, r1, r1, lsl #8
	orr	r1, r1, r1, lsl #16
	bic	r4, r2, #7
	mvns	r7, #0
	movs	r3, #0
lab453: 	ldrd	r5, r6, [r0], #8
	subs	r4, #8
	eor	r5, r5, r1
	eor	r6, r6, r1
	uadd8	r5, r5, r7
	sel	r5, r3, r7
	uadd8	r6, r6, r7
	sel	r6, r5, r7
	cmp r6, #0
	bne lab452
	bne	lab453
	pop	{r4, r5, r6, r7}
	and	r1, r1, #255	
	and	r2, r2, #7
lab447: 	cmp r2, #0
	beq lab450
lab454: 	ldrb	r3, [r0], #1
	subs	r2, #1
	eor	r3, r3, r1
	cmp r3, #0
	beq lab449
	bne	lab454
lab450: 	movs	r0, #0
	bx	lr
lab449: 	subs	r0, #1
	bx	lr
lab452: 	cmp	r5, #0
	itte	eq
	moveq	r5, r6
	subeq	r0, #3
	subne	r0, #7
	tst	r5, #1
	bne	lab455
	adds	r0, #1
	tst	r5, #256	
	ittt	eq
	addeq	r0, #1
	tsteq	r5, #98304	
	addeq	r0, #1
lab455: 	pop	{r4, r5, r6, r7}
	subs	r0, #1
	bx	lr
	nop
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
lab456: 	sub	r0, r2, r3
	bx	lr
	nop
strcmp:
	ldrb	r2, [r0, #0]
	ldrb	r3, [r1, #0]
	cmp	r2, #1
	it	cs
	cmpcs	r2, r3
	bne	lab456
	strd	r4, r5, [sp, #-16]!
	orr	r4, r0, r1
	strd	r6, r7, [sp, #8]
	mvn	ip, #0
	mov	r2, r4, lsl #29
	cmp r2, #0
	beq lab457
	eor	r4, r0, r1
	tst	r4, #7
	bne	lab458
	and	r4, r0, #7
	bic	r0, r0, #7
	and	r5, r4, #3
	bic	r1, r1, #7
	mov	r5, r5, lsl #3
	ldrd	r2, r3, [r0], #16
	tst	r4, #4
	ldrd	r6, r7, [r1], #16
	lsl	r4, ip, r5
	orn	r2, r2, r4
	orn	r6, r6, r4
	beq	lab459
	orn	r3, r3, r4
	mov	r2, ip
	orn	r7, r7, r4
	mov	r6, ip
	b	lab459
lab457: 	ldrd	r2, r3, [r0], #16
	ldrd	r6, r7, [r1], #16
lab459: 	uadd8	r5, r2, ip
	eor	r4, r2, r6
	sel	r4, r4, ip
	cmp r4, #0
	bne lab460
	uadd8	r5, r3, ip
	eor	r5, r3, r7
	sel	r5, r5, ip
	cmp r5, #0
	bne lab461
	ldrd	r2, r3, [r0, #-8]
	ldrd	r6, r7, [r1, #-8]
	uadd8	r5, r2, ip
	eor	r4, r2, r6
	sel	r4, r4, ip
	uadd8	r5, r3, ip
	eor	r5, r3, r7
	sel	r5, r5, ip
	orrs	r5, r4
	beq	lab457
	cmp r4, #0
	bne lab460
lab461: 	rev	r5, r5
	clz	r4, r5
	bic	r4, r4, #7
	lsr	r1, r7, r4
	ldrd	r6, r7, [sp, #8]
	lsr	r3, r3, r4
	and	r0, r3, #255	
	and	r1, r1, #255	
	ldrd	r4, r5, [sp], #16
	sub	r0, r0, r1
	bx	lr
lab460: 	rev	r4, r4
	clz	r4, r4
	bic	r4, r4, #7
	lsr	r1, r6, r4
	ldrd	r6, r7, [sp, #8]
	lsr	r2, r2, r4
	and	r0, r2, #255	
	and	r1, r1, #255	
	ldrd	r4, r5, [sp], #16
	sub	r0, r0, r1
	bx	lr
lab458: 	tst	r4, #3
	bne	lab462
	ands	r4, r0, #3
	bne	lab463
lab465: 	ldr	r2, [r0], #8
	ldr	r3, [r1], #8
lab466: 	uadd8	r5, r2, ip
	eor	r5, r2, r3
	sel	r5, r5, ip
	cmp r5, #0
	bne lab464
	ldr	r2, [r0, #-4]
	ldr	r3, [r1, #-4]
	uadd8	r5, r2, ip
	eor	r5, r2, r3
	sel	r5, r5, ip
	cmp	r5, #0
	beq	lab465
lab464: 	rev	r5, r5
	clz	r4, r5
	bic	r4, r4, #7
	lsr	r1, r3, r4
	lsr	r2, r2, r4
	and	r0, r2, #255	
	and	r1, r1, #255	
	ldrd	r4, r5, [sp], #16
	sub	r0, r0, r1
	bx	lr
lab463: 	mov	r4, r4, lsl #3
	bic	r0, r0, #3
	ldr	r2, [r0], #8
	bic	r1, r1, #3
	ldr	r3, [r1], #8
	lsl	r4, ip, r4
	orn	r2, r2, r4
	orn	r3, r3, r4
	b	lab466
lab462: 	ands	r4, r0, #3
	beq	lab467
	sub	r1, r1, r4
	bic	r0, r0, #3
	lsls	r4, r4, #31
	ldr	r2, [r0], #4
	beq	lab468
	bcs	lab469
	ldrb	r3, [r1, #2]
	uxtb	r4, r2, ror #16
	subs	r4, r4, r3
	bne	lab470
	cmp r3, #0
	beq lab470
lab468: 	ldrb	r3, [r1, #3]
	uxtb	r4, r2, ror #24
	subs	r4, r4, r3
	bne	lab470
	cmp r3, #0
	bne lab469
lab470: 	mov	r0, r4
	ldr	r4, [sp], #16
	bx	lr
lab469: 	add	r1, r1, #4
lab467: 	ldr	r2, [r0], #4
	lsls	r4, r1, #31
	bic	r1, r1, #3
	ldr	r3, [r1], #4
	bhi	lab471
	bcs	lab472
lab476: 	bic	r4, r2, #4278190080	
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #8
	sel	r5, r5, ip
	bne	lab473
	cmp r5, #0
	bne lab474
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #24
	bne	lab475
	ldr	r2, [r0], #4
	b	lab476
lab473: 	mov	r3, r3, lsr #8
	b	lab477
lab474: 	bics	r5, r5, #4278190080	
	bne	lab478
	ldrb	r0, [r1, #0]
	ldrd	r4, r5, [sp], #16
	rsb	r0, r0, #0
	bx	lr
lab475: 	mov	r2, r2, lsr #24
	and	r3, r3, #255	
	b	lab477
lab472: 	and	r4, r2, ip, lsr #16
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #16
	sel	r5, r5, ip
	bne	lab479
	cmp r5, #0
	bne lab480
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #16
	bne	lab481
	ldr	r2, [r0], #4
	b	lab472
lab479: 	mov	r3, r3, lsr #16
	b	lab477
lab480: 	ands	r5, r5, ip, lsr #16
	bne	lab478
	ldrh	r3, [r1, #0]
	mov	r2, r2, lsr #16
	b	lab477
lab481: 	mov	r2, r2, lsr #16
	and	r3, r3, ip, lsr #16
	b	lab477
lab471: 	and	r4, r2, #255	
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #24
	sel	r5, r5, ip
	bne	lab482
	cmp r5, #0
	bne lab483
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #8
	bne	lab484
	ldr	r2, [r0], #4
	b	lab471
lab482: 	mov	r3, r3, lsr #24
	b	lab477
lab483: 	tst	r5, #255	
	bne	lab478
	ldr	r3, [r1, #0]
lab484: 	mov	r2, r2, lsr #8
	bic	r3, r3, #4278190080	
	b	lab477
lab478: 	mov	r0, #0
	ldrd	r4, r5, [sp], #16
	bx	lr
lab477: 	rev	r2, r2
	rev	r3, r3
	uadd8	r4, r2, ip
	eor	r4, r2, r3
	sel	r5, r4, ip
	clz	r4, r5
	lsl	r2, r2, r4
	lsl	r3, r3, r4
	mov	r0, r2, lsr #24
	ldrd	r4, r5, [sp], #16
	sub	r0, r0, r3, lsr #24
	bx	lr
	movs	r0, r0
	movs	r0, r0
strlen:
	pld	[r0]
	strd	r4, r5, [sp, #-8]!
	bic	r1, r0, #7
	mvn	ip, #0
	ands	r4, r0, #7
	pld	[r1, #32]
	bne	lab485
	mov	r4, #0
	mvn	r0, #7
lab487: 	ldrd	r2, r3, [r1]
	pld	[r1, #64]	
	add	r0, r0, #8
lab488: 	uadd8	r2, r2, ip
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab486
	ldrd	r2, r3, [r1, #8]
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab486
	ldrd	r2, r3, [r1, #16]
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab486
	ldrd	r2, r3, [r1, #24]
	add	r1, r1, #32
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp	r3, #0
	beq	lab487
lab486: 	cmp	r2, #0
	itt	eq
	addeq	r0, #4
	moveq	r2, r3
	rev	r2, r2
	clz	r2, r2
	ldrd	r4, r5, [sp], #8
	add	r0, r0, r2, lsr #3
	bx	lr
lab485: 	ldrd	r2, r3, [r1]
	and	r5, r4, #3
	rsb	r0, r4, #0
	mov	r5, r5, lsl #3
	tst	r4, #4
	pld	[r1, #64]	
	lsl	r5, ip, r5
	orn	r2, r2, r5
	itt	ne
	ornne	r3, r3, r5
	movne	r2, ip
	mov	r4, #0
	b	lab488
__aeabi_uldivmod:
	cmp r3, #0
	bne lab489
	cmp r2, #0
	bne lab489
	cmp	r1, #0
	it	eq
	cmpeq	r0, #0
	itt	ne
	movne	r1, #4294967295	
	movne	r0, #4294967295	
	b	__aeabi_idiv0
lab489: 	sub	ip, sp, #8
	strd	ip, lr, [sp, #-16]!
	bl	__udivmoddi4
	push {r1, r2}
	ldr r1, =3929
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	lr, [sp, #4]
	ldrd	r2, r3, [sp, #8]
	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =5616
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
__udivmoddi4:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r6, [sp, #32]
	mov	r5, r1
	mov	r4, r0
	mov	r8, r1
	cmp	r3, #0
	bne	lab490
	cmp	r2, r1
	mov	ip, r2
	bls	lab491
	clz	r2, r2
	cmp r2, #0
	beq lab492
	lsl	r3, r1, r2
	rsb	r1, r2, #32
	lsr	r1, r0, r1
	lsl	ip, ip, r2
	orr	r8, r1, r3
	lsls	r4, r2
lab492: 	mov	r5, ip, lsr #16
	lsrs	r1, r4, #16
	udiv	lr, r8, r5
	uxth	r7, ip
	mls	r3, r5, lr, r8
	orr	r3, r1, r3, lsl #16
	mul	r1, lr, r7
	cmp	r1, r3
	bls	lab493
	adds	r3, ip, r3
	add	r0, lr, #4294967295	
	bcs	lab494
	cmp	r1, r3
	bls	lab494
	sub	lr, lr, #2
	add	r3, ip
lab493: 	subs	r3, r3, r1
	uxth	r4, r4
	udiv	r0, r3, r5
	mls	r3, r5, r0, r3
	orr	r4, r4, r3, lsl #16
	mul	r7, r0, r7
	cmp	r7, r4
	bls	lab495
	adds	r4, ip, r4
	add	r3, r0, #4294967295	
	bcs	lab496
	cmp	r7, r4
	bls	lab496
	add	r4, ip
	subs	r0, #2
lab495: 	subs	r4, r4, r7
	orr	r0, r0, lr, lsl #16
	movs	r1, #0
lab511: 	cmp r6, #0
	beq lab497
	lsrs	r4, r2
	movs	r3, #0
	strd	r4, r3, [r6]
lab497:	nop
	push {r1, r2}
	ldr r1, =4717
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab490: 	cmp	r3, r1
	bls	lab498
	cmp	r6, #0
	beq	lab499
	movs	r1, #0
	strd	r0, r5, [r6]
	mov	r0, r1
	nop
	push {r1, r2}
	ldr r1, =2850
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab498: 	clz	r1, r3
	cmp	r1, #0
	bne	lab500
	cmp	r3, r5
	bcc	lab501
	cmp	r2, r0
	bhi	lab502
lab501: 	subs	r4, r0, r2
	sbc	r3, r5, r3
	movs	r0, #1
	mov	r8, r3
lab525: 	cmp	r6, #0
	beq	lab497
	strd	r4, r8, [r6]
	b	lab497
lab491: 	cmp r2, #0
	bne lab503
	udf	#255	
lab503: 	clz	r2, r2
	cmp	r2, #0
	bne	lab504
	sub	r5, r1, ip
	mov	r7, ip, lsr #16
	uxth	lr, ip
	movs	r1, #1
lab523: 	udiv	r3, r5, r7
	mls	r0, r7, r3, r5
	lsrs	r5, r4, #16
	orr	r5, r5, r0, lsl #16
	mul	r0, lr, r3
	cmp	r0, r5
	bls	lab505
	adds	r5, ip, r5
	add	r8, r3, #4294967295	
	bcs	lab506
	cmp	r0, r5
	bhi	lab507
lab506: 	mov	r3, r8
lab505: 	subs	r5, r5, r0
	uxth	r4, r4
	udiv	r0, r5, r7
	mls	r5, r7, r0, r5
	orr	r4, r4, r5, lsl #16
	mul	lr, lr, r0
	cmp	lr, r4
	bls	lab508
	adds	r4, ip, r4
	add	r5, r0, #4294967295	
	bcs	lab509
	cmp	lr, r4
	bhi	lab510
lab509: 	mov	r0, r5
lab508: 	sub	r4, r4, lr
	orr	r0, r0, r3, lsl #16
	b	lab511
lab500: 	rsb	r7, r1, #32
	lsls	r3, r1
	lsr	ip, r2, r7
	orr	ip, ip, r3
	lsr	r4, r0, r7
	lsl	r3, r5, r1
	orrs	r4, r3
	lsrs	r5, r7
	mov	r9, ip, lsr #16
	lsl	r3, r0, r1
	udiv	r8, r5, r9
	lsrs	r0, r4, #16
	uxth	lr, ip
	mls	r5, r9, r8, r5
	orr	r5, r0, r5, lsl #16
	mul	r0, r8, lr
	cmp	r0, r5
	lsl	r2, r2, r1
	bls	lab512
	adds	r5, ip, r5
	add	sl, r8, #4294967295	
	bcs	lab513
	cmp	r0, r5
	bls	lab513
	sub	r8, r8, #2
	add	r5, ip
lab512: 	subs	r5, r5, r0
	uxth	r4, r4
	udiv	r0, r5, r9
	mls	r5, r9, r0, r5
	orr	r5, r4, r5, lsl #16
	mul	lr, r0, lr
	cmp	lr, r5
	bls	lab514
	adds	r5, ip, r5
	add	r4, r0, #4294967295	
	bcs	lab515
	cmp	lr, r5
	bls	lab515
	subs	r0, #2
	add	r5, ip
lab514: 	orr	r0, r0, r8, lsl #16
	umull	r9, r4, r0, r2
	sub	r5, r5, lr
	cmp	r5, r4
	mov	r8, r9
	mov	lr, r4
	bcc	lab516
	beq	lab517
lab524: 	cmp r6, #0
	beq lab518
	subs	r2, r3, r8
	sbc	r5, r5, lr
	lsl	r7, r5, r7
	lsr	r3, r2, r1
	lsrs	r5, r1
	orrs	r7, r3
	strd	r7, r5, [r6]
lab518: 	movs	r1, #0
	nop
	push {r1, r2}
	ldr r1, =6905
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab504: 	rsb	r3, r2, #32
	lsr	r1, r0, r3
	lsl	ip, ip, r2
	lsr	r3, r5, r3
	lsls	r5, r2
	orrs	r5, r1
	mov	r7, ip, lsr #16
	uxth	lr, ip
	udiv	r1, r3, r7
	mls	r0, r7, r1, r3
	lsrs	r3, r5, #16
	orr	r3, r3, r0, lsl #16
	mul	r0, r1, lr
	cmp	r0, r3
	lsl	r4, r4, r2
	bls	lab519
	adds	r3, ip, r3
	add	r8, r1, #4294967295	
	bcs	lab520
	cmp	r0, r3
	bls	lab520
	subs	r1, #2
	add	r3, ip
lab519: 	subs	r3, r3, r0
	uxth	r5, r5
	udiv	r0, r3, r7
	mls	r3, r7, r0, r3
	orr	r5, r5, r3, lsl #16
	mul	r3, r0, lr
	cmp	r3, r5
	bls	lab521
	adds	r5, ip, r5
	add	r8, r0, #4294967295	
	bcs	lab522
	cmp	r3, r5
	bls	lab522
	subs	r0, #2
	add	r5, ip
lab521: 	subs	r5, r5, r3
	orr	r1, r0, r1, lsl #16
	b	lab523
lab499: 	mov	r1, r6
	mov	r0, r6
	b	lab497
lab494: 	mov	lr, r0
	b	lab493
lab496: 	mov	r0, r3
	b	lab495
lab517: 	cmp	r3, r9
	bcs	lab524
lab516: 	subs	r8, r9, r2
	sbc	lr, r4, ip
	subs	r0, #1
	b	lab524
lab522: 	mov	r0, r8
	b	lab521
lab515: 	mov	r0, r4
	b	lab514
lab520: 	mov	r1, r8
	b	lab519
lab513: 	mov	r8, sl
	b	lab512
lab507: 	subs	r3, #2
	add	r5, ip
	b	lab505
lab502: 	mov	r0, r1
	b	lab525
lab510: 	add	r4, ip
	subs	r0, #2
	b	lab508
__aeabi_idiv0:
	bx	lr
	nop
sqrt:
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	mov	r5, r1
	bl	__ieee754_sqrt
	push {r1, r2}
	ldr r1, =1668
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r6, r0
	mov	r7, r1
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmpun
	cmp r0, #0
	bne lab526
	mov	r0, r4
	mov	r1, r5
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dcmplt
	cmp r0, #0
	bne lab527
lab526: 	mov	r0, r6
	mov	r1, r7
	nop
	push {r1, r2}
	ldr r1, =6918
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab527: 	bl	__errno
	movs	r2, #0
	movs	r3, #0
	movs	r1, #33	
	str	r1, [r0, #0]
	mov	r0, r2
	mov	r1, r3
push {r1, r2}
	ldr r1, =6253
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =6253
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r6, r0
	mov	r7, r1
	mov	r0, r6
	mov	r1, r7
	nop
	push {r1, r2}
	ldr r1, =7883
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
	nop
__ieee754_sqrt:
	ldr	r2, =0x7ff00000	
	bics	r2, r1
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	mov	r4, r1
	beq	lab528
	cmp	r1, #0
	mov	r3, r1
	mov	ip, r0
	ble	lab529
	asrs	r1, r1, #20
	beq	lab530
lab547: 	ubfx	r3, r3, #0, #20
	lsls	r0, r1, #31
	subw	r7, r1, #1023	
	orr	r3, r3, #1048576	
	bmi	lab531
	lsls	r3, r3, #1
	add	r3, r3, ip, lsr #31
	mov	ip, ip, lsl #1
lab531: 	mov	r2, ip, lsr #31
	movs	r6, #0
	add	r3, r2, r3, lsl #1
	asrs	r7, r7, #1
	mov	ip, ip, lsl #1
	mov	lr, #22
	mov	r4, r6
	mov	r2, #2097152	
lab533: 	adds	r1, r4, r2
	cmp	r1, r3
	bgt	lab532
	subs	r3, r3, r1
	adds	r4, r1, r2
	add	r6, r2
lab532: 	lsls	r3, r3, #1
	subs	lr, lr, #1
	add	r3, r3, ip, lsr #31
	mov	r2, r2, lsr #1
	mov	ip, ip, lsl #1
	bne	lab533
	mov	r5, lr
	movs	r0, #32
	mov	r2, #2147483648	
	b	lab534
lab537: 	beq	lab535
lab539: 	mov	r1, ip, lsr #31
	subs	r0, #1
	add	r3, r1, r3, lsl #1
	mov	ip, ip, lsl #1
	mov	r2, r2, lsr #1
	beq	lab536
lab534: 	cmp	r3, r4
	add	r1, r2, lr
	ble	lab537
	cmp	r1, #0
	add	lr, r1, r2
	blt	lab538
lab540: 	mov	r8, r4
lab541: 	subs	r3, r3, r4
	cmp	r1, ip
	it	hi
	addhi	r3, r3, #4294967295	
lab548: 	sub	ip, ip, r1
	add	r5, r2
	mov	r4, r8
	b	lab539
lab538: 	cmp	lr, #0
	blt	lab540
	add	r8, r4, #1
	b	lab541
lab529: 	bic	r2, r1, #2147483648	
	orrs	r2, r0
	beq	lab542
	cmp	r1, #0
	bne	lab543
lab544: 	mov	r2, ip, lsr #11
	subs	r1, #21
	mov	r3, r2
	mov	ip, ip, lsl #21
	cmp	r2, #0
	beq	lab544
	lsls	r6, r2, #11
	bmi	lab545
lab530: 	movs	r0, #0
lab546: 	lsls	r3, r3, #1
	lsls	r5, r3, #11
	mov	r4, r0
	add	r0, r0, #1
	bpl	lab546
	mov	r2, r3
	mov	r3, ip
	lsl	ip, ip, r0
	rsb	r0, r0, #32
lab551: 	lsrs	r3, r0
	subs	r1, r1, r4
	orrs	r3, r2
	b	lab547
lab535: 	cmp	r1, ip
	bhi	lab539
	cmp	r1, #0
	add	lr, r1, r2
	blt	lab538
	mov	r8, r3
	movs	r3, #0
	b	lab548
lab536: 	orrs	r3, r3, ip
	bne	lab549
	lsrs	r0, r5, #1
lab550: 	asrs	r3, r6, #1
	add	r3, r3, #1069547520	
	add	r3, r3, #2097152	
	lsls	r2, r6, #31
	it	mi
	orrmi	r0, r0, #2147483648	
	add	r9, r3, r7, lsl #20
	mov	r5, r0
	mov	r4, r9
lab542: 	mov	r0, r5
	mov	r1, r4
	nop
	push {r1, r2}
	ldr r1, =6704
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
lab549: 	adds	r1, r5, #1
	itet	ne
	addne	r0, r5, #1
	addeq	r6, #1
	lsrne	r0, r0, #1
	b	lab550
lab528: 	mov	r2, r0
	mov	r3, r1
push {r1, r2}
	ldr r1, =7221
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7221
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r5
	mov	r3, r4
push {r1, r2}
	ldr r1, =3952
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =3952
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r5, r0
	mov	r4, r1
	mov	r0, r5
	mov	r1, r4
	nop
	push {r1, r2}
	ldr r1, =774
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
lab543: 	mov	r2, r0
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
push {r1, r2}
	ldr r1, =1863
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =1863
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r5, r0
	mov	r4, r1
	b	lab542
lab545: 	mov	r3, ip
	movs	r0, #32
	mov	r4, #4294967295	
	b	lab551
	nop
	.ltorg
__assert_func:
	push	{lr}
	ldr	r4, =0x20000eb4	
	ldr	r5, [r4, #0]
	mov	r4, r2
	ldr	r6, [r5, #12]
	mov	r2, r3
	sub	sp, #20
	mov	r3, r0
	mov	r5, r1
	cmp r4, #0
	beq lab552
	ldr	r1, =0x20000d08	
lab553: 	str	r5, [sp, #0]
	strd	r1, r4, [sp, #4]
	mov	r0, r6
	ldr	r1, =0x20000d18	
	bl	fiprintf
	push {r1, r2}
	ldr r1, =6202
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	abort
lab552: 	ldr	r1, =0x20000d14	
	mov	r4, r1
	b	lab553
	nop
	.ltorg
__assert:
	push	{r3, lr}
	mov	r3, r2
	movs	r2, #0
	bl	__assert_func
	nop
__errno:
	ldr	r3, =0x20000eb4	
	ldr	r0, [r3, #0]
	bx	lr
	nop
	.ltorg
_fiprintf_r:
	push	{r2, r3}
	push	{lr}
	sub	sp, #12
	add	r3, sp, #16
	ldr	r2, [r3], #4
	str	r3, [sp, #4]
push {r1, r2}
	ldr r1, =7443
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =7443
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	sp, #12
	ldr	lr, [sp], #4
	add	sp, #8
	bx	lr
fiprintf:
	push	{r1, r2, r3}
	push	{r4, lr}
	sub	sp, #12
	add	r3, sp, #20
	ldr	r4, =0x20000eb4	
	ldr	r2, [r3], #4
	str	r3, [sp, #4]
	mov	r1, r0
	ldr	r0, [r4, #0]
push {r1, r2}
	ldr r1, =3453
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =3453
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	sp, #12
	ldmia	sp!, {r4, lr}
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =6299
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
	nop
	.ltorg
memcmp:
	cmp	r2, #3
	push	{r4, lr}
	bls	lab554
	orr	ip, r0, r1
	tst	ip, #3
	mov	r4, r0
	mov	r3, r1
	bne	lab555
lab556: 	mov	r1, r3
	mov	r0, r4
	ldr	lr, [r1]
	ldr	ip, [r0]
	cmp	ip, lr
	add	r4, r4, #4
	add	r3, r3, #4
	bne	lab555
	subs	r2, #4
	cmp	r2, #3
	mov	r0, r4
	mov	r1, r3
	bhi	lab556
lab554: 	subs	r4, r2, #1
	cmp r2, #0
	beq lab557
lab561: 	add	ip, r0, #4294967295	
	subs	r1, #1
	b	lab558
lab560: 	adds	r3, r0, r3
	beq	lab559
lab558: 	ldrb	lr, [ip, #1]!
	ldrb	r2, [r1, #1]!
	cmp	lr, r2
	sub	r3, r4, ip
	beq	lab560
	sub	r0, lr, r2
	nop
	push {r1, r2}
	ldr r1, =7440
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
lab555: 	subs	r4, r2, #1
	b	lab561
lab559: 	mov	r0, r3
	nop
	push {r1, r2}
	ldr r1, =5586
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
lab557: 	mov	r0, r2
	nop
	push {r1, r2}
	ldr r1, =5699
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
memmove:
	cmp	r0, r1
	bls	lab562
	adds	r3, r1, r2
	cmp	r3, r0
	bls	lab562
	add	ip, r0, r2
	cmp r2, #0
	beq lab563
	mov	r2, ip
lab564: 	ldrb	ip, [r3, #-1]!
	strb	ip, [r2, #-1]!
	cmp	r1, r3
	bne	lab564
	nop
	push {r1, r2}
	ldr r1, =6224
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
lab562: 	cmp	r2, #15
	bhi	lab565
	mov	r3, r0
	add	ip, r2, #4294967295	
	cmp r2, #0
	beq lab563
lab573: 	add	ip, ip, #1
	subs	r3, #1
	add	ip, r1
lab566: 	ldrb	r2, [r1], #1
	strb	r2, [r3, #1]!
	cmp	r1, ip
	bne	lab566
lab563:	nop
	push {r1, r2}
	ldr r1, =452
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	bx	lr
lab565: 	orr	r3, r0, r1
	lsls	r3, r3, #30
	bne	lab567
	sub	r3, r2, #16
	push	{r4, r5, r6, lr}
	add	ip, r1, #32
	bic	r5, r3, #15
	add	lr, r1, #16
	add	r4, r0, #16
	add	ip, r5
	lsrs	r3, r3, #4
lab568: 	ldr	r5, [lr, #-16]
	str	r5, [r4, #-16]
	ldr	r5, [lr, #-12]
	str	r5, [r4, #-12]
	ldr	r5, [lr, #-8]
	str	r5, [r4, #-8]
	ldr	r5, [lr, #-4]
	str	r5, [r4, #-4]
	add	lr, lr, #16
	cmp	lr, ip
	add	r4, r4, #16
	bne	lab568
	adds	r3, #1
	tst	r2, #12
	add	r1, r1, r3, lsl #4
	and	r4, r2, #15
	add	r3, r0, r3, lsl #4
	beq	lab569
	subs	r4, #4
	bic	r6, r4, #3
	mov	ip, r4, lsr #2
	add	r6, r3
	subs	r4, r3, #4
	mov	lr, r1
lab570: 	ldr	r5, [lr], #4
	str	r5, [r4, #4]!
	cmp	r4, r6
	bne	lab570
	add	r4, ip, #1
	and	r2, r2, #3
	add	r3, r3, r4, lsl #2
	add	r1, r1, r4, lsl #2
lab574: 	add	ip, r2, #4294967295	
	cmp r2, #0
	beq lab571
	add	ip, ip, #1
	subs	r3, #1
	add	ip, r1
lab572: 	ldrb	r2, [r1], #1
	strb	r2, [r3, #1]!
	cmp	r1, ip
	bne	lab572
lab571:	nop
	push {r1, r2}
	ldr r1, =3187
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab567: 	add	ip, r2, #4294967295	
	mov	r3, r0
	b	lab573
lab569: 	mov	r2, r4
	b	lab574
memset:
	lsls	r3, r0, #30
	push	{r4, r5, lr}
	beq	lab575
	subs	r4, r2, #1
	cmp	r2, #0
	beq	lab576
	uxtb	r2, r1
	mov	r3, r0
	b	lab577
lab578: 	subs	r4, #1
	bcc	lab576
lab577: 	strb	r2, [r3], #1
	lsls	r5, r3, #30
	bne	lab578
lab586: 	cmp	r4, #3
	bls	lab579
	uxtb	r5, r1
	orr	r5, r5, r5, lsl #8
	cmp	r4, #15
	orr	r5, r5, r5, lsl #16
	bls	lab580
	sub	r2, r4, #16
	bic	ip, r2, #15
	add	lr, r3, #32
	add	lr, ip
	mov	ip, r2, lsr #4
	add	r2, r3, #16
lab581: 	strd	r5, r5, [r2, #-16]
	strd	r5, r5, [r2, #-8]
	adds	r2, #16
	cmp	r2, lr
	bne	lab581
	add	r2, ip, #1
	tst	r4, #12
	add	r2, r3, r2, lsl #4
	and	ip, r4, #15
	beq	lab582
lab587: 	sub	r3, ip, #4
	bic	r3, r3, #3
	adds	r3, #4
	add	r3, r2
lab583: 	str	r5, [r2], #4
	cmp	r3, r2
	bne	lab583
	and	r4, ip, #3
lab579: 	cmp r4, #0
	beq lab576
lab585: 	uxtb	r2, r1
	add	r4, r3
lab584: 	strb	r2, [r3], #1
	cmp	r4, r3
	bne	lab584
lab576:	nop
	push {r1, r2}
	ldr r1, =5989
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, pc}
lab582: 	mov	r4, ip
	mov	r3, r2
	cmp	r4, #0
	bne	lab585
	b	lab576
lab575: 	mov	r3, r0
	mov	r4, r2
	b	lab586
lab580: 	mov	r2, r3
	mov	ip, r4
	b	lab587
__sprint_r.part.0:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, [r1, #100]	
	lsls	r4, r3, #18
	mov	r8, r2
	bpl	lab588
	ldr	r3, [r2, #8]
	ldr	r2, [r2, #0]
	cmp r3, #0
	beq lab589
	mov	fp, r1
	mov	r6, r0
	add	r9, r2, #8
lab594: 	ldrd	r5, sl, [r9, #-8]
	movs	r7, sl, lsr #2
	beq	lab590
	subs	r5, #4
	movs	r4, #0
	b	lab591
lab593: 	cmp	r7, r4
	beq	lab592
lab591: 	ldr	r1, [r5, #4]!
	mov	r2, fp
	mov	r0, r6
	bl	_fputwc_r
	push {r1, r2}
	ldr r1, =7252
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	add	r4, r4, #1
	bne	lab593
lab595: 	movs	r3, #0
	strd	r3, r3, [r8, #4]
	nop
	push {r1, r2}
	ldr r1, =2048
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab592: 	ldr	r3, [r8, #8]
lab590: 	bic	sl, sl, #3
	sub	r3, r3, sl
	str	r3, [r8, #8]
	add	r9, r9, #8
	cmp	r3, #0
	bne	lab594
lab589: 	movs	r0, #0
	b	lab595
lab588: 	bl	__sfvwrite_r
	push {r1, r2}
	ldr r1, =1358
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	strd	r3, r3, [r8, #4]
	nop
	push {r1, r2}
	ldr r1, =4860
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
	nop
__sprint_r:
	push	{r4}
	ldr	r4, [r2, #8]
	cmp r4, #0
	beq lab596
	pop	{r4}
	b	__sprint_r.part.0
lab596: 	mov	r0, r4
	str	r4, [r2, #4]
	pop	{r4}
	bx	lr
_vfiprintf_r:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, #244	
	strd	r3, r0, [sp, #16]
	mov	r4, r3
	str	r1, [sp, #4]
	mov	r7, r2
	cmp r0, #0
	beq lab597
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab598
lab597: 	ldr	r2, [sp, #4]
	ldr	r3, [r2, #100]	
	lsls	r6, r3, #31
	bpl	lab599
	ldrsh	r1, [r2, #12]
	uxth	r2, r1
lab638: 	lsls	r0, r2, #18
	bmi	lab600
	orr	r2, r1, #8192	
	ldr	r1, [sp, #4]
	ldr	r3, [r1, #100]	
	strh	r2, [r1, #12]
	bic	r3, r3, #8192	
	uxth	r2, r2
	str	r3, [r1, #100]	
lab600: 	lsls	r1, r2, #28
	bpl	lab601
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	lab601
	and	r3, r2, #26
	cmp	r3, #10
	beq	lab602
lab620: 	add	r3, sp, #76	
	str	r3, [sp, #64]	
	movs	r3, #0
	strd	r3, r3, [sp, #68]	
	strd	r3, r3, [sp, #40]	
	str	r3, [sp, #32]
	add	r9, sp, #76	
	str	r3, [sp, #36]	
	str	r3, [sp, #12]
lab653: 	ldrb	r3, [r7, #0]
	cmp	r3, #0
	beq	lab603
	mov	r4, r7
	b	lab604
lab606: 	ldrb	r3, [r4, #1]!
	cmp	r3, #0
	beq	lab605
lab604: 	cmp	r3, #37	
	bne	lab606
	subs	r5, r4, r7
	bne	lab607
lab631: 	ldrb	r3, [r4, #0]
	cmp	r3, #0
	beq	lab603
	mov	r3, #0
	movs	r5, #0
	strb	r3, [sp, #59]	
	adds	r7, r4, #1
	ldrb	r3, [r4, #1]
	str	r5, [sp, #8]
	mov	fp, #4294967295	
	movs	r4, #43	
lab612: 	adds	r7, #1
lab610: 	sub	r2, r3, #32
	cmp	r2, #90	
	bhi	lab608
	tbh	[pc, r2, lsl #1]
	.word	0x01500298
	.word	0x02940150
	.word	0x01500150
	.word	0x006a0150
	.word	0x01500150
	.word	0x026b0236
	.word	0x02410150
	.word	0x015002a6
	.word	0x005b02a2
	.word	0x005b005b
	.word	0x005b005b
	.word	0x005b005b
	.word	0x005b005b
	.word	0x01500150
	.word	0x01500150
	.word	0x01500150
	.word	0x01500150
	.word	0x02230150
	.word	0x01500084
	.word	0x01500150
	.word	0x01500150
	.word	0x01500150
	.word	0x01500150
	.word	0x00dd0150
	.word	0x01500150
	.word	0x02070150
	.word	0x02590150
	.word	0x01500150
	.word	0x0150051e
	.word	0x01500150
	.word	0x01500150
	.word	0x01500150
	.word	0x01500150
	.word	0x02230150
	.word	0x01500086
	.word	0x01500150
	.word	0x0086024f
	.word	0x01500080
	.word	0x01500245
	.word	0x00df0281
	.word	0x0080026f
	.word	0x02070150
	.word	0x053e007e
	.word	0x01500150
	.word	0x01500540
	.short	0x007e
	sub	r2, r3, #48	
	movs	r1, #0
lab609: 	ldrb	r3, [r7], #1
	add	r1, r1, r1, lsl #2
	add	r1, r2, r1, lsl #1
	sub	r2, r3, #48	
	cmp	r2, #9
	bls	lab609
	str	r1, [sp, #8]
	b	lab610
	ldr	r8, [sp, #20]
	mov	r0, r8
	bl	_localeconv_r
	ldr	r3, [r0, #4]
	str	r3, [sp, #40]	
	mov	r0, r3
	bl	strlen
	str	r0, [sp, #44]	
	mov	r6, r0
	mov	r0, r8
	bl	_localeconv_r
	ldr	r3, [r0, #8]
	str	r3, [sp, #36]	
	cmp	r6, #0
	bne	lab611
lab671: 	ldrb	r3, [r7, #0]
	b	lab612
	ldrb	r3, [r7, #0]
	orr	r5, r5, #32
	b	lab612
	orr	r5, r5, #16
	lsls	r4, r5, #26
	ldr	r6, [sp, #16]
	bpl	lab613
	adds	r6, #7
	bic	r6, r6, #7
	mov	r2, r6
	ldr	r3, [r6, #4]
	ldr	r6, [r2], #8
	str	r2, [sp, #16]
	mov	r8, r3
lab660: 	cmp	r3, #0
	blt	lab614
	cmp	fp, #4294967295	
	beq	lab615
	orrs	r3, r6, r8
	bic	sl, r5, #128	
	beq	lab616
lab674: 	cmp	r6, #10
	sbcs	r3, r8, #0
	bcs	lab617
lab715: 	adds	r6, #48	
	movs	r3, #1
	strb	r6, [sp, #239]	
	mov	r5, sl
	str	r3, [sp, #0]
	add	r4, sp, #239	
lab629: 	ldr	r8, [sp]
	ldrb	r3, [sp, #59]	
	cmp	r8, fp
	it	lt
	movlt	r8, fp
	cmp	r3, #0
	beq	lab618
	add	r8, r8, #1
	b	lab618
lab601: 	ldr	r5, [sp, #4]
	ldr	r0, [sp, #20]
	mov	r1, r5
push {r1, r2}
	ldr r1, =2593
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =2593
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab619
	ldrh	r2, [r5, #12]
	and	r3, r2, #26
	cmp	r3, #10
	bne	lab620
lab602: 	ldr	r1, [sp, #4]
	ldrsh	r3, [r1, #14]
	cmp	r3, #0
	blt	lab620
	ldr	r3, [r1, #100]	
	lsls	r6, r3, #31
	bmi	lab621
	lsls	r5, r2, #22
	bpl	lab622
lab621: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	mov	r3, r4
	mov	r2, r7
	add	sp, #244	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	__sbprintf
	orr	r5, r5, #16
	ands	r8, r5, #32
	beq	lab623
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r3, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r3], #8
	str	r3, [sp, #16]
lab657: 	bic	sl, r5, #1024	
	movs	r3, #0
lab667: 	mov	r2, #0
	strb	r2, [sp, #59]	
lab718: 	cmp	fp, #4294967295	
	beq	lab624
	orrs	r2, r6, r8
	bic	r5, sl, #128	
	bne	lab625
	cmp	fp, #0
	bne	lab626
	cmp	r3, #0
	bne	lab627
	ands	r3, sl, #1
	str	r3, [sp, #0]
	beq	lab628
	movs	r3, #48	
	strb	r3, [sp, #239]	
	add	r4, sp, #239	
	b	lab629
lab605: 	subs	r5, r4, r7
	beq	lab603
lab607: 	ldr	r3, [sp, #68]	
	ldr	r2, [sp, #72]	
	adds	r3, #1
	add	r2, r5
	cmp	r3, #7
	strd	r7, r5, [r9]
	str	r2, [sp, #72]	
	str	r3, [sp, #68]	
	bgt	lab630
	add	r9, r9, #8
lab634: 	ldr	r3, [sp, #12]
	add	r3, r5
	str	r3, [sp, #12]
	b	lab631
lab630: 	cmp	r2, #0
	beq	lab632
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =5902
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =5902
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab633
	add	r9, sp, #76	
	b	lab634
lab603: 	ldr	r3, [sp, #72]	
	cmp	r3, #0
	bne	lab635
lab740: 	movs	r3, #0
	str	r3, [sp, #68]	
lab633: 	ldr	r2, [sp, #4]
	ldr	r3, [r2, #100]	
	lsls	r1, r3, #31
	bpl	lab636
	ldrh	r3, [r2, #12]
lab654: 	lsls	r3, r3, #25
	bmi	lab637
lab742: 	ldr	r0, [sp, #12]
	add	sp, #244	
	nop
	push {r1, r2}
	ldr r1, =2070
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab599: 	ldr	r3, [sp, #4]
	ldrsh	r1, [r3, #12]
	lsls	r5, r1, #22
	uxth	r2, r1
	bmi	lab638
	mov	r5, r3
	ldr	r0, [r3, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r1, [r5, #12]
	uxth	r2, r1
	b	lab638
lab608: 	cmp	r3, #0
	beq	lab603
	strb	r3, [sp, #140]	
	mov	r8, #1
	mov	r3, #0
	strb	r3, [sp, #59]	
	str	r8, [sp]
	add	r4, sp, #140	
lab664: 	mov	fp, #0
lab618: 	ands	r3, r5, #2
	str	r3, [sp, #24]
	it	ne
	addne	r8, r8, #2
	ands	r3, r5, #132	
	str	r3, [sp, #28]
	bne	lab639
	ldr	r3, [sp, #8]
	sub	r6, r3, r8
	cmp	r6, #0
	bgt	lab640
lab639: 	ldrd	r2, r1, [sp, #68]	
	adds	r0, r2, #1
lab704: 	ldrb	r6, [sp, #59]	
	cmp r6, #0
	beq lab641
	add	r2, sp, #59	
	adds	r1, #1
	str	r2, [r9]
	cmp	r0, #7
	mov	r2, #1
	strd	r0, r1, [sp, #68]	
	str	r2, [r9, #4]
	bgt	lab642
lab727: 	mov	r2, r0
	add	r9, r9, #8
	adds	r0, #1
lab641: 	ldr	r3, [sp, #24]
	cmp r3, #0
	beq lab643
	add	r3, sp, #60	
	adds	r1, #2
	str	r3, [r9]
	cmp	r0, #7
	mov	r3, #2
	strd	r0, r1, [sp, #68]	
	str	r3, [r9, #4]
	ble	lab644
	cmp	r1, #0
	beq	lab645
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =4357
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =4357
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab633
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
lab643: 	ldr	r3, [sp, #28]
	cmp	r3, #128	
	beq	lab646
lab679: 	ldr	r3, [sp, #0]
	sub	r6, fp, r3
	cmp	r6, #0
	bgt	lab647
lab687: 	ldr	r3, [sp, #0]
	str	r4, [r9]
	add	r1, r3
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	r3, [r9, #4]
	ble	lab648
	cmp	r1, #0
	beq	lab649
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =2229
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =2229
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab633
	ldr	r1, [sp, #72]	
	add	r9, sp, #76	
lab678: 	lsls	r0, r5, #29
	bpl	lab650
	ldr	r3, [sp, #8]
	sub	r4, r3, r8
	cmp	r4, #0
	bgt	lab651
lab650: 	ldrd	r2, r3, [sp, #8]
	cmp	r2, r8
	ite	ge
	addge	r3, r3, r2
	addlt	r3, r8
	str	r3, [sp, #12]
	cmp	r1, #0
	bne	lab652
lab695: 	movs	r3, #0
	str	r3, [sp, #68]	
	add	r9, sp, #76	
	b	lab653
lab636: 	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #12]
	lsls	r2, r3, #22
	bmi	lab654
	ldr	r4, [sp, #4]
	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	ldrh	r3, [r4, #12]
	b	lab654
lab623: 	ands	r3, r5, #16
	bne	lab655
	ands	r2, r5, #64	
	beq	lab656
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	mov	r8, r3
	uxth	r6, r6
	b	lab657
lab613: 	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	lsls	r0, r5, #27
	bmi	lab658
	lsls	r1, r5, #25
	bpl	lab659
	sbfx	r8, r3, #15, #1
	sxth	r6, r3
	mov	r3, r8
	b	lab660
	ldr	r6, [sp, #16]
	ldr	r4, [r6], #4
	mov	r3, #0
	strb	r3, [sp, #59]	
	cmp	r4, #0
	beq	lab661
	cmp	fp, #4294967295	
	beq	lab662
	mov	r2, fp
	movs	r1, #0
	mov	r0, r4
	bl	memchr
	cmp	r0, #0
	beq	lab663
	subs	r3, r0, r4
	str	r3, [sp, #0]
	str	r6, [sp, #16]
	mov	fp, #0
	b	lab629
	ldr	r6, [sp, #16]
	mov	r3, #0
	strb	r3, [sp, #59]	
	mov	r8, #1
	ldr	r3, [r6], #4
	strb	r3, [sp, #140]	
	str	r6, [sp, #16]
	str	r8, [sp]
	add	r4, sp, #140	
	b	lab664
lab598: 	bl	__sinit
	b	lab597
	ldr	r3, [sp, #16]
	ldr	r2, [r3], #4
	str	r2, [sp, #8]
	cmp	r2, #0
	bge	lab665
	ldr	r2, [sp, #8]
	str	r3, [sp, #16]
	negs	r2, r2
	str	r2, [sp, #8]
	ldrb	r3, [r7, #0]
	orr	r5, r5, #4
	b	lab612
	ldrb	r3, [r7, #0]
	cmp	r3, #108	
	ittte	eq
	ldrbeq	r3, [r7, #1]
	orreq	r5, r5, #32
	addeq	r7, #1
	orrne	r5, r5, #16
	b	lab612
	ldrb	r3, [r7, #0]
	cmp	r3, #104	
	ittte	eq
	ldrbeq	r3, [r7, #1]
	orreq	r5, r5, #512	
	addeq	r7, #1
	orrne	r5, r5, #64	
	b	lab612
	orr	sl, r5, #16
lab724: 	ands	r8, sl, #32
	beq	lab666
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r3, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r3], #8
	str	r3, [sp, #16]
	movs	r3, #1
	b	lab667
	ldrb	r3, [r7, #0]
	strb	r4, [sp, #59]	
	b	lab612
	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	movs	r3, #48	
	strb	r3, [sp, #60]	
	movs	r3, #120	
	strb	r3, [sp, #61]	
	ldr	r3, =0x20000d60	
	str	r3, [sp, #32]
	orr	sl, r5, #2
	mov	r8, #0
	movs	r3, #2
	b	lab667
	lsls	r6, r5, #26
	bmi	lab668
	lsls	r4, r5, #27
	bmi	lab669
	lsls	r0, r5, #25
	bmi	lab670
	lsls	r1, r5, #22
	bpl	lab669
	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	strb	r2, [r3, #0]
	b	lab653
	ldrb	r3, [r7, #0]
	orr	r5, r5, #1
	b	lab612
	ldrb	r3, [sp, #59]	
	cmp	r3, #0
	bne	lab671
	movs	r3, #32
	strb	r3, [sp, #59]	
	ldrb	r3, [r7, #0]
	b	lab612
	ldrb	r3, [r7, #0]
	orr	r5, r5, #128	
	b	lab612
	mov	r1, r7
	ldrb	r3, [r1], #1
	cmp	r3, #42	
	beq	lab672
	sub	r2, r3, #48	
	cmp	r2, #9
	mov	r7, r1
	mov	fp, #0
	bhi	lab610
lab673: 	ldrb	r3, [r7], #1
	add	fp, fp, fp, lsl #2
	add	fp, r2, fp, lsl #1
	sub	r2, r3, #48	
	cmp	r2, #9
	bls	lab673
	b	lab610
lab625: 	mov	sl, r5
lab624: 	cmp	r3, #1
	beq	lab674
lab735: 	cmp	r3, #2
	add	r4, sp, #240	
	bne	lab675
	ldr	r2, [sp, #32]
lab676: 	and	r3, r6, #15
	lsrs	r6, r6, #4
	ldrb	r3, [r2, r3]
	strb	r3, [r4, #-1]!
	orr	r6, r6, r8, lsl #28
	mov	r8, r8, lsr #4
	orrs	r3, r6, r8
	bne	lab676
lab677: 	add	r3, sp, #240	
	subs	r3, r3, r4
	mov	r5, sl
	str	r3, [sp, #0]
	b	lab629
lab675: 	and	r3, r6, #7
	lsrs	r6, r6, #3
	orr	r6, r6, r8, lsl #29
	mov	r8, r8, lsr #3
	adds	r3, #48	
	orrs	r1, r6, r8
	mov	r2, r4
	strb	r3, [r4, #-1]!
	bne	lab675
	tst	sl, #1
	beq	lab677
	cmp	r3, #48	
	beq	lab677
	movs	r3, #48	
	subs	r2, #2
	strb	r3, [r4, #-1]
	add	r3, sp, #240	
	subs	r3, r3, r2
	mov	r5, sl
	str	r3, [sp, #0]
	mov	r4, r2
	b	lab629
lab713: 	ldr	r1, [sp, #0]
	str	r4, [sp, #76]	
	movs	r3, #1
	str	r1, [sp, #80]	
	str	r1, [sp, #72]	
	str	r3, [sp, #68]	
	add	r9, sp, #76	
lab648: 	add	r9, r9, #8
	b	lab678
lab646: 	ldr	r3, [sp, #8]
	sub	r6, r3, r8
	cmp	r6, #0
	ble	lab679
	cmp	r6, #16
	ble	lab680
	ldr	sl, =0x20000d8c	
	mov	r3, sl
	strd	fp, r4, [sp, #24]
	mov	sl, r7
	ldr	fp, [sp, #20]
	ldr	r4, [sp, #4]
	mov	r7, r5
	mov	r5, r3
	b	lab681
lab683: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab696: 	subs	r6, #16
	cmp	r6, #16
	ble	lab682
lab681: 	adds	r0, r2, #1
	adds	r1, #16
	movs	r3, #16
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	r5, [r9]
	str	r3, [r9, #4]
	ble	lab683
	add	r2, sp, #64	
	cmp	r1, #0
	beq	lab684
	mov	r1, r4
	mov	r0, fp
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =7049
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =7049
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab633
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	bgt	lab681
lab682: 	ldrd	fp, r4, [sp, #24]
	mov	r3, r5
	mov	r5, r7
	mov	r7, sl
	mov	sl, r3
lab743: 	add	r1, r6
	cmp	ip, #7
	strd	ip, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	ble	lab685
	cmp	r1, #0
	beq	lab686
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =6190
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =6190
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab633
	ldr	r3, [sp, #0]
	ldrd	r2, r1, [sp, #68]	
	sub	r6, fp, r3
	cmp	r6, #0
	add	r0, r2, #1
	add	r9, sp, #76	
	ble	lab687
lab647: 	cmp	r6, #16
	ldr	sl, =0x20000d8c	
	ble	lab688
	mov	r3, sl
	strd	r4, r5, [sp, #24]
	mov	sl, r7
	ldr	r4, [sp, #20]
	ldr	r5, [sp, #4]
	mov	fp, #16
	mov	r7, r3
	b	lab689
lab691: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab694: 	subs	r6, #16
	cmp	r6, #16
	ble	lab690
lab689: 	adds	r0, r2, #1
	adds	r1, #16
	cmp	r0, #7
	strd	r7, fp, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab691
	add	r2, sp, #64	
	cmp r1, #0
	beq lab692
	mov	r1, r5
	mov	r0, r4
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =1555
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =1555
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab633
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	bgt	lab689
lab690: 	ldrd	r4, r5, [sp, #24]
	mov	r3, r7
	mov	r0, ip
	mov	r7, sl
	mov	sl, r3
lab688: 	add	r1, r6
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	bgt	lab693
	add	r9, r9, #8
	adds	r0, #1
	b	lab687
lab692: 	mov	ip, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab694
lab652: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =83
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =83
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab695
	b	lab633
lab684: 	mov	ip, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab696
lab642: 	cmp	r1, #0
	beq	lab697
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =1430
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =1430
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab633
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
	b	lab641
lab738: 	movs	r1, #2
	add	r3, sp, #60	
	str	r1, [sp, #80]	
	str	r3, [sp, #76]	
	movs	r0, #1
	add	r9, sp, #76	
lab644: 	mov	r2, r0
lab721: 	add	r9, r9, #8
	adds	r0, r2, #1
	b	lab643
lab640: 	cmp	r6, #16
	ble	lab698
	ldrd	ip, r1, [sp, #68]	
	ldr	sl, =0x20000d7c	
	strd	fp, r4, [sp, #48]	
	movs	r3, #16
	mov	r4, sl
	ldr	fp, [sp, #4]
	ldr	sl, [sp, #20]
	mov	r2, ip
	b	lab699
	.ltorg
lab701: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab705: 	subs	r6, #16
	cmp	r6, #16
	ble	lab700
lab699: 	adds	r0, r2, #1
	adds	r1, #16
	cmp	r0, #7
	strd	r4, r3, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab701
	add	r2, sp, #64	
	cmp r1, #0
	beq lab702
	mov	r1, fp
	mov	r0, sl
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =8022
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =8022
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab633
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	mov	r3, #16
	bgt	lab699
lab700: 	mov	sl, r4
	ldr	fp, [sp, #48]	
	ldr	r4, [sp, #52]	
	mov	r2, ip
lab739: 	add	r1, r6
	cmp	r2, #7
	strd	r2, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	bgt	lab703
	add	r9, r9, #8
	adds	r0, r2, #1
	b	lab704
lab702: 	mov	r2, r1
	mov	ip, #1
	add	r9, sp, #76	
	b	lab705
lab649: 	lsls	r4, r5, #29
	str	r1, [sp, #68]	
	bpl	lab706
	ldr	r3, [sp, #8]
	sub	r4, r3, r8
	cmp	r4, #0
	ble	lab706
	add	r9, sp, #76	
lab651: 	cmp	r4, #16
	ble	lab707
	ldr	sl, =0x20000d7c	
	ldr	r2, [sp, #68]	
	ldr	r6, [sp, #20]
	ldr	fp, [sp, #4]
	mov	r3, sl
	movs	r5, #16
	mov	sl, r7
	mov	r7, r3
	b	lab708
lab710: 	adds	r0, r2, #2
	add	r9, r9, #8
	mov	r2, r3
lab712: 	subs	r4, #16
	cmp	r4, #16
	ble	lab709
lab708: 	adds	r3, r2, #1
	adds	r1, #16
	cmp	r3, #7
	strd	r7, r5, [r9]
	strd	r3, r1, [sp, #68]	
	ble	lab710
	add	r2, sp, #64	
	cmp r1, #0
	beq lab711
	mov	r1, fp
	mov	r0, r6
push {r1, r2}
	ldr r1, =983
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =983
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab633
	ldrd	r2, r1, [sp, #68]	
	subs	r4, #16
	cmp	r4, #16
	add	r0, r2, #1
	add	r9, sp, #76	
	bgt	lab708
lab709: 	mov	r3, r7
	mov	r7, sl
	mov	sl, r3
lab741: 	add	r1, r4
	cmp	r0, #7
	strd	sl, r4, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab650
	cmp r1, #0
	beq lab706
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =342
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =342
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab633
	ldr	r1, [sp, #72]	
	b	lab650
lab711: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab712
lab706: 	ldrd	r2, r3, [sp, #8]
	cmp	r2, r8
	ite	ge
	addge	r3, r3, r2
	addlt	r3, r8
	str	r3, [sp, #12]
	b	lab695
lab693: 	cmp	r1, #0
	beq	lab713
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =2530
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =2530
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab633
	ldr	r0, [sp, #68]	
	ldr	r1, [sp, #72]	
	adds	r0, #1
	add	r9, sp, #76	
	b	lab687
lab697: 	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	lab714
lab645: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab643
lab632: 	str	r2, [sp, #68]	
	add	r9, sp, #76	
	b	lab634
lab616: 	cmp	fp, #0
	bne	lab715
	mov	r5, sl
lab627: 	mov	fp, #0
	str	fp, [sp]
	add	r4, sp, #240	
	b	lab629
lab666: 	ands	r3, sl, #16
	bne	lab716
	ands	r2, sl, #64	
	beq	lab717
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	mov	r8, r3
	uxth	r6, r6
	movs	r3, #1
	b	lab667
lab614: 	movs	r3, #45	
	negs	r6, r6
	strb	r3, [sp, #59]	
	sbc	r8, r8, r8, lsl #1
	mov	sl, r5
	movs	r3, #1
	b	lab718
lab703: 	cmp	r1, #0
	beq	lab719
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =5158
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =5158
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab633
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
	b	lab704
lab665: 	str	r3, [sp, #16]
	ldrb	r3, [r7, #0]
	b	lab612
lab628: 	add	r4, sp, #240	
	b	lab629
lab685: 	add	r9, r9, #8
	add	r0, ip, #1
	mov	r2, ip
	b	lab679
lab659: 	lsls	r2, r5, #22
	bmi	lab720
lab658: 	mov	r8, r3, asr #31
	mov	r6, r3
	mov	r3, r8
	b	lab660
lab716: 	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	movs	r3, #1
	b	lab667
lab611: 	ldr	r3, [sp, #36]	
	cmp	r3, #0
	beq	lab671
	ldr	r3, [sp, #36]	
	ldrb	r3, [r3, #0]
	cmp	r3, #0
	beq	lab671
	ldrb	r3, [r7, #0]
	orr	r5, r5, #1024	
	b	lab612
lab668: 	ldrd	r1, r6, [sp, #12]
	ldr	r2, [r6], #4
	str	r6, [sp, #16]
	asrs	r3, r1, #31
	strd	r1, r3, [r2]
	b	lab653
lab655: 	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	b	lab657
lab714: 	movs	r1, #2
	add	r3, sp, #60	
	str	r1, [sp, #80]	
	str	r3, [sp, #76]	
	add	r9, sp, #76	
	b	lab721
	ldr	r2, =0x20000d4c	
	str	r2, [sp, #32]
lab725: 	ands	r8, r5, #32
	beq	lab722
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r2, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r2], #8
	str	r2, [sp, #16]
lab729: 	lsls	r2, r5, #31
	bpl	lab723
	orrs	r2, r6, r8
	beq	lab723
	strb	r3, [sp, #61]	
	movs	r3, #48	
	orr	r5, r5, #2
	strb	r3, [sp, #60]	
lab723: 	bic	sl, r5, #1024	
	movs	r3, #2
	b	lab667
	mov	sl, r5
	b	lab724
	ldr	r2, =0x20000d60	
	str	r2, [sp, #32]
	b	lab725
lab662: 	mov	r0, r4
	str	r6, [sp, #16]
	bl	strlen
	mov	fp, #0
	str	r0, [sp, #0]
	b	lab629
lab719: 	ldrb	r2, [sp, #59]	
	cmp	r2, #0
	beq	lab726
	movs	r0, #1
	add	r2, sp, #59	
	str	r0, [sp, #80]	
	str	r2, [sp, #76]	
	add	r9, sp, #76	
	mov	r1, r0
	b	lab727
lab722: 	ands	r2, r5, #16
	beq	lab728
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	b	lab729
lab617: 	and	r3, sl, #1024	
	str	fp, [sp]
	str	r9, [sp, #24]
	mov	fp, r7
	ldr	r9, [sp, #36]	
	movs	r5, #0
	add	r4, sp, #240	
	mov	r7, r3
	b	lab730
lab732: 	mov	r0, r6
	mov	r1, r8
push {r1, r2}
	ldr r1, =1696
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =1696
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r6, #10
	sbcs	r3, r8, #0
	bcc	lab731
lab737: 	mov	r6, r0
	mov	r8, r1
lab730: 	mov	r0, r6
	mov	r1, r8
	movs	r2, #10
	movs	r3, #0
push {r1, r2}
	ldr r1, =6662
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =6662
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r1, r2
	adds	r1, #48	
	strb	r1, [r4, #-1]
	movs	r2, #10
	movs	r3, #0
	subs	r4, #1
	adds	r5, #1
	cmp	r7, #0
	beq	lab732
	ldrb	r1, [r9]
	cmp	r1, r5
	bne	lab732
	cmp	r5, #255	
	beq	lab732
	cmp	r6, #10
	sbcs	r3, r8, #0
	bcs	lab733
lab731: 	add	r3, sp, #240	
	subs	r3, r3, r4
	str	r9, [sp, #36]	
	mov	r7, fp
	ldr	r9, [sp, #24]
	ldr	fp, [sp]
	str	r3, [sp, #0]
	mov	r5, sl
	b	lab629
lab728: 	ands	r1, r5, #64	
	beq	lab734
	ldr	r1, [sp, #16]
	ldr	r6, [r1], #4
	str	r1, [sp, #16]
	mov	r8, r2
	uxth	r6, r6
	b	lab729
lab615: 	mov	sl, r5
	b	lab674
lab626: 	cmp	r3, #1
	mov	sl, r5
	bne	lab735
	b	lab715
	nop
	.ltorg
lab669: 	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r2, [r3, #0]
	str	r6, [sp, #16]
	b	lab653
lab661: 	cmp	fp, #6
	mov	r8, fp
	it	cs
	movcs	r8, #6
	ldr	r4, =0x20000d74	
	str	r8, [sp]
	str	r6, [sp, #16]
	b	lab664
lab717: 	ldr	r3, [sp, #16]
	ands	r8, sl, #512	
	ite	ne
	ldrne	r6, [r3], #4
	ldreq	r6, [r3], #4
	str	r3, [sp, #16]
	itt	ne
	movne	r8, r2
	uxtbne	r6, r6
	movs	r3, #1
	b	lab667
lab656: 	ldr	r3, [sp, #16]
	ands	r8, r5, #512	
	ite	ne
	ldrne	r6, [r3], #4
	ldreq	r6, [r3], #4
	str	r3, [sp, #16]
	itt	ne
	movne	r8, r2
	uxtbne	r6, r6
	b	lab657
lab734: 	ldr	r2, [sp, #16]
	ands	r8, r5, #512	
	ite	ne
	ldrne	r6, [r2], #4
	ldreq	r6, [r2], #4
	str	r2, [sp, #16]
	itt	ne
	movne	r8, r1
	uxtbne	r6, r6
	b	lab729
lab733: 	ldr	r3, [sp, #44]	
	ldr	r1, [sp, #40]	
	subs	r4, r4, r3
	mov	r2, r3
	mov	r0, r4
	bl	strncpy
	push {r1, r2}
	ldr r1, =6919
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r3, [r9, #1]
	cmp r3, #0
	beq lab736
	add	r9, r9, #1
lab736: 	mov	r0, r6
	mov	r1, r8
	movs	r2, #10
	movs	r3, #0
	movs	r5, #0
push {r1, r2}
	ldr r1, =1624
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =1624
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab737
lab686: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab679
lab726: 	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	lab738
	mov	r2, r1
	movs	r0, #1
	add	r9, sp, #76	
	b	lab679
lab670: 	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	strh	r2, [r3, #0]
	b	lab653
lab720: 	sbfx	r8, r3, #7, #1
	sxtb	r6, r3
	mov	r3, r8
	b	lab660
lab622: 	ldr	r0, [r1, #88]	
	bl	__retarget_lock_release_recursive
	b	lab621
lab663: 	str	fp, [sp]
	str	r6, [sp, #16]
	mov	fp, r0
	b	lab629
lab698: 	ldr	r2, [sp, #68]	
	ldr	r1, [sp, #72]	
	ldr	sl, =0x20000d7c	
	adds	r2, #1
	b	lab739
lab635: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =1058
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =1058
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab740
	b	lab633
lab707: 	ldr	r0, [sp, #68]	
	ldr	sl, =0x20000d7c	
	adds	r0, #1
	b	lab741
lab619: 	ldr	r3, [sp, #4]
	ldr	r3, [r3, #100]	
	lsls	r3, r3, #31
	bmi	lab637
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #12]
	lsls	r7, r3, #22
	bmi	lab637
	ldr	r3, [sp, #4]
	ldr	r0, [r3, #88]	
	bl	__retarget_lock_release_recursive
lab637: 	mov	r3, #4294967295	
	str	r3, [sp, #12]
	b	lab742
lab680: 	ldr	sl, =0x20000d8c	
	mov	ip, r0
	b	lab743
lab672: 	ldr	r2, [sp, #16]
	ldrb	r3, [r7, #1]
	mov	r7, r1
	ldr	r1, [r2], #4
	str	r2, [sp, #16]
	orr	fp, r1, r1, asr #31
	b	lab612
	nop
	.ltorg
vfiprintf:
	push	{r4}
	ldr	r4, =0x20000eb4	
	mov	ip, r0
	mov	r3, r2
	ldr	r0, [r4, #0]
	pop	{r4}
	mov	r2, r1
	mov	r1, ip
	b	_vfiprintf_r
	.ltorg
__sbprintf:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r3
	ldrh	r3, [r1, #12]
	subw	sp, sp, #1132	
	bic	r3, r3, #2
	strh	r3, [sp, #12]
	ldr	r3, [r1, #100]	
	str	r3, [sp, #100]	
	ldrh	r3, [r1, #14]
	strh	r3, [sp, #14]
	ldr	r3, [r1, #28]
	str	r3, [sp, #28]
	ldr	r3, [r1, #36]	
	str	r3, [sp, #36]	
	add	r3, sp, #104	
	str	r3, [sp, #0]
	str	r3, [sp, #16]
	mov	r3, #1024	
	mov	r5, r2
	mov	r6, r0
	str	r3, [sp, #8]
	str	r3, [sp, #20]
	add	r0, sp, #88	
	movs	r3, #0
	mov	r4, r1
	str	r3, [sp, #24]
	bl	__retarget_lock_init_recursive
	mov	r2, r5
	mov	r3, r7
	mov	r1, sp
	mov	r0, r6
push {r1, r2}
	ldr r1, =4670
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =4670
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r5, r0, #0
	blt	lab744
	mov	r1, sp
	mov	r0, r6
push {r1, r2}
	ldr r1, =5618
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =5618
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	it	ne
	movne	r5, #4294967295	
lab744: 	ldrh	r3, [sp, #12]
	lsls	r3, r3, #25
	bpl	lab745
	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
lab745: 	ldr	r0, [sp, #88]	
	bl	__retarget_lock_close_recursive
	mov	r0, r5
	addw	sp, sp, #1132	
	nop
	push {r1, r2}
	ldr r1, =241
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
__swsetup_r:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x20000eb4	
	ldr	r3, [r3, #0]
	mov	r5, r0
	mov	r4, r1
	cmp r3, #0
	beq lab746
	ldr	r2, [r3, #56]	
	cmp r2, #0
	beq lab747
lab746: 	ldrsh	r3, [r4, #12]
	lsls	r0, r3, #28
	uxth	r2, r3
	bpl	lab748
lab754: 	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	lab749
lab757: 	ands	r0, r2, #1
	beq	lab750
	movs	r0, #0
	str	r0, [r4, #8]
	ldr	r0, [r4, #20]
	negs	r0, r0
	str	r0, [r4, #24]
	cmp r1, #0
	beq lab751
lab752: 	movs	r0, #0
lab753:	nop
	push {r1, r2}
	ldr r1, =7681
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab750: 	lsls	r5, r2, #30
	it	pl
	ldrpl	r0, [r4, #20]
	str	r0, [r4, #8]
	cmp	r1, #0
	bne	lab752
lab751: 	lsls	r2, r2, #24
	it	pl
	movpl	r0, r1
	bpl	lab753
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	mov	r0, #4294967295	
	nop
	push {r1, r2}
	ldr r1, =6614
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab747: 	mov	r0, r3
	bl	__sinit
	ldrsh	r3, [r4, #12]
	lsls	r0, r3, #28
	uxth	r2, r3
	bmi	lab754
lab748: 	lsls	r1, r2, #27
	bpl	lab755
	lsls	r2, r2, #29
	bmi	lab756
	ldr	r1, [r4, #16]
lab760: 	orr	r3, r3, #8
	strh	r3, [r4, #12]
	uxth	r2, r3
	cmp	r1, #0
	bne	lab757
lab749: 	and	r0, r2, #640	
	cmp	r0, #512	
	beq	lab757
	mov	r1, r4
	mov	r0, r5
	bl	__smakebuf_r
	push {r1, r2}
	ldr r1, =3905
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	ldr	r1, [r4, #16]
	uxth	r2, r3
	b	lab757
lab756: 	ldr	r1, [r4, #48]	
	cmp r1, #0
	beq lab758
	add	r2, r4, #64	
	cmp	r1, r2
	beq	lab759
	mov	r0, r5
push {r1, r2}
	ldr r1, =6842
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =6842
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
lab759: 	movs	r2, #0
	str	r2, [r4, #48]	
lab758: 	ldr	r1, [r4, #16]
	movs	r2, #0
	strd	r1, r2, [r4]
	bic	r3, r3, #36	
	b	lab760
lab755: 	movs	r2, #9
	orr	r3, r3, #64	
	str	r2, [r5, #0]
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =5107
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
abort:
	push	{r3, lr}
	movs	r0, #6
	bl	raise
	push {r1, r2}
	ldr r1, =2904
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r0, #1
	bl	_exit
	nop
__sflush_r:
	ldrsh	r2, [r1, #12]
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	lsls	r1, r2, #28
	mov	r7, r0
	bmi	lab761
	ldr	r3, [r4, #4]
	orr	r2, r2, #2048	
	cmp	r3, #0
	strh	r2, [r4, #12]
	ble	lab762
lab774: 	ldr	r5, [r4, #40]	
	cmp	r5, #0
	beq	lab763
	movs	r3, #0
	ldr	r6, [r7, #0]
	str	r3, [r7, #0]
	uxth	r3, r2
	ands	r2, r2, #4096	
	bne	lab764
	ldr	r1, [r4, #28]
	movs	r3, #1
	mov	r0, r7
	blx	r5
	adds	r2, r0, #1
	beq	lab765
lab777: 	ldrh	r3, [r4, #12]
	ldr	r5, [r4, #40]	
lab775: 	lsls	r3, r3, #29
	bpl	lab766
	ldr	r3, [r4, #4]
	subs	r0, r0, r3
	ldr	r3, [r4, #48]	
	cmp r3, #0
	beq lab766
	ldr	r3, [r4, #60]	
	subs	r0, r0, r3
lab766: 	ldr	r1, [r4, #28]
	mov	r2, r0
	movs	r3, #0
	mov	r0, r7
	blx	r5
	adds	r1, r0, #1
	bne	lab767
	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	lab767
	cmp	r3, #29
	beq	lab768
	cmp	r3, #22
	bne	lab769
lab768: 	ldrh	r3, [r4, #12]
	ldr	r2, [r4, #16]
	str	r2, [r4, #0]
	bic	r3, r3, #2048	
	movs	r1, #0
	str	r1, [r4, #4]
	strh	r3, [r4, #12]
lab776: 	ldr	r1, [r4, #48]	
	str	r6, [r7, #0]
	cmp r1, #0
	beq lab763
	add	r3, r4, #64	
	cmp	r1, r3
	beq	lab770
	mov	r0, r7
push {r1, r2}
	ldr r1, =4322
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab770:	push {r1, r2}
	ldr r1, =4322
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	movs	r0, #0
	str	r0, [r4, #48]	
	nop
	push {r1, r2}
	ldr r1, =1866
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab761: 	ldr	r6, [r4, #16]
	cmp r6, #0
	beq lab763
	uxth	r3, r2
	ldr	r5, [r4, #0]
	str	r6, [r4, #0]
	lsls	r2, r3, #30
	ite	eq
	ldreq	r3, [r4, #20]
	movne	r3, #0
	subs	r5, r5, r6
	str	r3, [r4, #8]
	b	lab771
lab773: 	ldr	ip, [r4, #36]	
	ldr	r1, [r4, #28]
	mov	r3, r5
	mov	r2, r6
	mov	r0, r7
	blx	ip
	subs	ip, r0, #0
	sub	r5, r5, ip
	add	r6, ip
	ble	lab772
lab771: 	cmp	r5, #0
	bgt	lab773
lab763: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =7310
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab762: 	ldr	r3, [r4, #60]	
	cmp	r3, #0
	bgt	lab774
	b	lab763
lab764: 	ldr	r0, [r4, #80]	
	b	lab775
lab767: 	ldrsh	r3, [r4, #12]
	ldr	r2, [r4, #16]
	str	r2, [r4, #0]
	bic	r3, r3, #2048	
	strh	r3, [r4, #12]
	movs	r2, #0
	lsls	r3, r3, #19
	str	r2, [r4, #4]
	bpl	lab776
	str	r0, [r4, #80]	
	b	lab776
lab772: 	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =7614
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab765: 	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	lab777
	cmp	r3, #29
	beq	lab778
	cmp	r3, #22
	beq	lab778
lab769: 	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =3918
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab778: 	str	r6, [r7, #0]
	b	lab763
	nop
_fflush_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	cmp r0, #0
	beq lab779
	ldr	r3, [r0, #56]	
	cmp r3, #0
	beq lab780
lab779: 	ldrsh	r0, [r4, #12]
	cmp r0, #0
	beq lab781
lab786: 	ldr	r3, [r4, #100]	
	lsls	r3, r3, #31
	bmi	lab782
	lsls	r1, r0, #22
	bpl	lab783
lab782: 	mov	r0, r5
	mov	r1, r4
push {r1, r2}
	ldr r1, =3070
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =3070
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab784
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab785
lab784: 	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =3226
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab780: 	bl	__sinit
	ldrsh	r0, [r4, #12]
	cmp	r0, #0
	bne	lab786
lab781: 	mov	r5, r0
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =2508
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab783: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	b	lab782
lab785: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =3832
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	nop
fflush:
	push	{r3, r4, r5, lr}
	cmp r0, #0
	beq lab787
	ldr	r3, =0x20000eb4	
	ldr	r5, [r3, #0]
	mov	r4, r0
	cmp r5, #0
	beq lab788
	ldr	r3, [r5, #56]	
	cmp r3, #0
	beq lab789
lab788: 	ldrsh	r0, [r4, #12]
	cmp r0, #0
	beq lab790
	ldr	r3, [r4, #100]	
	lsls	r3, r3, #31
	bmi	lab791
	lsls	r1, r0, #22
	bpl	lab792
lab791: 	mov	r0, r5
	mov	r1, r4
push {r1, r2}
	ldr r1, =178
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =178
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab793
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab794
lab793: 	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab790: 	mov	r5, r0
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab789: 	mov	r0, r5
	bl	__sinit
	b	lab788
lab792: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	b	lab791
lab794: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	b	lab793
lab787: 	ldr	r3, =0x20000d48	
	ldr	r1, =0x80055e5	
	ldr	r0, [r3, #0]
	ldmia	sp!, {r3, r4, r5, lr}
	b	_fwalk_reent
	nop
	.ltorg
_cleanup_r:
	ldr	r1, =0x8007265	
	b	_fwalk_reent
	nop
	.ltorg
__fp_lock:
	push	{r3, lr}
	ldr	r3, [r0, #100]	
	lsls	r2, r3, #31
	bmi	lab795
	ldrh	r3, [r0, #12]
	lsls	r3, r3, #22
	bpl	lab796
lab795: 	movs	r0, #0
	pop	{r3, pc}
lab796: 	ldr	r0, [r0, #88]	
	bl	__retarget_lock_acquire_recursive
	movs	r0, #0
	pop	{r3, pc}
__fp_unlock:
	push	{r3, lr}
	ldr	r3, [r0, #100]	
	lsls	r2, r3, #31
	bmi	lab797
	ldrh	r3, [r0, #12]
	lsls	r3, r3, #22
	bpl	lab798
lab797: 	movs	r0, #0
	pop	{r3, pc}
lab798: 	ldr	r0, [r0, #88]	
	bl	__retarget_lock_release_recursive
	movs	r0, #0
	pop	{r3, pc}
__sfmoreglue:
	push	{r4, r5, r6, lr}
	movs	r2, #104	
	subs	r5, r1, #1
	mul	r5, r2, r5
	mov	r6, r1
	add	r1, r5, #116	
push {r1, r2}
	ldr r1, =7142
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =7142
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	cmp r0, #0
	beq lab799
	movs	r1, #0
	adds	r0, #12
	strd	r1, r6, [r4]
	str	r0, [r4, #8]
	add	r2, r5, #104	
push {r1, r2}
	ldr r1, =2847
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
lab799:	push {r1, r2}
	ldr r1, =2847
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r4
	pop	{r4, r5, r6, pc}
	nop
_cleanup:
	ldr	r3, =0x20000d48	
	ldr	r1, =0x8007265	
	ldr	r0, [r3, #0]
	b	_fwalk_reent
	nop
	.ltorg
__sinit:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	sl, r0
	ldr	r0, =0x2000250c	
	bl	__retarget_lock_acquire_recursive
	ldr	r4, [sl, #56]	
	cmp	r4, #0
	bne	lab800
	ldr	r5, [sl, #4]
	ldr	r2, =0x80056b5	
	str	r2, [sl, #60]	
	movs	r3, #3
	strd	r4, r3, [sl, #736]	
	ldr	r9, =0x8006f9d	
	ldr	r8, =0x8006fc5	
	ldr	r7, =0x8007005	
	ldr	r6, =0x8007025	
	movs	r3, #4
	add	r2, sl, #748	
	str	r2, [sl, #744]	
	mov	r1, r4
	strd	r4, r3, [r5, #8]
	strd	r4, r4, [r5]
	strd	r4, r4, [r5, #16]
	str	r4, [r5, #100]	
	movs	r2, #8
	str	r4, [r5, #24]
	add	r0, r5, #92	
push {r1, r2}
	ldr r1, =7757
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =7757
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	r5, r9, [r5, #28]
	strd	r8, r7, [r5, #36]	
	str	r6, [r5, #44]	
	add	r0, r5, #88	
	bl	__retarget_lock_init_recursive
	ldr	r5, [sl, #8]
	ldr	r3, =0x10009	
	str	r3, [r5, #12]
	mov	r1, r4
	strd	r4, r4, [r5]
	strd	r4, r4, [r5, #16]
	str	r4, [r5, #100]	
	str	r4, [r5, #8]
	str	r4, [r5, #24]
	movs	r2, #8
	add	r0, r5, #92	
push {r1, r2}
	ldr r1, =7130
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =7130
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	r5, r9, [r5, #28]
	strd	r8, r7, [r5, #36]	
	str	r6, [r5, #44]	
	add	r0, r5, #88	
	bl	__retarget_lock_init_recursive
	ldr	r5, [sl, #12]
	ldr	r3, =0x20012	
	str	r3, [r5, #12]
	mov	r1, r4
	strd	r4, r4, [r5]
	strd	r4, r4, [r5, #16]
	str	r4, [r5, #100]	
	str	r4, [r5, #8]
	str	r4, [r5, #24]
	movs	r2, #8
	add	r0, r5, #92	
push {r1, r2}
	ldr r1, =582
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =582
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	r0, r5, #88	
	strd	r5, r9, [r5, #28]
	strd	r7, r6, [r5, #40]	
	str	r8, [r5, #36]	
	bl	__retarget_lock_init_recursive
	movs	r3, #1
	str	r3, [sl, #56]	
	ldr	r0, =0x2000250c	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	b	__retarget_lock_release_recursive
lab800: 	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r0, =0x2000250c	
	b	__retarget_lock_release_recursive
	.ltorg
__sfp:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r7, r0
	ldr	r0, =0x20002508	
	bl	__retarget_lock_acquire_recursive
	ldr	r3, =0x20000d48	
	ldr	r6, [r3, #0]
	ldr	r3, [r6, #56]	
	cmp r3, #0
	beq lab801
lab807: 	add	r6, r6, #736	
	mov	r8, #4
lab806: 	ldrd	r3, r4, [r6, #4]
	subs	r3, #1
	bpl	lab802
	b	lab803
lab804: 	adds	r2, r3, #1
	add	r4, r4, #104	
	beq	lab803
lab802: 	ldrsh	r5, [r4, #12]
	subs	r3, #1
	cmp	r5, #0
	bne	lab804
	ldr	r3, =0xffff0001	
	str	r3, [r4, #12]
	add	r0, r4, #88	
	str	r5, [r4, #100]	
	bl	__retarget_lock_init_recursive
	ldr	r0, =0x20002508	
	bl	__retarget_lock_release_recursive
	strd	r5, r5, [r4, #4]
	strd	r5, r5, [r4, #16]
	str	r5, [r4, #0]
	str	r5, [r4, #24]
	movs	r2, #8
	mov	r1, r5
	add	r0, r4, #92	
push {r1, r2}
	ldr r1, =6284
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =6284
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	r5, r5, [r4, #48]	
	strd	r5, r5, [r4, #68]	
lab809: 	mov	r0, r4
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab803: 	ldr	r5, [r6, #0]
	cmp r5, #0
	beq lab805
	mov	r6, r5
	b	lab806
lab801: 	mov	r0, r6
	bl	__sinit
	b	lab807
lab805: 	mov	r1, #428	
	mov	r0, r7
push {r1, r2}
	ldr r1, =7814
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =7814
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	cmp r0, #0
	beq lab808
	str	r5, [r0, #0]
	str	r8, [r0, #4]
	adds	r0, #12
	mov	r1, r5
	str	r0, [r4, #8]
	mov	r5, r4
	mov	r2, #416	
push {r1, r2}
	ldr r1, =4596
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =4596
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r4, [r6, #0]
	mov	r6, r5
	b	lab806
lab808: 	ldr	r0, =0x20002508	
	str	r4, [r6, #0]
	bl	__retarget_lock_release_recursive
	movs	r3, #12
	str	r3, [r7, #0]
	b	lab809
	nop
	.ltorg
__sfp_lock_acquire:
	ldr	r0, =0x20002508	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__sfp_lock_release:
	ldr	r0, =0x20002508	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
__sinit_lock_acquire:
	ldr	r0, =0x2000250c	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__sinit_lock_release:
	ldr	r0, =0x2000250c	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
__fp_lock_all:
	push	{r3, lr}
	ldr	r0, =0x20002508	
	bl	__retarget_lock_acquire_recursive
	ldr	r3, =0x20000eb4	
	ldr	r1, =0x80056c1	
	ldr	r0, [r3, #0]
	ldmia	sp!, {r3, lr}
	b	_fwalk
	nop
	.ltorg
__fp_unlock_all:
	push	{r3, lr}
	ldr	r3, =0x20000eb4	
	ldr	r1, =0x80056dd	
	ldr	r0, [r3, #0]
	bl	_fwalk
	push {r1, r2}
	ldr r1, =6663
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldmia	sp!, {r3, lr}
	ldr	r0, =0x20002508	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
__fputwc:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub	sp, #12
	mov	r7, r0
	mov	r8, r1
	mov	r4, r2
	bl	__locale_mb_cur_max
	cmp	r0, #1
	bne	lab810
	add	r3, r8, #4294967295	
	cmp	r3, #254	
	bls	lab811
lab810: 	mov	r2, r8
	add	r3, r4, #92	
	add	r1, sp, #4
	mov	r0, r7
	bl	_wcrtomb_r
	push {r1, r2}
	ldr r1, =4865
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r2, r0, #1
	mov	r6, r0
	beq	lab812
	cmp r0, #0
	beq lab813
	ldrb	ip, [sp, #4]
lab818: 	add	r9, sp, #5
	movs	r5, #0
	b	lab814
lab815: 	ldr	r3, [r4, #0]
	adds	r2, r3, #1
	str	r2, [r4, #0]
	strb	ip, [r3]
lab817: 	adds	r5, #1
	cmp	r5, r6
	bcs	lab813
	ldrb	ip, [r9], #1
lab814: 	ldr	r3, [r4, #8]
	subs	r3, #1
	cmp	r3, #0
	str	r3, [r4, #8]
	bge	lab815
	ldr	lr, [r4, #24]
	cmp	r3, lr
	mov	r1, ip
	mov	r2, r4
	mov	r0, r7
	blt	lab816
	cmp	ip, #10
	bne	lab815
lab816: 	bl	__swbuf_r
	push {r1, r2}
	ldr r1, =7856
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	bne	lab817
	mov	r6, r0
	mov	r0, r6
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =5546
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab813: 	mov	r6, r8
	mov	r0, r6
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =7229
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab811: 	uxtb	ip, r8
	strb	ip, [sp, #4]
	mov	r6, r0
	b	lab818
lab812: 	ldrh	r3, [r4, #12]
	mov	r0, r6
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =1514
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
_fputwc_r:
	push	{r4, r5, lr}
	ldr	r3, [r2, #100]	
	tst	r3, #1
	ldrsh	r3, [r2, #12]
	mov	r4, r2
	sub	sp, #12
	mov	r5, r0
	uxth	r2, r3
	bne	lab819
	lsls	r0, r3, #22
	bpl	lab820
lab819: 	lsls	r0, r2, #18
	bmi	lab821
	ldr	r2, [r4, #100]	
	orr	r3, r3, #8192	
	orr	r2, r2, #8192	
	strh	r3, [r4, #12]
	str	r2, [r4, #100]	
lab821: 	mov	r2, r4
	mov	r0, r5
push {r1, r2}
	ldr r1, =1860
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__fputwc
	push {r1, r2}
	ldr r1, =1860
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab822
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab823
lab822: 	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =7412
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab823: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =139
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab820: 	ldr	r0, [r4, #88]	
	str	r1, [sp, #4]
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	ldr	r1, [sp, #4]
	uxth	r2, r3
	b	lab819
	nop
fputwc:
	ldr	r3, =0x20000eb4	
	push	{r4, r5, r6, lr}
	ldr	r6, [r3, #0]
	mov	r5, r0
	mov	r4, r1
	cmp r6, #0
	beq lab824
	ldr	r3, [r6, #56]	
	cmp r3, #0
	beq lab825
lab824: 	ldr	r3, [r4, #100]	
	tst	r3, #1
	ldrsh	r3, [r4, #12]
	uxth	r2, r3
	bne	lab826
	lsls	r0, r3, #22
	bpl	lab827
lab826: 	lsls	r1, r2, #18
	bmi	lab828
	ldr	r2, [r4, #100]	
	orr	r3, r3, #8192	
	orr	r2, r2, #8192	
	strh	r3, [r4, #12]
	str	r2, [r4, #100]	
lab828: 	mov	r2, r4
	mov	r1, r5
	mov	r0, r6
push {r1, r2}
	ldr r1, =3208
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__fputwc
	push {r1, r2}
	ldr r1, =3208
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab829
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab830
lab829: 	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab825: 	mov	r0, r6
	bl	__sinit
	b	lab824
lab830: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab827: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	uxth	r2, r3
	b	lab826
	.ltorg
_malloc_trim_r:
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r7, =0x2000144c	
	mov	r4, r1
	mov	r6, r0
	bl	__malloc_lock
	ldr	r2, [r7, #8]
	ldr	r5, [r2, #4]
	rsb	r3, r4, #4064	
	adds	r3, #15
	bic	r5, r5, #3
	add	r3, r5
	bic	r3, r3, #4080	
	bic	r3, r3, #15
	sub	r4, r3, #4096	
	cmp	r4, #4096	
	blt	lab831
	movs	r1, #0
	mov	r0, r6
push {r1, r2}
	ldr r1, =1534
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =1534
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r7, #8]
	add	r3, r5
	cmp	r0, r3
	beq	lab832
lab831: 	mov	r0, r6
	bl	__malloc_unlock
	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =5328
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab832: 	negs	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =2805
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =2805
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r0, #1
	beq	lab833
	ldr	r2, =0x20002514	
	ldr	r3, [r7, #8]
	subs	r5, r5, r4
	orr	r5, r5, #1
	str	r5, [r3, #4]
	ldr	r3, [r2, #0]
	mov	r0, r6
	subs	r3, r3, r4
	str	r3, [r2, #0]
	bl	__malloc_unlock
	movs	r0, #1
	nop
	push {r1, r2}
	ldr r1, =4058
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab833: 	movs	r1, #0
	mov	r0, r6
push {r1, r2}
	ldr r1, =3008
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =3008
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r2, [r7, #8]
	subs	r3, r0, r2
	cmp	r3, #15
	ble	lab831
	orr	r3, r3, #1
	str	r3, [r2, #4]
	ldr	r3, =0x20001854	
	ldr	r1, =0x20002514	
	ldr	r3, [r3, #0]
	subs	r0, r0, r3
	str	r0, [r1, #0]
	b	lab831
	nop
	.ltorg
_free_r:
	cmp	r1, #0
	beq	lab834
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r6, r0
	bl	__malloc_lock
	ldr	r2, [r4, #-4]
	ldr	r7, =0x2000144c	
	sub	r5, r4, #8
	bic	r1, r2, #1
	add	ip, r5, r1
	ldr	r0, [r7, #8]
	ldr	r3, [ip, #4]
	cmp	r0, ip
	bic	r3, r3, #3
	beq	lab835
	lsls	r2, r2, #31
	str	r3, [ip, #4]
	bmi	lab836
	ldr	r2, [r4, #-8]
	subs	r5, r5, r2
	add	r1, r2
	ldr	r2, [r5, #8]
	add	r0, r7, #8
	cmp	r2, r0
	beq	lab837
	add	r4, ip, r3
	ldr	lr, [r4, #4]
	ldr	r4, [r5, #12]
	str	r4, [r2, #12]
	tst	lr, #1
	str	r2, [r4, #8]
	beq	lab838
	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [ip]
lab842: 	cmp	r1, #512	
	bcs	lab839
lab843: 	ldr	r2, [r7, #4]
	lsrs	r3, r1, #3
	lsrs	r0, r1, #5
	movs	r1, #1
	adds	r3, #1
	lsls	r1, r0
	orrs	r1, r2
	str	r1, [r7, #4]
	add	r2, r7, r3, lsl #3
	ldr	r1, [r7, r3, lsl #3]
	subs	r2, #8
	strd	r1, r2, [r5, #8]
	str	r5, [r7, r3, lsl #3]
	str	r5, [r1, #12]
lab850: 	mov	r0, r6
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	__malloc_unlock
lab836: 	add	r2, ip, r3
	ldr	r2, [r2, #4]
	lsls	r0, r2, #31
	bmi	lab840
	add	r1, r3
	add	r0, r7, #8
lab854: 	ldr	r3, [ip, #8]
	cmp	r3, r0
	beq	lab841
	ldr	r2, [ip, #12]
	str	r2, [r3, #12]
	str	r3, [r2, #8]
	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [r5, r1]
	b	lab842
lab834:	nop
	push {r1, r2}
	ldr r1, =1906
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	bx	lr
lab840: 	orr	r3, r1, #1
	cmp	r1, #512	
	str	r3, [r4, #-4]
	str	r1, [ip]
	bcc	lab843
lab839: 	cmp	r1, #2560	
	mov	r3, r1, lsr #9
	bcs	lab844
	lsrs	r3, r1, #6
	add	r0, r3, #57	
	add	r2, r3, #56	
	lsls	r3, r0, #3
lab853: 	adds	r0, r7, r3
	ldr	r3, [r7, r3]
	subs	r0, #8
	cmp	r0, r3
	beq	lab845
lab847: 	ldr	r2, [r3, #4]
	bic	r2, r2, #3
	cmp	r2, r1
	bls	lab846
	ldr	r3, [r3, #8]
	cmp	r0, r3
	bne	lab847
lab846: 	ldr	r0, [r3, #12]
lab855: 	strd	r3, r0, [r5, #8]
	str	r5, [r0, #8]
	str	r5, [r3, #12]
	mov	r0, r6
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	__malloc_unlock
lab837: 	add	r2, ip, r3
	ldr	r2, [r2, #4]
	lsls	r2, r2, #31
	bmi	lab848
	add	r3, r1
	ldrd	r1, r2, [ip, #8]
	str	r2, [r1, #12]
	str	r1, [r2, #8]
	orr	r2, r3, #1
	str	r2, [r5, #4]
	mov	r0, r6
	str	r3, [r5, r3]
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	__malloc_unlock
lab835: 	add	r3, r1
	lsls	r1, r2, #31
	bmi	lab849
	ldr	r2, [r4, #-8]
	subs	r5, r5, r2
	add	r3, r2
	ldrd	r1, r2, [r5, #8]
	str	r2, [r1, #12]
	str	r1, [r2, #8]
lab849: 	orr	r2, r3, #1
	str	r2, [r5, #4]
	ldr	r2, =0x20001858	
	str	r5, [r7, #8]
	ldr	r2, [r2, #0]
	cmp	r2, r3
	bhi	lab850
	ldr	r3, =0x20002544	
	mov	r0, r6
	ldr	r1, [r3, #0]
	bl	_malloc_trim_r
	push {r1, r2}
	ldr r1, =1772
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab850
lab844: 	cmp	r3, #20
	bls	lab851
	cmp	r3, #84	
	bhi	lab852
	lsrs	r3, r1, #12
	add	r0, r3, #111	
	add	r2, r3, #110	
	lsls	r3, r0, #3
	b	lab853
lab838: 	add	r1, r3
	b	lab854
lab851: 	add	r0, r3, #92	
	add	r2, r3, #91	
	lsls	r3, r0, #3
	b	lab853
lab841: 	orr	r3, r1, #1
	strd	r5, r5, [r7, #16]
	strd	r0, r0, [r5, #8]
	str	r3, [r5, #4]
	str	r1, [r5, r1]
	b	lab850
lab845: 	ldr	r1, [r7, #4]
	asrs	r2, r2, #2
	movs	r4, #1
	lsl	r2, r4, r2
	orrs	r2, r1
	str	r2, [r7, #4]
	b	lab855
lab852: 	cmp	r3, #340	
	bhi	lab856
	lsrs	r3, r1, #15
	add	r0, r3, #120	
	add	r2, r3, #119	
	lsls	r3, r0, #3
	b	lab853
lab856: 	movw	r2, #1364	
	cmp	r3, r2
	bhi	lab857
	lsrs	r3, r1, #18
	add	r0, r3, #125	
	add	r2, r3, #124	
	lsls	r3, r0, #3
	b	lab853
lab857: 	mov	r3, #1016	
	movs	r2, #126	
	b	lab853
lab848: 	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [ip]
	b	lab850
	nop
	.ltorg
__sfvwrite_r:
	ldr	r3, [r2, #8]
	cmp	r3, #0
	beq	lab858
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrsh	r3, [r1, #12]
	mov	r4, r1
	lsls	r1, r3, #28
	mov	r8, r0
	sub	sp, #12
	mov	r7, r2
	uxth	r0, r3
	bpl	lab859
	ldr	r3, [r4, #16]
	cmp r3, #0
	beq lab859
	ands	r3, r0, #2
	ldr	r5, [r7, #0]
	beq	lab860
lab865: 	mov	sl, #0
	ldr	fp, =0x7ffffc00	
	mov	r6, sl
lab863: 	cmp	r6, fp
	mov	r3, r6
	mov	r2, sl
	it	cs
	movcs	r3, fp
	mov	r0, r8
	cmp	r6, #0
	beq	lab861
	ldr	r1, [r4, #28]
	ldr	ip, [r4, #36]	
	blx	ip
	cmp	r0, #0
	ble	lab862
	ldr	r3, [r7, #8]
	subs	r3, r3, r0
	add	sl, r0
	subs	r6, r6, r0
	str	r3, [r7, #8]
	cmp	r3, #0
	bne	lab863
lab871: 	movs	r0, #0
lab895: 	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =565
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab859: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =6152
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =6152
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab864
	ldrsh	r3, [r4, #12]
	ldr	r5, [r7, #0]
	uxth	r0, r3
	ands	r3, r0, #2
	bne	lab865
lab860: 	ands	r9, r0, #1
	bne	lab866
	mov	r6, r9
lab873: 	cmp r6, #0
	beq lab867
lab872: 	lsls	r2, r0, #22
	ldr	fp, [r4, #8]
	bpl	lab868
	cmp	fp, r6
	mov	r2, fp
	bhi	lab869
	tst	r0, #1152	
	bne	lab870
	ldr	r0, [r4, #0]
lab888: 	str	r2, [sp, #4]
	mov	r1, r9
push {r1, r2}
	ldr r1, =892
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =892
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #0]
	ldr	r2, [sp, #4]
	sub	r3, r3, fp
	add	r2, r1
	mov	sl, r6
	str	r3, [r4, #8]
	str	r2, [r4, #0]
	movs	r6, #0
lab886: 	ldr	r0, [r7, #8]
	sub	r0, r0, sl
	add	r9, sl
	str	r0, [r7, #8]
	cmp	r0, #0
	beq	lab871
	ldrsh	r0, [r4, #12]
	uxth	r0, r0
	cmp	r6, #0
	bne	lab872
lab867: 	ldrd	r9, r6, [r5]
	adds	r5, #8
	b	lab873
lab861: 	ldrd	sl, r6, [r5]
	adds	r5, #8
	b	lab863
lab880: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =1241
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =1241
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	beq lab874
lab862: 	ldrsh	r3, [r4, #12]
lab893: 	orr	r3, r3, #64	
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =279
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab858: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =7466
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
lab866: 	mov	r6, r3
	mov	sl, r5
	mov	r9, r3
	mov	r0, r3
	mov	r5, r3
	cmp r6, #0
	beq lab875
lab881: 	cmp r0, #0
	beq lab876
lab884: 	mov	r2, r9
lab894: 	ldrd	r1, r3, [r4, #16]
	ldr	r0, [r4, #0]
	cmp	r2, r6
	it	cs
	movcs	r2, r6
	cmp	r0, r1
	bls	lab877
	ldr	r1, [r4, #8]
	add	fp, r3, r1
	cmp	r2, fp
	bgt	lab878
lab877: 	cmp	r3, r2
	bgt	lab879
	ldr	r1, [r4, #28]
	ldr	ip, [r4, #36]	
	mov	r2, r5
	mov	r0, r8
	blx	ip
	subs	fp, r0, #0
	ble	lab862
lab889: 	subs	r9, r9, fp
	beq	lab880
	movs	r0, #1
lab874: 	ldr	r3, [r7, #8]
	sub	r3, r3, fp
	add	r5, fp
	sub	r6, r6, fp
	str	r3, [r7, #8]
	cmp	r3, #0
	beq	lab871
	cmp	r6, #0
	bne	lab881
lab875: 	add	r3, sl, #8
lab882: 	ldrd	r5, r6, [r3, #-8]
	mov	sl, r3
	adds	r3, #8
	cmp	r6, #0
	beq	lab882
lab876: 	mov	r2, r6
	movs	r1, #10
	mov	r0, r5
	bl	memchr
	cmp	r0, #0
	beq	lab883
	adds	r0, #1
	sub	r9, r0, r5
	b	lab884
lab868: 	ldr	r0, [r4, #0]
	ldr	r3, [r4, #16]
	cmp	r0, r3
	bhi	lab885
	ldr	r3, [r4, #20]
	cmp	r3, r6
	bhi	lab885
	mvn	r2, #2147483648	
	cmp	r2, r6
	it	cs
	movcs	r2, r6
	ldr	r1, [r4, #28]
	sdiv	r2, r2, r3
	ldr	ip, [r4, #36]	
	mul	r3, r2, r3
	mov	r0, r8
	mov	r2, r9
	blx	ip
	subs	sl, r0, #0
	ble	lab862
lab887: 	sub	r6, r6, sl
	b	lab886
lab885: 	cmp	fp, r6
	mov	sl, fp
	it	cs
	movcs	sl, r6
	mov	r2, sl
	mov	r1, r9
push {r1, r2}
	ldr r1, =1088
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =1088
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #0]
	sub	r3, r3, sl
	add	r2, sl
	str	r3, [r4, #8]
	str	r2, [r4, #0]
	cmp	r3, #0
	bne	lab887
	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =883
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =883
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab887
	b	lab862
lab869: 	ldr	r0, [r4, #0]
	mov	fp, r6
	mov	r2, r6
	b	lab888
lab879: 	mov	r1, r5
	str	r2, [sp, #4]
push {r1, r2}
	ldr r1, =3986
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3986
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r2, [sp, #4]
	ldr	r3, [r4, #8]
	subs	r3, r3, r2
	str	r3, [r4, #8]
	ldr	r3, [r4, #0]
	add	r3, r2
	str	r3, [r4, #0]
	mov	fp, r2
	b	lab889
lab870: 	ldr	r3, [r4, #0]
	ldr	r1, [r4, #16]
	sub	fp, r3, r1
	ldr	r3, [r4, #20]
	add	sl, r3, r3, lsl #1
	add	sl, sl, sl, lsr #31
	add	r3, fp, #1
	mov	sl, sl, asr #1
	add	r3, r6
	cmp	r3, sl
	mov	r2, sl
	itt	hi
	movhi	sl, r3
	movhi	r2, sl
	lsls	r3, r0, #21
	bpl	lab890
	mov	r1, r2
	mov	r0, r8
push {r1, r2}
	ldr r1, =3406
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =3406
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab891
	mov	r2, fp
	ldr	r1, [r4, #16]
	str	r0, [sp, #4]
	bl	memcpy
	ldrh	r2, [r4, #12]
	ldr	r3, [sp, #4]
	bic	r2, r2, #1152	
	orr	r2, r2, #128	
	strh	r2, [r4, #12]
lab892: 	add	r0, r3, fp
	str	r3, [r4, #16]
	sub	r3, sl, fp
	str	sl, [r4, #20]
	str	r3, [r4, #8]
	str	r0, [r4, #0]
	mov	fp, r6
	mov	r2, r6
	b	lab888
lab878: 	mov	r1, r5
	mov	r2, fp
push {r1, r2}
	ldr r1, =7894
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =7894
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #0]
	add	r3, fp
	str	r3, [r4, #0]
	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =6267
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =6267
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab889
	b	lab862
lab890: 	mov	r0, r8
push {r1, r2}
	ldr r1, =1238
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_realloc_r
	push {r1, r2}
	ldr r1, =1238
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r0
	cmp	r0, #0
	bne	lab892
	ldr	r1, [r4, #16]
	mov	r0, r8
push {r1, r2}
	ldr r1, =403
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =403
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	movs	r2, #12
	bic	r3, r3, #128	
	str	r2, [r8]
	b	lab893
lab883: 	adds	r2, r6, #1
	mov	r9, r2
	b	lab894
lab891: 	movs	r2, #12
	ldrsh	r3, [r4, #12]
	str	r2, [r8]
	b	lab893
lab864: 	mov	r0, #4294967295	
	b	lab895
	nop
	.ltorg
_fwalk:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r8, r1
	add	r7, r0, #736	
	movs	r6, #0
lab899: 	ldrd	r5, r4, [r7, #4]
	subs	r5, #1
	bmi	lab896
lab898: 	ldrh	r3, [r4, #12]
	cmp	r3, #1
	add	r5, r5, #4294967295	
	bls	lab897
	ldrsh	r3, [r4, #14]
	adds	r3, #1
	mov	r0, r4
	beq	lab897
	nop
	push {r1, r2}
	ldr r1, =2000
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r8
	orrs	r6, r0
lab897: 	adds	r3, r5, #1
	add	r4, r4, #104	
	bne	lab898
lab896: 	ldr	r7, [r7, #0]
	cmp	r7, #0
	bne	lab899
	mov	r0, r6
	nop
	push {r1, r2}
	ldr r1, =3756
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
_fwalk_reent:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r7, r0
	mov	r8, r1
	add	r6, r0, #736	
	mov	r9, #0
lab903: 	ldrd	r5, r4, [r6, #4]
	subs	r5, #1
	bmi	lab900
lab902: 	ldrh	r3, [r4, #12]
	cmp	r3, #1
	add	r5, r5, #4294967295	
	bls	lab901
	ldrsh	r3, [r4, #14]
	adds	r3, #1
	mov	r1, r4
	beq	lab901
	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =7165
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r8
	orr	r9, r9, r0
lab901: 	adds	r3, r5, #1
	add	r4, r4, #104	
	bne	lab902
lab900: 	ldr	r6, [r6, #0]
	cmp	r6, #0
	bne	lab903
	mov	r0, r9
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_setlocale_r:
	cmp r2, #0
	beq lab904
	push	{r4, lr}
	ldr	r1, =0x20000da0	
	mov	r0, r2
	mov	r4, r2
	bl	strcmp
	cmp r0, #0
	bne lab905
lab906: 	ldr	r0, =0x20000d9c	
	pop	{r4, pc}
lab904: 	ldr	r0, =0x20000d9c	
	bx	lr
lab905: 	ldr	r1, =0x20000d9c	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab906
	ldr	r1, =0x20000d14	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab906
	movs	r0, #0
	pop	{r4, pc}
	.ltorg
__locale_mb_cur_max:
	ldr	r3, =0x200012e0	
	ldrb	r0, [r3, #296]	
	bx	lr
	.ltorg
setlocale:
	cmp r1, #0
	beq lab907
	push	{r4, lr}
	mov	r4, r1
	mov	r0, r4
	ldr	r1, =0x20000da0	
	bl	strcmp
	cmp r0, #0
	bne lab908
lab909: 	ldr	r0, =0x20000d9c	
	pop	{r4, pc}
lab907: 	ldr	r0, =0x20000d9c	
	bx	lr
lab908: 	ldr	r1, =0x20000d9c	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab909
	ldr	r1, =0x20000d14	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab909
	movs	r0, #0
	pop	{r4, pc}
	.ltorg
__localeconv_l:
	adds	r0, #240	
	bx	lr
_localeconv_r:
	ldr	r0, =0x200013d0	
	bx	lr
	.ltorg
localeconv:
	ldr	r0, =0x200013d0	
	bx	lr
	.ltorg
__retarget_lock_init:
	bx	lr
	nop
__retarget_lock_init_recursive:
	bx	lr
	nop
__retarget_lock_close:
	bx	lr
	nop
__retarget_lock_close_recursive:
	bx	lr
	nop
__retarget_lock_acquire:
	bx	lr
	nop
__retarget_lock_acquire_recursive:
	bx	lr
	nop
__retarget_lock_try_acquire:
	movs	r0, #1
	bx	lr
__retarget_lock_try_acquire_recursive:
	movs	r0, #1
	bx	lr
__retarget_lock_release:
	bx	lr
	nop
__retarget_lock_release_recursive:
	bx	lr
	nop
__smakebuf_r:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	ldrh	r3, [r1, #12]
	mov	r4, r1
	lsls	r1, r3, #30
	sub	sp, #88	
	bpl	lab910
	add	r3, r4, #67	
	movs	r2, #1
	strd	r3, r2, [r4, #16]
	str	r3, [r4, #0]
lab917: 	add	sp, #88	
	nop
	push {r1, r2}
	ldr r1, =393
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab910: 	ldrsh	r1, [r4, #14]
	cmp	r1, #0
	mov	r6, r0
	blt	lab911
	mov	r2, sp
push {r1, r2}
	ldr r1, =3392
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fstat_r
	push {r1, r2}
	ldr r1, =3392
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab912
	ldr	r5, [sp, #4]
	and	r5, r5, #61440	
	sub	r5, r5, #8192	
	clz	r5, r5
	mov	r8, #1024	
	lsrs	r5, r5, #5
	mov	r7, #2048	
lab918: 	mov	r1, r8
	mov	r0, r6
push {r1, r2}
	ldr r1, =7811
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =7811
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	cmp r0, #0
	beq lab913
lab916: 	ldr	r2, =0x80056b5	
	str	r2, [r6, #60]	
	orr	r3, r3, #128	
	str	r8, [r4, #20]
	strh	r3, [r4, #12]
	str	r0, [r4, #0]
	str	r0, [r4, #16]
	cmp r5, #0
	bne lab914
lab920: 	orrs	r3, r7
	strh	r3, [r4, #12]
	add	sp, #88	
	nop
	push {r1, r2}
	ldr r1, =7972
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab912: 	ldrh	r3, [r4, #12]
lab911: 	ands	r5, r3, #128	
	beq	lab915
	mov	r8, #64	
	mov	r1, r8
	mov	r0, r6
push {r1, r2}
	ldr r1, =5229
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =5229
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r5, #0
	ldrsh	r3, [r4, #12]
	mov	r7, r5
	cmp	r0, #0
	bne	lab916
lab913: 	lsls	r2, r3, #22
	bmi	lab917
	bic	r3, r3, #3
	add	r2, r4, #67	
	orr	r3, r3, #2
	movs	r1, #1
	strd	r2, r1, [r4, #16]
	strh	r3, [r4, #12]
	str	r2, [r4, #0]
	b	lab917
lab915: 	mov	r8, #1024	
	mov	r7, r5
	b	lab918
lab914: 	ldrsh	r1, [r4, #14]
	mov	r0, r6
	bl	_isatty_r
	push {r1, r2}
	ldr r1, =5709
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab919
	ldrsh	r3, [r4, #12]
	b	lab920
lab919: 	ldrh	r3, [r4, #12]
	bic	r3, r3, #3
	orr	r3, r3, #1
	sxth	r3, r3
	b	lab920
	.ltorg
__swhatbuf_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldrsh	r1, [r1, #14]
	cmp	r1, #0
	sub	sp, #88	
	mov	r5, r2
	mov	r6, r3
	blt	lab921
	mov	r2, sp
push {r1, r2}
	ldr r1, =6673
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fstat_r
	push {r1, r2}
	ldr r1, =6673
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab921
	ldr	r2, [sp, #4]
	and	r2, r2, #61440	
	sub	r2, r2, #8192	
	clz	r2, r2
	mov	r3, #1024	
	lsrs	r2, r2, #5
	mov	r0, #2048	
	str	r2, [r6, #0]
	str	r3, [r5, #0]
	add	sp, #88	
	pop	{r4, r5, r6, pc}
lab921: 	ldrsh	r1, [r4, #12]
	movs	r3, #0
	ands	r0, r1, #128	
	str	r3, [r6, #0]
	beq	lab922
	movs	r2, #64	
	mov	r0, r3
	str	r2, [r5, #0]
	add	sp, #88	
	pop	{r4, r5, r6, pc}
lab922: 	mov	r3, #1024	
	str	r3, [r5, #0]
	add	sp, #88	
	pop	{r4, r5, r6, pc}
	nop
_malloc_r:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	r6, r1, #11
	cmp	r6, #22
	sub	sp, #12
	mov	r4, r0
	bhi	lab923
	cmp	r1, #16
	bhi	lab924
	bl	__malloc_lock
	movs	r6, #16
	movs	r2, #24
	movs	r0, #2
lab972: 	ldr	r7, =0x2000144c	
	add	r2, r7
	sub	r1, r2, #8
	ldr	r3, [r2, #4]
	cmp	r3, r1
	beq	lab925
lab946: 	ldr	r2, [r3, #4]
	ldr	r1, [r3, #12]
	bic	r2, r2, #3
	add	r2, r3
lab961: 	ldr	r5, [r3, #8]
	str	r1, [r5, #12]
	str	r5, [r1, #8]
	ldr	r1, [r2, #4]
	orr	r1, r1, #1
	mov	r0, r4
	str	r1, [r2, #4]
	add	r5, r3, #8
	bl	__malloc_unlock
	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =348
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab923: 	bics	r6, r6, #7
	bmi	lab924
	cmp	r1, r6
	bhi	lab924
	bl	__malloc_lock
	cmp	r6, #504	
	bcc	lab926
	lsrs	r3, r6, #9
	beq	lab927
	cmp	r3, #4
	bhi	lab928
	lsrs	r3, r6, #6
	add	r0, r3, #57	
	add	ip, r3, #56	
	lsls	r3, r0, #3
lab945: 	ldr	r7, =0x2000144c	
	add	r3, r7
	sub	r5, r3, #8
	ldr	r3, [r3, #4]
	cmp	r5, r3
	bne	lab929
	b	lab930
lab932: 	cmp	r1, #0
	bge	lab931
	ldr	r3, [r3, #12]
	cmp	r5, r3
	beq	lab930
lab929: 	ldr	r2, [r3, #4]
	bic	r2, r2, #3
	subs	r1, r2, r6
	cmp	r1, #15
	ble	lab932
	mov	r0, ip
lab930: 	ldr	r5, [r7, #16]
	ldr	ip, =0x20001454	
	cmp	r5, ip
	beq	lab933
lab947: 	ldr	r2, [r5, #4]
	bic	r2, r2, #3
	subs	r3, r2, r6
	cmp	r3, #15
	bgt	lab934
	cmp	r3, #0
	strd	ip, ip, [r7, #16]
	bge	lab935
	cmp	r2, #512	
	bcs	lab936
	lsrs	r3, r2, #3
	ldr	r1, [r7, #4]
	adds	r3, #1
	mov	lr, r2, lsr #5
	movs	r2, #1
	lsl	r2, r2, lr
	orrs	r2, r1
	ldr	lr, [r7, r3, lsl #3]
	str	lr, [r5, #8]
	add	r1, r7, r3, lsl #3
	subs	r1, #8
	str	r1, [r5, #12]
	str	r2, [r7, #4]
	str	r5, [r7, r3, lsl #3]
	str	r5, [lr, #12]
lab967: 	asrs	r3, r0, #2
	movs	r1, #1
	lsls	r1, r3
	cmp	r1, r2
	bhi	lab937
lab948: 	tst	r1, r2
	bne	lab938
	bic	r0, r0, #3
lab939: 	lsls	r1, r1, #1
	tst	r1, r2
	add	r0, r0, #4
	beq	lab939
lab938: 	add	r9, r7, r0, lsl #3
	mov	r5, r9
	mov	lr, r0
lab970: 	ldr	r8, [r5, #12]
	cmp	r5, r8
	bne	lab940
	b	lab941
lab943: 	cmp	r3, #0
	bge	lab942
	ldr	r8, [r8, #12]
	cmp	r5, r8
	beq	lab941
lab940: 	ldr	r2, [r8, #4]
	bic	r2, r2, #3
	subs	r3, r2, r6
	cmp	r3, #15
	ble	lab943
	mov	r0, r4
	ldrd	r5, r4, [r8, #8]
	add	r1, r8, r6
	orr	r6, r6, #1
	str	r6, [r8, #4]
	str	r4, [r5, #12]
	str	r5, [r4, #8]
	orr	r4, r3, #1
	strd	r1, r1, [r7, #16]
	strd	ip, ip, [r1, #8]
	str	r4, [r1, #4]
	str	r3, [r8, r2]
	bl	__malloc_unlock
	add	r5, r8, #8
	b	lab944
lab924: 	movs	r3, #12
	str	r3, [r4, #0]
	movs	r5, #0
lab944: 	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =6990
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab927: 	mov	r3, #512	
	movs	r0, #64	
	mov	ip, #63	
	b	lab945
lab925: 	ldr	r3, [r2, #12]
	cmp	r2, r3
	it	eq
	addeq	r0, #2
	bne	lab946
	ldr	r5, [r7, #16]
	ldr	ip, =0x20001454	
	cmp	r5, ip
	bne	lab947
lab933: 	ldr	r2, [r7, #4]
	asrs	r3, r0, #2
	movs	r1, #1
	lsls	r1, r3
	cmp	r1, r2
	bls	lab948
lab937: 	ldr	r5, [r7, #8]
	ldr	r3, [r5, #4]
	bic	r9, r3, #3
	cmp	r6, r9
	bhi	lab949
	sub	r3, r9, r6
	cmp	r3, #15
	bgt	lab950
lab949: 	ldr	fp, =0x20001854	
	ldr	r3, =0x20002544	
	ldr	r2, [fp]
	ldr	r3, [r3, #0]
	adds	r2, #1
	add	r3, r6
	add	sl, r5, r9
	beq	lab951
	add	r3, r3, #4096	
	adds	r3, #15
	bic	r8, r3, #4080	
	bic	r8, r8, #15
lab980: 	mov	r1, r8
	mov	r0, r4
push {r1, r2}
	ldr r1, =628
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =628
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r1, r0, #1
	mov	r2, r0
	beq	lab952
	cmp	sl, r0
	bhi	lab953
	ldr	r3, =0x20002514	
	ldr	r1, [r3, #0]
	add	r1, r8
	str	r1, [r3, #0]
	mov	r0, r1
	beq	lab954
lab986: 	ldr	r1, [fp]
	str	r3, [sp, #4]
	adds	r1, #1
	ittet	ne
	subne	sl, r2, sl
	addne	r0, sl
	streq	r2, [fp]
	strne	r0, [r3, #0]
	ands	fp, r2, #7
	beq	lab955
	rsb	r1, fp, #8
	add	r2, r1
	rsb	r1, fp, #4096	
	add	r8, r2
	adds	r1, #8
	sub	r1, r1, r8
	ubfx	sl, r1, #0, #12
	mov	r1, sl
	mov	r0, r4
	str	r2, [sp, #0]
push {r1, r2}
	ldr r1, =3261
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =3261
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r2, r0, #1
	ldrd	r2, r3, [sp]
	beq	lab956
lab982: 	subs	r0, r0, r2
	add	r8, r0, sl
lab983: 	ldr	r1, [r3, #0]
	str	r2, [r7, #8]
	orr	r0, r8, #1
	add	r1, sl
	cmp	r5, r7
	str	r0, [r2, #4]
	str	r1, [r3, #0]
	beq	lab957
	cmp	r9, #15
	bls	lab958
	ldr	r0, [r5, #4]
	sub	ip, r9, #12
	bic	ip, ip, #7
	and	r0, r0, #1
	orr	r0, r0, ip
	str	r0, [r5, #4]
	mov	lr, #5
	add	r0, r5, ip
	cmp	ip, #15
	strd	lr, lr, [r0, #4]
	bhi	lab959
	ldr	r0, [r2, #4]
	mov	r5, r2
lab987: 	ldr	r3, =0x2000253c	
	ldr	r2, [r3, #0]
	cmp	r2, r1
	it	cc
	strcc	r1, [r3, #0]
	ldr	r3, =0x20002540	
	ldr	r2, [r3, #0]
	cmp	r2, r1
	it	cc
	strcc	r1, [r3, #0]
	b	lab960
lab950: 	adds	r2, r5, r6
	orr	r3, r3, #1
	orr	r6, r6, #1
	str	r6, [r5, #4]
	mov	r0, r4
	str	r2, [r7, #8]
	str	r3, [r2, #4]
	bl	__malloc_unlock
	adds	r5, #8
	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =6337
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab931: 	ldr	r1, [r3, #12]
	add	r2, r3
	b	lab961
	nop
	.ltorg
lab936: 	cmp	r2, #2560	
	mov	r3, r2, lsr #9
	bcc	lab962
	cmp	r3, #20
	bhi	lab963
	add	r1, r3, #92	
	lsls	r1, r1, #3
	adds	r3, #91	
lab973: 	add	lr, r7, r1
	ldr	r1, [r7, r1]
	sub	lr, lr, #8
	cmp	lr, r1
	beq	lab964
lab966: 	ldr	r3, [r1, #4]
	bic	r3, r3, #3
	cmp	r3, r2
	bls	lab965
	ldr	r1, [r1, #8]
	cmp	lr, r1
	bne	lab966
lab965: 	ldr	lr, [r1, #12]
	ldr	r2, [r7, #4]
lab981: 	strd	r1, lr, [r5, #8]
	str	r5, [lr, #8]
	str	r5, [r1, #12]
	b	lab967
lab928: 	cmp	r3, #20
	bls	lab968
	cmp	r3, #84	
	bhi	lab969
	lsrs	r3, r6, #12
	add	r0, r3, #111	
	add	ip, r3, #110	
	lsls	r3, r0, #3
	b	lab945
lab941: 	add	lr, lr, #1
	tst	lr, #3
	add	r5, r5, #8
	bne	lab970
	b	lab971
lab942: 	add	r2, r8
	mov	r5, r8
	ldr	r3, [r2, #4]
	ldr	r1, [r8, #12]
	orr	r3, r3, #1
	str	r3, [r2, #4]
	ldr	r3, [r5, #8]!
	mov	r0, r4
	str	r1, [r3, #12]
	str	r3, [r1, #8]
	bl	__malloc_unlock
	b	lab944
lab926: 	lsrs	r0, r6, #3
	add	r2, r6, #8
	b	lab972
lab935: 	add	r2, r5
	mov	r0, r4
	ldr	r3, [r2, #4]
	orr	r3, r3, #1
	str	r3, [r2, #4]
	adds	r5, #8
	bl	__malloc_unlock
	b	lab944
lab934: 	adds	r1, r5, r6
	mov	r0, r4
	orr	r6, r6, #1
	orr	r4, r3, #1
	str	r6, [r5, #4]
	strd	r1, r1, [r7, #16]
	strd	ip, ip, [r1, #8]
	str	r4, [r1, #4]
	str	r3, [r5, r2]
	bl	__malloc_unlock
	adds	r5, #8
	b	lab944
lab962: 	lsrs	r3, r2, #6
	add	r1, r3, #57	
	lsls	r1, r1, #3
	adds	r3, #56	
	b	lab973
lab953: 	cmp	r5, r7
	beq	lab974
lab952: 	ldr	r5, [r7, #8]
	ldr	r0, [r5, #4]
lab960: 	bic	r8, r0, #3
	cmp	r6, r8
	sub	r3, r8, r6
	bhi	lab975
	cmp	r3, #15
	bgt	lab950
lab975: 	mov	r0, r4
	bl	__malloc_unlock
	movs	r5, #0
	b	lab944
lab968: 	add	r0, r3, #92	
	add	ip, r3, #91	
	lsls	r3, r0, #3
	b	lab945
lab977: 	ldr	r3, [r9], #-8
	cmp	r3, r9
	bne	lab976
lab971: 	tst	r0, #3
	add	r0, r0, #4294967295	
	bne	lab977
	ldr	r3, [r7, #4]
	bic	r3, r3, r1
	str	r3, [r7, #4]
lab991: 	lsls	r1, r1, #1
	cmp	r1, r3
	bhi	lab937
	cmp r1, #0
	bne lab978
	b	lab937
lab979: 	lsls	r1, r1, #1
	add	lr, lr, #4
lab978: 	tst	r1, r3
	beq	lab979
	mov	r0, lr
	b	lab938
lab951: 	add	r8, r3, #16
	b	lab980
lab964: 	asrs	r2, r3, #2
	mov	r8, #1
	ldr	r3, [r7, #4]
	lsl	r2, r8, r2
	orrs	r2, r3
	str	r2, [r7, #4]
	b	lab981
lab955: 	add	r1, r2, r8
	negs	r1, r1
	ubfx	sl, r1, #0, #12
	mov	r1, sl
	mov	r0, r4
	str	r2, [sp, #0]
push {r1, r2}
	ldr r1, =636
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =636
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	ldrd	r2, r3, [sp]
	bne	lab982
	mov	sl, fp
	b	lab983
lab963: 	cmp	r3, #84	
	bhi	lab984
	lsrs	r3, r2, #12
	add	r1, r3, #111	
	lsls	r1, r1, #3
	adds	r3, #110	
	b	lab973
lab969: 	cmp	r3, #340	
	bhi	lab985
	lsrs	r3, r6, #15
	add	r0, r3, #120	
	add	ip, r3, #119	
	lsls	r3, r0, #3
	b	lab945
lab974: 	ldr	r3, =0x20002514	
	ldr	r0, [r3, #0]
	add	r0, r8
	str	r0, [r3, #0]
	b	lab986
lab954: 	ubfx	ip, sl, #0, #12
	cmp	ip, #0
	bne	lab986
	ldr	r5, [r7, #8]
	add	r8, r9
	orr	r0, r8, #1
	str	r0, [r5, #4]
	b	lab987
lab957: 	mov	r5, r2
	b	lab987
lab958: 	movs	r3, #1
	str	r3, [r2, #4]
	b	lab975
lab984: 	cmp	r3, #340	
	bhi	lab988
	lsrs	r3, r2, #15
	add	r1, r3, #120	
	lsls	r1, r1, #3
	adds	r3, #119	
	b	lab973
lab985: 	movw	r2, #1364	
	cmp	r3, r2
	bhi	lab989
	lsrs	r3, r6, #18
	add	r0, r3, #125	
	add	ip, r3, #124	
	lsls	r3, r0, #3
	b	lab945
lab956: 	sub	fp, fp, #8
	add	r8, fp
	sub	r8, r8, r2
	mov	sl, #0
	b	lab983
lab959: 	add	r1, r5, #8
	mov	r0, r4
	str	r3, [sp, #0]
push {r1, r2}
	ldr r1, =7992
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =7992
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r5, [r7, #8]
	ldr	r3, [sp, #0]
	ldr	r0, [r5, #4]
	ldr	r1, [r3, #0]
	b	lab987
lab988: 	movw	r1, #1364	
	cmp	r3, r1
	bhi	lab990
	lsrs	r3, r2, #18
	add	r1, r3, #125	
	lsls	r1, r1, #3
	adds	r3, #124	
	b	lab973
lab989: 	mov	r3, #1016	
	movs	r0, #127	
	mov	ip, #126	
	b	lab945
lab990: 	mov	r1, #1016	
	movs	r3, #126	
	b	lab973
lab976: 	ldr	r3, [r7, #4]
	b	lab991
	.ltorg
_mbtowc_r:
	push	{r4}
	ldr	r4, =0x200012e0	
	ldr	r4, [r4, #228]	
	mov	ip, r4
	pop	{r4}
	bx	ip
	nop
	.ltorg
__ascii_mbtowc:
	sub	sp, #8
	cmp r1, #0
	beq lab992
	cmp r2, #0
	beq lab993
lab995: 	cmp r3, #0
	beq lab994
	ldrb	r3, [r2, #0]
	str	r3, [r1, #0]
	ldrb	r2, [r2, #0]
	subs	r0, r2, #0
	it	ne
	movne	r0, #1
lab996: 	add	sp, #8
	bx	lr
lab992: 	add	r1, sp, #4
	cmp	r2, #0
	bne	lab995
lab993: 	mov	r0, r2
	add	sp, #8
	bx	lr
lab994: 	mvn	r0, #1
	b	lab996
	nop
__malloc_lock:
	ldr	r0, =0x20002504	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__malloc_unlock:
	ldr	r0, =0x20002504	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
_realloc_r:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r7, r2
	cmp	r1, #0
	beq	lab997
	add	r5, r7, #11
	mov	r8, r0
	mov	r4, r1
	bl	__malloc_lock
	cmp	r5, #22
	bhi	lab998
	movs	r5, #16
	mov	r2, r5
lab1011: 	cmp	r7, r5
	bhi	lab999
	ldr	r1, [r4, #-4]
	bic	r6, r1, #3
	cmp	r6, r2
	sub	r9, r4, #8
	bge	lab1000
	ldr	r3, =0x2000144c	
	ldr	ip, [r3, #8]
	add	r0, r9, r6
	cmp	ip, r0
	beq	lab1001
	ldr	ip, [r0, #4]
	bic	r3, ip, #1
	add	r3, r0
	ldr	r3, [r3, #4]
	lsls	r3, r3, #31
	bmi	lab1002
	bic	ip, ip, #3
	add	r3, r6, ip
	cmp	r3, r2
	bge	lab1003
	lsls	r3, r1, #31
	bmi	lab1004
	ldr	r3, [r4, #-8]
	sub	sl, r9, r3
	ldr	r3, [sl, #4]
	bic	r1, r3, #3
	add	ip, r1
	add	ip, r6
	cmp	ip, r2
	bge	lab1005
lab1013: 	adds	r3, r6, r1
	cmp	r3, r2
	bge	lab1006
lab1004: 	mov	r1, r7
	mov	r0, r8
push {r1, r2}
	ldr r1, =7007
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =7007
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r7, r0
	cmp r0, #0
	beq lab1007
	ldr	r3, [r4, #-4]
	bic	r3, r3, #1
	add	r3, r9
	sub	r2, r0, #8
	cmp	r3, r2
	beq	lab1008
	subs	r2, r6, #4
	cmp	r2, #36	
	bhi	lab1009
	cmp	r2, #19
	bhi	lab1010
	mov	r3, r0
	mov	r2, r4
lab1021: 	ldr	r1, [r2, #0]
	str	r1, [r3, #0]
	ldr	r1, [r2, #4]
	str	r1, [r3, #4]
	ldr	r2, [r2, #8]
	str	r2, [r3, #8]
lab1025: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =5016
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1007:	push {r1, r2}
	ldr r1, =5016
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r8
	bl	__malloc_unlock
	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =1646
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab998: 	bic	r5, r5, #7
	cmp	r5, #0
	mov	r2, r5
	bge	lab1011
lab999: 	movs	r3, #12
	str	r3, [r8]
	movs	r7, #0
lab1019: 	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =7809
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab1003: 	mov	r6, r3
	ldrd	r2, r3, [r0, #8]
	str	r3, [r2, #12]
	str	r2, [r3, #8]
lab1000: 	subs	r3, r6, r5
	cmp	r3, #15
	bhi	lab1012
	ldr	r3, [r9, #4]
	and	r3, r3, #1
	orrs	r3, r6
	add	r6, r9
	str	r3, [r9, #4]
	ldr	r3, [r6, #4]
	orr	r3, r3, #1
	str	r3, [r6, #4]
lab1014: 	mov	r0, r8
	mov	r7, r4
	bl	__malloc_unlock
	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =2759
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab1002: 	lsls	r1, r1, #31
	bmi	lab1004
	ldr	r3, [r4, #-8]
	sub	sl, r9, r3
	ldr	r1, [sl, #4]
	bic	r1, r1, #3
	b	lab1013
lab997: 	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r1, r2
	b	_malloc_r
lab1012: 	ldr	r1, [r9, #4]
	and	r1, r1, #1
	orrs	r1, r5
	str	r1, [r9, #4]
	add	r1, r9, r5
	add	r6, r9
	orr	r3, r3, #1
	str	r3, [r1, #4]
	ldr	r3, [r6, #4]
	orr	r3, r3, #1
	adds	r1, #8
	str	r3, [r6, #4]
	mov	r0, r8
push {r1, r2}
	ldr r1, =2994
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =2994
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab1014
lab1001: 	ldr	r0, [ip, #4]
	bic	fp, r0, #3
	add	ip, r6, fp
	add	r0, r5, #16
	cmp	ip, r0
	bge	lab1015
	lsls	r1, r1, #31
	bmi	lab1004
	ldr	r1, [r4, #-8]
	sub	sl, r9, r1
	ldr	r1, [sl, #4]
	bic	r1, r1, #3
	add	fp, r1
	add	fp, r6
	cmp	r0, fp
	bgt	lab1013
	mov	r7, sl
	ldr	r1, [sl, #12]
	ldr	r0, [r7, #8]!
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r0, #12]
	str	r0, [r1, #8]
	bhi	lab1016
	cmp	r2, #19
	bls	lab1017
	ldr	r1, [r4, #0]
	str	r1, [sl, #8]
	ldr	r1, [r4, #4]
	str	r1, [sl, #12]
	cmp	r2, #27
	bhi	lab1018
	adds	r4, #8
	add	r2, sl, #16
lab1034: 	ldr	r1, [r4, #0]
	str	r1, [r2, #0]
	ldr	r1, [r4, #4]
	str	r1, [r2, #4]
	ldr	r1, [r4, #8]
	str	r1, [r2, #8]
lab1035: 	add	r1, sl, r5
	sub	r2, fp, r5
	orr	r2, r2, #1
	str	r1, [r3, #8]
	str	r2, [r1, #4]
	ldr	r3, [sl, #4]
	and	r3, r3, #1
	orrs	r5, r3
	mov	r0, r8
	str	r5, [sl, #4]
	bl	__malloc_unlock
	b	lab1019
lab1010: 	ldr	r3, [r4, #0]
	str	r3, [r0, #0]
	ldr	r3, [r4, #4]
	str	r3, [r0, #4]
	cmp	r2, #27
	bhi	lab1020
	add	r2, r4, #8
	add	r3, r0, #8
	b	lab1021
lab1015: 	add	r2, r9, r5
	str	r2, [r3, #8]
	sub	r3, ip, r5
	orr	r3, r3, #1
	str	r3, [r2, #4]
	ldr	r3, [r4, #-4]
	and	r3, r3, #1
	orrs	r5, r3
	mov	r0, r8
	str	r5, [r4, #-4]
	bl	__malloc_unlock
	mov	r7, r4
	b	lab1019
lab1008: 	ldr	r3, [r0, #-4]
	bic	r3, r3, #3
	add	r6, r3
	b	lab1000
lab1006: 	mov	r7, sl
	ldr	r1, [sl, #12]
	ldr	r0, [r7, #8]!
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r0, #12]
	str	r0, [r1, #8]
	bhi	lab1022
	cmp	r2, #19
	bls	lab1023
	ldr	r1, [r4, #0]
	str	r1, [sl, #8]
	ldr	r1, [r4, #4]
	str	r1, [sl, #12]
	cmp	r2, #27
	bhi	lab1024
	adds	r4, #8
	add	r2, sl, #16
lab1030: 	mov	r6, r3
	ldr	r3, [r4, #0]
	str	r3, [r2, #0]
	ldr	r3, [r4, #4]
	str	r3, [r2, #4]
	ldr	r3, [r4, #8]
	str	r3, [r2, #8]
	mov	r9, sl
	mov	r4, r7
	b	lab1000
lab1009: 	mov	r1, r4
push {r1, r2}
	ldr r1, =5624
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =5624
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab1025
lab1005: 	ldrd	r1, r3, [r0, #8]
	mov	r7, sl
	str	r3, [r1, #12]
	str	r1, [r3, #8]
	ldr	r1, [r7, #8]!
	ldr	r3, [sl, #12]
	str	r3, [r1, #12]
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r3, #8]
	bhi	lab1026
	cmp	r2, #19
	bls	lab1027
	ldr	r3, [r4, #0]
	str	r3, [sl, #8]
	ldr	r3, [r4, #4]
	str	r3, [sl, #12]
	cmp	r2, #27
	bhi	lab1028
	adds	r4, #8
	add	r3, sl, #16
lab1031: 	ldr	r2, [r4, #0]
	str	r2, [r3, #0]
	ldr	r2, [r4, #4]
	str	r2, [r3, #4]
	ldr	r2, [r4, #8]
	str	r2, [r3, #8]
	mov	r6, ip
	mov	r9, sl
	mov	r4, r7
	b	lab1000
lab1020: 	ldr	r3, [r4, #8]
	str	r3, [r0, #8]
	ldr	r3, [r4, #12]
	str	r3, [r0, #12]
	cmp	r2, #36	
	beq	lab1029
	add	r2, r4, #16
	add	r3, r0, #16
	b	lab1021
lab1023: 	mov	r2, r7
	b	lab1030
lab1022: 	mov	r1, r4
	mov	r0, r7
	mov	r6, r3
	mov	r9, sl
push {r1, r2}
	ldr r1, =3230
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3230
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r7
	b	lab1000
lab1027: 	mov	r3, r7
	b	lab1031
lab1026: 	mov	r1, r4
	mov	r0, r7
	mov	r6, ip
	mov	r9, sl
push {r1, r2}
	ldr r1, =2406
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =2406
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r7
	b	lab1000
	.ltorg
lab1024: 	ldr	r1, [r4, #8]
	str	r1, [sl, #16]
	ldr	r1, [r4, #12]
	str	r1, [sl, #20]
	cmp	r2, #36	
	beq	lab1032
	adds	r4, #16
	add	r2, sl, #24
	b	lab1030
lab1029: 	ldr	r3, [r4, #16]
	str	r3, [r0, #16]
	ldr	r1, [r4, #20]
	str	r1, [r0, #20]
	add	r2, r4, #24
	add	r3, r0, #24
	b	lab1021
lab1028: 	ldr	r3, [r4, #8]
	str	r3, [sl, #16]
	ldr	r3, [r4, #12]
	str	r3, [sl, #20]
	cmp	r2, #36	
	beq	lab1033
	adds	r4, #16
	add	r3, sl, #24
	b	lab1031
lab1017: 	mov	r2, r7
	b	lab1034
lab1016: 	mov	r1, r4
	mov	r0, r7
push {r1, r2}
	ldr r1, =3238
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3238
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x2000144c	
	b	lab1035
lab1032: 	ldr	r2, [r4, #16]
	str	r2, [sl, #24]
	ldr	r2, [r4, #20]
	str	r2, [sl, #28]
	adds	r4, #24
	add	r2, sl, #32
	b	lab1030
lab1018: 	ldr	r1, [r4, #8]
	str	r1, [sl, #16]
	ldr	r1, [r4, #12]
	str	r1, [sl, #20]
	cmp	r2, #36	
	beq	lab1036
	adds	r4, #16
	add	r2, sl, #24
	b	lab1034
lab1033: 	ldr	r3, [r4, #16]
	str	r3, [sl, #24]
	ldr	r3, [r4, #20]
	str	r3, [sl, #28]
	adds	r4, #24
	add	r3, sl, #32
	b	lab1031
lab1036: 	ldr	r2, [r4, #16]
	str	r2, [sl, #24]
	ldr	r2, [r4, #20]
	str	r2, [sl, #28]
	adds	r4, #24
	add	r2, sl, #32
	b	lab1034
	nop
	.ltorg
_sbrk_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x20002548	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_sbrk
	adds	r3, r0, #1
	beq	lab1037
lab1038:	nop
	push {r1, r2}
	ldr r1, =4242
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab1037: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1038
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =7511
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_init_signal_r:
	push	{r3, r4, r5, lr}
	ldr	r4, [r0, #732]	
	cmp r4, #0
	beq lab1039
lab1042: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab1039: 	movs	r1, #128	
	mov	r5, r0
push {r1, r2}
	ldr r1, =2379
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =2379
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab1040
	subs	r3, r0, #4
	adds	r2, #124	
lab1041: 	str	r4, [r3, #4]!
	cmp	r3, r2
	bne	lab1041
	b	lab1042
lab1040: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
_signal_r:
	cmp	r1, #31
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	bhi	lab1043
	ldr	r6, [r0, #732]	
	mov	r4, r1
	mov	r7, r2
	cmp r6, #0
	beq lab1044
lab1047: 	ldr	r0, [r6, r4, lsl #2]
	str	r7, [r6, r4, lsl #2]
	pop	{r3, r4, r5, r6, r7, pc}
lab1043: 	movs	r3, #22
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	pop	{r3, r4, r5, r6, r7, pc}
lab1044: 	movs	r1, #128	
push {r1, r2}
	ldr r1, =7865
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =7865
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r6, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab1045
	subs	r3, r0, #4
	add	r5, r0, #124	
	movs	r1, #0
lab1046: 	str	r1, [r3, #4]!
	cmp	r5, r3
	bne	lab1046
	b	lab1047
lab1045: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, r6, r7, pc}
_raise_r:
	cmp	r1, #31
	push	{r3, r4, r5, lr}
	mov	r5, r0
	bhi	lab1048
	ldr	r2, [r0, #732]	
	mov	r4, r1
	cmp r2, #0
	beq lab1049
	ldr	r3, [r2, r1, lsl #2]
	cmp r3, #0
	beq lab1049
	cmp	r3, #1
	beq	lab1050
	adds	r1, r3, #1
	beq	lab1051
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, r4, lsl #2]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab1049: 	mov	r0, r5
	bl	_getpid_r
	mov	r2, r4
	mov	r1, r0
	mov	r0, r5
	ldmia	sp!, {r3, r4, r5, lr}
	b	_kill_r
lab1051: 	movs	r3, #22
	str	r3, [r0, #0]
	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab1050: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab1048: 	movs	r3, #22
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	nop
__sigtramp_r:
	cmp	r1, #31
	bhi	lab1052
	ldr	r2, [r0, #732]	
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	cmp r2, #0
	beq lab1053
lab1059: 	ldr	r3, [r2, r4, lsl #2]
	add	r2, r2, r4, lsl #2
	cmp r3, #0
	beq lab1054
	adds	r1, r3, #1
	beq	lab1055
	cmp	r3, #1
	beq	lab1056
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, #0]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab1054: 	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab1053: 	movs	r1, #128	
push {r1, r2}
	ldr r1, =7829
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =7829
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab1057
	subs	r3, r0, #4
	movs	r1, #0
	adds	r0, #124	
lab1058: 	str	r1, [r3, #4]!
	cmp	r0, r3
	bne	lab1058
	b	lab1059
lab1056: 	movs	r0, #3
	pop	{r3, r4, r5, pc}
lab1055: 	movs	r0, #2
	pop	{r3, r4, r5, pc}
lab1057: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
lab1052: 	mov	r0, #4294967295	
	bx	lr
raise:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x20000eb4	
	cmp	r0, #31
	ldr	r5, [r3, #0]
	bhi	lab1060
	ldr	r2, [r5, #732]	
	mov	r4, r0
	cmp r2, #0
	beq lab1061
	ldr	r3, [r2, r0, lsl #2]
	cmp r3, #0
	beq lab1061
	cmp	r3, #1
	beq	lab1062
	adds	r1, r3, #1
	beq	lab1063
	movs	r5, #0
	str	r5, [r2, r0, lsl #2]
	blx	r3
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =5455
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab1061: 	mov	r0, r5
	bl	_getpid_r
	mov	r2, r4
	mov	r1, r0
	mov	r0, r5
	ldmia	sp!, {r3, r4, r5, lr}
	b	_kill_r
lab1063: 	movs	r3, #22
	str	r3, [r5, #0]
	movs	r0, #1
	nop
	push {r1, r2}
	ldr r1, =4748
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab1062: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =2171
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab1060: 	movs	r3, #22
	str	r3, [r5, #0]
	mov	r0, #4294967295	
	nop
	push {r1, r2}
	ldr r1, =1381
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	nop
	.ltorg
signal:
	ldr	r3, =0x20000eb4	
	cmp	r0, #31
	push	{r4, r5, r6, lr}
	ldr	r6, [r3, #0]
	bhi	lab1064
	mov	r5, r1
	ldr	r1, [r6, #732]	
	mov	r4, r0
	cmp r1, #0
	beq lab1065
lab1068: 	ldr	r0, [r1, r4, lsl #2]
	str	r5, [r1, r4, lsl #2]
	pop	{r4, r5, r6, pc}
lab1064: 	movs	r3, #22
	str	r3, [r6, #0]
	mov	r0, #4294967295	
	pop	{r4, r5, r6, pc}
lab1065: 	movs	r1, #128	
	mov	r0, r6
push {r1, r2}
	ldr r1, =1403
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1403
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r1, r0
	str	r0, [r6, #732]	
	cmp r0, #0
	beq lab1066
	subs	r3, r0, #4
	add	ip, r0, #124	
	movs	r2, #0
lab1067: 	str	r2, [r3, #4]!
	cmp	r3, ip
	bne	lab1067
	b	lab1068
lab1066: 	mov	r0, #4294967295	
	pop	{r4, r5, r6, pc}
	.ltorg
_init_signal:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x20000eb4	
	ldr	r5, [r3, #0]
	ldr	r4, [r5, #732]	
	cmp r4, #0
	beq lab1069
lab1072: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab1069: 	movs	r1, #128	
	mov	r0, r5
push {r1, r2}
	ldr r1, =5872
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =5872
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab1070
	subs	r3, r0, #4
	add	r2, r0, #124	
lab1071: 	str	r4, [r3, #4]!
	cmp	r3, r2
	bne	lab1071
	b	lab1072
lab1070: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	.ltorg
__sigtramp:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x20000eb4	
	cmp	r0, #31
	ldr	r5, [r3, #0]
	bhi	lab1073
	ldr	r2, [r5, #732]	
	mov	r4, r0
	cmp r2, #0
	beq lab1074
lab1079: 	ldr	r3, [r2, r4, lsl #2]
	add	r2, r2, r4, lsl #2
	cmp r3, #0
	beq lab1075
	adds	r1, r3, #1
	beq	lab1076
	cmp	r3, #1
	beq	lab1077
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, #0]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab1075: 	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab1074: 	movs	r1, #128	
	mov	r0, r5
push {r1, r2}
	ldr r1, =125
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =125
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab1073
	subs	r3, r0, #4
	movs	r1, #0
	adds	r0, #124	
lab1078: 	str	r1, [r3, #4]!
	cmp	r3, r0
	bne	lab1078
	b	lab1079
lab1077: 	movs	r0, #3
	pop	{r3, r4, r5, pc}
lab1076: 	movs	r0, #2
	pop	{r3, r4, r5, pc}
lab1073: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	nop
	.ltorg
_kill_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldr	r5, =0x20002548	
	mov	r3, r0
	movs	r6, #0
	mov	r0, r4
	mov	r1, r2
	mov	r4, r3
	str	r6, [r5, #0]
	bl	_kill
	adds	r3, r0, #1
	beq	lab1080
lab1081:	nop
	push {r1, r2}
	ldr r1, =1620
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab1080: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1081
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =6476
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
_getpid_r:
	b	_getpid
__sread:
	push	{r4, lr}
	mov	r4, r1
	ldrsh	r1, [r1, #14]
	bl	_read_r
	push {r1, r2}
	ldr r1, =6553
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab1082
	ldr	r3, [r4, #80]	
	add	r3, r0
	str	r3, [r4, #80]	
	pop	{r4, pc}
lab1082: 	ldrh	r3, [r4, #12]
	bic	r3, r3, #4096	
	strh	r3, [r4, #12]
	pop	{r4, pc}
	nop
__seofread:
	movs	r0, #0
	bx	lr
__swrite:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r1
	ldrsh	r1, [r1, #12]
	mov	r7, r3
	lsls	r3, r1, #23
	mov	r5, r0
	mov	r6, r2
	bmi	lab1083
lab1084: 	bic	r1, r1, #4096	
	strh	r1, [r4, #12]
	mov	r3, r7
	ldrsh	r1, [r4, #14]
	mov	r2, r6
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	b	_write_r
lab1083: 	ldrsh	r1, [r4, #14]
	movs	r3, #2
	movs	r2, #0
push {r1, r2}
	ldr r1, =5007
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_lseek_r
	push {r1, r2}
	ldr r1, =5007
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r1, [r4, #12]
	b	lab1084
	nop
__sseek:
	push	{r4, lr}
	mov	r4, r1
	ldrsh	r1, [r1, #14]
push {r1, r2}
	ldr r1, =7281
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_lseek_r
	push {r1, r2}
	ldr r1, =7281
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrh	r3, [r4, #12]
	adds	r2, r0, #1
	itee	eq
	biceq	r3, r3, #4096	
	orrne	r3, r3, #4096	
	strne	r0, [r4, #80]	
	strh	r3, [r4, #12]
	pop	{r4, pc}
__sclose:
	ldrsh	r1, [r1, #14]
	b	_close_r
strncpy:
	push	{r4, r5, lr}
	orr	r4, r0, r1
	lsls	r3, r4, #30
	bne	lab1085
	cmp	r2, #3
	bhi	lab1086
lab1085: 	mov	ip, r0
lab1090: 	add	lr, r1, #4294967295	
	b	lab1087
lab1089: 	ldrb	r1, [lr, #1]!
	strb	r1, [r3], #1
	subs	r4, r2, #1
	cmp r1, #0
	beq lab1088
	mov	ip, r3
	mov	r2, r4
lab1087: 	mov	r3, ip
	cmp	r2, #0
	bne	lab1089
lab1092:	nop
	push {r1, r2}
	ldr r1, =6750
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, pc}
lab1086: 	mov	r3, r1
	mov	ip, r0
lab1091: 	mov	r1, r3
	ldr	r5, [r3], #4
	sub	r4, r5, #16843009	
	bic	r4, r4, r5
	tst	r4, #2155905152	
	bne	lab1090
	subs	r2, #4
	cmp	r2, #3
	str	r5, [ip], #4
	mov	r1, r3
	bhi	lab1091
	b	lab1090
lab1088: 	add	r2, ip
	cmp	r4, #0
	beq	lab1092
lab1093: 	strb	r1, [r3], #1
	cmp	r3, r2
	bne	lab1093
	nop
	push {r1, r2}
	ldr r1, =7752
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
__swbuf_r:
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r1
	mov	r4, r2
	mov	r6, r0
	cmp r0, #0
	beq lab1094
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab1095
lab1094: 	ldrsh	r2, [r4, #12]
	ldr	r3, [r4, #24]
	str	r3, [r4, #8]
	lsls	r7, r2, #28
	uxth	r0, r2
	bpl	lab1096
	ldr	r3, [r4, #16]
	cmp r3, #0
	beq lab1096
	uxtb	r5, r5
	lsls	r1, r0, #18
	mov	r7, r5
	bpl	lab1097
lab1102: 	ldr	r2, [r4, #0]
	ldr	r1, [r4, #20]
	subs	r3, r2, r3
	cmp	r1, r3
	ble	lab1098
lab1103: 	adds	r3, #1
lab1104: 	ldr	r1, [r4, #8]
	subs	r1, #1
	str	r1, [r4, #8]
	adds	r1, r2, #1
	str	r1, [r4, #0]
	strb	r5, [r2, #0]
	ldr	r2, [r4, #20]
	cmp	r2, r3
	beq	lab1099
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #31
	bpl	lab1100
	cmp	r5, #10
	beq	lab1099
lab1100: 	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =4020
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab1096: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =6691
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =6691
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab1101
	ldrsh	r2, [r4, #12]
	ldr	r3, [r4, #16]
	uxth	r0, r2
	uxtb	r5, r5
	lsls	r1, r0, #18
	mov	r7, r5
	bmi	lab1102
lab1097: 	orr	r2, r2, #8192	
	strh	r2, [r4, #12]
	ldr	r2, [r4, #100]	
	ldr	r1, [r4, #20]
	bic	r2, r2, #8192	
	str	r2, [r4, #100]	
	ldr	r2, [r4, #0]
	subs	r3, r2, r3
	cmp	r1, r3
	bgt	lab1103
lab1098: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =7387
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =7387
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab1101
	ldr	r2, [r4, #0]
	movs	r3, #1
	b	lab1104
lab1095: 	bl	__sinit
	b	lab1094
lab1099: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =1898
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =1898
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab1100
lab1101: 	mov	r7, #4294967295	
	b	lab1100
__swbuf:
	push	{r4}
	ldr	r4, =0x20000eb4	
	mov	r3, r0
	mov	r2, r1
	ldr	r0, [r4, #0]
	pop	{r4}
	mov	r1, r3
	b	__swbuf_r
	nop
	.ltorg
_wcrtomb_r:
	push	{r4, r5, r6, lr}
	mov	r5, r0
	sub	sp, #16
	mov	r4, r3
	cmp r1, #0
	beq lab1105
	ldr	r6, =0x200012e0	
	ldr	r6, [r6, #224]	
	nop
	push {r1, r2}
	ldr r1, =1496
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	beq	lab1106
lab1107: 	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =5416
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab1105: 	mov	r2, r1
	ldr	r1, =0x200012e0	
	ldr	r6, [r1, #224]	
	add	r1, sp, #4
	nop
	push {r1, r2}
	ldr r1, =6265
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	bne	lab1107
lab1106: 	movs	r2, #0
	movs	r3, #138	
	str	r2, [r4, #0]
	str	r3, [r5, #0]
	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =4064
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
wcrtomb:
	push	{r4, r5, r6, lr}
	ldr	r3, =0x20000eb4	
	sub	sp, #16
	ldr	r5, [r3, #0]
	mov	r4, r2
	mov	r3, r1
	mov	r1, r0
	cmp r0, #0
	beq lab1108
	ldr	r0, =0x200012e0	
	mov	r2, r3
	ldr	r6, [r0, #224]	
	mov	r3, r4
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =1628
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	beq	lab1109
lab1110: 	add	sp, #16
	pop	{r4, r5, r6, pc}
lab1108: 	ldr	r2, =0x200012e0	
	mov	r3, r4
	ldr	r6, [r2, #224]	
	add	r1, sp, #4
	mov	r2, r0
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =6582
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	bne	lab1110
lab1109: 	movs	r2, #0
	movs	r3, #138	
	str	r2, [r4, #0]
	str	r3, [r5, #0]
	add	sp, #16
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
_wctomb_r:
	push	{r4}
	ldr	r4, =0x200012e0	
	ldr	r4, [r4, #224]	
	mov	ip, r4
	pop	{r4}
	bx	ip
	nop
	.ltorg
__ascii_wctomb:	push {r1, r2}
	ldr r1, =2360
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r1, #0
	beq lab1111
	cmp	r2, #255	
	bhi	lab1112
	strb	r2, [r1, #0]
	movs	r0, #1
	bx	lr
lab1112: 	movs	r3, #138	
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	bx	lr
lab1111: 	mov	r0, r1
	bx	lr
	nop
_write_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x20002548	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_write
	adds	r3, r0, #1
	beq	lab1113
lab1114: 	pop	{r3, r4, r5, pc}
lab1113: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1114
	str	r3, [r4, #0]
	pop	{r3, r4, r5, pc}
	.ltorg
_close_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x20002548	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_close
	adds	r3, r0, #1
	beq	lab1115
lab1116: 	pop	{r3, r4, r5, pc}
lab1115: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1116
	str	r3, [r4, #0]
	pop	{r3, r4, r5, pc}
	.ltorg
_fclose_r:
	push	{r4, r5, r6, lr}
	cmp	r1, #0
	beq	lab1117
	mov	r6, r0
	mov	r4, r1
	cmp r0, #0
	beq lab1118
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab1119
lab1118: 	ldr	r3, [r4, #100]	
	lsls	r0, r3, #31
	bpl	lab1120
lab1129: 	ldrsh	r3, [r4, #12]
	cmp	r3, #0
	beq	lab1117
lab1127: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =1511
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =1511
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #44]	
	mov	r5, r0
	cmp r3, #0
	beq lab1121
	ldr	r1, [r4, #28]
	mov	r0, r6
	blx	r3
	cmp	r0, #0
	it	lt
	movlt	r5, #4294967295	
lab1121: 	ldrh	r3, [r4, #12]
	lsls	r2, r3, #24
	bmi	lab1122
lab1130: 	ldr	r1, [r4, #48]	
	cmp r1, #0
	beq lab1123
	add	r3, r4, #64	
	cmp	r1, r3
	beq	lab1124
	mov	r0, r6
push {r1, r2}
	ldr r1, =5174
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1124:	push {r1, r2}
	ldr r1, =5174
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	movs	r3, #0
	str	r3, [r4, #48]	
lab1123: 	ldr	r1, [r4, #68]	
	cmp r1, #0
	beq lab1125
	mov	r0, r6
push {r1, r2}
	ldr r1, =1808
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =1808
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	str	r3, [r4, #68]	
lab1125: 	bl	__sfp_lock_acquire
	ldr	r3, [r4, #100]	
	movs	r2, #0
	lsls	r3, r3, #31
	strh	r2, [r4, #12]
	bpl	lab1126
lab1131: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_close_recursive
	bl	__sfp_lock_release
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab1120: 	ldrh	r3, [r4, #12]
	lsls	r1, r3, #22
	bmi	lab1127
	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	cmp	r3, #0
	bne	lab1127
	ldr	r5, [r4, #100]	
	ands	r5, r5, #1
	beq	lab1128
lab1117: 	movs	r5, #0
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab1119: 	bl	__sinit
	ldr	r3, [r4, #100]	
	lsls	r0, r3, #31
	bmi	lab1129
	b	lab1120
lab1128: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab1122: 	ldr	r1, [r4, #16]
	mov	r0, r6
push {r1, r2}
	ldr r1, =7343
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =7343
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab1130
lab1126: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	b	lab1131
fclose:
	ldr	r3, =0x20000eb4	
	mov	r1, r0
	ldr	r0, [r3, #0]
	b	_fclose_r
	nop
	.ltorg
_fstat_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldr	r5, =0x20002548	
	mov	r3, r0
	movs	r6, #0
	mov	r0, r4
	mov	r1, r2
	mov	r4, r3
	str	r6, [r5, #0]
	bl	_fstat
	adds	r3, r0, #1
	beq	lab1132
lab1133:	nop
	push {r1, r2}
	ldr r1, =1976
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab1132: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1133
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =3157
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
_isatty_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x20002548	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_isatty
	adds	r3, r0, #1
	beq	lab1134
lab1135:	nop
	push {r1, r2}
	ldr r1, =4814
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab1134: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1135
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =1188
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_lseek_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x20002548	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_lseek
	adds	r3, r0, #1
	beq	lab1136
lab1137:	nop
	push {r1, r2}
	ldr r1, =6793
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab1136: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1137
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =3082
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_read_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x20002548	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_read
	adds	r3, r0, #1
	beq	lab1138
lab1139:	nop
	push {r1, r2}
	ldr r1, =7312
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab1138: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1139
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =2218
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
cleanup_glue:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r6, [r1, #0]
	mov	r4, r1
	mov	r5, r0
	cmp r6, #0
	beq lab1140
	ldr	r7, [r6, #0]
	cmp r7, #0
	beq lab1141
	ldr	r8, [r7]
	cmp	r8, #0
	beq	lab1142
	ldr	r1, [r8]
	cmp r1, #0
	beq lab1143
push {r1, r2}
	ldr r1, =234
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	cleanup_glue
lab1143:	push {r1, r2}
	ldr r1, =234
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r8
	mov	r0, r5
push {r1, r2}
	ldr r1, =2293
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1142:	push {r1, r2}
	ldr r1, =2293
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r7
	mov	r0, r5
push {r1, r2}
	ldr r1, =2849
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1141:	push {r1, r2}
	ldr r1, =2849
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r6
	mov	r0, r5
push {r1, r2}
	ldr r1, =2677
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1140:	push {r1, r2}
	ldr r1, =2677
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r4
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	b	_free_r
_reclaim_reent:
	ldr	r3, =0x20000eb4	
	ldr	r3, [r3, #0]
	cmp	r3, r0
	beq	lab1144
	ldr	r1, [r0, #76]	
	push	{r4, r5, r6, lr}
	mov	r5, r0
	cmp r1, #0
	beq lab1145
	movs	r6, #0
lab1148: 	ldr	r4, [r1, r6]
	cmp r4, #0
	beq lab1146
lab1147: 	mov	r1, r4
	ldr	r4, [r4, #0]
	mov	r0, r5
push {r1, r2}
	ldr r1, =7323
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =7323
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r4, #0
	bne	lab1147
	ldr	r1, [r5, #76]	
lab1146: 	adds	r6, #4
	cmp	r6, #128	
	bne	lab1148
	mov	r0, r5
push {r1, r2}
	ldr r1, =888
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1145:	push {r1, r2}
	ldr r1, =888
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r1, [r5, #64]	
	cmp r1, #0
	beq lab1149
	mov	r0, r5
push {r1, r2}
	ldr r1, =417
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1149:	push {r1, r2}
	ldr r1, =417
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r4, [r5, #328]	
	cmp r4, #0
	beq lab1150
	add	r6, r5, #332	
	cmp	r4, r6
	beq	lab1150
lab1151: 	mov	r1, r4
	ldr	r4, [r4, #0]
	mov	r0, r5
push {r1, r2}
	ldr r1, =1690
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =1690
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r6, r4
	bne	lab1151
lab1150: 	ldr	r1, [r5, #84]	
	cmp r1, #0
	beq lab1152
	mov	r0, r5
push {r1, r2}
	ldr r1, =3038
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1152:	push {r1, r2}
	ldr r1, =3038
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r3, [r5, #56]	
	cmp r3, #0
	beq lab1153
	ldr	r3, [r5, #60]	
	mov	r0, r5
	blx	r3
	ldr	r4, [r5, #736]	
	cmp r4, #0
	beq lab1153
	ldr	r1, [r4, #0]
	cmp r1, #0
	beq lab1154
	mov	r0, r5
push {r1, r2}
	ldr r1, =4038
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	cleanup_glue
lab1154:	push {r1, r2}
	ldr r1, =4038
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r4
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, lr}
	b	_free_r
lab1153: 	pop	{r4, r5, r6, pc}
lab1144: 	bx	lr
	.ltorg
_close:
	ldr	r3, =0x20002548	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_fstat:
	ldr	r3, =0x20002548	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_getpid:
	ldr	r3, =0x20002548	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_isatty:
	ldr	r3, =0x20002548	
	movs	r2, #88	
	str	r2, [r3, #0]
	movs	r0, #0
	bx	lr
	nop
	.ltorg
_kill:
	ldr	r3, =0x20002548	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_lseek:
	ldr	r3, =0x20002548	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_read:
	ldr	r3, =0x20002548	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_sbrk:
	ldr	r2, =0x2000254c	
	ldr	r1, =0x20002550	
	ldr	r3, [r2, #0]
	cmp	r3, #0
	it	eq
	moveq	r3, r1
	add	r0, r3
	str	r0, [r2, #0]
	mov	r0, r3
	bx	lr
	.ltorg
_write:
	ldr	r3, =0x20002548	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_exit:
	b	_exit
	nop


	 .section .rodata

_sdata:
	.word	0x0800049f
	.word	0x08000231
	.word	0x08000235
	.word	0x0800031f
	.word	0x08000221
	.word	0x08000225
	.word	0x08000229
	.word	0x08000409
	.word	0x08000483
	.word	0x000003e8
	.word	0x00000001
	.word	0x000003e8
	.word	0x00000002
	.word	0x000003e8
	.word	0x0000000d
	.word	0x000003e8
	.word	0x00000012
	.word	0x000003e8
	.word	0x00000013
	.word	0x000003e8
	.word	0x0000001a
	.word	0x000003e8
	.word	0x0000001f
	.word	0x000003e8
	.word	0x00000020
	.word	0x000003e8
	.word	0x00000023
	.word	0x000003e8
	.word	0x00000024
	.word	0x000003e8
	.word	0x00000025
	.word	0x000003e8
	.word	0x0000002e
	.word	0x000003e8
	.word	0x00000031
	.word	0x000003e8
	.word	0x00000037
	.word	0x000003e8
	.word	0x0000003d
	.word	0x000003e8
	.word	0x0000003e
	.word	0x000003e8
	.word	0x00000042
	.word	0x000003e8
	.word	0x00000048
	.word	0x000003e8
	.word	0x00000049
	.word	0x000003e8
	.word	0x0000004a
	.word	0x000003e8
	.word	0x0000004b
	.word	0x000003e8
	.word	0x0000004c
	.word	0x000003e8
	.word	0x0000004d
	.word	0x000003e8
	.word	0x00000051
	.word	0x000003e8
	.word	0x00000052
	.word	0x000003e8
	.word	0x00000053
	.word	0x000003e8
	.word	0x00000057
	.word	0x000003e8
	.word	0x00000059
	.word	0x000003e8
	.word	0x0000005b
	.word	0x000003e8
	.word	0x0000005c
	.word	0x000003e8
	.word	0x0000005f
	.word	0x000003e8
	.word	0x00000063
	.word	0x000003e8
	.word	0x00000065
	.word	0x000003e8
	.word	0x00000069
	.word	0x000003e8
	.word	0x0000006c
	.word	0x000003e8
	.word	0x0000006d
	.word	0x000003e8
	.word	0x00000072
	.word	0x000003e8
	.word	0x00000077
	.word	0x000003e8
	.word	0x00000078
	.word	0x000003e8
	.word	0x00000080
	.word	0x000003e8
	.word	0x00000089
	.word	0x000003e8
	.word	0x0000008f
	.word	0x000003e8
	.word	0x00000090
	.word	0x000003e8
	.word	0x00000097
	.word	0x000003e8
	.word	0x0000009e
	.word	0x000003e8
	.word	0x000000a1
	.word	0x000003e8
	.word	0x000000a2
	.word	0x000003e8
	.word	0x000000a5
	.word	0x000003e8
	.word	0x000000a9
	.word	0x000003e8
	.word	0x000000b5
	.word	0x000003e8
	.word	0x000000b6
	.word	0x000003e8
	.word	0x000000bb
	.word	0x000003e8
	.word	0x000000bc
	.word	0x000003e8
	.word	0x000000be
	.word	0x000003e8
	.word	0x000000c3
	.word	0x000003e8
	.word	0x000000c4
	.word	0x000003e8
	.word	0x000000c6
	.word	0x000003e8
	.word	0x000000c8
	.word	0x000003e8
	.word	0x000000c9
	.word	0x000003e8
	.word	0x000000cd
	.word	0x000003e8
	.word	0x000000ce
	.word	0x000003e8
	.word	0x000000d3
	.word	0x000003e8
	.word	0x000000d4
	.word	0x000003e8
	.word	0x000000d5
	.word	0x000003e8
	.word	0x000000d6
	.word	0x000003e8
	.word	0x000000d7
	.word	0x000003e8
	.word	0x000000d9
	.word	0x000003e8
	.word	0x000000dd
	.word	0x000003e8
	.word	0x000000df
	.word	0x000003e8
	.word	0x000000e1
	.word	0x000003e8
	.word	0x000000e2
	.word	0x000003e8
	.word	0x000000e3
	.word	0x000003e8
	.word	0x000000e9
	.word	0x000003e8
	.word	0x000000f2
	.word	0x000003e8
	.word	0x000000f5
	.word	0x000003e8
	.word	0x000000f9
	.word	0x000003e8
	.word	0x000000fa
	.word	0x000003e8
	.word	0x0000010a
	.word	0x000003e8
	.word	0x0000010e
	.word	0x000003e8
	.word	0x0000010f
	.word	0x000003e8
	.word	0x00000111
	.word	0x000003e8
	.word	0x00000112
	.word	0x000003e8
	.word	0x00000118
	.word	0x000003e8
	.word	0x0000011f
	.word	0x000003e8
	.word	0x00000123
	.word	0x000003e8
	.word	0x00000127
	.word	0x000003e8
	.word	0x0000012b
	.word	0x000003e8
	.word	0x0000012f
	.word	0x000003e8
	.word	0x00000130
	.word	0x000003e8
	.word	0x00000138
	.word	0x000003e8
	.word	0x00000148
	.word	0x000003e8
	.word	0x0000014a
	.word	0x000003e8
	.word	0x0000014d
	.word	0x000003e8
	.word	0x00000153
	.word	0x000003e8
	.word	0x00000156
	.word	0x000003e8
	.word	0x0000015a
	.word	0x000003e8
	.word	0x0000015e
	.word	0x000003e8
	.word	0x00000169
	.word	0x000003e8
	.word	0x00000173
	.word	0x000003e8
	.word	0x00000178
	.word	0x000003e8
	.word	0x0000017a
	.word	0x000003e8
	.word	0x0000017e
	.word	0x000003e8
	.word	0x00000180
	.word	0x000003e8
	.word	0x00000181
	.word	0x000003e8
	.word	0x00000186
	.word	0x000003e8
	.word	0x0000018c
	.word	0x000003e9
	.word	0x00000005
	.word	0x000003e9
	.word	0x00000007
	.word	0x000003e9
	.word	0x00000008
	.word	0x000003e9
	.word	0x0000000b
	.word	0x000003e9
	.word	0x00000010
	.word	0x000003e9
	.word	0x00000014
	.word	0x000003e9
	.word	0x00000015
	.word	0x000003e9
	.word	0x00000016
	.word	0x000003e9
	.word	0x0000001d
	.word	0x000003e9
	.word	0x00000022
	.word	0x000003e9
	.word	0x00000027
	.word	0x000003e9
	.word	0x00000028
	.word	0x000003e9
	.word	0x00000029
	.word	0x000003e9
	.word	0x0000002a
	.word	0x000003e9
	.word	0x0000002f
	.word	0x000003e9
	.word	0x00000036
	.word	0x000003e9
	.word	0x0000003f
	.word	0x000003e9
	.word	0x00000044
	.word	0x000003e9
	.word	0x00000047
	.word	0x000003e9
	.word	0x0000004e
	.word	0x000003e9
	.word	0x00000054
	.word	0x000003e9
	.word	0x00000055
	.word	0x000003e9
	.word	0x0000005d
	.word	0x000003e9
	.word	0x00000060
	.word	0x000003e9
	.word	0x00000061
	.word	0x000003e9
	.word	0x00000067
	.word	0x000003e9
	.word	0x00000068
	.word	0x000003e9
	.word	0x0000006b
	.word	0x000003e9
	.word	0x00000075
	.word	0x000003e9
	.word	0x00000081
	.word	0x000003e9
	.word	0x0000008b
	.word	0x000003e9
	.word	0x0000008c
	.word	0x000003e9
	.word	0x00000094
	.word	0x000003e9
	.word	0x0000009c
	.word	0x000003e9
	.word	0x000000a0
	.word	0x000003e9
	.word	0x000000a7
	.word	0x000003e9
	.word	0x000000ac
	.word	0x000003e9
	.word	0x000000ae
	.word	0x000003e9
	.word	0x000000af
	.word	0x000003e9
	.word	0x000000b3
	.word	0x000003e9
	.word	0x000000b9
	.word	0x000003e9
	.word	0x000000ba
	.word	0x000003e9
	.word	0x000000c1
	.word	0x000003e9
	.word	0x000000c2
	.word	0x000003e9
	.word	0x000000cf
	.word	0x000003e9
	.word	0x000000d0
	.word	0x000003e9
	.word	0x000000d8
	.word	0x000003e9
	.word	0x000000db
	.word	0x000003e9
	.word	0x000000e0
	.word	0x000003e9
	.word	0x000000e4
	.word	0x000003e9
	.word	0x000000e5
	.word	0x000003e9
	.word	0x000000eb
	.word	0x000003e9
	.word	0x000000ed
	.word	0x000003e9
	.word	0x000000f0
	.word	0x000003e9
	.word	0x000000f6
	.word	0x000003e9
	.word	0x000000fc
	.word	0x000003e9
	.word	0x000000ff
	.word	0x000003e9
	.word	0x00000100
	.word	0x000003e9
	.word	0x00000101
	.word	0x000003e9
	.word	0x00000103
	.word	0x000003e9
	.word	0x00000104
	.word	0x000003e9
	.word	0x00000105
	.word	0x000003e9
	.word	0x00000109
	.word	0x000003e9
	.word	0x0000010b
	.word	0x000003e9
	.word	0x0000010d
	.word	0x000003e9
	.word	0x00000113
	.word	0x000003e9
	.word	0x0000011e
	.word	0x000003e9
	.word	0x00000120
	.word	0x000003e9
	.word	0x00000121
	.word	0x000003e9
	.word	0x00000126
	.word	0x000003e9
	.word	0x0000012d
	.word	0x000003e9
	.word	0x0000012e
	.word	0x000003e9
	.word	0x00000134
	.word	0x000003e9
	.word	0x00000135
	.word	0x000003e9
	.word	0x0000013a
	.word	0x000003e9
	.word	0x00000142
	.word	0x000003e9
	.word	0x00000143
	.word	0x000003e9
	.word	0x00000145
	.word	0x000003e9
	.word	0x00000146
	.word	0x000003e9
	.word	0x00000147
	.word	0x000003e9
	.word	0x0000014e
	.word	0x000003e9
	.word	0x00000151
	.word	0x000003e9
	.word	0x00000155
	.word	0x000003e9
	.word	0x0000015b
	.word	0x000003e9
	.word	0x00000160
	.word	0x000003e9
	.word	0x00000165
	.word	0x000003e9
	.word	0x00000168
	.word	0x000003e9
	.word	0x0000016b
	.word	0x000003e9
	.word	0x0000016d
	.word	0x000003e9
	.word	0x0000016e
	.word	0x000003e9
	.word	0x00000171
	.word	0x000003e9
	.word	0x00000177
	.word	0x000003e9
	.word	0x0000017b
	.word	0x000003e9
	.word	0x0000017d
	.word	0x000003e9
	.word	0x00000189
	.word	0x000003e9
	.word	0x0000018a
	.word	0x000003e9
	.word	0x0000018e
	.word	0x000003ea
	.word	0x00000009
	.word	0x000003ea
	.word	0x00000011
	.word	0x000003ea
	.word	0x00000017
	.word	0x000003ea
	.word	0x00000018
	.word	0x000003ea
	.word	0x0000001e
	.word	0x000003ea
	.word	0x00000021
	.word	0x000003ea
	.word	0x00000026
	.word	0x000003ea
	.word	0x0000002b
	.word	0x000003ea
	.word	0x0000002d
	.word	0x000003ea
	.word	0x00000035
	.word	0x000003ea
	.word	0x00000039
	.word	0x000003ea
	.word	0x0000003b
	.word	0x000003ea
	.word	0x0000003c
	.word	0x000003ea
	.word	0x00000040
	.word	0x000003ea
	.word	0x00000045
	.word	0x000003ea
	.word	0x00000046
	.word	0x000003ea
	.word	0x0000004f
	.word	0x000003ea
	.word	0x00000058
	.word	0x000003ea
	.word	0x0000005e
	.word	0x000003ea
	.word	0x00000062
	.word	0x000003ea
	.word	0x00000064
	.word	0x000003ea
	.word	0x0000006e
	.word	0x000003ea
	.word	0x0000006f
	.word	0x000003ea
	.word	0x00000073
	.word	0x000003ea
	.word	0x00000076
	.word	0x000003ea
	.word	0x0000007b
	.word	0x000003ea
	.word	0x0000007d
	.word	0x000003ea
	.word	0x0000007f
	.word	0x000003ea
	.word	0x00000082
	.word	0x000003ea
	.word	0x00000083
	.word	0x000003ea
	.word	0x00000086
	.word	0x000003ea
	.word	0x00000088
	.word	0x000003ea
	.word	0x0000008a
	.word	0x000003ea
	.word	0x0000008e
	.word	0x000003ea
	.word	0x00000092
	.word	0x000003ea
	.word	0x00000095
	.word	0x000003ea
	.word	0x00000096
	.word	0x000003ea
	.word	0x00000098
	.word	0x000003ea
	.word	0x00000099
	.word	0x000003ea
	.word	0x0000009d
	.word	0x000003ea
	.word	0x000000a3
	.word	0x000003ea
	.word	0x000000a6
	.word	0x000003ea
	.word	0x000000a8
	.word	0x000003ea
	.word	0x000000aa
	.word	0x000003ea
	.word	0x000000ab
	.word	0x000003ea
	.word	0x000000ad
	.word	0x000003ea
	.word	0x000000b0
	.word	0x000003ea
	.word	0x000000b1
	.word	0x000003ea
	.word	0x000000b4
	.word	0x000003ea
	.word	0x000000b7
	.word	0x000003ea
	.word	0x000000b8
	.word	0x000003ea
	.word	0x000000bd
	.word	0x000003ea
	.word	0x000000bf
	.word	0x000003ea
	.word	0x000000c5
	.word	0x000003ea
	.word	0x000000ca
	.word	0x000003ea
	.word	0x000000cb
	.word	0x000003ea
	.word	0x000000cc
	.word	0x000003ea
	.word	0x000000d2
	.word	0x000003ea
	.word	0x000000da
	.word	0x000003ea
	.word	0x000000dc
	.word	0x000003ea
	.word	0x000000e8
	.word	0x000003ea
	.word	0x000000ec
	.word	0x000003ea
	.word	0x000000ee
	.word	0x000003ea
	.word	0x000000f1
	.word	0x000003ea
	.word	0x000000f3
	.word	0x000003ea
	.word	0x000000f4
	.word	0x000003ea
	.word	0x000000fb
	.word	0x000003ea
	.word	0x000000fd
	.word	0x000003ea
	.word	0x000000fe
	.word	0x000003ea
	.word	0x00000102
	.word	0x000003ea
	.word	0x00000108
	.word	0x000003ea
	.word	0x00000110
	.word	0x000003ea
	.word	0x00000115
	.word	0x000003ea
	.word	0x00000117
	.word	0x000003ea
	.word	0x0000011a
	.word	0x000003ea
	.word	0x0000011b
	.word	0x000003ea
	.word	0x0000011c
	.word	0x000003ea
	.word	0x00000122
	.word	0x000003ea
	.word	0x00000124
	.word	0x000003ea
	.word	0x00000128
	.word	0x000003ea
	.word	0x00000129
	.word	0x000003ea
	.word	0x0000012a
	.word	0x000003ea
	.word	0x0000012c
	.word	0x000003ea
	.word	0x00000132
	.word	0x000003ea
	.word	0x00000133
	.word	0x000003ea
	.word	0x00000136
	.word	0x000003ea
	.word	0x00000137
	.word	0x000003ea
	.word	0x0000013b
	.word	0x000003ea
	.word	0x0000013c
	.word	0x000003ea
	.word	0x0000013f
	.word	0x000003ea
	.word	0x00000141
	.word	0x000003ea
	.word	0x00000144
	.word	0x000003ea
	.word	0x0000014b
	.word	0x000003ea
	.word	0x0000014f
	.word	0x000003ea
	.word	0x00000154
	.word	0x000003ea
	.word	0x00000158
	.word	0x000003ea
	.word	0x0000015d
	.word	0x000003ea
	.word	0x00000161
	.word	0x000003ea
	.word	0x00000162
	.word	0x000003ea
	.word	0x00000166
	.word	0x000003ea
	.word	0x0000016a
	.word	0x000003ea
	.word	0x0000016c
	.word	0x000003ea
	.word	0x00000172
	.word	0x000003ea
	.word	0x00000176
	.word	0x000003ea
	.word	0x0000017c
	.word	0x000003ea
	.word	0x0000017f
	.word	0x000003ea
	.word	0x00000182
	.word	0x000003ea
	.word	0x00000185
	.word	0x000003ea
	.word	0x00000187
	.word	0x000003ea
	.word	0x00000188
	.word	0x000003ea
	.word	0x0000018d
	.word	0x000003eb
	.word	0x00000000
	.word	0x000003eb
	.word	0x00000003
	.word	0x000003eb
	.word	0x00000004
	.word	0x000003eb
	.word	0x00000006
	.word	0x000003eb
	.word	0x0000000a
	.word	0x000003eb
	.word	0x0000000c
	.word	0x000003eb
	.word	0x0000000e
	.word	0x000003eb
	.word	0x0000000f
	.word	0x000003eb
	.word	0x00000019
	.word	0x000003eb
	.word	0x0000001b
	.word	0x000003eb
	.word	0x0000001c
	.word	0x000003eb
	.word	0x0000002c
	.word	0x000003eb
	.word	0x00000030
	.word	0x000003eb
	.word	0x00000032
	.word	0x000003eb
	.word	0x00000033
	.word	0x000003eb
	.word	0x00000034
	.word	0x000003eb
	.word	0x00000038
	.word	0x000003eb
	.word	0x0000003a
	.word	0x000003eb
	.word	0x00000041
	.word	0x000003eb
	.word	0x00000043
	.word	0x000003eb
	.word	0x00000050
	.word	0x000003eb
	.word	0x00000056
	.word	0x000003eb
	.word	0x0000005a
	.word	0x000003eb
	.word	0x00000066
	.word	0x000003eb
	.word	0x0000006a
	.word	0x000003eb
	.word	0x00000070
	.word	0x000003eb
	.word	0x00000071
	.word	0x000003eb
	.word	0x00000074
	.word	0x000003eb
	.word	0x00000079
	.word	0x000003eb
	.word	0x0000007a
	.word	0x000003eb
	.word	0x0000007c
	.word	0x000003eb
	.word	0x0000007e
	.word	0x000003eb
	.word	0x00000084
	.word	0x000003eb
	.word	0x00000085
	.word	0x000003eb
	.word	0x00000087
	.word	0x000003eb
	.word	0x0000008d
	.word	0x000003eb
	.word	0x00000091
	.word	0x000003eb
	.word	0x00000093
	.word	0x000003eb
	.word	0x0000009a
	.word	0x000003eb
	.word	0x0000009b
	.word	0x000003eb
	.word	0x0000009f
	.word	0x000003eb
	.word	0x000000a4
	.word	0x000003eb
	.word	0x000000b2
	.word	0x000003eb
	.word	0x000000c0
	.word	0x000003eb
	.word	0x000000c7
	.word	0x000003eb
	.word	0x000000d1
	.word	0x000003eb
	.word	0x000000de
	.word	0x000003eb
	.word	0x000000e6
	.word	0x000003eb
	.word	0x000000e7
	.word	0x000003eb
	.word	0x000000ea
	.word	0x000003eb
	.word	0x000000ef
	.word	0x000003eb
	.word	0x000000f7
	.word	0x000003eb
	.word	0x000000f8
	.word	0x000003eb
	.word	0x00000106
	.word	0x000003eb
	.word	0x00000107
	.word	0x000003eb
	.word	0x0000010c
	.word	0x000003eb
	.word	0x00000114
	.word	0x000003eb
	.word	0x00000116
	.word	0x000003eb
	.word	0x00000119
	.word	0x000003eb
	.word	0x0000011d
	.word	0x000003eb
	.word	0x00000125
	.word	0x000003eb
	.word	0x00000131
	.word	0x000003eb
	.word	0x00000139
	.word	0x000003eb
	.word	0x0000013d
	.word	0x000003eb
	.word	0x0000013e
	.word	0x000003eb
	.word	0x00000140
	.word	0x000003eb
	.word	0x00000149
	.word	0x000003eb
	.word	0x0000014c
	.word	0x000003eb
	.word	0x00000150
	.word	0x000003eb
	.word	0x00000152
	.word	0x000003eb
	.word	0x00000157
	.word	0x000003eb
	.word	0x00000159
	.word	0x000003eb
	.word	0x0000015c
	.word	0x000003eb
	.word	0x0000015f
	.word	0x000003eb
	.word	0x00000163
	.word	0x000003eb
	.word	0x00000164
	.word	0x000003eb
	.word	0x00000167
	.word	0x000003eb
	.word	0x0000016f
	.word	0x000003eb
	.word	0x00000170
	.word	0x000003eb
	.word	0x00000174
	.word	0x000003eb
	.word	0x00000175
	.word	0x000003eb
	.word	0x00000179
	.word	0x000003eb
	.word	0x00000183
	.word	0x000003eb
	.word	0x00000184
	.word	0x000003eb
	.word	0x0000018b
	.word	0x000003eb
	.word	0x0000018f
max_size:
	.word	0x00000190
	.word	0x70616568
	.word	0x7a69735f
	.word	0x20252065
	.word	0x657a6973
	.word	0x7628666f
	.word	0x2064696f
	.word	0x3d20292a
	.word	0x0030203d
	.word	0x64656d2f
	.word	0x732f6169
	.word	0x68535f66
	.word	0x64657261
	.word	0x63756e2f
	.word	0x2f6f656c
	.word	0x732f7773
	.word	0x6f707075
	.word	0x732f7472
	.word	0x622f6372
	.word	0x73626565
	.word	0x00632e63
__func__.0:
	.word	0x74696e69
	.word	0x6165685f
	.word	0x65625f70
	.word	0x00736265
	.word	0x7566202c
	.word	0x6974636e
	.word	0x203a6e6f
	.word	0x00000000
	.word	0x65737361
	.word	0x6f697472
	.word	0x2522206e
	.word	0x66202273
	.word	0x656c6961
	.word	0x66203a64
	.word	0x20656c69
	.word	0x22732522
	.word	0x696c202c
	.word	0x2520656e
	.word	0x25732564
	.word	0x00000a73
_global_impure_ptr:
	.word	0x20000eb8
	.word	0x33323130
	.word	0x37363534
	.word	0x42413938
	.word	0x46454443
	.word	0x00000000
	.word	0x33323130
	.word	0x37363534
	.word	0x62613938
	.word	0x66656463
	.word	0x00000000
	.word	0x6c756e28
	.word	0x0000296c
blanks.1:
	.word	0x20202020
	.word	0x20202020
	.word	0x20202020
	.word	0x20202020
zeroes.0:
	.word	0x30303030
	.word	0x30303030
	.word	0x30303030
	.word	0x30303030
	.word	0x00000043
	.word	0x49534f50
	.word	0x00000058
	.word	0x0000002e
_ctype_:
	.word	0x20202000
	.word	0x20202020
	.word	0x28282020
	.word	0x20282828
	.word	0x20202020
	.word	0x20202020
	.word	0x20202020
	.word	0x20202020
	.word	0x10108820
	.word	0x10101010
	.word	0x10101010
	.word	0x10101010
	.word	0x04040410
	.word	0x04040404
	.word	0x10040404
	.word	0x10101010
	.word	0x41411010
	.word	0x41414141
	.word	0x01010101
	.word	0x01010101
	.word	0x01010101
	.word	0x01010101
	.word	0x01010101
	.word	0x10101010
	.word	0x42421010
	.word	0x42424242
	.word	0x02020202
	.word	0x02020202
	.word	0x02020202
	.word	0x02020202
	.word	0x02020202
	.word	0x10101010
	.word	0x00000020
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000


	 .section .data

SystemCoreClock:
	.word	0x00f42400


	 .section .data._impure_ptr

_impure_ptr:
	.word	0x20000eb8


	 .section .data.impure_data

impure_data:
	.word	0x00000000
	.word	0x200011a4
	.word	0x2000120c
	.word	0x20001274
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000001
	.word	0x00000000
	.word	0xabcd330e
	.word	0xe66d1234
	.word	0x0005deec
	.word	0x0000000b
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000


	 .section .data.__global_locale

__global_locale:
	.word	0x00000043
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000043
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000043
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000043
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000043
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000043
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000043
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x080071f9
	.word	0x080068a5
	.word	0x00000000
	.word	0x20000dac
	.word	0x20000da8
	.word	0x20000d14
	.word	0x20000d14
	.word	0x20000d14
	.word	0x20000d14
	.word	0x20000d14
	.word	0x20000d14
	.word	0x20000d14
	.word	0x20000d14
	.word	0x20000d14
	.word	0xffffffff
	.word	0xffffffff
	.word	0xffffffff
	.word	0x0000ffff
	.word	0x53410001
	.word	0x00494943
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x53410000
	.word	0x00494943
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000


	 .section .data.__malloc_av_

__malloc_av_:
	.word	0x00000000
	.word	0x00000000
	.word	0x2000144c
	.word	0x2000144c
	.word	0x20001454
	.word	0x20001454
	.word	0x2000145c
	.word	0x2000145c
	.word	0x20001464
	.word	0x20001464
	.word	0x2000146c
	.word	0x2000146c
	.word	0x20001474
	.word	0x20001474
	.word	0x2000147c
	.word	0x2000147c
	.word	0x20001484
	.word	0x20001484
	.word	0x2000148c
	.word	0x2000148c
	.word	0x20001494
	.word	0x20001494
	.word	0x2000149c
	.word	0x2000149c
	.word	0x200014a4
	.word	0x200014a4
	.word	0x200014ac
	.word	0x200014ac
	.word	0x200014b4
	.word	0x200014b4
	.word	0x200014bc
	.word	0x200014bc
	.word	0x200014c4
	.word	0x200014c4
	.word	0x200014cc
	.word	0x200014cc
	.word	0x200014d4
	.word	0x200014d4
	.word	0x200014dc
	.word	0x200014dc
	.word	0x200014e4
	.word	0x200014e4
	.word	0x200014ec
	.word	0x200014ec
	.word	0x200014f4
	.word	0x200014f4
	.word	0x200014fc
	.word	0x200014fc
	.word	0x20001504
	.word	0x20001504
	.word	0x2000150c
	.word	0x2000150c
	.word	0x20001514
	.word	0x20001514
	.word	0x2000151c
	.word	0x2000151c
	.word	0x20001524
	.word	0x20001524
	.word	0x2000152c
	.word	0x2000152c
	.word	0x20001534
	.word	0x20001534
	.word	0x2000153c
	.word	0x2000153c
	.word	0x20001544
	.word	0x20001544
	.word	0x2000154c
	.word	0x2000154c
	.word	0x20001554
	.word	0x20001554
	.word	0x2000155c
	.word	0x2000155c
	.word	0x20001564
	.word	0x20001564
	.word	0x2000156c
	.word	0x2000156c
	.word	0x20001574
	.word	0x20001574
	.word	0x2000157c
	.word	0x2000157c
	.word	0x20001584
	.word	0x20001584
	.word	0x2000158c
	.word	0x2000158c
	.word	0x20001594
	.word	0x20001594
	.word	0x2000159c
	.word	0x2000159c
	.word	0x200015a4
	.word	0x200015a4
	.word	0x200015ac
	.word	0x200015ac
	.word	0x200015b4
	.word	0x200015b4
	.word	0x200015bc
	.word	0x200015bc
	.word	0x200015c4
	.word	0x200015c4
	.word	0x200015cc
	.word	0x200015cc
	.word	0x200015d4
	.word	0x200015d4
	.word	0x200015dc
	.word	0x200015dc
	.word	0x200015e4
	.word	0x200015e4
	.word	0x200015ec
	.word	0x200015ec
	.word	0x200015f4
	.word	0x200015f4
	.word	0x200015fc
	.word	0x200015fc
	.word	0x20001604
	.word	0x20001604
	.word	0x2000160c
	.word	0x2000160c
	.word	0x20001614
	.word	0x20001614
	.word	0x2000161c
	.word	0x2000161c
	.word	0x20001624
	.word	0x20001624
	.word	0x2000162c
	.word	0x2000162c
	.word	0x20001634
	.word	0x20001634
	.word	0x2000163c
	.word	0x2000163c
	.word	0x20001644
	.word	0x20001644
	.word	0x2000164c
	.word	0x2000164c
	.word	0x20001654
	.word	0x20001654
	.word	0x2000165c
	.word	0x2000165c
	.word	0x20001664
	.word	0x20001664
	.word	0x2000166c
	.word	0x2000166c
	.word	0x20001674
	.word	0x20001674
	.word	0x2000167c
	.word	0x2000167c
	.word	0x20001684
	.word	0x20001684
	.word	0x2000168c
	.word	0x2000168c
	.word	0x20001694
	.word	0x20001694
	.word	0x2000169c
	.word	0x2000169c
	.word	0x200016a4
	.word	0x200016a4
	.word	0x200016ac
	.word	0x200016ac
	.word	0x200016b4
	.word	0x200016b4
	.word	0x200016bc
	.word	0x200016bc
	.word	0x200016c4
	.word	0x200016c4
	.word	0x200016cc
	.word	0x200016cc
	.word	0x200016d4
	.word	0x200016d4
	.word	0x200016dc
	.word	0x200016dc
	.word	0x200016e4
	.word	0x200016e4
	.word	0x200016ec
	.word	0x200016ec
	.word	0x200016f4
	.word	0x200016f4
	.word	0x200016fc
	.word	0x200016fc
	.word	0x20001704
	.word	0x20001704
	.word	0x2000170c
	.word	0x2000170c
	.word	0x20001714
	.word	0x20001714
	.word	0x2000171c
	.word	0x2000171c
	.word	0x20001724
	.word	0x20001724
	.word	0x2000172c
	.word	0x2000172c
	.word	0x20001734
	.word	0x20001734
	.word	0x2000173c
	.word	0x2000173c
	.word	0x20001744
	.word	0x20001744
	.word	0x2000174c
	.word	0x2000174c
	.word	0x20001754
	.word	0x20001754
	.word	0x2000175c
	.word	0x2000175c
	.word	0x20001764
	.word	0x20001764
	.word	0x2000176c
	.word	0x2000176c
	.word	0x20001774
	.word	0x20001774
	.word	0x2000177c
	.word	0x2000177c
	.word	0x20001784
	.word	0x20001784
	.word	0x2000178c
	.word	0x2000178c
	.word	0x20001794
	.word	0x20001794
	.word	0x2000179c
	.word	0x2000179c
	.word	0x200017a4
	.word	0x200017a4
	.word	0x200017ac
	.word	0x200017ac
	.word	0x200017b4
	.word	0x200017b4
	.word	0x200017bc
	.word	0x200017bc
	.word	0x200017c4
	.word	0x200017c4
	.word	0x200017cc
	.word	0x200017cc
	.word	0x200017d4
	.word	0x200017d4
	.word	0x200017dc
	.word	0x200017dc
	.word	0x200017e4
	.word	0x200017e4
	.word	0x200017ec
	.word	0x200017ec
	.word	0x200017f4
	.word	0x200017f4
	.word	0x200017fc
	.word	0x200017fc
	.word	0x20001804
	.word	0x20001804
	.word	0x2000180c
	.word	0x2000180c
	.word	0x20001814
	.word	0x20001814
	.word	0x2000181c
	.word	0x2000181c
	.word	0x20001824
	.word	0x20001824
	.word	0x2000182c
	.word	0x2000182c
	.word	0x20001834
	.word	0x20001834
	.word	0x2000183c
	.word	0x2000183c
	.word	0x20001844
	.word	0x20001844


	 .section .data.__malloc_sbrk_base

__malloc_sbrk_base:
	.word	0xffffffff


	 .section .data.__malloc_trim_threshold

__malloc_trim_threshold:
	.word	0x00020000


	 .section .bss

array1:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
seed:
	.word	0x00000000
heap_ptr:
	.word	0x00000000
heap_end:
	.word	0x00000000
heap_requested:
	.word	0x00000000


	 .section .bss._PathLocale

_PathLocale:
	.word	0x00000000


	 .section .bss.__lock___arc4random_mutex

__lock___arc4random_mutex:
	.word	0x0


	 .section .bss.__lock___at_quick_exit_mutex

__lock___at_quick_exit_mutex:
	.word	0x0


	 .section .bss.__lock___atexit_recursive_mutex

__lock___atexit_recursive_mutex:
	.word	0x0


	 .section .bss.__lock___dd_hash_mutex

__lock___dd_hash_mutex:
	.word	0x0


	 .section .bss.__lock___env_recursive_mutex

__lock___env_recursive_mutex:
	.word	0x0


	 .section .bss.__lock___malloc_recursive_mutex

__lock___malloc_recursive_mutex:
	.word	0x0


	 .section .bss.__lock___sfp_recursive_mutex

__lock___sfp_recursive_mutex:
	.word	0x0


	 .section .bss.__lock___sinit_recursive_mutex

__lock___sinit_recursive_mutex:
	.word	0x0


	 .section .bss.__lock___tz_mutex

__lock___tz_mutex:
	.word	0x0


	 .section .bss.__malloc_current_mallinfo

__malloc_current_mallinfo:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000


	 .section .bss.__malloc_max_sbrked_mem

__malloc_max_sbrked_mem:
	.word	0x00000000


	 .section .bss.__malloc_max_total_mem

__malloc_max_total_mem:
	.word	0x00000000


	 .section .bss.__malloc_top_pad

__malloc_top_pad:
	.word	0x00000000


	 .section .bss.errno

errno:
	.word	0x00000000


	 .section .bss.heap_end.0

heap_end.0:
	.word	0x00000000


	 .section .heap

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


	 .section .ARM.exidx

__StackTop_0x19ab0:
	.word	0x67ffd87c
	.word	0x00000001
