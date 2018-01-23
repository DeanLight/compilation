.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "true1\n"
string_label_1:	.asciiz "true1\n"
string_label_2:	.asciiz "false1\n"
string_label_3:	.asciiz "false1\n"
string_label_4:	.asciiz "true2\n"
string_label_5:	.asciiz "true2\n"
string_label_6:	.asciiz "false2\n"
string_label_7:	.asciiz "false2\n"
string_label_8:	.asciiz "true3\n"
string_label_9:	.asciiz "true3\n"
string_label_10:	.asciiz "false3\n"
string_label_11:	.asciiz "false3\n"
string_label_12:	.asciiz "true4\n"
string_label_13:	.asciiz "true4\n"
string_label_14:	.asciiz "false4\n"
string_label_15:	.asciiz "false4\n"
string_label_16:	.asciiz "true5\n"
string_label_17:	.asciiz "true5\n"
string_label_18:	.asciiz "false5\n"
string_label_19:	.asciiz "false5\n"
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
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn0
	#marker Label
bp_label_0:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn1
	#reach Or derivation
	# allocating word on stack for local variable t1
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, ($fp)
bExpAss_nfjdn0:
	#assigning True to t1
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_1
bExpAss_nfjdn1:
	#assigning False to t1
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_1
	#end of statement jump
	j	bp_label_1
	#marker Label
bp_label_1:
	#Getting Var falue for [Exp->id]: t1
	lw $t0, ($fp)
	#a Bool Var t1 in boolean operator
	#If true
	bne $t0, $zero,bp_label_2
	#If False
	j	bp_label_3
	#marker Label
bp_label_2:
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
	j	bp_label_4
	#end of ifelse
bp_label_4:
	#end of statement jump
	j	bp_label_5
	#marker Label
bp_label_5:
	#Getting Var falue for [Exp->id]: t1
	lw $t0, ($fp)
	#a Bool Var t1 in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn2
	#If False
	j	bExpAss_nfjdn3
	# allocating word on stack for local variable t2
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, 4($fp)
bExpAss_nfjdn2:
	#assigning True to t2
	li	$t0,1
	sw $t0, 4($fp)
	j	bp_label_6
bExpAss_nfjdn3:
	#assigning False to t2
	li	$t0,0
	sw $t0, 4($fp)
	j	bp_label_6
	#end of statement jump
	j	bp_label_6
	#marker Label
bp_label_6:
	#Getting Var falue for [Exp->id]: t2
	lw $t0, 4($fp)
	#a Bool Var t2 in boolean operator
	#If true
	bne $t0, $zero,bp_label_7
	#If False
	j	bp_label_8
	#marker Label
bp_label_7:
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
	j	bp_label_9
	#end of ifelse
bp_label_9:
	#end of statement jump
	j	bp_label_10
	#marker Label
bp_label_10:
	#Getting Var falue for [Exp->id]: t1
	lw $t0, ($fp)
	#a Bool Var t1 in boolean operator
	#If true
	bne $t0, $zero,bp_label_11
	#If False
	j	bExpAss_nfjdn4
	#marker Label
bp_label_11:
	#Getting Var falue for [Exp->id]: t2
	lw $t0, 4($fp)
	#a Bool Var t2 in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn4
	#If False
	j	bExpAss_nfjdn5
	#reach Or derivation
	# allocating word on stack for local variable t3
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, 8($fp)
bExpAss_nfjdn4:
	#assigning True to t3
	li	$t0,1
	sw $t0, 8($fp)
	j	bp_label_12
bExpAss_nfjdn5:
	#assigning False to t3
	li	$t0,0
	sw $t0, 8($fp)
	j	bp_label_12
	#end of statement jump
	j	bp_label_12
	#marker Label
bp_label_12:
	#Getting Var falue for [Exp->id]: t3
	lw $t0, 8($fp)
	#a Bool Var t3 in boolean operator
	#If true
	bne $t0, $zero,bp_label_13
	#If False
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
	j	bp_label_15
	#marker Label
bp_label_14:
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
	j	bp_label_15
	#end of ifelse
bp_label_15:
	#end of statement jump
	j	bp_label_16
	#marker Label
bp_label_16:
	#Getting Var falue for [Exp->id]: t1
	lw $t0, ($fp)
	#a Bool Var t1 in boolean operator
	#If true
	bne $t0, $zero,bp_label_17
	#If False
	j	bExpAss_nfjdn7
	#marker Label
bp_label_17:
	#Getting Var falue for [Exp->id]: t2
	lw $t0, 4($fp)
	#a Bool Var t2 in boolean operator
	#If true
	bne $t0, $zero,bp_label_18
	#If False
	j	bExpAss_nfjdn7
	#reach And derivation
	#marker Label
bp_label_18:
	#Getting Var falue for [Exp->id]: t3
	lw $t0, 8($fp)
	#a Bool Var t3 in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn6
	#If False
	j	bExpAss_nfjdn7
	#reach And derivation
	# allocating word on stack for local variable t4
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, 12($fp)
bExpAss_nfjdn6:
	#assigning True to t4
	li	$t0,1
	sw $t0, 12($fp)
	j	bp_label_19
bExpAss_nfjdn7:
	#assigning False to t4
	li	$t0,0
	sw $t0, 12($fp)
	j	bp_label_19
	#end of statement jump
	j	bp_label_19
	#marker Label
bp_label_19:
	#Getting Var falue for [Exp->id]: t4
	lw $t0, 12($fp)
	#a Bool Var t4 in boolean operator
	#If true
	bne $t0, $zero,bp_label_20
	#If False
	j	bp_label_21
	#marker Label
bp_label_20:
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
	la $v0, string_label_13
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
	j	bp_label_22
	#marker Label
bp_label_21:
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
	la $v0, string_label_15
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
	j	bp_label_22
	#end of ifelse
bp_label_22:
	#end of statement jump
	j	bp_label_23
	#marker Label
bp_label_23:
	#Getting Var falue for [Exp->id]: t1
	lw $t0, ($fp)
	#a Bool Var t1 in boolean operator
	#If true
	bne $t0, $zero,bp_label_24
	#If False
	j	bp_label_27
	#marker Label
bp_label_24:
	#Getting Var falue for [Exp->id]: t2
	lw $t0, 4($fp)
	#a Bool Var t2 in boolean operator
	#If true
	bne $t0, $zero,bp_label_25
	#If False
	j	bp_label_27
	#marker Label
bp_label_25:
	#Getting Var falue for [Exp->id]: t3
	lw $t0, 8($fp)
	#a Bool Var t3 in boolean operator
	#If true
	bne $t0, $zero,bp_label_26
	#If False
	j	bp_label_27
	#reach And derivation
	#reach And derivation
	#marker Label
bp_label_26:
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
	la $v0, string_label_17
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
	j	bp_label_28
	#marker Label
bp_label_27:
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
	la $v0, string_label_19
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
	j	bp_label_28
	#end of ifelse
bp_label_28:
	#end of statement jump
	j	bp_label_29
bp_label_29:
	#Adding an extre return just in case
	jr	$ra
