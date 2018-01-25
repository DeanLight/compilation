.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "\n"
string_label_1:	.asciiz "\n"
string_label_2:	.asciiz "\n"
string_label_3:	.asciiz "\n"
string_label_4:	.asciiz "\n"
string_label_5:	.asciiz "\n"
.text
	#first program point
main:
	#initialize fp
	move	$fp,$sp
	jal	label_290
	#exiting...
li $v0, 10
syscall
	#print_func:
print:
lw $a0,4($sp)
li $v0,4
syscall
jr $ra
	#printi func:
printi:
lw $a0,4($sp)
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
	#Func ex:
label_29:
	#Getting Var falue for [Exp->id]: y offset is 8($fp)
	#			 __allocating reg $t0
	lw $t0, 8($fp)
	#Getting Var falue for [Exp->id]: x offset is 4($fp)
	#			 __allocating reg $t1
	lw $t1, 4($fp)
	blt $t0, $t1,bp_label_0
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1
	#marker Label
bp_label_0:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: x offset is 4($fp)
	#			 __allocating reg $t0
	lw $t0, 4($fp)
	#			 __allocating reg $t1
	li	$t1,1
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
	#Getting Var falue for [Exp->id]: y offset is 8($fp)
	#			 __allocating reg $t1
	lw $t1, 8($fp)
	#Getting Var falue for [Exp->id]: z offset is 12($fp)
	#			 __allocating reg $t2
	lw $t2, 12($fp)
	#preparing to call ex
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t2 to stack
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t2
	#pushing reg $t1 to stack
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t1
	#pushing reg $t0 to stack
	sw $t0, ($sp)
