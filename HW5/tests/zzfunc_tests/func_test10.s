.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "\n"
string_label_1:	.asciiz "\n"
string_label_2:	.asciiz "\n"
string_label_3:	.asciiz "\n"
.text
	#first program point
main:
	#initialize fp
	move	$fp,$sp
	jal	label_102
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
	#Func goo:
label_29:
	#Getting Var falue for [Exp->id]: x1
	lw $t0, -4($fp)
	#Getting Var falue for [Exp->id]: x2
	lw $t1, -8($fp)
	#add
	addu	$t0,$t0,$t1
	#Getting Var falue for [Exp->id]: x3
	lw $t1, -12($fp)
	#add
	addu	$t0,$t0,$t1
	#Getting Var falue for [Exp->id]: x4
	lw $t1, -16($fp)
	#add
	addu	$t0,$t0,$t1
	#Getting Var falue for [Exp->id]: x5
	lw $t1, -20($fp)
	#add
	addu	$t0,$t0,$t1
	#Getting Var falue for [Exp->id]: x6
	lw $t1, -24($fp)
	#add
	addu	$t0,$t0,$t1
	#Getting Var falue for [Exp->id]: x7
	lw $t1, -28($fp)
	#add
	addu	$t0,$t0,$t1
	#Getting Var falue for [Exp->id]: x8
	lw $t1, -32($fp)
	#add
	addu	$t0,$t0,$t1
	#Getting Var falue for [Exp->id]: x9
	lw $t1, -36($fp)
	#add
	addu	$t0,$t0,$t1
	#Getting Var falue for [Exp->id]: x10
	lw $t1, -40($fp)
	#add
	addu	$t0,$t0,$t1
	#Getting Var falue for [Exp->id]: x11
	lw $t1, -44($fp)
	#add
	addu	$t0,$t0,$t1
	#Getting Var falue for [Exp->id]: x12
	lw $t1, -48($fp)
	#add
	addu	$t0,$t0,$t1
	#Getting Var falue for [Exp->id]: x13
	lw $t1, -52($fp)
	#add
	addu	$t0,$t0,$t1
	#Getting Var falue for [Exp->id]: x14
	lw $t1, -56($fp)
	#add
	addu	$t0,$t0,$t1
	#Getting Var falue for [Exp->id]: x15
	lw $t1, -60($fp)
	#add
	addu	$t0,$t0,$t1
	sw $t0, -4($fp)
	#end of statement jump
	j	bp_label_0
	#marker Label
bp_label_0:
	#Getting Var falue for [Exp->id]: x1
	lw $t0, -4($fp)
	#return noneVoid in v0
	move	$v0,$t0
	jr	$ra
bp_label_1:
	#Adding an extre return just in case
	jr	$ra
	#Func main:
label_102:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	li	$t0,1
	li	$t1,1
	li	$t2,1
	li	$t3,1
	li	$t4,1
	li	$t5,1
	li	$t6,1
	li	$t7,1
	li	$t8,1
	li	$s0,1
	li	$s1,1
	li	$s2,1
	li	$s3,1
	li	$s4,1
	li	$s5,1
	#preparing to call goo
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $s5, ($sp)
	addiu $sp, $sp, -4
	sw $s4, ($sp)
	addiu $sp, $sp, -4
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	move	$fp,$sp
	#jumping to func: goo
	jal	label_29
	#returned from func: goo
	#poping 15 params from stack 
	addiu $sp, $sp, 60
	#restoring ra and fp
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	move	$t0,$v0
	#finished calling goo
	# allocating word on stack for local variable y
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, ($fp)
	sw $t0, ($fp)
	#end of statement jump
	j	bp_label_2
	#marker Label
bp_label_2:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	#Getting Var falue for [Exp->id]: y
	lw $t0, ($fp)
	#preparing to call printi
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	move	$fp,$sp
	#jumping to func: printi
	jal	printi
	#returned from func: printi
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_3
	#marker Label
bp_label_3:
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
	j	bp_label_4
	#marker Label
bp_label_4:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	li	$t0,1
	li	$t1,1
	li	$t2,1
	li	$t3,1
	li	$t4,1
	li	$t5,1
	li	$t6,1
	li	$t7,1
	li	$t8,1
	li	$s0,1
	li	$s1,1
	li	$s2,1
	li	$s3,1
	li	$s4,1
	li	$s5,1
	#preparing to call goo
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $s5, ($sp)
	addiu $sp, $sp, -4
	sw $s4, ($sp)
	addiu $sp, $sp, -4
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	move	$fp,$sp
	#jumping to func: goo
	jal	label_29
	#returned from func: goo
	#poping 15 params from stack 
	addiu $sp, $sp, 60
	#restoring ra and fp
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	move	$t0,$v0
	#finished calling goo
	#preparing to call printi
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	move	$fp,$sp
	#jumping to func: printi
	jal	printi
	#returned from func: printi
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_5
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
bp_label_6:
	#Adding an extre return just in case
	jr	$ra
