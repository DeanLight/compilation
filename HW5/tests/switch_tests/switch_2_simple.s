.data
pvufne1:	.asciiz "Error division by zero
"
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
	li	$t0,1
	# allocating word on stack for local variable x
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, ($fp)
	sw $t0, ($fp)
	#end of statement jump
	j	bp_label_0
	#marker Label
bp_label_0:
	li	$t0,0
	#Getting Var falue for [Exp->id]: x
	lw $t1, ($fp)
	#add
	add	$t0,$t0,$t1
	li	$t1,0
	#add
	add	$t0,$t0,$t1
	#switch!
	j	bp_label_5
	#marker Label
bp_label_1:
	#func header store regs before call
	addiu $sp, $sp, -4
	sw $t0,4($sp)
	#stored 1 registers
	li	$t0,1
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
	#restoring 1 previously used registers
	lw $t0,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_2
	#marker Label
bp_label_2:
	#Getting Var falue for [Exp->id]: x
	lw $t1, ($fp)
	li	$t2,1
	#add
	add	$t1,$t1,$t2
	li	$t2,1
	#subtruct
	sub	$t1,$t1,$t2
	li	$t2,1
	#add
	add	$t1,$t1,$t2
	li	$t2,1
	#subtruct
	sub	$t1,$t1,$t2
	li	$t2,1
	#add
	add	$t1,$t1,$t2
	li	$t2,1
	#subtruct
	sub	$t1,$t1,$t2
	li	$t2,1
	#add
	add	$t1,$t1,$t2
	li	$t2,1
	#subtruct
	sub	$t1,$t1,$t2
	li	$t2,1
	#add
	add	$t1,$t1,$t2
	li	$t2,1
	#subtruct
	sub	$t1,$t1,$t2
	li	$t2,1
	#add
	add	$t1,$t1,$t2
	li	$t2,1
	#subtruct
	sub	$t1,$t1,$t2
	li	$t2,1
	#add
	add	$t1,$t1,$t2
	li	$t2,1
	#subtruct
	sub	$t1,$t1,$t2
	li	$t2,1
	#add
	add	$t1,$t1,$t2
	li	$t2,1
	#subtruct
	sub	$t1,$t1,$t2
	li	$t2,1
	#add
	add	$t1,$t1,$t2
	sw $t1, ($fp)
	#end of statement jump
	j	bp_label_3
	#marker Label
bp_label_3:
	#func header store regs before call
	addiu $sp, $sp, -4
	sw $t0,4($sp)
	#stored 1 registers
	li	$t0,2
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
	#restoring 1 previously used registers
	lw $t0,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_4
	#marker Label
bp_label_4:
	#Getting Var falue for [Exp->id]: x
	lw $t1, ($fp)
	li	$t2,1
	#add
	add	$t1,$t1,$t2
	sw $t1, ($fp)
	#end of statement jump
	j	bp_label_6
	#switch init label
bp_label_5:
	beq $t0,1,bp_label_1
	beq $t0,2,bp_label_3
	#end of switch:
bp_label_6:
	#marker Label
bp_label_7:
	li	$t1,1
	#Getting Var falue for [Exp->id]: x
	lw $t2, ($fp)
	#multiply
	mult	$t1,$t2
	mflo	$t1
	li	$t2,1
	#multiply
	mult	$t1,$t2
	mflo	$t1
	#switch!
	j	bp_label_14
	#marker Label
bp_label_8:
	#func header store regs before call
	addiu $sp, $sp, -8
	sw $t0,8($sp)
	sw $t1,4($sp)
	#stored 2 registers
	li	$t0,0
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
	#restoring 2 previously used registers
	lw $t0,8($sp)
	lw $t1,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_9
	#marker Label
bp_label_9:
	#func header store regs before call
	addiu $sp, $sp, -8
	sw $t0,8($sp)
	sw $t1,4($sp)
	#stored 2 registers
	li	$t0,5
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
	#restoring 2 previously used registers
	lw $t0,8($sp)
	lw $t1,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_10
	#marker Label
bp_label_10:
	#func header store regs before call
	addiu $sp, $sp, -8
	sw $t0,8($sp)
	sw $t1,4($sp)
	#stored 2 registers
	li	$t0,3
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
	#restoring 2 previously used registers
	lw $t0,8($sp)
	lw $t1,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_11
	#marker Label
bp_label_11:
	#func header store regs before call
	addiu $sp, $sp, -8
	sw $t0,8($sp)
	sw $t1,4($sp)
	#stored 2 registers
	li	$t0,4
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
	#restoring 2 previously used registers
	lw $t0,8($sp)
	lw $t1,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_12
	#marker Label
bp_label_12:
	#break
	j	bp_label_15
	#marker Label
bp_label_13:
	#func header store regs before call
	addiu $sp, $sp, -8
	sw $t0,8($sp)
	sw $t1,4($sp)
	#stored 2 registers
	li	$t0,5
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
	#restoring 2 previously used registers
	lw $t0,8($sp)
	lw $t1,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_15
	#switch init label
bp_label_14:
	beq $t1,0,bp_label_8
	beq $t1,5,bp_label_9
	beq $t1,3,bp_label_10
	beq $t1,4,bp_label_11
	beq $t1,5,bp_label_13
	#end of switch:
bp_label_15:
bp_label_16:
	#Adding an extre return just in case
	jr	$ra
