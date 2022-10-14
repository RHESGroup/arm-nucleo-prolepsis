	.cpu cortex-m4
	.text
	.thumb
	.syntax unified
	.global main
	.type main, %function

    .global SystemInit
	.type SystemInit, %function

bodies_energy.constprop.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r4, #8
	movt	r4, #8192	
	ldrd	r2, r3, [r4, #32]
	sub	sp, #36	
	mov	r0, r2
	mov	r1, r3
push {r1, r2}
	ldr r1, =7223
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7223
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r6, r7, [r4, #40]	
	mov	r5, r4
	str	r4, [sp, #20]
	ldrd	r3, r4, [r4, #48]	
	mov	r8, r0
	mov	r9, r1
	mov	r2, r6
	strd	r3, r4, [sp]
	mov	r0, r6
	mov	r3, r7
	mov	r1, r7
push {r1, r2}
	ldr r1, =3630
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3630
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =5755
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =5755
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp]
	mov	r6, r0
	mov	r7, r1
	mov	r0, r2
	mov	r1, r3
push {r1, r2}
	ldr r1, =4819
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4819
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =5919
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =5919
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [r5, #56]	
push {r1, r2}
	ldr r1, =236
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =236
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16352	
push {r1, r2}
	ldr r1, =3510
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3510
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r2, #0
	movs	r3, #0
push {r1, r2}
	ldr r1, =1412
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =1412
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16352	
	strd	r2, r3, [sp, #24]
	mov	fp, #1
	mov	sl, fp
	mov	r8, r0
	mov	r9, r1
lab0: 	ldr	r3, [sp, #20]
	add	r4, r3, sl, lsl #6
	ldrd	r2, r3, [r4]
	ldrd	r0, r1, [r5]
	bl	__aeabi_dsub
	ldrd	r2, r3, [r4, #8]
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [r5, #8]
	bl	__aeabi_dsub
	ldrd	r2, r3, [r4, #16]
	strd	r0, r1, [sp]
	ldrd	r0, r1, [r5, #16]
	bl	__aeabi_dsub
	mov	r2, r6
	strd	r0, r1, [sp, #8]
	mov	r3, r7
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =2222
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2222
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp]
	mov	r6, r0
	mov	r7, r1
	mov	r0, r2
	mov	r1, r3
push {r1, r2}
	ldr r1, =1676
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1676
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =2780
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2780
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp, #8]
	mov	r6, r0
	mov	r7, r1
	mov	r0, r2
	mov	r1, r3
push {r1, r2}
	ldr r1, =6484
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6484
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =6027
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
push {r1, r2}
	ldr r1, =3032
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	push {r1, r2}
	ldr r1, =6027
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	sqrt
	push {r1, r2}
	ldr r1, =3032
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [r4, #56]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [r5, #56]	
push {r1, r2}
	ldr r1, =3534
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3534
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r6
	mov	r3, r7
push {r1, r2}
	ldr r1, =3870
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =3870
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
	add	sl, sl, #1
	cmp	sl, #5
	mov	r8, r0
	mov	r9, r1
	bne	lab0
	ldr	r3, [sp, #20]
	add	r5, r3, fp, lsl #6
	ldrd	r2, r3, [r5, #32]
	ldrd	r0, r1, [r5, #48]	
	strd	r0, r1, [sp]
	mov	r0, r2
	mov	r1, r3
push {r1, r2}
	ldr r1, =7108
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7108
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r6, r7, [r5, #40]	
	strd	r0, r1, [sp, #8]
	mov	r2, r6
	mov	r3, r7
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =4617
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4617
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp, #8]
push {r1, r2}
	ldr r1, =4763
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =4763
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp]
	mov	r6, r0
	mov	r7, r1
	mov	r0, r2
	mov	r1, r3
push {r1, r2}
	ldr r1, =5882
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5882
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =7834
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7834
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [r5, #56]	
push {r1, r2}
	ldr r1, =1840
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1840
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp, #24]
push {r1, r2}
	ldr r1, =6481
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6481
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
push {r1, r2}
	ldr r1, =6215
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =6215
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	fp, #4
	add	sl, fp, #1
	mov	r8, r0
	mov	r9, r1
	beq	lab1
	mov	fp, sl
	b	lab0
lab1: 	add	sp, #36	
	nop
	push {r1, r2}
	ldr r1, =1692
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	nop
benchmark_body.constprop.0:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, fp, lr}
	movs	r2, #0
	sub	sp, #64	
	movs	r3, #0
	strd	r2, r3, [sp, #56]	
	movw	r8, #17886	
	movw	r9, #48444	
	movw	fp, #8
	movt	r8, #51646	
	movt	r9, #16451	
	movs	r5, #168	
	movt	fp, #8192	
lab3: 	ldrd	r3, r4, [fp, #48]	
	strd	r3, r4, [sp, #40]	
	ldrd	r2, r3, [fp, #32]
	ldrd	r6, r7, [fp, #40]	
	strd	r2, r3, [sp, #32]
	ldrd	r2, r3, [fp, #120]	
	ldrd	r0, r1, [fp, #56]	
	strd	r2, r3, [sp]
	mov	r2, r6
	mov	r3, r7
	strd	r0, r1, [sp, #24]
push {r1, r2}
	ldr r1, =6768
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6768
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =7161
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =7161
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r7, r1
	ldrd	r1, r2, [fp, #184]	
	mov	r6, r0
	strd	r1, r2, [sp, #8]
	ldrd	r2, r3, [fp, #104]	
	ldrd	r0, r1, [sp]
push {r1, r2}
	ldr r1, =2004
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2004
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =2887
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =2887
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #248]	
	mov	r6, r0
	mov	r7, r1
	strd	r2, r3, [sp, #16]
	ldrd	r0, r1, [sp, #8]
	ldrd	r2, r3, [fp, #168]	
push {r1, r2}
	ldr r1, =4884
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4884
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =5448
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =5448
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #232]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp, #16]
push {r1, r2}
	ldr r1, =4132
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4132
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =6095
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =6095
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r6, r7, [sp, #40]	
	strd	r0, r1, [sp, #48]	
	mov	r2, r6
	mov	r3, r7
	ldrd	r0, r1, [sp, #24]
push {r1, r2}
	ldr r1, =6725
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6725
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =138
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =138
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #112]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp]
push {r1, r2}
	ldr r1, =4579
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4579
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =6159
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =6159
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #176]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp, #8]
push {r1, r2}
	ldr r1, =1317
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1317
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =8132
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =8132
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #240]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp, #16]
push {r1, r2}
	ldr r1, =498
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =498
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =3952
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =3952
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r6, r7, [sp, #32]
	ldrd	r2, r3, [sp, #24]
	strd	r0, r1, [sp, #24]
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =7817
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7817
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =6791
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =6791
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #96]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp]
push {r1, r2}
	ldr r1, =7876
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7876
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =4161
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =4161
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #160]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp, #8]
push {r1, r2}
	ldr r1, =6868
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6868
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =563
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =563
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #224]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp, #16]
	strd	r6, r7, [sp]
	ldrd	r6, r7, [fp, #312]	
push {r1, r2}
	ldr r1, =7687
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7687
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =3319
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =3319
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp]
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #288]	
	strd	r0, r1, [sp]
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =7070
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7070
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =4883
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =4883
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp]
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #296]	
	strd	r0, r1, [fp, #32]
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =7535
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7535
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =5124
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =5124
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp, #48]	
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	strd	r2, r3, [fp, #40]	
	mov	r0, r6
	ldrd	r2, r3, [fp, #304]	
	mov	r1, r7
push {r1, r2}
	ldr r1, =3456
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3456
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =7597
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =7597
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp, #24]
	bl	__aeabi_dsub
	ldrd	r6, r7, [sp, #56]	
	strd	r0, r1, [fp, #48]	
	movs	r4, #100	
lab2:push {r1, r2}
	ldr r1, =1599
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	bodies_energy.constprop.0
	push {r1, r2}
	ldr r1, =1599
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =7153
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7153
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r4, #1
	mov	r6, r0
	mov	r7, r1
	bne	lab2
	subs	r5, #1
	bne	lab3
	movw	r2, #61316	
	movw	r3, #59474	
	movt	r2, #65120	
	movt	r3, #16432	
push {r1, r2}
	ldr r1, =7562
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7562
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #30338	
	bic	r5, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r5
	bl	__aeabi_dcmplt
	subs	r0, #0
	it	ne
	movne	r0, #1
	add	sp, #64	
	nop
	push {r1, r2}
	ldr r1, =4629
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, fp, pc}
	nop
benchmark_body.isra.0:
	subs	r3, r0, #0
	ble	lab4
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r8, #17886	
	movw	r9, #48444	
	movw	fp, #8
	sub	sp, #60	
	movt	r8, #51646	
	movt	r9, #16451	
	movs	r5, #0
	movt	fp, #8192	
	mov	sl, r3
lab6: 	ldrd	r3, r4, [fp, #120]	
	strd	r3, r4, [sp]
	ldrd	r2, r3, [fp, #184]	
	strd	r2, r3, [sp, #8]
	ldrd	r3, r4, [fp, #48]	
	ldrd	r6, r7, [fp, #40]	
	strd	r3, r4, [sp, #40]	
	ldrd	r2, r3, [fp, #32]
	ldrd	r0, r1, [fp, #56]	
	strd	r2, r3, [sp, #32]
	mov	r2, r6
	mov	r3, r7
	strd	r0, r1, [sp, #24]
push {r1, r2}
	ldr r1, =7926
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7926
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =3740
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =3740
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #104]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp]
push {r1, r2}
	ldr r1, =2884
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2884
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =4730
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =4730
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	mov	r7, r1
	ldrd	r1, r2, [fp, #248]	
	mov	r6, r0
	strd	r1, r2, [sp, #16]
	ldrd	r2, r3, [fp, #168]	
	ldrd	r0, r1, [sp, #8]
push {r1, r2}
	ldr r1, =1403
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1403
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =698
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =698
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #232]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp, #16]
push {r1, r2}
	ldr r1, =3990
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3990
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =1690
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =1690
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r6, r7, [sp, #40]	
	strd	r0, r1, [sp, #48]	
	mov	r2, r6
	mov	r3, r7
	ldrd	r0, r1, [sp, #24]
push {r1, r2}
	ldr r1, =6470
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6470
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =5483
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =5483
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #112]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp]
push {r1, r2}
	ldr r1, =6655
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6655
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =1641
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =1641
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #176]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp, #8]
push {r1, r2}
	ldr r1, =990
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =990
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =1801
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =1801
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #240]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp, #16]
push {r1, r2}
	ldr r1, =7929
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7929
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =6258
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =6258
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r6, r7, [sp, #32]
	ldrd	r2, r3, [sp, #24]
	strd	r0, r1, [sp, #24]
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =7421
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7421
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =791
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =791
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #96]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp]
push {r1, r2}
	ldr r1, =5589
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5589
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =20
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =20
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #160]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp, #8]
push {r1, r2}
	ldr r1, =3097
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3097
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =5945
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =5945
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #224]	
	mov	r6, r0
	mov	r7, r1
	ldrd	r0, r1, [sp, #16]
	strd	r6, r7, [sp]
	ldrd	r6, r7, [fp, #312]	
push {r1, r2}
	ldr r1, =6816
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6816
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =4898
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =4898
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp]
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #288]	
	strd	r0, r1, [sp]
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =2157
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =2157
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =5265
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =5265
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp]
	bl	__aeabi_dsub
	ldrd	r2, r3, [fp, #296]	
	strd	r0, r1, [fp, #32]
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =7831
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =7831
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =1095
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =1095
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp, #48]	
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	strd	r2, r3, [fp, #40]	
	mov	r0, r6
	ldrd	r2, r3, [fp, #304]	
	mov	r1, r7
push {r1, r2}
	ldr r1, =1972
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1972
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =69
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =69
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp, #24]
	bl	__aeabi_dsub
	strd	r0, r1, [fp, #48]	
	movs	r4, #100	
lab5:push {r1, r2}
	ldr r1, =1135
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
 	bl	bodies_energy.constprop.0
	push {r1, r2}
	ldr r1, =1135
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r4, #1
	bne	lab5
	adds	r5, #1
	cmp	r5, sl
	bne	lab6
	add	sp, #60	
	nop
	push {r1, r2}
	ldr r1, =4841
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab4:	nop
	push {r1, r2}
	ldr r1, =7946
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	bx	lr
	nop
offset_momentum:
	cmp	r1, #0
	beq	lab7
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrd	r3, r4, [r0, #32]
	sub	sp, #28
	strd	r3, r4, [sp]
	add	r3, r0, r1, lsl #6
	str	r3, [sp, #20]
	ldrd	r3, r4, [r0, #40]	
	ldrd	sl, fp, [r0, #48]	
	movw	r8, #17886	
	movw	r9, #48444	
	strd	r3, r4, [sp, #8]
	mov	r5, r0
	mov	r4, r0
	movt	r8, #51646	
	movt	r9, #16451	
lab8: 	ldrd	r6, r7, [r4, #56]	
	ldrd	r2, r3, [r4, #32]
	mov	r0, r6
	mov	r1, r7
push {r1, r2}
	ldr r1, =552
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =552
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =1347
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =1347
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	strd	r2, r3, [r5, #32]
	strd	r2, r3, [sp]
	mov	r0, r6
	ldrd	r2, r3, [r4, #40]	
	mov	r1, r7
push {r1, r2}
	ldr r1, =870
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =870
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =493
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =493
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp, #8]
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
	strd	r2, r3, [r5, #40]	
	strd	r2, r3, [sp, #8]
	mov	r0, r6
	ldrd	r2, r3, [r4, #48]	
	mov	r1, r7
push {r1, r2}
	ldr r1, =1383
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1383
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r8
	mov	r3, r9
push {r1, r2}
	ldr r1, =4391
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =4391
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r1
	mov	r2, r0
	mov	r1, fp
	mov	r0, sl
	bl	__aeabi_dsub
	ldr	r3, [sp, #20]
	adds	r4, #64	
	mov	sl, r0
	mov	fp, r1
	cmp	r3, r4
	strd	sl, fp, [r5, #48]	
	bne	lab8
	add	sp, #28
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab7: 	bx	lr
bodies_energy:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, #36	
	str	r1, [sp, #20]
	cmp	r1, #0
	beq	lab9
	sub	r3, r0, #64	
	add	r3, r3, r1, lsl #6
	str	r3, [sp, #12]
	movs	r3, #0
	str	r3, [sp, #16]
	movs	r3, #0
	movs	r2, #0
	movt	r3, #16352	
	strd	r2, r3, [sp, #24]
	mov	r8, #0
	mov	r9, #0
	mov	r6, r0
lab12: 	ldrd	r2, r3, [r6, #32]
	ldr	r7, [sp, #16]
	mov	r0, r2
	adds	r7, #1
	mov	r1, r3
	ldrd	r4, r5, [r6, #40]	
	str	r7, [sp, #16]
push {r1, r2}
	ldr r1, =6920
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6920
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
	ldr r1, =6366
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6366
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	ldrd	r0, r1, [sp]
push {r1, r2}
	ldr r1, =674
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =674
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	sl, fp, [r6, #48]	
	mov	r4, r0
	mov	r5, r1
	mov	r2, sl
	mov	r3, fp
	mov	r0, sl
	mov	r1, fp
push {r1, r2}
	ldr r1, =1456
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1456
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =1951
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =1951
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [r6, #56]	
push {r1, r2}
	ldr r1, =5401
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =5401
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp, #24]
push {r1, r2}
	ldr r1, =746
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =746
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r1
	mov	r2, r0
	mov	r1, r9
	mov	r0, r8
push {r1, r2}
	ldr r1, =5025
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =5025
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldr	r3, [sp, #20]
	cmp	r3, r7
	mov	r8, r0
	mov	r9, r1
	beq	lab10
	mov	r7, r6
lab11: 	ldrd	r2, r3, [r7, #64]	
	ldrd	r0, r1, [r6]
	bl	__aeabi_dsub
	ldrd	r2, r3, [r7, #72]	
	mov	r4, r0
	mov	r5, r1
	ldrd	r0, r1, [r6, #8]
	bl	__aeabi_dsub
	ldrd	r2, r3, [r7, #80]	
	mov	sl, r0
	mov	fp, r1
	ldrd	r0, r1, [r6, #16]
	bl	__aeabi_dsub
	mov	r2, r4
	strd	r0, r1, [sp]
	mov	r3, r5
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =6917
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =6917
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
	ldr r1, =3843
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =3843
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =7089
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7089
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [sp]
	mov	r4, r0
	mov	r5, r1
	mov	r0, r2
	mov	r1, r3
push {r1, r2}
	ldr r1, =1968
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1968
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
push {r1, r2}
	ldr r1, =5594
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
push {r1, r2}
	ldr r1, =5239
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	push {r1, r2}
	ldr r1, =5594
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	sqrt
	push {r1, r2}
	ldr r1, =5239
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	ldrd	r2, r3, [r7, #120]	
	mov	r4, r0
	mov	r5, r1
	ldrd	r0, r1, [r6, #56]	
push {r1, r2}
	ldr r1, =4343
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =4343
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r4
	mov	r3, r5
push {r1, r2}
	ldr r1, =8094
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =8094
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r3, r1
	mov	r2, r0
	mov	r1, r9
	mov	r0, r8
	bl	__aeabi_dsub
	ldr	r3, [sp, #12]
	adds	r7, #64	
	cmp	r3, r7
	mov	r8, r0
	mov	r9, r1
	bne	lab11
	adds	r6, #64	
	b	lab12
lab9: 	mov	r8, #0
	mov	r9, #0
lab10: 	mov	r0, r8
	mov	r1, r9
	add	sp, #36	
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	nop
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
	cmp	r0, #0
	beq	lab13
	push	{r4, r6, r7, lr}
	movw	r4, #8
	movt	r4, #8192	
	ldrd	r0, r3, [r4]
	movw	r2, #30338	
	bic	r1, r3, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #55027	
	movw	r3, #26601	
	movt	r2, #42976	
	movt	r3, #16185	
	ldrd	r0, r1, [r4, #32]
push {r1, r2}
	ldr r1, =4460
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =4460
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	ldrd	r0, r6, [r4, #8]
	movw	r2, #30338	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	bic	r1, r6, #2147483648	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #35323	
	movw	r3, #54508	
	movt	r2, #65104	
	movt	r3, #16234	
	ldrd	r0, r1, [r4, #40]	
push {r1, r2}
	ldr r1, =2235
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =2235
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	ldrd	r0, r6, [r4, #16]
	movw	r2, #30338	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	bic	r1, r6, #2147483648	
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #35442	
	movw	r3, #6451	
	movt	r2, #7947	
	movt	r3, #16121	
	ldrd	r0, r1, [r4, #48]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #17886	
	movw	r3, #48444	
	movt	r2, #51646	
	movt	r3, #16451	
	ldrd	r0, r1, [r4, #56]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #55596	
	movw	r3, #23968	
	movt	r2, #13372	
	movt	r3, #16403	
	ldrd	r0, r1, [r4, #64]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #52412	
	movw	r3, #26374	
	movt	r2, #39827	
	movt	r3, #16355	
	ldrd	r0, r1, [r4, #96]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab15
	movw	r2, #56188	
	movw	r3, #37035	
	movt	r2, #49183	
	movt	r3, #16370	
	ldrd	r0, r1, [r4, #72]	
push {r1, r2}
	ldr r1, =6954
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =6954
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #38043	
	movw	r3, #32498	
	movt	r2, #62845	
	movt	r3, #16390	
	ldrd	r0, r1, [r4, #104]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #60400	
	movw	r3, #34553	
	movt	r2, #27685	
	movt	r3, #16314	
	ldrd	r0, r1, [r4, #80]	
push {r1, r2}
	ldr r1, =937
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =937
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #1813	
	movw	r3, #53975	
	movt	r2, #39514	
	movt	r3, #16281	
	ldrd	r0, r1, [r4, #112]	
push {r1, r2}
	ldr r1, =1133
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =1133
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #13272	
	movw	r3, #19605	
	movt	r2, #55723	
	movt	r3, #16291	
	ldrd	r0, r1, [r4, #120]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #51815	
	movw	r3, #45005	
	movt	r2, #49970	
	movt	r3, #16416	
	ldrd	r0, r1, [r4, #128]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #37954	
	movw	r3, #11297	
	movt	r2, #47239	
	movt	r3, #16368	
	ldrd	r0, r1, [r4, #160]	
push {r1, r2}
	ldr r1, =1373
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =1373
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	mov	r2, #432	
	movw	r3, #32715	
	movt	r2, #12766	
	movt	r3, #16400	
	ldrd	r0, r1, [r4, #136]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #36627	
	movw	r3, #13801	
	movt	r2, #48927	
	movt	r3, #16381	
	ldrd	r0, r1, [r4, #168]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #18044	
	movw	r3, #54099	
	movt	r2, #57835	
	movt	r3, #16345	
	ldrd	r0, r1, [r4, #144]	
push {r1, r2}
	ldr r1, =1823
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =1823
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab15
	movw	r2, #9140	
	movw	r3, #15432	
	movt	r2, #24337	
	movt	r3, #16257	
	ldrd	r0, r1, [r4, #176]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #50743	
	movw	r3, #7497	
	movt	r2, #3335	
	movt	r3, #16263	
	ldrd	r0, r1, [r4, #184]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #55759	
	movw	r3, #51690	
	movt	r2, #52903	
	movt	r3, #16425	
	ldrd	r0, r1, [r4, #192]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #7151	
	movw	r3, #21276	
	movt	r2, #43409	
	movt	r3, #16369	
	ldrd	r0, r1, [r4, #224]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #26238	
	movw	r3, #14568	
	movt	r2, #54822	
	movt	r3, #16430	
	ldrd	r0, r1, [r4, #200]	
push {r1, r2}
	ldr r1, =7940
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7940
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #48069	
	movw	r3, #52351	
	movt	r2, #15956	
	movt	r3, #16363	
	ldrd	r0, r1, [r4, #232]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #32160	
	movw	r3, #38231	
	movt	r2, #48677	
	movt	r3, #16332	
	ldrd	r0, r1, [r4, #208]	
push {r1, r2}
	ldr r1, =5921
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =5921
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #15996	
	movw	r3, #12139	
	movt	r2, #64242	
	movt	r3, #16262	
	ldrd	r0, r1, [r4, #240]	
push {r1, r2}
	ldr r1, =5209
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =5209
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #7859	
	movw	r3, #15826	
	movt	r2, #40180	
	movt	r3, #16220	
	ldrd	r0, r1, [r4, #248]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #22314	
	movw	r3, #49767	
	movt	r2, #43269	
	movt	r3, #16430	
	ldrd	r0, r1, [r4, #256]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #48202	
	movw	r3, #21686	
	movt	r2, #5721	
	movt	r3, #16367	
	ldrd	r0, r1, [r4, #288]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #41504	
	movw	r3, #60248	
	movt	r2, #13256	
	movt	r3, #16441	
	ldrd	r0, r1, [r4, #264]	
push {r1, r2}
	ldr r1, =7071
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =7071
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #64419	
	movw	r3, #1990	
	movt	r2, #12740	
	movt	r3, #16355	
	ldrd	r0, r1, [r4, #296]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	beq	lab14
	movw	r2, #58688	
	movw	r3, #61939	
	movt	r2, #37803	
	movt	r3, #16326	
	ldrd	r0, r1, [r4, #272]	
	bl	__aeabi_dsub
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp r0, #0
	beq lab14
	movw	r2, #26102	
	movw	r3, #52104	
	movt	r2, #22646	
	movt	r3, #16289	
	ldrd	r0, r1, [r4, #304]	
push {r1, r2}
	ldr r1, =1102
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =1102
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	movw	r2, #30338	
	bic	r7, r1, #2147483648	
	movw	r3, #9666	
	movt	r2, #26697	
	movt	r3, #15676	
	mov	r1, r7
	bl	__aeabi_dcmplt
	cmp r0, #0
	beq lab14
	movw	r2, #39340	
	movw	r3, #43251	
	movt	r2, #21271	
	movt	r3, #16224	
	ldrd	r0, r1, [r4, #312]	
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
lab14:	nop
	push {r1, r2}
	ldr r1, =7810
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r6, r7, pc}
lab13:	nop
	push {r1, r2}
	ldr r1, =3407
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	bx	lr
lab15: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =2574
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r6, r7, pc}
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
lab16: 	ldr	r2, [r3, #0]
	lsls	r0, r2, #14
	bpl	lab16
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
lab17: 	ldr	r3, [r2, #0]
	lsls	r1, r3, #6
	bpl	lab17
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
lab18: 	ldr	r3, [r1, #8]
	lsls	r3, r3, #28
	bpl	lab18
	movw	r3, #328	
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
	ldr r1, =7140
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	start_trigger
	bl	benchmark
	push {r1, r2}
	ldr r1, =6407
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r0, [sp, #4]
	bl	stop_trigger
	ldr	r0, [sp, #4]
	bl	verify_benchmark
	push {r1, r2}
	ldr r1, =2308
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
	push	{r4, r5, r6, lr}
	mov	ip, #255	
	orr	ip, ip, #1792	
	ands	r4, ip, r1, lsr #20
	ittte	ne
	andsne	r5, ip, r3, lsr #20
	teqne	r4, ip
	teqne	r5, ip
	bleq	lab19
	add	r4, r5
	eor	r6, r1, r3
	bic	r1, r1, ip, lsl #21
	bic	r3, r3, ip, lsl #21
	orrs	r5, r0, r1, lsl #12
	it	ne
	orrsne	r5, r2, r3, lsl #12
	orr	r1, r1, #1048576	
	orr	r3, r3, #1048576	
	beq	lab20
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
	bcs	lab21
	movs	lr, lr, lsl #1
	adcs	r5, r5
	adc	r6, r6, r6
lab21: 	orr	r1, r2, r6, lsl #11
	orr	r1, r1, r5, lsr #21
	mov	r0, r5, lsl #11
	orr	r0, r0, lr, lsr #21
	mov	lr, lr, lsl #11
	subs	ip, r4, #253	
	it	hi
	cmphi	ip, #1792	
	bhi	lab22
	cmp	lr, #2147483648	
	it	eq
	movseq	lr, r0, lsr #1
	adcs	r0, r0, #0
	adc	r1, r1, r4, lsl #20
	pop	{r4, r5, r6, pc}
lab20: 	and	r6, r6, #2147483648	
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
lab22: 	bgt	lab23
	cmn	r4, #54	
	ittt	le
	movle	r0, #0
	andle	r1, r1, #2147483648	
	pople	{r4, r5, r6, pc}
	rsb	r4, r4, #0
	subs	r4, #32
	bge	lab24
	adds	r4, #12
	bgt	lab25
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
lab25: 	rsb	r4, r4, #12
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
lab24: 	rsb	r5, r4, #32
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
lab30: 	teq	r4, #0
	bne	lab26
	and	r6, r1, #2147483648	
lab27: 	lsls	r0, r0, #1
	adc	r1, r1, r1
	tst	r1, #1048576	
	it	eq
	subeq	r4, #1
	beq	lab27
	orr	r1, r1, r6
	teq	r5, #0
	it	ne
	bxne	lr
lab26: 	and	r6, r3, #2147483648	
lab28: 	lsls	r2, r2, #1
	adc	r3, r3, r3
	tst	r3, #1048576	
	it	eq
	subeq	r5, #1
	beq	lab28
	orr	r3, r3, r6
	bx	lr
lab19: 	teq	r4, ip
	and	r5, ip, r3, lsr #20
	it	ne
	teqne	r5, ip
	beq	lab29
	orrs	r6, r0, r1, lsl #1
	it	ne
	orrsne	r6, r2, r3, lsl #1
	bne	lab30
	eor	r1, r1, r3
	and	r1, r1, #2147483648	
	mov	r0, #0
	pop	{r4, r5, r6, pc}
lab29: 	orrs	r6, r0, r1, lsl #1
	itte	eq
	moveq	r0, r2
	moveq	r1, r3
	orrsne	r6, r2, r3, lsl #1
	beq	lab31
	teq	r4, ip
	bne	lab32
	orrs	r6, r0, r1, lsl #12
	bne	lab31
lab32: 	teq	r5, ip
	bne	lab33
	orrs	r6, r2, r3, lsl #12
	itt	ne
	movne	r0, r2
	movne	r1, r3
	bne	lab31
lab33: 	eor	r1, r1, r3
lab23: 	and	r1, r1, #2147483648	
	orr	r1, r1, #2130706432	
	orr	r1, r1, #15728640	
	mov	r0, #0
	pop	{r4, r5, r6, pc}
lab31: 	orr	r1, r1, #2130706432	
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
	beq	lab34
	mov	r4, r4, lsr #21
	rsbs	r5, r4, r5, lsr #21
	it	lt
	neglt	r5, r5
	ble	lab35
	add	r4, r5
	eor	r2, r0, r2
	eor	r3, r1, r3
	eor	r0, r2, r0
	eor	r1, r3, r1
	eor	r2, r0, r2
	eor	r3, r1, r3
lab35: 	cmp	r5, #54	
	it	hi
	nop
	push {r1, r2}
	ldr r1, =941
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pophi	{r4, r5, pc}
	tst	r1, #2147483648	
	mov	r1, r1, lsl #12
	mov	ip, #1048576	
	orr	r1, ip, r1, lsr #12
	beq	lab36
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
lab36: 	tst	r3, #2147483648	
	mov	r3, r3, lsl #12
	orr	r3, ip, r3, lsr #12
	beq	lab37
	negs	r2, r2
	sbc	r3, r3, r3, lsl #1
lab37: 	teq	r4, r5
	beq	lab38
lab50: 	sub	r4, r4, #1
	rsbs	lr, r5, #32
	blt	lab39
	lsl	ip, r2, lr
	lsr	r2, r2, r5
	adds	r0, r0, r2
	adc	r1, r1, #0
	lsl	r2, r3, lr
	adds	r0, r0, r2
	asr	r3, r3, r5
	adcs	r1, r3
	b	lab40
lab39: 	sub	r5, r5, #32
	add	lr, lr, #32
	cmp	r2, #1
	lsl	ip, r3, lr
	it	cs
	orrcs	ip, ip, #2
	asr	r3, r3, r5
	adds	r0, r0, r3
	adcs	r1, r1, r3, asr #31
lab40: 	and	r5, r1, #2147483648	
	bpl	lab41
	mov	lr, #0
	rsbs	ip, ip, #0
	sbcs	r0, lr, r0
	sbc	r1, lr, r1
lab41: 	cmp	r1, #1048576	
	bcc	lab42
	cmp	r1, #2097152	
	bcc	lab43
	lsrs	r1, r1, #1
	movs	r0, r0, rrx
	mov	ip, ip, rrx
	add	r4, r4, #1
	mov	r2, r4, lsl #21
	cmn	r2, #4194304	
	bcs	lab44
lab43: 	cmp	ip, #2147483648	
	it	eq
	movseq	ip, r0, lsr #1
	adcs	r0, r0, #0
	adc	r1, r1, r4, lsl #20
	orr	r1, r1, r5
	nop
	push {r1, r2}
	ldr r1, =146
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab42: 	movs	ip, ip, lsl #1
	adcs	r0, r0
	adc	r1, r1, r1
	subs	r4, #1
	it	cs
	cmpcs	r1, #1048576	
	bcs	lab43
lab54: 	teq	r1, #0
	itt	eq
	moveq	r1, r0
	moveq	r0, #0
	clz	r3, r1
	it	eq
	addeq	r3, #32
	sub	r3, r3, #11
	subs	r2, r3, #32
	bge	lab45
	adds	r2, #12
	ble	lab46
	add	ip, r2, #20
	rsb	r2, r2, #12
	lsl	r0, r1, ip
	lsr	r1, r1, r2
	b	lab47
lab46: 	add	r2, r2, #20
lab45: 	it	le
	rsble	ip, r2, #32
	lsl	r1, r1, r2
	lsr	ip, r0, ip
	itt	le
	orrle	r1, r1, ip
	lslle	r0, r2
lab47: 	subs	r4, r4, r3
	ittt	ge
	addge	r1, r1, r4, lsl #20
	orrge	r1, r5
	nop
	push {r1, r2}
	ldr r1, =5410
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popge	{r4, r5, pc}
	mvn	r4, r4
	subs	r4, #31
	bge	lab48
	adds	r4, #12
	bgt	lab49
	add	r4, r4, #20
	rsb	r2, r4, #32
	lsr	r0, r0, r4
	lsl	r3, r1, r2
	orr	r0, r0, r3
	lsr	r3, r1, r4
	orr	r1, r5, r3
	pop	{r4, r5, pc}
lab49: 	rsb	r4, r4, #12
	rsb	r2, r4, #32
	lsr	r0, r0, r2
	lsl	r3, r1, r4
	orr	r0, r0, r3
	mov	r1, r5
	pop	{r4, r5, pc}
lab48: 	lsr	r0, r1, r4
	mov	r1, r5
	pop	{r4, r5, pc}
lab38: 	teq	r4, #0
	eor	r3, r3, #1048576	
	itte	eq
	eoreq	r1, r1, #1048576	
	addeq	r4, #1
	subne	r5, #1
	b	lab50
lab34: 	mvns	ip, r4, asr #21
	it	ne
	mvnsne	ip, r5, asr #21
	beq	lab51
	teq	r4, r5
	it	eq
	teqeq	r0, r2
	beq	lab52
	orrs	ip, r4, r0
	itt	eq
	moveq	r1, r3
	moveq	r0, r2
	nop
	push {r1, r2}
	ldr r1, =1527
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab52: 	teq	r1, r3
	ittt	ne
	movne	r1, #0
	movne	r0, #0
	nop
	push {r1, r2}
	ldr r1, =1901
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popne	{r4, r5, pc}
	movs	ip, r4, lsr #21
	bne	lab53
	lsls	r0, r0, #1
	adcs	r1, r1
	it	cs
	orrcs	r1, r1, #2147483648	
	nop
	push {r1, r2}
	ldr r1, =4720
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab53: 	adds	r4, r4, #4194304	
	itt	cc
	addcc	r1, r1, #1048576	
	nop
	push {r1, r2}
	ldr r1, =6623
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popcc	{r4, r5, pc}
	and	r5, r1, #2147483648	
lab44: 	orr	r1, r5, #2130706432	
	orr	r1, r1, #15728640	
	mov	r0, #0
	nop
	push {r1, r2}
	ldr r1, =6712
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, pc}
lab51: 	mvns	ip, r4, asr #21
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
	ldr r1, =2271
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
	b	lab54
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
	b	lab54
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
	b	lab54
	nop
__aeabi_ul2d:
	orrs	r2, r0, r1
	it	eq
	bxeq	lr
	push	{r4, r5, lr}
	mov	r5, #0
	b	lab55
__aeabi_l2d:
	orrs	r2, r0, r1
	it	eq
	bxeq	lr
	push	{r4, r5, lr}
	ands	r5, r1, #2147483648	
	bpl	lab55
	negs	r0, r0
	sbc	r1, r1, r1, lsl #1
lab55: 	mov	r4, #1024	
	add	r4, r4, #50	
	movs	ip, r1, lsr #22
	beq	lab41
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
	b	lab41
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
	bleq	lab56
	add	r4, r5
	eor	r6, r1, r3
	bic	r1, r1, ip, lsl #21
	bic	r3, r3, ip, lsl #21
	orrs	r5, r0, r1, lsl #12
	it	ne
	orrsne	r5, r2, r3, lsl #12
	orr	r1, r1, #1048576	
	orr	r3, r3, #1048576	
	beq	lab57
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
	bcs	lab58
	movs	lr, lr, lsl #1
	adcs	r5, r5
	adc	r6, r6, r6
lab58: 	orr	r1, r2, r6, lsl #11
	orr	r1, r1, r5, lsr #21
	mov	r0, r5, lsl #11
	orr	r0, r0, lr, lsr #21
	mov	lr, lr, lsl #11
	subs	ip, r4, #253	
	it	hi
	cmphi	ip, #1792	
	bhi	lab59
	cmp	lr, #2147483648	
	it	eq
	movseq	lr, r0, lsr #1
	adcs	r0, r0, #0
	adc	r1, r1, r4, lsl #20
	nop
	push {r1, r2}
	ldr r1, =4702
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab57: 	and	r6, r6, #2147483648	
	orr	r1, r6, r1
	orr	r0, r0, r2
	eor	r1, r1, r3
	subs	r4, r4, ip, lsr #1
	ittt	gt
	rsbsgt	r5, r4, ip
	orrgt	r1, r1, r4, lsl #20
	nop
	push {r1, r2}
	ldr r1, =4642
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popgt	{r4, r5, r6, pc}
	orr	r1, r1, #1048576	
	mov	lr, #0
	subs	r4, #1
lab59: 	bgt	lab60
	cmn	r4, #54	
	ittt	le
	movle	r0, #0
	andle	r1, r1, #2147483648	
	nop
	push {r1, r2}
	ldr r1, =4510
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pople	{r4, r5, r6, pc}
	rsb	r4, r4, #0
	subs	r4, #32
	bge	lab61
	adds	r4, #12
	bgt	lab62
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
lab62: 	rsb	r4, r4, #12
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
lab61: 	rsb	r5, r4, #32
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
lab67: 	teq	r4, #0
	bne	lab63
	and	r6, r1, #2147483648	
lab64: 	lsls	r0, r0, #1
	adc	r1, r1, r1
	tst	r1, #1048576	
	it	eq
	subeq	r4, #1
	beq	lab64
	orr	r1, r1, r6
	teq	r5, #0
	it	ne
	bxne	lr
lab63: 	and	r6, r3, #2147483648	
lab65: 	lsls	r2, r2, #1
	adc	r3, r3, r3
	tst	r3, #1048576	
	it	eq
	subeq	r5, #1
	beq	lab65
	orr	r3, r3, r6
	bx	lr
lab56: 	teq	r4, ip
	and	r5, ip, r3, lsr #20
	it	ne
	teqne	r5, ip
	beq	lab66
	orrs	r6, r0, r1, lsl #1
	it	ne
	orrsne	r6, r2, r3, lsl #1
	bne	lab67
lab79: 	eor	r1, r1, r3
	and	r1, r1, #2147483648	
	mov	r0, #0
	pop	{r4, r5, r6, pc}
lab66: 	orrs	r6, r0, r1, lsl #1
	itte	eq
	moveq	r0, r2
	moveq	r1, r3
	orrsne	r6, r2, r3, lsl #1
	beq	lab68
	teq	r4, ip
	bne	lab69
	orrs	r6, r0, r1, lsl #12
	bne	lab68
lab69: 	teq	r5, ip
	bne	lab70
	orrs	r6, r2, r3, lsl #12
	itt	ne
	movne	r0, r2
	movne	r1, r3
	bne	lab68
lab70: 	eor	r1, r1, r3
lab60: 	and	r1, r1, #2147483648	
	orr	r1, r1, #2130706432	
	orr	r1, r1, #15728640	
	mov	r0, #0
	nop
	push {r1, r2}
	ldr r1, =797
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab68: 	orr	r1, r1, #2130706432	
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
	bleq	lab71
	sub	r4, r4, r5
	eor	lr, r1, r3
	orrs	r5, r2, r3, lsl #12
	mov	r1, r1, lsl #12
	beq	lab72
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
	bcs	lab73
	lsrs	r3, r3, #1
	mov	r2, r2, rrx
lab73: 	subs	r6, r6, r2
	sbc	r5, r5, r3
	lsrs	r3, r3, #1
	mov	r2, r2, rrx
	mov	r0, #1048576	
	mov	ip, #524288	
lab75: 	subs	lr, r6, r2
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
	beq	lab74
	mov	r5, r5, lsl #4
	orr	r5, r5, r6, lsr #28
	mov	r6, r6, lsl #4
	mov	r3, r3, lsl #3
	orr	r3, r3, r2, lsr #29
	mov	r2, r2, lsl #3
	movs	ip, ip, lsr #4
	bne	lab75
	tst	r1, #1048576	
	bne	lab76
	orr	r1, r1, r0
	mov	r0, #0
	mov	ip, #2147483648	
	b	lab75
lab74: 	tst	r1, #1048576	
	itt	eq
	orreq	r1, r0
	moveq	r0, #0
lab76: 	subs	ip, r4, #253	
	it	hi
	cmphi	ip, #1792	
	bhi	lab59
	subs	ip, r5, r3
	itt	eq
	subseq	ip, r6, r2
	movseq	ip, r0, lsr #1
	adcs	r0, r0, #0
	adc	r1, r1, r4, lsl #20
	nop
	push {r1, r2}
	ldr r1, =2410
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
lab72: 	and	lr, lr, #2147483648	
	orr	r1, lr, r1, lsr #12
	adds	r4, r4, ip, lsr #1
	ittt	gt
	rsbsgt	r5, r4, ip
	orrgt	r1, r1, r4, lsl #20
	nop
	push {r1, r2}
	ldr r1, =5161
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	popgt	{r4, r5, r6, pc}
	orr	r1, r1, #1048576	
	mov	lr, #0
	subs	r4, #1
	b	lab59
	orr	lr, r5, r6
	b	lab59
lab71: 	and	r5, ip, r3, lsr #20
	teq	r4, ip
	it	eq
	teqeq	r5, ip
	beq	lab68
	teq	r4, ip
	bne	lab77
	orrs	r4, r0, r1, lsl #12
	bne	lab68
	teq	r5, ip
	bne	lab70
	mov	r0, r2
	mov	r1, r3
	b	lab68
lab77: 	teq	r5, ip
	bne	lab78
	orrs	r5, r2, r3, lsl #12
	beq	lab79
	mov	r0, r2
	mov	r1, r3
	b	lab68
lab78: 	orrs	r6, r0, r1, lsl #1
	it	ne
	orrsne	r6, r2, r3, lsl #1
	bne	lab67
	orrs	r4, r0, r1, lsl #1
	bne	lab70
	orrs	r5, r2, r3, lsl #1
	bne	lab79
	b	lab68
__gedf2:
	mov	ip, #4294967295	
	b	lab80
	nop
__ledf2:
	mov	ip, #1
	b	lab80
	nop
__cmpdf2:
	mov	ip, #1
lab80: 	str	ip, [sp, #-4]!
	mov	ip, r1, lsl #1
	mvns	ip, ip, asr #21
	mov	ip, r3, lsl #1
	it	ne
	mvnsne	ip, ip, asr #21
	beq	lab81
lab84: 	add	sp, #4
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
lab81: 	mov	ip, r1, lsl #1
	mvns	ip, ip, asr #21
	bne	lab82
	orrs	ip, r0, r1, lsl #12
	bne	lab83
lab82: 	mov	ip, r3, lsl #1
	mvns	ip, ip, asr #21
	bne	lab84
	orrs	ip, r2, r3, lsl #12
	beq	lab84
lab83: 	ldr	r0, [sp], #4
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
	ldr r1, =1920
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r0, pc}
__aeabi_dcmpeq:
	str	lr, [sp, #-8]!
push {r1, r2}
	ldr r1, =187
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdcmpeq
	push {r1, r2}
	ldr r1, =187
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
	ldr r1, =3157
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdcmpeq
	push {r1, r2}
	ldr r1, =3157
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
	ldr r1, =73
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdcmpeq
	push {r1, r2}
	ldr r1, =73
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
	ldr r1, =7937
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdrcmple
	push {r1, r2}
	ldr r1, =7937
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
	ldr r1, =604
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_cdrcmple
	push {r1, r2}
	ldr r1, =604
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
	bne	lab85
	orrs	ip, r0, r1, lsl #12
	bne	lab86
lab85: 	mov	ip, r3, lsl #1
	mvns	ip, ip, asr #21
	bne	lab87
	orrs	ip, r2, r3, lsl #12
	bne	lab86
lab87: 	mov	r0, #0
	bx	lr
lab86: 	mov	r0, #1
	bx	lr
sqrt:
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	mov	r5, r1
	bl	__ieee754_sqrt
	push {r1, r2}
	ldr r1, =3083
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
	bne lab88
	mov	r0, r4
	mov	r1, r5
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dcmplt
	cmp r0, #0
	bne lab89
lab88: 	mov	r0, r6
	mov	r1, r7
	nop
	push {r1, r2}
	ldr r1, =7210
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r3, r4, r5, r6, r7, pc}
lab89: 	bl	__errno
	movs	r2, #0
	movs	r3, #0
	movs	r1, #33	
	str	r1, [r0, #0]
	mov	r0, r2
	mov	r1, r3
push {r1, r2}
	ldr r1, =5459
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =5459
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
	ldr r1, =2660
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
	beq	lab90
	cmp	r1, #0
	mov	r3, r1
	mov	ip, r0
	ble	lab91
	asrs	r1, r1, #20
	beq	lab92
lab109: 	ubfx	r3, r3, #0, #20
	lsls	r0, r1, #31
	subw	r7, r1, #1023	
	orr	r3, r3, #1048576	
	bmi	lab93
	lsls	r3, r3, #1
	add	r3, r3, ip, lsr #31
	mov	ip, ip, lsl #1
lab93: 	mov	r2, ip, lsr #31
	movs	r6, #0
	add	r3, r2, r3, lsl #1
	asrs	r7, r7, #1
	mov	ip, ip, lsl #1
	mov	lr, #22
	mov	r4, r6
	mov	r2, #2097152	
lab95: 	adds	r1, r4, r2
	cmp	r1, r3
	bgt	lab94
	subs	r3, r3, r1
	adds	r4, r1, r2
	add	r6, r2
lab94: 	lsls	r3, r3, #1
	subs	lr, lr, #1
	add	r3, r3, ip, lsr #31
	mov	r2, r2, lsr #1
	mov	ip, ip, lsl #1
	bne	lab95
	mov	r5, lr
	movs	r0, #32
	mov	r2, #2147483648	
	b	lab96
lab99: 	beq	lab97
lab101: 	mov	r1, ip, lsr #31
	subs	r0, #1
	add	r3, r1, r3, lsl #1
	mov	ip, ip, lsl #1
	mov	r2, r2, lsr #1
	beq	lab98
lab96: 	cmp	r3, r4
	add	r1, r2, lr
	ble	lab99
	cmp	r1, #0
	add	lr, r1, r2
	blt	lab100
lab102: 	mov	r8, r4
lab103: 	subs	r3, r3, r4
	cmp	r1, ip
	it	hi
	addhi	r3, r3, #4294967295	
lab110: 	sub	ip, ip, r1
	add	r5, r2
	mov	r4, r8
	b	lab101
lab100: 	cmp	lr, #0
	blt	lab102
	add	r8, r4, #1
	b	lab103
lab91: 	bic	r2, r1, #2147483648	
	orrs	r2, r0
	beq	lab104
	cmp	r1, #0
	bne	lab105
lab106: 	mov	r2, ip, lsr #11
	subs	r1, #21
	mov	r3, r2
	mov	ip, ip, lsl #21
	cmp	r2, #0
	beq	lab106
	lsls	r6, r2, #11
	bmi	lab107
lab92: 	movs	r0, #0
lab108: 	lsls	r3, r3, #1
	lsls	r5, r3, #11
	mov	r4, r0
	add	r0, r0, #1
	bpl	lab108
	mov	r2, r3
	mov	r3, ip
	lsl	ip, ip, r0
	rsb	r0, r0, #32
lab113: 	lsrs	r3, r0
	subs	r1, r1, r4
	orrs	r3, r2
	b	lab109
lab97: 	cmp	r1, ip
	bhi	lab101
	cmp	r1, #0
	add	lr, r1, r2
	blt	lab100
	mov	r8, r3
	movs	r3, #0
	b	lab110
lab98: 	orrs	r3, r3, ip
	bne	lab111
	lsrs	r0, r5, #1
lab112: 	asrs	r3, r6, #1
	add	r3, r3, #1069547520	
	add	r3, r3, #2097152	
	lsls	r2, r6, #31
	it	mi
	orrmi	r0, r0, #2147483648	
	add	r9, r3, r7, lsl #20
	mov	r5, r0
	mov	r4, r9
lab104: 	mov	r0, r5
	mov	r1, r4
	nop
	push {r1, r2}
	ldr r1, =6683
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
lab111: 	adds	r1, r5, #1
	itet	ne
	addne	r0, r5, #1
	addeq	r6, #1
	lsrne	r0, r0, #1
	b	lab112
lab90: 	mov	r2, r0
	mov	r3, r1
push {r1, r2}
	ldr r1, =1267
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_dmul
	push {r1, r2}
	ldr r1, =1267
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r2, r5
	mov	r3, r4
push {r1, r2}
	ldr r1, =4568
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__adddf3
	push {r1, r2}
	ldr r1, =4568
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
	ldr r1, =305
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
lab105: 	mov	r2, r0
	bl	__aeabi_dsub
	mov	r2, r0
	mov	r3, r1
push {r1, r2}
	ldr r1, =428
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	__aeabi_ddiv
	push {r1, r2}
	ldr r1, =428
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	mov	r5, r0
	mov	r4, r1
	b	lab104
lab107: 	mov	r3, ip
	movs	r0, #32
	mov	r4, #4294967295	
	b	lab113
	nop
	.ltorg
__errno:
	ldr	r3, =0x2000014c	
	ldr	r0, [r3, #0]
	bx	lr
	nop
	.ltorg


	 .section .rodata

_global_impure_ptr:
	.word	0x20000150


	 .section .data

solar_bodies:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0xc9be45de
	.word	0x4043bd3c
	.word	0x343cd92c
	.word	0x40135da0
	.word	0xc01fdb7c
	.word	0xbff290ab
	.word	0x6c25ebf0
	.word	0xbfba86f9
	.word	0x00000000
	.word	0x00000000
	.word	0x9b93ccbc
	.word	0x3fe36706
	.word	0xf57d949b
	.word	0x40067ef2
	.word	0x9a5a0715
	.word	0xbf99d2d7
	.word	0xd9ab33d8
	.word	0x3fa34c95
	.word	0xc332ca67
	.word	0x4020afcd
	.word	0x31de01b0
	.word	0x40107fcb
	.word	0xe1eb467c
	.word	0xbfd9d353
	.word	0x00000000
	.word	0x00000000
	.word	0xb8879442
	.word	0xbff02c21
	.word	0xbf1f8f13
	.word	0x3ffd35e9
	.word	0x5f1123b4
	.word	0x3f813c48
	.word	0x0d07c637
	.word	0x3f871d49
	.word	0xcea7d9cf
	.word	0x4029c9ea
	.word	0xd626667e
	.word	0xc02e38e8
	.word	0xbe257da0
	.word	0xbfcc9557
	.word	0x00000000
	.word	0x00000000
	.word	0xa9911bef
	.word	0x3ff1531c
	.word	0x3e54bbc5
	.word	0x3febcc7f
	.word	0xfaf23e7c
	.word	0xbf862f6b
	.word	0x9cf41eb3
	.word	0x3f5c3dd2
	.word	0xa905572a
	.word	0x402ec267
	.word	0x33c8a220
	.word	0xc039eb58
	.word	0x93abe540
	.word	0x3fc6f1f3
	.word	0x00000000
	.word	0x00000000
	.word	0x1659bc4a
	.word	0x3fef54b6
	.word	0x31c4fba3
	.word	0x3fe307c6
	.word	0x587665f6
	.word	0xbfa1cb88
	.word	0x531799ac
	.word	0x3f60a8f3
SystemCoreClock:
	.word	0x00f42400


	 .section .data._impure_ptr

_impure_ptr:
	.word	0x20000150


	 .section .data.impure_data

impure_data:
	.word	0x00000000
	.word	0x2000043c
	.word	0x200004a4
	.word	0x2000050c
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
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
