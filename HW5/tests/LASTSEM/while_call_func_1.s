.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "\n"
string_label_1:	.asciiz "\n"
.text
main:
	move	$fp,$sp
	jal	label_33
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
	lw $t0, 4($fp)
	li	$t1,5
	blt $t0, $t1,
	j	
	move	$v0,$t/
	move	$sp,$fp
	jr	$ra
bp_label_0:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
label_33:
	addiu $sp, $sp, -4
	li	$t/,0
	sw $t/, ($fp)
	j	bp_label_1
bp_label_1:
bp_label_2:
	lw $t0, ($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_3
	j	bp_label_6
bp_label_3:
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
	j	bp_label_4
bp_label_4:
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
bp_label_5:
	lw $t0, ($fp)
	li	$t1,1
	add	$t0,$t0,$t1
	andi	$t0,$t0,0xff
	sw $t0, ($fp)
	j	bp_label_2
bp_label_6:
	j	bp_label_7
bp_label_7:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
