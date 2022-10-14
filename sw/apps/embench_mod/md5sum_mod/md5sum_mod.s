	.cpu cortex-m4
	.text
	.thumb
	.syntax unified
	.global main
	.type main, %function

    .global SystemInit
	.type SystemInit, %function

md5:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r1
	sub	sp, sp, #540	
	movw	r1, #0
	mov	r2, #256	
	movt	r1, #8192	
	mov	r6, r0
	add	r0, sp, #24
	bl	memcpy
	movw	r1, #256	
	mov	r2, #256	
	movt	r1, #8192	
	add	r0, sp, #280	
	movw	r7, #3508	
	bl	memcpy
	movt	r7, #8192	
	movw	r2, #8961	
	movt	r2, #26437	
	str	r2, [r7, #0]
	movw	r2, #43913	
	movt	r2, #61389	
	str	r2, [r7, #4]
	movw	r2, #56574	
	add	r3, r4, #8
	movt	r2, #39098	
	bic	r3, r3, #63	
	str	r2, [r7, #8]
	movw	r2, #21622	
	movt	r2, #4146	
	movs	r1, #1
	add	r0, r3, #120	
	adds	r3, #56	
	mov	r8, r3
	str	r3, [sp, #16]
	str	r2, [r7, #12]
	str	r7, [sp, #20]
	bl	calloc_beebs
	push {r1, r2}
	ldr r1, =1997
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r5, r0
	mov	r1, r6
	bl	memcpy
	movs	r3, #128	
	strb	r3, [r5, r4]
	mov	r3, r8
	lsls	r4, r4, #3
	cmp	r3, #0
	str	r4, [r5, r8]
	ble	lab0
	ldrd	r9, r3, [r7]
	str	r3, [sp, #0]
	ldr	r3, [r7, #8]
	str	r3, [sp, #4]
	ldr	r3, [r7, #12]
	str	r3, [sp, #8]
	mov	r8, #0
lab7: 	ldrd	r6, ip, [sp, #4]
	ldr	r0, [sp, #0]
	str	r9, [sp, #12]
	add	sl, sp, #280	
	add	lr, sp, #24
	mov	r3, r9
	movs	r4, #1
	movs	r1, #0
	b	lab1
lab3: 	eor	fp, fp, r6
	and	r7, r7, #15
lab5: 	ldr	r9, [sl]
	ldr	r2, [lr]
	add	r7, r5, r7, lsl #2
	add	r3, r9
	ldr	r7, [r7, r8]
	add	fp, r3
	add	fp, r7
	rsb	r2, r2, #32
	ror	fp, fp, r2
	add	fp, r0
lab6: 	mov	r3, ip
	adds	r1, #1
	mov	ip, r6
	adds	r4, #1
	mov	r6, r0
	add	sl, sl, #4
	add	lr, lr, #4
	mov	r0, fp
lab1: 	cmp	r1, #15
	bls	lab2
	eor	fp, r0, r6
	add	r7, r4, r4, lsl #2
	cmp	r1, #31
	and	fp, fp, ip
	sub	r7, r7, #4
	bls	lab3
	add	r7, r4, r4, lsl #1
	cmp	r1, #47	
	eor	fp, r0, r6
	add	r7, r7, #2
	bhi	lab4
	eor	fp, fp, ip
	and	r7, r7, #15
	b	lab5
lab2: 	eor	fp, r6, ip
	and	fp, fp, r0
	eor	fp, fp, ip
	mov	r7, r1
	b	lab5
lab4: 	rsb	fp, r1, r1, lsl #3
	and	fp, fp, #15
	ldr	r7, [sl]
	add	fp, r5, fp, lsl #2
	orn	r2, r0, ip
	add	r3, r7
	eors	r2, r6
	ldr	r7, [fp, r8]
	add	r3, r2
	add	fp, r3, r7
	ldr	r3, [lr]
	rsb	r7, r3, #32
	ror	fp, fp, r7
	cmp	r4, #64	
	add	fp, r0
	bne	lab6
	ldr	r3, [sp, #0]
	ldr	r9, [sp, #12]
	add	r3, fp
	str	r3, [sp, #0]
	ldr	r3, [sp, #4]
	add	r3, r0
	str	r3, [sp, #4]
	ldr	r3, [sp, #8]
	add	r3, r6
	str	r3, [sp, #8]
	ldr	r3, [sp, #16]
	add	r8, r8, #64	
	cmp	r3, r8
	add	r9, ip
	bgt	lab7
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #0]
	str	r2, [r3, #4]
	ldr	r2, [sp, #4]
	str	r2, [r3, #8]
	ldr	r2, [sp, #8]
	str	r9, [r3]
	str	r2, [r3, #12]
lab0: 	mov	r0, r5
	add	sp, sp, #540	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	free_beebs
	nop
benchmark_body.constprop.0:
	push	{r4, r5, r6, lr}
	movw	r6, #3524	
	movt	r6, #8192	
	movw	r5, #8568	
lab9: 	movw	r1, #3080	
	mov	r0, r6
push {r1, r2}
	ldr r1, =1109
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	init_heap_beebs
	push {r1, r2}
	ldr r1, =1109
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r0, #1000	
	bl	malloc_beebs
	movs	r1, #0
	mov	r4, r0
	subs	r3, r0, #1
lab8: 	strb	r1, [r3, #1]!
	adds	r1, #1
	cmp	r1, #1000	
	bne	lab8
	mov	r0, r4
	bl	md5
	mov	r0, r4
	bl	free_beebs
	subs	r5, #1
	bne	lab9
	movw	r3, #3508	
	movt	r3, #8192	
	ldrd	r2, r4, [r3]
	ldrd	r1, r0, [r3, #8]
	eor	r3, r2, r4
	eors	r3, r1
	eors	r0, r3
	nop
	push {r1, r2}
	ldr r1, =4251
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
benchmark_body.constprop.1.isra.0:
	push	{r3, r4, r5, r6, r7, lr}
	subs	r6, r0, #0
	ble	lab10
	movw	r7, #3524	
	movt	r7, #8192	
	movs	r5, #0
lab12: 	movw	r1, #3080	
	mov	r0, r7
push {r1, r2}
	ldr r1, =7537
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	init_heap_beebs
	push {r1, r2}
	ldr r1, =7537
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r0, #1000	
	bl	malloc_beebs
	movs	r1, #0
	mov	r4, r0
	subs	r3, r0, #1
lab11: 	strb	r1, [r3, #1]!
	adds	r1, #1
	cmp	r1, #1000	
	bne	lab11
	mov	r0, r4
	bl	md5
	adds	r5, #1
	mov	r0, r4
	bl	free_beebs
	cmp	r5, r6
	bne	lab12
lab10:	nop
	push {r1, r2}
	ldr r1, =447
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, r6, r7, pc}
initialise_benchmark:
	bx	lr
	nop
warm_caches:
	b	benchmark_body.constprop.1.isra.0
	nop
benchmark:
	b	benchmark_body.constprop.0
	nop
verify_benchmark:
	movw	r3, #29620	
	movt	r3, #13302	
	subs	r0, r0, r3
	clz	r0, r0
	lsrs	r0, r0, #5
	bx	lr
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
lab13: 	ldr	r2, [r3, #0]
	lsls	r0, r2, #14
	bpl	lab13
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
lab14: 	ldr	r3, [r2, #0]
	lsls	r1, r3, #6
	bpl	lab14
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
lab15: 	ldr	r3, [r1, #8]
	lsls	r3, r3, #28
	bpl	lab15
	movw	r3, #1032	
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
	ldr r1, =2037
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	start_trigger
	bl	benchmark
	push {r1, r2}
	ldr r1, =7686
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
	movw	r3, #6604	
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
	movw	r3, #6604	
	movt	r3, #8192	
	str	r0, [r3, #0]
	bx	lr
init_heap_beebs:
	ands	r2, r1, #3
	push	{r3, lr}
	bne	lab16
	movw	r3, #6604	
	movt	r3, #8192	
	add	r1, r0
	strd	r0, r1, [r3, #4]
	str	r2, [r3, #12]
	nop
	push {r1, r2}
	ldr r1, =1891
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, pc}
lab16: 	movw	r3, #512	
	movw	r2, #592	
	movw	r0, #544	
	movt	r3, #8192	
	movt	r2, #8192	
	movs	r1, #65	
	movt	r0, #8192	
	bl	__assert_func
check_heap_beebs:
	movw	r3, #6604	
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
	beq lab17
	movw	r2, #6604	
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
	bcc	lab17
	str	r1, [r2, #4]
	bx	lr
lab17: 	movs	r0, #0
	bx	lr
	nop
calloc_beebs:
	mul	r2, r1, r0
	push	{r4, lr}
	cmp r2, #0
	beq lab18
	movw	r3, #6604	
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
	bcc	lab18
	str	r1, [r3, #4]
	cmp r4, #0
	beq lab19
	movs	r1, #0
	mov	r0, r4
push {r1, r2}
	ldr r1, =2123
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
lab19:	push {r1, r2}
	ldr r1, =2123
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r4
	nop
	push {r1, r2}
	ldr r1, =648
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
lab18: 	movs	r4, #0
	mov	r0, r4
	nop
	push {r1, r2}
	ldr r1, =6077
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
	nop
realloc_beebs:
	cmp	r0, #0
	beq	lab20
	cmp	r1, #0
	beq	lab20
	movw	r3, #6604	
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
	bcc	lab21
	str	r4, [r3, #4]
	cmp r0, #0
	beq lab21
	adds	r3, r2, #1
	subs	r3, r0, r3
	cmp	r3, #2
	add	r4, r1, #4294967295	
	bls	lab22
	cmp	r4, #7
	bls	lab22
	bic	r4, r1, #3
	mov	r3, r2
	mov	ip, r0
	add	r4, r2
lab23: 	ldr	lr, [r3], #4
	str	lr, [ip], #4
	cmp	r3, r4
	bne	lab23
	lsls	r4, r1, #30
	bic	r3, r1, #3
	beq	lab24
	ldrb	r4, [r2, r3]
	strb	r4, [r0, r3]
	adds	r4, r3, #1
	cmp	r1, r4
	bls	lab24
	adds	r3, #2
	ldrb	r5, [r2, r4]
	strb	r5, [r0, r4]
	cmp	r1, r3
	bls	lab24
	ldrb	r2, [r2, r3]
	strb	r2, [r0, r3]
lab24: 	pop	{r4, r5, pc}
lab21: 	movs	r0, #0
	pop	{r4, r5, pc}
lab22: 	subs	r3, r2, #1
	subs	r1, r0, #1
	add	r2, r4
lab25: 	ldrb	r4, [r3, #1]!
	strb	r4, [r1, #1]!
	cmp	r3, r2
	bne	lab25
	pop	{r4, r5, pc}
lab20: 	movs	r0, #0
	bx	lr
free_beebs:
	bx	lr
	nop
memcpy:
	mov	ip, r0
	orr	r3, r1, r0
	ands	r3, r3, #3
	bne	lab26
lab35: 	subs	r2, #64	
	bcc	lab27
lab28: 	ldr	r3, [r1], #4
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
	bcs	lab28
lab27: 	adds	r2, #48	
	bcc	lab29
lab30: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #16
	bcs	lab30
lab29: 	adds	r2, #12
	bcc	lab31
lab32: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #4
	bcs	lab32
lab31: 	adds	r2, #4
	beq	lab33
	lsls	r2, r2, #31
	itt	ne
	ldrbne	r3, [r1], #1
	strbne	r3, [r0], #1
	bcc	lab33
	ldrh	r3, [r1, #0]
	strh	r3, [r0, #0]
lab33: 	mov	r0, ip
	bx	lr
	nop
lab26: 	cmp	r2, #8
	bcc	lab34
	lsls	r3, r1, #30
	beq	lab35
	ands	r3, r0, #3
	beq	lab35
	rsb	r3, r3, #4
	subs	r2, r2, r3
	lsls	r3, r3, #31
	itt	ne
	ldrbne	r3, [r1], #1
	strbne	r3, [r0], #1
	bcc	lab35
	ldrh	r3, [r1], #2
	strh	r3, [r0], #2
	b	lab35
lab34: 	subs	r2, #4
	bcc	lab31
lab36: 	subs	r2, #1
	ldrb	r3, [r1], #1
	strb	r3, [r0], #1
	bcs	lab36
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
	blt	lab37
	tst	r0, #7
	beq	lab38
lab41: 	ldrb	r3, [r0], #1
	subs	r2, #1
	cmp	r3, r1
	beq	lab39
	tst	r0, #7
	cmp r2, #0
	beq lab40
	bne	lab41
lab38: 	push	{r4, r5, r6, r7}
	orr	r1, r1, r1, lsl #8
	orr	r1, r1, r1, lsl #16
	bic	r4, r2, #7
	mvns	r7, #0
	movs	r3, #0
lab43: 	ldrd	r5, r6, [r0], #8
	subs	r4, #8
	eor	r5, r5, r1
	eor	r6, r6, r1
	uadd8	r5, r5, r7
	sel	r5, r3, r7
	uadd8	r6, r6, r7
	sel	r6, r5, r7
	cmp r6, #0
	bne lab42
	bne	lab43
	pop	{r4, r5, r6, r7}
	and	r1, r1, #255	
	and	r2, r2, #7
lab37: 	cmp r2, #0
	beq lab40
lab44: 	ldrb	r3, [r0], #1
	subs	r2, #1
	eor	r3, r3, r1
	cmp r3, #0
	beq lab39
	bne	lab44
lab40: 	movs	r0, #0
	bx	lr
lab39: 	subs	r0, #1
	bx	lr
lab42: 	cmp	r5, #0
	itte	eq
	moveq	r5, r6
	subeq	r0, #3
	subne	r0, #7
	tst	r5, #1
	bne	lab45
	adds	r0, #1
	tst	r5, #256	
	ittt	eq
	addeq	r0, #1
	tsteq	r5, #98304	
	addeq	r0, #1
lab45: 	pop	{r4, r5, r6, r7}
	subs	r0, #1
	bx	lr
	nop
lab46: 	sub	r0, r2, r3
	bx	lr
	nop
strcmp:
	ldrb	r2, [r0, #0]
	ldrb	r3, [r1, #0]
	cmp	r2, #1
	it	cs
	cmpcs	r2, r3
	bne	lab46
	strd	r4, r5, [sp, #-16]!
	orr	r4, r0, r1
	strd	r6, r7, [sp, #8]
	mvn	ip, #0
	mov	r2, r4, lsl #29
	cmp r2, #0
	beq lab47
	eor	r4, r0, r1
	tst	r4, #7
	bne	lab48
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
	beq	lab49
	orn	r3, r3, r4
	mov	r2, ip
	orn	r7, r7, r4
	mov	r6, ip
	b	lab49
lab47: 	ldrd	r2, r3, [r0], #16
	ldrd	r6, r7, [r1], #16
lab49: 	uadd8	r5, r2, ip
	eor	r4, r2, r6
	sel	r4, r4, ip
	cmp r4, #0
	bne lab50
	uadd8	r5, r3, ip
	eor	r5, r3, r7
	sel	r5, r5, ip
	cmp r5, #0
	bne lab51
	ldrd	r2, r3, [r0, #-8]
	ldrd	r6, r7, [r1, #-8]
	uadd8	r5, r2, ip
	eor	r4, r2, r6
	sel	r4, r4, ip
	uadd8	r5, r3, ip
	eor	r5, r3, r7
	sel	r5, r5, ip
	orrs	r5, r4
	beq	lab47
	cmp r4, #0
	bne lab50
lab51: 	rev	r5, r5
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
lab50: 	rev	r4, r4
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
lab48: 	tst	r4, #3
	bne	lab52
	ands	r4, r0, #3
	bne	lab53
lab55: 	ldr	r2, [r0], #8
	ldr	r3, [r1], #8
lab56: 	uadd8	r5, r2, ip
	eor	r5, r2, r3
	sel	r5, r5, ip
	cmp r5, #0
	bne lab54
	ldr	r2, [r0, #-4]
	ldr	r3, [r1, #-4]
	uadd8	r5, r2, ip
	eor	r5, r2, r3
	sel	r5, r5, ip
	cmp	r5, #0
	beq	lab55
lab54: 	rev	r5, r5
	clz	r4, r5
	bic	r4, r4, #7
	lsr	r1, r3, r4
	lsr	r2, r2, r4
	and	r0, r2, #255	
	and	r1, r1, #255	
	ldrd	r4, r5, [sp], #16
	sub	r0, r0, r1
	bx	lr
lab53: 	mov	r4, r4, lsl #3
	bic	r0, r0, #3
	ldr	r2, [r0], #8
	bic	r1, r1, #3
	ldr	r3, [r1], #8
	lsl	r4, ip, r4
	orn	r2, r2, r4
	orn	r3, r3, r4
	b	lab56
lab52: 	ands	r4, r0, #3
	beq	lab57
	sub	r1, r1, r4
	bic	r0, r0, #3
	lsls	r4, r4, #31
	ldr	r2, [r0], #4
	beq	lab58
	bcs	lab59
	ldrb	r3, [r1, #2]
	uxtb	r4, r2, ror #16
	subs	r4, r4, r3
	bne	lab60
	cmp r3, #0
	beq lab60
lab58: 	ldrb	r3, [r1, #3]
	uxtb	r4, r2, ror #24
	subs	r4, r4, r3
	bne	lab60
	cmp r3, #0
	bne lab59
lab60: 	mov	r0, r4
	ldr	r4, [sp], #16
	bx	lr
lab59: 	add	r1, r1, #4
lab57: 	ldr	r2, [r0], #4
	lsls	r4, r1, #31
	bic	r1, r1, #3
	ldr	r3, [r1], #4
	bhi	lab61
	bcs	lab62
lab66: 	bic	r4, r2, #4278190080	
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #8
	sel	r5, r5, ip
	bne	lab63
	cmp r5, #0
	bne lab64
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #24
	bne	lab65
	ldr	r2, [r0], #4
	b	lab66
lab63: 	mov	r3, r3, lsr #8
	b	lab67
lab64: 	bics	r5, r5, #4278190080	
	bne	lab68
	ldrb	r0, [r1, #0]
	ldrd	r4, r5, [sp], #16
	rsb	r0, r0, #0
	bx	lr
lab65: 	mov	r2, r2, lsr #24
	and	r3, r3, #255	
	b	lab67
lab62: 	and	r4, r2, ip, lsr #16
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #16
	sel	r5, r5, ip
	bne	lab69
	cmp r5, #0
	bne lab70
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #16
	bne	lab71
	ldr	r2, [r0], #4
	b	lab62
lab69: 	mov	r3, r3, lsr #16
	b	lab67
lab70: 	ands	r5, r5, ip, lsr #16
	bne	lab68
	ldrh	r3, [r1, #0]
	mov	r2, r2, lsr #16
	b	lab67
lab71: 	mov	r2, r2, lsr #16
	and	r3, r3, ip, lsr #16
	b	lab67
lab61: 	and	r4, r2, #255	
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #24
	sel	r5, r5, ip
	bne	lab72
	cmp r5, #0
	bne lab73
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #8
	bne	lab74
	ldr	r2, [r0], #4
	b	lab61
lab72: 	mov	r3, r3, lsr #24
	b	lab67
lab73: 	tst	r5, #255	
	bne	lab68
	ldr	r3, [r1, #0]
lab74: 	mov	r2, r2, lsr #8
	bic	r3, r3, #4278190080	
	b	lab67
lab68: 	mov	r0, #0
	ldrd	r4, r5, [sp], #16
	bx	lr
lab67: 	rev	r2, r2
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
	bne	lab75
	mov	r4, #0
	mvn	r0, #7
lab77: 	ldrd	r2, r3, [r1]
	pld	[r1, #64]	
	add	r0, r0, #8
lab78: 	uadd8	r2, r2, ip
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab76
	ldrd	r2, r3, [r1, #8]
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab76
	ldrd	r2, r3, [r1, #16]
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab76
	ldrd	r2, r3, [r1, #24]
	add	r1, r1, #32
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp	r3, #0
	beq	lab77
lab76: 	cmp	r2, #0
	itt	eq
	addeq	r0, #4
	moveq	r2, r3
	rev	r2, r2
	clz	r2, r2
	ldrd	r4, r5, [sp], #8
	add	r0, r0, r2, lsr #3
	bx	lr
lab75: 	ldrd	r2, r3, [r1]
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
	b	lab78
__aeabi_uldivmod:
	cmp r3, #0
	bne lab79
	cmp r2, #0
	bne lab79
	cmp	r1, #0
	it	eq
	cmpeq	r0, #0
	itt	ne
	movne	r1, #4294967295	
	movne	r0, #4294967295	
	b	__aeabi_idiv0
lab79: 	sub	ip, sp, #8
	strd	ip, lr, [sp, #-16]!
	bl	__udivmoddi4
	push {r1, r2}
	ldr r1, =1780
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	lr, [sp, #4]
	ldrd	r2, r3, [sp, #8]
	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =1024
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
	bne	lab80
	cmp	r2, r1
	mov	ip, r2
	bls	lab81
	clz	r2, r2
	cmp r2, #0
	beq lab82
	lsl	r3, r1, r2
	rsb	r1, r2, #32
	lsr	r1, r0, r1
	lsl	ip, ip, r2
	orr	r8, r1, r3
	lsls	r4, r2
lab82: 	mov	r5, ip, lsr #16
	lsrs	r1, r4, #16
	udiv	lr, r8, r5
	uxth	r7, ip
	mls	r3, r5, lr, r8
	orr	r3, r1, r3, lsl #16
	mul	r1, lr, r7
	cmp	r1, r3
	bls	lab83
	adds	r3, ip, r3
	add	r0, lr, #4294967295	
	bcs	lab84
	cmp	r1, r3
	bls	lab84
	sub	lr, lr, #2
	add	r3, ip
lab83: 	subs	r3, r3, r1
	uxth	r4, r4
	udiv	r0, r3, r5
	mls	r3, r5, r0, r3
	orr	r4, r4, r3, lsl #16
	mul	r7, r0, r7
	cmp	r7, r4
	bls	lab85
	adds	r4, ip, r4
	add	r3, r0, #4294967295	
	bcs	lab86
	cmp	r7, r4
	bls	lab86
	add	r4, ip
	subs	r0, #2
lab85: 	subs	r4, r4, r7
	orr	r0, r0, lr, lsl #16
	movs	r1, #0
lab101: 	cmp r6, #0
	beq lab87
	lsrs	r4, r2
	movs	r3, #0
	strd	r4, r3, [r6]
lab87:	nop
	push {r1, r2}
	ldr r1, =6862
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab80: 	cmp	r3, r1
	bls	lab88
	cmp	r6, #0
	beq	lab89
	movs	r1, #0
	strd	r0, r5, [r6]
	mov	r0, r1
	nop
	push {r1, r2}
	ldr r1, =7211
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab88: 	clz	r1, r3
	cmp	r1, #0
	bne	lab90
	cmp	r3, r5
	bcc	lab91
	cmp	r2, r0
	bhi	lab92
lab91: 	subs	r4, r0, r2
	sbc	r3, r5, r3
	movs	r0, #1
	mov	r8, r3
lab115: 	cmp	r6, #0
	beq	lab87
	strd	r4, r8, [r6]
	b	lab87
lab81: 	cmp r2, #0
	bne lab93
	udf	#255	
lab93: 	clz	r2, r2
	cmp	r2, #0
	bne	lab94
	sub	r5, r1, ip
	mov	r7, ip, lsr #16
	uxth	lr, ip
	movs	r1, #1
lab113: 	udiv	r3, r5, r7
	mls	r0, r7, r3, r5
	lsrs	r5, r4, #16
	orr	r5, r5, r0, lsl #16
	mul	r0, lr, r3
	cmp	r0, r5
	bls	lab95
	adds	r5, ip, r5
	add	r8, r3, #4294967295	
	bcs	lab96
	cmp	r0, r5
	bhi	lab97
lab96: 	mov	r3, r8
lab95: 	subs	r5, r5, r0
	uxth	r4, r4
	udiv	r0, r5, r7
	mls	r5, r7, r0, r5
	orr	r4, r4, r5, lsl #16
	mul	lr, lr, r0
	cmp	lr, r4
	bls	lab98
	adds	r4, ip, r4
	add	r5, r0, #4294967295	
	bcs	lab99
	cmp	lr, r4
	bhi	lab100
lab99: 	mov	r0, r5
lab98: 	sub	r4, r4, lr
	orr	r0, r0, r3, lsl #16
	b	lab101
lab90: 	rsb	r7, r1, #32
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
	bls	lab102
	adds	r5, ip, r5
	add	sl, r8, #4294967295	
	bcs	lab103
	cmp	r0, r5
	bls	lab103
	sub	r8, r8, #2
	add	r5, ip
lab102: 	subs	r5, r5, r0
	uxth	r4, r4
	udiv	r0, r5, r9
	mls	r5, r9, r0, r5
	orr	r5, r4, r5, lsl #16
	mul	lr, r0, lr
	cmp	lr, r5
	bls	lab104
	adds	r5, ip, r5
	add	r4, r0, #4294967295	
	bcs	lab105
	cmp	lr, r5
	bls	lab105
	subs	r0, #2
	add	r5, ip
lab104: 	orr	r0, r0, r8, lsl #16
	umull	r9, r4, r0, r2
	sub	r5, r5, lr
	cmp	r5, r4
	mov	r8, r9
	mov	lr, r4
	bcc	lab106
	beq	lab107
lab114: 	cmp r6, #0
	beq lab108
	subs	r2, r3, r8
	sbc	r5, r5, lr
	lsl	r7, r5, r7
	lsr	r3, r2, r1
	lsrs	r5, r1
	orrs	r7, r3
	strd	r7, r5, [r6]
lab108: 	movs	r1, #0
	nop
	push {r1, r2}
	ldr r1, =3598
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab94: 	rsb	r3, r2, #32
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
	bls	lab109
	adds	r3, ip, r3
	add	r8, r1, #4294967295	
	bcs	lab110
	cmp	r0, r3
	bls	lab110
	subs	r1, #2
	add	r3, ip
lab109: 	subs	r3, r3, r0
	uxth	r5, r5
	udiv	r0, r3, r7
	mls	r3, r7, r0, r3
	orr	r5, r5, r3, lsl #16
	mul	r3, r0, lr
	cmp	r3, r5
	bls	lab111
	adds	r5, ip, r5
	add	r8, r0, #4294967295	
	bcs	lab112
	cmp	r3, r5
	bls	lab112
	subs	r0, #2
	add	r5, ip
lab111: 	subs	r5, r5, r3
	orr	r1, r0, r1, lsl #16
	b	lab113
lab89: 	mov	r1, r6
	mov	r0, r6
	b	lab87
lab84: 	mov	lr, r0
	b	lab83
lab86: 	mov	r0, r3
	b	lab85
lab107: 	cmp	r3, r9
	bcs	lab114
lab106: 	subs	r8, r9, r2
	sbc	lr, r4, ip
	subs	r0, #1
	b	lab114
lab112: 	mov	r0, r8
	b	lab111
lab105: 	mov	r0, r4
	b	lab104
lab110: 	mov	r1, r8
	b	lab109
lab103: 	mov	r8, sl
	b	lab102
lab97: 	subs	r3, #2
	add	r5, ip
	b	lab95
lab92: 	mov	r0, r1
	b	lab115
lab100: 	add	r4, ip
	subs	r0, #2
	b	lab98
__aeabi_idiv0:
	bx	lr
	nop
__assert_func:
	push	{lr}
	ldr	r4, =0x2000040c	
	ldr	r5, [r4, #0]
	mov	r4, r2
	ldr	r6, [r5, #12]
	mov	r2, r3
	sub	sp, #20
	mov	r3, r0
	mov	r5, r1
	cmp r4, #0
	beq lab116
	ldr	r1, =0x20000260	
lab117: 	str	r5, [sp, #0]
	strd	r1, r4, [sp, #4]
	mov	r0, r6
	ldr	r1, =0x20000270	
	bl	fiprintf
	push {r1, r2}
	ldr r1, =8049
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	abort
lab116: 	ldr	r1, =0x2000026c	
	mov	r4, r1
	b	lab117
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
	ldr r1, =1075
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =1075
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
	ldr	r4, =0x2000040c	
	ldr	r2, [r3], #4
	str	r3, [sp, #4]
	mov	r1, r0
	ldr	r0, [r4, #0]
push {r1, r2}
	ldr r1, =3335
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =3335
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	sp, #12
	ldmia	sp!, {r4, lr}
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =833
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
	nop
	.ltorg
memset:
	lsls	r3, r0, #30
	push	{r4, r5, lr}
	beq	lab118
	subs	r4, r2, #1
	cmp	r2, #0
	beq	lab119
	uxtb	r2, r1
	mov	r3, r0
	b	lab120
lab121: 	subs	r4, #1
	bcc	lab119
lab120: 	strb	r2, [r3], #1
	lsls	r5, r3, #30
	bne	lab121
lab129: 	cmp	r4, #3
	bls	lab122
	uxtb	r5, r1
	orr	r5, r5, r5, lsl #8
	cmp	r4, #15
	orr	r5, r5, r5, lsl #16
	bls	lab123
	sub	r2, r4, #16
	bic	ip, r2, #15
	add	lr, r3, #32
	add	lr, ip
	mov	ip, r2, lsr #4
	add	r2, r3, #16
lab124: 	strd	r5, r5, [r2, #-16]
	strd	r5, r5, [r2, #-8]
	adds	r2, #16
	cmp	r2, lr
	bne	lab124
	add	r2, ip, #1
	tst	r4, #12
	add	r2, r3, r2, lsl #4
	and	ip, r4, #15
	beq	lab125
lab130: 	sub	r3, ip, #4
	bic	r3, r3, #3
	adds	r3, #4
	add	r3, r2
lab126: 	str	r5, [r2], #4
	cmp	r3, r2
	bne	lab126
	and	r4, ip, #3
lab122: 	cmp r4, #0
	beq lab119
lab128: 	uxtb	r2, r1
	add	r4, r3
lab127: 	strb	r2, [r3], #1
	cmp	r4, r3
	bne	lab127
lab119:	nop
	push {r1, r2}
	ldr r1, =6143
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, pc}
lab125: 	mov	r4, ip
	mov	r3, r2
	cmp	r4, #0
	bne	lab128
	b	lab119
lab118: 	mov	r3, r0
	mov	r4, r2
	b	lab129
lab123: 	mov	r2, r3
	mov	ip, r4
	b	lab130
__sprint_r.part.0:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, [r1, #100]	
	lsls	r4, r3, #18
	mov	r8, r2
	bpl	lab131
	ldr	r3, [r2, #8]
	ldr	r2, [r2, #0]
	cmp r3, #0
	beq lab132
	mov	fp, r1
	mov	r6, r0
	add	r9, r2, #8
lab137: 	ldrd	r5, sl, [r9, #-8]
	movs	r7, sl, lsr #2
	beq	lab133
	subs	r5, #4
	movs	r4, #0
	b	lab134
lab136: 	cmp	r7, r4
	beq	lab135
lab134: 	ldr	r1, [r5, #4]!
	mov	r2, fp
	mov	r0, r6
	bl	_fputwc_r
	push {r1, r2}
	ldr r1, =5489
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	add	r4, r4, #1
	bne	lab136
lab138: 	movs	r3, #0
	strd	r3, r3, [r8, #4]
	nop
	push {r1, r2}
	ldr r1, =1247
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab135: 	ldr	r3, [r8, #8]
lab133: 	bic	sl, sl, #3
	sub	r3, r3, sl
	str	r3, [r8, #8]
	add	r9, r9, #8
	cmp	r3, #0
	bne	lab137
lab132: 	movs	r0, #0
	b	lab138
lab131: 	bl	__sfvwrite_r
	push {r1, r2}
	ldr r1, =4578
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	strd	r3, r3, [r8, #4]
	nop
	push {r1, r2}
	ldr r1, =2609
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
	nop
__sprint_r:
	push	{r4}
	ldr	r4, [r2, #8]
	cmp r4, #0
	beq lab139
	pop	{r4}
	b	__sprint_r.part.0
lab139: 	mov	r0, r4
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
	beq lab140
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab141
lab140: 	ldr	r2, [sp, #4]
	ldr	r3, [r2, #100]	
	lsls	r6, r3, #31
	bpl	lab142
	ldrsh	r1, [r2, #12]
	uxth	r2, r1
lab181: 	lsls	r0, r2, #18
	bmi	lab143
	orr	r2, r1, #8192	
	ldr	r1, [sp, #4]
	ldr	r3, [r1, #100]	
	strh	r2, [r1, #12]
	bic	r3, r3, #8192	
	uxth	r2, r2
	str	r3, [r1, #100]	
lab143: 	lsls	r1, r2, #28
	bpl	lab144
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	lab144
	and	r3, r2, #26
	cmp	r3, #10
	beq	lab145
lab163: 	add	r3, sp, #76	
	str	r3, [sp, #64]	
	movs	r3, #0
	strd	r3, r3, [sp, #68]	
	strd	r3, r3, [sp, #40]	
	str	r3, [sp, #32]
	add	r9, sp, #76	
	str	r3, [sp, #36]	
	str	r3, [sp, #12]
lab196: 	ldrb	r3, [r7, #0]
	cmp	r3, #0
	beq	lab146
	mov	r4, r7
	b	lab147
lab149: 	ldrb	r3, [r4, #1]!
	cmp	r3, #0
	beq	lab148
lab147: 	cmp	r3, #37	
	bne	lab149
	subs	r5, r4, r7
	bne	lab150
lab174: 	ldrb	r3, [r4, #0]
	cmp	r3, #0
	beq	lab146
	mov	r3, #0
	movs	r5, #0
	strb	r3, [sp, #59]	
	adds	r7, r4, #1
	ldrb	r3, [r4, #1]
	str	r5, [sp, #8]
	mov	fp, #4294967295	
	movs	r4, #43	
lab155: 	adds	r7, #1
lab153: 	sub	r2, r3, #32
	cmp	r2, #90	
	bhi	lab151
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
lab152: 	ldrb	r3, [r7], #1
	add	r1, r1, r1, lsl #2
	add	r1, r2, r1, lsl #1
	sub	r2, r3, #48	
	cmp	r2, #9
	bls	lab152
	str	r1, [sp, #8]
	b	lab153
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
	bne	lab154
lab214: 	ldrb	r3, [r7, #0]
	b	lab155
	ldrb	r3, [r7, #0]
	orr	r5, r5, #32
	b	lab155
	orr	r5, r5, #16
	lsls	r4, r5, #26
	ldr	r6, [sp, #16]
	bpl	lab156
	adds	r6, #7
	bic	r6, r6, #7
	mov	r2, r6
	ldr	r3, [r6, #4]
	ldr	r6, [r2], #8
	str	r2, [sp, #16]
	mov	r8, r3
lab203: 	cmp	r3, #0
	blt	lab157
	cmp	fp, #4294967295	
	beq	lab158
	orrs	r3, r6, r8
	bic	sl, r5, #128	
	beq	lab159
lab217: 	cmp	r6, #10
	sbcs	r3, r8, #0
	bcs	lab160
lab258: 	adds	r6, #48	
	movs	r3, #1
	strb	r6, [sp, #239]	
	mov	r5, sl
	str	r3, [sp, #0]
	add	r4, sp, #239	
lab172: 	ldr	r8, [sp]
	ldrb	r3, [sp, #59]	
	cmp	r8, fp
	it	lt
	movlt	r8, fp
	cmp	r3, #0
	beq	lab161
	add	r8, r8, #1
	b	lab161
lab144: 	ldr	r5, [sp, #4]
	ldr	r0, [sp, #20]
	mov	r1, r5
push {r1, r2}
	ldr r1, =6948
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =6948
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab162
	ldrh	r2, [r5, #12]
	and	r3, r2, #26
	cmp	r3, #10
	bne	lab163
lab145: 	ldr	r1, [sp, #4]
	ldrsh	r3, [r1, #14]
	cmp	r3, #0
	blt	lab163
	ldr	r3, [r1, #100]	
	lsls	r6, r3, #31
	bmi	lab164
	lsls	r5, r2, #22
	bpl	lab165
lab164: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	mov	r3, r4
	mov	r2, r7
	add	sp, #244	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	__sbprintf
	orr	r5, r5, #16
	ands	r8, r5, #32
	beq	lab166
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r3, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r3], #8
	str	r3, [sp, #16]
lab200: 	bic	sl, r5, #1024	
	movs	r3, #0
lab210: 	mov	r2, #0
	strb	r2, [sp, #59]	
lab261: 	cmp	fp, #4294967295	
	beq	lab167
	orrs	r2, r6, r8
	bic	r5, sl, #128	
	bne	lab168
	cmp	fp, #0
	bne	lab169
	cmp	r3, #0
	bne	lab170
	ands	r3, sl, #1
	str	r3, [sp, #0]
	beq	lab171
	movs	r3, #48	
	strb	r3, [sp, #239]	
	add	r4, sp, #239	
	b	lab172
lab148: 	subs	r5, r4, r7
	beq	lab146
lab150: 	ldr	r3, [sp, #68]	
	ldr	r2, [sp, #72]	
	adds	r3, #1
	add	r2, r5
	cmp	r3, #7
	strd	r7, r5, [r9]
	str	r2, [sp, #72]	
	str	r3, [sp, #68]	
	bgt	lab173
	add	r9, r9, #8
lab177: 	ldr	r3, [sp, #12]
	add	r3, r5
	str	r3, [sp, #12]
	b	lab174
lab173: 	cmp	r2, #0
	beq	lab175
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =917
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =917
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab176
	add	r9, sp, #76	
	b	lab177
lab146: 	ldr	r3, [sp, #72]	
	cmp	r3, #0
	bne	lab178
lab283: 	movs	r3, #0
	str	r3, [sp, #68]	
lab176: 	ldr	r2, [sp, #4]
	ldr	r3, [r2, #100]	
	lsls	r1, r3, #31
	bpl	lab179
	ldrh	r3, [r2, #12]
lab197: 	lsls	r3, r3, #25
	bmi	lab180
lab285: 	ldr	r0, [sp, #12]
	add	sp, #244	
	nop
	push {r1, r2}
	ldr r1, =4697
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab142: 	ldr	r3, [sp, #4]
	ldrsh	r1, [r3, #12]
	lsls	r5, r1, #22
	uxth	r2, r1
	bmi	lab181
	mov	r5, r3
	ldr	r0, [r3, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r1, [r5, #12]
	uxth	r2, r1
	b	lab181
lab151: 	cmp	r3, #0
	beq	lab146
	strb	r3, [sp, #140]	
	mov	r8, #1
	mov	r3, #0
	strb	r3, [sp, #59]	
	str	r8, [sp]
	add	r4, sp, #140	
lab207: 	mov	fp, #0
lab161: 	ands	r3, r5, #2
	str	r3, [sp, #24]
	it	ne
	addne	r8, r8, #2
	ands	r3, r5, #132	
	str	r3, [sp, #28]
	bne	lab182
	ldr	r3, [sp, #8]
	sub	r6, r3, r8
	cmp	r6, #0
	bgt	lab183
lab182: 	ldrd	r2, r1, [sp, #68]	
	adds	r0, r2, #1
lab247: 	ldrb	r6, [sp, #59]	
	cmp r6, #0
	beq lab184
	add	r2, sp, #59	
	adds	r1, #1
	str	r2, [r9]
	cmp	r0, #7
	mov	r2, #1
	strd	r0, r1, [sp, #68]	
	str	r2, [r9, #4]
	bgt	lab185
lab270: 	mov	r2, r0
	add	r9, r9, #8
	adds	r0, #1
lab184: 	ldr	r3, [sp, #24]
	cmp r3, #0
	beq lab186
	add	r3, sp, #60	
	adds	r1, #2
	str	r3, [r9]
	cmp	r0, #7
	mov	r3, #2
	strd	r0, r1, [sp, #68]	
	str	r3, [r9, #4]
	ble	lab187
	cmp	r1, #0
	beq	lab188
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =4325
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =4325
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab176
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
lab186: 	ldr	r3, [sp, #28]
	cmp	r3, #128	
	beq	lab189
lab222: 	ldr	r3, [sp, #0]
	sub	r6, fp, r3
	cmp	r6, #0
	bgt	lab190
lab230: 	ldr	r3, [sp, #0]
	str	r4, [r9]
	add	r1, r3
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	r3, [r9, #4]
	ble	lab191
	cmp	r1, #0
	beq	lab192
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =2054
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =2054
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab176
	ldr	r1, [sp, #72]	
	add	r9, sp, #76	
lab221: 	lsls	r0, r5, #29
	bpl	lab193
	ldr	r3, [sp, #8]
	sub	r4, r3, r8
	cmp	r4, #0
	bgt	lab194
lab193: 	ldrd	r2, r3, [sp, #8]
	cmp	r2, r8
	ite	ge
	addge	r3, r3, r2
	addlt	r3, r8
	str	r3, [sp, #12]
	cmp	r1, #0
	bne	lab195
lab238: 	movs	r3, #0
	str	r3, [sp, #68]	
	add	r9, sp, #76	
	b	lab196
lab179: 	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #12]
	lsls	r2, r3, #22
	bmi	lab197
	ldr	r4, [sp, #4]
	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	ldrh	r3, [r4, #12]
	b	lab197
lab166: 	ands	r3, r5, #16
	bne	lab198
	ands	r2, r5, #64	
	beq	lab199
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	mov	r8, r3
	uxth	r6, r6
	b	lab200
lab156: 	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	lsls	r0, r5, #27
	bmi	lab201
	lsls	r1, r5, #25
	bpl	lab202
	sbfx	r8, r3, #15, #1
	sxth	r6, r3
	mov	r3, r8
	b	lab203
	ldr	r6, [sp, #16]
	ldr	r4, [r6], #4
	mov	r3, #0
	strb	r3, [sp, #59]	
	cmp	r4, #0
	beq	lab204
	cmp	fp, #4294967295	
	beq	lab205
	mov	r2, fp
	movs	r1, #0
	mov	r0, r4
	bl	memchr
	cmp	r0, #0
	beq	lab206
	subs	r3, r0, r4
	str	r3, [sp, #0]
	str	r6, [sp, #16]
	mov	fp, #0
	b	lab172
	ldr	r6, [sp, #16]
	mov	r3, #0
	strb	r3, [sp, #59]	
	mov	r8, #1
	ldr	r3, [r6], #4
	strb	r3, [sp, #140]	
	str	r6, [sp, #16]
	str	r8, [sp]
	add	r4, sp, #140	
	b	lab207
lab141: 	bl	__sinit
	b	lab140
	ldr	r3, [sp, #16]
	ldr	r2, [r3], #4
	str	r2, [sp, #8]
	cmp	r2, #0
	bge	lab208
	ldr	r2, [sp, #8]
	str	r3, [sp, #16]
	negs	r2, r2
	str	r2, [sp, #8]
	ldrb	r3, [r7, #0]
	orr	r5, r5, #4
	b	lab155
	ldrb	r3, [r7, #0]
	cmp	r3, #108	
	ittte	eq
	ldrbeq	r3, [r7, #1]
	orreq	r5, r5, #32
	addeq	r7, #1
	orrne	r5, r5, #16
	b	lab155
	ldrb	r3, [r7, #0]
	cmp	r3, #104	
	ittte	eq
	ldrbeq	r3, [r7, #1]
	orreq	r5, r5, #512	
	addeq	r7, #1
	orrne	r5, r5, #64	
	b	lab155
	orr	sl, r5, #16
lab267: 	ands	r8, sl, #32
	beq	lab209
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r3, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r3], #8
	str	r3, [sp, #16]
	movs	r3, #1
	b	lab210
	ldrb	r3, [r7, #0]
	strb	r4, [sp, #59]	
	b	lab155
	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	movs	r3, #48	
	strb	r3, [sp, #60]	
	movs	r3, #120	
	strb	r3, [sp, #61]	
	ldr	r3, =0x200002b8	
	str	r3, [sp, #32]
	orr	sl, r5, #2
	mov	r8, #0
	movs	r3, #2
	b	lab210
	lsls	r6, r5, #26
	bmi	lab211
	lsls	r4, r5, #27
	bmi	lab212
	lsls	r0, r5, #25
	bmi	lab213
	lsls	r1, r5, #22
	bpl	lab212
	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	strb	r2, [r3, #0]
	b	lab196
	ldrb	r3, [r7, #0]
	orr	r5, r5, #1
	b	lab155
	ldrb	r3, [sp, #59]	
	cmp	r3, #0
	bne	lab214
	movs	r3, #32
	strb	r3, [sp, #59]	
	ldrb	r3, [r7, #0]
	b	lab155
	ldrb	r3, [r7, #0]
	orr	r5, r5, #128	
	b	lab155
	mov	r1, r7
	ldrb	r3, [r1], #1
	cmp	r3, #42	
	beq	lab215
	sub	r2, r3, #48	
	cmp	r2, #9
	mov	r7, r1
	mov	fp, #0
	bhi	lab153
lab216: 	ldrb	r3, [r7], #1
	add	fp, fp, fp, lsl #2
	add	fp, r2, fp, lsl #1
	sub	r2, r3, #48	
	cmp	r2, #9
	bls	lab216
	b	lab153
lab168: 	mov	sl, r5
lab167: 	cmp	r3, #1
	beq	lab217
lab278: 	cmp	r3, #2
	add	r4, sp, #240	
	bne	lab218
	ldr	r2, [sp, #32]
lab219: 	and	r3, r6, #15
	lsrs	r6, r6, #4
	ldrb	r3, [r2, r3]
	strb	r3, [r4, #-1]!
	orr	r6, r6, r8, lsl #28
	mov	r8, r8, lsr #4
	orrs	r3, r6, r8
	bne	lab219
lab220: 	add	r3, sp, #240	
	subs	r3, r3, r4
	mov	r5, sl
	str	r3, [sp, #0]
	b	lab172
lab218: 	and	r3, r6, #7
	lsrs	r6, r6, #3
	orr	r6, r6, r8, lsl #29
	mov	r8, r8, lsr #3
	adds	r3, #48	
	orrs	r1, r6, r8
	mov	r2, r4
	strb	r3, [r4, #-1]!
	bne	lab218
	tst	sl, #1
	beq	lab220
	cmp	r3, #48	
	beq	lab220
	movs	r3, #48	
	subs	r2, #2
	strb	r3, [r4, #-1]
	add	r3, sp, #240	
	subs	r3, r3, r2
	mov	r5, sl
	str	r3, [sp, #0]
	mov	r4, r2
	b	lab172
lab256: 	ldr	r1, [sp, #0]
	str	r4, [sp, #76]	
	movs	r3, #1
	str	r1, [sp, #80]	
	str	r1, [sp, #72]	
	str	r3, [sp, #68]	
	add	r9, sp, #76	
lab191: 	add	r9, r9, #8
	b	lab221
lab189: 	ldr	r3, [sp, #8]
	sub	r6, r3, r8
	cmp	r6, #0
	ble	lab222
	cmp	r6, #16
	ble	lab223
	ldr	sl, =0x200002e4	
	mov	r3, sl
	strd	fp, r4, [sp, #24]
	mov	sl, r7
	ldr	fp, [sp, #20]
	ldr	r4, [sp, #4]
	mov	r7, r5
	mov	r5, r3
	b	lab224
lab226: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab239: 	subs	r6, #16
	cmp	r6, #16
	ble	lab225
lab224: 	adds	r0, r2, #1
	adds	r1, #16
	movs	r3, #16
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	r5, [r9]
	str	r3, [r9, #4]
	ble	lab226
	add	r2, sp, #64	
	cmp	r1, #0
	beq	lab227
	mov	r1, r4
	mov	r0, fp
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =5518
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =5518
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab176
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	bgt	lab224
lab225: 	ldrd	fp, r4, [sp, #24]
	mov	r3, r5
	mov	r5, r7
	mov	r7, sl
	mov	sl, r3
lab286: 	add	r1, r6
	cmp	ip, #7
	strd	ip, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	ble	lab228
	cmp	r1, #0
	beq	lab229
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =5776
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =5776
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab176
	ldr	r3, [sp, #0]
	ldrd	r2, r1, [sp, #68]	
	sub	r6, fp, r3
	cmp	r6, #0
	add	r0, r2, #1
	add	r9, sp, #76	
	ble	lab230
lab190: 	cmp	r6, #16
	ldr	sl, =0x200002e4	
	ble	lab231
	mov	r3, sl
	strd	r4, r5, [sp, #24]
	mov	sl, r7
	ldr	r4, [sp, #20]
	ldr	r5, [sp, #4]
	mov	fp, #16
	mov	r7, r3
	b	lab232
lab234: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab237: 	subs	r6, #16
	cmp	r6, #16
	ble	lab233
lab232: 	adds	r0, r2, #1
	adds	r1, #16
	cmp	r0, #7
	strd	r7, fp, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab234
	add	r2, sp, #64	
	cmp r1, #0
	beq lab235
	mov	r1, r5
	mov	r0, r4
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =1756
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =1756
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab176
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	bgt	lab232
lab233: 	ldrd	r4, r5, [sp, #24]
	mov	r3, r7
	mov	r0, ip
	mov	r7, sl
	mov	sl, r3
lab231: 	add	r1, r6
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	bgt	lab236
	add	r9, r9, #8
	adds	r0, #1
	b	lab230
lab235: 	mov	ip, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab237
lab195: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =3537
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =3537
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab238
	b	lab176
lab227: 	mov	ip, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab239
lab185: 	cmp	r1, #0
	beq	lab240
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =2771
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =2771
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab176
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
	b	lab184
lab281: 	movs	r1, #2
	add	r3, sp, #60	
	str	r1, [sp, #80]	
	str	r3, [sp, #76]	
	movs	r0, #1
	add	r9, sp, #76	
lab187: 	mov	r2, r0
lab264: 	add	r9, r9, #8
	adds	r0, r2, #1
	b	lab186
lab183: 	cmp	r6, #16
	ble	lab241
	ldrd	ip, r1, [sp, #68]	
	ldr	sl, =0x200002d4	
	strd	fp, r4, [sp, #48]	
	movs	r3, #16
	mov	r4, sl
	ldr	fp, [sp, #4]
	ldr	sl, [sp, #20]
	mov	r2, ip
	b	lab242
	.ltorg
lab244: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab248: 	subs	r6, #16
	cmp	r6, #16
	ble	lab243
lab242: 	adds	r0, r2, #1
	adds	r1, #16
	cmp	r0, #7
	strd	r4, r3, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab244
	add	r2, sp, #64	
	cmp r1, #0
	beq lab245
	mov	r1, fp
	mov	r0, sl
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =6792
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =6792
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab176
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	mov	r3, #16
	bgt	lab242
lab243: 	mov	sl, r4
	ldr	fp, [sp, #48]	
	ldr	r4, [sp, #52]	
	mov	r2, ip
lab282: 	add	r1, r6
	cmp	r2, #7
	strd	r2, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	bgt	lab246
	add	r9, r9, #8
	adds	r0, r2, #1
	b	lab247
lab245: 	mov	r2, r1
	mov	ip, #1
	add	r9, sp, #76	
	b	lab248
lab192: 	lsls	r4, r5, #29
	str	r1, [sp, #68]	
	bpl	lab249
	ldr	r3, [sp, #8]
	sub	r4, r3, r8
	cmp	r4, #0
	ble	lab249
	add	r9, sp, #76	
lab194: 	cmp	r4, #16
	ble	lab250
	ldr	sl, =0x200002d4	
	ldr	r2, [sp, #68]	
	ldr	r6, [sp, #20]
	ldr	fp, [sp, #4]
	mov	r3, sl
	movs	r5, #16
	mov	sl, r7
	mov	r7, r3
	b	lab251
lab253: 	adds	r0, r2, #2
	add	r9, r9, #8
	mov	r2, r3
lab255: 	subs	r4, #16
	cmp	r4, #16
	ble	lab252
lab251: 	adds	r3, r2, #1
	adds	r1, #16
	cmp	r3, #7
	strd	r7, r5, [r9]
	strd	r3, r1, [sp, #68]	
	ble	lab253
	add	r2, sp, #64	
	cmp r1, #0
	beq lab254
	mov	r1, fp
	mov	r0, r6
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
	bne	lab176
	ldrd	r2, r1, [sp, #68]	
	subs	r4, #16
	cmp	r4, #16
	add	r0, r2, #1
	add	r9, sp, #76	
	bgt	lab251
lab252: 	mov	r3, r7
	mov	r7, sl
	mov	sl, r3
lab284: 	add	r1, r4
	cmp	r0, #7
	strd	sl, r4, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab193
	cmp r1, #0
	beq lab249
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =7016
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =7016
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab176
	ldr	r1, [sp, #72]	
	b	lab193
lab254: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab255
lab249: 	ldrd	r2, r3, [sp, #8]
	cmp	r2, r8
	ite	ge
	addge	r3, r3, r2
	addlt	r3, r8
	str	r3, [sp, #12]
	b	lab238
lab236: 	cmp	r1, #0
	beq	lab256
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =7507
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =7507
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab176
	ldr	r0, [sp, #68]	
	ldr	r1, [sp, #72]	
	adds	r0, #1
	add	r9, sp, #76	
	b	lab230
lab240: 	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	lab257
lab188: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab186
lab175: 	str	r2, [sp, #68]	
	add	r9, sp, #76	
	b	lab177
lab159: 	cmp	fp, #0
	bne	lab258
	mov	r5, sl
lab170: 	mov	fp, #0
	str	fp, [sp]
	add	r4, sp, #240	
	b	lab172
lab209: 	ands	r3, sl, #16
	bne	lab259
	ands	r2, sl, #64	
	beq	lab260
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	mov	r8, r3
	uxth	r6, r6
	movs	r3, #1
	b	lab210
lab157: 	movs	r3, #45	
	negs	r6, r6
	strb	r3, [sp, #59]	
	sbc	r8, r8, r8, lsl #1
	mov	sl, r5
	movs	r3, #1
	b	lab261
lab246: 	cmp	r1, #0
	beq	lab262
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =1412
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =1412
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab176
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
	b	lab247
lab208: 	str	r3, [sp, #16]
	ldrb	r3, [r7, #0]
	b	lab155
lab171: 	add	r4, sp, #240	
	b	lab172
lab228: 	add	r9, r9, #8
	add	r0, ip, #1
	mov	r2, ip
	b	lab222
lab202: 	lsls	r2, r5, #22
	bmi	lab263
lab201: 	mov	r8, r3, asr #31
	mov	r6, r3
	mov	r3, r8
	b	lab203
lab259: 	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	movs	r3, #1
	b	lab210
lab154: 	ldr	r3, [sp, #36]	
	cmp	r3, #0
	beq	lab214
	ldr	r3, [sp, #36]	
	ldrb	r3, [r3, #0]
	cmp	r3, #0
	beq	lab214
	ldrb	r3, [r7, #0]
	orr	r5, r5, #1024	
	b	lab155
lab211: 	ldrd	r1, r6, [sp, #12]
	ldr	r2, [r6], #4
	str	r6, [sp, #16]
	asrs	r3, r1, #31
	strd	r1, r3, [r2]
	b	lab196
lab198: 	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	b	lab200
lab257: 	movs	r1, #2
	add	r3, sp, #60	
	str	r1, [sp, #80]	
	str	r3, [sp, #76]	
	add	r9, sp, #76	
	b	lab264
	ldr	r2, =0x200002a4	
	str	r2, [sp, #32]
lab268: 	ands	r8, r5, #32
	beq	lab265
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r2, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r2], #8
	str	r2, [sp, #16]
lab272: 	lsls	r2, r5, #31
	bpl	lab266
	orrs	r2, r6, r8
	beq	lab266
	strb	r3, [sp, #61]	
	movs	r3, #48	
	orr	r5, r5, #2
	strb	r3, [sp, #60]	
lab266: 	bic	sl, r5, #1024	
	movs	r3, #2
	b	lab210
	mov	sl, r5
	b	lab267
	ldr	r2, =0x200002b8	
	str	r2, [sp, #32]
	b	lab268
lab205: 	mov	r0, r4
	str	r6, [sp, #16]
	bl	strlen
	mov	fp, #0
	str	r0, [sp, #0]
	b	lab172
lab262: 	ldrb	r2, [sp, #59]	
	cmp	r2, #0
	beq	lab269
	movs	r0, #1
	add	r2, sp, #59	
	str	r0, [sp, #80]	
	str	r2, [sp, #76]	
	add	r9, sp, #76	
	mov	r1, r0
	b	lab270
lab265: 	ands	r2, r5, #16
	beq	lab271
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	b	lab272
lab160: 	and	r3, sl, #1024	
	str	fp, [sp]
	str	r9, [sp, #24]
	mov	fp, r7
	ldr	r9, [sp, #36]	
	movs	r5, #0
	add	r4, sp, #240	
	mov	r7, r3
	b	lab273
lab275: 	mov	r0, r6
	mov	r1, r8
push {r1, r2}
	ldr r1, =1086
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =1086
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r6, #10
	sbcs	r3, r8, #0
	bcc	lab274
lab280: 	mov	r6, r0
	mov	r8, r1
lab273: 	mov	r0, r6
	mov	r1, r8
	movs	r2, #10
	movs	r3, #0
push {r1, r2}
	ldr r1, =4139
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =4139
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
	beq	lab275
	ldrb	r1, [r9]
	cmp	r1, r5
	bne	lab275
	cmp	r5, #255	
	beq	lab275
	cmp	r6, #10
	sbcs	r3, r8, #0
	bcs	lab276
lab274: 	add	r3, sp, #240	
	subs	r3, r3, r4
	str	r9, [sp, #36]	
	mov	r7, fp
	ldr	r9, [sp, #24]
	ldr	fp, [sp]
	str	r3, [sp, #0]
	mov	r5, sl
	b	lab172
lab271: 	ands	r1, r5, #64	
	beq	lab277
	ldr	r1, [sp, #16]
	ldr	r6, [r1], #4
	str	r1, [sp, #16]
	mov	r8, r2
	uxth	r6, r6
	b	lab272
lab158: 	mov	sl, r5
	b	lab217
lab169: 	cmp	r3, #1
	mov	sl, r5
	bne	lab278
	b	lab258
	nop
	.ltorg
lab212: 	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r2, [r3, #0]
	str	r6, [sp, #16]
	b	lab196
lab204: 	cmp	fp, #6
	mov	r8, fp
	it	cs
	movcs	r8, #6
	ldr	r4, =0x200002cc	
	str	r8, [sp]
	str	r6, [sp, #16]
	b	lab207
lab260: 	ldr	r3, [sp, #16]
	ands	r8, sl, #512	
	ite	ne
	ldrne	r6, [r3], #4
	ldreq	r6, [r3], #4
	str	r3, [sp, #16]
	itt	ne
	movne	r8, r2
	uxtbne	r6, r6
	movs	r3, #1
	b	lab210
lab199: 	ldr	r3, [sp, #16]
	ands	r8, r5, #512	
	ite	ne
	ldrne	r6, [r3], #4
	ldreq	r6, [r3], #4
	str	r3, [sp, #16]
	itt	ne
	movne	r8, r2
	uxtbne	r6, r6
	b	lab200
lab277: 	ldr	r2, [sp, #16]
	ands	r8, r5, #512	
	ite	ne
	ldrne	r6, [r2], #4
	ldreq	r6, [r2], #4
	str	r2, [sp, #16]
	itt	ne
	movne	r8, r1
	uxtbne	r6, r6
	b	lab272
lab276: 	ldr	r3, [sp, #44]	
	ldr	r1, [sp, #40]	
	subs	r4, r4, r3
	mov	r2, r3
	mov	r0, r4
	bl	strncpy
	push {r1, r2}
	ldr r1, =4151
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r3, [r9, #1]
	cmp r3, #0
	beq lab279
	add	r9, r9, #1
lab279: 	mov	r0, r6
	mov	r1, r8
	movs	r2, #10
	movs	r3, #0
	movs	r5, #0
push {r1, r2}
	ldr r1, =4919
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =4919
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab280
lab229: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab222
lab269: 	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	lab281
	mov	r2, r1
	movs	r0, #1
	add	r9, sp, #76	
	b	lab222
lab213: 	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	strh	r2, [r3, #0]
	b	lab196
lab263: 	sbfx	r8, r3, #7, #1
	sxtb	r6, r3
	mov	r3, r8
	b	lab203
lab165: 	ldr	r0, [r1, #88]	
	bl	__retarget_lock_release_recursive
	b	lab164
lab206: 	str	fp, [sp]
	str	r6, [sp, #16]
	mov	fp, r0
	b	lab172
lab241: 	ldr	r2, [sp, #68]	
	ldr	r1, [sp, #72]	
	ldr	sl, =0x200002d4	
	adds	r2, #1
	b	lab282
lab178: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =6428
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =6428
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab283
	b	lab176
lab250: 	ldr	r0, [sp, #68]	
	ldr	sl, =0x200002d4	
	adds	r0, #1
	b	lab284
lab162: 	ldr	r3, [sp, #4]
	ldr	r3, [r3, #100]	
	lsls	r3, r3, #31
	bmi	lab180
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #12]
	lsls	r7, r3, #22
	bmi	lab180
	ldr	r3, [sp, #4]
	ldr	r0, [r3, #88]	
	bl	__retarget_lock_release_recursive
lab180: 	mov	r3, #4294967295	
	str	r3, [sp, #12]
	b	lab285
lab223: 	ldr	sl, =0x200002e4	
	mov	ip, r0
	b	lab286
lab215: 	ldr	r2, [sp, #16]
	ldrb	r3, [r7, #1]
	mov	r7, r1
	ldr	r1, [r2], #4
	str	r2, [sp, #16]
	orr	fp, r1, r1, asr #31
	b	lab155
	nop
	.ltorg
vfiprintf:
	push	{r4}
	ldr	r4, =0x2000040c	
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
	ldr r1, =7727
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =7727
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r5, r0, #0
	blt	lab287
	mov	r1, sp
	mov	r0, r6
push {r1, r2}
	ldr r1, =4035
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =4035
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	it	ne
	movne	r5, #4294967295	
lab287: 	ldrh	r3, [sp, #12]
	lsls	r3, r3, #25
	bpl	lab288
	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
lab288: 	ldr	r0, [sp, #88]	
	bl	__retarget_lock_close_recursive
	mov	r0, r5
	addw	sp, sp, #1132	
	nop
	push {r1, r2}
	ldr r1, =6527
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
__swsetup_r:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x2000040c	
	ldr	r3, [r3, #0]
	mov	r5, r0
	mov	r4, r1
	cmp r3, #0
	beq lab289
	ldr	r2, [r3, #56]	
	cmp r2, #0
	beq lab290
lab289: 	ldrsh	r3, [r4, #12]
	lsls	r0, r3, #28
	uxth	r2, r3
	bpl	lab291
lab297: 	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	lab292
lab300: 	ands	r0, r2, #1
	beq	lab293
	movs	r0, #0
	str	r0, [r4, #8]
	ldr	r0, [r4, #20]
	negs	r0, r0
	str	r0, [r4, #24]
	cmp r1, #0
	beq lab294
lab295: 	movs	r0, #0
lab296:	nop
	push {r1, r2}
	ldr r1, =4895
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab293: 	lsls	r5, r2, #30
	it	pl
	ldrpl	r0, [r4, #20]
	str	r0, [r4, #8]
	cmp	r1, #0
	bne	lab295
lab294: 	lsls	r2, r2, #24
	it	pl
	movpl	r0, r1
	bpl	lab296
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	mov	r0, #4294967295	
	nop
	push {r1, r2}
	ldr r1, =5053
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab290: 	mov	r0, r3
	bl	__sinit
	ldrsh	r3, [r4, #12]
	lsls	r0, r3, #28
	uxth	r2, r3
	bmi	lab297
lab291: 	lsls	r1, r2, #27
	bpl	lab298
	lsls	r2, r2, #29
	bmi	lab299
	ldr	r1, [r4, #16]
lab303: 	orr	r3, r3, #8
	strh	r3, [r4, #12]
	uxth	r2, r3
	cmp	r1, #0
	bne	lab300
lab292: 	and	r0, r2, #640	
	cmp	r0, #512	
	beq	lab300
	mov	r1, r4
	mov	r0, r5
	bl	__smakebuf_r
	push {r1, r2}
	ldr r1, =1757
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	ldr	r1, [r4, #16]
	uxth	r2, r3
	b	lab300
lab299: 	ldr	r1, [r4, #48]	
	cmp r1, #0
	beq lab301
	add	r2, r4, #64	
	cmp	r1, r2
	beq	lab302
	mov	r0, r5
push {r1, r2}
	ldr r1, =2935
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =2935
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
lab302: 	movs	r2, #0
	str	r2, [r4, #48]	
lab301: 	ldr	r1, [r4, #16]
	movs	r2, #0
	strd	r1, r2, [r4]
	bic	r3, r3, #36	
	b	lab303
lab298: 	movs	r2, #9
	orr	r3, r3, #64	
	str	r2, [r5, #0]
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =1607
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
	ldr r1, =6771
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
	bmi	lab304
	ldr	r3, [r4, #4]
	orr	r2, r2, #2048	
	cmp	r3, #0
	strh	r2, [r4, #12]
	ble	lab305
lab317: 	ldr	r5, [r4, #40]	
	cmp	r5, #0
	beq	lab306
	movs	r3, #0
	ldr	r6, [r7, #0]
	str	r3, [r7, #0]
	uxth	r3, r2
	ands	r2, r2, #4096	
	bne	lab307
	ldr	r1, [r4, #28]
	movs	r3, #1
	mov	r0, r7
	blx	r5
	adds	r2, r0, #1
	beq	lab308
lab320: 	ldrh	r3, [r4, #12]
	ldr	r5, [r4, #40]	
lab318: 	lsls	r3, r3, #29
	bpl	lab309
	ldr	r3, [r4, #4]
	subs	r0, r0, r3
	ldr	r3, [r4, #48]	
	cmp r3, #0
	beq lab309
	ldr	r3, [r4, #60]	
	subs	r0, r0, r3
lab309: 	ldr	r1, [r4, #28]
	mov	r2, r0
	movs	r3, #0
	mov	r0, r7
	blx	r5
	adds	r1, r0, #1
	bne	lab310
	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	lab310
	cmp	r3, #29
	beq	lab311
	cmp	r3, #22
	bne	lab312
lab311: 	ldrh	r3, [r4, #12]
	ldr	r2, [r4, #16]
	str	r2, [r4, #0]
	bic	r3, r3, #2048	
	movs	r1, #0
	str	r1, [r4, #4]
	strh	r3, [r4, #12]
lab319: 	ldr	r1, [r4, #48]	
	str	r6, [r7, #0]
	cmp r1, #0
	beq lab306
	add	r3, r4, #64	
	cmp	r1, r3
	beq	lab313
	mov	r0, r7
push {r1, r2}
	ldr r1, =1098
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab313:	push {r1, r2}
	ldr r1, =1098
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	movs	r0, #0
	str	r0, [r4, #48]	
	nop
	push {r1, r2}
	ldr r1, =7459
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab304: 	ldr	r6, [r4, #16]
	cmp r6, #0
	beq lab306
	uxth	r3, r2
	ldr	r5, [r4, #0]
	str	r6, [r4, #0]
	lsls	r2, r3, #30
	ite	eq
	ldreq	r3, [r4, #20]
	movne	r3, #0
	subs	r5, r5, r6
	str	r3, [r4, #8]
	b	lab314
lab316: 	ldr	ip, [r4, #36]	
	ldr	r1, [r4, #28]
	mov	r3, r5
	mov	r2, r6
	mov	r0, r7
	blx	ip
	subs	ip, r0, #0
	sub	r5, r5, ip
	add	r6, ip
	ble	lab315
lab314: 	cmp	r5, #0
	bgt	lab316
lab306: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =6337
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab305: 	ldr	r3, [r4, #60]	
	cmp	r3, #0
	bgt	lab317
	b	lab306
lab307: 	ldr	r0, [r4, #80]	
	b	lab318
lab310: 	ldrsh	r3, [r4, #12]
	ldr	r2, [r4, #16]
	str	r2, [r4, #0]
	bic	r3, r3, #2048	
	strh	r3, [r4, #12]
	movs	r2, #0
	lsls	r3, r3, #19
	str	r2, [r4, #4]
	bpl	lab319
	str	r0, [r4, #80]	
	b	lab319
lab315: 	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =3359
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab308: 	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	lab320
	cmp	r3, #29
	beq	lab321
	cmp	r3, #22
	beq	lab321
lab312: 	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =4363
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab321: 	str	r6, [r7, #0]
	b	lab306
	nop
_fflush_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	cmp r0, #0
	beq lab322
	ldr	r3, [r0, #56]	
	cmp r3, #0
	beq lab323
lab322: 	ldrsh	r0, [r4, #12]
	cmp r0, #0
	beq lab324
lab329: 	ldr	r3, [r4, #100]	
	lsls	r3, r3, #31
	bmi	lab325
	lsls	r1, r0, #22
	bpl	lab326
lab325: 	mov	r0, r5
	mov	r1, r4
push {r1, r2}
	ldr r1, =2226
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =2226
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab327
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab328
lab327: 	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =1872
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab323: 	bl	__sinit
	ldrsh	r0, [r4, #12]
	cmp	r0, #0
	bne	lab329
lab324: 	mov	r5, r0
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =1288
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab326: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	b	lab325
lab328: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =2086
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	nop
fflush:
	push	{r3, r4, r5, lr}
	cmp r0, #0
	beq lab330
	ldr	r3, =0x2000040c	
	ldr	r5, [r3, #0]
	mov	r4, r0
	cmp r5, #0
	beq lab331
	ldr	r3, [r5, #56]	
	cmp r3, #0
	beq lab332
lab331: 	ldrsh	r0, [r4, #12]
	cmp r0, #0
	beq lab333
	ldr	r3, [r4, #100]	
	lsls	r3, r3, #31
	bmi	lab334
	lsls	r1, r0, #22
	bpl	lab335
lab334: 	mov	r0, r5
	mov	r1, r4
push {r1, r2}
	ldr r1, =5697
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =5697
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab336
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab337
lab336: 	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab333: 	mov	r5, r0
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab332: 	mov	r0, r5
	bl	__sinit
	b	lab331
lab335: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	b	lab334
lab337: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	b	lab336
lab330: 	ldr	r3, =0x200002a0	
	ldr	r1, =0x800221d	
	ldr	r0, [r3, #0]
	ldmia	sp!, {r3, r4, r5, lr}
	b	_fwalk_reent
	nop
	.ltorg
_cleanup_r:
	ldr	r1, =0x8003f95	
	b	_fwalk_reent
	nop
	.ltorg
__fp_lock:
	push	{r3, lr}
	ldr	r3, [r0, #100]	
	lsls	r2, r3, #31
	bmi	lab338
	ldrh	r3, [r0, #12]
	lsls	r3, r3, #22
	bpl	lab339
lab338: 	movs	r0, #0
	pop	{r3, pc}
lab339: 	ldr	r0, [r0, #88]	
	bl	__retarget_lock_acquire_recursive
	movs	r0, #0
	pop	{r3, pc}
__fp_unlock:
	push	{r3, lr}
	ldr	r3, [r0, #100]	
	lsls	r2, r3, #31
	bmi	lab340
	ldrh	r3, [r0, #12]
	lsls	r3, r3, #22
	bpl	lab341
lab340: 	movs	r0, #0
	pop	{r3, pc}
lab341: 	ldr	r0, [r0, #88]	
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
	ldr r1, =7801
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =7801
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	cmp r0, #0
	beq lab342
	movs	r1, #0
	adds	r0, #12
	strd	r1, r6, [r4]
	str	r0, [r4, #8]
	add	r2, r5, #104	
push {r1, r2}
	ldr r1, =20
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
lab342:	push {r1, r2}
	ldr r1, =20
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r4
	pop	{r4, r5, r6, pc}
	nop
_cleanup:
	ldr	r3, =0x200002a0	
	ldr	r1, =0x8003f95	
	ldr	r0, [r3, #0]
	b	_fwalk_reent
	nop
	.ltorg
__sinit:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	sl, r0
	ldr	r0, =0x200019fc	
	bl	__retarget_lock_acquire_recursive
	ldr	r4, [sl, #56]	
	cmp	r4, #0
	bne	lab343
	ldr	r5, [sl, #4]
	ldr	r2, =0x80022ed	
	str	r2, [sl, #60]	
	movs	r3, #3
	strd	r4, r3, [sl, #736]	
	ldr	r9, =0x8003ccd	
	ldr	r8, =0x8003cf5	
	ldr	r7, =0x8003d35	
	ldr	r6, =0x8003d55	
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
	ldr r1, =2021
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =2021
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
	ldr r1, =1915
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =1915
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
	ldr r1, =5296
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =5296
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
	ldr	r0, =0x200019fc	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	b	__retarget_lock_release_recursive
lab343: 	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r0, =0x200019fc	
	b	__retarget_lock_release_recursive
	.ltorg
__sfp:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r7, r0
	ldr	r0, =0x200019f8	
	bl	__retarget_lock_acquire_recursive
	ldr	r3, =0x200002a0	
	ldr	r6, [r3, #0]
	ldr	r3, [r6, #56]	
	cmp r3, #0
	beq lab344
lab350: 	add	r6, r6, #736	
	mov	r8, #4
lab349: 	ldrd	r3, r4, [r6, #4]
	subs	r3, #1
	bpl	lab345
	b	lab346
lab347: 	adds	r2, r3, #1
	add	r4, r4, #104	
	beq	lab346
lab345: 	ldrsh	r5, [r4, #12]
	subs	r3, #1
	cmp	r5, #0
	bne	lab347
	ldr	r3, =0xffff0001	
	str	r3, [r4, #12]
	add	r0, r4, #88	
	str	r5, [r4, #100]	
	bl	__retarget_lock_init_recursive
	ldr	r0, =0x200019f8	
	bl	__retarget_lock_release_recursive
	strd	r5, r5, [r4, #4]
	strd	r5, r5, [r4, #16]
	str	r5, [r4, #0]
	str	r5, [r4, #24]
	movs	r2, #8
	mov	r1, r5
	add	r0, r4, #92	
push {r1, r2}
	ldr r1, =2500
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =2500
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	r5, r5, [r4, #48]	
	strd	r5, r5, [r4, #68]	
lab352: 	mov	r0, r4
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab346: 	ldr	r5, [r6, #0]
	cmp r5, #0
	beq lab348
	mov	r6, r5
	b	lab349
lab344: 	mov	r0, r6
	bl	__sinit
	b	lab350
lab348: 	mov	r1, #428	
	mov	r0, r7
push {r1, r2}
	ldr r1, =3365
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =3365
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	cmp r0, #0
	beq lab351
	str	r5, [r0, #0]
	str	r8, [r0, #4]
	adds	r0, #12
	mov	r1, r5
	str	r0, [r4, #8]
	mov	r5, r4
	mov	r2, #416	
push {r1, r2}
	ldr r1, =4779
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =4779
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r4, [r6, #0]
	mov	r6, r5
	b	lab349
lab351: 	ldr	r0, =0x200019f8	
	str	r4, [r6, #0]
	bl	__retarget_lock_release_recursive
	movs	r3, #12
	str	r3, [r7, #0]
	b	lab352
	nop
	.ltorg
__sfp_lock_acquire:
	ldr	r0, =0x200019f8	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__sfp_lock_release:
	ldr	r0, =0x200019f8	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
__sinit_lock_acquire:
	ldr	r0, =0x200019fc	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__sinit_lock_release:
	ldr	r0, =0x200019fc	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
__fp_lock_all:
	push	{r3, lr}
	ldr	r0, =0x200019f8	
	bl	__retarget_lock_acquire_recursive
	ldr	r3, =0x2000040c	
	ldr	r1, =0x80022f9	
	ldr	r0, [r3, #0]
	ldmia	sp!, {r3, lr}
	b	_fwalk
	nop
	.ltorg
__fp_unlock_all:
	push	{r3, lr}
	ldr	r3, =0x2000040c	
	ldr	r1, =0x8002315	
	ldr	r0, [r3, #0]
	bl	_fwalk
	push {r1, r2}
	ldr r1, =3765
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldmia	sp!, {r3, lr}
	ldr	r0, =0x200019f8	
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
	bne	lab353
	add	r3, r8, #4294967295	
	cmp	r3, #254	
	bls	lab354
lab353: 	mov	r2, r8
	add	r3, r4, #92	
	add	r1, sp, #4
	mov	r0, r7
	bl	_wcrtomb_r
	push {r1, r2}
	ldr r1, =2507
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r2, r0, #1
	mov	r6, r0
	beq	lab355
	cmp r0, #0
	beq lab356
	ldrb	ip, [sp, #4]
lab361: 	add	r9, sp, #5
	movs	r5, #0
	b	lab357
lab358: 	ldr	r3, [r4, #0]
	adds	r2, r3, #1
	str	r2, [r4, #0]
	strb	ip, [r3]
lab360: 	adds	r5, #1
	cmp	r5, r6
	bcs	lab356
	ldrb	ip, [r9], #1
lab357: 	ldr	r3, [r4, #8]
	subs	r3, #1
	cmp	r3, #0
	str	r3, [r4, #8]
	bge	lab358
	ldr	lr, [r4, #24]
	cmp	r3, lr
	mov	r1, ip
	mov	r2, r4
	mov	r0, r7
	blt	lab359
	cmp	ip, #10
	bne	lab358
lab359: 	bl	__swbuf_r
	push {r1, r2}
	ldr r1, =7910
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	bne	lab360
	mov	r6, r0
	mov	r0, r6
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =5888
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab356: 	mov	r6, r8
	mov	r0, r6
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =2041
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab354: 	uxtb	ip, r8
	strb	ip, [sp, #4]
	mov	r6, r0
	b	lab361
lab355: 	ldrh	r3, [r4, #12]
	mov	r0, r6
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =4520
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
	bne	lab362
	lsls	r0, r3, #22
	bpl	lab363
lab362: 	lsls	r0, r2, #18
	bmi	lab364
	ldr	r2, [r4, #100]	
	orr	r3, r3, #8192	
	orr	r2, r2, #8192	
	strh	r3, [r4, #12]
	str	r2, [r4, #100]	
lab364: 	mov	r2, r4
	mov	r0, r5
push {r1, r2}
	ldr r1, =7741
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__fputwc
	push {r1, r2}
	ldr r1, =7741
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab365
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab366
lab365: 	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =72
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab366: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =1243
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab363: 	ldr	r0, [r4, #88]	
	str	r1, [sp, #4]
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	ldr	r1, [sp, #4]
	uxth	r2, r3
	b	lab362
	nop
fputwc:
	ldr	r3, =0x2000040c	
	push	{r4, r5, r6, lr}
	ldr	r6, [r3, #0]
	mov	r5, r0
	mov	r4, r1
	cmp r6, #0
	beq lab367
	ldr	r3, [r6, #56]	
	cmp r3, #0
	beq lab368
lab367: 	ldr	r3, [r4, #100]	
	tst	r3, #1
	ldrsh	r3, [r4, #12]
	uxth	r2, r3
	bne	lab369
	lsls	r0, r3, #22
	bpl	lab370
lab369: 	lsls	r1, r2, #18
	bmi	lab371
	ldr	r2, [r4, #100]	
	orr	r3, r3, #8192	
	orr	r2, r2, #8192	
	strh	r3, [r4, #12]
	str	r2, [r4, #100]	
lab371: 	mov	r2, r4
	mov	r1, r5
	mov	r0, r6
push {r1, r2}
	ldr r1, =5652
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__fputwc
	push {r1, r2}
	ldr r1, =5652
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab372
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab373
lab372: 	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab368: 	mov	r0, r6
	bl	__sinit
	b	lab367
lab373: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab370: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	uxth	r2, r3
	b	lab369
	.ltorg
_malloc_trim_r:
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r7, =0x200009a4	
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
	blt	lab374
	movs	r1, #0
	mov	r0, r6
push {r1, r2}
	ldr r1, =644
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =644
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r7, #8]
	add	r3, r5
	cmp	r0, r3
	beq	lab375
lab374: 	mov	r0, r6
	bl	__malloc_unlock
	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =2035
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab375: 	negs	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =1096
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =1096
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r0, #1
	beq	lab376
	ldr	r2, =0x20001a04	
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
	ldr r1, =7800
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab376: 	movs	r1, #0
	mov	r0, r6
push {r1, r2}
	ldr r1, =3404
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =3404
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r2, [r7, #8]
	subs	r3, r0, r2
	cmp	r3, #15
	ble	lab374
	orr	r3, r3, #1
	str	r3, [r2, #4]
	ldr	r3, =0x20000dac	
	ldr	r1, =0x20001a04	
	ldr	r3, [r3, #0]
	subs	r0, r0, r3
	str	r0, [r1, #0]
	b	lab374
	nop
	.ltorg
_free_r:
	cmp	r1, #0
	beq	lab377
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r6, r0
	bl	__malloc_lock
	ldr	r2, [r4, #-4]
	ldr	r7, =0x200009a4	
	sub	r5, r4, #8
	bic	r1, r2, #1
	add	ip, r5, r1
	ldr	r0, [r7, #8]
	ldr	r3, [ip, #4]
	cmp	r0, ip
	bic	r3, r3, #3
	beq	lab378
	lsls	r2, r2, #31
	str	r3, [ip, #4]
	bmi	lab379
	ldr	r2, [r4, #-8]
	subs	r5, r5, r2
	add	r1, r2
	ldr	r2, [r5, #8]
	add	r0, r7, #8
	cmp	r2, r0
	beq	lab380
	add	r4, ip, r3
	ldr	lr, [r4, #4]
	ldr	r4, [r5, #12]
	str	r4, [r2, #12]
	tst	lr, #1
	str	r2, [r4, #8]
	beq	lab381
	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [ip]
lab385: 	cmp	r1, #512	
	bcs	lab382
lab386: 	ldr	r2, [r7, #4]
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
lab393: 	mov	r0, r6
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	__malloc_unlock
lab379: 	add	r2, ip, r3
	ldr	r2, [r2, #4]
	lsls	r0, r2, #31
	bmi	lab383
	add	r1, r3
	add	r0, r7, #8
lab397: 	ldr	r3, [ip, #8]
	cmp	r3, r0
	beq	lab384
	ldr	r2, [ip, #12]
	str	r2, [r3, #12]
	str	r3, [r2, #8]
	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [r5, r1]
	b	lab385
lab377:	nop
	push {r1, r2}
	ldr r1, =390
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	bx	lr
lab383: 	orr	r3, r1, #1
	cmp	r1, #512	
	str	r3, [r4, #-4]
	str	r1, [ip]
	bcc	lab386
lab382: 	cmp	r1, #2560	
	mov	r3, r1, lsr #9
	bcs	lab387
	lsrs	r3, r1, #6
	add	r0, r3, #57	
	add	r2, r3, #56	
	lsls	r3, r0, #3
lab396: 	adds	r0, r7, r3
	ldr	r3, [r7, r3]
	subs	r0, #8
	cmp	r0, r3
	beq	lab388
lab390: 	ldr	r2, [r3, #4]
	bic	r2, r2, #3
	cmp	r2, r1
	bls	lab389
	ldr	r3, [r3, #8]
	cmp	r0, r3
	bne	lab390
lab389: 	ldr	r0, [r3, #12]
lab398: 	strd	r3, r0, [r5, #8]
	str	r5, [r0, #8]
	str	r5, [r3, #12]
	mov	r0, r6
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	__malloc_unlock
lab380: 	add	r2, ip, r3
	ldr	r2, [r2, #4]
	lsls	r2, r2, #31
	bmi	lab391
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
lab378: 	add	r3, r1
	lsls	r1, r2, #31
	bmi	lab392
	ldr	r2, [r4, #-8]
	subs	r5, r5, r2
	add	r3, r2
	ldrd	r1, r2, [r5, #8]
	str	r2, [r1, #12]
	str	r1, [r2, #8]
lab392: 	orr	r2, r3, #1
	str	r2, [r5, #4]
	ldr	r2, =0x20000db0	
	str	r5, [r7, #8]
	ldr	r2, [r2, #0]
	cmp	r2, r3
	bhi	lab393
	ldr	r3, =0x20001a34	
	mov	r0, r6
	ldr	r1, [r3, #0]
	bl	_malloc_trim_r
	push {r1, r2}
	ldr r1, =3945
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab393
lab387: 	cmp	r3, #20
	bls	lab394
	cmp	r3, #84	
	bhi	lab395
	lsrs	r3, r1, #12
	add	r0, r3, #111	
	add	r2, r3, #110	
	lsls	r3, r0, #3
	b	lab396
lab381: 	add	r1, r3
	b	lab397
lab394: 	add	r0, r3, #92	
	add	r2, r3, #91	
	lsls	r3, r0, #3
	b	lab396
lab384: 	orr	r3, r1, #1
	strd	r5, r5, [r7, #16]
	strd	r0, r0, [r5, #8]
	str	r3, [r5, #4]
	str	r1, [r5, r1]
	b	lab393
lab388: 	ldr	r1, [r7, #4]
	asrs	r2, r2, #2
	movs	r4, #1
	lsl	r2, r4, r2
	orrs	r2, r1
	str	r2, [r7, #4]
	b	lab398
lab395: 	cmp	r3, #340	
	bhi	lab399
	lsrs	r3, r1, #15
	add	r0, r3, #120	
	add	r2, r3, #119	
	lsls	r3, r0, #3
	b	lab396
lab399: 	movw	r2, #1364	
	cmp	r3, r2
	bhi	lab400
	lsrs	r3, r1, #18
	add	r0, r3, #125	
	add	r2, r3, #124	
	lsls	r3, r0, #3
	b	lab396
lab400: 	mov	r3, #1016	
	movs	r2, #126	
	b	lab396
lab391: 	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [ip]
	b	lab393
	nop
	.ltorg
__sfvwrite_r:
	ldr	r3, [r2, #8]
	cmp	r3, #0
	beq	lab401
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrsh	r3, [r1, #12]
	mov	r4, r1
	lsls	r1, r3, #28
	mov	r8, r0
	sub	sp, #12
	mov	r7, r2
	uxth	r0, r3
	bpl	lab402
	ldr	r3, [r4, #16]
	cmp r3, #0
	beq lab402
	ands	r3, r0, #2
	ldr	r5, [r7, #0]
	beq	lab403
lab408: 	mov	sl, #0
	ldr	fp, =0x7ffffc00	
	mov	r6, sl
lab406: 	cmp	r6, fp
	mov	r3, r6
	mov	r2, sl
	it	cs
	movcs	r3, fp
	mov	r0, r8
	cmp	r6, #0
	beq	lab404
	ldr	r1, [r4, #28]
	ldr	ip, [r4, #36]	
	blx	ip
	cmp	r0, #0
	ble	lab405
	ldr	r3, [r7, #8]
	subs	r3, r3, r0
	add	sl, r0
	subs	r6, r6, r0
	str	r3, [r7, #8]
	cmp	r3, #0
	bne	lab406
lab414: 	movs	r0, #0
lab438: 	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =6438
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab402: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =1387
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =1387
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab407
	ldrsh	r3, [r4, #12]
	ldr	r5, [r7, #0]
	uxth	r0, r3
	ands	r3, r0, #2
	bne	lab408
lab403: 	ands	r9, r0, #1
	bne	lab409
	mov	r6, r9
lab416: 	cmp r6, #0
	beq lab410
lab415: 	lsls	r2, r0, #22
	ldr	fp, [r4, #8]
	bpl	lab411
	cmp	fp, r6
	mov	r2, fp
	bhi	lab412
	tst	r0, #1152	
	bne	lab413
	ldr	r0, [r4, #0]
lab431: 	str	r2, [sp, #4]
	mov	r1, r9
push {r1, r2}
	ldr r1, =2941
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =2941
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
lab429: 	ldr	r0, [r7, #8]
	sub	r0, r0, sl
	add	r9, sl
	str	r0, [r7, #8]
	cmp	r0, #0
	beq	lab414
	ldrsh	r0, [r4, #12]
	uxth	r0, r0
	cmp	r6, #0
	bne	lab415
lab410: 	ldrd	r9, r6, [r5]
	adds	r5, #8
	b	lab416
lab404: 	ldrd	sl, r6, [r5]
	adds	r5, #8
	b	lab406
lab423: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =8041
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =8041
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	beq lab417
lab405: 	ldrsh	r3, [r4, #12]
lab436: 	orr	r3, r3, #64	
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =928
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab401: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =1332
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
lab409: 	mov	r6, r3
	mov	sl, r5
	mov	r9, r3
	mov	r0, r3
	mov	r5, r3
	cmp r6, #0
	beq lab418
lab424: 	cmp r0, #0
	beq lab419
lab427: 	mov	r2, r9
lab437: 	ldrd	r1, r3, [r4, #16]
	ldr	r0, [r4, #0]
	cmp	r2, r6
	it	cs
	movcs	r2, r6
	cmp	r0, r1
	bls	lab420
	ldr	r1, [r4, #8]
	add	fp, r3, r1
	cmp	r2, fp
	bgt	lab421
lab420: 	cmp	r3, r2
	bgt	lab422
	ldr	r1, [r4, #28]
	ldr	ip, [r4, #36]	
	mov	r2, r5
	mov	r0, r8
	blx	ip
	subs	fp, r0, #0
	ble	lab405
lab432: 	subs	r9, r9, fp
	beq	lab423
	movs	r0, #1
lab417: 	ldr	r3, [r7, #8]
	sub	r3, r3, fp
	add	r5, fp
	sub	r6, r6, fp
	str	r3, [r7, #8]
	cmp	r3, #0
	beq	lab414
	cmp	r6, #0
	bne	lab424
lab418: 	add	r3, sl, #8
lab425: 	ldrd	r5, r6, [r3, #-8]
	mov	sl, r3
	adds	r3, #8
	cmp	r6, #0
	beq	lab425
lab419: 	mov	r2, r6
	movs	r1, #10
	mov	r0, r5
	bl	memchr
	cmp	r0, #0
	beq	lab426
	adds	r0, #1
	sub	r9, r0, r5
	b	lab427
lab411: 	ldr	r0, [r4, #0]
	ldr	r3, [r4, #16]
	cmp	r0, r3
	bhi	lab428
	ldr	r3, [r4, #20]
	cmp	r3, r6
	bhi	lab428
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
	ble	lab405
lab430: 	sub	r6, r6, sl
	b	lab429
lab428: 	cmp	fp, r6
	mov	sl, fp
	it	cs
	movcs	sl, r6
	mov	r2, sl
	mov	r1, r9
push {r1, r2}
	ldr r1, =7590
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =7590
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
	bne	lab430
	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =5384
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =5384
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab430
	b	lab405
lab412: 	ldr	r0, [r4, #0]
	mov	fp, r6
	mov	r2, r6
	b	lab431
lab422: 	mov	r1, r5
	str	r2, [sp, #4]
push {r1, r2}
	ldr r1, =6970
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =6970
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
	b	lab432
lab413: 	ldr	r3, [r4, #0]
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
	bpl	lab433
	mov	r1, r2
	mov	r0, r8
push {r1, r2}
	ldr r1, =6467
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =6467
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab434
	mov	r2, fp
	ldr	r1, [r4, #16]
	str	r0, [sp, #4]
	bl	memcpy
	ldrh	r2, [r4, #12]
	ldr	r3, [sp, #4]
	bic	r2, r2, #1152	
	orr	r2, r2, #128	
	strh	r2, [r4, #12]
lab435: 	add	r0, r3, fp
	str	r3, [r4, #16]
	sub	r3, sl, fp
	str	sl, [r4, #20]
	str	r3, [r4, #8]
	str	r0, [r4, #0]
	mov	fp, r6
	mov	r2, r6
	b	lab431
lab421: 	mov	r1, r5
	mov	r2, fp
push {r1, r2}
	ldr r1, =4781
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =4781
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
	ldr r1, =5752
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =5752
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab432
	b	lab405
lab433: 	mov	r0, r8
push {r1, r2}
	ldr r1, =1540
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_realloc_r
	push {r1, r2}
	ldr r1, =1540
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r0
	cmp	r0, #0
	bne	lab435
	ldr	r1, [r4, #16]
	mov	r0, r8
push {r1, r2}
	ldr r1, =823
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =823
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	movs	r2, #12
	bic	r3, r3, #128	
	str	r2, [r8]
	b	lab436
lab426: 	adds	r2, r6, #1
	mov	r9, r2
	b	lab437
lab434: 	movs	r2, #12
	ldrsh	r3, [r4, #12]
	str	r2, [r8]
	b	lab436
lab407: 	mov	r0, #4294967295	
	b	lab438
	nop
	.ltorg
_fwalk:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r8, r1
	add	r7, r0, #736	
	movs	r6, #0
lab442: 	ldrd	r5, r4, [r7, #4]
	subs	r5, #1
	bmi	lab439
lab441: 	ldrh	r3, [r4, #12]
	cmp	r3, #1
	add	r5, r5, #4294967295	
	bls	lab440
	ldrsh	r3, [r4, #14]
	adds	r3, #1
	mov	r0, r4
	beq	lab440
	blx	r8
	orrs	r6, r0
lab440: 	adds	r3, r5, #1
	add	r4, r4, #104	
	bne	lab441
lab439: 	ldr	r7, [r7, #0]
	cmp	r7, #0
	bne	lab442
	mov	r0, r6
	nop
	push {r1, r2}
	ldr r1, =1877
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
lab446: 	ldrd	r5, r4, [r6, #4]
	subs	r5, #1
	bmi	lab443
lab445: 	ldrh	r3, [r4, #12]
	cmp	r3, #1
	add	r5, r5, #4294967295	
	bls	lab444
	ldrsh	r3, [r4, #14]
	adds	r3, #1
	mov	r1, r4
	beq	lab444
	mov	r0, r7
	blx	r8
	orr	r9, r9, r0
lab444: 	adds	r3, r5, #1
	add	r4, r4, #104	
	bne	lab445
lab443: 	ldr	r6, [r6, #0]
	cmp	r6, #0
	bne	lab446
	mov	r0, r9
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_setlocale_r:
	cmp r2, #0
	beq lab447
	push	{r4, lr}
	ldr	r1, =0x200002f8	
	mov	r0, r2
	mov	r4, r2
	bl	strcmp
	cmp r0, #0
	bne lab448
lab449: 	ldr	r0, =0x200002f4	
	pop	{r4, pc}
lab447: 	ldr	r0, =0x200002f4	
	bx	lr
lab448: 	ldr	r1, =0x200002f4	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab449
	ldr	r1, =0x2000026c	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab449
	movs	r0, #0
	pop	{r4, pc}
	.ltorg
__locale_mb_cur_max:
	ldr	r3, =0x20000838	
	ldrb	r0, [r3, #296]	
	bx	lr
	.ltorg
setlocale:
	cmp r1, #0
	beq lab450
	push	{r4, lr}
	mov	r4, r1
	mov	r0, r4
	ldr	r1, =0x200002f8	
	bl	strcmp
	cmp r0, #0
	bne lab451
lab452: 	ldr	r0, =0x200002f4	
	pop	{r4, pc}
lab450: 	ldr	r0, =0x200002f4	
	bx	lr
lab451: 	ldr	r1, =0x200002f4	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab452
	ldr	r1, =0x2000026c	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab452
	movs	r0, #0
	pop	{r4, pc}
	.ltorg
__localeconv_l:
	adds	r0, #240	
	bx	lr
_localeconv_r:
	ldr	r0, =0x20000928	
	bx	lr
	.ltorg
localeconv:
	ldr	r0, =0x20000928	
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
	bpl	lab453
	add	r3, r4, #67	
	movs	r2, #1
	strd	r3, r2, [r4, #16]
	str	r3, [r4, #0]
lab460: 	add	sp, #88	
	nop
	push {r1, r2}
	ldr r1, =3377
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab453: 	ldrsh	r1, [r4, #14]
	cmp	r1, #0
	mov	r6, r0
	blt	lab454
	mov	r2, sp
push {r1, r2}
	ldr r1, =3318
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fstat_r
	push {r1, r2}
	ldr r1, =3318
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab455
	ldr	r5, [sp, #4]
	and	r5, r5, #61440	
	sub	r5, r5, #8192	
	clz	r5, r5
	mov	r8, #1024	
	lsrs	r5, r5, #5
	mov	r7, #2048	
lab461: 	mov	r1, r8
	mov	r0, r6
push {r1, r2}
	ldr r1, =1402
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1402
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	cmp r0, #0
	beq lab456
lab459: 	ldr	r2, =0x80022ed	
	str	r2, [r6, #60]	
	orr	r3, r3, #128	
	str	r8, [r4, #20]
	strh	r3, [r4, #12]
	str	r0, [r4, #0]
	str	r0, [r4, #16]
	cmp r5, #0
	bne lab457
lab463: 	orrs	r3, r7
	strh	r3, [r4, #12]
	add	sp, #88	
	nop
	push {r1, r2}
	ldr r1, =4823
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab455: 	ldrh	r3, [r4, #12]
lab454: 	ands	r5, r3, #128	
	beq	lab458
	mov	r8, #64	
	mov	r1, r8
	mov	r0, r6
push {r1, r2}
	ldr r1, =5266
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =5266
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r5, #0
	ldrsh	r3, [r4, #12]
	mov	r7, r5
	cmp	r0, #0
	bne	lab459
lab456: 	lsls	r2, r3, #22
	bmi	lab460
	bic	r3, r3, #3
	add	r2, r4, #67	
	orr	r3, r3, #2
	movs	r1, #1
	strd	r2, r1, [r4, #16]
	strh	r3, [r4, #12]
	str	r2, [r4, #0]
	b	lab460
lab458: 	mov	r8, #1024	
	mov	r7, r5
	b	lab461
lab457: 	ldrsh	r1, [r4, #14]
	mov	r0, r6
	bl	_isatty_r
	push {r1, r2}
	ldr r1, =905
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab462
	ldrsh	r3, [r4, #12]
	b	lab463
lab462: 	ldrh	r3, [r4, #12]
	bic	r3, r3, #3
	orr	r3, r3, #1
	sxth	r3, r3
	b	lab463
	.ltorg
__swhatbuf_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldrsh	r1, [r1, #14]
	cmp	r1, #0
	sub	sp, #88	
	mov	r5, r2
	mov	r6, r3
	blt	lab464
	mov	r2, sp
push {r1, r2}
	ldr r1, =2287
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fstat_r
	push {r1, r2}
	ldr r1, =2287
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab464
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
lab464: 	ldrsh	r1, [r4, #12]
	movs	r3, #0
	ands	r0, r1, #128	
	str	r3, [r6, #0]
	beq	lab465
	movs	r2, #64	
	mov	r0, r3
	str	r2, [r5, #0]
	add	sp, #88	
	pop	{r4, r5, r6, pc}
lab465: 	mov	r3, #1024	
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
	bhi	lab466
	cmp	r1, #16
	bhi	lab467
	bl	__malloc_lock
	movs	r6, #16
	movs	r2, #24
	movs	r0, #2
lab515: 	ldr	r7, =0x200009a4	
	add	r2, r7
	sub	r1, r2, #8
	ldr	r3, [r2, #4]
	cmp	r3, r1
	beq	lab468
lab489: 	ldr	r2, [r3, #4]
	ldr	r1, [r3, #12]
	bic	r2, r2, #3
	add	r2, r3
lab504: 	ldr	r5, [r3, #8]
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
	ldr r1, =3990
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab466: 	bics	r6, r6, #7
	bmi	lab467
	cmp	r1, r6
	bhi	lab467
	bl	__malloc_lock
	cmp	r6, #504	
	bcc	lab469
	lsrs	r3, r6, #9
	beq	lab470
	cmp	r3, #4
	bhi	lab471
	lsrs	r3, r6, #6
	add	r0, r3, #57	
	add	ip, r3, #56	
	lsls	r3, r0, #3
lab488: 	ldr	r7, =0x200009a4	
	add	r3, r7
	sub	r5, r3, #8
	ldr	r3, [r3, #4]
	cmp	r5, r3
	bne	lab472
	b	lab473
lab475: 	cmp	r1, #0
	bge	lab474
	ldr	r3, [r3, #12]
	cmp	r5, r3
	beq	lab473
lab472: 	ldr	r2, [r3, #4]
	bic	r2, r2, #3
	subs	r1, r2, r6
	cmp	r1, #15
	ble	lab475
	mov	r0, ip
lab473: 	ldr	r5, [r7, #16]
	ldr	ip, =0x200009ac	
	cmp	r5, ip
	beq	lab476
lab490: 	ldr	r2, [r5, #4]
	bic	r2, r2, #3
	subs	r3, r2, r6
	cmp	r3, #15
	bgt	lab477
	cmp	r3, #0
	strd	ip, ip, [r7, #16]
	bge	lab478
	cmp	r2, #512	
	bcs	lab479
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
lab510: 	asrs	r3, r0, #2
	movs	r1, #1
	lsls	r1, r3
	cmp	r1, r2
	bhi	lab480
lab491: 	tst	r1, r2
	bne	lab481
	bic	r0, r0, #3
lab482: 	lsls	r1, r1, #1
	tst	r1, r2
	add	r0, r0, #4
	beq	lab482
lab481: 	add	r9, r7, r0, lsl #3
	mov	r5, r9
	mov	lr, r0
lab513: 	ldr	r8, [r5, #12]
	cmp	r5, r8
	bne	lab483
	b	lab484
lab486: 	cmp	r3, #0
	bge	lab485
	ldr	r8, [r8, #12]
	cmp	r5, r8
	beq	lab484
lab483: 	ldr	r2, [r8, #4]
	bic	r2, r2, #3
	subs	r3, r2, r6
	cmp	r3, #15
	ble	lab486
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
	b	lab487
lab467: 	movs	r3, #12
	str	r3, [r4, #0]
	movs	r5, #0
lab487: 	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =117
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab470: 	mov	r3, #512	
	movs	r0, #64	
	mov	ip, #63	
	b	lab488
lab468: 	ldr	r3, [r2, #12]
	cmp	r2, r3
	it	eq
	addeq	r0, #2
	bne	lab489
	ldr	r5, [r7, #16]
	ldr	ip, =0x200009ac	
	cmp	r5, ip
	bne	lab490
lab476: 	ldr	r2, [r7, #4]
	asrs	r3, r0, #2
	movs	r1, #1
	lsls	r1, r3
	cmp	r1, r2
	bls	lab491
lab480: 	ldr	r5, [r7, #8]
	ldr	r3, [r5, #4]
	bic	r9, r3, #3
	cmp	r6, r9
	bhi	lab492
	sub	r3, r9, r6
	cmp	r3, #15
	bgt	lab493
lab492: 	ldr	fp, =0x20000dac	
	ldr	r3, =0x20001a34	
	ldr	r2, [fp]
	ldr	r3, [r3, #0]
	adds	r2, #1
	add	r3, r6
	add	sl, r5, r9
	beq	lab494
	add	r3, r3, #4096	
	adds	r3, #15
	bic	r8, r3, #4080	
	bic	r8, r8, #15
lab523: 	mov	r1, r8
	mov	r0, r4
push {r1, r2}
	ldr r1, =5800
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =5800
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r1, r0, #1
	mov	r2, r0
	beq	lab495
	cmp	sl, r0
	bhi	lab496
	ldr	r3, =0x20001a04	
	ldr	r1, [r3, #0]
	add	r1, r8
	str	r1, [r3, #0]
	mov	r0, r1
	beq	lab497
lab529: 	ldr	r1, [fp]
	str	r3, [sp, #4]
	adds	r1, #1
	ittet	ne
	subne	sl, r2, sl
	addne	r0, sl
	streq	r2, [fp]
	strne	r0, [r3, #0]
	ands	fp, r2, #7
	beq	lab498
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
	ldr r1, =1352
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =1352
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r2, r0, #1
	ldrd	r2, r3, [sp]
	beq	lab499
lab525: 	subs	r0, r0, r2
	add	r8, r0, sl
lab526: 	ldr	r1, [r3, #0]
	str	r2, [r7, #8]
	orr	r0, r8, #1
	add	r1, sl
	cmp	r5, r7
	str	r0, [r2, #4]
	str	r1, [r3, #0]
	beq	lab500
	cmp	r9, #15
	bls	lab501
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
	bhi	lab502
	ldr	r0, [r2, #4]
	mov	r5, r2
lab530: 	ldr	r3, =0x20001a2c	
	ldr	r2, [r3, #0]
	cmp	r2, r1
	it	cc
	strcc	r1, [r3, #0]
	ldr	r3, =0x20001a30	
	ldr	r2, [r3, #0]
	cmp	r2, r1
	it	cc
	strcc	r1, [r3, #0]
	b	lab503
lab493: 	adds	r2, r5, r6
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
	ldr r1, =6965
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab474: 	ldr	r1, [r3, #12]
	add	r2, r3
	b	lab504
	nop
	.ltorg
lab479: 	cmp	r2, #2560	
	mov	r3, r2, lsr #9
	bcc	lab505
	cmp	r3, #20
	bhi	lab506
	add	r1, r3, #92	
	lsls	r1, r1, #3
	adds	r3, #91	
lab516: 	add	lr, r7, r1
	ldr	r1, [r7, r1]
	sub	lr, lr, #8
	cmp	lr, r1
	beq	lab507
lab509: 	ldr	r3, [r1, #4]
	bic	r3, r3, #3
	cmp	r3, r2
	bls	lab508
	ldr	r1, [r1, #8]
	cmp	lr, r1
	bne	lab509
lab508: 	ldr	lr, [r1, #12]
	ldr	r2, [r7, #4]
lab524: 	strd	r1, lr, [r5, #8]
	str	r5, [lr, #8]
	str	r5, [r1, #12]
	b	lab510
lab471: 	cmp	r3, #20
	bls	lab511
	cmp	r3, #84	
	bhi	lab512
	lsrs	r3, r6, #12
	add	r0, r3, #111	
	add	ip, r3, #110	
	lsls	r3, r0, #3
	b	lab488
lab484: 	add	lr, lr, #1
	tst	lr, #3
	add	r5, r5, #8
	bne	lab513
	b	lab514
lab485: 	add	r2, r8
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
	b	lab487
lab469: 	lsrs	r0, r6, #3
	add	r2, r6, #8
	b	lab515
lab478: 	add	r2, r5
	mov	r0, r4
	ldr	r3, [r2, #4]
	orr	r3, r3, #1
	str	r3, [r2, #4]
	adds	r5, #8
	bl	__malloc_unlock
	b	lab487
lab477: 	adds	r1, r5, r6
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
	b	lab487
lab505: 	lsrs	r3, r2, #6
	add	r1, r3, #57	
	lsls	r1, r1, #3
	adds	r3, #56	
	b	lab516
lab496: 	cmp	r5, r7
	beq	lab517
lab495: 	ldr	r5, [r7, #8]
	ldr	r0, [r5, #4]
lab503: 	bic	r8, r0, #3
	cmp	r6, r8
	sub	r3, r8, r6
	bhi	lab518
	cmp	r3, #15
	bgt	lab493
lab518: 	mov	r0, r4
	bl	__malloc_unlock
	movs	r5, #0
	b	lab487
lab511: 	add	r0, r3, #92	
	add	ip, r3, #91	
	lsls	r3, r0, #3
	b	lab488
lab520: 	ldr	r3, [r9], #-8
	cmp	r3, r9
	bne	lab519
lab514: 	tst	r0, #3
	add	r0, r0, #4294967295	
	bne	lab520
	ldr	r3, [r7, #4]
	bic	r3, r3, r1
	str	r3, [r7, #4]
lab534: 	lsls	r1, r1, #1
	cmp	r1, r3
	bhi	lab480
	cmp r1, #0
	bne lab521
	b	lab480
lab522: 	lsls	r1, r1, #1
	add	lr, lr, #4
lab521: 	tst	r1, r3
	beq	lab522
	mov	r0, lr
	b	lab481
lab494: 	add	r8, r3, #16
	b	lab523
lab507: 	asrs	r2, r3, #2
	mov	r8, #1
	ldr	r3, [r7, #4]
	lsl	r2, r8, r2
	orrs	r2, r3
	str	r2, [r7, #4]
	b	lab524
lab498: 	add	r1, r2, r8
	negs	r1, r1
	ubfx	sl, r1, #0, #12
	mov	r1, sl
	mov	r0, r4
	str	r2, [sp, #0]
push {r1, r2}
	ldr r1, =844
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =844
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	ldrd	r2, r3, [sp]
	bne	lab525
	mov	sl, fp
	b	lab526
lab506: 	cmp	r3, #84	
	bhi	lab527
	lsrs	r3, r2, #12
	add	r1, r3, #111	
	lsls	r1, r1, #3
	adds	r3, #110	
	b	lab516
lab512: 	cmp	r3, #340	
	bhi	lab528
	lsrs	r3, r6, #15
	add	r0, r3, #120	
	add	ip, r3, #119	
	lsls	r3, r0, #3
	b	lab488
lab517: 	ldr	r3, =0x20001a04	
	ldr	r0, [r3, #0]
	add	r0, r8
	str	r0, [r3, #0]
	b	lab529
lab497: 	ubfx	ip, sl, #0, #12
	cmp	ip, #0
	bne	lab529
	ldr	r5, [r7, #8]
	add	r8, r9
	orr	r0, r8, #1
	str	r0, [r5, #4]
	b	lab530
lab500: 	mov	r5, r2
	b	lab530
lab501: 	movs	r3, #1
	str	r3, [r2, #4]
	b	lab518
lab527: 	cmp	r3, #340	
	bhi	lab531
	lsrs	r3, r2, #15
	add	r1, r3, #120	
	lsls	r1, r1, #3
	adds	r3, #119	
	b	lab516
lab528: 	movw	r2, #1364	
	cmp	r3, r2
	bhi	lab532
	lsrs	r3, r6, #18
	add	r0, r3, #125	
	add	ip, r3, #124	
	lsls	r3, r0, #3
	b	lab488
lab499: 	sub	fp, fp, #8
	add	r8, fp
	sub	r8, r8, r2
	mov	sl, #0
	b	lab526
lab502: 	add	r1, r5, #8
	mov	r0, r4
	str	r3, [sp, #0]
push {r1, r2}
	ldr r1, =7051
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =7051
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r5, [r7, #8]
	ldr	r3, [sp, #0]
	ldr	r0, [r5, #4]
	ldr	r1, [r3, #0]
	b	lab530
lab531: 	movw	r1, #1364	
	cmp	r3, r1
	bhi	lab533
	lsrs	r3, r2, #18
	add	r1, r3, #125	
	lsls	r1, r1, #3
	adds	r3, #124	
	b	lab516
lab532: 	mov	r3, #1016	
	movs	r0, #127	
	mov	ip, #126	
	b	lab488
lab533: 	mov	r1, #1016	
	movs	r3, #126	
	b	lab516
lab519: 	ldr	r3, [r7, #4]
	b	lab534
	.ltorg
_mbtowc_r:
	push	{r4}
	ldr	r4, =0x20000838	
	ldr	r4, [r4, #228]	
	mov	ip, r4
	pop	{r4}
	bx	ip
	nop
	.ltorg
__ascii_mbtowc:
	sub	sp, #8
	cmp r1, #0
	beq lab535
	cmp r2, #0
	beq lab536
lab538: 	cmp r3, #0
	beq lab537
	ldrb	r3, [r2, #0]
	str	r3, [r1, #0]
	ldrb	r2, [r2, #0]
	subs	r0, r2, #0
	it	ne
	movne	r0, #1
lab539: 	add	sp, #8
	bx	lr
lab535: 	add	r1, sp, #4
	cmp	r2, #0
	bne	lab538
lab536: 	mov	r0, r2
	add	sp, #8
	bx	lr
lab537: 	mvn	r0, #1
	b	lab539
	nop
memmove:
	cmp	r0, r1
	bls	lab540
	adds	r3, r1, r2
	cmp	r3, r0
	bls	lab540
	add	ip, r0, r2
	cmp r2, #0
	beq lab541
	mov	r2, ip
lab542: 	ldrb	ip, [r3, #-1]!
	strb	ip, [r2, #-1]!
	cmp	r1, r3
	bne	lab542
	nop
	push {r1, r2}
	ldr r1, =1824
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
lab540: 	cmp	r2, #15
	bhi	lab543
	mov	r3, r0
	add	ip, r2, #4294967295	
	cmp r2, #0
	beq lab541
lab551: 	add	ip, ip, #1
	subs	r3, #1
	add	ip, r1
lab544: 	ldrb	r2, [r1], #1
	strb	r2, [r3, #1]!
	cmp	r1, ip
	bne	lab544
lab541:	nop
	push {r1, r2}
	ldr r1, =3933
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	bx	lr
lab543: 	orr	r3, r0, r1
	lsls	r3, r3, #30
	bne	lab545
	sub	r3, r2, #16
	push	{r4, r5, r6, lr}
	add	ip, r1, #32
	bic	r5, r3, #15
	add	lr, r1, #16
	add	r4, r0, #16
	add	ip, r5
	lsrs	r3, r3, #4
lab546: 	ldr	r5, [lr, #-16]
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
	bne	lab546
	adds	r3, #1
	tst	r2, #12
	add	r1, r1, r3, lsl #4
	and	r4, r2, #15
	add	r3, r0, r3, lsl #4
	beq	lab547
	subs	r4, #4
	bic	r6, r4, #3
	mov	ip, r4, lsr #2
	add	r6, r3
	subs	r4, r3, #4
	mov	lr, r1
lab548: 	ldr	r5, [lr], #4
	str	r5, [r4, #4]!
	cmp	r4, r6
	bne	lab548
	add	r4, ip, #1
	and	r2, r2, #3
	add	r3, r3, r4, lsl #2
	add	r1, r1, r4, lsl #2
lab552: 	add	ip, r2, #4294967295	
	cmp r2, #0
	beq lab549
	add	ip, ip, #1
	subs	r3, #1
	add	ip, r1
lab550: 	ldrb	r2, [r1], #1
	strb	r2, [r3, #1]!
	cmp	r1, ip
	bne	lab550
lab549:	nop
	push {r1, r2}
	ldr r1, =2448
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab545: 	add	ip, r2, #4294967295	
	mov	r3, r0
	b	lab551
lab547: 	mov	r2, r4
	b	lab552
__malloc_lock:
	ldr	r0, =0x200019f4	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__malloc_unlock:
	ldr	r0, =0x200019f4	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
_realloc_r:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r7, r2
	cmp	r1, #0
	beq	lab553
	add	r5, r7, #11
	mov	r8, r0
	mov	r4, r1
	bl	__malloc_lock
	cmp	r5, #22
	bhi	lab554
	movs	r5, #16
	mov	r2, r5
lab567: 	cmp	r7, r5
	bhi	lab555
	ldr	r1, [r4, #-4]
	bic	r6, r1, #3
	cmp	r6, r2
	sub	r9, r4, #8
	bge	lab556
	ldr	r3, =0x200009a4	
	ldr	ip, [r3, #8]
	add	r0, r9, r6
	cmp	ip, r0
	beq	lab557
	ldr	ip, [r0, #4]
	bic	r3, ip, #1
	add	r3, r0
	ldr	r3, [r3, #4]
	lsls	r3, r3, #31
	bmi	lab558
	bic	ip, ip, #3
	add	r3, r6, ip
	cmp	r3, r2
	bge	lab559
	lsls	r3, r1, #31
	bmi	lab560
	ldr	r3, [r4, #-8]
	sub	sl, r9, r3
	ldr	r3, [sl, #4]
	bic	r1, r3, #3
	add	ip, r1
	add	ip, r6
	cmp	ip, r2
	bge	lab561
lab569: 	adds	r3, r6, r1
	cmp	r3, r2
	bge	lab562
lab560: 	mov	r1, r7
	mov	r0, r8
push {r1, r2}
	ldr r1, =7053
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =7053
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r7, r0
	cmp r0, #0
	beq lab563
	ldr	r3, [r4, #-4]
	bic	r3, r3, #1
	add	r3, r9
	sub	r2, r0, #8
	cmp	r3, r2
	beq	lab564
	subs	r2, r6, #4
	cmp	r2, #36	
	bhi	lab565
	cmp	r2, #19
	bhi	lab566
	mov	r3, r0
	mov	r2, r4
lab577: 	ldr	r1, [r2, #0]
	str	r1, [r3, #0]
	ldr	r1, [r2, #4]
	str	r1, [r3, #4]
	ldr	r2, [r2, #8]
	str	r2, [r3, #8]
lab581: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =1038
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab563:	push {r1, r2}
	ldr r1, =1038
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r8
	bl	__malloc_unlock
	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =1365
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab554: 	bic	r5, r5, #7
	cmp	r5, #0
	mov	r2, r5
	bge	lab567
lab555: 	movs	r3, #12
	str	r3, [r8]
	movs	r7, #0
lab575: 	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =1518
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab559: 	mov	r6, r3
	ldrd	r2, r3, [r0, #8]
	str	r3, [r2, #12]
	str	r2, [r3, #8]
lab556: 	subs	r3, r6, r5
	cmp	r3, #15
	bhi	lab568
	ldr	r3, [r9, #4]
	and	r3, r3, #1
	orrs	r3, r6
	add	r6, r9
	str	r3, [r9, #4]
	ldr	r3, [r6, #4]
	orr	r3, r3, #1
	str	r3, [r6, #4]
lab570: 	mov	r0, r8
	mov	r7, r4
	bl	__malloc_unlock
	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =1141
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab558: 	lsls	r1, r1, #31
	bmi	lab560
	ldr	r3, [r4, #-8]
	sub	sl, r9, r3
	ldr	r1, [sl, #4]
	bic	r1, r1, #3
	b	lab569
lab553: 	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r1, r2
	b	_malloc_r
lab568: 	ldr	r1, [r9, #4]
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
	ldr r1, =2699
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =2699
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab570
lab557: 	ldr	r0, [ip, #4]
	bic	fp, r0, #3
	add	ip, r6, fp
	add	r0, r5, #16
	cmp	ip, r0
	bge	lab571
	lsls	r1, r1, #31
	bmi	lab560
	ldr	r1, [r4, #-8]
	sub	sl, r9, r1
	ldr	r1, [sl, #4]
	bic	r1, r1, #3
	add	fp, r1
	add	fp, r6
	cmp	r0, fp
	bgt	lab569
	mov	r7, sl
	ldr	r1, [sl, #12]
	ldr	r0, [r7, #8]!
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r0, #12]
	str	r0, [r1, #8]
	bhi	lab572
	cmp	r2, #19
	bls	lab573
	ldr	r1, [r4, #0]
	str	r1, [sl, #8]
	ldr	r1, [r4, #4]
	str	r1, [sl, #12]
	cmp	r2, #27
	bhi	lab574
	adds	r4, #8
	add	r2, sl, #16
lab590: 	ldr	r1, [r4, #0]
	str	r1, [r2, #0]
	ldr	r1, [r4, #4]
	str	r1, [r2, #4]
	ldr	r1, [r4, #8]
	str	r1, [r2, #8]
lab591: 	add	r1, sl, r5
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
	b	lab575
lab566: 	ldr	r3, [r4, #0]
	str	r3, [r0, #0]
	ldr	r3, [r4, #4]
	str	r3, [r0, #4]
	cmp	r2, #27
	bhi	lab576
	add	r2, r4, #8
	add	r3, r0, #8
	b	lab577
lab571: 	add	r2, r9, r5
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
	b	lab575
lab564: 	ldr	r3, [r0, #-4]
	bic	r3, r3, #3
	add	r6, r3
	b	lab556
lab562: 	mov	r7, sl
	ldr	r1, [sl, #12]
	ldr	r0, [r7, #8]!
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r0, #12]
	str	r0, [r1, #8]
	bhi	lab578
	cmp	r2, #19
	bls	lab579
	ldr	r1, [r4, #0]
	str	r1, [sl, #8]
	ldr	r1, [r4, #4]
	str	r1, [sl, #12]
	cmp	r2, #27
	bhi	lab580
	adds	r4, #8
	add	r2, sl, #16
lab586: 	mov	r6, r3
	ldr	r3, [r4, #0]
	str	r3, [r2, #0]
	ldr	r3, [r4, #4]
	str	r3, [r2, #4]
	ldr	r3, [r4, #8]
	str	r3, [r2, #8]
	mov	r9, sl
	mov	r4, r7
	b	lab556
lab565: 	mov	r1, r4
push {r1, r2}
	ldr r1, =6841
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =6841
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab581
lab561: 	ldrd	r1, r3, [r0, #8]
	mov	r7, sl
	str	r3, [r1, #12]
	str	r1, [r3, #8]
	ldr	r1, [r7, #8]!
	ldr	r3, [sl, #12]
	str	r3, [r1, #12]
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r3, #8]
	bhi	lab582
	cmp	r2, #19
	bls	lab583
	ldr	r3, [r4, #0]
	str	r3, [sl, #8]
	ldr	r3, [r4, #4]
	str	r3, [sl, #12]
	cmp	r2, #27
	bhi	lab584
	adds	r4, #8
	add	r3, sl, #16
lab587: 	ldr	r2, [r4, #0]
	str	r2, [r3, #0]
	ldr	r2, [r4, #4]
	str	r2, [r3, #4]
	ldr	r2, [r4, #8]
	str	r2, [r3, #8]
	mov	r6, ip
	mov	r9, sl
	mov	r4, r7
	b	lab556
lab576: 	ldr	r3, [r4, #8]
	str	r3, [r0, #8]
	ldr	r3, [r4, #12]
	str	r3, [r0, #12]
	cmp	r2, #36	
	beq	lab585
	add	r2, r4, #16
	add	r3, r0, #16
	b	lab577
lab579: 	mov	r2, r7
	b	lab586
lab578: 	mov	r1, r4
	mov	r0, r7
	mov	r6, r3
	mov	r9, sl
push {r1, r2}
	ldr r1, =2172
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =2172
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r7
	b	lab556
lab583: 	mov	r3, r7
	b	lab587
lab582: 	mov	r1, r4
	mov	r0, r7
	mov	r6, ip
	mov	r9, sl
push {r1, r2}
	ldr r1, =6661
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =6661
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r7
	b	lab556
	.ltorg
lab580: 	ldr	r1, [r4, #8]
	str	r1, [sl, #16]
	ldr	r1, [r4, #12]
	str	r1, [sl, #20]
	cmp	r2, #36	
	beq	lab588
	adds	r4, #16
	add	r2, sl, #24
	b	lab586
lab585: 	ldr	r3, [r4, #16]
	str	r3, [r0, #16]
	ldr	r1, [r4, #20]
	str	r1, [r0, #20]
	add	r2, r4, #24
	add	r3, r0, #24
	b	lab577
lab584: 	ldr	r3, [r4, #8]
	str	r3, [sl, #16]
	ldr	r3, [r4, #12]
	str	r3, [sl, #20]
	cmp	r2, #36	
	beq	lab589
	adds	r4, #16
	add	r3, sl, #24
	b	lab587
lab573: 	mov	r2, r7
	b	lab590
lab572: 	mov	r1, r4
	mov	r0, r7
push {r1, r2}
	ldr r1, =3460
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3460
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x200009a4	
	b	lab591
lab588: 	ldr	r2, [r4, #16]
	str	r2, [sl, #24]
	ldr	r2, [r4, #20]
	str	r2, [sl, #28]
	adds	r4, #24
	add	r2, sl, #32
	b	lab586
lab574: 	ldr	r1, [r4, #8]
	str	r1, [sl, #16]
	ldr	r1, [r4, #12]
	str	r1, [sl, #20]
	cmp	r2, #36	
	beq	lab592
	adds	r4, #16
	add	r2, sl, #24
	b	lab590
lab589: 	ldr	r3, [r4, #16]
	str	r3, [sl, #24]
	ldr	r3, [r4, #20]
	str	r3, [sl, #28]
	adds	r4, #24
	add	r3, sl, #32
	b	lab587
lab592: 	ldr	r2, [r4, #16]
	str	r2, [sl, #24]
	ldr	r2, [r4, #20]
	str	r2, [sl, #28]
	adds	r4, #24
	add	r2, sl, #32
	b	lab590
	nop
	.ltorg
_sbrk_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x20001a38	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_sbrk
	adds	r3, r0, #1
	beq	lab593
lab594:	nop
	push {r1, r2}
	ldr r1, =3845
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab593: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab594
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =774
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_init_signal_r:
	push	{r3, r4, r5, lr}
	ldr	r4, [r0, #732]	
	cmp r4, #0
	beq lab595
lab598: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab595: 	movs	r1, #128	
	mov	r5, r0
push {r1, r2}
	ldr r1, =1009
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1009
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab596
	subs	r3, r0, #4
	adds	r2, #124	
lab597: 	str	r4, [r3, #4]!
	cmp	r3, r2
	bne	lab597
	b	lab598
lab596: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
_signal_r:
	cmp	r1, #31
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	bhi	lab599
	ldr	r6, [r0, #732]	
	mov	r4, r1
	mov	r7, r2
	cmp r6, #0
	beq lab600
lab603: 	ldr	r0, [r6, r4, lsl #2]
	str	r7, [r6, r4, lsl #2]
	pop	{r3, r4, r5, r6, r7, pc}
lab599: 	movs	r3, #22
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	pop	{r3, r4, r5, r6, r7, pc}
lab600: 	movs	r1, #128	
push {r1, r2}
	ldr r1, =6189
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =6189
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r6, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab601
	subs	r3, r0, #4
	add	r5, r0, #124	
	movs	r1, #0
lab602: 	str	r1, [r3, #4]!
	cmp	r5, r3
	bne	lab602
	b	lab603
lab601: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, r6, r7, pc}
_raise_r:
	cmp	r1, #31
	push	{r3, r4, r5, lr}
	mov	r5, r0
	bhi	lab604
	ldr	r2, [r0, #732]	
	mov	r4, r1
	cmp r2, #0
	beq lab605
	ldr	r3, [r2, r1, lsl #2]
	cmp r3, #0
	beq lab605
	cmp	r3, #1
	beq	lab606
	adds	r1, r3, #1
	beq	lab607
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, r4, lsl #2]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab605: 	mov	r0, r5
	bl	_getpid_r
	mov	r2, r4
	mov	r1, r0
	mov	r0, r5
	ldmia	sp!, {r3, r4, r5, lr}
	b	_kill_r
lab607: 	movs	r3, #22
	str	r3, [r0, #0]
	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab606: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab604: 	movs	r3, #22
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	nop
__sigtramp_r:
	cmp	r1, #31
	bhi	lab608
	ldr	r2, [r0, #732]	
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	cmp r2, #0
	beq lab609
lab615: 	ldr	r3, [r2, r4, lsl #2]
	add	r2, r2, r4, lsl #2
	cmp r3, #0
	beq lab610
	adds	r1, r3, #1
	beq	lab611
	cmp	r3, #1
	beq	lab612
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, #0]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab610: 	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab609: 	movs	r1, #128	
push {r1, r2}
	ldr r1, =4145
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =4145
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab613
	subs	r3, r0, #4
	movs	r1, #0
	adds	r0, #124	
lab614: 	str	r1, [r3, #4]!
	cmp	r0, r3
	bne	lab614
	b	lab615
lab612: 	movs	r0, #3
	pop	{r3, r4, r5, pc}
lab611: 	movs	r0, #2
	pop	{r3, r4, r5, pc}
lab613: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
lab608: 	mov	r0, #4294967295	
	bx	lr
raise:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x2000040c	
	cmp	r0, #31
	ldr	r5, [r3, #0]
	bhi	lab616
	ldr	r2, [r5, #732]	
	mov	r4, r0
	cmp r2, #0
	beq lab617
	ldr	r3, [r2, r0, lsl #2]
	cmp r3, #0
	beq lab617
	cmp	r3, #1
	beq	lab618
	adds	r1, r3, #1
	beq	lab619
	movs	r5, #0
	str	r5, [r2, r0, lsl #2]
	blx	r3
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =4677
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab617: 	mov	r0, r5
	bl	_getpid_r
	mov	r2, r4
	mov	r1, r0
	mov	r0, r5
	ldmia	sp!, {r3, r4, r5, lr}
	b	_kill_r
lab619: 	movs	r3, #22
	str	r3, [r5, #0]
	movs	r0, #1
	nop
	push {r1, r2}
	ldr r1, =5422
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab618: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =2044
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab616: 	movs	r3, #22
	str	r3, [r5, #0]
	mov	r0, #4294967295	
	nop
	push {r1, r2}
	ldr r1, =1175
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	nop
	.ltorg
signal:
	ldr	r3, =0x2000040c	
	cmp	r0, #31
	push	{r4, r5, r6, lr}
	ldr	r6, [r3, #0]
	bhi	lab620
	mov	r5, r1
	ldr	r1, [r6, #732]	
	mov	r4, r0
	cmp r1, #0
	beq lab621
lab624: 	ldr	r0, [r1, r4, lsl #2]
	str	r5, [r1, r4, lsl #2]
	pop	{r4, r5, r6, pc}
lab620: 	movs	r3, #22
	str	r3, [r6, #0]
	mov	r0, #4294967295	
	pop	{r4, r5, r6, pc}
lab621: 	movs	r1, #128	
	mov	r0, r6
push {r1, r2}
	ldr r1, =1357
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1357
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r1, r0
	str	r0, [r6, #732]	
	cmp r0, #0
	beq lab622
	subs	r3, r0, #4
	add	ip, r0, #124	
	movs	r2, #0
lab623: 	str	r2, [r3, #4]!
	cmp	r3, ip
	bne	lab623
	b	lab624
lab622: 	mov	r0, #4294967295	
	pop	{r4, r5, r6, pc}
	.ltorg
_init_signal:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x2000040c	
	ldr	r5, [r3, #0]
	ldr	r4, [r5, #732]	
	cmp r4, #0
	beq lab625
lab628: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab625: 	movs	r1, #128	
	mov	r0, r5
push {r1, r2}
	ldr r1, =303
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =303
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab626
	subs	r3, r0, #4
	add	r2, r0, #124	
lab627: 	str	r4, [r3, #4]!
	cmp	r3, r2
	bne	lab627
	b	lab628
lab626: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	.ltorg
__sigtramp:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x2000040c	
	cmp	r0, #31
	ldr	r5, [r3, #0]
	bhi	lab629
	ldr	r2, [r5, #732]	
	mov	r4, r0
	cmp r2, #0
	beq lab630
lab635: 	ldr	r3, [r2, r4, lsl #2]
	add	r2, r2, r4, lsl #2
	cmp r3, #0
	beq lab631
	adds	r1, r3, #1
	beq	lab632
	cmp	r3, #1
	beq	lab633
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, #0]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab631: 	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab630: 	movs	r1, #128	
	mov	r0, r5
push {r1, r2}
	ldr r1, =1920
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1920
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab629
	subs	r3, r0, #4
	movs	r1, #0
	adds	r0, #124	
lab634: 	str	r1, [r3, #4]!
	cmp	r3, r0
	bne	lab634
	b	lab635
lab633: 	movs	r0, #3
	pop	{r3, r4, r5, pc}
lab632: 	movs	r0, #2
	pop	{r3, r4, r5, pc}
lab629: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	nop
	.ltorg
_kill_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldr	r5, =0x20001a38	
	mov	r3, r0
	movs	r6, #0
	mov	r0, r4
	mov	r1, r2
	mov	r4, r3
	str	r6, [r5, #0]
	bl	_kill
	adds	r3, r0, #1
	beq	lab636
lab637:	nop
	push {r1, r2}
	ldr r1, =6491
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab636: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab637
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =5122
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
	ldr r1, =2550
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab638
	ldr	r3, [r4, #80]	
	add	r3, r0
	str	r3, [r4, #80]	
	pop	{r4, pc}
lab638: 	ldrh	r3, [r4, #12]
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
	bmi	lab639
lab640: 	bic	r1, r1, #4096	
	strh	r1, [r4, #12]
	mov	r3, r7
	ldrsh	r1, [r4, #14]
	mov	r2, r6
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	b	_write_r
lab639: 	ldrsh	r1, [r4, #14]
	movs	r3, #2
	movs	r2, #0
push {r1, r2}
	ldr r1, =7869
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_lseek_r
	push {r1, r2}
	ldr r1, =7869
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r1, [r4, #12]
	b	lab640
	nop
__sseek:
	push	{r4, lr}
	mov	r4, r1
	ldrsh	r1, [r1, #14]
push {r1, r2}
	ldr r1, =3302
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_lseek_r
	push {r1, r2}
	ldr r1, =3302
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
	bne	lab641
	cmp	r2, #3
	bhi	lab642
lab641: 	mov	ip, r0
lab646: 	add	lr, r1, #4294967295	
	b	lab643
lab645: 	ldrb	r1, [lr, #1]!
	strb	r1, [r3], #1
	subs	r4, r2, #1
	cmp r1, #0
	beq lab644
	mov	ip, r3
	mov	r2, r4
lab643: 	mov	r3, ip
	cmp	r2, #0
	bne	lab645
lab648:	nop
	push {r1, r2}
	ldr r1, =7513
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, pc}
lab642: 	mov	r3, r1
	mov	ip, r0
lab647: 	mov	r1, r3
	ldr	r5, [r3], #4
	sub	r4, r5, #16843009	
	bic	r4, r4, r5
	tst	r4, #2155905152	
	bne	lab646
	subs	r2, #4
	cmp	r2, #3
	str	r5, [ip], #4
	mov	r1, r3
	bhi	lab647
	b	lab646
lab644: 	add	r2, ip
	cmp	r4, #0
	beq	lab648
lab649: 	strb	r1, [r3], #1
	cmp	r3, r2
	bne	lab649
	nop
	push {r1, r2}
	ldr r1, =1404
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
	beq lab650
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab651
lab650: 	ldrsh	r2, [r4, #12]
	ldr	r3, [r4, #24]
	str	r3, [r4, #8]
	lsls	r7, r2, #28
	uxth	r0, r2
	bpl	lab652
	ldr	r3, [r4, #16]
	cmp r3, #0
	beq lab652
	uxtb	r5, r5
	lsls	r1, r0, #18
	mov	r7, r5
	bpl	lab653
lab658: 	ldr	r2, [r4, #0]
	ldr	r1, [r4, #20]
	subs	r3, r2, r3
	cmp	r1, r3
	ble	lab654
lab659: 	adds	r3, #1
lab660: 	ldr	r1, [r4, #8]
	subs	r1, #1
	str	r1, [r4, #8]
	adds	r1, r2, #1
	str	r1, [r4, #0]
	strb	r5, [r2, #0]
	ldr	r2, [r4, #20]
	cmp	r2, r3
	beq	lab655
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #31
	bpl	lab656
	cmp	r5, #10
	beq	lab655
lab656: 	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =5060
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab652: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =3016
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =3016
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab657
	ldrsh	r2, [r4, #12]
	ldr	r3, [r4, #16]
	uxth	r0, r2
	uxtb	r5, r5
	lsls	r1, r0, #18
	mov	r7, r5
	bmi	lab658
lab653: 	orr	r2, r2, #8192	
	strh	r2, [r4, #12]
	ldr	r2, [r4, #100]	
	ldr	r1, [r4, #20]
	bic	r2, r2, #8192	
	str	r2, [r4, #100]	
	ldr	r2, [r4, #0]
	subs	r3, r2, r3
	cmp	r1, r3
	bgt	lab659
lab654: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =1873
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =1873
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab657
	ldr	r2, [r4, #0]
	movs	r3, #1
	b	lab660
lab651: 	bl	__sinit
	b	lab650
lab655: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =4260
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =4260
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab656
lab657: 	mov	r7, #4294967295	
	b	lab656
__swbuf:
	push	{r4}
	ldr	r4, =0x2000040c	
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
	beq lab661
	ldr	r6, =0x20000838	
	ldr	r6, [r6, #224]	
	nop
	push {r1, r2}
	ldr r1, =4519
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	beq	lab662
lab663: 	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =3551
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab661: 	mov	r2, r1
	ldr	r1, =0x20000838	
	ldr	r6, [r1, #224]	
	add	r1, sp, #4
	nop
	push {r1, r2}
	ldr r1, =3045
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	bne	lab663
lab662: 	movs	r2, #0
	movs	r3, #138	
	str	r2, [r4, #0]
	str	r3, [r5, #0]
	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =5664
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
wcrtomb:
	push	{r4, r5, r6, lr}
	ldr	r3, =0x2000040c	
	sub	sp, #16
	ldr	r5, [r3, #0]
	mov	r4, r2
	mov	r3, r1
	mov	r1, r0
	cmp r0, #0
	beq lab664
	ldr	r0, =0x20000838	
	mov	r2, r3
	ldr	r6, [r0, #224]	
	mov	r3, r4
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =7485
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	beq	lab665
lab666: 	add	sp, #16
	pop	{r4, r5, r6, pc}
lab664: 	ldr	r2, =0x20000838	
	mov	r3, r4
	ldr	r6, [r2, #224]	
	add	r1, sp, #4
	mov	r2, r0
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =7148
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	bne	lab666
lab665: 	movs	r2, #0
	movs	r3, #138	
	str	r2, [r4, #0]
	str	r3, [r5, #0]
	add	sp, #16
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
_wctomb_r:
	push	{r4}
	ldr	r4, =0x20000838	
	ldr	r4, [r4, #224]	
	mov	ip, r4
	pop	{r4}
	bx	ip
	nop
	.ltorg
__ascii_wctomb:	push {r1, r2}
	ldr r1, =2217
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r1, #0
	beq lab667
	cmp	r2, #255	
	bhi	lab668
	strb	r2, [r1, #0]
	movs	r0, #1
	bx	lr
lab668: 	movs	r3, #138	
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	bx	lr
lab667: 	mov	r0, r1
	bx	lr
	nop
_write_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x20001a38	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_write
	adds	r3, r0, #1
	beq	lab669
lab670: 	pop	{r3, r4, r5, pc}
lab669: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab670
	str	r3, [r4, #0]
	pop	{r3, r4, r5, pc}
	.ltorg
_close_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x20001a38	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_close
	adds	r3, r0, #1
	beq	lab671
lab672: 	pop	{r3, r4, r5, pc}
lab671: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab672
	str	r3, [r4, #0]
	pop	{r3, r4, r5, pc}
	.ltorg
_fclose_r:
	push	{r4, r5, r6, lr}
	cmp	r1, #0
	beq	lab673
	mov	r6, r0
	mov	r4, r1
	cmp r0, #0
	beq lab674
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab675
lab674: 	ldr	r3, [r4, #100]	
	lsls	r0, r3, #31
	bpl	lab676
lab685: 	ldrsh	r3, [r4, #12]
	cmp	r3, #0
	beq	lab673
lab683: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =4542
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =4542
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #44]	
	mov	r5, r0
	cmp r3, #0
	beq lab677
	ldr	r1, [r4, #28]
	mov	r0, r6
	blx	r3
	cmp	r0, #0
	it	lt
	movlt	r5, #4294967295	
lab677: 	ldrh	r3, [r4, #12]
	lsls	r2, r3, #24
	bmi	lab678
lab686: 	ldr	r1, [r4, #48]	
	cmp r1, #0
	beq lab679
	add	r3, r4, #64	
	cmp	r1, r3
	beq	lab680
	mov	r0, r6
push {r1, r2}
	ldr r1, =122
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab680:	push {r1, r2}
	ldr r1, =122
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	movs	r3, #0
	str	r3, [r4, #48]	
lab679: 	ldr	r1, [r4, #68]	
	cmp r1, #0
	beq lab681
	mov	r0, r6
push {r1, r2}
	ldr r1, =7893
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =7893
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	str	r3, [r4, #68]	
lab681: 	bl	__sfp_lock_acquire
	ldr	r3, [r4, #100]	
	movs	r2, #0
	lsls	r3, r3, #31
	strh	r2, [r4, #12]
	bpl	lab682
lab687: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_close_recursive
	bl	__sfp_lock_release
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab676: 	ldrh	r3, [r4, #12]
	lsls	r1, r3, #22
	bmi	lab683
	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	cmp	r3, #0
	bne	lab683
	ldr	r5, [r4, #100]	
	ands	r5, r5, #1
	beq	lab684
lab673: 	movs	r5, #0
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab675: 	bl	__sinit
	ldr	r3, [r4, #100]	
	lsls	r0, r3, #31
	bmi	lab685
	b	lab676
lab684: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab678: 	ldr	r1, [r4, #16]
	mov	r0, r6
push {r1, r2}
	ldr r1, =2431
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =2431
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab686
lab682: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	b	lab687
fclose:
	ldr	r3, =0x2000040c	
	mov	r1, r0
	ldr	r0, [r3, #0]
	b	_fclose_r
	nop
	.ltorg
_fstat_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldr	r5, =0x20001a38	
	mov	r3, r0
	movs	r6, #0
	mov	r0, r4
	mov	r1, r2
	mov	r4, r3
	str	r6, [r5, #0]
	bl	_fstat
	adds	r3, r0, #1
	beq	lab688
lab689:	nop
	push {r1, r2}
	ldr r1, =6619
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab688: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab689
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =5135
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
_isatty_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x20001a38	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_isatty
	adds	r3, r0, #1
	beq	lab690
lab691:	nop
	push {r1, r2}
	ldr r1, =2000
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab690: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab691
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =3619
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_lseek_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x20001a38	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_lseek
	adds	r3, r0, #1
	beq	lab692
lab693:	nop
	push {r1, r2}
	ldr r1, =6434
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab692: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab693
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =4183
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_read_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x20001a38	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_read
	adds	r3, r0, #1
	beq	lab694
lab695:	nop
	push {r1, r2}
	ldr r1, =5710
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab694: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab695
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =623
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
	beq lab696
	ldr	r7, [r6, #0]
	cmp r7, #0
	beq lab697
	ldr	r8, [r7]
	cmp	r8, #0
	beq	lab698
	ldr	r1, [r8]
	cmp r1, #0
	beq lab699
push {r1, r2}
	ldr r1, =2567
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	cleanup_glue
lab699:	push {r1, r2}
	ldr r1, =2567
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r8
	mov	r0, r5
push {r1, r2}
	ldr r1, =736
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab698:	push {r1, r2}
	ldr r1, =736
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r7
	mov	r0, r5
push {r1, r2}
	ldr r1, =1483
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab697:	push {r1, r2}
	ldr r1, =1483
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r6
	mov	r0, r5
push {r1, r2}
	ldr r1, =6349
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab696:	push {r1, r2}
	ldr r1, =6349
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r4
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	b	_free_r
_reclaim_reent:
	ldr	r3, =0x2000040c	
	ldr	r3, [r3, #0]
	cmp	r3, r0
	beq	lab700
	ldr	r1, [r0, #76]	
	push	{r4, r5, r6, lr}
	mov	r5, r0
	cmp r1, #0
	beq lab701
	movs	r6, #0
lab704: 	ldr	r4, [r1, r6]
	cmp r4, #0
	beq lab702
lab703: 	mov	r1, r4
	ldr	r4, [r4, #0]
	mov	r0, r5
push {r1, r2}
	ldr r1, =7818
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =7818
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r4, #0
	bne	lab703
	ldr	r1, [r5, #76]	
lab702: 	adds	r6, #4
	cmp	r6, #128	
	bne	lab704
	mov	r0, r5
push {r1, r2}
	ldr r1, =7948
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab701:	push {r1, r2}
	ldr r1, =7948
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r1, [r5, #64]	
	cmp r1, #0
	beq lab705
	mov	r0, r5
push {r1, r2}
	ldr r1, =5317
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab705:	push {r1, r2}
	ldr r1, =5317
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r4, [r5, #328]	
	cmp r4, #0
	beq lab706
	add	r6, r5, #332	
	cmp	r4, r6
	beq	lab706
lab707: 	mov	r1, r4
	ldr	r4, [r4, #0]
	mov	r0, r5
push {r1, r2}
	ldr r1, =473
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =473
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r6, r4
	bne	lab707
lab706: 	ldr	r1, [r5, #84]	
	cmp r1, #0
	beq lab708
	mov	r0, r5
push {r1, r2}
	ldr r1, =1073
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab708:	push {r1, r2}
	ldr r1, =1073
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r3, [r5, #56]	
	cmp r3, #0
	beq lab709
	ldr	r3, [r5, #60]	
	mov	r0, r5
	blx	r3
	ldr	r4, [r5, #736]	
	cmp r4, #0
	beq lab709
	ldr	r1, [r4, #0]
	cmp r1, #0
	beq lab710
	mov	r0, r5
push {r1, r2}
	ldr r1, =8005
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	cleanup_glue
lab710:	push {r1, r2}
	ldr r1, =8005
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r4
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, lr}
	b	_free_r
lab709: 	pop	{r4, r5, r6, pc}
lab700: 	bx	lr
	.ltorg
_close:
	ldr	r3, =0x20001a38	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_fstat:
	ldr	r3, =0x20001a38	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_getpid:
	ldr	r3, =0x20001a38	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_isatty:
	ldr	r3, =0x20001a38	
	movs	r2, #88	
	str	r2, [r3, #0]
	movs	r0, #0
	bx	lr
	nop
	.ltorg
_kill:
	ldr	r3, =0x20001a38	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_lseek:
	ldr	r3, =0x20001a38	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_read:
	ldr	r3, =0x20001a38	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_sbrk:
	ldr	r2, =0x20001a3c	
	ldr	r1, =0x20001a40	
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
	ldr	r3, =0x20001a38	
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
	.word	0x00000007
	.word	0x0000000c
	.word	0x00000011
	.word	0x00000016
	.word	0x00000007
	.word	0x0000000c
	.word	0x00000011
	.word	0x00000016
	.word	0x00000007
	.word	0x0000000c
	.word	0x00000011
	.word	0x00000016
	.word	0x00000007
	.word	0x0000000c
	.word	0x00000011
	.word	0x00000016
	.word	0x00000005
	.word	0x00000009
	.word	0x0000000e
	.word	0x00000014
	.word	0x00000005
	.word	0x00000009
	.word	0x0000000e
	.word	0x00000014
	.word	0x00000005
	.word	0x00000009
	.word	0x0000000e
	.word	0x00000014
	.word	0x00000005
	.word	0x00000009
	.word	0x0000000e
	.word	0x00000014
	.word	0x00000004
	.word	0x0000000b
	.word	0x00000010
	.word	0x00000017
	.word	0x00000004
	.word	0x0000000b
	.word	0x00000010
	.word	0x00000017
	.word	0x00000004
	.word	0x0000000b
	.word	0x00000010
	.word	0x00000017
	.word	0x00000004
	.word	0x0000000b
	.word	0x00000010
	.word	0x00000017
	.word	0x00000006
	.word	0x0000000a
	.word	0x0000000f
	.word	0x00000015
	.word	0x00000006
	.word	0x0000000a
	.word	0x0000000f
	.word	0x00000015
	.word	0x00000006
	.word	0x0000000a
	.word	0x0000000f
	.word	0x00000015
	.word	0x00000006
	.word	0x0000000a
	.word	0x0000000f
	.word	0x00000015
	.word	0xd76aa478
	.word	0xe8c7b756
	.word	0x242070db
	.word	0xc1bdceee
	.word	0xf57c0faf
	.word	0x4787c62a
	.word	0xa8304613
	.word	0xfd469501
	.word	0x698098d8
	.word	0x8b44f7af
	.word	0xffff5bb1
	.word	0x895cd7be
	.word	0x6b901122
	.word	0xfd987193
	.word	0xa679438e
	.word	0x49b40821
	.word	0xf61e2562
	.word	0xc040b340
	.word	0x265e5a51
	.word	0xe9b6c7aa
	.word	0xd62f105d
	.word	0x02441453
	.word	0xd8a1e681
	.word	0xe7d3fbc8
	.word	0x21e1cde6
	.word	0xc33707d6
	.word	0xf4d50d87
	.word	0x455a14ed
	.word	0xa9e3e905
	.word	0xfcefa3f8
	.word	0x676f02d9
	.word	0x8d2a4c8a
	.word	0xfffa3942
	.word	0x8771f681
	.word	0x6d9d6122
	.word	0xfde5380c
	.word	0xa4beea44
	.word	0x4bdecfa9
	.word	0xf6bb4b60
	.word	0xbebfbc70
	.word	0x289b7ec6
	.word	0xeaa127fa
	.word	0xd4ef3085
	.word	0x04881d05
	.word	0xd9d4d039
	.word	0xe6db99e5
	.word	0x1fa27cf8
	.word	0xc4ac5665
	.word	0xf4292244
	.word	0x432aff97
	.word	0xab9423a7
	.word	0xfc93a039
	.word	0x655b59c3
	.word	0x8f0ccc92
	.word	0xffeff47d
	.word	0x85845dd1
	.word	0x6fa87e4f
	.word	0xfe2ce6e0
	.word	0xa3014314
	.word	0x4e0811a1
	.word	0xf7537e82
	.word	0xbd3af235
	.word	0x2ad7d2bb
	.word	0xeb86d391
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
	.word	0x20000410
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
	.word	0x20000410


	 .section .data.impure_data

impure_data:
	.word	0x00000000
	.word	0x200006fc
	.word	0x20000764
	.word	0x200007cc
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
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
	.word	0x08003f29
	.word	0x080034dd
	.word	0x00000000
	.word	0x20000304
	.word	0x20000300
	.word	0x2000026c
	.word	0x2000026c
	.word	0x2000026c
	.word	0x2000026c
	.word	0x2000026c
	.word	0x2000026c
	.word	0x2000026c
	.word	0x2000026c
	.word	0x2000026c
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
	.word	0x20000ba4
	.word	0x20000ba4
	.word	0x20000bac
	.word	0x20000bac
	.word	0x20000bb4
	.word	0x20000bb4
	.word	0x20000bbc
	.word	0x20000bbc
	.word	0x20000bc4
	.word	0x20000bc4
	.word	0x20000bcc
	.word	0x20000bcc
	.word	0x20000bd4
	.word	0x20000bd4
	.word	0x20000bdc
	.word	0x20000bdc
	.word	0x20000be4
	.word	0x20000be4
	.word	0x20000bec
	.word	0x20000bec
	.word	0x20000bf4
	.word	0x20000bf4
	.word	0x20000bfc
	.word	0x20000bfc
	.word	0x20000c04
	.word	0x20000c04
	.word	0x20000c0c
	.word	0x20000c0c
	.word	0x20000c14
	.word	0x20000c14
	.word	0x20000c1c
	.word	0x20000c1c
	.word	0x20000c24
	.word	0x20000c24
	.word	0x20000c2c
	.word	0x20000c2c
	.word	0x20000c34
	.word	0x20000c34
	.word	0x20000c3c
	.word	0x20000c3c
	.word	0x20000c44
	.word	0x20000c44
	.word	0x20000c4c
	.word	0x20000c4c
	.word	0x20000c54
	.word	0x20000c54
	.word	0x20000c5c
	.word	0x20000c5c
	.word	0x20000c64
	.word	0x20000c64
	.word	0x20000c6c
	.word	0x20000c6c
	.word	0x20000c74
	.word	0x20000c74
	.word	0x20000c7c
	.word	0x20000c7c
	.word	0x20000c84
	.word	0x20000c84
	.word	0x20000c8c
	.word	0x20000c8c
	.word	0x20000c94
	.word	0x20000c94
	.word	0x20000c9c
	.word	0x20000c9c
	.word	0x20000ca4
	.word	0x20000ca4
	.word	0x20000cac
	.word	0x20000cac
	.word	0x20000cb4
	.word	0x20000cb4
	.word	0x20000cbc
	.word	0x20000cbc
	.word	0x20000cc4
	.word	0x20000cc4
	.word	0x20000ccc
	.word	0x20000ccc
	.word	0x20000cd4
	.word	0x20000cd4
	.word	0x20000cdc
	.word	0x20000cdc
	.word	0x20000ce4
	.word	0x20000ce4
	.word	0x20000cec
	.word	0x20000cec
	.word	0x20000cf4
	.word	0x20000cf4
	.word	0x20000cfc
	.word	0x20000cfc
	.word	0x20000d04
	.word	0x20000d04
	.word	0x20000d0c
	.word	0x20000d0c
	.word	0x20000d14
	.word	0x20000d14
	.word	0x20000d1c
	.word	0x20000d1c
	.word	0x20000d24
	.word	0x20000d24
	.word	0x20000d2c
	.word	0x20000d2c
	.word	0x20000d34
	.word	0x20000d34
	.word	0x20000d3c
	.word	0x20000d3c
	.word	0x20000d44
	.word	0x20000d44
	.word	0x20000d4c
	.word	0x20000d4c
	.word	0x20000d54
	.word	0x20000d54
	.word	0x20000d5c
	.word	0x20000d5c
	.word	0x20000d64
	.word	0x20000d64
	.word	0x20000d6c
	.word	0x20000d6c
	.word	0x20000d74
	.word	0x20000d74
	.word	0x20000d7c
	.word	0x20000d7c
	.word	0x20000d84
	.word	0x20000d84
	.word	0x20000d8c
	.word	0x20000d8c
	.word	0x20000d94
	.word	0x20000d94
	.word	0x20000d9c
	.word	0x20000d9c


	 .section .data.__malloc_sbrk_base

__malloc_sbrk_base:
	.word	0xffffffff


	 .section .data.__malloc_trim_threshold

__malloc_trim_threshold:
	.word	0x00020000


	 .section .bss

h0:
	.word	0x00000000
h1:
	.word	0x00000000
h2:
	.word	0x00000000
h3:
	.word	0x00000000
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

__StackTop_0x1a5c0:
	.word	0x67ffb30c
	.word	0x00000001
