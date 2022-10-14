	.cpu cortex-m4
	.text
	.thumb
	.syntax unified
	.global main
	.type main, %function

    .global SystemInit
	.type SystemInit, %function

generic_FH_TUERMODUL_CTRL.part.0:
	movw	r3, #68	
	movt	r3, #8192	
	ldrb	r2, [r3, #10]
	cmp r2, #0
	bne lab0
	movs	r2, #3
	strb	r2, [r3, #64]	
lab0: 	ldrb	r2, [r3, #19]
	cmp r2, #0
	bne lab1
	movs	r1, #1
	strb	r2, [r3, #0]
	strb	r1, [r3, #65]	
lab1: 	ldrb	r2, [r3, #66]	
	movs	r1, #1
	cmp	r2, #2
	strb	r1, [r3, #11]
	strb	r1, [r3, #20]
	beq	lab2
	cmp	r2, #3
	beq	lab3
	cmp	r2, r1
	beq	lab4
	movs	r1, #0
	movs	r2, #2
	strb	r1, [r3, #76]	
	strb	r2, [r3, #66]	
lab8: 	ldrb	r2, [r3, #132]	
	cmp	r2, #1
	beq	lab5
	movs	r1, #0
	movs	r2, #1
	strb	r1, [r3, #76]	
	str	r1, [r3, #68]	
	strb	r2, [r3, #132]	
	strb	r2, [r3, #140]	
lab7: 	ldrb	r1, [r3, #4]
	ldrb	r2, [r3, #6]
	strb	r1, [r3, #5]
	strb	r2, [r3, #7]
	bx	lr
lab5: 	ldrb	r2, [r3, #133]	
	cmp	r2, #1
	mov	r1, #0
	beq	lab6
	ldrb	r2, [r3, #140]	
	cmp	r2, #1
	beq	lab7
lab23: 	movs	r1, #0
	movs	r2, #1
	strb	r1, [r3, #76]	
	strb	r2, [r3, #140]	
	ldrb	r1, [r3, #4]
	ldrb	r2, [r3, #6]
	strb	r1, [r3, #5]
	strb	r2, [r3, #7]
	bx	lr
lab4: 	ldr	r2, [r3, #68]	
	cmp	r2, #59	
	bne	lab8
	ldr	r2, [r3, #72]	
	cmp	r2, #59	
	beq	lab8
	movs	r2, #3
	movs	r1, #0
	strb	r1, [r3, #76]	
	strb	r2, [r3, #66]	
	strb	r2, [r3, #77]	
	b	lab8
lab3: 	ldr	r2, [r3, #68]	
	cmp	r2, #60	
	ble	lab9
	ldr	r2, [r3, #72]	
	cmp	r2, #60	
	bgt	lab9
	ldrb	r2, [r3, #96]	
	ldrb	r0, [r3, #97]	
	orrs	r2, r0
	bne	lab9
	strb	r2, [r3, #76]	
	strb	r2, [r3, #81]	
	strb	r2, [r3, #95]	
	strb	r1, [r3, #66]	
	b	lab8
lab9: 	ldrb	r2, [r3, #78]	
	cmp r2, #0
	bne lab10
lab18: 	ldrb	r2, [r3, #77]	
	cmp	r2, #2
	beq	lab11
	cmp	r2, #3
	beq	lab12
	cmp	r2, #1
	beq	lab13
	movs	r1, #0
	movs	r2, #3
	strb	r1, [r3, #76]	
	strb	r2, [r3, #77]	
	b	lab8
lab2: 	ldrb	r2, [r3, #78]	
	cmp r2, #0
	beq lab14
	ldrb	r2, [r3, #79]	
	cmp r2, #0
	bne lab14
	ldrb	r1, [r3, #80]	
	cmp r1, #0
	beq lab14
	movs	r1, #3
	ldr	r0, [r3, #88]	
	strb	r2, [r3, #76]	
	strb	r2, [r3, #81]	
	str	r0, [r3, #84]	
	strb	r1, [r3, #66]	
	strb	r1, [r3, #77]	
	b	lab8
lab14: 	ldrb	r2, [r3, #92]	
	cmp	r2, #2
	beq	lab15
	cmp	r2, #3
	beq	lab16
	cmp	r2, #1
	beq	lab17
	movs	r1, #0
	movs	r2, #3
	strb	r1, [r3, #76]	
	strb	r2, [r3, #92]	
	b	lab8
lab10: 	ldrb	r2, [r3, #79]	
	cmp	r2, #0
	bne	lab18
	ldrb	r1, [r3, #98]	
	cmp r1, #0
	beq lab19
	movs	r0, #2
	movs	r1, #3
	strb	r2, [r3, #76]	
	strb	r2, [r3, #95]	
	ldr	r2, [r3, #88]	
	str	r2, [r3, #100]	
	strb	r0, [r3, #66]	
	strb	r1, [r3, #92]	
	b	lab8
lab17: 	ldrb	r2, [r3, #93]	
	cmp	r2, #0
	bne	lab8
	movs	r1, #3
	strb	r2, [r3, #76]	
	strb	r2, [r3, #81]	
	strb	r1, [r3, #92]	
	b	lab8
lab16: 	ldrb	r2, [r3, #94]	
	cmp	r2, #0
	bne	lab20
	ldrb	r1, [r3, #93]	
	cmp	r1, #0
	beq	lab8
	movs	r1, #1
	strb	r2, [r3, #76]	
	strb	r1, [r3, #81]	
	strb	r1, [r3, #92]	
	b	lab8
lab15: 	ldrb	r2, [r3, #94]	
	cmp	r2, #0
	bne	lab8
	movs	r1, #3
	strb	r2, [r3, #76]	
	strb	r2, [r3, #95]	
	strb	r1, [r3, #92]	
	b	lab8
lab19: 	ldrb	r2, [r3, #80]	
	cmp	r2, #0
	beq	lab18
	movs	r0, #2
	movs	r2, #3
	strb	r1, [r3, #76]	
	strb	r1, [r3, #81]	
	ldr	r1, [r3, #88]	
	str	r1, [r3, #104]	
	strb	r0, [r3, #66]	
	strb	r2, [r3, #92]	
	b	lab8
lab6: 	ldr	r2, [r3, #136]	
	cmp r2, #0
	beq lab21
	ldr	r0, [r3, #88]	
	subs	r2, r0, r2
	cmp	r2, #1
	beq	lab22
lab21: 	ldrb	r2, [r3, #140]	
	cmp	r2, #1
	bne	lab23
	ldr	r1, [r3, #144]	
	cmp	r1, #0
	beq	lab7
	ldr	r0, [r3, #88]	
	subs	r1, r0, r1
	cmp	r1, #3
	bne	lab7
	ldrb	r1, [r3, #80]	
	ldrb	r0, [r3, #98]	
	orrs	r1, r0
	bne	lab7
	ldr	r0, [r3, #68]	
	cmp	r0, #0
	ble	lab7
	subs	r0, #1
	strb	r1, [r3, #76]	
	str	r0, [r3, #68]	
	strb	r2, [r3, #140]	
	b	lab7
lab20: 	movs	r0, #0
	movs	r1, #1
	movs	r2, #2
	strb	r0, [r3, #76]	
	strb	r1, [r3, #95]	
	strb	r2, [r3, #92]	
	b	lab8
lab22: 	ldrb	ip, [r3, #80]	
	ldrb	r0, [r3, #98]	
	orrs	r0, ip, r0
	beq	lab21
	ldr	r0, [r3, #68]	
	strb	r1, [r3, #76]	
	adds	r0, #1
	str	r0, [r3, #68]	
	strb	r2, [r3, #132]	
	strb	r2, [r3, #140]	
	b	lab7
lab11: 	ldr	r1, [r3, #108]	
	cmp	r1, #0
	ble	lab24
	ldrb	r1, [r3, #115]	
	cmp	r1, #1
	beq	lab25
	cmp	r1, #2
	beq	lab26
	movs	r1, #1
	movs	r0, #0
	strb	r0, [r3, #76]	
	strb	r2, [r3, #115]	
	strb	r2, [r3, #124]	
	strb	r1, [r3, #17]
	strb	r1, [r3, #81]	
	b	lab8
lab12: 	ldrb	r2, [r3, #93]	
	cmp r2, #0
	beq lab27
	ldrb	r2, [r3, #113]	
	cmp r2, #0
	bne lab27
	ldr	r1, [r3, #108]	
	cmp	r1, #0
	ble	lab27
	movs	r1, #2
	movs	r0, #1
	strb	r2, [r3, #76]	
	strb	r1, [r3, #77]	
	strb	r1, [r3, #115]	
	strb	r1, [r3, #124]	
	strb	r0, [r3, #17]
	strb	r0, [r3, #81]	
	b	lab8
lab13: 	ldr	r1, [r3, #108]	
	cmp	r1, #404	
	ble	lab28
	movs	r2, #0
	movs	r1, #3
	strb	r2, [r3, #76]	
	strb	r2, [r3, #95]	
	strb	r1, [r3, #77]	
	b	lab8
lab27: 	ldrb	r2, [r3, #94]	
	cmp	r2, #0
	beq	lab8
	ldrb	r2, [r3, #114]	
	cmp	r2, #0
	bne	lab8
	ldr	r1, [r3, #108]	
	cmp	r1, #404	
	bgt	lab8
	movs	r1, #1
	movs	r0, #2
	strb	r2, [r3, #76]	
	strb	r1, [r3, #95]	
	strb	r1, [r3, #77]	
	strb	r0, [r3, #112]	
	b	lab8
lab24: 	movs	r2, #0
	movs	r1, #3
	strb	r2, [r3, #76]	
	strb	r2, [r3, #81]	
	strb	r1, [r3, #77]	
	b	lab8
lab28: 	ldrb	r1, [r3, #112]	
	cmp	r1, #1
	beq	lab29
	cmp	r1, #2
	beq	lab30
	movs	r1, #0
	movs	r2, #2
lab39: 	strb	r1, [r3, #76]	
	strb	r2, [r3, #112]	
	b	lab8
lab25: 	ldrb	r2, [r3, #94]	
	cmp r2, #0
	beq lab31
	ldrb	r2, [r3, #114]	
	cmp	r2, #0
	beq	lab24
lab31: 	ldrb	r2, [r3, #93]	
	cmp r2, #0
	beq lab32
	ldrb	r2, [r3, #113]	
	cmp	r2, #0
	beq	lab24
lab32: 	ldrb	r2, [r3, #116]	
	cmp	r2, #1
	beq	lab33
	cmp	r2, #2
	beq	lab34
	movs	r0, #0
	movs	r1, #2
	movs	r2, #1
	strb	r0, [r3, #76]	
	strb	r1, [r3, #116]	
	strb	r2, [r3, #17]
	b	lab8
lab26: 	ldrb	r2, [r3, #93]	
	cmp r2, #0
	bne lab35
	ldrb	r2, [r3, #113]	
	cmp	r2, #0
	bne	lab24
lab35: 	ldrb	r2, [r3, #124]	
	cmp	r2, #1
	beq	lab36
	cmp	r2, #2
	beq	lab37
	movs	r2, #1
	movs	r0, #0
	movs	r1, #2
	strb	r0, [r3, #76]	
	strb	r1, [r3, #124]	
	strb	r2, [r3, #17]
	strb	r2, [r3, #81]	
	b	lab8
lab30: 	ldrb	r1, [r3, #93]	
	cmp r1, #0
	beq lab38
	ldrb	r1, [r3, #113]	
	cmp	r1, #0
	beq	lab39
lab38: 	ldrb	r2, [r3, #94]	
	cmp	r2, #0
	bne	lab8
	ldrb	r2, [r3, #114]	
	cmp	r2, #0
	beq	lab8
lab41: 	movs	r2, #0
	movs	r1, #3
	strb	r2, [r3, #76]	
	strb	r2, [r3, #95]	
	strb	r1, [r3, #77]	
	strb	r2, [r3, #112]	
	b	lab8
lab29: 	ldrb	r2, [r3, #93]	
	cmp r2, #0
	beq lab40
	ldrb	r2, [r3, #113]	
	cmp	r2, #0
	beq	lab41
lab40: 	ldrb	r2, [r3, #94]	
	cmp	r2, #0
	beq	lab8
	ldrb	r2, [r3, #114]	
	cmp	r2, #0
	bne	lab8
	b	lab41
lab37: 	ldrb	r2, [r3, #24]
	cmp	r2, #0
	beq	lab42
	movs	r2, #1
	movs	r1, #0
	ldr	r0, [r3, #88]	
	strb	r1, [r3, #76]	
	strb	r1, [r3, #81]	
	strb	r2, [r3, #125]	
	strb	r2, [r3, #23]
	strb	r2, [r3, #124]	
	strb	r1, [r3, #17]
	str	r0, [r3, #128]	
	strb	r2, [r3, #95]	
	b	lab8
lab36: 	ldrb	r0, [r3, #22]
	movs	r1, #0
	strb	r1, [r3, #23]
	cmp	r0, #0
	beq	lab8
	movs	r0, #2
	strb	r1, [r3, #76]	
	strb	r1, [r3, #125]	
	strb	r0, [r3, #124]	
	strb	r1, [r3, #95]	
	strb	r2, [r3, #17]
	strb	r2, [r3, #81]	
	b	lab8
lab34: 	ldrb	r2, [r3, #24]
	cmp	r2, #0
	beq	lab8
	movs	r2, #1
	movs	r1, #0
	ldr	r0, [r3, #88]	
	strb	r1, [r3, #76]	
	strb	r2, [r3, #117]	
	strb	r2, [r3, #23]
	strb	r2, [r3, #116]	
	strb	r1, [r3, #17]
	strb	r1, [r3, #81]	
	str	r0, [r3, #120]	
	strb	r2, [r3, #95]	
	b	lab8
lab33: 	ldrb	r0, [r3, #22]
	movs	r1, #0
	strb	r1, [r3, #23]
	cmp	r0, #0
	beq	lab8
	movs	r0, #2
	strb	r1, [r3, #76]	
	strb	r2, [r3, #81]	
	strb	r1, [r3, #117]	
	strb	r0, [r3, #116]	
	strb	r1, [r3, #95]	
	strb	r2, [r3, #17]
	b	lab8
lab42: 	ldrb	r2, [r3, #94]	
	cmp	r2, #0
	beq	lab8
	ldrb	r2, [r3, #114]	
	cmp	r2, #0
	bne	lab8
	movs	r1, #1
	strb	r2, [r3, #76]	
	strb	r1, [r3, #115]	
	strb	r2, [r3, #124]	
	b	lab8
	nop
interface:
	movw	r3, #68	
	movt	r3, #8192	
	ldrb	r2, [r3, #4]
	cmp	r2, #0
	beq	lab43
	ldr	r2, [r3, #88]	
	str	r2, [r3, #144]	
lab52: 	str	r2, [r3, #136]	
lab51: 	ldr	r2, [r3, #100]	
	cmp r2, #0
	beq lab44
	ldr	r1, [r3, #88]	
	cmp	r2, r1
	beq	lab44
	movs	r2, #0
	strb	r2, [r3, #95]	
	str	r2, [r3, #100]	
lab44: 	ldr	r2, [r3, #104]	
	cmp r2, #0
	beq lab45
	ldr	r1, [r3, #88]	
	cmp	r2, r1
	beq	lab45
	movs	r2, #0
	strb	r2, [r3, #81]	
	str	r2, [r3, #104]	
lab45: 	ldr	r2, [r3, #84]	
	cmp r2, #0
	beq lab46
	ldr	r1, [r3, #88]	
	cmp	r2, r1
	beq	lab46
	movs	r2, #0
	strb	r2, [r3, #81]	
	str	r2, [r3, #84]	
lab46: 	ldr	r2, [r3, #120]	
	cmp r2, #0
	beq lab47
	ldr	r1, [r3, #88]	
	cmp	r2, r1
	itt	ne
	movne	r2, #0
	strne	r2, [r3, #120]	
lab47: 	ldr	r2, [r3, #128]	
	cmp r2, #0
	beq lab48
	ldr	r1, [r3, #88]	
	cmp	r2, r1
	itt	ne
	movne	r2, #0
	strne	r2, [r3, #128]	
lab48: 	ldrb	r2, [r3, #0]
	cmp r2, #0
	bne lab49
	ldrd	r1, r2, [r3, #148]	
	cmp	r1, r2
	beq	lab50
lab49: 	ldr	r2, [r3, #88]	
	str	r2, [r3, #156]	
	bx	lr
lab50: 	bx	lr
lab43: 	ldrb	r2, [r3, #6]
	cmp	r2, #0
	beq	lab51
	ldr	r2, [r3, #88]	
	b	lab52
	nop
init:
	movw	r3, #68	
	movt	r3, #8192	
	movs	r2, #0
	str	r2, [r3, #156]	
	str	r2, [r3, #136]	
	str	r2, [r3, #144]	
	strb	r2, [r3, #92]	
	strb	r2, [r3, #160]	
	strb	r2, [r3, #161]	
	strb	r2, [r3, #64]	
	strb	r2, [r3, #66]	
	strb	r2, [r3, #132]	
	strb	r2, [r3, #140]	
	strb	r2, [r3, #77]	
	strb	r2, [r3, #116]	
	strb	r2, [r3, #124]	
	strb	r2, [r3, #112]	
	strb	r2, [r3, #115]	
	strb	r2, [r3, #162]	
	strb	r2, [r3, #163]	
	strb	r2, [r3, #164]	
	strb	r2, [r3, #65]	
	bx	lr
generic_KINDERSICHERUNG_CTRL:
	movw	r3, #68	
	movt	r3, #8192	
	ldrb	r2, [r3, #10]
	cmp r2, #0
	beq lab53
	ldrb	r2, [r3, #64]	
	cmp	r2, #2
	beq	lab54
	cmp	r2, #3
	beq	lab55
	cmp	r2, #1
	beq	lab56
	movs	r1, #0
	movs	r2, #3
	strb	r1, [r3, #76]	
	strb	r2, [r3, #64]	
	bx	lr
lab53: 	bx	lr
lab54: 	ldrb	r2, [r3, #171]	
	cmp	r2, #0
	bne	lab57
	ldrb	r1, [r3, #172]	
	cmp	r1, #0
	beq	lab58
	ldrb	r1, [r3, #161]	
	cmp	r1, #1
	bne	lab59
	ldrb	r0, [r3, #174]	
	cmp	r0, #0
	bne	lab60
lab75: 	movs	r2, #1
	movs	r1, #0
	strb	r1, [r3, #76]	
	strb	r2, [r3, #167]	
	strb	r2, [r3, #161]	
	bx	lr
lab56: 	ldrb	r2, [r3, #165]	
	cmp	r2, #0
	bne	lab61
	ldrb	r1, [r3, #166]	
	cmp	r1, #0
	beq	lab62
	ldrb	r1, [r3, #160]	
	cmp	r1, #1
	bne	lab59
	ldrb	r0, [r3, #170]	
	cmp	r0, #0
	bne	lab63
lab74: 	movs	r2, #1
	movs	r1, #0
	strb	r1, [r3, #76]	
	strb	r2, [r3, #167]	
	strb	r2, [r3, #160]	
	bx	lr
lab55: 	ldrb	r2, [r3, #175]	
	cmp r2, #0
	bne lab64
	ldrb	r1, [r3, #172]	
	cmp	r1, #0
	beq	lab65
	ldrb	r1, [r3, #171]	
	cmp	r1, #0
	bne	lab66
	movs	r0, #1
	movs	r2, #2
	strb	r1, [r3, #76]	
	strb	r0, [r3, #167]	
	strb	r2, [r3, #64]	
	bx	lr
lab64: 	ldrb	r1, [r3, #166]	
	cmp r1, #0
	bne lab67
	ldrb	r1, [r3, #165]	
	cmp	r1, #0
	beq	lab53
	cmp	r2, #0
	bne	lab53
	movs	r1, #1
	strb	r2, [r3, #76]	
	strb	r1, [r3, #168]	
	strb	r1, [r3, #64]	
	bx	lr
lab57: 	ldrb	r2, [r3, #161]	
	cmp	r2, #1
	beq	lab68
lab59: 	movs	r2, #0
	strb	r2, [r3, #76]	
	bx	lr
lab61: 	ldrb	r2, [r3, #160]	
	cmp	r2, #1
	bne	lab59
	ldrb	r1, [r3, #169]	
	cmp	r1, #0
	bne	lab69
	strb	r1, [r3, #76]	
	strb	r2, [r3, #168]	
	strb	r2, [r3, #160]	
	bx	lr
lab67: 	ldrb	r1, [r3, #165]	
	cmp	r1, #0
	beq	lab70
	movs	r2, #1
	movs	r1, #0
	strb	r1, [r3, #76]	
	strb	r2, [r3, #168]	
	strb	r2, [r3, #167]	
	strb	r2, [r3, #64]	
	bx	lr
lab58: 	movs	r2, #3
	strb	r1, [r3, #76]	
	strb	r1, [r3, #167]	
	strb	r1, [r3, #168]	
	strb	r2, [r3, #64]	
	strb	r1, [r3, #161]	
	bx	lr
lab62: 	movs	r2, #3
	strb	r1, [r3, #76]	
	strb	r1, [r3, #167]	
	strb	r1, [r3, #168]	
	strb	r2, [r3, #64]	
	strb	r1, [r3, #160]	
	bx	lr
lab65: 	ldrb	r0, [r3, #171]	
	cmp	r0, #0
	beq	lab64
	movs	r0, #1
	movs	r2, #2
	strb	r1, [r3, #76]	
	strb	r0, [r3, #168]	
	strb	r2, [r3, #64]	
	bx	lr
lab68: 	ldrb	r1, [r3, #173]	
	cmp r1, #0
	bne lab71
	strb	r1, [r3, #76]	
	strb	r2, [r3, #168]	
	strb	r2, [r3, #161]	
	bx	lr
lab70: 	cmp	r2, #0
	bne	lab53
	movs	r1, #1
	strb	r2, [r3, #76]	
	strb	r1, [r3, #167]	
	strb	r1, [r3, #64]	
	bx	lr
lab66: 	movs	r1, #1
	movs	r0, #2
	strb	r2, [r3, #76]	
	strb	r1, [r3, #167]	
	strb	r1, [r3, #168]	
	strb	r0, [r3, #64]	
	bx	lr
lab71: 	ldrb	r1, [r3, #172]	
	cmp	r1, #0
	bne	lab72
	ldrb	r0, [r3, #174]	
	cmp	r0, #0
	beq	lab53
	strb	r1, [r3, #76]	
	strb	r1, [r3, #167]	
	strb	r2, [r3, #161]	
	bx	lr
lab69: 	ldrb	r1, [r3, #166]	
	cmp r1, #0
	bne lab73
	ldrb	r0, [r3, #170]	
	cmp	r0, #0
	beq	lab53
	strb	r1, [r3, #76]	
	strb	r1, [r3, #167]	
	strb	r2, [r3, #160]	
	bx	lr
lab63: 	ldrb	r0, [r3, #169]	
	cmp	r0, #0
	beq	lab53
	strb	r2, [r3, #76]	
	strb	r2, [r3, #168]	
	strb	r1, [r3, #160]	
	bx	lr
lab60: 	ldrb	r0, [r3, #173]	
	cmp	r0, #0
	beq	lab53
	strb	r2, [r3, #76]	
	strb	r2, [r3, #168]	
	strb	r1, [r3, #161]	
	bx	lr
lab73: 	ldrb	r2, [r3, #170]	
	cmp	r2, #0
	beq	lab74
	bx	lr
lab72: 	ldrb	r2, [r3, #174]	
	cmp	r2, #0
	beq	lab75
	bx	lr
	nop
generic_FH_TUERMODUL_CTRL:
	movw	r3, #68	
	movt	r3, #8192	
	ldrb	r2, [r3, #13]
	cmp r2, #0
	bne lab76
	ldrb	r2, [r3, #15]
	cmp r2, #0
	beq lab77
	ldrb	r2, [r3, #14]
	cmp r2, #0
	bne lab77
	strb	r2, [r3, #4]
	strb	r2, [r3, #6]
	bx	lr
lab77: 	bx	lr
lab76: 	b	generic_FH_TUERMODUL_CTRL.part.0
generic_EINKLEMMSCHUTZ_CTRL:
	movw	r3, #68	
	movt	r3, #8192	
	ldrb	r2, [r3, #16]
	cmp r2, #0
	beq lab78
	ldrb	r2, [r3, #163]	
	cmp	r2, #1
	beq	lab79
	cmp	r2, #2
	beq	lab80
	movs	r1, #0
	movs	r2, #1
	strb	r1, [r3, #76]	
	strb	r2, [r3, #163]	
lab78: 	bx	lr
lab79: 	ldrb	r2, [r3, #176]	
	cmp	r2, #0
	beq	lab78
	ldrb	r2, [r3, #177]	
	cmp	r2, #0
	bne	lab78
	ldrb	r2, [r3, #93]	
	cmp r2, #0
	beq lab81
	ldrb	r2, [r3, #94]	
	cmp	r2, #0
	bne	lab78
lab81: 	movs	r0, #0
	movs	r1, #1
	movs	r2, #2
	strb	r0, [r3, #76]	
	strb	r1, [r3, #24]
	strb	r2, [r3, #163]	
	bx	lr
lab80: 	ldrb	r2, [r3, #176]	
	movs	r1, #0
	strb	r1, [r3, #24]
	cmp	r2, #0
	bne	lab78
	ldrb	r1, [r3, #177]	
	cmp	r1, #0
	beq	lab78
	movs	r1, #1
	strb	r2, [r3, #76]	
	strb	r1, [r3, #163]	
	bx	lr
	nop
generic_BLOCK_ERKENNUNG_CTRL:
	movw	r3, #68	
	movt	r3, #8192	
	ldrb	r2, [r3, #19]
	cmp r2, #0
	bne lab82
	ldrb	r2, [r3, #21]
	cmp r2, #0
	beq lab83
	ldrb	r2, [r3, #20]
	cmp r2, #0
	bne lab83
lab92: 	strb	r2, [r3, #0]
	bx	lr
lab83: 	bx	lr
lab82: 	ldrb	r2, [r3, #65]	
	cmp	r2, #1
	beq	lab84
	cmp	r2, #2
	beq	lab85
	movs	r1, #0
	movs	r2, #1
	strb	r1, [r3, #76]	
	strb	r2, [r3, #65]	
	bx	lr
lab85: 	ldrb	r2, [r3, #98]	
	cmp r2, #0
	bne lab86
	ldrb	r2, [r3, #196]	
	cmp r2, #0
	bne lab87
lab86: 	ldrb	r2, [r3, #80]	
	cmp r2, #0
	bne lab88
	ldrb	r2, [r3, #197]	
	cmp r2, #0
	bne lab87
lab88: 	ldrb	r2, [r3, #164]	
	cmp	r2, #2
	beq	lab89
	cmp	r2, #3
	beq	lab90
	cmp	r2, #1
	beq	lab91
	movs	r2, #0
	movs	r0, #3
	movs	r1, #1
	push	{r4}
	movs	r4, #2
	strb	r2, [r3, #76]	
	strb	r0, [r3, #164]	
	strb	r1, [r3, #0]
	str	r4, [r3, #192]	
	str	r2, [r3, #148]	
	pop	{r4}
	bx	lr
lab87: 	movs	r2, #0
	movs	r1, #1
	strb	r2, [r3, #76]	
	strb	r1, [r3, #65]	
	strb	r2, [r3, #164]	
	bx	lr
lab84: 	ldrd	r1, r0, [r3, #180]	
	cmp	r1, r0
	beq	lab83
	cmp	r1, #0
	ble	lab83
	movs	r1, #0
	movs	r0, #2
	mov	ip, #3
	strb	r1, [r3, #76]	
	strb	r1, [r3, #188]	
	strb	r0, [r3, #65]	
	str	r1, [r3, #148]	
	str	r0, [r3, #192]	
	strb	ip, [r3, #164]	
	b	lab92
lab91: 	bx	lr
lab90: 	ldr	r1, [r3, #148]	
	movs	r2, #0
	cmp	r1, #11
	strb	r2, [r3, #0]
	bne	lab83
	ldr	r1, [r3, #152]	
	cmp	r1, #11
	beq	lab83
	movs	r1, #2
	strb	r2, [r3, #76]	
	strb	r1, [r3, #164]	
	bx	lr
lab89: 	ldr	r2, [r3, #192]	
	ldr	r1, [r3, #180]	
	subs	r2, #1
	cmp	r2, r1
	bgt	lab83
	movs	r2, #1
	movs	r1, #0
	strb	r1, [r3, #76]	
	strb	r2, [r3, #188]	
	strb	r2, [r3, #164]	
	bx	lr
	nop
FH_DU:
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r4, #68	
	movt	r4, #8192	
	sub	sp, #12
	ldrb	r2, [r4, #201]	
	str	r2, [sp, #0]
	movs	r5, #1
	ldrb	r8, [r4, #10]
	ldrb	lr, [r4, #16]
	ldrb	ip, [r4, #19]
	ldrb	r0, [r4, #13]
	ldrb	r3, [r4, #198]	
	ldrb	r9, [r4, #199]	
	ldrb	r7, [r4, #200]	
	ldrb	r2, [r4, #202]	
	ldrb	sl, [r4, #203]	
	ldrb	r6, [r4, #204]	
	ldrb	fp, [r4, #205]	
	str	r5, [r4, #88]	
	movs	r1, #0
lab110: 	adds	r1, #1
	strb	r1, [r4, #133]	
	ldrb	r1, [r4, #162]	
	strb	r5, [r4, #76]	
	cmp	r1, #2
	beq	lab93
	cmp	r1, #3
	beq	lab94
	cmp	r1, #1
	beq	lab95
lab119: 	mov	r1, #0
	strb	r1, [r4, #76]	
	movs	r1, #0
	str	r1, [r4, #208]	
	movs	r1, #2
	strb	r1, [r4, #162]	
lab118: 	cmp	r8, #0
	bne	lab96
	movs	r1, #3
	strb	r1, [r4, #64]	
lab96: 	cmp	lr, #0
	bne	lab97
	strb	r5, [r4, #163]	
lab97: 	cmp	ip, #0
	bne	lab98
	strb	ip, [r4]
	strb	r5, [r4, #65]	
lab98: 	cmp r0, #0
	bne lab99
	movs	r1, #2
	strb	r1, [r4, #66]	
	mov	r1, #256	
	strb	r0, [r4, #6]
	str	r0, [r4, #68]	
	strb	r5, [r4, #132]	
	strb	r5, [r4, #140]	
	strh	r1, [r4, #4]
lab99: 	cmp	r3, r9
	strb	r5, [r4, #11]
	strb	r5, [r4, #17]
	strb	r5, [r4, #20]
	strb	r5, [r4, #14]
	beq	lab100
	ldrb	r1, [r4, #215]	
	cmp	r1, #0
	bne	lab101
	cmp	r2, sl
	strb	r3, [r4, #214]	
	beq	lab102
lab111: 	cmp	r6, fp
	beq	lab103
lab113: 	strb	fp, [r4, #216]	
lab114: 	ldrb	r0, [r4, #12]
	ldrb	r1, [r4, #15]
	ldrb	ip, [r4, #217]	
	ldrb	r7, [r4, #18]
	ldrb	r6, [r4, #21]
	ldrb	r2, [r4, #218]	
	str	r1, [sp, #4]
	str	ip, [sp]
	strb	r0, [r4, #10]
	strb	r1, [r4, #13]
	strb	r7, [r4, #16]
	strb	r6, [r4, #19]
	strb	ip, [r4, #171]	
	strb	fp, [r4, #165]	
	strb	r2, [r4, #172]	
	strb	r3, [r4, #166]	
	cmp r0, #0
	beq lab104
	ldrb	r0, [r4, #64]	
	cmp	r0, #2
	beq	lab105
	cmp	r0, #3
	beq	lab106
	cmp	r0, #1
	beq	lab107
	mov	r1, #0
	movs	r0, #3
	strb	r1, [r4, #76]	
	strb	r0, [r4, #64]	
lab104: 	ldrb	r0, [r4, #175]	
lab123: 	ldr	r1, [sp, #4]
	ldrb	sl, [r4, #98]	
	ldrb	r9, [r4, #80]	
	ldr	r8, [r4, #180]	
	ldrb	lr, [r4, #176]	
	ldr	ip, [r4, #108]	
	ldrb	r7, [r4, #232]	
	ldrb	r6, [r4, #78]	
	strb	sl, [r4, #212]	
	strb	r9, [r4, #206]	
	str	r8, [r4, #220]	
	strb	r0, [r4, #234]	
	strb	lr, [r4, #224]	
	str	ip, [r4, #228]	
	strb	r7, [r4, #233]	
	strb	r6, [r4, #235]	
	cmp r1, #0
	beq lab108
	bl	generic_FH_TUERMODUL_CTRL.part.0
	ldrb	r3, [r4, #171]	
	str	r3, [sp, #0]
	ldrb	sl, [r4, #98]	
	ldrb	r9, [r4, #80]	
	ldr	r8, [r4, #180]	
	ldrb	lr, [r4, #176]	
	ldr	ip, [r4, #108]	
	ldrb	r7, [r4, #232]	
	ldrb	fp, [r4, #165]	
	ldrb	r2, [r4, #172]	
	ldrb	r3, [r4, #166]	
	ldrb	r0, [r4, #175]	
	ldrb	r6, [r4, #78]	
lab108: 	strb	r3, [r4, #214]	
	ldr	r3, [sp, #0]
	strb	r9, [r4, #206]	
	str	r8, [r4, #220]	
	strb	lr, [r4, #224]	
	str	ip, [r4, #228]	
	strb	r7, [r4, #233]	
	strb	r3, [r4, #217]	
	strb	r2, [r4, #218]	
	strb	r0, [r4, #234]	
	strb	r6, [r4, #235]	
	strb	sl, [r4, #212]	
	strb	fp, [r4, #216]	
	bl	generic_EINKLEMMSCHUTZ_CTRL
	ldrb	r1, [r4, #98]	
	ldrb	r2, [r4, #80]	
	ldr	r3, [r4, #180]	
	ldrb	r8, [r4, #176]	
	ldr	r7, [r4, #108]	
	ldrb	lr, [r4, #232]	
	ldrb	ip, [r4, #171]	
	ldrb	r6, [r4, #165]	
	ldrb	r0, [r4, #172]	
	strb	r1, [r4, #212]	
	strb	r2, [r4, #206]	
	ldrb	r1, [r4, #166]	
	ldrb	r2, [r4, #175]	
	str	r3, [r4, #220]	
	ldrb	r3, [r4, #78]	
	strb	r8, [r4, #224]	
	str	r7, [r4, #228]	
	strb	lr, [r4, #233]	
	strb	ip, [r4, #217]	
	strb	r6, [r4, #216]	
	strb	r0, [r4, #218]	
	strb	r1, [r4, #214]	
	strb	r2, [r4, #234]	
	strb	r3, [r4, #235]	
	bl	generic_BLOCK_ERKENNUNG_CTRL
	ldr	r3, [r4, #180]	
	ldrb	r0, [r4, #232]	
	ldrb	lr, [r4, #175]	
	ldr	ip, [r4, #108]	
	str	r3, [r4, #220]	
	str	r3, [r4, #184]	
	str	r3, [r4, #240]	
	ldr	r3, [r4, #68]	
	ldrb	r1, [r4, #176]	
	ldrb	r2, [r4, #171]	
	ldrb	r6, [r4, #165]	
	ldrb	r7, [r4, #172]	
	ldrb	r9, [r4, #166]	
	ldrb	r8, [r4, #10]
	str	ip, [r4, #228]	
	strb	r0, [r4, #233]	
	ldrb	ip, [r4, #19]
	ldrb	r0, [r4, #13]
	strb	lr, [r4, #234]	
	str	r3, [r4, #72]	
	ldrb	lr, [r4, #16]
	ldr	r3, [r4, #236]	
	strb	r1, [r4, #224]	
	strb	r2, [r4, #217]	
	strb	r6, [r4, #216]	
	strb	r7, [r4, #218]	
	strb	r9, [r4, #214]	
	strb	r8, [r4, #11]
	strb	r0, [r4, #14]
	strb	lr, [r4, #17]
	strb	ip, [r4, #20]
	str	r3, [r4, #208]	
	ldr	r3, [r4, #148]	
	str	r3, [r4, #152]	
	strb	r7, [r4, #174]	
	ldrb	r3, [r4, #168]	
	ldrb	r7, [r4, #81]	
	strb	r6, [r4, #169]	
	strb	r2, [r4, #173]	
	ldrb	r6, [r4, #167]	
	ldrb	r2, [r4, #95]	
	strb	r9, [r4, #170]	
	strb	r6, [r4, #93]	
	ldrb	r9, [r4, #188]	
	strb	r6, [r4, #113]	
	strb	r3, [r4, #94]	
	ldrb	r6, [r4, #205]	
	strb	r3, [r4, #114]	
	strb	r7, [r4, #80]	
	ldrb	r3, [r4, #198]	
	strb	r7, [r4, #197]	
	strb	r2, [r4, #98]	
	ldrb	r7, [r4, #200]	
	strb	r2, [r4, #196]	
	strb	r1, [r4, #177]	
	ldrb	r2, [r4, #202]	
	strb	r1, [r4, #244]	
	ldrb	r1, [r4, #245]	
	strb	r9, [r4, #78]	
	strb	r9, [r4, #79]	
	strb	r6, [r4, #204]	
	strb	r3, [r4, #199]	
	strb	r2, [r4, #203]	
	strb	r7, [r4, #201]	
	strb	r1, [r4, #235]	
	strb	r1, [r4, #246]	
	ldrb	r1, [r4, #247]	
	strb	r1, [r4, #206]	
	strb	r1, [r4, #207]	
	ldrb	r1, [r4, #248]	
	strb	r1, [r4, #212]	
	strb	r1, [r4, #213]	
	ldrb	r1, [r4, #76]	
	cmp	r1, #0
	bne	lab109
	ldrb	r1, [r4, #133]	
	str	r7, [sp, #0]
	mov	fp, r6
	mov	sl, r2
	mov	r9, r3
	b	lab110
lab100: 	cmp	r2, sl
	ldrb	r3, [r4, #214]	
	beq	lab102
	ldrb	r1, [r4, #215]	
	cmp	r1, #0
	beq	lab111
lab115: 	strb	r2, [r4, #198]	
lab102: 	cmp	r6, fp
	beq	lab112
	ldrb	r2, [r4, #215]	
	cmp	r2, #0
	beq	lab113
lab116: 	ldr	r2, [sp, #0]
	cmp	r7, r2
	beq	lab103
lab117: 	ldrb	fp, [r4, #216]	
	strb	r7, [r4, #205]	
	b	lab114
lab101: 	cmp	r2, sl
	ldrb	r3, [r4, #214]	
	bne	lab115
	cmp	r6, fp
	bne	lab116
lab112: 	ldr	r2, [sp, #0]
	cmp	r7, r2
	beq	lab103
	ldrb	r2, [r4, #215]	
	cmp	r2, #0
	bne	lab117
lab103: 	ldrb	fp, [r4, #216]	
	b	lab114
lab94: 	ldrb	r1, [r4, #212]	
	cmp	r1, #0
	bne	lab118
	ldrb	r1, [r4, #213]	
	cmp	r1, #0
	bne	lab119
	b	lab118
lab93: 	ldrb	r1, [r4, #206]	
	cmp r1, #0
	beq lab120
	ldrb	r1, [r4, #207]	
	cmp r1, #0
	bne lab120
	strb	r1, [r4, #76]	
	mvn	r1, #99	
	strb	r5, [r4, #162]	
	str	r1, [r4, #208]	
	b	lab118
lab95: 	ldrb	r1, [r4, #206]	
	cmp	r1, #0
	bne	lab118
	ldrb	r1, [r4, #207]	
	cmp	r1, #0
	beq	lab118
	b	lab119
lab120: 	ldrb	r1, [r4, #212]	
	cmp	r1, #0
	beq	lab118
	ldrb	r1, [r4, #213]	
	cmp	r1, #0
	bne	lab118
	strb	r1, [r4, #76]	
	movs	r1, #100	
	str	r1, [r4, #208]	
	movs	r1, #3
	strb	r1, [r4, #162]	
	b	lab118
lab107: 	cmp	fp, #0
	bne	lab121
	cmp	r3, #0
	bne	lab122
	movs	r0, #3
	strb	r0, [r4, #64]	
	strb	r3, [r4, #76]	
	ldrb	r0, [r4, #175]	
	strb	r3, [r4, #167]	
	strb	r3, [r4, #168]	
	strb	r3, [r4, #160]	
	b	lab123
lab106: 	ldrb	r0, [r4, #175]	
	cmp r0, #0
	bne lab124
	mov	r1, ip
	cmp	r2, #0
	bne	lab125
	cmp r1, #0
	beq lab124
	movs	r6, #2
	strb	r2, [r4, #76]	
	strb	r5, [r4, #168]	
	strb	r6, [r4, #64]	
	b	lab123
lab105: 	mov	r1, ip
	cmp r1, #0
	bne lab126
	cmp	r2, #0
	bne	lab127
	movs	r0, #3
	strb	r0, [r4, #64]	
	strb	r2, [r4, #76]	
	ldrb	r0, [r4, #175]	
	strb	r2, [r4, #167]	
	strb	r2, [r4, #168]	
	strb	r2, [r4, #161]	
	b	lab123
lab109: 	add	sp, #12
	nop
	push {r1, r2}
	ldr r1, =5597
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
lab124: 	cmp r3, #0
	bne lab128
	cmp	fp, #0
	beq	lab123
	cmp	r0, #0
	bne	lab123
	strb	r0, [r4, #76]	
	strb	r5, [r4, #168]	
	strb	r5, [r4, #64]	
	b	lab123
lab126: 	ldrb	r0, [r4, #161]	
	cmp	r0, #1
	beq	lab129
lab130: 	mov	r1, #0
	ldrb	r0, [r4, #175]	
	strb	r1, [r4, #76]	
	b	lab123
lab121: 	ldrb	r0, [r4, #160]	
	cmp	r0, #1
	bne	lab130
	ldrb	r6, [r4, #169]	
	cmp	r6, #0
	bne	lab131
	strb	r0, [r4, #168]	
	strb	r0, [r4, #160]	
	strb	r6, [r4, #76]	
	ldrb	r0, [r4, #175]	
	b	lab123
lab128: 	cmp	fp, #0
	bne	lab132
	cmp	r0, #0
	bne	lab123
	strb	r0, [r4, #76]	
	strb	r5, [r4, #167]	
	strb	r5, [r4, #64]	
	b	lab123
lab127: 	ldrb	r0, [r4, #161]	
	cmp	r0, #1
	bne	lab130
	ldrb	r6, [r4, #174]	
	cmp	r6, #0
	bne	lab133
lab140: 	mov	r1, #0
	ldrb	r0, [r4, #175]	
	strb	r1, [r4, #76]	
	strb	r5, [r4, #167]	
	strb	r5, [r4, #161]	
	b	lab123
lab125: 	cmp r1, #0
	beq lab134
	movs	r6, #2
	strb	r0, [r4, #76]	
	strb	r5, [r4, #167]	
	strb	r5, [r4, #168]	
	strb	r6, [r4, #64]	
	b	lab123
lab122: 	ldrb	r0, [r4, #160]	
	cmp	r0, #1
	bne	lab130
	ldrb	r6, [r4, #170]	
	cmp	r6, #0
	bne	lab135
lab139: 	mov	r1, #0
	ldrb	r0, [r4, #175]	
	strb	r1, [r4, #76]	
	strb	r5, [r4, #167]	
	strb	r5, [r4, #160]	
	b	lab123
lab132: 	mov	r1, #0
	strb	r1, [r4, #76]	
	strb	r5, [r4, #168]	
	strb	r5, [r4, #167]	
	strb	r5, [r4, #64]	
	b	lab123
lab129: 	ldrb	r6, [r4, #173]	
	cmp r6, #0
	bne lab136
	strb	r0, [r4, #168]	
	strb	r0, [r4, #161]	
	strb	r6, [r4, #76]	
	ldrb	r0, [r4, #175]	
	b	lab123
lab134: 	movs	r6, #2
	strb	ip, [r4, #76]	
	strb	r5, [r4, #167]	
	strb	r6, [r4, #64]	
	b	lab123
lab136: 	cmp	r2, #0
	bne	lab137
	ldrb	r6, [r4, #174]	
	cmp	r6, #0
	beq	lab104
	strb	r0, [r4, #161]	
	strb	r2, [r4, #76]	
	ldrb	r0, [r4, #175]	
	strb	r2, [r4, #167]	
	b	lab123
lab131: 	cmp r3, #0
	bne lab138
	ldrb	r6, [r4, #170]	
	cmp	r6, #0
	beq	lab104
	strb	r0, [r4, #160]	
	strb	r3, [r4, #76]	
	ldrb	r0, [r4, #175]	
	strb	r3, [r4, #167]	
	b	lab123
lab133: 	ldrb	r6, [r4, #173]	
	cmp	r6, #0
	beq	lab104
	strb	r0, [r4, #161]	
	strb	r1, [r4, #76]	
	ldrb	r0, [r4, #175]	
	strb	r1, [r4, #168]	
	b	lab123
lab135: 	ldrb	r6, [r4, #169]	
	cmp	r6, #0
	beq	lab104
	strb	r0, [r4, #160]	
	strb	fp, [r4, #76]	
	ldrb	r0, [r4, #175]	
	strb	fp, [r4, #168]	
	b	lab123
lab138: 	ldrb	r0, [r4, #170]	
	cmp	r0, #0
	beq	lab139
	b	lab104
lab137: 	ldrb	r0, [r4, #174]	
	cmp	r0, #0
	beq	lab140
	b	lab104
benchmark_body.constprop.0:
	push	{r4, r5, r6, lr}
	mov	r6, #2272	
	movw	r4, #68	
	movt	r6, #5
	movt	r4, #8192	
	movs	r5, #0
lab141: 	movs	r2, #64	
	movs	r1, #0
	mov	r0, r4
push {r1, r2}
	ldr r1, =1439
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =1439
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r5, [r4, #156]	
	str	r5, [r4, #136]	
	str	r5, [r4, #144]	
	strb	r5, [r4, #92]	
	strb	r5, [r4, #160]	
	strb	r5, [r4, #161]	
	strb	r5, [r4, #64]	
	strb	r5, [r4, #66]	
	strb	r5, [r4, #132]	
	strb	r5, [r4, #140]	
	strb	r5, [r4, #77]	
	strb	r5, [r4, #116]	
	strb	r5, [r4, #124]	
	strb	r5, [r4, #112]	
	strb	r5, [r4, #115]	
	strb	r5, [r4, #162]	
	strb	r5, [r4, #163]	
	strb	r5, [r4, #164]	
	strb	r5, [r4, #65]	
	bl	interface
push {r1, r2}
	ldr r1, =1228
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	FH_DU
	push {r1, r2}
	ldr r1, =1228
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	subs	r6, #1
	bne	lab141
	mov	r0, r6
	nop
	push {r1, r2}
	ldr r1, =4460
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	pop	{r4, r5, r6, pc}
	nop
benchmark_body.isra.0:
	push	{r3, r4, r5, r6, r7, lr}
	subs	r7, r0, #0
	ble	lab142
	movs	r6, #0
	movw	r4, #68	
	movt	r4, #8192	
	mov	r5, r6
lab143: 	movs	r2, #64	
	movs	r1, #0
	mov	r0, r4
	adds	r6, #1
push {r1, r2}
	ldr r1, =4182
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	memset
	push {r1, r2}
	ldr r1, =4182
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	str	r5, [r4, #156]	
	str	r5, [r4, #136]	
	str	r5, [r4, #144]	
	strb	r5, [r4, #92]	
	strb	r5, [r4, #160]	
	strb	r5, [r4, #161]	
	strb	r5, [r4, #64]	
	strb	r5, [r4, #66]	
	strb	r5, [r4, #132]	
	strb	r5, [r4, #140]	
	strb	r5, [r4, #77]	
	strb	r5, [r4, #116]	
	strb	r5, [r4, #124]	
	strb	r5, [r4, #112]	
	strb	r5, [r4, #115]	
	strb	r5, [r4, #162]	
	strb	r5, [r4, #163]	
	strb	r5, [r4, #164]	
	strb	r5, [r4, #65]	
	bl	interface
push {r1, r2}
	ldr r1, =878
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	FH_DU
	push {r1, r2}
	ldr r1, =878
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	cmp	r6, r7
	bne	lab143
lab142:	nop
	push {r1, r2}
	ldr r1, =89
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r3, r4, r5, r6, r7, pc}
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
	movw	ip, #0
	movt	ip, #8192	
	ldmia	ip!, {r0, r1, r2, r3}
	sub	sp, #68	
	mov	lr, sp
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1, r2, r3}
	stmia	lr, {r0, r1, r2, r3}
	movw	lr, #68	
	movt	lr, #8192	
	mov	r3, lr
	mov	r2, sp
	add	ip, lr, #64	
	b	lab144
lab146: 	cmp	r3, ip
	beq	lab145
lab144: 	ldrb	r0, [r3], #1
	ldrb	r1, [r2], #1
	cmp	r0, r1
	beq	lab146
lab147: 	movs	r0, #0
lab148: 	add	sp, #68	
	ldr	pc, [sp], #4
lab145: 	ldr	r3, [lr, #156]	
	ldr	r2, [lr, #136]	
	ldr	r0, [lr, #144]	
	orrs	r3, r2
	orrs	r0, r3
	bne	lab147
	ldrb	r3, [lr, #64]	
	cmp	r3, #3
	bne	lab148
	ldrb	r3, [lr, #66]	
	cmp	r3, #2
	bne	lab148
	ldrb	r3, [lr, #132]	
	cmp	r3, #1
	bne	lab148
	ldrb	r3, [lr, #140]	
	cmp	r3, #1
	bne	lab148
	ldrb	r3, [lr, #162]	
	cmp	r3, #2
	bne	lab148
	ldrb	r3, [lr, #163]	
	cmp	r3, #1
	bne	lab148
	ldrb	r0, [lr, #160]	
	ldrb	r3, [lr, #92]	
	ldrb	r2, [lr, #161]	
	ldrb	r1, [lr, #77]	
	orrs	r3, r0
	orrs	r3, r2
	ldrb	r2, [lr, #116]	
	ldrb	r0, [lr, #124]	
	orrs	r3, r1
	orrs	r3, r2
	ldrb	r2, [lr, #112]	
	ldrb	r1, [lr, #115]	
	orrs	r3, r0
	orrs	r3, r2
	ldrb	r2, [lr, #164]	
	orrs	r3, r1
	orrs	r3, r2
	bne	lab147
	ldrb	r0, [lr, #65]	
	subs	r3, r0, #1
	negs	r0, r3
	adcs	r0, r3
	b	lab148
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
lab149: 	ldr	r2, [r3, #0]
	lsls	r0, r2, #14
	bpl	lab149
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
lab150: 	ldr	r3, [r2, #0]
	lsls	r1, r3, #6
	bpl	lab150
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
lab151: 	ldr	r3, [r1, #8]
	lsls	r3, r3, #28
	bpl	lab151
	movw	r3, #64	
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
	ldr r1, =1934
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	start_trigger
	bl	benchmark
	push {r1, r2}
	ldr r1, =6003
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
memset:
	lsls	r3, r0, #30
	push	{r4, r5, lr}
	beq	lab152
	subs	r4, r2, #1
	cmp	r2, #0
	beq	lab153
	uxtb	r2, r1
	mov	r3, r0
	b	lab154
lab155: 	subs	r4, #1
	bcc	lab153
lab154: 	strb	r2, [r3], #1
	lsls	r5, r3, #30
	bne	lab155
lab163: 	cmp	r4, #3
	bls	lab156
	uxtb	r5, r1
	orr	r5, r5, r5, lsl #8
	cmp	r4, #15
	orr	r5, r5, r5, lsl #16
	bls	lab157
	sub	r2, r4, #16
	bic	ip, r2, #15
	add	lr, r3, #32
	add	lr, ip
	mov	ip, r2, lsr #4
	add	r2, r3, #16
lab158: 	strd	r5, r5, [r2, #-16]
	strd	r5, r5, [r2, #-8]
	adds	r2, #16
	cmp	r2, lr
	bne	lab158
	add	r2, ip, #1
	tst	r4, #12
	add	r2, r3, r2, lsl #4
	and	ip, r4, #15
	beq	lab159
lab164: 	sub	r3, ip, #4
	bic	r3, r3, #3
	adds	r3, #4
	add	r3, r2
lab160: 	str	r5, [r2], #4
	cmp	r3, r2
	bne	lab160
	and	r4, ip, #3
lab156: 	cmp r4, #0
	beq lab153
lab162: 	uxtb	r2, r1
	add	r4, r3
lab161: 	strb	r2, [r3], #1
	cmp	r4, r3
	bne	lab161
lab153:	nop
	push {r1, r2}
	ldr r1, =6172
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
 	pop	{r4, r5, pc}
lab159: 	mov	r4, ip
	mov	r3, r2
	cmp	r4, #0
	bne	lab162
	b	lab153
lab152: 	mov	r3, r0
	mov	r4, r2
	b	lab163
lab157: 	mov	r2, r3
	mov	ip, r4
	b	lab164


	 .section .rodata

_sdata:
	.word	0x00000000
	.word	0x00000100
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
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


	 .section .bss

Bitlist:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state:
	.word	0x00000000
BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state:
	.word	0x00000000
B_FH_TUERMODUL_CTRL_next_state:
	.word	0x00000000
FH_TUERMODUL_CTRL__N:
	.word	0x00000000
FH_TUERMODUL_CTRL__N_old:
	.word	0x00000000
stable:
	.word	0x00000000
INITIALISIERT_FH_TUERMODUL_CTRL_next_state:
	.word	0x00000000
FH_TUERMODUL__BLOCK:
	.word	0x00000000
FH_TUERMODUL__BLOCK_old:
	.word	0x00000000
FH_TUERMODUL__MFHZ:
	.word	0x00000000
FH_TUERMODUL__MFHZ_copy:
	.word	0x00000000
sc_FH_TUERMODUL_CTRL_2329_1:
	.word	0x00000000
time:
	.word	0x00000000
NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state:
	.word	0x00000000
FH_TUERMODUL__SFHZ:
	.word	0x00000000
FH_TUERMODUL__SFHA:
	.word	0x00000000
FH_TUERMODUL__MFHA_copy:
	.word	0x00000000
FH_TUERMODUL_CTRL__INREVERS1:
	.word	0x00000000
FH_TUERMODUL_CTRL__INREVERS2:
	.word	0x00000000
FH_TUERMODUL__MFHA:
	.word	0x00000000
sc_FH_TUERMODUL_CTRL_2375_2:
	.word	0x00000000
sc_FH_TUERMODUL_CTRL_2352_1:
	.word	0x00000000
FH_TUERMODUL__POSITION:
	.word	0x00000000
OEFFNEN_FH_TUERMODUL_CTRL_next_state:
	.word	0x00000000
FH_TUERMODUL__SFHZ_old:
	.word	0x00000000
FH_TUERMODUL__SFHA_old:
	.word	0x00000000
SCHLIESSEN_FH_TUERMODUL_CTRL_next_state:
	.word	0x00000000
TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state:
	.word	0x00000000
FH_TUERMODUL_CTRL__INREVERS2_copy:
	.word	0x00000000
sc_FH_TUERMODUL_CTRL_1781_10:
	.word	0x00000000
MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state:
	.word	0x00000000
FH_TUERMODUL_CTRL__INREVERS1_copy:
	.word	0x00000000
sc_FH_TUERMODUL_CTRL_1739_10:
	.word	0x00000000
A_FH_TUERMODUL_CTRL_next_state:
	.word	0x00000000
step:
	.word	0x00000000
tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL:
	.word	0x00000000
WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state:
	.word	0x00000000
tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL:
	.word	0x00000000
BLOCK_ERKENNUNG_CTRL__N:
	.word	0x00000000
BLOCK_ERKENNUNG_CTRL__N_old:
	.word	0x00000000
tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy:
	.word	0x00000000
ZENTRAL_KINDERSICHERUNG_CTRL_next_state:
	.word	0x00000000
MEC_KINDERSICHERUNG_CTRL_next_state:
	.word	0x00000000
FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state:
	.word	0x00000000
EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state:
	.word	0x00000000
BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state:
	.word	0x00000000
FH_TUERMODUL__SFHA_ZENTRAL:
	.word	0x00000000
FH_TUERMODUL__SFHZ_ZENTRAL:
	.word	0x00000000
FH_TUERMODUL__SFHZ_copy:
	.word	0x00000000
FH_TUERMODUL__SFHA_copy:
	.word	0x00000000
FH_TUERMODUL__SFHA_ZENTRAL_old:
	.word	0x00000000
FH_TUERMODUL__SFHZ_ZENTRAL_old:
	.word	0x00000000
FH_TUERMODUL__SFHA_MEC:
	.word	0x00000000
FH_TUERMODUL__SFHZ_MEC:
	.word	0x00000000
FH_TUERMODUL__SFHA_MEC_old:
	.word	0x00000000
FH_TUERMODUL__SFHZ_MEC_old:
	.word	0x00000000
FH_TUERMODUL__KL_50:
	.word	0x00000000
FH_TUERMODUL__EKS_LEISTE_AKTIV:
	.word	0x00000000
FH_TUERMODUL__EKS_LEISTE_AKTIV_old:
	.word	0x00000000
FH_TUERMODUL__I_EIN:
	.word	0x00000000
FH_TUERMODUL__I_EIN_old:
	.word	0x00000000
FH_TUERMODUL__BLOCK_copy:
	.word	0x00000000
BLOCK_ERKENNUNG_CTRL__I_EIN_MAX:
	.word	0x00000000
FH_TUERMODUL__MFHA_old:
	.word	0x00000000
FH_TUERMODUL__MFHZ_old:
	.word	0x00000000
FH_DU__S_FH_TMBFZUCAN:
	.word	0x00000000
FH_DU__S_FH_TMBFZUCAN_old:
	.word	0x00000000
FH_DU__S_FH_TMBFAUFDISC:
	.word	0x00000000
FH_DU__S_FH_TMBFAUFDISC_old:
	.word	0x00000000
FH_DU__S_FH_TMBFZUDISC:
	.word	0x00000000
FH_DU__S_FH_TMBFZUDISC_old:
	.word	0x00000000
FH_DU__S_FH_TMBFAUFCAN_old:
	.word	0x00000000
FH_DU__S_FH_TMBFAUFCAN:
	.word	0x00000000
FH_DU__MFHZ:
	.word	0x00000000
FH_DU__MFHZ_old:
	.word	0x00000000
FH_DU__MFH:
	.word	0x00000000
FH_DU__MFHA:
	.word	0x00000000
FH_DU__MFHA_old:
	.word	0x00000000
FH_DU__S_FH_FTZU:
	.word	0x00000000
FH_DU__DOOR_ID:
	.word	0x00000000
FH_DU__S_FH_FTAUF:
	.word	0x00000000
FH_DU__S_FH_AUFDISC:
	.word	0x00000000
FH_DU__S_FH_ZUDISC:
	.word	0x00000000
FH_DU__I_EIN:
	.word	0x00000000
FH_DU__EKS_LEISTE_AKTIV:
	.word	0x00000000
FH_DU__POSITION:
	.word	0x00000000
FH_TUERMODUL__FT:
	.word	0x00000000
FH_DU__FT:
	.word	0x00000000
FH_DU__KL_50:
	.word	0x00000000
FH_DU__BLOCK:
	.word	0x00000000
FH_DU__MFH_copy:
	.word	0x00000000
FH_DU__I_EIN_old:
	.word	0x00000000
FH_DU__EKS_LEISTE_AKTIV_old:
	.word	0x00000000
FH_DU__BLOCK_copy:
	.word	0x00000000
FH_DU__BLOCK_old:
	.word	0x00000000
FH_DU__MFHZ_copy:
	.word	0x00000000
FH_DU__MFHA_copy:
	.word	0x00000000
FH_DU__S_FH_TMBFZUCAN_copy:
	.word	0x00000000
FH_DU__S_FH_TMBFAUFCAN_copy:
	.word	0x00000000
FH_TUERMODUL__COM_CLOSE:
	.word	0x00000000
FH_TUERMODUL__COM_OPEN:
	.word	0x00000000
FH_TUERMODUL_CTRL__FT:
	.word	0x00000000
BLOCK_ERKENNUNG_CTRL__N_copy:
	.word	0x00000000
BLOCK_ERKENNUNG_CTRL__I_EIN_MAX_copy:
	.word	0x00000000
FH_TUERMODUL_CTRL__N_copy:
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
