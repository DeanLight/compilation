.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "x!=z\n"
string_label_1:	.asciiz "x!=z\n"
string_label_2:	.asciiz "x==z\n"
string_label_3:	.asciiz "x==z\n"
string_label_4:	.asciiz "x!=y\n"
string_label_5:	.asciiz "x!=y\n"
string_label_6:	.asciiz "x==y\n"
string_label_7:	.asciiz "x==y\n"
string_label_8:	.asciiz "e!=x\n"
string_label_9:	.asciiz "e!=x\n"
string_label_10:	.asciiz "e==x\n"
string_label_11:	.asciiz "e==x\n"
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
	li	$t0,5
	# allocating word on stack for local variable x
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, ($fp)
	sw $t0, ($fp)
	#end of statement jump
	j	bp_label_0
	#marker Label
bp_label_0:
	li	$t0,5
	# allocating word on stack for local variable y
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, 4($fp)
	sw $t0, 4($fp)
	#end of statement jump
	j	bp_label_1
	#marker Label
bp_label_1:
	li	$t0,5
	# allocating word on stack for local variable z
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, 8($fp)
	sw $t0, 8($fp)
	#end of statement jump
	j	bp_label_2
	#marker Label
bp_label_2:
	li	$t0,6
	# allocating word on stack for local variable e
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, 12($fp)
	sw $t0, 12($fp)
	#end of statement jump
	j	bp_label_3
	#marker Label
bp_label_3:
	#Getting Var falue for [Exp->id]: x
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: z
	lw $t1, 8($fp)
	bne $t0, $t1,bp_label_4
	j	bp_label_5
	#marker Label
bp_label_4:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_6
	#marker Label
bp_label_5:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_6
	#end of ifelse
bp_label_6:
	#end of statement jump
	j	bp_label_7
	#marker Label
bp_label_7:
	#Getting Var falue for [Exp->id]: x
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: y
	lw $t1, 4($fp)
	bne $t0, $t1,bp_label_8
	j	bp_label_9
	#marker Label
bp_label_8:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_10
	#marker Label
bp_label_9:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_10
	#end of ifelse
bp_label_10:
	#end of statement jump
	j	bp_label_11
	#marker Label
bp_label_11:
	#Getting Var falue for [Exp->id]: e
	lw $t0, 12($fp)
	#Getting Var falue for [Exp->id]: x
	lw $t1, ($fp)
	bne $t0, $t1,bp_label_12
	j	bp_label_13
	#marker Label
bp_label_12:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	#caught a string
	#preparing to call print
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	#loading str address to stack
	addiu $sp, $sp, -4
	la $v0, string_label_9
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_14
	#marker Label
bp_label_13:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	#caught a string
	#preparing to call print
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	#loading str address to stack
	addiu $sp, $sp, -4
	la $v0, string_label_11
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_14
	#end of ifelse
bp_label_14:
	#end of statement jump
	j	bp_label_15
bp_label_15:
	#Adding an extre return just in case
	jr	$ra
