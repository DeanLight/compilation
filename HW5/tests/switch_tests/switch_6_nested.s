.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "out\n"
string_label_1:	.asciiz "out\n"
string_label_2:	.asciiz "in\n"
string_label_3:	.asciiz "in\n"
string_label_4:	.asciiz "777"
string_label_5:	.asciiz "777"
string_label_6:	.asciiz "777"
string_label_7:	.asciiz "777"
.text
	#first program point
main:
	#initialize fp
	move	$fp,$sp
	jal	label_29
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
label_29:
	li	$t0,300
	# allocating word on stack for local variable x
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, ($fp)
	sw $t0, ($fp)
	#end of statement jump
	j	bp_label_0
	#marker Label
bp_label_0:
	#Getting Var falue for [Exp->id]: x
	lw $t0, ($fp)
	#switch!
	j	bp_label_17
	#marker Label
bp_label_1:
	#break
	j	bp_label_18
	#end of statement jump
	j	bp_label_2
	#marker Label
bp_label_2:
	#func header store regs before call
	addiu $sp, $sp, -4
	sw $t0,4($sp)
	#stored 1 registers
	#caught a string
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
	#jumping to func: print
	jal	print
	#returned from func: print
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#restoring 1 previously used registers
	lw $t0,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_3
	#marker Label
bp_label_3:
	#break
	j	bp_label_18
	#end of statement jump
	j	bp_label_4
	#marker Label
bp_label_4:
	li	$t1,11
	sw $t1, ($fp)
	#end of statement jump
	j	bp_label_5
	#marker Label
bp_label_5:
	#Getting Var falue for [Exp->id]: x
	lw $t1, ($fp)
	sw $t1, ($fp)
	#end of statement jump
	j	bp_label_6
	#marker Label
bp_label_6:
	#Getting Var falue for [Exp->id]: x
	lw $t1, ($fp)
	#switch!
	j	bp_label_14
	#marker Label
bp_label_7:
	#break
	j	bp_label_15
	#end of statement jump
	j	bp_label_8
	#marker Label
bp_label_8:
	#func header store regs before call
	addiu $sp, $sp, -8
	sw $t0,8($sp)
	sw $t1,4($sp)
	#stored 2 registers
	#caught a string
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
	#jumping to func: print
	jal	print
	#returned from func: print
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#restoring 2 previously used registers
	lw $t0,8($sp)
	lw $t1,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_9
	#marker Label
bp_label_9:
	#break
	j	bp_label_15
	#end of statement jump
	j	bp_label_10
	#marker Label
bp_label_10:
	li	$t2,11
	sw $t2, ($fp)
	#end of statement jump
	j	bp_label_11
	#marker Label
bp_label_11:
	#Getting Var falue for [Exp->id]: x
	lw $t2, ($fp)
	sw $t2, ($fp)
	#end of statement jump
	j	bp_label_12
	#marker Label
bp_label_12:
	#marker Label
bp_label_13:
	#func header store regs before call
	addiu $sp, $sp, -8
	sw $t0,8($sp)
	sw $t1,4($sp)
	#stored 2 registers
	#caught a string
	#preparing to call print
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	#loading str address to stack
	addiu $sp, $sp, -4
	la $v0, string_label_5
	sw $v0, ($sp)
	move	$fp,$sp
	#jumping to func: print
	jal	print
	#returned from func: print
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#restoring 2 previously used registers
	lw $t0,8($sp)
	lw $t1,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_15
	#catching falling cases
	j	bp_label_15
	#switch init label
bp_label_14:
	beq $t1,1111,bp_label_7
	beq $t1,11,bp_label_8
	beq $t1,300,bp_label_10
	beq $t1,45,bp_label_11
	beq $t1,777,bp_label_13
	j	bp_label_12
	#end of switch:
bp_label_15:
	#end of statement jump
	j	bp_label_16
	#marker Label
bp_label_16:
	#func header store regs before call
	addiu $sp, $sp, -8
	sw $t0,8($sp)
	sw $t1,4($sp)
	#stored 2 registers
	#caught a string
	#preparing to call print
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	#loading str address to stack
	addiu $sp, $sp, -4
	la $v0, string_label_7
	sw $v0, ($sp)
	move	$fp,$sp
	#jumping to func: print
	jal	print
	#returned from func: print
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#restoring 2 previously used registers
	lw $t0,8($sp)
	lw $t1,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_18
	#catching falling cases
	j	bp_label_18
	#switch init label
bp_label_17:
	beq $t1,1111,bp_label_1
	beq $t1,11,bp_label_2
	beq $t1,300,bp_label_4
	beq $t1,45,bp_label_5
	beq $t1,777,bp_label_16
	j	bp_label_6
	#end of switch:
bp_label_18:
	#end of statement jump
	j	bp_label_19
bp_label_19:
	#Adding an extre return just in case
	jr	$ra
