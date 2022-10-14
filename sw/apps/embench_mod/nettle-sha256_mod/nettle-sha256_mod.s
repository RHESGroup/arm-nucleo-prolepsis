	.cpu cortex-m4
	.text
	.thumb
	.syntax unified
	.global main
	.type main, %function

    .global SystemInit
	.type SystemInit, %function

sha256_init:
	movw	ip, #8
	movt	ip, #8192	
	push	{r4, r5, lr}
	mov	lr, r0
	ldmia	ip!, {r0, r1, r2, r3}
	str	r0, [lr]
	str	r1, [lr, #4]
	str	r2, [lr, #8]
	str	r3, [lr, #12]
	ldmia	ip!, {r0, r1, r2, r3}
	movs	r4, #0
	str	r0, [lr, #16]
	movs	r5, #0
	movs	r0, #0
	str	r1, [lr, #20]
	str	r2, [lr, #24]
	str	r3, [lr, #28]
	strd	r4, r5, [lr, #32]
	str	r0, [lr, #104]	
	pop	{r4, r5, pc}
_nettle_write_be32:
	push	{r4, r5, r6, r7, lr}
	movs	lr, r0, lsr #2
	and	r6, r0, #3
	beq	lab0
	adds	r3, r1, #4
	subs	r0, r2, #4
	mov	r7, lr, lsl #2
	add	r5, r3, lr, lsl #2
lab1: 	ldr	r4, [r0, #4]!
	adds	r3, #4
	mov	ip, r4, lsr #24
	strb	ip, [r3, #-8]
	ldrh	r4, [r0, #2]
	strb	r4, [r3, #-7]
	ldr	r4, [r0, #0]
	mov	ip, r4, lsr #8
	strb	ip, [r3, #-6]
	ldr	r4, [r0, #0]
	strb	r4, [r3, #-5]
	cmp	r3, r5
	bne	lab1
	add	r1, r7
lab0: 	cmp r6, #0
	beq lab2
	cmp	r6, #2
	ldr	r3, [r2, lr, lsl #2]
	beq	lab3
	cmp	r6, #3
	beq	lab4
	lsrs	r3, r3, #24
	strb	r3, [r1, #0]
lab2:	nop
	push {r1, r2}
	ldr r1, =1414
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, r7, pc}
lab4: 	lsrs	r2, r3, #8
	strb	r2, [r1, #2]
lab3: 	lsrs	r2, r3, #16
	lsrs	r3, r3, #24
	strb	r2, [r1, #1]
	strb	r3, [r1, #0]
	b	lab2
_nettle_sha256_compress:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, [r1, #0]
	ldr	r4, [r1, #4]
	ldr	ip, [r1, #24]
	ldr	lr, [r1, #28]
	sub	sp, #172	
	rev	r3, r3
	rev	r4, r4
	strd	r3, r4, [sp, #104]	
	str	r4, [sp, #16]
	ldr	r4, [r1, #8]
	str	r2, [sp, #32]
	mov	r5, r2
	ldr	r2, [r1, #12]
	str	r3, [sp, #36]	
	rev	r3, r4
	str	r3, [sp, #24]
	str	r3, [sp, #112]	
	rev	r3, r2
	str	r3, [sp, #0]
	str	r3, [sp, #116]	
	ldr	r3, [r1, #16]
	ldr	r4, [r1, #36]	
	str	r0, [sp, #100]	
	rev	r3, r3
	str	r3, [sp, #48]	
	str	r3, [sp, #120]	
	ldr	r3, [r1, #20]
	rev	r3, r3
	str	r3, [sp, #28]
	str	r3, [sp, #124]	
	rev	r3, ip
	str	r3, [sp, #4]
	str	r3, [sp, #128]	
	rev	r3, lr
	str	r3, [sp, #52]	
	str	r3, [sp, #132]	
	ldr	r3, [r1, #32]
	rev	r3, r3
	str	r3, [sp, #8]
	str	r3, [sp, #136]	
	rev	r3, r4
	str	r3, [sp, #12]
	str	r3, [sp, #140]	
	ldr	r2, [r1, #40]	
	ldr	fp, [r1, #56]	
	ldr	r6, [r0, #0]
	str	r6, [sp, #68]	
	rev	r3, r2
	str	r3, [sp, #40]	
	str	r3, [sp, #144]	
	ldr	r3, [r1, #44]	
	rev	r3, r3
	str	r3, [sp, #56]	
	str	r3, [sp, #148]	
	ldr	r3, [r1, #48]	
	rev	r3, r3
	str	r3, [sp, #44]	
	str	r3, [sp, #152]	
	ldr	r3, [r1, #52]	
	rev	r3, r3
	str	r3, [sp, #60]	
	str	r3, [sp, #156]	
	ldr	r3, [r1, #60]	
	mov	r1, r0
	rev	fp, fp
	rev	r3, r3
	strd	fp, r3, [sp, #160]	
	ldr	r0, [r0, #4]
	ldr	lr, [r1, #8]
	ldr	ip, [r1, #12]
	ldr	r2, [r1, #20]
	ldr	r7, [r1, #24]
	str	r3, [sp, #20]
	ldr	r9, [r1, #28]
	ldr	r3, [r1, #16]
	str	r0, [sp, #72]	
	add	r8, r5, #32
	str	lr, [sp, #76]	
	str	ip, [sp, #80]	
	str	r3, [sp, #84]	
	str	r2, [sp, #88]	
	str	r7, [sp, #92]	
	add	sl, sp, #136	
	str	r9, [sp, #96]	
	str	fp, [sp, #64]	
	mov	fp, r8
lab5: 	ldr	r5, [sl, #-32]
	ldr	r1, [fp, #-32]
	add	r5, r1
	mov	r1, r3, ror #11
	eor	r1, r1, r3, ror #6
	eor	r1, r1, r3, ror #25
	add	r5, r1
	eor	r1, r2, r7
	ands	r1, r3
	eors	r1, r7
	add	r1, r5
	add	r9, r1
	eor	r4, r6, r0
	mov	r1, r6, ror #13
	and	r5, r6, r0
	and	r4, r4, lr
	eor	r1, r1, r6, ror #2
	eors	r4, r5
	eor	r1, r1, r6, ror #22
	ldr	r5, [fp, #-28]
	add	r1, r4
	ldr	r4, [sl, #-28]
	add	ip, r9
	eor	r8, r3, r2
	add	r5, r4
	and	r8, r8, ip
	eor	r8, r8, r2
	add	r7, r5
	add	r5, r7, r8
	mov	r7, ip, ror #11
	eor	r7, r7, ip, ror #6
	add	r1, r9
	eor	r4, r7, ip, ror #25
	adds	r7, r4, r5
	eor	r8, r1, r6
	mov	r4, r1, ror #13
	and	r5, r1, r6
	and	r8, r8, r0
	eor	r4, r4, r1, ror #2
	eor	r8, r8, r5
	eor	r4, r4, r1, ror #22
	add	r4, r8
	add	r4, r7
	add	lr, r7
	ldr	r5, [fp, #-24]
	ldr	r7, [sl, #-24]
	add	r7, r5
	eor	r5, ip, r3
	and	r5, r5, lr
	eors	r5, r3
	add	r2, r7
	adds	r7, r2, r5
	mov	r2, lr, ror #11
	eor	r2, r2, lr, ror #6
	eor	r2, r2, lr, ror #25
	adds	r5, r2, r7
	add	r8, r5, r0
	mov	r2, r4, ror #13
	eor	r0, r1, r4
	and	r7, r1, r4
	eor	r2, r2, r4, ror #2
	ands	r0, r6
	eors	r0, r7
	eor	r2, r2, r4, ror #22
	add	r2, r0
	add	r2, r5
	ldr	r0, [fp, #-20]
	ldr	r5, [sl, #-20]
	add	r0, r5
	add	r3, r0
	eor	r0, ip, lr
	and	r0, r0, r8
	eor	r0, r0, ip
	add	r3, r0
	mov	r0, r8, ror #11
	eor	r0, r0, r8, ror #6
	eor	r0, r0, r8, ror #25
	add	r0, r3
	eor	r5, r4, r2
	mov	r3, r2, ror #13
	and	r7, r4, r2
	eor	r3, r3, r2, ror #2
	ands	r5, r1
	eors	r5, r7
	eor	r3, r3, r2, ror #22
	add	r3, r5
	add	r3, r0
	add	r6, r0
	ldr	r5, [sl, #-16]
	ldr	r0, [fp, #-16]
	add	r0, r5
	add	ip, r0
	eor	r0, lr, r8
	ands	r0, r6
	eor	r0, r0, lr
	add	ip, r0
	mov	r0, r6, ror #11
	eor	r0, r0, r6, ror #6
	eor	r0, r0, r6, ror #25
	add	r0, ip
	add	r9, r1, r0
	mov	ip, r3, ror #13
	eor	r1, r2, r3
	and	r5, r2, r3
	eor	ip, ip, r3, ror #2
	ands	r1, r4
	eors	r1, r5
	eor	ip, ip, r3, ror #22
	add	ip, r1
	add	ip, r0
	ldr	r1, [fp, #-12]
	ldr	r0, [sl, #-12]
	add	r1, r0
	add	lr, r1
	eor	r1, r8, r6
	and	r1, r1, r9
	eor	r1, r1, r8
	add	lr, r1
	mov	r1, r9, ror #11
	eor	r1, r1, r9, ror #6
	eor	r1, r1, r9, ror #25
	add	r1, lr
	eor	r0, r3, ip
	mov	lr, ip, ror #13
	adds	r7, r4, r1
	ands	r0, r2
	and	r4, r3, ip
	eor	lr, lr, ip, ror #2
	eors	r0, r4
	eor	lr, lr, ip, ror #22
	add	lr, r0
	add	lr, r1
	ldr	r0, [sl, #-8]
	ldr	r1, [fp, #-8]
	add	r0, r1
	add	r0, r8
	eor	r8, r6, r9
	and	r8, r8, r7
	eor	r8, r8, r6
	add	r0, r8
	mov	r8, r7, ror #11
	eor	r8, r8, r7, ror #6
	eor	r8, r8, r7, ror #25
	add	r8, r0
	eor	r1, ip, lr
	mov	r0, lr, ror #13
	ands	r1, r3
	and	r4, ip, lr
	eor	r0, r0, lr, ror #2
	eors	r1, r4
	eor	r0, r0, lr, ror #22
	ldr	r4, [fp, #-4]
	add	r0, r1
	ldr	r1, [sl, #-4]
	add	r1, r4
	add	r2, r8
	add	r6, r1
	eor	r1, r9, r7
	ands	r1, r2
	eor	r1, r1, r9
	add	r6, r1
	mov	r1, r2, ror #11
	eor	r1, r1, r2, ror #6
	add	r0, r8
	eor	r1, r1, r2, ror #25
	add	r1, r6
	eor	r4, lr, r0
	mov	r6, r0, ror #13
	eor	r6, r6, r0, ror #2
	and	r4, r4, ip
	and	r5, lr, r0
	eor	r6, r6, r0, ror #22
	eors	r4, r5
	add	r6, r4
	add	sl, sl, #32
	add	r3, r1
	add	r6, r1
	add	r1, sp, #200	
	cmp	sl, r1
	add	fp, fp, #32
	bne	lab5
	ldr	r1, [sp, #32]
	ldr	fp, [sp, #64]	
	str	fp, [sp, #32]
	add	sl, r1, #128	
	add	r1, r1, #320	
	str	r1, [sp, #64]	
	mov	fp, sl
lab6: 	ldr	r4, [sp, #32]
	ldr	r5, [sp, #16]
	ldr	r8, [sp, #12]
	ldr	sl, [sp, #36]	
	mov	r1, r4, ror #19
	eor	r1, r1, r4, ror #17
	eor	r1, r1, r4, lsr #10
	mov	r4, r5, ror #18
	eor	r4, r4, r5, ror #7
	eor	r4, r4, r5, lsr #3
	add	r1, r4
	eor	r4, r2, r7
	add	r1, r8
	ands	r4, r3
	add	sl, r1
	eor	r1, r4, r7
	mov	r4, r3, ror #11
	eor	r4, r4, r3, ror #6
	eor	r4, r4, r3, ror #25
	ldr	r5, [sp, #20]
	str	sl, [sp, #36]	
	add	r4, r1
	ldr	r1, [fp, #-64]
	add	r8, r4, r1
	mov	r1, r5, ror #19
	add	r8, sl
	eor	r1, r1, r5, ror #17
	ldr	sl, [sp, #40]	
	eor	r1, r1, r5, lsr #10
	ldr	r5, [sp, #16]
	eor	r4, r6, r0
	add	r1, sl
	add	r9, r8
	add	r1, r5
	and	r4, r4, lr
	and	r5, r6, r0
	mov	r8, r6, ror #13
	eors	r4, r5
	eor	r8, r8, r6, ror #2
	ldr	r5, [sp, #24]
	ldr	sl, [sp, #56]	
	eor	r8, r8, r6, ror #22
	add	r8, r4
	mov	r4, r5, ror #18
	eor	r4, r4, r5, ror #7
	eor	r4, r4, r5, lsr #3
	adds	r4, r1, r4
	ldr	r1, [fp, #-60]
	str	r4, [sp, #16]
	add	r1, r7
	add	ip, r9
	add	r1, r4
	eor	r4, r3, r2
	ldr	r5, [sp, #0]
	and	r4, r4, ip
	eors	r4, r2
	add	r8, r9
	add	r9, r4, r1
	mov	r1, r5, ror #18
	eor	r1, r1, r5, ror #7
	eor	r1, r1, r5, lsr #3
	ldr	r5, [sp, #24]
	add	r1, sl
	add	r1, r5
	mov	r5, ip, ror #11
	eor	r5, r5, ip, ror #6
	eor	r5, r5, ip, ror #25
	add	r4, r5, r9
	eor	r7, r8, r6
	mov	r5, r8, ror #13
	and	r9, r8, r6
	ands	r7, r0
	eor	r5, r5, r8, ror #2
	eor	r7, r7, r9
	eor	r5, r5, r8, ror #22
	add	r5, r7
	ldr	r7, [sp, #36]	
	ldr	r9, [sp, #44]	
	ldr	sl, [sp]
	add	r5, r4
	add	lr, r4
	mov	r4, r7, ror #19
	eor	r4, r4, r7, ror #17
	eor	r4, r4, r7, lsr #10
	adds	r7, r1, r4
	ldr	r1, [fp, #-56]
	str	r7, [sp, #24]
	eor	r4, ip, r3
	add	r1, r2
	and	r4, r4, lr
	ldr	r2, [sp, #48]	
	eors	r4, r3
	add	r1, r7
	adds	r7, r4, r1
	mov	r1, r2, ror #18
	eor	r1, r1, r2, ror #7
	eor	r1, r1, r2, lsr #3
	mov	r2, lr, ror #11
	eor	r2, r2, lr, ror #6
	eor	r2, r2, lr, ror #25
	adds	r4, r2, r7
	eor	r7, r8, r5
	mov	r2, r5, ror #13
	add	r1, r9
	eor	r2, r2, r5, ror #2
	and	r9, r8, r5
	ands	r7, r6
	eor	r7, r7, r9
	eor	r2, r2, r5, ror #22
	add	r2, r7
	ldr	r7, [sp, #16]
	ldr	r9, [sp, #60]	
	add	r2, r4
	add	r0, r4
	mov	r4, r7, ror #19
	eor	r4, r4, r7, ror #17
	eor	r4, r4, r7, lsr #10
	add	r1, sl
	add	r1, r4
	ldr	r4, [fp, #-52]
	str	r1, [sp, #0]
	add	r4, r3
	ldr	r3, [sp, #28]
	ldr	sl, [sp, #48]	
	add	r4, r1
	mov	r1, r3, ror #18
	eor	r7, ip, lr
	eor	r1, r1, r3, ror #7
	ands	r7, r0
	eor	r1, r1, r3, lsr #3
	mov	r3, r0, ror #11
	eor	r7, r7, ip
	eor	r3, r3, r0, ror #6
	eor	r3, r3, r0, ror #25
	add	r7, r4
	adds	r4, r3, r7
	eor	r7, r5, r2
	mov	r3, r2, ror #13
	add	r1, r9
	eor	r3, r3, r2, ror #2
	and	r9, r5, r2
	and	r7, r7, r8
	eor	r7, r7, r9
	eor	r3, r3, r2, ror #22
	add	r3, r7
	ldr	r7, [sp, #24]
	add	r3, r4
	add	r6, r4
	mov	r4, r7, ror #19
	eor	r4, r4, r7, ror #17
	add	r1, sl
	eor	r4, r4, r7, lsr #10
	adds	r4, r1, r4
	ldr	r1, [fp, #-48]
	add	ip, r1
	ldr	r1, [sp, #4]
	mov	sl, r4
	add	ip, r4
	mov	r4, r1, ror #18
	eor	r4, r4, r1, ror #7
	eor	r4, r4, r1, lsr #3
	ldr	r1, [sp, #32]
	add	r4, r1
	ldr	r1, [sp, #28]
	add	r4, r1
	eor	r1, lr, r0
	ands	r1, r6
	mov	r7, r6, ror #11
	eor	r1, r1, lr
	eor	r7, r7, r6, ror #6
	eor	r7, r7, r6, ror #25
	add	ip, r1
	add	r1, r7, ip
	eor	ip, r2, r3
	mov	r7, r3, ror #13
	and	r9, r2, r3
	eor	r7, r7, r3, ror #2
	and	ip, ip, r5
	eor	ip, ip, r9
	eor	r7, r7, r3, ror #22
	add	r7, ip
	add	r7, r1
	add	r8, r1
	ldr	r1, [sp, #0]
	ldr	ip, [sp]
	str	sl, [sp, #48]	
	mov	r1, r1, ror #19
	eor	r1, r1, ip, ror #17
	eor	r1, r1, ip, lsr #10
	adds	r1, r4, r1
	mov	r4, r1
	ldr	r1, [fp, #-44]
	str	r4, [sp, #28]
	add	r1, r4
	add	lr, r1
	ldr	r1, [sp, #52]	
	ldr	ip, [sp, #20]
	mov	r4, r1, ror #18
	eor	r4, r4, r1, ror #7
	eor	r4, r4, r1, lsr #3
	ldr	r1, [sp, #4]
	add	r4, ip
	add	r4, r1
	eor	r1, r0, r6
	and	r1, r1, r8
	eors	r1, r0
	add	lr, r1
	mov	r1, r8, ror #11
	eor	r1, r1, r8, ror #6
	eor	r1, r1, r8, ror #25
	add	lr, r1
	eor	ip, r3, r7
	mov	r1, r7, ror #13
	and	r9, r3, r7
	eor	r1, r1, r7, ror #2
	and	ip, ip, r2
	eor	ip, ip, r9
	eor	r1, r1, r7, ror #22
	add	r1, ip
	mov	ip, sl, ror #19
	eor	ip, ip, sl, ror #17
	eor	ip, ip, sl, lsr #10
	add	r1, lr
	add	r5, lr
	add	lr, r4, ip
	ldr	ip, [sp, #8]
	ldr	r4, [fp, #-40]
	str	lr, [sp, #4]
	add	r4, lr
	mov	lr, ip, ror #18
	eor	lr, lr, ip, ror #7
	eor	lr, lr, ip, lsr #3
	ldr	ip, [sp, #36]	
	add	r0, r4
	ldr	r4, [sp, #52]	
	add	lr, ip
	add	lr, r4
	eor	r4, r6, r8
	ands	r4, r5
	eors	r4, r6
	add	r0, r4
	mov	r4, r5, ror #11
	eor	r4, r4, r5, ror #6
	eor	r4, r4, r5, ror #25
	add	r0, r4
	add	ip, r2, r0
	mov	r4, r1, ror #13
	eor	r2, r7, r1
	and	r9, r7, r1
	eor	r4, r4, r1, ror #2
	ands	r2, r3
	eor	r2, r2, r9
	eor	r4, r4, r1, ror #22
	add	r4, r2
	add	r4, r0
	ldr	r0, [sp, #28]
	mov	r2, r0, ror #19
	eor	r2, r2, r0, ror #17
	eor	r2, r2, r0, lsr #10
	ldr	r0, [fp, #-36]
	add	sl, lr, r2
	add	r0, sl
	add	r6, r0
	ldr	r0, [sp, #12]
	str	sl, [sp, #52]	
	mov	r2, r0, ror #18
	eor	r2, r2, r0, ror #7
	eor	r2, r2, r0, lsr #3
	ldr	r0, [sp, #16]
	add	r2, r0
	ldr	r0, [sp, #8]
	eor	lr, r8, r5
	add	r2, r0
	and	lr, lr, ip
	mov	r0, ip, ror #11
	eor	lr, lr, r8
	eor	r0, r0, ip, ror #6
	eor	r0, r0, ip, ror #25
	add	r6, lr
	add	lr, r0, r6
	add	r6, r3, lr
	mov	r0, r4, ror #13
	eor	r3, r1, r4
	and	r9, r1, r4
	eor	r0, r0, r4, ror #2
	ands	r3, r7
	eor	r3, r3, r9
	eor	r0, r0, r4, ror #22
	add	r0, r3
	ldr	r3, [sp, #4]
	add	r0, lr
	ldr	lr, [sp, #4]
	mov	r3, r3, ror #19
	eor	r3, r3, lr, ror #17
	eor	r3, r3, lr, lsr #10
	add	r2, r3
	ldr	r3, [fp, #-32]
	str	r2, [sp, #8]
	add	r3, r2
	add	r8, r3
	ldr	r3, [sp, #40]	
	mov	r2, r3, ror #18
	eor	r2, r2, r3, ror #7
	eor	r2, r2, r3, lsr #3
	ldr	r3, [sp, #24]
	add	r2, r3
	ldr	r3, [sp, #12]
	add	r2, r3
	eor	r3, r5, ip
	ands	r3, r6
	eors	r3, r5
	add	r8, r3
	mov	r3, r6, ror #11
	eor	r3, r3, r6, ror #6
	eor	r3, r3, r6, ror #25
	add	r8, r3
	eor	lr, r4, r0
	mov	r3, r0, ror #13
	and	r9, r4, r0
	eor	r3, r3, r0, ror #2
	and	lr, lr, r1
	eor	lr, lr, r9
	eor	r3, r3, r0, ror #22
	add	r3, lr
	mov	lr, sl, ror #19
	eor	lr, lr, sl, ror #17
	eor	lr, lr, sl, lsr #10
	add	r3, r8
	add	r7, r8
	ldr	sl, [sp, #56]	
	add	r8, r2, lr
	ldr	r2, [fp, #-28]
	str	r8, [sp, #12]
	add	r2, r8
	mov	lr, sl, ror #18
	add	r5, r2
	eor	lr, lr, sl, ror #7
	ldr	r2, [sp, #0]
	eor	lr, lr, sl, lsr #3
	add	lr, r2
	ldr	r2, [sp, #40]	
	eor	r8, ip, r6
	add	lr, r2
	and	r8, r8, r7
	mov	r2, r7, ror #11
	eor	r8, r8, ip
	eor	r2, r2, r7, ror #6
	eor	r2, r2, r7, ror #25
	add	r5, r8
	add	r8, r2, r5
	add	r5, r1, r8
	mov	r2, r3, ror #13
	eor	r1, r0, r3
	and	r9, r0, r3
	eor	r2, r2, r3, ror #2
	ands	r1, r4
	eor	r1, r1, r9
	eor	r2, r2, r3, ror #22
	add	r2, r1
	ldr	r1, [sp, #8]
	add	r2, r8
	ldr	r8, [sp, #8]
	mov	r1, r1, ror #19
	eor	r1, r1, r8, ror #17
	eor	r1, r1, r8, lsr #10
	add	r1, lr
	ldr	r8, [sp, #44]	
	mov	r9, r1
	ldr	r1, [fp, #-24]
	str	r9, [sp, #40]	
	add	r1, r9
	mov	lr, r8, ror #18
	add	ip, r1
	eor	lr, lr, r8, ror #7
	ldr	r1, [sp, #48]	
	eor	lr, lr, r8, lsr #3
	add	lr, r1
	eor	r1, r6, r7
	ands	r1, r5
	eors	r1, r6
	add	r1, ip
	mov	ip, r5, ror #11
	eor	ip, ip, r5, ror #6
	eor	ip, ip, r5, ror #25
	add	ip, r1
	add	r8, r4, ip
	mov	r1, r2, ror #13
	eor	r4, r3, r2
	and	r9, r3, r2
	eor	r1, r1, r2, ror #2
	ands	r4, r0
	eor	r4, r4, r9
	eor	r1, r1, r2, ror #22
	add	r1, r4
	ldr	r4, [sp, #12]
	ldr	r9, [sp, #60]	
	add	r1, ip
	ldr	ip, [sp, #12]
	mov	r4, r4, ror #19
	eor	r4, r4, ip, ror #17
	add	lr, sl
	eor	r4, r4, ip, lsr #10
	ldr	sl, [fp, #-20]
	add	ip, lr, r4
	add	lr, ip, sl
	str	ip, [sp, #56]	
	mov	ip, r9, ror #18
	ldr	r4, [sp, #28]
	eor	ip, ip, r9, ror #7
	add	r6, lr
	eor	ip, ip, r9, lsr #3
	ldr	lr, [sp, #44]	
	add	ip, r4
	add	ip, lr
	eor	lr, r7, r5
	and	lr, lr, r8
	mov	r4, r8, ror #11
	eor	lr, lr, r7
	eor	r4, r4, r8, ror #6
	eor	r4, r4, r8, ror #25
	add	lr, r6
	add	r6, r4, lr
	add	sl, r0, r6
	mov	r4, r1, ror #13
	eor	r0, r2, r1
	and	lr, r2, r1
	eor	r4, r4, r1, ror #2
	ands	r0, r3
	eor	r0, r0, lr
	eor	r4, r4, r1, ror #22
	add	r4, r0
	add	r4, r6
	ldr	r6, [sp, #40]	
	ldr	lr, [sp, #4]
	mov	r0, r6, ror #19
	eor	r0, r0, r6, ror #17
	eor	r0, r0, r6, lsr #10
	ldr	r6, [fp, #-16]
	add	r0, ip
	add	r6, r0
	eor	ip, r5, r8
	add	r7, r6
	and	ip, ip, sl
	ldr	r6, [sp, #32]
	str	r0, [sp, #44]	
	eor	ip, ip, r5
	mov	r0, r6, ror #18
	add	r7, ip
	mov	ip, sl, ror #11
	eor	r0, r0, r6, ror #7
	eor	ip, ip, sl, ror #6
	eor	ip, ip, sl, ror #25
	eor	r0, r0, r6, lsr #3
	add	r7, ip
	add	r0, lr
	add	r0, r9
	mov	ip, r4, ror #13
	add	r9, r3, r7
	eor	r3, r1, r4
	and	r6, r1, r4
	eor	ip, ip, r4, ror #2
	ands	r3, r2
	eors	r3, r6
	eor	ip, ip, r4, ror #22
	add	ip, r3
	add	ip, r7
	ldr	r7, [sp, #56]	
	mov	r3, r7, ror #19
	eor	r3, r3, r7, ror #17
	eor	r3, r3, r7, lsr #10
	adds	r3, r0, r3
	ldr	r7, [sp, #20]
	mov	r0, r3
	ldr	r3, [fp, #-12]
	str	r0, [sp, #60]	
	add	r3, r0
	mov	r0, r7, ror #18
	add	r5, r3
	eor	r0, r0, r7, ror #7
	ldr	r3, [sp, #52]	
	eor	r0, r0, r7, lsr #3
	add	r0, r3
	ldr	r3, [sp, #32]
	add	r0, r3
	eor	r3, r8, sl
	and	r3, r3, r9
	mov	lr, r9, ror #11
	eor	r3, r3, r8
	eor	lr, lr, r9, ror #6
	add	r3, r5
	eor	lr, lr, r9, ror #25
	add	r5, lr, r3
	eor	r3, r4, ip
	adds	r7, r2, r5
	ands	r3, r1
	and	r2, r4, ip
	mov	lr, ip, ror #13
	eors	r3, r2
	eor	lr, lr, ip, ror #2
	ldr	r2, [sp, #44]	
	eor	lr, lr, ip, ror #22
	add	lr, r3
	mov	r3, r2, ror #19
	eor	r3, r3, r2, ror #17
	eor	r3, r3, r2, lsr #10
	adds	r6, r0, r3
	ldr	r3, [fp, #-8]
	str	r6, [sp, #32]
	add	r3, r6
	eor	r2, sl, r9
	ldr	r6, [sp, #36]	
	ands	r2, r7
	add	r8, r3
	eor	r2, r2, sl
	mov	r3, r6, ror #18
	mov	r0, r7, ror #11
	add	r2, r8
	eor	r3, r3, r6, ror #7
	ldr	r8, [sp, #8]
	eor	r0, r0, r7, ror #6
	eor	r3, r3, r6, lsr #3
	eor	r0, r0, r7, ror #25
	add	lr, r5
	add	r3, r8
	add	r8, r0, r2
	add	r2, r1, r8
	eor	r1, ip, lr
	ands	r1, r4
	and	r5, ip, lr
	mov	r0, lr, ror #13
	eors	r1, r5
	eor	r0, r0, lr, ror #2
	ldr	r5, [sp, #60]	
	ldr	r6, [sp, #20]
	eor	r0, r0, lr, ror #22
	add	r0, r1
	mov	r1, r5, ror #19
	eor	r1, r1, r5, ror #17
	add	r3, r6
	eor	r1, r1, r5, lsr #10
	add	r3, r1
	mov	r1, r3
	str	r3, [sp, #20]
	ldr	r3, [fp, #-4]
	add	r3, r1
	add	sl, r3
	eor	r3, r9, r7
	ands	r3, r2
	mov	r6, r2, ror #11
	eor	r3, r3, r9
	eor	r6, r6, r2, ror #6
	add	r0, r8
	add	r3, sl
	eor	r6, r6, r2, ror #25
	add	sl, r6, r3
	eor	r1, lr, r0
	mov	r6, r0, ror #13
	add	r3, r4, sl
	eor	r6, r6, r0, ror #2
	and	r1, r1, ip
	and	r4, lr, r0
	eors	r1, r4
	eor	r6, r6, r0, ror #22
	add	r6, r1
	ldr	r1, [sp, #64]	
	add	fp, fp, #64	
	cmp	fp, r1
	add	r6, sl
	bne	lab6
	ldr	r5, [sp, #84]	
	ldr	r1, [sp, #68]	
	ldr	r4, [sp, #80]	
	add	r5, r3
	mov	r3, r5
	ldr	r5, [sp, #88]	
	add	r1, r6
	add	r5, r2
	mov	r6, r1
	mov	r2, r5
	ldr	r1, [sp, #72]	
	ldr	r5, [sp, #92]	
	add	r1, r0
	add	r5, r7
	mov	r0, r1
	mov	r7, r5
	ldr	r1, [sp, #76]	
	ldr	r5, [sp, #96]	
	add	r4, ip
	ldr	ip, [sp, #100]	
	add	r1, lr
	add	r5, r9
	strd	r6, r0, [ip]
	strd	r1, r4, [ip, #8]
	strd	r3, r2, [ip, #16]
	strd	r7, r5, [ip, #24]
	add	sp, #172	
	nop
	push {r1, r2}
	ldr r1, =5357
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	nop
sha256_update:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr	r6, [r0, #104]	
	mov	r4, r0
	mov	r7, r1
	mov	r5, r2
	cmp r6, #0
	bne lab7
	add	r8, r0, #40	
lab11: 	cmp	r7, #63	
	bls	lab8
	sub	r6, r7, #64	
	bic	r6, r6, #63	
	adds	r6, #64	
	movw	r9, #40	
	add	r6, r5
	movt	r9, #8192	
lab9: 	mov	r1, r5
	mov	r0, r4
	mov	r2, r9
push {r1, r2}
	ldr r1, =7409
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_nettle_sha256_compress
	push {r1, r2}
	ldr r1, =7409
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r3, r0, [r4, #32]
	adds	r5, #64	
	adds	r3, #1
	adc	r0, r0, #0
	cmp	r5, r6
	strd	r3, r0, [r4, #32]
	bne	lab9
	and	r7, r7, #63	
lab12: 	mov	r2, r7
	mov	r1, r6
	mov	r0, r8
	bl	memcpy
	str	r7, [r4, #104]	
	nop
	push {r1, r2}
	ldr r1, =4003
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
lab7: 	rsb	r2, r6, #64	
	cmp	r1, r2
	bcc	lab10
	add	r8, r0, #40	
	mov	r1, r5
	add	r0, r8, r6
	add	r5, r2
	bl	memcpy
	movw	r2, #40	
	movt	r2, #8192	
	mov	r1, r8
	mov	r0, r4
push {r1, r2}
	ldr r1, =2462
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_nettle_sha256_compress
	push {r1, r2}
	ldr r1, =2462
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #32]
	adds	r3, #1
	str	r3, [r4, #32]
	ldr	r3, [r4, #36]	
	sub	r7, r7, #64	
	adc	r3, r3, #0
	add	r7, r6
	str	r3, [r4, #36]	
	b	lab11
lab10: 	adds	r0, #40	
	add	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	memcpy
	ldr	r3, [r4, #104]	
	add	r3, r7
	str	r3, [r4, #104]	
	nop
	push {r1, r2}
	ldr r1, =957
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
lab8: 	mov	r6, r5
	b	lab12
benchmark_body.isra.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r8, r0, #0
	sub	sp, #112	
	ble	lab13
	mov	r9, #0
	movw	r5, #416	
	movt	r5, #8192	
	mov	sl, r9
lab16: 	movw	r4, #8
	movs	r2, #32
	movs	r1, #0
	movt	r4, #8192	
	mov	r0, r5
push {r1, r2}
	ldr r1, =3268
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =3268
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldmia	r4!, {r0, r1, r2, r3}
	mov	ip, sp
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r4, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	movw	r2, #324	
	movt	r2, #8192	
	movs	r1, #56	
	mov	r0, sp
	movs	r6, #0
	movs	r7, #0
	strd	r6, r7, [sp, #32]
	str	sl, [sp, #104]	
push {r1, r2}
	ldr r1, =6220
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sha256_update
	push {r1, r2}
	ldr r1, =6220
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #104]	
	add	r2, r3, #112	
	cmp	r3, #63	
	mov	r0, #128	
	add	r2, sp
	add	r1, r3, #1
	bhi	lab14
	cmp	r1, #56	
	strb	r0, [r2, #-72]
	bhi	lab15
	add	r3, sp, #40	
	adds	r0, r3, r1
	rsb	r2, r1, #56	
lab17: 	movs	r1, #0
push {r1, r2}
	ldr r1, =7242
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =7242
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #104]	
	ldr	r1, [sp, #32]
	lsls	r3, r3, #3
	orr	r2, r3, r1, lsl #9
	ldr	r3, [sp, #36]	
	lsls	r3, r3, #9
	orr	r3, r3, r1, lsr #23
	lsrs	r0, r3, #24
	lsrs	r6, r2, #24
	movs	r1, #0
	orr	r6, r6, r3, lsl #8
	lsrs	r4, r2, #16
	bfi	r1, r0, #0, #8
	movs	r0, #0
	orr	r4, r4, r3, lsl #16
	bfi	r0, r6, #0, #8
	bfi	r0, r4, #8, #8
	lsrs	r4, r3, #16
	bfi	r1, r4, #8, #8
	lsrs	r4, r2, #8
	orr	r4, r4, r3, lsl #24
	bfi	r0, r4, #16, #8
	bfi	r0, r2, #24, #8
	lsrs	r2, r3, #8
	bfi	r1, r2, #16, #8
	bfi	r1, r3, #24, #8
	movw	r2, #40	
	str	r0, [sp, #100]	
	str	r1, [sp, #96]	
	movt	r2, #8192	
	add	r1, sp, #40	
	mov	r0, sp
push {r1, r2}
	ldr r1, =4163
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_nettle_sha256_compress
	push {r1, r2}
	ldr r1, =4163
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #0]
	rev	r3, r3
	str	r3, [r5, #0]
	ldr	r3, [sp, #4]
	rev	r3, r3
	str	r3, [r5, #4]
	ldr	r3, [sp, #8]
	rev	r3, r3
	str	r3, [r5, #8]
	ldr	r3, [sp, #12]
	rev	r3, r3
	str	r3, [r5, #12]
	ldr	r3, [sp, #16]
	rev	r3, r3
	str	r3, [r5, #16]
	ldr	r3, [sp, #20]
	rev	r3, r3
	str	r3, [r5, #20]
	ldr	r3, [sp, #24]
	rev	r3, r3
	str	r3, [r5, #24]
	ldr	r3, [sp, #28]
	add	r9, r9, #1
	rev	r3, r3
	cmp	r9, r8
	str	r3, [r5, #28]
	bne	lab16
lab13: 	add	sp, #112	
	nop
	push {r1, r2}
	ldr r1, =979
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab14: 	b	lab14
lab15: 	add	r3, sp, #40	
	rsb	r2, r1, #64	
	adds	r0, r3, r1
	movs	r1, #0
push {r1, r2}
	ldr r1, =3898
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =3898
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	r2, r4, #16
	mov	r0, sp
	add	r1, sp, #40	
push {r1, r2}
	ldr r1, =7246
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_nettle_sha256_compress
	push {r1, r2}
	ldr r1, =7246
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #56	
	add	r0, sp, #40	
	b	lab17
benchmark_body.constprop.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	movw	r8, #14264	
	movw	r5, #416	
	sub	sp, #116	
	movt	r8, #1
	movt	r5, #8192	
	mov	r9, #0
lab20: 	movw	r4, #8
	movs	r2, #32
	movs	r1, #0
	movt	r4, #8192	
	mov	r0, r5
push {r1, r2}
	ldr r1, =877
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =877
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldmia	r4!, {r0, r1, r2, r3}
	mov	ip, sp
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r4, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	movw	r2, #324	
	movt	r2, #8192	
	movs	r1, #56	
	mov	r0, sp
	movs	r6, #0
	movs	r7, #0
	strd	r6, r7, [sp, #32]
	str	r9, [sp, #104]	
push {r1, r2}
	ldr r1, =6712
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sha256_update
	push {r1, r2}
	ldr r1, =6712
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #104]	
	add	r2, r3, #112	
	cmp	r3, #63	
	mov	r0, #128	
	add	r2, sp
	add	r1, r3, #1
	bhi	lab18
	cmp	r1, #56	
	strb	r0, [r2, #-72]
	bhi	lab19
	add	r3, sp, #40	
	adds	r0, r3, r1
	rsb	r2, r1, #56	
lab21: 	movs	r1, #0
push {r1, r2}
	ldr r1, =448
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =448
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #104]	
	ldr	r1, [sp, #32]
	lsls	r3, r3, #3
	orr	r2, r3, r1, lsl #9
	ldr	r3, [sp, #36]	
	lsls	r3, r3, #9
	orr	r3, r3, r1, lsr #23
	lsrs	r0, r3, #24
	lsrs	r6, r2, #24
	movs	r1, #0
	orr	r6, r6, r3, lsl #8
	lsrs	r4, r2, #16
	bfi	r1, r0, #0, #8
	movs	r0, #0
	orr	r4, r4, r3, lsl #16
	bfi	r0, r6, #0, #8
	bfi	r0, r4, #8, #8
	lsrs	r4, r3, #16
	bfi	r1, r4, #8, #8
	lsrs	r4, r2, #8
	orr	r4, r4, r3, lsl #24
	bfi	r0, r4, #16, #8
	bfi	r0, r2, #24, #8
	lsrs	r2, r3, #8
	bfi	r1, r2, #16, #8
	bfi	r1, r3, #24, #8
	movw	r2, #40	
	str	r0, [sp, #100]	
	str	r1, [sp, #96]	
	movt	r2, #8192	
	add	r1, sp, #40	
	mov	r0, sp
push {r1, r2}
	ldr r1, =4898
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_nettle_sha256_compress
	push {r1, r2}
	ldr r1, =4898
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #0]
	rev	r3, r3
	str	r3, [r5, #0]
	ldr	r3, [sp, #4]
	rev	r3, r3
	str	r3, [r5, #4]
	ldr	r3, [sp, #8]
	rev	r3, r3
	str	r3, [r5, #8]
	ldr	r3, [sp, #12]
	rev	r3, r3
	str	r3, [r5, #12]
	ldr	r3, [sp, #16]
	rev	r3, r3
	str	r3, [r5, #16]
	ldr	r3, [sp, #20]
	rev	r3, r3
	str	r3, [r5, #20]
	ldr	r3, [sp, #24]
	rev	r3, r3
	str	r3, [r5, #24]
	ldr	r3, [sp, #28]
	subs	r8, r8, #1
	rev	r3, r3
	str	r3, [r5, #28]
	bne	lab20
	mov	r0, r8
	add	sp, #116	
	nop
	push {r1, r2}
	ldr r1, =867
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab18: 	b	lab18
lab19: 	add	r3, sp, #40	
	rsb	r2, r1, #64	
	adds	r0, r3, r1
	movs	r1, #0
push {r1, r2}
	ldr r1, =7273
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =7273
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	r2, r4, #16
	mov	r0, sp
	add	r1, sp, #40	
push {r1, r2}
	ldr r1, =7817
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_nettle_sha256_compress
	push {r1, r2}
	ldr r1, =7817
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #56	
	add	r0, sp, #40	
	b	lab21
	nop
sha256_digest:
	cmp	r1, #32
	bhi	lab22
	ldr	r3, [r0, #104]	
	cmp	r3, #63	
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	bls	lab23
lab24: 	b	lab24
lab22: 	b	lab22
lab23: 	mov	r5, r1
	adds	r1, r3, #1
	add	r3, r0
	mov	r6, r2
	cmp	r1, #56	
	mov	r2, #128	
	strb	r2, [r3, #40]	
	add	r7, r0, #40	
	bhi	lab25
	adds	r0, r7, r1
	rsb	r2, r1, #56	
lab26: 	movs	r1, #0
push {r1, r2}
	ldr r1, =2981
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =2981
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #104]	
	ldr	r2, [r4, #32]
	lsls	r3, r3, #3
	orr	r0, r3, r2, lsl #9
	ldr	r3, [r4, #36]	
	lsls	r3, r3, #9
	orr	r3, r3, r2, lsr #23
	mov	r1, r7
	movs	r7, #0
	mov	ip, r3, lsr #24
	mov	r8, r0, lsr #24
	mov	r2, r7
	orr	r8, r8, r3, lsl #8
	mov	lr, r0, lsr #16
	bfi	r2, ip, #0, #8
	mov	ip, r7
	orr	lr, lr, r3, lsl #16
	bfi	ip, r8, #0, #8
	bfi	ip, lr, #8, #8
	mov	lr, r3, lsr #16
	bfi	r2, lr, #8, #8
	mov	lr, r0, lsr #8
	orr	lr, lr, r3, lsl #24
	bfi	ip, lr, #16, #8
	bfi	ip, r0, #24, #8
	lsrs	r0, r3, #8
	bfi	r2, r0, #16, #8
	bfi	r2, r3, #24, #8
	str	r2, [r4, #96]	
	movw	r2, #40	
	str	ip, [r4, #100]	
	movt	r2, #8192	
	mov	r0, r4
push {r1, r2}
	ldr r1, =4634
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_nettle_sha256_compress
	push {r1, r2}
	ldr r1, =4634
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r0, r5
	movw	r5, #8
	mov	r2, r4
	mov	r1, r6
	movt	r5, #8192	
	bl	_nettle_write_be32
	push {r1, r2}
	ldr r1, =2080
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldmia	r5!, {r0, r1, r2, r3}
	str	r0, [r4, #0]
	str	r1, [r4, #4]
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	ldmia	r5!, {r0, r1, r2, r3}
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	movs	r0, #0
	movs	r1, #0
	str	r2, [r4, #24]
	str	r3, [r4, #28]
	strd	r0, r1, [r4, #32]
	str	r7, [r4, #104]	
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab25: 	rsb	r2, r1, #64	
	adds	r0, r7, r1
	movs	r1, #0
push {r1, r2}
	ldr r1, =777
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =777
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #40	
	movt	r2, #8192	
	mov	r0, r4
	mov	r1, r7
push {r1, r2}
	ldr r1, =1022
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_nettle_sha256_compress
	push {r1, r2}
	ldr r1, =1022
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r0, r7
	movs	r2, #56	
	b	lab26
	nop
verify_benchmark:
	movw	r3, #416	
	movw	r2, #324	
	movt	r3, #8192	
	movt	r2, #8192	
	ldrb	r1, [r3, #0]
	ldrb	r0, [r2, #56]	
	ldrb	ip, [r2, #57]	
	subs	r0, r1, r0
	clz	r0, r0
	ldrb	r1, [r3, #1]
	lsrs	r0, r0, #5
	cmp	ip, r1
	it	ne
	movne	r0, #0
	ldrb	ip, [r2, #58]	
	ldrb	r1, [r3, #2]
	cmp	ip, r1
	it	ne
	movne	r0, #0
	ldrb	ip, [r2, #59]	
	ldrb	r1, [r3, #3]
	cmp	ip, r1
	it	ne
	movne	r0, #0
	ldrb	ip, [r2, #60]	
	ldrb	r1, [r3, #4]
	cmp	ip, r1
	it	ne
	movne	r0, #0
	ldrb	ip, [r2, #61]	
	ldrb	r1, [r3, #5]
	cmp	ip, r1
	it	ne
	movne	r0, #0
	ldrb	ip, [r2, #62]	
	ldrb	r1, [r3, #6]
	ldrb	r2, [r2, #63]	
	ldrb	r3, [r3, #7]
	cmp	ip, r1
	it	ne
	movne	r0, #0
	cmp	r2, r3
	it	ne
	movne	r0, #0
	bx	lr
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
lab27: 	ldr	r2, [r3, #0]
	lsls	r0, r2, #14
	bpl	lab27
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
lab28: 	ldr	r3, [r2, #0]
	lsls	r1, r3, #6
	bpl	lab28
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
lab29: 	ldr	r3, [r1, #8]
	lsls	r3, r3, #28
	bpl	lab29
	movw	r3, #412	
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
	ldr r1, =5236
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	start_trigger
	bl	benchmark
	push {r1, r2}
	ldr r1, =1134
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
memcpy:
	mov	ip, r0
	orr	r3, r1, r0
	ands	r3, r3, #3
	bne	lab30
lab39: 	subs	r2, #64	
	bcc	lab31
lab32: 	ldr	r3, [r1], #4
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
	bcs	lab32
lab31: 	adds	r2, #48	
	bcc	lab33
lab34: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #16
	bcs	lab34
lab33: 	adds	r2, #12
	bcc	lab35
lab36: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #4
	bcs	lab36
lab35: 	adds	r2, #4
	beq	lab37
	lsls	r2, r2, #31
	itt	ne
	ldrbne	r3, [r1], #1
	strbne	r3, [r0], #1
	bcc	lab37
	ldrh	r3, [r1, #0]
	strh	r3, [r0, #0]
lab37: 	mov	r0, ip
	bx	lr
	nop
lab30: 	cmp	r2, #8
	bcc	lab38
	lsls	r3, r1, #30
	beq	lab39
	ands	r3, r0, #3
	beq	lab39
	rsb	r3, r3, #4
	subs	r2, r2, r3
	lsls	r3, r3, #31
	itt	ne
	ldrbne	r3, [r1], #1
	strbne	r3, [r0], #1
	bcc	lab39
	ldrh	r3, [r1], #2
	strh	r3, [r0], #2
	b	lab39
lab38: 	subs	r2, #4
	bcc	lab35
lab40: 	subs	r2, #1
	ldrb	r3, [r1], #1
	strb	r3, [r0], #1
	bcs	lab40
	ldrb	r3, [r1, #0]
	strb	r3, [r0, #0]
	ldrb	r3, [r1, #1]
	strb	r3, [r0, #1]
	ldrb	r3, [r1, #2]
	strb	r3, [r0, #2]
	mov	r0, ip
	bx	lr
memset:
	lsls	r3, r0, #30
	push	{r4, r5, lr}
	beq	lab41
	subs	r4, r2, #1
	cmp	r2, #0
	beq	lab42
	uxtb	r2, r1
	mov	r3, r0
	b	lab43
lab44: 	subs	r4, #1
	bcc	lab42
lab43: 	strb	r2, [r3], #1
	lsls	r5, r3, #30
	bne	lab44
lab52: 	cmp	r4, #3
	bls	lab45
	uxtb	r5, r1
	orr	r5, r5, r5, lsl #8
	cmp	r4, #15
	orr	r5, r5, r5, lsl #16
	bls	lab46
	sub	r2, r4, #16
	bic	ip, r2, #15
	add	lr, r3, #32
	add	lr, ip
	mov	ip, r2, lsr #4
	add	r2, r3, #16
lab47: 	strd	r5, r5, [r2, #-16]
	strd	r5, r5, [r2, #-8]
	adds	r2, #16
	cmp	r2, lr
	bne	lab47
	add	r2, ip, #1
	tst	r4, #12
	add	r2, r3, r2, lsl #4
	and	ip, r4, #15
	beq	lab48
lab53: 	sub	r3, ip, #4
	bic	r3, r3, #3
	adds	r3, #4
	add	r3, r2
lab49: 	str	r5, [r2], #4
	cmp	r3, r2
	bne	lab49
	and	r4, ip, #3
lab45: 	cmp r4, #0
	beq lab42
lab51: 	uxtb	r2, r1
	add	r4, r3
lab50: 	strb	r2, [r3], #1
	cmp	r4, r3
	bne	lab50
lab42:	nop
	push {r1, r2}
	ldr r1, =5095
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, pc}
lab48: 	mov	r4, ip
	mov	r3, r2
	cmp	r4, #0
	bne	lab51
	b	lab42
lab41: 	mov	r3, r0
	mov	r4, r2
	b	lab52
lab46: 	mov	r2, r3
	mov	ip, r4
	b	lab53


	 .section .rodata

_sdata:
	.word	0x32616873
	.word	0x00003635
H0.0:
	.word	0x6a09e667
	.word	0xbb67ae85
	.word	0x3c6ef372
	.word	0xa54ff53a
	.word	0x510e527f
	.word	0x9b05688c
	.word	0x1f83d9ab
	.word	0x5be0cd19
K:
	.word	0x428a2f98
	.word	0x71374491
	.word	0xb5c0fbcf
	.word	0xe9b5dba5
	.word	0x3956c25b
	.word	0x59f111f1
	.word	0x923f82a4
	.word	0xab1c5ed5
	.word	0xd807aa98
	.word	0x12835b01
	.word	0x243185be
	.word	0x550c7dc3
	.word	0x72be5d74
	.word	0x80deb1fe
	.word	0x9bdc06a7
	.word	0xc19bf174
	.word	0xe49b69c1
	.word	0xefbe4786
	.word	0x0fc19dc6
	.word	0x240ca1cc
	.word	0x2de92c6f
	.word	0x4a7484aa
	.word	0x5cb0a9dc
	.word	0x76f988da
	.word	0x983e5152
	.word	0xa831c66d
	.word	0xb00327c8
	.word	0xbf597fc7
	.word	0xc6e00bf3
	.word	0xd5a79147
	.word	0x06ca6351
	.word	0x14292967
	.word	0x27b70a85
	.word	0x2e1b2138
	.word	0x4d2c6dfc
	.word	0x53380d13
	.word	0x650a7354
	.word	0x766a0abb
	.word	0x81c2c92e
	.word	0x92722c85
	.word	0xa2bfe8a1
	.word	0xa81a664b
	.word	0xc24b8b70
	.word	0xc76c51a3
	.word	0xd192e819
	.word	0xd6990624
	.word	0xf40e3585
	.word	0x106aa070
	.word	0x19a4c116
	.word	0x1e376c08
	.word	0x2748774c
	.word	0x34b0bcb5
	.word	0x391c0cb3
	.word	0x4ed8aa4a
	.word	0x5b9cca4f
	.word	0x682e6ff3
	.word	0x748f82ee
	.word	0x78a5636f
	.word	0x84c87814
	.word	0x8cc70208
	.word	0x90befffa
	.word	0xa4506ceb
	.word	0xbef9a3f7
	.word	0xc67178f2
nettle_sha256:
	.word	0x20000000
	.word	0x00000070
	.word	0x00000020
	.word	0x00000040
	.word	0x080001fd
	.word	0x08000d39
	.word	0x0800107d


	 .section .data

msg:
	.word	0x64636261
	.word	0x65646362
	.word	0x66656463
	.word	0x67666564
	.word	0x68676665
	.word	0x69686766
	.word	0x6a696867
	.word	0x6b6a6968
	.word	0x6c6b6a69
	.word	0x6d6c6b6a
	.word	0x6e6d6c6b
	.word	0x6f6e6d6c
	.word	0x706f6e6d
	.word	0x71706f6e
hash:
	.word	0x616a8d24
	.word	0xb83806d2
	.word	0x9326c0e5
	.word	0x39603e0c
	.word	0x59e43ca3
	.word	0x6721ff64
	.word	0xd4edecf6
	.word	0xc106db19
SystemCoreClock:
	.word	0x00f42400


	 .section .bss

buffer:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
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
