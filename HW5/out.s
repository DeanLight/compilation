.data
pvufne1:	.asciiz "Error division by zero
"
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
	addiu $sp, $sp, -4
	li	$t0,1
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
	#Func is Void retType
	#Adding an extre return just in case
	jr	$ra
