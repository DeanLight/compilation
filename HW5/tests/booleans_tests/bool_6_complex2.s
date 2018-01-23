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
	# allocating word on stack for local variable x
	addiu $sp, $sp, -4
	#marker Label
bp_label_0:
	#Getting Var falue for [Exp->id]: x
	lw $t0, ($fp)
	#a Bool Var x in boolean operator
	#If true
	bne $t0, $zero,bp_label_1
	#If False
	j	bp_label_2
	#marker Label
bp_label_1:
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
	j	bp_label_3
	#end of ifelse
bp_label_3:
	#end of statement jump
	j	bp_label_4
	#marker Label
bp_label_4:
	li	$t0,30
	li	$t1,30
	bne $t0, $t1,bExpAss_nfjdn0
	j	bExpAss_nfjdn1
	# allocating word on stack for local variable y
	addiu $sp, $sp, -4
bExpAss_nfjdn0:
	#assigning True to y
	li	$t0,1
	sw $t0, 4($fp)
	j	bp_label_5
bExpAss_nfjdn1:
	#assigning False to y
	li	$t0,0
	sw $t0, 4($fp)
	j	bp_label_5
	#end of statement jump
	j	bp_label_5
	#marker Label
bp_label_5:
	li	$t0,1
	li	$t1,1
	beq $t0, $t1,bp_label_6
	j	bp_label_7
	#marker Label
bp_label_6:
	#Getting Var falue for [Exp->id]: y
	lw $t0, 4($fp)
	#a Bool Var y in boolean operator
	#If true
	bne $t0, $zero,bp_label_7
	#If False
	j	bp_label_8
	#reach And derivation
	#marker Label
bp_label_7:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_8
	#reach Or derivation
	#marker Label
bp_label_8:
	#Getting Var falue for [Exp->id]: x
	lw $t0, ($fp)
	#a Bool Var x in boolean operator
	#If true
	bne $t0, $zero,bp_label_10
	#If False
	j	bp_label_9
	#reach And derivation
	#marker Label
bp_label_9:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_10
	#reach And derivation
	#marker Label
bp_label_10:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn2
	#reach Or derivation
	# allocating word on stack for local variable z
	addiu $sp, $sp, -4
bExpAss_nfjdn2:
	#assigning True to z
	li	$t0,1
	sw $t0, 8($fp)
	j	bp_label_11
bExpAss_nfjdn3:
	#assigning False to z
	li	$t0,0
	sw $t0, 8($fp)
	j	bp_label_11
	#end of statement jump
	j	bp_label_11
	#marker Label
bp_label_11:
	#Getting Var falue for [Exp->id]: z
	lw $t0, 8($fp)
	#a Bool Var z in boolean operator
	#If true
	bne $t0, $zero,bp_label_12
	#If False
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
	j	bp_label_14
	#end of ifelse
bp_label_14:
	#end of statement jump
	j	bp_label_15
	#marker Label
bp_label_15:
	li	$t0,0
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_16
	#marker Label
bp_label_16:
	li	$t0,10
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_17
	#marker Label
bp_label_17:
	li	$t0,11
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_18
	#marker Label
bp_label_18:
	li	$t0,12
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_19
	#marker Label
bp_label_19:
	li	$t0,13
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_20
	#marker Label
bp_label_20:
	li	$t0,14
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_21
	#marker Label
bp_label_21:
	li	$t0,15
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_22
	#marker Label
bp_label_22:
	li	$t0,16
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_23
	#marker Label
bp_label_23:
	li	$t0,17
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_24
	#marker Label
bp_label_24:
	li	$t0,18
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_25
	#marker Label
bp_label_25:
	li	$t0,19
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_26
	#marker Label
bp_label_26:
	li	$t0,111
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_27
	#marker Label
bp_label_27:
	li	$t0,1
	li	$t1,111
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_28
	#marker Label
bp_label_28:
	li	$t0,111
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_29
	#marker Label
bp_label_29:
	li	$t0,1
	li	$t1,111
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_30
	#marker Label
bp_label_30:
	li	$t0,111
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_31
	#marker Label
bp_label_31:
	li	$t0,1
	li	$t1,111
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_32
	#marker Label
bp_label_32:
	li	$t0,111
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_33
	#marker Label
bp_label_33:
	li	$t0,1
	li	$t1,111
	beq $t0, $t1,bExpAss_nfjdn5
	j	bp_label_34
	#marker Label
bp_label_34:
	li	$t0,111
	li	$t1,1
	beq $t0, $t1,bExpAss_nfjdn5
	j	bExpAss_nfjdn4
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
	#reach Or derivation
bExpAss_nfjdn4:
	#assigning True to x
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_35
bExpAss_nfjdn5:
	#assigning False to x
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_35
	#end of statement jump
	j	bp_label_35
	#marker Label
bp_label_35:
	#Getting Var falue for [Exp->id]: x
	lw $t0, ($fp)
	#a Bool Var x in boolean operator
	#If true
	bne $t0, $zero,bp_label_36
	#If False
	j	bp_label_37
	#marker Label
bp_label_36:
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
	j	bp_label_38
	#marker Label
bp_label_37:
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
	j	bp_label_38
	#end of ifelse
bp_label_38:
	#end of statement jump
	j	bp_label_39
bp_label_39:
	#Adding an extre return just in case
	jr	$ra
