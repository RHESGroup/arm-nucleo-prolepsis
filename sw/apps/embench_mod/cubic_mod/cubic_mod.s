	.cpu cortex-m4
	.text
	.thumb
	.syntax unified
	.global main
	.type main, %function

    .global SystemInit
	.type SystemInit, %function

benchmark_body.constprop.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movs	r3, #0
	sub	sp, sp, #516	
	movs	r2, #0
	movt	r3, #49214	
	strd	r2, r3, [sp, #88]	
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16448	
	strd	r2, r3, [sp, #96]	
	movs	r3, #0
	movs	r2, #0
	movt	r3, #49189	
	strd	r2, r3, [sp, #112]	
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16420	
	strd	r2, r3, [sp, #80]	
	movs	r1, #0
	movs	r3, #0
	movs	r0, #0
	movt	r1, #16368	
	movs	r2, #0
	movt	r3, #16404	
	movw	r4, #1560	
	strd	r0, r1, [sp, #56]	
	strd	r2, r3, [sp, #64]	
	mov	r5, #1680	
	movt	r4, #8192	
	str	r5, [sp, #104]	
	str	r4, [sp, #108]	
	add	sl, sp, #128	
	add	fp, sp, #124	
lab4: 	mov	r2, #384	
	movs	r1, #0
	mov	r0, sl
push {r1, r2}
	ldr r1, =4774
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =4774
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp, #96]	
	ldrd	r4, r5, [sp, #88]	
	strd	r2, r3, [sp]
	movs	r1, #0
	movs	r3, #2
	strd	r4, r5, [sp, #8]
	str	r3, [sp, #76]	
	movs	r0, #0
	ldrd	r2, r3, [sp, #112]	
	movt	r1, #16368	
	strd	fp, sl, [sp, #16]
push {r1, r2}
	ldr r1, =4818
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	SolveCubic
	push {r1, r2}
	ldr r1, =4818
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	r4, r5, [sp, #8]
	strd	fp, sl, [sp, #16]
	ldr	r6, [sp, #108]	
	ldr	r3, [fp]
	str	r3, [r6, #0]
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16433	
	strd	r2, r3, [sp]
	mov	r5, sl
	ldmia	r5!, {r0, r1, r2, r3}
	movw	r4, #1568	
	movt	r4, #8192	
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	movs	r3, #0
	stmia	r4, {r0, r1}
	movs	r1, #0
	movs	r2, #0
	movt	r3, #49170	
	movs	r0, #0
	movt	r1, #16368	
push {r1, r2}
	ldr r1, =3723
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	SolveCubic
	push {r1, r2}
	ldr r1, =3723
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	fp, sl, [sp, #16]
	ldr	r3, [fp]
	str	r3, [r6, #32]
	ldrd	r2, r3, [sl]
	strd	r2, r3, [r6, #40]	
	movs	r3, #0
	movs	r2, #0
	movt	r3, #49215	
	strd	r2, r3, [sp, #8]
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16438	
	strd	r2, r3, [sp]
	movs	r1, #0
	movs	r3, #0
	movs	r2, #0
	movt	r3, #49164	
	movs	r0, #0
	movt	r1, #16368	
push {r1, r2}
	ldr r1, =1495
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	SolveCubic
	push {r1, r2}
	ldr r1, =1495
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r3, r4, [sp, #56]	
	strd	r3, r4, [sp]
	mov	r3, #32768	
	movs	r2, #0
	movt	r3, #49217	
	strd	r2, r3, [sp, #8]
	movs	r1, #0
	movw	r3, #26214	
	mov	r2, #1717986918	
	movt	r3, #49195	
	strd	fp, sl, [sp, #16]
	movs	r0, #0
	movt	r1, #16368	
push {r1, r2}
	ldr r1, =3972
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	SolveCubic
	push {r1, r2}
	ldr r1, =3972
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	movs	r2, #0
	movt	r3, #49136	
	strd	r2, r3, [sp, #32]
	movs	r2, #0
	mov	r3, #3221225472	
	strd	r2, r3, [sp, #40]	
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16352	
	strd	r2, r3, [sp, #48]	
	mov	r9, #0
	mov	r8, #0
	movt	r9, #16368	
lab6: 	ldrd	r6, r7, [sp, #80]	
	movs	r3, #2
	str	r3, [sp, #72]	
lab5: 	ldrd	r4, r5, [sp, #64]	
	movs	r3, #2
	str	r3, [sp, #28]
lab1: 	ldrd	r2, r3, [sp, #32]
	strd	r4, r5, [sp]
	strd	r2, r3, [sp, #8]
	mov	r0, r8
	mov	r2, r6
	mov	r3, r7
	mov	r1, r9
	strd	fp, sl, [sp, #16]
push {r1, r2}
	ldr r1, =5785
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	SolveCubic
	push {r1, r2}
	ldr r1, =5785
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp, #40]	
	strd	r4, r5, [sp]
	strd	r2, r3, [sp, #8]
	mov	r0, r8
	mov	r2, r6
	mov	r3, r7
	mov	r1, r9
	strd	fp, sl, [sp, #16]
push {r1, r2}
	ldr r1, =3610
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	SolveCubic
	push {r1, r2}
	ldr r1, =3610
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp, #48]	
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =4368
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =4368
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #28]
	cmp	r3, #1
	mov	r4, r0
	mov	r5, r1
	beq	lab0
	movs	r3, #1
	str	r3, [sp, #28]
	b	lab1
lab0: 	ldrd	r4, r5, [sp, #56]	
	mov	r0, r6
	mov	r1, r7
	mov	r3, r5
	mov	r2, r4
	bl	__aeabi_dsub
	ldr	r3, [sp, #72]	
	cmp	r3, #1
	mov	r6, r0
	mov	r7, r1
	bne	lab2
	mov	r0, r8
	mov	r1, r9
	mov	r3, r5
	mov	r2, r4
push {r1, r2}
	ldr r1, =2342
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2342
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #76]	
	cmp	r3, #1
	mov	r8, r0
	mov	r9, r1
	bne	lab3
	ldr	r3, [sp, #104]	
	subs	r3, #1
	str	r3, [sp, #104]	
	bne	lab4
	mov	r0, r3
	add	sp, sp, #516	
	nop
	push {r1, r2}
	ldr r1, =1278
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab2: 	ldr	r3, [sp, #28]
	str	r3, [sp, #72]	
	b	lab5
lab3: 	ldr	r3, [sp, #72]	
	str	r3, [sp, #76]	
	b	lab6
benchmark_body.isra.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #516	
	subs	r3, r0, #0
	str	r3, [sp, #104]	
	ble	lab7
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16368	
	strd	r2, r3, [sp, #56]	
	movs	r3, #0
	movs	r2, #0
	movt	r3, #49214	
	strd	r2, r3, [sp, #88]	
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16448	
	strd	r2, r3, [sp, #96]	
	movs	r3, #0
	movs	r2, #0
	movt	r3, #49189	
	strd	r2, r3, [sp, #112]	
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16420	
	strd	r2, r3, [sp, #72]	
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16404	
	movw	r1, #1560	
	strd	r2, r3, [sp, #64]	
	movs	r0, #0
	movt	r1, #8192	
	str	r0, [sp, #84]	
	str	r1, [sp, #108]	
	add	sl, sp, #128	
	add	fp, sp, #124	
lab12: 	mov	r2, #384	
	movs	r1, #0
	mov	r0, sl
push {r1, r2}
	ldr r1, =3657
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =3657
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp, #96]	
	ldrd	r4, r5, [sp, #88]	
	strd	r2, r3, [sp]
	movs	r1, #0
	movs	r3, #2
	strd	r4, r5, [sp, #8]
	str	r3, [sp, #80]	
	movs	r0, #0
	ldrd	r2, r3, [sp, #112]	
	movt	r1, #16368	
	strd	fp, sl, [sp, #16]
push {r1, r2}
	ldr r1, =7086
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	SolveCubic
	push {r1, r2}
	ldr r1, =7086
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	r4, r5, [sp, #8]
	strd	fp, sl, [sp, #16]
	ldr	r6, [sp, #108]	
	ldr	r3, [fp]
	str	r3, [r6, #0]
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16433	
	strd	r2, r3, [sp]
	mov	r5, sl
	ldmia	r5!, {r0, r1, r2, r3}
	movw	r4, #1568	
	movt	r4, #8192	
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	movs	r3, #0
	stmia	r4, {r0, r1}
	movs	r1, #0
	movs	r2, #0
	movt	r3, #49170	
	movs	r0, #0
	movt	r1, #16368	
push {r1, r2}
	ldr r1, =7201
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	SolveCubic
	push {r1, r2}
	ldr r1, =7201
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	fp, sl, [sp, #16]
	ldr	r3, [fp]
	str	r3, [r6, #32]
	ldrd	r2, r3, [sl]
	strd	r2, r3, [r6, #40]	
	movs	r3, #0
	movs	r2, #0
	movt	r3, #49215	
	strd	r2, r3, [sp, #8]
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16438	
	strd	r2, r3, [sp]
	movs	r1, #0
	movs	r3, #0
	movs	r2, #0
	movt	r3, #49164	
	movs	r0, #0
	movt	r1, #16368	
push {r1, r2}
	ldr r1, =1328
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	SolveCubic
	push {r1, r2}
	ldr r1, =1328
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r3, r4, [sp, #56]	
	strd	r3, r4, [sp]
	mov	r3, #32768	
	movs	r2, #0
	movt	r3, #49217	
	strd	r2, r3, [sp, #8]
	movs	r1, #0
	movw	r3, #26214	
	mov	r2, #1717986918	
	movt	r3, #49195	
	strd	fp, sl, [sp, #16]
	movs	r0, #0
	movt	r1, #16368	
push {r1, r2}
	ldr r1, =1891
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	SolveCubic
	push {r1, r2}
	ldr r1, =1891
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	movs	r2, #0
	movt	r3, #49136	
	strd	r2, r3, [sp, #24]
	movs	r2, #0
	mov	r3, #3221225472	
	strd	r2, r3, [sp, #32]
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16352	
	strd	r2, r3, [sp, #40]	
	mov	r9, #0
	mov	r8, #0
	movt	r9, #16368	
lab14: 	ldrd	r6, r7, [sp, #72]	
	movs	r3, #2
	str	r3, [sp, #52]	
lab13: 	ldrd	r4, r5, [sp, #64]	
	movs	r3, #2
	str	r3, [sp, #48]	
lab9: 	ldrd	r2, r3, [sp, #24]
	strd	r4, r5, [sp]
	strd	r2, r3, [sp, #8]
	mov	r0, r8
	mov	r2, r6
	mov	r3, r7
	mov	r1, r9
	strd	fp, sl, [sp, #16]
push {r1, r2}
	ldr r1, =2204
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	SolveCubic
	push {r1, r2}
	ldr r1, =2204
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp, #32]
	strd	r4, r5, [sp]
	strd	r2, r3, [sp, #8]
	mov	r0, r8
	mov	r2, r6
	mov	r3, r7
	mov	r1, r9
	strd	fp, sl, [sp, #16]
push {r1, r2}
	ldr r1, =1141
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	SolveCubic
	push {r1, r2}
	ldr r1, =1141
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp, #40]	
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =5805
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =5805
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #48]	
	cmp	r3, #1
	mov	r4, r0
	mov	r5, r1
	beq	lab8
	movs	r3, #1
	str	r3, [sp, #48]	
	b	lab9
lab8: 	ldrd	r4, r5, [sp, #56]	
	mov	r0, r6
	mov	r1, r7
	mov	r3, r5
	mov	r2, r4
	bl	__aeabi_dsub
	ldr	r3, [sp, #52]	
	cmp	r3, #1
	mov	r6, r0
	mov	r7, r1
	bne	lab10
	mov	r0, r8
	mov	r1, r9
	mov	r3, r5
	mov	r2, r4
push {r1, r2}
	ldr r1, =7926
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7926
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #80]	
	cmp	r3, #1
	mov	r8, r0
	mov	r9, r1
	bne	lab11
	ldr	r3, [sp, #84]	
	ldr	r2, [sp, #104]	
	adds	r3, #1
	cmp	r3, r2
	str	r3, [sp, #84]	
	bne	lab12
lab7: 	add	sp, sp, #516	
	nop
	push {r1, r2}
	ldr r1, =411
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab10: 	ldr	r3, [sp, #48]	
	str	r3, [sp, #52]	
	b	lab13
lab11: 	ldr	r3, [sp, #52]	
	str	r3, [sp, #80]	
	b	lab14
verify_benchmark:
	push	{r4, r6, r7, lr}
	movw	r4, #1560	
	movt	r4, #8192	
	ldr	r3, [r4, #0]
	cmp	r3, #3
	beq	lab15
lab17: 	movs	r0, #0
lab16:	nop
	push {r1, r2}
	ldr r1, =6544
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r6, r7, pc}
lab15: 	ldrd	r2, r3, [r4, #8]
	movs	r0, #0
	mov	r1, #1073741824	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab16
	movs	r1, #0
	ldrd	r2, r3, [r4, #16]
	movs	r0, #0
	movt	r1, #16408	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab16
	movs	r1, #0
	ldrd	r2, r3, [r4, #24]
	movs	r0, #0
	movt	r1, #16388	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab16
	ldr	r3, [r4, #32]
	cmp	r3, #1
	bne	lab17
	movs	r1, #0
	ldrd	r2, r3, [r4, #40]	
	movs	r0, #0
	movt	r1, #16388	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	subs	r0, #0
	it	ne
	movne	r0, #1
	nop
	push {r1, r2}
	ldr r1, =7270
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r6, r7, pc}
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
lab18: 	ldr	r2, [r3, #0]
	lsls	r0, r2, #14
	bpl	lab18
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
lab19: 	ldr	r3, [r2, #0]
	lsls	r1, r3, #6
	bpl	lab19
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
lab20: 	ldr	r3, [r1, #8]
	lsls	r3, r3, #28
	bpl	lab20
	movw	r3, #484	
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
	ldr r1, =4608
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	start_trigger
	bl	benchmark
	push {r1, r2}
	ldr r1, =7593
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r0, [sp, #4]
	bl	stop_trigger
	ldr	r0, [sp, #4]
	bl	verify_benchmark
	push {r1, r2}
	ldr r1, =6401
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
SolveCubic:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r6, r0
	mov	r7, r1
	sub	sp, #20
	mov	r0, r2
	mov	r1, r3
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =6818
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =6818
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r8, r0
	mov	r9, r1
	mov	r3, r7
	ldrd	r0, r1, [sp, #56]	
push {r1, r2}
	ldr r1, =2037
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =2037
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	sl, r0
	mov	fp, r1
	mov	r3, r9
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =2984
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2984
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	mov	r4, r0
	mov	r5, r1
	movs	r2, #0
	movt	r3, #16392	
	mov	r0, sl
	mov	r1, fp
	strd	sl, fp, [sp]
push {r1, r2}
	ldr r1, =6733
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6733
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16418	
push {r1, r2}
	ldr r1, =6438
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =6438
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	sl, r0
	mov	fp, r1
	mov	r3, r9
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =6087
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =6087
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =2874
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2874
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =2722
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2722
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	mov	r4, r0
	mov	r5, r1
	movs	r2, #0
	movt	r3, #16418	
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =2985
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2985
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp]
push {r1, r2}
	ldr r1, =6477
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6477
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
	mov	r4, r0
	mov	r5, r1
	ldrd	r0, r1, [sp, #64]	
push {r1, r2}
	ldr r1, =70
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =70
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16443	
push {r1, r2}
	ldr r1, =6891
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6891
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =1737
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =1737
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16459	
push {r1, r2}
	ldr r1, =6192
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =6192
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, sl
	mov	r4, r0
	mov	r5, r1
	mov	r3, fp
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =2385
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2385
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, sl
	mov	r3, fp
push {r1, r2}
	ldr r1, =3560
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3560
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	strd	r0, r1, [sp]
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =4254
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4254
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp]
	bl	__aeabi_dsub
	movs	r2, #0
	movs	r3, #0
	mov	r6, r0
	mov	r7, r1
	bl	__aeabi_dcmple
	cmp	r0, #0
	bne	lab21
	ldr	r2, [sp, #72]	
	movs	r3, #1
	str	r3, [r2, #0]
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =3512
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sqrt
	push {r1, r2}
	ldr r1, =3512
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	bic	r1, r5, #2147483648	
push {r1, r2}
	ldr r1, =7292
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7292
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r3, #21845	
	mov	r2, #1431655765	
	movt	r3, #16341	
	bl	pow
	push {r1, r2}
	ldr r1, =6948
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r6, r0
	mov	r7, r1
	mov	r2, r6
	mov	r3, r7
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =5930
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =5930
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =1800
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =1800
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	mov	r4, r3
	mov	r5, r2
	movs	r3, #0
	movs	r2, #0
	bl	__aeabi_dcmplt
	cmp r0, #0
	bne lab22
	add	r4, r4, #2147483648	
lab22: 	movs	r3, #0
	mov	r0, r8
	mov	r1, r9
	movs	r2, #0
	movt	r3, #16392	
push {r1, r2}
	ldr r1, =4029
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =4029
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r5
	mov	r1, r4
	bl	__aeabi_dsub
	ldr	r3, [sp, #76]	
	strd	r0, r1, [r3]
	add	sp, #20
	nop
	push {r1, r2}
	ldr r1, =6134
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab21: 	ldr	r2, [sp, #72]	
	movs	r3, #3
	str	r3, [r2, #0]
	ldrd	r0, r1, [sp]
push {r1, r2}
	ldr r1, =6915
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sqrt
	push {r1, r2}
	ldr r1, =6915
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =6405
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =6405
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	acos
	push {r1, r2}
	ldr r1, =2606
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	mov	r5, r1
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =1630
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sqrt
	push {r1, r2}
	ldr r1, =1630
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	strd	r0, r1, [sp, #8]
	movs	r2, #0
	movt	r3, #16392	
	mov	r0, r4
	mov	r1, r5
	strd	r4, r5, [sp]
push {r1, r2}
	ldr r1, =7561
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =7561
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
push {r1, r2}
	ldr r1, =2113
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	cos
	push {r1, r2}
	ldr r1, =2113
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	mov	r6, r0
	mov	r7, r1
	mov	r0, r8
	mov	r1, r9
	movs	r2, #0
	movt	r3, #16392	
push {r1, r2}
	ldr r1, =4688
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =4688
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #0
	mov	r4, r0
	mov	r5, r1
	mov	r3, #3221225472	
	ldrd	r0, r1, [sp, #8]
push {r1, r2}
	ldr r1, =7100
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7100
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =5656
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5656
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	ldr	r3, [sp, #76]	
	strd	r0, r1, [r3]
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =7886
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sqrt
	push {r1, r2}
	ldr r1, =7886
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #11544	
	movw	r3, #8699	
	mov	r8, r0
	mov	r9, r1
	movt	r2, #21572	
	ldrd	r0, r1, [sp]
	movt	r3, #16409	
push {r1, r2}
	ldr r1, =5616
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =5616
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16392	
push {r1, r2}
	ldr r1, =1164
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =1164
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
push {r1, r2}
	ldr r1, =4888
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	cos
	push {r1, r2}
	ldr r1, =4888
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #0
	mov	r6, r0
	mov	r7, r1
	mov	r0, r8
	mov	r1, r9
	mov	r3, #3221225472	
push {r1, r2}
	ldr r1, =4377
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4377
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =4322
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4322
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	ldr	r3, [sp, #76]	
	strd	r0, r1, [r3, #8]
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =7574
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sqrt
	push {r1, r2}
	ldr r1, =7574
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #11544	
	movw	r3, #8699	
	mov	r8, r0
	mov	r9, r1
	movt	r2, #21572	
	ldrd	r0, r1, [sp]
	movt	r3, #16425	
push {r1, r2}
	ldr r1, =5414
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =5414
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16392	
push {r1, r2}
	ldr r1, =6371
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =6371
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
push {r1, r2}
	ldr r1, =6054
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	cos
	push {r1, r2}
	ldr r1, =6054
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #0
	mov	r6, r0
	mov	r7, r1
	mov	r0, r8
	mov	r1, r9
	mov	r3, #3221225472	
push {r1, r2}
	ldr r1, =1423
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1423
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =6435
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6435
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r5
	mov	r2, r4
	bl	__aeabi_dsub
	ldr	r3, [sp, #76]	
	strd	r0, r1, [r3, #16]
	add	sp, #20
	nop
	push {r1, r2}
	ldr r1, =4163
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	push	{r4, r5, r6, lr}
	mov	ip, #255	
	orr	ip, ip, #1792	
	ands	r4, ip, r1, lsr #20
	ittte	ne
	andsne	r5, ip, r3, lsr #20
	teqne	r4, ip
	teqne	r5, ip
	bleq	lab23
	add	r4, r5
	eor	r6, r1, r3
	bic	r1, r1, ip, lsl #21
	bic	r3, r3, ip, lsl #21
	orrs	r5, r0, r1, lsl #12
	it	ne
	orrsne	r5, r2, r3, lsl #12
	orr	r1, r1, #1048576	
	orr	r3, r3, #1048576	
	beq	lab24
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
	bcs	lab25
	movs	lr, lr, lsl #1
	adcs	r5, r5
	adc	r6, r6, r6
lab25: 	orr	r1, r2, r6, lsl #11
	orr	r1, r1, r5, lsr #21
	mov	r0, r5, lsl #11
	orr	r0, r0, lr, lsr #21
	mov	lr, lr, lsl #11
	subs	ip, r4, #253	
	it	hi
	cmphi	ip, #1792	
	bhi	lab26
	cmp	lr, #2147483648	
	it	eq
	movseq	lr, r0, lsr #1
	adcs	r0, r0, #0
	adc	r1, r1, r4, lsl #20
	pop	{r4, r5, r6, pc}
lab24: 	and	r6, r6, #2147483648	
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
lab26: 	bgt	lab27
	cmn	r4, #54	
	ittt	le
	movle	r0, #0
	andle	r1, r1, #2147483648	
	pople	{r4, r5, r6, pc}
	rsb	r4, r4, #0
	subs	r4, #32
	bge	lab28
	adds	r4, #12
	bgt	lab29
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
lab29: 	rsb	r4, r4, #12
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
lab28: 	rsb	r5, r4, #32
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
lab34: 	teq	r4, #0
	bne	lab30
	and	r6, r1, #2147483648	
lab31: 	lsls	r0, r0, #1
	adc	r1, r1, r1
	tst	r1, #1048576	
	it	eq
	subeq	r4, #1
	beq	lab31
	orr	r1, r1, r6
	teq	r5, #0
	it	ne
	bxne	lr
lab30: 	and	r6, r3, #2147483648	
lab32: 	lsls	r2, r2, #1
	adc	r3, r3, r3
	tst	r3, #1048576	
	it	eq
	subeq	r5, #1
	beq	lab32
	orr	r3, r3, r6
	bx	lr
lab23: 	teq	r4, ip
	and	r5, ip, r3, lsr #20
	it	ne
	teqne	r5, ip
	beq	lab33
	orrs	r6, r0, r1, lsl #1
	it	ne
	orrsne	r6, r2, r3, lsl #1
	bne	lab34
	eor	r1, r1, r3
	and	r1, r1, #2147483648	
	mov	r0, #0
	pop	{r4, r5, r6, pc}
lab33: 	orrs	r6, r0, r1, lsl #1
	itte	eq
	moveq	r0, r2
	moveq	r1, r3
	orrsne	r6, r2, r3, lsl #1
	beq	lab35
	teq	r4, ip
	bne	lab36
	orrs	r6, r0, r1, lsl #12
	bne	lab35
lab36: 	teq	r5, ip
	bne	lab37
	orrs	r6, r2, r3, lsl #12
	itt	ne
	movne	r0, r2
	movne	r1, r3
	bne	lab35
lab37: 	eor	r1, r1, r3
lab27: 	and	r1, r1, #2147483648	
	orr	r1, r1, #2130706432	
	orr	r1, r1, #15728640	
	mov	r0, #0
	pop	{r4, r5, r6, pc}
lab35: 	orr	r1, r1, #2130706432	
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
	beq	lab38
	mov	r4, r4, lsr #21
	rsbs	r5, r4, r5, lsr #21
	it	lt
	neglt	r5, r5
	ble	lab39
	add	r4, r5
	eor	r2, r0, r2
	eor	r3, r1, r3
	eor	r0, r2, r0
	eor	r1, r3, r1
	eor	r2, r0, r2
	eor	r3, r1, r3
lab39: 	cmp	r5, #54	
	it	hi
	nop
	push {r1, r2}
	ldr r1, =3737
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pophi	{r4, r5, pc}
	tst	r1, #2147483648	
	mov	r1, r1, lsl #12
	mov	ip, #1048576	
	orr	r1, ip, r1, lsr #12
	beq	lab40
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
lab40: 	tst	r3, #2147483648	
	mov	r3, r3, lsl #12
	orr	r3, ip, r3, lsr #12
	beq	lab41
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
lab41: 	teq	r4, r5
	beq	lab42
lab54: 	sub	r4, r4, #1
	rsbs	lr, r5, #32
	blt	lab43
	lsl	ip, r2, lr
	lsr	r2, r2, r5
	adds	r0, r0, r2
	adc	r1, r1, #0
	lsl	r2, r3, lr
	adds	r0, r0, r2
	asr	r3, r3, r5
	adcs	r1, r3
	b	lab44
lab43: 	sub	r5, r5, #32
	add	lr, lr, #32
	cmp	r2, #1
	lsl	ip, r3, lr
	it	cs
	orrcs	ip, ip, #2
	asr	r3, r3, r5
	adds	r0, r0, r3
	adcs	r1, r1, r3, asr #31
lab44: 	and	r5, r1, #2147483648	
	bpl	lab45
	mov	lr, #0
	rsbs	ip, ip, #0
	sbcs	r0, lr, r0
	sbc	r1, lr, r1
lab45: 	cmp	r1, #1048576	
	bcc	lab46
	cmp	r1, #2097152	
	bcc	lab47
	lsrs	r1, r1, #1
	movs	r0, r0, rrx
	mov	ip, ip, rrx
	add	r4, r4, #1
	mov	r2, r4, lsl #21
	cmn	r2, #4194304	
	bcs	lab48
lab47: 	cmp	ip, #2147483648	
	it	eq
	movseq	ip, r0, lsr #1
	adcs	r0, r0, #0
	adc	r1, r1, r4, lsl #20
	orr	r1, r1, r5
	pop	{r4, r5, pc}
lab46: 	movs	ip, ip, lsl #1
	adcs	r0, r0
	adc	r1, r1, r1
	subs	r4, #1
	it	cs
	cmpcs	r1, #1048576	
	bcs	lab47
lab58: 	teq	r1, #0
	itt	eq
	moveq	r1, r0
	moveq	r0, #0
	clz	r3, r1
	it	eq
	addeq	r3, #32
	sub	r3, r3, #11
	subs	r2, r3, #32
	bge	lab49
	adds	r2, #12
	ble	lab50
	add	ip, r2, #20
	rsb	r2, r2, #12
	lsl	r0, r1, ip
	lsr	r1, r1, r2
	b	lab51
lab50: 	add	r2, r2, #20
lab49: 	it	le
	rsble	ip, r2, #32
	lsl	r1, r1, r2
	lsr	ip, r0, ip
	itt	le
	orrle	r1, r1, ip
	lslle	r0, r2
lab51: 	subs	r4, r4, r3
	ittt	ge
	addge	r1, r1, r4, lsl #20
	orrge	r1, r5
	popge	{r4, r5, pc}
	mvn	r4, r4
	subs	r4, #31
	bge	lab52
	adds	r4, #12
	bgt	lab53
	add	r4, r4, #20
	rsb	r2, r4, #32
	lsr	r0, r0, r4
	lsl	r3, r1, r2
	orr	r0, r0, r3
	lsr	r3, r1, r4
	orr	r1, r5, r3
	pop	{r4, r5, pc}
lab53: 	rsb	r4, r4, #12
	rsb	r2, r4, #32
	lsr	r0, r0, r2
	lsl	r3, r1, r4
	orr	r0, r0, r3
	mov	r1, r5
	pop	{r4, r5, pc}
lab52: 	lsr	r0, r1, r4
	mov	r1, r5
	pop	{r4, r5, pc}
lab42: 	teq	r4, #0
	eor	r3, r3, #1048576	
	itte	eq
	eoreq	r1, r1, #1048576	
	addeq	r4, #1
	subne	r5, #1
	b	lab54
lab38: 	mvns	ip, r4, asr #21
	it	ne
	mvnsne	ip, r5, asr #21
	beq	lab55
	teq	r4, r5
	it	eq
	teqeq	r0, r2
	beq	lab56
	orrs	ip, r4, r0
	itt	eq
	moveq	r1, r3
	moveq	r0, r2
	nop
	push {r1, r2}
	ldr r1, =193
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab56: 	teq	r1, r3
	ittt	ne
	movne	r1, #0
	movne	r0, #0
	nop
	push {r1, r2}
	ldr r1, =484
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popne	{r4, r5, pc}
	movs	ip, r4, lsr #21
	bne	lab57
	lsls	r0, r0, #1
	adcs	r1, r1
	it	cs
	orrcs	r1, r1, #2147483648	
	nop
	push {r1, r2}
	ldr r1, =4567
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab57: 	adds	r4, r4, #4194304	
	itt	cc
	addcc	r1, r1, #1048576	
	nop
	push {r1, r2}
	ldr r1, =6562
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popcc	{r4, r5, pc}
	and	r5, r1, #2147483648	
lab48: 	orr	r1, r5, #2130706432	
	orr	r1, r1, #15728640	
	mov	r0, #0
	pop	{r4, r5, pc}
lab55: 	mvns	ip, r4, asr #21
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
	ldr r1, =2960
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
	b	lab58
	nop
__aeabi_i2d:
	teq	r0, #0
	itt	eq
	moveq	r1, #0
	nop
	push {r1, r2}
	ldr r1, =6631
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
	b	lab58
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
	b	lab58
	nop
__aeabi_ul2d:
	orrs	r2, r0, r1
	it	eq
	bxeq	lr
	push	{r4, r5, lr}
	mov	r5, #0
	b	lab59
__aeabi_l2d:
	orrs	r2, r0, r1
	it	eq
	bxeq	lr
	push	{r4, r5, lr}
	ands	r5, r1, #2147483648	
	bpl	lab59
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
lab59: 	mov	r4, #1024	
	add	r4, r4, #50	
	movs	ip, r1, lsr #22
	beq	lab45
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
	b	lab45
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
	bleq	lab60
	add	r4, r5
	eor	r6, r1, r3
	bic	r1, r1, ip, lsl #21
	bic	r3, r3, ip, lsl #21
	orrs	r5, r0, r1, lsl #12
	it	ne
	orrsne	r5, r2, r3, lsl #12
	orr	r1, r1, #1048576	
	orr	r3, r3, #1048576	
	beq	lab61
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
	bcs	lab62
	movs	lr, lr, lsl #1
	adcs	r5, r5
	adc	r6, r6, r6
lab62: 	orr	r1, r2, r6, lsl #11
	orr	r1, r1, r5, lsr #21
	mov	r0, r5, lsl #11
	orr	r0, r0, lr, lsr #21
	mov	lr, lr, lsl #11
	subs	ip, r4, #253	
	it	hi
	cmphi	ip, #1792	
	bhi	lab63
	cmp	lr, #2147483648	
	it	eq
	movseq	lr, r0, lsr #1
	adcs	r0, r0, #0
	adc	r1, r1, r4, lsl #20
	nop
	push {r1, r2}
	ldr r1, =3366
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab61: 	and	r6, r6, #2147483648	
	orr	r1, r6, r1
	orr	r0, r0, r2
	eor	r1, r1, r3
	subs	r4, r4, ip, lsr #1
	ittt	gt
	rsbsgt	r5, r4, ip
	orrgt	r1, r1, r4, lsl #20
	nop
	push {r1, r2}
	ldr r1, =3249
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popgt	{r4, r5, r6, pc}
	orr	r1, r1, #1048576	
	mov	lr, #0
	subs	r4, #1
lab63: 	bgt	lab64
	cmn	r4, #54	
	ittt	le
	movle	r0, #0
	andle	r1, r1, #2147483648	
	nop
	push {r1, r2}
	ldr r1, =6732
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pople	{r4, r5, r6, pc}
	rsb	r4, r4, #0
	subs	r4, #32
	bge	lab65
	adds	r4, #12
	bgt	lab66
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
lab66: 	rsb	r4, r4, #12
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
lab65: 	rsb	r5, r4, #32
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
lab71: 	teq	r4, #0
	bne	lab67
	and	r6, r1, #2147483648	
lab68: 	lsls	r0, r0, #1
	adc	r1, r1, r1
	tst	r1, #1048576	
	it	eq
	subeq	r4, #1
	beq	lab68
	orr	r1, r1, r6
	teq	r5, #0
	it	ne
	bxne	lr
lab67: 	and	r6, r3, #2147483648	
lab69: 	lsls	r2, r2, #1
	adc	r3, r3, r3
	tst	r3, #1048576	
	it	eq
	subeq	r5, #1
	beq	lab69
	orr	r3, r3, r6
	bx	lr
lab60: 	teq	r4, ip
	and	r5, ip, r3, lsr #20
	it	ne
	teqne	r5, ip
	beq	lab70
	orrs	r6, r0, r1, lsl #1
	it	ne
	orrsne	r6, r2, r3, lsl #1
	bne	lab71
lab83: 	eor	r1, r1, r3
	and	r1, r1, #2147483648	
	mov	r0, #0
	pop	{r4, r5, r6, pc}
lab70: 	orrs	r6, r0, r1, lsl #1
	itte	eq
	moveq	r0, r2
	moveq	r1, r3
	orrsne	r6, r2, r3, lsl #1
	beq	lab72
	teq	r4, ip
	bne	lab73
	orrs	r6, r0, r1, lsl #12
	bne	lab72
lab73: 	teq	r5, ip
	bne	lab74
	orrs	r6, r2, r3, lsl #12
	itt	ne
	movne	r0, r2
	movne	r1, r3
	bne	lab72
lab74: 	eor	r1, r1, r3
lab64: 	and	r1, r1, #2147483648	
	orr	r1, r1, #2130706432	
	orr	r1, r1, #15728640	
	mov	r0, #0
	nop
	push {r1, r2}
	ldr r1, =760
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab72: 	orr	r1, r1, #2130706432	
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
	bleq	lab75
	sub	r4, r4, r5
	eor	lr, r1, r3
	orrs	r5, r2, r3, lsl #12
	mov	r1, r1, lsl #12
	beq	lab76
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
	bcs	lab77
	lsrs	r3, r3, #1
	mov	r2, r2, rrx
lab77: 	subs	r6, r6, r2
	sbc	r5, r5, r3
	lsrs	r3, r3, #1
	mov	r2, r2, rrx
	mov	r0, #1048576	
	mov	ip, #524288	
lab79: 	subs	lr, r6, r2
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
	beq	lab78
	mov	r5, r5, lsl #4
	orr	r5, r5, r6, lsr #28
	mov	r6, r6, lsl #4
	mov	r3, r3, lsl #3
	orr	r3, r3, r2, lsr #29
	mov	r2, r2, lsl #3
	movs	ip, ip, lsr #4
	bne	lab79
	tst	r1, #1048576	
	bne	lab80
	orr	r1, r1, r0
	mov	r0, #0
	mov	ip, #2147483648	
	b	lab79
lab78: 	tst	r1, #1048576	
	itt	eq
	orreq	r1, r0
	moveq	r0, #0
lab80: 	subs	ip, r4, #253	
	it	hi
	cmphi	ip, #1792	
	bhi	lab63
	subs	ip, r5, r3
	itt	eq
	subseq	ip, r6, r2
	movseq	ip, r0, lsr #1
	adcs	r0, r0, #0
	adc	r1, r1, r4, lsl #20
	nop
	push {r1, r2}
	ldr r1, =2494
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab76: 	and	lr, lr, #2147483648	
	orr	r1, lr, r1, lsr #12
	adds	r4, r4, ip, lsr #1
	ittt	gt
	rsbsgt	r5, r4, ip
	orrgt	r1, r1, r4, lsl #20
	nop
	push {r1, r2}
	ldr r1, =2473
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popgt	{r4, r5, r6, pc}
	orr	r1, r1, #1048576	
	mov	lr, #0
	subs	r4, #1
	b	lab63
	orr	lr, r5, r6
	b	lab63
lab75: 	and	r5, ip, r3, lsr #20
	teq	r4, ip
	it	eq
	teqeq	r5, ip
	beq	lab72
	teq	r4, ip
	bne	lab81
	orrs	r4, r0, r1, lsl #12
	bne	lab72
	teq	r5, ip
	bne	lab74
	mov	r0, r2
	mov	r1, r3
	b	lab72
lab81: 	teq	r5, ip
	bne	lab82
	orrs	r5, r2, r3, lsl #12
	beq	lab83
	mov	r0, r2
	mov	r1, r3
	b	lab72
lab82: 	orrs	r6, r0, r1, lsl #1
	it	ne
	orrsne	r6, r2, r3, lsl #1
	bne	lab71
	orrs	r4, r0, r1, lsl #1
	bne	lab74
	orrs	r5, r2, r3, lsl #1
	bne	lab83
	b	lab72
__gedf2:
	mov	ip, #4294967295	
	b	lab84
	nop
__ledf2:
	mov	ip, #1
	b	lab84
	nop
__cmpdf2:
	mov	ip, #1
lab84: 	str	ip, [sp, #-4]!
	mov	ip, r1, lsl #1
	mvns	ip, ip, asr #21
	mov	ip, r3, lsl #1
	it	ne
	mvnsne	ip, ip, asr #21
	beq	lab85
lab88: 	add	sp, #4
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
lab85: 	mov	ip, r1, lsl #1
	mvns	ip, ip, asr #21
	bne	lab86
	orrs	ip, r0, r1, lsl #12
	bne	lab87
lab86: 	mov	ip, r3, lsl #1
	mvns	ip, ip, asr #21
	bne	lab88
	orrs	ip, r2, r3, lsl #12
	beq	lab88
lab87: 	ldr	r0, [sp], #4
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
	ldr r1, =7766
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r0, pc}
__aeabi_dcmpeq:
	str	lr, [sp, #-8]!
push {r1, r2}
	ldr r1, =2733
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdcmpeq
	push {r1, r2}
	ldr r1, =2733
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
	ldr r1, =5528
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdcmpeq
	push {r1, r2}
	ldr r1, =5528
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
	ldr r1, =1343
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdcmpeq
	push {r1, r2}
	ldr r1, =1343
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
	ldr r1, =6971
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdrcmple
	push {r1, r2}
	ldr r1, =6971
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
	ldr r1, =2987
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdrcmple
	push {r1, r2}
	ldr r1, =2987
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
	bne	lab89
	orrs	ip, r0, r1, lsl #12
	bne	lab90
lab89: 	mov	ip, r3, lsl #1
	mvns	ip, ip, asr #21
	bne	lab91
	orrs	ip, r2, r3, lsl #12
	bne	lab90
lab91: 	mov	r0, #0
	bx	lr
lab90: 	mov	r0, #1
	bx	lr
__aeabi_d2iz:
	mov	r2, r1, lsl #1
	adds	r2, r2, #2097152	
	bcs	lab92
	bpl	lab93
	mvn	r3, #992	
	subs	r2, r3, r2, asr #21
	bls	lab94
	mov	r3, r1, lsl #11
	orr	r3, r3, #2147483648	
	orr	r3, r3, r0, lsr #21
	tst	r1, #2147483648	
	lsr	r0, r3, r2
	it	ne
	negne	r0, r0
	bx	lr
lab93: 	mov	r0, #0
	bx	lr
lab92: 	orrs	r0, r0, r1, lsl #12
	bne	lab95
lab94: 	ands	r0, r1, #2147483648	
	it	eq
	mvneq	r0, #2147483648	
	bx	lr
lab95: 	mov	r0, #0
	bx	lr
	nop
cos:
	ldr	r2, =0x3fe921fb	
	bic	r3, r1, #2147483648	
	cmp	r3, r2
	ble	lab96
	push	{r4, lr}
	ldr	r2, =0x7fefffff	
	cmp	r3, r2
	sub	sp, #24
	ble	lab97
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
lab101: 	mov	r0, r2
	mov	r1, r3
	add	sp, #24
	nop
	push {r1, r2}
	ldr r1, =2831
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
lab97: 	add	r2, sp, #8
	bl	__ieee754_rem_pio2
	push {r1, r2}
	ldr r1, =2355
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	and	r4, r0, #3
	cmp	r4, #1
	beq	lab98
	cmp	r4, #2
	beq	lab99
	cmp r4, #0
	beq lab100
	movs	r4, #1
	ldrd	r2, r3, [sp, #16]
	ldrd	r0, r1, [sp, #8]
	str	r4, [sp, #0]
push {r1, r2}
	ldr r1, =630
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__kernel_sin
	push {r1, r2}
	ldr r1, =630
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	b	lab101
lab96: 	movs	r2, #0
	movs	r3, #0
	b	__kernel_cos
lab98: 	ldrd	r2, r3, [sp, #16]
	ldrd	r0, r1, [sp, #8]
	str	r4, [sp, #0]
push {r1, r2}
	ldr r1, =3638
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__kernel_sin
	push {r1, r2}
	ldr r1, =3638
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	add	r3, r1, #2147483648	
	b	lab101
lab100: 	ldrd	r2, r3, [sp, #16]
	ldrd	r0, r1, [sp, #8]
push {r1, r2}
	ldr r1, =3825
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__kernel_cos
	push {r1, r2}
	ldr r1, =3825
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	b	lab101
lab99: 	ldrd	r2, r3, [sp, #16]
	ldrd	r0, r1, [sp, #8]
push {r1, r2}
	ldr r1, =738
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__kernel_cos
	push {r1, r2}
	ldr r1, =738
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	add	r3, r1, #2147483648	
	b	lab101
	nop
	.ltorg
acos:
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	mov	r5, r1
	bl	__ieee754_acos
	push {r1, r2}
	ldr r1, =3540
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
	bne lab102
	mov	r0, r4
	mov	r1, r5
	bl	fabs
	ldr	r3, =0x3ff00000	
	movs	r2, #0
	bl	__aeabi_dcmpgt
	cmp r0, #0
	bne lab103
lab102: 	mov	r0, r6
	mov	r1, r7
	nop
	push {r1, r2}
	ldr r1, =7061
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab103: 	bl	__errno
	mov	r3, r0
	movs	r2, #33	
	str	r2, [r3, #0]
	ldr	r0, =0x20000000	
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	nan
	.ltorg
pow:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r2
	mov	r5, r3
	mov	r8, r0
	mov	r9, r1
push {r1, r2}
	ldr r1, =5061
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__ieee754_pow
	push {r1, r2}
	ldr r1, =5061
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
	bne lab104
	movs	r2, #0
	movs	r3, #0
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dcmpeq
	cmp r0, #0
	beq lab105
	movs	r2, #0
	movs	r3, #0
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmpeq
	cmp r0, #0
	beq lab106
	ldr	r7, =0x3ff00000	
	movs	r6, #0
lab104: 	mov	r0, r6
	mov	r1, r7
	nop
	push {r1, r2}
	ldr r1, =4208
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
lab106: 	mov	r0, r4
	mov	r1, r5
	bl	finite
	cmp	r0, #0
	beq	lab104
	mov	r0, r4
	mov	r1, r5
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab104
	b	lab107
lab105: 	mov	r0, r6
	mov	r1, r7
	bl	finite
	cmp r0, #0
	beq lab108
lab109: 	movs	r2, #0
	movs	r3, #0
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	lab104
	mov	r0, r8
	mov	r1, r9
	bl	finite
	cmp	r0, #0
	beq	lab104
	mov	r0, r4
	mov	r1, r5
	bl	finite
	cmp	r0, #0
	beq	lab104
	b	lab107
lab108: 	mov	r0, r8
	mov	r1, r9
	bl	finite
	cmp	r0, #0
	beq	lab109
	mov	r0, r4
	mov	r1, r5
	bl	finite
	cmp	r0, #0
	beq	lab109
	mov	r2, r6
	mov	r3, r7
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dcmpun
	cmp r0, #0
	bne lab110
lab107: 	bl	__errno
	movs	r3, #34	
	str	r3, [r0, #0]
	b	lab104
lab110: 	bl	__errno
	movs	r3, #33	
	str	r3, [r0, #0]
	b	lab104
	nop
	.ltorg
sqrt:
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	mov	r5, r1
push {r1, r2}
	ldr r1, =6848
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__ieee754_sqrt
	push {r1, r2}
	ldr r1, =6848
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
	bne lab111
	mov	r0, r4
	mov	r1, r5
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dcmplt
	cmp r0, #0
	bne lab112
lab111: 	mov	r0, r6
	mov	r1, r7
	nop
	push {r1, r2}
	ldr r1, =48
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab112: 	bl	__errno
	movs	r2, #0
	movs	r3, #0
	movs	r1, #33	
	str	r1, [r0, #0]
	mov	r0, r2
	mov	r1, r3
push {r1, r2}
	ldr r1, =4283
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =4283
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
	ldr r1, =425
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
	nop
__ieee754_acos:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r6, =0x3fefffff	
	bic	r3, r1, #2147483648	
	cmp	r3, r6
	mov	r4, r0
	mov	r5, r1
	ble	lab113
	add	r3, r3, #3221225472	
	add	r3, r3, #1048576	
	orrs	r3, r0
	bne	lab114
	cmp	r1, #0
	ble	lab115
	movs	r0, #0
	movs	r1, #0
	nop
	push {r1, r2}
	ldr r1, =2320
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab113: 	ldr	r6, =0x3fdfffff	
	cmp	r3, r6
	bgt	lab116
	ldr	r2, =0x3c600000	
	cmp	r3, r2
	bgt	lab117
	ldr r0, =0x54442d18	
	ldr r1, =0x3ff921fb
	nop
	push {r1, r2}
	ldr r1, =3290
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab116: 	cmp	r1, #0
	blt	lab118
	mov	r2, r0
	mov	r3, r1
	movs	r0, #0
	ldr	r1, =0x3ff00000	
	bl	__aeabi_dsub
	ldr	r3, =0x3fe00000	
	movs	r2, #0
push {r1, r2}
	ldr r1, =5111
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5111
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	mov	r5, r1
push {r1, r2}
	ldr r1, =4559
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__ieee754_sqrt
	push {r1, r2}
	ldr r1, =4559
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xdfdf709	
	ldr r3, =0x3f023de1
	mov	r9, r1
	mov	r8, r0
	mov	r1, r5
	mov	r0, r4
push {r1, r2}
	ldr r1, =2623
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2623
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x7501b288	
	ldr r3, =0x3f49efe0
push {r1, r2}
	ldr r1, =4433
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =4433
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =5569
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5569
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xb5688f3b	
	ldr r3, =0x3fa48228
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =1959
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1959
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xe884455	
	ldr r3, =0x3fc9c155
push {r1, r2}
	ldr r1, =6963
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =6963
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =7938
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7938
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x3eb6f7d	
	ldr r3, =0x3fd4d612
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =5698
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5698
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x55555555	
	ldr r3, =0x3fc55555
push {r1, r2}
	ldr r1, =6083
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =6083
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =5750
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5750
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xb12e9282	
	ldr r3, =0x3fb3b8c5
	mov	sl, r0
	mov	fp, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =2292
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2292
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x1b8d0159	
	ldr r3, =0x3fe6066c
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =5970
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5970
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x9c598ac8	
	ldr r3, =0x40002ae5
push {r1, r2}
	ldr r1, =3784
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =3784
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =7670
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7670
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x1c8a2d4b	
	ldr r3, =0x40033a27
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =3437
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3437
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x3ff00000	
	movs	r2, #0
push {r1, r2}
	ldr r1, =2394
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2394
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =414
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =414
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =752
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =752
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r6, #0
	mov	sl, r0
	mov	fp, r1
	mov	r2, r6
	mov	r3, r9
	mov	r0, r6
	mov	r1, r9
push {r1, r2}
	ldr r1, =1104
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1104
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r4, r0
	mov	r5, r1
	mov	r3, r9
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =6578
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =6578
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =7775
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =7775
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =3689
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =3689
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r9
push {r1, r2}
	ldr r1, =2856
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2856
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
push {r1, r2}
	ldr r1, =6723
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	nop
	push {r1, r2}
	ldr r1, =6723
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	push {r1, r2}
	ldr r1, =6723
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab114: 	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
push {r1, r2}
	ldr r1, =3639
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	nop
	push {r1, r2}
	ldr r1, =3639
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	push {r1, r2}
	ldr r1, =3639
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab115: 	ldr r0, =0x54442d18	
	ldr r1, =0x400921fb
	nop
	push {r1, r2}
	ldr r1, =7824
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab117: 	mov	r2, r0
	mov	r3, r1
push {r1, r2}
	ldr r1, =2100
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2100
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xdfdf709	
	ldr r3, =0x3f023de1
	mov	r6, r0
	mov	r7, r1
push {r1, r2}
	ldr r1, =5682
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5682
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x7501b288	
	ldr r3, =0x3f49efe0
push {r1, r2}
	ldr r1, =2167
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2167
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =3547
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3547
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xb5688f3b	
	ldr r3, =0x3fa48228
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =6062
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6062
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xe884455	
	ldr r3, =0x3fc9c155
push {r1, r2}
	ldr r1, =5560
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =5560
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =732
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =732
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x3eb6f7d	
	ldr r3, =0x3fd4d612
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =4715
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4715
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x55555555	
	ldr r3, =0x3fc55555
push {r1, r2}
	ldr r1, =3284
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =3284
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =1841
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1841
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xb12e9282	
	ldr r3, =0x3fb3b8c5
	mov	r8, r0
	mov	r9, r1
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =5470
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5470
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x1b8d0159	
	ldr r3, =0x3fe6066c
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =3124
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3124
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x9c598ac8	
	ldr r3, =0x40002ae5
push {r1, r2}
	ldr r1, =5205
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =5205
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =3653
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3653
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x1c8a2d4b	
	ldr r3, =0x40033a27
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =6290
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6290
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x3ff00000	
	movs	r2, #0
push {r1, r2}
	ldr r1, =2889
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2889
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =4291
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =4291
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =6093
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6093
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldr r0, =0x33145c07	
	ldr r1, =0x3c91a626
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	ldr r0, =0x54442d18	
	ldr r1, =0x3ff921fb
	bl	__aeabi_dsub
	nop
	push {r1, r2}
	ldr r1, =4418
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.ltorg
lab118: 	ldr	r3, =0x3ff00000	
	movs	r2, #0
push {r1, r2}
	ldr r1, =2077
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2077
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x3fe00000	
	movs	r2, #0
push {r1, r2}
	ldr r1, =3410
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3410
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xdfdf709	
	ldr r3, =0x3f023de1
	mov	r4, r0
	mov	r5, r1
push {r1, r2}
	ldr r1, =601
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =601
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x7501b288	
	ldr r3, =0x3f49efe0
push {r1, r2}
	ldr r1, =2620
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2620
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =7228
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7228
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xb5688f3b	
	ldr r3, =0x3fa48228
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =5658
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5658
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xe884455	
	ldr r3, =0x3fc9c155
push {r1, r2}
	ldr r1, =8148
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =8148
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =189
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =189
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x3eb6f7d	
	ldr r3, =0x3fd4d612
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =2251
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2251
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x55555555	
	ldr r3, =0x3fc55555
push {r1, r2}
	ldr r1, =7062
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7062
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =2854
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2854
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r8, r0
	mov	r9, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =5082
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__ieee754_sqrt
	push {r1, r2}
	ldr r1, =5082
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xb12e9282	
	ldr r3, =0x3fb3b8c5
	mov	r6, r0
	mov	r7, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =7014
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7014
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x1b8d0159	
	ldr r3, =0x3fe6066c
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =3401
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3401
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x9c598ac8	
	ldr r3, =0x40002ae5
push {r1, r2}
	ldr r1, =853
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =853
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =782
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =782
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x1c8a2d4b	
	ldr r3, =0x40033a27
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =7863
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7863
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x3ff00000	
	movs	r2, #0
push {r1, r2}
	ldr r1, =729
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =729
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =2719
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =2719
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =1974
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1974
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x33145c07	
	ldr r3, =0x3c91a626
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =7636
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7636
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
push {r1, r2}
	ldr r1, =1763
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =1763
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldr r0, =0x54442d18	
	ldr r1, =0x400921fb
	bl	__aeabi_dsub
	nop
	push {r1, r2}
	ldr r1, =4274
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.ltorg
__ieee754_pow:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bic	fp, r3, #2147483648	
	mov	r8, r1
	orrs	r1, fp, r2
	sub	sp, #76	
	mov	r4, r2
	mov	r5, r3
	mov	r7, r0
	bne	lab119
	adds	r3, r0, r0
	eor	r2, r8, #524288	
	ldr	r0, =0xfff00000	
	adcs	r2, r2
	cmp	r1, r3
	sbcs	r3, r0, r2
	bcs	lab120
lab122: 	mov	r0, r7
	mov	r1, r8
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =3018
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
lab142:	push {r1, r2}
	ldr r1, =3018
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	add	sp, #76	
	nop
	push {r1, r2}
	ldr r1, =2944
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab119: 	mov	r0, r2
	ldr	r2, =0x7ff00000	
	bic	r9, r8, #2147483648	
	cmp	r9, r2
	mov	sl, r3
	mov	r6, r8
	mov	r3, r7
	ble	lab121
lab124: 	add	r6, r6, #3221225472	
	add	r6, r6, #1048576	
	orrs	r6, r3
	bne	lab122
	adds	r3, r4, r4
	ldr	r1, =0xfff00000	
	eor	r2, r5, #524288	
	adcs	r2, r2
	cmp	r6, r3
	sbcs	r3, r1, r2
	bcc	lab122
lab120: 	ldr	r4, =0x3ff00000	
	movs	r3, #0
	mov	r0, r3
	mov	r1, r4
	add	sp, #76	
	nop
	push {r1, r2}
	ldr r1, =1330
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab121: 	beq	lab123
lab138: 	ldr	r2, =0x7ff00000	
	cmp	fp, r2
	bgt	lab124
	beq	lab125
lab149: 	cmp	r6, #0
	blt	lab126
	movs	r2, #0
	str	r2, [sp, #0]
	cmp r0, #0
	bne lab127
lab152: 	ldr	r2, =0x7ff00000	
	cmp	fp, r2
	beq	lab128
lab148: 	ldr	r2, =0x3ff00000	
	cmp	fp, r2
	beq	lab129
	cmp	sl, #1073741824	
	beq	lab130
	ldr	r2, =0x3fe00000	
	cmp	sl, r2
	beq	lab131
lab127: 	mov	r0, r7
	mov	r1, r8
	str	r3, [sp, #8]
	bl	fabs
	ldr	r3, [sp, #8]
	cmp r3, #0
	beq lab132
lab140: 	ldr	r2, [sp, #0]
	lsrs	r3, r6, #31
	subs	r3, #1
	str	r3, [sp, #40]	
	orrs	r3, r2
	beq	lab133
	ldr	r3, =0x41e00000	
	cmp	fp, r3
	ble	lab134
	add	r3, r3, #34603008	
	cmp	fp, r3
	ldr	r3, =0x3fefffff	
	ble	lab135
	cmp	r9, r3
	ble	lab136
lab165: 	cmp	sl, #0
	ble	lab137
lab169: 	movs	r0, #0
lab175: 	add	sp, #76	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	__math_oflow
lab123: 	cmp	r7, #0
	bne	lab122
	b	lab138
lab171: 	mov	r0, r7
	mov	r1, r8
	str	r3, [sp, #0]
	bl	fabs
	ldr	r3, [sp, #0]
	cmp	r3, #0
	bne	lab133
	str	r3, [sp, #0]
lab132: 	cmp	r9, #0
	beq	lab139
	ldr	r3, =0x3ff00000	
	bic	r2, r6, #3221225472	
	cmp	r2, r3
	bne	lab140
lab139: 	cmp	sl, #0
	bge	lab141
	mov	r2, r0
	mov	r3, r1
	movs	r0, #0
	ldr	r1, =0x3ff00000	
push {r1, r2}
	ldr r1, =7620
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
lab141:	push {r1, r2}
	ldr r1, =7620
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	cmp	r6, #0
	bge	lab142
	ldr	r3, [sp, #0]
	add	r9, r9, #3221225472	
	add	r9, r9, #1048576	
	orrs	r3, r9, r3
	bne	lab143
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
push {r1, r2}
	ldr r1, =263
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =263
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab142
lab126: 	ldr	r2, =0x433fffff	
	cmp	fp, r2
	bgt	lab144
	sub	r2, r2, #55574528	
	cmp	fp, r2
	ble	lab145
	mov	r2, fp, asr #20
	subw	r2, r2, #1023	
	cmp	r2, #20
	ble	lab146
	rsb	r2, r2, #52	
	lsr	r1, r0, r2
	lsl	r2, r1, r2
	cmp	r2, r0
	beq	lab147
lab145: 	movs	r2, #0
	str	r2, [sp, #0]
	cmp	r0, #0
	beq	lab148
	b	lab127
lab125: 	cmp	r0, #0
	beq	lab149
	b	lab124
lab128: 	add	r2, r9, #3221225472	
	add	r2, r2, #1048576	
	orrs	r3, r2
	beq	lab120
	ldr	r3, =0x3fefffff	
	cmp	r9, r3
	ble	lab150
	cmp	sl, #0
	blt	lab151
	mov	r0, r4
	mov	r1, r5
	b	lab142
lab144: 	movs	r2, #2
	str	r2, [sp, #0]
	cmp	r0, #0
	beq	lab152
	b	lab127
lab129: 	cmp	sl, #0
	blt	lab153
	mov	r0, r7
	mov	r1, r8
	b	lab142
lab133: 	mov	r2, r7
	mov	r3, r8
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
push {r1, r2}
	ldr r1, =2858
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =2858
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab142
	nop
	.ltorg
lab134: 	ldr	r3, =0x7ff00000	
	ands	r3, r6
	movs	r2, #0
	cmp r3, #0
	bne lab154
	ldr	r3, =0x43400000	
push {r1, r2}
	ldr r1, =3059
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3059
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mvn	r2, #52	
	mov	r9, r1
lab154: 	mov	r3, r9, asr #20
	subw	r3, r3, #1023	
	adds	r2, r3, r2
	ldr	r3, =0x3988e	
	str	r2, [sp, #44]	
	ubfx	r9, r9, #0, #20
	orr	r6, r9, #1069547520	
	cmp	r9, r3
	orr	r6, r6, #3145728	
	ble	lab155
	ldr	r3, =0xbb679	
	cmp	r9, r3
	ble	lab156
	adds	r2, #1
	str	r2, [sp, #44]	
	sub	r6, r6, #1048576	
lab155: 	movs	r2, #0
	movs	r3, #0
	strd	r2, r3, [sp, #32]
	strd	r2, r3, [sp, #64]	
	ldr	r3, =0x3ff00000	
	movs	r2, #0
	strd	r2, r3, [sp, #24]
	movs	r7, #0
lab173: 	ldrd	r2, r3, [sp, #24]
	mov	r1, r6
	mov	sl, r0
	bl	__aeabi_dsub
	mov	fp, r6
	ldrd	r2, r3, [sp, #24]
	mov	r8, r0
	mov	r9, r1
	mov	r0, sl
	mov	r1, r6
	strd	sl, fp, [sp, #48]	
push {r1, r2}
	ldr r1, =3063
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =3063
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	movs	r0, #0
	ldr	r1, =0x3ff00000	
push {r1, r2}
	ldr r1, =3072
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =3072
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r1
	mov	r1, r0
	strd	r1, r2, [sp, #56]	
	mov	r3, r2
	mov	r1, r9
	mov	r2, r0
	mov	r0, r8
push {r1, r2}
	ldr r1, =8183
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =8183
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r1
	mov	fp, r0
	mov	ip, r2
	strd	fp, ip, [sp, #8]
	mov	ip, #0
	str	ip, [sp, #8]
	asrs	r6, r6, #1
	ldrd	sl, fp, [sp, #8]
	orr	r6, r6, #536870912	
	mov	r1, r0
	add	r3, r6, #524288	
	strd	r1, r2, [sp, #16]
	movs	r0, #0
	adds	r1, r3, r7
	mov	r6, r0
	mov	r7, r1
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =6255
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6255
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	ldrd	r2, r3, [sp, #24]
	mov	r8, r0
	mov	r9, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp, #48]	
	bl	__aeabi_dsub
	mov	r2, sl
	mov	r3, fp
push {r1, r2}
	ldr r1, =5493
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5493
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	ldrd	r2, r3, [sp, #56]	
push {r1, r2}
	ldr r1, =182
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =182
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r6, r7, [sp, #16]
	strd	r0, r1, [sp, #24]
	mov	r2, r6
	mov	r3, r7
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =3365
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3365
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x4a454eef	
	ldr r3, =0x3fca7e28
	mov	r6, r0
	mov	r7, r1
push {r1, r2}
	ldr r1, =6996
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6996
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x93c9db65	
	ldr r3, =0x3fcd864a
push {r1, r2}
	ldr r1, =3985
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =3985
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =4496
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4496
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xa91d4101	
	ldr r3, =0x3fd17460
push {r1, r2}
	ldr r1, =3205
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =3205
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =1859
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1859
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x518f264d	
	ldr r3, =0x3fd55555
push {r1, r2}
	ldr r1, =7566
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7566
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =5241
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5241
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xdb6fabff	
	ldr r3, =0x3fdb6db6
push {r1, r2}
	ldr r1, =6920
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =6920
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =5966
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5966
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x33333303	
	ldr r3, =0x3fe33333
push {r1, r2}
	ldr r1, =7835
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7835
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r8, r0
	mov	r9, r1
	mov	r3, r7
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =1918
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1918
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =123
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =123
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, sl
	mov	r6, r0
	mov	r7, r1
	mov	r3, fp
	ldrd	r0, r1, [sp, #16]
push {r1, r2}
	ldr r1, =3240
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =3240
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp, #24]
push {r1, r2}
	ldr r1, =7044
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7044
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =8066
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =8066
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, sl
	mov	r8, r0
	mov	r9, r1
	mov	r3, fp
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =731
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =731
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	strd	r2, r3, [sp, #48]	
	ldr	r3, =0x40080000	
	movs	r2, #0
push {r1, r2}
	ldr r1, =2685
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2685
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =208
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =208
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r6, #0
	mov	r7, r1
	mov	r2, r6
	mov	r3, r7
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =2696
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2696
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x40080000	
	mov	sl, r0
	mov	fp, r1
	movs	r2, #0
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [sp, #48]	
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	ldrd	r2, r3, [sp, #16]
push {r1, r2}
	ldr r1, =1687
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1687
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r8, r0
	mov	r9, r1
	mov	r3, r7
	ldrd	r0, r1, [sp, #24]
push {r1, r2}
	ldr r1, =7894
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7894
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =7157
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7157
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r8, r0
	mov	r9, r1
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =1547
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =1547
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r6, #0
	ldr r2, =0xe0000000	
	ldr r3, =0x3feec709
	mov	r0, r6
	mov	r7, r1
push {r1, r2}
	ldr r1, =4624
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4624
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, sl
	mov	r3, fp
	mov	sl, r0
	mov	fp, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	ldr r2, =0xdc3a03fd	
	ldr r3, =0x3feec709
push {r1, r2}
	ldr r1, =3339
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3339
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x145b01f5	
	ldr r3, =0xbe3e2fe0
	mov	r8, r0
	mov	r9, r1
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =270
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =270
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =2098
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2098
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp, #64]	
push {r1, r2}
	ldr r1, =591
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =591
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r8, r0
	ldr	r0, [sp, #44]	
	mov	r9, r1
push {r1, r2}
	ldr r1, =3476
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =3476
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r6, r0
	mov	r7, r1
	mov	r3, r9
	mov	r0, sl
	mov	r1, fp
	strd	sl, fp, [sp, #16]
push {r1, r2}
	ldr r1, =6395
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =6395
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp, #32]
push {r1, r2}
	ldr r1, =3787
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =3787
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =7631
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7631
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	sl, #0
	mov	r2, r6
	mov	r3, r7
	mov	r0, sl
	mov	fp, r1
	bl	__aeabi_dsub
	ldrd	r2, r3, [sp, #32]
	bl	__aeabi_dsub
	ldrd	r2, r3, [sp, #16]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	b	lab157
	.ltorg
lab157: 	strd	r0, r1, [sp, #8]
lab166: 	ldr	r3, [sp, #0]
	ldr	r2, [sp, #40]	
	subs	r3, #1
	orrs	r3, r2
	ite	eq
	ldreq	r3, =0xbff00000	
	ldrne	r3, =0x3ff00000	
	movs	r2, #0
	strd	r2, r3, [sp, #16]
	movs	r3, #0
	strd	r4, r5, [sp]
	str	r3, [sp, #0]
	ldrd	r8, r9, [sp]
	mov	r0, r4
	mov	r2, r8
	mov	r3, r9
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, sl
	mov	r3, fp
push {r1, r2}
	ldr r1, =163
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =163
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r6, r0
	mov	r7, r1
	mov	r3, r5
	ldrd	r0, r1, [sp, #8]
push {r1, r2}
	ldr r1, =3550
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3550
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =1614
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =1614
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
	mov	r6, r0
	mov	r7, r1
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =5060
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5060
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r1
	mov	r2, r0
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =5659
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =5659
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x408fffff	
	cmp	r1, r3
	mov	r8, r0
	mov	r9, r1
	mov	sl, r1
	ble	lab158
	add	r3, r1, #3204448256	
	add	r3, r3, #7340032	
	orrs	r3, r0
	bne	lab159
	ldr r2, =0x652b82fe	
	ldr r3, =0x3c971547
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =5415
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =5415
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	strd	r0, r1, [sp]
	mov	r3, r5
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp]
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	bne	lab159
lab164: 	ubfx	r3, sl, #20, #11
lab176: 	mov	r2, #1048576	
	subw	r3, r3, #1022	
	asr	r3, r2, r3
	add	r3, sl
	ldr	r1, =0xfffff	
	ubfx	r2, r3, #20, #11
	subw	r2, r2, #1023	
	asr	ip, r1, r2
	ubfx	r1, r3, #0, #20
	rsb	r2, r2, #20
	orr	r1, r1, #1048576	
	asr	lr, r1, r2
	movs	r0, #0
	bic	r1, r3, ip
	cmp	sl, #0
	str	lr, [sp, #8]
	mov	r2, r0
	mov	r3, r1
	bge	lab160
	mov	r1, lr
	negs	r1, r1
	str	r1, [sp, #8]
lab160: 	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	ldr	r3, [sp, #8]
	lsls	r3, r3, #20
	str	r3, [sp, #0]
	mov	r2, r0
	mov	r3, r1
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =742
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =742
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r9, r1
lab168: 	mov	r8, #0
	ldr r2, =0x0	
	ldr r3, =0x3fe62e43
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =6637
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6637
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	sl, r0
	mov	fp, r1
	mov	r3, r5
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldr r2, =0xfefa39ef	
	ldr r3, =0x3fe62e42
push {r1, r2}
	ldr r1, =4854
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4854
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xca86c39	
	ldr r3, =0xbe205c61
	mov	r4, r0
	mov	r5, r1
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =2752
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2752
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =1345
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =1345
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r6, r0
	mov	r7, r1
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =2279
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2279
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, sl
	mov	r3, fp
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r2, r4
	mov	sl, r0
	mov	fp, r1
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =3867
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3867
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x72bea4d0	
	ldr r3, =0x3e663769
	mov	r6, r0
	mov	r7, r1
push {r1, r2}
	ldr r1, =8123
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =8123
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xc5d26bf1	
	ldr r3, =0x3ebbbd41
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =1872
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1872
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xaf25de2c	
	ldr r3, =0x3f11566a
push {r1, r2}
	ldr r1, =4500
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =4500
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =586
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =586
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x16bebd93	
	ldr r3, =0x3f66c16c
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =1837
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1837
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x5555553e	
	ldr r3, =0x3fc55555
push {r1, r2}
	ldr r1, =8057
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =8057
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =2156
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2156
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r6, r0
	mov	r7, r1
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =513
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =513
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #0
	mov	r8, r0
	mov	r9, r1
	mov	r0, r6
	mov	r1, r7
	mov	r3, #1073741824	
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =1283
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =1283
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, sl
	mov	r6, r0
	mov	r7, r1
	mov	r3, fp
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =6310
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6310
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, sl
	mov	r3, fp
push {r1, r2}
	ldr r1, =3316
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =3316
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	movs	r0, #0
	ldr	r1, =0x3ff00000	
	bl	__aeabi_dsub
	ldr	r5, [sp, #0]
	mov	r4, r1
	add	r4, r5
	cmp	r4, #1048576	
	blt	lab161
	mov	r1, r4
lab174: 	ldrd	r2, r3, [sp, #16]
push {r1, r2}
	ldr r1, =5209
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5209
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab142
lab131: 	cmp	r6, #0
	blt	lab127
	mov	r0, r7
	mov	r1, r8
	add	sp, #76	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	__ieee754_sqrt
lab158: 	ldr	ip, =0x4090cbff	
	bic	r3, r1, #2147483648	
	cmp	r3, ip
	ble	lab162
	ldr	r3, =0x3f6f3400	
	add	r3, r1
	orrs	r3, r0
	bne	lab163
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dcmpge
	cmp	r0, #0
	beq	lab164
lab163: 	ldrd	r0, r1, [sp, #16]
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dcmplt
	subs	r0, #0
	it	ne
	movne	r0, #1
lab170: 	add	sp, #76	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	__math_uflow
lab151: 	movs	r3, #0
	movs	r4, #0
	mov	r0, r3
	mov	r1, r4
	b	lab142
lab150: 	cmp	sl, #0
	bge	lab151
	add	r3, r5, #2147483648	
	mov	r0, r4
	mov	r1, r3
	b	lab142
	nop
	.ltorg
lab135: 	cmp	r9, r3
	blt	lab136
	ldr	r3, =0x3ff00000	
	cmp	r9, r3
	bgt	lab165
	ldr	r3, =0x3ff00000	
	movs	r2, #0
	bl	__aeabi_dsub
	ldr r2, =0x60000000	
	ldr r3, =0x3ff71547
	mov	r6, r0
	mov	r7, r1
push {r1, r2}
	ldr r1, =3355
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3355
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xf85ddf44	
	ldr r3, =0x3e54ae0b
	mov	r8, r0
	mov	r9, r1
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =1599
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1599
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x3fd00000	
	mov	sl, r0
	mov	fp, r1
	movs	r2, #0
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =4453
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4453
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldr r0, =0x55555555	
	ldr r1, =0x3fd55555
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =7545
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7545
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	movs	r0, #0
	ldr	r1, =0x3fe00000	
	bl	__aeabi_dsub
	mov	r2, r6
	strd	r0, r1, [sp, #8]
	mov	r3, r7
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =715
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =715
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp, #8]
push {r1, r2}
	ldr r1, =7286
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7286
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x652b82fe	
	ldr r3, =0x3ff71547
push {r1, r2}
	ldr r1, =2495
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2495
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r6, r0
	mov	r7, r1
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =8076
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =8076
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	sl, #0
	mov	r2, r8
	mov	r3, r9
	mov	r0, sl
	mov	fp, r1
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	strd	r0, r1, [sp, #8]
	b	lab166
lab153: 	mov	r2, r7
	mov	r3, r8
	ldr	r1, =0x3ff00000	
	movs	r0, #0
push {r1, r2}
	ldr r1, =2173
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =2173
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab142
lab130: 	mov	r2, r7
	mov	r0, r7
	mov	r3, r8
	mov	r1, r8
push {r1, r2}
	ldr r1, =6091
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6091
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab142
lab162: 	ldr	r2, =0x3fe00000	
	cmp	r3, r2
	bgt	lab167
	ldrd	r2, r3, [sp]
	str	r2, [sp, #0]
	str	r2, [sp, #8]
	b	lab168
lab136: 	cmp	sl, #0
	blt	lab169
lab137: 	movs	r0, #0
	b	lab170
lab146: 	cmp	r0, #0
	bne	lab171
	rsb	r2, r2, #20
	asr	r1, fp, r2
	lsl	r2, r1, r2
	cmp	r2, fp
	beq	lab172
	str	r0, [sp, #0]
	b	lab148
lab143: 	ldr	r3, [sp, #0]
	cmp	r3, #1
	bne	lab142
	add	r3, r1, #2147483648	
	mov	r1, r3
	b	lab142
lab156: 	ldr r2, =0x40000000	
	ldr r3, =0x3fe2b803
	strd	r2, r3, [sp, #32]
	ldr r2, =0x43cfd006	
	ldr r3, =0x3e4cfdeb
	strd	r2, r3, [sp, #64]	
	ldr	r3, =0x3ff80000	
	movs	r2, #0
	strd	r2, r3, [sp, #24]
	mov	r7, #262144	
	b	lab173
lab161: 	ldr	r2, [sp, #8]
push {r1, r2}
	ldr r1, =2624
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	scalbn
	push {r1, r2}
	ldr r1, =2624
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab174
lab159: 	ldrd	r0, r1, [sp, #16]
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dcmplt
	subs	r0, #0
	it	ne
	movne	r0, #1
	b	lab175
lab147: 	and	r1, r1, #1
	rsb	r2, r1, #2
	str	r2, [sp, #0]
	cmp	r0, #0
	beq	lab148
	b	lab127
lab172: 	and	r1, r1, #1
	rsb	r2, r1, #2
	str	r2, [sp, #0]
	b	lab148
lab167: 	asrs	r3, r3, #20
	b	lab176
	nop
	nop
	.ltorg
__ieee754_rem_pio2:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r2
	ldr	r2, =0x3fe921fb	
	bic	r5, r1, #2147483648	
	cmp	r5, r2
	sub	sp, #68	
	ble	lab177
	ldr	r2, =0x4002d97b	
	cmp	r5, r2
	mov	r7, r1
	bgt	lab178
	cmp	r1, #0
	ldr r2, =0x54400000	
	ldr r3, =0x3ff921fb
	ble	lab179
	bl	__aeabi_dsub
	ldr	r3, =0x3ff921fb	
	cmp	r5, r3
	mov	r8, r0
	mov	r9, r1
	beq	lab180
	ldr r2, =0x1a626331	
	ldr r3, =0x3dd0b461
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	strd	r2, r3, [r4]
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	ldr r2, =0x1a626331	
	ldr r3, =0x3dd0b461
	bl	__aeabi_dsub
	strd	r0, r1, [r4, #8]
	movs	r6, #1
lab184: 	mov	r0, r6
	add	sp, #68	
	nop
	push {r1, r2}
	ldr r1, =5410
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab178: 	ldr	r2, =0x413921fb	
	cmp	r5, r2
	ble	lab181
	ldr	r2, =0x7fefffff	
	cmp	r5, r2
	bgt	lab182
	asrs	r6, r5, #20
	subw	r6, r6, #1046	
	sub	r1, r5, r6, lsl #20
	mov	r9, r1
	mov	r8, r0
	bl	__aeabi_d2iz
push {r1, r2}
	ldr r1, =1508
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =1508
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	strd	r2, r3, [sp, #40]	
	bl	__aeabi_dsub
	ldr	r3, =0x41700000	
	movs	r2, #0
push {r1, r2}
	ldr r1, =2688
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2688
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r9, r1
	mov	r8, r0
	bl	__aeabi_d2iz
	mov	r5, r0
push {r1, r2}
	ldr r1, =5826
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =5826
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	strd	r2, r3, [sp, #48]	
	bl	__aeabi_dsub
	ldr	r3, =0x41700000	
	movs	r2, #0
push {r1, r2}
	ldr r1, =6224
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6224
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	strd	r2, r3, [sp, #56]	
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	lab183
	cmp	r5, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #2
lab189: 	ldr	r2, =0x20000084	
	str	r2, [sp, #4]
	movs	r2, #2
	str	r2, [sp, #0]
	mov	r1, r4
	mov	r2, r6
	add	r0, sp, #40	
	bl	__kernel_rem_pio2
	push {r1, r2}
	ldr r1, =1296
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r7, #0
	mov	r6, r0
	bge	lab184
	ldrd	r0, r5, [r4]
	add	r1, r5, #2147483648	
	strd	r0, r1, [r4]
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #8]
	add	r3, r1, #2147483648	
	strd	r2, r3, [r4, #8]
	negs	r6, r6
	b	lab184
lab177: 	movs	r6, #0
	strd	r0, r1, [r4]
	movs	r2, #0
	movs	r3, #0
	mov	r0, r6
	strd	r2, r3, [r4, #8]
	add	sp, #68	
	nop
	push {r1, r2}
	ldr r1, =5378
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab182: 	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dsub
	movs	r6, #0
	strd	r0, r1, [r4, #8]
	strd	r0, r1, [r4]
	b	lab184
lab180: 	ldr r2, =0x1a600000	
	ldr r3, =0x3dd0b461
	bl	__aeabi_dsub
	ldr r2, =0x2e037073	
	ldr r3, =0x3ba3198a
	mov	r8, r0
	mov	r9, r1
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	strd	r2, r3, [r4]
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	ldr r2, =0x2e037073	
	ldr r3, =0x3ba3198a
	bl	__aeabi_dsub
	movs	r6, #1
	strd	r0, r1, [r4, #8]
	mov	r0, r6
	add	sp, #68	
	nop
	push {r1, r2}
	ldr r1, =6632
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab181: 	bl	fabs
	ldr r2, =0x6dc9c883	
	ldr r3, =0x3fe45f30
	mov	r8, r0
	mov	r9, r1
push {r1, r2}
	ldr r1, =3651
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3651
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x3fe00000	
	movs	r2, #0
push {r1, r2}
	ldr r1, =4651
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =4651
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	__aeabi_d2iz
	mov	r6, r0
push {r1, r2}
	ldr r1, =5057
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =5057
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x54400000	
	ldr r3, =0x3ff921fb
	mov	sl, r0
	mov	fp, r1
	strd	sl, fp, [sp, #16]
push {r1, r2}
	ldr r1, =3273
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3273
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	ldr r2, =0x1a626331	
	ldr r3, =0x3dd0b461
	strd	r0, r1, [sp, #8]
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =2198
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2198
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r6, #31
	mov	r8, r0
	mov	r9, r1
	bgt	lab185
	ldr	r3, =0x20000004	
	subs	r2, r6, #1
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, r5
	beq	lab185
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp, #8]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	strd	r2, r3, [r4]
	mov	sl, r0
	mov	fp, r1
	b	lab186
lab185: 	asrs	r3, r5, #20
	str	r3, [sp, #28]
	ldrd	r0, r1, [sp, #8]
	mov	r3, r9
	mov	r2, r8
	bl	__aeabi_dsub
	ubfx	r3, r1, #20, #11
	rsb	r5, r3, r5, lsr #20
	cmp	r5, #16
	mov	fp, r1
	mov	sl, r0
	ble	lab187
	ldr r2, =0x1a600000	
	ldr r3, =0x3dd0b461
	ldrd	r0, r1, [sp, #16]
push {r1, r2}
	ldr r1, =444
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =444
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r8, r0
	mov	r9, r1
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp, #8]
	bl	__aeabi_dsub
	mov	sl, r0
	mov	fp, r1
	mov	r2, sl
	mov	r3, fp
	ldrd	r0, r1, [sp, #8]
	bl	__aeabi_dsub
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dsub
	ldr r2, =0x2e037073	
	ldr r3, =0x3ba3198a
	mov	r8, r0
	mov	r9, r1
	ldrd	r0, r1, [sp, #16]
push {r1, r2}
	ldr r1, =8017
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =8017
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r8, r0
	mov	r9, r1
	mov	r0, sl
	mov	r1, fp
	strd	sl, fp, [sp, #32]
	bl	__aeabi_dsub
	ldr	r2, [sp, #28]
	ubfx	r3, r1, #20, #11
	subs	r3, r2, r3
	cmp	r3, #49	
	mov	fp, r1
	mov	sl, r0
	bgt	lab188
	mov	r2, r0
	mov	r3, r1
	strd	r2, r3, [r4]
	ldrd	r2, r3, [sp, #32]
	strd	r2, r3, [sp, #8]
	b	lab186
	nop
	nop
	.ltorg
lab188: 	ldr r2, =0x2e000000	
	ldr r3, =0x3ba3198a
	ldrd	r0, r1, [sp, #16]
push {r1, r2}
	ldr r1, =682
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =682
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r8, r0
	mov	r9, r1
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp, #32]
	bl	__aeabi_dsub
	mov	sl, r0
	mov	fp, r1
	mov	r2, sl
	mov	r3, fp
	ldrd	r0, r1, [sp, #32]
	strd	sl, fp, [sp, #8]
	bl	__aeabi_dsub
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dsub
	ldr r2, =0x252049c1	
	ldr r3, =0x397b839a
	mov	r8, r0
	mov	r9, r1
	ldrd	r0, r1, [sp, #16]
push {r1, r2}
	ldr r1, =7172
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7172
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r8, r0
	mov	r9, r1
	mov	r0, sl
	mov	r1, fp
	bl	__aeabi_dsub
	mov	fp, r1
	mov	sl, r0
lab187: 	mov	r2, sl
	mov	r3, fp
	strd	r2, r3, [r4]
lab186: 	mov	r2, sl
	mov	r3, fp
	ldrd	r0, r1, [sp, #8]
	bl	__aeabi_dsub
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dsub
	cmp	r7, #0
	mov	r2, r0
	mov	r3, r1
	strd	r2, r3, [r4, #8]
	bge	lab184
	add	r3, fp, #2147483648	
	add	r1, r1, #2147483648	
	str	r0, [r4, #8]
	str	sl, [r4]
	str	r3, [r4, #4]
	str	r1, [r4, #12]
	negs	r6, r6
	b	lab184
lab183: 	movs	r3, #3
	b	lab189
lab179:push {r1, r2}
	ldr r1, =4034
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	__adddf3
	push {r1, r2}
	ldr r1, =4034
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x3ff921fb	
	cmp	r5, r3
	mov	r8, r0
	mov	r9, r1
	beq	lab190
	ldr r2, =0x1a626331	
	ldr r3, =0x3dd0b461
push {r1, r2}
	ldr r1, =4030
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =4030
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	strd	r2, r3, [r4]
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	ldr r2, =0x1a626331	
	ldr r3, =0x3dd0b461
push {r1, r2}
	ldr r1, =2895
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2895
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r6, #4294967295	
	strd	r0, r1, [r4, #8]
	b	lab184
lab190: 	ldr r2, =0x1a600000	
	ldr r3, =0x3dd0b461
push {r1, r2}
	ldr r1, =6130
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =6130
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x2e037073	
	ldr r3, =0x3ba3198a
	mov	r8, r0
	mov	r9, r1
push {r1, r2}
	ldr r1, =954
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =954
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	strd	r2, r3, [r4]
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	ldr r2, =0x2e037073	
	ldr r3, =0x3ba3198a
push {r1, r2}
	ldr r1, =709
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =709
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r6, #4294967295	
	strd	r0, r1, [r4, #8]
	b	lab184
	.ltorg
__ieee754_sqrt:
	ldr	r2, =0x7ff00000	
	bics	r2, r1
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	mov	r4, r1
	beq	lab191
	cmp	r1, #0
	mov	r3, r1
	mov	ip, r0
	ble	lab192
	asrs	r1, r1, #20
	beq	lab193
lab210: 	ubfx	r3, r3, #0, #20
	lsls	r0, r1, #31
	subw	r7, r1, #1023	
	orr	r3, r3, #1048576	
	bmi	lab194
	lsls	r3, r3, #1
	add	r3, r3, ip, lsr #31
	mov	ip, ip, lsl #1
lab194: 	mov	r2, ip, lsr #31
	movs	r6, #0
	add	r3, r2, r3, lsl #1
	asrs	r7, r7, #1
	mov	ip, ip, lsl #1
	mov	lr, #22
	mov	r4, r6
	mov	r2, #2097152	
lab196: 	adds	r1, r4, r2
	cmp	r1, r3
	bgt	lab195
	subs	r3, r3, r1
	adds	r4, r1, r2
	add	r6, r2
lab195: 	lsls	r3, r3, #1
	subs	lr, lr, #1
	add	r3, r3, ip, lsr #31
	mov	r2, r2, lsr #1
	mov	ip, ip, lsl #1
	bne	lab196
	mov	r5, lr
	movs	r0, #32
	mov	r2, #2147483648	
	b	lab197
lab200: 	beq	lab198
lab202: 	mov	r1, ip, lsr #31
	subs	r0, #1
	add	r3, r1, r3, lsl #1
	mov	ip, ip, lsl #1
	mov	r2, r2, lsr #1
	beq	lab199
lab197: 	cmp	r3, r4
	add	r1, r2, lr
	ble	lab200
	cmp	r1, #0
	add	lr, r1, r2
	blt	lab201
lab203: 	mov	r8, r4
lab204: 	subs	r3, r3, r4
	cmp	r1, ip
	it	hi
	addhi	r3, r3, #4294967295	
lab211: 	sub	ip, ip, r1
	add	r5, r2
	mov	r4, r8
	b	lab202
lab201: 	cmp	lr, #0
	blt	lab203
	add	r8, r4, #1
	b	lab204
lab192: 	bic	r2, r1, #2147483648	
	orrs	r2, r0
	beq	lab205
	cmp	r1, #0
	bne	lab206
lab207: 	mov	r2, ip, lsr #11
	subs	r1, #21
	mov	r3, r2
	mov	ip, ip, lsl #21
	cmp	r2, #0
	beq	lab207
	lsls	r6, r2, #11
	bmi	lab208
lab193: 	movs	r0, #0
lab209: 	lsls	r3, r3, #1
	lsls	r5, r3, #11
	mov	r4, r0
	add	r0, r0, #1
	bpl	lab209
	mov	r2, r3
	mov	r3, ip
	lsl	ip, ip, r0
	rsb	r0, r0, #32
lab214: 	lsrs	r3, r0
	subs	r1, r1, r4
	orrs	r3, r2
	b	lab210
lab198: 	cmp	r1, ip
	bhi	lab202
	cmp	r1, #0
	add	lr, r1, r2
	blt	lab201
	mov	r8, r3
	movs	r3, #0
	b	lab211
lab199: 	orrs	r3, r3, ip
	bne	lab212
	lsrs	r0, r5, #1
lab213: 	asrs	r3, r6, #1
	add	r3, r3, #1069547520	
	add	r3, r3, #2097152	
	lsls	r2, r6, #31
	it	mi
	orrmi	r0, r0, #2147483648	
	add	r9, r3, r7, lsl #20
	mov	r5, r0
	mov	r4, r9
lab205: 	mov	r0, r5
	mov	r1, r4
	nop
	push {r1, r2}
	ldr r1, =1147
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
lab212: 	adds	r1, r5, #1
	itet	ne
	addne	r0, r5, #1
	addeq	r6, #1
	lsrne	r0, r0, #1
	b	lab213
lab191: 	mov	r2, r0
	mov	r3, r1
push {r1, r2}
	ldr r1, =6072
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6072
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r5
	mov	r3, r4
push {r1, r2}
	ldr r1, =7099
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7099
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
	ldr r1, =4800
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
lab206: 	mov	r2, r0
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
push {r1, r2}
	ldr r1, =3995
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =3995
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r5, r0
	mov	r4, r1
	b	lab205
lab208: 	mov	r3, ip
	movs	r0, #32
	mov	r4, #4294967295	
	b	lab214
	nop
	.ltorg
__kernel_cos:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bic	r8, r1, #2147483648	
	sub	sp, #28
	cmp	r8, #1044381696	
	mov	sl, r2
	mov	fp, r3
	mov	r6, r0
	str	r1, [sp, #4]
	bge	lab215
	bl	__aeabi_d2iz
	cmp	r0, #0
	beq	lab216
	ldr	r3, [sp, #4]
	mov	r2, r6
	mov	r1, r3
	mov	r0, r6
push {r1, r2}
	ldr r1, =5072
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5072
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xbe8838d4	
	ldr r3, =0xbda8fae9
	mov	r4, r0
	mov	r5, r1
push {r1, r2}
	ldr r1, =5167
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5167
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xbdb4b1c4	
	ldr r3, =0x3e21ee9e
push {r1, r2}
	ldr r1, =4714
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =4714
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =4719
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4719
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x809c52ad	
	ldr r3, =0x3e927e4f
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =8059
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =8059
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x19cb1590	
	ldr r3, =0x3efa01a0
push {r1, r2}
	ldr r1, =7687
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7687
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =488
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =488
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x16c15177	
	ldr r3, =0x3f56c16c
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =3606
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3606
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x5555554c	
	ldr r3, =0x3fa55555
push {r1, r2}
	ldr r1, =3044
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =3044
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =3793
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3793
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	r0, r1, [sp, #8]
lab217: 	ldr	r3, =0x3fe00000	
	movs	r2, #0
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =939
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =939
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp, #8]
	mov	r8, r0
	mov	r9, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =3301
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3301
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r5, r9
	ldr	r9, [sp, #4]
	mov	r4, r8
	mov	r8, r6
	mov	r7, r1
	mov	r6, r0
	mov	r2, sl
	mov	r3, fp
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =1644
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1644
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	movs	r0, #0
	ldr	r1, =0x3ff00000	
	bl	__aeabi_dsub
	add	sp, #28
	nop
	push {r1, r2}
	ldr r1, =6879
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab215: 	ldr	r3, [sp, #4]
	mov	r2, r0
push {r1, r2}
	ldr r1, =6138
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6138
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xbe8838d4	
	ldr r3, =0xbda8fae9
	mov	r4, r0
	mov	r5, r1
push {r1, r2}
	ldr r1, =510
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =510
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0xbdb4b1c4	
	ldr r3, =0x3e21ee9e
push {r1, r2}
	ldr r1, =5334
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =5334
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =7313
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7313
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x809c52ad	
	ldr r3, =0x3e927e4f
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =5097
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5097
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x19cb1590	
	ldr r3, =0x3efa01a0
push {r1, r2}
	ldr r1, =6323
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =6323
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =4812
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4812
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x16c15177	
	ldr r3, =0x3f56c16c
	bl	__aeabi_dsub
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =5422
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5422
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x5555554c	
	ldr r3, =0x3fa55555
push {r1, r2}
	ldr r1, =60
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =60
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r5
	mov	r2, r4
push {r1, r2}
	ldr r1, =3571
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3571
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x3fd33332	
	cmp	r8, r3
	strd	r0, r1, [sp, #8]
	ble	lab217
	ldr	r3, =0x3fe90000	
	cmp	r8, r3
	mov	r2, #0
	bgt	lab218
	sub	r3, r8, #2097152	
	ldr	r1, =0x3ff00000	
	movs	r0, #0
	mov	r8, r2
	mov	r9, r3
	bl	__aeabi_dsub
	strd	r0, r1, [sp, #16]
lab219: 	ldr	r3, =0x3fe00000	
	movs	r2, #0
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =5106
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5106
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dsub
	ldrd	r2, r3, [sp, #8]
	mov	r8, r0
	mov	r9, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =578
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =578
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r5, r9
	ldr	r9, [sp, #4]
	mov	r4, r8
	mov	r8, r6
	mov	r7, r1
	mov	r6, r0
	mov	r2, sl
	mov	r3, fp
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =5101
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5101
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp, #16]
	bl	__aeabi_dsub
	add	sp, #28
	nop
	push {r1, r2}
	ldr r1, =2551
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab218: 	ldr	r3, =0x3fe70000	
	ldr	r9, =0x3fd20000	
	strd	r2, r3, [sp, #16]
	mov	r8, #0
	b	lab219
lab216: 	ldr	r1, =0x3ff00000	
	movs	r0, #0
	add	sp, #28
	nop
	push {r1, r2}
	ldr r1, =6375
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	nop
	.ltorg
__kernel_rem_pio2:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #612	
	mov	r4, r3
	str	r3, [sp, #32]
	str	r1, [sp, #44]	
	ldr	r3, =0x200001d0	
	ldr	r1, [sp, #648]	
	ldr	r3, [r3, r1, lsl #2]
	str	r3, [sp, #20]
	cmn	r2, #20
	add	r3, r4, #4294967295	
	mov	r6, r0
	str	r3, [sp, #12]
	blt	lab220
	ldr	r1, =0x2aaaaaab	
	subs	r3, r2, #3
	smull	r0, r1, r1, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r1, asr #2
	str	r3, [sp, #28]
	adds	r3, #1
	sub	r3, r3, r3, lsl #2
	lsls	r3, r3, #3
lab280: 	adds	r3, r2, r3
	str	r3, [sp, #24]
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #12]
	subs	r4, r2, r3
	ldr	r2, [sp, #20]
	adds	r7, r2, r3
	bmi	lab221
	adds	r7, #1
	ldr	sl, [sp, #652]	
	add	r7, r4
	add	r5, sp, #128	
	mov	r8, #0
	mov	r9, #0
	b	lab222
lab223: 	ldr	r0, [sl, r4, lsl #2]
push {r1, r2}
	ldr r1, =6968
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =6968
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r4, #1
	cmp	r4, r7
	strd	r0, r1, [r5], #8
	beq	lab221
lab222: 	cmp	r4, #0
	bge	lab223
	adds	r4, #1
	mov	r0, r8
	mov	r1, r9
	cmp	r4, r7
	strd	r0, r1, [r5], #8
	bne	lab222
lab221: 	ldr	r3, [sp, #20]
	cmp	r3, #0
	blt	lab224
	ldr	r3, [sp, #32]
	ldr	r9, [sp, #12]
	add	r2, sp, #128	
	add	sl, r2, r3, lsl #3
	lsls	r2, r3, #3
	str	r2, [sp, #8]
	ldr	r2, [sp, #20]
	sub	r1, r6, #8
	add	r2, r3
	str	r1, [sp, #16]
	add	fp, sp, #448	
	str	r2, [sp, #4]
	add	r8, r1, r3, lsl #3
lab227: 	ldr	r3, [sp, #12]
	cmp	r3, #0
	blt	lab225
	ldr	r6, [sp, #16]
	mov	r7, sl
	movs	r4, #0
	movs	r5, #0
lab226: 	ldrd	r2, r3, [r7, #-8]!
	ldrd	r0, r1, [r6, #8]!
push {r1, r2}
	ldr r1, =487
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =487
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =3583
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =3583
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r6, r8
	mov	r4, r0
	mov	r5, r1
	bne	lab226
lab259: 	ldr	r3, [sp, #4]
	add	r9, r9, #1
	cmp	r9, r3
	strd	r4, r5, [fp], #8
	add	sl, sl, #8
	bne	lab227
lab288: 	ldr	r3, [sp, #16]
	ldr	fp, [sp, #8]
	ldr	r2, [sp, #20]
	str	r2, [sp, #4]
	add	fp, r3
	add	r3, sp, #44	
	add	r3, r3, r2, lsl #2
	str	r3, [sp, #40]	
	add	r3, sp, #48	
	add	r3, r3, r2, lsl #2
	subs	r3, #8
	str	r3, [sp, #36]	
lab242: 	ldr	r2, [sp, #4]
	add	r3, sp, #608	
	add	r3, r3, r2, lsl #3
	cmp	r2, #0
	ldrd	r4, r5, [r3, #-160]	
	ble	lab228
	add	sl, sp, #448	
	add	r8, sl, r2, lsl #3
	add	r9, sp, #48	
lab229: 	ldr	r3, =0x3e700000	
	movs	r2, #0
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =1334
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1334
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	__aeabi_d2iz
push {r1, r2}
	ldr r1, =1387
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =1387
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x41700000	
	movs	r2, #0
	mov	r6, r0
	mov	r7, r1
push {r1, r2}
	ldr r1, =7152
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7152
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	bl	__aeabi_d2iz
	ldrd	r2, r3, [r8, #-8]!
	str	r0, [r9], #4
	mov	r1, r7
	mov	r0, r6
push {r1, r2}
	ldr r1, =7898
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7898
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r8, sl
	mov	r4, r0
	mov	r5, r1
	bne	lab229
lab228: 	ldr	r9, [sp, #24]
	mov	r0, r4
	mov	r1, r5
	mov	r2, r9
push {r1, r2}
	ldr r1, =1530
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	scalbn
	push {r1, r2}
	ldr r1, =1530
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #0
	mov	r3, #1069547520	
	mov	r4, r0
	mov	r5, r1
push {r1, r2}
	ldr r1, =6158
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6158
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	floor
	push {r1, r2}
	ldr r1, =7435
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x40200000	
	movs	r2, #0
push {r1, r2}
	ldr r1, =1337
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1337
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r5, r1
	mov	r4, r0
	bl	__aeabi_d2iz
	mov	r8, r0
push {r1, r2}
	ldr r1, =2748
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =2748
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r1
	mov	r2, r0
	mov	r1, r5
	mov	r0, r4
	bl	__aeabi_dsub
	mov	r3, r9
	cmp	r3, #0
	mov	r6, r0
	mov	r7, r1
	ble	lab230
	ldr	r2, [sp, #4]
	subs	r1, r2, #1
	add	r2, sp, #48	
	rsb	r3, r9, #24
	ldr	r2, [r2, r1, lsl #2]
	asr	r0, r2, r3
	lsl	r3, r0, r3
	subs	r3, r2, r3
	rsb	r5, r9, #23
	add	r2, sp, #48	
	asr	r5, r3, r5
	cmp	r5, #0
	str	r3, [r2, r1, lsl #2]
	add	r8, r0
	bgt	lab231
lab245: 	movs	r2, #0
	movs	r3, #0
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	lab232
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #20]
	add	sl, r3, #4294967295	
	cmp	r2, sl
	bgt	lab233
	add	r3, r3, #1073741824	
	add	r2, sp, #48	
	subs	r3, #1
	ldr	r0, [sp, #40]	
	add	r3, r2, r3, lsl #2
	movs	r2, #0
lab234: 	ldr	r1, [r3], #-4
	cmp	r3, r0
	orr	r2, r2, r1
	bne	lab234
	cmp	r2, #0
	bne	lab235
lab233: 	ldr	r3, [sp, #20]
	add	r2, sp, #48	
	subs	r3, #1
	ldr	r3, [r2, r3, lsl #2]
	cmp	r3, #0
	bne	lab236
	ldr	r2, [sp, #36]	
	movs	r3, #1
lab237: 	ldr	r1, [r2], #-4
	adds	r3, #1
	cmp	r1, #0
	beq	lab237
	ldr	r2, [sp, #4]
	adds	r3, r2, r3
	str	r3, [sp, #8]
	adds	r3, r2, #1
	mov	r9, r3
lab258: 	ldr	r8, [sp, #4]
	ldr	r2, [sp, #32]
	add	r8, r2
	ldr	r2, [sp, #28]
	add	sl, r2, r3
	add	sl, sl, #1073741824	
	ldr	r2, [sp, #652]	
	add	sl, sl, #4294967295	
	add	sl, r2, sl, lsl #2
	add	r2, sp, #128	
	add	r8, r2, r8, lsl #3
	add	r2, sp, #448	
	add	r3, r2, r3, lsl #3
	str	r3, [sp, #4]
lab241: 	ldr	r0, [sl, #4]!
push {r1, r2}
	ldr r1, =3297
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =3297
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #12]
	cmp	r3, #0
	strd	r0, r1, [r8]
	mov	r7, r8
	add	r8, r8, #8
	blt	lab238
	ldr	r6, [sp, #16]
	subs	r7, #8
	movs	r4, #0
	movs	r5, #0
	b	lab239
lab240: 	ldrd	r0, r1, [r7], #-8
lab239: 	ldrd	r2, r3, [r6, #8]!
push {r1, r2}
	ldr r1, =296
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =296
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =4768
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =4768
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r6, fp
	mov	r4, r0
	mov	r5, r1
	bne	lab240
lab243: 	ldr	r3, [sp, #4]
	strd	r4, r5, [r3], #8
	str	r3, [sp, #4]
	ldr	r3, [sp, #8]
	add	r9, r9, #1
	cmp	r9, r3
	ble	lab241
	str	r3, [sp, #4]
	b	lab242
lab238: 	movs	r4, #0
	movs	r5, #0
	b	lab243
	.ltorg
lab230: 	bne	lab244
	ldr	r3, [sp, #4]
	add	r2, sp, #48	
	subs	r3, #1
	ldr	r5, [r2, r3, lsl #2]
	asrs	r5, r5, #23
	cmp	r5, #0
	ble	lab245
lab231: 	ldr	r3, [sp, #4]
	cmp	r3, #0
	add	r8, r8, #1
	ble	lab246
lab257: 	ldr	r4, [sp, #48]	
	cmp	r4, #0
	bne	lab247
	ldr	r3, [sp, #4]
	cmp	r3, #1
	beq	lab248
	add	r3, sp, #48	
	movs	r2, #1
lab256: 	ldr	r4, [r3, #4]!
	cmp	r4, #0
	beq	lab249
	adds	r3, r2, #1
lab255: 	add	r1, sp, #48	
	rsb	r4, r4, #16777216	
	str	r4, [r1, r2, lsl #2]
	ldr	r1, [sp, #4]
	cmp	r1, r3
	ble	lab250
	add	r2, sp, #48	
	add	r0, sp, #48	
	ldr	r2, [r2, r3, lsl #2]
	add	r3, r0, r3, lsl #2
	add	r0, r0, r1, lsl #2
	mvn	r1, #4278190080	
	b	lab251
lab252: 	ldr	r2, [r3, #0]
lab251: 	subs	r2, r1, r2
	str	r2, [r3], #4
	cmp	r3, r0
	bne	lab252
lab250: 	movs	r4, #1
lab248: 	ldr	r3, [sp, #24]
	cmp	r3, #0
	ble	lab253
	cmp	r3, #1
	beq	lab254
	cmp	r3, #2
	bne	lab253
	ldr	r3, [sp, #4]
	subs	r2, r3, #1
	add	r3, sp, #48	
	add	r1, sp, #48	
	ldr	r3, [r3, r2, lsl #2]
	ubfx	r3, r3, #0, #22
	str	r3, [r1, r2, lsl #2]
lab253: 	cmp	r5, #2
	bne	lab245
	mov	r2, r6
	mov	r3, r7
	ldr	r1, =0x3ff00000	
	movs	r0, #0
	bl	__aeabi_dsub
	mov	r6, r0
	mov	r7, r1
	cmp	r4, #0
	beq	lab245
	ldr	r2, [sp, #24]
	ldr	r1, =0x3ff00000	
	movs	r0, #0
push {r1, r2}
	ldr r1, =3770
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	scalbn
	push {r1, r2}
	ldr r1, =3770
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r6, r0
	mov	r7, r1
	b	lab245
lab247: 	movs	r3, #1
	movs	r2, #0
	b	lab255
lab249: 	ldr	r1, [sp, #4]
	adds	r2, #1
	cmp	r2, r1
	bne	lab256
	b	lab248
lab244: 	ldr	r3, =0x3fe00000	
	movs	r2, #0
	bl	__aeabi_dcmpge
	mov	r5, r0
	cmp	r0, #0
	beq	lab245
	ldr	r3, [sp, #4]
	cmp	r3, #0
	add	r8, r8, #1
	it	gt
	movgt	r5, #2
	bgt	lab257
	mov	r2, r6
	mov	r3, r7
	ldr	r1, =0x3ff00000	
	movs	r0, #0
	bl	__aeabi_dsub
	movs	r5, #2
	mov	r6, r0
	mov	r7, r1
	b	lab245
lab236: 	ldr	r3, [sp, #4]
	adds	r3, #1
	mov	r9, r3
	str	r3, [sp, #8]
	b	lab258
lab225: 	movs	r4, #0
	movs	r5, #0
	b	lab259
lab235: 	ldr	r3, [sp, #24]
	str	r5, [sp, #12]
	sub	r2, r3, #24
	add	r3, sp, #48	
	str	r8, [sp, #28]
	ldr	r3, [r3, sl, lsl #2]
	str	r2, [sp, #24]
	cmp r3, #0
	bne lab260
	ldr	r3, [sp, #4]
	add	r3, r3, #1073741824	
	subs	r3, #2
	add	r1, sp, #48	
	add	r3, r1, r3, lsl #2
lab261: 	ldr	r1, [r3], #-4
	add	sl, sl, #4294967295	
	subs	r2, #24
	cmp	r1, #0
	beq	lab261
	str	r2, [sp, #24]
lab260: 	ldr	r2, [sp, #24]
	ldr	r1, =0x3ff00000	
	movs	r0, #0
push {r1, r2}
	ldr r1, =1163
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	scalbn
	push {r1, r2}
	ldr r1, =1163
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	sl, #0
	mov	r4, r0
	mov	r5, r1
	blt	lab262
	add	r3, sp, #448	
	add	fp, r3, sl, lsl #3
	add	r2, sp, #48	
	add	r3, sl, #1
	str	r3, [sp, #24]
	add	r6, r2, r3, lsl #2
	ldr	r9, =0x3e700000	
	mov	r3, sl, lsl #3
	str	r3, [sp, #16]
	add	r7, fp, #8
	mov	r8, #0
lab263: 	ldr	r0, [r6, #-4]!
push {r1, r2}
	ldr r1, =2126
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =2126
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =3245
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3245
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r9
	strd	r0, r1, [r7, #-8]!
	mov	r2, r8
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =7420
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7420
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	r3, sp, #48	
	cmp	r6, r3
	mov	r4, r0
	mov	r5, r1
	bne	lab263
	add	r3, sp, #288	
	strd	r3, sl, [sp, #4]
	ldr	sl, [sp, #20]
	cmp	sl, #0
	mov	r9, #0
	blt	lab264
lab269: 	ldr r2, =0x40000000	
	ldr r3, =0x3ff921fb
	ldr	r8, =0x20000198	
	mov	r7, fp
	movs	r6, #0
	movs	r4, #0
	movs	r5, #0
	b	lab265
lab267: 	cmp	r9, r6
	blt	lab266
	ldrd	r2, r3, [r8], #8
lab265: 	ldrd	r0, r1, [r7], #8
push {r1, r2}
	ldr r1, =5129
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5129
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =2637
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2637
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r6, #1
	cmp	sl, r6
	mov	r4, r0
	mov	r5, r1
	bge	lab267
lab266: 	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	add	r3, r3, r9, lsl #3
	cmp	r9, r2
	strd	r4, r5, [r3]
	sub	fp, fp, #8
	add	r3, r9, #1
	beq	lab268
	cmp	sl, #0
	mov	r9, r3
	bge	lab269
lab264: 	movs	r4, #0
	movs	r5, #0
	b	lab266
lab268: 	ldr	r3, [sp, #648]	
	ldr	sl, [sp, #8]
	cmp	r3, #2
	bgt	lab270
	cmp	r3, #0
	bgt	lab271
	bne	lab272
	ldr	r4, [sp, #16]
	ldr	r2, [sp, #648]	
	ldr	r5, [sp, #4]
	adds	r4, #8
	add	r4, r5
	mov	r3, r2
lab273: 	mov	r0, r2
	mov	r1, r3
	ldrd	r2, r3, [r4, #-8]!
push {r1, r2}
	ldr r1, =1619
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =1619
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r5, r4
	mov	r2, r0
	mov	r3, r1
	bne	lab273
lab291: 	ldr	r1, [sp, #12]
	cmp r1, #0
	beq lab274
	add	r3, r3, #2147483648	
lab274: 	mov	r1, r3
	ldr	r3, [sp, #44]	
	mov	r0, r2
	strd	r0, r1, [r3]
lab272: 	ldr	r3, [sp, #28]
	and	r0, r3, #7
	add	sp, sp, #612	
	nop
	push {r1, r2}
	ldr r1, =6040
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	nop
	.ltorg
lab270: 	ldr	r3, [sp, #648]	
	cmp	r3, #3
	bne	lab272
	cmp	sl, #0
	beq	lab275
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #16]
	add	r3, r2
	ldrd	r4, r5, [r3]
	mov	fp, r3
lab276: 	ldrd	r6, r7, [fp, #-8]
	mov	r0, r4
	mov	r1, r5
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =8032
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =8032
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r8, r4
	mov	r9, r5
	mov	r4, r0
	mov	r5, r1
	mov	r2, r4
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r3, r9
	mov	r2, r8
push {r1, r2}
	ldr r1, =7115
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7115
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	r0, r1, [fp]
	strd	r4, r5, [fp, #-8]!
	ldr	r3, [sp, #4]
	cmp	r3, fp
	bne	lab276
	cmp	sl, #1
	ble	lab275
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #4]
	add	r3, r2
	ldrd	r4, r5, [r3]
	str	r3, [sp, #8]
	mov	sl, r3
	add	fp, sp, #296	
lab277: 	ldrd	r6, r7, [sl, #-8]
	mov	r0, r4
	mov	r1, r5
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =7306
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7306
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r8, r4
	mov	r9, r5
	mov	r4, r0
	mov	r5, r1
	mov	r2, r4
	mov	r3, r5
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =7991
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7991
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	r0, r1, [sl]
	strd	r4, r5, [sl, #-8]!
	cmp	fp, sl
	bne	lab277
	ldr	r2, [sp, #4]
	ldr	r4, [sp, #8]
	movs	r3, #0
	add	r5, r2, #16
	adds	r4, #8
	mov	r2, r3
lab278: 	mov	r0, r3
	mov	r1, r2
	ldrd	r2, r3, [r4, #-8]!
push {r1, r2}
	ldr r1, =7109
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7109
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r5, r4
	mov	r3, r0
	mov	r2, r1
	bne	lab278
lab292: 	ldr	r1, [sp, #12]
	cmp	r1, #0
	bne	lab279
	mov	r0, r3
	ldr	r3, [sp, #4]
	ldr	r4, [sp, #44]	
	mov	r1, r2
	ldrd	r2, r3, [r3, #8]
	strd	r2, r3, [r4, #8]
	ldrd	r2, r3, [sp, #288]	
	strd	r2, r3, [r4]
	ldr	r3, [sp, #28]
	strd	r0, r1, [r4, #16]
	and	r0, r3, #7
	add	sp, sp, #612	
	nop
	push {r1, r2}
	ldr r1, =3024
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab254: 	ldr	r3, [sp, #4]
	subs	r2, r3, #1
	add	r3, sp, #48	
	add	r1, sp, #48	
	ldr	r3, [r3, r2, lsl #2]
	ubfx	r3, r3, #0, #23
	str	r3, [r1, r2, lsl #2]
	b	lab253
lab220: 	movs	r1, #0
	mvn	r3, #23
	str	r1, [sp, #28]
	b	lab280
lab246: 	movs	r4, #0
	b	lab248
lab232: 	ldr	r4, [sp, #24]
	str	r5, [sp, #12]
	mov	r0, r6
	mov	r1, r7
	negs	r2, r4
	str	r8, [sp, #28]
push {r1, r2}
	ldr r1, =5456
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	scalbn
	push {r1, r2}
	ldr r1, =5456
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x41700000	
	movs	r2, #0
	mov	r6, r0
	mov	r7, r1
	bl	__aeabi_dcmpge
	cmp	r0, #0
	beq	lab281
	ldr	r3, =0x3e700000	
	ldr	r5, [sp, #4]
	movs	r2, #0
	adds	r4, #24
	mov	r0, r6
	mov	r1, r7
	str	r4, [sp, #24]
push {r1, r2}
	ldr r1, =6777
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6777
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	__aeabi_d2iz
	mov	r4, r0
push {r1, r2}
	ldr r1, =5926
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_i2d
	push {r1, r2}
	ldr r1, =5926
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x41700000	
	movs	r2, #0
push {r1, r2}
	ldr r1, =2272
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2272
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r1
	mov	r2, r0
	mov	r1, r7
	mov	r0, r6
	bl	__aeabi_dsub
	bl	__aeabi_d2iz
	add	sl, r5, #1
	add	r3, sp, #48	
	str	r0, [r3, r5, lsl #2]
	str	r4, [r3, sl, lsl #2]
	b	lab260
lab271: 	ldr	r3, [sp, #24]
	ldr	r5, [sp, #4]
	movs	r6, #0
	add	r4, r5, r3, lsl #3
	mov	r3, r6
lab282: 	mov	r0, r6
	mov	r1, r3
	ldrd	r2, r3, [r4, #-8]!
push {r1, r2}
	ldr r1, =6516
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =6516
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r5, r4
	mov	r6, r0
	mov	r3, r1
	bne	lab282
lab293: 	ldr	r2, [sp, #12]
	mov	r0, r6
	cmp	r2, #0
	bne	lab283
	mov	r1, r3
	ldr	r3, [sp, #44]	
	mov	r2, r6
	strd	r0, r1, [r3]
	mov	r3, r1
	ldrd	r0, r1, [sp, #288]	
	bl	__aeabi_dsub
	cmp	sl, #0
	mov	r2, r0
	mov	r3, r1
	ble	lab284
lab286: 	add	r5, sp, #288	
	movs	r4, #1
lab285: 	mov	r0, r2
	mov	r1, r3
	ldrd	r2, r3, [r5, #8]!
push {r1, r2}
	ldr r1, =1761
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =1761
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r4, #1
	cmp	sl, r4
	mov	r2, r0
	mov	r3, r1
	bge	lab285
	ldr	r1, [sp, #12]
	cmp r1, #0
	beq lab284
lab287: 	add	r3, r3, #2147483648	
lab284: 	mov	r1, r3
	ldr	r3, [sp, #44]	
	mov	r0, r2
	strd	r0, r1, [r3, #8]
	ldr	r3, [sp, #28]
	and	r0, r3, #7
	add	sp, sp, #612	
	nop
	push {r1, r2}
	ldr r1, =763
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab281: 	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_d2iz
	ldr	r3, [sp, #4]
	add	r2, sp, #48	
	mov	sl, r3
	str	r0, [r2, r3, lsl #2]
	b	lab260
lab279: 	ldr	r6, [sp, #44]	
	str	r3, [r6, #16]
	ldr	r3, [sp, #4]
	add	r2, r2, #2147483648	
	ldr	r0, [r3, #8]
	ldr	r4, [r3, #0]
	str	r2, [r6, #20]
	mov	r2, r3
	ldr	r3, [r3, #4]
	add	r5, r3, #2147483648	
	ldr	r3, [r2, #12]
	add	r1, r3, #2147483648	
	ldr	r3, [sp, #28]
	strd	r0, r1, [r6, #8]
	and	r0, r3, #7
	strd	r4, r5, [r6]
	add	sp, sp, #612	
	nop
	push {r1, r2}
	ldr r1, =4388
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab283: 	ldr	r2, [sp, #44]	
	mov	r1, r3
	add	r3, r3, #2147483648	
	str	r3, [r2, #4]
	str	r6, [r2, #0]
	mov	r3, r1
	mov	r2, r6
	ldrd	r0, r1, [sp, #288]	
	bl	__aeabi_dsub
	cmp	sl, #0
	mov	r2, r0
	mov	r3, r1
	bgt	lab286
	b	lab287
lab224: 	sub	r3, r6, #8
	str	r3, [sp, #16]
	ldr	r3, [sp, #32]
	lsls	r3, r3, #3
	str	r3, [sp, #8]
	b	lab288
lab262: 	ldr	r3, [sp, #648]	
	cmp	r3, #2
	bgt	lab289
	cmp	r3, #0
	bgt	lab290
	bne	lab272
	ldr	r2, [sp, #648]	
	mov	r3, r2
	b	lab291
lab289: 	ldr	r3, [sp, #648]	
	cmp	r3, #3
	bne	lab272
	movs	r3, #0
	add	r1, sp, #288	
	mov	r2, r3
	str	r1, [sp, #4]
	b	lab292
lab290: 	movs	r6, #0
	mov	r3, r6
	b	lab293
lab275: 	movs	r3, #0
	mov	r2, r3
	b	lab292
	.ltorg
__kernel_sin:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r9, r3
	sub	sp, #28
	bic	r3, r1, #2147483648	
	cmp	r3, #1044381696	
	mov	r8, r2
	mov	r4, r0
	str	r1, [sp, #4]
	bge	lab294
	bl	__aeabi_d2iz
	cmp	r0, #0
	beq	lab295
lab294: 	ldr	r3, [sp, #4]
	mov	r2, r4
	mov	r1, r3
	mov	r0, r4
push {r1, r2}
	ldr r1, =4067
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4067
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #4]
	mov	r6, r0
	mov	r7, r1
	mov	r2, r6
	mov	r1, r3
	mov	r0, r4
	mov	r3, r7
push {r1, r2}
	ldr r1, =1656
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1656
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x5acfd57c	
	ldr r3, =0x3de5d93a
	mov	sl, r0
	mov	fp, r1
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =7603
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7603
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x8a2b9ceb	
	ldr r3, =0x3e5ae5e6
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =5032
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5032
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x57b1fe7d	
	ldr r3, =0x3ec71de3
push {r1, r2}
	ldr r1, =6289
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =6289
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =8085
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =8085
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x19c161d5	
	ldr r3, =0x3f2a01a0
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =4144
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4144
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x1110f8a6	
	ldr r3, =0x3f811111
push {r1, r2}
	ldr r1, =7845
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7845
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #64]	
	strd	r0, r1, [sp, #8]
	cmp	r3, #0
	beq	lab296
	ldr	r3, =0x3fe00000	
	movs	r2, #0
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =2537
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2537
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp, #8]
	strd	r0, r1, [sp, #16]
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =6413
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6413
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp, #16]
	bl	__aeabi_dsub
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =7294
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7294
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dsub
	ldr r2, =0x55555549	
	ldr r3, =0x3fc55555
	mov	r6, r0
	mov	r7, r1
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =4761
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4761
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =2478
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2478
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	ldr	r1, [sp, #4]
	bl	__aeabi_dsub
	mov	r4, r0
	mov	r5, r1
	mov	r0, r4
	mov	r1, r5
	add	sp, #28
	nop
	push {r1, r2}
	ldr r1, =3075
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab296: 	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =1651
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1651
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr r2, =0x55555549	
	ldr r3, =0x3fc55555
	bl	__aeabi_dsub
	mov	r2, sl
	mov	r3, fp
push {r1, r2}
	ldr r1, =1000
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1000
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	ldr	r3, [sp, #4]
push {r1, r2}
	ldr r1, =4130
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =4130
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	mov	r5, r1
	mov	r0, r4
	mov	r1, r5
	add	sp, #28
	nop
	push {r1, r2}
	ldr r1, =8170
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab295: 	ldr	r5, [sp, #4]
	mov	r0, r4
	mov	r1, r5
	add	sp, #28
	nop
	push {r1, r2}
	ldr r1, =4577
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	nop
	.ltorg
with_errno:
	push	{r4, r6, r7, lr}
	mov	r6, r0
	mov	r7, r1
	mov	r4, r2
	bl	__errno
	mov	r3, r0
	mov	r1, r7
	mov	r0, r6
	str	r4, [r3, #0]
	nop
	push {r1, r2}
	ldr r1, =6396
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r6, r7, pc}
	nop
xflow:
	push	{r4, r5, lr}
	sub	sp, #12
	cmp r0, #0
	beq lab297
	mov	r4, r2
	add	r5, r3, #2147483648	
lab298: 	strd	r4, r5, [sp]
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, r3, [sp]
push {r1, r2}
	ldr r1, =3232
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3232
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #34	
	add	sp, #12
	ldmia	sp!, {r4, r5, lr}
	b	with_errno
lab297: 	mov	r4, r2
	mov	r5, r3
	b	lab298
	nop
__math_uflow:
	movs	r2, #0
	mov	r3, #268435456	
	b	xflow
	nop
__math_may_uflow:
	ldr	r3, =0x1e580000	
	movs	r2, #0
	b	xflow
	.ltorg
__math_oflow:
	movs	r2, #0
	mov	r3, #1879048192	
	b	xflow
	nop
__math_divzero:
	push	{lr}
	movs	r2, #0
	sub	sp, #12
	cmp r0, #0
	bne lab299
	ldr	r3, =0x3ff00000	
lab300: 	strd	r2, r3, [sp]
	ldrd	r0, r1, [sp]
	movs	r2, #0
	movs	r3, #0
push {r1, r2}
	ldr r1, =4897
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =4897
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #34	
	add	sp, #12
	ldr	lr, [sp], #4
	b	with_errno
lab299: 	ldr	r3, =0xbff00000	
	b	lab300
	nop
	.ltorg
__math_invalid:
	push	{r3, r4, r5, r6, r7, lr}
	mov	r2, r0
	mov	r3, r1
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
push {r1, r2}
	ldr r1, =3390
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =3390
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
	bne lab301
	mov	r0, r6
	mov	r1, r7
	movs	r2, #33	
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	with_errno
lab301: 	mov	r0, r6
	mov	r1, r7
	pop	{r3, r4, r5, r6, r7, pc}
__math_check_uflow:
	push	{r3, r4, r5, lr}
	movs	r2, #0
	movs	r3, #0
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_dcmpeq
	cmp r0, #0
	bne lab302
	mov	r0, r4
	mov	r1, r5
	pop	{r3, r4, r5, pc}
lab302: 	mov	r0, r4
	mov	r1, r5
	movs	r2, #34	
	ldmia	sp!, {r3, r4, r5, lr}
	b	with_errno
__math_check_oflow:
	push	{r4, r5, r6, lr}
	mov	r4, r0
	bic	r6, r1, #2147483648	
	mov	r5, r1
	ldr	r3, =0x7fefffff	
	mov	r0, r4
	mov	r1, r6
	mov	r2, #4294967295	
	bl	__aeabi_dcmpun
	cmp r0, #0
	bne lab303
	ldr	r3, =0x7fefffff	
	mov	r0, r4
	mov	r1, r6
	mov	r2, #4294967295	
	bl	__aeabi_dcmple
	cmp r0, #0
	beq lab304
lab303: 	mov	r0, r4
	mov	r1, r5
	pop	{r4, r5, r6, pc}
lab304: 	mov	r0, r4
	mov	r1, r5
	movs	r2, #34	
	ldmia	sp!, {r4, r5, r6, lr}
	b	with_errno
	nop
	.ltorg
fabs:
	bic	r1, r1, #2147483648	
	bx	lr
	nop
finite:
	orr	r0, r1, #2147483648	
	add	r0, r0, #1048576	
	lsrs	r0, r0, #31
	bx	lr
	movs	r0, r0
	movs	r0, r0
floor:
	ubfx	r2, r1, #20, #11
	push	{r3, r4, r5, r6, r7, lr}
	subw	r5, r2, #1023	
	cmp	r5, #19
	mov	r3, r1
	mov	ip, r0
	mov	r4, r1
	mov	r6, r0
	bgt	lab305
	cmp	r5, #0
	blt	lab306
	ldr	r7, =0xfffff	
	asrs	r7, r5
	and	r2, r1, r7
	orrs	r2, r0
	beq	lab307
	ldr r2, =0x8800759c	
	ldr r3, =0x7e37e43c
push {r1, r2}
	ldr r1, =7279
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7279
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dcmpgt
	cmp r0, #0
	beq lab308
	cmp	r4, #0
	bge	lab309
	mov	r3, #1048576	
	asr	r5, r3, r5
	add	r4, r5
lab309: 	bic	r4, r4, r7
	movs	r6, #0
lab308: 	mov	r3, r4
	mov	ip, r6
lab307: 	mov	r0, ip
	mov	r1, r3
	nop
	push {r1, r2}
	ldr r1, =2797
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab306: 	ldr r2, =0x8800759c	
	ldr r3, =0x7e37e43c
push {r1, r2}
	ldr r1, =7948
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7948
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	beq	lab308
	cmp	r4, #0
	blt	lab310
	movs	r6, #0
	mov	r4, r6
	b	lab308
lab305: 	cmp	r5, #51	
	ble	lab311
	cmp	r5, #1024	
	bne	lab307
	mov	r2, r0
push {r1, r2}
	ldr r1, =4834
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =4834
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	ip, r0
	mov	r3, r1
	b	lab307
lab311: 	subw	r2, r2, #1043	
	mov	r7, #4294967295	
	lsrs	r7, r2
	tst	r7, r0
	beq	lab307
	ldr r2, =0x8800759c	
	ldr r3, =0x7e37e43c
push {r1, r2}
	ldr r1, =2019
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2019
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	beq	lab308
	cmp	r4, #0
	blt	lab312
lab314: 	bic	r6, r6, r7
	b	lab308
lab310: 	bic	r3, r4, #2147483648	
	ldr	r2, =0xbff00000	
	orrs	r6, r3
	cmp	r6, #0
	it	ne
	movne	r4, r2
	movs	r6, #0
	b	lab308
lab312: 	cmp	r5, #20
	beq	lab313
	movs	r3, #1
	rsb	r5, r5, #52	
	lsl	r5, r3, r5
	adds	r6, r5, r6
	it	cs
	addcs	r4, r4, r3
	b	lab314
lab313: 	adds	r4, #1
	b	lab314
	.ltorg
nan:
	ldr	r1, =0x7ff80000	
	movs	r0, #0
	bx	lr
	nop
	.ltorg
scalbn:
	ubfx	r3, r1, #20, #11
	push	{r4, r5, r6, lr}
	mov	ip, r1
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	cmp r3, #0
	bne lab315
	bic	ip, r1, #2147483648	
	mov	r3, r0
	orrs	r3, ip, r3
	beq	lab316
	ldr	r3, =0x43500000	
	movs	r2, #0
push {r1, r2}
	ldr r1, =5487
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5487
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0xffff3cb0	
	cmp	r6, r3
	mov	r4, r0
	mov	r5, r1
	blt	lab317
	ubfx	r3, r1, #20, #11
	mov	ip, r1
	subs	r3, #54	
lab321: 	add	r3, r6
	movw	r2, #2046	
	cmp	r3, r2
	bgt	lab318
	cmp	r3, #0
	bgt	lab319
	cmn	r3, #53	
	bge	lab320
	movw	r3, #50000	
	cmp	r6, r3
	bgt	lab318
	and	r3, r5, #2147483648	
	orr	r1, r3, #27525120	
	orr	r1, r1, #93696	
	ldr	r0, =0xc2f8f359	
	orr	r1, r1, #31
lab317: 	ldr r2, =0xc2f8f359	
	ldr r3, =0x1a56e1f
push {r1, r2}
	ldr r1, =8014
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
lab316:	nop
	push {r1, r2}
	ldr r1, =8014
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	push {r1, r2}
	ldr r1, =8014
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	pop	{r4, r5, r6, pc}
lab315: 	movw	r2, #2047	
	cmp	r3, r2
	bne	lab321
	mov	r2, r0
	mov	r3, r1
push {r1, r2}
	ldr r1, =679
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	nop
	push {r1, r2}
	ldr r1, =679
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	push {r1, r2}
	ldr r1, =679
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	pop	{r4, r5, r6, pc}
lab318: 	and	r3, r5, #2147483648	
	orr	r1, r3, #2113929216	
	orr	r1, r1, #3653632	
	orr	r1, r1, #9216	
	ldr r2, =0x8800759c	
	ldr r3, =0x7e37e43c
	ldr	r0, =0x8800759c	
	orr	r1, r1, #60	
push {r1, r2}
	ldr r1, =2171
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	nop
	push {r1, r2}
	ldr r1, =2171
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	push {r1, r2}
	ldr r1, =2171
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	pop	{r4, r5, r6, pc}
lab320: 	bic	ip, ip, #2139095040	
	adds	r3, #54	
	bic	ip, ip, #7340032	
	orr	r1, ip, r3, lsl #20
	mov	r0, r4
	ldr	r3, =0x3c900000	
	movs	r2, #0
push {r1, r2}
	ldr r1, =5266
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	nop
	push {r1, r2}
	ldr r1, =5266
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	push {r1, r2}
	ldr r1, =5266
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	pop	{r4, r5, r6, pc}
lab319: 	bic	ip, ip, #2139095040	
	bic	ip, ip, #7340032	
	mov	r0, r4
	orr	r1, ip, r3, lsl #20
	nop
	push {r1, r2}
	ldr r1, =5522
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
__errno:
	ldr	r3, =0x200001e8	
	ldr	r0, [r3, #0]
	bx	lr
	nop
	.ltorg
memset:
	lsls	r3, r0, #30
	push	{r4, r5, lr}
	beq	lab322
	subs	r4, r2, #1
	cmp	r2, #0
	beq	lab323
	uxtb	r2, r1
	mov	r3, r0
	b	lab324
lab325: 	subs	r4, #1
	bcc	lab323
lab324: 	strb	r2, [r3], #1
	lsls	r5, r3, #30
	bne	lab325
lab333: 	cmp	r4, #3
	bls	lab326
	uxtb	r5, r1
	orr	r5, r5, r5, lsl #8
	cmp	r4, #15
	orr	r5, r5, r5, lsl #16
	bls	lab327
	sub	r2, r4, #16
	bic	ip, r2, #15
	add	lr, r3, #32
	add	lr, ip
	mov	ip, r2, lsr #4
	add	r2, r3, #16
lab328: 	strd	r5, r5, [r2, #-16]
	strd	r5, r5, [r2, #-8]
	adds	r2, #16
	cmp	r2, lr
	bne	lab328
	add	r2, ip, #1
	tst	r4, #12
	add	r2, r3, r2, lsl #4
	and	ip, r4, #15
	beq	lab329
lab334: 	sub	r3, ip, #4
	bic	r3, r3, #3
	adds	r3, #4
	add	r3, r2
lab330: 	str	r5, [r2], #4
	cmp	r3, r2
	bne	lab330
	and	r4, ip, #3
lab326: 	cmp r4, #0
	beq lab323
lab332: 	uxtb	r2, r1
	add	r4, r3
lab331: 	strb	r2, [r3], #1
	cmp	r4, r3
	bne	lab331
lab323:	nop
	push {r1, r2}
	ldr r1, =3046
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, pc}
lab329: 	mov	r4, ip
	mov	r3, r2
	cmp	r4, #0
	bne	lab332
	b	lab323
lab322: 	mov	r3, r0
	mov	r4, r2
	b	lab333
lab327: 	mov	r2, r3
	mov	ip, r4
	b	lab334


	 .section .rodata

_sdata:
	.word	0x00000000
npio2_hw:
	.word	0x3ff921fb
	.word	0x400921fb
	.word	0x4012d97c
	.word	0x401921fb
	.word	0x401f6a7a
	.word	0x4022d97c
	.word	0x4025fdbb
	.word	0x402921fb
	.word	0x402c463a
	.word	0x402f6a7a
	.word	0x4031475c
	.word	0x4032d97c
	.word	0x40346b9c
	.word	0x4035fdbb
	.word	0x40378fdb
	.word	0x403921fb
	.word	0x403ab41b
	.word	0x403c463a
	.word	0x403dd85a
	.word	0x403f6a7a
	.word	0x40407e4c
	.word	0x4041475c
	.word	0x4042106c
	.word	0x4042d97c
	.word	0x4043a28c
	.word	0x40446b9c
	.word	0x404534ac
	.word	0x4045fdbb
	.word	0x4046c6cb
	.word	0x40478fdb
	.word	0x404858eb
	.word	0x404921fb
two_over_pi:
	.word	0x00a2f983
	.word	0x006e4e44
	.word	0x001529fc
	.word	0x002757d1
	.word	0x00f534dd
	.word	0x00c0db62
	.word	0x0095993c
	.word	0x00439041
	.word	0x00fe5163
	.word	0x00abdebb
	.word	0x00c561b7
	.word	0x00246e3a
	.word	0x00424dd2
	.word	0x00e00649
	.word	0x002eea09
	.word	0x00d1921c
	.word	0x00fe1deb
	.word	0x001cb129
	.word	0x00a73ee8
	.word	0x008235f5
	.word	0x002ebb44
	.word	0x0084e99c
	.word	0x007026b4
	.word	0x005f7e41
	.word	0x003991d6
	.word	0x00398353
	.word	0x0039f49c
	.word	0x00845f8b
	.word	0x00bdf928
	.word	0x003b1ff8
	.word	0x0097ffde
	.word	0x0005980f
	.word	0x00ef2f11
	.word	0x008b5a0a
	.word	0x006d1f6d
	.word	0x00367ecf
	.word	0x0027cb09
	.word	0x00b74f46
	.word	0x003f669e
	.word	0x005fea2d
	.word	0x007527ba
	.word	0x00c7ebe5
	.word	0x00f17b3d
	.word	0x000739f7
	.word	0x008a5292
	.word	0x00ea6bfb
	.word	0x005fb11f
	.word	0x008d5d08
	.word	0x00560330
	.word	0x0046fc7b
	.word	0x006babf0
	.word	0x00cfbc20
	.word	0x009af436
	.word	0x001da9e3
	.word	0x0091615e
	.word	0x00e61b08
	.word	0x00659985
	.word	0x005f14a0
	.word	0x0068408d
	.word	0x00ffd880
	.word	0x004d7327
	.word	0x00310606
	.word	0x001556ca
	.word	0x0073a8c9
	.word	0x0060e27b
	.word	0x00c08c6b
	.word	0x00000000
PIo2:
	.word	0x40000000
	.word	0x3ff921fb
	.word	0x00000000
	.word	0x3e74442d
	.word	0x80000000
	.word	0x3cf84698
	.word	0x60000000
	.word	0x3b78cc51
	.word	0x80000000
	.word	0x39f01b83
	.word	0x40000000
	.word	0x387a2520
	.word	0x80000000
	.word	0x36e38222
	.word	0x00000000
	.word	0x3569f31d
init_jk:
	.word	0x00000002
	.word	0x00000003
	.word	0x00000004
	.word	0x00000006
_global_impure_ptr:
	.word	0x200001f0


	 .section .data

SystemCoreClock:
	.word	0x00f42400


	 .section .data._impure_ptr

_impure_ptr:
	.word	0x200001f0


	 .section .data.impure_data

impure_data:
	.word	0x00000000
	.word	0x200004dc
	.word	0x20000544
	.word	0x200005ac
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
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


	 .section .bss

soln_cnt0:
	.word	0x00000000
	.word	0x00000000
res0:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
soln_cnt1:
	.word	0x00000000
	.word	0x00000000
res1:
	.word	0x00000000
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
