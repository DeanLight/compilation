.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "\t"
string_label_1:	.asciiz "\t"
string_label_2:	.asciiz "\t"
string_label_3:	.asciiz "\t"
.text
	#first program point
main:
	jal	label_27
	#exiting...
li $v0, 10
syscall
	#print_func:
print:
lw $a0,0($sp)
li $v0,4
syscall
jr $ra
	#printi func:
printi:
lw $a0,0($sp)
li $v0,1
syscall
jr $ra
	#div by 0 handler:
nayalo:
	li	$v0, 4
	la	$a0, pvufne1
	syscall
	#exiting...
li $v0, 10
syscall
	#Func main:
label_27:
	#func header store regs before call
	addiu $sp, $sp, -0
	li	$t0,1
	li	$t1,1
	add	$t0,$t0,$t1
	#preparing to call printi
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	move	$fp,$sp
	jal	printi
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#finished calling printi
	#func header store regs before call
	addiu $sp, $sp, -4
	sw $t0,4($sp)
	#preparing to call print
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	#loading str address to stack
	addiu $sp, $sp, -4
	la $v0, string_label_0
	sw $v0, ($sp)
	move	$fp,$sp
	jal	print
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0,4($sp)
	#finished calling print
	#func header store regs before call
	addiu $sp, $sp, -8
	sw $t0,8($sp)
	sw $t1,4($sp)
	li	$t0,30
	li	$t1,20
	add	$t0,$t0,$t1
	#preparing to call printi
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	move	$fp,$sp
	jal	printi
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0,8($sp)
	lw $t1,4($sp)
	#finished calling printi
	#func header store regs before call
	addiu $sp, $sp, -12
	sw $t0,12($sp)
	sw $t1,8($sp)
	sw $t2,4($sp)
	#preparing to call print
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	#loading str address to stack
	addiu $sp, $sp, -4
	la $v0, string_label_1
	sw $v0, ($sp)
	move	$fp,$sp
	jal	print
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0,12($sp)
	lw $t1,8($sp)
	lw $t2,4($sp)
	#finished calling print
	#func header store regs before call
	addiu $sp, $sp, -16
	sw $t0,16($sp)
	sw $t1,12($sp)
	sw $t2,8($sp)
	sw $t3,4($sp)
	li	$t0,3
	li	$t1,5
	add	$t0,$t0,$t1
	#preparing to call printi
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	move	$fp,$sp
	jal	printi
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0,16($sp)
	lw $t1,12($sp)
	lw $t2,8($sp)
	lw $t3,4($sp)
	#finished calling printi
	#func header store regs before call
	addiu $sp, $sp, -20
	sw $t0,20($sp)
	sw $t1,16($sp)
	sw $t2,12($sp)
	sw $t3,8($sp)
	sw $t4,4($sp)
	#preparing to call print
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	#loading str address to stack
	addiu $sp, $sp, -4
	la $v0, string_label_2
	sw $v0, ($sp)
	move	$fp,$sp
	jal	print
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0,20($sp)
	lw $t1,16($sp)
	lw $t2,12($sp)
	lw $t3,8($sp)
	lw $t4,4($sp)
	#finished calling print
	#func header store regs before call
	addiu $sp, $sp, -24
	sw $t0,24($sp)
	sw $t1,20($sp)
	sw $t2,16($sp)
	sw $t3,12($sp)
	sw $t4,8($sp)
	sw $t5,4($sp)
	li	$t0,50
	li	$t1,2
	add	$t0,$t0,$t1
	#preparing to call printi
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	move	$fp,$sp
	jal	printi
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0,24($sp)
	lw $t1,20($sp)
	lw $t2,16($sp)
	lw $t3,12($sp)
	lw $t4,8($sp)
	lw $t5,4($sp)
	#finished calling printi
	#func header store regs before call
	addiu $sp, $sp, -28
	sw $t0,28($sp)
	sw $t1,24($sp)
	sw $t2,20($sp)
	sw $t3,16($sp)
	sw $t4,12($sp)
	sw $t5,8($sp)
	sw $t6,4($sp)
	#preparing to call print
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	#loading str address to stack
	addiu $sp, $sp, -4
	la $v0, string_label_3
	sw $v0, ($sp)
	move	$fp,$sp
	jal	print
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0,28($sp)
	lw $t1,24($sp)
	lw $t2,20($sp)
	lw $t3,16($sp)
	lw $t4,12($sp)
	lw $t5,8($sp)
	lw $t6,4($sp)
	#finished calling print
	#func header store regs before call
	addiu $sp, $sp, -32
	sw $t0,32($sp)
	sw $t1,28($sp)
	sw $t2,24($sp)
	sw $t3,20($sp)
	sw $t4,16($sp)
	sw $t5,12($sp)
	sw $t6,8($sp)
	sw $t7,4($sp)
	li	$t0,49
	li	$t1,2
	add	$t0,$t0,$t1
	#preparing to call printi
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	move	$fp,$sp
	jal	printi
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0,32($sp)
	lw $t1,28($sp)
	lw $t2,24($sp)
	lw $t3,20($sp)
	lw $t4,16($sp)
	lw $t5,12($sp)
	lw $t6,8($sp)
	lw $t7,4($sp)
	#finished calling printi
	#Func is Void retType
	#Adding an extre return just in case
	jr	$ra
