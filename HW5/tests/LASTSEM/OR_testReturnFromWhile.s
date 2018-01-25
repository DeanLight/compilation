.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "hello\n"
string_label_1:	.asciiz "hello\n"
string_label_2:	.asciiz "\n"
string_label_3:	.asciiz "\n"
string_label_4:	.asciiz "\nThe numbers are "
string_label_5:	.asciiz "\nThe numbers are "
string_label_6:	.asciiz "not "
string_label_7:	.asciiz "not "
string_label_8:	.asciiz "equal\n"
string_label_9:	.asciiz "equal\n"
.text
main:
	move	$fp,$sp
	jal	label_170
li $v0, 10
syscall
print:
lw $a0,4($sp)
li $v0,4
syscall
jr $ra
printi:
lw $a0,4($sp)
li $v0,1
syscall
jr $ra
nayalo:
	li	$v0, 4
	la	$a0, pvufne1
	syscall
li $v0, 10
syscall
label_21:
bp_label_0:
	j	bp_label_1
bp_label_1:
	lw $t0, 8($fp)
	li	$t1,0
	beq $t0, $t1,bp_label_2
	j	bp_label_3
bp_label_2:
	lw $t0, 4($fp)
	move	$v0,$t0
	move	$sp,$fp
	jr	$ra
bp_label_3:
bp_label_4:
	j	bp_label_5
bp_label_5:
	lw $t0, 4($fp)
	li	$t1,1
	addu	$t0,$t0,$t1
	sw $t0, 4($fp)
	j	bp_label_6
bp_label_6:
	lw $t0, 8($fp)
	li	$t1,1
	subu	$t0,$t0,$t1
	sw $t0, 8($fp)
	j	bp_label_0
bp_label_7:
	j	bp_label_8
bp_label_8:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
label_55:
bp_label_9:
	j	bp_label_10
bp_label_10:
	lw $t0, 8($fp)
	li	$t1,0
	beq $t0, $t1,bp_label_11
	j	bp_label_12
bp_label_11:
	lw $t0, 4($fp)
	move	$v0,$t0
	move	$sp,$fp
	jr	$ra
bp_label_12:
bp_label_13:
	j	bp_label_14
bp_label_14:
	lw $t0, 4($fp)
	li	$t1,1
	add	$t0,$t0,$t1
	andi	$t0,$t0,0xff
	sw $t0, 4($fp)
	j	bp_label_15
bp_label_15:
	lw $t0, 8($fp)
	li	$t1,1
	subu	$t0,$t0,$t1
	sw $t0, 8($fp)
	j	bp_label_9
bp_label_16:
	j	bp_label_17
bp_label_17:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
label_90:
bp_label_18:
	j	bp_label_19
bp_label_19:
	lw $t0, 4($fp)
	li	$t1,0
	beq $t0, $t1,bp_label_20
	j	bp_label_21
bp_label_20:
	lw $t0, 8($fp)
	li	$t1,0
	beq $t0, $t1,
	j	
	move	$v0,$t/
	move	$sp,$fp
	jr	$ra
bp_label_21:
bp_label_22:
	j	bp_label_23
bp_label_23:
	lw $t/, 4($fp)
	li	$t0,1
	subu	$t/,$t/,$t0
	sw $t/, 4($fp)
	j	bp_label_24
bp_label_24:
	lw $t/, 8($fp)
	li	$t0,1
	sub	$t/,$t/,$t0
	andi	$t/,$t/,0xff
	sw $t/, 8($fp)
	j	bp_label_18
bp_label_25:
	j	bp_label_26
bp_label_26:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
label_128:
bp_label_27:
	j	bp_label_28
bp_label_28:
	lw $t/, 4($fp)
	li	$t0,0
	beq $t/, $t0,bp_label_29
	j	bp_label_30
bp_label_29:
	move	$sp,$fp
	jr	$ra
bp_label_30:
bp_label_31:
	j	bp_label_32
bp_label_32:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_1
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_33
bp_label_33:
	lw $t0, 4($fp)
	li	$t1,1
	subu	$t0,$t0,$t1
	sw $t0, 4($fp)
	j	bp_label_27
bp_label_34:
	j	bp_label_35
bp_label_35:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
label_170:
	addiu $sp, $sp, -4
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_36
bp_label_36:
	lw $t0, ($fp)
	li	$t1,5
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 8
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	sw $t0, ($fp)
	j	bp_label_37
bp_label_37:
	lw $t0, ($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	printi
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_38
bp_label_38:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_3
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_39
bp_label_39:
	addiu $sp, $sp, -4
	li	$t0,0
	sw $t0, -4($fp)
	j	bp_label_40
bp_label_40:
	lw $t0, -4($fp)
	li	$t1,5
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_55
	addiu $sp, $sp, 8
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	sw $t0, -4($fp)
	j	bp_label_41
bp_label_41:
	lw $t0, -4($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	printi
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_42
bp_label_42:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_5
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_43
bp_label_43:
	lw $t0, ($fp)
	lw $t1, -4($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_90
	addiu $sp, $sp, 8
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_45
	j	bp_label_44
bp_label_44:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_7
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_46
bp_label_45:
bp_label_46:
	j	bp_label_47
bp_label_47:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_9
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_48
bp_label_48:
	lw $t0, ($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_128
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_49
bp_label_49:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
