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
	movw	r3, #2996	
	sub	sp, #12
	movw	r6, #60495	
	movw	r2, #7896	
	movt	r3, #8192	
	str	r2, [sp, #0]
	str	r3, [sp, #4]
	movt	r6, #20164	
lab8: 	ldr	r0, [sp, #4]
	movw	r1, #8996	
push {r1, r2}
	ldr r1, =5904
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	init_heap_beebs
	push {r1, r2}
	ldr r1, =5904
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r0, #8995	
	bl	malloc_beebs
	add	r9, r0, #9024	
	mov	sl, r0
	adds	r4, r0, #4
	add	r9, r9, #10
	mov	r7, r0
	mov	r8, #48	
lab1: 	movw	r2, #257	
	movs	r1, #0
	mov	r0, r7
push {r1, r2}
	ldr r1, =3795
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =3795
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	fp, r7, #4294967295	
	strb	r8, [r7, #156]	
	movs	r5, #26
lab0: 	bl	rand_beebs
	smull	r3, r1, r6, r0
	asrs	r2, r0, #31
	rsb	r2, r2, r1, asr #3
	mls	r0, r5, r2, r0
	adds	r0, #65	
	strb	r0, [fp, #1]!
	cmp	fp, r4
	bne	lab0
	add	r4, fp, #258	
	cmp	r4, r9
	strb	r8, [r7, #124]	
	addw	r7, r7, #257	
	bne	lab1
	add	r7, sl, #4352	
	add	lr, sl, #5632	
	add	ip, sl, #8960	
	adds	r7, #17
	add	lr, lr, #22
	movs	r5, #0
	add	ip, ip, #35	
lab7: 	mov	r4, sl
lab6: 	ldrb	r3, [r4, #0]
	mov	r1, r7
	cmp r3, #0
	beq lab2
	mov	r0, r4
	mov	r2, r7
	b	lab3
lab5: 	cmp	r1, r3
	bne	lab4
	ldrb	r3, [r0, #1]!
	mov	r1, r2
	cmp r3, #0
	beq lab2
lab3: 	ldrb	r1, [r2], #1
	cmp	r1, #0
	bne	lab5
lab4: 	addw	r4, r4, #257	
	cmp	ip, r4
	bne	lab6
	addw	r7, r7, #257	
	cmp	r7, lr
	bne	lab7
lab9: 	mov	r0, sl
	bl	free_beebs
	ldr	r3, [sp, #0]
	subs	r3, #1
	str	r3, [sp, #0]
	bne	lab8
	sub	r0, r5, #5
	clz	r0, r0
	lsrs	r0, r0, #5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =1393
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab2: 	ldrb	r3, [r1, #0]
	cmp	r3, #0
	bne	lab4
	addw	r7, r7, #257	
	cmp	r7, lr
	add	r5, r5, #1
	bne	lab7
	b	lab9
benchmark_body.isra.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, #20
	subs	r3, r0, #0
	str	r3, [sp, #8]
	ble	lab10
	movw	r3, #2996	
	movw	r6, #60495	
	movs	r2, #0
	movt	r3, #8192	
	str	r2, [sp, #4]
	str	r3, [sp, #12]
	movt	r6, #20164	
lab19: 	ldr	r0, [sp, #12]
	movw	r1, #8996	
push {r1, r2}
	ldr r1, =999
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	init_heap_beebs
	push {r1, r2}
	ldr r1, =999
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r0, #8995	
	bl	malloc_beebs
	add	r9, r0, #9024	
	mov	sl, r0
	adds	r4, r0, #4
	add	r9, r9, #10
	mov	r7, r0
	mov	r8, #48	
lab12: 	movw	r2, #257	
	movs	r1, #0
	mov	r0, r7
push {r1, r2}
	ldr r1, =2404
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =2404
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	fp, r7, #4294967295	
	strb	r8, [r7, #156]	
	movs	r5, #26
lab11: 	bl	rand_beebs
	smull	r3, r1, r6, r0
	asrs	r2, r0, #31
	rsb	r2, r2, r1, asr #3
	mls	r0, r5, r2, r0
	adds	r0, #65	
	strb	r0, [fp, #1]!
	cmp	fp, r4
	bne	lab11
	add	r4, fp, #258	
	cmp	r4, r9
	strb	r8, [r7, #124]	
	addw	r7, r7, #257	
	bne	lab12
	add	r5, sl, #4352	
	add	ip, sl, #5632	
	add	r7, sl, #8960	
	adds	r5, #17
	add	ip, ip, #22
	adds	r7, #35	
lab18: 	mov	r4, sl
lab17: 	ldrb	r3, [r4, #0]
	mov	r1, r5
	cmp r3, #0
	beq lab13
	mov	r0, r4
	mov	r2, r5
	b	lab14
lab16: 	cmp	r1, r3
	bne	lab15
	ldrb	r3, [r0, #1]!
	mov	r1, r2
	cmp r3, #0
	beq lab13
lab14: 	ldrb	r1, [r2], #1
	cmp	r1, #0
	bne	lab16
lab15: 	addw	r4, r4, #257	
	cmp	r7, r4
	bne	lab17
lab20: 	addw	r5, r5, #257	
	cmp	ip, r5
	bne	lab18
	ldr	r3, [sp, #4]
	mov	r0, sl
	adds	r3, #1
	mov	r4, r3
	str	r3, [sp, #4]
	bl	free_beebs
	ldr	r2, [sp, #8]
	cmp	r4, r2
	bne	lab19
lab10: 	add	sp, #20
	nop
	push {r1, r2}
	ldr r1, =1241
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab13: 	ldrb	r3, [r1, #0]
	cmp	r3, #0
	beq	lab20
	addw	r4, r4, #257	
	cmp	r7, r4
	bne	lab17
	b	lab20
initialise_benchmark:
	bx	lr
	nop
warm_caches:
	b	benchmark_body.isra.0
	nop
benchmark:
	b	benchmark_body.constprop.0
	nop
verify_benchmark:
	sub	r0, r0, #1
	clz	r0, r0
	lsrs	r0, r0, #5
	bx	lr
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
lab21: 	ldr	r2, [r3, #0]
	lsls	r0, r2, #14
	bpl	lab21
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
lab22: 	ldr	r3, [r2, #0]
	lsls	r1, r3, #6
	bpl	lab22
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
lab23: 	ldr	r3, [r1, #8]
	lsls	r3, r3, #28
	bpl	lab23
	movw	r3, #520	
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
	ldr r1, =7443
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	start_trigger
	bl	benchmark
	push {r1, r2}
	ldr r1, =6515
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r0, [sp, #4]
	bl	stop_trigger
	ldr	r0, [sp, #4]
	bl	verify_benchmark
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
	movw	r3, #11992	
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
	movw	r3, #11992	
	movt	r3, #8192	
	str	r0, [r3, #0]
	bx	lr
init_heap_beebs:
	ands	r2, r1, #3
	push	{r3, lr}
	bne	lab24
	movw	r3, #11992	
	movt	r3, #8192	
	add	r1, r0
	strd	r0, r1, [r3, #4]
	str	r2, [r3, #12]
	nop
	push {r1, r2}
	ldr r1, =2703
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, pc}
lab24: 	movw	r3, #0
	movw	r2, #80	
	movw	r0, #32
	movt	r3, #8192	
	movt	r2, #8192	
	movs	r1, #65	
	movt	r0, #8192	
	bl	__assert_func
check_heap_beebs:
	movw	r3, #11992	
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
	beq lab25
	movw	r2, #11992	
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
	bcc	lab25
	str	r1, [r2, #4]
	bx	lr
lab25: 	movs	r0, #0
	bx	lr
	nop
calloc_beebs:
	mul	r2, r1, r0
	push	{r4, lr}
	cmp r2, #0
	beq lab26
	movw	r3, #11992	
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
	bcc	lab26
	str	r1, [r3, #4]
	cmp r4, #0
	beq lab27
	movs	r1, #0
	mov	r0, r4
push {r1, r2}
	ldr r1, =3106
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
lab27:	push {r1, r2}
	ldr r1, =3106
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r4
	pop	{r4, pc}
lab26: 	movs	r4, #0
	mov	r0, r4
	pop	{r4, pc}
	nop
realloc_beebs:
	cmp	r0, #0
	beq	lab28
	cmp	r1, #0
	beq	lab28
	movw	r3, #11992	
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
	bcc	lab29
	str	r4, [r3, #4]
	cmp r0, #0
	beq lab29
	adds	r3, r2, #1
	subs	r3, r0, r3
	cmp	r3, #2
	add	r4, r1, #4294967295	
	bls	lab30
	cmp	r4, #7
	bls	lab30
	bic	r4, r1, #3
	mov	r3, r2
	mov	ip, r0
	add	r4, r2
lab31: 	ldr	lr, [r3], #4
	str	lr, [ip], #4
	cmp	r3, r4
	bne	lab31
	lsls	r4, r1, #30
	bic	r3, r1, #3
	beq	lab32
	ldrb	r4, [r2, r3]
	strb	r4, [r0, r3]
	adds	r4, r3, #1
	cmp	r1, r4
	bls	lab32
	adds	r3, #2
	ldrb	r5, [r2, r4]
	strb	r5, [r0, r4]
	cmp	r1, r3
	bls	lab32
	ldrb	r2, [r2, r3]
	strb	r2, [r0, r3]
lab32: 	pop	{r4, r5, pc}
lab29: 	movs	r0, #0
	pop	{r4, r5, pc}
lab30: 	subs	r3, r2, #1
	subs	r1, r0, #1
	add	r2, r4
lab33: 	ldrb	r4, [r3, #1]!
	strb	r4, [r1, #1]!
	cmp	r3, r2
	bne	lab33
	pop	{r4, r5, pc}
lab28: 	movs	r0, #0
	bx	lr
free_beebs:
	bx	lr
	nop
memchr:
	and	r1, r1, #255	
	cmp	r2, #16
	blt	lab34
	tst	r0, #7
	beq	lab35
lab38: 	ldrb	r3, [r0], #1
	subs	r2, #1
	cmp	r3, r1
	beq	lab36
	tst	r0, #7
	cmp r2, #0
	beq lab37
	bne	lab38
lab35: 	push	{r4, r5, r6, r7}
	orr	r1, r1, r1, lsl #8
	orr	r1, r1, r1, lsl #16
	bic	r4, r2, #7
	mvns	r7, #0
	movs	r3, #0
lab40: 	ldrd	r5, r6, [r0], #8
	subs	r4, #8
	eor	r5, r5, r1
	eor	r6, r6, r1
	uadd8	r5, r5, r7
	sel	r5, r3, r7
	uadd8	r6, r6, r7
	sel	r6, r5, r7
	cmp r6, #0
	bne lab39
	bne	lab40
	pop	{r4, r5, r6, r7}
	and	r1, r1, #255	
	and	r2, r2, #7
lab34: 	cmp r2, #0
	beq lab37
lab41: 	ldrb	r3, [r0], #1
	subs	r2, #1
	eor	r3, r3, r1
	cmp r3, #0
	beq lab36
	bne	lab41
lab37: 	movs	r0, #0
	bx	lr
lab36: 	subs	r0, #1
	bx	lr
lab39: 	cmp	r5, #0
	itte	eq
	moveq	r5, r6
	subeq	r0, #3
	subne	r0, #7
	tst	r5, #1
	bne	lab42
	adds	r0, #1
	tst	r5, #256	
	ittt	eq
	addeq	r0, #1
	tsteq	r5, #98304	
	addeq	r0, #1
lab42: 	pop	{r4, r5, r6, r7}
	subs	r0, #1
	bx	lr
	nop
memcpy:
	mov	ip, r0
	orr	r3, r1, r0
	ands	r3, r3, #3
	bne	lab43
lab52: 	subs	r2, #64	
	bcc	lab44
lab45: 	ldr	r3, [r1], #4
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
	bcs	lab45
lab44: 	adds	r2, #48	
	bcc	lab46
lab47: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #16
	bcs	lab47
lab46: 	adds	r2, #12
	bcc	lab48
lab49: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #4
	bcs	lab49
lab48: 	adds	r2, #4
	beq	lab50
	lsls	r2, r2, #31
	itt	ne
	ldrbne	r3, [r1], #1
	strbne	r3, [r0], #1
	bcc	lab50
	ldrh	r3, [r1, #0]
	strh	r3, [r0, #0]
lab50: 	mov	r0, ip
	bx	lr
	nop
lab43: 	cmp	r2, #8
	bcc	lab51
	lsls	r3, r1, #30
	beq	lab52
	ands	r3, r0, #3
	beq	lab52
	rsb	r3, r3, #4
	subs	r2, r2, r3
	lsls	r3, r3, #31
	itt	ne
	ldrbne	r3, [r1], #1
	strbne	r3, [r0], #1
	bcc	lab52
	ldrh	r3, [r1], #2
	strh	r3, [r0], #2
	b	lab52
lab51: 	subs	r2, #4
	bcc	lab48
lab53: 	subs	r2, #1
	ldrb	r3, [r1], #1
	strb	r3, [r0], #1
	bcs	lab53
	ldrb	r3, [r1, #0]
	strb	r3, [r0, #0]
	ldrb	r3, [r1, #1]
	strb	r3, [r0, #1]
	ldrb	r3, [r1, #2]
	strb	r3, [r0, #2]
	mov	r0, ip
	bx	lr
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
lab54: 	sub	r0, r2, r3
	bx	lr
	nop
strcmp:
	ldrb	r2, [r0, #0]
	ldrb	r3, [r1, #0]
	cmp	r2, #1
	it	cs
	cmpcs	r2, r3
	bne	lab54
	strd	r4, r5, [sp, #-16]!
	orr	r4, r0, r1
	strd	r6, r7, [sp, #8]
	mvn	ip, #0
	mov	r2, r4, lsl #29
	cmp r2, #0
	beq lab55
	eor	r4, r0, r1
	tst	r4, #7
	bne	lab56
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
	beq	lab57
	orn	r3, r3, r4
	mov	r2, ip
	orn	r7, r7, r4
	mov	r6, ip
	b	lab57
lab55: 	ldrd	r2, r3, [r0], #16
	ldrd	r6, r7, [r1], #16
lab57: 	uadd8	r5, r2, ip
	eor	r4, r2, r6
	sel	r4, r4, ip
	cmp r4, #0
	bne lab58
	uadd8	r5, r3, ip
	eor	r5, r3, r7
	sel	r5, r5, ip
	cmp r5, #0
	bne lab59
	ldrd	r2, r3, [r0, #-8]
	ldrd	r6, r7, [r1, #-8]
	uadd8	r5, r2, ip
	eor	r4, r2, r6
	sel	r4, r4, ip
	uadd8	r5, r3, ip
	eor	r5, r3, r7
	sel	r5, r5, ip
	orrs	r5, r4
	beq	lab55
	cmp r4, #0
	bne lab58
lab59: 	rev	r5, r5
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
lab58: 	rev	r4, r4
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
lab56: 	tst	r4, #3
	bne	lab60
	ands	r4, r0, #3
	bne	lab61
lab63: 	ldr	r2, [r0], #8
	ldr	r3, [r1], #8
lab64: 	uadd8	r5, r2, ip
	eor	r5, r2, r3
	sel	r5, r5, ip
	cmp r5, #0
	bne lab62
	ldr	r2, [r0, #-4]
	ldr	r3, [r1, #-4]
	uadd8	r5, r2, ip
	eor	r5, r2, r3
	sel	r5, r5, ip
	cmp	r5, #0
	beq	lab63
lab62: 	rev	r5, r5
	clz	r4, r5
	bic	r4, r4, #7
	lsr	r1, r3, r4
	lsr	r2, r2, r4
	and	r0, r2, #255	
	and	r1, r1, #255	
	ldrd	r4, r5, [sp], #16
	sub	r0, r0, r1
	bx	lr
lab61: 	mov	r4, r4, lsl #3
	bic	r0, r0, #3
	ldr	r2, [r0], #8
	bic	r1, r1, #3
	ldr	r3, [r1], #8
	lsl	r4, ip, r4
	orn	r2, r2, r4
	orn	r3, r3, r4
	b	lab64
lab60: 	ands	r4, r0, #3
	beq	lab65
	sub	r1, r1, r4
	bic	r0, r0, #3
	lsls	r4, r4, #31
	ldr	r2, [r0], #4
	beq	lab66
	bcs	lab67
	ldrb	r3, [r1, #2]
	uxtb	r4, r2, ror #16
	subs	r4, r4, r3
	bne	lab68
	cmp r3, #0
	beq lab68
lab66: 	ldrb	r3, [r1, #3]
	uxtb	r4, r2, ror #24
	subs	r4, r4, r3
	bne	lab68
	cmp r3, #0
	bne lab67
lab68: 	mov	r0, r4
	ldr	r4, [sp], #16
	bx	lr
lab67: 	add	r1, r1, #4
lab65: 	ldr	r2, [r0], #4
	lsls	r4, r1, #31
	bic	r1, r1, #3
	ldr	r3, [r1], #4
	bhi	lab69
	bcs	lab70
lab74: 	bic	r4, r2, #4278190080	
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #8
	sel	r5, r5, ip
	bne	lab71
	cmp r5, #0
	bne lab72
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #24
	bne	lab73
	ldr	r2, [r0], #4
	b	lab74
lab71: 	mov	r3, r3, lsr #8
	b	lab75
lab72: 	bics	r5, r5, #4278190080	
	bne	lab76
	ldrb	r0, [r1, #0]
	ldrd	r4, r5, [sp], #16
	rsb	r0, r0, #0
	bx	lr
lab73: 	mov	r2, r2, lsr #24
	and	r3, r3, #255	
	b	lab75
lab70: 	and	r4, r2, ip, lsr #16
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #16
	sel	r5, r5, ip
	bne	lab77
	cmp r5, #0
	bne lab78
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #16
	bne	lab79
	ldr	r2, [r0], #4
	b	lab70
lab77: 	mov	r3, r3, lsr #16
	b	lab75
lab78: 	ands	r5, r5, ip, lsr #16
	bne	lab76
	ldrh	r3, [r1, #0]
	mov	r2, r2, lsr #16
	b	lab75
lab79: 	mov	r2, r2, lsr #16
	and	r3, r3, ip, lsr #16
	b	lab75
lab69: 	and	r4, r2, #255	
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #24
	sel	r5, r5, ip
	bne	lab80
	cmp r5, #0
	bne lab81
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #8
	bne	lab82
	ldr	r2, [r0], #4
	b	lab69
lab80: 	mov	r3, r3, lsr #24
	b	lab75
lab81: 	tst	r5, #255	
	bne	lab76
	ldr	r3, [r1, #0]
lab82: 	mov	r2, r2, lsr #8
	bic	r3, r3, #4278190080	
	b	lab75
lab76: 	mov	r0, #0
	ldrd	r4, r5, [sp], #16
	bx	lr
lab75: 	rev	r2, r2
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
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
	movs	r0, r0
strlen:
	pld	[r0]
	strd	r4, r5, [sp, #-8]!
	bic	r1, r0, #7
	mvn	ip, #0
	ands	r4, r0, #7
	pld	[r1, #32]
	bne	lab83
	mov	r4, #0
	mvn	r0, #7
lab85: 	ldrd	r2, r3, [r1]
	pld	[r1, #64]	
	add	r0, r0, #8
lab86: 	uadd8	r2, r2, ip
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab84
	ldrd	r2, r3, [r1, #8]
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab84
	ldrd	r2, r3, [r1, #16]
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab84
	ldrd	r2, r3, [r1, #24]
	add	r1, r1, #32
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp	r3, #0
	beq	lab85
lab84: 	cmp	r2, #0
	itt	eq
	addeq	r0, #4
	moveq	r2, r3
	rev	r2, r2
	clz	r2, r2
	ldrd	r4, r5, [sp], #8
	add	r0, r0, r2, lsr #3
	bx	lr
lab83: 	ldrd	r2, r3, [r1]
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
	b	lab86
__aeabi_uldivmod:
	cmp r3, #0
	bne lab87
	cmp r2, #0
	bne lab87
	cmp	r1, #0
	it	eq
	cmpeq	r0, #0
	itt	ne
	movne	r1, #4294967295	
	movne	r0, #4294967295	
	b	__aeabi_idiv0
lab87: 	sub	ip, sp, #8
	strd	ip, lr, [sp, #-16]!
	bl	__udivmoddi4
	push {r1, r2}
	ldr r1, =2787
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	lr, [sp, #4]
	ldrd	r2, r3, [sp, #8]
	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =1650
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
	bne	lab88
	cmp	r2, r1
	mov	ip, r2
	bls	lab89
	clz	r2, r2
	cmp r2, #0
	beq lab90
	lsl	r3, r1, r2
	rsb	r1, r2, #32
	lsr	r1, r0, r1
	lsl	ip, ip, r2
	orr	r8, r1, r3
	lsls	r4, r2
lab90: 	mov	r5, ip, lsr #16
	lsrs	r1, r4, #16
	udiv	lr, r8, r5
	uxth	r7, ip
	mls	r3, r5, lr, r8
	orr	r3, r1, r3, lsl #16
	mul	r1, lr, r7
	cmp	r1, r3
	bls	lab91
	adds	r3, ip, r3
	add	r0, lr, #4294967295	
	bcs	lab92
	cmp	r1, r3
	bls	lab92
	sub	lr, lr, #2
	add	r3, ip
lab91: 	subs	r3, r3, r1
	uxth	r4, r4
	udiv	r0, r3, r5
	mls	r3, r5, r0, r3
	orr	r4, r4, r3, lsl #16
	mul	r7, r0, r7
	cmp	r7, r4
	bls	lab93
	adds	r4, ip, r4
	add	r3, r0, #4294967295	
	bcs	lab94
	cmp	r7, r4
	bls	lab94
	add	r4, ip
	subs	r0, #2
lab93: 	subs	r4, r4, r7
	orr	r0, r0, lr, lsl #16
	movs	r1, #0
lab109: 	cmp r6, #0
	beq lab95
	lsrs	r4, r2
	movs	r3, #0
	strd	r4, r3, [r6]
lab95:	nop
	push {r1, r2}
	ldr r1, =1526
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab88: 	cmp	r3, r1
	bls	lab96
	cmp	r6, #0
	beq	lab97
	movs	r1, #0
	strd	r0, r5, [r6]
	mov	r0, r1
	nop
	push {r1, r2}
	ldr r1, =6903
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab96: 	clz	r1, r3
	cmp	r1, #0
	bne	lab98
	cmp	r3, r5
	bcc	lab99
	cmp	r2, r0
	bhi	lab100
lab99: 	subs	r4, r0, r2
	sbc	r3, r5, r3
	movs	r0, #1
	mov	r8, r3
lab123: 	cmp	r6, #0
	beq	lab95
	strd	r4, r8, [r6]
	b	lab95
lab89: 	cmp r2, #0
	bne lab101
	udf	#255	
lab101: 	clz	r2, r2
	cmp	r2, #0
	bne	lab102
	sub	r5, r1, ip
	mov	r7, ip, lsr #16
	uxth	lr, ip
	movs	r1, #1
lab121: 	udiv	r3, r5, r7
	mls	r0, r7, r3, r5
	lsrs	r5, r4, #16
	orr	r5, r5, r0, lsl #16
	mul	r0, lr, r3
	cmp	r0, r5
	bls	lab103
	adds	r5, ip, r5
	add	r8, r3, #4294967295	
	bcs	lab104
	cmp	r0, r5
	bhi	lab105
lab104: 	mov	r3, r8
lab103: 	subs	r5, r5, r0
	uxth	r4, r4
	udiv	r0, r5, r7
	mls	r5, r7, r0, r5
	orr	r4, r4, r5, lsl #16
	mul	lr, lr, r0
	cmp	lr, r4
	bls	lab106
	adds	r4, ip, r4
	add	r5, r0, #4294967295	
	bcs	lab107
	cmp	lr, r4
	bhi	lab108
lab107: 	mov	r0, r5
lab106: 	sub	r4, r4, lr
	orr	r0, r0, r3, lsl #16
	b	lab109
lab98: 	rsb	r7, r1, #32
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
	bls	lab110
	adds	r5, ip, r5
	add	sl, r8, #4294967295	
	bcs	lab111
	cmp	r0, r5
	bls	lab111
	sub	r8, r8, #2
	add	r5, ip
lab110: 	subs	r5, r5, r0
	uxth	r4, r4
	udiv	r0, r5, r9
	mls	r5, r9, r0, r5
	orr	r5, r4, r5, lsl #16
	mul	lr, r0, lr
	cmp	lr, r5
	bls	lab112
	adds	r5, ip, r5
	add	r4, r0, #4294967295	
	bcs	lab113
	cmp	lr, r5
	bls	lab113
	subs	r0, #2
	add	r5, ip
lab112: 	orr	r0, r0, r8, lsl #16
	umull	r9, r4, r0, r2
	sub	r5, r5, lr
	cmp	r5, r4
	mov	r8, r9
	mov	lr, r4
	bcc	lab114
	beq	lab115
lab122: 	cmp r6, #0
	beq lab116
	subs	r2, r3, r8
	sbc	r5, r5, lr
	lsl	r7, r5, r7
	lsr	r3, r2, r1
	lsrs	r5, r1
	orrs	r7, r3
	strd	r7, r5, [r6]
lab116: 	movs	r1, #0
	nop
	push {r1, r2}
	ldr r1, =6892
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab102: 	rsb	r3, r2, #32
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
	bls	lab117
	adds	r3, ip, r3
	add	r8, r1, #4294967295	
	bcs	lab118
	cmp	r0, r3
	bls	lab118
	subs	r1, #2
	add	r3, ip
lab117: 	subs	r3, r3, r0
	uxth	r5, r5
	udiv	r0, r3, r7
	mls	r3, r7, r0, r3
	orr	r5, r5, r3, lsl #16
	mul	r3, r0, lr
	cmp	r3, r5
	bls	lab119
	adds	r5, ip, r5
	add	r8, r0, #4294967295	
	bcs	lab120
	cmp	r3, r5
	bls	lab120
	subs	r0, #2
	add	r5, ip
lab119: 	subs	r5, r5, r3
	orr	r1, r0, r1, lsl #16
	b	lab121
lab97: 	mov	r1, r6
	mov	r0, r6
	b	lab95
lab92: 	mov	lr, r0
	b	lab91
lab94: 	mov	r0, r3
	b	lab93
lab115: 	cmp	r3, r9
	bcs	lab122
lab114: 	subs	r8, r9, r2
	sbc	lr, r4, ip
	subs	r0, #1
	b	lab122
lab120: 	mov	r0, r8
	b	lab119
lab113: 	mov	r0, r4
	b	lab112
lab118: 	mov	r1, r8
	b	lab117
lab111: 	mov	r8, sl
	b	lab110
lab105: 	subs	r3, #2
	add	r5, ip
	b	lab103
lab100: 	mov	r0, r1
	b	lab123
lab108: 	add	r4, ip
	subs	r0, #2
	b	lab106
__aeabi_idiv0:
	bx	lr
	nop
__assert_func:
	push	{lr}
	ldr	r4, =0x2000020c	
	ldr	r5, [r4, #0]
	mov	r4, r2
	ldr	r6, [r5, #12]
	mov	r2, r3
	sub	sp, #20
	mov	r3, r0
	mov	r5, r1
	cmp r4, #0
	beq lab124
	ldr	r1, =0x20000060	
lab125: 	str	r5, [sp, #0]
	strd	r1, r4, [sp, #4]
	mov	r0, r6
	ldr	r1, =0x20000070	
	bl	fiprintf
	push {r1, r2}
	ldr r1, =327
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	abort
lab124: 	ldr	r1, =0x2000006c	
	mov	r4, r1
	b	lab125
	nop
	.ltorg
__assert:
	push	{r3, lr}
	mov	r3, r2
	movs	r2, #0
	bl	__assert_func
	nop
_fiprintf_r:
	push	{r2, r3}
	push	{lr}
	sub	sp, #12
	add	r3, sp, #16
	ldr	r2, [r3], #4
	str	r3, [sp, #4]
push {r1, r2}
	ldr r1, =2458
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =2458
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
	ldr	r4, =0x2000020c	
	ldr	r2, [r3], #4
	str	r3, [sp, #4]
	mov	r1, r0
	ldr	r0, [r4, #0]
push {r1, r2}
	ldr r1, =2904
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =2904
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	sp, #12
	ldmia	sp!, {r4, lr}
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =2491
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
	nop
	.ltorg
memset:
	lsls	r3, r0, #30
	push	{r4, r5, lr}
	beq	lab126
	subs	r4, r2, #1
	cmp	r2, #0
	beq	lab127
	uxtb	r2, r1
	mov	r3, r0
	b	lab128
lab129: 	subs	r4, #1
	bcc	lab127
lab128: 	strb	r2, [r3], #1
	lsls	r5, r3, #30
	bne	lab129
lab137: 	cmp	r4, #3
	bls	lab130
	uxtb	r5, r1
	orr	r5, r5, r5, lsl #8
	cmp	r4, #15
	orr	r5, r5, r5, lsl #16
	bls	lab131
	sub	r2, r4, #16
	bic	ip, r2, #15
	add	lr, r3, #32
	add	lr, ip
	mov	ip, r2, lsr #4
	add	r2, r3, #16
lab132: 	strd	r5, r5, [r2, #-16]
	strd	r5, r5, [r2, #-8]
	adds	r2, #16
	cmp	r2, lr
	bne	lab132
	add	r2, ip, #1
	tst	r4, #12
	add	r2, r3, r2, lsl #4
	and	ip, r4, #15
	beq	lab133
lab138: 	sub	r3, ip, #4
	bic	r3, r3, #3
	adds	r3, #4
	add	r3, r2
lab134: 	str	r5, [r2], #4
	cmp	r3, r2
	bne	lab134
	and	r4, ip, #3
lab130: 	cmp r4, #0
	beq lab127
lab136: 	uxtb	r2, r1
	add	r4, r3
lab135: 	strb	r2, [r3], #1
	cmp	r4, r3
	bne	lab135
lab127:	nop
	push {r1, r2}
	ldr r1, =4908
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, pc}
lab133: 	mov	r4, ip
	mov	r3, r2
	cmp	r4, #0
	bne	lab136
	b	lab127
lab126: 	mov	r3, r0
	mov	r4, r2
	b	lab137
lab131: 	mov	r2, r3
	mov	ip, r4
	b	lab138
__sprint_r.part.0:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, [r1, #100]	
	lsls	r4, r3, #18
	mov	r8, r2
	bpl	lab139
	ldr	r3, [r2, #8]
	ldr	r2, [r2, #0]
	cmp r3, #0
	beq lab140
	mov	fp, r1
	mov	r6, r0
	add	r9, r2, #8
lab145: 	ldrd	r5, sl, [r9, #-8]
	movs	r7, sl, lsr #2
	beq	lab141
	subs	r5, #4
	movs	r4, #0
	b	lab142
lab144: 	cmp	r7, r4
	beq	lab143
lab142: 	ldr	r1, [r5, #4]!
	mov	r2, fp
	mov	r0, r6
	bl	_fputwc_r
	push {r1, r2}
	ldr r1, =679
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	add	r4, r4, #1
	bne	lab144
lab146: 	movs	r3, #0
	strd	r3, r3, [r8, #4]
	nop
	push {r1, r2}
	ldr r1, =3197
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab143: 	ldr	r3, [r8, #8]
lab141: 	bic	sl, sl, #3
	sub	r3, r3, sl
	str	r3, [r8, #8]
	add	r9, r9, #8
	cmp	r3, #0
	bne	lab145
lab140: 	movs	r0, #0
	b	lab146
lab139: 	bl	__sfvwrite_r
	push {r1, r2}
	ldr r1, =5290
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	strd	r3, r3, [r8, #4]
	nop
	push {r1, r2}
	ldr r1, =4924
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
	nop
__sprint_r:
	push	{r4}
	ldr	r4, [r2, #8]
	cmp r4, #0
	beq lab147
	pop	{r4}
	b	__sprint_r.part.0
lab147: 	mov	r0, r4
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
	beq lab148
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab149
lab148: 	ldr	r2, [sp, #4]
	ldr	r3, [r2, #100]	
	lsls	r6, r3, #31
	bpl	lab150
	ldrsh	r1, [r2, #12]
	uxth	r2, r1
lab189: 	lsls	r0, r2, #18
	bmi	lab151
	orr	r2, r1, #8192	
	ldr	r1, [sp, #4]
	ldr	r3, [r1, #100]	
	strh	r2, [r1, #12]
	bic	r3, r3, #8192	
	uxth	r2, r2
	str	r3, [r1, #100]	
lab151: 	lsls	r1, r2, #28
	bpl	lab152
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	lab152
	and	r3, r2, #26
	cmp	r3, #10
	beq	lab153
lab171: 	add	r3, sp, #76	
	str	r3, [sp, #64]	
	movs	r3, #0
	strd	r3, r3, [sp, #68]	
	strd	r3, r3, [sp, #40]	
	str	r3, [sp, #32]
	add	r9, sp, #76	
	str	r3, [sp, #36]	
	str	r3, [sp, #12]
lab204: 	ldrb	r3, [r7, #0]
	cmp	r3, #0
	beq	lab154
	mov	r4, r7
	b	lab155
lab157: 	ldrb	r3, [r4, #1]!
	cmp	r3, #0
	beq	lab156
lab155: 	cmp	r3, #37	
	bne	lab157
	subs	r5, r4, r7
	bne	lab158
lab182: 	ldrb	r3, [r4, #0]
	cmp	r3, #0
	beq	lab154
	mov	r3, #0
	movs	r5, #0
	strb	r3, [sp, #59]	
	adds	r7, r4, #1
	ldrb	r3, [r4, #1]
	str	r5, [sp, #8]
	mov	fp, #4294967295	
	movs	r4, #43	
lab163: 	adds	r7, #1
lab161: 	sub	r2, r3, #32
	cmp	r2, #90	
	bhi	lab159
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
lab160: 	ldrb	r3, [r7], #1
	add	r1, r1, r1, lsl #2
	add	r1, r2, r1, lsl #1
	sub	r2, r3, #48	
	cmp	r2, #9
	bls	lab160
	str	r1, [sp, #8]
	b	lab161
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
	bne	lab162
lab222: 	ldrb	r3, [r7, #0]
	b	lab163
	ldrb	r3, [r7, #0]
	orr	r5, r5, #32
	b	lab163
	orr	r5, r5, #16
	lsls	r4, r5, #26
	ldr	r6, [sp, #16]
	bpl	lab164
	adds	r6, #7
	bic	r6, r6, #7
	mov	r2, r6
	ldr	r3, [r6, #4]
	ldr	r6, [r2], #8
	str	r2, [sp, #16]
	mov	r8, r3
lab211: 	cmp	r3, #0
	blt	lab165
	cmp	fp, #4294967295	
	beq	lab166
	orrs	r3, r6, r8
	bic	sl, r5, #128	
	beq	lab167
lab225: 	cmp	r6, #10
	sbcs	r3, r8, #0
	bcs	lab168
lab266: 	adds	r6, #48	
	movs	r3, #1
	strb	r6, [sp, #239]	
	mov	r5, sl
	str	r3, [sp, #0]
	add	r4, sp, #239	
lab180: 	ldr	r8, [sp]
	ldrb	r3, [sp, #59]	
	cmp	r8, fp
	it	lt
	movlt	r8, fp
	cmp	r3, #0
	beq	lab169
	add	r8, r8, #1
	b	lab169
lab152: 	ldr	r5, [sp, #4]
	ldr	r0, [sp, #20]
	mov	r1, r5
push {r1, r2}
	ldr r1, =5420
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =5420
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab170
	ldrh	r2, [r5, #12]
	and	r3, r2, #26
	cmp	r3, #10
	bne	lab171
lab153: 	ldr	r1, [sp, #4]
	ldrsh	r3, [r1, #14]
	cmp	r3, #0
	blt	lab171
	ldr	r3, [r1, #100]	
	lsls	r6, r3, #31
	bmi	lab172
	lsls	r5, r2, #22
	bpl	lab173
lab172: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	mov	r3, r4
	mov	r2, r7
	add	sp, #244	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	__sbprintf
	orr	r5, r5, #16
	ands	r8, r5, #32
	beq	lab174
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r3, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r3], #8
	str	r3, [sp, #16]
lab208: 	bic	sl, r5, #1024	
	movs	r3, #0
lab218: 	mov	r2, #0
	strb	r2, [sp, #59]	
lab269: 	cmp	fp, #4294967295	
	beq	lab175
	orrs	r2, r6, r8
	bic	r5, sl, #128	
	bne	lab176
	cmp	fp, #0
	bne	lab177
	cmp	r3, #0
	bne	lab178
	ands	r3, sl, #1
	str	r3, [sp, #0]
	beq	lab179
	movs	r3, #48	
	strb	r3, [sp, #239]	
	add	r4, sp, #239	
	b	lab180
lab156: 	subs	r5, r4, r7
	beq	lab154
lab158: 	ldr	r3, [sp, #68]	
	ldr	r2, [sp, #72]	
	adds	r3, #1
	add	r2, r5
	cmp	r3, #7
	strd	r7, r5, [r9]
	str	r2, [sp, #72]	
	str	r3, [sp, #68]	
	bgt	lab181
	add	r9, r9, #8
lab185: 	ldr	r3, [sp, #12]
	add	r3, r5
	str	r3, [sp, #12]
	b	lab182
lab181: 	cmp	r2, #0
	beq	lab183
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =3223
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =3223
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab184
	add	r9, sp, #76	
	b	lab185
lab154: 	ldr	r3, [sp, #72]	
	cmp	r3, #0
	bne	lab186
lab291: 	movs	r3, #0
	str	r3, [sp, #68]	
lab184: 	ldr	r2, [sp, #4]
	ldr	r3, [r2, #100]	
	lsls	r1, r3, #31
	bpl	lab187
	ldrh	r3, [r2, #12]
lab205: 	lsls	r3, r3, #25
	bmi	lab188
lab293: 	ldr	r0, [sp, #12]
	add	sp, #244	
	nop
	push {r1, r2}
	ldr r1, =4031
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab150: 	ldr	r3, [sp, #4]
	ldrsh	r1, [r3, #12]
	lsls	r5, r1, #22
	uxth	r2, r1
	bmi	lab189
	mov	r5, r3
	ldr	r0, [r3, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r1, [r5, #12]
	uxth	r2, r1
	b	lab189
lab159: 	cmp	r3, #0
	beq	lab154
	strb	r3, [sp, #140]	
	mov	r8, #1
	mov	r3, #0
	strb	r3, [sp, #59]	
	str	r8, [sp]
	add	r4, sp, #140	
lab215: 	mov	fp, #0
lab169: 	ands	r3, r5, #2
	str	r3, [sp, #24]
	it	ne
	addne	r8, r8, #2
	ands	r3, r5, #132	
	str	r3, [sp, #28]
	bne	lab190
	ldr	r3, [sp, #8]
	sub	r6, r3, r8
	cmp	r6, #0
	bgt	lab191
lab190: 	ldrd	r2, r1, [sp, #68]	
	adds	r0, r2, #1
lab255: 	ldrb	r6, [sp, #59]	
	cmp r6, #0
	beq lab192
	add	r2, sp, #59	
	adds	r1, #1
	str	r2, [r9]
	cmp	r0, #7
	mov	r2, #1
	strd	r0, r1, [sp, #68]	
	str	r2, [r9, #4]
	bgt	lab193
lab278: 	mov	r2, r0
	add	r9, r9, #8
	adds	r0, #1
lab192: 	ldr	r3, [sp, #24]
	cmp r3, #0
	beq lab194
	add	r3, sp, #60	
	adds	r1, #2
	str	r3, [r9]
	cmp	r0, #7
	mov	r3, #2
	strd	r0, r1, [sp, #68]	
	str	r3, [r9, #4]
	ble	lab195
	cmp	r1, #0
	beq	lab196
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =7879
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =7879
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab184
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
lab194: 	ldr	r3, [sp, #28]
	cmp	r3, #128	
	beq	lab197
lab230: 	ldr	r3, [sp, #0]
	sub	r6, fp, r3
	cmp	r6, #0
	bgt	lab198
lab238: 	ldr	r3, [sp, #0]
	str	r4, [r9]
	add	r1, r3
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	r3, [r9, #4]
	ble	lab199
	cmp	r1, #0
	beq	lab200
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =6130
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =6130
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab184
	ldr	r1, [sp, #72]	
	add	r9, sp, #76	
lab229: 	lsls	r0, r5, #29
	bpl	lab201
	ldr	r3, [sp, #8]
	sub	r4, r3, r8
	cmp	r4, #0
	bgt	lab202
lab201: 	ldrd	r2, r3, [sp, #8]
	cmp	r2, r8
	ite	ge
	addge	r3, r3, r2
	addlt	r3, r8
	str	r3, [sp, #12]
	cmp	r1, #0
	bne	lab203
lab246: 	movs	r3, #0
	str	r3, [sp, #68]	
	add	r9, sp, #76	
	b	lab204
lab187: 	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #12]
	lsls	r2, r3, #22
	bmi	lab205
	ldr	r4, [sp, #4]
	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	ldrh	r3, [r4, #12]
	b	lab205
lab174: 	ands	r3, r5, #16
	bne	lab206
	ands	r2, r5, #64	
	beq	lab207
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	mov	r8, r3
	uxth	r6, r6
	b	lab208
lab164: 	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	lsls	r0, r5, #27
	bmi	lab209
	lsls	r1, r5, #25
	bpl	lab210
	sbfx	r8, r3, #15, #1
	sxth	r6, r3
	mov	r3, r8
	b	lab211
	ldr	r6, [sp, #16]
	ldr	r4, [r6], #4
	mov	r3, #0
	strb	r3, [sp, #59]	
	cmp	r4, #0
	beq	lab212
	cmp	fp, #4294967295	
	beq	lab213
	mov	r2, fp
	movs	r1, #0
	mov	r0, r4
	bl	memchr
	cmp	r0, #0
	beq	lab214
	subs	r3, r0, r4
	str	r3, [sp, #0]
	str	r6, [sp, #16]
	mov	fp, #0
	b	lab180
	ldr	r6, [sp, #16]
	mov	r3, #0
	strb	r3, [sp, #59]	
	mov	r8, #1
	ldr	r3, [r6], #4
	strb	r3, [sp, #140]	
	str	r6, [sp, #16]
	str	r8, [sp]
	add	r4, sp, #140	
	b	lab215
lab149: 	bl	__sinit
	b	lab148
	ldr	r3, [sp, #16]
	ldr	r2, [r3], #4
	str	r2, [sp, #8]
	cmp	r2, #0
	bge	lab216
	ldr	r2, [sp, #8]
	str	r3, [sp, #16]
	negs	r2, r2
	str	r2, [sp, #8]
	ldrb	r3, [r7, #0]
	orr	r5, r5, #4
	b	lab163
	ldrb	r3, [r7, #0]
	cmp	r3, #108	
	ittte	eq
	ldrbeq	r3, [r7, #1]
	orreq	r5, r5, #32
	addeq	r7, #1
	orrne	r5, r5, #16
	b	lab163
	ldrb	r3, [r7, #0]
	cmp	r3, #104	
	ittte	eq
	ldrbeq	r3, [r7, #1]
	orreq	r5, r5, #512	
	addeq	r7, #1
	orrne	r5, r5, #64	
	b	lab163
	orr	sl, r5, #16
lab275: 	ands	r8, sl, #32
	beq	lab217
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r3, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r3], #8
	str	r3, [sp, #16]
	movs	r3, #1
	b	lab218
	ldrb	r3, [r7, #0]
	strb	r4, [sp, #59]	
	b	lab163
	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	movs	r3, #48	
	strb	r3, [sp, #60]	
	movs	r3, #120	
	strb	r3, [sp, #61]	
	ldr	r3, =0x200000b8	
	str	r3, [sp, #32]
	orr	sl, r5, #2
	mov	r8, #0
	movs	r3, #2
	b	lab218
	lsls	r6, r5, #26
	bmi	lab219
	lsls	r4, r5, #27
	bmi	lab220
	lsls	r0, r5, #25
	bmi	lab221
	lsls	r1, r5, #22
	bpl	lab220
	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	strb	r2, [r3, #0]
	b	lab204
	ldrb	r3, [r7, #0]
	orr	r5, r5, #1
	b	lab163
	ldrb	r3, [sp, #59]	
	cmp	r3, #0
	bne	lab222
	movs	r3, #32
	strb	r3, [sp, #59]	
	ldrb	r3, [r7, #0]
	b	lab163
	ldrb	r3, [r7, #0]
	orr	r5, r5, #128	
	b	lab163
	mov	r1, r7
	ldrb	r3, [r1], #1
	cmp	r3, #42	
	beq	lab223
	sub	r2, r3, #48	
	cmp	r2, #9
	mov	r7, r1
	mov	fp, #0
	bhi	lab161
lab224: 	ldrb	r3, [r7], #1
	add	fp, fp, fp, lsl #2
	add	fp, r2, fp, lsl #1
	sub	r2, r3, #48	
	cmp	r2, #9
	bls	lab224
	b	lab161
lab176: 	mov	sl, r5
lab175: 	cmp	r3, #1
	beq	lab225
lab286: 	cmp	r3, #2
	add	r4, sp, #240	
	bne	lab226
	ldr	r2, [sp, #32]
lab227: 	and	r3, r6, #15
	lsrs	r6, r6, #4
	ldrb	r3, [r2, r3]
	strb	r3, [r4, #-1]!
	orr	r6, r6, r8, lsl #28
	mov	r8, r8, lsr #4
	orrs	r3, r6, r8
	bne	lab227
lab228: 	add	r3, sp, #240	
	subs	r3, r3, r4
	mov	r5, sl
	str	r3, [sp, #0]
	b	lab180
lab226: 	and	r3, r6, #7
	lsrs	r6, r6, #3
	orr	r6, r6, r8, lsl #29
	mov	r8, r8, lsr #3
	adds	r3, #48	
	orrs	r1, r6, r8
	mov	r2, r4
	strb	r3, [r4, #-1]!
	bne	lab226
	tst	sl, #1
	beq	lab228
	cmp	r3, #48	
	beq	lab228
	movs	r3, #48	
	subs	r2, #2
	strb	r3, [r4, #-1]
	add	r3, sp, #240	
	subs	r3, r3, r2
	mov	r5, sl
	str	r3, [sp, #0]
	mov	r4, r2
	b	lab180
lab264: 	ldr	r1, [sp, #0]
	str	r4, [sp, #76]	
	movs	r3, #1
	str	r1, [sp, #80]	
	str	r1, [sp, #72]	
	str	r3, [sp, #68]	
	add	r9, sp, #76	
lab199: 	add	r9, r9, #8
	b	lab229
lab197: 	ldr	r3, [sp, #8]
	sub	r6, r3, r8
	cmp	r6, #0
	ble	lab230
	cmp	r6, #16
	ble	lab231
	ldr	sl, =0x200000e4	
	mov	r3, sl
	strd	fp, r4, [sp, #24]
	mov	sl, r7
	ldr	fp, [sp, #20]
	ldr	r4, [sp, #4]
	mov	r7, r5
	mov	r5, r3
	b	lab232
lab234: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab247: 	subs	r6, #16
	cmp	r6, #16
	ble	lab233
lab232: 	adds	r0, r2, #1
	adds	r1, #16
	movs	r3, #16
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	r5, [r9]
	str	r3, [r9, #4]
	ble	lab234
	add	r2, sp, #64	
	cmp	r1, #0
	beq	lab235
	mov	r1, r4
	mov	r0, fp
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =5032
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =5032
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab184
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	bgt	lab232
lab233: 	ldrd	fp, r4, [sp, #24]
	mov	r3, r5
	mov	r5, r7
	mov	r7, sl
	mov	sl, r3
lab294: 	add	r1, r6
	cmp	ip, #7
	strd	ip, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	ble	lab236
	cmp	r1, #0
	beq	lab237
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =3263
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =3263
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab184
	ldr	r3, [sp, #0]
	ldrd	r2, r1, [sp, #68]	
	sub	r6, fp, r3
	cmp	r6, #0
	add	r0, r2, #1
	add	r9, sp, #76	
	ble	lab238
lab198: 	cmp	r6, #16
	ldr	sl, =0x200000e4	
	ble	lab239
	mov	r3, sl
	strd	r4, r5, [sp, #24]
	mov	sl, r7
	ldr	r4, [sp, #20]
	ldr	r5, [sp, #4]
	mov	fp, #16
	mov	r7, r3
	b	lab240
lab242: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab245: 	subs	r6, #16
	cmp	r6, #16
	ble	lab241
lab240: 	adds	r0, r2, #1
	adds	r1, #16
	cmp	r0, #7
	strd	r7, fp, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab242
	add	r2, sp, #64	
	cmp r1, #0
	beq lab243
	mov	r1, r5
	mov	r0, r4
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =3578
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =3578
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab184
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	bgt	lab240
lab241: 	ldrd	r4, r5, [sp, #24]
	mov	r3, r7
	mov	r0, ip
	mov	r7, sl
	mov	sl, r3
lab239: 	add	r1, r6
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	bgt	lab244
	add	r9, r9, #8
	adds	r0, #1
	b	lab238
lab243: 	mov	ip, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab245
lab203: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =3399
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =3399
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab246
	b	lab184
lab235: 	mov	ip, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab247
lab193: 	cmp	r1, #0
	beq	lab248
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =298
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =298
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab184
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
	b	lab192
lab289: 	movs	r1, #2
	add	r3, sp, #60	
	str	r1, [sp, #80]	
	str	r3, [sp, #76]	
	movs	r0, #1
	add	r9, sp, #76	
lab195: 	mov	r2, r0
lab272: 	add	r9, r9, #8
	adds	r0, r2, #1
	b	lab194
lab191: 	cmp	r6, #16
	ble	lab249
	ldrd	ip, r1, [sp, #68]	
	ldr	sl, =0x200000d4	
	strd	fp, r4, [sp, #48]	
	movs	r3, #16
	mov	r4, sl
	ldr	fp, [sp, #4]
	ldr	sl, [sp, #20]
	mov	r2, ip
	b	lab250
	.ltorg
lab252: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab256: 	subs	r6, #16
	cmp	r6, #16
	ble	lab251
lab250: 	adds	r0, r2, #1
	adds	r1, #16
	cmp	r0, #7
	strd	r4, r3, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab252
	add	r2, sp, #64	
	cmp r1, #0
	beq lab253
	mov	r1, fp
	mov	r0, sl
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =4261
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =4261
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab184
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	mov	r3, #16
	bgt	lab250
lab251: 	mov	sl, r4
	ldr	fp, [sp, #48]	
	ldr	r4, [sp, #52]	
	mov	r2, ip
lab290: 	add	r1, r6
	cmp	r2, #7
	strd	r2, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	bgt	lab254
	add	r9, r9, #8
	adds	r0, r2, #1
	b	lab255
lab253: 	mov	r2, r1
	mov	ip, #1
	add	r9, sp, #76	
	b	lab256
lab200: 	lsls	r4, r5, #29
	str	r1, [sp, #68]	
	bpl	lab257
	ldr	r3, [sp, #8]
	sub	r4, r3, r8
	cmp	r4, #0
	ble	lab257
	add	r9, sp, #76	
lab202: 	cmp	r4, #16
	ble	lab258
	ldr	sl, =0x200000d4	
	ldr	r2, [sp, #68]	
	ldr	r6, [sp, #20]
	ldr	fp, [sp, #4]
	mov	r3, sl
	movs	r5, #16
	mov	sl, r7
	mov	r7, r3
	b	lab259
lab261: 	adds	r0, r2, #2
	add	r9, r9, #8
	mov	r2, r3
lab263: 	subs	r4, #16
	cmp	r4, #16
	ble	lab260
lab259: 	adds	r3, r2, #1
	adds	r1, #16
	cmp	r3, #7
	strd	r7, r5, [r9]
	strd	r3, r1, [sp, #68]	
	ble	lab261
	add	r2, sp, #64	
	cmp r1, #0
	beq lab262
	mov	r1, fp
	mov	r0, r6
push {r1, r2}
	ldr r1, =5247
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =5247
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab184
	ldrd	r2, r1, [sp, #68]	
	subs	r4, #16
	cmp	r4, #16
	add	r0, r2, #1
	add	r9, sp, #76	
	bgt	lab259
lab260: 	mov	r3, r7
	mov	r7, sl
	mov	sl, r3
lab292: 	add	r1, r4
	cmp	r0, #7
	strd	sl, r4, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab201
	cmp r1, #0
	beq lab257
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =6976
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =6976
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab184
	ldr	r1, [sp, #72]	
	b	lab201
lab262: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab263
lab257: 	ldrd	r2, r3, [sp, #8]
	cmp	r2, r8
	ite	ge
	addge	r3, r3, r2
	addlt	r3, r8
	str	r3, [sp, #12]
	b	lab246
lab244: 	cmp	r1, #0
	beq	lab264
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =1787
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =1787
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab184
	ldr	r0, [sp, #68]	
	ldr	r1, [sp, #72]	
	adds	r0, #1
	add	r9, sp, #76	
	b	lab238
lab248: 	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	lab265
lab196: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab194
lab183: 	str	r2, [sp, #68]	
	add	r9, sp, #76	
	b	lab185
lab167: 	cmp	fp, #0
	bne	lab266
	mov	r5, sl
lab178: 	mov	fp, #0
	str	fp, [sp]
	add	r4, sp, #240	
	b	lab180
lab217: 	ands	r3, sl, #16
	bne	lab267
	ands	r2, sl, #64	
	beq	lab268
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	mov	r8, r3
	uxth	r6, r6
	movs	r3, #1
	b	lab218
lab165: 	movs	r3, #45	
	negs	r6, r6
	strb	r3, [sp, #59]	
	sbc	r8, r8, r8, lsl #1
	mov	sl, r5
	movs	r3, #1
	b	lab269
lab254: 	cmp	r1, #0
	beq	lab270
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =3800
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =3800
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab184
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
	b	lab255
lab216: 	str	r3, [sp, #16]
	ldrb	r3, [r7, #0]
	b	lab163
lab179: 	add	r4, sp, #240	
	b	lab180
lab236: 	add	r9, r9, #8
	add	r0, ip, #1
	mov	r2, ip
	b	lab230
lab210: 	lsls	r2, r5, #22
	bmi	lab271
lab209: 	mov	r8, r3, asr #31
	mov	r6, r3
	mov	r3, r8
	b	lab211
lab267: 	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	movs	r3, #1
	b	lab218
lab162: 	ldr	r3, [sp, #36]	
	cmp	r3, #0
	beq	lab222
	ldr	r3, [sp, #36]	
	ldrb	r3, [r3, #0]
	cmp	r3, #0
	beq	lab222
	ldrb	r3, [r7, #0]
	orr	r5, r5, #1024	
	b	lab163
lab219: 	ldrd	r1, r6, [sp, #12]
	ldr	r2, [r6], #4
	str	r6, [sp, #16]
	asrs	r3, r1, #31
	strd	r1, r3, [r2]
	b	lab204
lab206: 	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	b	lab208
lab265: 	movs	r1, #2
	add	r3, sp, #60	
	str	r1, [sp, #80]	
	str	r3, [sp, #76]	
	add	r9, sp, #76	
	b	lab272
	ldr	r2, =0x200000a4	
	str	r2, [sp, #32]
lab276: 	ands	r8, r5, #32
	beq	lab273
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r2, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r2], #8
	str	r2, [sp, #16]
lab280: 	lsls	r2, r5, #31
	bpl	lab274
	orrs	r2, r6, r8
	beq	lab274
	strb	r3, [sp, #61]	
	movs	r3, #48	
	orr	r5, r5, #2
	strb	r3, [sp, #60]	
lab274: 	bic	sl, r5, #1024	
	movs	r3, #2
	b	lab218
	mov	sl, r5
	b	lab275
	ldr	r2, =0x200000b8	
	str	r2, [sp, #32]
	b	lab276
lab213: 	mov	r0, r4
	str	r6, [sp, #16]
	bl	strlen
	mov	fp, #0
	str	r0, [sp, #0]
	b	lab180
lab270: 	ldrb	r2, [sp, #59]	
	cmp	r2, #0
	beq	lab277
	movs	r0, #1
	add	r2, sp, #59	
	str	r0, [sp, #80]	
	str	r2, [sp, #76]	
	add	r9, sp, #76	
	mov	r1, r0
	b	lab278
lab273: 	ands	r2, r5, #16
	beq	lab279
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	b	lab280
lab168: 	and	r3, sl, #1024	
	str	fp, [sp]
	str	r9, [sp, #24]
	mov	fp, r7
	ldr	r9, [sp, #36]	
	movs	r5, #0
	add	r4, sp, #240	
	mov	r7, r3
	b	lab281
lab283: 	mov	r0, r6
	mov	r1, r8
push {r1, r2}
	ldr r1, =4430
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =4430
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r6, #10
	sbcs	r3, r8, #0
	bcc	lab282
lab288: 	mov	r6, r0
	mov	r8, r1
lab281: 	mov	r0, r6
	mov	r1, r8
	movs	r2, #10
	movs	r3, #0
push {r1, r2}
	ldr r1, =4884
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =4884
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
	beq	lab283
	ldrb	r1, [r9]
	cmp	r1, r5
	bne	lab283
	cmp	r5, #255	
	beq	lab283
	cmp	r6, #10
	sbcs	r3, r8, #0
	bcs	lab284
lab282: 	add	r3, sp, #240	
	subs	r3, r3, r4
	str	r9, [sp, #36]	
	mov	r7, fp
	ldr	r9, [sp, #24]
	ldr	fp, [sp]
	str	r3, [sp, #0]
	mov	r5, sl
	b	lab180
lab279: 	ands	r1, r5, #64	
	beq	lab285
	ldr	r1, [sp, #16]
	ldr	r6, [r1], #4
	str	r1, [sp, #16]
	mov	r8, r2
	uxth	r6, r6
	b	lab280
lab166: 	mov	sl, r5
	b	lab225
lab177: 	cmp	r3, #1
	mov	sl, r5
	bne	lab286
	b	lab266
	nop
	.ltorg
lab220: 	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r2, [r3, #0]
	str	r6, [sp, #16]
	b	lab204
lab212: 	cmp	fp, #6
	mov	r8, fp
	it	cs
	movcs	r8, #6
	ldr	r4, =0x200000cc	
	str	r8, [sp]
	str	r6, [sp, #16]
	b	lab215
lab268: 	ldr	r3, [sp, #16]
	ands	r8, sl, #512	
	ite	ne
	ldrne	r6, [r3], #4
	ldreq	r6, [r3], #4
	str	r3, [sp, #16]
	itt	ne
	movne	r8, r2
	uxtbne	r6, r6
	movs	r3, #1
	b	lab218
lab207: 	ldr	r3, [sp, #16]
	ands	r8, r5, #512	
	ite	ne
	ldrne	r6, [r3], #4
	ldreq	r6, [r3], #4
	str	r3, [sp, #16]
	itt	ne
	movne	r8, r2
	uxtbne	r6, r6
	b	lab208
lab285: 	ldr	r2, [sp, #16]
	ands	r8, r5, #512	
	ite	ne
	ldrne	r6, [r2], #4
	ldreq	r6, [r2], #4
	str	r2, [sp, #16]
	itt	ne
	movne	r8, r1
	uxtbne	r6, r6
	b	lab280
lab284: 	ldr	r3, [sp, #44]	
	ldr	r1, [sp, #40]	
	subs	r4, r4, r3
	mov	r2, r3
	mov	r0, r4
	bl	strncpy
	push {r1, r2}
	ldr r1, =3322
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r3, [r9, #1]
	cmp r3, #0
	beq lab287
	add	r9, r9, #1
lab287: 	mov	r0, r6
	mov	r1, r8
	movs	r2, #10
	movs	r3, #0
	movs	r5, #0
push {r1, r2}
	ldr r1, =1536
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =1536
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab288
lab237: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab230
lab277: 	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	lab289
	mov	r2, r1
	movs	r0, #1
	add	r9, sp, #76	
	b	lab230
lab221: 	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	strh	r2, [r3, #0]
	b	lab204
lab271: 	sbfx	r8, r3, #7, #1
	sxtb	r6, r3
	mov	r3, r8
	b	lab211
lab173: 	ldr	r0, [r1, #88]	
	bl	__retarget_lock_release_recursive
	b	lab172
lab214: 	str	fp, [sp]
	str	r6, [sp, #16]
	mov	fp, r0
	b	lab180
lab249: 	ldr	r2, [sp, #68]	
	ldr	r1, [sp, #72]	
	ldr	sl, =0x200000d4	
	adds	r2, #1
	b	lab290
lab186: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =1482
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =1482
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab291
	b	lab184
lab258: 	ldr	r0, [sp, #68]	
	ldr	sl, =0x200000d4	
	adds	r0, #1
	b	lab292
lab170: 	ldr	r3, [sp, #4]
	ldr	r3, [r3, #100]	
	lsls	r3, r3, #31
	bmi	lab188
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #12]
	lsls	r7, r3, #22
	bmi	lab188
	ldr	r3, [sp, #4]
	ldr	r0, [r3, #88]	
	bl	__retarget_lock_release_recursive
lab188: 	mov	r3, #4294967295	
	str	r3, [sp, #12]
	b	lab293
lab231: 	ldr	sl, =0x200000e4	
	mov	ip, r0
	b	lab294
lab223: 	ldr	r2, [sp, #16]
	ldrb	r3, [r7, #1]
	mov	r7, r1
	ldr	r1, [r2], #4
	str	r2, [sp, #16]
	orr	fp, r1, r1, asr #31
	b	lab163
	nop
	.ltorg
vfiprintf:
	push	{r4}
	ldr	r4, =0x2000020c	
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
	ldr r1, =2364
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =2364
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r5, r0, #0
	blt	lab295
	mov	r1, sp
	mov	r0, r6
push {r1, r2}
	ldr r1, =2636
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =2636
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	it	ne
	movne	r5, #4294967295	
lab295: 	ldrh	r3, [sp, #12]
	lsls	r3, r3, #25
	bpl	lab296
	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
lab296: 	ldr	r0, [sp, #88]	
	bl	__retarget_lock_close_recursive
	mov	r0, r5
	addw	sp, sp, #1132	
	nop
	push {r1, r2}
	ldr r1, =6246
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
__swsetup_r:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x2000020c	
	ldr	r3, [r3, #0]
	mov	r5, r0
	mov	r4, r1
	cmp r3, #0
	beq lab297
	ldr	r2, [r3, #56]	
	cmp r2, #0
	beq lab298
lab297: 	ldrsh	r3, [r4, #12]
	lsls	r0, r3, #28
	uxth	r2, r3
	bpl	lab299
lab305: 	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	lab300
lab308: 	ands	r0, r2, #1
	beq	lab301
	movs	r0, #0
	str	r0, [r4, #8]
	ldr	r0, [r4, #20]
	negs	r0, r0
	str	r0, [r4, #24]
	cmp r1, #0
	beq lab302
lab303: 	movs	r0, #0
lab304:	nop
	push {r1, r2}
	ldr r1, =6287
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab301: 	lsls	r5, r2, #30
	it	pl
	ldrpl	r0, [r4, #20]
	str	r0, [r4, #8]
	cmp	r1, #0
	bne	lab303
lab302: 	lsls	r2, r2, #24
	it	pl
	movpl	r0, r1
	bpl	lab304
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	mov	r0, #4294967295	
	nop
	push {r1, r2}
	ldr r1, =6278
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab298: 	mov	r0, r3
	bl	__sinit
	ldrsh	r3, [r4, #12]
	lsls	r0, r3, #28
	uxth	r2, r3
	bmi	lab305
lab299: 	lsls	r1, r2, #27
	bpl	lab306
	lsls	r2, r2, #29
	bmi	lab307
	ldr	r1, [r4, #16]
lab311: 	orr	r3, r3, #8
	strh	r3, [r4, #12]
	uxth	r2, r3
	cmp	r1, #0
	bne	lab308
lab300: 	and	r0, r2, #640	
	cmp	r0, #512	
	beq	lab308
	mov	r1, r4
	mov	r0, r5
	bl	__smakebuf_r
	push {r1, r2}
	ldr r1, =5416
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	ldr	r1, [r4, #16]
	uxth	r2, r3
	b	lab308
lab307: 	ldr	r1, [r4, #48]	
	cmp r1, #0
	beq lab309
	add	r2, r4, #64	
	cmp	r1, r2
	beq	lab310
	mov	r0, r5
push {r1, r2}
	ldr r1, =204
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =204
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
lab310: 	movs	r2, #0
	str	r2, [r4, #48]	
lab309: 	ldr	r1, [r4, #16]
	movs	r2, #0
	strd	r1, r2, [r4]
	bic	r3, r3, #36	
	b	lab311
lab306: 	movs	r2, #9
	orr	r3, r3, #64	
	str	r2, [r5, #0]
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =2500
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
	ldr r1, =6942
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
	bmi	lab312
	ldr	r3, [r4, #4]
	orr	r2, r2, #2048	
	cmp	r3, #0
	strh	r2, [r4, #12]
	ble	lab313
lab325: 	ldr	r5, [r4, #40]	
	cmp	r5, #0
	beq	lab314
	movs	r3, #0
	ldr	r6, [r7, #0]
	str	r3, [r7, #0]
	uxth	r3, r2
	ands	r2, r2, #4096	
	bne	lab315
	ldr	r1, [r4, #28]
	movs	r3, #1
	mov	r0, r7
	blx	r5
	adds	r2, r0, #1
	beq	lab316
lab328: 	ldrh	r3, [r4, #12]
	ldr	r5, [r4, #40]	
lab326: 	lsls	r3, r3, #29
	bpl	lab317
	ldr	r3, [r4, #4]
	subs	r0, r0, r3
	ldr	r3, [r4, #48]	
	cmp r3, #0
	beq lab317
	ldr	r3, [r4, #60]	
	subs	r0, r0, r3
lab317: 	ldr	r1, [r4, #28]
	mov	r2, r0
	movs	r3, #0
	mov	r0, r7
	blx	r5
	adds	r1, r0, #1
	bne	lab318
	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	lab318
	cmp	r3, #29
	beq	lab319
	cmp	r3, #22
	bne	lab320
lab319: 	ldrh	r3, [r4, #12]
	ldr	r2, [r4, #16]
	str	r2, [r4, #0]
	bic	r3, r3, #2048	
	movs	r1, #0
	str	r1, [r4, #4]
	strh	r3, [r4, #12]
lab327: 	ldr	r1, [r4, #48]	
	str	r6, [r7, #0]
	cmp r1, #0
	beq lab314
	add	r3, r4, #64	
	cmp	r1, r3
	beq	lab321
	mov	r0, r7
push {r1, r2}
	ldr r1, =4317
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab321:	push {r1, r2}
	ldr r1, =4317
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	movs	r0, #0
	str	r0, [r4, #48]	
	nop
	push {r1, r2}
	ldr r1, =437
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab312: 	ldr	r6, [r4, #16]
	cmp r6, #0
	beq lab314
	uxth	r3, r2
	ldr	r5, [r4, #0]
	str	r6, [r4, #0]
	lsls	r2, r3, #30
	ite	eq
	ldreq	r3, [r4, #20]
	movne	r3, #0
	subs	r5, r5, r6
	str	r3, [r4, #8]
	b	lab322
lab324: 	ldr	ip, [r4, #36]	
	ldr	r1, [r4, #28]
	mov	r3, r5
	mov	r2, r6
	mov	r0, r7
	blx	ip
	subs	ip, r0, #0
	sub	r5, r5, ip
	add	r6, ip
	ble	lab323
lab322: 	cmp	r5, #0
	bgt	lab324
lab314: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =5104
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab313: 	ldr	r3, [r4, #60]	
	cmp	r3, #0
	bgt	lab325
	b	lab314
lab315: 	ldr	r0, [r4, #80]	
	b	lab326
lab318: 	ldrsh	r3, [r4, #12]
	ldr	r2, [r4, #16]
	str	r2, [r4, #0]
	bic	r3, r3, #2048	
	strh	r3, [r4, #12]
	movs	r2, #0
	lsls	r3, r3, #19
	str	r2, [r4, #4]
	bpl	lab327
	str	r0, [r4, #80]	
	b	lab327
lab323: 	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =4152
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab316: 	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	lab328
	cmp	r3, #29
	beq	lab329
	cmp	r3, #22
	beq	lab329
lab320: 	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =4722
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab329: 	str	r6, [r7, #0]
	b	lab314
	nop
_fflush_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	cmp r0, #0
	beq lab330
	ldr	r3, [r0, #56]	
	cmp r3, #0
	beq lab331
lab330: 	ldrsh	r0, [r4, #12]
	cmp r0, #0
	beq lab332
lab337: 	ldr	r3, [r4, #100]	
	lsls	r3, r3, #31
	bmi	lab333
	lsls	r1, r0, #22
	bpl	lab334
lab333: 	mov	r0, r5
	mov	r1, r4
push {r1, r2}
	ldr r1, =3868
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =3868
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab335
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab336
lab335: 	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =6641
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab331: 	bl	__sinit
	ldrsh	r0, [r4, #12]
	cmp	r0, #0
	bne	lab337
lab332: 	mov	r5, r0
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =2963
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab334: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	b	lab333
lab336: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =1430
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	nop
fflush:
	push	{r3, r4, r5, lr}
	cmp r0, #0
	beq lab338
	ldr	r3, =0x2000020c	
	ldr	r5, [r3, #0]
	mov	r4, r0
	cmp r5, #0
	beq lab339
	ldr	r3, [r5, #56]	
	cmp r3, #0
	beq lab340
lab339: 	ldrsh	r0, [r4, #12]
	cmp r0, #0
	beq lab341
	ldr	r3, [r4, #100]	
	lsls	r3, r3, #31
	bmi	lab342
	lsls	r1, r0, #22
	bpl	lab343
lab342: 	mov	r0, r5
	mov	r1, r4
push {r1, r2}
	ldr r1, =7338
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =7338
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab344
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab345
lab344: 	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab341: 	mov	r5, r0
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab340: 	mov	r0, r5
	bl	__sinit
	b	lab339
lab343: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	b	lab342
lab345: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	b	lab344
lab338: 	ldr	r3, =0x200000a0	
	ldr	r1, =0x80021dd	
	ldr	r0, [r3, #0]
	ldmia	sp!, {r3, r4, r5, lr}
	b	_fwalk_reent
	nop
	.ltorg
_cleanup_r:
	ldr	r1, =0x8003f55	
	b	_fwalk_reent
	nop
	.ltorg
__fp_lock:
	push	{r3, lr}
	ldr	r3, [r0, #100]	
	lsls	r2, r3, #31
	bmi	lab346
	ldrh	r3, [r0, #12]
	lsls	r3, r3, #22
	bpl	lab347
lab346: 	movs	r0, #0
	pop	{r3, pc}
lab347: 	ldr	r0, [r0, #88]	
	bl	__retarget_lock_acquire_recursive
	movs	r0, #0
	pop	{r3, pc}
__fp_unlock:
	push	{r3, lr}
	ldr	r3, [r0, #100]	
	lsls	r2, r3, #31
	bmi	lab348
	ldrh	r3, [r0, #12]
	lsls	r3, r3, #22
	bpl	lab349
lab348: 	movs	r0, #0
	pop	{r3, pc}
lab349: 	ldr	r0, [r0, #88]	
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
	ldr r1, =7503
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =7503
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	cmp r0, #0
	beq lab350
	movs	r1, #0
	adds	r0, #12
	strd	r1, r6, [r4]
	str	r0, [r4, #8]
	add	r2, r5, #104	
push {r1, r2}
	ldr r1, =5640
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
lab350:	push {r1, r2}
	ldr r1, =5640
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r4
	pop	{r4, r5, r6, pc}
	nop
_cleanup:
	ldr	r3, =0x200000a0	
	ldr	r1, =0x8003f55	
	ldr	r0, [r3, #0]
	b	_fwalk_reent
	nop
	.ltorg
__sinit:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	sl, r0
	ldr	r0, =0x20002f08	
	bl	__retarget_lock_acquire_recursive
	ldr	r4, [sl, #56]	
	cmp	r4, #0
	bne	lab351
	ldr	r5, [sl, #4]
	ldr	r2, =0x80022ad	
	str	r2, [sl, #60]	
	movs	r3, #3
	strd	r4, r3, [sl, #736]	
	ldr	r9, =0x8003c8d	
	ldr	r8, =0x8003cb5	
	ldr	r7, =0x8003cf5	
	ldr	r6, =0x8003d15	
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
	ldr r1, =2252
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =2252
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
	ldr r1, =7127
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =7127
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
	ldr r1, =7784
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =7784
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
	ldr	r0, =0x20002f08	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	b	__retarget_lock_release_recursive
lab351: 	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r0, =0x20002f08	
	b	__retarget_lock_release_recursive
	.ltorg
__sfp:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r7, r0
	ldr	r0, =0x20002f04	
	bl	__retarget_lock_acquire_recursive
	ldr	r3, =0x200000a0	
	ldr	r6, [r3, #0]
	ldr	r3, [r6, #56]	
	cmp r3, #0
	beq lab352
lab358: 	add	r6, r6, #736	
	mov	r8, #4
lab357: 	ldrd	r3, r4, [r6, #4]
	subs	r3, #1
	bpl	lab353
	b	lab354
lab355: 	adds	r2, r3, #1
	add	r4, r4, #104	
	beq	lab354
lab353: 	ldrsh	r5, [r4, #12]
	subs	r3, #1
	cmp	r5, #0
	bne	lab355
	ldr	r3, =0xffff0001	
	str	r3, [r4, #12]
	add	r0, r4, #88	
	str	r5, [r4, #100]	
	bl	__retarget_lock_init_recursive
	ldr	r0, =0x20002f04	
	bl	__retarget_lock_release_recursive
	strd	r5, r5, [r4, #4]
	strd	r5, r5, [r4, #16]
	str	r5, [r4, #0]
	str	r5, [r4, #24]
	movs	r2, #8
	mov	r1, r5
	add	r0, r4, #92	
push {r1, r2}
	ldr r1, =2499
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =2499
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	r5, r5, [r4, #48]	
	strd	r5, r5, [r4, #68]	
lab360: 	mov	r0, r4
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab354: 	ldr	r5, [r6, #0]
	cmp r5, #0
	beq lab356
	mov	r6, r5
	b	lab357
lab352: 	mov	r0, r6
	bl	__sinit
	b	lab358
lab356: 	mov	r1, #428	
	mov	r0, r7
push {r1, r2}
	ldr r1, =7715
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =7715
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	cmp r0, #0
	beq lab359
	str	r5, [r0, #0]
	str	r8, [r0, #4]
	adds	r0, #12
	mov	r1, r5
	str	r0, [r4, #8]
	mov	r5, r4
	mov	r2, #416	
push {r1, r2}
	ldr r1, =2594
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =2594
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r4, [r6, #0]
	mov	r6, r5
	b	lab357
lab359: 	ldr	r0, =0x20002f04	
	str	r4, [r6, #0]
	bl	__retarget_lock_release_recursive
	movs	r3, #12
	str	r3, [r7, #0]
	b	lab360
	nop
	.ltorg
__sfp_lock_acquire:
	ldr	r0, =0x20002f04	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__sfp_lock_release:
	ldr	r0, =0x20002f04	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
__sinit_lock_acquire:
	ldr	r0, =0x20002f08	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__sinit_lock_release:
	ldr	r0, =0x20002f08	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
__fp_lock_all:
	push	{r3, lr}
	ldr	r0, =0x20002f04	
	bl	__retarget_lock_acquire_recursive
	ldr	r3, =0x2000020c	
	ldr	r1, =0x80022b9	
	ldr	r0, [r3, #0]
	ldmia	sp!, {r3, lr}
	b	_fwalk
	nop
	.ltorg
__fp_unlock_all:
	push	{r3, lr}
	ldr	r3, =0x2000020c	
	ldr	r1, =0x80022d5	
	ldr	r0, [r3, #0]
	bl	_fwalk
	push {r1, r2}
	ldr r1, =4610
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldmia	sp!, {r3, lr}
	ldr	r0, =0x20002f04	
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
	bne	lab361
	add	r3, r8, #4294967295	
	cmp	r3, #254	
	bls	lab362
lab361: 	mov	r2, r8
	add	r3, r4, #92	
	add	r1, sp, #4
	mov	r0, r7
	bl	_wcrtomb_r
	push {r1, r2}
	ldr r1, =6191
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r2, r0, #1
	mov	r6, r0
	beq	lab363
	cmp r0, #0
	beq lab364
	ldrb	ip, [sp, #4]
lab369: 	add	r9, sp, #5
	movs	r5, #0
	b	lab365
lab366: 	ldr	r3, [r4, #0]
	adds	r2, r3, #1
	str	r2, [r4, #0]
	strb	ip, [r3]
lab368: 	adds	r5, #1
	cmp	r5, r6
	bcs	lab364
	ldrb	ip, [r9], #1
lab365: 	ldr	r3, [r4, #8]
	subs	r3, #1
	cmp	r3, #0
	str	r3, [r4, #8]
	bge	lab366
	ldr	lr, [r4, #24]
	cmp	r3, lr
	mov	r1, ip
	mov	r2, r4
	mov	r0, r7
	blt	lab367
	cmp	ip, #10
	bne	lab366
lab367: 	bl	__swbuf_r
	push {r1, r2}
	ldr r1, =2673
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	bne	lab368
	mov	r6, r0
	mov	r0, r6
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =27
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab364: 	mov	r6, r8
	mov	r0, r6
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =6317
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab362: 	uxtb	ip, r8
	strb	ip, [sp, #4]
	mov	r6, r0
	b	lab369
lab363: 	ldrh	r3, [r4, #12]
	mov	r0, r6
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =1297
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
	bne	lab370
	lsls	r0, r3, #22
	bpl	lab371
lab370: 	lsls	r0, r2, #18
	bmi	lab372
	ldr	r2, [r4, #100]	
	orr	r3, r3, #8192	
	orr	r2, r2, #8192	
	strh	r3, [r4, #12]
	str	r2, [r4, #100]	
lab372: 	mov	r2, r4
	mov	r0, r5
push {r1, r2}
	ldr r1, =4117
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__fputwc
	push {r1, r2}
	ldr r1, =4117
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab373
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab374
lab373: 	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =2028
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab374: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =609
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab371: 	ldr	r0, [r4, #88]	
	str	r1, [sp, #4]
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	ldr	r1, [sp, #4]
	uxth	r2, r3
	b	lab370
	nop
fputwc:
	ldr	r3, =0x2000020c	
	push	{r4, r5, r6, lr}
	ldr	r6, [r3, #0]
	mov	r5, r0
	mov	r4, r1
	cmp r6, #0
	beq lab375
	ldr	r3, [r6, #56]	
	cmp r3, #0
	beq lab376
lab375: 	ldr	r3, [r4, #100]	
	tst	r3, #1
	ldrsh	r3, [r4, #12]
	uxth	r2, r3
	bne	lab377
	lsls	r0, r3, #22
	bpl	lab378
lab377: 	lsls	r1, r2, #18
	bmi	lab379
	ldr	r2, [r4, #100]	
	orr	r3, r3, #8192	
	orr	r2, r2, #8192	
	strh	r3, [r4, #12]
	str	r2, [r4, #100]	
lab379: 	mov	r2, r4
	mov	r1, r5
	mov	r0, r6
push {r1, r2}
	ldr r1, =7040
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__fputwc
	push {r1, r2}
	ldr r1, =7040
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab380
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab381
lab380: 	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab376: 	mov	r0, r6
	bl	__sinit
	b	lab375
lab381: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab378: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	uxth	r2, r3
	b	lab377
	.ltorg
_malloc_trim_r:
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r7, =0x200007a4	
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
	blt	lab382
	movs	r1, #0
	mov	r0, r6
push {r1, r2}
	ldr r1, =185
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =185
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r7, #8]
	add	r3, r5
	cmp	r0, r3
	beq	lab383
lab382: 	mov	r0, r6
	bl	__malloc_unlock
	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =515
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab383: 	negs	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =6078
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =6078
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r0, #1
	beq	lab384
	ldr	r2, =0x20002f10	
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
	ldr r1, =4228
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab384: 	movs	r1, #0
	mov	r0, r6
push {r1, r2}
	ldr r1, =6465
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =6465
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r2, [r7, #8]
	subs	r3, r0, r2
	cmp	r3, #15
	ble	lab382
	orr	r3, r3, #1
	str	r3, [r2, #4]
	ldr	r3, =0x20000bac	
	ldr	r1, =0x20002f10	
	ldr	r3, [r3, #0]
	subs	r0, r0, r3
	str	r0, [r1, #0]
	b	lab382
	nop
	.ltorg
_free_r:
	cmp	r1, #0
	beq	lab385
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r6, r0
	bl	__malloc_lock
	ldr	r2, [r4, #-4]
	ldr	r7, =0x200007a4	
	sub	r5, r4, #8
	bic	r1, r2, #1
	add	ip, r5, r1
	ldr	r0, [r7, #8]
	ldr	r3, [ip, #4]
	cmp	r0, ip
	bic	r3, r3, #3
	beq	lab386
	lsls	r2, r2, #31
	str	r3, [ip, #4]
	bmi	lab387
	ldr	r2, [r4, #-8]
	subs	r5, r5, r2
	add	r1, r2
	ldr	r2, [r5, #8]
	add	r0, r7, #8
	cmp	r2, r0
	beq	lab388
	add	r4, ip, r3
	ldr	lr, [r4, #4]
	ldr	r4, [r5, #12]
	str	r4, [r2, #12]
	tst	lr, #1
	str	r2, [r4, #8]
	beq	lab389
	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [ip]
lab393: 	cmp	r1, #512	
	bcs	lab390
lab394: 	ldr	r2, [r7, #4]
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
lab401: 	mov	r0, r6
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	__malloc_unlock
lab387: 	add	r2, ip, r3
	ldr	r2, [r2, #4]
	lsls	r0, r2, #31
	bmi	lab391
	add	r1, r3
	add	r0, r7, #8
lab405: 	ldr	r3, [ip, #8]
	cmp	r3, r0
	beq	lab392
	ldr	r2, [ip, #12]
	str	r2, [r3, #12]
	str	r3, [r2, #8]
	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [r5, r1]
	b	lab393
lab385:	nop
	push {r1, r2}
	ldr r1, =830
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	bx	lr
lab391: 	orr	r3, r1, #1
	cmp	r1, #512	
	str	r3, [r4, #-4]
	str	r1, [ip]
	bcc	lab394
lab390: 	cmp	r1, #2560	
	mov	r3, r1, lsr #9
	bcs	lab395
	lsrs	r3, r1, #6
	add	r0, r3, #57	
	add	r2, r3, #56	
	lsls	r3, r0, #3
lab404: 	adds	r0, r7, r3
	ldr	r3, [r7, r3]
	subs	r0, #8
	cmp	r0, r3
	beq	lab396
lab398: 	ldr	r2, [r3, #4]
	bic	r2, r2, #3
	cmp	r2, r1
	bls	lab397
	ldr	r3, [r3, #8]
	cmp	r0, r3
	bne	lab398
lab397: 	ldr	r0, [r3, #12]
lab406: 	strd	r3, r0, [r5, #8]
	str	r5, [r0, #8]
	str	r5, [r3, #12]
	mov	r0, r6
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	__malloc_unlock
lab388: 	add	r2, ip, r3
	ldr	r2, [r2, #4]
	lsls	r2, r2, #31
	bmi	lab399
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
lab386: 	add	r3, r1
	lsls	r1, r2, #31
	bmi	lab400
	ldr	r2, [r4, #-8]
	subs	r5, r5, r2
	add	r3, r2
	ldrd	r1, r2, [r5, #8]
	str	r2, [r1, #12]
	str	r1, [r2, #8]
lab400: 	orr	r2, r3, #1
	str	r2, [r5, #4]
	ldr	r2, =0x20000bb0	
	str	r5, [r7, #8]
	ldr	r2, [r2, #0]
	cmp	r2, r3
	bhi	lab401
	ldr	r3, =0x20002f40	
	mov	r0, r6
	ldr	r1, [r3, #0]
	bl	_malloc_trim_r
	push {r1, r2}
	ldr r1, =4823
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab401
lab395: 	cmp	r3, #20
	bls	lab402
	cmp	r3, #84	
	bhi	lab403
	lsrs	r3, r1, #12
	add	r0, r3, #111	
	add	r2, r3, #110	
	lsls	r3, r0, #3
	b	lab404
lab389: 	add	r1, r3
	b	lab405
lab402: 	add	r0, r3, #92	
	add	r2, r3, #91	
	lsls	r3, r0, #3
	b	lab404
lab392: 	orr	r3, r1, #1
	strd	r5, r5, [r7, #16]
	strd	r0, r0, [r5, #8]
	str	r3, [r5, #4]
	str	r1, [r5, r1]
	b	lab401
lab396: 	ldr	r1, [r7, #4]
	asrs	r2, r2, #2
	movs	r4, #1
	lsl	r2, r4, r2
	orrs	r2, r1
	str	r2, [r7, #4]
	b	lab406
lab403: 	cmp	r3, #340	
	bhi	lab407
	lsrs	r3, r1, #15
	add	r0, r3, #120	
	add	r2, r3, #119	
	lsls	r3, r0, #3
	b	lab404
lab407: 	movw	r2, #1364	
	cmp	r3, r2
	bhi	lab408
	lsrs	r3, r1, #18
	add	r0, r3, #125	
	add	r2, r3, #124	
	lsls	r3, r0, #3
	b	lab404
lab408: 	mov	r3, #1016	
	movs	r2, #126	
	b	lab404
lab399: 	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [ip]
	b	lab401
	nop
	.ltorg
__sfvwrite_r:
	ldr	r3, [r2, #8]
	cmp	r3, #0
	beq	lab409
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrsh	r3, [r1, #12]
	mov	r4, r1
	lsls	r1, r3, #28
	mov	r8, r0
	sub	sp, #12
	mov	r7, r2
	uxth	r0, r3
	bpl	lab410
	ldr	r3, [r4, #16]
	cmp r3, #0
	beq lab410
	ands	r3, r0, #2
	ldr	r5, [r7, #0]
	beq	lab411
lab416: 	mov	sl, #0
	ldr	fp, =0x7ffffc00	
	mov	r6, sl
lab414: 	cmp	r6, fp
	mov	r3, r6
	mov	r2, sl
	it	cs
	movcs	r3, fp
	mov	r0, r8
	cmp	r6, #0
	beq	lab412
	ldr	r1, [r4, #28]
	ldr	ip, [r4, #36]	
	blx	ip
	cmp	r0, #0
	ble	lab413
	ldr	r3, [r7, #8]
	subs	r3, r3, r0
	add	sl, r0
	subs	r6, r6, r0
	str	r3, [r7, #8]
	cmp	r3, #0
	bne	lab414
lab422: 	movs	r0, #0
lab446: 	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =2657
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab410: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =6175
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =6175
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab415
	ldrsh	r3, [r4, #12]
	ldr	r5, [r7, #0]
	uxth	r0, r3
	ands	r3, r0, #2
	bne	lab416
lab411: 	ands	r9, r0, #1
	bne	lab417
	mov	r6, r9
lab424: 	cmp r6, #0
	beq lab418
lab423: 	lsls	r2, r0, #22
	ldr	fp, [r4, #8]
	bpl	lab419
	cmp	fp, r6
	mov	r2, fp
	bhi	lab420
	tst	r0, #1152	
	bne	lab421
	ldr	r0, [r4, #0]
lab439: 	str	r2, [sp, #4]
	mov	r1, r9
push {r1, r2}
	ldr r1, =168
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =168
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
lab437: 	ldr	r0, [r7, #8]
	sub	r0, r0, sl
	add	r9, sl
	str	r0, [r7, #8]
	cmp	r0, #0
	beq	lab422
	ldrsh	r0, [r4, #12]
	uxth	r0, r0
	cmp	r6, #0
	bne	lab423
lab418: 	ldrd	r9, r6, [r5]
	adds	r5, #8
	b	lab424
lab412: 	ldrd	sl, r6, [r5]
	adds	r5, #8
	b	lab414
lab431: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =6917
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =6917
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	beq lab425
lab413: 	ldrsh	r3, [r4, #12]
lab444: 	orr	r3, r3, #64	
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =2622
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab409: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =8183
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
lab417: 	mov	r6, r3
	mov	sl, r5
	mov	r9, r3
	mov	r0, r3
	mov	r5, r3
	cmp r6, #0
	beq lab426
lab432: 	cmp r0, #0
	beq lab427
lab435: 	mov	r2, r9
lab445: 	ldrd	r1, r3, [r4, #16]
	ldr	r0, [r4, #0]
	cmp	r2, r6
	it	cs
	movcs	r2, r6
	cmp	r0, r1
	bls	lab428
	ldr	r1, [r4, #8]
	add	fp, r3, r1
	cmp	r2, fp
	bgt	lab429
lab428: 	cmp	r3, r2
	bgt	lab430
	ldr	r1, [r4, #28]
	ldr	ip, [r4, #36]	
	mov	r2, r5
	mov	r0, r8
	blx	ip
	subs	fp, r0, #0
	ble	lab413
lab440: 	subs	r9, r9, fp
	beq	lab431
	movs	r0, #1
lab425: 	ldr	r3, [r7, #8]
	sub	r3, r3, fp
	add	r5, fp
	sub	r6, r6, fp
	str	r3, [r7, #8]
	cmp	r3, #0
	beq	lab422
	cmp	r6, #0
	bne	lab432
lab426: 	add	r3, sl, #8
lab433: 	ldrd	r5, r6, [r3, #-8]
	mov	sl, r3
	adds	r3, #8
	cmp	r6, #0
	beq	lab433
lab427: 	mov	r2, r6
	movs	r1, #10
	mov	r0, r5
	bl	memchr
	cmp	r0, #0
	beq	lab434
	adds	r0, #1
	sub	r9, r0, r5
	b	lab435
lab419: 	ldr	r0, [r4, #0]
	ldr	r3, [r4, #16]
	cmp	r0, r3
	bhi	lab436
	ldr	r3, [r4, #20]
	cmp	r3, r6
	bhi	lab436
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
	ble	lab413
lab438: 	sub	r6, r6, sl
	b	lab437
lab436: 	cmp	fp, r6
	mov	sl, fp
	it	cs
	movcs	sl, r6
	mov	r2, sl
	mov	r1, r9
push {r1, r2}
	ldr r1, =901
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =901
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
	bne	lab438
	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =2875
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =2875
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab438
	b	lab413
lab420: 	ldr	r0, [r4, #0]
	mov	fp, r6
	mov	r2, r6
	b	lab439
lab430: 	mov	r1, r5
	str	r2, [sp, #4]
push {r1, r2}
	ldr r1, =3350
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3350
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
	b	lab440
lab421: 	ldr	r3, [r4, #0]
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
	bpl	lab441
	mov	r1, r2
	mov	r0, r8
push {r1, r2}
	ldr r1, =2347
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =2347
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab442
	mov	r2, fp
	ldr	r1, [r4, #16]
	str	r0, [sp, #4]
	bl	memcpy
	ldrh	r2, [r4, #12]
	ldr	r3, [sp, #4]
	bic	r2, r2, #1152	
	orr	r2, r2, #128	
	strh	r2, [r4, #12]
lab443: 	add	r0, r3, fp
	str	r3, [r4, #16]
	sub	r3, sl, fp
	str	sl, [r4, #20]
	str	r3, [r4, #8]
	str	r0, [r4, #0]
	mov	fp, r6
	mov	r2, r6
	b	lab439
lab429: 	mov	r1, r5
	mov	r2, fp
push {r1, r2}
	ldr r1, =3951
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3951
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
	ldr r1, =7554
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =7554
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab440
	b	lab413
lab441: 	mov	r0, r8
push {r1, r2}
	ldr r1, =3514
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_realloc_r
	push {r1, r2}
	ldr r1, =3514
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r0
	cmp	r0, #0
	bne	lab443
	ldr	r1, [r4, #16]
	mov	r0, r8
push {r1, r2}
	ldr r1, =3463
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =3463
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	movs	r2, #12
	bic	r3, r3, #128	
	str	r2, [r8]
	b	lab444
lab434: 	adds	r2, r6, #1
	mov	r9, r2
	b	lab445
lab442: 	movs	r2, #12
	ldrsh	r3, [r4, #12]
	str	r2, [r8]
	b	lab444
lab415: 	mov	r0, #4294967295	
	b	lab446
	nop
	.ltorg
_fwalk:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r8, r1
	add	r7, r0, #736	
	movs	r6, #0
lab450: 	ldrd	r5, r4, [r7, #4]
	subs	r5, #1
	bmi	lab447
lab449: 	ldrh	r3, [r4, #12]
	cmp	r3, #1
	add	r5, r5, #4294967295	
	bls	lab448
	ldrsh	r3, [r4, #14]
	adds	r3, #1
	mov	r0, r4
	beq	lab448
	blx	r8
	orrs	r6, r0
lab448: 	adds	r3, r5, #1
	add	r4, r4, #104	
	bne	lab449
lab447: 	ldr	r7, [r7, #0]
	cmp	r7, #0
	bne	lab450
	mov	r0, r6
	nop
	push {r1, r2}
	ldr r1, =6224
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
lab454: 	ldrd	r5, r4, [r6, #4]
	subs	r5, #1
	bmi	lab451
lab453: 	ldrh	r3, [r4, #12]
	cmp	r3, #1
	add	r5, r5, #4294967295	
	bls	lab452
	ldrsh	r3, [r4, #14]
	adds	r3, #1
	mov	r1, r4
	beq	lab452
	mov	r0, r7
	blx	r8
	orr	r9, r9, r0
lab452: 	adds	r3, r5, #1
	add	r4, r4, #104	
	bne	lab453
lab451: 	ldr	r6, [r6, #0]
	cmp	r6, #0
	bne	lab454
	mov	r0, r9
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_setlocale_r:
	cmp r2, #0
	beq lab455
	push	{r4, lr}
	ldr	r1, =0x200000f8	
	mov	r0, r2
	mov	r4, r2
	bl	strcmp
	cmp r0, #0
	bne lab456
lab457: 	ldr	r0, =0x200000f4	
	pop	{r4, pc}
lab455: 	ldr	r0, =0x200000f4	
	bx	lr
lab456: 	ldr	r1, =0x200000f4	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab457
	ldr	r1, =0x2000006c	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab457
	movs	r0, #0
	pop	{r4, pc}
	.ltorg
__locale_mb_cur_max:
	ldr	r3, =0x20000638	
	ldrb	r0, [r3, #296]	
	bx	lr
	.ltorg
setlocale:
	cmp r1, #0
	beq lab458
	push	{r4, lr}
	mov	r4, r1
	mov	r0, r4
	ldr	r1, =0x200000f8	
	bl	strcmp
	cmp r0, #0
	bne lab459
lab460: 	ldr	r0, =0x200000f4	
	pop	{r4, pc}
lab458: 	ldr	r0, =0x200000f4	
	bx	lr
lab459: 	ldr	r1, =0x200000f4	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab460
	ldr	r1, =0x2000006c	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab460
	movs	r0, #0
	pop	{r4, pc}
	.ltorg
__localeconv_l:
	adds	r0, #240	
	bx	lr
_localeconv_r:
	ldr	r0, =0x20000728	
	bx	lr
	.ltorg
localeconv:
	ldr	r0, =0x20000728	
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
	bpl	lab461
	add	r3, r4, #67	
	movs	r2, #1
	strd	r3, r2, [r4, #16]
	str	r3, [r4, #0]
lab468: 	add	sp, #88	
	nop
	push {r1, r2}
	ldr r1, =6012
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab461: 	ldrsh	r1, [r4, #14]
	cmp	r1, #0
	mov	r6, r0
	blt	lab462
	mov	r2, sp
push {r1, r2}
	ldr r1, =4034
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fstat_r
	push {r1, r2}
	ldr r1, =4034
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab463
	ldr	r5, [sp, #4]
	and	r5, r5, #61440	
	sub	r5, r5, #8192	
	clz	r5, r5
	mov	r8, #1024	
	lsrs	r5, r5, #5
	mov	r7, #2048	
lab469: 	mov	r1, r8
	mov	r0, r6
push {r1, r2}
	ldr r1, =1092
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1092
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	cmp r0, #0
	beq lab464
lab467: 	ldr	r2, =0x80022ad	
	str	r2, [r6, #60]	
	orr	r3, r3, #128	
	str	r8, [r4, #20]
	strh	r3, [r4, #12]
	str	r0, [r4, #0]
	str	r0, [r4, #16]
	cmp r5, #0
	bne lab465
lab471: 	orrs	r3, r7
	strh	r3, [r4, #12]
	add	sp, #88	
	nop
	push {r1, r2}
	ldr r1, =3777
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab463: 	ldrh	r3, [r4, #12]
lab462: 	ands	r5, r3, #128	
	beq	lab466
	mov	r8, #64	
	mov	r1, r8
	mov	r0, r6
push {r1, r2}
	ldr r1, =8115
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =8115
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r5, #0
	ldrsh	r3, [r4, #12]
	mov	r7, r5
	cmp	r0, #0
	bne	lab467
lab464: 	lsls	r2, r3, #22
	bmi	lab468
	bic	r3, r3, #3
	add	r2, r4, #67	
	orr	r3, r3, #2
	movs	r1, #1
	strd	r2, r1, [r4, #16]
	strh	r3, [r4, #12]
	str	r2, [r4, #0]
	b	lab468
lab466: 	mov	r8, #1024	
	mov	r7, r5
	b	lab469
lab465: 	ldrsh	r1, [r4, #14]
	mov	r0, r6
	bl	_isatty_r
	push {r1, r2}
	ldr r1, =1236
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab470
	ldrsh	r3, [r4, #12]
	b	lab471
lab470: 	ldrh	r3, [r4, #12]
	bic	r3, r3, #3
	orr	r3, r3, #1
	sxth	r3, r3
	b	lab471
	.ltorg
__swhatbuf_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldrsh	r1, [r1, #14]
	cmp	r1, #0
	sub	sp, #88	
	mov	r5, r2
	mov	r6, r3
	blt	lab472
	mov	r2, sp
push {r1, r2}
	ldr r1, =6569
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fstat_r
	push {r1, r2}
	ldr r1, =6569
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab472
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
lab472: 	ldrsh	r1, [r4, #12]
	movs	r3, #0
	ands	r0, r1, #128	
	str	r3, [r6, #0]
	beq	lab473
	movs	r2, #64	
	mov	r0, r3
	str	r2, [r5, #0]
	add	sp, #88	
	pop	{r4, r5, r6, pc}
lab473: 	mov	r3, #1024	
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
	bhi	lab474
	cmp	r1, #16
	bhi	lab475
	bl	__malloc_lock
	movs	r6, #16
	movs	r2, #24
	movs	r0, #2
lab523: 	ldr	r7, =0x200007a4	
	add	r2, r7
	sub	r1, r2, #8
	ldr	r3, [r2, #4]
	cmp	r3, r1
	beq	lab476
lab497: 	ldr	r2, [r3, #4]
	ldr	r1, [r3, #12]
	bic	r2, r2, #3
	add	r2, r3
lab512: 	ldr	r5, [r3, #8]
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
	ldr r1, =2987
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab474: 	bics	r6, r6, #7
	bmi	lab475
	cmp	r1, r6
	bhi	lab475
	bl	__malloc_lock
	cmp	r6, #504	
	bcc	lab477
	lsrs	r3, r6, #9
	beq	lab478
	cmp	r3, #4
	bhi	lab479
	lsrs	r3, r6, #6
	add	r0, r3, #57	
	add	ip, r3, #56	
	lsls	r3, r0, #3
lab496: 	ldr	r7, =0x200007a4	
	add	r3, r7
	sub	r5, r3, #8
	ldr	r3, [r3, #4]
	cmp	r5, r3
	bne	lab480
	b	lab481
lab483: 	cmp	r1, #0
	bge	lab482
	ldr	r3, [r3, #12]
	cmp	r5, r3
	beq	lab481
lab480: 	ldr	r2, [r3, #4]
	bic	r2, r2, #3
	subs	r1, r2, r6
	cmp	r1, #15
	ble	lab483
	mov	r0, ip
lab481: 	ldr	r5, [r7, #16]
	ldr	ip, =0x200007ac	
	cmp	r5, ip
	beq	lab484
lab498: 	ldr	r2, [r5, #4]
	bic	r2, r2, #3
	subs	r3, r2, r6
	cmp	r3, #15
	bgt	lab485
	cmp	r3, #0
	strd	ip, ip, [r7, #16]
	bge	lab486
	cmp	r2, #512	
	bcs	lab487
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
lab518: 	asrs	r3, r0, #2
	movs	r1, #1
	lsls	r1, r3
	cmp	r1, r2
	bhi	lab488
lab499: 	tst	r1, r2
	bne	lab489
	bic	r0, r0, #3
lab490: 	lsls	r1, r1, #1
	tst	r1, r2
	add	r0, r0, #4
	beq	lab490
lab489: 	add	r9, r7, r0, lsl #3
	mov	r5, r9
	mov	lr, r0
lab521: 	ldr	r8, [r5, #12]
	cmp	r5, r8
	bne	lab491
	b	lab492
lab494: 	cmp	r3, #0
	bge	lab493
	ldr	r8, [r8, #12]
	cmp	r5, r8
	beq	lab492
lab491: 	ldr	r2, [r8, #4]
	bic	r2, r2, #3
	subs	r3, r2, r6
	cmp	r3, #15
	ble	lab494
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
	b	lab495
lab475: 	movs	r3, #12
	str	r3, [r4, #0]
	movs	r5, #0
lab495: 	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =7619
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab478: 	mov	r3, #512	
	movs	r0, #64	
	mov	ip, #63	
	b	lab496
lab476: 	ldr	r3, [r2, #12]
	cmp	r2, r3
	it	eq
	addeq	r0, #2
	bne	lab497
	ldr	r5, [r7, #16]
	ldr	ip, =0x200007ac	
	cmp	r5, ip
	bne	lab498
lab484: 	ldr	r2, [r7, #4]
	asrs	r3, r0, #2
	movs	r1, #1
	lsls	r1, r3
	cmp	r1, r2
	bls	lab499
lab488: 	ldr	r5, [r7, #8]
	ldr	r3, [r5, #4]
	bic	r9, r3, #3
	cmp	r6, r9
	bhi	lab500
	sub	r3, r9, r6
	cmp	r3, #15
	bgt	lab501
lab500: 	ldr	fp, =0x20000bac	
	ldr	r3, =0x20002f40	
	ldr	r2, [fp]
	ldr	r3, [r3, #0]
	adds	r2, #1
	add	r3, r6
	add	sl, r5, r9
	beq	lab502
	add	r3, r3, #4096	
	adds	r3, #15
	bic	r8, r3, #4080	
	bic	r8, r8, #15
lab531: 	mov	r1, r8
	mov	r0, r4
push {r1, r2}
	ldr r1, =6852
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =6852
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r1, r0, #1
	mov	r2, r0
	beq	lab503
	cmp	sl, r0
	bhi	lab504
	ldr	r3, =0x20002f10	
	ldr	r1, [r3, #0]
	add	r1, r8
	str	r1, [r3, #0]
	mov	r0, r1
	beq	lab505
lab537: 	ldr	r1, [fp]
	str	r3, [sp, #4]
	adds	r1, #1
	ittet	ne
	subne	sl, r2, sl
	addne	r0, sl
	streq	r2, [fp]
	strne	r0, [r3, #0]
	ands	fp, r2, #7
	beq	lab506
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
	ldr r1, =2083
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =2083
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r2, r0, #1
	ldrd	r2, r3, [sp]
	beq	lab507
lab533: 	subs	r0, r0, r2
	add	r8, r0, sl
lab534: 	ldr	r1, [r3, #0]
	str	r2, [r7, #8]
	orr	r0, r8, #1
	add	r1, sl
	cmp	r5, r7
	str	r0, [r2, #4]
	str	r1, [r3, #0]
	beq	lab508
	cmp	r9, #15
	bls	lab509
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
	bhi	lab510
	ldr	r0, [r2, #4]
	mov	r5, r2
lab538: 	ldr	r3, =0x20002f38	
	ldr	r2, [r3, #0]
	cmp	r2, r1
	it	cc
	strcc	r1, [r3, #0]
	ldr	r3, =0x20002f3c	
	ldr	r2, [r3, #0]
	cmp	r2, r1
	it	cc
	strcc	r1, [r3, #0]
	b	lab511
lab501: 	adds	r2, r5, r6
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
	ldr r1, =6630
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab482: 	ldr	r1, [r3, #12]
	add	r2, r3
	b	lab512
	nop
	.ltorg
lab487: 	cmp	r2, #2560	
	mov	r3, r2, lsr #9
	bcc	lab513
	cmp	r3, #20
	bhi	lab514
	add	r1, r3, #92	
	lsls	r1, r1, #3
	adds	r3, #91	
lab524: 	add	lr, r7, r1
	ldr	r1, [r7, r1]
	sub	lr, lr, #8
	cmp	lr, r1
	beq	lab515
lab517: 	ldr	r3, [r1, #4]
	bic	r3, r3, #3
	cmp	r3, r2
	bls	lab516
	ldr	r1, [r1, #8]
	cmp	lr, r1
	bne	lab517
lab516: 	ldr	lr, [r1, #12]
	ldr	r2, [r7, #4]
lab532: 	strd	r1, lr, [r5, #8]
	str	r5, [lr, #8]
	str	r5, [r1, #12]
	b	lab518
lab479: 	cmp	r3, #20
	bls	lab519
	cmp	r3, #84	
	bhi	lab520
	lsrs	r3, r6, #12
	add	r0, r3, #111	
	add	ip, r3, #110	
	lsls	r3, r0, #3
	b	lab496
lab492: 	add	lr, lr, #1
	tst	lr, #3
	add	r5, r5, #8
	bne	lab521
	b	lab522
lab493: 	add	r2, r8
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
	b	lab495
lab477: 	lsrs	r0, r6, #3
	add	r2, r6, #8
	b	lab523
lab486: 	add	r2, r5
	mov	r0, r4
	ldr	r3, [r2, #4]
	orr	r3, r3, #1
	str	r3, [r2, #4]
	adds	r5, #8
	bl	__malloc_unlock
	b	lab495
lab485: 	adds	r1, r5, r6
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
	b	lab495
lab513: 	lsrs	r3, r2, #6
	add	r1, r3, #57	
	lsls	r1, r1, #3
	adds	r3, #56	
	b	lab524
lab504: 	cmp	r5, r7
	beq	lab525
lab503: 	ldr	r5, [r7, #8]
	ldr	r0, [r5, #4]
lab511: 	bic	r8, r0, #3
	cmp	r6, r8
	sub	r3, r8, r6
	bhi	lab526
	cmp	r3, #15
	bgt	lab501
lab526: 	mov	r0, r4
	bl	__malloc_unlock
	movs	r5, #0
	b	lab495
lab519: 	add	r0, r3, #92	
	add	ip, r3, #91	
	lsls	r3, r0, #3
	b	lab496
lab528: 	ldr	r3, [r9], #-8
	cmp	r3, r9
	bne	lab527
lab522: 	tst	r0, #3
	add	r0, r0, #4294967295	
	bne	lab528
	ldr	r3, [r7, #4]
	bic	r3, r3, r1
	str	r3, [r7, #4]
lab542: 	lsls	r1, r1, #1
	cmp	r1, r3
	bhi	lab488
	cmp r1, #0
	bne lab529
	b	lab488
lab530: 	lsls	r1, r1, #1
	add	lr, lr, #4
lab529: 	tst	r1, r3
	beq	lab530
	mov	r0, lr
	b	lab489
lab502: 	add	r8, r3, #16
	b	lab531
lab515: 	asrs	r2, r3, #2
	mov	r8, #1
	ldr	r3, [r7, #4]
	lsl	r2, r8, r2
	orrs	r2, r3
	str	r2, [r7, #4]
	b	lab532
lab506: 	add	r1, r2, r8
	negs	r1, r1
	ubfx	sl, r1, #0, #12
	mov	r1, sl
	mov	r0, r4
	str	r2, [sp, #0]
push {r1, r2}
	ldr r1, =995
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =995
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	ldrd	r2, r3, [sp]
	bne	lab533
	mov	sl, fp
	b	lab534
lab514: 	cmp	r3, #84	
	bhi	lab535
	lsrs	r3, r2, #12
	add	r1, r3, #111	
	lsls	r1, r1, #3
	adds	r3, #110	
	b	lab524
lab520: 	cmp	r3, #340	
	bhi	lab536
	lsrs	r3, r6, #15
	add	r0, r3, #120	
	add	ip, r3, #119	
	lsls	r3, r0, #3
	b	lab496
lab525: 	ldr	r3, =0x20002f10	
	ldr	r0, [r3, #0]
	add	r0, r8
	str	r0, [r3, #0]
	b	lab537
lab505: 	ubfx	ip, sl, #0, #12
	cmp	ip, #0
	bne	lab537
	ldr	r5, [r7, #8]
	add	r8, r9
	orr	r0, r8, #1
	str	r0, [r5, #4]
	b	lab538
lab508: 	mov	r5, r2
	b	lab538
lab509: 	movs	r3, #1
	str	r3, [r2, #4]
	b	lab526
lab535: 	cmp	r3, #340	
	bhi	lab539
	lsrs	r3, r2, #15
	add	r1, r3, #120	
	lsls	r1, r1, #3
	adds	r3, #119	
	b	lab524
lab536: 	movw	r2, #1364	
	cmp	r3, r2
	bhi	lab540
	lsrs	r3, r6, #18
	add	r0, r3, #125	
	add	ip, r3, #124	
	lsls	r3, r0, #3
	b	lab496
lab507: 	sub	fp, fp, #8
	add	r8, fp
	sub	r8, r8, r2
	mov	sl, #0
	b	lab534
lab510: 	add	r1, r5, #8
	mov	r0, r4
	str	r3, [sp, #0]
push {r1, r2}
	ldr r1, =1225
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =1225
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r5, [r7, #8]
	ldr	r3, [sp, #0]
	ldr	r0, [r5, #4]
	ldr	r1, [r3, #0]
	b	lab538
lab539: 	movw	r1, #1364	
	cmp	r3, r1
	bhi	lab541
	lsrs	r3, r2, #18
	add	r1, r3, #125	
	lsls	r1, r1, #3
	adds	r3, #124	
	b	lab524
lab540: 	mov	r3, #1016	
	movs	r0, #127	
	mov	ip, #126	
	b	lab496
lab541: 	mov	r1, #1016	
	movs	r3, #126	
	b	lab524
lab527: 	ldr	r3, [r7, #4]
	b	lab542
	.ltorg
_mbtowc_r:
	push	{r4}
	ldr	r4, =0x20000638	
	ldr	r4, [r4, #228]	
	mov	ip, r4
	pop	{r4}
	bx	ip
	nop
	.ltorg
__ascii_mbtowc:
	sub	sp, #8
	cmp r1, #0
	beq lab543
	cmp r2, #0
	beq lab544
lab546: 	cmp r3, #0
	beq lab545
	ldrb	r3, [r2, #0]
	str	r3, [r1, #0]
	ldrb	r2, [r2, #0]
	subs	r0, r2, #0
	it	ne
	movne	r0, #1
lab547: 	add	sp, #8
	bx	lr
lab543: 	add	r1, sp, #4
	cmp	r2, #0
	bne	lab546
lab544: 	mov	r0, r2
	add	sp, #8
	bx	lr
lab545: 	mvn	r0, #1
	b	lab547
	nop
memmove:
	cmp	r0, r1
	bls	lab548
	adds	r3, r1, r2
	cmp	r3, r0
	bls	lab548
	add	ip, r0, r2
	cmp r2, #0
	beq lab549
	mov	r2, ip
lab550: 	ldrb	ip, [r3, #-1]!
	strb	ip, [r2, #-1]!
	cmp	r1, r3
	bne	lab550
	nop
	push {r1, r2}
	ldr r1, =5195
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
lab548: 	cmp	r2, #15
	bhi	lab551
	mov	r3, r0
	add	ip, r2, #4294967295	
	cmp r2, #0
	beq lab549
lab559: 	add	ip, ip, #1
	subs	r3, #1
	add	ip, r1
lab552: 	ldrb	r2, [r1], #1
	strb	r2, [r3, #1]!
	cmp	r1, ip
	bne	lab552
lab549:	nop
	push {r1, r2}
	ldr r1, =7484
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	bx	lr
lab551: 	orr	r3, r0, r1
	lsls	r3, r3, #30
	bne	lab553
	sub	r3, r2, #16
	push	{r4, r5, r6, lr}
	add	ip, r1, #32
	bic	r5, r3, #15
	add	lr, r1, #16
	add	r4, r0, #16
	add	ip, r5
	lsrs	r3, r3, #4
lab554: 	ldr	r5, [lr, #-16]
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
	bne	lab554
	adds	r3, #1
	tst	r2, #12
	add	r1, r1, r3, lsl #4
	and	r4, r2, #15
	add	r3, r0, r3, lsl #4
	beq	lab555
	subs	r4, #4
	bic	r6, r4, #3
	mov	ip, r4, lsr #2
	add	r6, r3
	subs	r4, r3, #4
	mov	lr, r1
lab556: 	ldr	r5, [lr], #4
	str	r5, [r4, #4]!
	cmp	r4, r6
	bne	lab556
	add	r4, ip, #1
	and	r2, r2, #3
	add	r3, r3, r4, lsl #2
	add	r1, r1, r4, lsl #2
lab560: 	add	ip, r2, #4294967295	
	cmp r2, #0
	beq lab557
	add	ip, ip, #1
	subs	r3, #1
	add	ip, r1
lab558: 	ldrb	r2, [r1], #1
	strb	r2, [r3, #1]!
	cmp	r1, ip
	bne	lab558
lab557:	nop
	push {r1, r2}
	ldr r1, =7456
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab553: 	add	ip, r2, #4294967295	
	mov	r3, r0
	b	lab559
lab555: 	mov	r2, r4
	b	lab560
__malloc_lock:
	ldr	r0, =0x20002f00	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__malloc_unlock:
	ldr	r0, =0x20002f00	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
_realloc_r:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r7, r2
	cmp	r1, #0
	beq	lab561
	add	r5, r7, #11
	mov	r8, r0
	mov	r4, r1
	bl	__malloc_lock
	cmp	r5, #22
	bhi	lab562
	movs	r5, #16
	mov	r2, r5
lab575: 	cmp	r7, r5
	bhi	lab563
	ldr	r1, [r4, #-4]
	bic	r6, r1, #3
	cmp	r6, r2
	sub	r9, r4, #8
	bge	lab564
	ldr	r3, =0x200007a4	
	ldr	ip, [r3, #8]
	add	r0, r9, r6
	cmp	ip, r0
	beq	lab565
	ldr	ip, [r0, #4]
	bic	r3, ip, #1
	add	r3, r0
	ldr	r3, [r3, #4]
	lsls	r3, r3, #31
	bmi	lab566
	bic	ip, ip, #3
	add	r3, r6, ip
	cmp	r3, r2
	bge	lab567
	lsls	r3, r1, #31
	bmi	lab568
	ldr	r3, [r4, #-8]
	sub	sl, r9, r3
	ldr	r3, [sl, #4]
	bic	r1, r3, #3
	add	ip, r1
	add	ip, r6
	cmp	ip, r2
	bge	lab569
lab577: 	adds	r3, r6, r1
	cmp	r3, r2
	bge	lab570
lab568: 	mov	r1, r7
	mov	r0, r8
push {r1, r2}
	ldr r1, =1960
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1960
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r7, r0
	cmp r0, #0
	beq lab571
	ldr	r3, [r4, #-4]
	bic	r3, r3, #1
	add	r3, r9
	sub	r2, r0, #8
	cmp	r3, r2
	beq	lab572
	subs	r2, r6, #4
	cmp	r2, #36	
	bhi	lab573
	cmp	r2, #19
	bhi	lab574
	mov	r3, r0
	mov	r2, r4
lab585: 	ldr	r1, [r2, #0]
	str	r1, [r3, #0]
	ldr	r1, [r2, #4]
	str	r1, [r3, #4]
	ldr	r2, [r2, #8]
	str	r2, [r3, #8]
lab589: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =1904
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab571:	push {r1, r2}
	ldr r1, =1904
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r8
	bl	__malloc_unlock
	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =4768
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab562: 	bic	r5, r5, #7
	cmp	r5, #0
	mov	r2, r5
	bge	lab575
lab563: 	movs	r3, #12
	str	r3, [r8]
	movs	r7, #0
lab583: 	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =20
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab567: 	mov	r6, r3
	ldrd	r2, r3, [r0, #8]
	str	r3, [r2, #12]
	str	r2, [r3, #8]
lab564: 	subs	r3, r6, r5
	cmp	r3, #15
	bhi	lab576
	ldr	r3, [r9, #4]
	and	r3, r3, #1
	orrs	r3, r6
	add	r6, r9
	str	r3, [r9, #4]
	ldr	r3, [r6, #4]
	orr	r3, r3, #1
	str	r3, [r6, #4]
lab578: 	mov	r0, r8
	mov	r7, r4
	bl	__malloc_unlock
	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =5271
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab566: 	lsls	r1, r1, #31
	bmi	lab568
	ldr	r3, [r4, #-8]
	sub	sl, r9, r3
	ldr	r1, [sl, #4]
	bic	r1, r1, #3
	b	lab577
lab561: 	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r1, r2
	b	_malloc_r
lab576: 	ldr	r1, [r9, #4]
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
	ldr r1, =1924
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =1924
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab578
lab565: 	ldr	r0, [ip, #4]
	bic	fp, r0, #3
	add	ip, r6, fp
	add	r0, r5, #16
	cmp	ip, r0
	bge	lab579
	lsls	r1, r1, #31
	bmi	lab568
	ldr	r1, [r4, #-8]
	sub	sl, r9, r1
	ldr	r1, [sl, #4]
	bic	r1, r1, #3
	add	fp, r1
	add	fp, r6
	cmp	r0, fp
	bgt	lab577
	mov	r7, sl
	ldr	r1, [sl, #12]
	ldr	r0, [r7, #8]!
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r0, #12]
	str	r0, [r1, #8]
	bhi	lab580
	cmp	r2, #19
	bls	lab581
	ldr	r1, [r4, #0]
	str	r1, [sl, #8]
	ldr	r1, [r4, #4]
	str	r1, [sl, #12]
	cmp	r2, #27
	bhi	lab582
	adds	r4, #8
	add	r2, sl, #16
lab598: 	ldr	r1, [r4, #0]
	str	r1, [r2, #0]
	ldr	r1, [r4, #4]
	str	r1, [r2, #4]
	ldr	r1, [r4, #8]
	str	r1, [r2, #8]
lab599: 	add	r1, sl, r5
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
	b	lab583
lab574: 	ldr	r3, [r4, #0]
	str	r3, [r0, #0]
	ldr	r3, [r4, #4]
	str	r3, [r0, #4]
	cmp	r2, #27
	bhi	lab584
	add	r2, r4, #8
	add	r3, r0, #8
	b	lab585
lab579: 	add	r2, r9, r5
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
	b	lab583
lab572: 	ldr	r3, [r0, #-4]
	bic	r3, r3, #3
	add	r6, r3
	b	lab564
lab570: 	mov	r7, sl
	ldr	r1, [sl, #12]
	ldr	r0, [r7, #8]!
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r0, #12]
	str	r0, [r1, #8]
	bhi	lab586
	cmp	r2, #19
	bls	lab587
	ldr	r1, [r4, #0]
	str	r1, [sl, #8]
	ldr	r1, [r4, #4]
	str	r1, [sl, #12]
	cmp	r2, #27
	bhi	lab588
	adds	r4, #8
	add	r2, sl, #16
lab594: 	mov	r6, r3
	ldr	r3, [r4, #0]
	str	r3, [r2, #0]
	ldr	r3, [r4, #4]
	str	r3, [r2, #4]
	ldr	r3, [r4, #8]
	str	r3, [r2, #8]
	mov	r9, sl
	mov	r4, r7
	b	lab564
lab573: 	mov	r1, r4
push {r1, r2}
	ldr r1, =1048
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =1048
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab589
lab569: 	ldrd	r1, r3, [r0, #8]
	mov	r7, sl
	str	r3, [r1, #12]
	str	r1, [r3, #8]
	ldr	r1, [r7, #8]!
	ldr	r3, [sl, #12]
	str	r3, [r1, #12]
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r3, #8]
	bhi	lab590
	cmp	r2, #19
	bls	lab591
	ldr	r3, [r4, #0]
	str	r3, [sl, #8]
	ldr	r3, [r4, #4]
	str	r3, [sl, #12]
	cmp	r2, #27
	bhi	lab592
	adds	r4, #8
	add	r3, sl, #16
lab595: 	ldr	r2, [r4, #0]
	str	r2, [r3, #0]
	ldr	r2, [r4, #4]
	str	r2, [r3, #4]
	ldr	r2, [r4, #8]
	str	r2, [r3, #8]
	mov	r6, ip
	mov	r9, sl
	mov	r4, r7
	b	lab564
lab584: 	ldr	r3, [r4, #8]
	str	r3, [r0, #8]
	ldr	r3, [r4, #12]
	str	r3, [r0, #12]
	cmp	r2, #36	
	beq	lab593
	add	r2, r4, #16
	add	r3, r0, #16
	b	lab585
lab587: 	mov	r2, r7
	b	lab594
lab586: 	mov	r1, r4
	mov	r0, r7
	mov	r6, r3
	mov	r9, sl
push {r1, r2}
	ldr r1, =6955
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =6955
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r7
	b	lab564
lab591: 	mov	r3, r7
	b	lab595
lab590: 	mov	r1, r4
	mov	r0, r7
	mov	r6, ip
	mov	r9, sl
push {r1, r2}
	ldr r1, =5740
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =5740
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r7
	b	lab564
	.ltorg
lab588: 	ldr	r1, [r4, #8]
	str	r1, [sl, #16]
	ldr	r1, [r4, #12]
	str	r1, [sl, #20]
	cmp	r2, #36	
	beq	lab596
	adds	r4, #16
	add	r2, sl, #24
	b	lab594
lab593: 	ldr	r3, [r4, #16]
	str	r3, [r0, #16]
	ldr	r1, [r4, #20]
	str	r1, [r0, #20]
	add	r2, r4, #24
	add	r3, r0, #24
	b	lab585
lab592: 	ldr	r3, [r4, #8]
	str	r3, [sl, #16]
	ldr	r3, [r4, #12]
	str	r3, [sl, #20]
	cmp	r2, #36	
	beq	lab597
	adds	r4, #16
	add	r3, sl, #24
	b	lab595
lab581: 	mov	r2, r7
	b	lab598
lab580: 	mov	r1, r4
	mov	r0, r7
push {r1, r2}
	ldr r1, =2952
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =2952
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x200007a4	
	b	lab599
lab596: 	ldr	r2, [r4, #16]
	str	r2, [sl, #24]
	ldr	r2, [r4, #20]
	str	r2, [sl, #28]
	adds	r4, #24
	add	r2, sl, #32
	b	lab594
lab582: 	ldr	r1, [r4, #8]
	str	r1, [sl, #16]
	ldr	r1, [r4, #12]
	str	r1, [sl, #20]
	cmp	r2, #36	
	beq	lab600
	adds	r4, #16
	add	r2, sl, #24
	b	lab598
lab597: 	ldr	r3, [r4, #16]
	str	r3, [sl, #24]
	ldr	r3, [r4, #20]
	str	r3, [sl, #28]
	adds	r4, #24
	add	r3, sl, #32
	b	lab595
lab600: 	ldr	r2, [r4, #16]
	str	r2, [sl, #24]
	ldr	r2, [r4, #20]
	str	r2, [sl, #28]
	adds	r4, #24
	add	r2, sl, #32
	b	lab598
	nop
	.ltorg
_sbrk_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x20002f44	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_sbrk
	adds	r3, r0, #1
	beq	lab601
lab602:	nop
	push {r1, r2}
	ldr r1, =7016
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab601: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab602
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =64
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_init_signal_r:
	push	{r3, r4, r5, lr}
	ldr	r4, [r0, #732]	
	cmp r4, #0
	beq lab603
lab606: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab603: 	movs	r1, #128	
	mov	r5, r0
push {r1, r2}
	ldr r1, =6167
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =6167
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab604
	subs	r3, r0, #4
	adds	r2, #124	
lab605: 	str	r4, [r3, #4]!
	cmp	r3, r2
	bne	lab605
	b	lab606
lab604: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
_signal_r:
	cmp	r1, #31
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	bhi	lab607
	ldr	r6, [r0, #732]	
	mov	r4, r1
	mov	r7, r2
	cmp r6, #0
	beq lab608
lab611: 	ldr	r0, [r6, r4, lsl #2]
	str	r7, [r6, r4, lsl #2]
	pop	{r3, r4, r5, r6, r7, pc}
lab607: 	movs	r3, #22
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	pop	{r3, r4, r5, r6, r7, pc}
lab608: 	movs	r1, #128	
push {r1, r2}
	ldr r1, =839
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =839
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r6, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab609
	subs	r3, r0, #4
	add	r5, r0, #124	
	movs	r1, #0
lab610: 	str	r1, [r3, #4]!
	cmp	r5, r3
	bne	lab610
	b	lab611
lab609: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, r6, r7, pc}
_raise_r:
	cmp	r1, #31
	push	{r3, r4, r5, lr}
	mov	r5, r0
	bhi	lab612
	ldr	r2, [r0, #732]	
	mov	r4, r1
	cmp r2, #0
	beq lab613
	ldr	r3, [r2, r1, lsl #2]
	cmp r3, #0
	beq lab613
	cmp	r3, #1
	beq	lab614
	adds	r1, r3, #1
	beq	lab615
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, r4, lsl #2]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab613: 	mov	r0, r5
	bl	_getpid_r
	mov	r2, r4
	mov	r1, r0
	mov	r0, r5
	ldmia	sp!, {r3, r4, r5, lr}
	b	_kill_r
lab615: 	movs	r3, #22
	str	r3, [r0, #0]
	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab614: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab612: 	movs	r3, #22
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	nop
__sigtramp_r:
	cmp	r1, #31
	bhi	lab616
	ldr	r2, [r0, #732]	
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	cmp r2, #0
	beq lab617
lab623: 	ldr	r3, [r2, r4, lsl #2]
	add	r2, r2, r4, lsl #2
	cmp r3, #0
	beq lab618
	adds	r1, r3, #1
	beq	lab619
	cmp	r3, #1
	beq	lab620
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, #0]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab618: 	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab617: 	movs	r1, #128	
push {r1, r2}
	ldr r1, =3281
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =3281
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab621
	subs	r3, r0, #4
	movs	r1, #0
	adds	r0, #124	
lab622: 	str	r1, [r3, #4]!
	cmp	r0, r3
	bne	lab622
	b	lab623
lab620: 	movs	r0, #3
	pop	{r3, r4, r5, pc}
lab619: 	movs	r0, #2
	pop	{r3, r4, r5, pc}
lab621: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
lab616: 	mov	r0, #4294967295	
	bx	lr
raise:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x2000020c	
	cmp	r0, #31
	ldr	r5, [r3, #0]
	bhi	lab624
	ldr	r2, [r5, #732]	
	mov	r4, r0
	cmp r2, #0
	beq lab625
	ldr	r3, [r2, r0, lsl #2]
	cmp r3, #0
	beq lab625
	cmp	r3, #1
	beq	lab626
	adds	r1, r3, #1
	beq	lab627
	movs	r5, #0
	str	r5, [r2, r0, lsl #2]
	blx	r3
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =63
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab625: 	mov	r0, r5
	bl	_getpid_r
	mov	r2, r4
	mov	r1, r0
	mov	r0, r5
	ldmia	sp!, {r3, r4, r5, lr}
	b	_kill_r
lab627: 	movs	r3, #22
	str	r3, [r5, #0]
	movs	r0, #1
	nop
	push {r1, r2}
	ldr r1, =3107
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab626: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =5745
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab624: 	movs	r3, #22
	str	r3, [r5, #0]
	mov	r0, #4294967295	
	nop
	push {r1, r2}
	ldr r1, =7496
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	nop
	.ltorg
signal:
	ldr	r3, =0x2000020c	
	cmp	r0, #31
	push	{r4, r5, r6, lr}
	ldr	r6, [r3, #0]
	bhi	lab628
	mov	r5, r1
	ldr	r1, [r6, #732]	
	mov	r4, r0
	cmp r1, #0
	beq lab629
lab632: 	ldr	r0, [r1, r4, lsl #2]
	str	r5, [r1, r4, lsl #2]
	pop	{r4, r5, r6, pc}
lab628: 	movs	r3, #22
	str	r3, [r6, #0]
	mov	r0, #4294967295	
	pop	{r4, r5, r6, pc}
lab629: 	movs	r1, #128	
	mov	r0, r6
push {r1, r2}
	ldr r1, =1117
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1117
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r1, r0
	str	r0, [r6, #732]	
	cmp r0, #0
	beq lab630
	subs	r3, r0, #4
	add	ip, r0, #124	
	movs	r2, #0
lab631: 	str	r2, [r3, #4]!
	cmp	r3, ip
	bne	lab631
	b	lab632
lab630: 	mov	r0, #4294967295	
	pop	{r4, r5, r6, pc}
	.ltorg
_init_signal:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x2000020c	
	ldr	r5, [r3, #0]
	ldr	r4, [r5, #732]	
	cmp r4, #0
	beq lab633
lab636: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab633: 	movs	r1, #128	
	mov	r0, r5
push {r1, r2}
	ldr r1, =6802
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =6802
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab634
	subs	r3, r0, #4
	add	r2, r0, #124	
lab635: 	str	r4, [r3, #4]!
	cmp	r3, r2
	bne	lab635
	b	lab636
lab634: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	.ltorg
__sigtramp:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x2000020c	
	cmp	r0, #31
	ldr	r5, [r3, #0]
	bhi	lab637
	ldr	r2, [r5, #732]	
	mov	r4, r0
	cmp r2, #0
	beq lab638
lab643: 	ldr	r3, [r2, r4, lsl #2]
	add	r2, r2, r4, lsl #2
	cmp r3, #0
	beq lab639
	adds	r1, r3, #1
	beq	lab640
	cmp	r3, #1
	beq	lab641
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, #0]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab639: 	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab638: 	movs	r1, #128	
	mov	r0, r5
push {r1, r2}
	ldr r1, =6484
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =6484
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab637
	subs	r3, r0, #4
	movs	r1, #0
	adds	r0, #124	
lab642: 	str	r1, [r3, #4]!
	cmp	r3, r0
	bne	lab642
	b	lab643
lab641: 	movs	r0, #3
	pop	{r3, r4, r5, pc}
lab640: 	movs	r0, #2
	pop	{r3, r4, r5, pc}
lab637: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	nop
	.ltorg
_kill_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldr	r5, =0x20002f44	
	mov	r3, r0
	movs	r6, #0
	mov	r0, r4
	mov	r1, r2
	mov	r4, r3
	str	r6, [r5, #0]
	bl	_kill
	adds	r3, r0, #1
	beq	lab644
lab645:	nop
	push {r1, r2}
	ldr r1, =1964
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab644: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab645
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =4072
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
	ldr r1, =8184
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab646
	ldr	r3, [r4, #80]	
	add	r3, r0
	str	r3, [r4, #80]	
	pop	{r4, pc}
lab646: 	ldrh	r3, [r4, #12]
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
	bmi	lab647
lab648: 	bic	r1, r1, #4096	
	strh	r1, [r4, #12]
	mov	r3, r7
	ldrsh	r1, [r4, #14]
	mov	r2, r6
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	b	_write_r
lab647: 	ldrsh	r1, [r4, #14]
	movs	r3, #2
	movs	r2, #0
push {r1, r2}
	ldr r1, =3204
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_lseek_r
	push {r1, r2}
	ldr r1, =3204
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r1, [r4, #12]
	b	lab648
	nop
__sseek:
	push	{r4, lr}
	mov	r4, r1
	ldrsh	r1, [r1, #14]
push {r1, r2}
	ldr r1, =6885
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_lseek_r
	push {r1, r2}
	ldr r1, =6885
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
	bne	lab649
	cmp	r2, #3
	bhi	lab650
lab649: 	mov	ip, r0
lab654: 	add	lr, r1, #4294967295	
	b	lab651
lab653: 	ldrb	r1, [lr, #1]!
	strb	r1, [r3], #1
	subs	r4, r2, #1
	cmp r1, #0
	beq lab652
	mov	ip, r3
	mov	r2, r4
lab651: 	mov	r3, ip
	cmp	r2, #0
	bne	lab653
lab656:	nop
	push {r1, r2}
	ldr r1, =4159
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, pc}
lab650: 	mov	r3, r1
	mov	ip, r0
lab655: 	mov	r1, r3
	ldr	r5, [r3], #4
	sub	r4, r5, #16843009	
	bic	r4, r4, r5
	tst	r4, #2155905152	
	bne	lab654
	subs	r2, #4
	cmp	r2, #3
	str	r5, [ip], #4
	mov	r1, r3
	bhi	lab655
	b	lab654
lab652: 	add	r2, ip
	cmp	r4, #0
	beq	lab656
lab657: 	strb	r1, [r3], #1
	cmp	r3, r2
	bne	lab657
	nop
	push {r1, r2}
	ldr r1, =3680
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
	beq lab658
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab659
lab658: 	ldrsh	r2, [r4, #12]
	ldr	r3, [r4, #24]
	str	r3, [r4, #8]
	lsls	r7, r2, #28
	uxth	r0, r2
	bpl	lab660
	ldr	r3, [r4, #16]
	cmp r3, #0
	beq lab660
	uxtb	r5, r5
	lsls	r1, r0, #18
	mov	r7, r5
	bpl	lab661
lab666: 	ldr	r2, [r4, #0]
	ldr	r1, [r4, #20]
	subs	r3, r2, r3
	cmp	r1, r3
	ble	lab662
lab667: 	adds	r3, #1
lab668: 	ldr	r1, [r4, #8]
	subs	r1, #1
	str	r1, [r4, #8]
	adds	r1, r2, #1
	str	r1, [r4, #0]
	strb	r5, [r2, #0]
	ldr	r2, [r4, #20]
	cmp	r2, r3
	beq	lab663
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #31
	bpl	lab664
	cmp	r5, #10
	beq	lab663
lab664: 	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =3174
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab660: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =5357
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =5357
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab665
	ldrsh	r2, [r4, #12]
	ldr	r3, [r4, #16]
	uxth	r0, r2
	uxtb	r5, r5
	lsls	r1, r0, #18
	mov	r7, r5
	bmi	lab666
lab661: 	orr	r2, r2, #8192	
	strh	r2, [r4, #12]
	ldr	r2, [r4, #100]	
	ldr	r1, [r4, #20]
	bic	r2, r2, #8192	
	str	r2, [r4, #100]	
	ldr	r2, [r4, #0]
	subs	r3, r2, r3
	cmp	r1, r3
	bgt	lab667
lab662: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =3668
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =3668
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab665
	ldr	r2, [r4, #0]
	movs	r3, #1
	b	lab668
lab659: 	bl	__sinit
	b	lab658
lab663: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =3681
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =3681
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab664
lab665: 	mov	r7, #4294967295	
	b	lab664
__swbuf:
	push	{r4}
	ldr	r4, =0x2000020c	
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
	beq lab669
	ldr	r6, =0x20000638	
	ldr	r6, [r6, #224]	
	nop
	push {r1, r2}
	ldr r1, =5663
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	beq	lab670
lab671: 	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =1882
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab669: 	mov	r2, r1
	ldr	r1, =0x20000638	
	ldr	r6, [r1, #224]	
	add	r1, sp, #4
	nop
	push {r1, r2}
	ldr r1, =5036
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	bne	lab671
lab670: 	movs	r2, #0
	movs	r3, #138	
	str	r2, [r4, #0]
	str	r3, [r5, #0]
	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =4077
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
wcrtomb:
	push	{r4, r5, r6, lr}
	ldr	r3, =0x2000020c	
	sub	sp, #16
	ldr	r5, [r3, #0]
	mov	r4, r2
	mov	r3, r1
	mov	r1, r0
	cmp r0, #0
	beq lab672
	ldr	r0, =0x20000638	
	mov	r2, r3
	ldr	r6, [r0, #224]	
	mov	r3, r4
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =3037
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	beq	lab673
lab674: 	add	sp, #16
	pop	{r4, r5, r6, pc}
lab672: 	ldr	r2, =0x20000638	
	mov	r3, r4
	ldr	r6, [r2, #224]	
	add	r1, sp, #4
	mov	r2, r0
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =3819
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	bne	lab674
lab673: 	movs	r2, #0
	movs	r3, #138	
	str	r2, [r4, #0]
	str	r3, [r5, #0]
	add	sp, #16
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
_wctomb_r:
	push	{r4}
	ldr	r4, =0x20000638	
	ldr	r4, [r4, #224]	
	mov	ip, r4
	pop	{r4}
	bx	ip
	nop
	.ltorg
__ascii_wctomb:	push {r1, r2}
	ldr r1, =3166
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r1, #0
	beq lab675
	cmp	r2, #255	
	bhi	lab676
	strb	r2, [r1, #0]
	movs	r0, #1
	bx	lr
lab676: 	movs	r3, #138	
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	bx	lr
lab675: 	mov	r0, r1
	bx	lr
	nop
_write_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x20002f44	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_write
	adds	r3, r0, #1
	beq	lab677
lab678: 	pop	{r3, r4, r5, pc}
lab677: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab678
	str	r3, [r4, #0]
	pop	{r3, r4, r5, pc}
	.ltorg
_close_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x20002f44	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_close
	adds	r3, r0, #1
	beq	lab679
lab680: 	pop	{r3, r4, r5, pc}
lab679: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab680
	str	r3, [r4, #0]
	pop	{r3, r4, r5, pc}
	.ltorg
_fclose_r:
	push	{r4, r5, r6, lr}
	cmp	r1, #0
	beq	lab681
	mov	r6, r0
	mov	r4, r1
	cmp r0, #0
	beq lab682
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab683
lab682: 	ldr	r3, [r4, #100]	
	lsls	r0, r3, #31
	bpl	lab684
lab693: 	ldrsh	r3, [r4, #12]
	cmp	r3, #0
	beq	lab681
lab691: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =12
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =12
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #44]	
	mov	r5, r0
	cmp r3, #0
	beq lab685
	ldr	r1, [r4, #28]
	mov	r0, r6
	blx	r3
	cmp	r0, #0
	it	lt
	movlt	r5, #4294967295	
lab685: 	ldrh	r3, [r4, #12]
	lsls	r2, r3, #24
	bmi	lab686
lab694: 	ldr	r1, [r4, #48]	
	cmp r1, #0
	beq lab687
	add	r3, r4, #64	
	cmp	r1, r3
	beq	lab688
	mov	r0, r6
push {r1, r2}
	ldr r1, =4903
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab688:	push {r1, r2}
	ldr r1, =4903
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	movs	r3, #0
	str	r3, [r4, #48]	
lab687: 	ldr	r1, [r4, #68]	
	cmp r1, #0
	beq lab689
	mov	r0, r6
push {r1, r2}
	ldr r1, =2816
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =2816
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	str	r3, [r4, #68]	
lab689: 	bl	__sfp_lock_acquire
	ldr	r3, [r4, #100]	
	movs	r2, #0
	lsls	r3, r3, #31
	strh	r2, [r4, #12]
	bpl	lab690
lab695: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_close_recursive
	bl	__sfp_lock_release
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab684: 	ldrh	r3, [r4, #12]
	lsls	r1, r3, #22
	bmi	lab691
	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	cmp	r3, #0
	bne	lab691
	ldr	r5, [r4, #100]	
	ands	r5, r5, #1
	beq	lab692
lab681: 	movs	r5, #0
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab683: 	bl	__sinit
	ldr	r3, [r4, #100]	
	lsls	r0, r3, #31
	bmi	lab693
	b	lab684
lab692: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab686: 	ldr	r1, [r4, #16]
	mov	r0, r6
push {r1, r2}
	ldr r1, =6986
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =6986
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab694
lab690: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	b	lab695
fclose:
	ldr	r3, =0x2000020c	
	mov	r1, r0
	ldr	r0, [r3, #0]
	b	_fclose_r
	nop
	.ltorg
_fstat_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldr	r5, =0x20002f44	
	mov	r3, r0
	movs	r6, #0
	mov	r0, r4
	mov	r1, r2
	mov	r4, r3
	str	r6, [r5, #0]
	bl	_fstat
	adds	r3, r0, #1
	beq	lab696
lab697:	nop
	push {r1, r2}
	ldr r1, =793
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab696: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab697
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =7810
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
_isatty_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x20002f44	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_isatty
	adds	r3, r0, #1
	beq	lab698
lab699:	nop
	push {r1, r2}
	ldr r1, =6134
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab698: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab699
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =3296
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_lseek_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x20002f44	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_lseek
	adds	r3, r0, #1
	beq	lab700
lab701:	nop
	push {r1, r2}
	ldr r1, =4920
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab700: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab701
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =4448
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_read_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x20002f44	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_read
	adds	r3, r0, #1
	beq	lab702
lab703:	nop
	push {r1, r2}
	ldr r1, =491
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab702: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab703
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =470
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
	beq lab704
	ldr	r7, [r6, #0]
	cmp r7, #0
	beq lab705
	ldr	r8, [r7]
	cmp	r8, #0
	beq	lab706
	ldr	r1, [r8]
	cmp r1, #0
	beq lab707
push {r1, r2}
	ldr r1, =4745
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	cleanup_glue
lab707:	push {r1, r2}
	ldr r1, =4745
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r8
	mov	r0, r5
push {r1, r2}
	ldr r1, =6834
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab706:	push {r1, r2}
	ldr r1, =6834
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r7
	mov	r0, r5
push {r1, r2}
	ldr r1, =8132
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab705:	push {r1, r2}
	ldr r1, =8132
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r6
	mov	r0, r5
push {r1, r2}
	ldr r1, =1217
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab704:	push {r1, r2}
	ldr r1, =1217
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r4
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	b	_free_r
_reclaim_reent:
	ldr	r3, =0x2000020c	
	ldr	r3, [r3, #0]
	cmp	r3, r0
	beq	lab708
	ldr	r1, [r0, #76]	
	push	{r4, r5, r6, lr}
	mov	r5, r0
	cmp r1, #0
	beq lab709
	movs	r6, #0
lab712: 	ldr	r4, [r1, r6]
	cmp r4, #0
	beq lab710
lab711: 	mov	r1, r4
	ldr	r4, [r4, #0]
	mov	r0, r5
push {r1, r2}
	ldr r1, =2793
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =2793
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r4, #0
	bne	lab711
	ldr	r1, [r5, #76]	
lab710: 	adds	r6, #4
	cmp	r6, #128	
	bne	lab712
	mov	r0, r5
push {r1, r2}
	ldr r1, =1276
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab709:	push {r1, r2}
	ldr r1, =1276
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r1, [r5, #64]	
	cmp r1, #0
	beq lab713
	mov	r0, r5
push {r1, r2}
	ldr r1, =1861
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab713:	push {r1, r2}
	ldr r1, =1861
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r4, [r5, #328]	
	cmp r4, #0
	beq lab714
	add	r6, r5, #332	
	cmp	r4, r6
	beq	lab714
lab715: 	mov	r1, r4
	ldr	r4, [r4, #0]
	mov	r0, r5
push {r1, r2}
	ldr r1, =7883
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =7883
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r6, r4
	bne	lab715
lab714: 	ldr	r1, [r5, #84]	
	cmp r1, #0
	beq lab716
	mov	r0, r5
push {r1, r2}
	ldr r1, =602
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab716:	push {r1, r2}
	ldr r1, =602
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r3, [r5, #56]	
	cmp r3, #0
	beq lab717
	ldr	r3, [r5, #60]	
	mov	r0, r5
	blx	r3
	ldr	r4, [r5, #736]	
	cmp r4, #0
	beq lab717
	ldr	r1, [r4, #0]
	cmp r1, #0
	beq lab718
	mov	r0, r5
push {r1, r2}
	ldr r1, =6094
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	cleanup_glue
lab718:	push {r1, r2}
	ldr r1, =6094
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r4
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, lr}
	b	_free_r
lab717: 	pop	{r4, r5, r6, pc}
lab708: 	bx	lr
	.ltorg
_close:
	ldr	r3, =0x20002f44	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_fstat:
	ldr	r3, =0x20002f44	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_getpid:
	ldr	r3, =0x20002f44	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_isatty:
	ldr	r3, =0x20002f44	
	movs	r2, #88	
	str	r2, [r3, #0]
	movs	r0, #0
	bx	lr
	nop
	.ltorg
_kill:
	ldr	r3, =0x20002f44	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_lseek:
	ldr	r3, =0x20002f44	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_read:
	ldr	r3, =0x20002f44	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_sbrk:
	ldr	r2, =0x20002f48	
	ldr	r1, =0x20002f50	
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
	ldr	r3, =0x20002f44	
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
	.word	0x20000210
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
	.word	0x20000210


	 .section .data.impure_data

impure_data:
	.word	0x00000000
	.word	0x200004fc
	.word	0x20000564
	.word	0x200005cc
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
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
	.word	0x08003ee9
	.word	0x0800349d
	.word	0x00000000
	.word	0x20000104
	.word	0x20000100
	.word	0x2000006c
	.word	0x2000006c
	.word	0x2000006c
	.word	0x2000006c
	.word	0x2000006c
	.word	0x2000006c
	.word	0x2000006c
	.word	0x2000006c
	.word	0x2000006c
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
	.word	0x200007a4
	.word	0x200007a4
	.word	0x200007ac
	.word	0x200007ac
	.word	0x200007b4
	.word	0x200007b4
	.word	0x200007bc
	.word	0x200007bc
	.word	0x200007c4
	.word	0x200007c4
	.word	0x200007cc
	.word	0x200007cc
	.word	0x200007d4
	.word	0x200007d4
	.word	0x200007dc
	.word	0x200007dc
	.word	0x200007e4
	.word	0x200007e4
	.word	0x200007ec
	.word	0x200007ec
	.word	0x200007f4
	.word	0x200007f4
	.word	0x200007fc
	.word	0x200007fc
	.word	0x20000804
	.word	0x20000804
	.word	0x2000080c
	.word	0x2000080c
	.word	0x20000814
	.word	0x20000814
	.word	0x2000081c
	.word	0x2000081c
	.word	0x20000824
	.word	0x20000824
	.word	0x2000082c
	.word	0x2000082c
	.word	0x20000834
	.word	0x20000834
	.word	0x2000083c
	.word	0x2000083c
	.word	0x20000844
	.word	0x20000844
	.word	0x2000084c
	.word	0x2000084c
	.word	0x20000854
	.word	0x20000854
	.word	0x2000085c
	.word	0x2000085c
	.word	0x20000864
	.word	0x20000864
	.word	0x2000086c
	.word	0x2000086c
	.word	0x20000874
	.word	0x20000874
	.word	0x2000087c
	.word	0x2000087c
	.word	0x20000884
	.word	0x20000884
	.word	0x2000088c
	.word	0x2000088c
	.word	0x20000894
	.word	0x20000894
	.word	0x2000089c
	.word	0x2000089c
	.word	0x200008a4
	.word	0x200008a4
	.word	0x200008ac
	.word	0x200008ac
	.word	0x200008b4
	.word	0x200008b4
	.word	0x200008bc
	.word	0x200008bc
	.word	0x200008c4
	.word	0x200008c4
	.word	0x200008cc
	.word	0x200008cc
	.word	0x200008d4
	.word	0x200008d4
	.word	0x200008dc
	.word	0x200008dc
	.word	0x200008e4
	.word	0x200008e4
	.word	0x200008ec
	.word	0x200008ec
	.word	0x200008f4
	.word	0x200008f4
	.word	0x200008fc
	.word	0x200008fc
	.word	0x20000904
	.word	0x20000904
	.word	0x2000090c
	.word	0x2000090c
	.word	0x20000914
	.word	0x20000914
	.word	0x2000091c
	.word	0x2000091c
	.word	0x20000924
	.word	0x20000924
	.word	0x2000092c
	.word	0x2000092c
	.word	0x20000934
	.word	0x20000934
	.word	0x2000093c
	.word	0x2000093c
	.word	0x20000944
	.word	0x20000944
	.word	0x2000094c
	.word	0x2000094c
	.word	0x20000954
	.word	0x20000954
	.word	0x2000095c
	.word	0x2000095c
	.word	0x20000964
	.word	0x20000964
	.word	0x2000096c
	.word	0x2000096c
	.word	0x20000974
	.word	0x20000974
	.word	0x2000097c
	.word	0x2000097c
	.word	0x20000984
	.word	0x20000984
	.word	0x2000098c
	.word	0x2000098c
	.word	0x20000994
	.word	0x20000994
	.word	0x2000099c
	.word	0x2000099c
	.word	0x200009a4
	.word	0x200009a4
	.word	0x200009ac
	.word	0x200009ac
	.word	0x200009b4
	.word	0x200009b4
	.word	0x200009bc
	.word	0x200009bc
	.word	0x200009c4
	.word	0x200009c4
	.word	0x200009cc
	.word	0x200009cc
	.word	0x200009d4
	.word	0x200009d4
	.word	0x200009dc
	.word	0x200009dc
	.word	0x200009e4
	.word	0x200009e4
	.word	0x200009ec
	.word	0x200009ec
	.word	0x200009f4
	.word	0x200009f4
	.word	0x200009fc
	.word	0x200009fc
	.word	0x20000a04
	.word	0x20000a04
	.word	0x20000a0c
	.word	0x20000a0c
	.word	0x20000a14
	.word	0x20000a14
	.word	0x20000a1c
	.word	0x20000a1c
	.word	0x20000a24
	.word	0x20000a24
	.word	0x20000a2c
	.word	0x20000a2c
	.word	0x20000a34
	.word	0x20000a34
	.word	0x20000a3c
	.word	0x20000a3c
	.word	0x20000a44
	.word	0x20000a44
	.word	0x20000a4c
	.word	0x20000a4c
	.word	0x20000a54
	.word	0x20000a54
	.word	0x20000a5c
	.word	0x20000a5c
	.word	0x20000a64
	.word	0x20000a64
	.word	0x20000a6c
	.word	0x20000a6c
	.word	0x20000a74
	.word	0x20000a74
	.word	0x20000a7c
	.word	0x20000a7c
	.word	0x20000a84
	.word	0x20000a84
	.word	0x20000a8c
	.word	0x20000a8c
	.word	0x20000a94
	.word	0x20000a94
	.word	0x20000a9c
	.word	0x20000a9c
	.word	0x20000aa4
	.word	0x20000aa4
	.word	0x20000aac
	.word	0x20000aac
	.word	0x20000ab4
	.word	0x20000ab4
	.word	0x20000abc
	.word	0x20000abc
	.word	0x20000ac4
	.word	0x20000ac4
	.word	0x20000acc
	.word	0x20000acc
	.word	0x20000ad4
	.word	0x20000ad4
	.word	0x20000adc
	.word	0x20000adc
	.word	0x20000ae4
	.word	0x20000ae4
	.word	0x20000aec
	.word	0x20000aec
	.word	0x20000af4
	.word	0x20000af4
	.word	0x20000afc
	.word	0x20000afc
	.word	0x20000b04
	.word	0x20000b04
	.word	0x20000b0c
	.word	0x20000b0c
	.word	0x20000b14
	.word	0x20000b14
	.word	0x20000b1c
	.word	0x20000b1c
	.word	0x20000b24
	.word	0x20000b24
	.word	0x20000b2c
	.word	0x20000b2c
	.word	0x20000b34
	.word	0x20000b34
	.word	0x20000b3c
	.word	0x20000b3c
	.word	0x20000b44
	.word	0x20000b44
	.word	0x20000b4c
	.word	0x20000b4c
	.word	0x20000b54
	.word	0x20000b54
	.word	0x20000b5c
	.word	0x20000b5c
	.word	0x20000b64
	.word	0x20000b64
	.word	0x20000b6c
	.word	0x20000b6c
	.word	0x20000b74
	.word	0x20000b74
	.word	0x20000b7c
	.word	0x20000b7c
	.word	0x20000b84
	.word	0x20000b84
	.word	0x20000b8c
	.word	0x20000b8c
	.word	0x20000b94
	.word	0x20000b94
	.word	0x20000b9c
	.word	0x20000b9c


	 .section .data.__malloc_sbrk_base

__malloc_sbrk_base:
	.word	0xffffffff


	 .section .data.__malloc_trim_threshold

__malloc_trim_threshold:
	.word	0x00020000


	 .section .bss

heap:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
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

_heap_bottom_0x4:
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


	 .section .ARM.exidx

__StackTop_0x190b0:
	.word	0x67ff9dbc
	.word	0x00000001
