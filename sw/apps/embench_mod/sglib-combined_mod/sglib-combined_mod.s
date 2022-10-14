	.cpu cortex-m4
	.text
	.thumb
	.syntax unified
	.global main
	.type main, %function

    .global SystemInit
	.type SystemInit, %function

sglib___rbtree_fix_left_deletion_discrepancy:
	ldr	r2, [r0, #0]
	ldr	r3, [r2, #12]
	cmp r3, #0
	beq lab0
	push	{r4, r5, r6, r7, lr}
	ldrb	r1, [r3, #4]
	cmp	r1, #1
	ldrd	r5, r7, [r3, #8]
	beq	lab1
	cmp r7, #0
	beq lab2
	ldrb	r1, [r7, #4]
	cmp r1, #0
	bne lab3
lab2: 	cmp r5, #0
	beq lab4
	ldrb	r1, [r5, #4]
	cmp r1, #0
	bne lab5
lab4: 	ldrb	r0, [r2, #4]
	movs	r4, #0
	movs	r1, #1
	strb	r4, [r2, #4]
	clz	r0, r0
	strb	r1, [r3, #4]
	lsrs	r0, r0, #5
	nop
	push {r1, r2}
	ldr r1, =3660
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab1: 	cmp r5, #0
	beq lab6
	ldrd	r1, r4, [r5, #8]
	cmp r4, #0
	beq lab7
	ldrb	r6, [r4, #4]
	cmp r6, #0
	beq lab7
	cmp	r6, #1
	beq	lab8
	cmp	r1, #0
	bne	lab9
lab13: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =4081
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab5: 	ldrd	r1, r4, [r5, #8]
	str	r5, [r0, #0]
	ldrb	r0, [r2, #4]
	strb	r0, [r5, #4]
	movs	r0, #0
	strb	r0, [r2, #4]
	strd	r2, r3, [r5, #8]
	str	r4, [r3, #8]
	str	r1, [r2, #12]
	nop
	push {r1, r2}
	ldr r1, =3410
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab0: 	strb	r3, [r2, #4]
	mov	r0, r3
	nop
	push {r1, r2}
	ldr r1, =5712
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
lab3: 	cmp	r1, #1
	bne	lab5
	cmp r5, #0
	beq lab10
	ldrb	r1, [r5, #4]
	cmp	r1, #0
	bne	lab5
lab10: 	str	r3, [r0, #0]
	ldrb	r1, [r2, #4]
	strb	r1, [r3, #4]
	movs	r1, #0
	strb	r1, [r2, #4]
	str	r2, [r3, #8]
	str	r5, [r2, #12]
	strb	r1, [r7, #4]
	mov	r0, r1
	nop
	push {r1, r2}
	ldr r1, =4527
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab6: 	str	r3, [r0, #0]
	strb	r5, [r3, #4]
	str	r2, [r3, #8]
	mov	r0, r5
	str	r5, [r2, #12]
	nop
	push {r1, r2}
	ldr r1, =5300
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab7: 	cmp r1, #0
	beq lab11
	ldrb	r6, [r1, #4]
	mov	ip, r6
	cmp r6, #0
	beq lab11
	cmp r4, #0
	bne lab12
lab16: 	cmp	r6, #1
	bne	lab13
lab15: 	ldrd	r4, r6, [r1, #8]
	str	r1, [r0, #0]
	movs	r0, #0
	strb	r0, [r1, #4]
	str	r3, [r1, #12]
	str	r6, [r5, #8]
	str	r2, [r1, #8]
	str	r4, [r2, #12]
	nop
	push {r1, r2}
	ldr r1, =4410
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab11: 	movs	r1, #0
	str	r3, [r0, #0]
	str	r2, [r3, #8]
	strb	r1, [r3, #4]
	movs	r3, #1
	str	r5, [r2, #12]
	strb	r3, [r5, #4]
	mov	r0, r1
	nop
	push {r1, r2}
	ldr r1, =4607
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab8: 	cmp r1, #0
	beq lab14
	ldrb	ip, [r1, #4]
lab17: 	cmp	ip, #1
	beq	lab15
lab14: 	str	r5, [r0, #0]
	strd	r2, r3, [r5, #8]
	movs	r5, #0
	str	r7, [r3, #12]
	str	r4, [r3, #8]
	str	r1, [r2, #12]
	strb	r5, [r4, #4]
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =7250
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab9: 	ldrb	r6, [r1, #4]
	b	lab16
lab12: 	ldrb	lr, [r4, #4]
	cmp	lr, #1
	bne	lab16
	b	lab17
	nop
sglib___rbtree_fix_right_deletion_discrepancy:
	ldr	r2, [r0, #0]
	ldr	r3, [r2, #8]
	cmp r3, #0
	beq lab18
	push	{r4, r5, r6, r7, lr}
	ldrb	r1, [r3, #4]
	cmp	r1, #1
	ldrd	r7, r5, [r3, #8]
	beq	lab19
	cmp r7, #0
	beq lab20
	ldrb	r1, [r7, #4]
	cmp r1, #0
	bne lab21
lab20: 	cmp r5, #0
	beq lab22
	ldrb	r1, [r5, #4]
	cmp r1, #0
	bne lab23
lab22: 	ldrb	r0, [r2, #4]
	movs	r4, #0
	movs	r1, #1
	strb	r4, [r2, #4]
	clz	r0, r0
	strb	r1, [r3, #4]
	lsrs	r0, r0, #5
	nop
	push {r1, r2}
	ldr r1, =6545
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab19: 	cmp r5, #0
	beq lab24
	ldrd	r4, r1, [r5, #8]
	cmp r4, #0
	beq lab25
	ldrb	r6, [r4, #4]
	cmp r6, #0
	beq lab25
	cmp	r6, #1
	beq	lab26
	cmp	r1, #0
	bne	lab27
lab31: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =4810
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab23: 	ldrd	r4, r1, [r5, #8]
	str	r5, [r0, #0]
	ldrb	r0, [r2, #4]
	strb	r0, [r5, #4]
	movs	r0, #0
	strb	r0, [r2, #4]
	strd	r3, r2, [r5, #8]
	str	r4, [r3, #12]
	str	r1, [r2, #8]
	nop
	push {r1, r2}
	ldr r1, =3434
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab18: 	strb	r3, [r2, #4]
	mov	r0, r3
	nop
	push {r1, r2}
	ldr r1, =2581
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
lab21: 	cmp	r1, #1
	bne	lab23
	cmp r5, #0
	beq lab28
	ldrb	r1, [r5, #4]
	cmp	r1, #0
	bne	lab23
lab28: 	str	r3, [r0, #0]
	ldrb	r1, [r2, #4]
	strb	r1, [r3, #4]
	movs	r1, #0
	strb	r1, [r2, #4]
	str	r2, [r3, #12]
	str	r5, [r2, #8]
	strb	r1, [r7, #4]
	mov	r0, r1
	nop
	push {r1, r2}
	ldr r1, =3131
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab24: 	str	r3, [r0, #0]
	strb	r5, [r3, #4]
	str	r2, [r3, #12]
	mov	r0, r5
	str	r5, [r2, #8]
	nop
	push {r1, r2}
	ldr r1, =4855
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab25: 	cmp r1, #0
	beq lab29
	ldrb	r6, [r1, #4]
	mov	ip, r6
	cmp r6, #0
	beq lab29
	cmp r4, #0
	bne lab30
lab34: 	cmp	r6, #1
	bne	lab31
lab33: 	ldrd	r6, r4, [r1, #8]
	str	r1, [r0, #0]
	movs	r0, #0
	strb	r0, [r1, #4]
	str	r3, [r1, #8]
	str	r6, [r5, #12]
	str	r2, [r1, #12]
	str	r4, [r2, #8]
	nop
	push {r1, r2}
	ldr r1, =3392
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab29: 	movs	r1, #0
	str	r3, [r0, #0]
	str	r2, [r3, #12]
	strb	r1, [r3, #4]
	movs	r3, #1
	str	r5, [r2, #8]
	strb	r3, [r5, #4]
	mov	r0, r1
	nop
	push {r1, r2}
	ldr r1, =5050
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab26: 	cmp r1, #0
	beq lab32
	ldrb	ip, [r1, #4]
lab35: 	cmp	ip, #1
	beq	lab33
lab32: 	str	r5, [r0, #0]
	strd	r3, r2, [r5, #8]
	movs	r5, #0
	str	r7, [r3, #8]
	str	r4, [r3, #12]
	str	r1, [r2, #8]
	strb	r5, [r4, #4]
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =6635
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab27: 	ldrb	r6, [r1, #4]
	b	lab34
lab30: 	ldrb	lr, [r4, #4]
	cmp	lr, #1
	bne	lab34
	b	lab35
	nop
sglib___rbtree_consistency_check_recursive:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, #52	
	strd	r0, r2, [sp, #40]	
	mov	r9, r1
	cmp	r0, #0
	beq	lab36
lab69: 	ldr	r2, [sp, #40]	
	ldrb	r3, [r2, #4]
	ldr	r2, [r2, #8]
	str	r2, [sp, #28]
	cmp	r3, #1
	beq	lab37
	ldr	r3, [sp, #44]	
	adds	r3, #1
	str	r3, [sp, #44]	
	str	r3, [sp, #36]	
	cmp	r2, #0
	beq	lab38
lab67: 	ldr	r2, [sp, #28]
	ldrb	r3, [r2, #4]
	ldr	r2, [r2, #8]
	str	r2, [sp, #24]
	cmp	r3, #1
	beq	lab39
	ldr	r3, [sp, #36]	
	adds	r3, #1
	strd	r3, r3, [sp, #32]
	cmp	r2, #0
	beq	lab40
	mov	fp, r9
lab65: 	ldr	r2, [sp, #24]
	ldrb	r3, [r2, #4]
	ldr	r2, [r2, #8]
	str	r2, [sp, #16]
	cmp	r3, #1
	beq	lab41
	ldr	r3, [sp, #32]
	adds	r3, #1
	str	r3, [sp, #32]
	str	r3, [sp, #20]
	cmp	r2, #0
	beq	lab42
lab63: 	ldr	r2, [sp, #16]
	ldrb	r3, [r2, #4]
	ldr	r2, [r2, #8]
	str	r2, [sp, #8]
	cmp	r3, #1
	beq	lab43
	ldr	r3, [sp, #20]
	adds	r3, #1
	str	r3, [sp, #20]
	str	r3, [sp, #12]
	cmp	r2, #0
	beq	lab44
lab61: 	ldr	r2, [sp, #8]
	ldrb	r3, [r2, #4]
	ldr	r6, [r2, #8]
	cmp	r3, #1
	ldr	r3, [sp, #12]
	beq	lab45
	adds	r3, #1
	str	r3, [sp, #12]
	str	r3, [sp, #4]
	cmp	r6, #0
	beq	lab46
lab59: 	ldrb	r3, [r6, #4]
	ldr	r5, [r6, #8]
	cmp	r3, #1
	beq	lab47
	ldr	r3, [sp, #4]
	adds	r3, #1
	str	r3, [sp, #4]
	mov	r9, r3
	cmp	r5, #0
	beq	lab48
	mov	r8, r6
	mov	r6, r5
lab57: 	ldrb	r3, [r6, #4]
	ldr	r7, [r6, #8]
	cmp	r3, #1
	beq	lab49
	add	r9, r9, #1
	mov	sl, r9
	cmp r7, #0
	beq lab50
lab55: 	ldrb	r3, [r7, #4]
	ldr	r4, [r7, #8]
	cmp	r3, #1
	beq	lab51
	add	sl, sl, #1
	mov	r5, sl
	cmp r4, #0
	beq lab52
lab53: 	ldrb	r3, [r4, #4]
	ldr	r0, [r4, #8]
	cmp	r3, #1
	it	ne
	addne	r5, #1
	mov	r1, fp
	mov	r2, r5
push {r1, r2}
	ldr r1, =3077
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =3077
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab53
lab52: 	ldr	r3, [fp]
	cmp	r3, #0
	bge	lab54
	str	r5, [fp]
lab54: 	ldr	r7, [r7, #12]
	cmp	r7, #0
	bne	lab55
lab50: 	ldr	r3, [fp]
	cmp	r3, #0
	bge	lab56
	str	sl, [fp]
lab56: 	ldr	r6, [r6, #12]
	cmp	r6, #0
	bne	lab57
lab86: 	mov	r6, r8
lab48: 	ldr	r3, [fp]
	cmp	r3, #0
	bge	lab58
	str	r9, [fp]
lab58: 	ldr	r6, [r6, #12]
	cmp	r6, #0
	bne	lab59
lab46: 	ldr	r3, [fp]
	cmp	r3, #0
	bge	lab60
	ldr	r3, [sp, #4]
	str	r3, [fp]
lab60: 	ldr	r3, [sp, #8]
	ldr	r3, [r3, #12]
	str	r3, [sp, #8]
	cmp	r3, #0
	bne	lab61
lab44: 	ldr	r3, [fp]
	cmp	r3, #0
	bge	lab62
	ldr	r3, [sp, #12]
	str	r3, [fp]
lab62: 	ldr	r3, [sp, #16]
	ldr	r3, [r3, #12]
	str	r3, [sp, #16]
	cmp	r3, #0
	bne	lab63
lab42: 	ldr	r3, [fp]
	cmp	r3, #0
	bge	lab64
	ldr	r3, [sp, #20]
	str	r3, [fp]
lab64: 	ldr	r3, [sp, #24]
	ldr	r3, [r3, #12]
	str	r3, [sp, #24]
	cmp	r3, #0
	bne	lab65
lab116: 	mov	r9, fp
lab40: 	ldr	r3, [r9]
	cmp	r3, #0
	bge	lab66
	ldr	r3, [sp, #32]
	str	r3, [r9]
lab66: 	ldr	r3, [sp, #28]
	ldr	r3, [r3, #12]
	str	r3, [sp, #28]
	cmp	r3, #0
	bne	lab67
lab38: 	ldr	r3, [r9]
	cmp	r3, #0
	bge	lab68
	ldr	r3, [sp, #36]	
	str	r3, [r9]
lab68: 	ldr	r3, [sp, #40]	
	ldr	r3, [r3, #12]
	str	r3, [sp, #40]	
	cmp	r3, #0
	bne	lab69
lab36: 	ldr	r3, [r9]
	cmp	r3, #0
	bge	lab70
	ldr	r3, [sp, #44]	
	str	r3, [r9]
lab70: 	add	sp, #52	
	nop
	push {r1, r2}
	ldr r1, =7231
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab51: 	mov	r5, sl
	cmp	r4, #0
	beq	lab52
lab71: 	ldrb	r3, [r4, #4]
	ldr	r0, [r4, #8]
	cmp	r3, #1
	it	ne
	addne	r5, #1
	mov	r1, fp
	mov	r2, r5
push {r1, r2}
	ldr r1, =3187
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =3187
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab71
	b	lab52
lab49: 	mov	sl, r9
	cmp	r7, #0
	beq	lab50
	ldrb	r3, [r7, #4]
	ldr	r4, [r7, #8]
	cmp	r3, #1
	beq	lab72
lab76: 	add	sl, sl, #1
	mov	r5, sl
	cmp r4, #0
	beq lab73
lab74: 	ldrb	r3, [r4, #4]
	ldr	r0, [r4, #8]
	cmp	r3, #1
	it	ne
	addne	r5, #1
	mov	r1, fp
	mov	r2, r5
push {r1, r2}
	ldr r1, =5319
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =5319
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab74
lab73: 	ldr	r3, [fp]
	cmp	r3, #0
	bge	lab75
	str	r5, [fp]
lab75: 	ldr	r7, [r7, #12]
	cmp	r7, #0
	beq	lab50
	ldrb	r3, [r7, #4]
	ldr	r4, [r7, #8]
	cmp	r3, #1
	bne	lab76
lab72: 	mov	r5, sl
	cmp	r4, #0
	beq	lab73
lab77: 	ldrb	r3, [r4, #4]
	ldr	r0, [r4, #8]
	cmp	r3, #1
	it	ne
	addne	r5, #1
	mov	r1, fp
	mov	r2, r5
push {r1, r2}
	ldr r1, =758
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =758
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab77
	b	lab73
lab47: 	ldr	r9, [sp, #4]
	cmp	r5, #0
	beq	lab48
	mov	r8, r6
	mov	r6, r5
	ldrb	r3, [r6, #4]
	ldr	r7, [r6, #8]
	cmp	r3, #1
	beq	lab78
lab87: 	add	r9, r9, #1
	mov	sl, r9
	cmp r7, #0
	beq lab79
lab84: 	ldrb	r3, [r7, #4]
	ldr	r4, [r7, #8]
	cmp	r3, #1
	beq	lab80
	add	sl, sl, #1
	mov	r5, sl
	cmp r4, #0
	beq lab81
lab82: 	ldrb	r3, [r4, #4]
	ldr	r0, [r4, #8]
	cmp	r3, #1
	it	ne
	addne	r5, #1
	mov	r1, fp
	mov	r2, r5
push {r1, r2}
	ldr r1, =7072
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =7072
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab82
lab81: 	ldr	r3, [fp]
	cmp	r3, #0
	bge	lab83
	str	r5, [fp]
lab83: 	ldr	r7, [r7, #12]
	cmp	r7, #0
	bne	lab84
lab79: 	ldr	r3, [fp]
	cmp	r3, #0
	bge	lab85
	str	sl, [fp]
lab85: 	ldr	r6, [r6, #12]
	cmp	r6, #0
	beq	lab86
	ldrb	r3, [r6, #4]
	ldr	r7, [r6, #8]
	cmp	r3, #1
	bne	lab87
lab78: 	mov	sl, r9
	cmp	r7, #0
	beq	lab79
	ldrb	r3, [r7, #4]
	ldr	r4, [r7, #8]
	cmp	r3, #1
	beq	lab88
lab92: 	add	sl, sl, #1
	mov	r5, sl
	cmp r4, #0
	beq lab89
lab90: 	ldrb	r3, [r4, #4]
	ldr	r0, [r4, #8]
	cmp	r3, #1
	it	ne
	addne	r5, #1
	mov	r1, fp
	mov	r2, r5
push {r1, r2}
	ldr r1, =6576
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =6576
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab90
lab89: 	ldr	r3, [fp]
	cmp	r3, #0
	bge	lab91
	str	r5, [fp]
lab91: 	ldr	r7, [r7, #12]
	cmp	r7, #0
	beq	lab79
	ldrb	r3, [r7, #4]
	ldr	r4, [r7, #8]
	cmp	r3, #1
	bne	lab92
lab88: 	mov	r5, sl
	cmp	r4, #0
	beq	lab89
lab93: 	ldrb	r3, [r4, #4]
	ldr	r0, [r4, #8]
	cmp	r3, #1
	it	ne
	addne	r5, #1
	mov	r1, fp
	mov	r2, r5
push {r1, r2}
	ldr r1, =6495
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =6495
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab93
	b	lab89
lab80: 	mov	r5, sl
	cmp	r4, #0
	beq	lab81
lab94: 	ldrb	r3, [r4, #4]
	ldr	r0, [r4, #8]
	cmp	r3, #1
	it	ne
	addne	r5, #1
	mov	r1, fp
	mov	r2, r5
push {r1, r2}
	ldr r1, =8119
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =8119
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab94
	b	lab81
lab45: 	str	r3, [sp, #4]
	cmp	r6, #0
	beq	lab46
	mov	r8, r6
	ldrb	r3, [r8, #4]
	ldr	r7, [r8, #8]
	cmp	r3, #1
	beq	lab95
lab107: 	ldr	r6, [sp, #4]
	adds	r6, #1
	str	r6, [sp, #4]
	cmp	r7, #0
	beq	lab96
	mov	r9, r6
	mov	r6, r7
lab105: 	ldrb	r3, [r6, #4]
	ldr	r5, [r6, #8]
	cmp	r3, #1
	beq	lab97
	add	r9, r9, #1
	mov	sl, r9
	cmp r5, #0
	beq lab98
lab103: 	ldrb	r3, [r5, #4]
	ldr	r4, [r5, #8]
	cmp	r3, #1
	beq	lab99
	add	sl, sl, #1
	mov	r7, sl
	cmp r4, #0
	beq lab100
lab101: 	ldrb	r3, [r4, #4]
	ldr	r0, [r4, #8]
	cmp	r3, #1
	it	ne
	addne	r7, #1
	mov	r1, fp
	mov	r2, r7
push {r1, r2}
	ldr r1, =1076
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =1076
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab101
lab100: 	ldr	r3, [fp]
	cmp	r3, #0
	bge	lab102
	str	r7, [fp]
lab102: 	ldr	r5, [r5, #12]
	cmp	r5, #0
	bne	lab103
lab98: 	ldr	r3, [fp]
	cmp	r3, #0
	bge	lab104
	str	sl, [fp]
lab104: 	ldr	r6, [r6, #12]
	cmp	r6, #0
	bne	lab105
	mov	r6, r9
lab96: 	ldr	r3, [fp]
	cmp	r3, #0
	bge	lab106
	str	r6, [fp]
lab106: 	ldr	r8, [r8, #12]
	cmp	r8, #0
	beq	lab46
lab108: 	ldrb	r3, [r8, #4]
	ldr	r7, [r8, #8]
	cmp	r3, #1
	bne	lab107
lab95: 	ldr	r2, [sp, #4]
	mov	r0, r7
	mov	r1, fp
push {r1, r2}
	ldr r1, =142
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =142
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r8, [r8, #12]
	cmp	r8, #0
	bne	lab108
	b	lab46
lab99: 	mov	r7, sl
	cmp	r4, #0
	beq	lab100
lab109: 	ldrb	r3, [r4, #4]
	ldr	r0, [r4, #8]
	cmp	r3, #1
	it	ne
	addne	r7, #1
	mov	r1, fp
	mov	r2, r7
push {r1, r2}
	ldr r1, =5510
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =5510
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab109
	b	lab100
lab97: 	mov	sl, r9
	cmp	r5, #0
	beq	lab98
	ldrb	r3, [r5, #4]
	ldr	r4, [r5, #8]
	cmp	r3, #1
	beq	lab110
lab114: 	add	sl, sl, #1
	mov	r7, sl
	cmp r4, #0
	beq lab111
lab112: 	ldrb	r3, [r4, #4]
	ldr	r0, [r4, #8]
	cmp	r3, #1
	it	ne
	addne	r7, #1
	mov	r1, fp
	mov	r2, r7
push {r1, r2}
	ldr r1, =6728
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =6728
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab112
lab111: 	ldr	r3, [fp]
	cmp	r3, #0
	bge	lab113
	str	r7, [fp]
lab113: 	ldr	r5, [r5, #12]
	cmp	r5, #0
	beq	lab98
lab115: 	ldrb	r3, [r5, #4]
	ldr	r4, [r5, #8]
	cmp	r3, #1
	bne	lab114
lab110: 	mov	r0, r4
	mov	r2, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =5364
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =5364
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r5, [r5, #12]
	cmp	r5, #0
	bne	lab115
	b	lab98
lab43: 	mov	r0, r2
	mov	r1, fp
	ldr	r2, [sp, #20]
push {r1, r2}
	ldr r1, =750
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =750
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #12]
	str	r3, [sp, #16]
	cmp	r3, #0
	bne	lab63
	b	lab42
lab41: 	mov	r0, r2
	mov	r1, fp
	ldr	r2, [sp, #32]
push {r1, r2}
	ldr r1, =4773
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =4773
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #24]
	ldr	r3, [r3, #12]
	str	r3, [sp, #24]
	cmp	r3, #0
	bne	lab65
	b	lab116
lab39: 	mov	r0, r2
	mov	r1, r9
	ldr	r2, [sp, #36]	
push {r1, r2}
	ldr r1, =2468
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =2468
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #28]
	ldr	r3, [r3, #12]
	str	r3, [sp, #28]
	cmp	r3, #0
	bne	lab67
	b	lab38
lab37: 	mov	r0, r2
	mov	r1, r9
	ldr	r2, [sp, #44]	
push {r1, r2}
	ldr r1, =6164
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =6164
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #40]	
	ldr	r3, [r3, #12]
	str	r3, [sp, #40]	
	cmp	r3, #0
	bne	lab69
	b	lab36
sglib___rbtree_delete_rightmost_leaf:
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r5, [r0, #0]
	ldr	r6, [r5, #12]
	mov	r4, r0
	cmp r6, #0
	beq lab117
	ldr	r7, [r6, #12]
	cmp r7, #0
	beq lab118
	ldr	r0, [r7, #12]
	cmp r0, #0
	beq lab119
	ldr	r2, [r0, #12]
	cmp	r2, #0
	beq	lab120
	adds	r0, #12
push {r1, r2}
	ldr r1, =36
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_delete_rightmost_leaf
	push {r1, r2}
	ldr r1, =36
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab121
lab132: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =3450
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab118: 	str	r6, [r1, #0]
	ldr	r3, [r6, #8]
	cmp r3, #0
	beq lab122
	ldrb	r0, [r6, #4]
	cmp	r0, #0
	bne	lab123
	ldrb	r2, [r3, #4]
	cmp	r2, #0
	bne	lab124
	str	r3, [r5, #12]
	b	lab125
lab117: 	str	r5, [r1, #0]
	ldr	r3, [r5, #8]
	cmp r3, #0
	beq lab126
	ldrb	r2, [r5, #4]
	cmp r2, #0
	beq lab127
	mov	r0, r6
lab128: 	movs	r2, #0
	strb	r2, [r3, #4]
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =3429
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab127: 	ldrb	r0, [r3, #4]
	clz	r0, r0
	lsrs	r0, r0, #5
	b	lab128
lab119: 	str	r7, [r1, #0]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	lab129
	ldrb	r2, [r7, #4]
	cmp r2, #0
	bne lab130
	ldrb	r1, [r3, #4]
	cmp	r1, #0
	bne	lab131
	str	r3, [r6, #12]
lab135: 	add	r0, r5, #12
push {r1, r2}
	ldr r1, =1630
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_fix_right_deletion_discrepancy
	push {r1, r2}
	ldr r1, =1630
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab125
	b	lab132
lab122: 	str	r3, [r5, #12]
	ldrb	r3, [r6, #4]
	cmp	r3, #0
	bne	lab132
lab125: 	mov	r0, r4
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	sglib___rbtree_fix_right_deletion_discrepancy
lab126: 	str	r3, [r0, #0]
	ldrb	r0, [r5, #4]
	clz	r0, r0
	lsrs	r0, r0, #5
	nop
	push {r1, r2}
	ldr r1, =7412
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab123: 	strb	r7, [r3, #4]
	mov	r0, r7
	str	r3, [r5, #12]
	nop
	push {r1, r2}
	ldr r1, =7648
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab120: 	str	r0, [r1, #0]
	ldr	r3, [r0, #8]
	cmp r3, #0
	beq lab133
	ldrb	r0, [r0, #4]
	cmp r0, #0
	beq lab134
	strb	r2, [r3, #4]
	mov	r0, r2
	str	r3, [r7, #12]
	nop
	push {r1, r2}
	ldr r1, =862
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab130: 	strb	r0, [r3, #4]
	str	r3, [r6, #12]
	nop
	push {r1, r2}
	ldr r1, =3707
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab124: 	strb	r0, [r3, #4]
	str	r3, [r5, #12]
	nop
	push {r1, r2}
	ldr r1, =94
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab133: 	str	r3, [r7, #12]
	ldrb	r3, [r0, #4]
	cmp	r3, #0
	bne	lab132
lab136: 	add	r0, r6, #12
push {r1, r2}
	ldr r1, =921
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_fix_right_deletion_discrepancy
	push {r1, r2}
	ldr r1, =921
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab135
	b	lab132
lab129: 	str	r3, [r6, #12]
	ldrb	r3, [r7, #4]
	cmp	r3, #0
	beq	lab135
	b	lab132
lab121: 	add	r0, r7, #12
push {r1, r2}
	ldr r1, =3793
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_fix_right_deletion_discrepancy
	push {r1, r2}
	ldr r1, =3793
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab136
	b	lab132
lab134: 	ldrb	r2, [r3, #4]
	cmp r2, #0
	bne lab137
	str	r3, [r7, #12]
	b	lab136
lab131: 	strb	r2, [r3, #4]
	mov	r0, r2
	str	r3, [r6, #12]
	nop
	push {r1, r2}
	ldr r1, =1514
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab137: 	strb	r0, [r3, #4]
	str	r3, [r7, #12]
	nop
	push {r1, r2}
	ldr r1, =6780
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
sglib___rbtree_add_recursive:
	push	{r4, r5, r6, lr}
	ldr	r4, [r0, #0]
	mov	r5, r0
	cmp	r4, #0
	beq	lab138
	ldr	r3, [r1, #0]
	ldr	r2, [r4, #0]
	subs	r2, r3, r2
	cmp	r2, #0
	blt	lab139
	bne	lab140
	cmp	r4, r1
	bls	lab140
lab139: 	ldr	r6, [r4, #8]
	cmp	r6, #0
	beq	lab141
	ldr	r2, [r6, #0]
	subs	r3, r3, r2
	cmp	r3, #0
	blt	lab142
	bne	lab143
	cmp	r1, r6
	bcs	lab143
lab142: 	add	r0, r6, #8
push {r1, r2}
	ldr r1, =5455
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_add_recursive
	push {r1, r2}
	ldr r1, =5455
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r3, [r6, #4]
	cmp	r3, #0
	beq	lab144
lab157: 	ldrb	r3, [r4, #4]
	cmp r3, #0
	bne lab145
	ldr	r3, [r5, #0]
	ldrd	r2, r1, [r3, #8]
	cmp r1, #0
	beq lab146
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	beq	lab147
lab146: 	ldrb	r1, [r2, #4]
	cmp	r1, #1
	beq	lab148
lab145:	nop
	push {r1, r2}
	ldr r1, =2436
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab140: 	ldr	r6, [r4, #12]
	cmp	r6, #0
	beq	lab149
	ldr	r2, [r6, #0]
	subs	r3, r3, r2
	cmp	r3, #0
	blt	lab150
	bne	lab151
	cmp	r1, r6
	bcs	lab151
lab150: 	add	r0, r6, #8
push {r1, r2}
	ldr r1, =1487
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_add_recursive
	push {r1, r2}
	ldr r1, =1487
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r3, [r6, #4]
	cmp	r3, #0
	beq	lab152
lab162: 	ldrb	r3, [r4, #4]
	cmp	r3, #0
	bne	lab145
	ldr	r3, [r5, #0]
	ldrd	r1, r2, [r3, #8]
	cmp r1, #0
	beq lab153
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	beq	lab154
lab153: 	ldrb	r1, [r2, #4]
	cmp	r1, #1
	bne	lab145
	ldr	r1, [r2, #12]
	cmp r1, #0
	beq lab155
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	beq	lab156
lab155: 	ldr	r1, [r2, #8]
	cmp	r1, #0
	beq	lab145
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	bne	lab145
	ldrd	r4, r6, [r1, #8]
	str	r6, [r2, #8]
	str	r4, [r3, #12]
	str	r2, [r1, #12]
	movs	r2, #0
	str	r3, [r1, #8]
	strb	r2, [r1, #4]
	strb	r0, [r3, #4]
	str	r1, [r5, #0]
	nop
	push {r1, r2}
	ldr r1, =4881
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab138: 	movs	r3, #1
	strb	r3, [r1, #4]
	str	r1, [r0, #0]
	nop
	push {r1, r2}
	ldr r1, =4904
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab143: 	add	r0, r6, #12
push {r1, r2}
	ldr r1, =37
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_add_recursive
	push {r1, r2}
	ldr r1, =37
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r3, [r6, #4]
	cmp	r3, #0
	bne	lab157
	ldr	r3, [r4, #8]
	ldrd	r1, r2, [r3, #8]
	cmp r1, #0
	beq lab158
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	beq	lab159
lab158: 	ldrb	r1, [r2, #4]
	cmp	r1, #1
	bne	lab157
	ldr	r1, [r2, #12]
	cmp r1, #0
	beq lab160
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	beq	lab161
lab160: 	ldr	r1, [r2, #8]
	cmp	r1, #0
	beq	lab157
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	bne	lab157
	ldrd	r6, ip, [r1, #8]
	str	ip, [r2, #8]
	str	r6, [r3, #12]
	strd	r3, r2, [r1, #8]
	movs	r2, #0
	strb	r2, [r1, #4]
	strb	r0, [r3, #4]
	str	r1, [r4, #8]
	b	lab157
lab151: 	add	r0, r6, #12
push {r1, r2}
	ldr r1, =1120
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_add_recursive
	push {r1, r2}
	ldr r1, =1120
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r3, [r6, #4]
	cmp	r3, #0
	bne	lab162
	ldr	r3, [r4, #12]
	ldrd	r1, r2, [r3, #8]
	cmp r1, #0
	beq lab163
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	beq	lab164
lab163: 	ldrb	r1, [r2, #4]
	cmp	r1, #1
	bne	lab162
	ldr	r1, [r2, #12]
	cmp r1, #0
	beq lab165
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	beq	lab166
lab165: 	ldr	r1, [r2, #8]
	cmp	r1, #0
	beq	lab162
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	bne	lab162
	ldrd	r6, ip, [r1, #8]
	str	ip, [r2, #8]
	str	r6, [r3, #12]
	strd	r3, r2, [r1, #8]
	movs	r2, #0
	strb	r2, [r1, #4]
	strb	r0, [r3, #4]
	str	r1, [r4, #12]
	b	lab162
lab141: 	movs	r3, #1
	strb	r3, [r1, #4]
	str	r1, [r4, #8]
	b	lab157
lab149: 	movs	r3, #1
	strb	r3, [r1, #4]
	str	r1, [r4, #12]
	b	lab162
lab148: 	ldr	r1, [r2, #8]
	cmp r1, #0
	beq lab167
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	beq	lab168
lab167: 	ldr	r1, [r2, #12]
	cmp	r1, #0
	beq	lab145
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	bne	lab145
	ldrd	r6, r4, [r1, #8]
	str	r6, [r2, #12]
	str	r4, [r3, #8]
	str	r2, [r1, #8]
	movs	r2, #0
	str	r3, [r1, #12]
	strb	r2, [r1, #4]
	strb	r0, [r3, #4]
	str	r1, [r5, #0]
	nop
	push {r1, r2}
	ldr r1, =950
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab144: 	ldr	r3, [r4, #8]
	ldrd	r2, r1, [r3, #8]
	cmp r1, #0
	beq lab169
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	beq	lab170
lab169: 	ldrb	r1, [r2, #4]
	cmp	r1, #1
	bne	lab157
	ldr	r1, [r2, #8]
	cmp r1, #0
	beq lab171
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	beq	lab172
lab171: 	ldr	r1, [r2, #12]
	cmp	r1, #0
	beq	lab157
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	bne	lab157
	ldrd	ip, r6, [r1, #8]
	str	ip, [r2, #12]
	str	r6, [r3, #8]
	strd	r2, r3, [r1, #8]
	movs	r2, #0
	strb	r2, [r1, #4]
	strb	r0, [r3, #4]
	str	r1, [r4, #8]
	b	lab157
lab152: 	ldr	r3, [r4, #12]
	ldrd	r2, r1, [r3, #8]
	cmp r1, #0
	beq lab173
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	beq	lab174
lab173: 	ldrb	r1, [r2, #4]
	cmp	r1, #1
	bne	lab162
	ldr	r1, [r2, #8]
	cmp r1, #0
	beq lab175
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	beq	lab176
lab175: 	ldr	r1, [r2, #12]
	cmp	r1, #0
	beq	lab162
	ldrb	r0, [r1, #4]
	cmp	r0, #1
	bne	lab162
	ldrd	ip, r6, [r1, #8]
	str	ip, [r2, #12]
	str	r6, [r3, #8]
	strd	r2, r3, [r1, #8]
	movs	r2, #0
	strb	r2, [r1, #4]
	strb	r0, [r3, #4]
	str	r1, [r4, #12]
	b	lab162
lab147: 	ldrb	r0, [r2, #4]
	cmp	r0, #1
	bne	lab145
	ldr	r0, [r2, #8]
	cmp r0, #0
	beq lab177
	ldrb	r0, [r0, #4]
	cmp	r0, #1
	beq	lab178
lab177: 	ldr	r0, [r2, #12]
	cmp	r0, #0
	beq	lab145
lab180: 	ldrb	r0, [r0, #4]
	cmp	r0, #1
	bne	lab145
lab178: 	movs	r0, #0
	movs	r4, #1
	strb	r0, [r2, #4]
	strb	r0, [r1, #4]
	strb	r4, [r3, #4]
	nop
	push {r1, r2}
	ldr r1, =3093
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab154: 	ldrb	r0, [r2, #4]
	cmp	r0, #1
	bne	lab145
	ldr	r0, [r2, #12]
	cmp r0, #0
	beq lab179
	ldrb	r0, [r0, #4]
	cmp	r0, #1
	beq	lab178
lab179: 	ldr	r0, [r2, #8]
	cmp	r0, #0
	bne	lab180
	nop
	push {r1, r2}
	ldr r1, =4297
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab170: 	ldrb	r0, [r2, #4]
	cmp	r0, #1
	bne	lab157
	ldr	r0, [r2, #8]
	cmp r0, #0
	beq lab181
	ldrb	r0, [r0, #4]
	cmp	r0, #1
	beq	lab182
lab181: 	ldr	r0, [r2, #12]
	cmp	r0, #0
	beq	lab157
lab186: 	ldrb	r0, [r0, #4]
	cmp	r0, #1
	bne	lab157
lab182: 	movs	r0, #0
	strb	r0, [r2, #4]
	movs	r2, #1
	strb	r0, [r1, #4]
	strb	r2, [r3, #4]
	b	lab157
lab174: 	ldrb	r0, [r2, #4]
	cmp	r0, #1
	bne	lab162
	ldr	r0, [r2, #8]
	cmp r0, #0
	beq lab183
	ldrb	r0, [r0, #4]
	cmp	r0, #1
	beq	lab184
lab183: 	ldr	r0, [r2, #12]
	cmp	r0, #0
	beq	lab162
lab188: 	ldrb	r0, [r0, #4]
	cmp	r0, #1
	bne	lab162
lab184: 	movs	r0, #0
	strb	r0, [r2, #4]
	movs	r2, #1
	strb	r0, [r1, #4]
	strb	r2, [r3, #4]
	b	lab162
lab159: 	ldrb	r0, [r2, #4]
	cmp	r0, #1
	bne	lab157
	ldr	r0, [r2, #12]
	cmp r0, #0
	beq lab185
	ldrb	r0, [r0, #4]
	cmp	r0, #1
	beq	lab182
lab185: 	ldr	r0, [r2, #8]
	cmp	r0, #0
	bne	lab186
	b	lab157
lab164: 	ldrb	r0, [r2, #4]
	cmp	r0, #1
	bne	lab162
	ldr	r0, [r2, #12]
	cmp r0, #0
	beq lab187
	ldrb	r0, [r0, #4]
	cmp	r0, #1
	beq	lab184
lab187: 	ldr	r0, [r2, #8]
	cmp	r0, #0
	bne	lab188
	b	lab162
lab168: 	ldr	r4, [r2, #12]
	str	r4, [r3, #8]
	str	r1, [r2, #8]
	movs	r1, #0
	str	r3, [r2, #12]
	strb	r0, [r3, #4]
	strb	r1, [r2, #4]
	str	r2, [r5, #0]
	nop
	push {r1, r2}
	ldr r1, =8167
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab156: 	ldr	r4, [r2, #8]
	str	r4, [r3, #12]
	str	r1, [r2, #12]
	movs	r1, #0
	str	r3, [r2, #8]
	strb	r0, [r3, #4]
	strb	r1, [r2, #4]
	str	r2, [r5, #0]
	nop
	push {r1, r2}
	ldr r1, =7504
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab172: 	ldr	r6, [r2, #12]
	str	r6, [r3, #8]
	strd	r1, r3, [r2, #8]
	strb	r0, [r3, #4]
	movs	r3, #0
	strb	r3, [r2, #4]
	str	r2, [r4, #8]
	b	lab157
lab161: 	ldr	r6, [r2, #8]
	str	r6, [r3, #12]
	strd	r3, r1, [r2, #8]
	strb	r0, [r3, #4]
	movs	r3, #0
	strb	r3, [r2, #4]
	str	r2, [r4, #8]
	b	lab157
lab176: 	ldr	r6, [r2, #12]
	str	r6, [r3, #8]
	strd	r1, r3, [r2, #8]
	strb	r0, [r3, #4]
	movs	r3, #0
	strb	r3, [r2, #4]
	str	r2, [r4, #12]
	b	lab162
lab166: 	ldr	r6, [r2, #8]
	str	r6, [r3, #12]
	strd	r3, r1, [r2, #8]
	strb	r0, [r3, #4]
	movs	r3, #0
	strb	r3, [r2, #4]
	str	r2, [r4, #12]
	b	lab162
sglib_dllist_add:
	ldr	r3, [r0, #0]
	cmp r3, #0
	beq lab189
	ldr	r2, [r3, #8]
	strd	r3, r2, [r1, #4]
	ldr	r3, [r0, #0]
	str	r1, [r3, #8]
	ldr	r3, [r1, #8]
	cmp r3, #0
	beq lab190
	str	r1, [r3, #4]
lab190: 	bx	lr
lab189: 	str	r1, [r0, #0]
	str	r3, [r1, #8]
	ldr	r2, [r0, #0]
	str	r3, [r2, #4]
	bx	lr
sglib_dllist_add_after:
	ldr	r3, [r0, #0]
	cmp r3, #0
	beq lab191
	ldr	r3, [r3, #4]
	str	r3, [r1, #4]
	ldr	r3, [r0, #0]
	str	r3, [r1, #8]
	str	r1, [r3, #4]
	ldr	r3, [r1, #4]
	cmp r3, #0
	beq lab192
	str	r1, [r3, #8]
lab192: 	bx	lr
lab191: 	str	r1, [r0, #0]
	str	r3, [r1, #8]
	ldr	r2, [r0, #0]
	str	r3, [r2, #4]
	bx	lr
sglib_dllist_add_before:
	ldr	r3, [r0, #0]
	cmp r3, #0
	beq lab193
	ldr	r2, [r3, #8]
	strd	r3, r2, [r1, #4]
	ldr	r3, [r0, #0]
	str	r1, [r3, #8]
	ldr	r3, [r1, #8]
	cmp r3, #0
	beq lab194
	str	r1, [r3, #4]
lab194: 	bx	lr
lab193: 	str	r1, [r0, #0]
	str	r3, [r1, #8]
	ldr	r2, [r0, #0]
	str	r3, [r2, #4]
	bx	lr
sglib_dllist_add_if_not_member:
	push	{r4, r5}
	ldr	r5, [r0, #0]
	cmp r5, #0
	beq lab195
	ldr	r4, [r1, #0]
	mov	r3, r5
	b	lab196
lab198: 	ldr	r3, [r3, #8]
	cmp r3, #0
	beq lab197
lab196: 	ldr	ip, [r3]
	cmp	ip, r4
	bne	lab198
lab203: 	str	r3, [r2, #0]
lab204: 	clz	r0, r3
	lsrs	r0, r0, #5
	pop	{r4, r5}
	bx	lr
lab197: 	ldr	r3, [r5, #4]
	cmp r3, #0
	bne lab199
lab195: 	movs	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [r0, #0]
	cmp r3, #0
	beq lab200
	ldr	r4, [r3, #8]
	strd	r3, r4, [r1, #4]
	ldr	r3, [r0, #0]
	str	r1, [r3, #8]
	ldr	r3, [r1, #8]
	cmp r3, #0
	beq lab201
	str	r1, [r3, #4]
lab201: 	ldr	r3, [r2, #0]
	clz	r0, r3
	lsrs	r0, r0, #5
	pop	{r4, r5}
	bx	lr
lab202: 	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	lab195
lab199: 	ldr	r5, [r3, #0]
	cmp	r4, r5
	bne	lab202
	b	lab203
lab200: 	str	r1, [r0, #0]
	str	r3, [r1, #8]
	ldr	r1, [r0, #0]
	str	r3, [r1, #4]
	ldr	r3, [r2, #0]
	b	lab204
	nop
sglib_dllist_add_after_if_not_member:
	push	{r4, r5}
	ldr	r5, [r0, #0]
	cmp r5, #0
	beq lab205
	ldr	r4, [r1, #0]
	mov	r3, r5
	b	lab206
lab208: 	ldr	r3, [r3, #8]
	cmp r3, #0
	beq lab207
lab206: 	ldr	ip, [r3]
	cmp	ip, r4
	bne	lab208
lab213: 	str	r3, [r2, #0]
lab214: 	clz	r0, r3
	lsrs	r0, r0, #5
	pop	{r4, r5}
	bx	lr
lab207: 	ldr	r3, [r5, #4]
	cmp r3, #0
	bne lab209
lab205: 	movs	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [r0, #0]
	cmp r3, #0
	beq lab210
	ldr	r3, [r3, #4]
	str	r3, [r1, #4]
	ldr	r3, [r0, #0]
	str	r3, [r1, #8]
	str	r1, [r3, #4]
	ldr	r3, [r1, #4]
	cmp r3, #0
	beq lab211
	str	r1, [r3, #8]
lab211: 	ldr	r3, [r2, #0]
	clz	r0, r3
	lsrs	r0, r0, #5
	pop	{r4, r5}
	bx	lr
lab212: 	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	lab205
lab209: 	ldr	r5, [r3, #0]
	cmp	r4, r5
	bne	lab212
	b	lab213
lab210: 	str	r1, [r0, #0]
	str	r3, [r1, #8]
	ldr	r1, [r0, #0]
	str	r3, [r1, #4]
	ldr	r3, [r2, #0]
	b	lab214
	nop
sglib_dllist_add_before_if_not_member:
	push	{r4, r5}
	ldr	r5, [r0, #0]
	cmp r5, #0
	beq lab215
	ldr	r4, [r1, #0]
	mov	r3, r5
	b	lab216
lab218: 	ldr	r3, [r3, #8]
	cmp r3, #0
	beq lab217
lab216: 	ldr	ip, [r3]
	cmp	ip, r4
	bne	lab218
lab223: 	str	r3, [r2, #0]
lab224: 	clz	r0, r3
	lsrs	r0, r0, #5
	pop	{r4, r5}
	bx	lr
lab217: 	ldr	r3, [r5, #4]
	cmp r3, #0
	bne lab219
lab215: 	movs	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [r0, #0]
	cmp r3, #0
	beq lab220
	ldr	r4, [r3, #8]
	strd	r3, r4, [r1, #4]
	ldr	r3, [r0, #0]
	str	r1, [r3, #8]
	ldr	r3, [r1, #8]
	cmp r3, #0
	beq lab221
	str	r1, [r3, #4]
lab221: 	ldr	r3, [r2, #0]
	clz	r0, r3
	lsrs	r0, r0, #5
	pop	{r4, r5}
	bx	lr
lab222: 	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	lab215
lab219: 	ldr	r5, [r3, #0]
	cmp	r4, r5
	bne	lab222
	b	lab223
lab220: 	str	r1, [r0, #0]
	str	r3, [r1, #8]
	ldr	r1, [r0, #0]
	str	r3, [r1, #4]
	ldr	r3, [r2, #0]
	b	lab224
	nop
sglib_dllist_concat:
	ldr	r3, [r0, #0]
	cmp r3, #0
	beq lab225
	cmp r1, #0
	beq lab226
lab227: 	mov	r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	lab227
	strd	r3, r2, [r1, #4]
	str	r1, [r2, #4]
	ldr	r3, [r1, #4]
	cmp r3, #0
	beq lab226
	str	r1, [r3, #8]
lab226: 	bx	lr
lab225: 	str	r1, [r0, #0]
	bx	lr
sglib_dllist_delete:
	ldr	r2, [r0, #0]
	cmp	r2, r1
	push	{r4}
	beq	lab228
	ldr	r4, [r1, #4]
	cmp r4, #0
	beq lab229
	ldr	r3, [r1, #8]
lab232: 	str	r3, [r4, #8]
lab229: 	ldr	r3, [r1, #8]
	cmp r3, #0
	beq lab230
lab233: 	str	r4, [r3, #4]
lab230: 	pop	{r4}
	str	r2, [r0, #0]
	bx	lr
lab228: 	ldrd	r4, r3, [r2, #4]
	cmp r3, #0
	beq lab231
	mov	r2, r3
	cmp	r4, #0
	bne	lab232
	b	lab233
lab231: 	mov	r2, r4
	cmp	r4, #0
	bne	lab232
	b	lab230
	nop
sglib_dllist_delete_if_member:
	push	{r4, r5}
	ldr	r5, [r0, #0]
	cmp r5, #0
	beq lab234
	ldr	r4, [r1, #0]
	mov	r3, r5
	b	lab235
lab237: 	ldr	r3, [r3, #8]
	cmp r3, #0
	beq lab236
lab235: 	ldr	r1, [r3, #0]
	cmp	r1, r4
	bne	lab237
	str	r3, [r2, #0]
	ldr	r5, [r0, #0]
	cmp	r5, r3
	beq	lab238
lab246: 	ldr	r4, [r3, #4]
	cmp r4, #0
	beq lab239
	ldr	r1, [r3, #8]
lab242: 	str	r1, [r4, #8]
lab239: 	ldr	r1, [r3, #8]
	cmp r1, #0
	beq lab240
lab243: 	str	r4, [r1, #4]
lab240: 	str	r5, [r0, #0]
	ldr	r0, [r2, #0]
	subs	r0, #0
	it	ne
	movne	r0, #1
	pop	{r4, r5}
	bx	lr
lab238: 	ldrd	r4, r1, [r3, #4]
	cmp r1, #0
	beq lab241
	mov	r5, r1
	cmp	r4, #0
	bne	lab242
	b	lab243
lab236: 	ldr	r3, [r5, #4]
	cmp r3, #0
	bne lab244
lab234: 	movs	r0, #0
	pop	{r4, r5}
	str	r0, [r2, #0]
	bx	lr
lab245: 	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	lab234
lab244: 	ldr	r1, [r3, #0]
	cmp	r4, r1
	bne	lab245
	str	r3, [r2, #0]
	ldr	r5, [r0, #0]
	cmp	r5, r3
	bne	lab246
	b	lab238
lab241: 	mov	r5, r4
	cmp	r4, #0
	bne	lab242
	b	lab240
	nop
sglib_dllist_is_member:
	cmp r0, #0
	beq lab247
	cmp	r0, r1
	beq	lab248
	mov	r3, r0
	b	lab249
lab250: 	cmp	r1, r3
	beq	lab248
lab249: 	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	lab250
	ldr	r0, [r0, #4]
	cmp r0, #0
	bne lab251
	mov	r0, r3
lab247: 	bx	lr
lab252: 	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	lab247
lab251: 	cmp	r1, r0
	bne	lab252
lab248: 	movs	r0, #1
	bx	lr
	nop
sglib_dllist_find_member:
	mov	ip, r0
	cmp r0, #0
	beq lab253
	ldr	r2, [r1, #0]
	b	lab254
lab256: 	ldr	r0, [r0, #8]
	cmp r0, #0
	beq lab255
lab254: 	ldr	r3, [r0, #0]
	cmp	r3, r2
	bne	lab256
	bx	lr
lab253: 	bx	lr
lab255: 	ldr	r0, [ip, #4]
	cmp r0, #0
	bne lab257
	b	lab258
lab259: 	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	lab253
lab257: 	ldr	r3, [r0, #0]
	cmp	r2, r3
	bne	lab259
	bx	lr
lab258: 	bx	lr
	nop
sglib_dllist_get_first:
	mov	r3, r0
	cmp r0, #0
	beq lab260
lab261: 	mov	r0, r3
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	lab261
	bx	lr
lab260: 	bx	lr
sglib_dllist_get_last:
	mov	r3, r0
	cmp r0, #0
	beq lab262
lab263: 	mov	r0, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	lab263
	bx	lr
lab262: 	bx	lr
sglib_dllist_sort:
	push	{r4, r5, r6, r7, lr}
	ldr	r5, [r0, #0]
	sub	sp, #12
	cmp	r5, #0
	beq	lab264
	mov	r6, r0
lab265: 	mov	r0, r5
	ldr	r5, [r5, #8]
	cmp	r5, #0
	bne	lab265
	str	r5, [sp, #4]
	mov	lr, #1
	mov	r1, r5
	add	ip, sp, #4
	mov	r4, r5
lab284: 	cmp	lr, #1
	beq	lab266
lab279: 	mov	r2, r0
	movs	r3, #1
	b	lab267
lab269: 	cmp	r2, #0
	beq	lab268
lab267: 	adds	r3, #1
	cmp	r3, lr
	ldr	r2, [r2, #4]
	bne	lab269
	cmp	r2, #0
	beq	lab268
	ldr	r3, [r2, #4]
	str	r4, [r2, #4]
	cmp	r3, #0
	beq	lab270
	mov	r1, r3
	movs	r2, #1
	b	lab271
lab273: 	cmp r1, #0
	beq lab272
lab271: 	adds	r2, #1
	cmp	r2, lr
	ldr	r1, [r1, #4]
	bne	lab273
lab280: 	cmp r1, #0
	beq lab272
	ldr	r2, [r1, #4]
	str	r4, [r1, #4]
	mov	r1, r2
lab272: 	cmp r3, #0
	beq lab274
lab276: 	ldr	r2, [r0, #0]
	ldr	r7, [r3, #0]
	subs	r2, r2, r7
	cmp	r2, #0
	blt	lab275
	str	r3, [ip]
	add	ip, r3, #4
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	lab276
lab274: 	str	r0, [ip]
	mov	r3, r0
	mov	r0, r1
lab277: 	mov	ip, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	lab277
	add	ip, ip, #4
	cmp r0, #0
	beq lab278
	cmp	lr, #1
	mov	r1, #1
	bne	lab279
lab266: 	ldr	r1, [r0, #4]
	str	r4, [r0, #4]
	mov	r3, r1
	b	lab280
lab275: 	str	r0, [ip]
	ldr	r2, [r0, #4]
	add	ip, r0, #4
	cmp r2, #0
	beq lab281
	mov	r0, r2
	b	lab272
lab281: 	str	r3, [r0, #4]
	mov	r0, r1
	b	lab277
lab268: 	str	r0, [ip]
	mov	lr, lr, lsl #1
	cmp r1, #0
	beq lab282
	ldr	r0, [sp, #4]
	str	r4, [sp, #4]
	cmp r0, #0
	beq lab283
lab285: 	movs	r1, #0
	add	ip, sp, #4
	b	lab284
lab278: 	ldr	r0, [sp, #4]
	str	r4, [sp, #4]
	mov	lr, lr, lsl #1
	cmp	r0, #0
	bne	lab285
lab283: 	str	r0, [r6, #0]
lab264: 	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =912
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
lab270: 	str	r0, [ip]
	mov	r3, r0
	movs	r0, #0
	b	lab277
lab282: 	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	lab283
	mov	r3, r0
lab286: 	str	r5, [r3, #8]
	mov	r5, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	lab286
	str	r0, [r6, #0]
	b	lab264
sglib_dllist_len:
	mov	r2, r0
	cmp r0, #0
	beq lab287
	mov	r3, r0
	movs	r0, #0
lab288: 	ldr	r3, [r3, #8]
	adds	r0, #1
	cmp	r3, #0
	bne	lab288
	ldr	r2, [r2, #4]
	cmp r2, #0
	beq lab287
lab289: 	ldr	r2, [r2, #4]
	adds	r3, #1
	cmp	r2, #0
	bne	lab289
	add	r0, r3
	bx	lr
lab287: 	bx	lr
	nop
sglib_dllist_reverse:
	ldr	r1, [r0, #0]
	cmp r1, #0
	beq lab290
	ldrd	r2, r3, [r1, #4]
	strd	r3, r2, [r1, #4]
	cmp r3, #0
	beq lab291
lab292: 	ldr	r0, [r3, #4]
	mov	r1, r3
	ldr	r3, [r3, #8]
	strd	r3, r0, [r1, #4]
	cmp	r3, #0
	bne	lab292
lab291: 	cmp r2, #0
	beq lab290
lab293: 	mov	r3, r2
	ldr	r2, [r2, #4]
	ldr	r1, [r3, #8]
	strd	r1, r2, [r3, #4]
	cmp	r2, #0
	bne	lab293
lab290: 	bx	lr
	nop
sglib_dllist_it_current:
	ldr	r0, [r0, #0]
	bx	lr
sglib_dllist_it_next:
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r5, [r0, #12]
	ldr	r4, [r0, #4]
	movs	r3, #0
	mov	r6, r0
	str	r3, [r0, #4]
	cmp r5, #0
	beq lab294
	ldr	r7, [r0, #16]
	cmp r4, #0
	bne lab295
	b	lab296
lab298: 	ldr	r4, [r4, #8]
	cmp r4, #0
	beq lab297
lab295: 	mov	r1, r4
	mov	r0, r7
	blx	r5
	cmp	r0, #0
	bne	lab298
lab299: 	ldr	r3, [r4, #8]
	str	r3, [r6, #4]
	str	r4, [r6, #0]
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
lab294: 	cmp	r4, #0
	bne	lab299
	ldr	r4, [r0, #8]
	str	r5, [r0, #8]
lab301: 	cmp r4, #0
	beq lab300
lab302: 	ldr	r3, [r4, #4]
	str	r3, [r6, #8]
	str	r4, [r6, #0]
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
lab297: 	ldr	r5, [r6, #12]
	ldr	r4, [r6, #8]
	movs	r3, #0
	str	r3, [r6, #8]
	cmp	r5, #0
	beq	lab301
	ldr	r7, [r6, #16]
lab304: 	cmp r4, #0
	beq lab300
lab303: 	mov	r0, r4
	mov	r1, r7
	blx	r5
	cmp	r0, #0
	beq	lab302
	ldr	r4, [r4, #4]
	cmp	r4, #0
	bne	lab303
lab300: 	movs	r4, #0
	str	r4, [r6, #0]
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
lab296: 	ldr	r4, [r0, #8]
	str	r3, [r0, #8]
	b	lab304
	nop
sglib_dllist_it_init_on_equal:
	strd	r2, r3, [r0, #12]
	strd	r1, r1, [r0, #4]
	cmp r1, #0
	beq lab305
	ldr	r3, [r1, #4]
	str	r3, [r0, #8]
lab305: 	b	sglib_dllist_it_next
	nop
sglib_dllist_it_init:
	movs	r3, #0
	strd	r3, r3, [r0, #12]
	strd	r1, r1, [r0, #4]
	cmp r1, #0
	beq lab306
	ldr	r3, [r1, #4]
	str	r3, [r0, #8]
lab306: 	b	sglib_dllist_it_next
ilist_hash_function:
	ldr	r0, [r0, #0]
	bx	lr
sglib_ilist_is_member:
	cmp r0, #0
	beq lab307
	cmp	r0, r1
	bne	lab308
	b	lab309
lab310: 	cmp	r1, r0
	beq	lab309
lab308: 	ldr	r0, [r0, #4]
	cmp	r0, #0
	bne	lab310
lab307: 	bx	lr
lab309: 	movs	r0, #1
	bx	lr
sglib_ilist_find_member:
	cmp r0, #0
	beq lab311
	ldr	r2, [r1, #0]
	b	lab312
lab313: 	ldr	r0, [r0, #4]
	cmp r0, #0
	beq lab311
lab312: 	ldr	r3, [r0, #0]
	cmp	r3, r2
	bne	lab313
lab311: 	bx	lr
	nop
sglib_ilist_add_if_not_member:
	ldr	r3, [r0, #0]
	push	{r4}
	cmp r3, #0
	beq lab314
	ldr	r4, [r1, #0]
	b	lab315
lab316: 	ldr	r3, [r3, #4]
	cmp r3, #0
	beq lab314
lab315: 	ldr	ip, [r3]
	cmp	ip, r4
	bne	lab316
	clz	r0, r3
	lsrs	r0, r0, #5
	pop	{r4}
	str	r3, [r2, #0]
	bx	lr
lab314: 	movs	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [r0, #0]
	str	r3, [r1, #4]
	str	r1, [r0, #0]
	ldr	r3, [r2, #0]
	pop	{r4}
	clz	r0, r3
	lsrs	r0, r0, #5
	bx	lr
sglib_ilist_add:
	ldr	r3, [r0, #0]
	str	r3, [r1, #4]
	str	r1, [r0, #0]
	bx	lr
sglib_ilist_concat:
	ldr	r3, [r0, #0]
	cmp r3, #0
	beq lab317
lab318: 	mov	r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	lab318
	str	r1, [r2, #4]
	bx	lr
lab317: 	str	r1, [r0, #0]
	bx	lr
sglib_ilist_delete:
	ldr	r3, [r0, #0]
	cmp r3, #0
	bne lab319
	b	lab320
lab321: 	adds	r0, r3, #4
	ldr	r3, [r3, #4]
	cmp r3, #0
	beq lab320
lab319: 	cmp	r1, r3
	bne	lab321
	ldr	r3, [r1, #4]
	str	r3, [r0, #0]
	bx	lr
lab320: 	movs	r3, #0
	ldr	r3, [r3, #4]
	udf	#255	
sglib_ilist_delete_if_member:
	ldr	r3, [r0, #0]
	cmp r3, #0
	beq lab322
	push	{r4}
	ldr	r4, [r1, #0]
	b	lab323
lab325: 	adds	r0, r3, #4
	ldr	r3, [r3, #4]
	cmp r3, #0
	beq lab324
lab323: 	ldr	r1, [r3, #0]
	cmp	r1, r4
	bne	lab325
	str	r3, [r2, #0]
	ldr	r3, [r3, #4]
	str	r3, [r0, #0]
	ldr	r0, [r2, #0]
	pop	{r4}
	subs	r0, #0
	it	ne
	movne	r0, #1
	bx	lr
lab324: 	movs	r0, #0
	pop	{r4}
	str	r0, [r2, #0]
	bx	lr
lab322: 	movs	r0, #0
	str	r0, [r2, #0]
	bx	lr
	nop
sglib_ilist_sort:
	push	{r4, r5, r6, lr}
	ldr	r4, [r0, #0]
	sub	sp, #8
	mov	lr, r0
	mov	ip, #1
	movs	r5, #0
lab340: 	str	r5, [sp, #4]
	cmp	r4, #0
	beq	lab326
	movs	r1, #0
	add	r0, sp, #4
lab339: 	cmp	ip, #1
	beq	lab327
	mov	r2, r4
	movs	r3, #1
	b	lab328
lab330: 	cmp	r2, #0
	beq	lab329
lab328: 	adds	r3, #1
	cmp	r3, ip
	ldr	r2, [r2, #4]
	bne	lab330
	cmp	r2, #0
	beq	lab329
	ldr	r3, [r2, #4]
	str	r5, [r2, #4]
	cmp	r3, #0
	beq	lab331
	mov	r1, r3
	movs	r2, #1
	b	lab332
lab334: 	cmp r1, #0
	beq lab333
lab332: 	adds	r2, #1
	cmp	r2, ip
	ldr	r1, [r1, #4]
	bne	lab334
lab343: 	cmp r1, #0
	beq lab333
	ldr	r2, [r1, #4]
	str	r5, [r1, #4]
	mov	r1, r2
lab333: 	cmp r3, #0
	beq lab335
lab337: 	ldr	r2, [r4, #0]
	ldr	r6, [r3, #0]
	subs	r2, r2, r6
	cmp	r2, #0
	blt	lab336
	str	r3, [r0, #0]
	adds	r0, r3, #4
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	lab337
lab335: 	str	r4, [r0, #0]
	mov	r3, r4
	mov	r4, r1
lab338: 	mov	r0, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	lab338
	adds	r0, #4
	movs	r1, #1
	cmp	r4, #0
	bne	lab339
	mov	ip, ip, lsl #1
lab342: 	ldr	r4, [sp, #4]
	b	lab340
lab336: 	str	r4, [r0, #0]
	ldr	r2, [r4, #4]
	adds	r0, r4, #4
	cmp r2, #0
	beq lab341
	mov	r4, r2
	b	lab333
lab341: 	str	r3, [r4, #4]
	mov	r4, r1
	b	lab338
lab329: 	str	r4, [r0, #0]
	mov	ip, ip, lsl #1
	cmp	r1, #0
	bne	lab342
	ldr	r4, [sp, #4]
lab326: 	str	r4, [lr]
	add	sp, #8
	pop	{r4, r5, r6, pc}
lab327: 	ldr	r1, [r4, #4]
	str	r5, [r4, #4]
	mov	r3, r1
	b	lab343
lab331: 	str	r4, [r0, #0]
	mov	r3, r4
	movs	r4, #0
	b	lab338
	nop
sglib_ilist_len:
	mov	r3, r0
	cmp r0, #0
	beq lab344
	movs	r0, #0
lab345: 	ldr	r3, [r3, #4]
	adds	r0, #1
	cmp	r3, #0
	bne	lab345
	bx	lr
lab344: 	bx	lr
	nop
sglib_ilist_reverse:
	ldr	r3, [r0, #0]
	cmp r3, #0
	beq lab346
	movs	r1, #0
	b	lab347
lab348: 	mov	r3, r2
lab347: 	ldr	r2, [r3, #4]
	str	r1, [r3, #4]
	mov	r1, r3
	cmp	r2, #0
	bne	lab348
lab346: 	str	r3, [r0, #0]
	bx	lr
sglib_ilist_it_init_on_equal:
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r3
	movs	r3, #0
	mov	r7, r0
	mov	r4, r1
	str	r2, [r0, #8]
	str	r6, [r0, #12]
	str	r3, [r0, #4]
	cmp r2, #0
	beq lab349
	mov	r5, r2
	cmp r1, #0
	bne lab350
	b	lab351
lab352: 	ldr	r4, [r4, #4]
	cmp r4, #0
	beq lab351
lab350: 	mov	r0, r4
	mov	r1, r6
	blx	r5
	cmp	r0, #0
	bne	lab352
	str	r4, [r7, #0]
lab353: 	ldr	r3, [r4, #4]
	str	r3, [r7, #4]
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
lab351: 	movs	r0, #0
	str	r0, [r7, #0]
	pop	{r3, r4, r5, r6, r7, pc}
lab349: 	str	r1, [r0, #0]
	cmp	r1, #0
	bne	lab353
	mov	r0, r1
	pop	{r3, r4, r5, r6, r7, pc}
sglib_ilist_it_init:
	mov	r3, r0
	movs	r2, #0
	strd	r2, r2, [r3, #8]
	strd	r1, r2, [r3]
	mov	r0, r1
	cmp r1, #0
	beq lab354
	ldr	r2, [r1, #4]
	str	r2, [r3, #4]
lab354: 	bx	lr
	nop
sglib_ilist_it_current:
	ldr	r0, [r0, #0]
	bx	lr
sglib_ilist_it_next:
	push	{r3, r4, r5, r6, r7, lr}
	ldrd	r4, r6, [r0, #4]
	movs	r3, #0
	mov	r5, r0
	str	r3, [r0, #4]
	cmp r6, #0
	beq lab355
	ldr	r7, [r0, #12]
	cmp r4, #0
	bne lab356
	b	lab357
lab358: 	ldr	r4, [r4, #4]
	cmp r4, #0
	beq lab357
lab356: 	mov	r0, r4
	mov	r1, r7
	blx	r6
	cmp	r0, #0
	bne	lab358
	str	r4, [r5, #0]
lab359: 	ldr	r3, [r4, #4]
	str	r3, [r5, #4]
lab360: 	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
lab357: 	movs	r4, #0
	str	r4, [r5, #0]
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
lab355: 	str	r4, [r0, #0]
	cmp	r4, #0
	bne	lab359
	b	lab360
sglib_hashed_ilist_init:
	movs	r2, #80	
	movs	r1, #0
	b	memset
sglib_hashed_ilist_add:
	ldr	r2, [r1, #0]
	movw	r3, #52429	
	movt	r3, #52428	
	umull	ip, r3, r3, r2
	lsrs	r3, r3, #4
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3, lsl #2
	ldr	r2, [r0, r3, lsl #2]
	str	r2, [r1, #4]
	str	r1, [r0, r3, lsl #2]
	bx	lr
sglib_hashed_ilist_add_if_not_member:
	push	{r4, lr}
	movw	r3, #52429	
	ldr	r4, [r1, #0]
	movt	r3, #52428	
	umull	ip, r3, r3, r4
	lsrs	r3, r3, #4
	add	r3, r3, r3, lsl #2
	sub	ip, r4, r3, lsl #2
	ldr	r3, [r0, ip, lsl #2]
	cmp r3, #0
	bne lab361
	b	lab362
lab363: 	ldr	r3, [r3, #4]
	cmp r3, #0
	beq lab362
lab361: 	ldr	lr, [r3]
	cmp	lr, r4
	bne	lab363
	clz	r0, r3
	str	r3, [r2, #0]
	lsrs	r0, r0, #5
	pop	{r4, pc}
lab362: 	movs	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [r0, ip, lsl #2]
	str	r3, [r1, #4]
	str	r1, [r0, ip, lsl #2]
	ldr	r3, [r2, #0]
	clz	r0, r3
	lsrs	r0, r0, #5
	pop	{r4, pc}
sglib_hashed_ilist_delete:
	ldr	r2, [r1, #0]
	movw	r3, #52429	
	movt	r3, #52428	
	umull	ip, r3, r3, r2
	lsrs	r3, r3, #4
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3, lsl #2
	add	r2, r0, r3, lsl #2
	ldr	r3, [r0, r3, lsl #2]
	cmp r3, #0
	bne lab364
	b	lab365
lab366: 	adds	r2, r3, #4
	ldr	r3, [r3, #4]
	cmp r3, #0
	beq lab365
lab364: 	cmp	r1, r3
	bne	lab366
	ldr	r3, [r1, #4]
	str	r3, [r2, #0]
	bx	lr
lab365: 	movs	r3, #0
	ldr	r3, [r3, #4]
	udf	#255	
	nop
sglib_hashed_ilist_delete_if_member:
	push	{r4}
	movw	r3, #52429	
	ldr	r4, [r1, #0]
	movt	r3, #52428	
	umull	r1, r3, r3, r4
	lsrs	r3, r3, #4
	add	r3, r3, r3, lsl #2
	sub	r3, r4, r3, lsl #2
	add	ip, r0, r3, lsl #2
	ldr	r3, [r0, r3, lsl #2]
	cmp r3, #0
	bne lab367
	b	lab368
lab369: 	add	ip, r3, #4
	ldr	r3, [r3, #4]
	cmp r3, #0
	beq lab368
lab367: 	ldr	r1, [r3, #0]
	cmp	r1, r4
	bne	lab369
	str	r3, [r2, #0]
	ldr	r3, [r3, #4]
	str	r3, [ip]
	ldr	r0, [r2, #0]
	pop	{r4}
	subs	r0, #0
	it	ne
	movne	r0, #1
	bx	lr
lab368: 	movs	r0, #0
	pop	{r4}
	str	r0, [r2, #0]
	bx	lr
sglib_hashed_ilist_is_member:
	ldr	r2, [r1, #0]
	movw	r3, #52429	
	movt	r3, #52428	
	umull	ip, r3, r3, r2
	lsrs	r3, r3, #4
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3, lsl #2
	ldr	r0, [r0, r3, lsl #2]
	cmp r0, #0
	beq lab370
	cmp	r0, r1
	bne	lab371
	b	lab372
lab373: 	cmp	r1, r0
	beq	lab372
lab371: 	ldr	r0, [r0, #4]
	cmp	r0, #0
	bne	lab373
lab370: 	bx	lr
lab372: 	movs	r0, #1
	bx	lr
sglib_hashed_ilist_find_member:
	ldr	r2, [r1, #0]
	movw	r3, #52429	
	movt	r3, #52428	
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #4
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3, lsl #2
	ldr	r0, [r0, r3, lsl #2]
	cmp r0, #0
	bne lab374
	b	lab375
lab377: 	ldr	r0, [r0, #4]
	cmp r0, #0
	beq lab376
lab374: 	ldr	r3, [r0, #0]
	cmp	r3, r2
	bne	lab377
lab376: 	bx	lr
lab375: 	bx	lr
	nop
sglib_hashed_ilist_it_current:
	ldr	r0, [r0, #0]
	bx	lr
sglib_hashed_ilist_it_next:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	ldrd	r4, r6, [r0, #4]
	movs	r3, #0
	mov	r5, r0
	str	r3, [r0, #4]
	cmp r6, #0
	beq lab378
	ldr	r7, [r0, #12]
	cmp r4, #0
	bne lab379
	b	lab380
lab381: 	ldr	r4, [r4, #4]
	cmp r4, #0
	beq lab380
lab379: 	mov	r0, r4
	mov	r1, r7
	blx	r6
	cmp	r0, #0
	bne	lab381
lab390: 	str	r4, [r5, #0]
lab382: 	ldr	r3, [r4, #4]
	str	r3, [r5, #4]
	mov	r0, r4
	nop
	push {r1, r2}
	ldr r1, =5236
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab378: 	str	r4, [r0, #0]
	cmp	r4, #0
	bne	lab382
	b	lab383
lab380: 	movs	r3, #0
	str	r3, [r5, #0]
lab383: 	ldr	r3, [r5, #20]
	mov	r8, #0
lab391: 	adds	r3, #1
	cmp	r3, #19
	str	r3, [r5, #20]
	bgt	lab384
lab392: 	ldrd	r6, r7, [r5, #24]
	ldr	r2, [r5, #16]
	ldr	r4, [r2, r3, lsl #2]
	str	r8, [r5, #4]
	strd	r6, r7, [r5, #8]
	cmp r6, #0
	beq lab385
	cmp r4, #0
	bne lab386
	b	lab387
lab389: 	ldr	r4, [r4, #4]
	cmp r4, #0
	beq lab388
lab386: 	mov	r0, r4
	mov	r1, r7
	blx	r6
	cmp	r0, #0
	bne	lab389
	b	lab390
lab385: 	str	r4, [r5, #0]
	cmp	r4, #0
	bne	lab382
	b	lab391
lab388: 	ldr	r3, [r5, #20]
lab387: 	str	r8, [r5]
	adds	r3, #1
	cmp	r3, #19
	str	r3, [r5, #20]
	ble	lab392
lab384: 	movs	r4, #0
	mov	r0, r4
	nop
	push {r1, r2}
	ldr r1, =3365
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
sglib_hashed_ilist_it_init_on_equal:
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r3
	str	r7, [r0, #28]
	movs	r3, #0
	ldr	r4, [r1, #0]
	str	r1, [r0, #16]
	mov	r6, r0
	str	r3, [r0, #20]
	str	r3, [r0, #4]
	str	r2, [r0, #24]
	str	r2, [r0, #8]
	str	r7, [r0, #12]
	cmp r2, #0
	beq lab393
	mov	r5, r2
	cmp r4, #0
	bne lab394
	b	lab395
lab396: 	ldr	r4, [r4, #4]
	cmp r4, #0
	beq lab395
lab394: 	mov	r0, r4
	mov	r1, r7
	blx	r5
	cmp	r0, #0
	bne	lab396
	ldr	r3, [r4, #4]
	str	r4, [r6, #0]
	str	r3, [r6, #4]
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
lab395: 	movs	r3, #0
	str	r3, [r6, #0]
lab397: 	mov	r0, r6
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	sglib_hashed_ilist_it_next
lab393: 	str	r4, [r0, #0]
	cmp	r4, #0
	beq	lab397
	ldr	r3, [r4, #4]
	str	r3, [r6, #4]
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
sglib_hashed_ilist_it_init:
	movs	r2, #0
	push	{r4}
	str	r2, [r0, #28]
	ldr	r4, [r1, #0]
	str	r2, [r0, #24]
	strd	r1, r2, [r0, #16]
	strd	r2, r2, [r0, #8]
	strd	r4, r2, [r0]
	cmp r4, #0
	beq lab398
	ldr	r2, [r4, #4]
	str	r2, [r0, #4]
	mov	r0, r4
	pop	{r4}
	bx	lr
lab398: 	pop	{r4}
	b	sglib_hashed_ilist_it_next
sglib_iq_init:
	movs	r3, #0
	strd	r3, r3, [r0, #404]	
	bx	lr
sglib_iq_is_empty:
	ldrd	r2, r0, [r0, #404]	
	subs	r0, r2, r0
	clz	r0, r0
	lsrs	r0, r0, #5
	bx	lr
	nop
sglib_iq_is_full:
	ldr	r3, [r0, #408]	
	ldr	r0, [r0, #404]	
	movw	r2, #61643	
	adds	r3, #1
	movt	r2, #10381	
	smull	r1, r2, r2, r3
	asrs	r1, r3, #31
	rsb	r2, r1, r2, asr #4
	movs	r1, #101	
	mls	r3, r1, r2, r3
	subs	r0, r3, r0
	clz	r0, r0
	lsrs	r0, r0, #5
	bx	lr
sglib_iq_first_element:
	ldr	r3, [r0, #404]	
	ldr	r0, [r0, r3, lsl #2]
	bx	lr
	nop
sglib_iq_first_element_ptr:
	ldr	r3, [r0, #404]	
	add	r0, r0, r3, lsl #2
	bx	lr
	nop
sglib_iq_add_next:
	ldr	r3, [r0, #408]	
	movw	r2, #61643	
	adds	r3, #1
	movt	r2, #10381	
	smull	r1, r2, r2, r3
	asrs	r1, r3, #31
	rsb	r2, r1, r2, asr #4
	movs	r1, #101	
	mls	r3, r1, r2, r3
	str	r3, [r0, #408]	
	bx	lr
sglib_iq_add:
	push	{r4}
	ldr	r4, [r0, #408]	
	movw	r2, #61643	
	adds	r3, r4, #1
	movt	r2, #10381	
	str	r1, [r0, r4, lsl #2]
	smull	ip, r2, r2, r3
	asrs	r1, r3, #31
	rsb	r2, r1, r2, asr #4
	movs	r1, #101	
	mls	r3, r1, r2, r3
	pop	{r4}
	str	r3, [r0, #408]	
	bx	lr
sglib_iq_delete_first:
	ldr	r3, [r0, #404]	
	movw	r2, #61643	
	adds	r3, #1
	movt	r2, #10381	
	smull	r1, r2, r2, r3
	asrs	r1, r3, #31
	rsb	r2, r1, r2, asr #4
	movs	r1, #101	
	mls	r3, r1, r2, r3
	str	r3, [r0, #404]	
	bx	lr
sglib_iq_delete:
	ldr	r3, [r0, #404]	
	movw	r2, #61643	
	adds	r3, #1
	movt	r2, #10381	
	smull	r1, r2, r2, r3
	asrs	r1, r3, #31
	rsb	r2, r1, r2, asr #4
	movs	r1, #101	
	mls	r3, r1, r2, r3
	str	r3, [r0, #404]	
	bx	lr
sglib___rbtree_delete_recursive:
	push	{r4, r5, lr}
	ldr	r5, [r0, #0]
	sub	sp, #12
	cmp r5, #0
	beq lab399
	ldr	r3, [r1, #0]
	mov	r4, r0
	ldr	r0, [r5, #0]
	subs	r0, r3, r0
	cmp	r0, #0
	blt	lab400
	bne	lab401
	cmp	r5, r1
	bls	lab402
lab400: 	add	r0, r5, #8
push {r1, r2}
	ldr r1, =7851
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_delete_recursive
	push {r1, r2}
	ldr r1, =7851
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab403
lab399: 	movs	r0, #0
lab408: 	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =5593
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab402: 	bcs	lab404
lab401: 	add	r0, r5, #12
push {r1, r2}
	ldr r1, =4500
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_delete_recursive
	push {r1, r2}
	ldr r1, =4500
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab399
	mov	r0, r4
	add	sp, #12
	ldmia	sp!, {r4, r5, lr}
	b	sglib___rbtree_fix_right_deletion_discrepancy
lab404: 	ldr	r3, [r5, #8]
	cmp r3, #0
	beq lab405
	ldr	r2, [r3, #12]
	cmp r2, #0
	beq lab406
	add	r1, sp, #4
	add	r0, r3, #12
push {r1, r2}
	ldr r1, =5669
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_delete_rightmost_leaf
	push {r1, r2}
	ldr r1, =5669
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab407
	ldrd	r1, r2, [r5, #8]
	ldr	r3, [sp, #4]
	strd	r1, r2, [r3, #8]
	ldrb	r2, [r5, #4]
	strb	r2, [r3, #4]
	str	r3, [r4, #0]
	b	lab408
lab403: 	mov	r0, r4
	add	sp, #12
	ldmia	sp!, {r4, r5, lr}
	b	sglib___rbtree_fix_left_deletion_discrepancy
lab405: 	ldr	r3, [r5, #12]
	cmp r3, #0
	beq lab409
	ldrb	r2, [r5, #4]
	cmp r2, #0
	bne lab410
	ldrb	r0, [r3, #4]
	clz	r0, r0
	lsrs	r0, r0, #5
lab410: 	movs	r2, #0
	strb	r2, [r3, #4]
	str	r3, [r4, #0]
	b	lab408
lab406: 	ldr	r2, [r3, #8]
	str	r3, [sp, #4]
	cmp r2, #0
	beq lab411
	ldrb	r1, [r3, #4]
	cmp r1, #0
	bne lab412
	ldrb	r0, [r2, #4]
	clz	r0, r0
	lsrs	r0, r0, #5
lab412: 	movs	r1, #0
	strb	r1, [r2, #4]
	str	r2, [r5, #8]
lab413: 	str	r2, [r3, #8]
	ldr	r2, [r5, #12]
	str	r2, [r3, #12]
	ldrb	r2, [r5, #4]
	strb	r2, [r3, #4]
	str	r3, [r4, #0]
	cmp	r0, #0
	beq	lab399
	mov	r0, r4
push {r1, r2}
	ldr r1, =4760
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_fix_left_deletion_discrepancy
	push {r1, r2}
	ldr r1, =4760
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab408
lab409: 	str	r0, [r4, #0]
	ldrb	r0, [r5, #4]
	clz	r0, r0
	lsrs	r0, r0, #5
	b	lab408
lab407: 	add	r0, r5, #8
push {r1, r2}
	ldr r1, =3739
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_fix_right_deletion_discrepancy
	push {r1, r2}
	ldr r1, =3739
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #4]
	ldr	r2, [r5, #8]
	b	lab413
lab411: 	str	r2, [r5, #8]
	ldrb	r0, [r3, #4]
	clz	r0, r0
	lsrs	r0, r0, #5
	b	lab413
	nop
sglib_rbtree_add:
	push	{r3, r4, r5, lr}
	movs	r3, #0
	strd	r3, r3, [r1, #8]
	ldr	r4, [r0, #0]
	mov	r5, r0
	cmp	r4, #0
	beq	lab414
	ldr	r3, [r1, #0]
	ldr	r2, [r4, #0]
	subs	r3, r3, r2
	cmp	r3, #0
	blt	lab415
	bne	lab416
	cmp	r1, r4
	bcs	lab416
lab415: 	add	r0, r4, #8
push {r1, r2}
	ldr r1, =1103
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_add_recursive
	push {r1, r2}
	ldr r1, =1103
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r3, [r4, #4]
	ldr	r1, [r5, #0]
	cmp r3, #0
	beq lab417
lab418: 	movs	r3, #0
	strb	r3, [r1, #4]
	pop	{r3, r4, r5, pc}
lab416: 	add	r0, r4, #12
push {r1, r2}
	ldr r1, =8170
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_add_recursive
	push {r1, r2}
	ldr r1, =8170
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r3, [r4, #4]
	ldr	r1, [r5, #0]
	cmp	r3, #0
	bne	lab418
	ldrd	r2, r3, [r1, #8]
	cmp r2, #0
	beq lab419
	ldrb	r0, [r2, #4]
	cmp	r0, #1
	beq	lab420
lab419: 	ldrb	r2, [r3, #4]
	cmp	r2, #1
	bne	lab418
	ldr	r2, [r3, #12]
	cmp r2, #0
	beq lab421
	ldrb	r0, [r2, #4]
	cmp	r0, #1
	beq	lab422
lab421: 	ldr	r2, [r3, #8]
	cmp	r2, #0
	beq	lab418
	ldrb	r0, [r2, #4]
	cmp	r0, #1
	bne	lab418
	ldrd	r4, ip, [r2, #8]
	str	ip, [r3, #8]
	str	r4, [r1, #12]
	strd	r1, r3, [r2, #8]
	b	lab423
lab414: 	movs	r3, #1
	strb	r3, [r1, #4]
	movs	r3, #0
	str	r1, [r0, #0]
	strb	r3, [r1, #4]
	pop	{r3, r4, r5, pc}
lab417: 	ldrd	r3, r2, [r1, #8]
	cmp r2, #0
	beq lab424
	ldrb	r0, [r2, #4]
	cmp	r0, #1
	beq	lab425
lab424: 	ldrb	r2, [r3, #4]
	cmp	r2, #1
	bne	lab418
	ldr	r2, [r3, #8]
	cmp r2, #0
	beq lab426
	ldrb	r0, [r2, #4]
	cmp	r0, #1
	beq	lab427
lab426: 	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	lab418
	ldrb	r0, [r2, #4]
	cmp	r0, #1
	bne	lab418
	ldrd	ip, r4, [r2, #8]
	str	ip, [r3, #12]
	str	r4, [r1, #8]
	strd	r3, r1, [r2, #8]
lab423: 	movs	r3, #0
	strb	r3, [r2, #4]
	strb	r0, [r1, #4]
	str	r2, [r5, #0]
	mov	r1, r2
	b	lab418
lab425: 	ldrb	r0, [r3, #4]
	cmp	r0, #1
	bne	lab418
	ldr	r0, [r3, #8]
	cmp r0, #0
	beq lab428
	ldrb	r0, [r0, #4]
	cmp	r0, #1
	beq	lab429
lab428: 	ldr	r0, [r3, #12]
	cmp	r0, #0
	beq	lab418
lab431: 	ldrb	r0, [r0, #4]
	cmp	r0, #1
	bne	lab418
lab429: 	movs	r0, #0
	movs	r4, #1
	strb	r0, [r3, #4]
	strb	r0, [r2, #4]
	strb	r4, [r1, #4]
	b	lab418
lab420: 	ldrb	r0, [r3, #4]
	cmp	r0, #1
	bne	lab418
	ldr	r0, [r3, #12]
	cmp r0, #0
	beq lab430
	ldrb	r0, [r0, #4]
	cmp	r0, #1
	beq	lab429
lab430: 	ldr	r0, [r3, #8]
	cmp	r0, #0
	bne	lab431
	b	lab418
lab427: 	ldr	r4, [r3, #12]
	str	r4, [r1, #8]
	strd	r2, r1, [r3, #8]
lab432: 	movs	r2, #0
	strb	r0, [r1, #4]
	strb	r2, [r3, #4]
	mov	r1, r3
	str	r3, [r5, #0]
	b	lab418
lab422: 	ldr	r4, [r3, #8]
	str	r4, [r1, #12]
	strd	r1, r2, [r3, #8]
	b	lab432
sglib_rbtree_delete:
	push	{r4, r5, lr}
	ldr	r5, [r0, #0]
	sub	sp, #12
	cmp r5, #0
	beq lab433
	ldr	r3, [r5, #0]
	mov	r4, r0
	ldr	r0, [r1, #0]
	subs	r0, r0, r3
	cmp	r0, #0
	blt	lab434
	bne	lab435
	cmp	r1, r5
	bcs	lab436
lab434: 	add	r0, r5, #8
push {r1, r2}
	ldr r1, =2391
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_delete_recursive
	push {r1, r2}
	ldr r1, =2391
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab437
lab439: 	ldr	r2, [r4, #0]
lab440: 	cmp r2, #0
	beq lab433
lab444: 	movs	r3, #0
	strb	r3, [r2, #4]
lab433: 	add	sp, #12
	pop	{r4, r5, pc}
lab436: 	bls	lab438
lab435: 	add	r0, r5, #12
push {r1, r2}
	ldr r1, =7219
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_delete_recursive
	push {r1, r2}
	ldr r1, =7219
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab439
	mov	r0, r4
push {r1, r2}
	ldr r1, =4966
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_fix_right_deletion_discrepancy
	push {r1, r2}
	ldr r1, =4966
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r2, [r4, #0]
	b	lab440
lab438: 	ldr	r2, [r5, #8]
	cmp r2, #0
	beq lab441
	ldr	r3, [r2, #12]
	cmp r3, #0
	beq lab442
	add	r1, sp, #4
	add	r0, r2, #12
push {r1, r2}
	ldr r1, =5381
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_delete_rightmost_leaf
	push {r1, r2}
	ldr r1, =5381
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab443
	ldrd	r1, r3, [r5, #8]
	ldr	r2, [sp, #4]
	strd	r1, r3, [r2, #8]
	ldrb	r3, [r5, #4]
	strb	r3, [r2, #4]
	str	r2, [r4, #0]
	b	lab444
lab442: 	ldr	r1, [r2, #8]
	str	r2, [sp, #4]
	cmp r1, #0
	beq lab445
	ldrb	r3, [r2, #4]
	cmp r3, #0
	bne lab446
	ldrb	r3, [r1, #4]
	clz	r0, r3
	lsrs	r0, r0, #5
lab446: 	movs	r3, #0
	strb	r3, [r1, #4]
	str	r1, [r5, #8]
lab448: 	ldr	r3, [r5, #12]
	str	r1, [r2, #8]
	str	r3, [r2, #12]
	ldrb	r3, [r5, #4]
	strb	r3, [r2, #4]
	str	r2, [r4, #0]
	cmp	r0, #0
	beq	lab444
lab437: 	mov	r0, r4
push {r1, r2}
	ldr r1, =4751
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_fix_left_deletion_discrepancy
	push {r1, r2}
	ldr r1, =4751
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r2, [r4, #0]
	b	lab440
lab441: 	ldr	r2, [r5, #12]
	cmp r2, #0
	beq lab447
	strb	r0, [r2, #4]
	str	r2, [r4, #0]
	b	lab444
lab447: 	str	r2, [r4, #0]
	b	lab433
lab443: 	add	r0, r5, #8
push {r1, r2}
	ldr r1, =4230
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_fix_right_deletion_discrepancy
	push {r1, r2}
	ldr r1, =4230
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r2, [sp, #4]
	ldr	r1, [r5, #8]
	b	lab448
lab445: 	str	r1, [r5, #8]
	ldrb	r3, [r2, #4]
	clz	r0, r3
	lsrs	r0, r0, #5
	b	lab448
	nop
sglib_rbtree_find_member:
	cmp r0, #0
	beq lab449
	ldr	r2, [r1, #0]
lab451: 	ldr	r3, [r0, #0]
	subs	r3, r2, r3
	cmp	r3, #0
	blt	lab450
	beq	lab449
	ldr	r0, [r0, #12]
	cmp	r0, #0
	bne	lab451
lab449: 	bx	lr
lab450: 	ldr	r0, [r0, #8]
	cmp	r0, #0
	bne	lab451
	b	lab449
	nop
sglib_rbtree_is_member:
	cmp r0, #0
	beq lab452
	ldr	r2, [r1, #0]
lab456: 	ldr	r3, [r0, #0]
	subs	r3, r2, r3
	cmp	r3, #0
	blt	lab453
	bne	lab454
	cmp	r1, r0
	bcc	lab453
	bls	lab455
lab454: 	ldr	r0, [r0, #12]
	cmp	r0, #0
	bne	lab456
lab457: 	bx	lr
lab453: 	ldr	r0, [r0, #8]
	cmp	r0, #0
	bne	lab456
	b	lab457
lab455: 	movs	r0, #1
lab452: 	bx	lr
sglib_rbtree_delete_if_member:
	push	{r3, r4, r5, lr}
	ldr	r3, [r0, #0]
	cmp r3, #0
	beq lab458
	ldr	r1, [r1, #0]
	mov	r5, r0
lab461: 	ldr	r4, [r3, #0]
	subs	r4, r1, r4
	cmp	r4, #0
	blt	lab459
	beq	lab460
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	lab461
lab458: 	movs	r0, #0
	str	r0, [r2, #0]
	pop	{r3, r4, r5, pc}
lab459: 	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	lab461
	b	lab458
lab460: 	str	r3, [r2, #0]
	mov	r1, r3
	mov	r0, r5
push {r1, r2}
	ldr r1, =6514
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_delete_recursive
	push {r1, r2}
	ldr r1, =6514
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r5, #0]
	cmp r3, #0
	beq lab462
	strb	r4, [r3, #4]
	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab462: 	movs	r0, #1
	pop	{r3, r4, r5, pc}
sglib_rbtree_add_if_not_member:
	push	{r3, r4, r5, lr}
	ldr	r3, [r0, #0]
	mov	r5, r0
	cmp r3, #0
	beq lab463
	ldr	r4, [r1, #0]
lab466: 	ldr	r0, [r3, #0]
	subs	r0, r4, r0
	cmp	r0, #0
	blt	lab464
	beq	lab465
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	lab466
lab463: 	movs	r4, #0
	str	r4, [r2, #0]
	mov	r0, r5
	strd	r4, r4, [r1, #8]
push {r1, r2}
	ldr r1, =826
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_add_recursive
	push {r1, r2}
	ldr r1, =826
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r5, #0]
	strb	r4, [r3, #4]
	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab464: 	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	lab466
	b	lab463
lab465: 	str	r3, [r2, #0]
	pop	{r3, r4, r5, pc}
sglib_rbtree_len:
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #644	
	cmp r0, #0
	beq lab467
	movs	r2, #0
	mov	r0, r2
	add	lr, sp, #128	
	mov	r3, #4294967295	
	mov	r7, r2
lab473: 	add	r5, lr, r2, lsl #2
	subs	r5, #4
	add	r3, sp
lab468: 	ldrd	r4, r6, [r4, #8]
	mov	r1, r2
	str	r6, [r5, #4]!
	strb	r7, [r3, #1]!
	adds	r2, #1
	cmp	r4, #0
	bne	lab468
	add	r4, sp, r1
	add	r1, lr, r1, lsl #2
	b	lab469
lab472: 	ldr	r5, [r1], #-4
	cmp r5, #0
	bne lab470
	ldr	r6, [r1, #0]
	mov	r2, r3
lab469: 	ldrb	r5, [r4], #-1
	subs	r3, r2, #1
	add	ip, r5, #1
	cmp r5, #0
	bne lab471
	adds	r0, #1
lab471: 	strb	ip, [r4, #1]
	cmp	r3, #0
	bne	lab472
	ldr	r2, [lr]
	str	r3, [lr]
	cmp r2, #0
	beq lab467
	movs	r2, #1
	mov	r4, r6
	b	lab473
lab470: 	str	r7, [lr, r3, lsl #2]
	mov	r4, r6
	b	lab473
lab467: 	add	sp, sp, #644	
	pop	{r4, r5, r6, r7, pc}
sglib__rbtree_it_compute_current_elem:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldrsh	r6, [r0, #644]	
	mov	r8, #0
	cmp	r6, r8
	ldrd	sl, r7, [r0, #648]	
	str	r8, [r0]
	ble	lab474
	mov	r5, r0
	subs	r3, r6, #1
lab477: 	sxth	r3, r3
	add	r9, r5, r3
	ldrb	r2, [r9, #4]
	cmp	r2, #1
	bls	lab475
	mov	r6, r3
	strh	r3, [r5, #644]	
lab485: 	cmp	r6, #0
	ble	lab474
	subs	r3, r6, #1
	sxth	r2, r3
	adds	r1, r5, r2
	ldrsh	r0, [r5, #646]	
	ldrb	r1, [r1, #4]
	cmp	r0, r1
	beq	lab476
	ldr	r2, [r5, #0]
	cmp	r2, #0
	beq	lab477
lab474:	nop
	push {r1, r2}
	ldr r1, =6053
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab475: 	add	r3, r5, r3, lsl #2
	ldr	r3, [r3, #132]	
	cmp r2, #0
	bne lab478
	ldr	r4, [r3, #8]
lab488: 	cmp	sl, #0
	beq	lab479
	cmp	r7, #0
	beq	lab480
	cmp r4, #0
	beq lab481
lab484: 	mov	r1, r4
	mov	r0, sl
	blx	r7
	cmp	r0, #0
	blt	lab482
	beq	lab483
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab484
lab486: 	ldrb	r2, [r9, #4]
lab481: 	ldrsh	r6, [r5, #644]	
lab487: 	adds	r2, #1
	strb	r2, [r9, #4]
	b	lab485
lab482: 	ldr	r4, [r4, #8]
	cmp	r4, #0
	bne	lab484
	b	lab486
lab479: 	cmp	r4, #0
	beq	lab481
lab483: 	add	r3, r5, r6, lsl #2
	add	r6, r5
	str	r4, [r3, #132]	
	strb	r8, [r6, #4]
	ldrh	r6, [r5, #644]	
	adds	r6, #1
	sxth	r6, r6
	strh	r6, [r5, #644]	
	ldrb	r2, [r9, #4]
	b	lab487
lab478: 	ldr	r4, [r3, #12]
	b	lab488
lab476: 	add	r2, r5, r2, lsl #2
	ldr	r2, [r2, #132]	
	str	r2, [r5, #0]
	cmp	r2, #0
	beq	lab477
	nop
	push {r1, r2}
	ldr r1, =4426
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab480: 	cmp	r4, #0
	beq	lab481
	ldr	r1, [sl]
	ldr	r3, [r4, #0]
	subs	r3, r1, r3
	cmp	r3, #0
	blt	lab489
lab490: 	beq	lab483
	ldr	r4, [r4, #12]
	cmp	r4, #0
	beq	lab481
lab491: 	ldr	r3, [r4, #0]
	subs	r3, r1, r3
	cmp	r3, #0
	bge	lab490
lab489: 	ldr	r4, [r4, #8]
	cmp	r4, #0
	bne	lab491
	b	lab481
	nop
benchmark_body:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subw	sp, sp, #1132	
	subs	r3, r0, #0
	str	r3, [sp, #16]
	it	le
	addle	r6, sp, #28
	ble	lab492
	movs	r3, #0
	str	r3, [sp, #12]
	movw	r3, #61643	
	add	r6, sp, #28
	movw	r8, #3800	
	movt	r3, #10381	
	movw	r5, #396	
	add	r4, sp, #68	
	movt	r8, #8192	
	str	r3, [sp, #8]
	movt	r5, #8192	
	str	r6, [sp, #4]
lab568: 	movw	r1, #0
	movw	r0, #3800	
	movt	r1, #8192	
	movt	r0, #8192	
	mov	r2, #400	
	bl	memcpy
	movs	r3, #0
	str	r3, [r4, #0]
	movs	r7, #0
	movs	r3, #100	
	str	r3, [sp, #472]	
	mov	sl, r3
	mov	r9, r7
lab503: 	sub	r0, sl, r7
lab513: 	cmp	r0, #2
	ble	lab493
lab500: 	adds	r3, r7, #1
	add	r2, sl, #4294967295	
	cmp	r3, r2
	bge	lab494
lab511: 	ldr	ip, [r8, r2, lsl #2]
lab510: 	ldr	r6, [r8, r7, lsl #2]
	add	r1, r8, r3, lsl #2
	subs	r1, #4
lab496: 	ldr	r0, [r1, #4]!
	cmp	r0, r6
	bgt	lab495
	adds	r3, #1
	cmp	r3, r2
	ble	lab496
lab504: 	str	r6, [r8, r2, lsl #2]
	str	ip, [r8, r7, lsl #2]
	mov	r1, r2
lab508: 	subs	r0, r2, r7
lab512: 	cmp	r0, #1
	ble	lab497
	sub	r3, sl, r1
	cmp	r3, #1
	ble	lab498
	subs	r3, #1
	cmp	r3, r0
	ble	lab499
	add	r3, sp, #472	
	adds	r1, #1
	cmp	r0, #2
	str	sl, [r3, r9, lsl #2]
	str	r1, [r4, r9, lsl #2]
	mov	sl, r2
	add	r9, r9, #1
	bgt	lab500
lab493: 	cmp	r0, #2
	beq	lab501
	cmp	r9, #0
	beq	lab502
lab514: 	add	r9, r9, #4294967295	
	add	r3, sp, #472	
	ldr	r7, [r4, r9, lsl #2]
	ldr	sl, [r3, r9, lsl #2]
	b	lab503
lab495: 	cmp	r2, r3
	blt	lab504
	adds	r1, r2, #1
	add	r1, r8, r1, lsl #2
	mov	ip, r3
lab506: 	ldr	r3, [r1, #-4]!
	cmp	r6, r3
	bgt	lab505
	subs	r2, #1
	cmp	r2, ip
	bge	lab506
	ldr	ip, [r8, r2, lsl #2]
	b	lab504
lab505: 	mov	r1, ip
	cmp	r2, r1
	mov	ip, r3
	mov	r3, r1
	bgt	lab507
	mov	r1, r2
	mov	r2, r3
	b	lab508
lab507: 	adds	r1, r3, #2
	cmp	r1, r2
	str	ip, [r8, r3, lsl #2]
	str	r0, [r8, r2, lsl #2]
	blt	lab509
	adds	r1, r3, #1
	mov	ip, r0
	cmp	r1, r2
	it	lt
	movlt	r3, r1
	b	lab510
lab509: 	adds	r3, #1
	subs	r2, #1
	cmp	r3, r2
	blt	lab511
	mov	r1, r2
	subs	r0, r3, r7
	mov	r2, r3
	b	lab512
lab494: 	mov	r1, r2
lab497: 	adds	r7, r1, #1
	sub	r0, sl, r7
	b	lab513
lab498: 	mov	sl, r2
	b	lab513
lab499: 	add	r3, sp, #472	
	str	r7, [r4, r9, lsl #2]
	adds	r7, r1, #1
	str	r2, [r3, r9, lsl #2]
	sub	r0, sl, r7
	add	r9, r9, #1
	b	lab513
lab501: 	add	sl, sl, #4294967295	
	ldr	r3, [r8, r7, lsl #2]
	ldr	r2, [r8, sl, lsl #2]
	cmp	r3, r2
	itt	gt
	strgt	r2, [r8, r7, lsl #2]
	strgt	r3, [r8, sl, lsl #2]
	cmp	r9, #0
	bne	lab514
lab502: 	movw	sl, #65532	
	movw	r0, #4288	
	movt	sl, #8191	
	movt	r0, #8192	
	mov	r1, #8192	
	bl	init_heap_beebs
	push {r1, r2}
	ldr r1, =571
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r9, [r8, #400]	
	add	r6, sl, #4
	mov	fp, sl
	b	lab515
lab518: 	ldr	r2, [r3, #8]
	strd	r3, r2, [r0, #4]
	str	r0, [r3, #8]
	ldr	r3, [r0, #8]
	cmp r3, #0
	beq lab516
	str	r0, [r3, #4]
lab516: 	cmp	r5, fp
	beq	lab517
lab515: 	movs	r0, #12
	bl	malloc_beebs
	ldr	r3, [r8, #400]	
	ldr	r2, [fp, #4]!
	str	r2, [r0, #0]
	cmp	r3, #0
	bne	lab518
	cmp	r5, fp
	strd	r3, r3, [r0, #4]
	str	r0, [r8, #400]	
	bne	lab515
lab517: 	movw	r0, #4200	
	movt	r0, #8192	
	bl	sglib_dllist_sort
	push {r1, r2}
	ldr r1, =2002
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [r8, #400]	
	cmp r3, #0
	beq lab519
lab520: 	mov	r2, r3
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	lab520
	ldr	r1, [sp, #4]
lab521: 	ldr	r3, [r1, #0]
	ldr	r2, [r2, #4]
	adds	r3, #1
	str	r3, [r1, #0]
	cmp	r2, #0
	bne	lab521
	str	r1, [sp, #4]
lab519: 	movw	r0, #4204	
	movs	r1, #0
	movt	r0, #8192	
	movs	r2, #80	
push {r1, r2}
	ldr r1, =3766
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =3766
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r1, #52429	
	movt	r1, #52428	
	mov	r7, sl
	mov	r9, r6
	mov	fp, r1
	str	r8, [sp, #20]
lab525: 	ldr	r6, [r7, #4]!
	umull	r2, r3, fp, r6
	lsrs	r3, r3, #4
	add	r3, r3, r3, lsl #2
	sub	r8, r6, r3, lsl #2
	movw	r3, #4204	
	movt	r3, #8192	
	ldr	r3, [r3, r8, lsl #2]
	cmp r3, #0
	bne lab522
	b	lab523
lab524: 	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	lab523
lab522: 	ldr	r2, [r3, #0]
	cmp	r6, r2
	bne	lab524
	cmp	r5, r7
	bne	lab525
lab532: 	movw	r3, #4204	
	movt	r3, #8192	
	ldr	r8, [sp, #20]
	str	r3, [sp, #52]	
	movs	r3, #0
	strd	r3, r3, [sp, #56]	
	strd	r3, r3, [sp, #44]	
	str	r3, [sp, #64]	
	str	r3, [sp, #40]	
	ldr	r3, [r8, #404]	
	str	r3, [sp, #36]	
	mov	r6, r9
	cmp	r3, #0
	beq	lab526
	ldr	fp, [r3, #4]
	movs	r7, #0
	mov	r6, fp
lab531: 	ldr	r2, [sp, #4]
	movs	r3, #0
	str	r3, [sp, #40]	
	ldr	r3, [r2, #0]
	adds	r3, #1
	str	r3, [r2, #0]
	cmp	r7, #0
	beq	lab527
	ldr	fp, [sp, #48]	
	cmp r6, #0
	bne lab528
	b	lab529
lab530: 	ldr	r6, [r6, #4]
	cmp r6, #0
	beq lab529
lab528: 	mov	r0, r6
	mov	r1, fp
	blx	r7
	cmp	r0, #0
	bne	lab530
	ldr	r7, [sp, #44]	
	str	r6, [sp, #36]	
lab551: 	ldr	r6, [r6, #4]
	b	lab531
lab523: 	movs	r0, #8
	bl	malloc_beebs
	movw	r2, #4204	
	movt	r2, #8192	
	cmp	r5, r7
	ldr	r3, [r2, r8, lsl #2]
	str	r6, [r0, #0]
	str	r3, [r0, #4]
	str	r0, [r2, r8, lsl #2]
	bne	lab525
	b	lab532
lab529: 	movs	r3, #0
	str	r3, [sp, #36]	
lab552: 	ldr	r3, [sp, #56]	
lab540: 	adds	r3, #1
	cmp	r3, #19
	str	r3, [sp, #56]	
	bgt	lab533
lab541: 	ldr	r2, [sp, #52]	
	ldr	r6, [sp, #60]	
	ldr	r7, [r2, r3, lsl #2]
	ldr	fp, [sp, #64]	
	str	r6, [sp, #44]	
	movs	r2, #0
	str	r2, [sp, #40]	
	str	fp, [sp, #48]	
	cmp r6, #0
	beq lab534
	cmp r7, #0
	bne lab535
	b	lab536
lab538: 	ldr	r7, [r7, #4]
	cmp r7, #0
	beq lab537
lab535: 	mov	r0, r7
	mov	r1, fp
	blx	r6
	cmp	r0, #0
	bne	lab538
	str	r7, [sp, #36]	
lab539: 	ldr	r6, [r7, #4]
	ldr	r7, [sp, #44]	
	b	lab531
lab534: 	str	r7, [sp, #36]	
	cmp	r7, #0
	bne	lab539
	b	lab540
lab537: 	ldr	r3, [sp, #56]	
lab536: 	adds	r3, #1
	movs	r2, #0
	cmp	r3, #19
	str	r2, [sp, #36]	
	str	r3, [sp, #56]	
	ble	lab541
lab533: 	mov	r6, r9
lab578: 	ldr	r7, [sp, #8]
	mov	r1, sl
	movs	r3, #0
	mov	ip, #101	
lab542: 	ldr	r0, [r1, #4]!
	str	r0, [r4, r3, lsl #2]
	adds	r2, r3, #1
	smull	r3, r0, r7, r2
	asrs	r3, r2, #31
	rsb	r3, r3, r0, asr #4
	cmp	r5, r1
	mls	r3, ip, r3, r2
	bne	lab542
	cmp r3, #0
	beq lab543
	ldr	lr, [sp, #4]
	movs	r2, #0
	movs	r0, #101	
lab544: 	adds	r1, r2, #1
	ldr	r7, [r4, r2, lsl #2]
	ldr	r2, [lr]
	add	r2, r7
	str	r2, [lr]
	ldr	r2, [sp, #8]
	smull	r2, ip, r2, r1
	asrs	r2, r1, #31
	rsb	r2, r2, ip, asr #4
	mls	r2, r0, r2, r1
	cmp	r3, r2
	bne	lab544
lab543: 	add	ip, sp, #64	
	movs	r2, #0
	movs	r1, #14
lab550: 	str	r1, [ip, #4]!
	adds	r7, r2, #1
	cmp r2, #0
	bne lab545
	b	lab546
lab548: 	str	r1, [r4, r3, lsl #2]
	str	r0, [r4, r2, lsl #2]
	cmp r3, #0
	beq lab547
	ldr	r1, [r4, r3, lsl #2]
	mov	r2, r3
lab545: 	asrs	r3, r2, #1
	ldr	r0, [r4, r3, lsl #2]
	cmp	r0, r1
	blt	lab548
lab547: 	cmp	r7, #100	
	beq	lab549
lab546: 	ldr	r1, [r6, #4]!
	mov	r2, r7
	b	lab550
lab527: 	str	r6, [sp, #36]	
	cmp	r6, #0
	bne	lab551
	b	lab552
lab549: 	add	fp, sp, #468	
	mov	ip, r7
lab554: 	ldr	r1, [sp, #4]
	ldr	r2, [r4, #0]
	ldr	r3, [r1, #0]
	ldr	r7, [fp, #-4]!
	str	r7, [r4, #0]
	add	ip, ip, #4294967295	
	add	r3, r2
	cmp	ip, #1
	str	r3, [r1, #0]
	bgt	lab553
	cmp	ip, #0
	bne	lab554
	str	ip, [sp, #32]
	mov	r1, ip
lab559: 	ldr	r6, [sl, #4]!
	cmp r1, #0
	beq lab555
	mov	r2, r1
lab558: 	ldr	r3, [r2, #0]
	subs	r3, r6, r3
	cmp	r3, #0
	blt	lab556
	beq	lab557
	ldr	r2, [r2, #12]
	cmp	r2, #0
	bne	lab558
lab555: 	movs	r0, #16
	bl	malloc_beebs
	movs	r3, #0
	strd	r3, r3, [r0, #8]
	mov	r1, r0
	str	r6, [r0, #0]
	add	r0, sp, #32
push {r1, r2}
	ldr r1, =3559
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_add_recursive
	push {r1, r2}
	ldr r1, =3559
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r1, [sp, #32]
	mov	r3, #0
	strb	r3, [r1, #4]
lab557: 	cmp	r5, sl
	bne	lab559
	movs	r3, #0
	str	r3, [sp, #1120]	
	str	r3, [sp, #1124]	
	strb	r3, [sp, #476]	
	movs	r3, #0
	mov	r2, r3
	str	r3, [sp, #472]	
	mov	r3, #65537	
	str	r1, [sp, #604]	
	str	r3, [sp, #1116]	
	mov	r0, r2
	mov	ip, r2
	movs	r1, #1
	mov	r3, r2
	b	lab560
lab563: 	sxth	r1, r3
	cmp	r1, #0
	mov	r0, #1
	ble	lab561
lab566: 	subs	r3, r1, #1
	sxth	r2, r3
	add	r6, sp, #472	
	add	r6, r2
	ldrb	r6, [r6, #4]
	cmp	r6, #1
	beq	lab562
lab575: 	add	r2, sp, #472	
	sxtah	r2, r2, r3
	ldrb	r2, [r2, #4]
lab560: 	cmp	r2, #1
	bhi	lab563
	sxth	r3, r3
	add	r6, sp, #472	
	add	r6, r6, r3, lsl #2
	ldr	r6, [r6, #132]	
	cmp	r2, #0
	bne	lab564
	ldr	r6, [r6, #8]
lab573: 	cmp r6, #0
	beq lab565
	add	r2, sp, #472	
	add	r2, r2, r1, lsl #2
	mov	r0, #0
	str	r6, [r2, #132]	
	add	r2, sp, #472	
	add	r2, r1
	adds	r1, #1
	strb	r0, [r2, #4]
	add	r2, sp, #472	
	add	r2, r3
	sxth	r1, r1
	ldrb	r2, [r2, #4]
	movs	r0, #1
lab565: 	add	r6, sp, #472	
	add	r3, r6
	adds	r2, #1
	cmp	r1, #0
	strb	r2, [r3, #4]
	bgt	lab566
lab561: 	cmp	ip, #0
	beq	lab567
	movs	r3, #0
	str	r3, [sp, #472]	
lab567: 	ldr	r3, [sp, #12]
	ldr	r2, [sp, #16]
	adds	r3, #1
	cmp	r2, r3
	str	r3, [sp, #12]
	bne	lab568
	ldr	r6, [sp, #4]
lab492: 	ldr	r0, [r6, #0]
	addw	sp, sp, #1132	
	nop
	push {r1, r2}
	ldr r1, =3813
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab556: 	ldr	r2, [r2, #8]
	cmp	r2, #0
	bne	lab558
	b	lab555
lab553: 	movs	r6, #0
	movs	r3, #2
	movs	r0, #1
	b	lab569
lab570: 	cmp	r3, ip
	bge	lab554
	mov	r1, r7
	mov	r2, r6
lab572: 	ldr	r0, [r4, r3, lsl #2]
	cmp	r0, r1
	itt	gt
	movgt	r1, r0
	movgt	r2, r3
lab571: 	cmp	r6, r2
	beq	lab554
	lsls	r3, r2, #1
	adds	r0, r3, #1
	cmp	ip, r0
	str	r1, [r4, r6, lsl #2]
	add	r3, r3, #2
	str	r7, [r4, r2, lsl #2]
	ble	lab554
	mov	r6, r2
lab569: 	ldr	r1, [r4, r0, lsl #2]
	cmp	r7, r1
	bge	lab570
	cmp	r3, ip
	mov	r2, r0
	bge	lab571
	b	lab572
lab564: 	ldr	r6, [r6, #12]
	b	lab573
lab562: 	add	r7, sp, #472	
	add	r2, r7, r2, lsl #2
	ldr	r2, [r2, #132]	
	cmp r2, #0
	bne lab574
	mov	ip, r6
	b	lab575
lab574: 	str	r2, [sp, #472]	
	cmp r0, #0
	beq lab576
	ldr	r6, [sp, #4]
	strh	r1, [sp, #1116]	
lab577: 	ldr	r2, [r2, #0]
	ldr	r3, [r6, #0]
	add	r0, sp, #472	
	add	r3, r2
	str	r3, [r6, #0]
push {r1, r2}
	ldr r1, =3943
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib__rbtree_it_compute_current_elem
	push {r1, r2}
	ldr r1, =3943
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r2, [sp, #472]	
	cmp	r2, #0
	bne	lab577
	b	lab567
lab526: 	add	r0, sp, #36	
	bl	sglib_hashed_ilist_it_next
	push {r1, r2}
	ldr r1, =610
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab578
	ldrd	fp, r7, [sp, #40]	
	mov	r6, fp
	b	lab531
lab576: 	ldr	r6, [sp, #4]
	b	lab577
	nop
sglib__rbtree_it_init:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r8, [sp, #24]
	strh	r2, [r0, #646]	
	mov	r6, r0
	mov	r7, r2
	mov	r4, r1
	str	r8, [r0, #648]	
	str	r3, [r0, #652]	
	cmp	r8, #0
	beq	lab579
	mov	r5, r3
	cmp r3, #0
	beq lab580
lab585: 	cmp r4, #0
	beq lab581
lab584: 	mov	r1, r4
	mov	r0, r8
	blx	r5
	cmp	r0, #0
	blt	lab582
	beq	lab583
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab584
lab581: 	movs	r0, #0
	strh	r0, [r6, #644]	
	str	r0, [r6, #0]
	nop
	push {r1, r2}
	ldr r1, =5671
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab582: 	ldr	r4, [r4, #8]
	b	lab585
lab579: 	cmp	r1, #0
	beq	lab581
lab583: 	movs	r2, #1
	movs	r3, #0
	strh	r2, [r6, #644]	
	strb	r3, [r6, #4]
	str	r4, [r6, #132]	
	cmp r7, #0
	bne lab586
	str	r4, [r6, #0]
	mov	r0, r4
	nop
	push {r1, r2}
	ldr r1, =4399
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab586: 	mov	r0, r6
push {r1, r2}
	ldr r1, =1767
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib__rbtree_it_compute_current_elem
	push {r1, r2}
	ldr r1, =1767
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r0, [r6, #0]
	nop
	push {r1, r2}
	ldr r1, =495
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab580: 	cmp	r1, #0
	beq	lab581
	ldr	r2, [r8]
	ldr	r3, [r4, #0]
	subs	r3, r2, r3
	cmp	r3, #0
	blt	lab587
lab588: 	beq	lab583
	ldr	r4, [r4, #12]
	cmp	r4, #0
	beq	lab581
lab589: 	ldr	r3, [r4, #0]
	subs	r3, r2, r3
	cmp	r3, #0
	bge	lab588
lab587: 	ldr	r4, [r4, #8]
	cmp	r4, #0
	bne	lab589
	b	lab581
sglib_rbtree_it_init:
	push	{r4, lr}
	movs	r2, #2
	movs	r4, #0
	strh	r2, [r0, #646]	
	strd	r4, r4, [r0, #648]	
	mov	r3, r0
	mov	r2, r1
	cmp	r1, #0
	beq	lab590
	movs	r1, #1
	str	r2, [r3, #132]	
	mov	r0, r4
	strh	r1, [r3, #644]	
	strb	r4, [r3, #4]
	str	r4, [r3, #0]
	mov	r2, r4
	mov	lr, r4
	b	lab591
lab594: 	subs	r2, r1, #1
	sxth	r0, r2
	add	ip, r3, r0
	ldrb	ip, [ip, #4]
	cmp	ip, #2
	beq	lab592
lab600: 	sxtah	r0, r3, r2
	ldrb	r0, [r0, #4]
lab591: 	cmp	r0, #1
	bls	lab593
	sxth	r1, r2
	strh	r1, [r3, #644]	
lab597: 	cmp	r1, #0
	bgt	lab594
	movs	r0, #0
	pop	{r4, pc}
lab593: 	sxth	r2, r2
	add	r4, r3, r2, lsl #2
	ldr	r4, [r4, #132]	
	cmp r0, #0
	bne lab595
	ldr	r4, [r4, #8]
	cmp r4, #0
	beq lab596
lab598: 	adds	r0, r3, r1
	add	ip, r3, r1, lsl #2
	adds	r1, #1
	sxth	r1, r1
	add	r2, r3
	str	r4, [ip, #132]	
	strb	lr, [r0, #4]
	strh	r1, [r3, #644]	
	ldrb	r0, [r2, #4]
lab599: 	adds	r0, #1
	strb	r0, [r2, #4]
	b	lab597
lab595: 	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab598
lab596: 	ldrsh	r1, [r3, #644]	
	add	r2, r3
	b	lab599
lab592: 	add	r0, r3, r0, lsl #2
	ldr	r0, [r0, #132]	
	str	r0, [r3, #0]
	cmp	r0, #0
	beq	lab600
	pop	{r4, pc}
lab590: 	strh	r1, [r3, #644]	
	str	r1, [r3, #0]
	mov	r0, r1
	pop	{r4, pc}
	nop
sglib_rbtree_it_init_preorder:
	movs	r2, #0
	strd	r2, r2, [r0, #648]	
	mov	r3, r0
	strh	r2, [r0, #646]	
	mov	r0, r1
	cmp r1, #0
	beq lab601
	strb	r2, [r3, #4]
	movs	r2, #1
	str	r1, [r3, #132]	
	str	r0, [r3, #0]
	strh	r2, [r3, #644]	
	bx	lr
lab601: 	mov	r2, r1
	str	r0, [r3, #0]
	strh	r2, [r3, #644]	
	bx	lr
	nop
sglib_rbtree_it_init_inorder:
	push	{r4, lr}
	movs	r2, #1
	movs	r4, #0
	strd	r4, r4, [r0, #648]	
	mov	r3, r0
	strh	r2, [r0, #646]	
	cmp	r1, #0
	beq	lab602
	str	r1, [r3, #132]	
	mov	r0, r4
	strh	r2, [r3, #644]	
	strb	r4, [r3, #4]
	str	r4, [r3, #0]
	mov	r1, r4
	mov	lr, r4
	b	lab603
lab606: 	subs	r1, r2, #1
	sxth	r0, r1
	add	ip, r3, r0
	ldrb	ip, [ip, #4]
	cmp	ip, #1
	beq	lab604
lab612: 	sxtah	r0, r3, r1
	ldrb	r0, [r0, #4]
lab603: 	cmp	r0, #1
	bls	lab605
	sxth	r2, r1
	strh	r2, [r3, #644]	
lab609: 	cmp	r2, #0
	bgt	lab606
	movs	r0, #0
	pop	{r4, pc}
lab605: 	sxth	r1, r1
	add	r4, r3, r1, lsl #2
	ldr	r4, [r4, #132]	
	cmp r0, #0
	bne lab607
	ldr	r4, [r4, #8]
	cmp r4, #0
	beq lab608
lab610: 	adds	r0, r3, r2
	add	ip, r3, r2, lsl #2
	adds	r2, #1
	sxth	r2, r2
	add	r1, r3
	str	r4, [ip, #132]	
	strb	lr, [r0, #4]
	strh	r2, [r3, #644]	
	ldrb	r0, [r1, #4]
lab611: 	adds	r0, #1
	strb	r0, [r1, #4]
	b	lab609
lab607: 	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab610
lab608: 	ldrsh	r2, [r3, #644]	
	add	r1, r3
	b	lab611
lab604: 	add	r0, r3, r0, lsl #2
	ldr	r0, [r0, #132]	
	str	r0, [r3, #0]
	cmp	r0, #0
	beq	lab612
	pop	{r4, pc}
lab602: 	strh	r1, [r0, #644]	
	str	r1, [r0, #0]
	mov	r0, r1
	pop	{r4, pc}
	nop
sglib_rbtree_it_init_postorder:
	push	{r4, lr}
	movs	r2, #2
	movs	r4, #0
	strh	r2, [r0, #646]	
	strd	r4, r4, [r0, #648]	
	mov	r3, r0
	mov	r2, r1
	cmp	r1, #0
	beq	lab613
	movs	r1, #1
	str	r2, [r3, #132]	
	mov	r0, r4
	strh	r1, [r3, #644]	
	strb	r4, [r3, #4]
	str	r4, [r3, #0]
	mov	r2, r4
	mov	lr, r4
	b	lab614
lab617: 	subs	r2, r1, #1
	sxth	r0, r2
	add	ip, r3, r0
	ldrb	ip, [ip, #4]
	cmp	ip, #2
	beq	lab615
lab623: 	sxtah	r0, r3, r2
	ldrb	r0, [r0, #4]
lab614: 	cmp	r0, #1
	bls	lab616
	sxth	r1, r2
	strh	r1, [r3, #644]	
lab620: 	cmp	r1, #0
	bgt	lab617
	movs	r0, #0
	pop	{r4, pc}
lab616: 	sxth	r2, r2
	add	r4, r3, r2, lsl #2
	ldr	r4, [r4, #132]	
	cmp r0, #0
	bne lab618
	ldr	r4, [r4, #8]
	cmp r4, #0
	beq lab619
lab621: 	adds	r0, r3, r1
	add	ip, r3, r1, lsl #2
	adds	r1, #1
	sxth	r1, r1
	add	r2, r3
	str	r4, [ip, #132]	
	strb	lr, [r0, #4]
	strh	r1, [r3, #644]	
	ldrb	r0, [r2, #4]
lab622: 	adds	r0, #1
	strb	r0, [r2, #4]
	b	lab620
lab618: 	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab621
lab619: 	ldrsh	r1, [r3, #644]	
	add	r2, r3
	b	lab622
lab615: 	add	r0, r3, r0, lsl #2
	ldr	r0, [r0, #132]	
	str	r0, [r3, #0]
	cmp	r0, #0
	beq	lab623
	pop	{r4, pc}
lab613: 	strh	r1, [r3, #644]	
	str	r1, [r3, #0]
	mov	r0, r1
	pop	{r4, pc}
	nop
sglib_rbtree_it_init_on_equal:
	push	{lr}
	sub	sp, #12
	str	r3, [sp, #0]
	mov	r3, r2
	movs	r2, #1
	bl	sglib__rbtree_it_init
	push {r1, r2}
	ldr r1, =5630
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	sp, #12
	ldr	pc, [sp], #4
sglib_rbtree_it_current:
	ldr	r0, [r0, #0]
	bx	lr
sglib_rbtree_it_next:
	push	{r4, lr}
	mov	r4, r0
push {r1, r2}
	ldr r1, =3532
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib__rbtree_it_compute_current_elem
	push {r1, r2}
	ldr r1, =3532
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r0, [r4, #0]
	pop	{r4, pc}
sglib___rbtree_consistency_check:
	push	{r4, r5, lr}
	sub	sp, #12
	mov	r3, #4294967295	
	str	r3, [sp, #4]
	cmp r0, #0
	beq lab624
	mov	r4, r0
	movs	r5, #0
lab625: 	ldrb	r3, [r4, #4]
	ldr	r0, [r4, #8]
	cmp	r3, #1
	it	ne
	addne	r5, #1
	add	r1, sp, #4
	mov	r2, r5
push {r1, r2}
	ldr r1, =4240
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	sglib___rbtree_consistency_check_recursive
	push {r1, r2}
	ldr r1, =4240
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r4, [r4, #12]
	cmp	r4, #0
	bne	lab625
lab624: 	add	sp, #12
	pop	{r4, r5, pc}
verify_benchmark:
	push	{r3, r4, r5, lr}
	movw	lr, #3800	
	movt	lr, #8192	
	ldr	r3, [lr, #400]	
	cmp r3, #0
	beq lab626
lab627: 	mov	r2, r3
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	lab627
	ldr	r1, [r2, #0]
	cmp	r1, r3
	bne	lab628
lab629: 	ldr	r2, [r2, #4]
	adds	r3, #1
	cmp r2, #0
	beq lab626
	ldr	r1, [r2, #0]
	cmp	r1, r3
	beq	lab629
lab628: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =6798
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab626: 	movw	ip, #0
	movt	ip, #8192	
	movw	r4, #52429	
	add	r5, ip, #400	
	movt	r4, #52428	
lab632: 	ldr	r1, [ip], #4
	umull	r2, r3, r4, r1
	lsrs	r3, r3, #4
	add	r3, r3, r3, lsl #2
	sub	r3, r1, r3, lsl #2
	add	r3, lr, r3, lsl #2
	ldr	r3, [r3, #404]	
	cmp r3, #0
	bne lab630
	b	lab628
lab631: 	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	lab628
lab630: 	ldr	r2, [r3, #0]
	cmp	r1, r2
	bne	lab631
	cmp	r5, ip
	bne	lab632
	movw	r3, #15050	
	cmp	r0, r3
	bne	lab628
	movw	r0, #4288	
	movt	r0, #8192	
	bl	check_heap_beebs
	cmp	r0, #0
	beq	lab628
	movw	r0, #3800	
	movw	r1, #400	
	movt	r1, #8192	
	mov	r2, #400	
	movt	r0, #8192	
	bl	memcmp
	push {r1, r2}
	ldr r1, =5322
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	clz	r0, r0
	lsrs	r0, r0, #5
	nop
	push {r1, r2}
	ldr r1, =1249
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
initialise_benchmark:
	bx	lr
	nop
warm_caches:
	b	benchmark_body
benchmark:
	movw	r0, #4872	
	b	benchmark_body
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
lab633: 	ldr	r2, [r3, #0]
	lsls	r0, r2, #14
	bpl	lab633
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
lab634: 	ldr	r3, [r2, #0]
	lsls	r1, r3, #6
	bpl	lab634
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
lab635: 	ldr	r3, [r1, #8]
	lsls	r3, r3, #28
	bpl	lab635
	movw	r3, #1320	
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
push {r1, r2}
	ldr r1, =3195
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	warm_caches
	push {r1, r2}
	ldr r1, =3195
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	start_trigger
push {r1, r2}
	ldr r1, =753
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	benchmark
	push {r1, r2}
	ldr r1, =753
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r0, [sp, #4]
	bl	stop_trigger
	ldr	r0, [sp, #4]
	bl	verify_benchmark
	push {r1, r2}
	ldr r1, =7835
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
	movw	r3, #12480	
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
	movw	r3, #12480	
	movt	r3, #8192	
	str	r0, [r3, #0]
	bx	lr
init_heap_beebs:
	ands	r2, r1, #3
	push	{r3, lr}
	bne	lab636
	movw	r3, #12480	
	movt	r3, #8192	
	add	r1, r0
	strd	r0, r1, [r3, #4]
	str	r2, [r3, #12]
	nop
	push {r1, r2}
	ldr r1, =4671
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, pc}
lab636: 	movw	r3, #800	
	movw	r2, #880	
	movw	r0, #832	
	movt	r3, #8192	
	movt	r2, #8192	
	movs	r1, #65	
	movt	r0, #8192	
	bl	__assert_func
check_heap_beebs:
	movw	r3, #12480	
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
	beq lab637
	movw	r2, #12480	
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
	bcc	lab637
	str	r1, [r2, #4]
	bx	lr
lab637: 	movs	r0, #0
	bx	lr
	nop
calloc_beebs:
	mul	r2, r1, r0
	push	{r4, lr}
	cmp r2, #0
	beq lab638
	movw	r3, #12480	
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
	bcc	lab638
	str	r1, [r3, #4]
	cmp r4, #0
	beq lab639
	movs	r1, #0
	mov	r0, r4
push {r1, r2}
	ldr r1, =435
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
lab639:	push {r1, r2}
	ldr r1, =435
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r4
	pop	{r4, pc}
lab638: 	movs	r4, #0
	mov	r0, r4
	pop	{r4, pc}
	nop
realloc_beebs:
	cmp	r0, #0
	beq	lab640
	cmp	r1, #0
	beq	lab640
	movw	r3, #12480	
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
	bcc	lab641
	str	r4, [r3, #4]
	cmp r0, #0
	beq lab641
	adds	r3, r2, #1
	subs	r3, r0, r3
	cmp	r3, #2
	add	r4, r1, #4294967295	
	bls	lab642
	cmp	r4, #7
	bls	lab642
	bic	r4, r1, #3
	mov	r3, r2
	mov	ip, r0
	add	r4, r2
lab643: 	ldr	lr, [r3], #4
	str	lr, [ip], #4
	cmp	r3, r4
	bne	lab643
	lsls	r4, r1, #30
	bic	r3, r1, #3
	beq	lab644
	ldrb	r4, [r2, r3]
	strb	r4, [r0, r3]
	adds	r4, r3, #1
	cmp	r1, r4
	bls	lab644
	adds	r3, #2
	ldrb	r5, [r2, r4]
	strb	r5, [r0, r4]
	cmp	r1, r3
	bls	lab644
	ldrb	r2, [r2, r3]
	strb	r2, [r0, r3]
lab644: 	pop	{r4, r5, pc}
lab641: 	movs	r0, #0
	pop	{r4, r5, pc}
lab642: 	subs	r3, r2, #1
	subs	r1, r0, #1
	add	r2, r4
lab645: 	ldrb	r4, [r3, #1]!
	strb	r4, [r1, #1]!
	cmp	r3, r2
	bne	lab645
	pop	{r4, r5, pc}
lab640: 	movs	r0, #0
	bx	lr
free_beebs:
	bx	lr
	nop
memcpy:
	mov	ip, r0
	orr	r3, r1, r0
	ands	r3, r3, #3
	bne	lab646
lab655: 	subs	r2, #64	
	bcc	lab647
lab648: 	ldr	r3, [r1], #4
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
	bcs	lab648
lab647: 	adds	r2, #48	
	bcc	lab649
lab650: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #16
	bcs	lab650
lab649: 	adds	r2, #12
	bcc	lab651
lab652: 	ldr	r3, [r1], #4
	str	r3, [r0], #4
	subs	r2, #4
	bcs	lab652
lab651: 	adds	r2, #4
	beq	lab653
	lsls	r2, r2, #31
	itt	ne
	ldrbne	r3, [r1], #1
	strbne	r3, [r0], #1
	bcc	lab653
	ldrh	r3, [r1, #0]
	strh	r3, [r0, #0]
lab653: 	mov	r0, ip
	bx	lr
	nop
lab646: 	cmp	r2, #8
	bcc	lab654
	lsls	r3, r1, #30
	beq	lab655
	ands	r3, r0, #3
	beq	lab655
	rsb	r3, r3, #4
	subs	r2, r2, r3
	lsls	r3, r3, #31
	itt	ne
	ldrbne	r3, [r1], #1
	strbne	r3, [r0], #1
	bcc	lab655
	ldrh	r3, [r1], #2
	strh	r3, [r0], #2
	b	lab655
lab654: 	subs	r2, #4
	bcc	lab651
lab656: 	subs	r2, #1
	ldrb	r3, [r1], #1
	strb	r3, [r0], #1
	bcs	lab656
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
memchr:
	and	r1, r1, #255	
	cmp	r2, #16
	blt	lab657
	tst	r0, #7
	beq	lab658
lab661: 	ldrb	r3, [r0], #1
	subs	r2, #1
	cmp	r3, r1
	beq	lab659
	tst	r0, #7
	cmp r2, #0
	beq lab660
	bne	lab661
lab658: 	push	{r4, r5, r6, r7}
	orr	r1, r1, r1, lsl #8
	orr	r1, r1, r1, lsl #16
	bic	r4, r2, #7
	mvns	r7, #0
	movs	r3, #0
lab663: 	ldrd	r5, r6, [r0], #8
	subs	r4, #8
	eor	r5, r5, r1
	eor	r6, r6, r1
	uadd8	r5, r5, r7
	sel	r5, r3, r7
	uadd8	r6, r6, r7
	sel	r6, r5, r7
	cmp r6, #0
	bne lab662
	bne	lab663
	pop	{r4, r5, r6, r7}
	and	r1, r1, #255	
	and	r2, r2, #7
lab657: 	cmp r2, #0
	beq lab660
lab664: 	ldrb	r3, [r0], #1
	subs	r2, #1
	eor	r3, r3, r1
	cmp r3, #0
	beq lab659
	bne	lab664
lab660: 	movs	r0, #0
	bx	lr
lab659: 	subs	r0, #1
	bx	lr
lab662: 	cmp	r5, #0
	itte	eq
	moveq	r5, r6
	subeq	r0, #3
	subne	r0, #7
	tst	r5, #1
	bne	lab665
	adds	r0, #1
	tst	r5, #256	
	ittt	eq
	addeq	r0, #1
	tsteq	r5, #98304	
	addeq	r0, #1
lab665: 	pop	{r4, r5, r6, r7}
	subs	r0, #1
	bx	lr
	nop
lab666: 	sub	r0, r2, r3
	bx	lr
	nop
strcmp:
	ldrb	r2, [r0, #0]
	ldrb	r3, [r1, #0]
	cmp	r2, #1
	it	cs
	cmpcs	r2, r3
	bne	lab666
	strd	r4, r5, [sp, #-16]!
	orr	r4, r0, r1
	strd	r6, r7, [sp, #8]
	mvn	ip, #0
	mov	r2, r4, lsl #29
	cmp r2, #0
	beq lab667
	eor	r4, r0, r1
	tst	r4, #7
	bne	lab668
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
	beq	lab669
	orn	r3, r3, r4
	mov	r2, ip
	orn	r7, r7, r4
	mov	r6, ip
	b	lab669
lab667: 	ldrd	r2, r3, [r0], #16
	ldrd	r6, r7, [r1], #16
lab669: 	uadd8	r5, r2, ip
	eor	r4, r2, r6
	sel	r4, r4, ip
	cmp r4, #0
	bne lab670
	uadd8	r5, r3, ip
	eor	r5, r3, r7
	sel	r5, r5, ip
	cmp r5, #0
	bne lab671
	ldrd	r2, r3, [r0, #-8]
	ldrd	r6, r7, [r1, #-8]
	uadd8	r5, r2, ip
	eor	r4, r2, r6
	sel	r4, r4, ip
	uadd8	r5, r3, ip
	eor	r5, r3, r7
	sel	r5, r5, ip
	orrs	r5, r4
	beq	lab667
	cmp r4, #0
	bne lab670
lab671: 	rev	r5, r5
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
lab670: 	rev	r4, r4
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
lab668: 	tst	r4, #3
	bne	lab672
	ands	r4, r0, #3
	bne	lab673
lab675: 	ldr	r2, [r0], #8
	ldr	r3, [r1], #8
lab676: 	uadd8	r5, r2, ip
	eor	r5, r2, r3
	sel	r5, r5, ip
	cmp r5, #0
	bne lab674
	ldr	r2, [r0, #-4]
	ldr	r3, [r1, #-4]
	uadd8	r5, r2, ip
	eor	r5, r2, r3
	sel	r5, r5, ip
	cmp	r5, #0
	beq	lab675
lab674: 	rev	r5, r5
	clz	r4, r5
	bic	r4, r4, #7
	lsr	r1, r3, r4
	lsr	r2, r2, r4
	and	r0, r2, #255	
	and	r1, r1, #255	
	ldrd	r4, r5, [sp], #16
	sub	r0, r0, r1
	bx	lr
lab673: 	mov	r4, r4, lsl #3
	bic	r0, r0, #3
	ldr	r2, [r0], #8
	bic	r1, r1, #3
	ldr	r3, [r1], #8
	lsl	r4, ip, r4
	orn	r2, r2, r4
	orn	r3, r3, r4
	b	lab676
lab672: 	ands	r4, r0, #3
	beq	lab677
	sub	r1, r1, r4
	bic	r0, r0, #3
	lsls	r4, r4, #31
	ldr	r2, [r0], #4
	beq	lab678
	bcs	lab679
	ldrb	r3, [r1, #2]
	uxtb	r4, r2, ror #16
	subs	r4, r4, r3
	bne	lab680
	cmp r3, #0
	beq lab680
lab678: 	ldrb	r3, [r1, #3]
	uxtb	r4, r2, ror #24
	subs	r4, r4, r3
	bne	lab680
	cmp r3, #0
	bne lab679
lab680: 	mov	r0, r4
	ldr	r4, [sp], #16
	bx	lr
lab679: 	add	r1, r1, #4
lab677: 	ldr	r2, [r0], #4
	lsls	r4, r1, #31
	bic	r1, r1, #3
	ldr	r3, [r1], #4
	bhi	lab681
	bcs	lab682
lab686: 	bic	r4, r2, #4278190080	
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #8
	sel	r5, r5, ip
	bne	lab683
	cmp r5, #0
	bne lab684
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #24
	bne	lab685
	ldr	r2, [r0], #4
	b	lab686
lab683: 	mov	r3, r3, lsr #8
	b	lab687
lab684: 	bics	r5, r5, #4278190080	
	bne	lab688
	ldrb	r0, [r1, #0]
	ldrd	r4, r5, [sp], #16
	rsb	r0, r0, #0
	bx	lr
lab685: 	mov	r2, r2, lsr #24
	and	r3, r3, #255	
	b	lab687
lab682: 	and	r4, r2, ip, lsr #16
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #16
	sel	r5, r5, ip
	bne	lab689
	cmp r5, #0
	bne lab690
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #16
	bne	lab691
	ldr	r2, [r0], #4
	b	lab682
lab689: 	mov	r3, r3, lsr #16
	b	lab687
lab690: 	ands	r5, r5, ip, lsr #16
	bne	lab688
	ldrh	r3, [r1, #0]
	mov	r2, r2, lsr #16
	b	lab687
lab691: 	mov	r2, r2, lsr #16
	and	r3, r3, ip, lsr #16
	b	lab687
lab681: 	and	r4, r2, #255	
	uadd8	r5, r2, ip
	eors	r5, r4, r3, lsr #24
	sel	r5, r5, ip
	bne	lab692
	cmp r5, #0
	bne lab693
	ldr	r3, [r1], #4
	eor	r4, r4, r2
	cmp	r4, r3, lsl #8
	bne	lab694
	ldr	r2, [r0], #4
	b	lab681
lab692: 	mov	r3, r3, lsr #24
	b	lab687
lab693: 	tst	r5, #255	
	bne	lab688
	ldr	r3, [r1, #0]
lab694: 	mov	r2, r2, lsr #8
	bic	r3, r3, #4278190080	
	b	lab687
lab688: 	mov	r0, #0
	ldrd	r4, r5, [sp], #16
	bx	lr
lab687: 	rev	r2, r2
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
	bne	lab695
	mov	r4, #0
	mvn	r0, #7
lab697: 	ldrd	r2, r3, [r1]
	pld	[r1, #64]	
	add	r0, r0, #8
lab698: 	uadd8	r2, r2, ip
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab696
	ldrd	r2, r3, [r1, #8]
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab696
	ldrd	r2, r3, [r1, #16]
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp r3, #0
	bne lab696
	ldrd	r2, r3, [r1, #24]
	add	r1, r1, #32
	uadd8	r2, r2, ip
	add	r0, r0, #8
	sel	r2, r4, ip
	uadd8	r3, r3, ip
	sel	r3, r2, ip
	cmp	r3, #0
	beq	lab697
lab696: 	cmp	r2, #0
	itt	eq
	addeq	r0, #4
	moveq	r2, r3
	rev	r2, r2
	clz	r2, r2
	ldrd	r4, r5, [sp], #8
	add	r0, r0, r2, lsr #3
	bx	lr
lab695: 	ldrd	r2, r3, [r1]
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
	b	lab698
__aeabi_uldivmod:
	cmp r3, #0
	bne lab699
	cmp r2, #0
	bne lab699
	cmp	r1, #0
	it	eq
	cmpeq	r0, #0
	itt	ne
	movne	r1, #4294967295	
	movne	r0, #4294967295	
	b	__aeabi_idiv0
lab699: 	sub	ip, sp, #8
	strd	ip, lr, [sp, #-16]!
	bl	__udivmoddi4
	push {r1, r2}
	ldr r1, =2511
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	lr, [sp, #4]
	ldrd	r2, r3, [sp, #8]
	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =8054
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
	bne	lab700
	cmp	r2, r1
	mov	ip, r2
	bls	lab701
	clz	r2, r2
	cmp r2, #0
	beq lab702
	lsl	r3, r1, r2
	rsb	r1, r2, #32
	lsr	r1, r0, r1
	lsl	ip, ip, r2
	orr	r8, r1, r3
	lsls	r4, r2
lab702: 	mov	r5, ip, lsr #16
	lsrs	r1, r4, #16
	udiv	lr, r8, r5
	uxth	r7, ip
	mls	r3, r5, lr, r8
	orr	r3, r1, r3, lsl #16
	mul	r1, lr, r7
	cmp	r1, r3
	bls	lab703
	adds	r3, ip, r3
	add	r0, lr, #4294967295	
	bcs	lab704
	cmp	r1, r3
	bls	lab704
	sub	lr, lr, #2
	add	r3, ip
lab703: 	subs	r3, r3, r1
	uxth	r4, r4
	udiv	r0, r3, r5
	mls	r3, r5, r0, r3
	orr	r4, r4, r3, lsl #16
	mul	r7, r0, r7
	cmp	r7, r4
	bls	lab705
	adds	r4, ip, r4
	add	r3, r0, #4294967295	
	bcs	lab706
	cmp	r7, r4
	bls	lab706
	add	r4, ip
	subs	r0, #2
lab705: 	subs	r4, r4, r7
	orr	r0, r0, lr, lsl #16
	movs	r1, #0
lab721: 	cmp r6, #0
	beq lab707
	lsrs	r4, r2
	movs	r3, #0
	strd	r4, r3, [r6]
lab707:	nop
	push {r1, r2}
	ldr r1, =3059
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab700: 	cmp	r3, r1
	bls	lab708
	cmp	r6, #0
	beq	lab709
	movs	r1, #0
	strd	r0, r5, [r6]
	mov	r0, r1
	nop
	push {r1, r2}
	ldr r1, =4568
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab708: 	clz	r1, r3
	cmp	r1, #0
	bne	lab710
	cmp	r3, r5
	bcc	lab711
	cmp	r2, r0
	bhi	lab712
lab711: 	subs	r4, r0, r2
	sbc	r3, r5, r3
	movs	r0, #1
	mov	r8, r3
lab735: 	cmp	r6, #0
	beq	lab707
	strd	r4, r8, [r6]
	b	lab707
lab701: 	cmp r2, #0
	bne lab713
	udf	#255	
lab713: 	clz	r2, r2
	cmp	r2, #0
	bne	lab714
	sub	r5, r1, ip
	mov	r7, ip, lsr #16
	uxth	lr, ip
	movs	r1, #1
lab733: 	udiv	r3, r5, r7
	mls	r0, r7, r3, r5
	lsrs	r5, r4, #16
	orr	r5, r5, r0, lsl #16
	mul	r0, lr, r3
	cmp	r0, r5
	bls	lab715
	adds	r5, ip, r5
	add	r8, r3, #4294967295	
	bcs	lab716
	cmp	r0, r5
	bhi	lab717
lab716: 	mov	r3, r8
lab715: 	subs	r5, r5, r0
	uxth	r4, r4
	udiv	r0, r5, r7
	mls	r5, r7, r0, r5
	orr	r4, r4, r5, lsl #16
	mul	lr, lr, r0
	cmp	lr, r4
	bls	lab718
	adds	r4, ip, r4
	add	r5, r0, #4294967295	
	bcs	lab719
	cmp	lr, r4
	bhi	lab720
lab719: 	mov	r0, r5
lab718: 	sub	r4, r4, lr
	orr	r0, r0, r3, lsl #16
	b	lab721
lab710: 	rsb	r7, r1, #32
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
	bls	lab722
	adds	r5, ip, r5
	add	sl, r8, #4294967295	
	bcs	lab723
	cmp	r0, r5
	bls	lab723
	sub	r8, r8, #2
	add	r5, ip
lab722: 	subs	r5, r5, r0
	uxth	r4, r4
	udiv	r0, r5, r9
	mls	r5, r9, r0, r5
	orr	r5, r4, r5, lsl #16
	mul	lr, r0, lr
	cmp	lr, r5
	bls	lab724
	adds	r5, ip, r5
	add	r4, r0, #4294967295	
	bcs	lab725
	cmp	lr, r5
	bls	lab725
	subs	r0, #2
	add	r5, ip
lab724: 	orr	r0, r0, r8, lsl #16
	umull	r9, r4, r0, r2
	sub	r5, r5, lr
	cmp	r5, r4
	mov	r8, r9
	mov	lr, r4
	bcc	lab726
	beq	lab727
lab734: 	cmp r6, #0
	beq lab728
	subs	r2, r3, r8
	sbc	r5, r5, lr
	lsl	r7, r5, r7
	lsr	r3, r2, r1
	lsrs	r5, r1
	orrs	r7, r3
	strd	r7, r5, [r6]
lab728: 	movs	r1, #0
	nop
	push {r1, r2}
	ldr r1, =6274
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
lab714: 	rsb	r3, r2, #32
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
	bls	lab729
	adds	r3, ip, r3
	add	r8, r1, #4294967295	
	bcs	lab730
	cmp	r0, r3
	bls	lab730
	subs	r1, #2
	add	r3, ip
lab729: 	subs	r3, r3, r0
	uxth	r5, r5
	udiv	r0, r3, r7
	mls	r3, r7, r0, r3
	orr	r5, r5, r3, lsl #16
	mul	r3, r0, lr
	cmp	r3, r5
	bls	lab731
	adds	r5, ip, r5
	add	r8, r0, #4294967295	
	bcs	lab732
	cmp	r3, r5
	bls	lab732
	subs	r0, #2
	add	r5, ip
lab731: 	subs	r5, r5, r3
	orr	r1, r0, r1, lsl #16
	b	lab733
lab709: 	mov	r1, r6
	mov	r0, r6
	b	lab707
lab704: 	mov	lr, r0
	b	lab703
lab706: 	mov	r0, r3
	b	lab705
lab727: 	cmp	r3, r9
	bcs	lab734
lab726: 	subs	r8, r9, r2
	sbc	lr, r4, ip
	subs	r0, #1
	b	lab734
lab732: 	mov	r0, r8
	b	lab731
lab725: 	mov	r0, r4
	b	lab724
lab730: 	mov	r1, r8
	b	lab729
lab723: 	mov	r8, sl
	b	lab722
lab717: 	subs	r3, #2
	add	r5, ip
	b	lab715
lab712: 	mov	r0, r1
	b	lab735
lab720: 	add	r4, ip
	subs	r0, #2
	b	lab718
__aeabi_idiv0:
	bx	lr
	nop
__assert_func:
	push	{lr}
	ldr	r4, =0x2000052c	
	ldr	r5, [r4, #0]
	mov	r4, r2
	ldr	r6, [r5, #12]
	mov	r2, r3
	sub	sp, #20
	mov	r3, r0
	mov	r5, r1
	cmp r4, #0
	beq lab736
	ldr	r1, =0x20000380	
lab737: 	str	r5, [sp, #0]
	strd	r1, r4, [sp, #4]
	mov	r0, r6
	ldr	r1, =0x20000390	
	bl	fiprintf
	push {r1, r2}
	ldr r1, =747
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	abort
lab736: 	ldr	r1, =0x2000038c	
	mov	r4, r1
	b	lab737
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
	ldr r1, =3942
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =3942
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
	ldr	r4, =0x2000052c	
	ldr	r2, [r3], #4
	str	r3, [sp, #4]
	mov	r1, r0
	ldr	r0, [r4, #0]
push {r1, r2}
	ldr r1, =235
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =235
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	add	sp, #12
	ldmia	sp!, {r4, lr}
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =7023
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
	nop
	.ltorg
memcmp:
	cmp	r2, #3
	push	{r4, lr}
	bls	lab738
	orr	ip, r0, r1
	tst	ip, #3
	mov	r4, r0
	mov	r3, r1
	bne	lab739
lab740: 	mov	r1, r3
	mov	r0, r4
	ldr	lr, [r1]
	ldr	ip, [r0]
	cmp	ip, lr
	add	r4, r4, #4
	add	r3, r3, #4
	bne	lab739
	subs	r2, #4
	cmp	r2, #3
	mov	r0, r4
	mov	r1, r3
	bhi	lab740
lab738: 	subs	r4, r2, #1
	cmp r2, #0
	beq lab741
lab745: 	add	ip, r0, #4294967295	
	subs	r1, #1
	b	lab742
lab744: 	adds	r3, r0, r3
	beq	lab743
lab742: 	ldrb	lr, [ip, #1]!
	ldrb	r2, [r1, #1]!
	cmp	lr, r2
	sub	r3, r4, ip
	beq	lab744
	sub	r0, lr, r2
	nop
	push {r1, r2}
	ldr r1, =1469
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
lab739: 	subs	r4, r2, #1
	b	lab745
lab743: 	mov	r0, r3
	nop
	push {r1, r2}
	ldr r1, =2713
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
lab741: 	mov	r0, r2
	nop
	push {r1, r2}
	ldr r1, =7275
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, pc}
memset:
	lsls	r3, r0, #30
	push	{r4, r5, lr}
	beq	lab746
	subs	r4, r2, #1
	cmp	r2, #0
	beq	lab747
	uxtb	r2, r1
	mov	r3, r0
	b	lab748
lab749: 	subs	r4, #1
	bcc	lab747
lab748: 	strb	r2, [r3], #1
	lsls	r5, r3, #30
	bne	lab749
lab757: 	cmp	r4, #3
	bls	lab750
	uxtb	r5, r1
	orr	r5, r5, r5, lsl #8
	cmp	r4, #15
	orr	r5, r5, r5, lsl #16
	bls	lab751
	sub	r2, r4, #16
	bic	ip, r2, #15
	add	lr, r3, #32
	add	lr, ip
	mov	ip, r2, lsr #4
	add	r2, r3, #16
lab752: 	strd	r5, r5, [r2, #-16]
	strd	r5, r5, [r2, #-8]
	adds	r2, #16
	cmp	r2, lr
	bne	lab752
	add	r2, ip, #1
	tst	r4, #12
	add	r2, r3, r2, lsl #4
	and	ip, r4, #15
	beq	lab753
lab758: 	sub	r3, ip, #4
	bic	r3, r3, #3
	adds	r3, #4
	add	r3, r2
lab754: 	str	r5, [r2], #4
	cmp	r3, r2
	bne	lab754
	and	r4, ip, #3
lab750: 	cmp r4, #0
	beq lab747
lab756: 	uxtb	r2, r1
	add	r4, r3
lab755: 	strb	r2, [r3], #1
	cmp	r4, r3
	bne	lab755
lab747:	nop
	push {r1, r2}
	ldr r1, =2159
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, pc}
lab753: 	mov	r4, ip
	mov	r3, r2
	cmp	r4, #0
	bne	lab756
	b	lab747
lab746: 	mov	r3, r0
	mov	r4, r2
	b	lab757
lab751: 	mov	r2, r3
	mov	ip, r4
	b	lab758
__sprint_r.part.0:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, [r1, #100]	
	lsls	r4, r3, #18
	mov	r8, r2
	bpl	lab759
	ldr	r3, [r2, #8]
	ldr	r2, [r2, #0]
	cmp r3, #0
	beq lab760
	mov	fp, r1
	mov	r6, r0
	add	r9, r2, #8
lab765: 	ldrd	r5, sl, [r9, #-8]
	movs	r7, sl, lsr #2
	beq	lab761
	subs	r5, #4
	movs	r4, #0
	b	lab762
lab764: 	cmp	r7, r4
	beq	lab763
lab762: 	ldr	r1, [r5, #4]!
	mov	r2, fp
	mov	r0, r6
	bl	_fputwc_r
	push {r1, r2}
	ldr r1, =6978
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	add	r4, r4, #1
	bne	lab764
lab766: 	movs	r3, #0
	strd	r3, r3, [r8, #4]
	nop
	push {r1, r2}
	ldr r1, =5879
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab763: 	ldr	r3, [r8, #8]
lab761: 	bic	sl, sl, #3
	sub	r3, r3, sl
	str	r3, [r8, #8]
	add	r9, r9, #8
	cmp	r3, #0
	bne	lab765
lab760: 	movs	r0, #0
	b	lab766
lab759: 	bl	__sfvwrite_r
	push {r1, r2}
	ldr r1, =6175
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	strd	r3, r3, [r8, #4]
	nop
	push {r1, r2}
	ldr r1, =6425
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
	nop
__sprint_r:
	push	{r4}
	ldr	r4, [r2, #8]
	cmp r4, #0
	beq lab767
	pop	{r4}
	b	__sprint_r.part.0
lab767: 	mov	r0, r4
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
	beq lab768
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab769
lab768: 	ldr	r2, [sp, #4]
	ldr	r3, [r2, #100]	
	lsls	r6, r3, #31
	bpl	lab770
	ldrsh	r1, [r2, #12]
	uxth	r2, r1
lab809: 	lsls	r0, r2, #18
	bmi	lab771
	orr	r2, r1, #8192	
	ldr	r1, [sp, #4]
	ldr	r3, [r1, #100]	
	strh	r2, [r1, #12]
	bic	r3, r3, #8192	
	uxth	r2, r2
	str	r3, [r1, #100]	
lab771: 	lsls	r1, r2, #28
	bpl	lab772
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	lab772
	and	r3, r2, #26
	cmp	r3, #10
	beq	lab773
lab791: 	add	r3, sp, #76	
	str	r3, [sp, #64]	
	movs	r3, #0
	strd	r3, r3, [sp, #68]	
	strd	r3, r3, [sp, #40]	
	str	r3, [sp, #32]
	add	r9, sp, #76	
	str	r3, [sp, #36]	
	str	r3, [sp, #12]
lab824: 	ldrb	r3, [r7, #0]
	cmp	r3, #0
	beq	lab774
	mov	r4, r7
	b	lab775
lab777: 	ldrb	r3, [r4, #1]!
	cmp	r3, #0
	beq	lab776
lab775: 	cmp	r3, #37	
	bne	lab777
	subs	r5, r4, r7
	bne	lab778
lab802: 	ldrb	r3, [r4, #0]
	cmp	r3, #0
	beq	lab774
	mov	r3, #0
	movs	r5, #0
	strb	r3, [sp, #59]	
	adds	r7, r4, #1
	ldrb	r3, [r4, #1]
	str	r5, [sp, #8]
	mov	fp, #4294967295	
	movs	r4, #43	
lab783: 	adds	r7, #1
lab781: 	sub	r2, r3, #32
	cmp	r2, #90	
	bhi	lab779
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
lab780: 	ldrb	r3, [r7], #1
	add	r1, r1, r1, lsl #2
	add	r1, r2, r1, lsl #1
	sub	r2, r3, #48	
	cmp	r2, #9
	bls	lab780
	str	r1, [sp, #8]
	b	lab781
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
	bne	lab782
lab842: 	ldrb	r3, [r7, #0]
	b	lab783
	ldrb	r3, [r7, #0]
	orr	r5, r5, #32
	b	lab783
	orr	r5, r5, #16
	lsls	r4, r5, #26
	ldr	r6, [sp, #16]
	bpl	lab784
	adds	r6, #7
	bic	r6, r6, #7
	mov	r2, r6
	ldr	r3, [r6, #4]
	ldr	r6, [r2], #8
	str	r2, [sp, #16]
	mov	r8, r3
lab831: 	cmp	r3, #0
	blt	lab785
	cmp	fp, #4294967295	
	beq	lab786
	orrs	r3, r6, r8
	bic	sl, r5, #128	
	beq	lab787
lab845: 	cmp	r6, #10
	sbcs	r3, r8, #0
	bcs	lab788
lab886: 	adds	r6, #48	
	movs	r3, #1
	strb	r6, [sp, #239]	
	mov	r5, sl
	str	r3, [sp, #0]
	add	r4, sp, #239	
lab800: 	ldr	r8, [sp]
	ldrb	r3, [sp, #59]	
	cmp	r8, fp
	it	lt
	movlt	r8, fp
	cmp	r3, #0
	beq	lab789
	add	r8, r8, #1
	b	lab789
lab772: 	ldr	r5, [sp, #4]
	ldr	r0, [sp, #20]
	mov	r1, r5
push {r1, r2}
	ldr r1, =1453
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =1453
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab790
	ldrh	r2, [r5, #12]
	and	r3, r2, #26
	cmp	r3, #10
	bne	lab791
lab773: 	ldr	r1, [sp, #4]
	ldrsh	r3, [r1, #14]
	cmp	r3, #0
	blt	lab791
	ldr	r3, [r1, #100]	
	lsls	r6, r3, #31
	bmi	lab792
	lsls	r5, r2, #22
	bpl	lab793
lab792: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	mov	r3, r4
	mov	r2, r7
	add	sp, #244	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	__sbprintf
	orr	r5, r5, #16
	ands	r8, r5, #32
	beq	lab794
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r3, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r3], #8
	str	r3, [sp, #16]
lab828: 	bic	sl, r5, #1024	
	movs	r3, #0
lab838: 	mov	r2, #0
	strb	r2, [sp, #59]	
lab889: 	cmp	fp, #4294967295	
	beq	lab795
	orrs	r2, r6, r8
	bic	r5, sl, #128	
	bne	lab796
	cmp	fp, #0
	bne	lab797
	cmp	r3, #0
	bne	lab798
	ands	r3, sl, #1
	str	r3, [sp, #0]
	beq	lab799
	movs	r3, #48	
	strb	r3, [sp, #239]	
	add	r4, sp, #239	
	b	lab800
lab776: 	subs	r5, r4, r7
	beq	lab774
lab778: 	ldr	r3, [sp, #68]	
	ldr	r2, [sp, #72]	
	adds	r3, #1
	add	r2, r5
	cmp	r3, #7
	strd	r7, r5, [r9]
	str	r2, [sp, #72]	
	str	r3, [sp, #68]	
	bgt	lab801
	add	r9, r9, #8
lab805: 	ldr	r3, [sp, #12]
	add	r3, r5
	str	r3, [sp, #12]
	b	lab802
lab801: 	cmp	r2, #0
	beq	lab803
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =5162
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =5162
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab804
	add	r9, sp, #76	
	b	lab805
lab774: 	ldr	r3, [sp, #72]	
	cmp	r3, #0
	bne	lab806
lab911: 	movs	r3, #0
	str	r3, [sp, #68]	
lab804: 	ldr	r2, [sp, #4]
	ldr	r3, [r2, #100]	
	lsls	r1, r3, #31
	bpl	lab807
	ldrh	r3, [r2, #12]
lab825: 	lsls	r3, r3, #25
	bmi	lab808
lab913: 	ldr	r0, [sp, #12]
	add	sp, #244	
	nop
	push {r1, r2}
	ldr r1, =6857
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab770: 	ldr	r3, [sp, #4]
	ldrsh	r1, [r3, #12]
	lsls	r5, r1, #22
	uxth	r2, r1
	bmi	lab809
	mov	r5, r3
	ldr	r0, [r3, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r1, [r5, #12]
	uxth	r2, r1
	b	lab809
lab779: 	cmp	r3, #0
	beq	lab774
	strb	r3, [sp, #140]	
	mov	r8, #1
	mov	r3, #0
	strb	r3, [sp, #59]	
	str	r8, [sp]
	add	r4, sp, #140	
lab835: 	mov	fp, #0
lab789: 	ands	r3, r5, #2
	str	r3, [sp, #24]
	it	ne
	addne	r8, r8, #2
	ands	r3, r5, #132	
	str	r3, [sp, #28]
	bne	lab810
	ldr	r3, [sp, #8]
	sub	r6, r3, r8
	cmp	r6, #0
	bgt	lab811
lab810: 	ldrd	r2, r1, [sp, #68]	
	adds	r0, r2, #1
lab875: 	ldrb	r6, [sp, #59]	
	cmp r6, #0
	beq lab812
	add	r2, sp, #59	
	adds	r1, #1
	str	r2, [r9]
	cmp	r0, #7
	mov	r2, #1
	strd	r0, r1, [sp, #68]	
	str	r2, [r9, #4]
	bgt	lab813
lab898: 	mov	r2, r0
	add	r9, r9, #8
	adds	r0, #1
lab812: 	ldr	r3, [sp, #24]
	cmp r3, #0
	beq lab814
	add	r3, sp, #60	
	adds	r1, #2
	str	r3, [r9]
	cmp	r0, #7
	mov	r3, #2
	strd	r0, r1, [sp, #68]	
	str	r3, [r9, #4]
	ble	lab815
	cmp	r1, #0
	beq	lab816
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =541
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =541
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab804
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
lab814: 	ldr	r3, [sp, #28]
	cmp	r3, #128	
	beq	lab817
lab850: 	ldr	r3, [sp, #0]
	sub	r6, fp, r3
	cmp	r6, #0
	bgt	lab818
lab858: 	ldr	r3, [sp, #0]
	str	r4, [r9]
	add	r1, r3
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	r3, [r9, #4]
	ble	lab819
	cmp	r1, #0
	beq	lab820
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =5430
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =5430
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab804
	ldr	r1, [sp, #72]	
	add	r9, sp, #76	
lab849: 	lsls	r0, r5, #29
	bpl	lab821
	ldr	r3, [sp, #8]
	sub	r4, r3, r8
	cmp	r4, #0
	bgt	lab822
lab821: 	ldrd	r2, r3, [sp, #8]
	cmp	r2, r8
	ite	ge
	addge	r3, r3, r2
	addlt	r3, r8
	str	r3, [sp, #12]
	cmp	r1, #0
	bne	lab823
lab866: 	movs	r3, #0
	str	r3, [sp, #68]	
	add	r9, sp, #76	
	b	lab824
lab807: 	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #12]
	lsls	r2, r3, #22
	bmi	lab825
	ldr	r4, [sp, #4]
	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	ldrh	r3, [r4, #12]
	b	lab825
lab794: 	ands	r3, r5, #16
	bne	lab826
	ands	r2, r5, #64	
	beq	lab827
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	mov	r8, r3
	uxth	r6, r6
	b	lab828
lab784: 	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	lsls	r0, r5, #27
	bmi	lab829
	lsls	r1, r5, #25
	bpl	lab830
	sbfx	r8, r3, #15, #1
	sxth	r6, r3
	mov	r3, r8
	b	lab831
	ldr	r6, [sp, #16]
	ldr	r4, [r6], #4
	mov	r3, #0
	strb	r3, [sp, #59]	
	cmp	r4, #0
	beq	lab832
	cmp	fp, #4294967295	
	beq	lab833
	mov	r2, fp
	movs	r1, #0
	mov	r0, r4
	bl	memchr
	cmp	r0, #0
	beq	lab834
	subs	r3, r0, r4
	str	r3, [sp, #0]
	str	r6, [sp, #16]
	mov	fp, #0
	b	lab800
	ldr	r6, [sp, #16]
	mov	r3, #0
	strb	r3, [sp, #59]	
	mov	r8, #1
	ldr	r3, [r6], #4
	strb	r3, [sp, #140]	
	str	r6, [sp, #16]
	str	r8, [sp]
	add	r4, sp, #140	
	b	lab835
lab769: 	bl	__sinit
	b	lab768
	ldr	r3, [sp, #16]
	ldr	r2, [r3], #4
	str	r2, [sp, #8]
	cmp	r2, #0
	bge	lab836
	ldr	r2, [sp, #8]
	str	r3, [sp, #16]
	negs	r2, r2
	str	r2, [sp, #8]
	ldrb	r3, [r7, #0]
	orr	r5, r5, #4
	b	lab783
	ldrb	r3, [r7, #0]
	cmp	r3, #108	
	ittte	eq
	ldrbeq	r3, [r7, #1]
	orreq	r5, r5, #32
	addeq	r7, #1
	orrne	r5, r5, #16
	b	lab783
	ldrb	r3, [r7, #0]
	cmp	r3, #104	
	ittte	eq
	ldrbeq	r3, [r7, #1]
	orreq	r5, r5, #512	
	addeq	r7, #1
	orrne	r5, r5, #64	
	b	lab783
	orr	sl, r5, #16
lab895: 	ands	r8, sl, #32
	beq	lab837
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r3, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r3], #8
	str	r3, [sp, #16]
	movs	r3, #1
	b	lab838
	ldrb	r3, [r7, #0]
	strb	r4, [sp, #59]	
	b	lab783
	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	movs	r3, #48	
	strb	r3, [sp, #60]	
	movs	r3, #120	
	strb	r3, [sp, #61]	
	ldr	r3, =0x200003d8	
	str	r3, [sp, #32]
	orr	sl, r5, #2
	mov	r8, #0
	movs	r3, #2
	b	lab838
	lsls	r6, r5, #26
	bmi	lab839
	lsls	r4, r5, #27
	bmi	lab840
	lsls	r0, r5, #25
	bmi	lab841
	lsls	r1, r5, #22
	bpl	lab840
	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	strb	r2, [r3, #0]
	b	lab824
	ldrb	r3, [r7, #0]
	orr	r5, r5, #1
	b	lab783
	ldrb	r3, [sp, #59]	
	cmp	r3, #0
	bne	lab842
	movs	r3, #32
	strb	r3, [sp, #59]	
	ldrb	r3, [r7, #0]
	b	lab783
	ldrb	r3, [r7, #0]
	orr	r5, r5, #128	
	b	lab783
	mov	r1, r7
	ldrb	r3, [r1], #1
	cmp	r3, #42	
	beq	lab843
	sub	r2, r3, #48	
	cmp	r2, #9
	mov	r7, r1
	mov	fp, #0
	bhi	lab781
lab844: 	ldrb	r3, [r7], #1
	add	fp, fp, fp, lsl #2
	add	fp, r2, fp, lsl #1
	sub	r2, r3, #48	
	cmp	r2, #9
	bls	lab844
	b	lab781
lab796: 	mov	sl, r5
lab795: 	cmp	r3, #1
	beq	lab845
lab906: 	cmp	r3, #2
	add	r4, sp, #240	
	bne	lab846
	ldr	r2, [sp, #32]
lab847: 	and	r3, r6, #15
	lsrs	r6, r6, #4
	ldrb	r3, [r2, r3]
	strb	r3, [r4, #-1]!
	orr	r6, r6, r8, lsl #28
	mov	r8, r8, lsr #4
	orrs	r3, r6, r8
	bne	lab847
lab848: 	add	r3, sp, #240	
	subs	r3, r3, r4
	mov	r5, sl
	str	r3, [sp, #0]
	b	lab800
lab846: 	and	r3, r6, #7
	lsrs	r6, r6, #3
	orr	r6, r6, r8, lsl #29
	mov	r8, r8, lsr #3
	adds	r3, #48	
	orrs	r1, r6, r8
	mov	r2, r4
	strb	r3, [r4, #-1]!
	bne	lab846
	tst	sl, #1
	beq	lab848
	cmp	r3, #48	
	beq	lab848
	movs	r3, #48	
	subs	r2, #2
	strb	r3, [r4, #-1]
	add	r3, sp, #240	
	subs	r3, r3, r2
	mov	r5, sl
	str	r3, [sp, #0]
	mov	r4, r2
	b	lab800
lab884: 	ldr	r1, [sp, #0]
	str	r4, [sp, #76]	
	movs	r3, #1
	str	r1, [sp, #80]	
	str	r1, [sp, #72]	
	str	r3, [sp, #68]	
	add	r9, sp, #76	
lab819: 	add	r9, r9, #8
	b	lab849
lab817: 	ldr	r3, [sp, #8]
	sub	r6, r3, r8
	cmp	r6, #0
	ble	lab850
	cmp	r6, #16
	ble	lab851
	ldr	sl, =0x20000404	
	mov	r3, sl
	strd	fp, r4, [sp, #24]
	mov	sl, r7
	ldr	fp, [sp, #20]
	ldr	r4, [sp, #4]
	mov	r7, r5
	mov	r5, r3
	b	lab852
lab854: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab867: 	subs	r6, #16
	cmp	r6, #16
	ble	lab853
lab852: 	adds	r0, r2, #1
	adds	r1, #16
	movs	r3, #16
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	r5, [r9]
	str	r3, [r9, #4]
	ble	lab854
	add	r2, sp, #64	
	cmp	r1, #0
	beq	lab855
	mov	r1, r4
	mov	r0, fp
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =6014
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =6014
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab804
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	bgt	lab852
lab853: 	ldrd	fp, r4, [sp, #24]
	mov	r3, r5
	mov	r5, r7
	mov	r7, sl
	mov	sl, r3
lab914: 	add	r1, r6
	cmp	ip, #7
	strd	ip, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	ble	lab856
	cmp	r1, #0
	beq	lab857
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =636
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =636
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab804
	ldr	r3, [sp, #0]
	ldrd	r2, r1, [sp, #68]	
	sub	r6, fp, r3
	cmp	r6, #0
	add	r0, r2, #1
	add	r9, sp, #76	
	ble	lab858
lab818: 	cmp	r6, #16
	ldr	sl, =0x20000404	
	ble	lab859
	mov	r3, sl
	strd	r4, r5, [sp, #24]
	mov	sl, r7
	ldr	r4, [sp, #20]
	ldr	r5, [sp, #4]
	mov	fp, #16
	mov	r7, r3
	b	lab860
lab862: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab865: 	subs	r6, #16
	cmp	r6, #16
	ble	lab861
lab860: 	adds	r0, r2, #1
	adds	r1, #16
	cmp	r0, #7
	strd	r7, fp, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab862
	add	r2, sp, #64	
	cmp r1, #0
	beq lab863
	mov	r1, r5
	mov	r0, r4
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =6658
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =6658
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab804
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	bgt	lab860
lab861: 	ldrd	r4, r5, [sp, #24]
	mov	r3, r7
	mov	r0, ip
	mov	r7, sl
	mov	sl, r3
lab859: 	add	r1, r6
	cmp	r0, #7
	strd	r0, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	bgt	lab864
	add	r9, r9, #8
	adds	r0, #1
	b	lab858
lab863: 	mov	ip, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab865
lab823: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =6875
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =6875
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab866
	b	lab804
lab855: 	mov	ip, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab867
lab813: 	cmp	r1, #0
	beq	lab868
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =5084
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =5084
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab804
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
	b	lab812
lab909: 	movs	r1, #2
	add	r3, sp, #60	
	str	r1, [sp, #80]	
	str	r3, [sp, #76]	
	movs	r0, #1
	add	r9, sp, #76	
lab815: 	mov	r2, r0
lab892: 	add	r9, r9, #8
	adds	r0, r2, #1
	b	lab814
lab811: 	cmp	r6, #16
	ble	lab869
	ldrd	ip, r1, [sp, #68]	
	ldr	sl, =0x200003f4	
	strd	fp, r4, [sp, #48]	
	movs	r3, #16
	mov	r4, sl
	ldr	fp, [sp, #4]
	ldr	sl, [sp, #20]
	mov	r2, ip
	b	lab870
	.ltorg
lab872: 	add	ip, r2, #2
	add	r9, r9, #8
	mov	r2, r0
lab876: 	subs	r6, #16
	cmp	r6, #16
	ble	lab871
lab870: 	adds	r0, r2, #1
	adds	r1, #16
	cmp	r0, #7
	strd	r4, r3, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab872
	add	r2, sp, #64	
	cmp r1, #0
	beq lab873
	mov	r1, fp
	mov	r0, sl
	add	r9, sp, #76	
push {r1, r2}
	ldr r1, =1658
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =1658
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab804
	ldrd	r2, r1, [sp, #68]	
	subs	r6, #16
	cmp	r6, #16
	add	ip, r2, #1
	mov	r3, #16
	bgt	lab870
lab871: 	mov	sl, r4
	ldr	fp, [sp, #48]	
	ldr	r4, [sp, #52]	
	mov	r2, ip
lab910: 	add	r1, r6
	cmp	r2, #7
	strd	r2, r1, [sp, #68]	
	str	sl, [r9]
	str	r6, [r9, #4]
	bgt	lab874
	add	r9, r9, #8
	adds	r0, r2, #1
	b	lab875
lab873: 	mov	r2, r1
	mov	ip, #1
	add	r9, sp, #76	
	b	lab876
lab820: 	lsls	r4, r5, #29
	str	r1, [sp, #68]	
	bpl	lab877
	ldr	r3, [sp, #8]
	sub	r4, r3, r8
	cmp	r4, #0
	ble	lab877
	add	r9, sp, #76	
lab822: 	cmp	r4, #16
	ble	lab878
	ldr	sl, =0x200003f4	
	ldr	r2, [sp, #68]	
	ldr	r6, [sp, #20]
	ldr	fp, [sp, #4]
	mov	r3, sl
	movs	r5, #16
	mov	sl, r7
	mov	r7, r3
	b	lab879
lab881: 	adds	r0, r2, #2
	add	r9, r9, #8
	mov	r2, r3
lab883: 	subs	r4, #16
	cmp	r4, #16
	ble	lab880
lab879: 	adds	r3, r2, #1
	adds	r1, #16
	cmp	r3, #7
	strd	r7, r5, [r9]
	strd	r3, r1, [sp, #68]	
	ble	lab881
	add	r2, sp, #64	
	cmp r1, #0
	beq lab882
	mov	r1, fp
	mov	r0, r6
push {r1, r2}
	ldr r1, =2746
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =2746
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab804
	ldrd	r2, r1, [sp, #68]	
	subs	r4, #16
	cmp	r4, #16
	add	r0, r2, #1
	add	r9, sp, #76	
	bgt	lab879
lab880: 	mov	r3, r7
	mov	r7, sl
	mov	sl, r3
lab912: 	add	r1, r4
	cmp	r0, #7
	strd	sl, r4, [r9]
	strd	r0, r1, [sp, #68]	
	ble	lab821
	cmp r1, #0
	beq lab877
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =465
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =465
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab804
	ldr	r1, [sp, #72]	
	b	lab821
lab882: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab883
lab877: 	ldrd	r2, r3, [sp, #8]
	cmp	r2, r8
	ite	ge
	addge	r3, r3, r2
	addlt	r3, r8
	str	r3, [sp, #12]
	b	lab866
lab864: 	cmp	r1, #0
	beq	lab884
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =794
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =794
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab804
	ldr	r0, [sp, #68]	
	ldr	r1, [sp, #72]	
	adds	r0, #1
	add	r9, sp, #76	
	b	lab858
lab868: 	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	lab885
lab816: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab814
lab803: 	str	r2, [sp, #68]	
	add	r9, sp, #76	
	b	lab805
lab787: 	cmp	fp, #0
	bne	lab886
	mov	r5, sl
lab798: 	mov	fp, #0
	str	fp, [sp]
	add	r4, sp, #240	
	b	lab800
lab837: 	ands	r3, sl, #16
	bne	lab887
	ands	r2, sl, #64	
	beq	lab888
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	mov	r8, r3
	uxth	r6, r6
	movs	r3, #1
	b	lab838
lab785: 	movs	r3, #45	
	negs	r6, r6
	strb	r3, [sp, #59]	
	sbc	r8, r8, r8, lsl #1
	mov	sl, r5
	movs	r3, #1
	b	lab889
lab874: 	cmp	r1, #0
	beq	lab890
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =1999
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =1999
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab804
	ldrd	r2, r1, [sp, #68]	
	add	r9, sp, #76	
	adds	r0, r2, #1
	b	lab875
lab836: 	str	r3, [sp, #16]
	ldrb	r3, [r7, #0]
	b	lab783
lab799: 	add	r4, sp, #240	
	b	lab800
lab856: 	add	r9, r9, #8
	add	r0, ip, #1
	mov	r2, ip
	b	lab850
lab830: 	lsls	r2, r5, #22
	bmi	lab891
lab829: 	mov	r8, r3, asr #31
	mov	r6, r3
	mov	r3, r8
	b	lab831
lab887: 	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	movs	r3, #1
	b	lab838
lab782: 	ldr	r3, [sp, #36]	
	cmp	r3, #0
	beq	lab842
	ldr	r3, [sp, #36]	
	ldrb	r3, [r3, #0]
	cmp	r3, #0
	beq	lab842
	ldrb	r3, [r7, #0]
	orr	r5, r5, #1024	
	b	lab783
lab839: 	ldrd	r1, r6, [sp, #12]
	ldr	r2, [r6], #4
	str	r6, [sp, #16]
	asrs	r3, r1, #31
	strd	r1, r3, [r2]
	b	lab824
lab826: 	ldr	r3, [sp, #16]
	ldr	r6, [r3], #4
	str	r3, [sp, #16]
	b	lab828
lab885: 	movs	r1, #2
	add	r3, sp, #60	
	str	r1, [sp, #80]	
	str	r3, [sp, #76]	
	add	r9, sp, #76	
	b	lab892
	ldr	r2, =0x200003c4	
	str	r2, [sp, #32]
lab896: 	ands	r8, r5, #32
	beq	lab893
	ldr	r6, [sp, #16]
	adds	r6, #7
	bic	r6, r6, #7
	mov	r2, r6
	ldr	r8, [r6, #4]
	ldr	r6, [r2], #8
	str	r2, [sp, #16]
lab900: 	lsls	r2, r5, #31
	bpl	lab894
	orrs	r2, r6, r8
	beq	lab894
	strb	r3, [sp, #61]	
	movs	r3, #48	
	orr	r5, r5, #2
	strb	r3, [sp, #60]	
lab894: 	bic	sl, r5, #1024	
	movs	r3, #2
	b	lab838
	mov	sl, r5
	b	lab895
	ldr	r2, =0x200003d8	
	str	r2, [sp, #32]
	b	lab896
lab833: 	mov	r0, r4
	str	r6, [sp, #16]
	bl	strlen
	mov	fp, #0
	str	r0, [sp, #0]
	b	lab800
lab890: 	ldrb	r2, [sp, #59]	
	cmp	r2, #0
	beq	lab897
	movs	r0, #1
	add	r2, sp, #59	
	str	r0, [sp, #80]	
	str	r2, [sp, #76]	
	add	r9, sp, #76	
	mov	r1, r0
	b	lab898
lab893: 	ands	r2, r5, #16
	beq	lab899
	ldr	r2, [sp, #16]
	ldr	r6, [r2], #4
	str	r2, [sp, #16]
	b	lab900
lab788: 	and	r3, sl, #1024	
	str	fp, [sp]
	str	r9, [sp, #24]
	mov	fp, r7
	ldr	r9, [sp, #36]	
	movs	r5, #0
	add	r4, sp, #240	
	mov	r7, r3
	b	lab901
lab903: 	mov	r0, r6
	mov	r1, r8
push {r1, r2}
	ldr r1, =427
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =427
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r6, #10
	sbcs	r3, r8, #0
	bcc	lab902
lab908: 	mov	r6, r0
	mov	r8, r1
lab901: 	mov	r0, r6
	mov	r1, r8
	movs	r2, #10
	movs	r3, #0
push {r1, r2}
	ldr r1, =391
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =391
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
	beq	lab903
	ldrb	r1, [r9]
	cmp	r1, r5
	bne	lab903
	cmp	r5, #255	
	beq	lab903
	cmp	r6, #10
	sbcs	r3, r8, #0
	bcs	lab904
lab902: 	add	r3, sp, #240	
	subs	r3, r3, r4
	str	r9, [sp, #36]	
	mov	r7, fp
	ldr	r9, [sp, #24]
	ldr	fp, [sp]
	str	r3, [sp, #0]
	mov	r5, sl
	b	lab800
lab899: 	ands	r1, r5, #64	
	beq	lab905
	ldr	r1, [sp, #16]
	ldr	r6, [r1], #4
	str	r1, [sp, #16]
	mov	r8, r2
	uxth	r6, r6
	b	lab900
lab786: 	mov	sl, r5
	b	lab845
lab797: 	cmp	r3, #1
	mov	sl, r5
	bne	lab906
	b	lab886
	nop
	.ltorg
lab840: 	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r2, [r3, #0]
	str	r6, [sp, #16]
	b	lab824
lab832: 	cmp	fp, #6
	mov	r8, fp
	it	cs
	movcs	r8, #6
	ldr	r4, =0x200003ec	
	str	r8, [sp]
	str	r6, [sp, #16]
	b	lab835
lab888: 	ldr	r3, [sp, #16]
	ands	r8, sl, #512	
	ite	ne
	ldrne	r6, [r3], #4
	ldreq	r6, [r3], #4
	str	r3, [sp, #16]
	itt	ne
	movne	r8, r2
	uxtbne	r6, r6
	movs	r3, #1
	b	lab838
lab827: 	ldr	r3, [sp, #16]
	ands	r8, r5, #512	
	ite	ne
	ldrne	r6, [r3], #4
	ldreq	r6, [r3], #4
	str	r3, [sp, #16]
	itt	ne
	movne	r8, r2
	uxtbne	r6, r6
	b	lab828
lab905: 	ldr	r2, [sp, #16]
	ands	r8, r5, #512	
	ite	ne
	ldrne	r6, [r2], #4
	ldreq	r6, [r2], #4
	str	r2, [sp, #16]
	itt	ne
	movne	r8, r1
	uxtbne	r6, r6
	b	lab900
lab904: 	ldr	r3, [sp, #44]	
	ldr	r1, [sp, #40]	
	subs	r4, r4, r3
	mov	r2, r3
	mov	r0, r4
	bl	strncpy
	push {r1, r2}
	ldr r1, =2698
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrb	r3, [r9, #1]
	cmp r3, #0
	beq lab907
	add	r9, r9, #1
lab907: 	mov	r0, r6
	mov	r1, r8
	movs	r2, #10
	movs	r3, #0
	movs	r5, #0
push {r1, r2}
	ldr r1, =5212
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_uldivmod
	push {r1, r2}
	ldr r1, =5212
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab908
lab857: 	movs	r0, #1
	mov	r2, r1
	add	r9, sp, #76	
	b	lab850
lab897: 	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	lab909
	mov	r2, r1
	movs	r0, #1
	add	r9, sp, #76	
	b	lab850
lab841: 	ldr	r6, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r3, [r6], #4
	str	r6, [sp, #16]
	strh	r2, [r3, #0]
	b	lab824
lab891: 	sbfx	r8, r3, #7, #1
	sxtb	r6, r3
	mov	r3, r8
	b	lab831
lab793: 	ldr	r0, [r1, #88]	
	bl	__retarget_lock_release_recursive
	b	lab792
lab834: 	str	fp, [sp]
	str	r6, [sp, #16]
	mov	fp, r0
	b	lab800
lab869: 	ldr	r2, [sp, #68]	
	ldr	r1, [sp, #72]	
	ldr	sl, =0x200003f4	
	adds	r2, #1
	b	lab910
lab806: 	ldr	r1, [sp, #4]
	ldr	r0, [sp, #20]
	add	r2, sp, #64	
push {r1, r2}
	ldr r1, =2864
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sprint_r.part.0
	push {r1, r2}
	ldr r1, =2864
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab911
	b	lab804
lab878: 	ldr	r0, [sp, #68]	
	ldr	sl, =0x200003f4	
	adds	r0, #1
	b	lab912
lab790: 	ldr	r3, [sp, #4]
	ldr	r3, [r3, #100]	
	lsls	r3, r3, #31
	bmi	lab808
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #12]
	lsls	r7, r3, #22
	bmi	lab808
	ldr	r3, [sp, #4]
	ldr	r0, [r3, #88]	
	bl	__retarget_lock_release_recursive
lab808: 	mov	r3, #4294967295	
	str	r3, [sp, #12]
	b	lab913
lab851: 	ldr	sl, =0x20000404	
	mov	ip, r0
	b	lab914
lab843: 	ldr	r2, [sp, #16]
	ldrb	r3, [r7, #1]
	mov	r7, r1
	ldr	r1, [r2], #4
	str	r2, [sp, #16]
	orr	fp, r1, r1, asr #31
	b	lab783
	nop
	.ltorg
vfiprintf:
	push	{r4}
	ldr	r4, =0x2000052c	
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
	ldr r1, =6666
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_vfiprintf_r
	push {r1, r2}
	ldr r1, =6666
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r5, r0, #0
	blt	lab915
	mov	r1, sp
	mov	r0, r6
push {r1, r2}
	ldr r1, =1520
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =1520
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	it	ne
	movne	r5, #4294967295	
lab915: 	ldrh	r3, [sp, #12]
	lsls	r3, r3, #25
	bpl	lab916
	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
lab916: 	ldr	r0, [sp, #88]	
	bl	__retarget_lock_close_recursive
	mov	r0, r5
	addw	sp, sp, #1132	
	nop
	push {r1, r2}
	ldr r1, =7936
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, r7, pc}
__swsetup_r:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x2000052c	
	ldr	r3, [r3, #0]
	mov	r5, r0
	mov	r4, r1
	cmp r3, #0
	beq lab917
	ldr	r2, [r3, #56]	
	cmp r2, #0
	beq lab918
lab917: 	ldrsh	r3, [r4, #12]
	lsls	r0, r3, #28
	uxth	r2, r3
	bpl	lab919
lab925: 	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	lab920
lab928: 	ands	r0, r2, #1
	beq	lab921
	movs	r0, #0
	str	r0, [r4, #8]
	ldr	r0, [r4, #20]
	negs	r0, r0
	str	r0, [r4, #24]
	cmp r1, #0
	beq lab922
lab923: 	movs	r0, #0
lab924:	nop
	push {r1, r2}
	ldr r1, =677
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab921: 	lsls	r5, r2, #30
	it	pl
	ldrpl	r0, [r4, #20]
	str	r0, [r4, #8]
	cmp	r1, #0
	bne	lab923
lab922: 	lsls	r2, r2, #24
	it	pl
	movpl	r0, r1
	bpl	lab924
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	mov	r0, #4294967295	
	nop
	push {r1, r2}
	ldr r1, =390
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab918: 	mov	r0, r3
	bl	__sinit
	ldrsh	r3, [r4, #12]
	lsls	r0, r3, #28
	uxth	r2, r3
	bmi	lab925
lab919: 	lsls	r1, r2, #27
	bpl	lab926
	lsls	r2, r2, #29
	bmi	lab927
	ldr	r1, [r4, #16]
lab931: 	orr	r3, r3, #8
	strh	r3, [r4, #12]
	uxth	r2, r3
	cmp	r1, #0
	bne	lab928
lab920: 	and	r0, r2, #640	
	cmp	r0, #512	
	beq	lab928
	mov	r1, r4
	mov	r0, r5
	bl	__smakebuf_r
	push {r1, r2}
	ldr r1, =7650
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	ldr	r1, [r4, #16]
	uxth	r2, r3
	b	lab928
lab927: 	ldr	r1, [r4, #48]	
	cmp r1, #0
	beq lab929
	add	r2, r4, #64	
	cmp	r1, r2
	beq	lab930
	mov	r0, r5
push {r1, r2}
	ldr r1, =1967
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =1967
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
lab930: 	movs	r2, #0
	str	r2, [r4, #48]	
lab929: 	ldr	r1, [r4, #16]
	movs	r2, #0
	strd	r1, r2, [r4]
	bic	r3, r3, #36	
	b	lab931
lab926: 	movs	r2, #9
	orr	r3, r3, #64	
	str	r2, [r5, #0]
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =2631
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
	ldr r1, =6625
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
	bmi	lab932
	ldr	r3, [r4, #4]
	orr	r2, r2, #2048	
	cmp	r3, #0
	strh	r2, [r4, #12]
	ble	lab933
lab945: 	ldr	r5, [r4, #40]	
	cmp	r5, #0
	beq	lab934
	movs	r3, #0
	ldr	r6, [r7, #0]
	str	r3, [r7, #0]
	uxth	r3, r2
	ands	r2, r2, #4096	
	bne	lab935
	ldr	r1, [r4, #28]
	movs	r3, #1
	mov	r0, r7
	blx	r5
	adds	r2, r0, #1
	beq	lab936
lab948: 	ldrh	r3, [r4, #12]
	ldr	r5, [r4, #40]	
lab946: 	lsls	r3, r3, #29
	bpl	lab937
	ldr	r3, [r4, #4]
	subs	r0, r0, r3
	ldr	r3, [r4, #48]	
	cmp r3, #0
	beq lab937
	ldr	r3, [r4, #60]	
	subs	r0, r0, r3
lab937: 	ldr	r1, [r4, #28]
	mov	r2, r0
	movs	r3, #0
	mov	r0, r7
	blx	r5
	adds	r1, r0, #1
	bne	lab938
	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	lab938
	cmp	r3, #29
	beq	lab939
	cmp	r3, #22
	bne	lab940
lab939: 	ldrh	r3, [r4, #12]
	ldr	r2, [r4, #16]
	str	r2, [r4, #0]
	bic	r3, r3, #2048	
	movs	r1, #0
	str	r1, [r4, #4]
	strh	r3, [r4, #12]
lab947: 	ldr	r1, [r4, #48]	
	str	r6, [r7, #0]
	cmp r1, #0
	beq lab934
	add	r3, r4, #64	
	cmp	r1, r3
	beq	lab941
	mov	r0, r7
push {r1, r2}
	ldr r1, =5325
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab941:	push {r1, r2}
	ldr r1, =5325
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	movs	r0, #0
	str	r0, [r4, #48]	
	nop
	push {r1, r2}
	ldr r1, =1195
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab932: 	ldr	r6, [r4, #16]
	cmp r6, #0
	beq lab934
	uxth	r3, r2
	ldr	r5, [r4, #0]
	str	r6, [r4, #0]
	lsls	r2, r3, #30
	ite	eq
	ldreq	r3, [r4, #20]
	movne	r3, #0
	subs	r5, r5, r6
	str	r3, [r4, #8]
	b	lab942
lab944: 	ldr	ip, [r4, #36]	
	ldr	r1, [r4, #28]
	mov	r3, r5
	mov	r2, r6
	mov	r0, r7
	blx	ip
	subs	ip, r0, #0
	sub	r5, r5, ip
	add	r6, ip
	ble	lab943
lab942: 	cmp	r5, #0
	bgt	lab944
lab934: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =1246
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab933: 	ldr	r3, [r4, #60]	
	cmp	r3, #0
	bgt	lab945
	b	lab934
lab935: 	ldr	r0, [r4, #80]	
	b	lab946
lab938: 	ldrsh	r3, [r4, #12]
	ldr	r2, [r4, #16]
	str	r2, [r4, #0]
	bic	r3, r3, #2048	
	strh	r3, [r4, #12]
	movs	r2, #0
	lsls	r3, r3, #19
	str	r2, [r4, #4]
	bpl	lab947
	str	r0, [r4, #80]	
	b	lab947
lab943: 	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =7957
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab936: 	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	lab948
	cmp	r3, #29
	beq	lab949
	cmp	r3, #22
	beq	lab949
lab940: 	ldrh	r3, [r4, #12]
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	nop
	push {r1, r2}
	ldr r1, =4197
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab949: 	str	r6, [r7, #0]
	b	lab934
	nop
_fflush_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	cmp r0, #0
	beq lab950
	ldr	r3, [r0, #56]	
	cmp r3, #0
	beq lab951
lab950: 	ldrsh	r0, [r4, #12]
	cmp r0, #0
	beq lab952
lab957: 	ldr	r3, [r4, #100]	
	lsls	r3, r3, #31
	bmi	lab953
	lsls	r1, r0, #22
	bpl	lab954
lab953: 	mov	r0, r5
	mov	r1, r4
push {r1, r2}
	ldr r1, =3003
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =3003
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab955
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab956
lab955: 	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =507
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab951: 	bl	__sinit
	ldrsh	r0, [r4, #12]
	cmp	r0, #0
	bne	lab957
lab952: 	mov	r5, r0
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =1590
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab954: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	b	lab953
lab956: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =4839
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	nop
fflush:
	push	{r3, r4, r5, lr}
	cmp r0, #0
	beq lab958
	ldr	r3, =0x2000052c	
	ldr	r5, [r3, #0]
	mov	r4, r0
	cmp r5, #0
	beq lab959
	ldr	r3, [r5, #56]	
	cmp r3, #0
	beq lab960
lab959: 	ldrsh	r0, [r4, #12]
	cmp r0, #0
	beq lab961
	ldr	r3, [r4, #100]	
	lsls	r3, r3, #31
	bmi	lab962
	lsls	r1, r0, #22
	bpl	lab963
lab962: 	mov	r0, r5
	mov	r1, r4
push {r1, r2}
	ldr r1, =787
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =787
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab964
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab965
lab964: 	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab961: 	mov	r5, r0
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab960: 	mov	r0, r5
	bl	__sinit
	b	lab959
lab963: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	b	lab962
lab965: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	b	lab964
lab958: 	ldr	r3, =0x200003c0	
	ldr	r1, =0x8004485	
	ldr	r0, [r3, #0]
	ldmia	sp!, {r3, r4, r5, lr}
	b	_fwalk_reent
	nop
	.ltorg
_cleanup_r:
	ldr	r1, =0x80061fd	
	b	_fwalk_reent
	nop
	.ltorg
__fp_lock:
	push	{r3, lr}
	ldr	r3, [r0, #100]	
	lsls	r2, r3, #31
	bmi	lab966
	ldrh	r3, [r0, #12]
	lsls	r3, r3, #22
	bpl	lab967
lab966: 	movs	r0, #0
	pop	{r3, pc}
lab967: 	ldr	r0, [r0, #88]	
	bl	__retarget_lock_acquire_recursive
	movs	r0, #0
	pop	{r3, pc}
__fp_unlock:
	push	{r3, lr}
	ldr	r3, [r0, #100]	
	lsls	r2, r3, #31
	bmi	lab968
	ldrh	r3, [r0, #12]
	lsls	r3, r3, #22
	bpl	lab969
lab968: 	movs	r0, #0
	pop	{r3, pc}
lab969: 	ldr	r0, [r0, #88]	
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
	ldr r1, =6595
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =6595
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	cmp r0, #0
	beq lab970
	movs	r1, #0
	adds	r0, #12
	strd	r1, r6, [r4]
	str	r0, [r4, #8]
	add	r2, r5, #104	
push {r1, r2}
	ldr r1, =2210
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
lab970:	push {r1, r2}
	ldr r1, =2210
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r4
	pop	{r4, r5, r6, pc}
	nop
_cleanup:
	ldr	r3, =0x200003c0	
	ldr	r1, =0x80061fd	
	ldr	r0, [r3, #0]
	b	_fwalk_reent
	nop
	.ltorg
__sinit:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	sl, r0
	ldr	r0, =0x200030f0	
	bl	__retarget_lock_acquire_recursive
	ldr	r4, [sl, #56]	
	cmp	r4, #0
	bne	lab971
	ldr	r5, [sl, #4]
	ldr	r2, =0x8004555	
	str	r2, [sl, #60]	
	movs	r3, #3
	strd	r4, r3, [sl, #736]	
	ldr	r9, =0x8005f35	
	ldr	r8, =0x8005f5d	
	ldr	r7, =0x8005f9d	
	ldr	r6, =0x8005fbd	
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
	ldr r1, =7978
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =7978
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
	ldr r1, =1510
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =1510
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
	ldr r1, =4295
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =4295
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
	ldr	r0, =0x200030f0	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	b	__retarget_lock_release_recursive
lab971: 	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r0, =0x200030f0	
	b	__retarget_lock_release_recursive
	.ltorg
__sfp:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r7, r0
	ldr	r0, =0x200030ec	
	bl	__retarget_lock_acquire_recursive
	ldr	r3, =0x200003c0	
	ldr	r6, [r3, #0]
	ldr	r3, [r6, #56]	
	cmp r3, #0
	beq lab972
lab978: 	add	r6, r6, #736	
	mov	r8, #4
lab977: 	ldrd	r3, r4, [r6, #4]
	subs	r3, #1
	bpl	lab973
	b	lab974
lab975: 	adds	r2, r3, #1
	add	r4, r4, #104	
	beq	lab974
lab973: 	ldrsh	r5, [r4, #12]
	subs	r3, #1
	cmp	r5, #0
	bne	lab975
	ldr	r3, =0xffff0001	
	str	r3, [r4, #12]
	add	r0, r4, #88	
	str	r5, [r4, #100]	
	bl	__retarget_lock_init_recursive
	ldr	r0, =0x200030ec	
	bl	__retarget_lock_release_recursive
	strd	r5, r5, [r4, #4]
	strd	r5, r5, [r4, #16]
	str	r5, [r4, #0]
	str	r5, [r4, #24]
	movs	r2, #8
	mov	r1, r5
	add	r0, r4, #92	
push {r1, r2}
	ldr r1, =599
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =599
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	strd	r5, r5, [r4, #48]	
	strd	r5, r5, [r4, #68]	
lab980: 	mov	r0, r4
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab974: 	ldr	r5, [r6, #0]
	cmp r5, #0
	beq lab976
	mov	r6, r5
	b	lab977
lab972: 	mov	r0, r6
	bl	__sinit
	b	lab978
lab976: 	mov	r1, #428	
	mov	r0, r7
push {r1, r2}
	ldr r1, =4775
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =4775
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r0
	cmp r0, #0
	beq lab979
	str	r5, [r0, #0]
	str	r8, [r0, #4]
	adds	r0, #12
	mov	r1, r5
	str	r0, [r4, #8]
	mov	r5, r4
	mov	r2, #416	
push {r1, r2}
	ldr r1, =7916
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =7916
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r4, [r6, #0]
	mov	r6, r5
	b	lab977
lab979: 	ldr	r0, =0x200030ec	
	str	r4, [r6, #0]
	bl	__retarget_lock_release_recursive
	movs	r3, #12
	str	r3, [r7, #0]
	b	lab980
	nop
	.ltorg
__sfp_lock_acquire:
	ldr	r0, =0x200030ec	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__sfp_lock_release:
	ldr	r0, =0x200030ec	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
__sinit_lock_acquire:
	ldr	r0, =0x200030f0	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__sinit_lock_release:
	ldr	r0, =0x200030f0	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
__fp_lock_all:
	push	{r3, lr}
	ldr	r0, =0x200030ec	
	bl	__retarget_lock_acquire_recursive
	ldr	r3, =0x2000052c	
	ldr	r1, =0x8004561	
	ldr	r0, [r3, #0]
	ldmia	sp!, {r3, lr}
	b	_fwalk
	nop
	.ltorg
__fp_unlock_all:
	push	{r3, lr}
	ldr	r3, =0x2000052c	
	ldr	r1, =0x800457d	
	ldr	r0, [r3, #0]
	bl	_fwalk
	push {r1, r2}
	ldr r1, =249
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldmia	sp!, {r3, lr}
	ldr	r0, =0x200030ec	
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
	bne	lab981
	add	r3, r8, #4294967295	
	cmp	r3, #254	
	bls	lab982
lab981: 	mov	r2, r8
	add	r3, r4, #92	
	add	r1, sp, #4
	mov	r0, r7
	bl	_wcrtomb_r
	push {r1, r2}
	ldr r1, =1843
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r2, r0, #1
	mov	r6, r0
	beq	lab983
	cmp r0, #0
	beq lab984
	ldrb	ip, [sp, #4]
lab989: 	add	r9, sp, #5
	movs	r5, #0
	b	lab985
lab986: 	ldr	r3, [r4, #0]
	adds	r2, r3, #1
	str	r2, [r4, #0]
	strb	ip, [r3]
lab988: 	adds	r5, #1
	cmp	r5, r6
	bcs	lab984
	ldrb	ip, [r9], #1
lab985: 	ldr	r3, [r4, #8]
	subs	r3, #1
	cmp	r3, #0
	str	r3, [r4, #8]
	bge	lab986
	ldr	lr, [r4, #24]
	cmp	r3, lr
	mov	r1, ip
	mov	r2, r4
	mov	r0, r7
	blt	lab987
	cmp	ip, #10
	bne	lab986
lab987: 	bl	__swbuf_r
	push {r1, r2}
	ldr r1, =2493
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	bne	lab988
	mov	r6, r0
	mov	r0, r6
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =6694
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab984: 	mov	r6, r8
	mov	r0, r6
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =7132
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, pc}
lab982: 	uxtb	ip, r8
	strb	ip, [sp, #4]
	mov	r6, r0
	b	lab989
lab983: 	ldrh	r3, [r4, #12]
	mov	r0, r6
	orr	r3, r3, #64	
	strh	r3, [r4, #12]
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =8156
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
	bne	lab990
	lsls	r0, r3, #22
	bpl	lab991
lab990: 	lsls	r0, r2, #18
	bmi	lab992
	ldr	r2, [r4, #100]	
	orr	r3, r3, #8192	
	orr	r2, r2, #8192	
	strh	r3, [r4, #12]
	str	r2, [r4, #100]	
lab992: 	mov	r2, r4
	mov	r0, r5
push {r1, r2}
	ldr r1, =2718
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__fputwc
	push {r1, r2}
	ldr r1, =2718
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab993
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab994
lab993: 	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =2412
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab994: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =1783
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab991: 	ldr	r0, [r4, #88]	
	str	r1, [sp, #4]
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	ldr	r1, [sp, #4]
	uxth	r2, r3
	b	lab990
	nop
fputwc:
	ldr	r3, =0x2000052c	
	push	{r4, r5, r6, lr}
	ldr	r6, [r3, #0]
	mov	r5, r0
	mov	r4, r1
	cmp r6, #0
	beq lab995
	ldr	r3, [r6, #56]	
	cmp r3, #0
	beq lab996
lab995: 	ldr	r3, [r4, #100]	
	tst	r3, #1
	ldrsh	r3, [r4, #12]
	uxth	r2, r3
	bne	lab997
	lsls	r0, r3, #22
	bpl	lab998
lab997: 	lsls	r1, r2, #18
	bmi	lab999
	ldr	r2, [r4, #100]	
	orr	r3, r3, #8192	
	orr	r2, r2, #8192	
	strh	r3, [r4, #12]
	str	r2, [r4, #100]	
lab999: 	mov	r2, r4
	mov	r1, r5
	mov	r0, r6
push {r1, r2}
	ldr r1, =3035
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__fputwc
	push {r1, r2}
	ldr r1, =3035
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #100]	
	lsls	r2, r3, #31
	mov	r5, r0
	bmi	lab1000
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #22
	bpl	lab1001
lab1000: 	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab996: 	mov	r0, r6
	bl	__sinit
	b	lab995
lab1001: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab998: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	uxth	r2, r3
	b	lab997
	.ltorg
_malloc_trim_r:
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r7, =0x20000ac4	
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
	blt	lab1002
	movs	r1, #0
	mov	r0, r6
push {r1, r2}
	ldr r1, =7340
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =7340
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r7, #8]
	add	r3, r5
	cmp	r0, r3
	beq	lab1003
lab1002: 	mov	r0, r6
	bl	__malloc_unlock
	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =1654
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab1003: 	negs	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =1583
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =1583
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r0, #1
	beq	lab1004
	ldr	r2, =0x200030f8	
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
	ldr r1, =611
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab1004: 	movs	r1, #0
	mov	r0, r6
push {r1, r2}
	ldr r1, =4220
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =4220
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r2, [r7, #8]
	subs	r3, r0, r2
	cmp	r3, #15
	ble	lab1002
	orr	r3, r3, #1
	str	r3, [r2, #4]
	ldr	r3, =0x20000ecc	
	ldr	r1, =0x200030f8	
	ldr	r3, [r3, #0]
	subs	r0, r0, r3
	str	r0, [r1, #0]
	b	lab1002
	nop
	.ltorg
_free_r:
	cmp	r1, #0
	beq	lab1005
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r6, r0
	bl	__malloc_lock
	ldr	r2, [r4, #-4]
	ldr	r7, =0x20000ac4	
	sub	r5, r4, #8
	bic	r1, r2, #1
	add	ip, r5, r1
	ldr	r0, [r7, #8]
	ldr	r3, [ip, #4]
	cmp	r0, ip
	bic	r3, r3, #3
	beq	lab1006
	lsls	r2, r2, #31
	str	r3, [ip, #4]
	bmi	lab1007
	ldr	r2, [r4, #-8]
	subs	r5, r5, r2
	add	r1, r2
	ldr	r2, [r5, #8]
	add	r0, r7, #8
	cmp	r2, r0
	beq	lab1008
	add	r4, ip, r3
	ldr	lr, [r4, #4]
	ldr	r4, [r5, #12]
	str	r4, [r2, #12]
	tst	lr, #1
	str	r2, [r4, #8]
	beq	lab1009
	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [ip]
lab1013: 	cmp	r1, #512	
	bcs	lab1010
lab1014: 	ldr	r2, [r7, #4]
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
lab1021: 	mov	r0, r6
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	__malloc_unlock
lab1007: 	add	r2, ip, r3
	ldr	r2, [r2, #4]
	lsls	r0, r2, #31
	bmi	lab1011
	add	r1, r3
	add	r0, r7, #8
lab1025: 	ldr	r3, [ip, #8]
	cmp	r3, r0
	beq	lab1012
	ldr	r2, [ip, #12]
	str	r2, [r3, #12]
	str	r3, [r2, #8]
	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [r5, r1]
	b	lab1013
lab1005:	nop
	push {r1, r2}
	ldr r1, =2739
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	bx	lr
lab1011: 	orr	r3, r1, #1
	cmp	r1, #512	
	str	r3, [r4, #-4]
	str	r1, [ip]
	bcc	lab1014
lab1010: 	cmp	r1, #2560	
	mov	r3, r1, lsr #9
	bcs	lab1015
	lsrs	r3, r1, #6
	add	r0, r3, #57	
	add	r2, r3, #56	
	lsls	r3, r0, #3
lab1024: 	adds	r0, r7, r3
	ldr	r3, [r7, r3]
	subs	r0, #8
	cmp	r0, r3
	beq	lab1016
lab1018: 	ldr	r2, [r3, #4]
	bic	r2, r2, #3
	cmp	r2, r1
	bls	lab1017
	ldr	r3, [r3, #8]
	cmp	r0, r3
	bne	lab1018
lab1017: 	ldr	r0, [r3, #12]
lab1026: 	strd	r3, r0, [r5, #8]
	str	r5, [r0, #8]
	str	r5, [r3, #12]
	mov	r0, r6
	ldmia	sp!, {r3, r4, r5, r6, r7, lr}
	b	__malloc_unlock
lab1008: 	add	r2, ip, r3
	ldr	r2, [r2, #4]
	lsls	r2, r2, #31
	bmi	lab1019
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
lab1006: 	add	r3, r1
	lsls	r1, r2, #31
	bmi	lab1020
	ldr	r2, [r4, #-8]
	subs	r5, r5, r2
	add	r3, r2
	ldrd	r1, r2, [r5, #8]
	str	r2, [r1, #12]
	str	r1, [r2, #8]
lab1020: 	orr	r2, r3, #1
	str	r2, [r5, #4]
	ldr	r2, =0x20000ed0	
	str	r5, [r7, #8]
	ldr	r2, [r2, #0]
	cmp	r2, r3
	bhi	lab1021
	ldr	r3, =0x20003128	
	mov	r0, r6
	ldr	r1, [r3, #0]
	bl	_malloc_trim_r
	push {r1, r2}
	ldr r1, =3514
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab1021
lab1015: 	cmp	r3, #20
	bls	lab1022
	cmp	r3, #84	
	bhi	lab1023
	lsrs	r3, r1, #12
	add	r0, r3, #111	
	add	r2, r3, #110	
	lsls	r3, r0, #3
	b	lab1024
lab1009: 	add	r1, r3
	b	lab1025
lab1022: 	add	r0, r3, #92	
	add	r2, r3, #91	
	lsls	r3, r0, #3
	b	lab1024
lab1012: 	orr	r3, r1, #1
	strd	r5, r5, [r7, #16]
	strd	r0, r0, [r5, #8]
	str	r3, [r5, #4]
	str	r1, [r5, r1]
	b	lab1021
lab1016: 	ldr	r1, [r7, #4]
	asrs	r2, r2, #2
	movs	r4, #1
	lsl	r2, r4, r2
	orrs	r2, r1
	str	r2, [r7, #4]
	b	lab1026
lab1023: 	cmp	r3, #340	
	bhi	lab1027
	lsrs	r3, r1, #15
	add	r0, r3, #120	
	add	r2, r3, #119	
	lsls	r3, r0, #3
	b	lab1024
lab1027: 	movw	r2, #1364	
	cmp	r3, r2
	bhi	lab1028
	lsrs	r3, r1, #18
	add	r0, r3, #125	
	add	r2, r3, #124	
	lsls	r3, r0, #3
	b	lab1024
lab1028: 	mov	r3, #1016	
	movs	r2, #126	
	b	lab1024
lab1019: 	orr	r3, r1, #1
	str	r3, [r5, #4]
	str	r1, [ip]
	b	lab1021
	nop
	.ltorg
__sfvwrite_r:
	ldr	r3, [r2, #8]
	cmp	r3, #0
	beq	lab1029
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrsh	r3, [r1, #12]
	mov	r4, r1
	lsls	r1, r3, #28
	mov	r8, r0
	sub	sp, #12
	mov	r7, r2
	uxth	r0, r3
	bpl	lab1030
	ldr	r3, [r4, #16]
	cmp r3, #0
	beq lab1030
	ands	r3, r0, #2
	ldr	r5, [r7, #0]
	beq	lab1031
lab1036: 	mov	sl, #0
	ldr	fp, =0x7ffffc00	
	mov	r6, sl
lab1034: 	cmp	r6, fp
	mov	r3, r6
	mov	r2, sl
	it	cs
	movcs	r3, fp
	mov	r0, r8
	cmp	r6, #0
	beq	lab1032
	ldr	r1, [r4, #28]
	ldr	ip, [r4, #36]	
	blx	ip
	cmp	r0, #0
	ble	lab1033
	ldr	r3, [r7, #8]
	subs	r3, r3, r0
	add	sl, r0
	subs	r6, r6, r0
	str	r3, [r7, #8]
	cmp	r3, #0
	bne	lab1034
lab1042: 	movs	r0, #0
lab1066: 	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =4596
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab1030: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =5633
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =5633
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	bne	lab1035
	ldrsh	r3, [r4, #12]
	ldr	r5, [r7, #0]
	uxth	r0, r3
	ands	r3, r0, #2
	bne	lab1036
lab1031: 	ands	r9, r0, #1
	bne	lab1037
	mov	r6, r9
lab1044: 	cmp r6, #0
	beq lab1038
lab1043: 	lsls	r2, r0, #22
	ldr	fp, [r4, #8]
	bpl	lab1039
	cmp	fp, r6
	mov	r2, fp
	bhi	lab1040
	tst	r0, #1152	
	bne	lab1041
	ldr	r0, [r4, #0]
lab1059: 	str	r2, [sp, #4]
	mov	r1, r9
push {r1, r2}
	ldr r1, =3204
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3204
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
lab1057: 	ldr	r0, [r7, #8]
	sub	r0, r0, sl
	add	r9, sl
	str	r0, [r7, #8]
	cmp	r0, #0
	beq	lab1042
	ldrsh	r0, [r4, #12]
	uxth	r0, r0
	cmp	r6, #0
	bne	lab1043
lab1038: 	ldrd	r9, r6, [r5]
	adds	r5, #8
	b	lab1044
lab1032: 	ldrd	sl, r6, [r5]
	adds	r5, #8
	b	lab1034
lab1051: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =6962
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =6962
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	beq lab1045
lab1033: 	ldrsh	r3, [r4, #12]
lab1064: 	orr	r3, r3, #64	
	mov	r0, #4294967295	
	strh	r3, [r4, #12]
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =6204
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab1029: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =5707
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
lab1037: 	mov	r6, r3
	mov	sl, r5
	mov	r9, r3
	mov	r0, r3
	mov	r5, r3
	cmp r6, #0
	beq lab1046
lab1052: 	cmp r0, #0
	beq lab1047
lab1055: 	mov	r2, r9
lab1065: 	ldrd	r1, r3, [r4, #16]
	ldr	r0, [r4, #0]
	cmp	r2, r6
	it	cs
	movcs	r2, r6
	cmp	r0, r1
	bls	lab1048
	ldr	r1, [r4, #8]
	add	fp, r3, r1
	cmp	r2, fp
	bgt	lab1049
lab1048: 	cmp	r3, r2
	bgt	lab1050
	ldr	r1, [r4, #28]
	ldr	ip, [r4, #36]	
	mov	r2, r5
	mov	r0, r8
	blx	ip
	subs	fp, r0, #0
	ble	lab1033
lab1060: 	subs	r9, r9, fp
	beq	lab1051
	movs	r0, #1
lab1045: 	ldr	r3, [r7, #8]
	sub	r3, r3, fp
	add	r5, fp
	sub	r6, r6, fp
	str	r3, [r7, #8]
	cmp	r3, #0
	beq	lab1042
	cmp	r6, #0
	bne	lab1052
lab1046: 	add	r3, sl, #8
lab1053: 	ldrd	r5, r6, [r3, #-8]
	mov	sl, r3
	adds	r3, #8
	cmp	r6, #0
	beq	lab1053
lab1047: 	mov	r2, r6
	movs	r1, #10
	mov	r0, r5
	bl	memchr
	cmp	r0, #0
	beq	lab1054
	adds	r0, #1
	sub	r9, r0, r5
	b	lab1055
lab1039: 	ldr	r0, [r4, #0]
	ldr	r3, [r4, #16]
	cmp	r0, r3
	bhi	lab1056
	ldr	r3, [r4, #20]
	cmp	r3, r6
	bhi	lab1056
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
	ble	lab1033
lab1058: 	sub	r6, r6, sl
	b	lab1057
lab1056: 	cmp	fp, r6
	mov	sl, fp
	it	cs
	movcs	sl, r6
	mov	r2, sl
	mov	r1, r9
push {r1, r2}
	ldr r1, =3922
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3922
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
	bne	lab1058
	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =7831
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =7831
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab1058
	b	lab1033
lab1040: 	ldr	r0, [r4, #0]
	mov	fp, r6
	mov	r2, r6
	b	lab1059
lab1050: 	mov	r1, r5
	str	r2, [sp, #4]
push {r1, r2}
	ldr r1, =3378
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3378
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
	b	lab1060
lab1041: 	ldr	r3, [r4, #0]
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
	bpl	lab1061
	mov	r1, r2
	mov	r0, r8
push {r1, r2}
	ldr r1, =5371
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =5371
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab1062
	mov	r2, fp
	ldr	r1, [r4, #16]
	str	r0, [sp, #4]
	bl	memcpy
	ldrh	r2, [r4, #12]
	ldr	r3, [sp, #4]
	bic	r2, r2, #1152	
	orr	r2, r2, #128	
	strh	r2, [r4, #12]
lab1063: 	add	r0, r3, fp
	str	r3, [r4, #16]
	sub	r3, sl, fp
	str	sl, [r4, #20]
	str	r3, [r4, #8]
	str	r0, [r4, #0]
	mov	fp, r6
	mov	r2, r6
	b	lab1059
lab1049: 	mov	r1, r5
	mov	r2, fp
push {r1, r2}
	ldr r1, =3824
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3824
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
	ldr r1, =5523
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =5523
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab1060
	b	lab1033
lab1061: 	mov	r0, r8
push {r1, r2}
	ldr r1, =461
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_realloc_r
	push {r1, r2}
	ldr r1, =461
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r0
	cmp	r0, #0
	bne	lab1063
	ldr	r1, [r4, #16]
	mov	r0, r8
push {r1, r2}
	ldr r1, =8005
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =8005
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	movs	r2, #12
	bic	r3, r3, #128	
	str	r2, [r8]
	b	lab1064
lab1054: 	adds	r2, r6, #1
	mov	r9, r2
	b	lab1065
lab1062: 	movs	r2, #12
	ldrsh	r3, [r4, #12]
	str	r2, [r8]
	b	lab1064
lab1035: 	mov	r0, #4294967295	
	b	lab1066
	nop
	.ltorg
_fwalk:
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r8, r1
	add	r7, r0, #736	
	movs	r6, #0
lab1070: 	ldrd	r5, r4, [r7, #4]
	subs	r5, #1
	bmi	lab1067
lab1069: 	ldrh	r3, [r4, #12]
	cmp	r3, #1
	add	r5, r5, #4294967295	
	bls	lab1068
	ldrsh	r3, [r4, #14]
	adds	r3, #1
	mov	r0, r4
	beq	lab1068
	blx	r8
	orrs	r6, r0
lab1068: 	adds	r3, r5, #1
	add	r4, r4, #104	
	bne	lab1069
lab1067: 	ldr	r7, [r7, #0]
	cmp	r7, #0
	bne	lab1070
	mov	r0, r6
	nop
	push {r1, r2}
	ldr r1, =6077
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
lab1074: 	ldrd	r5, r4, [r6, #4]
	subs	r5, #1
	bmi	lab1071
lab1073: 	ldrh	r3, [r4, #12]
	cmp	r3, #1
	add	r5, r5, #4294967295	
	bls	lab1072
	ldrsh	r3, [r4, #14]
	adds	r3, #1
	mov	r1, r4
	beq	lab1072
	mov	r0, r7
	blx	r8
	orr	r9, r9, r0
lab1072: 	adds	r3, r5, #1
	add	r4, r4, #104	
	bne	lab1073
lab1071: 	ldr	r6, [r6, #0]
	cmp	r6, #0
	bne	lab1074
	mov	r0, r9
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_setlocale_r:
	cmp r2, #0
	beq lab1075
	push	{r4, lr}
	ldr	r1, =0x20000418	
	mov	r0, r2
	mov	r4, r2
	bl	strcmp
	cmp r0, #0
	bne lab1076
lab1077: 	ldr	r0, =0x20000414	
	pop	{r4, pc}
lab1075: 	ldr	r0, =0x20000414	
	bx	lr
lab1076: 	ldr	r1, =0x20000414	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab1077
	ldr	r1, =0x2000038c	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab1077
	movs	r0, #0
	pop	{r4, pc}
	.ltorg
__locale_mb_cur_max:
	ldr	r3, =0x20000958	
	ldrb	r0, [r3, #296]	
	bx	lr
	.ltorg
setlocale:
	cmp r1, #0
	beq lab1078
	push	{r4, lr}
	mov	r4, r1
	mov	r0, r4
	ldr	r1, =0x20000418	
	bl	strcmp
	cmp r0, #0
	bne lab1079
lab1080: 	ldr	r0, =0x20000414	
	pop	{r4, pc}
lab1078: 	ldr	r0, =0x20000414	
	bx	lr
lab1079: 	ldr	r1, =0x20000414	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab1080
	ldr	r1, =0x2000038c	
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	beq	lab1080
	movs	r0, #0
	pop	{r4, pc}
	.ltorg
__localeconv_l:
	adds	r0, #240	
	bx	lr
_localeconv_r:
	ldr	r0, =0x20000a48	
	bx	lr
	.ltorg
localeconv:
	ldr	r0, =0x20000a48	
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
	bpl	lab1081
	add	r3, r4, #67	
	movs	r2, #1
	strd	r3, r2, [r4, #16]
	str	r3, [r4, #0]
lab1088: 	add	sp, #88	
	nop
	push {r1, r2}
	ldr r1, =2813
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab1081: 	ldrsh	r1, [r4, #14]
	cmp	r1, #0
	mov	r6, r0
	blt	lab1082
	mov	r2, sp
push {r1, r2}
	ldr r1, =6332
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fstat_r
	push {r1, r2}
	ldr r1, =6332
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab1083
	ldr	r5, [sp, #4]
	and	r5, r5, #61440	
	sub	r5, r5, #8192	
	clz	r5, r5
	mov	r8, #1024	
	lsrs	r5, r5, #5
	mov	r7, #2048	
lab1089: 	mov	r1, r8
	mov	r0, r6
push {r1, r2}
	ldr r1, =1233
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1233
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r3, [r4, #12]
	cmp r0, #0
	beq lab1084
lab1087: 	ldr	r2, =0x8004555	
	str	r2, [r6, #60]	
	orr	r3, r3, #128	
	str	r8, [r4, #20]
	strh	r3, [r4, #12]
	str	r0, [r4, #0]
	str	r0, [r4, #16]
	cmp r5, #0
	bne lab1085
lab1091: 	orrs	r3, r7
	strh	r3, [r4, #12]
	add	sp, #88	
	nop
	push {r1, r2}
	ldr r1, =3897
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, pc}
lab1083: 	ldrh	r3, [r4, #12]
lab1082: 	ands	r5, r3, #128	
	beq	lab1086
	mov	r8, #64	
	mov	r1, r8
	mov	r0, r6
push {r1, r2}
	ldr r1, =4638
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =4638
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r5, #0
	ldrsh	r3, [r4, #12]
	mov	r7, r5
	cmp	r0, #0
	bne	lab1087
lab1084: 	lsls	r2, r3, #22
	bmi	lab1088
	bic	r3, r3, #3
	add	r2, r4, #67	
	orr	r3, r3, #2
	movs	r1, #1
	strd	r2, r1, [r4, #16]
	strh	r3, [r4, #12]
	str	r2, [r4, #0]
	b	lab1088
lab1086: 	mov	r8, #1024	
	mov	r7, r5
	b	lab1089
lab1085: 	ldrsh	r1, [r4, #14]
	mov	r0, r6
	bl	_isatty_r
	push {r1, r2}
	ldr r1, =2762
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab1090
	ldrsh	r3, [r4, #12]
	b	lab1091
lab1090: 	ldrh	r3, [r4, #12]
	bic	r3, r3, #3
	orr	r3, r3, #1
	sxth	r3, r3
	b	lab1091
	.ltorg
__swhatbuf_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldrsh	r1, [r1, #14]
	cmp	r1, #0
	sub	sp, #88	
	mov	r5, r2
	mov	r6, r3
	blt	lab1092
	mov	r2, sp
push {r1, r2}
	ldr r1, =4279
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fstat_r
	push {r1, r2}
	ldr r1, =4279
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab1092
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
lab1092: 	ldrsh	r1, [r4, #12]
	movs	r3, #0
	ands	r0, r1, #128	
	str	r3, [r6, #0]
	beq	lab1093
	movs	r2, #64	
	mov	r0, r3
	str	r2, [r5, #0]
	add	sp, #88	
	pop	{r4, r5, r6, pc}
lab1093: 	mov	r3, #1024	
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
	bhi	lab1094
	cmp	r1, #16
	bhi	lab1095
	bl	__malloc_lock
	movs	r6, #16
	movs	r2, #24
	movs	r0, #2
lab1143: 	ldr	r7, =0x20000ac4	
	add	r2, r7
	sub	r1, r2, #8
	ldr	r3, [r2, #4]
	cmp	r3, r1
	beq	lab1096
lab1117: 	ldr	r2, [r3, #4]
	ldr	r1, [r3, #12]
	bic	r2, r2, #3
	add	r2, r3
lab1132: 	ldr	r5, [r3, #8]
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
	ldr r1, =681
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab1094: 	bics	r6, r6, #7
	bmi	lab1095
	cmp	r1, r6
	bhi	lab1095
	bl	__malloc_lock
	cmp	r6, #504	
	bcc	lab1097
	lsrs	r3, r6, #9
	beq	lab1098
	cmp	r3, #4
	bhi	lab1099
	lsrs	r3, r6, #6
	add	r0, r3, #57	
	add	ip, r3, #56	
	lsls	r3, r0, #3
lab1116: 	ldr	r7, =0x20000ac4	
	add	r3, r7
	sub	r5, r3, #8
	ldr	r3, [r3, #4]
	cmp	r5, r3
	bne	lab1100
	b	lab1101
lab1103: 	cmp	r1, #0
	bge	lab1102
	ldr	r3, [r3, #12]
	cmp	r5, r3
	beq	lab1101
lab1100: 	ldr	r2, [r3, #4]
	bic	r2, r2, #3
	subs	r1, r2, r6
	cmp	r1, #15
	ble	lab1103
	mov	r0, ip
lab1101: 	ldr	r5, [r7, #16]
	ldr	ip, =0x20000acc	
	cmp	r5, ip
	beq	lab1104
lab1118: 	ldr	r2, [r5, #4]
	bic	r2, r2, #3
	subs	r3, r2, r6
	cmp	r3, #15
	bgt	lab1105
	cmp	r3, #0
	strd	ip, ip, [r7, #16]
	bge	lab1106
	cmp	r2, #512	
	bcs	lab1107
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
lab1138: 	asrs	r3, r0, #2
	movs	r1, #1
	lsls	r1, r3
	cmp	r1, r2
	bhi	lab1108
lab1119: 	tst	r1, r2
	bne	lab1109
	bic	r0, r0, #3
lab1110: 	lsls	r1, r1, #1
	tst	r1, r2
	add	r0, r0, #4
	beq	lab1110
lab1109: 	add	r9, r7, r0, lsl #3
	mov	r5, r9
	mov	lr, r0
lab1141: 	ldr	r8, [r5, #12]
	cmp	r5, r8
	bne	lab1111
	b	lab1112
lab1114: 	cmp	r3, #0
	bge	lab1113
	ldr	r8, [r8, #12]
	cmp	r5, r8
	beq	lab1112
lab1111: 	ldr	r2, [r8, #4]
	bic	r2, r2, #3
	subs	r3, r2, r6
	cmp	r3, #15
	ble	lab1114
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
	b	lab1115
lab1095: 	movs	r3, #12
	str	r3, [r4, #0]
	movs	r5, #0
lab1115: 	mov	r0, r5
	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =3905
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab1098: 	mov	r3, #512	
	movs	r0, #64	
	mov	ip, #63	
	b	lab1116
lab1096: 	ldr	r3, [r2, #12]
	cmp	r2, r3
	it	eq
	addeq	r0, #2
	bne	lab1117
	ldr	r5, [r7, #16]
	ldr	ip, =0x20000acc	
	cmp	r5, ip
	bne	lab1118
lab1104: 	ldr	r2, [r7, #4]
	asrs	r3, r0, #2
	movs	r1, #1
	lsls	r1, r3
	cmp	r1, r2
	bls	lab1119
lab1108: 	ldr	r5, [r7, #8]
	ldr	r3, [r5, #4]
	bic	r9, r3, #3
	cmp	r6, r9
	bhi	lab1120
	sub	r3, r9, r6
	cmp	r3, #15
	bgt	lab1121
lab1120: 	ldr	fp, =0x20000ecc	
	ldr	r3, =0x20003128	
	ldr	r2, [fp]
	ldr	r3, [r3, #0]
	adds	r2, #1
	add	r3, r6
	add	sl, r5, r9
	beq	lab1122
	add	r3, r3, #4096	
	adds	r3, #15
	bic	r8, r3, #4080	
	bic	r8, r8, #15
lab1151: 	mov	r1, r8
	mov	r0, r4
push {r1, r2}
	ldr r1, =7511
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =7511
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r1, r0, #1
	mov	r2, r0
	beq	lab1123
	cmp	sl, r0
	bhi	lab1124
	ldr	r3, =0x200030f8	
	ldr	r1, [r3, #0]
	add	r1, r8
	str	r1, [r3, #0]
	mov	r0, r1
	beq	lab1125
lab1157: 	ldr	r1, [fp]
	str	r3, [sp, #4]
	adds	r1, #1
	ittet	ne
	subne	sl, r2, sl
	addne	r0, sl
	streq	r2, [fp]
	strne	r0, [r3, #0]
	ands	fp, r2, #7
	beq	lab1126
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
	ldr r1, =2924
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =2924
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r2, r0, #1
	ldrd	r2, r3, [sp]
	beq	lab1127
lab1153: 	subs	r0, r0, r2
	add	r8, r0, sl
lab1154: 	ldr	r1, [r3, #0]
	str	r2, [r7, #8]
	orr	r0, r8, #1
	add	r1, sl
	cmp	r5, r7
	str	r0, [r2, #4]
	str	r1, [r3, #0]
	beq	lab1128
	cmp	r9, #15
	bls	lab1129
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
	bhi	lab1130
	ldr	r0, [r2, #4]
	mov	r5, r2
lab1158: 	ldr	r3, =0x20003120	
	ldr	r2, [r3, #0]
	cmp	r2, r1
	it	cc
	strcc	r1, [r3, #0]
	ldr	r3, =0x20003124	
	ldr	r2, [r3, #0]
	cmp	r2, r1
	it	cc
	strcc	r1, [r3, #0]
	b	lab1131
lab1121: 	adds	r2, r5, r6
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
	ldr r1, =3794
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab1102: 	ldr	r1, [r3, #12]
	add	r2, r3
	b	lab1132
	nop
	.ltorg
lab1107: 	cmp	r2, #2560	
	mov	r3, r2, lsr #9
	bcc	lab1133
	cmp	r3, #20
	bhi	lab1134
	add	r1, r3, #92	
	lsls	r1, r1, #3
	adds	r3, #91	
lab1144: 	add	lr, r7, r1
	ldr	r1, [r7, r1]
	sub	lr, lr, #8
	cmp	lr, r1
	beq	lab1135
lab1137: 	ldr	r3, [r1, #4]
	bic	r3, r3, #3
	cmp	r3, r2
	bls	lab1136
	ldr	r1, [r1, #8]
	cmp	lr, r1
	bne	lab1137
lab1136: 	ldr	lr, [r1, #12]
	ldr	r2, [r7, #4]
lab1152: 	strd	r1, lr, [r5, #8]
	str	r5, [lr, #8]
	str	r5, [r1, #12]
	b	lab1138
lab1099: 	cmp	r3, #20
	bls	lab1139
	cmp	r3, #84	
	bhi	lab1140
	lsrs	r3, r6, #12
	add	r0, r3, #111	
	add	ip, r3, #110	
	lsls	r3, r0, #3
	b	lab1116
lab1112: 	add	lr, lr, #1
	tst	lr, #3
	add	r5, r5, #8
	bne	lab1141
	b	lab1142
lab1113: 	add	r2, r8
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
	b	lab1115
lab1097: 	lsrs	r0, r6, #3
	add	r2, r6, #8
	b	lab1143
lab1106: 	add	r2, r5
	mov	r0, r4
	ldr	r3, [r2, #4]
	orr	r3, r3, #1
	str	r3, [r2, #4]
	adds	r5, #8
	bl	__malloc_unlock
	b	lab1115
lab1105: 	adds	r1, r5, r6
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
	b	lab1115
lab1133: 	lsrs	r3, r2, #6
	add	r1, r3, #57	
	lsls	r1, r1, #3
	adds	r3, #56	
	b	lab1144
lab1124: 	cmp	r5, r7
	beq	lab1145
lab1123: 	ldr	r5, [r7, #8]
	ldr	r0, [r5, #4]
lab1131: 	bic	r8, r0, #3
	cmp	r6, r8
	sub	r3, r8, r6
	bhi	lab1146
	cmp	r3, #15
	bgt	lab1121
lab1146: 	mov	r0, r4
	bl	__malloc_unlock
	movs	r5, #0
	b	lab1115
lab1139: 	add	r0, r3, #92	
	add	ip, r3, #91	
	lsls	r3, r0, #3
	b	lab1116
lab1148: 	ldr	r3, [r9], #-8
	cmp	r3, r9
	bne	lab1147
lab1142: 	tst	r0, #3
	add	r0, r0, #4294967295	
	bne	lab1148
	ldr	r3, [r7, #4]
	bic	r3, r3, r1
	str	r3, [r7, #4]
lab1162: 	lsls	r1, r1, #1
	cmp	r1, r3
	bhi	lab1108
	cmp r1, #0
	bne lab1149
	b	lab1108
lab1150: 	lsls	r1, r1, #1
	add	lr, lr, #4
lab1149: 	tst	r1, r3
	beq	lab1150
	mov	r0, lr
	b	lab1109
lab1122: 	add	r8, r3, #16
	b	lab1151
lab1135: 	asrs	r2, r3, #2
	mov	r8, #1
	ldr	r3, [r7, #4]
	lsl	r2, r8, r2
	orrs	r2, r3
	str	r2, [r7, #4]
	b	lab1152
lab1126: 	add	r1, r2, r8
	negs	r1, r1
	ubfx	sl, r1, #0, #12
	mov	r1, sl
	mov	r0, r4
	str	r2, [sp, #0]
push {r1, r2}
	ldr r1, =1900
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_sbrk_r
	push {r1, r2}
	ldr r1, =1900
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	adds	r3, r0, #1
	ldrd	r2, r3, [sp]
	bne	lab1153
	mov	sl, fp
	b	lab1154
lab1134: 	cmp	r3, #84	
	bhi	lab1155
	lsrs	r3, r2, #12
	add	r1, r3, #111	
	lsls	r1, r1, #3
	adds	r3, #110	
	b	lab1144
lab1140: 	cmp	r3, #340	
	bhi	lab1156
	lsrs	r3, r6, #15
	add	r0, r3, #120	
	add	ip, r3, #119	
	lsls	r3, r0, #3
	b	lab1116
lab1145: 	ldr	r3, =0x200030f8	
	ldr	r0, [r3, #0]
	add	r0, r8
	str	r0, [r3, #0]
	b	lab1157
lab1125: 	ubfx	ip, sl, #0, #12
	cmp	ip, #0
	bne	lab1157
	ldr	r5, [r7, #8]
	add	r8, r9
	orr	r0, r8, #1
	str	r0, [r5, #4]
	b	lab1158
lab1128: 	mov	r5, r2
	b	lab1158
lab1129: 	movs	r3, #1
	str	r3, [r2, #4]
	b	lab1146
lab1155: 	cmp	r3, #340	
	bhi	lab1159
	lsrs	r3, r2, #15
	add	r1, r3, #120	
	lsls	r1, r1, #3
	adds	r3, #119	
	b	lab1144
lab1156: 	movw	r2, #1364	
	cmp	r3, r2
	bhi	lab1160
	lsrs	r3, r6, #18
	add	r0, r3, #125	
	add	ip, r3, #124	
	lsls	r3, r0, #3
	b	lab1116
lab1127: 	sub	fp, fp, #8
	add	r8, fp
	sub	r8, r8, r2
	mov	sl, #0
	b	lab1154
lab1130: 	add	r1, r5, #8
	mov	r0, r4
	str	r3, [sp, #0]
push {r1, r2}
	ldr r1, =919
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =919
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r5, [r7, #8]
	ldr	r3, [sp, #0]
	ldr	r0, [r5, #4]
	ldr	r1, [r3, #0]
	b	lab1158
lab1159: 	movw	r1, #1364	
	cmp	r3, r1
	bhi	lab1161
	lsrs	r3, r2, #18
	add	r1, r3, #125	
	lsls	r1, r1, #3
	adds	r3, #124	
	b	lab1144
lab1160: 	mov	r3, #1016	
	movs	r0, #127	
	mov	ip, #126	
	b	lab1116
lab1161: 	mov	r1, #1016	
	movs	r3, #126	
	b	lab1144
lab1147: 	ldr	r3, [r7, #4]
	b	lab1162
	.ltorg
_mbtowc_r:
	push	{r4}
	ldr	r4, =0x20000958	
	ldr	r4, [r4, #228]	
	mov	ip, r4
	pop	{r4}
	bx	ip
	nop
	.ltorg
__ascii_mbtowc:
	sub	sp, #8
	cmp r1, #0
	beq lab1163
	cmp r2, #0
	beq lab1164
lab1166: 	cmp r3, #0
	beq lab1165
	ldrb	r3, [r2, #0]
	str	r3, [r1, #0]
	ldrb	r2, [r2, #0]
	subs	r0, r2, #0
	it	ne
	movne	r0, #1
lab1167: 	add	sp, #8
	bx	lr
lab1163: 	add	r1, sp, #4
	cmp	r2, #0
	bne	lab1166
lab1164: 	mov	r0, r2
	add	sp, #8
	bx	lr
lab1165: 	mvn	r0, #1
	b	lab1167
	nop
memmove:
	cmp	r0, r1
	bls	lab1168
	adds	r3, r1, r2
	cmp	r3, r0
	bls	lab1168
	add	ip, r0, r2
	cmp r2, #0
	beq lab1169
	mov	r2, ip
lab1170: 	ldrb	ip, [r3, #-1]!
	strb	ip, [r2, #-1]!
	cmp	r1, r3
	bne	lab1170
	nop
	push {r1, r2}
	ldr r1, =1628
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
lab1168: 	cmp	r2, #15
	bhi	lab1171
	mov	r3, r0
	add	ip, r2, #4294967295	
	cmp r2, #0
	beq lab1169
lab1179: 	add	ip, ip, #1
	subs	r3, #1
	add	ip, r1
lab1172: 	ldrb	r2, [r1], #1
	strb	r2, [r3, #1]!
	cmp	r1, ip
	bne	lab1172
lab1169:	nop
	push {r1, r2}
	ldr r1, =6966
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	bx	lr
lab1171: 	orr	r3, r0, r1
	lsls	r3, r3, #30
	bne	lab1173
	sub	r3, r2, #16
	push	{r4, r5, r6, lr}
	add	ip, r1, #32
	bic	r5, r3, #15
	add	lr, r1, #16
	add	r4, r0, #16
	add	ip, r5
	lsrs	r3, r3, #4
lab1174: 	ldr	r5, [lr, #-16]
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
	bne	lab1174
	adds	r3, #1
	tst	r2, #12
	add	r1, r1, r3, lsl #4
	and	r4, r2, #15
	add	r3, r0, r3, lsl #4
	beq	lab1175
	subs	r4, #4
	bic	r6, r4, #3
	mov	ip, r4, lsr #2
	add	r6, r3
	subs	r4, r3, #4
	mov	lr, r1
lab1176: 	ldr	r5, [lr], #4
	str	r5, [r4, #4]!
	cmp	r4, r6
	bne	lab1176
	add	r4, ip, #1
	and	r2, r2, #3
	add	r3, r3, r4, lsl #2
	add	r1, r1, r4, lsl #2
lab1180: 	add	ip, r2, #4294967295	
	cmp r2, #0
	beq lab1177
	add	ip, ip, #1
	subs	r3, #1
	add	ip, r1
lab1178: 	ldrb	r2, [r1], #1
	strb	r2, [r3, #1]!
	cmp	r1, ip
	bne	lab1178
lab1177:	nop
	push {r1, r2}
	ldr r1, =1668
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab1173: 	add	ip, r2, #4294967295	
	mov	r3, r0
	b	lab1179
lab1175: 	mov	r2, r4
	b	lab1180
__malloc_lock:
	ldr	r0, =0x200030e8	
	b	__retarget_lock_acquire_recursive
	nop
	.ltorg
__malloc_unlock:
	ldr	r0, =0x200030e8	
	b	__retarget_lock_release_recursive
	nop
	.ltorg
_realloc_r:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r7, r2
	cmp	r1, #0
	beq	lab1181
	add	r5, r7, #11
	mov	r8, r0
	mov	r4, r1
	bl	__malloc_lock
	cmp	r5, #22
	bhi	lab1182
	movs	r5, #16
	mov	r2, r5
lab1195: 	cmp	r7, r5
	bhi	lab1183
	ldr	r1, [r4, #-4]
	bic	r6, r1, #3
	cmp	r6, r2
	sub	r9, r4, #8
	bge	lab1184
	ldr	r3, =0x20000ac4	
	ldr	ip, [r3, #8]
	add	r0, r9, r6
	cmp	ip, r0
	beq	lab1185
	ldr	ip, [r0, #4]
	bic	r3, ip, #1
	add	r3, r0
	ldr	r3, [r3, #4]
	lsls	r3, r3, #31
	bmi	lab1186
	bic	ip, ip, #3
	add	r3, r6, ip
	cmp	r3, r2
	bge	lab1187
	lsls	r3, r1, #31
	bmi	lab1188
	ldr	r3, [r4, #-8]
	sub	sl, r9, r3
	ldr	r3, [sl, #4]
	bic	r1, r3, #3
	add	ip, r1
	add	ip, r6
	cmp	ip, r2
	bge	lab1189
lab1197: 	adds	r3, r6, r1
	cmp	r3, r2
	bge	lab1190
lab1188: 	mov	r1, r7
	mov	r0, r8
push {r1, r2}
	ldr r1, =1934
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1934
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r7, r0
	cmp r0, #0
	beq lab1191
	ldr	r3, [r4, #-4]
	bic	r3, r3, #1
	add	r3, r9
	sub	r2, r0, #8
	cmp	r3, r2
	beq	lab1192
	subs	r2, r6, #4
	cmp	r2, #36	
	bhi	lab1193
	cmp	r2, #19
	bhi	lab1194
	mov	r3, r0
	mov	r2, r4
lab1205: 	ldr	r1, [r2, #0]
	str	r1, [r3, #0]
	ldr	r1, [r2, #4]
	str	r1, [r3, #4]
	ldr	r2, [r2, #8]
	str	r2, [r3, #8]
lab1209: 	mov	r1, r4
	mov	r0, r8
push {r1, r2}
	ldr r1, =6084
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1191:	push {r1, r2}
	ldr r1, =6084
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r0, r8
	bl	__malloc_unlock
	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =6800
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab1182: 	bic	r5, r5, #7
	cmp	r5, #0
	mov	r2, r5
	bge	lab1195
lab1183: 	movs	r3, #12
	str	r3, [r8]
	movs	r7, #0
lab1203: 	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =7764
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab1187: 	mov	r6, r3
	ldrd	r2, r3, [r0, #8]
	str	r3, [r2, #12]
	str	r2, [r3, #8]
lab1184: 	subs	r3, r6, r5
	cmp	r3, #15
	bhi	lab1196
	ldr	r3, [r9, #4]
	and	r3, r3, #1
	orrs	r3, r6
	add	r6, r9
	str	r3, [r9, #4]
	ldr	r3, [r6, #4]
	orr	r3, r3, #1
	str	r3, [r6, #4]
lab1198: 	mov	r0, r8
	mov	r7, r4
	bl	__malloc_unlock
	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =2095
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab1186: 	lsls	r1, r1, #31
	bmi	lab1188
	ldr	r3, [r4, #-8]
	sub	sl, r9, r3
	ldr	r1, [sl, #4]
	bic	r1, r1, #3
	b	lab1197
lab1181: 	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r1, r2
	b	_malloc_r
lab1196: 	ldr	r1, [r9, #4]
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
	ldr r1, =6230
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =6230
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab1198
lab1185: 	ldr	r0, [ip, #4]
	bic	fp, r0, #3
	add	ip, r6, fp
	add	r0, r5, #16
	cmp	ip, r0
	bge	lab1199
	lsls	r1, r1, #31
	bmi	lab1188
	ldr	r1, [r4, #-8]
	sub	sl, r9, r1
	ldr	r1, [sl, #4]
	bic	r1, r1, #3
	add	fp, r1
	add	fp, r6
	cmp	r0, fp
	bgt	lab1197
	mov	r7, sl
	ldr	r1, [sl, #12]
	ldr	r0, [r7, #8]!
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r0, #12]
	str	r0, [r1, #8]
	bhi	lab1200
	cmp	r2, #19
	bls	lab1201
	ldr	r1, [r4, #0]
	str	r1, [sl, #8]
	ldr	r1, [r4, #4]
	str	r1, [sl, #12]
	cmp	r2, #27
	bhi	lab1202
	adds	r4, #8
	add	r2, sl, #16
lab1218: 	ldr	r1, [r4, #0]
	str	r1, [r2, #0]
	ldr	r1, [r4, #4]
	str	r1, [r2, #4]
	ldr	r1, [r4, #8]
	str	r1, [r2, #8]
lab1219: 	add	r1, sl, r5
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
	b	lab1203
lab1194: 	ldr	r3, [r4, #0]
	str	r3, [r0, #0]
	ldr	r3, [r4, #4]
	str	r3, [r0, #4]
	cmp	r2, #27
	bhi	lab1204
	add	r2, r4, #8
	add	r3, r0, #8
	b	lab1205
lab1199: 	add	r2, r9, r5
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
	b	lab1203
lab1192: 	ldr	r3, [r0, #-4]
	bic	r3, r3, #3
	add	r6, r3
	b	lab1184
lab1190: 	mov	r7, sl
	ldr	r1, [sl, #12]
	ldr	r0, [r7, #8]!
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r0, #12]
	str	r0, [r1, #8]
	bhi	lab1206
	cmp	r2, #19
	bls	lab1207
	ldr	r1, [r4, #0]
	str	r1, [sl, #8]
	ldr	r1, [r4, #4]
	str	r1, [sl, #12]
	cmp	r2, #27
	bhi	lab1208
	adds	r4, #8
	add	r2, sl, #16
lab1214: 	mov	r6, r3
	ldr	r3, [r4, #0]
	str	r3, [r2, #0]
	ldr	r3, [r4, #4]
	str	r3, [r2, #4]
	ldr	r3, [r4, #8]
	str	r3, [r2, #8]
	mov	r9, sl
	mov	r4, r7
	b	lab1184
lab1193: 	mov	r1, r4
push {r1, r2}
	ldr r1, =4256
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =4256
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab1209
lab1189: 	ldrd	r1, r3, [r0, #8]
	mov	r7, sl
	str	r3, [r1, #12]
	str	r1, [r3, #8]
	ldr	r1, [r7, #8]!
	ldr	r3, [sl, #12]
	str	r3, [r1, #12]
	subs	r2, r6, #4
	cmp	r2, #36	
	str	r1, [r3, #8]
	bhi	lab1210
	cmp	r2, #19
	bls	lab1211
	ldr	r3, [r4, #0]
	str	r3, [sl, #8]
	ldr	r3, [r4, #4]
	str	r3, [sl, #12]
	cmp	r2, #27
	bhi	lab1212
	adds	r4, #8
	add	r3, sl, #16
lab1215: 	ldr	r2, [r4, #0]
	str	r2, [r3, #0]
	ldr	r2, [r4, #4]
	str	r2, [r3, #4]
	ldr	r2, [r4, #8]
	str	r2, [r3, #8]
	mov	r6, ip
	mov	r9, sl
	mov	r4, r7
	b	lab1184
lab1204: 	ldr	r3, [r4, #8]
	str	r3, [r0, #8]
	ldr	r3, [r4, #12]
	str	r3, [r0, #12]
	cmp	r2, #36	
	beq	lab1213
	add	r2, r4, #16
	add	r3, r0, #16
	b	lab1205
lab1207: 	mov	r2, r7
	b	lab1214
lab1206: 	mov	r1, r4
	mov	r0, r7
	mov	r6, r3
	mov	r9, sl
push {r1, r2}
	ldr r1, =379
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =379
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r7
	b	lab1184
lab1211: 	mov	r3, r7
	b	lab1215
lab1210: 	mov	r1, r4
	mov	r0, r7
	mov	r6, ip
	mov	r9, sl
push {r1, r2}
	ldr r1, =3761
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3761
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r4, r7
	b	lab1184
	.ltorg
lab1208: 	ldr	r1, [r4, #8]
	str	r1, [sl, #16]
	ldr	r1, [r4, #12]
	str	r1, [sl, #20]
	cmp	r2, #36	
	beq	lab1216
	adds	r4, #16
	add	r2, sl, #24
	b	lab1214
lab1213: 	ldr	r3, [r4, #16]
	str	r3, [r0, #16]
	ldr	r1, [r4, #20]
	str	r1, [r0, #20]
	add	r2, r4, #24
	add	r3, r0, #24
	b	lab1205
lab1212: 	ldr	r3, [r4, #8]
	str	r3, [sl, #16]
	ldr	r3, [r4, #12]
	str	r3, [sl, #20]
	cmp	r2, #36	
	beq	lab1217
	adds	r4, #16
	add	r3, sl, #24
	b	lab1215
lab1201: 	mov	r2, r7
	b	lab1218
lab1200: 	mov	r1, r4
	mov	r0, r7
push {r1, r2}
	ldr r1, =3063
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memmove
	push {r1, r2}
	ldr r1, =3063
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, =0x20000ac4	
	b	lab1219
lab1216: 	ldr	r2, [r4, #16]
	str	r2, [sl, #24]
	ldr	r2, [r4, #20]
	str	r2, [sl, #28]
	adds	r4, #24
	add	r2, sl, #32
	b	lab1214
lab1202: 	ldr	r1, [r4, #8]
	str	r1, [sl, #16]
	ldr	r1, [r4, #12]
	str	r1, [sl, #20]
	cmp	r2, #36	
	beq	lab1220
	adds	r4, #16
	add	r2, sl, #24
	b	lab1218
lab1217: 	ldr	r3, [r4, #16]
	str	r3, [sl, #24]
	ldr	r3, [r4, #20]
	str	r3, [sl, #28]
	adds	r4, #24
	add	r3, sl, #32
	b	lab1215
lab1220: 	ldr	r2, [r4, #16]
	str	r2, [sl, #24]
	ldr	r2, [r4, #20]
	str	r2, [sl, #28]
	adds	r4, #24
	add	r2, sl, #32
	b	lab1218
	nop
	.ltorg
_sbrk_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x2000312c	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_sbrk
	adds	r3, r0, #1
	beq	lab1221
lab1222:	nop
	push {r1, r2}
	ldr r1, =5067
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab1221: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1222
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =5102
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_init_signal_r:
	push	{r3, r4, r5, lr}
	ldr	r4, [r0, #732]	
	cmp r4, #0
	beq lab1223
lab1226: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab1223: 	movs	r1, #128	
	mov	r5, r0
push {r1, r2}
	ldr r1, =7964
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =7964
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab1224
	subs	r3, r0, #4
	adds	r2, #124	
lab1225: 	str	r4, [r3, #4]!
	cmp	r3, r2
	bne	lab1225
	b	lab1226
lab1224: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
_signal_r:
	cmp	r1, #31
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	bhi	lab1227
	ldr	r6, [r0, #732]	
	mov	r4, r1
	mov	r7, r2
	cmp r6, #0
	beq lab1228
lab1231: 	ldr	r0, [r6, r4, lsl #2]
	str	r7, [r6, r4, lsl #2]
	pop	{r3, r4, r5, r6, r7, pc}
lab1227: 	movs	r3, #22
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	pop	{r3, r4, r5, r6, r7, pc}
lab1228: 	movs	r1, #128	
push {r1, r2}
	ldr r1, =8182
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =8182
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r6, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab1229
	subs	r3, r0, #4
	add	r5, r0, #124	
	movs	r1, #0
lab1230: 	str	r1, [r3, #4]!
	cmp	r5, r3
	bne	lab1230
	b	lab1231
lab1229: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, r6, r7, pc}
_raise_r:
	cmp	r1, #31
	push	{r3, r4, r5, lr}
	mov	r5, r0
	bhi	lab1232
	ldr	r2, [r0, #732]	
	mov	r4, r1
	cmp r2, #0
	beq lab1233
	ldr	r3, [r2, r1, lsl #2]
	cmp r3, #0
	beq lab1233
	cmp	r3, #1
	beq	lab1234
	adds	r1, r3, #1
	beq	lab1235
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, r4, lsl #2]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab1233: 	mov	r0, r5
	bl	_getpid_r
	mov	r2, r4
	mov	r1, r0
	mov	r0, r5
	ldmia	sp!, {r3, r4, r5, lr}
	b	_kill_r
lab1235: 	movs	r3, #22
	str	r3, [r0, #0]
	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab1234: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab1232: 	movs	r3, #22
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	nop
__sigtramp_r:
	cmp	r1, #31
	bhi	lab1236
	ldr	r2, [r0, #732]	
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	cmp r2, #0
	beq lab1237
lab1243: 	ldr	r3, [r2, r4, lsl #2]
	add	r2, r2, r4, lsl #2
	cmp r3, #0
	beq lab1238
	adds	r1, r3, #1
	beq	lab1239
	cmp	r3, #1
	beq	lab1240
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, #0]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab1238: 	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab1237: 	movs	r1, #128	
push {r1, r2}
	ldr r1, =3051
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =3051
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab1241
	subs	r3, r0, #4
	movs	r1, #0
	adds	r0, #124	
lab1242: 	str	r1, [r3, #4]!
	cmp	r0, r3
	bne	lab1242
	b	lab1243
lab1240: 	movs	r0, #3
	pop	{r3, r4, r5, pc}
lab1239: 	movs	r0, #2
	pop	{r3, r4, r5, pc}
lab1241: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
lab1236: 	mov	r0, #4294967295	
	bx	lr
raise:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x2000052c	
	cmp	r0, #31
	ldr	r5, [r3, #0]
	bhi	lab1244
	ldr	r2, [r5, #732]	
	mov	r4, r0
	cmp r2, #0
	beq lab1245
	ldr	r3, [r2, r0, lsl #2]
	cmp r3, #0
	beq lab1245
	cmp	r3, #1
	beq	lab1246
	adds	r1, r3, #1
	beq	lab1247
	movs	r5, #0
	str	r5, [r2, r0, lsl #2]
	blx	r3
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =3317
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab1245: 	mov	r0, r5
	bl	_getpid_r
	mov	r2, r4
	mov	r1, r0
	mov	r0, r5
	ldmia	sp!, {r3, r4, r5, lr}
	b	_kill_r
lab1247: 	movs	r3, #22
	str	r3, [r5, #0]
	movs	r0, #1
	nop
	push {r1, r2}
	ldr r1, =1810
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab1246: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =4291
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
lab1244: 	movs	r3, #22
	str	r3, [r5, #0]
	mov	r0, #4294967295	
	nop
	push {r1, r2}
	ldr r1, =7129
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	nop
	.ltorg
signal:
	ldr	r3, =0x2000052c	
	cmp	r0, #31
	push	{r4, r5, r6, lr}
	ldr	r6, [r3, #0]
	bhi	lab1248
	mov	r5, r1
	ldr	r1, [r6, #732]	
	mov	r4, r0
	cmp r1, #0
	beq lab1249
lab1252: 	ldr	r0, [r1, r4, lsl #2]
	str	r5, [r1, r4, lsl #2]
	pop	{r4, r5, r6, pc}
lab1248: 	movs	r3, #22
	str	r3, [r6, #0]
	mov	r0, #4294967295	
	pop	{r4, r5, r6, pc}
lab1249: 	movs	r1, #128	
	mov	r0, r6
push {r1, r2}
	ldr r1, =1880
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1880
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r1, r0
	str	r0, [r6, #732]	
	cmp r0, #0
	beq lab1250
	subs	r3, r0, #4
	add	ip, r0, #124	
	movs	r2, #0
lab1251: 	str	r2, [r3, #4]!
	cmp	r3, ip
	bne	lab1251
	b	lab1252
lab1250: 	mov	r0, #4294967295	
	pop	{r4, r5, r6, pc}
	.ltorg
_init_signal:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x2000052c	
	ldr	r5, [r3, #0]
	ldr	r4, [r5, #732]	
	cmp r4, #0
	beq lab1253
lab1256: 	movs	r0, #0
	pop	{r3, r4, r5, pc}
lab1253: 	movs	r1, #128	
	mov	r0, r5
push {r1, r2}
	ldr r1, =7882
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =7882
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab1254
	subs	r3, r0, #4
	add	r2, r0, #124	
lab1255: 	str	r4, [r3, #4]!
	cmp	r3, r2
	bne	lab1255
	b	lab1256
lab1254: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	.ltorg
__sigtramp:
	push	{r3, r4, r5, lr}
	ldr	r3, =0x2000052c	
	cmp	r0, #31
	ldr	r5, [r3, #0]
	bhi	lab1257
	ldr	r2, [r5, #732]	
	mov	r4, r0
	cmp r2, #0
	beq lab1258
lab1263: 	ldr	r3, [r2, r4, lsl #2]
	add	r2, r2, r4, lsl #2
	cmp r3, #0
	beq lab1259
	adds	r1, r3, #1
	beq	lab1260
	cmp	r3, #1
	beq	lab1261
	movs	r5, #0
	mov	r0, r4
	str	r5, [r2, #0]
	blx	r3
	mov	r0, r5
	pop	{r3, r4, r5, pc}
lab1259: 	movs	r0, #1
	pop	{r3, r4, r5, pc}
lab1258: 	movs	r1, #128	
	mov	r0, r5
push {r1, r2}
	ldr r1, =1599
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_malloc_r
	push {r1, r2}
	ldr r1, =1599
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	str	r0, [r5, #732]	
	cmp r0, #0
	beq lab1257
	subs	r3, r0, #4
	movs	r1, #0
	adds	r0, #124	
lab1262: 	str	r1, [r3, #4]!
	cmp	r3, r0
	bne	lab1262
	b	lab1263
lab1261: 	movs	r0, #3
	pop	{r3, r4, r5, pc}
lab1260: 	movs	r0, #2
	pop	{r3, r4, r5, pc}
lab1257: 	mov	r0, #4294967295	
	pop	{r3, r4, r5, pc}
	nop
	.ltorg
_kill_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldr	r5, =0x2000312c	
	mov	r3, r0
	movs	r6, #0
	mov	r0, r4
	mov	r1, r2
	mov	r4, r3
	str	r6, [r5, #0]
	bl	_kill
	adds	r3, r0, #1
	beq	lab1264
lab1265:	nop
	push {r1, r2}
	ldr r1, =5985
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab1264: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1265
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =5267
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
	ldr r1, =1564
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	blt	lab1266
	ldr	r3, [r4, #80]	
	add	r3, r0
	str	r3, [r4, #80]	
	pop	{r4, pc}
lab1266: 	ldrh	r3, [r4, #12]
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
	bmi	lab1267
lab1268: 	bic	r1, r1, #4096	
	strh	r1, [r4, #12]
	mov	r3, r7
	ldrsh	r1, [r4, #14]
	mov	r2, r6
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	b	_write_r
lab1267: 	ldrsh	r1, [r4, #14]
	movs	r3, #2
	movs	r2, #0
push {r1, r2}
	ldr r1, =6737
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_lseek_r
	push {r1, r2}
	ldr r1, =6737
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrsh	r1, [r4, #12]
	b	lab1268
	nop
__sseek:
	push	{r4, lr}
	mov	r4, r1
	ldrsh	r1, [r1, #14]
push {r1, r2}
	ldr r1, =3799
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_lseek_r
	push {r1, r2}
	ldr r1, =3799
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
	bne	lab1269
	cmp	r2, #3
	bhi	lab1270
lab1269: 	mov	ip, r0
lab1274: 	add	lr, r1, #4294967295	
	b	lab1271
lab1273: 	ldrb	r1, [lr, #1]!
	strb	r1, [r3], #1
	subs	r4, r2, #1
	cmp r1, #0
	beq lab1272
	mov	ip, r3
	mov	r2, r4
lab1271: 	mov	r3, ip
	cmp	r2, #0
	bne	lab1273
lab1276:	nop
	push {r1, r2}
	ldr r1, =7823
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, pc}
lab1270: 	mov	r3, r1
	mov	ip, r0
lab1275: 	mov	r1, r3
	ldr	r5, [r3], #4
	sub	r4, r5, #16843009	
	bic	r4, r4, r5
	tst	r4, #2155905152	
	bne	lab1274
	subs	r2, #4
	cmp	r2, #3
	str	r5, [ip], #4
	mov	r1, r3
	bhi	lab1275
	b	lab1274
lab1272: 	add	r2, ip
	cmp	r4, #0
	beq	lab1276
lab1277: 	strb	r1, [r3], #1
	cmp	r3, r2
	bne	lab1277
	nop
	push {r1, r2}
	ldr r1, =5958
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
	beq lab1278
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab1279
lab1278: 	ldrsh	r2, [r4, #12]
	ldr	r3, [r4, #24]
	str	r3, [r4, #8]
	lsls	r7, r2, #28
	uxth	r0, r2
	bpl	lab1280
	ldr	r3, [r4, #16]
	cmp r3, #0
	beq lab1280
	uxtb	r5, r5
	lsls	r1, r0, #18
	mov	r7, r5
	bpl	lab1281
lab1286: 	ldr	r2, [r4, #0]
	ldr	r1, [r4, #20]
	subs	r3, r2, r3
	cmp	r1, r3
	ble	lab1282
lab1287: 	adds	r3, #1
lab1288: 	ldr	r1, [r4, #8]
	subs	r1, #1
	str	r1, [r4, #8]
	adds	r1, r2, #1
	str	r1, [r4, #0]
	strb	r5, [r2, #0]
	ldr	r2, [r4, #20]
	cmp	r2, r3
	beq	lab1283
	ldrh	r3, [r4, #12]
	lsls	r3, r3, #31
	bpl	lab1284
	cmp	r5, #10
	beq	lab1283
lab1284: 	mov	r0, r7
	nop
	push {r1, r2}
	ldr r1, =3376
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab1280: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =2676
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__swsetup_r
	push {r1, r2}
	ldr r1, =2676
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab1285
	ldrsh	r2, [r4, #12]
	ldr	r3, [r4, #16]
	uxth	r0, r2
	uxtb	r5, r5
	lsls	r1, r0, #18
	mov	r7, r5
	bmi	lab1286
lab1281: 	orr	r2, r2, #8192	
	strh	r2, [r4, #12]
	ldr	r2, [r4, #100]	
	ldr	r1, [r4, #20]
	bic	r2, r2, #8192	
	str	r2, [r4, #100]	
	ldr	r2, [r4, #0]
	subs	r3, r2, r3
	cmp	r1, r3
	bgt	lab1287
lab1282: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =2129
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =2129
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r0, #0
	bne lab1285
	ldr	r2, [r4, #0]
	movs	r3, #1
	b	lab1288
lab1279: 	bl	__sinit
	b	lab1278
lab1283: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =5327
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_fflush_r
	push {r1, r2}
	ldr r1, =5327
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r0, #0
	beq	lab1284
lab1285: 	mov	r7, #4294967295	
	b	lab1284
__swbuf:
	push	{r4}
	ldr	r4, =0x2000052c	
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
	beq lab1289
	ldr	r6, =0x20000958	
	ldr	r6, [r6, #224]	
	nop
	push {r1, r2}
	ldr r1, =7109
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	beq	lab1290
lab1291: 	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =2938
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab1289: 	mov	r2, r1
	ldr	r1, =0x20000958	
	ldr	r6, [r1, #224]	
	add	r1, sp, #4
	nop
	push {r1, r2}
	ldr r1, =6896
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	bne	lab1291
lab1290: 	movs	r2, #0
	movs	r3, #138	
	str	r2, [r4, #0]
	str	r3, [r5, #0]
	add	sp, #16
	nop
	push {r1, r2}
	ldr r1, =4902
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
wcrtomb:
	push	{r4, r5, r6, lr}
	ldr	r3, =0x2000052c	
	sub	sp, #16
	ldr	r5, [r3, #0]
	mov	r4, r2
	mov	r3, r1
	mov	r1, r0
	cmp r0, #0
	beq lab1292
	ldr	r0, =0x20000958	
	mov	r2, r3
	ldr	r6, [r0, #224]	
	mov	r3, r4
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =5678
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	beq	lab1293
lab1294: 	add	sp, #16
	pop	{r4, r5, r6, pc}
lab1292: 	ldr	r2, =0x20000958	
	mov	r3, r4
	ldr	r6, [r2, #224]	
	add	r1, sp, #4
	mov	r2, r0
	mov	r0, r5
	nop
	push {r1, r2}
	ldr r1, =5542
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	blx	r6
	adds	r3, r0, #1
	bne	lab1294
lab1293: 	movs	r2, #0
	movs	r3, #138	
	str	r2, [r4, #0]
	str	r3, [r5, #0]
	add	sp, #16
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
_wctomb_r:
	push	{r4}
	ldr	r4, =0x20000958	
	ldr	r4, [r4, #224]	
	mov	ip, r4
	pop	{r4}
	bx	ip
	nop
	.ltorg
__ascii_wctomb:	push {r1, r2}
	ldr r1, =2735
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp r1, #0
	beq lab1295
	cmp	r2, #255	
	bhi	lab1296
	strb	r2, [r1, #0]
	movs	r0, #1
	bx	lr
lab1296: 	movs	r3, #138	
	str	r3, [r0, #0]
	mov	r0, #4294967295	
	bx	lr
lab1295: 	mov	r0, r1
	bx	lr
	nop
_write_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x2000312c	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_write
	adds	r3, r0, #1
	beq	lab1297
lab1298: 	pop	{r3, r4, r5, pc}
lab1297: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1298
	str	r3, [r4, #0]
	pop	{r3, r4, r5, pc}
	.ltorg
_close_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x2000312c	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_close
	adds	r3, r0, #1
	beq	lab1299
lab1300: 	pop	{r3, r4, r5, pc}
lab1299: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1300
	str	r3, [r4, #0]
	pop	{r3, r4, r5, pc}
	.ltorg
_fclose_r:
	push	{r4, r5, r6, lr}
	cmp	r1, #0
	beq	lab1301
	mov	r6, r0
	mov	r4, r1
	cmp r0, #0
	beq lab1302
	ldr	r3, [r0, #56]	
	cmp	r3, #0
	beq	lab1303
lab1302: 	ldr	r3, [r4, #100]	
	lsls	r0, r3, #31
	bpl	lab1304
lab1313: 	ldrsh	r3, [r4, #12]
	cmp	r3, #0
	beq	lab1301
lab1311: 	mov	r1, r4
	mov	r0, r6
push {r1, r2}
	ldr r1, =7754
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__sflush_r
	push {r1, r2}
	ldr r1, =7754
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [r4, #44]	
	mov	r5, r0
	cmp r3, #0
	beq lab1305
	ldr	r1, [r4, #28]
	mov	r0, r6
	blx	r3
	cmp	r0, #0
	it	lt
	movlt	r5, #4294967295	
lab1305: 	ldrh	r3, [r4, #12]
	lsls	r2, r3, #24
	bmi	lab1306
lab1314: 	ldr	r1, [r4, #48]	
	cmp r1, #0
	beq lab1307
	add	r3, r4, #64	
	cmp	r1, r3
	beq	lab1308
	mov	r0, r6
push {r1, r2}
	ldr r1, =5090
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1308:	push {r1, r2}
	ldr r1, =5090
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	movs	r3, #0
	str	r3, [r4, #48]	
lab1307: 	ldr	r1, [r4, #68]	
	cmp r1, #0
	beq lab1309
	mov	r0, r6
push {r1, r2}
	ldr r1, =8186
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =8186
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	str	r3, [r4, #68]	
lab1309: 	bl	__sfp_lock_acquire
	ldr	r3, [r4, #100]	
	movs	r2, #0
	lsls	r3, r3, #31
	strh	r2, [r4, #12]
	bpl	lab1310
lab1315: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_close_recursive
	bl	__sfp_lock_release
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab1304: 	ldrh	r3, [r4, #12]
	lsls	r1, r3, #22
	bmi	lab1311
	ldr	r0, [r4, #88]	
	bl	__retarget_lock_acquire_recursive
	ldrsh	r3, [r4, #12]
	cmp	r3, #0
	bne	lab1311
	ldr	r5, [r4, #100]	
	ands	r5, r5, #1
	beq	lab1312
lab1301: 	movs	r5, #0
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab1303: 	bl	__sinit
	ldr	r3, [r4, #100]	
	lsls	r0, r3, #31
	bmi	lab1313
	b	lab1304
lab1312: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	mov	r0, r5
	pop	{r4, r5, r6, pc}
lab1306: 	ldr	r1, [r4, #16]
	mov	r0, r6
push {r1, r2}
	ldr r1, =743
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =743
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	b	lab1314
lab1310: 	ldr	r0, [r4, #88]	
	bl	__retarget_lock_release_recursive
	b	lab1315
fclose:
	ldr	r3, =0x2000052c	
	mov	r1, r0
	ldr	r0, [r3, #0]
	b	_fclose_r
	nop
	.ltorg
_fstat_r:
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldr	r5, =0x2000312c	
	mov	r3, r0
	movs	r6, #0
	mov	r0, r4
	mov	r1, r2
	mov	r4, r3
	str	r6, [r5, #0]
	bl	_fstat
	adds	r3, r0, #1
	beq	lab1316
lab1317:	nop
	push {r1, r2}
	ldr r1, =7370
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, r6, pc}
lab1316: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1317
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =5701
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
	nop
	.ltorg
_isatty_r:
	push	{r3, r4, r5, lr}
	ldr	r5, =0x2000312c	
	movs	r2, #0
	mov	r4, r0
	mov	r0, r1
	str	r2, [r5, #0]
	bl	_isatty
	adds	r3, r0, #1
	beq	lab1318
lab1319:	nop
	push {r1, r2}
	ldr r1, =841
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab1318: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1319
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =4536
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_lseek_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x2000312c	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_lseek
	adds	r3, r0, #1
	beq	lab1320
lab1321:	nop
	push {r1, r2}
	ldr r1, =1104
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab1320: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1321
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =6373
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, pc}
	.ltorg
_read_r:
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r5, =0x2000312c	
	mov	ip, r0
	mov	r1, r2
	mov	r0, r4
	mov	r2, r3
	movs	r3, #0
	str	r3, [r5, #0]
	mov	r4, ip
	bl	_read
	adds	r3, r0, #1
	beq	lab1322
lab1323:	nop
	push {r1, r2}
	ldr r1, =625
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, pc}
lab1322: 	ldr	r3, [r5, #0]
	cmp	r3, #0
	beq	lab1323
	str	r3, [r4, #0]
	nop
	push {r1, r2}
	ldr r1, =2254
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
	beq lab1324
	ldr	r7, [r6, #0]
	cmp r7, #0
	beq lab1325
	ldr	r8, [r7]
	cmp	r8, #0
	beq	lab1326
	ldr	r1, [r8]
	cmp r1, #0
	beq lab1327
push {r1, r2}
	ldr r1, =5591
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	cleanup_glue
lab1327:	push {r1, r2}
	ldr r1, =5591
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r8
	mov	r0, r5
push {r1, r2}
	ldr r1, =4692
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1326:	push {r1, r2}
	ldr r1, =4692
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r7
	mov	r0, r5
push {r1, r2}
	ldr r1, =7760
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1325:	push {r1, r2}
	ldr r1, =7760
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r6
	mov	r0, r5
push {r1, r2}
	ldr r1, =3265
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1324:	push {r1, r2}
	ldr r1, =3265
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r4
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	b	_free_r
_reclaim_reent:
	ldr	r3, =0x2000052c	
	ldr	r3, [r3, #0]
	cmp	r3, r0
	beq	lab1328
	ldr	r1, [r0, #76]	
	push	{r4, r5, r6, lr}
	mov	r5, r0
	cmp r1, #0
	beq lab1329
	movs	r6, #0
lab1332: 	ldr	r4, [r1, r6]
	cmp r4, #0
	beq lab1330
lab1331: 	mov	r1, r4
	ldr	r4, [r4, #0]
	mov	r0, r5
push {r1, r2}
	ldr r1, =7570
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =7570
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r4, #0
	bne	lab1331
	ldr	r1, [r5, #76]	
lab1330: 	adds	r6, #4
	cmp	r6, #128	
	bne	lab1332
	mov	r0, r5
push {r1, r2}
	ldr r1, =1075
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1329:	push {r1, r2}
	ldr r1, =1075
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r1, [r5, #64]	
	cmp r1, #0
	beq lab1333
	mov	r0, r5
push {r1, r2}
	ldr r1, =14
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1333:	push {r1, r2}
	ldr r1, =14
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r4, [r5, #328]	
	cmp r4, #0
	beq lab1334
	add	r6, r5, #332	
	cmp	r4, r6
	beq	lab1334
lab1335: 	mov	r1, r4
	ldr	r4, [r4, #0]
	mov	r0, r5
push {r1, r2}
	ldr r1, =5152
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
	push {r1, r2}
	ldr r1, =5152
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r6, r4
	bne	lab1335
lab1334: 	ldr	r1, [r5, #84]	
	cmp r1, #0
	beq lab1336
	mov	r0, r5
push {r1, r2}
	ldr r1, =217
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	_free_r
lab1336:	push {r1, r2}
	ldr r1, =217
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	ldr	r3, [r5, #56]	
	cmp r3, #0
	beq lab1337
	ldr	r3, [r5, #60]	
	mov	r0, r5
	blx	r3
	ldr	r4, [r5, #736]	
	cmp r4, #0
	beq lab1337
	ldr	r1, [r4, #0]
	cmp r1, #0
	beq lab1338
	mov	r0, r5
push {r1, r2}
	ldr r1, =1144
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	cleanup_glue
lab1338:	push {r1, r2}
	ldr r1, =1144
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
 	mov	r1, r4
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, lr}
	b	_free_r
lab1337: 	pop	{r4, r5, r6, pc}
lab1328: 	bx	lr
	.ltorg
_close:
	ldr	r3, =0x2000312c	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_fstat:
	ldr	r3, =0x2000312c	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_getpid:
	ldr	r3, =0x2000312c	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_isatty:
	ldr	r3, =0x2000312c	
	movs	r2, #88	
	str	r2, [r3, #0]
	movs	r0, #0
	bx	lr
	nop
	.ltorg
_kill:
	ldr	r3, =0x2000312c	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_lseek:
	ldr	r3, =0x2000312c	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_read:
	ldr	r3, =0x2000312c	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_sbrk:
	ldr	r2, =0x20003130	
	ldr	r1, =0x20003138	
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
	ldr	r3, =0x2000312c	
	movs	r2, #88	
	str	r2, [r3, #0]
	mov	r0, #4294967295	
	bx	lr
	.ltorg
_exit:
	b	_exit
	nop


	 .section .rodata

array:
	.word	0x0000000e
	.word	0x00000042
	.word	0x0000000c
	.word	0x00000029
	.word	0x00000056
	.word	0x00000045
	.word	0x00000013
	.word	0x0000004d
	.word	0x00000044
	.word	0x00000026
	.word	0x0000001a
	.word	0x0000002a
	.word	0x00000025
	.word	0x00000017
	.word	0x00000011
	.word	0x0000001d
	.word	0x00000037
	.word	0x0000000d
	.word	0x0000005a
	.word	0x0000005c
	.word	0x0000004c
	.word	0x00000063
	.word	0x0000000a
	.word	0x00000036
	.word	0x00000039
	.word	0x00000053
	.word	0x00000028
	.word	0x0000002c
	.word	0x0000004b
	.word	0x00000021
	.word	0x00000018
	.word	0x0000001c
	.word	0x00000050
	.word	0x00000012
	.word	0x0000004e
	.word	0x00000020
	.word	0x0000005d
	.word	0x00000059
	.word	0x00000034
	.word	0x0000000b
	.word	0x00000015
	.word	0x00000060
	.word	0x00000032
	.word	0x0000000f
	.word	0x00000030
	.word	0x0000003f
	.word	0x00000057
	.word	0x00000014
	.word	0x00000008
	.word	0x00000055
	.word	0x0000002b
	.word	0x00000010
	.word	0x0000005e
	.word	0x00000058
	.word	0x00000035
	.word	0x00000054
	.word	0x0000004a
	.word	0x0000005b
	.word	0x00000043
	.word	0x00000024
	.word	0x0000005f
	.word	0x0000003d
	.word	0x00000040
	.word	0x00000005
	.word	0x0000001e
	.word	0x00000052
	.word	0x00000048
	.word	0x0000002e
	.word	0x0000003b
	.word	0x00000009
	.word	0x00000007
	.word	0x00000003
	.word	0x00000027
	.word	0x0000001f
	.word	0x00000004
	.word	0x00000049
	.word	0x00000046
	.word	0x0000003c
	.word	0x0000003a
	.word	0x00000051
	.word	0x00000038
	.word	0x00000033
	.word	0x0000002d
	.word	0x00000001
	.word	0x00000006
	.word	0x00000031
	.word	0x0000001b
	.word	0x0000002f
	.word	0x00000022
	.word	0x00000023
	.word	0x0000003e
	.word	0x00000061
	.word	0x00000002
	.word	0x0000004f
	.word	0x00000062
	.word	0x00000019
	.word	0x00000016
	.word	0x00000041
	.word	0x00000047
	.word	0x00000000
array_exp.0:
	.word	0x00000000
	.word	0x00000001
	.word	0x00000002
	.word	0x00000003
	.word	0x00000004
	.word	0x00000005
	.word	0x00000006
	.word	0x00000007
	.word	0x00000008
	.word	0x00000009
	.word	0x0000000a
	.word	0x0000000b
	.word	0x0000000c
	.word	0x0000000d
	.word	0x0000000e
	.word	0x0000000f
	.word	0x00000010
	.word	0x00000011
	.word	0x00000012
	.word	0x00000013
	.word	0x00000014
	.word	0x00000015
	.word	0x00000016
	.word	0x00000017
	.word	0x00000018
	.word	0x00000019
	.word	0x0000001a
	.word	0x0000001b
	.word	0x0000001c
	.word	0x0000001d
	.word	0x0000001e
	.word	0x0000001f
	.word	0x00000020
	.word	0x00000021
	.word	0x00000022
	.word	0x00000023
	.word	0x00000024
	.word	0x00000025
	.word	0x00000026
	.word	0x00000027
	.word	0x00000028
	.word	0x00000029
	.word	0x0000002a
	.word	0x0000002b
	.word	0x0000002c
	.word	0x0000002d
	.word	0x0000002e
	.word	0x0000002f
	.word	0x00000030
	.word	0x00000031
	.word	0x00000032
	.word	0x00000033
	.word	0x00000034
	.word	0x00000035
	.word	0x00000036
	.word	0x00000037
	.word	0x00000038
	.word	0x00000039
	.word	0x0000003a
	.word	0x0000003b
	.word	0x0000003c
	.word	0x0000003d
	.word	0x0000003e
	.word	0x0000003f
	.word	0x00000040
	.word	0x00000041
	.word	0x00000042
	.word	0x00000043
	.word	0x00000044
	.word	0x00000045
	.word	0x00000046
	.word	0x00000047
	.word	0x00000048
	.word	0x00000049
	.word	0x0000004a
	.word	0x0000004b
	.word	0x0000004c
	.word	0x0000004d
	.word	0x0000004e
	.word	0x0000004f
	.word	0x00000050
	.word	0x00000051
	.word	0x00000052
	.word	0x00000053
	.word	0x00000054
	.word	0x00000055
	.word	0x00000056
	.word	0x00000057
	.word	0x00000058
	.word	0x00000059
	.word	0x0000005a
	.word	0x0000005b
	.word	0x0000005c
	.word	0x0000005d
	.word	0x0000005e
	.word	0x0000005f
	.word	0x00000060
	.word	0x00000061
	.word	0x00000062
	.word	0x00000063
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
	.word	0x20000530
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
	.word	0x20000530


	 .section .data.impure_data

impure_data:
	.word	0x00000000
	.word	0x2000081c
	.word	0x20000884
	.word	0x200008ec
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
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
	.word	0x08006191
	.word	0x08005745
	.word	0x00000000
	.word	0x20000424
	.word	0x20000420
	.word	0x2000038c
	.word	0x2000038c
	.word	0x2000038c
	.word	0x2000038c
	.word	0x2000038c
	.word	0x2000038c
	.word	0x2000038c
	.word	0x2000038c
	.word	0x2000038c
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


	 .section .data.__malloc_sbrk_base

__malloc_sbrk_base:
	.word	0xffffffff


	 .section .data.__malloc_trim_threshold

__malloc_trim_threshold:
	.word	0x00020000


	 .section .bss

array2:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
the_list:
	.word	0x00000000
htab:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
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

__StackTop_0x18ec8:
	.word	0x67ffbe14
	.word	0x00000001
