	.cpu cortex-m4
	.text
	.thumb
	.syntax unified
	.global main
	.type main, %function

    .global SystemInit
	.type SystemInit, %function

benchmark_body:
	subs	ip, r0, #0
	ble	lab0
	movs	r1, #0
	movw	r2, #0
	movw	r3, #12
	push	{r4, r5, r6, r7, lr}
	movt	r2, #8192	
	movt	r3, #8192	
	movs	r6, #3
	movs	r5, #5
	mov	r4, r1
lab253: 	str	r6, [r2, #0]
	str	r5, [r2, #4]
	str	r4, [r3, #0]
	ldr	r0, [r2, #0]
	cmp	r0, #2
	ble	lab1
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab1
	ldr	r7, [r3, #8]
	ldr	r0, [r3, #12]
	cmp	r7, r0
	beq	lab2
lab1: 	ldr	r0, [r2, #0]
	cmp	r0, #2
	ble	lab3
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab3
	ldr	r7, [r3, #12]
	ldr	r0, [r3, #8]
	cmp	r7, r0
	beq	lab4
lab3: 	ldr	r0, [r2, #0]
	cmp	r0, #2
	ble	lab5
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab5
	ldr	r7, [r3, #4]
	ldr	r0, [r3, #12]
	cmp	r7, r0
	beq	lab6
lab5: 	ldr	r0, [r2, #0]
	cmp	r0, #2
	ble	lab7
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab7
	ldr	r7, [r3, #12]
	ldr	r0, [r3, #4]
	cmp	r7, r0
	beq	lab8
lab7: 	ldr	r0, [r2, #0]
	cmp	r0, #2
	ble	lab9
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab9
	ldr	r7, [r3, #4]
	ldr	r0, [r3, #8]
	cmp	r7, r0
	beq	lab10
lab9: 	ldr	r0, [r2, #0]
	cmp	r0, #2
	ble	lab11
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab11
	ldr	r7, [r3, #8]
	ldr	r0, [r3, #4]
	cmp	r7, r0
	beq	lab12
lab11: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab13
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab13
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab14
lab13: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab15
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab15
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab16
lab15: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab17
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab17
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab18
lab17: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab19
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab19
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab20
lab19: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab21
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab21
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab22
lab21: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab23
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab23
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab24
lab23: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab25
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab25
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab26
lab25: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab27
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab27
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab28
lab27: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab29
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab29
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab30
lab29: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab31
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab31
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab32
lab31: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab33
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab33
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab34
lab33: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab35
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab35
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab36
lab35: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab37
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab37
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab38
lab37: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab39
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab39
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab40
lab39: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab41
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab41
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab42
lab41: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab43
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab43
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab44
lab43: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab45
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab45
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab46
lab45: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab47
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab47
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab48
lab47: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab49
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab49
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab50
lab49: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab51
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab51
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab52
lab51: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab53
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab53
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab54
lab53: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab55
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab55
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab56
lab55: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab57
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab57
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab58
lab57: 	ldr	r0, [r2, #4]
	cmp	r0, #3
	ble	lab59
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab59
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab60
lab59: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab61
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab61
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab62
lab61: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab63
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab63
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab64
lab63: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab65
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab65
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab66
lab65: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab67
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab67
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab68
lab67: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab69
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab69
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab70
lab69: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab71
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab71
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab72
lab71: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab73
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab73
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab74
lab73: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab75
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab75
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab76
lab75: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab77
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab77
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab78
lab77: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab79
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab79
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab80
lab79: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab81
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab81
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab82
lab81: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab83
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab83
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab84
lab83: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab85
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab85
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab86
lab85: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab87
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab87
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab88
lab87: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab89
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab89
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab90
lab89: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab91
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab91
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab92
lab91: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab93
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab93
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab94
lab93: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab95
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab95
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab96
lab95: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab97
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab97
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab98
lab97: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab99
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab99
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab100
lab99: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab101
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab101
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab102
lab101: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab103
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab103
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab104
lab103: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab105
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab105
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab106
lab105: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab107
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab107
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab108
lab107: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab109
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab109
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab110
lab109: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab111
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab111
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab112
lab111: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab113
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab113
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab114
lab113: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab115
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab115
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab116
lab115: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab117
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab117
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab118
lab117: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab119
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab119
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab120
lab119: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab121
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab121
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab122
lab121: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab123
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab123
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab124
lab123: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab125
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab125
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab126
lab125: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab127
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab127
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab128
lab127: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab129
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab129
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab130
lab129: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab131
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab131
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab132
lab131: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab133
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab133
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab134
lab133: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab135
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab135
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab136
lab135: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab137
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab137
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab138
lab137: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab139
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab139
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab140
lab139: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab141
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab141
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab142
lab141: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab143
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab143
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab144
lab143: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab145
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab145
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab146
lab145: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab147
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab147
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab148
lab147: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab149
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab149
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab150
lab149: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab151
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab151
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab152
lab151: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab153
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab153
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab154
lab153: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab155
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab155
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab156
lab155: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab157
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab157
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab158
lab157: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab159
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab159
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab160
lab159: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab161
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab161
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab162
lab161: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab163
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab163
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab164
lab163: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab165
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab165
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab166
lab165: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab167
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab167
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab168
lab167: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab169
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab169
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab170
lab169: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab171
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab171
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab172
lab171: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab173
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab173
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab174
lab173: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab175
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab175
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab176
lab175: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab177
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab177
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab178
lab177: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab179
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab179
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab180
lab179: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab181
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab181
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab182
lab181: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab183
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab183
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab184
lab183: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab185
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab185
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab186
lab185: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab187
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab187
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab188
lab187: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab189
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab189
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab190
lab189: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab191
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab191
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	beq	lab192
lab191: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab193
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab193
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab194
lab193: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab195
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab195
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab196
lab195: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab197
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab197
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab198
lab197: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab199
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab199
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab200
lab199: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab201
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab201
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab202
lab201: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab203
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab203
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab204
lab203: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab205
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab205
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab206
lab205: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab207
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab207
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab208
lab207: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab209
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab209
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab210
lab209: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab211
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab211
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab212
lab211: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab213
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab213
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab214
lab213: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab215
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab215
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab216
lab215: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab217
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab217
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab218
lab217: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab219
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab219
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab220
lab219: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab221
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab221
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab222
lab221: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab223
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab223
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab224
lab223: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab225
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab225
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab226
lab225: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab227
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab227
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab228
lab227: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab229
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab229
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab230
lab229: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab231
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab231
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab232
lab231: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab233
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab233
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab234
lab233: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab235
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab235
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab236
lab235: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab237
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab237
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab238
lab237: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab239
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab239
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	beq	lab240
lab239: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab241
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab241
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab242
lab241: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab243
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab243
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	beq	lab244
lab243: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab245
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab245
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab246
lab245: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab247
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab247
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	beq	lab248
lab247: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab249
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab249
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab250
lab249: 	ldr	r0, [r2, #4]
	cmp	r0, #4
	ble	lab251
	ldr	r0, [r3, #0]
	cmp	r0, #3
	bgt	lab251
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	beq	lab252
lab251: 	adds	r1, #1
	cmp	ip, r1
	bne	lab253
	movs	r0, #0
	pop	{r4, r5, r6, r7, pc}
lab250: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab249
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab249
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab249
lab252: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab251
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab251
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab251
lab242: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab241
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab241
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab241
lab244: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab243
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab243
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab243
lab246: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab245
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab245
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab245
lab248: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab247
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab247
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab247
lab226: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab225
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab225
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab225
lab228: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab227
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab227
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab227
lab230: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab229
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab229
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab229
lab232: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab231
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab231
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab231
lab234: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab233
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab233
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab233
lab236: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab235
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab235
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab235
lab238: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab237
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab237
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab237
lab240: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab239
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab239
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab239
lab194: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab193
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab193
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab193
lab196: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab195
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab195
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab195
lab198: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab197
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab197
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab197
lab200: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab199
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab199
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab199
lab202: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab201
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab201
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab201
lab204: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab203
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab203
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab203
lab206: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab205
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab205
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab205
lab208: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab207
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab207
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab207
lab210: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab209
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab209
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab209
lab212: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab211
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab211
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab211
lab214: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab213
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab213
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab213
lab216: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab215
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab215
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab215
lab218: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab217
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab217
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab217
lab220: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab219
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab219
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab219
lab222: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab221
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab221
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab221
lab224: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab223
	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab223
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab223
lab130: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab129
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab129
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab129
lab132: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab131
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab131
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab131
lab134: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab133
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab133
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab133
lab136: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab135
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab135
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab135
lab138: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab137
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab137
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab137
lab140: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab139
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab139
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab139
lab142: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab141
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab141
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab141
lab144: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab143
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab143
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab143
lab146: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab145
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab145
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab145
lab148: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab147
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab147
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab147
lab150: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab149
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab149
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab149
lab152: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab151
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab151
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab151
lab154: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab153
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab153
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab153
lab156: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab155
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab155
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab155
lab158: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab157
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab157
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab157
lab160: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab159
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab159
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab159
lab162: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab161
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab161
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab161
lab164: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab163
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab163
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab163
lab166: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab165
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab165
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab165
lab168: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab167
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab167
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab167
lab170: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab169
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab169
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab169
lab172: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab171
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab171
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab171
lab174: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab173
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab173
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab173
lab176: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab175
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab175
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab175
lab178: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab177
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab177
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab177
lab180: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab179
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab179
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab179
lab182: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab181
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab181
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab181
lab184: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab183
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab183
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab183
lab186: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab185
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab185
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab185
lab188: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab187
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab187
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab187
lab190: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab189
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab189
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab189
lab192: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab191
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab191
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab191
lab2: 	ldr	r7, [r3, #4]
	ldr	r0, [r3, #8]
	cmp	r7, r0
	bge	lab1
	ldr	lr, [r2]
	sub	lr, lr, #3
	str	lr, [r2]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	subs	r7, r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab1
lab4: 	ldr	r7, [r3, #4]
	ldr	r0, [r3, #12]
	cmp	r7, r0
	bge	lab3
	ldr	lr, [r2]
	sub	lr, lr, #3
	str	lr, [r2]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	subs	r7, r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab3
lab6: 	ldr	r7, [r3, #8]
	ldr	r0, [r3, #4]
	cmp	r7, r0
	bge	lab5
	ldr	lr, [r2]
	sub	lr, lr, #3
	str	lr, [r2]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	subs	r7, r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab5
lab8: 	ldr	r7, [r3, #8]
	ldr	r0, [r3, #12]
	cmp	r7, r0
	bge	lab7
	ldr	lr, [r2]
	sub	lr, lr, #3
	str	lr, [r2]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	subs	r7, r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab7
lab10: 	ldr	r7, [r3, #12]
	ldr	r0, [r3, #4]
	cmp	r7, r0
	bge	lab9
	ldr	lr, [r2]
	sub	lr, lr, #3
	str	lr, [r2]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	subs	r7, r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab9
lab12: 	ldr	r7, [r3, #12]
	ldr	r0, [r3, #8]
	cmp	r7, r0
	bge	lab11
	ldr	lr, [r2]
	sub	lr, lr, #3
	str	lr, [r2]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	subs	r7, r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab11
lab14: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab13
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab13
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab13
lab16: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab15
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab15
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab15
lab18: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab17
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab17
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab17
lab20: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab19
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab19
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab19
lab22: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab21
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab21
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab21
lab24: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab23
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab23
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab23
lab26: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab25
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab25
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab25
lab28: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab27
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab27
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab27
lab30: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab29
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab29
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab29
lab32: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab31
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab31
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab31
lab34: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab33
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab33
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab33
lab36: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab35
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab35
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab35
lab38: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab37
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab37
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab37
lab40: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab39
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab39
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab39
lab42: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab41
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab41
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab41
lab44: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab43
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab43
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab43
lab46: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab45
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab45
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab45
lab48: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab47
	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab47
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab47
lab50: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab49
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab49
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab49
lab52: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab51
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab51
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab51
lab54: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab53
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab53
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab53
lab56: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab55
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab55
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab55
lab58: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab57
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab57
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab57
lab60: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab59
	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab59
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab59
lab62: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab61
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab61
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab61
lab64: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab63
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab63
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab63
lab66: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab65
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab65
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab65
lab68: 	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab67
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bge	lab67
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab67
lab70: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab69
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab69
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab69
lab72: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab71
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab71
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab71
lab74: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab73
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab73
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab73
lab76: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab75
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab75
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab75
lab78: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab77
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab77
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab77
lab80: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab79
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab79
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab79
lab82: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab81
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab81
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab81
lab84: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab83
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab83
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab83
lab86: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab85
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab85
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab85
lab88: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab87
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab87
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab87
lab90: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab89
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab89
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab89
lab92: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab91
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab91
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab91
lab94: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #44]	
	cmp	r7, r0
	bne	lab93
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab93
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab93
lab96: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab95
	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab95
	ldr	lr, [r3, #44]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab95
lab98: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab97
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab97
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab97
lab100: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab99
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab99
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab99
lab102: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab101
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab101
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab101
lab104: 	ldr	r7, [r3, #40]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab103
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bge	lab103
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab103
lab106: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab105
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab105
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab105
lab108: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab107
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab107
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab107
lab110: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab109
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab109
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab109
lab112: 	ldr	r7, [r3, #48]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab111
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bge	lab111
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab111
lab114: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab113
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab113
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab113
lab116: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bne	lab115
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab115
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab115
lab118: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab117
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab117
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab117
lab120: 	ldr	r7, [r3, #52]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab119
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bge	lab119
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab119
lab122: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #48]	
	cmp	r7, r0
	bne	lab121
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab121
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab121
lab124: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab123
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab123
	ldr	lr, [r3, #48]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab123
lab126: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #40]	
	cmp	r7, r0
	bne	lab125
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab125
	ldr	lr, [r3, #52]	
	str	lr, [r3, #40]	
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab125
lab128: 	ldr	r7, [r3, #56]	
	ldr	r0, [r3, #52]	
	cmp	r7, r0
	bne	lab127
	ldr	r7, [r3, #44]	
	ldr	r0, [r3, #56]	
	cmp	r7, r0
	bge	lab127
	ldr	lr, [r2, #4]
	sub	lr, lr, #4
	str	lr, [r2, #4]
	ldr	lr, [r3]
	add	lr, r3, lr, lsl #2
	str	r7, [lr, #16]
	ldr	lr, [r3]
	add	lr, lr, #1
	add	lr, r3, lr, lsl #2
	add	r7, r0
	str	r0, [lr, #16]
	ldr	r0, [r3, #0]
	adds	r0, #2
	add	r0, r3, r0, lsl #2
	str	r7, [r0, #16]
	ldr	r0, [r3, #0]
	adds	r0, #3
	str	r0, [r3, #0]
	b	lab127
lab0: 	movs	r0, #0
	nop
	push {r1, r2}
	ldr r1, =3530
	mov.w r2, #1610612736 
	strh r1, [r2, #0]
	pop {r1, r2}
	bx	lr
initialise_benchmark:
	bx	lr
	nop
warm_caches:
	b	benchmark_body
benchmark:
	movw	r0, #10200	
	movt	r0, #3
	b	benchmark_body
verify_benchmark:
	movw	r3, #0
	movt	r3, #8192	
	ldr	r2, [r3, #0]
	cmp	r2, #3
	bne	lab254
	ldr	r3, [r3, #4]
	cmp	r3, #5
	beq	lab255
lab254: 	movs	r0, #0
	bx	lr
lab255: 	movw	r3, #12
	movt	r3, #8192	
	ldr	r0, [r3, #0]
	cmp	r0, #0
	bne	lab254
	ldr	r2, [r3, #4]
	cmp r2, #0
	bne lab256
	ldr	r0, [r3, #40]	
	cmp r0, #0
	bne lab257
	ldr	r2, [r3, #16]
	cmp r2, #0
	bne lab256
	ldr	r0, [r3, #8]
	cmp r0, #0
	bne lab257
	ldr	r2, [r3, #44]	
	cmp r2, #0
	bne lab256
	ldr	r0, [r3, #20]
	cmp r0, #0
	bne lab257
	ldr	r2, [r3, #12]
	cmp r2, #0
	bne lab256
	ldr	r2, [r3, #48]	
	cmp	r2, #0
	bne	lab254
	ldr	r0, [r3, #24]
	cmp r0, #0
	bne lab257
	ldr	r2, [r3, #52]	
	cmp r2, #0
	bne lab256
	ldr	r0, [r3, #28]
	cmp r0, #0
	bne lab257
	ldr	r2, [r3, #56]	
	cmp r2, #0
	bne lab256
	ldr	r2, [r3, #32]
	cmp r2, #0
	bne lab256
	ldr	r0, [r3, #36]	
	clz	r0, r0
	lsrs	r0, r0, #5
	bx	lr
lab257: 	mov	r0, r2
lab256: 	bx	lr
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
lab258: 	ldr	r2, [r3, #0]
	lsls	r0, r2, #14
	bpl	lab258
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
lab259: 	ldr	r3, [r2, #0]
	lsls	r1, r3, #6
	bpl	lab259
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
lab260: 	ldr	r3, [r1, #8]
	lsls	r3, r3, #28
	bpl	lab260
	movw	r3, #8
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
	ldr r1, =427
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	warm_caches
	push {r1, r2}
	ldr r1, =427
	mov.w r2, #1610612736 
	strh r1, [r2, #2]
	pop {r1, r2}
	nop
	bl	start_trigger
push {r1, r2}
	ldr r1, =1936
	mov.w r2, #1610612736 
	strh r1, [r2, #4]
	pop {r1, r2}
	bl	benchmark
	push {r1, r2}
	ldr r1, =1936
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


	 .section .data

P1_is_marked:
	.word	0x00000003
P2_is_marked:
	.word	0x00000005
SystemCoreClock:
	.word	0x00f42400


	 .section .bss

P3_is_marked:
	.word	0x00000000
P1_marking_member_0:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
P3_marking_member_0:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
P2_marking_member_0:
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
