.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "true\n"
string_label_1:	.asciiz "true\n"
string_label_2:	.asciiz "false\n"
string_label_3:	.asciiz "false\n"
string_label_4:	.asciiz "true\n"
string_label_5:	.asciiz "true\n"
string_label_6:	.asciiz "false\n"
string_label_7:	.asciiz "false\n"
string_label_8:	.asciiz "true\n"
string_label_9:	.asciiz "true\n"
string_label_10:	.asciiz "false\n"
string_label_11:	.asciiz "false\n"
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
	#Func main:
label_29:
	#exp derived true
	# allocating word on stack for local variable x
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, ($fp)
bExpAss_nfjdn0:
	#assigning True to x
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_0
bExpAss_nfjdn1:
	#assigning False to x
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_0
	#end of statement jump
	j	bp_label_0
	#marker Label
bp_label_0:
	#Getting Var falue for [Exp->id]: x offset is ($fp)
	lw $t0, ($fp)
	#a Bool Var x in boolean operator
	#If true
	bne $t0, $zero,bp_label_1
	#If False
	j	bp_label_2
	#marker Label
bp_label_1:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_3
	#marker Label
bp_label_2:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_3
	#end of ifelse
bp_label_3:
	#end of statement jump
	j	bp_label_4
	#marker Label
bp_label_4:
	#Getting Var falue for [Exp->id]: x offset is ($fp)
	lw $t0, ($fp)
	#a Bool Var x in boolean operator
	#If true
	bne $t0, $zero,bp_label_5
	#If False
	j	bExpAss_nfjdn3
	#marker Label
bp_label_5:
	li	$t0,3
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn2
	j	bExpAss_nfjdn3
	#reach And derivation
	# allocating word on stack for local variable y
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, -4($fp)
bExpAss_nfjdn2:
	#assigning True to y
	li	$t0,1
	sw $t0, -4($fp)
	j	bp_label_6
bExpAss_nfjdn3:
	#assigning False to y
	li	$t0,0
	sw $t0, -4($fp)
	j	bp_label_6
	#end of statement jump
	j	bp_label_6
	#marker Label
bp_label_6:
	#Getting Var falue for [Exp->id]: y offset is -4($fp)
	lw $t0, -4($fp)
	#a Bool Var y in boolean operator
	#If true
	bne $t0, $zero,bp_label_7
	#If False
	j	bp_label_8
	#marker Label
bp_label_7:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_9
	#marker Label
bp_label_8:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_9
	#end of ifelse
bp_label_9:
	#end of statement jump
	j	bp_label_10
	#marker Label
bp_label_10:
	#Getting Var falue for [Exp->id]: x offset is ($fp)
	lw $t0, ($fp)
	#a Bool Var x in boolean operator
	#If true
	bne $t0, $zero,bp_label_11
	#If False
	j	bExpAss_nfjdn5
	#marker Label
bp_label_11:
	#Getting Var falue for [Exp->id]: y offset is -4($fp)
	lw $t0, -4($fp)
	#a Bool Var y in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn5
	#If False
	j	bExpAss_nfjdn4
	#reach And derivation
bExpAss_nfjdn4:
	#assigning True to x
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_12
bExpAss_nfjdn5:
	#assigning False to x
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_12
	#end of statement jump
	j	bp_label_12
	#marker Label
bp_label_12:
	#Getting Var falue for [Exp->id]: x offset is ($fp)
	lw $t0, ($fp)
	#a Bool Var x in boolean operator
	#If true
	bne $t0, $zero,bp_label_13
	#If False
	j	bp_label_14
	#marker Label
bp_label_13:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_15
	#marker Label
bp_label_14:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_15
	#end of ifelse
bp_label_15:
	#end of statement jump
	j	bp_label_16
bp_label_16:
	#Adding an extre return just in case
	jr	$ra
