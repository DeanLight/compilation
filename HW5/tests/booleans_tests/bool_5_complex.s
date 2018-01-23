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
string_label_12:	.asciiz "true\n"
string_label_13:	.asciiz "true\n"
string_label_14:	.asciiz "false\n"
string_label_15:	.asciiz "false\n"
string_label_16:	.asciiz "true\n"
string_label_17:	.asciiz "true\n"
string_label_18:	.asciiz "false\n"
string_label_19:	.asciiz "false\n"
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
	lw $t0, ($fp)
	#a Bool Var t1 in boolean operator
	lw $t1, ($fp)
	#If true
	bne $t1, $zero,bp_label_2
	#If False
	j	bp_label_3
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
	j	bp_label_4
	#marker Label
bp_label_3:
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
	#restoring 1 previously used registers
	lw $t0,4($sp)
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
	lw $t1, ($fp)
	#a Bool Var t1 in boolean operator
	lw $t2, ($fp)
	#If true
	bne $t2, $zero,bExpAss_nfjdn2
	#If False
	j	bExpAss_nfjdn3
	# allocating word on stack for local variable t2
	addiu $sp, $sp, -4
bExpAss_nfjdn2:
	#assigning True to t2
	li	$t2,1
	sw $t2, 4($fp)
	j	bp_label_6
bExpAss_nfjdn3:
	#assigning False to t2
	li	$t2,0
	sw $t2, 4($fp)
	j	bp_label_6
	#end of statement jump
	j	bp_label_6
	#marker Label
bp_label_6:
	lw $t2, 4($fp)
	#a Bool Var t2 in boolean operator
	lw $t3, 4($fp)
	#If true
	bne $t3, $zero,bp_label_7
	#If False
	j	bp_label_8
	#marker Label
bp_label_7:
	#func header store regs before call
	addiu $sp, $sp, -12
	sw $t0,12($sp)
	sw $t1,8($sp)
	sw $t2,4($sp)
	#stored 3 registers
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
	#restoring 3 previously used registers
	lw $t0,12($sp)
	lw $t1,8($sp)
	lw $t2,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_9
	#marker Label
bp_label_8:
	#func header store regs before call
	addiu $sp, $sp, -12
	sw $t0,12($sp)
	sw $t1,8($sp)
	sw $t2,4($sp)
	#stored 3 registers
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
	#restoring 3 previously used registers
	lw $t0,12($sp)
	lw $t1,8($sp)
	lw $t2,4($sp)
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
	lw $t3, ($fp)
	#a Bool Var t1 in boolean operator
	lw $t4, ($fp)
	#If true
	bne $t4, $zero,bp_label_11
	#If False
	j	bExpAss_nfjdn4
	#marker Label
bp_label_11:
	lw $t4, 4($fp)
	#a Bool Var t2 in boolean operator
	lw $t5, 4($fp)
	#If true
	bne $t5, $zero,bExpAss_nfjdn4
	#If False
	j	bExpAss_nfjdn5
	#reach Or derivation
	# allocating word on stack for local variable t3
	addiu $sp, $sp, -4
bExpAss_nfjdn4:
	#assigning True to t3
	li	$t5,1
	sw $t5, 8($fp)
	j	bp_label_12
bExpAss_nfjdn5:
	#assigning False to t3
	li	$t5,0
	sw $t5, 8($fp)
	j	bp_label_12
	#end of statement jump
	j	bp_label_12
	#marker Label
bp_label_12:
	lw $t5, 8($fp)
	#a Bool Var t3 in boolean operator
	lw $t6, 8($fp)
	#If true
	bne $t6, $zero,bp_label_13
	#If False
	j	bp_label_14
	#marker Label
bp_label_13:
	#func header store regs before call
	addiu $sp, $sp, -24
	sw $t0,24($sp)
	sw $t1,20($sp)
	sw $t2,16($sp)
	sw $t3,12($sp)
	sw $t4,8($sp)
	sw $t5,4($sp)
	#stored 6 registers
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
	#restoring 6 previously used registers
	lw $t0,24($sp)
	lw $t1,20($sp)
	lw $t2,16($sp)
	lw $t3,12($sp)
	lw $t4,8($sp)
	lw $t5,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_15
	#marker Label
bp_label_14:
	#func header store regs before call
	addiu $sp, $sp, -24
	sw $t0,24($sp)
	sw $t1,20($sp)
	sw $t2,16($sp)
	sw $t3,12($sp)
	sw $t4,8($sp)
	sw $t5,4($sp)
	#stored 6 registers
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
	#restoring 6 previously used registers
	lw $t0,24($sp)
	lw $t1,20($sp)
	lw $t2,16($sp)
	lw $t3,12($sp)
	lw $t4,8($sp)
	lw $t5,4($sp)
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
	lw $t6, ($fp)
	#a Bool Var t1 in boolean operator
	lw $t7, ($fp)
	#If true
	bne $t7, $zero,bp_label_17
	#If False
	j	
	#marker Label
bp_label_17:
	lw $t7, 4($fp)
	#a Bool Var t2 in boolean operator
	lw $t8, 4($fp)
	#If true
	bne $t8, $zero,
	#If False
	j	
	#reach And derivation
	#marker Label
bp_label_18:
	lw $t8, 8($fp)
	#a Bool Var t3 in boolean operator
	lw $s0, 8($fp)
	#If true
	bne $s0, $zero,bExpAss_nfjdn6
	#If False
	j	bExpAss_nfjdn7
	#reach And derivation
	# allocating word on stack for local variable t4
	addiu $sp, $sp, -4
bExpAss_nfjdn6:
	#assigning True to t4
	li	$s0,1
	sw $s0, 12($fp)
	j	bp_label_19
bExpAss_nfjdn7:
	#assigning False to t4
	li	$s0,0
	sw $s0, 12($fp)
	j	bp_label_19
	#end of statement jump
	j	bp_label_19
	#marker Label
bp_label_19:
	lw $s0, 12($fp)
	#a Bool Var t4 in boolean operator
	lw $s1, 12($fp)
	#If true
	bne $s1, $zero,bp_label_20
	#If False
	j	bp_label_21
	#marker Label
bp_label_20:
	#func header store regs before call
	addiu $sp, $sp, -40
	sw $t0,40($sp)
	sw $t1,36($sp)
	sw $t2,32($sp)
	sw $t3,28($sp)
	sw $t4,24($sp)
	sw $t5,20($sp)
	sw $t6,16($sp)
	sw $t7,12($sp)
	sw $t8,8($sp)
	sw $s0,4($sp)
	#stored 10 registers
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
	#restoring 10 previously used registers
	lw $t0,40($sp)
	lw $t1,36($sp)
	lw $t2,32($sp)
	lw $t3,28($sp)
	lw $t4,24($sp)
	lw $t5,20($sp)
	lw $t6,16($sp)
	lw $t7,12($sp)
	lw $t8,8($sp)
	lw $s0,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_22
	#marker Label
bp_label_21:
	#func header store regs before call
	addiu $sp, $sp, -40
	sw $t0,40($sp)
	sw $t1,36($sp)
	sw $t2,32($sp)
	sw $t3,28($sp)
	sw $t4,24($sp)
	sw $t5,20($sp)
	sw $t6,16($sp)
	sw $t7,12($sp)
	sw $t8,8($sp)
	sw $s0,4($sp)
	#stored 10 registers
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
	#restoring 10 previously used registers
	lw $t0,40($sp)
	lw $t1,36($sp)
	lw $t2,32($sp)
	lw $t3,28($sp)
	lw $t4,24($sp)
	lw $t5,20($sp)
	lw $t6,16($sp)
	lw $t7,12($sp)
	lw $t8,8($sp)
	lw $s0,4($sp)
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
	lw $s1, ($fp)
	#a Bool Var t1 in boolean operator
	lw $s2, ($fp)
	#If true
	bne $s2, $zero,bp_label_24
	#If False
	j	bp_label_27
	#marker Label
bp_label_24:
	lw $s2, 4($fp)
	#a Bool Var t2 in boolean operator
	lw $s3, 4($fp)
	#If true
	bne $s3, $zero,bp_label_25
	#If False
	j	
	#marker Label
bp_label_25:
	lw $s3, 8($fp)
	#a Bool Var t3 in boolean operator
	lw $s4, 8($fp)
	#If true
	bne $s4, $zero,
	#If False
	j	
	#reach And derivation
	#reach And derivation
	#marker Label
bp_label_26:
	#func header store regs before call
	addiu $sp, $sp, -52
	sw $t0,52($sp)
	sw $t1,48($sp)
	sw $t2,44($sp)
	sw $t3,40($sp)
	sw $t4,36($sp)
	sw $t5,32($sp)
	sw $t6,28($sp)
	sw $t7,24($sp)
	sw $t8,20($sp)
	sw $s0,16($sp)
	sw $s1,12($sp)
	sw $s2,8($sp)
	sw $s3,4($sp)
	#stored 13 registers
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
	#restoring 13 previously used registers
	lw $t0,52($sp)
	lw $t1,48($sp)
	lw $t2,44($sp)
	lw $t3,40($sp)
	lw $t4,36($sp)
	lw $t5,32($sp)
	lw $t6,28($sp)
	lw $t7,24($sp)
	lw $t8,20($sp)
	lw $s0,16($sp)
	lw $s1,12($sp)
	lw $s2,8($sp)
	lw $s3,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_28
	#marker Label
bp_label_27:
	#func header store regs before call
	addiu $sp, $sp, -52
	sw $t0,52($sp)
	sw $t1,48($sp)
	sw $t2,44($sp)
	sw $t3,40($sp)
	sw $t4,36($sp)
	sw $t5,32($sp)
	sw $t6,28($sp)
	sw $t7,24($sp)
	sw $t8,20($sp)
	sw $s0,16($sp)
	sw $s1,12($sp)
	sw $s2,8($sp)
	sw $s3,4($sp)
	#stored 13 registers
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
	#restoring 13 previously used registers
	lw $t0,52($sp)
	lw $t1,48($sp)
	lw $t2,44($sp)
	lw $t3,40($sp)
	lw $t4,36($sp)
	lw $t5,32($sp)
	lw $t6,28($sp)
	lw $t7,24($sp)
	lw $t8,20($sp)
	lw $s0,16($sp)
	lw $s1,12($sp)
	lw $s2,8($sp)
	lw $s3,4($sp)
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
