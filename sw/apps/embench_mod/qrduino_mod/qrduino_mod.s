	.cpu cortex-m4
	.text
	.thumb
	.syntax unified
	.global main
	.type main, %function

    .global SystemInit
	.type SystemInit, %function

benchmark_body.constprop.0:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movw	r4, #4508	
	movw	r8, #0
	movw	r7, #12756	
	movw	r6, #4516	
	mov	r5, #840	
	movt	r4, #8192	
	movt	r8, #8192	
	movt	r7, #8192	
	movt	r6, #8192	
	mov	r9, #22
lab0: 	mov	r1, #8192	
	mov	r0, r6
	strd	r8, r9, [r4]
push {r1, r2}
	ldr r1, =5148
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	init_heap_beebs
	push {r1, r2}
	ldr r1, =5148
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r1, [r4, #4]
	movs	r0, #1
push {r1, r2}
	ldr r1, =5933
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	initeccsize
	push {r1, r2}
	ldr r1, =5933
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r1, r2, [r4]
	ldr	r0, [r7, #0]
	bl	memcpy
push {r1, r2}
	ldr r1, =7728
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	initframe
push {r1, r2}
	ldr r1, =3053
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	push {r1, r2}
	ldr r1, =7728
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	qrencode
	push {r1, r2}
	ldr r1, =3053
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	freeframe
	bl	freeecc
	subs	r5, #1
	bne	lab0
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =1567
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	nop
benchmark_body.isra.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r6, r0, #0
	ble	lab1
	movw	r4, #4508	
	movw	r9, #0
	movw	r8, #12756	
	movw	r7, #4516	
	movs	r5, #0
	movt	r4, #8192	
	movt	r9, #8192	
	movt	r8, #8192	
	movt	r7, #8192	
	mov	sl, #22
lab2: 	mov	r1, #8192	
	mov	r0, r7
	strd	r9, sl, [r4]
push {r1, r2}
	ldr r1, =7153
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	init_heap_beebs
	push {r1, r2}
	ldr r1, =7153
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r1, [r4, #4]
	movs	r0, #1
push {r1, r2}
	ldr r1, =4899
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	initeccsize
	push {r1, r2}
	ldr r1, =4899
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r5, #1
	ldrd	r1, r2, [r4]
	ldr	r0, [r8]
	bl	memcpy
push {r1, r2}
	ldr r1, =5201
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	initframe
push {r1, r2}
	ldr r1, =1904
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	push {r1, r2}
	ldr r1, =5201
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	qrencode
	push {r1, r2}
	ldr r1, =1904
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	freeframe
	bl	freeecc
	cmp	r5, r6
	bne	lab2
lab1:	nop
	push {r1, r2}
	ldr r1, =6817
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	nop
warm_caches:
	b	benchmark_body.isra.0
	nop
benchmark:
	b	benchmark_body.constprop.0
	nop
initialise_benchmark:
	bx	lr
	nop
verify_benchmark:
	push	{lr}
	movw	ip, #24
	movt	ip, #8192	
	ldmia	ip!, {r0, r1, r2, r3}
	sub	sp, #28
	mov	lr, sp
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1}
	movw	r3, #12756	
	str	r0, [lr], #4
	movt	r3, #8192	
	strh	r1, [lr]
	ldr	r0, [r3, #0]
	movs	r2, #22
	mov	r1, sp
	bl	memcmp
	push {r1, r2}
	ldr r1, =5469
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	beq lab3
	movs	r0, #0
	add	sp, #28
	ldr	pc, [sp], #4
lab3: 	movw	r0, #4516	
	movt	r0, #8192	
	bl	check_heap_beebs
	subs	r0, #0
	it	ne
	movne	r0, #1
	add	sp, #28
	ldr	pc, [sp], #4
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
lab4: 	ldr	r2, [r3, #0]
	lsls	r0, r2, #14
	bpl	lab4
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
lab5: 	ldr	r3, [r2, #0]
	lsls	r1, r3, #6
	bpl	lab5
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
lab6: 	ldr	r3, [r1, #8]
	lsls	r3, r3, #28
	bpl	lab6
	movw	r3, #2028	
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
	ldr r1, =1402
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	start_trigger
	bl	benchmark
	push {r1, r2}
	ldr r1, =4896
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
	movw	r3, #12708	
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
	movw	r3, #12708	
	movt	r3, #8192	
	str	r0, [r3, #0]
	bx	lr
init_heap_beebs:
	ands	r2, r1, #3
	push	{r3, lr}
	bne	lab7
	movw	r3, #12708	
	movt	r3, #8192	
	add	r1, r0
	strd	r0, r1, [r3, #4]
	str	r2, [r3, #12]
	nop
	push {r1, r2}
	ldr r1, =2256
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, pc}
lab7: 	movw	r3, #48	
	movw	r2, #128	
	movw	r0, #80	
	movt	r3, #8192	
	movt	r2, #8192	
	movs	r1, #65	
	movt	r0, #8192	
	bl	__assert_func
check_heap_beebs:
	movw	r3, #12708	
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
	beq lab8
	movw	r2, #12708	
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
	bcc	lab8
	str	r1, [r2, #4]
	bx	lr
lab8: 	movs	r0, #0
	bx	lr
	nop
calloc_beebs:
	mul	r2, r1, r0
	push	{r4, lr}
	cmp r2, #0
	beq lab9
	movw	r3, #12708	
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
	bcc	lab9
	str	r1, [r3, #4]
	cmp r4, #0
	beq lab10
	movs	r1, #0
	mov	r0, r4
push {r1, r2}
	ldr r1, =1715
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
lab10:	push {r1, r2}
	ldr r1, =1715
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r4
	nop
	push {r1, r2}
	ldr r1, =2352
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
lab9: 	movs	r4, #0
	mov	r0, r4
	nop
	push {r1, r2}
	ldr r1, =1047
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
	nop
realloc_beebs:
	cmp	r0, #0
	beq	lab11
	cmp	r1, #0
	beq	lab11
	movw	r3, #12708	
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
	bcc	lab12
	str	r4, [r3, #4]
	cmp r0, #0
	beq lab12
	adds	r3, r2, #1
	subs	r3, r0, r3
	cmp	r3, #2
	add	r4, r1, #4294967295	
	bls	lab13
	cmp	r4, #7
	bls	lab13
	bic	r4, r1, #3
	mov	r3, r2
	mov	ip, r0
	add	r4, r2
lab14: 	ldr	lr, [r3], #4
	str	lr, [ip], #4
	cmp	r3, r4
	bne	lab14
	lsls	r4, r1, #30
	bic	r3, r1, #3
	beq	lab15
	ldrb	r4, [r2, r3]
	strb	r4, [r0, r3]
	adds	r4, r3, #1
	cmp	r1, r4
	bls	lab15
	adds	r3, #2
	ldrb	r5, [r2, r4]
	strb	r5, [r0, r4]
	cmp	r1, r3
	bls	lab15
	ldrb	r2, [r2, r3]
	strb	r2, [r0, r3]
lab15: 	pop	{r4, r5, pc}
lab12: 	movs	r0, #0
	pop	{r4, r5, pc}
lab13: 	subs	r3, r2, #1
	subs	r1, r0, #1
	add	r2, r4
lab16: 	ldrb	r4, [r3, #1]!
	strb	r4, [r1, #1]!
	cmp	r3, r2
	bne	lab16
	pop	{r4, r5, pc}
lab11: 	movs	r0, #0
	bx	lr
free_beebs:
	bx	lr
	nop
initframe:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r9, #12724	
	movt	r9, #8192	
	sub	sp, #204	
	ldrb	r3, [r9, #1]
	ldrb	r0, [r9]
	movs	r1, #1
	mul	r0, r3, r0
push {r1, r2}
	ldr r1, =4177
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	calloc_beebs
	push {r1, r2}
	ldr r1, =4177
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r3, [r9, #1]
	movs	r1, #1
	mla	r3, r3, r3, r3
	mov	r2, r0
	asr	r0, r3, r1
	adds	r0, #7
	lsrs	r0, r0, #3
	str	r2, [r9, #4]
push {r1, r2}
	ldr r1, =5398
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	calloc_beebs
	push {r1, r2}
	ldr r1, =5398
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r3, [r9, #1]
	str	r0, [r9, #8]
	adds	r0, r3, #1
	bl	malloc_beebs
	movs	r3, #0
	str	r0, [r9, #12]
	str	r3, [sp, #68]	
	mov	fp, #128	
lab21: 	ldr	r3, [sp, #68]	
	uxtb	r2, r3
	cmp	r3, #1
	str	r2, [sp, #40]	
	beq	lab17
	cmp	r2, #2
	beq	lab18
	movs	r2, #1
	movs	r3, #3
	strd	r2, r2, [sp, #24]
	str	r2, [sp, #20]
	str	r2, [sp, #16]
	movs	r2, #8
	movs	r7, #0
	mov	ip, #2
	mov	lr, #4
	movs	r1, #5
	movs	r0, #16
	movs	r4, #32
	movs	r5, #6
	mov	r6, r3
	str	r2, [sp, #184]	
	mvn	r2, #127	
	strd	ip, r4, [sp, #172]	
	strd	r7, ip, [sp, #4]
	str	r3, [sp, #56]	
	str	r7, [sp, #112]	
	str	r0, [sp, #192]	
	str	r4, [sp, #180]	
	str	r5, [sp, #104]	
	str	r3, [sp, #52]	
	str	r3, [sp, #116]	
	str	r3, [sp, #72]	
	str	r7, [sp, #168]	
	str	r2, [sp, #0]
	str	r7, [sp, #44]	
	strd	lr, lr, [sp, #76]	
	str	ip, [sp, #64]	
	str	r1, [sp, #12]
	str	ip, [sp, #60]	
	str	lr, [sp, #48]	
	str	r1, [sp, #36]	
	str	ip, [sp, #108]	
	str	r1, [sp, #32]
	str	ip, [sp, #40]	
	str	lr, [sp, #188]	
	mov	r2, r7
	strd	r3, r0, [sp, #96]	
	mov	r4, r7
	mov	r0, r7
	str	r7, [sp, #92]	
	mov	r3, r7
	str	r5, [sp, #196]	
	mov	sl, r1
	str	r6, [sp, #124]	
	str	ip, [sp, #120]	
	str	lr, [sp, #128]	
	mov	r5, ip
	mov	r7, lr
lab69: 	and	r5, r5, #7
	and	r6, r6, #7
	and	r7, r7, #7
	asr	r1, fp, r5
	asr	r5, fp, r6
	asr	r6, fp, r7
	ldrd	r7, ip, [sp, #92]	
	str	r5, [sp, #144]	
	ldrb	r5, [r9]
	str	r1, [sp, #136]	
	mla	r5, ip, r5, r7
	ldr	ip, [r9, #4]
	ldr	r1, [sp, #100]	
	ldrb	r7, [ip, r5]
	str	r6, [sp, #152]	
	orrs	r7, r1
	strb	r7, [ip, r5]
	ldrb	r5, [r9]
	ldr	ip, [r9, #4]
	ldr	r1, [sp, #0]
	ldr	r8, [sp, #8]
	asrs	r6, r3, #3
	mla	r6, r2, r5, r6
	asr	r0, fp, r0
	ldrb	ip, [ip, r6]
	orr	r0, r0, ip
	ldr	ip, [r9, #4]
	strb	r0, [ip, r6]
	adds	r0, r4, #1
	adds	r4, #5
	and	r4, r4, #7
	asr	ip, fp, r4
	ldrb	r4, [r9]
	str	ip, [sp, #160]	
	ldr	ip, [sp, #44]	
	mla	r4, r2, r4, r4
	add	r4, ip
	ldr	ip, [r9, #4]
	ldrb	ip, [ip, r4]
	orr	ip, r1, ip
	ldr	r1, [r9, #4]
	adds	r6, r3, #2
	strb	ip, [r1, r4]
	asrs	r4, r6, #3
	and	r6, r6, #7
	asr	r6, fp, r6
	ldr	ip, [sp, #4]
	str	r6, [sp, #132]	
	ldrb	r6, [r9]
	ldr	r1, [r9, #4]
	str	r4, [sp, #84]	
	mla	r6, r2, r6, ip
	ldr	ip, [r9, #4]
	ldrb	ip, [ip, r6]
	adds	r4, r3, #3
	orr	ip, r8, ip
	strb	ip, [r1, r6]
	mov	ip, r4, asr #3
	and	r4, r4, #7
	asr	r6, fp, r4
	str	r6, [sp, #140]	
	ldrb	r4, [r9]
	ldr	r6, [sp, #104]	
	ldr	r1, [r9, #4]
	adds	r7, r3, #1
	mul	r4, r6, r4
	add	r4, r4, r7, asr #3
	and	r5, r7, #7
	ldrb	r1, [r1, r4]
	asr	r5, fp, r5
	orrs	r5, r1
	ldr	r1, [r9, #4]
	strb	r5, [r1, r4]
	ldrb	r4, [r9]
	ldr	r1, [sp, #0]
	adds	r6, r3, #4
	asrs	r5, r6, #3
	mul	r4, r2, r4
	and	r6, r6, #7
	add	r7, r4, r7, asr #3
	str	r5, [sp, #88]	
	ldr	r4, [r9, #4]
	asr	r5, fp, r6
	str	r5, [sp, #148]	
	adds	r5, r2, #5
	str	r5, [sp, #156]	
	and	r0, r0, #7
	ldrb	r5, [r4, r7]
	ldr	r6, [sp, #120]	
	asr	r0, fp, r0
	orrs	r0, r5
	strb	r0, [r4, r7]
	ldr	r7, [sp, #44]	
	ldrb	r0, [r9]
	ldr	r5, [r9, #4]
	mla	r0, r6, r0, r7
	adds	r4, r3, #5
	asrs	r6, r4, #3
	and	r4, r4, #7
	asr	r7, fp, r4
	ldrb	r4, [r5, r0]
	adds	r3, #6
	orrs	r4, r1
	strb	r4, [r5, r0]
	asrs	r5, r3, #3
	and	r3, r3, #7
	asr	r3, fp, r3
	str	r3, [sp, #164]	
	ldrb	r3, [r9]
	ldr	r0, [sp, #4]
	ldr	r4, [r9, #4]
	mla	r3, r2, r3, r3
	add	r3, r0
	mov	r1, r8
	ldrb	r0, [r4, r3]
	ldr	r8, [sp, #104]	
	orrs	r0, r1
	strb	r0, [r4, r3]
	ldr	r4, [sp, #84]	
	ldrb	r3, [r9]
	ldr	r1, [sp, #132]	
	mla	r3, r8, r3, r4
	ldr	r4, [r9, #4]
	ldrb	r0, [r4, r3]
	orrs	r0, r1
	strb	r0, [r4, r3]
	ldrb	r3, [r9]
	ldr	r4, [sp, #84]	
	ldr	r0, [r9, #4]
	ldr	r1, [sp, #136]	
	mla	r4, r2, r3, r4
	ldrb	r3, [r0, r4]
	orrs	r3, r1
	strb	r3, [r0, r4]
	ldr	r0, [sp, #44]	
	ldrb	r3, [r9]
	ldr	r4, [sp, #124]	
	ldr	r1, [sp, #0]
	mla	r3, r4, r3, r0
	ldr	r4, [r9, #4]
	ldrb	r0, [r4, r3]
	orrs	r0, r1
	strb	r0, [r4, r3]
	ldr	r0, [sp, #4]
	ldrb	r3, [r9]
	ldr	r4, [sp, #120]	
	ldr	r1, [sp, #8]
	mla	r3, r4, r3, r0
	ldr	r4, [r9, #4]
	ldrb	r0, [r4, r3]
	orrs	r0, r1
	strb	r0, [r4, r3]
	ldrb	r3, [r9]
	ldr	r4, [r9, #4]
	ldr	r1, [sp, #140]	
	mla	r3, r8, r3, ip
	ldrb	r0, [r4, r3]
	orrs	r0, r1
	strb	r0, [r4, r3]
	ldrb	r3, [r9]
	ldr	r0, [r9, #4]
	ldr	r4, [sp, #144]	
	mla	ip, r2, r3, ip
	ldrb	r3, [r0, ip]
	orrs	r3, r4
	strb	r3, [r0, ip]
	ldr	ip, [sp, #44]	
	ldrb	r3, [r9]
	ldr	r0, [sp, #128]	
	ldr	r4, [r9, #4]
	ldr	r1, [sp, #0]
	mla	r3, r0, r3, ip
	ldrb	r0, [r4, r3]
	orrs	r0, r1
	strb	r0, [r4, r3]
	ldr	r0, [sp, #4]
	ldrb	r3, [r9]
	ldr	r4, [sp, #124]	
	ldr	r1, [sp, #8]
	mla	r3, r4, r3, r0
	ldr	r4, [r9, #4]
	ldrb	r0, [r4, r3]
	orrs	r0, r1
	strb	r0, [r4, r3]
	ldr	r0, [sp, #88]	
	ldrb	r3, [r9]
	ldr	r4, [r9, #4]
	ldr	r1, [sp, #148]	
	mla	r3, r8, r3, r0
	ldrb	r0, [r4, r3]
	orrs	r0, r1
	strb	r0, [r4, r3]
	ldr	r0, [sp, #88]	
	ldrb	r3, [r9]
	ldr	r1, [sp, #152]	
	mla	r4, r2, r3, r0
	ldr	r0, [r9, #4]
	ldrb	r3, [r0, r4]
	orrs	r3, r1
	strb	r3, [r0, r4]
	ldrb	r3, [r9]
	ldr	r4, [r9, #4]
	ldr	r1, [sp, #0]
	adds	r0, r2, #5
	mla	r3, r0, r3, ip
	ldrb	r0, [r4, r3]
	orrs	r0, r1
	strb	r0, [r4, r3]
	ldr	r0, [sp, #4]
	ldrb	r3, [r9]
	ldr	r4, [sp, #128]	
	mla	r3, r4, r3, r0
	ldr	r4, [r9, #4]
	ldr	r1, [sp, #8]
	ldrb	r0, [r4, r3]
	orrs	r0, r1
	strb	r0, [r4, r3]
	ldrb	r3, [r9]
	ldr	r0, [r9, #4]
	ldr	r1, [sp, #0]
	mla	r3, r8, r3, r6
	ldrb	r4, [r0, r3]
	orrs	r4, r7
	strb	r4, [r0, r3]
	ldrb	r3, [r9]
	ldr	r0, [r9, #4]
	ldr	r4, [sp, #160]	
	ldr	r7, [sp, #196]	
	mla	r2, r2, r3, r6
	ldrb	r3, [r0, r2]
	orrs	r3, r4
	strb	r3, [r0, r2]
	ldrb	r3, [r9]
	ldr	r2, [r9, #4]
	mla	r3, r3, r7, ip
	ldrb	r0, [r2, r3]
	orrs	r0, r1
	strb	r0, [r2, r3]
	ldr	r2, [sp, #156]	
	ldrb	r3, [r9]
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #8]
	mla	r0, r3, r2, r0
	ldr	r3, [r9, #4]
	ldrb	r2, [r3, r0]
	orrs	r2, r1
	strb	r2, [r3, r0]
	ldrb	r3, [r9]
	ldr	r0, [r9, #4]
	ldr	r1, [sp, #164]	
	mla	r3, r8, r3, r5
	ldrb	r2, [r0, r3]
	orrs	r2, r1
	strb	r2, [r0, r3]
	ldrd	r3, r2, [sp, #24]
	cmp	r3, r2
	ite	hi
	ldrdhi	r2, r3, [sp, #16]
	ldrdls	r3, r2, [sp, #16]
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	ldr	r0, [r9, #8]
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r4, [r0, r2]
	asr	r3, fp, r3
	orrs	r3, r4
	strb	r3, [r0, r2]
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #40]	
	ldr	r0, [r9, #8]
	cmp	r3, r2
	itete	hi
	ldrhi	r2, [sp, #16]
	ldrls	r2, [sp, #60]	
	ldrhi	r3, [sp, #60]	
	ldrls	r3, [sp, #16]
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r4, [r0, r2]
	asr	r3, fp, r3
	orrs	r3, r4
	strb	r3, [r0, r2]
	ldrd	r3, r2, [sp, #28]
	cmp	r3, r2
	ite	cs
	ldrcs	r2, [sp, #20]
	ldrcc	r3, [sp, #20]
	ldr	r0, [r9, #8]
	ite	cc
	movcc	r2, sl
	movcs	r3, sl
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r4, [r0, r2]
	asr	r3, fp, r3
	orrs	r3, r4
	strb	r3, [r0, r2]
	ldr	r3, [sp, #108]	
	ldr	r2, [sp, #36]	
	ldr	r0, [r9, #8]
	cmp	r3, r2
	itete	hi
	ldrhi	r2, [sp, #64]	
	ldrls	r2, [sp, #12]
	ldrhi	r3, [sp, #12]
	ldrls	r3, [sp, #64]	
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r4, [r0, r2]
	asr	r3, fp, r3
	orrs	r3, r4
	strb	r3, [r0, r2]
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #108]	
	ldr	r1, [r9, #8]
	cmp	r3, r2
	ittet	cc
	ldrcc	r2, [sp, #20]
	ldrcc	r3, [sp, #64]	
	ldrcs	r3, [sp, #20]
	strcc	r2, [sp, #64]	
	ldr	r2, [sp, #64]	
	mla	r3, r3, r3, r3
	add	r3, r2, r3, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, fp, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #72]	
	ldr	r1, [r9, #8]
	cmp	r3, r2
	itete	hi
	ldrhi	r2, [sp, #16]
	ldrls	r2, [sp, #52]	
	ldrhi	r3, [sp, #52]	
	ldrls	r3, [sp, #16]
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, fp, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #40]	
	ldr	r1, [r9, #8]
	cmp	r3, r2
	itt	cc
	ldrcc	r2, [sp, #60]	
	strcc	sl, [sp, #60]	
	ldr	r3, [sp, #60]	
	it	cs
	movcs	r2, sl
	mla	r3, r3, r3, r3
	add	r3, r2, r3, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, fp, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #36]	
	ldr	r2, [sp, #116]	
	cmp	r3, r2
	ittee	cc
	ldrcc	r3, [sp, #12]
	ldrcc	r2, [sp, #56]	
	ldrcs	r3, [sp, #56]	
	ldrcs	r2, [sp, #12]
	ldr	r1, [r9, #8]
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, fp, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #116]	
	ldr	r1, [r9, #8]
	cmp	r3, r2
	ittet	cc
	ldrcc	r2, [sp, #20]
	ldrcc	r3, [sp, #56]	
	ldrcs	r3, [sp, #20]
	strcc	r2, [sp, #56]	
	ldr	r2, [sp, #56]	
	mla	r3, r3, r3, r3
	add	r3, r2, r3, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, fp, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #76]	
	ldr	r1, [r9, #8]
	cmp	r3, r2
	itete	hi
	ldrhi	r2, [sp, #16]
	ldrls	r2, [sp, #48]	
	ldrhi	r3, [sp, #48]	
	ldrls	r3, [sp, #16]
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, fp, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #72]	
	ldr	r1, [r9, #8]
	cmp	r3, r2
	itt	hi
	ldrhi	r3, [sp, #52]	
	strhi	sl, [sp, #52]	
	ldr	r2, [sp, #52]	
	it	ls
	movls	r3, sl
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, fp, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #36]	
	ldr	r2, [sp, #80]	
	ldr	r1, [r9, #8]
	cmp	r3, r2
	iteet	cs
	ldrcs	r2, [sp, #12]
	ldrcc	r3, [sp, #12]
	movcc	r2, lr
	movcs	r3, lr
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, fp, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #80]	
	cmp	r3, r2
	bcc	lab19
	mov	r3, lr
	ldr	lr, [sp, #20]
	str	r3, [sp, #20]
lab19: 	ldr	r2, [sp, #20]
	ldr	r1, [r9, #8]
	mla	r3, lr, lr, lr
	add	r3, r2, r3, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, fp, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #36]	
	ldr	r1, [r9, #8]
	cmp	r3, r2
	itet	hi
	ldrdhi	r2, r3, [sp, #12]
	ldrls	r3, [sp, #12]
	strhi	r2, [sp, #16]
	ldr	r2, [sp, #16]
	mla	r3, r3, r3, r3
	add	r3, r2, r3, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, fp, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #76]	
	ldr	r1, [r9, #8]
	cmp	r3, r2
	itt	hi
	ldrhi	r3, [sp, #48]	
	strhi	sl, [sp, #48]	
	ldr	r2, [sp, #48]	
	it	ls
	movls	r3, sl
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, fp, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldrd	r3, r2, [sp, #32]
	cmp	r3, r2
	bhi	lab20
	mov	r3, sl
	ldr	sl, [sp, #12]
	str	r3, [sp, #12]
lab20: 	ldr	r2, [sp, #12]
	ldr	r1, [r9, #8]
	ldr	r5, [sp, #180]	
	ldr	lr, [sp, #188]	
	ldr	r8, [sp, #92]	
	ldr	r6, [sp, #100]	
	ldr	r4, [sp, #68]	
	mla	r3, sl, sl, sl
	add	r3, r2, r3, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	ldr	sl, [sp, #96]	
	asr	r3, fp, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldrd	r7, ip, [sp, #168]	
	ldrb	r3, [r9]
	ldr	r1, [r9, #4]
	ldr	r0, [sp, #176]	
	mla	r3, ip, r3, r7
	adds	r4, #1
	ldrb	r2, [r1, r3]
	str	r4, [sp, #68]	
	orrs	r0, r2
	strb	r0, [r1, r3]
	ldrb	r3, [r9]
	ldr	r1, [r9, #4]
	ldr	r0, [sp, #184]	
	mla	r3, sl, r3, r7
	cmp	r4, #3
	ldrb	r2, [r1, r3]
	orr	r2, r2, r5
	strb	r2, [r1, r3]
	ldr	r2, [sp, #112]	
	ldrb	r3, [r9]
	ldr	r1, [r9, #4]
	mla	r3, ip, r3, r2
	ldrb	r2, [r1, r3]
	orr	r2, r2, r0
	strb	r2, [r1, r3]
	ldrb	r3, [r9]
	ldr	r2, [r9, #4]
	mla	r3, lr, r3, r8
	ldrb	r1, [r2, r3]
	orr	r6, r6, r1
	strb	r6, [r2, r3]
	ldrb	r3, [r9]
	ldr	r1, [r9, #4]
	ldr	r6, [sp, #192]	
	mla	r3, ip, r3, r8
	ldrb	r2, [r1, r3]
	orr	r6, r6, r2
	strb	r6, [r1, r3]
	ldrb	r3, [r9]
	ldr	r1, [r9, #4]
	mla	r3, lr, r3, r7
	ldrb	r2, [r1, r3]
	orr	r2, r2, r5
	strb	r2, [r1, r3]
	ldr	r5, [sp, #112]	
	ldrb	r3, [r9]
	ldr	r1, [r9, #4]
	mla	r3, sl, r3, r5
	ldrb	r2, [r1, r3]
	orr	r2, r2, r0
	strb	r2, [r1, r3]
	ldrb	r3, [r9]
	ldr	r1, [r9, #4]
	mla	r3, lr, r3, r5
	ldrb	r2, [r1, r3]
	orr	r2, r2, r0
	strb	r2, [r1, r3]
	bne	lab21
	ldrb	r2, [r9, #16]
	cmp	r2, #1
	bls	lab22
	movw	r1, #144	
	ldrb	r0, [r9, #1]
	movt	r1, #8192	
	subs	r3, r0, #7
	ldrb	r1, [r1, r2]
	str	r1, [sp, #44]	
	subs	r2, r0, #6
	uxtb	r2, r2
	str	r2, [sp, #8]
	subs	r2, r2, r1
	uxtb	r2, r2
	str	r2, [sp, #52]	
	sub	r2, r0, #8
	uxtb	r2, r2
	str	r2, [sp, #12]
	add	r2, r1, #9
	str	r2, [sp, #56]	
	subs	r2, r1, #3
	uxtb	fp, r3
	str	r2, [sp, #48]	
	mov	r8, #128	
lab41: 	uxtb	sl, r3
	ldr	r3, [sp, #48]	
	cmp	sl, r3
	bls	lab23
	sub	r3, r0, #8
	subs	r0, #6
	uxtb	r2, r0
	str	r2, [sp, #0]
	sub	r2, fp, #2
	str	r2, [sp, #4]
	add	r2, fp, #4294967295	
	str	r2, [sp, #28]
	add	r2, fp, #2
	uxtb	r3, r3
	str	r2, [sp, #20]
	add	r2, fp, #1
	str	fp, [sp, #16]
	str	r2, [sp, #32]
	mov	fp, r3
	b	lab24
lab26: 	ldr	r3, [sp, #0]
	subs	r3, r3, r1
	uxtb	r3, r3
	sub	sl, sl, r1
	str	r3, [sp, #0]
	ldr	r3, [sp, #48]	
	uxtb	sl, sl
	sub	r2, fp, r1
	cmp	sl, r3
	uxtb	fp, r2
	bls	lab25
lab24: 	ldrb	r3, [r9]
	ldr	lr, [sp, #16]
	ldr	r0, [r9, #4]
	smulbb	r3, r3, lr
	and	r1, sl, #7
	add	r3, r3, sl, lsr #3
	asr	r1, r8, r1
	sxtb	r2, r1
	mov	r1, r2
	ldrb	r2, [r0, r3]
	str	r1, [sp, #36]	
	orrs	r2, r1
	strb	r2, [r0, r3]
	ldr	r1, [sp, #4]
	ldrb	r3, [r9]
	ldr	r5, [r9, #4]
	sub	r4, sl, #2
	mul	r3, r1, r3
	and	r2, r4, #7
	add	r3, r3, r4, asr #3
	asr	r2, r8, r2
	sxtb	r0, r2
	mov	r2, r0
	ldrb	r0, [r5, r3]
	str	r2, [sp, #24]
	orrs	r0, r2
	strb	r0, [r5, r3]
	ldr	r3, [sp, #28]
	ldrb	r5, [r9]
	ldr	r7, [r9, #4]
	mul	r5, r3, r5
	add	r5, r5, r4, asr #3
	add	r0, sl, #2
	ldrb	r6, [r7, r5]
	orrs	r6, r2
	strb	r6, [r7, r5]
	ldrb	r6, [r9]
	ldr	lr, [r9, #4]
	mul	r6, r1, r6
	add	r6, r6, r0, asr #3
	and	r3, r0, #7
	ldrb	r7, [lr, r6]
	ldr	r1, [sp, #20]
	asr	r3, r8, r3
	sxtb	r3, r3
	orrs	r7, r3
	strb	r7, [lr, r6]
	ldrb	r6, [r9]
	add	ip, sl, #4294967295	
	add	r7, sl, #1
	mul	r6, r1, r6
	add	r6, r6, ip, asr #3
	ldr	r1, [r9, #4]
	and	lr, r7, #7
	and	r5, ip, #7
	asr	lr, r8, lr
	sxtb	r2, lr
	asr	r5, r8, r5
	ldrb	lr, [r1, r6]
	str	r2, [sp, #40]	
	sxtb	r5, r5
	orr	lr, r5, lr
	strb	lr, [r1, r6]
	ldr	r1, [sp, #4]
	ldrb	r6, [r9]
	mul	r6, r1, r6
	add	ip, r6, ip, asr #3
	ldr	r6, [r9, #4]
	ldrb	lr, [r6, ip]
	orr	r5, r5, lr
	strb	r5, [r6, ip]
	ldrb	r5, [r9]
	ldr	lr, [sp, #16]
	ldr	ip, [r9, #4]
	ldr	r2, [sp, #24]
	smulbb	r5, r5, lr
	add	r5, r5, r4, asr #3
	cmp	lr, fp
	ldrb	r6, [ip, r5]
	orr	r6, r6, r2
	strb	r6, [ip, r5]
	ldr	r6, [sp, #28]
	ldrb	r5, [r9]
	ldr	ip, [r9, #4]
	ldr	r2, [sp, #36]	
	mul	r5, r6, r5
	add	r5, r5, r0, asr #3
	ldrb	r6, [ip, r5]
	orr	r6, r6, r3
	strb	r6, [ip, r5]
	ldr	r6, [sp, #20]
	ldrb	r5, [r9]
	ldr	ip, [r9, #4]
	mul	r5, r6, r5
	add	r5, r5, sl, lsr #3
	ldrb	r6, [ip, r5]
	orr	r6, r6, r2
	strb	r6, [ip, r5]
	ldrb	r5, [r9]
	ldr	r6, [r9, #4]
	mul	r5, r1, r5
	add	r5, r5, sl, lsr #3
	ldrb	ip, [r6, r5]
	orr	r1, r2, ip
	strb	r1, [r6, r5]
	ldr	r5, [sp, #32]
	ldrb	r1, [r9]
	ldr	r6, [r9, #4]
	ldr	r2, [sp, #24]
	mul	r1, r5, r1
	add	r1, r1, r4, asr #3
	ldrb	r5, [r6, r1]
	orr	r5, r5, r2
	strb	r5, [r6, r1]
	ldrb	r1, [r9]
	ldr	r6, [r9, #4]
	smulbb	r1, r1, lr
	add	r1, r1, r0, asr #3
	ldrb	r5, [r6, r1]
	orr	r5, r5, r3
	strb	r5, [r6, r1]
	ldrb	r1, [r9]
	ldr	r6, [sp, #20]
	ldr	r2, [sp, #40]	
	mul	r1, r6, r1
	add	r1, r1, r7, asr #3
	ldr	r6, [r9, #4]
	ldrb	r5, [r6, r1]
	orr	r5, r5, r2
	strb	r5, [r6, r1]
	ldr	r5, [sp, #4]
	ldrb	r1, [r9]
	ldr	r6, [sp, #20]
	mul	r1, r5, r1
	add	r7, r1, r7, asr #3
	ldr	r1, [r9, #4]
	ldrb	r5, [r1, r7]
	orr	r5, r5, r2
	strb	r5, [r1, r7]
	ldrb	r1, [r9]
	ldr	r2, [sp, #24]
	mul	r1, r6, r1
	add	r4, r1, r4, asr #3
	ldr	r1, [r9, #4]
	ldrb	r5, [r1, r4]
	orr	r2, r2, r5
	strb	r2, [r1, r4]
	ldr	r5, [sp, #32]
	ldrb	r2, [r9]
	ldr	r4, [r9, #4]
	mul	r2, r5, r2
	add	r2, r2, r0, asr #3
	ldrb	r1, [r4, r2]
	orr	r1, r1, r3
	strb	r1, [r4, r2]
	ldrb	r2, [r9]
	mul	r2, r6, r2
	add	r0, r2, r0, asr #3
	ldr	r2, [r9, #4]
	ldrb	r1, [r2, r0]
	orr	r3, r3, r1
	strb	r3, [r2, r0]
	itete	cc
	movcc	r2, fp
	movcs	r2, lr
	movcc	r3, lr
	movcs	r3, fp
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	ldr	r1, [r9, #8]
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #0]
	ldr	r1, [r9, #8]
	cmp	r3, r2
	itt	cs
	movcs	r2, r3
	ldrcs	r3, [sp, #0]
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #12]
	ldr	r1, [r9, #8]
	cmp	sl, r3
	itet	ls
	movls	r2, r3
	movhi	r2, sl
	movls	r3, sl
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #8]
	ldr	r1, [r9, #8]
	cmp	sl, r3
	itet	ls
	movls	r2, r3
	movhi	r2, sl
	movls	r3, sl
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #8]
	ldr	r1, [r9, #8]
	cmp	fp, r3
	itet	ls
	movls	r2, r3
	movhi	r2, fp
	movls	r3, fp
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #0]
	ldr	r1, [r9, #8]
	cmp	r2, r3
	itt	ls
	movls	r2, r3
	ldrls	r3, [sp, #0]
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #12]
	ldr	r1, [r9, #8]
	cmp	fp, r3
	itet	ls
	movls	r2, r3
	movhi	r2, fp
	movls	r3, fp
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #0]
	ldr	r1, [r9, #8]
	cmp	r2, r3
	itt	ls
	movls	r2, r3
	ldrls	r3, [sp, #0]
	mla	r2, r2, r2, r2
	add	r3, r3, r2, lsr #1
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r1, [sp, #44]	
	cmp	r1, sl
	bls	lab26
lab25: 	ldr	fp, [sp, #16]
lab23: 	ldr	r3, [sp, #56]	
	cmp	fp, r3
	bls	lab22
	ldr	r3, [sp, #44]	
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	sub	r3, fp, r3
	uxtb	fp, r3
	smulbb	r2, r2, fp
	sub	r3, fp, #2
	ldrb	r1, [r0, r2]
	orr	r1, r1, #2
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mul	r2, r3, r2
	add	r7, fp, #4294967295	
	ldrb	r1, [r0, r2]
	orr	r1, r1, #8
	strb	r1, [r0, r2]
	add	r2, fp, #1
	str	r2, [sp, #0]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mul	r2, r7, r2
	add	lr, fp, #2
	ldrb	r1, [r0, r2]
	orr	r1, r1, #8
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mul	r2, r3, r2
	adds	r2, #1
	cmp	fp, #4
	ldrb	r1, [r0, r2]
	orn	r1, r1, #127	
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mul	r2, lr, r2
	ldrb	r1, [r0, r2]
	orr	r1, r1, #4
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mul	r2, r3, r2
	ldrb	r1, [r0, r2]
	orr	r1, r1, #4
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	smulbb	r2, r2, fp
	ldrb	r1, [r0, r2]
	orr	r1, r1, #8
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mul	r2, r7, r2
	add	r2, r2, #1
	ldrb	r1, [r0, r2]
	orn	r1, r1, #127	
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mul	r2, lr, r2
	ldrb	r1, [r0, r2]
	orr	r1, r1, #2
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mul	r2, r3, r2
	ldrb	r1, [r0, r2]
	orr	r1, r1, #2
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mla	r2, fp, r2, r2
	ldrb	r1, [r0, r2]
	orr	r1, r1, #8
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	smulbb	r2, r2, fp
	add	r2, r2, #1
	ldrb	r1, [r0, r2]
	orn	r1, r1, #127	
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mul	r2, lr, r2
	ldrb	r1, [r0, r2]
	orr	r1, r1, #1
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mul	r2, r3, r2
	ldrb	r1, [r0, r2]
	orr	r1, r1, #1
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mul	r2, lr, r2
	ldrb	r1, [r0, r2]
	orr	r1, r1, #8
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mla	r2, fp, r2, r2
	add	r2, r2, #1
	ldrb	r1, [r0, r2]
	orn	r1, r1, #127	
	strb	r1, [r0, r2]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mul	r2, lr, r2
	add	r2, r2, #1
	ldrb	r1, [r0, r2]
	orn	r1, r1, #127	
	strb	r1, [r0, r2]
	bhi	lab27
	add	r2, fp, #15
	lsrs	r1, r2, #3
	ldr	r0, [r9, #8]
	str	fp, [sp, #24]
	ldrb	r4, [r0, r1]
	and	r2, r2, #7
	asr	r2, r8, r2
	orrs	r2, r4
	strb	r2, [r0, r1]
lab42: 	add	r2, fp, #28
	lsrs	r1, r2, #3
	ldr	r0, [r9, #8]
	and	r2, r2, #7
	ldrb	r4, [r0, r1]
	asr	r2, r8, r2
	uxtb	ip, r7
	orrs	r2, r4
	cmp	ip, #5
	strb	r2, [r0, r1]
	bhi	lab28
	mov	r1, ip
	str	ip, [sp, #28]
	movs	r2, #21
lab43: 	add	r2, r1
	lsrs	r1, r2, #3
	ldr	r0, [r9, #8]
	ldr	r5, [sp, #52]	
	ldrb	r4, [r0, r1]
	and	r2, r2, #7
	asr	r2, r8, r2
	orrs	r2, r4
	cmp	r5, #5
	strb	r2, [r0, r1]
	bhi	lab29
	add	r2, r5, #21
	mov	r1, r2, lsr #3
	ldr	r0, [r9, #8]
	and	r2, r2, #7
	ldrb	r4, [r0, r1]
	asr	r2, r8, r2
	orr	r2, r2, r4
	strb	r2, [r0, r1]
	mov	r1, r5
	beq	lab30
	str	r5, [sp, #20]
	movs	r2, #15
lab52: 	add	r2, r1
	lsrs	r1, r2, #3
	ldr	r0, [r9, #8]
	and	r2, r2, #7
	ldrb	r4, [r0, r1]
	asr	r2, r8, r2
	orrs	r2, r4
	cmp	ip, #6
	strb	r2, [r0, r1]
	bls	lab31
	mla	r2, ip, ip, ip
	lsrs	r2, r2, #1
	adds	r2, #7
	lsrs	r1, r2, #3
	ldr	r0, [r9, #8]
	and	r2, r2, #7
	ldrb	r4, [r0, r1]
	asr	r2, r8, r2
	orrs	r2, r4
	strb	r2, [r0, r1]
	add	r2, ip, #1
lab97: 	mul	r2, ip, r2
	lsrs	r2, r2, #1
	movs	r1, #5
lab54: 	add	r2, r1
	lsrs	r1, r2, #3
	ldr	r0, [r9, #8]
	and	r2, r2, #7
	ldrb	r4, [r0, r1]
	asr	r2, r8, r2
	orrs	r2, r4
	strb	r2, [r0, r1]
	ldr	r2, [sp, #52]	
	cmp	r2, #6
	bls	lab32
	mla	r2, r2, r2, r2
	lsrs	r2, r2, #1
	movs	r1, #7
lab51: 	add	r2, r1
	ldr	r0, [r9, #8]
	lsrs	r1, r2, #3
	and	r2, r2, #7
	ldrb	r4, [r0, r1]
	asr	r2, r8, r2
	orrs	r2, r4
	strb	r2, [r0, r1]
	ldrb	r2, [r9]
	ldr	r0, [r9, #4]
	mov	sl, fp, asr #3
	movs	r1, #6
	smlabb	r2, r1, r2, sl
	and	r1, fp, #7
	asr	r1, r8, r1
	sxtb	r4, r1
	ldrb	r1, [r0, r2]
	str	r4, [sp, #32]
	orrs	r1, r4
	strb	r1, [r0, r2]
	asrs	r4, r3, #3
	ldrb	r2, [r9]
	ldr	r5, [r9, #4]
	and	r3, r3, #7
	movs	r1, #4
	asr	r3, r8, r3
	smlabb	r2, r1, r2, r4
	sxtb	r3, r3
	str	r3, [sp, #0]
	ldrb	r0, [r5, r2]
	ldr	r1, [sp, #0]
	orrs	r0, r1
	strb	r0, [r5, r2]
	ldrb	r5, [r9]
	movs	r2, #5
	smlabb	r5, r2, r5, r4
	asrs	r6, r7, #3
	and	r2, r7, #7
	ldr	r7, [r9, #4]
	ldrb	r7, [r7, r5]
	orrs	r7, r1
	ldr	r1, [r9, #4]
	strb	r7, [r1, r5]
	add	r7, fp, #1
	asrs	r5, r7, #3
	and	r7, r7, #7
	str	r5, [sp, #36]	
	asr	r7, r8, r7
	ldrb	r5, [r9]
	mov	r3, lr, asr #3
	movs	r1, #4
	sxtb	r7, r7
	smlabb	r5, r1, r5, r3
	str	r7, [sp, #16]
	ldr	r7, [r9, #4]
	ldr	r1, [r9, #4]
	ldrb	r7, [r7, r5]
	str	r3, [sp, #4]
	and	lr, lr, #7
	asr	lr, r8, lr
	sxtb	lr, lr
	orr	r7, lr, r7
	strb	r7, [r1, r5]
	ldrb	r5, [r9]
	ldr	r7, [r9, #4]
	ldr	r1, [r9, #4]
	movs	r0, #8
	smlabb	r5, r0, r5, r6
	asr	r2, r8, r2
	ldrb	r7, [r7, r5]
	sxtb	r2, r2
	orrs	r7, r2
	strb	r7, [r1, r5]
	ldrb	r5, [r9]
	movs	r1, #4
	smlabb	r6, r1, r5, r6
	ldr	r5, [r9, #4]
	ldrb	r7, [r5, r6]
	orrs	r2, r7
	strb	r2, [r5, r6]
	ldrb	r2, [r9]
	ldr	r7, [sp, #0]
	movs	r6, #6
	smlabb	r2, r6, r2, r4
	mov	r3, r6
	ldr	r6, [r9, #4]
	ldrb	r5, [r6, r2]
	orrs	r5, r7
	strb	r5, [r6, r2]
	ldr	r6, [sp, #4]
	ldrb	r2, [r9]
	ldr	r7, [sp, #32]
	movs	r5, #5
	smlabb	r2, r5, r2, r6
	ldr	r6, [r9, #4]
	ldrb	r5, [r6, r2]
	orr	r5, lr, r5
	strb	r5, [r6, r2]
	ldrb	r2, [r9]
	ldr	r6, [r9, #4]
	smlabb	r2, r0, r2, sl
	cmp	ip, #6
	ldrb	r5, [r6, r2]
	orr	r5, r5, r7
	strb	r5, [r6, r2]
	ldrb	r2, [r9]
	smlabb	sl, r1, r2, sl
	ldr	r2, [r9, #4]
	ldrb	r5, [r2, sl]
	orr	r5, r5, r7
	strb	r5, [r2, sl]
	ldrb	r2, [r9]
	ldr	r6, [r9, #4]
	ldr	r7, [sp, #0]
	mov	sl, #7
	smlabb	r2, sl, r2, r4
	ldrb	r5, [r6, r2]
	orr	r5, r5, r7
	strb	r5, [r6, r2]
	ldr	r5, [sp, #4]
	ldrb	r2, [r9]
	ldr	r6, [r9, #4]
	smlabb	r2, r3, r2, r5
	ldrb	r5, [r6, r2]
	orr	r5, lr, r5
	strb	r5, [r6, r2]
	ldrb	r2, [r9]
	ldr	r3, [sp, #36]	
	ldr	r6, [r9, #4]
	ldr	r7, [sp, #16]
	smlabb	r2, r0, r2, r3
	ldrb	r5, [r6, r2]
	orr	r5, r5, r7
	strb	r5, [r6, r2]
	ldrb	r2, [r9]
	ldr	r5, [r9, #4]
	ldr	r6, [sp, #16]
	smlabb	r2, r1, r2, r3
	ldr	r3, [sp, #0]
	ldrb	r7, [r5, r2]
	ldr	r1, [sp, #4]
	orr	r7, r7, r6
	strb	r7, [r5, r2]
	ldrb	r2, [r9]
	smlabb	r4, r0, r2, r4
	ldr	r2, [r9, #4]
	ldrb	r5, [r2, r4]
	orr	r3, r3, r5
	strb	r3, [r2, r4]
	ldrb	r3, [r9]
	ldr	r4, [r9, #4]
	smlabb	r3, sl, r3, r1
	ldrb	r2, [r4, r3]
	orr	r2, lr, r2
	strb	r2, [r4, r3]
	ldrb	r3, [r9]
	smlabb	r1, r0, r3, r1
	ldr	r3, [r9, #4]
	ldrb	r2, [r3, r1]
	orr	r2, lr, r2
	strb	r2, [r3, r1]
	bls	lab33
	mla	r3, ip, ip, ip
	lsrs	r3, r3, #1
	movs	r2, #6
lab50: 	add	r3, r2
	lsrs	r2, r3, #3
	ldr	r1, [r9, #8]
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #52]	
	cmp	r3, #6
	bls	lab34
	mla	r3, r3, r3, r3
	lsrs	r3, r3, #1
	movs	r2, #6
lab49: 	add	r3, r2
	lsrs	r2, r3, #3
	ldr	r1, [r9, #8]
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	cmp	fp, #5
	strb	r3, [r1, r2]
	bls	lab35
	add	r3, fp, #1
	mul	r3, fp, r3
	lsrs	r3, r3, #1
	adds	r2, r3, #5
	lsrs	r1, r2, #3
	ldr	r0, [r9, #8]
	and	r2, r2, #7
	ldrb	r4, [r0, r1]
	asr	r2, r8, r2
	orrs	r2, r4
	cmp	fp, #7
	strb	r2, [r0, r1]
	bls	lab36
	movs	r2, #7
	str	r2, [sp, #24]
lab48: 	ldr	r2, [sp, #24]
	ldr	r1, [r9, #8]
	add	r3, r2
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	cmp	ip, #7
	strb	r3, [r1, r2]
	bls	lab37
	mla	r3, ip, ip, ip
	lsrs	r3, r3, #1
	movs	r2, #7
lab47: 	add	r3, r2
	lsrs	r2, r3, #3
	ldr	r1, [r9, #8]
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #52]	
	cmp	r3, #5
	bls	lab38
	mla	r3, r3, r3, r3
	lsrs	r3, r3, #1
	movs	r2, #5
lab46: 	add	r3, r2
	lsrs	r2, r3, #3
	ldr	r1, [r9, #8]
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	cmp	ip, #5
	strb	r3, [r1, r2]
	bls	lab39
	mla	r3, ip, ip, ip
	movs	r2, #5
	lsrs	r3, r3, #1
	str	r2, [sp, #28]
lab45: 	ldr	r2, [sp, #28]
	ldr	r1, [r9, #8]
	add	r3, r2
	lsrs	r2, r3, #3
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldr	r3, [sp, #52]	
	cmp	r3, #7
	bls	lab40
	mla	r3, r3, r3, r3
	movs	r2, #7
	lsrs	r3, r3, #1
	str	r2, [sp, #20]
lab44: 	ldr	r2, [sp, #20]
	ldr	r1, [sp, #52]	
	ldr	r4, [sp, #12]
	add	r3, r2
	ldr	r2, [sp, #44]	
	subs	r0, r1, r2
	ldr	r1, [sp, #8]
	subs	r1, r1, r2
	subs	r2, r4, r2
	uxtb	r1, r1
	uxtb	r2, r2
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	ldr	r1, [r9, #8]
	lsrs	r2, r3, #3
	uxtb	r0, r0
	str	r0, [sp, #52]	
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
	ldrb	r0, [r9, #1]
	subs	r3, r0, #7
	b	lab41
lab27: 	add	r2, fp, #1
	mul	r2, fp, r2
	lsrs	r2, r2, #1
	adds	r1, r2, #5
	lsrs	r0, r1, #3
	ldr	r4, [r9, #8]
	str	fp, [sp, #24]
	ldrb	r5, [r4, r0]
	and	r1, r1, #7
	asr	r1, r8, r1
	orrs	r1, r5
	cmp	fp, #6
	strb	r1, [r4, r0]
	bls	lab42
	adds	r2, #7
	lsrs	r1, r2, #3
	ldr	r0, [r9, #8]
	and	r2, r2, #7
	ldrb	r4, [r0, r1]
	asr	r2, r8, r2
	orrs	r2, r4
	strb	r2, [r0, r1]
	uxtb	ip, r7
lab28: 	mla	r2, ip, ip, ip
	lsrs	r2, r2, #1
	str	ip, [sp, #28]
	movs	r1, #6
	b	lab43
lab40: 	movs	r3, #28
	b	lab44
lab39: 	movs	r3, #15
	b	lab45
lab38: 	mov	r2, r3
	movs	r3, #15
	b	lab46
lab37: 	mov	r2, ip
	movs	r3, #28
	b	lab47
lab35: 	add	r3, fp, #15
	lsrs	r2, r3, #3
	ldr	r1, [r9, #8]
	and	r3, r3, #7
	ldrb	r0, [r1, r2]
	asr	r3, r8, r3
	orrs	r3, r0
	strb	r3, [r1, r2]
lab36: 	movs	r3, #28
	b	lab48
lab34: 	mov	r2, r3
	movs	r3, #21
	b	lab49
lab33: 	mov	r2, ip
	movs	r3, #21
	b	lab50
lab32: 	mov	r1, r2
	movs	r2, #28
	b	lab51
lab29: 	mla	r2, r5, r5, r5
	lsrs	r2, r2, #1
	adds	r2, #6
	lsrs	r1, r2, #3
	ldr	r0, [r9, #8]
	str	r5, [sp, #20]
	ldrb	r4, [r0, r1]
	and	r2, r2, #7
	asr	r2, r8, r2
	orrs	r2, r4
	strb	r2, [r0, r1]
	mov	r2, r5
	adds	r2, #1
	mov	r1, r5
lab96: 	mul	r2, r1, r2
	lsrs	r2, r2, #1
	movs	r1, #5
	b	lab52
lab31: 	add	r2, ip, #28
	lsrs	r1, r2, #3
	ldr	r0, [r9, #8]
	and	r2, r2, #7
	ldrb	r4, [r0, r1]
	asr	r2, r8, r2
	orrs	r2, r4
	cmp	ip, #4
	strb	r2, [r0, r1]
	bhi	lab53
	mov	r1, ip
	movs	r2, #15
	b	lab54
lab22: 	ldrb	r3, [r9, #1]
	ldrb	r2, [r9]
	ldr	r1, [r9, #4]
	subs	r3, #8
	mul	r3, r2, r3
	adds	r3, #1
	ldrb	r2, [r1, r3]
	orn	r2, r2, #127	
	strb	r2, [r1, r3]
	ldrb	r3, [r9, #1]
	ldr	r1, [r9, #8]
	subs	r3, #8
	ldrb	r2, [r1, #3]
	uxtb	r3, r3
	cmp	r3, #0
	orr	r2, r2, #8
	it	cc
	movcc	r3, #0
	strb	r2, [r1, #3]
	mla	r3, r3, r3, r3
	ldr	r0, [r9, #8]
	lsrs	r1, r3, #4
	movs	r2, #128	
	ldrb	r4, [r0, r1]
	ubfx	r3, r3, #1, #3
	asr	r3, r2, r3
	orrs	r3, r4
	strb	r3, [r0, r1]
	ldrb	r3, [r9, #1]
	ldr	r0, [r9, #8]
	subs	r3, #7
	uxtb	r3, r3
	cmp	r3, #6
	ittet	hi
	mlahi	r3, r3, r3, r3
	lsrhi	r2, r3, #1
	movls	r2, #28
	movhi	r3, #7
	add	r3, r2
	lsrs	r1, r3, #3
	movs	r2, #128	
	ldrb	r4, [r0, r1]
	and	r3, r3, #7
	asr	r3, r2, r3
	orrs	r3, r4
	strb	r3, [r0, r1]
	ldr	r0, [r9, #8]
	ldrb	r3, [r9, #1]
	ldrb	r1, [r0, #3]
	subs	r3, #8
	uxtb	r3, r3
	cmp	r3, #1
	orr	r1, r1, #4
	strb	r1, [r0, #3]
	itet	hi
	movhi	r1, r3
	movls	r1, #1
	movhi	r3, #1
	mla	r1, r1, r1, r1
	add	r3, r3, r1, lsr #1
	ldr	r0, [r9, #8]
	lsrs	r1, r3, #3
	and	r3, r3, #7
	asr	r3, r2, r3
	ldrb	r2, [r0, r1]
	orrs	r3, r2
	strb	r3, [r0, r1]
	ldrb	r3, [r9, #1]
	ldr	r0, [r9, #8]
	subs	r3, #6
	uxtb	r3, r3
	cmp	r3, #6
	ittet	hi
	mlahi	r3, r3, r3, r3
	lsrhi	r2, r3, #1
	movls	r2, #28
	movhi	r3, #7
	add	r3, r2
	lsrs	r1, r3, #3
	movs	r2, #128	
	ldrb	r4, [r0, r1]
	and	r3, r3, #7
	asr	r3, r2, r3
	orrs	r3, r4
	strb	r3, [r0, r1]
	ldr	r0, [r9, #8]
	ldrb	r3, [r9, #1]
	ldrb	r1, [r0, #3]
	subs	r3, #8
	uxtb	r3, r3
	cmp	r3, #2
	orr	r1, r1, #2
	strb	r1, [r0, #3]
	itet	hi
	movhi	r1, r3
	movls	r1, #2
	movhi	r3, #2
	mla	r1, r1, r1, r1
	add	r3, r3, r1, lsr #1
	lsrs	r1, r3, #3
	ldr	r0, [r9, #8]
	and	r3, r3, #7
	asr	r3, r2, r3
	ldrb	r2, [r0, r1]
	orrs	r3, r2
	strb	r3, [r0, r1]
	ldrb	r3, [r9, #1]
	ldr	r0, [r9, #8]
	subs	r3, #5
	uxtb	r3, r3
	cmp	r3, #6
	ittet	hi
	mlahi	r3, r3, r3, r3
	lsrhi	r2, r3, #1
	movls	r2, #28
	movhi	r3, #7
	add	r3, r2
	lsrs	r1, r3, #3
	movs	r2, #128	
	ldrb	r4, [r0, r1]
	and	r3, r3, #7
	asr	r3, r2, r3
	orrs	r3, r4
	strb	r3, [r0, r1]
	ldr	r0, [r9, #8]
	ldrb	r3, [r9, #1]
	ldrb	r1, [r0, #3]
	subs	r3, #8
	uxtb	r3, r3
	cmp	r3, #3
	orr	r1, r1, #1
	strb	r1, [r0, #3]
	itet	hi
	movhi	r1, r3
	movls	r1, #3
	movhi	r3, #3
	mla	r1, r1, r1, r1
	add	r3, r3, r1, lsr #1
	ldr	r0, [r9, #8]
	lsrs	r1, r3, #3
	and	r3, r3, #7
	asr	r3, r2, r3
	ldrb	r2, [r0, r1]
	orrs	r3, r2
	strb	r3, [r0, r1]
	ldrb	r3, [r9, #1]
	ldr	r0, [r9, #8]
	subs	r3, #4
	uxtb	r3, r3
	cmp	r3, #6
	ittet	hi
	mlahi	r3, r3, r3, r3
	lsrhi	r2, r3, #1
	movls	r2, #28
	movhi	r3, #7
	add	r3, r2
	lsrs	r1, r3, #3
	movs	r2, #128	
	ldrb	r4, [r0, r1]
	and	r3, r3, #7
	asr	r3, r2, r3
	orrs	r3, r4
	strb	r3, [r0, r1]
	ldr	r0, [r9, #8]
	ldrb	r3, [r9, #1]
	ldrb	r1, [r0, #4]
	subs	r3, #8
	uxtb	r3, r3
	cmp	r3, #4
	orn	r1, r1, #127	
	strb	r1, [r0, #4]
	itet	hi
	movhi	r1, r3
	movls	r1, #4
	movhi	r3, #4
	mla	r1, r1, r1, r1
	add	r3, r3, r1, lsr #1
	lsrs	r1, r3, #3
	and	r3, r3, #7
	asr	r3, r2, r3
	ldrb	r2, [r0, r1]
	orrs	r3, r2
	strb	r3, [r0, r1]
	ldrb	r3, [r9, #1]
	ldr	r0, [r9, #8]
	subs	r3, #3
	uxtb	r3, r3
	cmp	r3, #6
	ittet	hi
	mlahi	r3, r3, r3, r3
	lsrhi	r2, r3, #1
	movls	r2, #28
	movhi	r3, #7
	add	r3, r2
	lsrs	r1, r3, #3
	movs	r2, #128	
	ldrb	r4, [r0, r1]
	and	r3, r3, #7
	asr	r3, r2, r3
	orrs	r3, r4
	strb	r3, [r0, r1]
	ldr	r0, [r9, #8]
	ldrb	r3, [r9, #1]
	ldrb	r1, [r0, #4]
	subs	r3, #8
	uxtb	r3, r3
	cmp	r3, #5
	orr	r1, r1, #64	
	strb	r1, [r0, #4]
	itet	hi
	movhi	r1, r3
	movls	r1, #5
	movhi	r3, #5
	mla	r1, r1, r1, r1
	add	r3, r3, r1, lsr #1
	lsrs	r1, r3, #3
	and	r3, r3, #7
	asr	r3, r2, r3
	ldrb	r2, [r0, r1]
	orrs	r3, r2
	strb	r3, [r0, r1]
	ldrb	r3, [r9, #1]
	ldr	r0, [r9, #8]
	subs	r3, #2
	uxtb	r3, r3
	cmp	r3, #6
	ittet	hi
	mlahi	r3, r3, r3, r3
	lsrhi	r2, r3, #1
	movls	r2, #28
	movhi	r3, #7
	add	r3, r2
	lsrs	r1, r3, #3
	movs	r2, #128	
	ldrb	r4, [r0, r1]
	and	r3, r3, #7
	asr	r3, r2, r3
	orrs	r3, r4
	strb	r3, [r0, r1]
	ldr	r0, [r9, #8]
	ldrb	r3, [r9, #1]
	ldrb	r1, [r0, #4]
	subs	r3, #8
	uxtb	r3, r3
	cmp	r3, #7
	orr	r1, r1, #32
	strb	r1, [r0, #4]
	itet	cs
	movcs	r1, r3
	movcc	r1, #6
	movcs	r3, #6
	mla	r1, r1, r1, r1
	add	r3, r3, r1, lsr #1
	lsrs	r1, r3, #3
	and	r3, r3, #7
	asr	r3, r2, r3
	ldrb	r2, [r0, r1]
	orrs	r3, r2
	strb	r3, [r0, r1]
	ldrb	r3, [r9, #1]
	ldr	r1, [r9, #8]
	subs	r3, #1
	uxtb	r3, r3
	cmp	r3, #6
	ittet	hi
	mlahi	r3, r3, r3, r3
	lsrhi	r2, r3, #1
	movls	r2, #28
	movhi	r3, #7
	add	r3, r2
	lsrs	r2, r3, #3
	movs	r0, #128	
	ldrb	r4, [r1, r2]
	and	r3, r3, #7
	asr	r3, r0, r3
	orrs	r3, r4
	strb	r3, [r1, r2]
	movs	r1, #28
	movs	r2, #0
lab55: 	ldr	r5, [r9, #8]
	lsrs	r4, r1, #3
	and	r3, r1, #7
	ldrb	r6, [r5, r4]
	asr	r3, r0, r3
	orrs	r3, r6
	strb	r3, [r5, r4]
	ldrb	r4, [r9, #1]
	uxtb	r5, r2
	subs	r4, #8
	add	r4, r5
	uxtb	r4, r4
	movs	r3, #7
	cmp	r4, r3
	mla	r6, r4, r4, r4
	itee	hi
	lsrhi	r4, r6, #1
	movls	r3, r4
	movls	r4, #28
	add	r3, r4
	ldr	r6, [r9, #8]
	lsrs	r4, r3, #3
	and	r3, r3, #7
	ldrb	r7, [r6, r4]
	asr	r3, r0, r3
	orrs	r3, r7
	strb	r3, [r6, r4]
	ldrb	r4, [r9, #1]
	subs	r4, #8
	uxtb	r4, r4
	cmp	r5, r4
	mov	r6, r2
	it	ls
	movls	r6, r4
	mov	r3, r2
	mla	r6, r6, r6, r6
	it	hi
	movhi	r3, r4
	add	r3, r3, r6, lsr #1
	lsrs	r4, r3, #3
	ldr	r5, [r9, #8]
	and	r3, r3, #7
	ldrb	r6, [r5, r4]
	asr	r3, r0, r3
	adds	r2, #1
	orrs	r3, r6
	cmp	r2, #8
	strb	r3, [r5, r4]
	add	r1, r1, #1
	bne	lab55
	ldr	r1, [r9, #8]
	ldrb	r3, [r9, #1]
	ldrb	r0, [r1, #4]
	orr	r0, r0, #15
	subs	r3, #8
	strb	r0, [r1, #4]
	ldrb	r0, [r1, #5]
	uxtb	r3, r3
	orn	r0, r0, #7
	cmp	r3, #8
	strb	r0, [r1, #5]
	bhi	lab56
	mov	r0, r3
	movs	r3, #36	
lab93: 	add	r3, r0
	lsrs	r4, r3, #3
	movs	r0, #128	
	ldrb	r5, [r1, r4]
	and	r3, r3, #7
	asr	r3, r0, r3
	orrs	r3, r5
	strb	r3, [r1, r4]
	ldr	r0, [r9, #8]
	ldrb	r3, [r9, #1]
	ldrb	r1, [r0, #4]
	subs	r3, #7
	uxtb	r3, r3
	orr	r1, r1, #8
	cmp	r3, #8
	strb	r1, [r0, #4]
	bhi	lab57
	mov	r1, r3
	movs	r3, #36	
lab70: 	add	r3, r1
	lsrs	r4, r3, #3
	movs	r1, #128	
	ldrb	r5, [r0, r4]
	and	r3, r3, #7
	asr	r3, r1, r3
	orrs	r3, r5
	strb	r3, [r0, r4]
	ldr	r0, [r9, #8]
	ldrb	r3, [r9, #1]
	ldrb	r1, [r0, #4]
	subs	r3, #6
	uxtb	r3, r3
	orr	r1, r1, #4
	cmp	r3, #8
	strb	r1, [r0, #4]
	bhi	lab58
	mov	r1, r3
	movs	r3, #36	
lab91: 	add	r3, r1
	lsrs	r4, r3, #3
	movs	r1, #128	
	ldrb	r5, [r0, r4]
	and	r3, r3, #7
	asr	r3, r1, r3
	orrs	r3, r5
	strb	r3, [r0, r4]
	ldr	r0, [r9, #8]
	ldrb	r3, [r9, #1]
	ldrb	r1, [r0, #4]
	subs	r3, #5
	uxtb	r3, r3
	orr	r1, r1, #2
	cmp	r3, #8
	strb	r1, [r0, #4]
	bhi	lab59
	mov	r1, r3
	movs	r3, #36	
lab90: 	add	r3, r1
	lsrs	r4, r3, #3
	movs	r1, #128	
	ldrb	r5, [r0, r4]
	and	r3, r3, #7
	asr	r3, r1, r3
	orrs	r3, r5
	strb	r3, [r0, r4]
	ldr	r0, [r9, #8]
	ldrb	r3, [r9, #1]
	ldrb	r1, [r0, #4]
	subs	r3, #4
	uxtb	r3, r3
	orr	r1, r1, #1
	cmp	r3, #8
	strb	r1, [r0, #4]
	bhi	lab60
	mov	r1, r3
	movs	r3, #36	
lab89: 	add	r3, r1
	lsrs	r4, r3, #3
	movs	r1, #128	
	ldrb	r5, [r0, r4]
	and	r3, r3, #7
	asr	r3, r1, r3
	orrs	r3, r5
	strb	r3, [r0, r4]
	ldr	r0, [r9, #8]
	ldrb	r3, [r9, #1]
	ldrb	r1, [r0, #5]
	subs	r3, #3
	uxtb	r3, r3
	orn	r1, r1, #127	
	cmp	r3, #8
	strb	r1, [r0, #5]
	bhi	lab61
	mov	r1, r3
	movs	r3, #36	
lab88: 	add	r3, r1
	lsrs	r4, r3, #3
	movs	r1, #128	
	ldrb	r5, [r0, r4]
	and	r3, r3, #7
	asr	r3, r1, r3
	orrs	r3, r5
	strb	r3, [r0, r4]
	ldr	r0, [r9, #8]
	ldrb	r3, [r9, #1]
	ldrb	r1, [r0, #5]
	subs	r3, #2
	uxtb	r3, r3
	orr	r1, r1, #64	
	cmp	r3, #8
	strb	r1, [r0, #5]
	bhi	lab62
	mov	r1, r3
	movs	r3, #36	
lab92: 	add	r3, r1
	lsrs	r4, r3, #3
	movs	r1, #128	
	ldrb	r5, [r0, r4]
	and	r3, r3, #7
	asr	r3, r1, r3
	orrs	r3, r5
	strb	r3, [r0, r4]
	ldrb	r3, [r9, #1]
	ldr	r0, [r9, #8]
	subs	r3, #1
	ldrb	r1, [r0, #5]
	uxtb	r3, r3
	cmp	r3, #8
	orr	r1, r1, #32
	it	hi
	mlahi	r3, r3, r3, r3
	strb	r1, [r0, #5]
	itet	hi
	lsrhi	r1, r3, #1
	movls	r1, #36	
	movhi	r3, #8
	add	r3, r1
	lsrs	r4, r3, #3
	movs	r1, #128	
	ldrb	r5, [r0, r4]
	and	r3, r3, #7
	asr	r3, r1, r3
	orrs	r3, r5
	strb	r3, [r0, r4]
	ldrb	r3, [r9, #1]
	ldr	r0, [r9, #8]
	subs	r3, #7
	ldrb	r1, [r0, #5]
	uxtb	r3, r3
	cmp	r3, #7
	orr	r1, r1, #16
	it	hi
	mlahi	r3, r3, r3, r3
	strb	r1, [r0, #5]
	itet	hi
	lsrhi	r1, r3, #1
	movls	r1, #36	
	movhi	r3, #8
	add	r3, r1
	lsrs	r4, r3, #3
	movs	r1, #128	
	ldrb	r5, [r0, r4]
	and	r3, r3, #7
	asr	r3, r1, r3
	orrs	r3, r5
	strb	r3, [r0, r4]
	ldrb	r3, [r9, #1]
	ldr	r4, [r9, #8]
	subs	r3, #6
	uxtb	r3, r3
	cmp	r3, #7
	ittet	hi
	mlahi	r3, r3, r3, r3
	lsrhi	r1, r3, #1
	movls	r1, #36	
	movhi	r3, #8
	add	r3, r1
	lsrs	r0, r3, #3
	movs	r1, #128	
	ldrb	r5, [r4, r0]
	and	r3, r3, #7
	asr	r3, r1, r3
	orrs	r3, r5
	strb	r3, [r4, r0]
	ldrb	r3, [r9, #1]
	ldr	r4, [r9, #8]
	subs	r3, #5
	uxtb	r3, r3
	cmp	r3, #7
	ittet	hi
	mlahi	r3, r3, r3, r3
	lsrhi	r1, r3, #1
	movls	r1, #36	
	movhi	r3, #8
	add	r3, r1
	lsrs	r0, r3, #3
	movs	r1, #128	
	ldrb	r5, [r4, r0]
	and	r3, r3, #7
	asr	r3, r1, r3
	orrs	r3, r5
	strb	r3, [r4, r0]
	ldrb	r3, [r9, #1]
	ldr	r4, [r9, #8]
	subs	r3, #4
	uxtb	r3, r3
	cmp	r3, #7
	ittet	hi
	mlahi	r3, r3, r3, r3
	lsrhi	r1, r3, #1
	movls	r1, #36	
	movhi	r3, #8
	add	r3, r1
	lsrs	r0, r3, #3
	movs	r1, #128	
	ldrb	r5, [r4, r0]
	and	r3, r3, #7
	asr	r3, r1, r3
	orrs	r3, r5
	strb	r3, [r4, r0]
	ldrb	r3, [r9, #1]
	ldr	r4, [r9, #8]
	subs	r3, #3
	uxtb	r3, r3
	cmp	r3, #7
	ittet	hi
	mlahi	r3, r3, r3, r3
	lsrhi	r1, r3, #1
	movls	r1, #36	
	movhi	r3, #8
	add	r3, r1
	lsrs	r0, r3, #3
	movs	r1, #128	
	ldrb	r5, [r4, r0]
	and	r3, r3, #7
	asr	r3, r1, r3
	orrs	r3, r5
	strb	r3, [r4, r0]
	ldrb	r3, [r9, #1]
	ldr	r4, [r9, #8]
	subs	r3, #2
	uxtb	r3, r3
	cmp	r3, #7
	ittet	hi
	mlahi	r3, r3, r3, r3
	lsrhi	r1, r3, #1
	movls	r1, #36	
	movhi	r3, #8
	add	r3, r1
	lsrs	r0, r3, #3
	movs	r1, #128	
	ldrb	r5, [r4, r0]
	and	r3, r3, #7
	asr	r3, r1, r3
	orrs	r3, r5
	strb	r3, [r4, r0]
	ldrb	r3, [r9, #1]
	ldr	r4, [r9, #8]
	subs	r3, #1
	uxtb	r3, r3
	cmp	r3, #7
	ittet	hi
	mlahi	r3, r3, r3, r3
	lsrhi	r1, r3, #1
	movls	r1, #36	
	movhi	r3, #8
	add	r3, r1
	lsrs	r1, r3, #3
	movs	r0, #128	
	ldrb	r5, [r4, r1]
	and	r3, r3, #7
	asr	r3, r0, r3
	orrs	r3, r5
	strb	r3, [r4, r1]
	ldrb	r3, [r9, #1]
	cmp	r3, #14
	beq	lab63
	movs	r1, #0
	movs	r4, #6
	b	lab64
lab67: 	mla	r3, r6, r6, r6
	lsrs	r3, r3, #1
	add	r5, r6, #21
	adds	r3, #6
	mov	ip, r5, lsr #3
	lsrs	r7, r3, #3
	and	r5, r5, #7
	and	r3, r3, #7
	cmp	r6, #6
	asr	lr, r0, r5
	asr	r5, r0, r3
	bls	lab65
	ldr	ip, [r9, #8]
	ldrb	lr, [ip, r7]
	orr	r5, r5, lr
	strb	r5, [ip, r7]
	adds	r3, r6, #1
lab72: 	mul	r3, r6, r3
	movs	r7, #6
	lsrs	r3, r3, #1
lab71: 	add	r3, r7
	lsrs	r5, r3, #3
	ldr	r6, [r9, #8]
	and	r3, r3, #7
	ldrb	r7, [r6, r5]
	asr	r3, r0, r3
	orrs	r3, r7
	strb	r3, [r6, r5]
lab68: 	ldrb	r3, [r9, #1]
	adds	r1, #1
	sub	r5, r3, #14
	cmp	r5, r1
	add	r2, r2, #1
	bls	lab66
lab64: 	and	r3, r1, #7
	lsls	r5, r1, #31
	mov	r7, r2, lsr #3
	asr	r3, r0, r3
	uxtb	r6, r2
	bmi	lab67
	ldrb	r5, [r9]
	ldr	r6, [r9, #4]
	smlabb	r5, r4, r5, r7
	ldrb	r7, [r6, r5]
	orrs	r3, r7
	strb	r3, [r6, r5]
	ldrb	r3, [r9]
	ldr	r6, [r9, #4]
	mul	r3, r2, r3
	ldrb	r5, [r6, r3]
	orr	r5, r5, #2
	strb	r5, [r6, r3]
	b	lab68
lab18: 	ldrb	r3, [r9, #1]
	subs	r4, r3, #7
	uxtb	r4, r4
	movs	r2, #3
	adds	r6, r4, r2
	str	r2, [sp, #52]	
	and	r2, r6, #7
	asr	r2, fp, r2
	sxtb	lr, r2
	and	r2, r4, #7
	add	ip, r4, #6
	asr	r2, fp, r2
	str	lr, [sp, #100]	
	sxtb	lr, r2
	and	r2, ip, #7
	subs	r0, r3, #5
	asr	r2, fp, r2
	mov	ip, ip, asr #3
	str	ip, [sp, #4]
	sxtb	ip, r2
	and	r2, r0, #7
	adds	r5, r4, #2
	asr	r2, fp, r2
	uxtb	r8, r0
	sxtb	r0, r2
	and	r2, r5, #7
	adds	r7, r4, #4
	asr	r2, fp, r2
	str	r0, [sp, #176]	
	sxtb	r0, r2
	and	r2, r7, #7
	subs	r1, r3, #4
	asr	r2, fp, r2
	str	r0, [sp, #180]	
	sxtb	r0, r2
	and	r2, r1, #7
	asr	r2, fp, r2
	str	r0, [sp, #184]	
	sxtb	r0, r2
	subs	r2, r3, #6
	str	lr, [sp]
	uxtb	lr, r2
	subs	r2, r3, #2
	uxtb	sl, r2
	asrs	r2, r6, #3
	str	r2, [sp, #92]	
	lsrs	r2, r4, #3
	str	r2, [sp, #44]	
	subs	r3, #3
	asrs	r2, r5, #3
	uxtb	r1, r1
	str	r8, [sp, #108]	
	str	r0, [sp, #192]	
	uxtb	r3, r3
	movs	r0, #1
	str	r2, [sp, #168]	
	str	r8, [sp, #64]	
	asrs	r2, r7, #3
	mov	r8, #5
	str	r3, [sp, #80]	
	str	ip, [sp, #8]
	str	r1, [sp, #116]	
	mov	ip, #4
	str	r0, [sp, #20]
	movs	r3, #5
	movs	r0, #6
	str	r2, [sp, #112]	
	str	r1, [sp, #56]	
	movs	r2, #3
	ldr	r1, [sp, #40]	
	str	r8, [sp, #36]	
	mov	r8, #1
	str	lr, [sp, #24]
	str	r3, [sp, #12]
	str	r0, [sp, #104]	
	str	lr, [sp, #16]
	str	r1, [sp, #60]	
	str	r2, [sp, #72]	
	ldr	lr, [sp, #80]	
	str	sl, [sp, #32]
	str	ip, [sp, #48]	
	str	ip, [sp, #76]	
	str	r8, [sp, #28]
	str	r1, [sp, #172]	
	mov	r1, r2
	str	r1, [sp, #124]	
	mov	r8, #6
	ldr	r1, [sp, #40]	
	str	r2, [sp, #96]	
	mov	r3, r4
	and	r0, r4, #7
	str	ip, [sp, #188]	
	movs	r2, #0
	str	r8, [sp, #196]	
	str	r1, [sp, #120]	
	str	ip, [sp, #128]	
	b	lab69
lab17: 	ldrb	r3, [r9, #1]
	subs	r1, r3, #6
	uxtb	r6, r1
	subs	r1, r3, #5
	uxtb	r7, r1
	subs	r1, r3, #2
	uxtb	ip, r1
	subs	r2, r3, #7
	subs	r1, r3, #4
	subs	r3, #3
	uxtb	r3, r3
	movs	r5, #3
	uxtb	r2, r2
	str	r3, [sp, #76]	
	uxtb	r1, r1
	movs	r3, #0
	str	r1, [sp, #72]	
	str	r3, [sp, #112]	
	movs	r1, #2
	adds	r3, r2, r5
	mov	lr, #4
	str	r1, [sp, #64]	
	str	r3, [sp, #124]	
	adds	r1, r2, #6
	mov	r8, #16
	str	r3, [sp, #96]	
	ldr	r3, [sp, #76]	
	str	r7, [sp, #40]	
	adds	r0, r2, #2
	add	r4, r2, lr
	str	r1, [sp, #196]	
	str	r8, [sp, #192]	
	str	r1, [sp, #104]	
	mov	r8, #32
	ldr	r1, [sp, #72]	
	str	r3, [sp, #48]	
	str	r7, [sp, #60]	
	ldr	r3, [sp, #68]	
	str	r6, [sp, #28]
	movs	r7, #2
	mov	sl, #5
	str	r5, [sp, #56]	
	str	r0, [sp, #120]	
	str	r4, [sp, #128]	
	str	r8, [sp, #180]	
	str	r0, [sp, #172]	
	str	r4, [sp, #188]	
	str	r6, [sp, #20]
	str	r3, [sp, #16]
	str	r5, [sp, #116]	
	str	r7, [sp, #108]	
	str	ip, [sp, #36]	
	str	ip, [sp, #12]
	str	r1, [sp, #52]	
	str	lr, [sp, #80]	
	str	sl, [sp, #32]
	str	r3, [sp, #24]
	movs	r3, #8
	movs	r0, #0
	str	r3, [sp, #184]	
	str	r8, [sp, #176]	
	mvn	r3, #127	
	mov	r8, #16
	strd	r0, r7, [sp, #4]
	str	r3, [sp, #0]
	mov	r6, r5
	str	r0, [sp, #168]	
	mov	r5, r7
	mov	r3, r0
	str	r0, [sp, #44]	
	str	r8, [sp, #100]	
	str	r0, [sp, #92]	
	mov	r4, r0
	mov	r7, lr
	b	lab69
lab57: 	mla	r3, r3, r3, r3
	lsrs	r3, r3, #1
	movs	r1, #8
	b	lab70
lab65: 	ldr	r8, [r9, #8]
	ldrb	r5, [r8, ip]
	orr	r5, lr, r5
	strb	r5, [r8, ip]
	mov	r7, r6
	mov	r3, #21
	bne	lab71
	movs	r3, #7
	b	lab72
lab66: 	ldrb	r6, [r9, #16]
	cmp	r6, #6
	bls	lab73
lab94: 	movw	r2, #144	
	movt	r2, #8192	
	add	r2, r2, r6, lsl #2
	movs	r0, #16
	ldr	r7, [r2, #16]
	movs	r4, #5
	movs	r1, #17
	movs	r5, #128	
	b	lab74
lab77: 	sub	r2, r3, #9
	uxtb	r2, r2
	uxtb	r3, r4
	cmp	r3, r2
	itte	hi
	movhi	lr, r2
	movhi	r2, r3
	movls	lr, r3
	mla	r2, r2, r2, r2
	add	r2, lr, r2, lsr #1
	ldr	r8, [r9, #8]
	mov	lr, r2, lsr #3
	and	r2, r2, #7
	ldrb	sl, [r8, lr]
	asr	r2, r5, r2
	orr	r2, r2, sl
	strb	r2, [r8, lr]
	ldrb	r2, [r9, #1]
	ldr	lr, [r9, #8]
	subs	r2, #9
	uxtb	r2, r2
	cmp	r3, r2
	mov	ip, r3
	it	cc
	movcc	ip, r2
	mla	ip, ip, ip, ip
	it	cc
	movcc	r2, r3
	add	r2, r2, ip, lsr #1
	mov	ip, r2, lsr #3
	and	r2, r2, #7
	ldrb	r8, [lr, ip]
	asr	r2, r5, r2
	orr	r2, r2, r8
	strb	r2, [lr, ip]
lab78: 	cmp	r0, #11
	itet	hi
	subhi	r2, r0, #12
	lsrls	r2, r7, r0
	lsrhi	r2, r6, r2
	and	r2, r2, #1
	cmp	r2, #0
	bne	lab75
	ldrb	ip, [r9, #1]
	ldr	sl, [r9, #8]
	sub	ip, ip, #10
	uxtb	ip, ip
	cmp	r3, ip
	itte	hi
	movhi	r2, ip
	movhi	ip, r3
	movls	r2, r3
	mla	ip, ip, ip, ip
	add	ip, r2, ip, lsr #1
	mov	r8, ip, lsr #3
	and	r2, ip, #7
	ldrb	ip, [sl, r8]
	asr	r2, r5, r2
	orr	r2, r2, ip
	strb	r2, [sl, r8]
	ldrb	r2, [r9, #1]
	subs	r2, #10
	uxtb	r2, r2
	cmp	r3, r2
	mov	lr, r3
	it	cc
	movcc	lr, r2
	mla	lr, lr, lr, lr
	it	cc
	movcc	r2, r3
	add	r2, r2, lr, lsr #1
	mov	ip, r2, lsr #3
	ldr	lr, [r9, #8]
	and	r2, r2, #7
	ldrb	r8, [lr, ip]
	asr	r2, r5, r2
	orr	r2, r2, r8
	strb	r2, [lr, ip]
lab80: 	add	r2, r3, r3, lsl #1
	uxtb	r2, r2
	cmp	r2, #11
	itet	hi
	subhi	r2, #12
	lsrls	r2, r7, r2
	lsrhi	r2, r6, r2
	and	r2, r2, #1
	mov	ip, r3
	cmp	r2, #0
	bne	lab76
	ldrb	r2, [r9, #1]
	ldr	r8, [r9, #8]
	subs	r2, #11
	uxtb	r2, r2
	cmp	r2, r3
	itte	cc
	movcc	lr, r2
	movcc	r2, r3
	movcs	lr, r3
	mla	r2, r2, r2, r2
	add	r2, lr, r2, lsr #1
	mov	lr, r2, lsr #3
	and	r2, r2, #7
	ldrb	sl, [r8, lr]
	asr	r2, r5, r2
	orr	r2, r2, sl
	strb	r2, [r8, lr]
	ldrb	r2, [r9, #1]
	subs	r2, #11
	uxtb	r2, r2
	cmp	r2, r3
	it	hi
	movhi	ip, r2
	mla	ip, ip, ip, ip
	it	hi
	movhi	r2, r3
	add	r2, r2, ip, lsr #1
	mov	ip, r2, lsr #3
	and	r3, r2, #7
	ldr	r2, [r9, #8]
	ldrb	lr, [r2, ip]
	asr	r3, r5, r3
	orr	r3, r3, lr
	strb	r3, [r2, ip]
lab79: 	subs	r1, #3
	uxtb	r1, r1
	subs	r0, #3
	cmp	r1, #255	
	ldrb	r3, [r9, #1]
	add	r4, r4, #4294967295	
	uxtb	r0, r0
	beq	lab73
lab74: 	cmp	r1, #11
	itet	hi
	subhi	r2, r1, #12
	lsrls	r2, r7, r1
	lsrhi	r2, r6, r2
	and	r2, r2, #1
	cmp	r2, #0
	beq	lab77
	ldrb	r2, [r9]
	ldr	lr, [r9, #4]
	subs	r3, #9
	mul	r3, r2, r3
	asr	r2, r5, r4
	ldrb	ip, [lr, r3]
	orr	r2, ip, r2
	strb	r2, [lr, r3]
	ldrb	r3, [r9, #1]
	ldrb	r2, [r9]
	ldr	lr, [r9, #4]
	subs	r3, #9
	mov	ip, r3, asr #3
	mla	ip, r4, r2, ip
	and	r2, r3, #7
	ldrb	r8, [lr, ip]
	asr	r2, r5, r2
	orr	r2, r2, r8
	strb	r2, [lr, ip]
	uxtb	r3, r4
	b	lab78
lab76: 	ldrb	r3, [r9, #1]
	ldrb	r2, [r9]
	ldr	lr, [r9, #4]
	subs	r3, #11
	mul	r3, r2, r3
	asr	r2, r5, r4
	ldrb	ip, [lr, r3]
	orr	r2, ip, r2
	strb	r2, [lr, r3]
	ldrb	r3, [r9, #1]
	ldrb	ip, [r9]
	subs	r3, #11
	asrs	r2, r3, #3
	mla	r2, r4, ip, r2
	ldr	ip, [r9, #4]
	and	r3, r3, #7
	ldrb	lr, [ip, r2]
	asr	r3, r5, r3
	orr	r3, r3, lr
	strb	r3, [ip, r2]
	b	lab79
lab75: 	ldrb	r2, [r9, #1]
	ldrb	ip, [r9]
	ldr	r8, [r9, #4]
	subs	r2, #10
	mul	r2, ip, r2
	asr	ip, r5, r4
	ldrb	lr, [r8, r2]
	orr	ip, lr, ip
	strb	ip, [r8, r2]
	ldrb	r2, [r9, #1]
	ldrb	lr, [r9]
	subs	r2, #10
	mov	ip, r2, asr #3
	mla	ip, r4, lr, ip
	ldr	lr, [r9, #4]
	and	r2, r2, #7
	ldrb	r8, [lr, ip]
	asr	r2, r5, r2
	orr	r2, r2, r8
	strb	r2, [lr, ip]
	b	lab80
lab73: 	cmp r3, #0
	beq lab81
lab95: 	movs	r4, #1
	movs	r1, #0
	movs	r5, #128	
lab87: 	movs	r3, #0
	uxtb	r0, r1
	b	lab82
lab85: 	mov	r2, r1
	mov	ip, r3
	mov	r6, r7
lab86: 	adds	r6, #1
	uxtb	r6, r6
	mul	r6, ip, r6
	add	r2, r2, r6, lsr #1
	lsrs	r6, r2, #3
	ldr	r7, [r9, #8]
	and	r2, r2, #7
	ldrb	ip, [r7, r6]
	asr	r2, r5, r2
	orr	r2, r2, ip
	strb	r2, [r7, r6]
lab84: 	adds	r3, #1
	cmp	r3, r4
	beq	lab83
lab82: 	ldr	r2, [r9, #4]
	ldrb	r7, [r9]
	lsrs	r6, r3, #3
	mla	r7, r1, r7, r2
	mvns	r2, r3
	ldrb	r6, [r7, r6]
	and	r2, r2, #7
	asr	r2, r6, r2
	tst	r2, #1
	uxtb	r7, r3
	mov	r6, r0
	beq	lab84
	cmp	r7, r0
	bhi	lab85
	mov	r2, r3
	mov	ip, r1
	b	lab86
lab83: 	ldrb	r3, [r9, #1]
	adds	r1, #1
	cmp	r3, r1
	add	r4, r4, #1
	bhi	lab87
lab81: 	add	sp, #204	
	nop
	push {r1, r2}
	ldr r1, =5460
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab61: 	mla	r3, r3, r3, r3
	lsrs	r3, r3, #1
	movs	r1, #8
	b	lab88
lab60: 	mla	r3, r3, r3, r3
	lsrs	r3, r3, #1
	movs	r1, #8
	b	lab89
lab59: 	mla	r3, r3, r3, r3
	lsrs	r3, r3, #1
	movs	r1, #8
	b	lab90
lab58: 	mla	r3, r3, r3, r3
	lsrs	r3, r3, #1
	movs	r1, #8
	b	lab91
lab62: 	mla	r3, r3, r3, r3
	lsrs	r3, r3, #1
	movs	r1, #8
	b	lab92
lab56: 	mla	r3, r3, r3, r3
	lsrs	r3, r3, #1
	mov	r0, r2
	b	lab93
lab63: 	ldrb	r6, [r9, #16]
	cmp	r6, #6
	bhi	lab94
	b	lab95
lab30: 	str	r5, [sp, #20]
	movs	r2, #6
	b	lab96
lab53: 	add	r2, ip, #1
	b	lab97
freeframe:
	push	{r4, lr}
	movw	r4, #12724	
	movt	r4, #8192	
	ldr	r0, [r4, #4]
	bl	free_beebs
	ldr	r0, [r4, #8]
	bl	free_beebs
	ldr	r0, [r4, #12]
	ldmia	sp!, {r4, lr}
	b	free_beebs
initecc:
	push	{r3, r4, r5, r6, r7, lr}
	lsls	r3, r1, #2
	adds	r3, #17
	uxtb	r3, r3
	adds	r2, r3, #7
	asrs	r2, r2, #3
	mul	r6, r2, r3
	cmp	r6, #768	
	movw	r4, #12724	
	movt	r4, #8192	
	it	cc
	movcc	r6, #768	
	mov	r7, r0
	mov	r5, r1
	add	r5, r7, r5, lsl #2
	mov	r0, r6
	strb	r3, [r4, #1]
	strb	r2, [r4, #0]
	strb	r1, [r4, #16]
	bl	malloc_beebs
	subs	r1, r5, #5
	movw	r5, #144	
	movt	r5, #8192	
	add	r5, r5, r1, lsl #2
	strb	r7, [r4, #24]
	ldrb	r3, [r5, #180]	
	ldrb	r7, [r5, #181]	
	ldrb	r2, [r5, #183]	
	strb	r3, [r4, #25]
	adds	r1, r3, r7
	ldrb	r3, [r5, #182]	
	str	r0, [r4, #20]
	adds	r0, r2, r3
	strb	r3, [r4, #27]
	mla	r3, r1, r0, r3
	adds	r0, r3, r7
	cmp	r0, r6
	it	cc
	movcc	r0, r6
	strb	r2, [r4, #28]
	strb	r7, [r4, #26]
	bl	malloc_beebs
	ldrb	r3, [r4, #26]
	ldrb	r2, [r4, #25]
	ldrb	r1, [r4, #27]
	str	r0, [r4, #32]
	add	r2, r3
	mla	r3, r1, r2, r3
	subs	r0, r3, #3
	nop
	push {r1, r2}
	ldr r1, =6127
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
	nop
initeccsize:
	movw	r2, #324	
	movt	r2, #8192	
	push	{r4, r5, r6, lr}
	mov	r6, r1
	add	r2, r2, r0, lsl #2
	mov	ip, #1
	b	lab98
lab100: 	cmp	ip, #40	
	beq	lab99
lab98: 	ldrb	lr, [r2, #-3]
	ldrb	r5, [r2, #-4]
	ldrb	r4, [r2, #-2]
	add	r3, r5, lr
	mla	r3, r4, r3, lr
	subs	r3, #3
	cmp	r3, r6
	uxtb	r1, ip
	add	r2, r2, #16
	add	ip, ip, #1
	bls	lab100
lab101: 	movw	r3, #12724	
	movt	r3, #8192	
	strb	r5, [r3, #25]
	strb	lr, [r3, #26]
	strb	r4, [r3, #27]
	ldmia	sp!, {r4, r5, r6, lr}
	b	initecc
lab99: 	mov	r1, ip
	b	lab101
	nop
freeecc:
	push	{r4, lr}
	movw	r4, #12724	
	movt	r4, #8192	
	ldr	r0, [r4, #20]
	bl	free_beebs
	ldr	r0, [r4, #32]
	ldmia	sp!, {r4, lr}
	b	free_beebs
	nop
applymask:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #4
	sub	sp, #20
	beq	lab102
	bhi	lab103
	cmp	r0, #2
	beq	lab104
	cmp	r0, #3
	bne	lab105
	movw	fp, #12725	
	movt	fp, #8192	
	ldrb	r4, [fp]
	cmp	r4, #0
	beq	lab106
	movs	r6, #0
	movw	lr, #12732	
	movw	sl, #12744	
	movw	r9, #12724	
	mov	ip, r6
	mov	r0, r6
	movt	lr, #8192	
	movt	sl, #8192	
	movt	r9, #8192	
	mov	r8, #128	
lab112: 	cmp	ip, #3
	it	eq
	moveq	ip, #0
	cmp	r4, #0
	beq	lab106
	movs	r1, #0
	mov	r2, ip
	mov	r3, r1
	mov	r7, ip
	str	r6, [sp, #4]
	b	lab107
lab110: 	adds	r5, r2, #1
	cmp r2, #0
	beq lab108
	uxtb	r2, r5
lab111: 	adds	r1, #1
	uxtb	r3, r1
	cmp	r4, r3
	bls	lab109
lab107: 	cmp	r2, #3
	bne	lab110
lab108: 	cmp	r3, r0
	iteet	hi
	movhi	r5, r3
	movls	r5, r0
	movls	r2, r3
	movhi	r2, r0
	smlabb	r5, r5, r5, r5
	add	r2, r2, r5, lsr #1
	lsrs	r5, r2, #3
	ldr	r6, [lr]
	mvns	r2, r2
	ldrb	r5, [r6, r5]
	and	r2, r2, #7
	asr	r2, r5, r2
	mov	ip, r3, lsr #3
	ands	r2, r2, #1
	and	r3, r3, #7
	asr	r3, r8, r3
	bne	lab111
	ldrb	r2, [r9]
	ldr	r4, [sl]
	mla	ip, r2, r0, ip
	adds	r1, #1
	ldrb	r5, [r4, ip]
	eors	r3, r5
	strb	r3, [r4, ip]
	ldrb	r4, [fp]
	uxtb	r3, r1
	cmp	r4, r3
	mov	r2, #1
	bhi	lab107
lab109: 	ldr	r6, [sp, #4]
	adds	r6, #1
	uxtb	r0, r6
	add	ip, r7, #1
	cmp	r4, r0
	uxtb	ip, ip
	bhi	lab112
lab106: 	add	sp, #20
	nop
	push {r1, r2}
	ldr r1, =7848
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab105: 	cmp	r0, #0
	beq	lab113
	cmp	r0, #1
	bne	lab106
	movw	fp, #12725	
	movt	fp, #8192	
	ldrb	r4, [fp]
	cmp	r4, #0
	beq	lab106
	movs	r0, #0
	movw	r6, #12732	
	movw	lr, #12744	
	movw	ip, #12724	
	mov	r3, r0
	mov	r5, r0
	movt	r6, #8192	
	movt	lr, #8192	
	movt	ip, #8192	
	movs	r7, #128	
	b	lab114
lab117: 	mov	r2, r3
	mov	r8, r3
	mov	r1, r0
lab118: 	mla	r2, r2, r2, r8
	add	r2, r1, r2, lsr #1
	mov	r9, r2, lsr #3
	ldr	r1, [r6, #0]
	mvns	r2, r2
	ldrb	r9, [r1, r9]
	and	r2, r2, #7
	asr	r2, r9, r2
	and	r1, r3, #7
	lsls	r2, r2, #31
	mov	r8, r3, lsr #3
	asr	r1, r7, r1
	bmi	lab115
	ldrb	r2, [ip]
	mla	r8, r2, r0, r8
	ldr	r2, [lr]
	ldrb	r4, [r2, r8]
	eors	r1, r4
	strb	r1, [r2, r8]
	ldrb	r4, [fp]
lab115: 	adds	r3, #1
	uxtb	r3, r3
	cmp	r3, r4
	bcs	lab116
lab114: 	mov	r2, r0
	cmp	r5, #0
	bne	lab115
	cmp	r0, r3
	bcc	lab117
	mov	r8, r0
	mov	r1, r3
	b	lab118
lab103: 	cmp	r0, #6
	beq	lab119
	cmp	r0, #7
	bne	lab120
	movw	fp, #12725	
	movt	fp, #8192	
	ldrb	r4, [fp]
	cmp	r4, #0
	beq	lab106
	movs	r7, #0
	movw	r6, #12732	
	movw	sl, #12744	
	movw	r9, #12724	
	mov	lr, r7
	mov	ip, r7
	movt	r6, #8192	
	movt	sl, #8192	
	movt	r9, #8192	
	str	fp, [sp, #8]
lab133: 	cmp	lr, #3
	it	eq
	moveq	lr, #0
	cmp	r4, #0
	beq	lab106
	movs	r0, #0
	ldr	r8, [sp, #8]
	str	r7, [sp, #4]
	mov	r1, r0
	mov	r3, r0
	mov	fp, #128	
	b	lab121
lab125: 	cmp	r1, #0
	beq	lab122
	sub	r5, lr, r1
	adds	r2, r1, #1
	clz	r5, r5
	lsrs	r5, r5, #5
	uxtb	r1, r2
lab126: 	add	r2, r3, ip
	uxtab	r2, r5, r2
	lsls	r7, r2, #31
	bmi	lab123
	cmp	r3, ip
	itete	hi
	movhi	r5, r3
	movls	r5, ip
	movhi	r2, ip
	movls	r2, r3
	smlabb	r5, r5, r5, r5
	add	r2, r2, r5, lsr #1
	lsrs	r5, r2, #3
	ldr	r7, [r6, #0]
	mvns	r2, r2
	ldrb	r5, [r7, r5]
	and	r2, r2, #7
	asr	r2, r5, r2
	lsls	r2, r2, #31
	bmi	lab123
	ldrb	r4, [r9]
	lsrs	r2, r3, #3
	mla	r2, r4, ip, r2
	ldr	r4, [sl]
	and	r3, r3, #7
	ldrb	r5, [r4, r2]
	asr	r3, fp, r3
	eors	r3, r5
	strb	r3, [r4, r2]
	ldrb	r4, [r8]
lab123: 	adds	r0, #1
	uxtb	r3, r0
	cmp	r4, r3
	bls	lab124
lab121: 	cmp	r1, #3
	bne	lab125
lab122: 	movs	r1, #1
	movs	r5, #0
	b	lab126
lab120: 	cmp	r0, #5
	bne	lab106
	movw	fp, #12725	
	movt	fp, #8192	
	ldrb	r5, [fp]
	cmp	r5, #0
	beq	lab106
	movw	r3, #12744	
	movw	r2, #12724	
	movs	r7, #0
	movw	sl, #12732	
	movt	r3, #8192	
	movt	r2, #8192	
	strd	r2, fp, [sp, #4]
	mov	ip, r7
	mov	r4, r7
	movt	sl, #8192	
	mov	fp, r3
lab132: 	cmp	ip, #3
	it	eq
	moveq	ip, #0
	cmp	r5, #0
	beq	lab106
	movs	r0, #0
	subs	lr, ip, r0
	it	ne
	movne	lr, #1
	mov	r1, r0
	mov	r3, r0
	mov	r9, #128	
	mov	r8, ip
	str	r7, [sp, #12]
	b	lab127
lab130: 	cmp	r1, #0
	ite	eq
	moveq	r6, #0
	andne	r6, lr, #1
	uxtb	r1, r2
lab131: 	and	r2, r3, r4
	and	r2, r2, #1
	cmn	r2, r6
	bne	lab128
	cmp	r3, r4
	iteet	hi
	movhi	r6, r3
	movls	r6, r4
	movls	r2, r3
	movhi	r2, r4
	smlabb	r6, r6, r6, r6
	add	r2, r2, r6, lsr #1
	lsrs	r6, r2, #3
	ldr	r7, [sl]
	mvns	r2, r2
	ldrb	r6, [r7, r6]
	and	r2, r2, #7
	asr	r2, r6, r2
	mov	ip, r3, lsr #3
	lsls	r6, r2, #31
	and	r3, r3, #7
	asr	r3, r9, r3
	bmi	lab128
	ldr	r2, [sp, #4]
	ldrb	r2, [r2, #0]
	mla	ip, r2, r4, ip
	ldr	r2, [fp]
	ldrb	r5, [r2, ip]
	eors	r3, r5
	strb	r3, [r2, ip]
	ldr	r3, [sp, #8]
	ldrb	r5, [r3, #0]
lab128: 	adds	r0, #1
	uxtb	r3, r0
	cmp	r5, r3
	bls	lab129
lab127: 	cmp	r1, #3
	add	r2, r1, #1
	bne	lab130
	movs	r6, #0
	movs	r1, #1
	b	lab131
lab129: 	ldr	r7, [sp, #12]
	adds	r7, #1
	uxtb	r4, r7
	add	ip, r8, #1
	cmp	r5, r4
	uxtb	ip, ip
	bhi	lab132
	b	lab106
lab116: 	adds	r0, #1
	uxtb	r0, r0
	cmp	r0, r4
	bcs	lab106
	cmp	r4, #0
	beq	lab106
	movs	r3, #0
	and	r5, r0, #1
	b	lab114
lab124: 	ldr	r7, [sp, #4]
	adds	r7, #1
	uxtb	ip, r7
	add	lr, lr, #1
	cmp	r4, ip
	uxtb	lr, lr
	bhi	lab133
	b	lab106
lab104: 	movw	fp, #12725	
	movt	fp, #8192	
	ldrb	r0, [fp]
	cmp	r0, #0
	beq	lab106
	movs	r1, #0
	movw	r5, #12732	
	movw	r7, #12744	
	movw	r6, #12724	
	mov	r3, r1
	mov	r2, r1
	movt	r5, #8192	
	movt	r7, #8192	
	movt	r6, #8192	
	mov	ip, #128	
	b	lab134
lab137: 	cmp r3, #0
	beq lab135
	adds	r3, #1
	uxtb	r3, r3
lab139: 	adds	r2, #1
	uxtb	r2, r2
	cmp	r2, r0
	bcs	lab136
lab134: 	cmp	r3, #3
	bne	lab137
lab135: 	cmp	r2, r1
	bls	lab138
	mov	r4, r2
	mov	r3, r1
lab140: 	smlabb	r4, r4, r4, r4
	add	r3, r3, r4, lsr #1
	mov	r8, r3, lsr #3
	ldr	r4, [r5, #0]
	mvn	lr, r3
	ldrb	r3, [r4, r8]
	and	r4, lr, #7
	asrs	r3, r4
	ands	r3, r3, #1
	bne	lab139
	ldrb	r0, [r6, #0]
	ldr	r4, [r7, #0]
	lsrs	r3, r2, #3
	mla	r3, r0, r1, r3
	and	r0, r2, #7
	ldrb	lr, [r4, r3]
	asr	r0, ip, r0
	eor	r0, r0, lr
	strb	r0, [r4, r3]
	adds	r2, #1
	ldrb	r0, [fp]
	uxtb	r2, r2
	cmp	r2, r0
	mov	r3, #1
	bcc	lab134
lab136: 	adds	r1, #1
	uxtb	r1, r1
	cmp	r1, r0
	bcs	lab106
	movs	r2, #0
	cmp	r0, #0
	beq	lab106
lab138: 	mov	r4, r1
	mov	r3, r2
	b	lab140
lab113: 	movw	fp, #12725	
	movt	fp, #8192	
	ldrb	r4, [fp]
	cmp	r4, #0
	beq	lab106
	movw	r5, #12732	
	movw	ip, #12744	
	movw	r7, #12724	
	mov	r3, r0
	movt	r5, #8192	
	movt	ip, #8192	
	movt	r7, #8192	
	movs	r6, #128	
lab142: 	adds	r2, r0, r3
	lsls	r2, r2, #31
	bmi	lab141
	cmp	r0, r3
	itete	cc
	movcc	r2, r3
	movcs	r2, r0
	movcc	r1, r0
	movcs	r1, r3
	smlabb	r2, r2, r2, r2
	add	r2, r1, r2, lsr #1
	mov	r8, r2, lsr #3
	ldr	r1, [r5, #0]
	mvns	r2, r2
	ldrb	r1, [r1, r8]
	and	r2, r2, #7
	asr	r2, r1, r2
	and	r8, r3, #7
	lsls	r1, r2, #31
	mov	lr, r3, lsr #3
	asr	r8, r6, r8
	bmi	lab141
	ldrb	r2, [r7, #0]
	ldr	r1, [ip]
	mla	lr, r2, r0, lr
	ldrb	r2, [r1, lr]
	eor	r2, r8, r2
	strb	r2, [r1, lr]
	ldrb	r4, [fp]
lab141: 	adds	r3, #1
	uxtb	r3, r3
	cmp	r3, r4
	bcc	lab142
	adds	r0, #1
	uxtb	r0, r0
	cmp	r0, r4
	bcs	lab106
	cmp	r4, #0
	beq	lab106
	movs	r3, #0
	b	lab142
lab102: 	movw	fp, #12725	
	movt	fp, #8192	
	ldrb	r3, [fp]
	cmp	r3, #0
	beq	lab106
	movs	r4, #0
	movw	r6, #12732	
	movw	ip, #12744	
	movw	r7, #12724	
	mov	r5, r4
	movt	r6, #8192	
	movt	ip, #8192	
	movt	r7, #8192	
	mov	lr, #128	
lab146: 	movs	r3, #0
	mov	r2, r3
lab145: 	cmp r5, #0
	bne lab143
	cmp	r3, r4
	itete	hi
	movhi	r1, r3
	movls	r1, r4
	movhi	r0, r4
	movls	r0, r3
	smlabb	r1, r1, r1, r1
	add	r1, r0, r1, lsr #1
	mov	r9, r1, lsr #3
	ldr	r0, [r6, #0]
	mvns	r1, r1
	ldrb	r0, [r0, r9]
	and	r1, r1, #7
	asr	r1, r0, r1
	lsls	r1, r1, #31
	mov	r8, r3, lsr #3
	bmi	lab143
	ldrb	r1, [r7, #0]
	ldr	r0, [ip]
	mla	r8, r1, r4, r8
	and	r1, r3, #7
	ldrb	r9, [r0, r8]
	asr	r1, lr, r1
	eor	r1, r1, r9
	strb	r1, [r0, r8]
lab143: 	ldrb	r1, [fp]
	adds	r3, #1
	uxtb	r3, r3
	adds	r2, #1
	cmp	r1, r3
	uxtb	r2, r2
	bls	lab144
	cmp	r2, #3
	itt	eq
	moveq	r2, #0
	eoreq	r5, r5, #1
	b	lab145
lab144: 	adds	r4, #1
	uxtb	r4, r4
	cmp	r1, r4
	bls	lab106
	ubfx	r5, r4, #1, #1
	cmp	r1, #0
	bne	lab146
	b	lab106
lab119: 	movw	fp, #12725	
	movt	fp, #8192	
	ldrb	r4, [fp]
	cmp	r4, #0
	beq	lab106
	mov	r8, #0
	movw	r7, #12732	
	movw	sl, #12744	
	movw	r9, #12724	
	mov	lr, r8
	mov	ip, r8
	movt	r7, #8192	
	movt	sl, #8192	
	movt	r9, #8192	
lab153: 	cmp	lr, #3
	it	eq
	moveq	lr, #0
	cmp	r4, #0
	beq	lab106
	movs	r0, #0
	mov	r1, r0
	mov	r3, r0
	b	lab147
lab151: 	cmp	r1, #0
	beq	lab148
	cmp	lr, r1
	it	eq
	addeq	r2, #1
	adds	r1, #1
	uxtb	r1, r1
lab152: 	lsls	r5, r2, #31
	bmi	lab149
	cmp	r3, ip
	itete	hi
	movhi	r5, r3
	movls	r5, ip
	movhi	r2, ip
	movls	r2, r3
	smlabb	r5, r5, r5, r5
	add	r2, r2, r5, lsr #1
	lsrs	r6, r2, #3
	ldr	r5, [r7, #0]
	mvns	r2, r2
	ldrb	r5, [r5, r6]
	and	r2, r2, #7
	asr	r2, r5, r2
	lsls	r2, r2, #31
	bmi	lab149
	ldrb	r4, [r9]
	lsrs	r2, r3, #3
	mla	r2, r4, ip, r2
	and	r3, r3, #7
	movs	r4, #128	
	asr	r3, r4, r3
	ldr	r4, [sl]
	ldrb	r5, [r4, r2]
	eors	r3, r5
	strb	r3, [r4, r2]
	ldrb	r4, [fp]
lab149: 	adds	r0, #1
	uxtb	r3, r0
	cmp	r4, r3
	bls	lab150
lab147: 	cmp	r1, #3
	and	r2, r3, ip
	bne	lab151
lab148: 	movs	r1, #1
	b	lab152
lab150: 	add	r8, r8, #1
	uxtb	ip, r8
	add	lr, lr, #1
	cmp	r4, ip
	uxtb	lr, lr
	bhi	lab153
	b	lab106
badruns:
	movw	r2, #12736	
	movt	r2, #8192	
	movs	r3, #0
	push	{r4, r5, r6, r7, lr}
	ldr	r6, [r2, #0]
	mov	r7, r0
	mov	r2, r3
	mov	r0, r3
lab154: 	ldrb	r1, [r6, r2]
	adds	r3, #1
	cmp	r1, #4
	it	hi
	subhi	r0, #2
	uxtb	r2, r3
	it	hi
	addhi	r0, r0, r1
	cmp	r2, r7
	bls	lab154
	subs	r4, r7, #1
	cmp	r4, #3
	ble	lab155
	movs	r3, #3
	mov	r5, r3
	b	lab156
lab157: 	uxtb	r3, ip
	cmp	r3, r4
	mov	r5, r3
	bge	lab155
lab156: 	adds	r2, r6, r3
	add	ip, r3, #2
	ldrb	r1, [r2, #-2]
	ldrb	lr, [r2, #2]
	cmp	r1, lr
	bne	lab157
	ldrb	lr, [r2, #-1]
	cmp	r1, lr
	bne	lab157
	ldrb	lr, [r2, #1]
	cmp	lr, r1
	bne	lab157
	ldrb	r3, [r6, r3]
	add	lr, lr, lr, lsl #1
	cmp	lr, r3
	bne	lab157
	ldrb	r3, [r2, #-3]
	adds	r5, #2
	cmp r3, #0
	beq lab158
	cmp	r5, r7
	add	r3, r3, r3, lsl #1
	bge	lab158
	cmp	r3, lr, lsl #2
	mov	r1, lr, lsl #2
	bge	lab158
	ldrb	r3, [r2, #3]
	add	r3, r3, r3, lsl #1
	cmp	r1, r3
	bgt	lab157
lab158: 	uxtb	r3, ip
	cmp	r3, r4
	add	r0, r0, #40	
	mov	r5, r3
	blt	lab156
lab155:	nop
	push {r1, r2}
	ldr r1, =3818
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, r7, pc}
	nop
appendrs:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r8, r3
	mov	r3, r2
	mov	r4, r1
	sub	sp, #12
	mov	r5, r0
	mov	r2, r8
	movs	r1, #0
	mov	r0, r3
push {r1, r2}
	ldr r1, =4184
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =4184
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r4, #0
	beq	lab159
	subs	r4, #1
	sub	r2, r8, #2
	uxtab	r6, r5, r4
	add	r7, r8, #4294967295	
	movw	r4, #964	
	uxtb	r2, r2
	str	r8, [sp]
	ldr	r8, [sp, #48]	
	str	r2, [sp, #4]
	mov	r3, r0
	subs	r5, #1
	movt	r4, #8192	
	add	r9, r0, r7
	add	sl, r0, #1
lab163: 	ldrb	r2, [r5, #1]!
	ldrb	r1, [r3, #0]
	eors	r2, r1
	ldrb	lr, [r4, r2]
	cmp	lr, #255	
	beq	lab160
	ldr	r2, [sp, #0]
	cmp	r2, #1
	bls	lab161
	ldr	r2, [sp, #4]
	mov	ip, r3
	add	r1, r8, r7
	add	fp, r2, sl
lab162: 	ldrb	r2, [r1], #-1
	ldrb	r0, [ip, #1]
	add	r2, lr
	cmp	r2, #254	
	it	gt
	subgt	r2, #255	
	add	r2, r4
	ldrb	r2, [r2, #256]	
	eors	r0, r2
	strb	r0, [ip], #1
	cmp	fp, ip
	bne	lab162
lab161: 	ldrb	r2, [r8]
	add	lr, r2
	cmp	lr, #254	
	it	gt
	subgt	lr, lr, #255	
	add	lr, r4
	ldrb	r2, [lr, #256]	
lab164: 	strb	r2, [r9]
	cmp	r5, r6
	bne	lab163
lab159: 	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =3808
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab160: 	mov	r2, r7
	mov	r0, r3
	mov	r1, sl
push {r1, r2}
	ldr r1, =7959
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =7959
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #0
	mov	r3, r0
	b	lab164
	nop
qrencode:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r3, #12756	
	movt	r3, #8192	
	sub	sp, #60	
	ldr	r5, [r3, #0]
	str	r3, [sp, #20]
	movw	r2, #12750	
	movt	r2, #8192	
	mov	r0, r5
	movw	r9, #12749	
	mov	r4, r2
	str	r2, [sp, #12]
	movt	r9, #8192	
	bl	strlen
	movw	r3, #12751	
	movt	r3, #8192	
	ldrb	r2, [r4, #0]
	ldrb	r8, [r9]
	str	r3, [sp, #24]
	ldrb	r3, [r3, #0]
	add	r8, r2
	mla	r8, r3, r8, r2
	sub	r3, r8, #2
	cmp	r0, r3
	bcc	lab165
	movw	r4, #12740	
	movt	r4, #8192	
	ldrb	r2, [r4, #0]
	cmp	r2, #9
	bls	lab166
	sub	r1, r8, #3
lab179: 	add	r5, r1
	movs	r3, #0
	strb	r3, [r5, #2]
	subs	r3, r1, #1
	cmp r1, #0
	beq lab167
	ldr	r6, [sp, #20]
lab168: 	ldr	r2, [r6, #0]
	adds	r5, r3, #3
	ldrb	r7, [r2, r3]
	ldrb	r0, [r2, r5]
	orr	r0, r0, r7, lsl #4
	strb	r0, [r2, r5]
	ldr	r2, [r6, #0]
	ldrb	r0, [r2, r3]
	add	r2, r3
	subs	r3, #1
	lsrs	r0, r0, #4
	adds	r7, r3, #1
	strb	r0, [r2, #2]
	bne	lab168
lab167: 	ldr	r5, [sp, #20]
	ldr	r0, [r5, #0]
	ldrb	r2, [r0, #2]
	orr	r2, r2, r1, lsl #4
	strb	r2, [r0, #2]
	ldr	r2, [r5, #0]
	lsrs	r3, r1, #4
	strb	r3, [r2, #1]
	ldr	r2, [r5, #0]
	lsrs	r3, r1, #12
	orr	r3, r3, #64	
	strb	r3, [r2, #0]
lab182: 	ldrb	r3, [r4, #0]
	cmp	r3, #9
	ite	hi
	movhi	r3, #0
	movls	r3, #1
	rsb	r3, r3, #3
	add	r3, r1
	cmp	r8, r3
	bls	lab169
	ldr	r2, [sp, #20]
	movs	r4, #236	
	movs	r0, #17
lab170: 	ldr	r5, [r2, #0]
	strb	r4, [r5, r3]
	adds	r1, r3, #1
	ldr	r5, [r2, #0]
	adds	r3, #2
	cmp	r8, r3
	strb	r0, [r5, r1]
	bhi	lab170
lab169: 	movw	r3, #12752	
	movt	r3, #8192	
	ldr	r2, [sp, #20]
	ldrb	sl, [r3]
	ldr	r6, [r2, #0]
	str	r3, [sp, #28]
	movw	fp, #12744	
	movt	fp, #8192	
	add	r4, r6, r8
	ldr	lr, [fp]
	cmp	sl, #0
	beq	lab171
	mov	r7, lr
	add	r3, sl, #4294967295	
	mov	ip, #1
	movw	r2, #964	
	uxtb	r1, r3
	movt	r2, #8192	
	movs	r5, #0
	strb	ip, [r7, #1]!
	str	sl, [sp, #8]
	str	r6, [sp, #16]
	str	r2, [sp, #52]	
	mov	r3, r5
	mov	sl, r1
	mov	r6, r2
lab178: 	add	r3, r5
	cmp	r3, #254	
	it	gt
	subgt	r3, #255	
	add	r3, r6
	cmp	sl, r5
	ldrb	r3, [r3, #256]	
	strb	r3, [lr]
	beq	lab172
	mov	r3, #1
	subs	r0, r7, #1
	strb	r3, [r7, #1]
	subs	r0, r0, r5
	mov	r2, r7
	b	lab173
lab175: 	ldrb	r1, [r2, #0]
	strb	r1, [r2, #1]
	cmp	r0, r2
	beq	lab174
lab173: 	ldrb	r3, [r2], #-1
	cmp	r3, #0
	beq	lab175
	ldrb	r3, [r6, r3]
	ldrb	r1, [r2, #0]
	add	r3, ip
	cmp	r3, #254	
	ble	lab176
lab177: 	subs	r3, #255	
	cmp	r3, #255	
	beq	lab177
lab176: 	add	r3, r6
	cmp	r0, r2
	ldrb	r3, [r3, #256]	
	eor	r1, r1, r3
	strb	r1, [r2, #1]
	bne	lab173
lab174: 	ldrb	r3, [lr]
	adds	r5, #1
	ldrb	r3, [r6, r3]
	adds	r7, #1
	add	ip, ip, #1
	b	lab178
lab165: 	movw	r4, #12740	
	movt	r4, #8192	
	mov	r1, r0
	ldrb	r3, [r4, #0]
	cmp	r3, #9
	bhi	lab179
	add	r5, r1
	movs	r3, #0
	strb	r3, [r5, #1]
	subs	r3, r1, #1
	cmp r1, #0
	beq lab180
lab264: 	ldr	r6, [sp, #20]
lab181: 	ldr	r2, [r6, #0]
	adds	r5, r3, #2
	ldrb	r7, [r2, r3]
	ldrb	r0, [r2, r5]
	orr	r0, r0, r7, lsl #4
	strb	r0, [r2, r5]
	ldr	r2, [r6, #0]
	ldrb	r0, [r2, r3]
	add	r2, r3
	subs	r3, #1
	lsrs	r0, r0, #4
	adds	r5, r3, #1
	strb	r0, [r2, #1]
	bne	lab181
lab180: 	ldr	r5, [sp, #20]
	ldr	r0, [r5, #0]
	ldrb	r2, [r0, #1]
	orr	r2, r2, r1, lsl #4
	strb	r2, [r0, #1]
	ldr	r2, [r5, #0]
	lsrs	r3, r1, #4
	orr	r3, r3, #64	
	strb	r3, [r2, #0]
	b	lab182
lab172: 	ldr	r1, [sp, #52]	
	ldr	sl, [sp, #8]
	ldrb	r3, [r1, r3]
	ldr	r6, [sp, #16]
	strb	r3, [lr]
	movs	r3, #1
lab183: 	ldrb	r2, [lr, r3]
	ldrb	r2, [r1, r2]
	strb	r2, [lr, r3]
	adds	r3, #1
	uxtb	r3, r3
	cmp	sl, r3
	bcs	lab183
	ldrb	r0, [r9]
	cmp	r0, #0
	beq	lab184
lab265: 	ldr	r7, [sp, #24]
	ldr	sl, [sp, #28]
	ldrb	r1, [r7, #0]
	ldrb	r3, [sl]
	movs	r5, #0
lab185: 	ldr	r0, [fp]
	str	r0, [sp, #0]
	mov	r2, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =6379
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	appendrs
	push {r1, r2}
	ldr r1, =6379
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r0, [r9]
	ldrb	r1, [r7, #0]
	ldrb	r3, [sl]
	adds	r5, #1
	cmp	r5, r0
	add	r6, r1
	add	r4, r3
	bcc	lab185
	ldr	r7, [sp, #12]
	ldrb	r3, [r7, #0]
	cmp	r3, #0
	beq	lab186
lab266: 	ldr	r2, [sp, #28]
	ldr	sl, [sp, #24]
	ldrb	r3, [r2, #0]
	str	r8, [sp, #8]
	adds	r0, r1, #1
	mov	r8, r4
	movs	r5, #0
	mov	r4, r2
lab187: 	uxtb	r1, r0
	ldr	r0, [fp]
	str	r0, [sp, #0]
	mov	r2, r8
	mov	r0, r6
push {r1, r2}
	ldr r1, =5375
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	appendrs
	push {r1, r2}
	ldr r1, =5375
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r1, [sl]
	ldrb	ip, [r7]
	ldrb	r3, [r4, #0]
	adds	r5, #1
	adds	r0, r1, #1
	cmp	r5, ip
	add	r6, r0
	add	r8, r3
	bcc	lab187
	ldr	r8, [sp, #8]
	ldr	r3, [fp]
	ldrb	r0, [r9]
	mov	r2, ip
	cmp	r1, #0
	beq	lab188
lab267: 	ldrd	r6, r5, [sp, #20]
	ldr	r7, [sp, #12]
	movs	r4, #0
lab195: 	cmp r0, #0
	beq lab189
	ldr	r2, [r6, #0]
	ldrb	r2, [r2, r4]
	strb	r2, [r3], #1
	ldrb	r0, [r9]
	cmp	r0, #1
	bls	lab190
	movs	r1, #1
lab191: 	ldrb	r0, [r5, #0]
	ldr	r2, [r6, #0]
	mla	r2, r1, r0, r2
	adds	r1, #1
	ldrb	r2, [r2, r4]
	strb	r2, [r3], #1
	ldrb	r0, [r9]
	cmp	r1, r0
	bcc	lab191
lab190: 	ldrb	r1, [r5, #0]
lab189: 	ldrb	r2, [r7, #0]
	cmp r2, #0
	beq lab192
	ldr	r2, [r6, #0]
	mla	r2, r1, r0, r2
	ldrb	r2, [r2, r4]
	strb	r2, [r3], #1
	ldrb	r2, [r7, #0]
	cmp	r2, #1
	it	hi
	movhi	r1, #1
	bls	lab193
lab194: 	ldr	r2, [r6, #0]
	ldrb	r0, [r5, #0]
	ldrb	ip, [r9]
	add	r2, r4
	mla	r2, ip, r0, r2
	mla	r0, r0, r1, r1
	adds	r1, #1
	ldrb	r2, [r2, r0]
	strb	r2, [r3], #1
	ldrb	r2, [r7, #0]
	cmp	r1, r2
	bcc	lab194
lab193: 	ldrb	r1, [r5, #0]
	ldrb	r0, [r9]
lab192: 	adds	r4, #1
	cmp	r4, r1
	bcc	lab195
lab268: 	cmp r2, #0
	beq lab196
	ldr	r2, [sp, #20]
	ldr	r2, [r2, #0]
	mla	r2, r1, r0, r2
	ldrb	r2, [r2, r4]
	strb	r2, [r3], #1
	ldr	r2, [sp, #12]
	ldrb	r2, [r2, #0]
	cmp	r2, #1
	bls	lab197
	ldrd	r7, r6, [sp, #20]
	ldr	r5, [sp, #12]
	movs	r1, #1
lab198: 	ldr	r2, [r7, #0]
	ldrb	r0, [r6, #0]
	ldrb	ip, [r9]
	add	r2, r4
	mla	r2, ip, r0, r2
	mla	r0, r0, r1, r1
	adds	r1, #1
	ldrb	r2, [r2, r0]
	strb	r2, [r3], #1
	ldrb	r2, [r5, #0]
	cmp	r1, r2
	bcc	lab198
lab197: 	ldrb	r0, [r9]
lab196: 	ldr	r1, [sp, #28]
	ldrb	r4, [r1, #0]
	cmp r4, #0
	beq lab199
	add	r2, r0
	mov	ip, r1
	ldr	r6, [sp, #12]
	ldr	r7, [sp, #20]
	mov	r1, r8
	movs	r5, #0
	mov	r0, r3
	cmp r2, #0
	beq lab200
lab204: 	ldr	r2, [r7, #0]
	ldrb	r3, [r2, r1]
	strb	r3, [r0], #1
	ldrb	r2, [r9]
	ldrb	r4, [r6, #0]
	add	r2, r4
	cmp	r2, #1
	ble	lab201
	movs	r3, #1
lab202: 	ldrb	r4, [ip]
	ldr	r2, [r7, #0]
	mla	r2, r3, r4, r2
	adds	r3, #1
	ldrb	r2, [r2, r1]
	strb	r2, [r0], #1
	ldrb	r2, [r9]
	ldrb	r4, [r6, #0]
	add	r2, r4
	cmp	r3, r2
	bcc	lab202
lab201: 	ldrb	r4, [ip]
	adds	r5, #1
	cmp	r5, r4
	bcs	lab203
	adds	r1, #1
	cmp	r2, #0
	bne	lab204
lab200: 	adds	r5, #1
	cmp	r5, r4
	bcs	lab203
lab205: 	adds	r5, #1
	cmp	r4, r5
	bhi	lab205
lab203: 	mla	r8, r2, r4, r8
lab199: 	ldr	r3, [sp, #20]
	ldr	r1, [fp]
	ldr	r0, [r3, #0]
	movw	r4, #12724	
	mov	r2, r8
	movt	r4, #8192	
	str	r4, [sp, #16]
	movw	sl, #12725	
	bl	memcpy
	movw	r3, #12728	
	movt	sl, #8192	
	movt	r3, #8192	
	ldrb	r2, [r4, #0]
	ldr	r1, [r3, #0]
	ldrb	r3, [sl]
	ldr	r0, [fp]
	mul	r2, r3, r2
	bl	memcpy
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #12]
	ldrb	r1, [r1, #0]
	ldrb	r2, [r2, #0]
	ldrb	r3, [r3, #0]
	add	r2, r1
	ldrb	r1, [r9]
	add	r1, r3
	mla	r3, r1, r2, r3
	ldrb	r1, [sl]
	subs	r2, r1, #1
	uxtb	r2, r2
	cmp	r3, #0
	beq	lab206
	movs	r1, #1
	movw	r8, #12732	
	movs	r3, #0
	movt	r8, #8192	
	mov	r0, r2
	mov	r5, r1
	str	r3, [sp, #8]
	str	r9, [sp, #32]
lab211: 	ldr	r3, [sp, #20]
	ldr	r4, [sp, #8]
	ldr	r3, [r3, #0]
	ldrb	r7, [r3, r4]
	movs	r6, #8
lab210: 	lsls	r4, r7, #24
	bpl	lab207
	ldr	r3, [sp, #16]
	ldr	ip, [fp]
	ldrb	r3, [r3, #0]
	lsrs	r4, r2, #3
	mla	r4, r3, r0, r4
	mov	lr, #128	
	and	r3, r2, #7
	asr	r3, lr, r3
	ldrb	lr, [ip, r4]
	orr	r3, r3, lr
	strb	r3, [ip, r4]
lab207: 	ldrb	lr, [sl]
	ldr	r4, [r8]
	add	ip, lr, #4294967295	
lab209: 	cmp	r1, #0
	beq	lab208
	subs	r2, #1
	uxtb	r2, r2
	mov	r3, r2
lab227: 	cmp	r2, r0
	itete	hi
	mlahi	r3, r2, r2, r3
	mlals	r9, r0, r0, r0
	addhi	r3, r0, r3, lsr #1
	addls	r3, r3, r9, lsr #1
	mvn	r9, r3
	eor	r1, r1, #1
	uxtb	r1, r1
	lsrs	r3, r3, #3
	and	r9, r9, #7
lab239: 	ldrb	r3, [r4, r3]
	asr	r3, r3, r9
	lsls	r3, r3, #31
	bmi	lab209
	subs	r6, #1
	lsls	r7, r7, #1
	ands	r6, r6, #255	
	uxtb	r7, r7
	bne	lab210
	ldr	r4, [sp, #24]
	ldr	r3, [sp, #12]
	ldrb	r6, [r4, #0]
	ldr	r4, [sp, #28]
	ldrb	r3, [r3, #0]
	ldrb	r4, [r4, #0]
	ldr	r7, [sp, #8]
	add	r4, r6
	ldr	r6, [sp, #32]
	ldrb	r6, [r6, #0]
	add	r6, r3
	adds	r7, #1
	mla	r3, r6, r4, r3
	cmp	r7, r3
	str	r7, [sp, #8]
	blt	lab211
	mov	r3, lr
lab269: 	ldr	r2, [sp, #16]
	ldr	r1, [fp]
	ldrb	r2, [r2, #0]
	mul	r2, r3, r2
	ldr	r3, [sp, #20]
	ldr	r0, [r3, #0]
	bl	memcpy
	movs	r3, #0
	strd	r3, r3, [sp, #24]
	movw	r3, #30000	
	str	r3, [sp, #48]	
lab242: 	ldrb	r3, [sp, #24]
	str	r3, [sp, #44]	
	mov	r0, r3
push {r1, r2}
	ldr r1, =3954
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	applymask
	push {r1, r2}
	ldr r1, =3954
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r5, [sl]
	subs	r3, r5, #1
	cmp	r3, #0
	ble	lab212
	ldr	r1, [sp, #16]
	ldr	lr, [fp]
	ldrb	r1, [r1, #0]
	str	sl, [sp, #36]	
	movs	r2, #0
	str	fp, [sp, #40]	
	str	r2, [sp, #8]
	str	r1, [sp, #12]
	str	r5, [sp, #32]
	mov	r8, r2
	mov	sl, r3
	mov	fp, r2
lab218: 	ldr	r3, [sp, #12]
	mul	ip, r8, r3
	mla	r8, r8, r3, r3
	movs	r3, #0
	mov	r2, r3
	add	r9, lr, ip
	b	lab213
lab216: 	ldrb	r0, [r9, r6]
	asrs	r0, r1
	lsls	r0, r0, #31
	bpl	lab214
	ldrb	r0, [r5, r8]
	asr	r3, r0, r3
	lsls	r7, r3, #31
	add	r6, lr
	bpl	lab214
	ldrb	r3, [r6, r8]
	asr	r1, r3, r1
	lsls	r5, r1, #31
	bpl	lab214
lab217: 	ldr	r3, [sp, #8]
	adds	r3, #3
	str	r3, [sp, #8]
lab214: 	adds	r2, #1
	uxtb	r2, r2
	cmp	r2, sl
	mov	r3, r2
	bge	lab215
lab213: 	add	r5, lr, r2, lsr #3
	adds	r1, r3, #1
	ldrb	r4, [r5, ip]
	mvns	r3, r3
	and	r3, r3, #7
	asrs	r6, r1, #3
	asrs	r4, r3
	mvns	r1, r1
	and	r1, r1, #7
	lsls	r4, r4, #31
	mov	r7, r6
	mov	r0, r1
	bmi	lab216
	ldrb	r1, [r9, r6]
	asrs	r1, r0
	lsls	r4, r1, #31
	bmi	lab214
	ldrb	r1, [r5, r8]
	asr	r3, r1, r3
	lsls	r1, r3, #31
	add	r7, lr
	bmi	lab214
	ldrb	r3, [r7, r8]
	asr	r0, r3, r0
	lsls	r3, r0, #31
	bpl	lab217
	adds	r2, #1
	uxtb	r2, r2
	cmp	r2, sl
	mov	r3, r2
	blt	lab213
lab215: 	add	fp, fp, #1
	uxtb	fp, fp
	cmp	fp, sl
	mov	r8, fp
	blt	lab218
	ldrd	r5, sl, [sp, #32]
	ldr	fp, [sp, #40]	
lab262: 	cmp	r5, #0
	beq	lab219
	mov	r9, #0
	movw	r6, #12736	
	ldr	r8, [sp, #16]
	str	r9, [sp, #12]
	movt	r6, #8192	
	mov	r4, r9
	movs	r7, #1
lab232: 	ldr	r3, [r6, #0]
	mov	r2, #0
	strb	r2, [r3, #0]
	ldrb	r5, [sl]
	cmp	r5, #0
	beq	lab220
	movs	r1, #0
	ldrb	ip, [sp, #12]
	mov	r0, r1
	mov	lr, r1
	mov	r3, r1
lab224: 	ldrb	r9, [r8]
	ldr	r2, [fp]
	lsrs	r5, r3, #3
	mla	r2, ip, r9, r2
	mvns	r3, r3
	ldrb	r2, [r2, r5]
	and	r3, r3, #7
	asrs	r2, r3
	and	r2, r2, #1
	cmp	r2, lr
	add	r5, r0, #1
	beq	lab221
	ldr	r3, [r6, #0]
	uxtb	r0, r5
	strb	r7, [r3, r0]
lab238: 	adds	r1, #1
	ldrb	r5, [sl]
	uxtb	r3, r1
	cmp r2, #0
	bne lab222
	cmp	r5, r3
	add	r4, r4, #4294967295	
	bls	lab223
lab231: 	mov	lr, r2
	b	lab224
lab208: 	adds	r3, r2, #1
	uxtb	r3, r3
	cmp r5, #0
	beq lab225
	cmp r0, #0
	beq lab226
	subs	r0, #1
	mov	r2, r3
	uxtb	r0, r0
	b	lab227
lab225: 	cmp	r0, ip
	beq	lab228
	adds	r0, #1
	mov	r2, r3
	uxtb	r0, r0
	b	lab227
lab226: 	subs	r2, #1
	uxtb	r2, r2
	cmp	r2, #6
	beq	lab229
	mov	r3, r2
	mov	r5, r0
	b	lab227
lab228: 	subs	r2, #1
	uxtb	r2, r2
	cmp	r2, #6
	beq	lab230
	mov	r3, r2
	movs	r5, #1
	b	lab227
lab222: 	cmp	r5, r3
	add	r4, r4, #1
	bhi	lab231
lab223: 	ldr	r3, [sp, #12]
	adds	r3, #1
	str	r3, [sp, #12]
push {r1, r2}
	ldr r1, =7650
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	badruns
	push {r1, r2}
	ldr r1, =7650
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r2, [sp, #8]
	ldrb	r3, [sp, #12]
	add	r2, r0
	cmp	r3, r5
	str	r2, [sp, #8]
	bcc	lab232
	cmp	r4, #0
	it	lt
	neglt	r4, r4
	add	r4, r4, r4, lsl #2
	smulbb	r1, r5, r5
	cmp	r1, r4, lsl #1
	mov	r3, r4, lsl #1
	bcc	lab233
lab250: 	cmp	r5, #0
	beq	lab219
	mov	r9, #0
	ldr	r8, [sp, #16]
	str	r9, [sp, #12]
	mov	r7, r9
	movs	r4, #1
lab252: 	ldr	r3, [r6, #0]
	mov	r2, #0
	strb	r2, [r3, #0]
	ldrb	r5, [sl]
	cmp r5, #0
	beq lab234
	movs	r1, #0
	mvn	ip, r7
	and	ip, ip, #7
	lsrs	r7, r7, #3
	mov	r0, r1
	mov	lr, r1
	mov	r3, r1
lab237: 	ldrb	r9, [r8]
	ldr	r2, [fp]
	mla	r2, r9, r3, r2
	adds	r5, r0, #1
	ldrb	r2, [r2, r7]
	asr	r2, r2, ip
	and	r2, r2, #1
	cmp	r2, lr
	beq	lab235
	ldr	r3, [r6, #0]
	uxtb	r0, r5
	adds	r1, #1
	strb	r4, [r3, r0]
	ldrb	r5, [sl]
	uxtb	r3, r1
	cmp	r5, r3
	bls	lab236
lab251: 	mov	lr, r2
	b	lab237
lab221: 	ldr	r5, [r6, #0]
	ldrb	r3, [r5, r0]
	adds	r3, #1
	strb	r3, [r5, r0]
	b	lab238
lab229: 	mov	r9, #5
	mov	r1, r5
	mov	r3, r2
	mov	r5, r0
	mov	r2, r9
	movs	r0, #9
	b	lab239
lab230: 	subs	r0, #8
	movs	r3, #5
	uxtb	r0, r0
	movs	r5, #1
	mov	r2, r3
	b	lab227
lab234: 	mov	r0, r5
push {r1, r2}
	ldr r1, =4782
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	badruns
	push {r1, r2}
	ldr r1, =4782
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #8]
	add	r3, r0
	str	r3, [sp, #8]
lab219: 	ldr	r3, [sp, #8]
	ldr	r2, [sp, #48]	
	cmp	r3, r2
	bcs	lab240
	ldr	r2, [sp, #44]	
	str	r2, [sp, #28]
	str	r3, [sp, #48]	
lab240: 	ldr	r3, [sp, #28]
	cmp	r3, #7
	beq	lab241
	ldr	r3, [sp, #16]
	ldr	r0, [fp]
	ldrb	r2, [r3, #0]
	ldr	r3, [sp, #20]
	ldr	r1, [r3, #0]
	ldr	r3, [sp, #24]
	adds	r3, #1
	mov	r4, r3
	mul	r2, r5, r2
	str	r3, [sp, #24]
	bl	memcpy
	cmp	r4, #8
	bne	lab242
	ldr	r3, [sp, #24]
	str	r3, [sp, #44]	
lab241: 	ldr	r2, [sp, #44]	
	ldr	r3, [sp, #28]
	cmp	r2, r3
	beq	lab243
	mov	r0, r3
push {r1, r2}
	ldr r1, =1123
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	applymask
lab243:	push {r1, r2}
	ldr r1, =1123
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	movw	r3, #12748	
	movt	r3, #8192	
	ldr	r2, [sp, #28]
	ldrb	r3, [r3, #0]
	ldr	r6, [sp, #16]
	subs	r3, #1
	uxtb	r3, r3
	add	r3, r2, r3, lsl #3
	ldr	r2, [sp, #52]	
	add	r3, r2, r3, lsl #2
	movs	r0, #1
	ldr	r2, [r3, #512]	
	movs	r1, #0
	movs	r5, #8
	movs	r4, #128	
	b	lab244
lab246: 	uxtb	r3, r0
lab260: 	cmp	r3, #8
	mov	ip, r2, lsr #1
	beq	lab245
lab248: 	adds	r1, #1
	adds	r0, #1
	mov	r2, ip
lab244: 	lsls	r7, r2, #31
	bpl	lab246
	ldrb	r3, [sl]
	ldrb	ip, [r6]
	ldr	lr, [fp]
	subs	r3, #1
	subs	r3, r3, r1
	asrs	r7, r3, #3
	smlabb	r7, r5, ip, r7
	and	r3, r3, #7
	ldrb	r8, [lr, r7]
	asr	r3, r4, r3
	orr	r3, r3, r8
	cmp	r1, #5
	strb	r3, [lr, r7]
	mov	ip, r2, lsr #1
	bhi	lab247
	ldrb	r3, [r6, #0]
	ldr	r7, [fp]
	mul	r3, r1, r3
	adds	r3, #1
	ldrb	r2, [r7, r3]
	orn	r2, r2, #127	
	strb	r2, [r7, r3]
	b	lab248
lab220: 	mov	r0, r5
push {r1, r2}
	ldr r1, =2485
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	badruns
	push {r1, r2}
	ldr r1, =2485
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #8]
	add	r3, r0
	str	r3, [sp, #8]
	eor	r3, r4, r4, asr #31
	sub	r3, r3, r4, asr #31
	add	r3, r3, r3, lsl #2
	lsls	r3, r3, #1
	it	ne
	movne	r1, r5
	beq	lab219
lab233: 	movs	r2, #0
lab249: 	subs	r3, r3, r1
	cmp	r3, r1
	add	r2, r2, #1
	bhi	lab249
	ldr	r3, [sp, #8]
	add	r2, r2, r2, lsl #2
	add	r3, r3, r2, lsl #1
	str	r3, [sp, #8]
	b	lab250
lab235: 	ldr	r5, [r6, #0]
	ldrb	r3, [r5, r0]
	adds	r3, #1
	strb	r3, [r5, r0]
	adds	r1, #1
	ldrb	r5, [sl]
	uxtb	r3, r1
	cmp	r5, r3
	bhi	lab251
lab236: 	ldr	r7, [sp, #12]
	adds	r7, #1
	str	r7, [sp, #12]
push {r1, r2}
	ldr r1, =4206
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	badruns
	push {r1, r2}
	ldr r1, =4206
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #8]
	uxtb	r7, r7
	add	r3, r0
	cmp	r7, r5
	str	r3, [sp, #8]
	bcc	lab252
	b	lab219
lab245: 	tst	ip, #1
	beq	lab253
	ldr	r4, [sp, #16]
	ldrb	r3, [sl]
	ldrb	r1, [r4, #0]
	ldr	r0, [fp]
	subs	r3, #7
	mul	r3, r1, r3
	adds	r3, #1
	lsrs	r2, r2, #2
	ldrb	r1, [r0, r3]
	orn	r1, r1, #127	
	strb	r1, [r0, r3]
	ldrb	r0, [r4, #0]
	ldr	r1, [fp]
	ldrb	r3, [r1, r0, lsl #3]
	orr	r3, r3, #1
	strb	r3, [r1, r0, lsl #3]
lab261: 	lsls	r6, r2, #31
	bpl	lab254
	ldr	r4, [sp, #16]
	ldrb	r3, [sl]
	ldrb	r1, [r4, #0]
	ldr	r0, [fp]
	subs	r3, #6
	mul	r3, r1, r3
	adds	r3, #1
	ldrb	r1, [r0, r3]
	orn	r1, r1, #127	
	strb	r1, [r0, r3]
	ldrb	r0, [r4, #0]
	ldr	r1, [fp]
	ldrb	r3, [r1, r0, lsl #3]
	orr	r3, r3, #4
	strb	r3, [r1, r0, lsl #3]
lab254: 	lsls	r5, r2, #30
	bpl	lab255
	ldr	r4, [sp, #16]
	ldrb	r3, [sl]
	ldrb	r1, [r4, #0]
	ldr	r0, [fp]
	subs	r3, #5
	mul	r3, r1, r3
	adds	r3, #1
	ldrb	r1, [r0, r3]
	orn	r1, r1, #127	
	strb	r1, [r0, r3]
	ldrb	r0, [r4, #0]
	ldr	r1, [fp]
	ldrb	r3, [r1, r0, lsl #3]
	orr	r3, r3, #8
	strb	r3, [r1, r0, lsl #3]
lab255: 	lsls	r4, r2, #29
	bpl	lab256
	ldr	r4, [sp, #16]
	ldrb	r3, [sl]
	ldrb	r1, [r4, #0]
	ldr	r0, [fp]
	subs	r3, #4
	mul	r3, r1, r3
	adds	r3, #1
	ldrb	r1, [r0, r3]
	orn	r1, r1, #127	
	strb	r1, [r0, r3]
	ldrb	r0, [r4, #0]
	ldr	r1, [fp]
	ldrb	r3, [r1, r0, lsl #3]
	orr	r3, r3, #16
	strb	r3, [r1, r0, lsl #3]
lab256: 	lsls	r0, r2, #28
	bmi	lab257
lab263: 	lsls	r1, r2, #27
	bpl	lab258
	ldr	r4, [sp, #16]
	ldrb	r3, [sl]
	ldrb	r1, [r4, #0]
	ldr	r0, [fp]
	subs	r3, #2
	mul	r3, r1, r3
	adds	r3, #1
	ldrb	r1, [r0, r3]
	orn	r1, r1, #127	
	strb	r1, [r0, r3]
	ldrb	r0, [r4, #0]
	ldr	r1, [fp]
	ldrb	r3, [r1, r0, lsl #3]
	orr	r3, r3, #64	
	strb	r3, [r1, r0, lsl #3]
lab258: 	lsls	r3, r2, #26
	bpl	lab259
	ldr	r0, [sp, #16]
	ldrb	r3, [sl]
	ldrb	r2, [r0, #0]
	ldr	r1, [fp]
	subs	r3, #1
	mul	r3, r2, r3
	adds	r3, #1
	ldrb	r2, [r1, r3]
	orn	r2, r2, #127	
	strb	r2, [r1, r3]
	ldrb	r1, [r0, #0]
	ldr	r2, [fp]
	ldrb	r3, [r2, r1, lsl #3]
	orn	r3, r3, #127	
	strb	r3, [r2, r1, lsl #3]
lab259: 	add	sp, #60	
	nop
	push {r1, r2}
	ldr r1, =2996
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab247: 	ldrb	r7, [r6, #0]
	ldr	lr, [fp]
	mul	r7, r0, r7
	adds	r7, #1
	uxtb	r3, r0
	ldrb	ip, [lr, r7]
	orn	ip, ip, #127	
	strb	ip, [lr, r7]
	b	lab260
lab253: 	lsrs	r2, r2, #2
	b	lab261
lab212: 	movs	r3, #0
	str	r3, [sp, #8]
	b	lab262
lab257: 	ldr	r4, [sp, #16]
	ldrb	r3, [sl]
	ldrb	r1, [r4, #0]
	ldr	r0, [fp]
	subs	r3, #3
	mul	r3, r1, r3
	adds	r3, #1
	ldrb	r1, [r0, r3]
	orn	r1, r1, #127	
	strb	r1, [r0, r3]
	ldrb	r0, [r4, #0]
	ldr	r1, [fp]
	ldrb	r3, [r1, r0, lsl #3]
	orr	r3, r3, #32
	strb	r3, [r1, r0, lsl #3]
	b	lab263
lab166: 	mov	r1, r3
	add	r5, r1
	movs	r3, #0
	strb	r3, [r5, #1]
	subs	r3, r1, #1
	cmp	r1, #0
	bne	lab264
	b	lab180
lab171: 	strb	sl, [lr]
	movw	r3, #964	
	ldrb	r0, [r9]
	movt	r3, #8192	
	str	r3, [sp, #52]	
	cmp	r0, #0
	bne	lab265
lab184: 	ldr	r3, [sp, #24]
	ldr	r7, [sp, #12]
	ldrb	r1, [r3, #0]
	ldrb	r3, [r7, #0]
	cmp	r3, #0
	bne	lab266
lab186: 	ldr	r3, [fp]
	mov	r2, r1
	cmp	r1, #0
	bne	lab267
	b	lab196
lab188: 	mov	r4, r1
	b	lab268
lab206: 	mov	r3, r1
	b	lab269
	nop
memcpy:
	mov	ip, r0
	orr	r3, r1, r0
	ands	r3, r3, #3
	bne	lab270
lab279: 	subs	r2, #64	
	bcc	lab271
lab272: 	ldr	r3, [r1], #4
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
	bcs	lab272
lab271: 	adds	r2, #48	
	bcc	lab273
lab274: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #16
	bcs	lab274
lab273: 	adds	r2, #12
	bcc	lab275
lab276: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #4
	bcs	lab276
lab275: 	adds	r2, #4
	beq	lab277
	lsls	r2, r2, #31
	itt	ne
	ldrbne	r3, [r1], #1
	strbne	r3, [r0], #1
	bcc	lab277
	ldrh	r3, [r1, #0]
	strh	r3, [r0, #0]
lab277: 	mov	r0, ip
	bx	lr
	nop
lab270: 	cmp	r2, #8
	bcc	lab278
	lsls	r3, r1, #30
	beq	lab279
	ands	r3, r0, #3
	beq	lab279
	rsb	r3, r3, #4
	subs	r2, r2, r3
	lsls	r3, r3, #31
	itt	ne
	ldrbne	r3, [r1], #1
	strbne	r3, [r0], #1
	bcc	lab279
	ldrh	r3, [r1], #2
	strh	r3, [r0], #2
	b	lab279
lab278: 	subs	r2, #4
	bcc	lab275
lab280: 	subs	r2, #1
	ldrb	r3, [r1], #1
	strb	r3, [r0], #1
	bcs	lab280
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
	bne	lab281
	mov	r4, #0
	mvn	r0, #7
lab283: 	ldrd	r2, r3, [r1]
	pld	[r1, #64]	
	add	r0, r0, #8
lab284: 	uadd8	r2, r2, ip
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab282
	ldrd	r2, r3, [r1, #8]
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab282
	ldrd	r2, r3, [r1, #16]
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab282
	ldrd	r2, r3, [r1, #24]
	add	r1, r1, #32
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp	r3, #0
	beq	lab283
lab282: 	cmp	r2, #0
	itt	eq
	addeq	r0, #4
	moveq	r2, r3
	rev	r2, r2
	clz	r2, r2
	ldrd	r4, r5, [sp], #8
	add	r0, r0, r2, lsr #3
	bx	lr
lab281: 	ldrd	r2, r3, [r1]
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
	b	lab284
	movs	r0, r0
	movs	r0, r0
memchr:
	and	r1, r1, #255	
	cmp	r2, #16
	blt	lab285
	tst	r0, #7
	beq	lab286
lab289: 	ldrb	r3, [r0], #1
	subs	r2, #1
	cmp	r3, r1
	beq	lab287
	tst	r0, #7
	cmp r2, #0
	beq lab288
	bne	lab289
lab286: 	push	{r4, r5, r6, r7}
	orr	r1, r1, r1, lsl #8
	orr	r1, r1, r1, lsl #16
	bic	r4, r2, #7
	mvns	r7, #0
	movs	r3, #0
lab291: 	ldrd	r5, r6, [r0], #8
	subs	r4, #8
	eor	r5, r5, r1
	eor	r6, r6, r1
	uadd8	r5, r5, r7
	sel	r5, r3, r7
	uadd8	r6, r6, r7
	sel	r6, r5, r7
	cmp r6, #0
	bne lab290
	bne	lab291
	pop	{r4, r5, r6, r7}
	and	r1, r1, #255	
	and	r2, r2, #7
lab285: 	cmp r2, #0
	beq lab288
lab292: 	ldrb	r3, [r0], #1
	subs	r2, #1
	eor	r3, r3, r1
	cmp r3, #0
	beq lab287
	bne	lab292
lab288: 	movs	r0, #0
	bx	lr
lab287: 	subs	r0, #1
	bx	lr
lab290: 	cmp	r5, #0
	itte	eq
	moveq	r5, r6
	subeq	r0, #3
	subne	r0, #7
	tst	r5, #1
	bne	lab293
	adds	r0, #1
	tst	r5, #256	
	ittt	eq
	addeq	r0, #1
	tsteq	r5, #98304	
	addeq	r0, #1
lab293: 	pop	{r4, r5, r6, r7}
	subs	r0, #1
	bx	lr
	nop
lab294: 	sub	r0, r2, r3
	bx	lr
	nop
strcmp:
	ldrb	r2, [r0, #0]
	ldrb	r3, [r1, #0]
	cmp	r2, #1
	it	cs
	cmpcs	r2, r3
	bne	lab294
	strd	r4, r5, [sp, #-16]!
	orr	r4, r0, r1
	strd	r6, r7, [sp, #8]
	mvn	ip, #0
	mov	r2, r4, lsl #29
	cmp r2, #0
	beq lab295
	eor	r4, r0, r1
	tst	r4, #7
	bne	lab296
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
	beq	lab297
	orn	r3, r3, r4
	mov	r2, ip
	orn	r7, r7, r4
	mov	r6, ip
	b	lab297
lab295: 	ldrd	r2, r3, [r0], #16
	ldrd	r6, r7, [r1], #16
lab297: 	uadd8	r5, r2, ip
	eor	r4, r2, r6
	sel	r4, r4, ip
	cmp r4, #0
	bne lab298
	uadd8	r5, r3, ip
	eor	r5, r3, r7
	sel	r5, r5, ip
	cmp r5, #0
	bne lab299
	ldrd	r2, r3, [r0, #-8]
	ldrd	r6, r7, [r1, #-8]
	uadd8	r5, r2, ip
	eor	r4, r2, r6
	sel	r4, r4, ip
	uadd8	r5, r3, ip
	eor	r5, r3, r7
	sel	r5, r5, ip
	orrs	r5, r4
	beq	lab295
	cmp r4, #0
	bne lab298
lab299: 	rev	r5, r5
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
lab298: 	rev	r4, r4
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
lab296: 	tst	r4, #3
	bne	lab300
	ands	r4, r0, #3
	bne	lab301
lab303: 	ldr	r2, [r0], #8
	ldr	r3, [r1], #8
lab304: 	uadd8	r5, r2, ip
	eor	r5, r2, r3
	sel	r5, r5, ip
	cmp r5, #0
	bne lab302
	ldr	r2, [r0, #-4]
	ldr	r3, [r1, #-4]
	uadd8	r5, r2, ip
	eor	r5, r2, r3
	sel	r5, r5, ip
	cmp	r5, #0
	beq	lab303
lab302: 	rev	r5, r5
	clz	r4, r5
	bic	r4, r4, #7
	lsr	r1, r3, r4
	lsr	r2, r2, r4
	and	r0, r2, #255	
	and	r1, r1, #255	
	ldrd	r4, r5, [sp], #16
	sub	r0, r0, r1
	bx	lr
lab301: 	mov	r4, r4, lsl #3
	bic	r0, r0, #3
	ldr	r2, [r0], #8
	bic	r1, r1, #3
	ldr	r3, [r1], #8
	lsl	r4, ip, r4
	orn	r2, r2, r4
	orn	r3, r3, r4
	b	lab304
lab300: 	ands	r4, r0, #3
	beq	lab305
	sub	r1, r1, r4
	bic	r0, r0, #3
	lsls	r4, r4, #31
	ldr	r2, [r0], #4
	beq	lab306
	bcs	lab307
	ldrb	r3, [r1, #2]
	uxtb	r4, r2, ror #16
	subs	r4, r4, r3
	bne	lab308
	cmp r3, #0
	beq lab308
lab306: 	ldrb	r3, [r1, #3]
	uxtb	r4, r2, ror #24
	subs	r4, r4, r3
	bne	lab308
	cmp r3, #0
	bne lab307
lab308: 	mov	r0, r4
	ldr	r4, [sp], #16
	bx	lr
lab307: 	add	r1, r1, #4
lab305: 	ldr	r2, [r0], #4
	lsls	r4, r1, #31
	bic	r1, r1, #3
	ldr	r3, [r1], #4
	bhi	lab309
	bcs	lab310
lab314: 	bic	r4, r2, #4278190080	
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #8
	sel	r5, r5, ip
	bne	lab311
	cmp r5, #0
	bne lab312
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #24
	bne	lab313
	ldr	r2, [r0], #4
	b	lab314
lab311: 	mov	r3, r3, lsr #8
	b	lab315
lab312: 	bics	r5, r5, #4278190080	
	bne	lab316
	ldrb	r0, [r1, #0]
	ldrd	r4, r5, [sp], #16
	rsb	r0, r0, #0
	bx	lr
lab313: 	mov	r2, r2, lsr #24
	and	r3, r3, #255	
	b	lab315
lab310: 	and	r4, r2, ip, lsr #16
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #16
	sel	r5, r5, ip
	bne	lab317
	cmp r5, #0
	bne lab318
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #16
	bne	lab319
	ldr	r2, [r0], #4
	b	lab310
lab317: 	mov	r3, r3, lsr #16
	b	lab315
lab318: 	ands	r5, r5, ip, lsr #16
	bne	lab316
	ldrh	r3, [r1, #0]
	mov	r2, r2, lsr #16
	b	lab315
lab319: 	mov	r2, r2, lsr #16
	and	r3, r3, ip, lsr #16
	b	lab315
lab309: 	and	r4, r2, #255	
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #24
	sel	r5, r5, ip
	bne	lab320
	cmp r5, #0
	bne lab321
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #8
	bne	lab322
	ldr	r2, [r0], #4
	b	lab309
lab320: 	mov	r3, r3, lsr #24
	b	lab315
lab321: 	tst	r5, #255	
	bne	lab316
	ldr	r3, [r1, #0]
lab322: 	mov	r2, r2, lsr #8
	bic	r3, r3, #4278190080	
	b	lab315
lab316: 	mov	r0, #0
	ldrd	r4, r5, [sp], #16
	bx	lr
lab315: 	rev	r2, r2
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
__aeabi_uldivmod:
	cmp r3, #0
	bne lab323
	cmp r2, #0
	bne lab323
	cmp	r1, #0
	it	eq
	cmpeq	r0, #0
	itt	ne
	movne	r1, #4294967295	
	movne	r0, #4294967295	
	b	__aeabi_idiv0
lab323: 	sub	ip, sp, #8
	strd	ip, lr, [sp, #-16]!
	bl	__udivmoddi4
	push {r1, r2}
	ldr r1, =2755
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	lr, [sp, #4]
	ldrd	r2, r3, [sp, #8]
	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =4543
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
	bne	lab324
	cmp	r2, r1
	mov	ip, r2
	bls	lab325
	clz	r2, r2
	cmp r2, #0
	beq lab326
	lsl	r3, r1, r2
	rsb	r1, r2, #32
	lsr	r1, r0, r1
	lsl	ip, ip, r2
	orr	r8, r1, r3
	lsls	r4, r2
lab326: 	mov	r5, ip, lsr #16
	lsrs	r1, r4, #16
	udiv	lr, r8, r5
	uxth	r7, ip
	mls	r3, r5, lr, r8
	orr	r3, r1, r3, lsl #16
	mul	r1, lr, r7
	cmp	r1, r3
	bls	lab327
	adds	r3, ip, r3
	add	r0, lr, #4294967295	
	bcs	lab328
	cmp	r1, r3
	bls	lab328
	sub	lr, lr, #2
	add	r3, ip
lab327: 	subs	r3, r3, r1
	uxth	r4, r4
	udiv	r0, r3, r5
	mls	r3, r5, r0, r3
	orr	r4, r4, r3, lsl #16
	mul	r7, r0, r7
	cmp	r7, r4
	bls	lab329
	adds	r4, ip, r4
	add	r3, r0, #4294967295	
	bcs	lab330
	cmp	r7, r4
	bls	lab330
	add	r4, ip
	subs	r0, #2
lab329: 	subs	r4, r4, r7
	orr	r0, r0, lr, lsl #16
	movs	r1, #0
lab345: 	cmp r6, #0
	beq lab331
	lsrs	r4, r2
	movs	r3, #0
	strd	r4, r3, [r6]
lab331:	nop
	push {r1, r2}
	ldr r1, =7733
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab324: 	cmp	r3, r1
	bls	lab332
	cmp	r6, #0
	beq	lab333
	movs	r1, #0
	strd	r0, r5, [r6]
	mov	r0, r1
	nop
	push {r1, r2}
	ldr r1, =6427
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab332: 	clz	r1, r3
	cmp	r1, #0
	bne	lab334
	cmp	r3, r5
	bcc	lab335
	cmp	r2, r0
	bhi	lab336
lab335: 	subs	r4, r0, r2
	sbc	r3, r5, r3
	movs	r0, #1
	mov	r8, r3
lab359: 	cmp	r6, #0
	beq	lab331
	strd	r4, r8, [r6]
	b	lab331
lab325: 	cmp r2, #0
	bne lab337
	udf	#255	
lab337: 	clz	r2, r2
	cmp	r2, #0
	bne	lab338
	sub	r5, r1, ip
	mov	r7, ip, lsr #16
	uxth	lr, ip
	movs	r1, #1
lab357: 	udiv	r3, r5, r7
	mls	r0, r7, r3, r5
	lsrs	r5, r4, #16
	orr	r5, r5, r0, lsl #16
	mul	r0, lr, r3
	cmp	r0, r5
	bls	lab339
	adds	r5, ip, r5
	add	r8, r3, #4294967295	
	bcs	lab340
	cmp	r0, r5
	bhi	lab341
lab340: 	mov	r3, r8
lab339: 	subs	r5, r5, r0
	uxth	r4, r4
	udiv	r0, r5, r7
	mls	r5, r7, r0, r5
	orr	r4, r4, r5, lsl #16
	mul	lr, lr, r0
	cmp	lr, r4
	bls	lab342
	adds	r4, ip, r4
	add	r5, r0, #4294967295	
	bcs	lab343
	cmp	lr, r4
	bhi	lab344
lab343: 	mov	r0, r5
lab342: 	sub	r4, r4, lr
	orr	r0, r0, r3, lsl #16
	b	lab345
lab334: 	rsb	r7, r1, #32
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
	bls	lab346
	adds	r5, ip, r5
	add	sl, r8, #4294967295	
	bcs	lab347
	cmp	r0, r5
	bls	lab347
	sub	r8, r8, #2
	add	r5, ip
lab346: 	subs	r5, r5, r0
	uxth	r4, r4
	udiv	r0, r5, r9
	mls	r5, r9, r0, r5
	orr	r5, r4, r5, lsl #16
	mul	lr, r0, lr
	cmp	lr, r5
	bls	lab348
	adds	r5, ip, r5
	add	r4, r0, #4294967295	
	bcs	lab349
	cmp	lr, r5
	bls	lab349
	subs	r0, #2
	add	r5, ip
lab348: 	orr	r0, r0, r8, lsl #16
	umull	r9, r4, r0, r2
	sub	r5, r5, lr
	cmp	r5, r4
	mov	r8, r9
	mov	lr, r4
	bcc	lab350
	beq	lab351
lab358: 	cmp r6, #0
	beq lab352
	subs	r2, r3, r8
	sbc	r5, r5, lr
	lsl	r7, r5, r7
	lsr	r3, r2, r1
	lsrs	r5, r1
	orrs	r7, r3
	strd	r7, r5, [r6]
lab352: 	movs	r1, #0
	nop
	push {r1, r2}
	ldr r1, =6556
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab338: 	rsb	r3, r2, #32
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
	bls	lab353
	adds	r3, ip, r3
	add	r8, r1, #4294967295	
	bcs	lab354
	cmp	r0, r3
	bls	lab354
	subs	r1, #2
	add	r3, ip
lab353: 	subs	r3, r3, r0
	uxth	r5, r5
	udiv	r0, r3, r7
	mls	r3, r7, r0, r3
	orr	r5, r5, r3, lsl #16
	mul	r3, r0, lr
	cmp	r3, r5
	bls	lab355
	adds	r5, ip, r5
	add	r8, r0, #4294967295	
	bcs	lab356
	cmp	r3, r5
	bls	lab356
	subs	r0, #2
	add	r5, ip
lab355: 	subs	r5, r5, r3
	orr	r1, r0, r1, lsl #16
	b	lab357
lab333: 	mov	r1, r6
	mov	r0, r6
	b	lab331
lab328: 	mov	lr, r0
	b	lab327
lab330: 	mov	r0, r3
	b	lab329
lab351: 	cmp	r3, r9
	bcs	lab358
lab350: 	subs	r8, r9, r2
	sbc	lr, r4, ip
	subs	r0, #1
	b	lab358
lab356: 	mov	r0, r8
	b	lab355
lab349: 	mov	r0, r4
	b	lab348
lab354: 	mov	r1, r8
	b	lab353
lab347: 	mov	r8, sl
	b	lab346
lab341: 	subs	r3, #2
	add	r5, ip
	b	lab339
lab336: 	mov	r0, r1
	b	lab359
lab344: 	add	r4, ip
	subs	r0, #2
	b	lab342
__aeabi_idiv0:
	bx	lr
	nop
__assert_func:
	push	{lr}
	ldr	r4, =0x200007f0	
	ldr	r5, [r4, #0]
	mov	r4, r2
	ldr	r6, [r5, #12]
	mov	r2, r3
	sub	sp, #20
	mov	r3, r0
	mov	r5, r1
	cmp r4, #0
	beq lab360
	ldr	r1, =0x20000644	
lab361: 	str	r5, [sp, #0]
	strd	r1, r4, [sp, #4]
	mov	r0, r6
	ldr	r1, =0x20000654	
	bl	fiprintf
	push {r1, r2}
	ldr r1, =2123
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	abort
lab360: 	ldr	r1, =0x20000650	
	mov	r4, r1
	b	lab361
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
	ldr r1, =3670
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =3670
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
	ldr	r4, =0x200007f0	
	ldr	r2, [r3], #4
	str	r3, [sp, #4]
	mov	r1, r0
	ldr	r0, [r4, #0]
push {r1, r2}
	ldr r1, =4662
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =4662
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	sp, #12
	ldmia	sp!, {r4, lr}
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =6318
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
	nop
	.ltorg
memcmp:
	cmp	r2, #3
	push	{r4, lr}
	bls	lab362
	orr	ip, r0, r1
	tst	ip, #3
	mov	r4, r0
	mov	r3, r1
	bne	lab363
lab364: 	mov	r1, r3
	mov	r0, r4
	ldr	lr, [r1]
	ldr	ip, [r0]
	cmp	ip, lr
	add	r4, r4, #4
	add	r3, r3, #4
	bne	lab363
	subs	r2, #4
	cmp	r2, #3
	mov	r0, r4
	mov	r1, r3
	bhi	lab364
lab362: 	subs	r4, r2, #1
	cmp r2, #0
	beq lab365
lab369: 	add	ip, r0, #4294967295	
	subs	r1, #1
	b	lab366
lab368: 	adds	r3, r0, r3
	beq	lab367
lab366: 	ldrb	lr, [ip, #1]!
	ldrb	r2, [r1, #1]!
	cmp	lr, r2
	sub	r3, r4, ip
	beq	lab368
	sub	r0, lr, r2
	nop
	push {r1, r2}
	ldr r1, =6815
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
lab363: 	subs	r4, r2, #1
	b	lab369
lab367: 	mov	r0, r3
	nop
	push {r1, r2}
	ldr r1, =266
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
lab365: 	mov	r0, r2
	nop
	push {r1, r2}
	ldr r1, =7323
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
memmove:
	cmp	r0, r1
	bls	lab370
	adds	r3, r1, r2
	cmp	r3, r0
	bls	lab370
	add	ip, r0, r2
	cmp r2, #0
	beq lab371
	mov	r2, ip
lab372: 	ldrb	ip, [r3, #-1]!
	strb	ip, [r2, #-1]!
	cmp	r1, r3
	bne	lab372
	nop
	push {r1, r2}
	ldr r1, =484
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
lab370: 	cmp	r2, #15
	bhi	lab373
	mov	r3, r0
	add	ip, r2, #4294967295	
	cmp r2, #0
	beq lab371
lab381: 	add	ip, ip, #1
	subs	r3, #1
	add	ip, r1
lab374: 	ldrb	r2, [r1], #1
	strb	r2, [r3, #1]!
	cmp	r1, ip
	bne	lab374
lab371:	nop
	push {r1, r2}
	ldr r1, =1691
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	bx	lr
lab373: 	orr	r3, r0, r1
	lsls	r3, r3, #30
	bne	lab375
	sub	r3, r2, #16
	push	{r4, r5, r6, lr}
	add	ip, r1, #32
	bic	r5, r3, #15
	add	lr, r1, #16
	add	r4, r0, #16
	add	ip, r5
	lsrs	r3, r3, #4
lab376: 	ldr	r5, [lr, #-16]
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
	bne	lab376
	adds	r3, #1
	tst	r2, #12
	add	r1, r1, r3, lsl #4
	and	r4, r2, #15
	add	r3, r0, r3, lsl #4
	beq	lab377
	subs	r4, #4
	bic	r6, r4, #3
	mov	ip, r4, lsr #2
	add	r6, r3
	subs	r4, r3, #4
	mov	lr, r1
lab378: 	ldr	r5, [lr], #4
	str	r5, [r4, #4]!
	cmp	r4, r6
	bne	lab378
	add	r4, ip, #1
	and	r2, r2, #3
	add	r3, r3, r4, lsl #2
	add	r1, r1, r4, lsl #2
lab382: 	add	ip, r2, #4294967295	
	cmp r2, #0
	beq lab379
	add	ip, ip, #1
	subs	r3, #1
	add	ip, r1
lab380: 	ldrb	r2, [r1], #1
	strb	r2, [r3, #1]!
	cmp	r1, ip
	bne	lab380
lab379:	nop
	push {r1, r2}
	ldr r1, =2906
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab375: 	add	ip, r2, #4294967295	
	mov	r3, r0
	b	lab381
lab377: 	mov	r2, r4
	b	lab382
memset:
	lsls	r3, r0, #30
	push	{r4, r5, lr}
	beq	lab383
	subs	r4, r2, #1
	cmp	r2, #0
	beq	lab384
	uxtb	r2, r1
	mov	r3, r0
	b	lab385
lab386: 	subs	r4, #1
	bcc	lab384
lab385: 	strb	r2, [r3], #1
	lsls	r5, r3, #30
	bne	lab386
lab394: 	cmp	r4, #3
	bls	lab387
	uxtb	r5, r1
	orr	r5, r5, r5, lsl #8
	cmp	r4, #15
	orr	r5, r5, r5, lsl #16
	bls	lab388
	sub	r2, r4, #16
	bic	ip, r2, #15
	add	lr, r3, #32
	add	lr, ip
	mov	ip, r2, lsr #4
	add	r2, r3, #16
lab389: 	strd	r5, r5, [r2, #-16]
	strd	r5, r5, [r2, #-8]
	adds	r2, #16
	cmp	r2, lr
	bne	lab389
	add	r2, ip, #1
	tst	r4, #12
	add	r2, r3, r2, lsl #4
	and	ip, r4, #15
	beq	lab390
lab395: 	sub	r3, ip, #4
	bic	r3, r3, #3
	adds	r3, #4
	add	r3, r2
lab391: 	str	r5, [r2], #4
	cmp	r3, r2
	bne	lab391
	and	r4, ip, #3
lab387: 	cmp r4, #0
	beq lab384
lab393: 	uxtb	r2, r1
	add	r4, r3
lab392: 	strb	r2, [r3], #1
	cmp	r4, r3
	bne	lab392
lab384:	nop
	push {r1, r2}
	ldr r1, =4199
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, pc}
lab390: 	mov	r4, ip
	mov	r3, r2
	cmp	r4, #0
	bne	lab393
	b	lab384
lab383: 	mov	r3, r0
	mov	r4, r2
	b	lab394
lab388: 	mov	r2, r3
	mov	ip, r4
	b	lab395
__sprint_r.part.0:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, [r1, #100]	
	lsls	r4, r3, #18
	mov	r8, r2
	bpl	lab396
	ldr	r3, [r2, #8]
	ldr	r2, [r2, #0]
	cmp r3, #0
	beq lab397
	mov	fp, r1
	mov	r6, r0
	add	r9, r2, #8
lab402: 	ldrd	r5, sl, [r9, #-8]
	movs	r7, sl, lsr #2
	beq	lab398
	subs	r5, #4
	movs	r4, #0
	b	lab399
lab401: 	cmp	r7, r4
	beq	lab400
lab399: 	ldr	r1, [r5, #4]!
	mov	r2, fp
	mov	r0, r6
	bl	_fputwc_r
	push {r1, r2}
	ldr r1, =7534
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	add	r4, r4, #1
	bne	lab401
lab403: 	movs	r3, #0
	strd	r3, r3, [r8, #4]
	nop
	push {r1, r2}
	ldr r1, =7784
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab400: 	ldr	r3, [r8, #8]
lab398: 	bic	sl, sl, #3
	sub	r3, r3, sl
	str	r3, [r8, #8]
	add	r9, r9, #8
	cmp	r3, #0
	bne	lab402
lab397: 	movs	r0, #0
	b	lab403
lab396: 	bl	__sfvwrite_r
	push {r1, r2}
	ldr r1, =7191
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	strd	r3, r3, [r8, #4]
	nop
	push {r1, r2}
	ldr r1, =974
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
	nop
__sprint_r:
	push	{r4}
	ldr	r4, [r2, #8]
	cmp r4, #0
	beq lab404
	pop	{r4}
	b	__sprint_r.part.0
lab404: 	mov	r0, r4
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
	beq lab405
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab406
lab405: 	ldr	r2, [sp, #4]
	ldr	r3, [r2, #100]	
	lsls	r6, r3, #31
	bpl	lab407
	ldrsh	r1, [r2, #12]
	uxth	r2, r1
lab446: 	lsls	r0, r2, #18
	bmi	lab408
	orr	r2, r1, #8192	
	ldr	r1, [sp, #4]
	ldr	r3, [r1, #100]	
	strh	r2, [r1, #12]
	bic	r3, r3, #8192	
	uxth	r2, r2
	str	r3, [r1, #100]	
lab408: 	lsls	r1, r2, #28
	bpl	lab409
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	lab409
	and	r3, r2, #26
	cmp	r3, #10
	beq	lab410
lab428: 	add	r3, sp, #76	
	str	r3, [sp, #64]	
	movs	r3, #0
	strd	r3, r3, [sp, #68]	
	strd	r3, r3, [sp, #40]	
	str	r3, [sp, #32]
	add	r9, sp, #76	
	str	r3, [sp, #36]	
	str	r3, [sp, #12]
lab461: 	ldrb	r3, [r7, #0]
	cmp	r3, #0
	beq	lab411
	mov	r4, r7
	b	lab412
lab414: 	ldrb	r3, [r4, #1]!
	cmp	r3, #0
	beq	lab413
lab412: 	cmp	r3, #37	
	bne	lab414
	subs	r5, r4, r7
	bne	lab415
lab439: 	ldrb	r3, [r4, #0]
	cmp	r3, #0
	beq	lab411
	mov	r3, #0
	movs	r5, #0
	strb	r3, [sp, #59]	
	adds	r7, r4, #1
	ldrb	r3, [r4, #1]
	str	r5, [sp, #8]
	mov	fp, #4294967295	
	movs	r4, #43	
lab420: 	adds	r7, #1
lab418: 	sub	r2, r3, #32
	cmp	r2, #90	
	bhi	lab416
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
lab417: 	ldrb	r3, [r7], #1
	add	r1, r1, r1, lsl #2
	add	r1, r2, r1, lsl #1
	sub	r2, r3, #48	
	cmp	r2, #9
	bls	lab417
	str	r1, [sp, #8]
	b	lab418
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
	bne	lab419
lab479: 	ldrb	r3, [r7, #0]
	b	lab420
	ldrb	r3, [r7, #0]
	orr	r5, r5, #32
	b	lab420
	orr	r5, r5, #16
	lsls	r4, r5, #26
	ldr	r6, [sp, #16]
	bpl	lab421
	adds	r6, #7
	bic	r6, r6, #7
	mov	r2, r6
	ldr	r3, [r6, #4]
	ldr	r6, [r2], #8
	str	r2, [sp, #16]
	mov	r8, r3
lab468: 	cmp	r3, #0
	blt	lab422
	cmp	fp, #4294967295	
	beq	lab423
	orrs	r3, r6, r8
	bic	sl, r5, #128	
	beq	lab424
lab482: 	cmp	r6, #10
	sbcs	r3, r8, #0
	bcs	lab425
lab523: 	adds	r6, #48	
	movs	r3, #1
	strb	r6, [sp, #239]	
	mov	r5, sl
	str	r3, [sp, #0]
	add	r4, sp, #239	
lab437: 	ldr	r8, [sp]
	ldrb	r3, [sp, #59]	
	cmp	r8, fp
	it	lt
	movlt	r8, fp
	cmp	r3, #0
	beq	lab426
	add	r8, r8, #1
	b	lab426
lab409: 	ldr	r5, [sp, #4]
	ldr	r0, [sp, #20]
	mov	r1, r5
push {r1, r2}
	ldr r1, =7266
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =7266
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab427
	ldrh	r2, [r5, #12]
	and	r3, r2, #26
	cmp	r3, #10
	bne	lab428
lab410: 	ldr	r1, [sp, #4]
	ldrsh	r3, [r1, #14]
	cmp	r3, #0
	blt	lab428
	ldr	r3, [r1, #100]	
	lsls	r6, r3, #31
	bmi	lab429
	lsls	r5, r2, #22
	bpl	lab430
lab429: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	mov	r3, r4
	mov	r2, r7
	add	sp, #244	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	__sbprintf
	orr	r5, r5, #16
	ands	r8, r5, #32
	beq	lab431
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r3, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r3], #8
	str	r3, [sp, #16]
lab465: 	bic	sl, r5, #1024	
	movs	r3, #0
lab475: 	mov	r2, #0
	strb	r2, [sp, #59]	
lab526: 	cmp	fp, #4294967295	
	beq	lab432
	orrs	r2, r6, r8
	bic	r5, sl, #128	
	bne	lab433
	cmp	fp, #0
	bne	lab434
	cmp	r3, #0
	bne	lab435
	ands	r3, sl, #1
	str	r3, [sp, #0]
	beq	lab436
	movs	r3, #48	
	strb	r3, [sp, #239]	
	add	r4, sp, #239	
	b	lab437
lab413: 	subs	r5, r4, r7
	beq	lab411
lab415: 	ldr	r3, [sp, #68]	
	ldr	r2, [sp, #72]	
	adds	r3, #1
	add	r2, r5
	cmp	r3, #7
	strd	r7, r5, [r9]
	str	r2, [sp, #72]	
	str	r3, [sp, #68]	
	bgt	lab438
	add	r9, r9, #8
lab442: 	ldr	r3, [sp, #12]
	add	r3, r5
	str	r3, [sp, #12]
	b	lab439
lab438: 	cmp	r2, #0
	beq	lab440
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =5439
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =5439
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab441
	add	r9, sp, #76	
	b	lab442
lab411: 	ldr	r3, [sp, #72]	
	cmp	r3, #0
	bne	lab443
lab548: 	movs	r3, #0
	str	r3, [sp, #68]	
lab441: 	ldr	r2, [sp, #4]
	ldr	r3, [r2, #100]	
	lsls	r1, r3, #31
	bpl	lab444
	ldrh	r3, [r2, #12]
lab462: 	lsls	r3, r3, #25
	bmi	lab445
lab550: 	ldr	r0, [sp, #12]
	add	sp, #244	
	nop
	push {r1, r2}
	ldr r1, =5811
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab407: 	ldr	r3, [sp, #4]
	ldrsh	r1, [r3, #12]
	lsls	r5, r1, #22
	uxth	r2, r1
	bmi	lab446
	mov	r5, r3
	ldr	r0, [r3, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r1, [r5, #12]
	uxth	r2, r1
	b	lab446
lab416: 	cmp	r3, #0
	beq	lab411
	strb	r3, [sp, #140]	
	mov	r8, #1
	mov	r3, #0
	strb	r3, [sp, #59]	
	str	r8, [sp]
	add	r4, sp, #140	
lab472: 	mov	fp, #0
lab426: 	ands	r3, r5, #2
	str	r3, [sp, #24]
	it	ne
	addne	r8, r8, #2
	ands	r3, r5, #132	
	str	r3, [sp, #28]
	bne	lab447
	ldr	r3, [sp, #8]
	sub	r6, r3, r8
	cmp	r6, #0
	bgt	lab448
lab447: 	ldrd	r2, r1, [sp, #68]	
	adds	r0, r2, #1
lab512: 	ldrb	r6, [sp, #59]	
	cmp r6, #0
	beq lab449
	add	r2, sp, #59	
	adds	r1, #1
	str	r2, [r9]
	cmp	r0, #7
	mov	r2, #1
	strd	r0, r1, [sp, #68]	
	str	r2, [r9, #4]
	bgt	lab450
lab535: 	mov	r2, r0
	add	r9, r9, #8
	adds	r0, #1
lab449: 	ldr	r3, [sp, #24]
	cmp r3, #0
	beq lab451
	add	r3, sp, #60	
	adds	r1, #2
	str	r3, [r9]
	cmp	r0, #7
	mov	r3, #2
	strd	r0, r1, [sp, #68]	
	str	r3, [r9, #4]
	ble	lab452
	cmp	r1, #0
	beq	lab453
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =499
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =499
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab441
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
lab451: 	ldr	r3, [sp, #28]
	cmp	r3, #128	
	beq	lab454
lab487: 	ldr	r3, [sp, #0]
	sub	r6, fp, r3
	cmp	r6, #0
	bgt	lab455
lab495: 	ldr	r3, [sp, #0]
	str	r4, [r9]
	add	r1, r3
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	r3, [r9, #4]
	ble	lab456
	cmp	r1, #0
	beq	lab457
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
	bne	lab441
	ldr	r1, [sp, #72]	
	add	r9, sp, #76	
lab486: 	lsls	r0, r5, #29
	bpl	lab458
	ldr	r3, [sp, #8]
	sub	r4, r3, r8
	cmp	r4, #0
	bgt	lab459
lab458: 	ldrd	r2, r3, [sp, #8]
	cmp	r2, r8
	ite	ge
	addge	r3, r3, r2
	addlt	r3, r8
	str	r3, [sp, #12]
	cmp	r1, #0
	bne	lab460
lab503: 	movs	r3, #0
	str	r3, [sp, #68]	
	add	r9, sp, #76	
	b	lab461
lab444: 	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #12]
	lsls	r2, r3, #22
	bmi	lab462
	ldr	r4, [sp, #4]
	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	ldrh	r3, [r4, #12]
	b	lab462
lab431: 	ands	r3, r5, #16
	bne	lab463
	ands	r2, r5, #64	
	beq	lab464
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	mov	r8, r3
	uxth	r6, r6
	b	lab465
lab421: 	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	lsls	r0, r5, #27
	bmi	lab466
	lsls	r1, r5, #25
	bpl	lab467
	sbfx	r8, r3, #15, #1
	sxth	r6, r3
	mov	r3, r8
	b	lab468
	ldr	r6, [sp, #16]
	ldr	r4, [r6], #4
	mov	r3, #0
	strb	r3, [sp, #59]	
	cmp	r4, #0
	beq	lab469
	cmp	fp, #4294967295	
	beq	lab470
	mov	r2, fp
	movs	r1, #0
	mov	r0, r4
	bl	memchr
	cmp	r0, #0
	beq	lab471
	subs	r3, r0, r4
	str	r3, [sp, #0]
	str	r6, [sp, #16]
	mov	fp, #0
	b	lab437
	ldr	r6, [sp, #16]
	mov	r3, #0
	strb	r3, [sp, #59]	
	mov	r8, #1
	ldr	r3, [r6], #4
	strb	r3, [sp, #140]	
	str	r6, [sp, #16]
	str	r8, [sp]
	add	r4, sp, #140	
	b	lab472
lab406: 	bl	__sinit
	b	lab405
	ldr	r3, [sp, #16]
	ldr	r2, [r3], #4
	str	r2, [sp, #8]
	cmp	r2, #0
	bge	lab473
	ldr	r2, [sp, #8]
	str	r3, [sp, #16]
	negs	r2, r2
	str	r2, [sp, #8]
	ldrb	r3, [r7, #0]
	orr	r5, r5, #4
	b	lab420
	ldrb	r3, [r7, #0]
	cmp	r3, #108	
	ittte	eq
	ldrbeq	r3, [r7, #1]
	orreq	r5, r5, #32
	addeq	r7, #1
	orrne	r5, r5, #16
	b	lab420
	ldrb	r3, [r7, #0]
	cmp	r3, #104	
	ittte	eq
	ldrbeq	r3, [r7, #1]
	orreq	r5, r5, #512	
	addeq	r7, #1
	orrne	r5, r5, #64	
	b	lab420
	orr	sl, r5, #16
lab532: 	ands	r8, sl, #32
	beq	lab474
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r3, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r3], #8
	str	r3, [sp, #16]
	movs	r3, #1
	b	lab475
	ldrb	r3, [r7, #0]
	strb	r4, [sp, #59]	
	b	lab420
	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	movs	r3, #48	
	strb	r3, [sp, #60]	
	movs	r3, #120	
	strb	r3, [sp, #61]	
	ldr	r3, =0x2000069c	
	str	r3, [sp, #32]
	orr	sl, r5, #2
	mov	r8, #0
	movs	r3, #2
	b	lab475
	lsls	r6, r5, #26
	bmi	lab476
	lsls	r4, r5, #27
	bmi	lab477
	lsls	r0, r5, #25
	bmi	lab478
	lsls	r1, r5, #22
	bpl	lab477
	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	strb	r2, [r3, #0]
	b	lab461
	ldrb	r3, [r7, #0]
	orr	r5, r5, #1
	b	lab420
	ldrb	r3, [sp, #59]	
	cmp	r3, #0
	bne	lab479
	movs	r3, #32
	strb	r3, [sp, #59]	
	ldrb	r3, [r7, #0]
	b	lab420
	ldrb	r3, [r7, #0]
	orr	r5, r5, #128	
	b	lab420
	mov	r1, r7
	ldrb	r3, [r1], #1
	cmp	r3, #42	
	beq	lab480
	sub	r2, r3, #48	
	cmp	r2, #9
	mov	r7, r1
	mov	fp, #0
	bhi	lab418
lab481: 	ldrb	r3, [r7], #1
	add	fp, fp, fp, lsl #2
	add	fp, r2, fp, lsl #1
	sub	r2, r3, #48	
	cmp	r2, #9
	bls	lab481
	b	lab418
lab433: 	mov	sl, r5
lab432: 	cmp	r3, #1
	beq	lab482
lab543: 	cmp	r3, #2
	add	r4, sp, #240	
	bne	lab483
	ldr	r2, [sp, #32]
lab484: 	and	r3, r6, #15
	lsrs	r6, r6, #4
	ldrb	r3, [r2, r3]
	strb	r3, [r4, #-1]!
	orr	r6, r6, r8, lsl #28
	mov	r8, r8, lsr #4
	orrs	r3, r6, r8
	bne	lab484
lab485: 	add	r3, sp, #240	
	subs	r3, r3, r4
	mov	r5, sl
	str	r3, [sp, #0]
	b	lab437
lab483: 	and	r3, r6, #7
	lsrs	r6, r6, #3
	orr	r6, r6, r8, lsl #29
	mov	r8, r8, lsr #3
	adds	r3, #48	
	orrs	r1, r6, r8
	mov	r2, r4
	strb	r3, [r4, #-1]!
	bne	lab483
	tst	sl, #1
	beq	lab485
	cmp	r3, #48	
	beq	lab485
	movs	r3, #48	
	subs	r2, #2
	strb	r3, [r4, #-1]
	add	r3, sp, #240	
	subs	r3, r3, r2
	mov	r5, sl
	str	r3, [sp, #0]
	mov	r4, r2
	b	lab437
lab521: 	ldr	r1, [sp, #0]
	str	r4, [sp, #76]	
	movs	r3, #1
	str	r1, [sp, #80]	
	str	r1, [sp, #72]	
	str	r3, [sp, #68]	
	add	r9, sp, #76	
lab456: 	add	r9, r9, #8
	b	lab486
lab454: 	ldr	r3, [sp, #8]
	sub	r6, r3, r8
	cmp	r6, #0
	ble	lab487
	cmp	r6, #16
	ble	lab488
	ldr	sl, =0x200006c8	
	mov	r3, sl
	strd	fp, r4, [sp, #24]
	mov	sl, r7
	ldr	fp, [sp, #20]
	ldr	r4, [sp, #4]
	mov	r7, r5
	mov	r5, r3
	b	lab489
lab491: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab504: 	subs	r6, #16
	cmp	r6, #16
	ble	lab490
lab489: 	adds	r0, r2, #1
	adds	r1, #16
	movs	r3, #16
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	r5, [r9]
	str	r3, [r9, #4]
	ble	lab491
	add	r2, sp, #64	
	cmp	r1, #0
	beq	lab492
	mov	r1, r4
	mov	r0, fp
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =4817
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =4817
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab441
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	bgt	lab489
lab490: 	ldrd	fp, r4, [sp, #24]
	mov	r3, r5
	mov	r5, r7
	mov	r7, sl
	mov	sl, r3
lab551: 	add	r1, r6
	cmp	ip, #7
	strd	ip, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	ble	lab493
	cmp	r1, #0
	beq	lab494
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =3833
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =3833
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab441
	ldr	r3, [sp, #0]
	ldrd	r2, r1, [sp, #68]	
	sub	r6, fp, r3
	cmp	r6, #0
	add	r0, r2, #1
	add	r9, sp, #76	
	ble	lab495
lab455: 	cmp	r6, #16
	ldr	sl, =0x200006c8	
	ble	lab496
	mov	r3, sl
	strd	r4, r5, [sp, #24]
	mov	sl, r7
	ldr	r4, [sp, #20]
	ldr	r5, [sp, #4]
	mov	fp, #16
	mov	r7, r3
	b	lab497
lab499: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab502: 	subs	r6, #16
	cmp	r6, #16
	ble	lab498
lab497: 	adds	r0, r2, #1
	adds	r1, #16
	cmp	r0, #7
	strd	r7, fp, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab499
	add	r2, sp, #64	
	cmp r1, #0
	beq lab500
	mov	r1, r5
	mov	r0, r4
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =2818
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =2818
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab441
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	bgt	lab497
lab498: 	ldrd	r4, r5, [sp, #24]
	mov	r3, r7
	mov	r0, ip
	mov	r7, sl
	mov	sl, r3
lab496: 	add	r1, r6
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	bgt	lab501
	add	r9, r9, #8
	adds	r0, #1
	b	lab495
lab500: 	mov	ip, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab502
lab460: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =3590
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =3590
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab503
	b	lab441
lab492: 	mov	ip, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab504
lab450: 	cmp	r1, #0
	beq	lab505
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =5660
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =5660
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab441
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
	b	lab449
lab546: 	movs	r1, #2
	add	r3, sp, #60	
	str	r1, [sp, #80]	
	str	r3, [sp, #76]	
	movs	r0, #1
	add	r9, sp, #76	
lab452: 	mov	r2, r0
lab529: 	add	r9, r9, #8
	adds	r0, r2, #1
	b	lab451
lab448: 	cmp	r6, #16
	ble	lab506
	ldrd	ip, r1, [sp, #68]	
	ldr	sl, =0x200006b8	
	strd	fp, r4, [sp, #48]	
	movs	r3, #16
	mov	r4, sl
	ldr	fp, [sp, #4]
	ldr	sl, [sp, #20]
	mov	r2, ip
	b	lab507
	.ltorg
lab509: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab513: 	subs	r6, #16
	cmp	r6, #16
	ble	lab508
lab507: 	adds	r0, r2, #1
	adds	r1, #16
	cmp	r0, #7
	strd	r4, r3, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab509
	add	r2, sp, #64	
	cmp r1, #0
	beq lab510
	mov	r1, fp
	mov	r0, sl
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =1456
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =1456
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab441
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	mov	r3, #16
	bgt	lab507
lab508: 	mov	sl, r4
	ldr	fp, [sp, #48]	
	ldr	r4, [sp, #52]	
	mov	r2, ip
lab547: 	add	r1, r6
	cmp	r2, #7
	strd	r2, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	bgt	lab511
	add	r9, r9, #8
	adds	r0, r2, #1
	b	lab512
lab510: 	mov	r2, r1
	mov	ip, #1
	add	r9, sp, #76	
	b	lab513
lab457: 	lsls	r4, r5, #29
	str	r1, [sp, #68]	
	bpl	lab514
	ldr	r3, [sp, #8]
	sub	r4, r3, r8
	cmp	r4, #0
	ble	lab514
	add	r9, sp, #76	
lab459: 	cmp	r4, #16
	ble	lab515
	ldr	sl, =0x200006b8	
	ldr	r2, [sp, #68]	
	ldr	r6, [sp, #20]
	ldr	fp, [sp, #4]
	mov	r3, sl
	movs	r5, #16
	mov	sl, r7
	mov	r7, r3
	b	lab516
lab518: 	adds	r0, r2, #2
	add	r9, r9, #8
	mov	r2, r3
lab520: 	subs	r4, #16
	cmp	r4, #16
	ble	lab517
lab516: 	adds	r3, r2, #1
	adds	r1, #16
	cmp	r3, #7
	strd	r7, r5, [r9]
	strd	r3, r1, [sp, #68]	
	ble	lab518
	add	r2, sp, #64	
	cmp r1, #0
	beq lab519
	mov	r1, fp
	mov	r0, r6
push {r1, r2}
	ldr r1, =2902
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =2902
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab441
	ldrd	r2, r1, [sp, #68]	
	subs	r4, #16
	cmp	r4, #16
	add	r0, r2, #1
	add	r9, sp, #76	
	bgt	lab516
lab517: 	mov	r3, r7
	mov	r7, sl
	mov	sl, r3
lab549: 	add	r1, r4
	cmp	r0, #7
	strd	sl, r4, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab458
	cmp r1, #0
	beq lab514
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =6762
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =6762
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab441
	ldr	r1, [sp, #72]	
	b	lab458
lab519: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab520
lab514: 	ldrd	r2, r3, [sp, #8]
	cmp	r2, r8
	ite	ge
	addge	r3, r3, r2
	addlt	r3, r8
	str	r3, [sp, #12]
	b	lab503
lab501: 	cmp	r1, #0
	beq	lab521
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =3877
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =3877
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab441
	ldr	r0, [sp, #68]	
	ldr	r1, [sp, #72]	
	adds	r0, #1
	add	r9, sp, #76	
	b	lab495
lab505: 	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	lab522
lab453: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab451
lab440: 	str	r2, [sp, #68]	
	add	r9, sp, #76	
	b	lab442
lab424: 	cmp	fp, #0
	bne	lab523
	mov	r5, sl
lab435: 	mov	fp, #0
	str	fp, [sp]
	add	r4, sp, #240	
	b	lab437
lab474: 	ands	r3, sl, #16
	bne	lab524
	ands	r2, sl, #64	
	beq	lab525
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	mov	r8, r3
	uxth	r6, r6
	movs	r3, #1
	b	lab475
lab422: 	movs	r3, #45	
	negs	r6, r6
	strb	r3, [sp, #59]	
	sbc	r8, r8, r8, lsl #1
	mov	sl, r5
	movs	r3, #1
	b	lab526
lab511: 	cmp	r1, #0
	beq	lab527
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =5000
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =5000
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab441
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
	b	lab512
lab473: 	str	r3, [sp, #16]
	ldrb	r3, [r7, #0]
	b	lab420
lab436: 	add	r4, sp, #240	
	b	lab437
lab493: 	add	r9, r9, #8
	add	r0, ip, #1
	mov	r2, ip
	b	lab487
lab467: 	lsls	r2, r5, #22
	bmi	lab528
lab466: 	mov	r8, r3, asr #31
	mov	r6, r3
	mov	r3, r8
	b	lab468
lab524: 	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	movs	r3, #1
	b	lab475
lab419: 	ldr	r3, [sp, #36]	
	cmp	r3, #0
	beq	lab479
	ldr	r3, [sp, #36]	
	ldrb	r3, [r3, #0]
	cmp	r3, #0
	beq	lab479
	ldrb	r3, [r7, #0]
	orr	r5, r5, #1024	
	b	lab420
lab476: 	ldrd	r1, r6, [sp, #12]
	ldr	r2, [r6], #4
	str	r6, [sp, #16]
	asrs	r3, r1, #31
	strd	r1, r3, [r2]
	b	lab461
lab463: 	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	b	lab465
lab522: 	movs	r1, #2
	add	r3, sp, #60	
	str	r1, [sp, #80]	
	str	r3, [sp, #76]	
	add	r9, sp, #76	
	b	lab529
	ldr	r2, =0x20000688	
	str	r2, [sp, #32]
lab533: 	ands	r8, r5, #32
	beq	lab530
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r2, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r2], #8
	str	r2, [sp, #16]
lab537: 	lsls	r2, r5, #31
	bpl	lab531
	orrs	r2, r6, r8
	beq	lab531
	strb	r3, [sp, #61]	
	movs	r3, #48	
	orr	r5, r5, #2
	strb	r3, [sp, #60]	
lab531: 	bic	sl, r5, #1024	
	movs	r3, #2
	b	lab475
	mov	sl, r5
	b	lab532
	ldr	r2, =0x2000069c	
	str	r2, [sp, #32]
	b	lab533
lab470: 	mov	r0, r4
	str	r6, [sp, #16]
	bl	strlen
	mov	fp, #0
	str	r0, [sp, #0]
	b	lab437
lab527: 	ldrb	r2, [sp, #59]	
	cmp	r2, #0
	beq	lab534
	movs	r0, #1
	add	r2, sp, #59	
	str	r0, [sp, #80]	
	str	r2, [sp, #76]	
	add	r9, sp, #76	
	mov	r1, r0
	b	lab535
lab530: 	ands	r2, r5, #16
	beq	lab536
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	b	lab537
lab425: 	and	r3, sl, #1024	
	str	fp, [sp]
	str	r9, [sp, #24]
	mov	fp, r7
	ldr	r9, [sp, #36]	
	movs	r5, #0
	add	r4, sp, #240	
	mov	r7, r3
	b	lab538
lab540: 	mov	r0, r6
	mov	r1, r8
push {r1, r2}
	ldr r1, =7816
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =7816
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r6, #10
	sbcs	r3, r8, #0
	bcc	lab539
lab545: 	mov	r6, r0
	mov	r8, r1
lab538: 	mov	r0, r6
	mov	r1, r8
	movs	r2, #10
	movs	r3, #0
push {r1, r2}
	ldr r1, =4043
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =4043
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
	beq	lab540
	ldrb	r1, [r9]
	cmp	r1, r5
	bne	lab540
	cmp	r5, #255	
	beq	lab540
	cmp	r6, #10
	sbcs	r3, r8, #0
	bcs	lab541
lab539: 	add	r3, sp, #240	
	subs	r3, r3, r4
	str	r9, [sp, #36]	
	mov	r7, fp
	ldr	r9, [sp, #24]
	ldr	fp, [sp]
	str	r3, [sp, #0]
	mov	r5, sl
	b	lab437
lab536: 	ands	r1, r5, #64	
	beq	lab542
	ldr	r1, [sp, #16]
	ldr	r6, [r1], #4
	str	r1, [sp, #16]
	mov	r8, r2
	uxth	r6, r6
	b	lab537
lab423: 	mov	sl, r5
	b	lab482
lab434: 	cmp	r3, #1
	mov	sl, r5
	bne	lab543
	b	lab523
	nop
	.ltorg
lab477: 	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r2, [r3, #0]
	str	r6, [sp, #16]
	b	lab461
lab469: 	cmp	fp, #6
	mov	r8, fp
	it	cs
	movcs	r8, #6
	ldr	r4, =0x200006b0	
	str	r8, [sp]
	str	r6, [sp, #16]
	b	lab472
lab525: 	ldr	r3, [sp, #16]
	ands	r8, sl, #512	
	ite	ne
	ldrne	r6, [r3], #4
	ldreq	r6, [r3], #4
	str	r3, [sp, #16]
	itt	ne
	movne	r8, r2
	uxtbne	r6, r6
	movs	r3, #1
	b	lab475
lab464: 	ldr	r3, [sp, #16]
	ands	r8, r5, #512	
	ite	ne
	ldrne	r6, [r3], #4
	ldreq	r6, [r3], #4
	str	r3, [sp, #16]
	itt	ne
	movne	r8, r2
	uxtbne	r6, r6
	b	lab465
lab542: 	ldr	r2, [sp, #16]
	ands	r8, r5, #512	
	ite	ne
	ldrne	r6, [r2], #4
	ldreq	r6, [r2], #4
	str	r2, [sp, #16]
	itt	ne
	movne	r8, r1
	uxtbne	r6, r6
	b	lab537
lab541: 	ldr	r3, [sp, #44]	
	ldr	r1, [sp, #40]	
	subs	r4, r4, r3
	mov	r2, r3
	mov	r0, r4
	bl	strncpy
	push {r1, r2}
	ldr r1, =2470
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r3, [r9, #1]
	cmp r3, #0
	beq lab544
	add	r9, r9, #1
lab544: 	mov	r0, r6
	mov	r1, r8
	movs	r2, #10
	movs	r3, #0
	movs	r5, #0
push {r1, r2}
	ldr r1, =7865
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =7865
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab545
lab494: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab487
lab534: 	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	lab546
	mov	r2, r1
	movs	r0, #1
	add	r9, sp, #76	
	b	lab487
lab478: 	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	strh	r2, [r3, #0]
	b	lab461
lab528: 	sbfx	r8, r3, #7, #1
	sxtb	r6, r3
	mov	r3, r8
	b	lab468
lab430: 	ldr	r0, [r1, #88]	
	bl	__retarget_lock_release_recursive
	b	lab429
lab471: 	str	fp, [sp]
	str	r6, [sp, #16]
	mov	fp, r0
	b	lab437
lab506: 	ldr	r2, [sp, #68]	
	ldr	r1, [sp, #72]	
	ldr	sl, =0x200006b8	
	adds	r2, #1
	b	lab547
lab443: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =4232
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =4232
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab548
	b	lab441
lab515: 	ldr	r0, [sp, #68]	
	ldr	sl, =0x200006b8	
	adds	r0, #1
	b	lab549
lab427: 	ldr	r3, [sp, #4]
	ldr	r3, [r3, #100]	
	lsls	r3, r3, #31
	bmi	lab445
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #12]
	lsls	r7, r3, #22
	bmi	lab445
	ldr	r3, [sp, #4]
	ldr	r0, [r3, #88]	
	bl	__retarget_lock_release_recursive
lab445: 	mov	r3, #4294967295	
	str	r3, [sp, #12]
	b	lab550
lab488: 	ldr	sl, =0x200006c8	
	mov	ip, r0
	b	lab551
lab480: 	ldr	r2, [sp, #16]
	ldrb	r3, [r7, #1]
	mov	r7, r1
	ldr	r1, [r2], #4
	str	r2, [sp, #16]
	orr	fp, r1, r1, asr #31
	b	lab420
	nop
	.ltorg
vfiprintf:
	push	{r4}
	ldr	r4, =0x200007f0	
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
	ldr r1, =1190
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =1190
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r5, r0, #0
	blt	lab552
	mov	r1, sp
	mov	r0, r6
push {r1, r2}
	ldr r1, =8113
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =8113
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	it	ne
	movne	r5, #4294967295	
lab552: 	ldrh	r3, [sp, #12]
	lsls	r3, r3, #25
	bpl	lab553
	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
lab553: 	ldr	r0, [sp, #88]	
	bl	__retarget_lock_close_recursive
	mov	r0, r5
	addw	sp, sp, #1132	
	nop
	push {r1, r2}
	ldr r1, =4994
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
__swsetup_r:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x200007f0	
	ldr	r3, [r3, #0]
	mov	r5, r0
	mov	r4, r1
	cmp r3, #0
	beq lab554
	ldr	r2, [r3, #56]	
	cmp r2, #0
	beq lab555
lab554: 	ldrsh	r3, [r4, #12]
	lsls	r0, r3, #28
	uxth	r2, r3
	bpl	lab556
lab562: 	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	lab557
lab565: 	ands	r0, r2, #1
	beq	lab558
	movs	r0, #0
	str	r0, [r4, #8]
	ldr	r0, [r4, #20]
	negs	r0, r0
	str	r0, [r4, #24]
	cmp r1, #0
	beq lab559
lab560: 	movs	r0, #0
lab561:	nop
	push {r1, r2}
	ldr r1, =828
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab558: 	lsls	r5, r2, #30
	it	pl
	ldrpl	r0, [r4, #20]
	str	r0, [r4, #8]
	cmp	r1, #0
	bne	lab560
lab559: 	lsls	r2, r2, #24
	it	pl
	movpl	r0, r1
	bpl	lab561
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	mov	r0, #4294967295	
	nop
	push {r1, r2}
	ldr r1, =8155
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab555: 	mov	r0, r3
	bl	__sinit
	ldrsh	r3, [r4, #12]
	lsls	r0, r3, #28
	uxth	r2, r3
	bmi	lab562
lab556: 	lsls	r1, r2, #27
	bpl	lab563
	lsls	r2, r2, #29
	bmi	lab564
	ldr	r1, [r4, #16]
lab568: 	orr	r3, r3, #8
	strh	r3, [r4, #12]
	uxth	r2, r3
	cmp	r1, #0
	bne	lab565
lab557: 	and	r0, r2, #640	
	cmp	r0, #512	
	beq	lab565
	mov	r1, r4
	mov	r0, r5
	bl	__smakebuf_r
	push {r1, r2}
	ldr r1, =3914
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	ldr	r1, [r4, #16]
	uxth	r2, r3
	b	lab565
lab564: 	ldr	r1, [r4, #48]	
	cmp r1, #0
	beq lab566
	add	r2, r4, #64	
	cmp	r1, r2
	beq	lab567
	mov	r0, r5
push {r1, r2}
	ldr r1, =6489
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =6489
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
lab567: 	movs	r2, #0
	str	r2, [r4, #48]	
lab566: 	ldr	r1, [r4, #16]
	movs	r2, #0
	strd	r1, r2, [r4]
	bic	r3, r3, #36	
	b	lab568
lab563: 	movs	r2, #9
	orr	r3, r3, #64	
	str	r2, [r5, #0]
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =1161
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
	ldr r1, =1518
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
	bmi	lab569
	ldr	r3, [r4, #4]
	orr	r2, r2, #2048	
	cmp	r3, #0
	strh	r2, [r4, #12]
	ble	lab570
lab582: 	ldr	r5, [r4, #40]	
	cmp	r5, #0
	beq	lab571
	movs	r3, #0
	ldr	r6, [r7, #0]
	str	r3, [r7, #0]
	uxth	r3, r2
	ands	r2, r2, #4096	
	bne	lab572
	ldr	r1, [r4, #28]
	movs	r3, #1
	mov	r0, r7
	blx	r5
	adds	r2, r0, #1
	beq	lab573
lab585: 	ldrh	r3, [r4, #12]
	ldr	r5, [r4, #40]	
lab583: 	lsls	r3, r3, #29
	bpl	lab574
	ldr	r3, [r4, #4]
	subs	r0, r0, r3
	ldr	r3, [r4, #48]	
	cmp r3, #0
	beq lab574
	ldr	r3, [r4, #60]	
	subs	r0, r0, r3
lab574: 	ldr	r1, [r4, #28]
	mov	r2, r0
	movs	r3, #0
	mov	r0, r7
	blx	r5
	adds	r1, r0, #1
	bne	lab575
	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	lab575
	cmp	r3, #29
	beq	lab576
	cmp	r3, #22
	bne	lab577
lab576: 	ldrh	r3, [r4, #12]
	ldr	r2, [r4, #16]
	str	r2, [r4, #0]
	bic	r3, r3, #2048	
	movs	r1, #0
	str	r1, [r4, #4]
	strh	r3, [r4, #12]
lab584: 	ldr	r1, [r4, #48]	
	str	r6, [r7, #0]
	cmp r1, #0
	beq lab571
	add	r3, r4, #64	
	cmp	r1, r3
	beq	lab578
	mov	r0, r7
push {r1, r2}
	ldr r1, =1901
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab578:	push {r1, r2}
	ldr r1, =1901
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	movs	r0, #0
	str	r0, [r4, #48]	
	nop
	push {r1, r2}
	ldr r1, =6360
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab569: 	ldr	r6, [r4, #16]
	cmp r6, #0
	beq lab571
	uxth	r3, r2
	ldr	r5, [r4, #0]
	str	r6, [r4, #0]
	lsls	r2, r3, #30
	ite	eq
	ldreq	r3, [r4, #20]
	movne	r3, #0
	subs	r5, r5, r6
	str	r3, [r4, #8]
	b	lab579
lab581: 	ldr	ip, [r4, #36]	
	ldr	r1, [r4, #28]
	mov	r3, r5
	mov	r2, r6
	mov	r0, r7
	blx	ip
	subs	ip, r0, #0
	sub	r5, r5, ip
	add	r6, ip
	ble	lab580
lab579: 	cmp	r5, #0
	bgt	lab581
lab571: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =2399
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab570: 	ldr	r3, [r4, #60]	
	cmp	r3, #0
	bgt	lab582
	b	lab571
lab572: 	ldr	r0, [r4, #80]	
	b	lab583
lab575: 	ldrsh	r3, [r4, #12]
	ldr	r2, [r4, #16]
	str	r2, [r4, #0]
	bic	r3, r3, #2048	
	strh	r3, [r4, #12]
	movs	r2, #0
	lsls	r3, r3, #19
	str	r2, [r4, #4]
	bpl	lab584
	str	r0, [r4, #80]	
	b	lab584
lab580: 	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =639
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab573: 	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	lab585
	cmp	r3, #29
	beq	lab586
	cmp	r3, #22
	beq	lab586
lab577: 	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =5472
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab586: 	str	r6, [r7, #0]
	b	lab571
	nop
_fflush_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	cmp r0, #0
	beq lab587
	ldr	r3, [r0, #56]	
	cmp r3, #0
	beq lab588
lab587: 	ldrsh	r0, [r4, #12]
	cmp r0, #0
	beq lab589
lab594: 	ldr	r3, [r4, #100]	
	lsls	r3, r3, #31
	bmi	lab590
	lsls	r1, r0, #22
	bpl	lab591
lab590: 	mov	r0, r5
	mov	r1, r4
push {r1, r2}
	ldr r1, =847
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =847
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab592
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab593
lab592: 	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =5778
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab588: 	bl	__sinit
	ldrsh	r0, [r4, #12]
	cmp	r0, #0
	bne	lab594
lab589: 	mov	r5, r0
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =6361
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab591: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	b	lab590
lab593: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =2984
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	nop
fflush:
	push	{r3, r4, r5, lr}
	cmp r0, #0
	beq lab595
	ldr	r3, =0x200007f0	
	ldr	r5, [r3, #0]
	mov	r4, r0
	cmp r5, #0
	beq lab596
	ldr	r3, [r5, #56]	
	cmp r3, #0
	beq lab597
lab596: 	ldrsh	r0, [r4, #12]
	cmp r0, #0
	beq lab598
	ldr	r3, [r4, #100]	
	lsls	r3, r3, #31
	bmi	lab599
	lsls	r1, r0, #22
	bpl	lab600
lab599: 	mov	r0, r5
	mov	r1, r4
push {r1, r2}
	ldr r1, =2708
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =2708
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab601
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab602
lab601: 	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab598: 	mov	r5, r0
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab597: 	mov	r0, r5
	bl	__sinit
	b	lab596
lab600: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	b	lab599
lab602: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	b	lab601
lab595: 	ldr	r3, =0x20000684	
	ldr	r1, =0x80054bd	
	ldr	r0, [r3, #0]
	ldmia	sp!, {r3, r4, r5, lr}
	b	_fwalk_reent
	nop
	.ltorg
_cleanup_r:
	ldr	r1, =0x800713d	
	b	_fwalk_reent
	nop
	.ltorg
__fp_lock:
	push	{r3, lr}
	ldr	r3, [r0, #100]	
	lsls	r2, r3, #31
	bmi	lab603
	ldrh	r3, [r0, #12]
	lsls	r3, r3, #22
	bpl	lab604
lab603: 	movs	r0, #0
	pop	{r3, pc}
lab604: 	ldr	r0, [r0, #88]	
	bl	__retarget_lock_acquire_recursive
	movs	r0, #0
	pop	{r3, pc}
__fp_unlock:
	push	{r3, lr}
	ldr	r3, [r0, #100]	
	lsls	r2, r3, #31
	bmi	lab605
	ldrh	r3, [r0, #12]
	lsls	r3, r3, #22
	bpl	lab606
lab605: 	movs	r0, #0
	pop	{r3, pc}
lab606: 	ldr	r0, [r0, #88]	
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
	ldr r1, =4924
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =4924
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	cmp r0, #0
	beq lab607
	movs	r1, #0
	adds	r0, #12
	strd	r1, r6, [r4]
	str	r0, [r4, #8]
	add	r2, r5, #104	
push {r1, r2}
	ldr r1, =6506
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
lab607:	push {r1, r2}
	ldr r1, =6506
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r4
	pop	{r4, r5, r6, pc}
	nop
_cleanup:
	ldr	r3, =0x20000684	
	ldr	r1, =0x800713d	
	ldr	r0, [r3, #0]
	b	_fwalk_reent
	nop
	.ltorg
__sinit:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	sl, r0
	ldr	r0, =0x200031f8	
	bl	__retarget_lock_acquire_recursive
	ldr	r4, [sl, #56]	
	cmp	r4, #0
	bne	lab608
	ldr	r5, [sl, #4]
	ldr	r2, =0x800558d	
	str	r2, [sl, #60]	
	movs	r3, #3
	strd	r4, r3, [sl, #736]	
	ldr	r9, =0x8006e75	
	ldr	r8, =0x8006e9d	
	ldr	r7, =0x8006edd	
	ldr	r6, =0x8006efd	
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
	ldr r1, =6201
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =6201
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
	ldr r1, =2877
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =2877
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
	ldr r1, =5867
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =5867
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
	ldr	r0, =0x200031f8	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	b	__retarget_lock_release_recursive
lab608: 	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r0, =0x200031f8	
	b	__retarget_lock_release_recursive
	.ltorg
__sfp:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r7, r0
	ldr	r0, =0x200031f4	
	bl	__retarget_lock_acquire_recursive
	ldr	r3, =0x20000684	
	ldr	r6, [r3, #0]
	ldr	r3, [r6, #56]	
	cmp r3, #0
	beq lab609
lab615: 	add	r6, r6, #736	
	mov	r8, #4
lab614: 	ldrd	r3, r4, [r6, #4]
	subs	r3, #1
	bpl	lab610
	b	lab611
lab612: 	adds	r2, r3, #1
	add	r4, r4, #104	
	beq	lab611
lab610: 	ldrsh	r5, [r4, #12]
	subs	r3, #1
	cmp	r5, #0
	bne	lab612
	ldr	r3, =0xffff0001	
	str	r3, [r4, #12]
	add	r0, r4, #88	
	str	r5, [r4, #100]	
	bl	__retarget_lock_init_recursive
	ldr	r0, =0x200031f4	
	bl	__retarget_lock_release_recursive
	strd	r5, r5, [r4, #4]
	strd	r5, r5, [r4, #16]
	str	r5, [r4, #0]
	str	r5, [r4, #24]
	movs	r2, #8
	mov	r1, r5
	add	r0, r4, #92	
push {r1, r2}
	ldr r1, =7618
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =7618
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	r5, r5, [r4, #48]	
	strd	r5, r5, [r4, #68]	
lab617: 	mov	r0, r4
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab611: 	ldr	r5, [r6, #0]
	cmp r5, #0
	beq lab613
	mov	r6, r5
	b	lab614
lab609: 	mov	r0, r6
	bl	__sinit
	b	lab615
lab613: 	mov	r1, #428	
	mov	r0, r7
push {r1, r2}
	ldr r1, =1769
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1769
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	cmp r0, #0
	beq lab616
	str	r5, [r0, #0]
	str	r8, [r0, #4]
	adds	r0, #12
	mov	r1, r5
	str	r0, [r4, #8]
	mov	r5, r4
	mov	r2, #416	
push {r1, r2}
	ldr r1, =5156
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =5156
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r4, [r6, #0]
	mov	r6, r5
	b	lab614
lab616: 	ldr	r0, =0x200031f4	
	str	r4, [r6, #0]
	bl	__retarget_lock_release_recursive
	movs	r3, #12
	str	r3, [r7, #0]
	b	lab617
	nop
	.ltorg
__sfp_lock_acquire:
	ldr	r0, =0x200031f4	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__sfp_lock_release:
	ldr	r0, =0x200031f4	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
__sinit_lock_acquire:
	ldr	r0, =0x200031f8	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__sinit_lock_release:
	ldr	r0, =0x200031f8	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
__fp_lock_all:
	push	{r3, lr}
	ldr	r0, =0x200031f4	
	bl	__retarget_lock_acquire_recursive
	ldr	r3, =0x200007f0	
	ldr	r1, =0x8005599	
	ldr	r0, [r3, #0]
	ldmia	sp!, {r3, lr}
	b	_fwalk
	nop
	.ltorg
__fp_unlock_all:
	push	{r3, lr}
	ldr	r3, =0x200007f0	
	ldr	r1, =0x80055b5	
	ldr	r0, [r3, #0]
	bl	_fwalk
	push {r1, r2}
	ldr r1, =4405
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldmia	sp!, {r3, lr}
	ldr	r0, =0x200031f4	
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
	bne	lab618
	add	r3, r8, #4294967295	
	cmp	r3, #254	
	bls	lab619
lab618: 	mov	r2, r8
	add	r3, r4, #92	
	add	r1, sp, #4
	mov	r0, r7
	bl	_wcrtomb_r
	push {r1, r2}
	ldr r1, =1704
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r2, r0, #1
	mov	r6, r0
	beq	lab620
	cmp r0, #0
	beq lab621
	ldrb	ip, [sp, #4]
lab626: 	add	r9, sp, #5
	movs	r5, #0
	b	lab622
lab623: 	ldr	r3, [r4, #0]
	adds	r2, r3, #1
	str	r2, [r4, #0]
	strb	ip, [r3]
lab625: 	adds	r5, #1
	cmp	r5, r6
	bcs	lab621
	ldrb	ip, [r9], #1
lab622: 	ldr	r3, [r4, #8]
	subs	r3, #1
	cmp	r3, #0
	str	r3, [r4, #8]
	bge	lab623
	ldr	lr, [r4, #24]
	cmp	r3, lr
	mov	r1, ip
	mov	r2, r4
	mov	r0, r7
	blt	lab624
	cmp	ip, #10
	bne	lab623
lab624: 	bl	__swbuf_r
	push {r1, r2}
	ldr r1, =6302
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	bne	lab625
	mov	r6, r0
	mov	r0, r6
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =1202
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab621: 	mov	r6, r8
	mov	r0, r6
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =6793
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab619: 	uxtb	ip, r8
	strb	ip, [sp, #4]
	mov	r6, r0
	b	lab626
lab620: 	ldrh	r3, [r4, #12]
	mov	r0, r6
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =1461
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
	bne	lab627
	lsls	r0, r3, #22
	bpl	lab628
lab627: 	lsls	r0, r2, #18
	bmi	lab629
	ldr	r2, [r4, #100]	
	orr	r3, r3, #8192	
	orr	r2, r2, #8192	
	strh	r3, [r4, #12]
	str	r2, [r4, #100]	
lab629: 	mov	r2, r4
	mov	r0, r5
push {r1, r2}
	ldr r1, =4140
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__fputwc
	push {r1, r2}
	ldr r1, =4140
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab630
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab631
lab630: 	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =5587
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab631: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =7939
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab628: 	ldr	r0, [r4, #88]	
	str	r1, [sp, #4]
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	ldr	r1, [sp, #4]
	uxth	r2, r3
	b	lab627
	nop
fputwc:
	ldr	r3, =0x200007f0	
	push	{r4, r5, r6, lr}
	ldr	r6, [r3, #0]
	mov	r5, r0
	mov	r4, r1
	cmp r6, #0
	beq lab632
	ldr	r3, [r6, #56]	
	cmp r3, #0
	beq lab633
lab632: 	ldr	r3, [r4, #100]	
	tst	r3, #1
	ldrsh	r3, [r4, #12]
	uxth	r2, r3
	bne	lab634
	lsls	r0, r3, #22
	bpl	lab635
lab634: 	lsls	r1, r2, #18
	bmi	lab636
	ldr	r2, [r4, #100]	
	orr	r3, r3, #8192	
	orr	r2, r2, #8192	
	strh	r3, [r4, #12]
	str	r2, [r4, #100]	
lab636: 	mov	r2, r4
	mov	r1, r5
	mov	r0, r6
push {r1, r2}
	ldr r1, =7003
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__fputwc
	push {r1, r2}
	ldr r1, =7003
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab637
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab638
lab637: 	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab633: 	mov	r0, r6
	bl	__sinit
	b	lab632
lab638: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab635: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	uxth	r2, r3
	b	lab634
	.ltorg
_malloc_trim_r:
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r7, =0x20000d8c	
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
	blt	lab639
	movs	r1, #0
	mov	r0, r6
push {r1, r2}
	ldr r1, =2257
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =2257
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r7, #8]
	add	r3, r5
	cmp	r0, r3
	beq	lab640
lab639: 	mov	r0, r6
	bl	__malloc_unlock
	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =2838
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab640: 	negs	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =7145
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =7145
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r0, #1
	beq	lab641
	ldr	r2, =0x20003200	
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
	ldr r1, =2905
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab641: 	movs	r1, #0
	mov	r0, r6
push {r1, r2}
	ldr r1, =5622
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =5622
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r2, [r7, #8]
	subs	r3, r0, r2
	cmp	r3, #15
	ble	lab639
	orr	r3, r3, #1
	str	r3, [r2, #4]
	ldr	r3, =0x20001194	
	ldr	r1, =0x20003200	
	ldr	r3, [r3, #0]
	subs	r0, r0, r3
	str	r0, [r1, #0]
	b	lab639
	nop
	.ltorg
_free_r:
	cmp	r1, #0
	beq	lab642
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r6, r0
	bl	__malloc_lock
	ldr	r2, [r4, #-4]
	ldr	r7, =0x20000d8c	
	sub	r5, r4, #8
	bic	r1, r2, #1
	add	ip, r5, r1
	ldr	r0, [r7, #8]
	ldr	r3, [ip, #4]
	cmp	r0, ip
	bic	r3, r3, #3
	beq	lab643
	lsls	r2, r2, #31
	str	r3, [ip, #4]
	bmi	lab644
	ldr	r2, [r4, #-8]
	subs	r5, r5, r2
	add	r1, r2
	ldr	r2, [r5, #8]
	add	r0, r7, #8
	cmp	r2, r0
	beq	lab645
	add	r4, ip, r3
	ldr	lr, [r4, #4]
	ldr	r4, [r5, #12]
	str	r4, [r2, #12]
	tst	lr, #1
	str	r2, [r4, #8]
	beq	lab646
	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [ip]
lab650: 	cmp	r1, #512	
	bcs	lab647
lab651: 	ldr	r2, [r7, #4]
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
lab658: 	mov	r0, r6
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	__malloc_unlock
lab644: 	add	r2, ip, r3
	ldr	r2, [r2, #4]
	lsls	r0, r2, #31
	bmi	lab648
	add	r1, r3
	add	r0, r7, #8
lab662: 	ldr	r3, [ip, #8]
	cmp	r3, r0
	beq	lab649
	ldr	r2, [ip, #12]
	str	r2, [r3, #12]
	str	r3, [r2, #8]
	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [r5, r1]
	b	lab650
lab642:	nop
	push {r1, r2}
	ldr r1, =1473
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	bx	lr
lab648: 	orr	r3, r1, #1
	cmp	r1, #512	
	str	r3, [r4, #-4]
	str	r1, [ip]
	bcc	lab651
lab647: 	cmp	r1, #2560	
	mov	r3, r1, lsr #9
	bcs	lab652
	lsrs	r3, r1, #6
	add	r0, r3, #57	
	add	r2, r3, #56	
	lsls	r3, r0, #3
lab661: 	adds	r0, r7, r3
	ldr	r3, [r7, r3]
	subs	r0, #8
	cmp	r0, r3
	beq	lab653
lab655: 	ldr	r2, [r3, #4]
	bic	r2, r2, #3
	cmp	r2, r1
	bls	lab654
	ldr	r3, [r3, #8]
	cmp	r0, r3
	bne	lab655
lab654: 	ldr	r0, [r3, #12]
lab663: 	strd	r3, r0, [r5, #8]
	str	r5, [r0, #8]
	str	r5, [r3, #12]
	mov	r0, r6
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	__malloc_unlock
lab645: 	add	r2, ip, r3
	ldr	r2, [r2, #4]
	lsls	r2, r2, #31
	bmi	lab656
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
lab643: 	add	r3, r1
	lsls	r1, r2, #31
	bmi	lab657
	ldr	r2, [r4, #-8]
	subs	r5, r5, r2
	add	r3, r2
	ldrd	r1, r2, [r5, #8]
	str	r2, [r1, #12]
	str	r1, [r2, #8]
lab657: 	orr	r2, r3, #1
	str	r2, [r5, #4]
	ldr	r2, =0x20001198	
	str	r5, [r7, #8]
	ldr	r2, [r2, #0]
	cmp	r2, r3
	bhi	lab658
	ldr	r3, =0x20003230	
	mov	r0, r6
	ldr	r1, [r3, #0]
	bl	_malloc_trim_r
	push {r1, r2}
	ldr r1, =2610
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab658
lab652: 	cmp	r3, #20
	bls	lab659
	cmp	r3, #84	
	bhi	lab660
	lsrs	r3, r1, #12
	add	r0, r3, #111	
	add	r2, r3, #110	
	lsls	r3, r0, #3
	b	lab661
lab646: 	add	r1, r3
	b	lab662
lab659: 	add	r0, r3, #92	
	add	r2, r3, #91	
	lsls	r3, r0, #3
	b	lab661
lab649: 	orr	r3, r1, #1
	strd	r5, r5, [r7, #16]
	strd	r0, r0, [r5, #8]
	str	r3, [r5, #4]
	str	r1, [r5, r1]
	b	lab658
lab653: 	ldr	r1, [r7, #4]
	asrs	r2, r2, #2
	movs	r4, #1
	lsl	r2, r4, r2
	orrs	r2, r1
	str	r2, [r7, #4]
	b	lab663
lab660: 	cmp	r3, #340	
	bhi	lab664
	lsrs	r3, r1, #15
	add	r0, r3, #120	
	add	r2, r3, #119	
	lsls	r3, r0, #3
	b	lab661
lab664: 	movw	r2, #1364	
	cmp	r3, r2
	bhi	lab665
	lsrs	r3, r1, #18
	add	r0, r3, #125	
	add	r2, r3, #124	
	lsls	r3, r0, #3
	b	lab661
lab665: 	mov	r3, #1016	
	movs	r2, #126	
	b	lab661
lab656: 	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [ip]
	b	lab658
	nop
	.ltorg
__sfvwrite_r:
	ldr	r3, [r2, #8]
	cmp	r3, #0
	beq	lab666
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrsh	r3, [r1, #12]
	mov	r4, r1
	lsls	r1, r3, #28
	mov	r8, r0
	sub	sp, #12
	mov	r7, r2
	uxth	r0, r3
	bpl	lab667
	ldr	r3, [r4, #16]
	cmp r3, #0
	beq lab667
	ands	r3, r0, #2
	ldr	r5, [r7, #0]
	beq	lab668
lab673: 	mov	sl, #0
	ldr	fp, =0x7ffffc00	
	mov	r6, sl
lab671: 	cmp	r6, fp
	mov	r3, r6
	mov	r2, sl
	it	cs
	movcs	r3, fp
	mov	r0, r8
	cmp	r6, #0
	beq	lab669
	ldr	r1, [r4, #28]
	ldr	ip, [r4, #36]	
	blx	ip
	cmp	r0, #0
	ble	lab670
	ldr	r3, [r7, #8]
	subs	r3, r3, r0
	add	sl, r0
	subs	r6, r6, r0
	str	r3, [r7, #8]
	cmp	r3, #0
	bne	lab671
lab679: 	movs	r0, #0
lab703: 	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =5009
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab667: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =2620
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =2620
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab672
	ldrsh	r3, [r4, #12]
	ldr	r5, [r7, #0]
	uxth	r0, r3
	ands	r3, r0, #2
	bne	lab673
lab668: 	ands	r9, r0, #1
	bne	lab674
	mov	r6, r9
lab681: 	cmp r6, #0
	beq lab675
lab680: 	lsls	r2, r0, #22
	ldr	fp, [r4, #8]
	bpl	lab676
	cmp	fp, r6
	mov	r2, fp
	bhi	lab677
	tst	r0, #1152	
	bne	lab678
	ldr	r0, [r4, #0]
lab696: 	str	r2, [sp, #4]
	mov	r1, r9
push {r1, r2}
	ldr r1, =941
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =941
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
lab694: 	ldr	r0, [r7, #8]
	sub	r0, r0, sl
	add	r9, sl
	str	r0, [r7, #8]
	cmp	r0, #0
	beq	lab679
	ldrsh	r0, [r4, #12]
	uxth	r0, r0
	cmp	r6, #0
	bne	lab680
lab675: 	ldrd	r9, r6, [r5]
	adds	r5, #8
	b	lab681
lab669: 	ldrd	sl, r6, [r5]
	adds	r5, #8
	b	lab671
lab688: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =2762
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =2762
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	beq lab682
lab670: 	ldrsh	r3, [r4, #12]
lab701: 	orr	r3, r3, #64	
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =851
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab666: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =6168
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
lab674: 	mov	r6, r3
	mov	sl, r5
	mov	r9, r3
	mov	r0, r3
	mov	r5, r3
	cmp r6, #0
	beq lab683
lab689: 	cmp r0, #0
	beq lab684
lab692: 	mov	r2, r9
lab702: 	ldrd	r1, r3, [r4, #16]
	ldr	r0, [r4, #0]
	cmp	r2, r6
	it	cs
	movcs	r2, r6
	cmp	r0, r1
	bls	lab685
	ldr	r1, [r4, #8]
	add	fp, r3, r1
	cmp	r2, fp
	bgt	lab686
lab685: 	cmp	r3, r2
	bgt	lab687
	ldr	r1, [r4, #28]
	ldr	ip, [r4, #36]	
	mov	r2, r5
	mov	r0, r8
	blx	ip
	subs	fp, r0, #0
	ble	lab670
lab697: 	subs	r9, r9, fp
	beq	lab688
	movs	r0, #1
lab682: 	ldr	r3, [r7, #8]
	sub	r3, r3, fp
	add	r5, fp
	sub	r6, r6, fp
	str	r3, [r7, #8]
	cmp	r3, #0
	beq	lab679
	cmp	r6, #0
	bne	lab689
lab683: 	add	r3, sl, #8
lab690: 	ldrd	r5, r6, [r3, #-8]
	mov	sl, r3
	adds	r3, #8
	cmp	r6, #0
	beq	lab690
lab684: 	mov	r2, r6
	movs	r1, #10
	mov	r0, r5
	bl	memchr
	cmp	r0, #0
	beq	lab691
	adds	r0, #1
	sub	r9, r0, r5
	b	lab692
lab676: 	ldr	r0, [r4, #0]
	ldr	r3, [r4, #16]
	cmp	r0, r3
	bhi	lab693
	ldr	r3, [r4, #20]
	cmp	r3, r6
	bhi	lab693
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
	ble	lab670
lab695: 	sub	r6, r6, sl
	b	lab694
lab693: 	cmp	fp, r6
	mov	sl, fp
	it	cs
	movcs	sl, r6
	mov	r2, sl
	mov	r1, r9
push {r1, r2}
	ldr r1, =634
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =634
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
	bne	lab695
	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =1438
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =1438
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab695
	b	lab670
lab677: 	ldr	r0, [r4, #0]
	mov	fp, r6
	mov	r2, r6
	b	lab696
lab687: 	mov	r1, r5
	str	r2, [sp, #4]
push {r1, r2}
	ldr r1, =5342
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =5342
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
	b	lab697
lab678: 	ldr	r3, [r4, #0]
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
	bpl	lab698
	mov	r1, r2
	mov	r0, r8
push {r1, r2}
	ldr r1, =899
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =899
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab699
	mov	r2, fp
	ldr	r1, [r4, #16]
	str	r0, [sp, #4]
	bl	memcpy
	ldrh	r2, [r4, #12]
	ldr	r3, [sp, #4]
	bic	r2, r2, #1152	
	orr	r2, r2, #128	
	strh	r2, [r4, #12]
lab700: 	add	r0, r3, fp
	str	r3, [r4, #16]
	sub	r3, sl, fp
	str	sl, [r4, #20]
	str	r3, [r4, #8]
	str	r0, [r4, #0]
	mov	fp, r6
	mov	r2, r6
	b	lab696
lab686: 	mov	r1, r5
	mov	r2, fp
push {r1, r2}
	ldr r1, =3110
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3110
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
	ldr r1, =6209
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =6209
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab697
	b	lab670
lab698: 	mov	r0, r8
push {r1, r2}
	ldr r1, =2098
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_realloc_r
	push {r1, r2}
	ldr r1, =2098
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r0
	cmp	r0, #0
	bne	lab700
	ldr	r1, [r4, #16]
	mov	r0, r8
push {r1, r2}
	ldr r1, =1477
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =1477
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	movs	r2, #12
	bic	r3, r3, #128	
	str	r2, [r8]
	b	lab701
lab691: 	adds	r2, r6, #1
	mov	r9, r2
	b	lab702
lab699: 	movs	r2, #12
	ldrsh	r3, [r4, #12]
	str	r2, [r8]
	b	lab701
lab672: 	mov	r0, #4294967295	
	b	lab703
	nop
	.ltorg
_fwalk:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r8, r1
	add	r7, r0, #736	
	movs	r6, #0
lab707: 	ldrd	r5, r4, [r7, #4]
	subs	r5, #1
	bmi	lab704
lab706: 	ldrh	r3, [r4, #12]
	cmp	r3, #1
	add	r5, r5, #4294967295	
	bls	lab705
	ldrsh	r3, [r4, #14]
	adds	r3, #1
	mov	r0, r4
	beq	lab705
	blx	r8
	orrs	r6, r0
lab705: 	adds	r3, r5, #1
	add	r4, r4, #104	
	bne	lab706
lab704: 	ldr	r7, [r7, #0]
	cmp	r7, #0
	bne	lab707
	mov	r0, r6
	nop
	push {r1, r2}
	ldr r1, =7770
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
lab711: 	ldrd	r5, r4, [r6, #4]
	subs	r5, #1
	bmi	lab708
lab710: 	ldrh	r3, [r4, #12]
	cmp	r3, #1
	add	r5, r5, #4294967295	
	bls	lab709
	ldrsh	r3, [r4, #14]
	adds	r3, #1
	mov	r1, r4
	beq	lab709
	mov	r0, r7
	blx	r8
	orr	r9, r9, r0
lab709: 	adds	r3, r5, #1
	add	r4, r4, #104	
	bne	lab710
lab708: 	ldr	r6, [r6, #0]
	cmp	r6, #0
	bne	lab711
	mov	r0, r9
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_setlocale_r:
	cmp r2, #0
	beq lab712
	push	{r4, lr}
	ldr	r1, =0x200006dc	
	mov	r0, r2
	mov	r4, r2
	bl	strcmp
	cmp r0, #0
	bne lab713
lab714: 	ldr	r0, =0x200006d8	
	pop	{r4, pc}
lab712: 	ldr	r0, =0x200006d8	
	bx	lr
lab713: 	ldr	r1, =0x200006d8	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab714
	ldr	r1, =0x20000650	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab714
	movs	r0, #0
	pop	{r4, pc}
	.ltorg
__locale_mb_cur_max:
	ldr	r3, =0x20000c20	
	ldrb	r0, [r3, #296]	
	bx	lr
	.ltorg
setlocale:
	cmp r1, #0
	beq lab715
	push	{r4, lr}
	mov	r4, r1
	mov	r0, r4
	ldr	r1, =0x200006dc	
	bl	strcmp
	cmp r0, #0
	bne lab716
lab717: 	ldr	r0, =0x200006d8	
	pop	{r4, pc}
lab715: 	ldr	r0, =0x200006d8	
	bx	lr
lab716: 	ldr	r1, =0x200006d8	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab717
	ldr	r1, =0x20000650	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab717
	movs	r0, #0
	pop	{r4, pc}
	.ltorg
__localeconv_l:
	adds	r0, #240	
	bx	lr
_localeconv_r:
	ldr	r0, =0x20000d10	
	bx	lr
	.ltorg
localeconv:
	ldr	r0, =0x20000d10	
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
	bpl	lab718
	add	r3, r4, #67	
	movs	r2, #1
	strd	r3, r2, [r4, #16]
	str	r3, [r4, #0]
lab725: 	add	sp, #88	
	nop
	push {r1, r2}
	ldr r1, =839
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab718: 	ldrsh	r1, [r4, #14]
	cmp	r1, #0
	mov	r6, r0
	blt	lab719
	mov	r2, sp
push {r1, r2}
	ldr r1, =3909
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fstat_r
	push {r1, r2}
	ldr r1, =3909
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab720
	ldr	r5, [sp, #4]
	and	r5, r5, #61440	
	sub	r5, r5, #8192	
	clz	r5, r5
	mov	r8, #1024	
	lsrs	r5, r5, #5
	mov	r7, #2048	
lab726: 	mov	r1, r8
	mov	r0, r6
push {r1, r2}
	ldr r1, =2185
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =2185
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	cmp r0, #0
	beq lab721
lab724: 	ldr	r2, =0x800558d	
	str	r2, [r6, #60]	
	orr	r3, r3, #128	
	str	r8, [r4, #20]
	strh	r3, [r4, #12]
	str	r0, [r4, #0]
	str	r0, [r4, #16]
	cmp r5, #0
	bne lab722
lab728: 	orrs	r3, r7
	strh	r3, [r4, #12]
	add	sp, #88	
	nop
	push {r1, r2}
	ldr r1, =6918
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab720: 	ldrh	r3, [r4, #12]
lab719: 	ands	r5, r3, #128	
	beq	lab723
	mov	r8, #64	
	mov	r1, r8
	mov	r0, r6
push {r1, r2}
	ldr r1, =4594
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =4594
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r5, #0
	ldrsh	r3, [r4, #12]
	mov	r7, r5
	cmp	r0, #0
	bne	lab724
lab721: 	lsls	r2, r3, #22
	bmi	lab725
	bic	r3, r3, #3
	add	r2, r4, #67	
	orr	r3, r3, #2
	movs	r1, #1
	strd	r2, r1, [r4, #16]
	strh	r3, [r4, #12]
	str	r2, [r4, #0]
	b	lab725
lab723: 	mov	r8, #1024	
	mov	r7, r5
	b	lab726
lab722: 	ldrsh	r1, [r4, #14]
	mov	r0, r6
	bl	_isatty_r
	push {r1, r2}
	ldr r1, =5976
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab727
	ldrsh	r3, [r4, #12]
	b	lab728
lab727: 	ldrh	r3, [r4, #12]
	bic	r3, r3, #3
	orr	r3, r3, #1
	sxth	r3, r3
	b	lab728
	.ltorg
__swhatbuf_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldrsh	r1, [r1, #14]
	cmp	r1, #0
	sub	sp, #88	
	mov	r5, r2
	mov	r6, r3
	blt	lab729
	mov	r2, sp
push {r1, r2}
	ldr r1, =5171
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fstat_r
	push {r1, r2}
	ldr r1, =5171
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab729
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
lab729: 	ldrsh	r1, [r4, #12]
	movs	r3, #0
	ands	r0, r1, #128	
	str	r3, [r6, #0]
	beq	lab730
	movs	r2, #64	
	mov	r0, r3
	str	r2, [r5, #0]
	add	sp, #88	
	pop	{r4, r5, r6, pc}
lab730: 	mov	r3, #1024	
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
	bhi	lab731
	cmp	r1, #16
	bhi	lab732
	bl	__malloc_lock
	movs	r6, #16
	movs	r2, #24
	movs	r0, #2
lab780: 	ldr	r7, =0x20000d8c	
	add	r2, r7
	sub	r1, r2, #8
	ldr	r3, [r2, #4]
	cmp	r3, r1
	beq	lab733
lab754: 	ldr	r2, [r3, #4]
	ldr	r1, [r3, #12]
	bic	r2, r2, #3
	add	r2, r3
lab769: 	ldr	r5, [r3, #8]
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
	ldr r1, =1687
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab731: 	bics	r6, r6, #7
	bmi	lab732
	cmp	r1, r6
	bhi	lab732
	bl	__malloc_lock
	cmp	r6, #504	
	bcc	lab734
	lsrs	r3, r6, #9
	beq	lab735
	cmp	r3, #4
	bhi	lab736
	lsrs	r3, r6, #6
	add	r0, r3, #57	
	add	ip, r3, #56	
	lsls	r3, r0, #3
lab753: 	ldr	r7, =0x20000d8c	
	add	r3, r7
	sub	r5, r3, #8
	ldr	r3, [r3, #4]
	cmp	r5, r3
	bne	lab737
	b	lab738
lab740: 	cmp	r1, #0
	bge	lab739
	ldr	r3, [r3, #12]
	cmp	r5, r3
	beq	lab738
lab737: 	ldr	r2, [r3, #4]
	bic	r2, r2, #3
	subs	r1, r2, r6
	cmp	r1, #15
	ble	lab740
	mov	r0, ip
lab738: 	ldr	r5, [r7, #16]
	ldr	ip, =0x20000d94	
	cmp	r5, ip
	beq	lab741
lab755: 	ldr	r2, [r5, #4]
	bic	r2, r2, #3
	subs	r3, r2, r6
	cmp	r3, #15
	bgt	lab742
	cmp	r3, #0
	strd	ip, ip, [r7, #16]
	bge	lab743
	cmp	r2, #512	
	bcs	lab744
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
lab775: 	asrs	r3, r0, #2
	movs	r1, #1
	lsls	r1, r3
	cmp	r1, r2
	bhi	lab745
lab756: 	tst	r1, r2
	bne	lab746
	bic	r0, r0, #3
lab747: 	lsls	r1, r1, #1
	tst	r1, r2
	add	r0, r0, #4
	beq	lab747
lab746: 	add	r9, r7, r0, lsl #3
	mov	r5, r9
	mov	lr, r0
lab778: 	ldr	r8, [r5, #12]
	cmp	r5, r8
	bne	lab748
	b	lab749
lab751: 	cmp	r3, #0
	bge	lab750
	ldr	r8, [r8, #12]
	cmp	r5, r8
	beq	lab749
lab748: 	ldr	r2, [r8, #4]
	bic	r2, r2, #3
	subs	r3, r2, r6
	cmp	r3, #15
	ble	lab751
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
	b	lab752
lab732: 	movs	r3, #12
	str	r3, [r4, #0]
	movs	r5, #0
lab752: 	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =1490
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab735: 	mov	r3, #512	
	movs	r0, #64	
	mov	ip, #63	
	b	lab753
lab733: 	ldr	r3, [r2, #12]
	cmp	r2, r3
	it	eq
	addeq	r0, #2
	bne	lab754
	ldr	r5, [r7, #16]
	ldr	ip, =0x20000d94	
	cmp	r5, ip
	bne	lab755
lab741: 	ldr	r2, [r7, #4]
	asrs	r3, r0, #2
	movs	r1, #1
	lsls	r1, r3
	cmp	r1, r2
	bls	lab756
lab745: 	ldr	r5, [r7, #8]
	ldr	r3, [r5, #4]
	bic	r9, r3, #3
	cmp	r6, r9
	bhi	lab757
	sub	r3, r9, r6
	cmp	r3, #15
	bgt	lab758
lab757: 	ldr	fp, =0x20001194	
	ldr	r3, =0x20003230	
	ldr	r2, [fp]
	ldr	r3, [r3, #0]
	adds	r2, #1
	add	r3, r6
	add	sl, r5, r9
	beq	lab759
	add	r3, r3, #4096	
	adds	r3, #15
	bic	r8, r3, #4080	
	bic	r8, r8, #15
lab788: 	mov	r1, r8
	mov	r0, r4
push {r1, r2}
	ldr r1, =6610
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =6610
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r1, r0, #1
	mov	r2, r0
	beq	lab760
	cmp	sl, r0
	bhi	lab761
	ldr	r3, =0x20003200	
	ldr	r1, [r3, #0]
	add	r1, r8
	str	r1, [r3, #0]
	mov	r0, r1
	beq	lab762
lab794: 	ldr	r1, [fp]
	str	r3, [sp, #4]
	adds	r1, #1
	ittet	ne
	subne	sl, r2, sl
	addne	r0, sl
	streq	r2, [fp]
	strne	r0, [r3, #0]
	ands	fp, r2, #7
	beq	lab763
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
	ldr r1, =4762
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =4762
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r2, r0, #1
	ldrd	r2, r3, [sp]
	beq	lab764
lab790: 	subs	r0, r0, r2
	add	r8, r0, sl
lab791: 	ldr	r1, [r3, #0]
	str	r2, [r7, #8]
	orr	r0, r8, #1
	add	r1, sl
	cmp	r5, r7
	str	r0, [r2, #4]
	str	r1, [r3, #0]
	beq	lab765
	cmp	r9, #15
	bls	lab766
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
	bhi	lab767
	ldr	r0, [r2, #4]
	mov	r5, r2
lab795: 	ldr	r3, =0x20003228	
	ldr	r2, [r3, #0]
	cmp	r2, r1
	it	cc
	strcc	r1, [r3, #0]
	ldr	r3, =0x2000322c	
	ldr	r2, [r3, #0]
	cmp	r2, r1
	it	cc
	strcc	r1, [r3, #0]
	b	lab768
lab758: 	adds	r2, r5, r6
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
	ldr r1, =7297
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab739: 	ldr	r1, [r3, #12]
	add	r2, r3
	b	lab769
	nop
	.ltorg
lab744: 	cmp	r2, #2560	
	mov	r3, r2, lsr #9
	bcc	lab770
	cmp	r3, #20
	bhi	lab771
	add	r1, r3, #92	
	lsls	r1, r1, #3
	adds	r3, #91	
lab781: 	add	lr, r7, r1
	ldr	r1, [r7, r1]
	sub	lr, lr, #8
	cmp	lr, r1
	beq	lab772
lab774: 	ldr	r3, [r1, #4]
	bic	r3, r3, #3
	cmp	r3, r2
	bls	lab773
	ldr	r1, [r1, #8]
	cmp	lr, r1
	bne	lab774
lab773: 	ldr	lr, [r1, #12]
	ldr	r2, [r7, #4]
lab789: 	strd	r1, lr, [r5, #8]
	str	r5, [lr, #8]
	str	r5, [r1, #12]
	b	lab775
lab736: 	cmp	r3, #20
	bls	lab776
	cmp	r3, #84	
	bhi	lab777
	lsrs	r3, r6, #12
	add	r0, r3, #111	
	add	ip, r3, #110	
	lsls	r3, r0, #3
	b	lab753
lab749: 	add	lr, lr, #1
	tst	lr, #3
	add	r5, r5, #8
	bne	lab778
	b	lab779
lab750: 	add	r2, r8
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
	b	lab752
lab734: 	lsrs	r0, r6, #3
	add	r2, r6, #8
	b	lab780
lab743: 	add	r2, r5
	mov	r0, r4
	ldr	r3, [r2, #4]
	orr	r3, r3, #1
	str	r3, [r2, #4]
	adds	r5, #8
	bl	__malloc_unlock
	b	lab752
lab742: 	adds	r1, r5, r6
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
	b	lab752
lab770: 	lsrs	r3, r2, #6
	add	r1, r3, #57	
	lsls	r1, r1, #3
	adds	r3, #56	
	b	lab781
lab761: 	cmp	r5, r7
	beq	lab782
lab760: 	ldr	r5, [r7, #8]
	ldr	r0, [r5, #4]
lab768: 	bic	r8, r0, #3
	cmp	r6, r8
	sub	r3, r8, r6
	bhi	lab783
	cmp	r3, #15
	bgt	lab758
lab783: 	mov	r0, r4
	bl	__malloc_unlock
	movs	r5, #0
	b	lab752
lab776: 	add	r0, r3, #92	
	add	ip, r3, #91	
	lsls	r3, r0, #3
	b	lab753
lab785: 	ldr	r3, [r9], #-8
	cmp	r3, r9
	bne	lab784
lab779: 	tst	r0, #3
	add	r0, r0, #4294967295	
	bne	lab785
	ldr	r3, [r7, #4]
	bic	r3, r3, r1
	str	r3, [r7, #4]
lab799: 	lsls	r1, r1, #1
	cmp	r1, r3
	bhi	lab745
	cmp r1, #0
	bne lab786
	b	lab745
lab787: 	lsls	r1, r1, #1
	add	lr, lr, #4
lab786: 	tst	r1, r3
	beq	lab787
	mov	r0, lr
	b	lab746
lab759: 	add	r8, r3, #16
	b	lab788
lab772: 	asrs	r2, r3, #2
	mov	r8, #1
	ldr	r3, [r7, #4]
	lsl	r2, r8, r2
	orrs	r2, r3
	str	r2, [r7, #4]
	b	lab789
lab763: 	add	r1, r2, r8
	negs	r1, r1
	ubfx	sl, r1, #0, #12
	mov	r1, sl
	mov	r0, r4
	str	r2, [sp, #0]
push {r1, r2}
	ldr r1, =6293
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =6293
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	ldrd	r2, r3, [sp]
	bne	lab790
	mov	sl, fp
	b	lab791
lab771: 	cmp	r3, #84	
	bhi	lab792
	lsrs	r3, r2, #12
	add	r1, r3, #111	
	lsls	r1, r1, #3
	adds	r3, #110	
	b	lab781
lab777: 	cmp	r3, #340	
	bhi	lab793
	lsrs	r3, r6, #15
	add	r0, r3, #120	
	add	ip, r3, #119	
	lsls	r3, r0, #3
	b	lab753
lab782: 	ldr	r3, =0x20003200	
	ldr	r0, [r3, #0]
	add	r0, r8
	str	r0, [r3, #0]
	b	lab794
lab762: 	ubfx	ip, sl, #0, #12
	cmp	ip, #0
	bne	lab794
	ldr	r5, [r7, #8]
	add	r8, r9
	orr	r0, r8, #1
	str	r0, [r5, #4]
	b	lab795
lab765: 	mov	r5, r2
	b	lab795
lab766: 	movs	r3, #1
	str	r3, [r2, #4]
	b	lab783
lab792: 	cmp	r3, #340	
	bhi	lab796
	lsrs	r3, r2, #15
	add	r1, r3, #120	
	lsls	r1, r1, #3
	adds	r3, #119	
	b	lab781
lab793: 	movw	r2, #1364	
	cmp	r3, r2
	bhi	lab797
	lsrs	r3, r6, #18
	add	r0, r3, #125	
	add	ip, r3, #124	
	lsls	r3, r0, #3
	b	lab753
lab764: 	sub	fp, fp, #8
	add	r8, fp
	sub	r8, r8, r2
	mov	sl, #0
	b	lab791
lab767: 	add	r1, r5, #8
	mov	r0, r4
	str	r3, [sp, #0]
push {r1, r2}
	ldr r1, =7594
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =7594
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r5, [r7, #8]
	ldr	r3, [sp, #0]
	ldr	r0, [r5, #4]
	ldr	r1, [r3, #0]
	b	lab795
lab796: 	movw	r1, #1364	
	cmp	r3, r1
	bhi	lab798
	lsrs	r3, r2, #18
	add	r1, r3, #125	
	lsls	r1, r1, #3
	adds	r3, #124	
	b	lab781
lab797: 	mov	r3, #1016	
	movs	r0, #127	
	mov	ip, #126	
	b	lab753
lab798: 	mov	r1, #1016	
	movs	r3, #126	
	b	lab781
lab784: 	ldr	r3, [r7, #4]
	b	lab799
	.ltorg
_mbtowc_r:
	push	{r4}
	ldr	r4, =0x20000c20	
	ldr	r4, [r4, #228]	
	mov	ip, r4
	pop	{r4}
	bx	ip
	nop
	.ltorg
__ascii_mbtowc:
	sub	sp, #8
	cmp r1, #0
	beq lab800
	cmp r2, #0
	beq lab801
lab803: 	cmp r3, #0
	beq lab802
	ldrb	r3, [r2, #0]
	str	r3, [r1, #0]
	ldrb	r2, [r2, #0]
	subs	r0, r2, #0
	it	ne
	movne	r0, #1
lab804: 	add	sp, #8
	bx	lr
lab800: 	add	r1, sp, #4
	cmp	r2, #0
	bne	lab803
lab801: 	mov	r0, r2
	add	sp, #8
	bx	lr
lab802: 	mvn	r0, #1
	b	lab804
	nop
__malloc_lock:
	ldr	r0, =0x200031f0	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__malloc_unlock:
	ldr	r0, =0x200031f0	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
_realloc_r:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r7, r2
	cmp	r1, #0
	beq	lab805
	add	r5, r7, #11
	mov	r8, r0
	mov	r4, r1
	bl	__malloc_lock
	cmp	r5, #22
	bhi	lab806
	movs	r5, #16
	mov	r2, r5
lab819: 	cmp	r7, r5
	bhi	lab807
	ldr	r1, [r4, #-4]
	bic	r6, r1, #3
	cmp	r6, r2
	sub	r9, r4, #8
	bge	lab808
	ldr	r3, =0x20000d8c	
	ldr	ip, [r3, #8]
	add	r0, r9, r6
	cmp	ip, r0
	beq	lab809
	ldr	ip, [r0, #4]
	bic	r3, ip, #1
	add	r3, r0
	ldr	r3, [r3, #4]
	lsls	r3, r3, #31
	bmi	lab810
	bic	ip, ip, #3
	add	r3, r6, ip
	cmp	r3, r2
	bge	lab811
	lsls	r3, r1, #31
	bmi	lab812
	ldr	r3, [r4, #-8]
	sub	sl, r9, r3
	ldr	r3, [sl, #4]
	bic	r1, r3, #3
	add	ip, r1
	add	ip, r6
	cmp	ip, r2
	bge	lab813
lab821: 	adds	r3, r6, r1
	cmp	r3, r2
	bge	lab814
lab812: 	mov	r1, r7
	mov	r0, r8
push {r1, r2}
	ldr r1, =1155
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1155
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r7, r0
	cmp r0, #0
	beq lab815
	ldr	r3, [r4, #-4]
	bic	r3, r3, #1
	add	r3, r9
	sub	r2, r0, #8
	cmp	r3, r2
	beq	lab816
	subs	r2, r6, #4
	cmp	r2, #36	
	bhi	lab817
	cmp	r2, #19
	bhi	lab818
	mov	r3, r0
	mov	r2, r4
lab829: 	ldr	r1, [r2, #0]
	str	r1, [r3, #0]
	ldr	r1, [r2, #4]
	str	r1, [r3, #4]
	ldr	r2, [r2, #8]
	str	r2, [r3, #8]
lab833: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =3394
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab815:	push {r1, r2}
	ldr r1, =3394
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r8
	bl	__malloc_unlock
	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =6868
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab806: 	bic	r5, r5, #7
	cmp	r5, #0
	mov	r2, r5
	bge	lab819
lab807: 	movs	r3, #12
	str	r3, [r8]
	movs	r7, #0
lab827: 	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =236
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab811: 	mov	r6, r3
	ldrd	r2, r3, [r0, #8]
	str	r3, [r2, #12]
	str	r2, [r3, #8]
lab808: 	subs	r3, r6, r5
	cmp	r3, #15
	bhi	lab820
	ldr	r3, [r9, #4]
	and	r3, r3, #1
	orrs	r3, r6
	add	r6, r9
	str	r3, [r9, #4]
	ldr	r3, [r6, #4]
	orr	r3, r3, #1
	str	r3, [r6, #4]
lab822: 	mov	r0, r8
	mov	r7, r4
	bl	__malloc_unlock
	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =1799
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab810: 	lsls	r1, r1, #31
	bmi	lab812
	ldr	r3, [r4, #-8]
	sub	sl, r9, r3
	ldr	r1, [sl, #4]
	bic	r1, r1, #3
	b	lab821
lab805: 	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r1, r2
	b	_malloc_r
lab820: 	ldr	r1, [r9, #4]
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
	ldr r1, =5024
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =5024
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab822
lab809: 	ldr	r0, [ip, #4]
	bic	fp, r0, #3
	add	ip, r6, fp
	add	r0, r5, #16
	cmp	ip, r0
	bge	lab823
	lsls	r1, r1, #31
	bmi	lab812
	ldr	r1, [r4, #-8]
	sub	sl, r9, r1
	ldr	r1, [sl, #4]
	bic	r1, r1, #3
	add	fp, r1
	add	fp, r6
	cmp	r0, fp
	bgt	lab821
	mov	r7, sl
	ldr	r1, [sl, #12]
	ldr	r0, [r7, #8]!
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r0, #12]
	str	r0, [r1, #8]
	bhi	lab824
	cmp	r2, #19
	bls	lab825
	ldr	r1, [r4, #0]
	str	r1, [sl, #8]
	ldr	r1, [r4, #4]
	str	r1, [sl, #12]
	cmp	r2, #27
	bhi	lab826
	adds	r4, #8
	add	r2, sl, #16
lab842: 	ldr	r1, [r4, #0]
	str	r1, [r2, #0]
	ldr	r1, [r4, #4]
	str	r1, [r2, #4]
	ldr	r1, [r4, #8]
	str	r1, [r2, #8]
lab843: 	add	r1, sl, r5
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
	b	lab827
lab818: 	ldr	r3, [r4, #0]
	str	r3, [r0, #0]
	ldr	r3, [r4, #4]
	str	r3, [r0, #4]
	cmp	r2, #27
	bhi	lab828
	add	r2, r4, #8
	add	r3, r0, #8
	b	lab829
lab823: 	add	r2, r9, r5
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
	b	lab827
lab816: 	ldr	r3, [r0, #-4]
	bic	r3, r3, #3
	add	r6, r3
	b	lab808
lab814: 	mov	r7, sl
	ldr	r1, [sl, #12]
	ldr	r0, [r7, #8]!
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r0, #12]
	str	r0, [r1, #8]
	bhi	lab830
	cmp	r2, #19
	bls	lab831
	ldr	r1, [r4, #0]
	str	r1, [sl, #8]
	ldr	r1, [r4, #4]
	str	r1, [sl, #12]
	cmp	r2, #27
	bhi	lab832
	adds	r4, #8
	add	r2, sl, #16
lab838: 	mov	r6, r3
	ldr	r3, [r4, #0]
	str	r3, [r2, #0]
	ldr	r3, [r4, #4]
	str	r3, [r2, #4]
	ldr	r3, [r4, #8]
	str	r3, [r2, #8]
	mov	r9, sl
	mov	r4, r7
	b	lab808
lab817: 	mov	r1, r4
push {r1, r2}
	ldr r1, =4838
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =4838
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab833
lab813: 	ldrd	r1, r3, [r0, #8]
	mov	r7, sl
	str	r3, [r1, #12]
	str	r1, [r3, #8]
	ldr	r1, [r7, #8]!
	ldr	r3, [sl, #12]
	str	r3, [r1, #12]
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r3, #8]
	bhi	lab834
	cmp	r2, #19
	bls	lab835
	ldr	r3, [r4, #0]
	str	r3, [sl, #8]
	ldr	r3, [r4, #4]
	str	r3, [sl, #12]
	cmp	r2, #27
	bhi	lab836
	adds	r4, #8
	add	r3, sl, #16
lab839: 	ldr	r2, [r4, #0]
	str	r2, [r3, #0]
	ldr	r2, [r4, #4]
	str	r2, [r3, #4]
	ldr	r2, [r4, #8]
	str	r2, [r3, #8]
	mov	r6, ip
	mov	r9, sl
	mov	r4, r7
	b	lab808
lab828: 	ldr	r3, [r4, #8]
	str	r3, [r0, #8]
	ldr	r3, [r4, #12]
	str	r3, [r0, #12]
	cmp	r2, #36	
	beq	lab837
	add	r2, r4, #16
	add	r3, r0, #16
	b	lab829
lab831: 	mov	r2, r7
	b	lab838
lab830: 	mov	r1, r4
	mov	r0, r7
	mov	r6, r3
	mov	r9, sl
push {r1, r2}
	ldr r1, =5664
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =5664
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r7
	b	lab808
lab835: 	mov	r3, r7
	b	lab839
lab834: 	mov	r1, r4
	mov	r0, r7
	mov	r6, ip
	mov	r9, sl
push {r1, r2}
	ldr r1, =6110
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =6110
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r7
	b	lab808
	.ltorg
lab832: 	ldr	r1, [r4, #8]
	str	r1, [sl, #16]
	ldr	r1, [r4, #12]
	str	r1, [sl, #20]
	cmp	r2, #36	
	beq	lab840
	adds	r4, #16
	add	r2, sl, #24
	b	lab838
lab837: 	ldr	r3, [r4, #16]
	str	r3, [r0, #16]
	ldr	r1, [r4, #20]
	str	r1, [r0, #20]
	add	r2, r4, #24
	add	r3, r0, #24
	b	lab829
lab836: 	ldr	r3, [r4, #8]
	str	r3, [sl, #16]
	ldr	r3, [r4, #12]
	str	r3, [sl, #20]
	cmp	r2, #36	
	beq	lab841
	adds	r4, #16
	add	r3, sl, #24
	b	lab839
lab825: 	mov	r2, r7
	b	lab842
lab824: 	mov	r1, r4
	mov	r0, r7
push {r1, r2}
	ldr r1, =6312
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =6312
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x20000d8c	
	b	lab843
lab840: 	ldr	r2, [r4, #16]
	str	r2, [sl, #24]
	ldr	r2, [r4, #20]
	str	r2, [sl, #28]
	adds	r4, #24
	add	r2, sl, #32
	b	lab838
lab826: 	ldr	r1, [r4, #8]
	str	r1, [sl, #16]
	ldr	r1, [r4, #12]
	str	r1, [sl, #20]
	cmp	r2, #36	
	beq	lab844
	adds	r4, #16
	add	r2, sl, #24
	b	lab842
lab841: 	ldr	r3, [r4, #16]
	str	r3, [sl, #24]
	ldr	r3, [r4, #20]
	str	r3, [sl, #28]
	adds	r4, #24
	add	r3, sl, #32
	b	lab839
lab844: 	ldr	r2, [r4, #16]
	str	r2, [sl, #24]
	ldr	r2, [r4, #20]
	str	r2, [sl, #28]
	adds	r4, #24
	add	r2, sl, #32
	b	lab842
	nop
	.ltorg
_sbrk_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x20003234	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_sbrk
	adds	r3, r0, #1
	beq	lab845
lab846:	nop
	push {r1, r2}
	ldr r1, =2250
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab845: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab846
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =1993
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_init_signal_r:
	push	{r3, r4, r5, lr}
	ldr	r4, [r0, #732]	
	cmp r4, #0
	beq lab847
lab850: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab847: 	movs	r1, #128	
	mov	r5, r0
push {r1, r2}
	ldr r1, =2827
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =2827
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab848
	subs	r3, r0, #4
	adds	r2, #124	
lab849: 	str	r4, [r3, #4]!
	cmp	r3, r2
	bne	lab849
	b	lab850
lab848: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
_signal_r:
	cmp	r1, #31
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	bhi	lab851
	ldr	r6, [r0, #732]	
	mov	r4, r1
	mov	r7, r2
	cmp r6, #0
	beq lab852
lab855: 	ldr	r0, [r6, r4, lsl #2]
	str	r7, [r6, r4, lsl #2]
	pop	{r3, r4, r5, r6, r7, pc}
lab851: 	movs	r3, #22
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	pop	{r3, r4, r5, r6, r7, pc}
lab852: 	movs	r1, #128	
push {r1, r2}
	ldr r1, =925
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =925
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r6, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab853
	subs	r3, r0, #4
	add	r5, r0, #124	
	movs	r1, #0
lab854: 	str	r1, [r3, #4]!
	cmp	r5, r3
	bne	lab854
	b	lab855
lab853: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, r6, r7, pc}
_raise_r:
	cmp	r1, #31
	push	{r3, r4, r5, lr}
	mov	r5, r0
	bhi	lab856
	ldr	r2, [r0, #732]	
	mov	r4, r1
	cmp r2, #0
	beq lab857
	ldr	r3, [r2, r1, lsl #2]
	cmp r3, #0
	beq lab857
	cmp	r3, #1
	beq	lab858
	adds	r1, r3, #1
	beq	lab859
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, r4, lsl #2]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab857: 	mov	r0, r5
	bl	_getpid_r
	mov	r2, r4
	mov	r1, r0
	mov	r0, r5
	ldmia	sp!, {r3, r4, r5, lr}
	b	_kill_r
lab859: 	movs	r3, #22
	str	r3, [r0, #0]
	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab858: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab856: 	movs	r3, #22
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	nop
__sigtramp_r:
	cmp	r1, #31
	bhi	lab860
	ldr	r2, [r0, #732]	
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	cmp r2, #0
	beq lab861
lab867: 	ldr	r3, [r2, r4, lsl #2]
	add	r2, r2, r4, lsl #2
	cmp r3, #0
	beq lab862
	adds	r1, r3, #1
	beq	lab863
	cmp	r3, #1
	beq	lab864
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, #0]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab862: 	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab861: 	movs	r1, #128	
push {r1, r2}
	ldr r1, =2281
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =2281
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab865
	subs	r3, r0, #4
	movs	r1, #0
	adds	r0, #124	
lab866: 	str	r1, [r3, #4]!
	cmp	r0, r3
	bne	lab866
	b	lab867
lab864: 	movs	r0, #3
	pop	{r3, r4, r5, pc}
lab863: 	movs	r0, #2
	pop	{r3, r4, r5, pc}
lab865: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
lab860: 	mov	r0, #4294967295	
	bx	lr
raise:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x200007f0	
	cmp	r0, #31
	ldr	r5, [r3, #0]
	bhi	lab868
	ldr	r2, [r5, #732]	
	mov	r4, r0
	cmp r2, #0
	beq lab869
	ldr	r3, [r2, r0, lsl #2]
	cmp r3, #0
	beq lab869
	cmp	r3, #1
	beq	lab870
	adds	r1, r3, #1
	beq	lab871
	movs	r5, #0
	str	r5, [r2, r0, lsl #2]
	blx	r3
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =2924
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab869: 	mov	r0, r5
	bl	_getpid_r
	mov	r2, r4
	mov	r1, r0
	mov	r0, r5
	ldmia	sp!, {r3, r4, r5, lr}
	b	_kill_r
lab871: 	movs	r3, #22
	str	r3, [r5, #0]
	movs	r0, #1
	nop
	push {r1, r2}
	ldr r1, =6598
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab870: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =3807
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab868: 	movs	r3, #22
	str	r3, [r5, #0]
	mov	r0, #4294967295	
	nop
	push {r1, r2}
	ldr r1, =6818
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	nop
	.ltorg
signal:
	ldr	r3, =0x200007f0	
	cmp	r0, #31
	push	{r4, r5, r6, lr}
	ldr	r6, [r3, #0]
	bhi	lab872
	mov	r5, r1
	ldr	r1, [r6, #732]	
	mov	r4, r0
	cmp r1, #0
	beq lab873
lab876: 	ldr	r0, [r1, r4, lsl #2]
	str	r5, [r1, r4, lsl #2]
	pop	{r4, r5, r6, pc}
lab872: 	movs	r3, #22
	str	r3, [r6, #0]
	mov	r0, #4294967295	
	pop	{r4, r5, r6, pc}
lab873: 	movs	r1, #128	
	mov	r0, r6
push {r1, r2}
	ldr r1, =1635
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1635
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r1, r0
	str	r0, [r6, #732]	
	cmp r0, #0
	beq lab874
	subs	r3, r0, #4
	add	ip, r0, #124	
	movs	r2, #0
lab875: 	str	r2, [r3, #4]!
	cmp	r3, ip
	bne	lab875
	b	lab876
lab874: 	mov	r0, #4294967295	
	pop	{r4, r5, r6, pc}
	.ltorg
_init_signal:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x200007f0	
	ldr	r5, [r3, #0]
	ldr	r4, [r5, #732]	
	cmp r4, #0
	beq lab877
lab880: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab877: 	movs	r1, #128	
	mov	r0, r5
push {r1, r2}
	ldr r1, =1640
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1640
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab878
	subs	r3, r0, #4
	add	r2, r0, #124	
lab879: 	str	r4, [r3, #4]!
	cmp	r3, r2
	bne	lab879
	b	lab880
lab878: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	.ltorg
__sigtramp:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x200007f0	
	cmp	r0, #31
	ldr	r5, [r3, #0]
	bhi	lab881
	ldr	r2, [r5, #732]	
	mov	r4, r0
	cmp r2, #0
	beq lab882
lab887: 	ldr	r3, [r2, r4, lsl #2]
	add	r2, r2, r4, lsl #2
	cmp r3, #0
	beq lab883
	adds	r1, r3, #1
	beq	lab884
	cmp	r3, #1
	beq	lab885
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, #0]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab883: 	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab882: 	movs	r1, #128	
	mov	r0, r5
push {r1, r2}
	ldr r1, =7956
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =7956
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab881
	subs	r3, r0, #4
	movs	r1, #0
	adds	r0, #124	
lab886: 	str	r1, [r3, #4]!
	cmp	r3, r0
	bne	lab886
	b	lab887
lab885: 	movs	r0, #3
	pop	{r3, r4, r5, pc}
lab884: 	movs	r0, #2
	pop	{r3, r4, r5, pc}
lab881: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	nop
	.ltorg
_kill_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldr	r5, =0x20003234	
	mov	r3, r0
	movs	r6, #0
	mov	r0, r4
	mov	r1, r2
	mov	r4, r3
	str	r6, [r5, #0]
	bl	_kill
	adds	r3, r0, #1
	beq	lab888
lab889:	nop
	push {r1, r2}
	ldr r1, =2024
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab888: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab889
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =335
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
	ldr r1, =1823
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab890
	ldr	r3, [r4, #80]	
	add	r3, r0
	str	r3, [r4, #80]	
	pop	{r4, pc}
lab890: 	ldrh	r3, [r4, #12]
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
	bmi	lab891
lab892: 	bic	r1, r1, #4096	
	strh	r1, [r4, #12]
	mov	r3, r7
	ldrsh	r1, [r4, #14]
	mov	r2, r6
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	b	_write_r
lab891: 	ldrsh	r1, [r4, #14]
	movs	r3, #2
	movs	r2, #0
push {r1, r2}
	ldr r1, =2822
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_lseek_r
	push {r1, r2}
	ldr r1, =2822
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r1, [r4, #12]
	b	lab892
	nop
__sseek:
	push	{r4, lr}
	mov	r4, r1
	ldrsh	r1, [r1, #14]
push {r1, r2}
	ldr r1, =1665
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_lseek_r
	push {r1, r2}
	ldr r1, =1665
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
	bne	lab893
	cmp	r2, #3
	bhi	lab894
lab893: 	mov	ip, r0
lab898: 	add	lr, r1, #4294967295	
	b	lab895
lab897: 	ldrb	r1, [lr, #1]!
	strb	r1, [r3], #1
	subs	r4, r2, #1
	cmp r1, #0
	beq lab896
	mov	ip, r3
	mov	r2, r4
lab895: 	mov	r3, ip
	cmp	r2, #0
	bne	lab897
lab900:	nop
	push {r1, r2}
	ldr r1, =6469
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, pc}
lab894: 	mov	r3, r1
	mov	ip, r0
lab899: 	mov	r1, r3
	ldr	r5, [r3], #4
	sub	r4, r5, #16843009	
	bic	r4, r4, r5
	tst	r4, #2155905152	
	bne	lab898
	subs	r2, #4
	cmp	r2, #3
	str	r5, [ip], #4
	mov	r1, r3
	bhi	lab899
	b	lab898
lab896: 	add	r2, ip
	cmp	r4, #0
	beq	lab900
lab901: 	strb	r1, [r3], #1
	cmp	r3, r2
	bne	lab901
	nop
	push {r1, r2}
	ldr r1, =28
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
	beq lab902
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab903
lab902: 	ldrsh	r2, [r4, #12]
	ldr	r3, [r4, #24]
	str	r3, [r4, #8]
	lsls	r7, r2, #28
	uxth	r0, r2
	bpl	lab904
	ldr	r3, [r4, #16]
	cmp r3, #0
	beq lab904
	uxtb	r5, r5
	lsls	r1, r0, #18
	mov	r7, r5
	bpl	lab905
lab910: 	ldr	r2, [r4, #0]
	ldr	r1, [r4, #20]
	subs	r3, r2, r3
	cmp	r1, r3
	ble	lab906
lab911: 	adds	r3, #1
lab912: 	ldr	r1, [r4, #8]
	subs	r1, #1
	str	r1, [r4, #8]
	adds	r1, r2, #1
	str	r1, [r4, #0]
	strb	r5, [r2, #0]
	ldr	r2, [r4, #20]
	cmp	r2, r3
	beq	lab907
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #31
	bpl	lab908
	cmp	r5, #10
	beq	lab907
lab908: 	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =5039
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab904: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =6883
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =6883
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab909
	ldrsh	r2, [r4, #12]
	ldr	r3, [r4, #16]
	uxth	r0, r2
	uxtb	r5, r5
	lsls	r1, r0, #18
	mov	r7, r5
	bmi	lab910
lab905: 	orr	r2, r2, #8192	
	strh	r2, [r4, #12]
	ldr	r2, [r4, #100]	
	ldr	r1, [r4, #20]
	bic	r2, r2, #8192	
	str	r2, [r4, #100]	
	ldr	r2, [r4, #0]
	subs	r3, r2, r3
	cmp	r1, r3
	bgt	lab911
lab906: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =3030
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =3030
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab909
	ldr	r2, [r4, #0]
	movs	r3, #1
	b	lab912
lab903: 	bl	__sinit
	b	lab902
lab907: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =210
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =210
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab908
lab909: 	mov	r7, #4294967295	
	b	lab908
__swbuf:
	push	{r4}
	ldr	r4, =0x200007f0	
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
	beq lab913
	ldr	r6, =0x20000c20	
	ldr	r6, [r6, #224]	
	nop
	push {r1, r2}
	ldr r1, =7616
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	beq	lab914
lab915: 	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =1792
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab913: 	mov	r2, r1
	ldr	r1, =0x20000c20	
	ldr	r6, [r1, #224]	
	add	r1, sp, #4
	nop
	push {r1, r2}
	ldr r1, =7362
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	bne	lab915
lab914: 	movs	r2, #0
	movs	r3, #138	
	str	r2, [r4, #0]
	str	r3, [r5, #0]
	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =6027
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
wcrtomb:
	push	{r4, r5, r6, lr}
	ldr	r3, =0x200007f0	
	sub	sp, #16
	ldr	r5, [r3, #0]
	mov	r4, r2
	mov	r3, r1
	mov	r1, r0
	cmp r0, #0
	beq lab916
	ldr	r0, =0x20000c20	
	mov	r2, r3
	ldr	r6, [r0, #224]	
	mov	r3, r4
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =7779
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	beq	lab917
lab918: 	add	sp, #16
	pop	{r4, r5, r6, pc}
lab916: 	ldr	r2, =0x20000c20	
	mov	r3, r4
	ldr	r6, [r2, #224]	
	add	r1, sp, #4
	mov	r2, r0
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =7577
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	bne	lab918
lab917: 	movs	r2, #0
	movs	r3, #138	
	str	r2, [r4, #0]
	str	r3, [r5, #0]
	add	sp, #16
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
_wctomb_r:
	push	{r4}
	ldr	r4, =0x20000c20	
	ldr	r4, [r4, #224]	
	mov	ip, r4
	pop	{r4}
	bx	ip
	nop
	.ltorg
__ascii_wctomb:	push {r1, r2}
	ldr r1, =2035
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r1, #0
	beq lab919
	cmp	r2, #255	
	bhi	lab920
	strb	r2, [r1, #0]
	movs	r0, #1
	bx	lr
lab920: 	movs	r3, #138	
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	bx	lr
lab919: 	mov	r0, r1
	bx	lr
	nop
_write_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x20003234	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_write
	adds	r3, r0, #1
	beq	lab921
lab922: 	pop	{r3, r4, r5, pc}
lab921: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab922
	str	r3, [r4, #0]
	pop	{r3, r4, r5, pc}
	.ltorg
_close_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x20003234	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_close
	adds	r3, r0, #1
	beq	lab923
lab924: 	pop	{r3, r4, r5, pc}
lab923: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab924
	str	r3, [r4, #0]
	pop	{r3, r4, r5, pc}
	.ltorg
_fclose_r:
	push	{r4, r5, r6, lr}
	cmp	r1, #0
	beq	lab925
	mov	r6, r0
	mov	r4, r1
	cmp r0, #0
	beq lab926
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab927
lab926: 	ldr	r3, [r4, #100]	
	lsls	r0, r3, #31
	bpl	lab928
lab937: 	ldrsh	r3, [r4, #12]
	cmp	r3, #0
	beq	lab925
lab935: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =8006
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =8006
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #44]	
	mov	r5, r0
	cmp r3, #0
	beq lab929
	ldr	r1, [r4, #28]
	mov	r0, r6
	blx	r3
	cmp	r0, #0
	it	lt
	movlt	r5, #4294967295	
lab929: 	ldrh	r3, [r4, #12]
	lsls	r2, r3, #24
	bmi	lab930
lab938: 	ldr	r1, [r4, #48]	
	cmp r1, #0
	beq lab931
	add	r3, r4, #64	
	cmp	r1, r3
	beq	lab932
	mov	r0, r6
push {r1, r2}
	ldr r1, =6008
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab932:	push {r1, r2}
	ldr r1, =6008
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	movs	r3, #0
	str	r3, [r4, #48]	
lab931: 	ldr	r1, [r4, #68]	
	cmp r1, #0
	beq lab933
	mov	r0, r6
push {r1, r2}
	ldr r1, =7910
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =7910
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	str	r3, [r4, #68]	
lab933: 	bl	__sfp_lock_acquire
	ldr	r3, [r4, #100]	
	movs	r2, #0
	lsls	r3, r3, #31
	strh	r2, [r4, #12]
	bpl	lab934
lab939: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_close_recursive
	bl	__sfp_lock_release
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab928: 	ldrh	r3, [r4, #12]
	lsls	r1, r3, #22
	bmi	lab935
	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	cmp	r3, #0
	bne	lab935
	ldr	r5, [r4, #100]	
	ands	r5, r5, #1
	beq	lab936
lab925: 	movs	r5, #0
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab927: 	bl	__sinit
	ldr	r3, [r4, #100]	
	lsls	r0, r3, #31
	bmi	lab937
	b	lab928
lab936: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab930: 	ldr	r1, [r4, #16]
	mov	r0, r6
push {r1, r2}
	ldr r1, =6093
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =6093
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab938
lab934: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	b	lab939
fclose:
	ldr	r3, =0x200007f0	
	mov	r1, r0
	ldr	r0, [r3, #0]
	b	_fclose_r
	nop
	.ltorg
_fstat_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldr	r5, =0x20003234	
	mov	r3, r0
	movs	r6, #0
	mov	r0, r4
	mov	r1, r2
	mov	r4, r3
	str	r6, [r5, #0]
	bl	_fstat
	adds	r3, r0, #1
	beq	lab940
lab941:	nop
	push {r1, r2}
	ldr r1, =1748
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab940: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab941
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =1561
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
_isatty_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x20003234	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_isatty
	adds	r3, r0, #1
	beq	lab942
lab943:	nop
	push {r1, r2}
	ldr r1, =5175
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab942: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab943
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =2328
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_lseek_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x20003234	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_lseek
	adds	r3, r0, #1
	beq	lab944
lab945:	nop
	push {r1, r2}
	ldr r1, =5465
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab944: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab945
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =2970
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_read_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x20003234	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_read
	adds	r3, r0, #1
	beq	lab946
lab947:	nop
	push {r1, r2}
	ldr r1, =2547
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab946: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab947
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =3344
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
	beq lab948
	ldr	r7, [r6, #0]
	cmp r7, #0
	beq lab949
	ldr	r8, [r7]
	cmp	r8, #0
	beq	lab950
	ldr	r1, [r8]
	cmp r1, #0
	beq lab951
push {r1, r2}
	ldr r1, =5847
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	cleanup_glue
lab951:	push {r1, r2}
	ldr r1, =5847
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r8
	mov	r0, r5
push {r1, r2}
	ldr r1, =3433
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab950:	push {r1, r2}
	ldr r1, =3433
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r7
	mov	r0, r5
push {r1, r2}
	ldr r1, =6839
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab949:	push {r1, r2}
	ldr r1, =6839
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r6
	mov	r0, r5
push {r1, r2}
	ldr r1, =6625
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab948:	push {r1, r2}
	ldr r1, =6625
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r4
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	b	_free_r
_reclaim_reent:
	ldr	r3, =0x200007f0	
	ldr	r3, [r3, #0]
	cmp	r3, r0
	beq	lab952
	ldr	r1, [r0, #76]	
	push	{r4, r5, r6, lr}
	mov	r5, r0
	cmp r1, #0
	beq lab953
	movs	r6, #0
lab956: 	ldr	r4, [r1, r6]
	cmp r4, #0
	beq lab954
lab955: 	mov	r1, r4
	ldr	r4, [r4, #0]
	mov	r0, r5
push {r1, r2}
	ldr r1, =1359
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =1359
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r4, #0
	bne	lab955
	ldr	r1, [r5, #76]	
lab954: 	adds	r6, #4
	cmp	r6, #128	
	bne	lab956
	mov	r0, r5
push {r1, r2}
	ldr r1, =1743
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab953:	push {r1, r2}
	ldr r1, =1743
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r1, [r5, #64]	
	cmp r1, #0
	beq lab957
	mov	r0, r5
push {r1, r2}
	ldr r1, =835
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab957:	push {r1, r2}
	ldr r1, =835
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r4, [r5, #328]	
	cmp r4, #0
	beq lab958
	add	r6, r5, #332	
	cmp	r4, r6
	beq	lab958
lab959: 	mov	r1, r4
	ldr	r4, [r4, #0]
	mov	r0, r5
push {r1, r2}
	ldr r1, =1057
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =1057
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r6, r4
	bne	lab959
lab958: 	ldr	r1, [r5, #84]	
	cmp r1, #0
	beq lab960
	mov	r0, r5
push {r1, r2}
	ldr r1, =2060
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab960:	push {r1, r2}
	ldr r1, =2060
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r3, [r5, #56]	
	cmp r3, #0
	beq lab961
	ldr	r3, [r5, #60]	
	mov	r0, r5
	blx	r3
	ldr	r4, [r5, #736]	
	cmp r4, #0
	beq lab961
	ldr	r1, [r4, #0]
	cmp r1, #0
	beq lab962
	mov	r0, r5
push {r1, r2}
	ldr r1, =4852
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	cleanup_glue
lab962:	push {r1, r2}
	ldr r1, =4852
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r4
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, lr}
	b	_free_r
lab961: 	pop	{r4, r5, r6, pc}
lab952: 	bx	lr
	.ltorg
_close:
	ldr	r3, =0x20003234	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_fstat:
	ldr	r3, =0x20003234	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_getpid:
	ldr	r3, =0x20003234	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_isatty:
	ldr	r3, =0x20003234	
	movs	r2, #88	
	str	r2, [r3, #0]
	movs	r0, #0
	bx	lr
	nop
	.ltorg
_kill:
	ldr	r3, =0x20003234	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_lseek:
	ldr	r3, =0x20003234	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_read:
	ldr	r3, =0x20003234	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_sbrk:
	ldr	r2, =0x20003238	
	ldr	r1, =0x20003240	
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
	ldr	r3, =0x20003234	
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
	.word	0x70747468
	.word	0x772f2f3a
	.word	0x6d2e7777
	.word	0x65656761
	.word	0x6f632e63
	.word	0x0000006d
	.word	0x803f65fe
	.word	0x80a06e82
	.word	0x802e41ba
	.word	0x802e26ba
	.word	0x80ae09ba
	.word	0x00001482
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
adelta:
	.word	0x130f0b00
	.word	0x101f1b17
	.word	0x18161412
	.word	0x16141c1a
	.word	0x1c1a1818
	.word	0x1818161c
	.word	0x1c1c1a1a
	.word	0x1a1a1818
	.word	0x181c1c1a
	.word	0x1c1a1a1a
	.word	0x0000001c
vpat:
	.word	0x00000c94
	.word	0x000005bc
	.word	0x00000a99
	.word	0x000004d3
	.word	0x00000bf6
	.word	0x00000762
	.word	0x00000847
	.word	0x0000060d
	.word	0x00000928
	.word	0x00000b78
	.word	0x0000045d
	.word	0x00000a17
	.word	0x00000532
	.word	0x000009a6
	.word	0x00000683
	.word	0x000008c9
	.word	0x000007ec
	.word	0x00000ec4
	.word	0x000001e1
	.word	0x00000fab
	.word	0x0000008e
	.word	0x00000c1a
	.word	0x0000033f
	.word	0x00000d75
	.word	0x00000250
	.word	0x000009d5
	.word	0x000006f0
	.word	0x000008ba
	.word	0x0000079f
	.word	0x00000b0b
	.word	0x0000042e
	.word	0x00000a64
	.word	0x00000541
	.word	0x00000c69
eccblocks:
	.word	0x07130001
	.word	0x0a100001
	.word	0x0d0d0001
	.word	0x11090001
	.word	0x0a220001
	.word	0x101c0001
	.word	0x16160001
	.word	0x1c100001
	.word	0x0f370001
	.word	0x1a2c0001
	.word	0x12110002
	.word	0x160d0002
	.word	0x14500001
	.word	0x12200002
	.word	0x1a180002
	.word	0x10090004
	.word	0x1a6c0001
	.word	0x182b0002
	.word	0x120f0202
	.word	0x160b0202
	.word	0x12440002
	.word	0x101b0004
	.word	0x18130004
	.word	0x1c0f0004
	.word	0x144e0002
	.word	0x121f0004
	.word	0x120e0402
	.word	0x1a0d0104
	.word	0x18610002
	.word	0x16260202
	.word	0x16120204
	.word	0x1a0e0204
	.word	0x1e740002
	.word	0x16240203
	.word	0x14100404
	.word	0x180c0404
	.word	0x12440202
	.word	0x1a2b0104
	.word	0x18130206
	.word	0x1c0f0206
	.word	0x14510004
	.word	0x1e320401
	.word	0x1c160404
	.word	0x180c0803
	.word	0x185c0202
	.word	0x16240206
	.word	0x1a140604
	.word	0x1c0e0407
	.word	0x1a6b0004
	.word	0x16250108
	.word	0x18140408
	.word	0x160b040c
	.word	0x1e730103
	.word	0x18280504
	.word	0x1410050b
	.word	0x180c050b
	.word	0x16570105
	.word	0x18290505
	.word	0x1e180705
	.word	0x180c070b
	.word	0x18620105
	.word	0x1c2d0307
	.word	0x1813020f
	.word	0x1e0f0d03
	.word	0x1c6b0501
	.word	0x1c2e010a
	.word	0x1c160f01
	.word	0x1c0e1102
	.word	0x1e780105
	.word	0x1a2b0409
	.word	0x1c160111
	.word	0x1c0e1302
	.word	0x1c710403
	.word	0x1a2c0b03
	.word	0x1a150411
	.word	0x1a0d1009
	.word	0x1c6b0503
	.word	0x1a290d03
	.word	0x1e18050f
	.word	0x1c0f0a0f
	.word	0x1c740404
	.word	0x1a2a0011
	.word	0x1c160611
	.word	0x1e100613
	.word	0x1c6f0702
	.word	0x1c2e0011
	.word	0x1e181007
	.word	0x180d0022
	.word	0x1e790504
	.word	0x1c2f0e04
	.word	0x1e180e0b
	.word	0x1e0f0e10
	.word	0x1e750406
	.word	0x1c2d0e06
	.word	0x1e18100b
	.word	0x1e10021e
	.word	0x1a6a0408
	.word	0x1c2f0d08
	.word	0x1e181607
	.word	0x1e0f0d16
	.word	0x1c72020a
	.word	0x1c2e0413
	.word	0x1c16061c
	.word	0x1e100421
	.word	0x1e7a0408
	.word	0x1c2d0316
	.word	0x1e171a08
	.word	0x1e0f1c0c
	.word	0x1e750a03
	.word	0x1c2d1703
	.word	0x1e181f04
	.word	0x1e0f1f0b
	.word	0x1e740707
	.word	0x1c2d0715
	.word	0x1e172501
	.word	0x1e0f1a13
	.word	0x1e730a05
	.word	0x1c2f0a13
	.word	0x1e18190f
	.word	0x1e0f1917
	.word	0x1e73030d
	.word	0x1c2e1d02
	.word	0x1e18012a
	.word	0x1e0f1c17
	.word	0x1e730011
	.word	0x1c2e170a
	.word	0x1e18230a
	.word	0x1e0f2313
	.word	0x1e730111
	.word	0x1c2e150e
	.word	0x1e18131d
	.word	0x1e0f2e0b
	.word	0x1e73060d
	.word	0x1c2e170e
	.word	0x1e18072c
	.word	0x1e10013b
	.word	0x1e79070c
	.word	0x1c2f1a0c
	.word	0x1e180e27
	.word	0x1e0f2916
	.word	0x1e790e06
	.word	0x1c2f2206
	.word	0x1e180a2e
	.word	0x1e0f4002
	.word	0x1e7a0411
	.word	0x1c2e0e1d
	.word	0x1e180a31
	.word	0x1e0f2e18
	.word	0x1e7a1204
	.word	0x1c2e200d
	.word	0x1e180e30
	.word	0x1e0f202a
	.word	0x1e750414
	.word	0x1c2f0728
	.word	0x1e18162b
	.word	0x1e0f430a
	.word	0x1e760613
	.word	0x1c2f1f12
	.word	0x1e182222
	.word	0x1e0f3d14
g0log:
	.word	0x190100ff
	.word	0xc61a3202
	.word	0xee33df03
	.word	0x4bc7681b
	.word	0x0ee06404
	.word	0x81ef8d34
	.word	0xf869c11c
	.word	0x714c08c8
	.word	0x2f658a05
	.word	0x210f24e1
	.word	0xda8e9335
	.word	0x458212f0
	.word	0x7dc2b51d
	.word	0xb9f9276a
	.word	0x78099ac9
	.word	0xa672e44d
	.word	0x628bbf06
	.word	0xfd30dd66
	.word	0xb32598e2
	.word	0x88229110
	.word	0xce94d036
	.word	0xbddb968f
	.word	0x5c13d2f1
	.word	0x40463883
	.word	0xa3b6421e
	.word	0x6e7e48c3
	.word	0x54283a6b
	.word	0x3dba85fa
	.word	0x9f9b5eca
	.word	0x2b79150a
	.word	0xace5d44e
	.word	0x57a7f373
	.word	0xf7c07007
	.word	0x0d63808c
	.word	0xedde4a67
	.word	0x18fec531
	.word	0x7799a5e3
	.word	0x7cb4b826
	.word	0xd9924411
	.word	0x2e892023
	.word	0x5bd13f37
	.word	0xcdcfbc95
	.word	0xb2978790
	.word	0x61befcdc
	.word	0xabd356f2
	.word	0x9e5d2a14
	.word	0x53393c84
	.word	0xa2416d47
	.word	0xd8432d1f
	.word	0x76a47bb7
	.word	0xec4917c4
	.word	0xf66f0c7f
	.word	0x523ba16c
	.word	0xaa559d29
	.word	0xb18660fb
	.word	0x5a3eccbb
	.word	0xb05f59cb
	.word	0x51a0a99c
	.word	0xeb16f50b
	.word	0xd72c757a
	.word	0xe9d5ae4f
	.word	0xe8ade7e6
	.word	0xeaf4d674
	.word	0xaf5850a8
g0exp:
	.word	0x08040201
	.word	0x80402010
	.word	0xe8743a1d
	.word	0x261387cd
	.word	0x5a2d984c
	.word	0xc9ea75b4
	.word	0x0c06038f
	.word	0xc0603018
	.word	0x9c4e279d
	.word	0x35944a25
	.word	0x77b5d46a
	.word	0x239fc1ee
	.word	0x0a058c46
	.word	0xa0502814
	.word	0xd269ba5d
	.word	0xa1de6fb9
	.word	0xc261be5f
	.word	0xbc5e2f99
	.word	0x0f89ca65
	.word	0xf0783c1e
	.word	0xbbd3e7fd
	.word	0x7fb1d66b
	.word	0xa3dfe1fe
	.word	0xe271b65b
	.word	0x8643afd9
	.word	0x88442211
	.word	0x68341a0d
	.word	0xce67bdd0
	.word	0x7c3e1f81
	.word	0x93c7edf8
	.word	0xc5ec763b
	.word	0xcc663397
	.word	0x5c2e1785
	.word	0xa9da6db8
	.word	0x42219e4f
	.word	0x542a1584
	.word	0x299a4da8
	.word	0xaa55a452
	.word	0x72399249
	.word	0x73b7d5e4
	.word	0x63bfd1e6
	.word	0x7e3f91c6
	.word	0xb3d7e5fc
	.word	0xfff1f67b
	.word	0x4babdbe3
	.word	0xc4623196
	.word	0xdc6e3795
	.word	0x41ae57a5
	.word	0x64321982
	.word	0x0e078dc8
	.word	0xe070381c
	.word	0xa653a7dd
	.word	0xb259a251
	.word	0xeff9f279
	.word	0x562b9bc3
	.word	0x098a45ac
	.word	0x90482412
	.word	0xf5f47a3d
	.word	0xebfbf3f7
	.word	0x160b8bcb
	.word	0x7db0582c
	.word	0x83cfe9fa
	.word	0xd86c361b
	.word	0x008e47ad
fmtword:
	.word	0x000077c4
	.word	0x000072f3
	.word	0x00007daa
	.word	0x0000789d
	.word	0x0000662f
	.word	0x00006318
	.word	0x00006c41
	.word	0x00006976
	.word	0x00005412
	.word	0x00005125
	.word	0x00005e7c
	.word	0x00005b4b
	.word	0x000045f9
	.word	0x000040ce
	.word	0x00004f97
	.word	0x00004aa0
	.word	0x0000355f
	.word	0x00003068
	.word	0x00003f31
	.word	0x00003a06
	.word	0x000024b4
	.word	0x00002183
	.word	0x00002eda
	.word	0x00002bed
	.word	0x00001689
	.word	0x000013be
	.word	0x00001ce7
	.word	0x000019d0
	.word	0x00000762
	.word	0x00000255
	.word	0x00000d0c
	.word	0x0000083b
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
	.word	0x200007f8
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
	.word	0x200007f8


	 .section .data.impure_data

impure_data:
	.word	0x00000000
	.word	0x20000ae4
	.word	0x20000b4c
	.word	0x20000bb4
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
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
	.word	0x080070d1
	.word	0x0800677d
	.word	0x00000000
	.word	0x200006e8
	.word	0x200006e4
	.word	0x20000650
	.word	0x20000650
	.word	0x20000650
	.word	0x20000650
	.word	0x20000650
	.word	0x20000650
	.word	0x20000650
	.word	0x20000650
	.word	0x20000650
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
	.word	0x20000d8c
	.word	0x20000d8c
	.word	0x20000d94
	.word	0x20000d94
	.word	0x20000d9c
	.word	0x20000d9c
	.word	0x20000da4
	.word	0x20000da4
	.word	0x20000dac
	.word	0x20000dac
	.word	0x20000db4
	.word	0x20000db4
	.word	0x20000dbc
	.word	0x20000dbc
	.word	0x20000dc4
	.word	0x20000dc4
	.word	0x20000dcc
	.word	0x20000dcc
	.word	0x20000dd4
	.word	0x20000dd4
	.word	0x20000ddc
	.word	0x20000ddc
	.word	0x20000de4
	.word	0x20000de4
	.word	0x20000dec
	.word	0x20000dec
	.word	0x20000df4
	.word	0x20000df4
	.word	0x20000dfc
	.word	0x20000dfc
	.word	0x20000e04
	.word	0x20000e04
	.word	0x20000e0c
	.word	0x20000e0c
	.word	0x20000e14
	.word	0x20000e14
	.word	0x20000e1c
	.word	0x20000e1c
	.word	0x20000e24
	.word	0x20000e24
	.word	0x20000e2c
	.word	0x20000e2c
	.word	0x20000e34
	.word	0x20000e34
	.word	0x20000e3c
	.word	0x20000e3c
	.word	0x20000e44
	.word	0x20000e44
	.word	0x20000e4c
	.word	0x20000e4c
	.word	0x20000e54
	.word	0x20000e54
	.word	0x20000e5c
	.word	0x20000e5c
	.word	0x20000e64
	.word	0x20000e64
	.word	0x20000e6c
	.word	0x20000e6c
	.word	0x20000e74
	.word	0x20000e74
	.word	0x20000e7c
	.word	0x20000e7c
	.word	0x20000e84
	.word	0x20000e84
	.word	0x20000e8c
	.word	0x20000e8c
	.word	0x20000e94
	.word	0x20000e94
	.word	0x20000e9c
	.word	0x20000e9c
	.word	0x20000ea4
	.word	0x20000ea4
	.word	0x20000eac
	.word	0x20000eac
	.word	0x20000eb4
	.word	0x20000eb4
	.word	0x20000ebc
	.word	0x20000ebc
	.word	0x20000ec4
	.word	0x20000ec4
	.word	0x20000ecc
	.word	0x20000ecc
	.word	0x20000ed4
	.word	0x20000ed4
	.word	0x20000edc
	.word	0x20000edc
	.word	0x20000ee4
	.word	0x20000ee4
	.word	0x20000eec
	.word	0x20000eec
	.word	0x20000ef4
	.word	0x20000ef4
	.word	0x20000efc
	.word	0x20000efc
	.word	0x20000f04
	.word	0x20000f04
	.word	0x20000f0c
	.word	0x20000f0c
	.word	0x20000f14
	.word	0x20000f14
	.word	0x20000f1c
	.word	0x20000f1c
	.word	0x20000f24
	.word	0x20000f24
	.word	0x20000f2c
	.word	0x20000f2c
	.word	0x20000f34
	.word	0x20000f34
	.word	0x20000f3c
	.word	0x20000f3c
	.word	0x20000f44
	.word	0x20000f44
	.word	0x20000f4c
	.word	0x20000f4c
	.word	0x20000f54
	.word	0x20000f54
	.word	0x20000f5c
	.word	0x20000f5c
	.word	0x20000f64
	.word	0x20000f64
	.word	0x20000f6c
	.word	0x20000f6c
	.word	0x20000f74
	.word	0x20000f74
	.word	0x20000f7c
	.word	0x20000f7c
	.word	0x20000f84
	.word	0x20000f84
	.word	0x20000f8c
	.word	0x20000f8c
	.word	0x20000f94
	.word	0x20000f94
	.word	0x20000f9c
	.word	0x20000f9c
	.word	0x20000fa4
	.word	0x20000fa4
	.word	0x20000fac
	.word	0x20000fac
	.word	0x20000fb4
	.word	0x20000fb4
	.word	0x20000fbc
	.word	0x20000fbc
	.word	0x20000fc4
	.word	0x20000fc4
	.word	0x20000fcc
	.word	0x20000fcc
	.word	0x20000fd4
	.word	0x20000fd4
	.word	0x20000fdc
	.word	0x20000fdc
	.word	0x20000fe4
	.word	0x20000fe4
	.word	0x20000fec
	.word	0x20000fec
	.word	0x20000ff4
	.word	0x20000ff4
	.word	0x20000ffc
	.word	0x20000ffc
	.word	0x20001004
	.word	0x20001004
	.word	0x2000100c
	.word	0x2000100c
	.word	0x20001014
	.word	0x20001014
	.word	0x2000101c
	.word	0x2000101c
	.word	0x20001024
	.word	0x20001024
	.word	0x2000102c
	.word	0x2000102c
	.word	0x20001034
	.word	0x20001034
	.word	0x2000103c
	.word	0x2000103c
	.word	0x20001044
	.word	0x20001044
	.word	0x2000104c
	.word	0x2000104c
	.word	0x20001054
	.word	0x20001054
	.word	0x2000105c
	.word	0x2000105c
	.word	0x20001064
	.word	0x20001064
	.word	0x2000106c
	.word	0x2000106c
	.word	0x20001074
	.word	0x20001074
	.word	0x2000107c
	.word	0x2000107c
	.word	0x20001084
	.word	0x20001084
	.word	0x2000108c
	.word	0x2000108c
	.word	0x20001094
	.word	0x20001094
	.word	0x2000109c
	.word	0x2000109c
	.word	0x200010a4
	.word	0x200010a4
	.word	0x200010ac
	.word	0x200010ac
	.word	0x200010b4
	.word	0x200010b4
	.word	0x200010bc
	.word	0x200010bc
	.word	0x200010c4
	.word	0x200010c4
	.word	0x200010cc
	.word	0x200010cc
	.word	0x200010d4
	.word	0x200010d4
	.word	0x200010dc
	.word	0x200010dc
	.word	0x200010e4
	.word	0x200010e4
	.word	0x200010ec
	.word	0x200010ec
	.word	0x200010f4
	.word	0x200010f4
	.word	0x200010fc
	.word	0x200010fc
	.word	0x20001104
	.word	0x20001104
	.word	0x2000110c
	.word	0x2000110c
	.word	0x20001114
	.word	0x20001114
	.word	0x2000111c
	.word	0x2000111c
	.word	0x20001124
	.word	0x20001124
	.word	0x2000112c
	.word	0x2000112c
	.word	0x20001134
	.word	0x20001134
	.word	0x2000113c
	.word	0x2000113c
	.word	0x20001144
	.word	0x20001144
	.word	0x2000114c
	.word	0x2000114c
	.word	0x20001154
	.word	0x20001154
	.word	0x2000115c
	.word	0x2000115c
	.word	0x20001164
	.word	0x20001164
	.word	0x2000116c
	.word	0x2000116c
	.word	0x20001174
	.word	0x20001174
	.word	0x2000117c
	.word	0x2000117c
	.word	0x20001184
	.word	0x20001184


	 .section .data.__malloc_sbrk_base

__malloc_sbrk_base:
	.word	0xffffffff


	 .section .data.__malloc_trim_threshold

__malloc_trim_threshold:
	.word	0x00020000


	 .section .bss

encode:
	.word	0x00000000
size:
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
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
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
WDB:
	.word	0x00000000
WD:
	.word	0x00000000
framebase:
	.word	0x00000000
framask:
	.word	0x00000000
rlens:
	.word	0x00000000
VERSION:
	.word	0x00000000
qrframe:
	.word	0x00000000
ECCLEVEL:
	.word	0x00000000
neccblk1:
	.word	0x00000000
neccblk2:
	.word	0x00000000
datablkw:
	.word	0x00000000
eccblkwid:
	.word	0x00000000
strinbuf:
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

__StackTop_0x18dc0:
	.word	0x67ffcc4c
	.word	0x00000001
