.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "This should print\n"
string_label_1:	.asciiz "This should print\n"
string_label_2:	.asciiz "This shouldn't print"
string_label_3:	.asciiz "This shouldn't print"
.text
main:
	move	$fp,$sp
	jal	label_35
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
	j	bp_label_0
bp_label_0:
	li	$t0,1
	li	$t1,0
	blt $t0, $t1,
	j	
	move	$v0,$t/
	move	$sp,$fp
	jr	$ra
bp_label_1:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
label_35:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_3
	j	bp_label_2
bp_label_2:
	li	$t0,5
	li	$t1,0
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	li	$t1,1
	beq $t0, $t1,bp_label_3
	j	bp_label_4
bp_label_3:
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
	j	bp_label_5
bp_label_4:
bp_label_5:
	j	bp_label_6
bp_label_6:
	addiu $sp, $sp, -4
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_7
bp_label_7:
	li	$t0,5
	lw $t1, ($fp)
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	li	$t1,1
	beq $t0, $t1,bp_label_9
	j	bp_label_8
bp_label_8:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_9
	j	bp_label_10
bp_label_9:
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
	j	bp_label_11
bp_label_10:
bp_label_11:
	j	bp_label_12
bp_label_12:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
