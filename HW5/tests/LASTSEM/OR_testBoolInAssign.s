.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "true\n"
string_label_1:	.asciiz "true\n"
string_label_2:	.asciiz "false\n"
string_label_3:	.asciiz "false\n"
.text
	#first program point
main:
	#initialize fp
	move	$fp,$sp
	jal	label_159
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
	#Func printBool:
label_29:
	#Getting Var falue for [Exp->id]: c offset is 4($fp)
	#			 __allocating reg $t0
	lw $t0, 4($fp)
	#a Bool Var c in boolean operator
	#If true
	bne $t0, $zero,bp_label_0
	#			 __freeing reg $t0
	#If False
	j	bp_label_2
	#marker Label
bp_label_0:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#marker Label
bp_label_1:
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
	#end of statement jump
	j	bp_label_4
	#marker Label
bp_label_2:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#marker Label
bp_label_3:
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
	#end of statement jump
	j	bp_label_4
	#end of ifelse
bp_label_4:
	#end of statement jump
	j	bp_label_5
bp_label_5:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func True:
label_115:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_7
	#return noneVoid in v0
	#returning from a boolean function
bp_label_7:
	li	$v0,1
	j	bp_label_6
bp_label_8:
	li	$v0,0
bp_label_6:
	move	$sp,$fp
	jr	$ra
bp_label_9:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func False:
label_137:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_12
	#return noneVoid in v0
	#returning from a boolean function
bp_label_11:
	li	$v0,1
	j	bp_label_10
bp_label_12:
	li	$v0,0
bp_label_10:
	move	$sp,$fp
	jr	$ra
bp_label_13:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func main:
label_159:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
bExpAss_nfjdn0:
	#assigning True to t
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_14
bExpAss_nfjdn1:
	#assigning False to t
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_14
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_14
	#marker Label
bp_label_14:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
bExpAss_nfjdn2:
	#assigning True to f
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -4($fp)
	j	bp_label_15
bExpAss_nfjdn3:
	#assigning False to f
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -4($fp)
	j	bp_label_15
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_15
	#marker Label
bp_label_15:
	# allocating word on stack for local variable boo
	#allocationg words on stack 
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, -8($fp)
	#end of statement jump
	j	bp_label_16
	#marker Label
bp_label_16:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bExpAss_nfjdn4
	j	bExpAss_nfjdn5
	#returning from a boolean function
	#			 __freeing reg $t0
bExpAss_nfjdn4:
	#assigning True to boo
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_17
bExpAss_nfjdn5:
	#assigning False to boo
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_17
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_17
	#marker Label
bp_label_17:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_18:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_19
	#marker Label
bp_label_19:
	#exp derived true
bExpAss_nfjdn6:
	#assigning True to boo
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_20
bExpAss_nfjdn7:
	#assigning False to boo
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_20
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_20
	#marker Label
bp_label_20:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_21:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_22
	#marker Label
bp_label_22:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
bExpAss_nfjdn8:
	#assigning True to boo
	#			 __allocating reg $t1
	li	$t1,1
	sw $t1, -8($fp)
	j	bp_label_23
bExpAss_nfjdn9:
	#assigning False to boo
	#			 __allocating reg $t1
	li	$t1,0
	sw $t1, -8($fp)
	j	bp_label_23
	#			 __freeing reg $t1
	#end of statement jump
	j	bp_label_23
	#marker Label
bp_label_23:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_24:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_25
	#marker Label
bp_label_25:
	#			 __allocating reg $t1
	li	$t1,4
	#			 __allocating reg $t2
	li	$t2,5
	blt $t1, $t2,bExpAss_nfjdn10
	#			 __freeing reg $t2
	#			 __freeing reg $t1
	j	bExpAss_nfjdn11
bExpAss_nfjdn10:
	#assigning True to boo
	#			 __allocating reg $t1
	li	$t1,1
	sw $t1, -8($fp)
	j	bp_label_26
bExpAss_nfjdn11:
	#assigning False to boo
	#			 __allocating reg $t1
	li	$t1,0
	sw $t1, -8($fp)
	j	bp_label_26
	#			 __freeing reg $t1
	#end of statement jump
	j	bp_label_26
	#marker Label
bp_label_26:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_27:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_28
	#marker Label
bp_label_28:
	#			 __allocating reg $t1
	li	$t1,4
	#			 __allocating reg $t2
	li	$t2,4
	beq $t1, $t2,bExpAss_nfjdn12
	#			 __freeing reg $t2
	#			 __freeing reg $t1
	j	bExpAss_nfjdn13
bExpAss_nfjdn12:
	#assigning True to boo
	#			 __allocating reg $t1
	li	$t1,1
	sw $t1, -8($fp)
	j	bp_label_29
bExpAss_nfjdn13:
	#assigning False to boo
	#			 __allocating reg $t1
	li	$t1,0
	sw $t1, -8($fp)
	j	bp_label_29
	#			 __freeing reg $t1
	#end of statement jump
	j	bp_label_29
	#marker Label
bp_label_29:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_30:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_31
	#marker Label
bp_label_31:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t1
	move	$t1,$v0
	#finished calling False
	#a Bool Func False
	bne $t1, $zero,bExpAss_nfjdn14
	j	bExpAss_nfjdn15
	#returning from a boolean function
	#			 __freeing reg $t1
bExpAss_nfjdn14:
	#assigning True to boo
	#			 __allocating reg $t1
	li	$t1,1
	sw $t1, -8($fp)
	j	bp_label_32
bExpAss_nfjdn15:
	#assigning False to boo
	#			 __allocating reg $t1
	li	$t1,0
	sw $t1, -8($fp)
	j	bp_label_32
	#			 __freeing reg $t1
	#end of statement jump
	j	bp_label_32
	#marker Label
bp_label_32:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_33:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_34
	#marker Label
bp_label_34:
	#exp derived false
bExpAss_nfjdn16:
	#assigning True to boo
	#			 __allocating reg $t1
	li	$t1,1
	sw $t1, -8($fp)
	j	bp_label_35
bExpAss_nfjdn17:
	#assigning False to boo
	#			 __allocating reg $t1
	li	$t1,0
	sw $t1, -8($fp)
	j	bp_label_35
	#			 __freeing reg $t1
	#end of statement jump
	j	bp_label_35
	#marker Label
bp_label_35:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_36:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_37
	#marker Label
bp_label_37:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t1
	lw $t1, -4($fp)
bExpAss_nfjdn18:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_38
bExpAss_nfjdn19:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_38
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_38
	#marker Label
bp_label_38:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_39:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_40
	#marker Label
bp_label_40:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn20
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn21
bExpAss_nfjdn20:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_41
bExpAss_nfjdn21:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_41
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_41
	#marker Label
bp_label_41:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_42:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_43
	#marker Label
bp_label_43:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn22
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn23
bExpAss_nfjdn22:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_44
bExpAss_nfjdn23:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_44
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_44
	#marker Label
bp_label_44:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_45:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_46
	#marker Label
bp_label_46:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bp_label_47
	j	bExpAss_nfjdn25
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_47:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn24
	j	bExpAss_nfjdn25
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn24:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_48
bExpAss_nfjdn25:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_48
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_48
	#marker Label
bp_label_48:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_49:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_50
	#marker Label
bp_label_50:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bp_label_51
	j	bExpAss_nfjdn27
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_51:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn27
	#reach And derivation
bExpAss_nfjdn26:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_52
bExpAss_nfjdn27:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_52
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_52
	#marker Label
bp_label_52:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_53:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_54
	#marker Label
bp_label_54:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bp_label_55
	j	bExpAss_nfjdn29
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_55:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn28
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn29
	#reach And derivation
bExpAss_nfjdn28:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_56
bExpAss_nfjdn29:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_56
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_56
	#marker Label
bp_label_56:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_57:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_58
	#marker Label
bp_label_58:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bp_label_59
	j	bExpAss_nfjdn31
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_59:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn30
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn31
	#reach And derivation
bExpAss_nfjdn30:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_60
bExpAss_nfjdn31:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_60
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_60
	#marker Label
bp_label_60:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_61:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_62
	#marker Label
bp_label_62:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bp_label_63
	j	bExpAss_nfjdn33
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_63:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn32
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn33
	#reach And derivation
bExpAss_nfjdn32:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_64
bExpAss_nfjdn33:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_64
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_64
	#marker Label
bp_label_64:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_65:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_66
	#marker Label
bp_label_66:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_67
	#marker Label
bp_label_67:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn34
	j	bExpAss_nfjdn35
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn34:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_68
bExpAss_nfjdn35:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_68
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_68
	#marker Label
bp_label_68:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_69:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_70
	#marker Label
bp_label_70:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_71
	#marker Label
bp_label_71:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn37
	#reach And derivation
bExpAss_nfjdn36:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_72
bExpAss_nfjdn37:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_72
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_72
	#marker Label
bp_label_72:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_73:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_74
	#marker Label
bp_label_74:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_75
	#marker Label
bp_label_75:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn38
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn39
	#reach And derivation
bExpAss_nfjdn38:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_76
bExpAss_nfjdn39:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_76
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_76
	#marker Label
bp_label_76:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_77:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_78
	#marker Label
bp_label_78:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_79
	#marker Label
bp_label_79:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn40
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn41
	#reach And derivation
bExpAss_nfjdn40:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_80
bExpAss_nfjdn41:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_80
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_80
	#marker Label
bp_label_80:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_81:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_82
	#marker Label
bp_label_82:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_83
	#marker Label
bp_label_83:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn42
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn43
	#reach And derivation
bExpAss_nfjdn42:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_84
bExpAss_nfjdn43:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_84
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_84
	#marker Label
bp_label_84:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_85:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_86
	#marker Label
bp_label_86:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_87
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn45
	#marker Label
bp_label_87:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn44
	j	bExpAss_nfjdn45
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn44:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_88
bExpAss_nfjdn45:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_88
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_88
	#marker Label
bp_label_88:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_89:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_90
	#marker Label
bp_label_90:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_91
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn47
	#marker Label
bp_label_91:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn47
	#reach And derivation
bExpAss_nfjdn46:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_92
bExpAss_nfjdn47:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_92
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_92
	#marker Label
bp_label_92:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_93:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_94
	#marker Label
bp_label_94:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_95
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn49
	#marker Label
bp_label_95:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn48
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn49
	#reach And derivation
bExpAss_nfjdn48:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_96
bExpAss_nfjdn49:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_96
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_96
	#marker Label
bp_label_96:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_97:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_98
	#marker Label
bp_label_98:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_99
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn51
	#marker Label
bp_label_99:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn50
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn51
	#reach And derivation
bExpAss_nfjdn50:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_100
bExpAss_nfjdn51:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_100
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_100
	#marker Label
bp_label_100:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_101:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_102
	#marker Label
bp_label_102:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_103
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn53
	#marker Label
bp_label_103:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn52
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn53
	#reach And derivation
bExpAss_nfjdn52:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_104
bExpAss_nfjdn53:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_104
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_104
	#marker Label
bp_label_104:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_105:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_106
	#marker Label
bp_label_106:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_107
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn55
	#marker Label
bp_label_107:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn54
	j	bExpAss_nfjdn55
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn54:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_108
bExpAss_nfjdn55:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_108
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_108
	#marker Label
bp_label_108:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_109:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_110
	#marker Label
bp_label_110:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_111
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn57
	#marker Label
bp_label_111:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn57
	#reach And derivation
bExpAss_nfjdn56:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_112
bExpAss_nfjdn57:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_112
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_112
	#marker Label
bp_label_112:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_113:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_114
	#marker Label
bp_label_114:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_115
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn59
	#marker Label
bp_label_115:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn58
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn59
	#reach And derivation
bExpAss_nfjdn58:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_116
bExpAss_nfjdn59:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_116
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_116
	#marker Label
bp_label_116:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_117:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_118
	#marker Label
bp_label_118:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_119
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn61
	#marker Label
bp_label_119:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn60
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn61
	#reach And derivation
bExpAss_nfjdn60:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_120
bExpAss_nfjdn61:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_120
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_120
	#marker Label
bp_label_120:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_121:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_122
	#marker Label
bp_label_122:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_123
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn63
	#marker Label
bp_label_123:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn62
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn63
	#reach And derivation
bExpAss_nfjdn62:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_124
bExpAss_nfjdn63:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_124
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_124
	#marker Label
bp_label_124:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_125:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_126
	#marker Label
bp_label_126:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_127
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn65
	#marker Label
bp_label_127:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn64
	j	bExpAss_nfjdn65
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn64:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_128
bExpAss_nfjdn65:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_128
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_128
	#marker Label
bp_label_128:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_129:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_130
	#marker Label
bp_label_130:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_131
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn67
	#marker Label
bp_label_131:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn67
	#reach And derivation
bExpAss_nfjdn66:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_132
bExpAss_nfjdn67:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_132
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_132
	#marker Label
bp_label_132:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_133:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_134
	#marker Label
bp_label_134:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_135
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn69
	#marker Label
bp_label_135:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn68
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn69
	#reach And derivation
bExpAss_nfjdn68:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_136
bExpAss_nfjdn69:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_136
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_136
	#marker Label
bp_label_136:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_137:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_138
	#marker Label
bp_label_138:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_139
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn71
	#marker Label
bp_label_139:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn70
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn71
	#reach And derivation
bExpAss_nfjdn70:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_140
bExpAss_nfjdn71:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_140
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_140
	#marker Label
bp_label_140:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_141:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_142
	#marker Label
bp_label_142:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_143
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn73
	#marker Label
bp_label_143:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn72
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn73
	#reach And derivation
bExpAss_nfjdn72:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_144
bExpAss_nfjdn73:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_144
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_144
	#marker Label
bp_label_144:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_145:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_146
	#marker Label
bp_label_146:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bp_label_147
	j	bExpAss_nfjdn75
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_147:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn74
	j	bExpAss_nfjdn75
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn74:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_148
bExpAss_nfjdn75:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_148
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_148
	#marker Label
bp_label_148:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_149:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_150
	#marker Label
bp_label_150:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bp_label_151
	j	bExpAss_nfjdn77
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_151:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn77
	#reach And derivation
bExpAss_nfjdn76:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_152
bExpAss_nfjdn77:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_152
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_152
	#marker Label
bp_label_152:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_153:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_154
	#marker Label
bp_label_154:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bp_label_155
	j	bExpAss_nfjdn79
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_155:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn78
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn79
	#reach And derivation
bExpAss_nfjdn78:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_156
bExpAss_nfjdn79:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_156
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_156
	#marker Label
bp_label_156:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_157:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_158
	#marker Label
bp_label_158:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bp_label_159
	j	bExpAss_nfjdn81
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_159:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn80
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn81
	#reach And derivation
bExpAss_nfjdn80:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_160
bExpAss_nfjdn81:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_160
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_160
	#marker Label
bp_label_160:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_161:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_162
	#marker Label
bp_label_162:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bp_label_163
	j	bExpAss_nfjdn83
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_163:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn82
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn83
	#reach And derivation
bExpAss_nfjdn82:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_164
bExpAss_nfjdn83:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_164
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_164
	#marker Label
bp_label_164:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_165:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_166
	#marker Label
bp_label_166:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_167
	#marker Label
bp_label_167:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn84
	j	bExpAss_nfjdn85
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn84:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_168
bExpAss_nfjdn85:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_168
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_168
	#marker Label
bp_label_168:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_169:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_170
	#marker Label
bp_label_170:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_171
	#marker Label
bp_label_171:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn87
	#reach And derivation
bExpAss_nfjdn86:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_172
bExpAss_nfjdn87:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_172
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_172
	#marker Label
bp_label_172:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_173:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_174
	#marker Label
bp_label_174:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_175
	#marker Label
bp_label_175:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn88
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn89
	#reach And derivation
bExpAss_nfjdn88:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_176
bExpAss_nfjdn89:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_176
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_176
	#marker Label
bp_label_176:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_177:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_178
	#marker Label
bp_label_178:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_179
	#marker Label
bp_label_179:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn90
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn91
	#reach And derivation
bExpAss_nfjdn90:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_180
bExpAss_nfjdn91:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_180
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_180
	#marker Label
bp_label_180:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_181:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_182
	#marker Label
bp_label_182:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_183
	#marker Label
bp_label_183:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn92
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn93
	#reach And derivation
bExpAss_nfjdn92:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_184
bExpAss_nfjdn93:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_184
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_184
	#marker Label
bp_label_184:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_185:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_186
	#marker Label
bp_label_186:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_187
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn95
	#marker Label
bp_label_187:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn94
	j	bExpAss_nfjdn95
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn94:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_188
bExpAss_nfjdn95:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_188
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_188
	#marker Label
bp_label_188:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_189:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_190
	#marker Label
bp_label_190:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_191
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn97
	#marker Label
bp_label_191:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn97
	#reach And derivation
bExpAss_nfjdn96:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_192
bExpAss_nfjdn97:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_192
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_192
	#marker Label
bp_label_192:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_193:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_194
	#marker Label
bp_label_194:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_195
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn99
	#marker Label
bp_label_195:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn98
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn99
	#reach And derivation
bExpAss_nfjdn98:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_196
bExpAss_nfjdn99:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_196
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_196
	#marker Label
bp_label_196:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_197:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_198
	#marker Label
bp_label_198:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_199
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn101
	#marker Label
bp_label_199:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn100
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn101
	#reach And derivation
bExpAss_nfjdn100:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_200
bExpAss_nfjdn101:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_200
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_200
	#marker Label
bp_label_200:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_201:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_202
	#marker Label
bp_label_202:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_203
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn103
	#marker Label
bp_label_203:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn102
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn103
	#reach And derivation
bExpAss_nfjdn102:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_204
bExpAss_nfjdn103:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_204
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_204
	#marker Label
bp_label_204:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_205:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_206
	#marker Label
bp_label_206:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_207
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn105
	#marker Label
bp_label_207:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn104
	j	bExpAss_nfjdn105
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn104:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_208
bExpAss_nfjdn105:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_208
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_208
	#marker Label
bp_label_208:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_209:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_210
	#marker Label
bp_label_210:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_211
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn107
	#marker Label
bp_label_211:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn107
	#reach And derivation
bExpAss_nfjdn106:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_212
bExpAss_nfjdn107:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_212
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_212
	#marker Label
bp_label_212:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_213:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_214
	#marker Label
bp_label_214:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_215
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn109
	#marker Label
bp_label_215:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn108
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn109
	#reach And derivation
bExpAss_nfjdn108:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_216
bExpAss_nfjdn109:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_216
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_216
	#marker Label
bp_label_216:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_217:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_218
	#marker Label
bp_label_218:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_219
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn111
	#marker Label
bp_label_219:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn110
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn111
	#reach And derivation
bExpAss_nfjdn110:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_220
bExpAss_nfjdn111:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_220
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_220
	#marker Label
bp_label_220:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_221:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_222
	#marker Label
bp_label_222:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_223
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn113
	#marker Label
bp_label_223:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn112
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn113
	#reach And derivation
bExpAss_nfjdn112:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_224
bExpAss_nfjdn113:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_224
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_224
	#marker Label
bp_label_224:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_225:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_226
	#marker Label
bp_label_226:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_227
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn115
	#marker Label
bp_label_227:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn114
	j	bExpAss_nfjdn115
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn114:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_228
bExpAss_nfjdn115:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_228
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_228
	#marker Label
bp_label_228:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_229:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_230
	#marker Label
bp_label_230:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_231
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn117
	#marker Label
bp_label_231:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn117
	#reach And derivation
bExpAss_nfjdn116:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_232
bExpAss_nfjdn117:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_232
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_232
	#marker Label
bp_label_232:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_233:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_234
	#marker Label
bp_label_234:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_235
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn119
	#marker Label
bp_label_235:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn118
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn119
	#reach And derivation
bExpAss_nfjdn118:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_236
bExpAss_nfjdn119:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_236
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_236
	#marker Label
bp_label_236:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_237:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_238
	#marker Label
bp_label_238:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_239
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn121
	#marker Label
bp_label_239:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn120
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn121
	#reach And derivation
bExpAss_nfjdn120:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_240
bExpAss_nfjdn121:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_240
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_240
	#marker Label
bp_label_240:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_241:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_242
	#marker Label
bp_label_242:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_243
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn123
	#marker Label
bp_label_243:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn122
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn123
	#reach And derivation
bExpAss_nfjdn122:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_244
bExpAss_nfjdn123:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_244
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_244
	#marker Label
bp_label_244:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_245:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_246
	#marker Label
bp_label_246:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bp_label_247
	j	bExpAss_nfjdn125
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_247:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn124
	j	bExpAss_nfjdn125
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn124:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_248
bExpAss_nfjdn125:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_248
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_248
	#marker Label
bp_label_248:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_249:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_250
	#marker Label
bp_label_250:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bp_label_251
	j	bExpAss_nfjdn127
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_251:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn127
	#reach And derivation
bExpAss_nfjdn126:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_252
bExpAss_nfjdn127:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_252
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_252
	#marker Label
bp_label_252:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_253:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_254
	#marker Label
bp_label_254:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bp_label_255
	j	bExpAss_nfjdn129
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_255:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn128
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn129
	#reach And derivation
bExpAss_nfjdn128:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_256
bExpAss_nfjdn129:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_256
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_256
	#marker Label
bp_label_256:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_257:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_258
	#marker Label
bp_label_258:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bp_label_259
	j	bExpAss_nfjdn131
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_259:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn130
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn131
	#reach And derivation
bExpAss_nfjdn130:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_260
bExpAss_nfjdn131:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_260
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_260
	#marker Label
bp_label_260:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_261:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_262
	#marker Label
bp_label_262:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bp_label_263
	j	bExpAss_nfjdn133
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_263:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn132
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn133
	#reach And derivation
bExpAss_nfjdn132:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_264
bExpAss_nfjdn133:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_264
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_264
	#marker Label
bp_label_264:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_265:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_266
	#marker Label
bp_label_266:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn135
	#marker Label
bp_label_267:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn134
	j	bExpAss_nfjdn135
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn134:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_268
bExpAss_nfjdn135:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_268
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_268
	#marker Label
bp_label_268:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_269:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_270
	#marker Label
bp_label_270:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn137
	#marker Label
bp_label_271:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn137
	#reach And derivation
bExpAss_nfjdn136:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_272
bExpAss_nfjdn137:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_272
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_272
	#marker Label
bp_label_272:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_273:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_274
	#marker Label
bp_label_274:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn139
	#marker Label
bp_label_275:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn138
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn139
	#reach And derivation
bExpAss_nfjdn138:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_276
bExpAss_nfjdn139:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_276
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_276
	#marker Label
bp_label_276:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_277:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_278
	#marker Label
bp_label_278:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn141
	#marker Label
bp_label_279:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn140
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn141
	#reach And derivation
bExpAss_nfjdn140:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_280
bExpAss_nfjdn141:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_280
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_280
	#marker Label
bp_label_280:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_281:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_282
	#marker Label
bp_label_282:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn143
	#marker Label
bp_label_283:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn142
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn143
	#reach And derivation
bExpAss_nfjdn142:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_284
bExpAss_nfjdn143:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_284
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_284
	#marker Label
bp_label_284:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_285:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_286
	#marker Label
bp_label_286:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bp_label_287
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn145
	#marker Label
bp_label_287:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn144
	j	bExpAss_nfjdn145
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn144:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_288
bExpAss_nfjdn145:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_288
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_288
	#marker Label
bp_label_288:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_289:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_290
	#marker Label
bp_label_290:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bp_label_291
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn147
	#marker Label
bp_label_291:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn147
	#reach And derivation
bExpAss_nfjdn146:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_292
bExpAss_nfjdn147:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_292
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_292
	#marker Label
bp_label_292:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_293:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_294
	#marker Label
bp_label_294:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bp_label_295
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn149
	#marker Label
bp_label_295:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn148
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn149
	#reach And derivation
bExpAss_nfjdn148:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_296
bExpAss_nfjdn149:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_296
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_296
	#marker Label
bp_label_296:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_297:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_298
	#marker Label
bp_label_298:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bp_label_299
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn151
	#marker Label
bp_label_299:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn150
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn151
	#reach And derivation
bExpAss_nfjdn150:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_300
bExpAss_nfjdn151:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_300
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_300
	#marker Label
bp_label_300:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_301:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_302
	#marker Label
bp_label_302:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bp_label_303
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn153
	#marker Label
bp_label_303:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn152
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn153
	#reach And derivation
bExpAss_nfjdn152:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_304
bExpAss_nfjdn153:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_304
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_304
	#marker Label
bp_label_304:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_305:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_306
	#marker Label
bp_label_306:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bp_label_307
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn155
	#marker Label
bp_label_307:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn154
	j	bExpAss_nfjdn155
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn154:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_308
bExpAss_nfjdn155:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_308
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_308
	#marker Label
bp_label_308:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_309:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_310
	#marker Label
bp_label_310:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bp_label_311
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn157
	#marker Label
bp_label_311:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn157
	#reach And derivation
bExpAss_nfjdn156:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_312
bExpAss_nfjdn157:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_312
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_312
	#marker Label
bp_label_312:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_313:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_314
	#marker Label
bp_label_314:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bp_label_315
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn159
	#marker Label
bp_label_315:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn158
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn159
	#reach And derivation
bExpAss_nfjdn158:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_316
bExpAss_nfjdn159:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_316
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_316
	#marker Label
bp_label_316:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_317:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_318
	#marker Label
bp_label_318:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bp_label_319
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn161
	#marker Label
bp_label_319:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn160
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn161
	#reach And derivation
bExpAss_nfjdn160:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_320
bExpAss_nfjdn161:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_320
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_320
	#marker Label
bp_label_320:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_321:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_322
	#marker Label
bp_label_322:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bp_label_323
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn163
	#marker Label
bp_label_323:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn162
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn163
	#reach And derivation
bExpAss_nfjdn162:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_324
bExpAss_nfjdn163:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_324
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_324
	#marker Label
bp_label_324:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_325:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_326
	#marker Label
bp_label_326:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bp_label_327
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn165
	#marker Label
bp_label_327:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn164
	j	bExpAss_nfjdn165
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn164:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_328
bExpAss_nfjdn165:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_328
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_328
	#marker Label
bp_label_328:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_329:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_330
	#marker Label
bp_label_330:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bp_label_331
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn167
	#marker Label
bp_label_331:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn167
	#reach And derivation
bExpAss_nfjdn166:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_332
bExpAss_nfjdn167:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_332
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_332
	#marker Label
bp_label_332:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_333:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_334
	#marker Label
bp_label_334:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bp_label_335
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn169
	#marker Label
bp_label_335:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn168
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn169
	#reach And derivation
bExpAss_nfjdn168:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_336
bExpAss_nfjdn169:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_336
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_336
	#marker Label
bp_label_336:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_337:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_338
	#marker Label
bp_label_338:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bp_label_339
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn171
	#marker Label
bp_label_339:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn170
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn171
	#reach And derivation
bExpAss_nfjdn170:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_340
bExpAss_nfjdn171:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_340
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_340
	#marker Label
bp_label_340:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_341:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_342
	#marker Label
bp_label_342:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bp_label_343
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn173
	#marker Label
bp_label_343:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn172
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn173
	#reach And derivation
bExpAss_nfjdn172:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_344
bExpAss_nfjdn173:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_344
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_344
	#marker Label
bp_label_344:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_345:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_346
	#marker Label
bp_label_346:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bExpAss_nfjdn174
	j	bp_label_347
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_347:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn174
	j	bExpAss_nfjdn175
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn174:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_348
bExpAss_nfjdn175:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_348
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_348
	#marker Label
bp_label_348:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_349:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_350
	#marker Label
bp_label_350:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bExpAss_nfjdn176
	j	bp_label_351
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_351:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn177
	#reach Or derivation
bExpAss_nfjdn176:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_352
bExpAss_nfjdn177:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_352
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_352
	#marker Label
bp_label_352:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_353:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_354
	#marker Label
bp_label_354:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bExpAss_nfjdn178
	j	bp_label_355
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_355:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn178
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn179
	#reach Or derivation
bExpAss_nfjdn178:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_356
bExpAss_nfjdn179:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_356
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_356
	#marker Label
bp_label_356:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_357:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_358
	#marker Label
bp_label_358:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bExpAss_nfjdn180
	j	bp_label_359
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_359:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn180
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn181
	#reach Or derivation
bExpAss_nfjdn180:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_360
bExpAss_nfjdn181:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_360
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_360
	#marker Label
bp_label_360:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_361:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_362
	#marker Label
bp_label_362:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling True
	#a Bool Func True
	bne $t2, $zero,bExpAss_nfjdn182
	j	bp_label_363
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_363:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn182
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn183
	#reach Or derivation
bExpAss_nfjdn182:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_364
bExpAss_nfjdn183:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_364
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_364
	#marker Label
bp_label_364:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_365:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_366
	#marker Label
bp_label_366:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn184
	#marker Label
bp_label_367:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn184
	j	bExpAss_nfjdn185
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn184:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_368
bExpAss_nfjdn185:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_368
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_368
	#marker Label
bp_label_368:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_369:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_370
	#marker Label
bp_label_370:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn186
	#marker Label
bp_label_371:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn187
	#reach Or derivation
bExpAss_nfjdn186:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_372
bExpAss_nfjdn187:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_372
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_372
	#marker Label
bp_label_372:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_373:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_374
	#marker Label
bp_label_374:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn188
	#marker Label
bp_label_375:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn188
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn189
	#reach Or derivation
bExpAss_nfjdn188:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_376
bExpAss_nfjdn189:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_376
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_376
	#marker Label
bp_label_376:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_377:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_378
	#marker Label
bp_label_378:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn190
	#marker Label
bp_label_379:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn190
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn191
	#reach Or derivation
bExpAss_nfjdn190:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_380
bExpAss_nfjdn191:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_380
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_380
	#marker Label
bp_label_380:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_381:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_382
	#marker Label
bp_label_382:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn192
	#marker Label
bp_label_383:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn192
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn193
	#reach Or derivation
bExpAss_nfjdn192:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_384
bExpAss_nfjdn193:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_384
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_384
	#marker Label
bp_label_384:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_385:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_386
	#marker Label
bp_label_386:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn194
	#			 __freeing reg $t2
	#If False
	j	bp_label_387
	#marker Label
bp_label_387:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn194
	j	bExpAss_nfjdn195
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn194:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_388
bExpAss_nfjdn195:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_388
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_388
	#marker Label
bp_label_388:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_389:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_390
	#marker Label
bp_label_390:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn196
	#			 __freeing reg $t2
	#If False
	j	bp_label_391
	#marker Label
bp_label_391:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn197
	#reach Or derivation
bExpAss_nfjdn196:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_392
bExpAss_nfjdn197:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_392
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_392
	#marker Label
bp_label_392:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_393:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_394
	#marker Label
bp_label_394:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn198
	#			 __freeing reg $t2
	#If False
	j	bp_label_395
	#marker Label
bp_label_395:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn198
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn199
	#reach Or derivation
bExpAss_nfjdn198:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_396
bExpAss_nfjdn199:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_396
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_396
	#marker Label
bp_label_396:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_397:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_398
	#marker Label
bp_label_398:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn200
	#			 __freeing reg $t2
	#If False
	j	bp_label_399
	#marker Label
bp_label_399:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn200
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn201
	#reach Or derivation
bExpAss_nfjdn200:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_400
bExpAss_nfjdn201:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_400
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_400
	#marker Label
bp_label_400:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_401:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_402
	#marker Label
bp_label_402:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn202
	#			 __freeing reg $t2
	#If False
	j	bp_label_403
	#marker Label
bp_label_403:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn202
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn203
	#reach Or derivation
bExpAss_nfjdn202:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_404
bExpAss_nfjdn203:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_404
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_404
	#marker Label
bp_label_404:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_405:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_406
	#marker Label
bp_label_406:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn204
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_407
	#marker Label
bp_label_407:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn204
	j	bExpAss_nfjdn205
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn204:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_408
bExpAss_nfjdn205:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_408
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_408
	#marker Label
bp_label_408:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_409:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_410
	#marker Label
bp_label_410:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn206
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_411
	#marker Label
bp_label_411:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn207
	#reach Or derivation
bExpAss_nfjdn206:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_412
bExpAss_nfjdn207:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_412
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_412
	#marker Label
bp_label_412:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_413:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_414
	#marker Label
bp_label_414:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn208
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_415
	#marker Label
bp_label_415:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn208
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn209
	#reach Or derivation
bExpAss_nfjdn208:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_416
bExpAss_nfjdn209:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_416
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_416
	#marker Label
bp_label_416:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_417:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_418
	#marker Label
bp_label_418:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn210
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_419
	#marker Label
bp_label_419:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn210
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn211
	#reach Or derivation
bExpAss_nfjdn210:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_420
bExpAss_nfjdn211:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_420
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_420
	#marker Label
bp_label_420:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_421:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_422
	#marker Label
bp_label_422:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn212
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_423
	#marker Label
bp_label_423:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn212
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn213
	#reach Or derivation
bExpAss_nfjdn212:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_424
bExpAss_nfjdn213:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_424
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_424
	#marker Label
bp_label_424:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_425:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_426
	#marker Label
bp_label_426:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn214
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_427
	#marker Label
bp_label_427:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn214
	j	bExpAss_nfjdn215
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn214:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_428
bExpAss_nfjdn215:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_428
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_428
	#marker Label
bp_label_428:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_429:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_430
	#marker Label
bp_label_430:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn216
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_431
	#marker Label
bp_label_431:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn217
	#reach Or derivation
bExpAss_nfjdn216:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_432
bExpAss_nfjdn217:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_432
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_432
	#marker Label
bp_label_432:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_433:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_434
	#marker Label
bp_label_434:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn218
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_435
	#marker Label
bp_label_435:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn218
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn219
	#reach Or derivation
bExpAss_nfjdn218:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_436
bExpAss_nfjdn219:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_436
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_436
	#marker Label
bp_label_436:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_437:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_438
	#marker Label
bp_label_438:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn220
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_439
	#marker Label
bp_label_439:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn220
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn221
	#reach Or derivation
bExpAss_nfjdn220:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_440
bExpAss_nfjdn221:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_440
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_440
	#marker Label
bp_label_440:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_441:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_442
	#marker Label
bp_label_442:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn222
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_443
	#marker Label
bp_label_443:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn222
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn223
	#reach Or derivation
bExpAss_nfjdn222:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_444
bExpAss_nfjdn223:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_444
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_444
	#marker Label
bp_label_444:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_445:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_446
	#marker Label
bp_label_446:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn224
	j	bp_label_447
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_447:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn224
	j	bExpAss_nfjdn225
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn224:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_448
bExpAss_nfjdn225:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_448
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_448
	#marker Label
bp_label_448:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_449:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_450
	#marker Label
bp_label_450:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn226
	j	bp_label_451
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_451:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn227
	#reach Or derivation
bExpAss_nfjdn226:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_452
bExpAss_nfjdn227:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_452
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_452
	#marker Label
bp_label_452:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_453:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_454
	#marker Label
bp_label_454:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn228
	j	bp_label_455
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_455:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn228
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn229
	#reach Or derivation
bExpAss_nfjdn228:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_456
bExpAss_nfjdn229:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_456
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_456
	#marker Label
bp_label_456:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_457:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_458
	#marker Label
bp_label_458:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn230
	j	bp_label_459
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_459:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn230
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn231
	#reach Or derivation
bExpAss_nfjdn230:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_460
bExpAss_nfjdn231:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_460
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_460
	#marker Label
bp_label_460:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_461:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_462
	#marker Label
bp_label_462:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn232
	j	bp_label_463
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_463:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn232
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn233
	#reach Or derivation
bExpAss_nfjdn232:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_464
bExpAss_nfjdn233:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_464
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_464
	#marker Label
bp_label_464:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_465:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_466
	#marker Label
bp_label_466:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_467
	#marker Label
bp_label_467:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn234
	j	bExpAss_nfjdn235
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn234:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_468
bExpAss_nfjdn235:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_468
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_468
	#marker Label
bp_label_468:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_469:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_470
	#marker Label
bp_label_470:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_471
	#marker Label
bp_label_471:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn237
	#reach Or derivation
bExpAss_nfjdn236:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_472
bExpAss_nfjdn237:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_472
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_472
	#marker Label
bp_label_472:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_473:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_474
	#marker Label
bp_label_474:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_475
	#marker Label
bp_label_475:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn238
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn239
	#reach Or derivation
bExpAss_nfjdn238:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_476
bExpAss_nfjdn239:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_476
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_476
	#marker Label
bp_label_476:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_477:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_478
	#marker Label
bp_label_478:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_479
	#marker Label
bp_label_479:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn240
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn241
	#reach Or derivation
bExpAss_nfjdn240:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_480
bExpAss_nfjdn241:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_480
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_480
	#marker Label
bp_label_480:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_481:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_482
	#marker Label
bp_label_482:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_483
	#marker Label
bp_label_483:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn242
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn243
	#reach Or derivation
bExpAss_nfjdn242:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_484
bExpAss_nfjdn243:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_484
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_484
	#marker Label
bp_label_484:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_485:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_486
	#marker Label
bp_label_486:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn244
	#			 __freeing reg $t2
	#If False
	j	bp_label_487
	#marker Label
bp_label_487:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn244
	j	bExpAss_nfjdn245
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn244:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_488
bExpAss_nfjdn245:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_488
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_488
	#marker Label
bp_label_488:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_489:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_490
	#marker Label
bp_label_490:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn246
	#			 __freeing reg $t2
	#If False
	j	bp_label_491
	#marker Label
bp_label_491:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn247
	#reach Or derivation
bExpAss_nfjdn246:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_492
bExpAss_nfjdn247:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_492
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_492
	#marker Label
bp_label_492:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_493:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_494
	#marker Label
bp_label_494:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn248
	#			 __freeing reg $t2
	#If False
	j	bp_label_495
	#marker Label
bp_label_495:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn248
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn249
	#reach Or derivation
bExpAss_nfjdn248:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_496
bExpAss_nfjdn249:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_496
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_496
	#marker Label
bp_label_496:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_497:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_498
	#marker Label
bp_label_498:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn250
	#			 __freeing reg $t2
	#If False
	j	bp_label_499
	#marker Label
bp_label_499:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn250
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn251
	#reach Or derivation
bExpAss_nfjdn250:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_500
bExpAss_nfjdn251:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_500
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_500
	#marker Label
bp_label_500:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_501:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_502
	#marker Label
bp_label_502:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn252
	#			 __freeing reg $t2
	#If False
	j	bp_label_503
	#marker Label
bp_label_503:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn252
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn253
	#reach Or derivation
bExpAss_nfjdn252:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_504
bExpAss_nfjdn253:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_504
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_504
	#marker Label
bp_label_504:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_505:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_506
	#marker Label
bp_label_506:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn254
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_507
	#marker Label
bp_label_507:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn254
	j	bExpAss_nfjdn255
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn254:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_508
bExpAss_nfjdn255:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_508
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_508
	#marker Label
bp_label_508:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_509:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_510
	#marker Label
bp_label_510:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn256
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_511
	#marker Label
bp_label_511:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn257
	#reach Or derivation
bExpAss_nfjdn256:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_512
bExpAss_nfjdn257:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_512
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_512
	#marker Label
bp_label_512:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_513:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_514
	#marker Label
bp_label_514:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn258
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_515
	#marker Label
bp_label_515:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn258
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn259
	#reach Or derivation
bExpAss_nfjdn258:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_516
bExpAss_nfjdn259:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_516
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_516
	#marker Label
bp_label_516:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_517:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_518
	#marker Label
bp_label_518:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn260
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_519
	#marker Label
bp_label_519:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn260
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn261
	#reach Or derivation
bExpAss_nfjdn260:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_520
bExpAss_nfjdn261:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_520
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_520
	#marker Label
bp_label_520:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_521:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_522
	#marker Label
bp_label_522:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn262
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_523
	#marker Label
bp_label_523:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn262
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn263
	#reach Or derivation
bExpAss_nfjdn262:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_524
bExpAss_nfjdn263:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_524
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_524
	#marker Label
bp_label_524:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_525:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_526
	#marker Label
bp_label_526:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn264
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_527
	#marker Label
bp_label_527:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn264
	j	bExpAss_nfjdn265
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn264:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_528
bExpAss_nfjdn265:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_528
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_528
	#marker Label
bp_label_528:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_529:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_530
	#marker Label
bp_label_530:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn266
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_531
	#marker Label
bp_label_531:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn267
	#reach Or derivation
bExpAss_nfjdn266:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_532
bExpAss_nfjdn267:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_532
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_532
	#marker Label
bp_label_532:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_533:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_534
	#marker Label
bp_label_534:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn268
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_535
	#marker Label
bp_label_535:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn268
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn269
	#reach Or derivation
bExpAss_nfjdn268:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_536
bExpAss_nfjdn269:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_536
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_536
	#marker Label
bp_label_536:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_537:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_538
	#marker Label
bp_label_538:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn270
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_539
	#marker Label
bp_label_539:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn270
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn271
	#reach Or derivation
bExpAss_nfjdn270:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_540
bExpAss_nfjdn271:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_540
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_540
	#marker Label
bp_label_540:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_541:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_542
	#marker Label
bp_label_542:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn272
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_543
	#marker Label
bp_label_543:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn272
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn273
	#reach Or derivation
bExpAss_nfjdn272:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_544
bExpAss_nfjdn273:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_544
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_544
	#marker Label
bp_label_544:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_545:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_546
	#marker Label
bp_label_546:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn274
	j	bp_label_547
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_547:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn274
	j	bExpAss_nfjdn275
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn274:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_548
bExpAss_nfjdn275:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_548
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_548
	#marker Label
bp_label_548:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_549:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_550
	#marker Label
bp_label_550:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn276
	j	bp_label_551
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_551:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn277
	#reach Or derivation
bExpAss_nfjdn276:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_552
bExpAss_nfjdn277:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_552
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_552
	#marker Label
bp_label_552:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_553:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_554
	#marker Label
bp_label_554:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn278
	j	bp_label_555
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_555:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn278
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn279
	#reach Or derivation
bExpAss_nfjdn278:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_556
bExpAss_nfjdn279:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_556
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_556
	#marker Label
bp_label_556:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_557:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_558
	#marker Label
bp_label_558:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn280
	j	bp_label_559
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_559:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn280
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn281
	#reach Or derivation
bExpAss_nfjdn280:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_560
bExpAss_nfjdn281:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_560
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_560
	#marker Label
bp_label_560:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_561:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_562
	#marker Label
bp_label_562:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn282
	j	bp_label_563
	#returning from a boolean function
	#			 __freeing reg $t2
	#marker Label
bp_label_563:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn282
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn283
	#reach Or derivation
bExpAss_nfjdn282:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_564
bExpAss_nfjdn283:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_564
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_564
	#marker Label
bp_label_564:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_565:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_566
	#marker Label
bp_label_566:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_567
	#marker Label
bp_label_567:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn284
	j	bExpAss_nfjdn285
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn284:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_568
bExpAss_nfjdn285:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_568
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_568
	#marker Label
bp_label_568:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_569:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_570
	#marker Label
bp_label_570:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_571
	#marker Label
bp_label_571:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn287
	#reach Or derivation
bExpAss_nfjdn286:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_572
bExpAss_nfjdn287:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_572
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_572
	#marker Label
bp_label_572:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_573:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_574
	#marker Label
bp_label_574:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_575
	#marker Label
bp_label_575:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn288
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn289
	#reach Or derivation
bExpAss_nfjdn288:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_576
bExpAss_nfjdn289:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_576
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_576
	#marker Label
bp_label_576:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_577:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_578
	#marker Label
bp_label_578:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_579
	#marker Label
bp_label_579:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn290
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn291
	#reach Or derivation
bExpAss_nfjdn290:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_580
bExpAss_nfjdn291:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_580
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_580
	#marker Label
bp_label_580:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_581:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_582
	#marker Label
bp_label_582:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_583
	#marker Label
bp_label_583:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn292
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn293
	#reach Or derivation
bExpAss_nfjdn292:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_584
bExpAss_nfjdn293:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_584
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_584
	#marker Label
bp_label_584:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_585:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_586
	#marker Label
bp_label_586:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn294
	#			 __freeing reg $t2
	#If False
	j	bp_label_587
	#marker Label
bp_label_587:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn294
	j	bExpAss_nfjdn295
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn294:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_588
bExpAss_nfjdn295:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_588
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_588
	#marker Label
bp_label_588:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_589:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_590
	#marker Label
bp_label_590:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn296
	#			 __freeing reg $t2
	#If False
	j	bp_label_591
	#marker Label
bp_label_591:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn297
	#reach Or derivation
bExpAss_nfjdn296:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_592
bExpAss_nfjdn297:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_592
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_592
	#marker Label
bp_label_592:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_593:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_594
	#marker Label
bp_label_594:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn298
	#			 __freeing reg $t2
	#If False
	j	bp_label_595
	#marker Label
bp_label_595:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn298
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn299
	#reach Or derivation
bExpAss_nfjdn298:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_596
bExpAss_nfjdn299:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_596
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_596
	#marker Label
bp_label_596:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_597:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_598
	#marker Label
bp_label_598:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn300
	#			 __freeing reg $t2
	#If False
	j	bp_label_599
	#marker Label
bp_label_599:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn300
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn301
	#reach Or derivation
bExpAss_nfjdn300:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_600
bExpAss_nfjdn301:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_600
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_600
	#marker Label
bp_label_600:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_601:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_602
	#marker Label
bp_label_602:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn302
	#			 __freeing reg $t2
	#If False
	j	bp_label_603
	#marker Label
bp_label_603:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn302
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn303
	#reach Or derivation
bExpAss_nfjdn302:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_604
bExpAss_nfjdn303:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_604
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_604
	#marker Label
bp_label_604:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_605:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_606
	#marker Label
bp_label_606:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn304
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_607
	#marker Label
bp_label_607:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn304
	j	bExpAss_nfjdn305
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn304:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_608
bExpAss_nfjdn305:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_608
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_608
	#marker Label
bp_label_608:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_609:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_610
	#marker Label
bp_label_610:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn306
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_611
	#marker Label
bp_label_611:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn307
	#reach Or derivation
bExpAss_nfjdn306:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_612
bExpAss_nfjdn307:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_612
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_612
	#marker Label
bp_label_612:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_613:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_614
	#marker Label
bp_label_614:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn308
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_615
	#marker Label
bp_label_615:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn308
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn309
	#reach Or derivation
bExpAss_nfjdn308:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_616
bExpAss_nfjdn309:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_616
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_616
	#marker Label
bp_label_616:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_617:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_618
	#marker Label
bp_label_618:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn310
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_619
	#marker Label
bp_label_619:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn310
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn311
	#reach Or derivation
bExpAss_nfjdn310:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_620
bExpAss_nfjdn311:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_620
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_620
	#marker Label
bp_label_620:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_621:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_622
	#marker Label
bp_label_622:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn312
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_623
	#marker Label
bp_label_623:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn312
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn313
	#reach Or derivation
bExpAss_nfjdn312:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_624
bExpAss_nfjdn313:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_624
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_624
	#marker Label
bp_label_624:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_625:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_626
	#marker Label
bp_label_626:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn314
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_627
	#marker Label
bp_label_627:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling False
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn314
	j	bExpAss_nfjdn315
	#returning from a boolean function
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn314:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_628
bExpAss_nfjdn315:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_628
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_628
	#marker Label
bp_label_628:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_629:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_630
	#marker Label
bp_label_630:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn316
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_631
	#marker Label
bp_label_631:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn317
	#reach Or derivation
bExpAss_nfjdn316:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_632
bExpAss_nfjdn317:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_632
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_632
	#marker Label
bp_label_632:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_633:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_634
	#marker Label
bp_label_634:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn318
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_635
	#marker Label
bp_label_635:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn318
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn319
	#reach Or derivation
bExpAss_nfjdn318:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_636
bExpAss_nfjdn319:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_636
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_636
	#marker Label
bp_label_636:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_637:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_638
	#marker Label
bp_label_638:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn320
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_639
	#marker Label
bp_label_639:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn320
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn321
	#reach Or derivation
bExpAss_nfjdn320:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_640
bExpAss_nfjdn321:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_640
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_640
	#marker Label
bp_label_640:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_641:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_642
	#marker Label
bp_label_642:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn322
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_643
	#marker Label
bp_label_643:
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn322
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn323
	#reach Or derivation
bExpAss_nfjdn322:
	#assigning True to boo
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_644
bExpAss_nfjdn323:
	#assigning False to boo
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_644
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_644
	#marker Label
bp_label_644:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: boo offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_645:
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
	jal	label_29
	#returned from func: printBool
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printBool
	#end of statement jump
	j	bp_label_646
bp_label_646:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
