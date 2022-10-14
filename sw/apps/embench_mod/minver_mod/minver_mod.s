	.cpu cortex-m4
	.text
	.thumb
	.syntax unified
	.global main
	.type main, %function

    .global SystemInit
	.type SystemInit, %function

minver.part.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subw	sp, sp, #2036	
	str	r1, [sp, #24]
	subs	r1, r0, #0
	ble	lab0
	add	r3, sp, #32
	str	r3, [sp, #28]
	mov	r2, r3
	mov	r0, r1
	movs	r3, #0
lab1: 	str	r3, [r2], #4
	adds	r3, #1
	cmp	r3, r1
	bne	lab1
	mov	r2, #1065353216	
	movw	r3, #40	
	movt	r3, #8192	
	movs	r5, #0
	str	r2, [sp, #20]
	add	r2, sp, #32
	str	r3, [sp, #4]
	mov	r8, r5
	str	r2, [sp, #12]
	mov	r6, r3
	str	r3, [sp, #8]
	mov	r7, r5
	mov	sl, r5
	mov	r9, r0
	str	r3, [sp, #16]
lab20: 	cmp	r9, r7
	ble	lab2
	ldr	r3, [sp, #4]
	ldr	r5, [r3, #0]
	mov	r1, sl
	mov	r0, r5
	bl	__aeabi_fcmpge
	cmp r0, #0
	bne lab3
	add	r5, r5, #2147483648	
lab3: 	mov	r1, sl
	mov	r0, r5
	bl	__aeabi_fcmpgt
	cmp	r0, #0
	bne	lab4
	mov	fp, sl
lab25: 	adds	r4, r7, #1
	cmp	r9, r4
	ble	lab2
	ldr	r3, [sp, #4]
	ldr	r5, [r3, #12]
	mov	r1, sl
	mov	r0, r5
	bl	__aeabi_fcmpge
	cmp r0, #0
	bne lab5
	add	r5, r5, #2147483648	
lab5: 	mov	r1, r5
	mov	r0, fp
	bl	__aeabi_fcmplt
	cmp	r0, #0
	bne	lab6
	mov	r4, r8
	add	r8, r7, #2
	cmp	r9, r8
	ble	lab7
lab26: 	ldr	r3, [sp, #4]
	ldr	r5, [r3, #24]
	mov	r1, sl
	mov	r0, r5
	bl	__aeabi_fcmpge
	cmp r0, #0
	bne lab8
	add	r5, r5, #2147483648	
lab8: 	mov	r1, fp
	mov	r0, r5
	bl	__aeabi_fcmpgt
	cmp	r0, #0
	it	eq
	moveq	r8, r4
lab2: 	add	r3, r8, r8, lsl #1
	ldr	r2, [sp, #16]
	add	r3, r7
	mov	r1, sl
	ldr	r4, [r2, r3, lsl #2]
	mov	r0, r4
	bl	__aeabi_fcmpge
	mov	fp, r8, lsl #1
	cmp	r0, #0
	beq	lab9
	ldr	r0, [sp, #24]
	mov	r1, r4
	bl	__aeabi_fcmpge
	cmp	r0, #0
	bne	lab10
lab21: 	cmp	r7, r8
	bne	lab11
	ldr	r0, [sp, #20]
	mov	r1, r4
	bl	__aeabi_fmul
	str	r0, [sp, #20]
lab22: 	ldr	r0, [r6, #0]
	mov	r1, r4
	bl	__aeabi_fdiv
	cmp	r9, #1
	mov	fp, r0
	str	r0, [r6, #0]
	beq	lab12
lab24: 	ldr	r0, [r6, #4]
	mov	r1, r4
	bl	__aeabi_fdiv
	cmp	r9, #2
	str	r0, [r6, #4]
	ble	lab12
	ldr	r0, [r6, #8]
	mov	r1, r4
	bl	__aeabi_fdiv
	str	r0, [r6, #8]
lab12: 	cmp	r7, #0
	beq	lab13
	ldr	r3, [sp, #8]
	ldr	r5, [r3, #0]
	mov	r1, sl
	mov	r0, r5
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	lab14
lab31: 	cmp	r9, #1
	beq	lab15
	cmp	r7, #1
	beq	lab16
	ldr	r3, [sp, #8]
	ldr	r5, [r3, #12]
	mov	r1, sl
	mov	r0, r5
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	lab17
lab27: 	cmp	r9, #2
	ble	lab15
	cmp	r7, #2
	beq	lab15
	ldr	r3, [sp, #8]
	ldr	r5, [r3, #24]
	mov	r1, sl
	mov	r0, r5
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	lab18
lab15: 	ldr	r3, [sp, #8]
	adds	r3, #4
	str	r3, [sp, #8]
	ldr	r3, [sp, #12]
	mov	r1, r4
	adds	r3, #4
	mov	r0, #1065353216	
	str	r3, [sp, #12]
	bl	__aeabi_fdiv
	ldr	r3, [sp, #4]
	add	ip, r7, #1
	str	r0, [r3], #16
	cmp	r9, ip
	add	r6, r6, #12
	str	r3, [sp, #4]
	beq	lab19
	mov	r7, ip
	b	lab20
lab9: 	ldr	r0, [sp, #24]
	add	r1, r4, #2147483648	
	bl	__aeabi_fcmpge
	cmp	r0, #0
	beq	lab21
lab10: 	ldr	r4, [sp, #16]
	ldr	r3, [sp, #20]
	str	r3, [r4, #36]	
	movs	r0, #1
	addw	sp, sp, #2036	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab11: 	add	r2, sp, #32
	ldr	r1, [sp, #12]
	ldr	r2, [r2, r8, lsl #2]
	add	r3, r5, #2147483648	
	str	r3, [sp, #20]
	ldr	r3, [r1, #0]
	str	r2, [r1, #0]
	add	r2, sp, #32
	add	fp, r8
	str	r3, [r2, r8, lsl #2]
	ldr	r2, [sp, #16]
	ldr	r5, [r6, #0]
	ldr	r3, [r2, fp, lsl #2]
	str	r3, [r6, #0]
	cmp	r9, #1
	str	r5, [r2, fp, lsl #2]
	add	fp, r2, fp, lsl #2
	beq	lab22
	ldr	r5, [r6, #4]
	ldr	r3, [fp, #4]
	str	r3, [r6, #4]
	cmp	r9, #2
	str	r5, [fp, #4]
	beq	lab23
	ldr	r5, [r6, #8]
	ldr	r3, [fp, #8]
	str	r3, [r6, #8]
	str	r5, [fp, #8]
lab23: 	ldr	r0, [r6, #0]
	mov	r1, r4
	bl	__aeabi_fdiv
	mov	fp, r0
	str	r0, [r6, #0]
	b	lab24
lab4: 	mov	fp, r5
	mov	r8, r7
	b	lab25
lab6: 	add	r8, r7, #2
	cmp	r9, r8
	mov	fp, r5
	bgt	lab26
lab7: 	mov	r8, r4
	b	lab2
lab13: 	cmp	r9, #1
	beq	lab15
	ldr	r3, [sp, #8]
	ldr	r5, [r3, #12]
	mov	r1, sl
	mov	r0, r5
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	bne	lab27
	ldr	r1, [r6, #4]
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	fp, [sp, #16]
	mov	r1, r0
	ldr	r0, [fp, #16]
	bl	__aeabi_fsub
	cmp	r9, #2
	str	r0, [fp, #16]
	ble	lab28
lab33: 	ldr	r1, [r6, #8]
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	fp, [sp, #16]
	mov	r1, r0
	ldr	r0, [fp, #20]
	bl	__aeabi_fsub
	str	r0, [fp, #20]
lab28: 	add	r0, r5, #2147483648	
	mov	r1, r4
	bl	__aeabi_fdiv
	ldr	r3, [sp, #8]
	str	r0, [r3, #12]
	b	lab27
lab14: 	mov	r0, fp
	mov	r1, r5
	bl	__aeabi_fmul
	ldr	fp, [sp, #16]
	mov	r1, r0
	ldr	r0, [fp]
	bl	__aeabi_fsub
	cmp	r9, #1
	str	r0, [fp]
	beq	lab29
	cmp	r7, #1
	beq	lab30
	ldr	r1, [r6, #4]
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [fp, #4]
	bl	__aeabi_fsub
	str	r0, [fp, #4]
lab29: 	add	r0, r5, #2147483648	
	mov	r1, r4
	bl	__aeabi_fdiv
	ldr	r3, [sp, #8]
	str	r0, [r3, #0]
	b	lab31
lab16: 	cmp	r9, #2
	beq	lab15
	ldr	r3, [sp, #8]
	ldr	r5, [r3, #24]
	mov	r1, sl
	mov	r0, r5
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	bne	lab15
lab34: 	ldr	r1, [r6, #0]
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	fp, [sp, #16]
	mov	r1, r0
	ldr	r0, [fp, #24]
	bl	__aeabi_fsub
	cmp	r7, #1
	str	r0, [fp, #24]
	beq	lab32
lab35: 	ldr	r1, [r6, #4]
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	fp, [sp, #16]
	mov	r1, r0
	ldr	r0, [fp, #28]
	bl	__aeabi_fsub
	str	r0, [fp, #28]
lab32: 	ldr	r1, [r6, #8]
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	fp, [sp, #16]
	mov	r1, r0
	ldr	r0, [fp, #32]
	bl	__aeabi_fsub
	mov	r1, r4
	str	r0, [fp, #32]
	add	r0, r5, #2147483648	
	bl	__aeabi_fdiv
	ldr	r3, [sp, #8]
	str	r0, [r3, #24]
	b	lab15
lab17: 	ldr	r1, [r6, #0]
	mov	r0, r5
	bl	__aeabi_fmul
	ldr	fp, [sp, #16]
	mov	r1, r0
	ldr	r0, [fp, #12]
	bl	__aeabi_fsub
	str	r0, [fp, #12]
	ldr	r1, [r6, #4]
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [fp, #16]
	bl	__aeabi_fsub
	cmp	r9, #2
	str	r0, [fp, #16]
	ble	lab28
	cmp	r7, #2
	bne	lab33
	b	lab28
lab18: 	cmp	r7, #0
	bne	lab34
	b	lab35
lab19: 	ldr	r4, [sp, #16]
	ldr	r8, [sp, #28]
	movs	r6, #0
lab40: 	ldr	r1, [r8], #4
lab37: 	cmp	r1, r6
	beq	lab36
lab38: 	add	r2, r1, r1, lsl #1
	lsls	r0, r1, #4
	add	r9, sp, #32
	add	r2, r6
	mov	r3, r1
	ldr	lr, [r4, r0]
	ldr	r5, [r4, r2, lsl #2]
	ldr	r1, [r9, r1, lsl #2]
	str	lr, [r4, r2, lsl #2]
	cmp	ip, #1
	str	r3, [r9, r3, lsl #2]
	str	r5, [r4, r0]
	mov	lr, r9
	str	r1, [r8, #-4]
	add	r3, r4, r3, lsl #4
	beq	lab37
	ldr	lr, [r4, r2, lsl #2]
	str	r5, [r4, r2, lsl #2]
	cmp	ip, #3
	str	lr, [r4, r0]
	bne	lab37
	ldr	r0, [r4, r2, lsl #2]
	str	lr, [r4, r2, lsl #2]
	cmp	r1, r6
	str	r0, [r3, #0]
	bne	lab38
lab36: 	cmp	r7, r6
	add	r3, r6, #1
	beq	lab39
	mov	r6, r3
	b	lab40
lab0: 	movw	r4, #40	
	mov	r3, #1065353216	
	str	r3, [sp, #20]
	movt	r4, #8192	
lab39: 	ldr	r3, [sp, #20]
	str	r3, [r4, #36]	
	movs	r0, #0
	addw	sp, sp, #2036	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab30: 	cmp	r9, #2
	beq	lab29
	ldr	r1, [r6, #8]
	mov	r0, r5
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [fp, #8]
	bl	__aeabi_fsub
	str	r0, [fp, #8]
	b	lab29
minver.part.0.constprop.0.isra.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r2, #40	
	subw	sp, sp, #2044	
	movt	r2, #8192	
	mov	r5, r2
	str	r2, [sp, #8]
	str	r2, [sp, #4]
	mov	r2, #1065353216	
	movs	r3, #2
	str	r2, [sp, #20]
	movw	r2, #14269	
	movs	r6, #0
	movs	r0, #0
	movs	r1, #1
	str	r3, [sp, #48]	
	movt	r2, #13702	
	add	r3, sp, #40	
	strd	r0, r1, [sp, #40]	
	str	r3, [sp, #36]	
	str	r3, [sp, #12]
	str	r2, [sp, #32]
	mov	r4, r5
	mov	fp, r6
	mov	r8, r6
	b	lab41
lab57: 	mov	r7, sl
	mov	fp, r6
lab58: 	adds	r3, r6, #1
	cmp	r6, #2
	str	r3, [sp, #16]
	beq	lab42
	ldr	r3, [sp, #8]
	ldr	sl, [r3, #12]
	mov	r1, r8
	mov	r0, sl
	bl	__aeabi_fcmpge
	cmp r0, #0
	bne lab43
	add	sl, sl, #2147483648	
lab43: 	mov	r1, r7
	mov	r0, sl
	bl	__aeabi_fcmpgt
	cmp r0, #0
	beq lab44
	mov	r7, sl
	add	fp, r6, #1
lab44: 	cmp	r6, #1
	beq	lab42
	ldr	r3, [sp, #8]
	ldr	sl, [r3, #24]
	mov	r1, r8
	mov	r0, sl
	bl	__aeabi_fcmpge
	cmp r0, #0
	bne lab45
	add	sl, sl, #2147483648	
lab45: 	mov	r0, r7
	mov	r1, sl
	bl	__aeabi_fcmplt
	cmp	r0, #0
	it	ne
	movne	fp, #2
lab42: 	add	r3, fp, fp, lsl #1
	add	r3, r6
	mov	r1, r8
	ldr	r7, [r4, r3, lsl #2]
	mov	r0, r7
	bl	__aeabi_fcmpge
	mov	r9, fp, lsl #1
	cmp	r0, #0
	beq	lab46
	ldr	r1, [sp, #32]
	mov	r0, r7
	bl	__aeabi_fcmple
	cmp	r0, #0
	bne	lab47
lab59: 	cmp	fp, r6
	bne	lab48
	ldr	r0, [sp, #20]
	mov	r1, r7
	bl	__aeabi_fmul
	str	r0, [sp, #20]
lab60: 	ldr	r0, [r5, #0]
	mov	r1, r7
	bl	__aeabi_fdiv
	mov	r1, r7
	str	r0, [sp, #28]
	str	r0, [r5, #0]
	ldr	r0, [r5, #4]
	bl	__aeabi_fdiv
	mov	r1, r7
	str	r0, [r5, #4]
	mov	r9, r0
	ldr	r0, [r5, #8]
	bl	__aeabi_fdiv
	ldr	r3, [sp, #4]
	str	r0, [r5, #8]
	str	r0, [sp, #24]
	cmp	r6, #0
	beq	lab49
	ldr	sl, [r3]
	mov	r1, r8
	mov	r0, sl
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	lab50
lab65: 	cmp	r6, #1
	beq	lab51
	ldr	r3, [sp, #4]
	ldr	sl, [r3, #12]
	mov	r1, r8
	mov	r0, sl
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	lab52
lab62: 	cmp	r6, #2
	beq	lab53
lab61: 	ldr	r3, [sp, #4]
	ldr	r9, [r3, #24]
	mov	r1, r8
	mov	r0, r9
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	beq	lab54
lab53: 	ldr	r3, [sp, #4]
	adds	r3, #4
	str	r3, [sp, #4]
	ldr	r3, [sp, #12]
	mov	r1, r7
	adds	r3, #4
	mov	r0, #1065353216	
	str	r3, [sp, #12]
	bl	__aeabi_fdiv
	ldr	r3, [sp, #8]
	str	r0, [r3], #16
	str	r3, [sp, #8]
	ldr	r3, [sp, #16]
	cmp	r3, #3
	add	r5, r5, #12
	beq	lab55
	mov	r6, r3
lab41: 	ldr	r3, [sp, #8]
	ldr	sl, [r3]
	mov	r1, r8
	mov	r0, sl
	bl	__aeabi_fcmpge
	cmp r0, #0
	bne lab56
	add	sl, sl, #2147483648	
lab56: 	mov	r1, r8
	mov	r0, sl
	bl	__aeabi_fcmpgt
	cmp	r0, #0
	bne	lab57
	mov	r7, r8
	b	lab58
lab46: 	ldr	r1, [sp, #32]
	add	r0, r7, #2147483648	
	bl	__aeabi_fcmple
	cmp	r0, #0
	beq	lab59
lab47: 	ldr	r3, [sp, #20]
	str	r3, [r4, #36]	
	addw	sp, sp, #2044	
	nop
	push {r1, r2}
	ldr r1, =2315
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab48: 	add	r9, fp
	add	r3, sl, #2147483648	
	ldr	r2, [r4, r9, lsl #2]
	str	r3, [sp, #20]
	ldr	r3, [r5, #0]
	str	r2, [r5, #0]
	str	r3, [r4, r9, lsl #2]
	add	r9, r4, r9, lsl #2
	ldr	r3, [r5, #4]
	ldr	r2, [r9, #4]
	str	r2, [r5, #4]
	add	r2, sp, #40	
	ldr	r1, [sp, #12]
	ldr	r2, [r2, fp, lsl #2]
	str	r3, [r9, #4]
	ldr	r3, [r1, #0]
	str	r2, [r1, #0]
	add	r2, sp, #40	
	str	r3, [r2, fp, lsl #2]
	ldr	r3, [r5, #8]
	ldr	r2, [r9, #8]
	str	r2, [r5, #8]
	str	r3, [r9, #8]
	b	lab60
lab49: 	ldr	sl, [r3, #12]
	mov	r1, r8
	mov	r0, sl
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	bne	lab61
	mov	r1, r9
	mov	r0, sl
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r4, #16]
	bl	__aeabi_fsub
	str	r0, [r4, #16]
	ldr	r1, [r5, #8]
	mov	r0, sl
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r4, #20]
	bl	__aeabi_fsub
	str	r0, [r4, #20]
lab66: 	add	r0, sl, #2147483648	
	mov	r1, r7
	bl	__aeabi_fdiv
	ldr	r3, [sp, #4]
	str	r0, [r3, #12]
	b	lab62
lab51: 	ldr	r3, [sp, #4]
	ldr	r9, [r3, #24]
	mov	r1, r8
	mov	r0, r9
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	bne	lab53
lab68: 	ldr	r1, [r4, #12]
	mov	r0, r9
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r4, #24]
	bl	__aeabi_fsub
	cmp	r6, #1
	str	r0, [r4, #24]
	beq	lab63
lab69: 	ldr	r1, [r4, #4]
	mov	r0, r9
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r4, #28]
	bl	__aeabi_fsub
	str	r0, [r4, #28]
lab63: 	ldr	r1, [r5, #8]
	mov	r0, r9
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r4, #32]
	bl	__aeabi_fsub
	mov	r1, r7
	str	r0, [r4, #32]
	add	r0, r9, #2147483648	
	bl	__aeabi_fdiv
	ldr	r3, [sp, #4]
	str	r0, [r3, #24]
	b	lab53
lab50: 	mov	r1, sl
	ldr	r0, [sp, #28]
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r4, #0]
	bl	__aeabi_fsub
	cmp	r6, #1
	ldr	r3, [sp, #24]
	str	r0, [r4, #0]
	beq	lab64
	mov	r1, sl
	mov	r0, r9
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r4, #4]
	bl	__aeabi_fsub
	str	r0, [r4, #4]
lab67: 	add	r0, sl, #2147483648	
	mov	r1, r7
	bl	__aeabi_fdiv
	ldr	r3, [sp, #4]
	str	r0, [r3, #0]
	b	lab65
lab52: 	ldr	r1, [r5, #0]
	mov	r0, sl
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r4, #12]
	bl	__aeabi_fsub
	str	r0, [r4, #12]
	ldr	r1, [r5, #4]
	mov	r0, sl
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r4, #16]
	bl	__aeabi_fsub
	str	r0, [r4, #16]
	b	lab66
lab64: 	mov	r0, r3
	mov	r1, sl
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r4, #8]
	bl	__aeabi_fsub
	str	r0, [r4, #8]
	b	lab67
lab54: 	cmp	r6, #0
	bne	lab68
	b	lab69
lab55: 	ldr	ip, [sp, #36]	
	movs	r7, #0
lab72: 	ldr	r1, [ip], #4
	cmp	r1, r7
	beq	lab70
lab71: 	add	r3, r1, r1, lsl #1
	add	r3, r7
	lsls	r0, r1, #4
	ldr	r6, [r4, r3, lsl #2]
	ldr	r5, [r4, r0]
	str	r5, [r4, r3, lsl #2]
	str	r6, [r4, r0]
	add	r5, sp, #40	
	mov	r2, r1
	ldr	r1, [r5, r1, lsl #2]
	ldr	r5, [r4, r3, lsl #2]
	str	r6, [r4, r3, lsl #2]
	str	r5, [r4, r0]
	add	r6, sp, #40	
	cmp	r1, r7
	str	r2, [r6, r2, lsl #2]
	ldr	r2, [r4, r3, lsl #2]
	str	r1, [ip, #-4]
	str	r5, [r4, r3, lsl #2]
	str	r2, [r4, r0]
	bne	lab71
lab70: 	adds	r7, #1
	cmp	r7, #3
	bne	lab72
	ldr	r3, [sp, #20]
	str	r3, [r4, #36]	
	addw	sp, sp, #2044	
	nop
	push {r1, r2}
	ldr r1, =7009
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	nop
benchmark_body.isra.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, #36	
	subs	r3, r0, #0
	str	r3, [sp, #8]
	ble	lab73
	mov	fp, #0
	mov	r2, fp
	mov	r3, fp
	movt	r2, #16848	
	str	r2, [sp, #12]
	mov	r2, r3
	movt	r2, #49520	
	str	r2, [sp, #16]
	mov	r2, r3
	movt	r2, #49440	
	str	r2, [sp, #20]
	mov	r2, r3
	movt	r2, #16900	
	movt	r3, #49692	
	mov	r8, fp
	str	r2, [sp, #24]
	movt	fp, #49624	
	str	r3, [sp, #28]
lab74: 	movw	r4, #0
	movt	r4, #8192	
	ldmia	r4!, {r0, r1, r2, r3}
	movw	r5, #40	
	movt	r5, #8192	
	mov	r6, r5
	stmia	r6!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r6!, {r0, r1, r2, r3}
	ldr	r9, [r4], #-32
	str	r9, [r6]
push {r1, r2}
	ldr r1, =7255
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	minver.part.0.constprop.0.isra.0
	push {r1, r2}
	ldr r1, =7255
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, #3238002688	
	mov	lr, r5
	str	r3, [sp, #4]
	ldmia	lr!, {r0, r1, r2, r3}
	add	r7, r5, #40	
	stmia	r7!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r7!, {r0, r1, r2, r3}
	ldr	r3, [r6, #0]
	str	r3, [r7, #0]
	ldmia	r4!, {r0, r1, r2, r3}
	mov	ip, r5
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [sp, #12]
	str	r3, [r5, #80]	
	ldr	r3, [sp, #16]
	str	r3, [r5, #84]	
	ldr	r3, [sp, #20]
	str	r3, [r5, #92]	
	ldr	r3, [sp, #24]
	str	r3, [r5, #96]	
	ldr	r3, [sp, #28]
	str	r3, [r5, #100]	
	ldr	r3, [sp, #4]
	str	r3, [r5, #108]	
	ldr	r3, [sp, #8]
	str	r9, [r6]
	add	r8, r8, #1
	mov	sl, #0
	movt	sl, #16864	
	cmp	r8, r3
	str	fp, [r5, #76]	
	str	fp, [r5, #88]	
	str	sl, [r5, #104]	
	bne	lab74
lab73: 	add	sp, #36	
	nop
	push {r1, r2}
	ldr r1, =7441
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	nop
benchmark_body.constprop.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	fp, #0
	sub	sp, #28
	mov	r2, fp
	mov	r3, fp
	movt	r2, #16848	
	str	r2, [sp, #4]
	mov	r2, r3
	movt	r2, #49520	
	str	r2, [sp, #8]
	mov	r2, r3
	movt	r2, #49440	
	str	r2, [sp, #12]
	mov	r2, r3
	movw	r8, #27704	
	movt	r2, #16900	
	movt	r3, #49692	
	movt	r8, #1
	movt	fp, #49624	
	str	r2, [sp, #16]
	str	r3, [sp, #20]
lab75: 	movw	r4, #0
	movt	r4, #8192	
	ldmia	r4!, {r0, r1, r2, r3}
	movw	r5, #40	
	movt	r5, #8192	
	mov	r6, r5
	stmia	r6!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r6!, {r0, r1, r2, r3}
	ldr	r9, [r4], #-32
	str	r9, [r6]
push {r1, r2}
	ldr r1, =707
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	minver.part.0.constprop.0.isra.0
	push {r1, r2}
	ldr r1, =707
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, #3238002688	
	mov	lr, r5
	str	r3, [sp, #0]
	ldmia	lr!, {r0, r1, r2, r3}
	add	r7, r5, #40	
	stmia	r7!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r7!, {r0, r1, r2, r3}
	ldr	r3, [r6, #0]
	str	r3, [r7, #0]
	ldmia	r4!, {r0, r1, r2, r3}
	mov	ip, r5
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [sp, #4]
	str	r3, [r5, #80]	
	ldr	r3, [sp, #8]
	str	r3, [r5, #84]	
	ldr	r3, [sp, #12]
	str	r3, [r5, #92]	
	ldr	r3, [sp, #16]
	str	r3, [r5, #96]	
	mov	sl, #0
	ldr	r3, [sp, #20]
	str	r3, [r5, #100]	
	movt	sl, #16864	
	ldr	r3, [sp, #0]
	str	r9, [r6]
	subs	r8, r8, #1
	str	fp, [r5, #76]	
	str	fp, [r5, #88]	
	str	sl, [r5, #104]	
	str	r3, [r5, #108]	
	bne	lab75
	mov	r0, r8
	add	sp, #28
	nop
	push {r1, r2}
	ldr r1, =2376
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
mmul:
	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	subs	r7, r0, #0
	ble	lab76
	cmp	r2, #0
	mov	r4, r2
	ble	lab76
	cmp	r3, #0
	mov	r6, r3
	ble	lab76
	cmp	r2, r1
	bne	lab76
	movw	r5, #40	
	movt	r5, #8192	
	movs	r1, #0
	ldr	r9, [r5]
	movt	r1, #49216	
	mov	r0, r9
	bl	__aeabi_fmul
	movs	r1, #0
	bl	__addsf3
	cmp	r4, #1
	mov	r8, r0
	ble	lab77
	movs	r1, #0
	movt	r1, #16448	
	ldr	r0, [r5, #4]
	bl	__aeabi_fmul
	mov	r1, r8
	bl	__addsf3
	cmp	r4, #2
	mov	r8, r0
	beq	lab78
	movs	r1, #0
	ldr	r0, [r5, #8]
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r8
	bl	__addsf3
	mov	r8, r0
lab78: 	cmp	r6, #1
	str	r8, [r5, #76]	
	beq	lab79
	movs	r1, #0
	mov	r0, r9
	bl	__aeabi_fmul
	movs	r1, #0
	bl	__addsf3
	mov	r1, #3221225472	
	mov	r8, r0
	ldr	r0, [r5, #4]
	bl	__aeabi_fmul
	mov	r1, r8
	bl	__addsf3
	cmp	r4, #2
	mov	r8, r0
	ble	lab80
	ldr	r1, [r5, #8]
	mov	r0, r1
	bl	__addsf3
	mov	r1, r0
	mov	r0, r8
	bl	__addsf3
	mov	r8, r0
lab80: 	cmp	r6, #2
	str	r8, [r5, #80]	
	ble	lab79
	mov	r1, r9
	mov	r0, r9
	bl	__addsf3
	movs	r1, #0
	bl	__addsf3
	movs	r1, #0
	mov	r8, r0
	ldr	r0, [r5, #4]
	bl	__aeabi_fmul
	mov	r1, r8
	bl	__addsf3
	cmp	r4, #2
	mov	r8, r0
	ble	lab81
	movs	r1, #0
	movt	r1, #49216	
	ldr	r0, [r5, #8]
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r8
	bl	__addsf3
	mov	r8, r0
lab81: 	str	r8, [r5, #84]	
lab79: 	cmp	r7, #1
	beq	lab82
	ldr	r9, [r5, #12]
	movs	r1, #0
	movt	r1, #49216	
	mov	r0, r9
	bl	__aeabi_fmul
	movs	r1, #0
	bl	__addsf3
	cmp	r4, #1
	mov	r8, r0
	ble	lab83
	movs	r1, #0
	movt	r1, #16448	
	ldr	r0, [r5, #16]
	bl	__aeabi_fmul
	mov	r1, r8
	bl	__addsf3
	cmp	r4, #2
	mov	r8, r0
	beq	lab84
	movs	r1, #0
	ldr	r0, [r5, #20]
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r8
	bl	__addsf3
	mov	r8, r0
lab84: 	cmp	r6, #1
	str	r8, [r5, #88]	
	beq	lab85
	movs	r1, #0
	mov	r0, r9
	bl	__aeabi_fmul
	movs	r1, #0
	bl	__addsf3
	mov	r1, #3221225472	
	mov	r8, r0
	ldr	r0, [r5, #16]
	bl	__aeabi_fmul
	mov	r1, r8
	bl	__addsf3
	cmp	r4, #2
	mov	r8, r0
	ble	lab86
	ldr	r1, [r5, #20]
	mov	r0, r1
	bl	__addsf3
	mov	r1, r0
	mov	r0, r8
	bl	__addsf3
	mov	r8, r0
lab86: 	cmp	r6, #2
	str	r8, [r5, #92]	
	ble	lab85
	mov	r1, r9
	mov	r0, r9
	bl	__addsf3
	movs	r1, #0
	bl	__addsf3
	movs	r1, #0
	mov	r8, r0
	ldr	r0, [r5, #16]
	bl	__aeabi_fmul
	mov	r1, r8
	bl	__addsf3
	cmp	r4, #2
	mov	r8, r0
	ble	lab87
	movs	r1, #0
	movt	r1, #49216	
	ldr	r0, [r5, #20]
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r8
	bl	__addsf3
	mov	r8, r0
lab87: 	str	r8, [r5, #96]	
lab85: 	cmp	r7, #2
	beq	lab82
	ldr	r8, [r5, #24]
	movs	r1, #0
	movt	r1, #49216	
	mov	r0, r8
	bl	__aeabi_fmul
	movs	r1, #0
	bl	__addsf3
	cmp	r4, #1
	mov	r7, r0
	ble	lab88
	movs	r1, #0
	movt	r1, #16448	
	ldr	r0, [r5, #28]
	bl	__aeabi_fmul
	mov	r1, r7
	bl	__addsf3
	cmp	r4, #2
	mov	r7, r0
	beq	lab89
	movs	r1, #0
	ldr	r0, [r5, #32]
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r7
	bl	__addsf3
	mov	r7, r0
lab89: 	cmp	r6, #1
	str	r7, [r5, #100]	
	beq	lab82
	movs	r1, #0
	mov	r0, r8
	bl	__aeabi_fmul
	movs	r1, #0
	bl	__addsf3
	mov	r1, #3221225472	
	mov	r7, r0
	ldr	r0, [r5, #28]
	bl	__aeabi_fmul
	mov	r1, r7
	bl	__addsf3
	cmp	r4, #2
	mov	r7, r0
	ble	lab90
	ldr	r1, [r5, #32]
	mov	r0, r1
	bl	__addsf3
	mov	r1, r0
	mov	r0, r7
	bl	__addsf3
	mov	r7, r0
lab90: 	cmp	r6, #2
	str	r7, [r5, #104]	
	ble	lab82
	mov	r1, r8
	mov	r0, r8
	bl	__addsf3
	movs	r1, #0
	bl	__addsf3
	movs	r1, #0
	mov	r6, r0
	ldr	r0, [r5, #28]
	bl	__aeabi_fmul
	mov	r1, r6
	bl	__addsf3
	cmp	r4, #2
	mov	r6, r0
	ble	lab91
	movs	r1, #0
	movt	r1, #49216	
	ldr	r0, [r5, #32]
	bl	__aeabi_fmul
	mov	r1, r0
	mov	r0, r6
	bl	__addsf3
	mov	r6, r0
lab91: 	str	r6, [r5, #108]	
lab82: 	movs	r0, #0
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
lab76: 	movw	r0, #999	
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
lab83: 	cmp	r6, #1
	str	r0, [r5, #88]	
	beq	lab85
	movs	r1, #0
	mov	r0, r9
	bl	__aeabi_fmul
	movs	r1, #0
	bl	__addsf3
	cmp	r6, #2
	str	r0, [r5, #92]	
	beq	lab85
	mov	r1, r9
	mov	r0, r9
	bl	__addsf3
	movs	r1, #0
	bl	__addsf3
	mov	r8, r0
	b	lab87
lab77: 	cmp	r6, #1
	str	r0, [r5, #76]	
	beq	lab79
	movs	r1, #0
	mov	r0, r9
	bl	__aeabi_fmul
	movs	r1, #0
	bl	__addsf3
	cmp	r6, #2
	str	r0, [r5, #80]	
	beq	lab79
	mov	r1, r9
	mov	r0, r9
	bl	__addsf3
	movs	r1, #0
	bl	__addsf3
	mov	r8, r0
	b	lab81
lab88: 	cmp	r6, #1
	str	r0, [r5, #100]	
	beq	lab82
	movs	r1, #0
	mov	r0, r8
	bl	__aeabi_fmul
	movs	r1, #0
	bl	__addsf3
	cmp	r6, #2
	str	r0, [r5, #104]	
	beq	lab82
	mov	r1, r8
	mov	r0, r8
	bl	__addsf3
	movs	r1, #0
	bl	__addsf3
	mov	r6, r0
	b	lab91
minver:
	push	{r3, r4, r5, lr}
	subs	r3, r0, #2
	cmp	r3, #498	
	bhi	lab92
	mov	r4, r0
	movs	r1, #0
	mov	r0, r2
	mov	r5, r2
	bl	__aeabi_fcmple
	cmp r0, #0
	bne lab92
	mov	r1, r5
	mov	r0, r4
	ldmia	sp!, {r3, r4, r5, lr}
	b	minver.part.0
lab92: 	movw	r0, #999	
	pop	{r3, r4, r5, pc}
	nop
verify_benchmark:
	push	{r4, lr}
	movw	r4, #40	
	movt	r4, #8192	
	movs	r1, #0
	movt	r1, #16856	
	ldr	r0, [r4, #76]	
	bl	__addsf3
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	movw	r1, #34952	
	movt	r1, #15880	
	ldr	r0, [r4, #40]	
	bl	__aeabi_fsub
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	movs	r1, #0
	movt	r1, #16848	
	ldr	r0, [r4, #80]	
	bl	__aeabi_fsub
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	movw	r1, #52426	
	movt	r1, #15948	
	ldr	r0, [r4, #44]	
	bl	__addsf3
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	movs	r1, #0
	movt	r1, #16752	
	ldr	r0, [r4, #84]	
	bl	__addsf3
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	movw	r1, #34950	
	movt	r1, #16008	
	ldr	r0, [r4, #48]	
	bl	__aeabi_fsub
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	movs	r1, #0
	movt	r1, #16856	
	ldr	r0, [r4, #88]	
	bl	__addsf3
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	movw	r1, #7862	
	movt	r1, #16133	
	ldr	r0, [r4, #52]	
	bl	__addsf3
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	movs	r1, #0
	movt	r1, #16672	
	ldr	r0, [r4, #92]	
	bl	__addsf3
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	movw	r1, #6990	
	movt	r1, #15848	
	ldr	r0, [r4, #56]	
	bl	__aeabi_fsub
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab94
	movs	r1, #0
	movt	r1, #16900	
	ldr	r0, [r4, #96]	
	bl	__aeabi_fsub
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	movw	r1, #54174	
	movt	r1, #16134	
	ldr	r0, [r4, #60]	
	bl	__aeabi_fsub
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	movs	r1, #0
	movt	r1, #16924	
	ldr	r0, [r4, #100]	
	bl	__addsf3
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	movw	r1, #49802	
	movt	r1, #16117	
	ldr	r0, [r4, #64]	
	bl	__aeabi_fsub
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	movs	r1, #0
	movt	r1, #16864	
	ldr	r0, [r4, #104]	
	bl	__aeabi_fsub
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	movw	r1, #20968	
	movt	r1, #16056	
	ldr	r0, [r4, #68]	
	bl	__addsf3
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab93
	mov	r1, #1090519040	
	ldr	r0, [r4, #108]	
	bl	__addsf3
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp r0, #0
	beq lab93
	movw	r1, #55048	
	movt	r1, #15651	
	ldr	r0, [r4, #72]	
	bl	__aeabi_fsub
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	cmp r0, #0
	beq lab93
	ldr	r0, [r4, #36]	
	bl	__aeabi_f2d
	movw	r2, #10843	
	movw	r3, #43691	
	movt	r2, #202	
	movt	r3, #16432	
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2309
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	__aeabi_d2f
	bic	r0, r0, #2147483648	
	bl	__aeabi_f2d
	movw	r2, #26865	
	movw	r3, #63669	
	movt	r2, #35043	
	movt	r3, #16100	
	bl	__aeabi_dcmplt
	subs	r0, #0
	it	ne
	movne	r0, #1
lab93:	nop
	push {r1, r2}
	ldr r1, =308
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, pc}
lab94: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =198
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
lab95: 	ldr	r2, [r3, #0]
	lsls	r0, r2, #14
	bpl	lab95
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
lab96: 	ldr	r3, [r2, #0]
	lsls	r1, r3, #6
	bpl	lab96
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
lab97: 	ldr	r3, [r1, #8]
	lsls	r3, r3, #28
	bpl	lab97
	movw	r3, #36	
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
	ldr r1, =6143
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	start_trigger
	bl	benchmark
	push {r1, r2}
	ldr r1, =402
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r0, [sp, #4]
	bl	stop_trigger
	ldr	r0, [sp, #4]
	bl	verify_benchmark
	push {r1, r2}
	ldr r1, =3535
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
	mov	ip, #255	
	ands	r2, ip, r0, lsr #23
	ittt	ne
	andsne	r3, ip, r1, lsr #23
	teqne	r2, ip
	teqne	r3, ip
	beq	lab98
lab104: 	add	r2, r3
	eor	ip, r0, r1
	lsls	r0, r0, #9
	it	ne
	movsne	r1, r1, lsl #9
	beq	lab99
	mov	r3, #134217728	
	orr	r0, r3, r0, lsr #5
	orr	r1, r3, r1, lsr #5
	umull	r3, r1, r0, r1
	and	r0, ip, #2147483648	
	cmp	r1, #8388608	
	ittt	cc
	lslcc	r1, r1, #1
	orrcc	r1, r1, r3, lsr #31
	lslcc	r3, r3, #1
	orr	r0, r0, r1
	sbc	r2, r2, #127	
	cmp	r2, #253	
	bhi	lab100
	cmp	r3, #2147483648	
	adc	r0, r0, r2, lsl #23
	it	eq
	biceq	r0, r0, #1
	bx	lr
lab99: 	teq	r0, #0
	and	ip, ip, #2147483648	
	it	eq
	lsleq	r1, r1, #9
	orr	r0, ip, r0, lsr #9
	orr	r0, r0, r1, lsr #9
	subs	r2, #127	
	ittt	gt
	rsbsgt	r3, r2, #255	
	orrgt	r0, r0, r2, lsl #23
	bxgt	lr
	orr	r0, r0, #8388608	
	mov	r3, #0
	subs	r2, #1
lab100: 	bgt	lab101
	cmn	r2, #25
	itt	le
	andle	r0, r0, #2147483648	
	bxle	lr
	rsb	r2, r2, #0
	lsls	r1, r0, #1
	lsr	r1, r1, r2
	rsb	r2, r2, #32
	lsl	ip, r0, r2
	movs	r0, r1, rrx
	adc	r0, r0, #0
	orrs	r3, r3, ip, lsl #1
	it	eq
	biceq	r0, r0, ip, lsr #31
	bx	lr
lab106: 	teq	r2, #0
	and	ip, r0, #2147483648	
lab102: 	ittt	eq
	lsleq	r0, r0, #1
	tsteq	r0, #8388608	
	subeq	r2, #1
	beq	lab102
	orr	r0, r0, ip
	teq	r3, #0
	and	ip, r1, #2147483648	
lab103: 	ittt	eq
	lsleq	r1, r1, #1
	tsteq	r1, #8388608	
	subeq	r3, #1
	beq	lab103
	orr	r1, r1, ip
	b	lab104
lab98: 	and	r3, ip, r1, lsr #23
	teq	r2, ip
	it	ne
	teqne	r3, ip
	beq	lab105
	bics	ip, r0, #2147483648	
	it	ne
	bicsne	ip, r1, #2147483648	
	bne	lab106
	eor	r0, r0, r1
	and	r0, r0, #2147483648	
	bx	lr
lab105: 	teq	r0, #0
	itett	ne
	teqne	r0, #2147483648	
	moveq	r0, r1
	teqne	r1, #0
	teqne	r1, #2147483648	
	beq	lab107
	teq	r2, ip
	bne	lab108
	lsls	r2, r0, #9
	bne	lab107
lab108: 	teq	r3, ip
	bne	lab109
	lsls	r3, r1, #9
	it	ne
	movne	r0, r1
	bne	lab107
lab109: 	eor	r0, r0, r1
lab101: 	and	r0, r0, #2147483648	
	orr	r0, r0, #2130706432	
	orr	r0, r0, #8388608	
	bx	lr
lab107: 	orr	r0, r0, #2130706432	
	orr	r0, r0, #12582912	
	bx	lr
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
	beq	lab110
	mov	r4, r4, lsr #21
	rsbs	r5, r4, r5, lsr #21
	it	lt
	neglt	r5, r5
	ble	lab111
	add	r4, r5
	eor	r2, r0, r2
	eor	r3, r1, r3
	eor	r0, r2, r0
	eor	r1, r3, r1
	eor	r2, r0, r2
	eor	r3, r1, r3
lab111: 	cmp	r5, #54	
	it	hi
	nop
	push {r1, r2}
	ldr r1, =1148
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pophi	{r4, r5, pc}
	tst	r1, #2147483648	
	mov	r1, r1, lsl #12
	mov	ip, #1048576	
	orr	r1, ip, r1, lsr #12
	beq	lab112
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
lab112: 	tst	r3, #2147483648	
	mov	r3, r3, lsl #12
	orr	r3, ip, r3, lsr #12
	beq	lab113
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
lab113: 	teq	r4, r5
	beq	lab114
lab126: 	sub	r4, r4, #1
	rsbs	lr, r5, #32
	blt	lab115
	lsl	ip, r2, lr
	lsr	r2, r2, r5
	adds	r0, r0, r2
	adc	r1, r1, #0
	lsl	r2, r3, lr
	adds	r0, r0, r2
	asr	r3, r3, r5
	adcs	r1, r3
	b	lab116
lab115: 	sub	r5, r5, #32
	add	lr, lr, #32
	cmp	r2, #1
	lsl	ip, r3, lr
	it	cs
	orrcs	ip, ip, #2
	asr	r3, r3, r5
	adds	r0, r0, r3
	adcs	r1, r1, r3, asr #31
lab116: 	and	r5, r1, #2147483648	
	bpl	lab117
	mov	lr, #0
	rsbs	ip, ip, #0
	sbcs	r0, lr, r0
	sbc	r1, lr, r1
lab117: 	cmp	r1, #1048576	
	bcc	lab118
	cmp	r1, #2097152	
	bcc	lab119
	lsrs	r1, r1, #1
	movs	r0, r0, rrx
	mov	ip, ip, rrx
	add	r4, r4, #1
	mov	r2, r4, lsl #21
	cmn	r2, #4194304	
	bcs	lab120
lab119: 	cmp	ip, #2147483648	
	it	eq
	movseq	ip, r0, lsr #1
	adcs	r0, r0, #0
	adc	r1, r1, r4, lsl #20
	orr	r1, r1, r5
	nop
	push {r1, r2}
	ldr r1, =2899
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab118: 	movs	ip, ip, lsl #1
	adcs	r0, r0
	adc	r1, r1, r1
	subs	r4, #1
	it	cs
	cmpcs	r1, #1048576	
	bcs	lab119
lab130: 	teq	r1, #0
	itt	eq
	moveq	r1, r0
	moveq	r0, #0
	clz	r3, r1
	it	eq
	addeq	r3, #32
	sub	r3, r3, #11
	subs	r2, r3, #32
	bge	lab121
	adds	r2, #12
	ble	lab122
	add	ip, r2, #20
	rsb	r2, r2, #12
	lsl	r0, r1, ip
	lsr	r1, r1, r2
	b	lab123
lab122: 	add	r2, r2, #20
lab121: 	it	le
	rsble	ip, r2, #32
	lsl	r1, r1, r2
	lsr	ip, r0, ip
	itt	le
	orrle	r1, r1, ip
	lslle	r0, r2
lab123: 	subs	r4, r4, r3
	ittt	ge
	addge	r1, r1, r4, lsl #20
	orrge	r1, r5
	nop
	push {r1, r2}
	ldr r1, =1021
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popge	{r4, r5, pc}
	mvn	r4, r4
	subs	r4, #31
	bge	lab124
	adds	r4, #12
	bgt	lab125
	add	r4, r4, #20
	rsb	r2, r4, #32
	lsr	r0, r0, r4
	lsl	r3, r1, r2
	orr	r0, r0, r3
	lsr	r3, r1, r4
	orr	r1, r5, r3
	pop	{r4, r5, pc}
lab125: 	rsb	r4, r4, #12
	rsb	r2, r4, #32
	lsr	r0, r0, r2
	lsl	r3, r1, r4
	orr	r0, r0, r3
	mov	r1, r5
	pop	{r4, r5, pc}
lab124: 	lsr	r0, r1, r4
	mov	r1, r5
	pop	{r4, r5, pc}
lab114: 	teq	r4, #0
	eor	r3, r3, #1048576	
	itte	eq
	eoreq	r1, r1, #1048576	
	addeq	r4, #1
	subne	r5, #1
	b	lab126
lab110: 	mvns	ip, r4, asr #21
	it	ne
	mvnsne	ip, r5, asr #21
	beq	lab127
	teq	r4, r5
	it	eq
	teqeq	r0, r2
	beq	lab128
	orrs	ip, r4, r0
	itt	eq
	moveq	r1, r3
	moveq	r0, r2
	nop
	push {r1, r2}
	ldr r1, =7685
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab128: 	teq	r1, r3
	ittt	ne
	movne	r1, #0
	movne	r0, #0
	nop
	push {r1, r2}
	ldr r1, =2803
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popne	{r4, r5, pc}
	movs	ip, r4, lsr #21
	bne	lab129
	lsls	r0, r0, #1
	adcs	r1, r1
	it	cs
	orrcs	r1, r1, #2147483648	
	nop
	push {r1, r2}
	ldr r1, =1026
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab129: 	adds	r4, r4, #4194304	
	itt	cc
	addcc	r1, r1, #1048576	
	nop
	push {r1, r2}
	ldr r1, =3343
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popcc	{r4, r5, pc}
	and	r5, r1, #2147483648	
lab120: 	orr	r1, r5, #2130706432	
	orr	r1, r1, #15728640	
	mov	r0, #0
	nop
	push {r1, r2}
	ldr r1, =6108
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab127: 	mvns	ip, r4, asr #21
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
	ldr r1, =751
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
	b	lab130
	nop
__aeabi_i2d:
	teq	r0, #0
	itt	eq
	moveq	r1, #0
	bxeq	lr
	push	{r4, r5, lr}
	mov	r4, #1024	
	add	r4, r4, #50	
	ands	r5, r0, #2147483648	
	it	mi
	negmi	r0, r0
	mov	r1, #0
	b	lab130
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
	b	lab130
	nop
__aeabi_ul2d:
	orrs	r2, r0, r1
	it	eq
	bxeq	lr
	push	{r4, r5, lr}
	mov	r5, #0
	b	lab131
__aeabi_l2d:
	orrs	r2, r0, r1
	it	eq
	bxeq	lr
	push	{r4, r5, lr}
	ands	r5, r1, #2147483648	
	bpl	lab131
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
lab131: 	mov	r4, #1024	
	add	r4, r4, #50	
	movs	ip, r1, lsr #22
	beq	lab117
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
	b	lab117
	nop
__gedf2:
	mov	ip, #4294967295	
	b	lab132
	nop
__ledf2:
	mov	ip, #1
	b	lab132
	nop
__cmpdf2:
	mov	ip, #1
lab132: 	str	ip, [sp, #-4]!
	mov	ip, r1, lsl #1
	mvns	ip, ip, asr #21
	mov	ip, r3, lsl #1
	it	ne
	mvnsne	ip, ip, asr #21
	beq	lab133
lab136: 	add	sp, #4
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
lab133: 	mov	ip, r1, lsl #1
	mvns	ip, ip, asr #21
	bne	lab134
	orrs	ip, r0, r1, lsl #12
	bne	lab135
lab134: 	mov	ip, r3, lsl #1
	mvns	ip, ip, asr #21
	bne	lab136
	orrs	ip, r2, r3, lsl #12
	beq	lab136
lab135: 	ldr	r0, [sp], #4
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
	ldr r1, =5243
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r0, pc}
__aeabi_dcmpeq:
	str	lr, [sp, #-8]!
push {r1, r2}
	ldr r1, =681
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdcmpeq
	push {r1, r2}
	ldr r1, =681
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
	ldr r1, =6866
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdcmpeq
	push {r1, r2}
	ldr r1, =6866
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
	ldr r1, =3475
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdcmpeq
	push {r1, r2}
	ldr r1, =3475
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
	ldr r1, =4261
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdrcmple
	push {r1, r2}
	ldr r1, =4261
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
	ldr r1, =6569
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdrcmple
	push {r1, r2}
	ldr r1, =6569
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ite	cc
	movcc	r0, #1
	movcs	r0, #0
	ldr	pc, [sp], #8
	nop
__aeabi_d2f:
	mov	r2, r1, lsl #1
	subs	r3, r2, #1879048192	
	itt	cs
	subscs	ip, r3, #2097152	
	rsbscs	ip, ip, #532676608	
	bls	lab137
lab139: 	and	ip, r1, #2147483648	
	mov	r2, r0, lsl #3
	orr	r0, ip, r0, lsr #29
	cmp	r2, #2147483648	
	adc	r0, r0, r3, lsl #2
	it	eq
	biceq	r0, r0, #1
	bx	lr
lab137: 	tst	r1, #1073741824	
	bne	lab138
	adds	r2, r3, #48234496	
	itt	lt
	andlt	r0, r1, #2147483648	
	bxlt	lr
	orr	r1, r1, #1048576	
	mov	r2, r2, lsr #21
	rsb	r2, r2, #24
	rsb	ip, r2, #32
	lsls	r3, r0, ip
	lsr	r0, r0, r2
	it	ne
	orrne	r0, r0, #1
	mov	r3, r1, lsl #11
	mov	r3, r3, lsr #11
	lsl	ip, r3, ip
	orr	r0, r0, ip
	lsr	r3, r3, r2
	mov	r3, r3, lsl #1
	b	lab139
lab138: 	mvns	r3, r2, asr #21
	bne	lab140
	orrs	r3, r0, r1, lsl #12
	ittt	ne
	movne	r0, #2130706432	
	orrne	r0, r0, #12582912	
	bxne	lr
lab140: 	and	r0, r1, #2147483648	
	orr	r0, r0, #2130706432	
	orr	r0, r0, #8388608	
	bx	lr
	nop
__aeabi_frsub:
	eor	r0, r0, #2147483648	
	b	__addsf3
	nop
__aeabi_fsub:
	eor	r1, r1, #2147483648	
__addsf3:
	lsls	r2, r0, #1
	itttt	ne
	movsne	r3, r1, lsl #1
	teqne	r2, r3
	mvnsne	ip, r2, asr #24
	mvnsne	ip, r3, asr #24
	beq	lab141
	mov	r2, r2, lsr #24
	rsbs	r3, r2, r3, lsr #24
	itttt	gt
	addgt	r2, r2, r3
	eorgt	r1, r0
	eorgt	r0, r1
	eorgt	r1, r0
	it	lt
	neglt	r3, r3
	cmp	r3, #25
	it	hi
	bxhi	lr
	tst	r0, #2147483648	
	orr	r0, r0, #8388608	
	bic	r0, r0, #4278190080	
	it	ne
	negne	r0, r0
	tst	r1, #2147483648	
	orr	r1, r1, #8388608	
	bic	r1, r1, #4278190080	
	it	ne
	negne	r1, r1
	teq	r2, r3
	beq	lab142
lab147: 	sub	r2, r2, #1
	asr	ip, r1, r3
	adds	r0, r0, ip
	rsb	r3, r3, #32
	lsl	r1, r1, r3
	and	r3, r0, #2147483648	
	bpl	lab143
	negs	r1, r1
	sbc	r0, r0, r0, lsl #1
lab143: 	cmp	r0, #8388608	
	bcc	lab144
	cmp	r0, #16777216	
	bcc	lab145
	lsrs	r0, r0, #1
	mov	r1, r1, rrx
	add	r2, r2, #1
	cmp	r2, #254	
	bcs	lab146
lab145: 	cmp	r1, #2147483648	
	adc	r0, r0, r2, lsl #23
	it	eq
	biceq	r0, r0, #1
	orr	r0, r0, r3
	bx	lr
lab144: 	lsls	r1, r1, #1
	adc	r0, r0, r0
	subs	r2, #1
	it	cs
	cmpcs	r0, #8388608	
	bcs	lab145
	clz	ip, r0
	sub	ip, ip, #8
	subs	r2, r2, ip
	lsl	r0, r0, ip
	itet	ge
	addge	r0, r0, r2, lsl #23
	neglt	r2, r2
	orrge	r0, r3
	itt	lt
	lsrlt	r0, r2
	orrlt	r0, r3
	bx	lr
lab142: 	teq	r2, #0
	eor	r1, r1, #8388608	
	itte	eq
	eoreq	r0, r0, #8388608	
	addeq	r2, #1
	subne	r3, #1
	b	lab147
lab141: 	mov	r3, r1, lsl #1
	mvns	ip, r2, asr #24
	it	ne
	mvnsne	ip, r3, asr #24
	beq	lab148
	teq	r2, r3
	beq	lab149
	teq	r2, #0
	it	eq
	moveq	r0, r1
	bx	lr
lab149: 	teq	r0, r1
	itt	ne
	movne	r0, #0
	bxne	lr
	tst	r2, #4278190080	
	bne	lab150
	lsls	r0, r0, #1
	it	cs
	orrcs	r0, r0, #2147483648	
	bx	lr
lab150: 	adds	r2, r2, #33554432	
	itt	cc
	addcc	r0, r0, #8388608	
	bxcc	lr
	and	r3, r0, #2147483648	
lab146: 	orr	r0, r3, #2130706432	
	orr	r0, r0, #8388608	
	bx	lr
lab148: 	mvns	r2, r2, asr #24
	itet	ne
	movne	r0, r1
	mvnseq	r3, r3, asr #24
	movne	r1, r0
	lsls	r2, r0, #9
	itte	eq
	movseq	r3, r1, lsl #9
	teqeq	r0, r1
	orrne	r0, r0, #4194304	
	bx	lr
__aeabi_ui2f:
	mov	r3, #0
	b	lab151
	nop
__aeabi_i2f:
	ands	r3, r0, #2147483648	
	it	mi
	negmi	r0, r0
lab151: 	movs	ip, r0
	it	eq
	bxeq	lr
	orr	r3, r3, #1258291200	
	mov	r1, r0
	mov	r0, #0
	b	lab152
__aeabi_ul2f:
	orrs	r2, r0, r1
	it	eq
	bxeq	lr
	mov	r3, #0
	b	lab153
	nop
__aeabi_l2f:
	orrs	r2, r0, r1
	it	eq
	bxeq	lr
	ands	r3, r1, #2147483648	
	bpl	lab153
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
lab153: 	movs	ip, r1
	ittt	eq
	moveq	ip, r0
	moveq	r1, r0
	moveq	r0, #0
	orr	r3, r3, #1526726656	
	it	eq
	subeq	r3, r3, #268435456	
lab152: 	sub	r3, r3, #8388608	
	clz	r2, ip
	subs	r2, #8
	sub	r3, r3, r2, lsl #23
	blt	lab154
	lsl	ip, r1, r2
	add	r3, ip
	lsl	ip, r0, r2
	rsb	r2, r2, #32
	cmp	ip, #2147483648	
	lsr	r2, r0, r2
	adc	r0, r3, r2
	it	eq
	biceq	r0, r0, #1
	bx	lr
lab154: 	add	r2, r2, #32
	lsl	ip, r1, r2
	rsb	r2, r2, #32
	orrs	r0, r0, ip, lsl #1
	lsr	r2, r1, r2
	adc	r0, r3, r2
	it	eq
	biceq	r0, r0, ip, lsr #31
	bx	lr
__aeabi_fmul:
	mov	ip, #255	
	ands	r2, ip, r0, lsr #23
	ittt	ne
	andsne	r3, ip, r1, lsr #23
	teqne	r2, ip
	teqne	r3, ip
	beq	lab155
lab161: 	add	r2, r3
	eor	ip, r0, r1
	lsls	r0, r0, #9
	it	ne
	movsne	r1, r1, lsl #9
	beq	lab156
	mov	r3, #134217728	
	orr	r0, r3, r0, lsr #5
	orr	r1, r3, r1, lsr #5
	umull	r3, r1, r0, r1
	and	r0, ip, #2147483648	
	cmp	r1, #8388608	
	ittt	cc
	lslcc	r1, r1, #1
	orrcc	r1, r1, r3, lsr #31
	lslcc	r3, r3, #1
	orr	r0, r0, r1
	sbc	r2, r2, #127	
	cmp	r2, #253	
	bhi	lab157
	cmp	r3, #2147483648	
	adc	r0, r0, r2, lsl #23
	it	eq
	biceq	r0, r0, #1
	bx	lr
lab156: 	teq	r0, #0
	and	ip, ip, #2147483648	
	it	eq
	lsleq	r1, r1, #9
	orr	r0, ip, r0, lsr #9
	orr	r0, r0, r1, lsr #9
	subs	r2, #127	
	ittt	gt
	rsbsgt	r3, r2, #255	
	orrgt	r0, r0, r2, lsl #23
	bxgt	lr
	orr	r0, r0, #8388608	
	mov	r3, #0
	subs	r2, #1
lab157: 	bgt	lab158
	cmn	r2, #25
	itt	le
	andle	r0, r0, #2147483648	
	bxle	lr
	rsb	r2, r2, #0
	lsls	r1, r0, #1
	lsr	r1, r1, r2
	rsb	r2, r2, #32
	lsl	ip, r0, r2
	movs	r0, r1, rrx
	adc	r0, r0, #0
	orrs	r3, r3, ip, lsl #1
	it	eq
	biceq	r0, r0, ip, lsr #31
	bx	lr
lab163: 	teq	r2, #0
	and	ip, r0, #2147483648	
lab159: 	ittt	eq
	lsleq	r0, r0, #1
	tsteq	r0, #8388608	
	subeq	r2, #1
	beq	lab159
	orr	r0, r0, ip
	teq	r3, #0
	and	ip, r1, #2147483648	
lab160: 	ittt	eq
	lsleq	r1, r1, #1
	tsteq	r1, #8388608	
	subeq	r3, #1
	beq	lab160
	orr	r1, r1, ip
	b	lab161
lab155: 	and	r3, ip, r1, lsr #23
	teq	r2, ip
	it	ne
	teqne	r3, ip
	beq	lab162
	bics	ip, r0, #2147483648	
	it	ne
	bicsne	ip, r1, #2147483648	
	bne	lab163
lab175: 	eor	r0, r0, r1
	and	r0, r0, #2147483648	
	bx	lr
lab162: 	teq	r0, #0
	itett	ne
	teqne	r0, #2147483648	
	moveq	r0, r1
	teqne	r1, #0
	teqne	r1, #2147483648	
	beq	lab164
	teq	r2, ip
	bne	lab165
	lsls	r2, r0, #9
	bne	lab164
lab165: 	teq	r3, ip
	bne	lab166
	lsls	r3, r1, #9
	it	ne
	movne	r0, r1
	bne	lab164
lab166: 	eor	r0, r0, r1
lab158: 	and	r0, r0, #2147483648	
	orr	r0, r0, #2130706432	
	orr	r0, r0, #8388608	
	bx	lr
lab164: 	orr	r0, r0, #2130706432	
	orr	r0, r0, #12582912	
	bx	lr
__aeabi_fdiv:
	mov	ip, #255	
	ands	r2, ip, r0, lsr #23
	ittt	ne
	andsne	r3, ip, r1, lsr #23
	teqne	r2, ip
	teqne	r3, ip
	beq	lab167
lab172: 	sub	r2, r2, r3
	eor	ip, r0, r1
	lsls	r1, r1, #9
	mov	r0, r0, lsl #9
	beq	lab168
	mov	r3, #268435456	
	orr	r1, r3, r1, lsr #4
	orr	r3, r3, r0, lsr #4
	and	r0, ip, #2147483648	
	cmp	r3, r1
	it	cc
	lslcc	r3, r3, #1
	adc	r2, r2, #125	
	mov	ip, #8388608	
lab169: 	cmp	r3, r1
	itt	cs
	subcs	r3, r3, r1
	orrcs	r0, r0, ip
	cmp	r3, r1, lsr #1
	itt	cs
	subcs	r3, r3, r1, lsr #1
	orrcs	r0, r0, ip, lsr #1
	cmp	r3, r1, lsr #2
	itt	cs
	subcs	r3, r3, r1, lsr #2
	orrcs	r0, r0, ip, lsr #2
	cmp	r3, r1, lsr #3
	itt	cs
	subcs	r3, r3, r1, lsr #3
	orrcs	r0, r0, ip, lsr #3
	lsls	r3, r3, #4
	it	ne
	movsne	ip, ip, lsr #4
	bne	lab169
	cmp	r2, #253	
	bhi	lab157
	cmp	r3, r1
	adc	r0, r0, r2, lsl #23
	it	eq
	biceq	r0, r0, #1
	bx	lr
lab168: 	and	ip, ip, #2147483648	
	orr	r0, ip, r0, lsr #9
	adds	r2, #127	
	ittt	gt
	rsbsgt	r3, r2, #255	
	orrgt	r0, r0, r2, lsl #23
	bxgt	lr
	orr	r0, r0, #8388608	
	mov	r3, #0
	subs	r2, #1
	b	lab157
lab176: 	teq	r2, #0
	and	ip, r0, #2147483648	
lab170: 	ittt	eq
	lsleq	r0, r0, #1
	tsteq	r0, #8388608	
	subeq	r2, #1
	beq	lab170
	orr	r0, r0, ip
	teq	r3, #0
	and	ip, r1, #2147483648	
lab171: 	ittt	eq
	lsleq	r1, r1, #1
	tsteq	r1, #8388608	
	subeq	r3, #1
	beq	lab171
	orr	r1, r1, ip
	b	lab172
lab167: 	and	r3, ip, r1, lsr #23
	teq	r2, ip
	bne	lab173
	lsls	r2, r0, #9
	bne	lab164
	teq	r3, ip
	bne	lab166
	mov	r0, r1
	b	lab164
lab173: 	teq	r3, ip
	bne	lab174
	lsls	r3, r1, #9
	beq	lab175
	mov	r0, r1
	b	lab164
lab174: 	bics	ip, r0, #2147483648	
	it	ne
	bicsne	ip, r1, #2147483648	
	bne	lab176
	bics	r2, r0, #2147483648	
	bne	lab166
	bics	r3, r1, #2147483648	
	bne	lab175
	b	lab164
	nop
__gesf2:
	mov	ip, #4294967295	
	b	lab177
	nop
__lesf2:
	mov	ip, #1
	b	lab177
	nop
__cmpsf2:
	mov	ip, #1
lab177: 	str	ip, [sp, #-4]!
	mov	r2, r0, lsl #1
	mov	r3, r1, lsl #1
	mvns	ip, r2, asr #24
	it	ne
	mvnsne	ip, r3, asr #24
	beq	lab178
lab181: 	add	sp, #4
	orrs	ip, r2, r3, lsr #1
	it	ne
	teqne	r0, r1
	it	pl
	subspl	r0, r2, r3
	it	hi
	asrhi	r0, r1, #31
	it	cc
	mvncc	r0, r1, asr #31
	it	ne
	orrne	r0, r0, #1
	bx	lr
lab178: 	mvns	ip, r2, asr #24
	bne	lab179
	movs	ip, r0, lsl #9
	bne	lab180
lab179: 	mvns	ip, r3, asr #24
	bne	lab181
	movs	ip, r1, lsl #9
	beq	lab181
lab180: 	ldr	r0, [sp], #4
	bx	lr
	nop
__aeabi_cfrcmple:
	mov	ip, r0
	mov	r0, r1
	mov	r1, ip
	b	__aeabi_cfcmpeq
__aeabi_cfcmpeq:
	push	{r0, r1, r2, r3, lr}
	bl	__cmpsf2
	cmp	r0, #0
	it	mi
	cmnmi	r0, #0
	nop
	push {r1, r2}
	ldr r1, =4130
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r0, r1, r2, r3, pc}
__aeabi_fcmpeq:
	str	lr, [sp, #-8]!
push {r1, r2}
	ldr r1, =492
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cfcmpeq
	push {r1, r2}
	ldr r1, =492
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ite	eq
	moveq	r0, #1
	movne	r0, #0
	ldr	pc, [sp], #8
	nop
__aeabi_fcmplt:
	str	lr, [sp, #-8]!
push {r1, r2}
	ldr r1, =4483
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cfcmpeq
	push {r1, r2}
	ldr r1, =4483
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ite	cc
	movcc	r0, #1
	movcs	r0, #0
	ldr	pc, [sp], #8
	nop
__aeabi_fcmple:
	str	lr, [sp, #-8]!
push {r1, r2}
	ldr r1, =1423
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cfcmpeq
	push {r1, r2}
	ldr r1, =1423
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ite	ls
	movls	r0, #1
	movhi	r0, #0
	ldr	pc, [sp], #8
	nop
__aeabi_fcmpge:
	str	lr, [sp, #-8]!
push {r1, r2}
	ldr r1, =3657
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cfrcmple
	push {r1, r2}
	ldr r1, =3657
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ite	ls
	movls	r0, #1
	movhi	r0, #0
	ldr	pc, [sp], #8
	nop
__aeabi_fcmpgt:
	str	lr, [sp, #-8]!
push {r1, r2}
	ldr r1, =3286
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cfrcmple
	push {r1, r2}
	ldr r1, =3286
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ite	cc
	movcc	r0, #1
	movcs	r0, #0
	ldr	pc, [sp], #8
	nop


	 .section .rodata

a_ref:
	.word	0x40400000
	.word	0xc0c00000
	.word	0x40e00000
	.word	0x41100000
	.word	0x00000000
	.word	0xc0a00000
	.word	0x40a00000
	.word	0xc1000000
	.word	0x40c00000


	 .section .data

SystemCoreClock:
	.word	0x00f42400


	 .section .bss

a:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
det:
	.word	0x00000000
d:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
c:
	.word	0x00000000
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
