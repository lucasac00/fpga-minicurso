	add t0, zero, zero
	addi t1, zero, 1200
loop:
	lbu t2, 0(t0)
	addi t2, t2, 1
	sb t2, 0(t0)
	addi t0, t0, 1
	beq t0, t1, frame
	jal loop
frame: 
	add t0, zero, zero
	jal loop