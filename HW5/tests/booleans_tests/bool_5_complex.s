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
	#Func main:
label_29:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn0
	#marker Label
bp_label_0:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn1
	#reach Or derivation
bExpAss_nfjdn0:
	#assigning True to t1
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_1
bExpAss_nfjdn1:
	#assigning False to t1
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_1
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1
	#marker Label
bp_label_1:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t1 offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t1 in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn2
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn3
bExpAss_nfjdn2:
	#assigning True to t2
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -4($fp)
	j	bp_label_2
bExpAss_nfjdn3:
	#assigning False to t2
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -4($fp)
	j	bp_label_2
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_2
	#marker Label
bp_label_2:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t1 offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t1 in boolean operator
	#If true
	bne $t0, $zero,bp_label_3
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn4
	#marker Label
bp_label_3:
	#Getting Var falue for [Exp->id]: t2 offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var t2 in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn4
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn5
	#reach Or derivation
bExpAss_nfjdn4:
	#assigning True to t3
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_4
bExpAss_nfjdn5:
	#assigning False to t3
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_4
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_4
	#marker Label
bp_label_4:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t1 offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t1 in boolean operator
	#If true
	bne $t0, $zero,bp_label_5
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn7
	#marker Label
bp_label_5:
	#Getting Var falue for [Exp->id]: t2 offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var t2 in boolean operator
	#If true
	bne $t0, $zero,bp_label_6
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn7
	#reach And derivation
	#marker Label
bp_label_6:
	#Getting Var falue for [Exp->id]: t3 offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#a Bool Var t3 in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn6
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn7
	#reach And derivation
bExpAss_nfjdn6:
	#assigning True to t4
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -12($fp)
	j	bp_label_7
bExpAss_nfjdn7:
	#assigning False to t4
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -12($fp)
	j	bp_label_7
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_7
	#marker Label
bp_label_7:
	#Getting Var falue for [Exp->id]: t4 offset is -12($fp)
	#			 __allocating reg $t0
	lw $t0, -12($fp)
	#a Bool Var t4 in boolean operator
	#If true
	bne $t0, $zero,bp_label_8
	#			 __freeing reg $t0
	#If False
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
	la $v0, string_label_1
	sw $v0, ($sp)
	addiu $sp, $sp, -4
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
	#marker Label
bp_label_9:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_3
	sw $v0, ($sp)
	addiu $sp, $sp, -4
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
	#end of ifelse
bp_label_10:
	#end of statement jump
	j	bp_label_11
	#marker Label
bp_label_11:
	#Getting Var falue for [Exp->id]: t1 offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t1 in boolean operator
	#If true
	bne $t0, $zero,bp_label_12
	#			 __freeing reg $t0
	#If False
	j	bp_label_15
	#marker Label
bp_label_12:
	#Getting Var falue for [Exp->id]: t2 offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var t2 in boolean operator
	#If true
	bne $t0, $zero,bp_label_13
	#			 __freeing reg $t0
	#If False
	j	bp_label_15
	#marker Label
bp_label_13:
	#Getting Var falue for [Exp->id]: t3 offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#a Bool Var t3 in boolean operator
	#If true
	bne $t0, $zero,bp_label_14
	#			 __freeing reg $t0
	#If False
	j	bp_label_15
	#reach And derivation
	#reach And derivation
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
	la $v0, string_label_5
	sw $v0, ($sp)
	addiu $sp, $sp, -4
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
	#marker Label
bp_label_15:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_7
	sw $v0, ($sp)
	addiu $sp, $sp, -4
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
	#end of ifelse
bp_label_16:
	#end of statement jump
	j	bp_label_17
bp_label_17:
	#Adding an extre return just in case
	move	$sp,$fp
	jr	$ra
