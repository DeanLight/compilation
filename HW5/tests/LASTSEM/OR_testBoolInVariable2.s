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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bExpAss_nfjdn5
	j	bExpAss_nfjdn4
	#returning from a boolean function
	#			 __freeing reg $t0
bExpAss_nfjdn4:
	#assigning True to b2
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_16
bExpAss_nfjdn5:
	#assigning False to b2
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_16
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_16
	#marker Label
bp_label_16:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b2 offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#marker Label
bp_label_17:
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
	j	bp_label_18
	#marker Label
bp_label_18:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn7
bExpAss_nfjdn6:
	#assigning True to b3
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -12($fp)
	j	bp_label_19
bExpAss_nfjdn7:
	#assigning False to b3
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -12($fp)
	j	bp_label_19
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_19
	#marker Label
bp_label_19:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b3 offset is -12($fp)
	#			 __allocating reg $t0
	lw $t0, -12($fp)
	#marker Label
bp_label_20:
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
	j	bp_label_21
	#marker Label
bp_label_21:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn9
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn8
bExpAss_nfjdn8:
	#assigning True to b4
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -16($fp)
	j	bp_label_22
bExpAss_nfjdn9:
	#assigning False to b4
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -16($fp)
	j	bp_label_22
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_22
	#marker Label
bp_label_22:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b4 offset is -16($fp)
	#			 __allocating reg $t0
	lw $t0, -16($fp)
	#marker Label
bp_label_23:
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
	j	bp_label_24
	#marker Label
bp_label_24:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bExpAss_nfjdn11
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn10
bExpAss_nfjdn10:
	#assigning True to b5
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -20($fp)
	j	bp_label_25
bExpAss_nfjdn11:
	#assigning False to b5
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -20($fp)
	j	bp_label_25
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_25
	#marker Label
bp_label_25:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b5 offset is -20($fp)
	#			 __allocating reg $t0
	lw $t0, -20($fp)
	#marker Label
bp_label_26:
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
	j	bp_label_27
	#marker Label
bp_label_27:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn13
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn12
bExpAss_nfjdn12:
	#assigning True to b6
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -24($fp)
	j	bp_label_28
bExpAss_nfjdn13:
	#assigning False to b6
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -24($fp)
	j	bp_label_28
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_28
	#marker Label
bp_label_28:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b6 offset is -24($fp)
	#			 __allocating reg $t0
	lw $t0, -24($fp)
	#marker Label
bp_label_29:
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
	j	bp_label_30
	#marker Label
bp_label_30:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn15
	j	bExpAss_nfjdn14
	#returning from a boolean function
	#			 __freeing reg $t0
bExpAss_nfjdn14:
	#assigning True to b7
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -28($fp)
	j	bp_label_31
bExpAss_nfjdn15:
	#assigning False to b7
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -28($fp)
	j	bp_label_31
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_31
	#marker Label
bp_label_31:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b7 offset is -28($fp)
	#			 __allocating reg $t0
	lw $t0, -28($fp)
	#marker Label
bp_label_32:
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
	j	bp_label_33
	#marker Label
bp_label_33:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn16
bExpAss_nfjdn16:
	#assigning True to b8
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -32($fp)
	j	bp_label_34
bExpAss_nfjdn17:
	#assigning False to b8
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -32($fp)
	j	bp_label_34
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_34
	#marker Label
bp_label_34:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b8 offset is -32($fp)
	#			 __allocating reg $t0
	lw $t0, -32($fp)
	#marker Label
bp_label_35:
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
	j	bp_label_36
	#marker Label
bp_label_36:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn19
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn18
bExpAss_nfjdn18:
	#assigning True to b9
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -36($fp)
	j	bp_label_37
bExpAss_nfjdn19:
	#assigning False to b9
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -36($fp)
	j	bp_label_37
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_37
	#marker Label
bp_label_37:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b9 offset is -36($fp)
	#			 __allocating reg $t0
	lw $t0, -36($fp)
	#marker Label
bp_label_38:
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
	j	bp_label_39
	#marker Label
bp_label_39:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn21
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn20
bExpAss_nfjdn20:
	#assigning True to b10
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -40($fp)
	j	bp_label_40
bExpAss_nfjdn21:
	#assigning False to b10
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -40($fp)
	j	bp_label_40
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_40
	#marker Label
bp_label_40:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b10 offset is -40($fp)
	#			 __allocating reg $t0
	lw $t0, -40($fp)
	#marker Label
bp_label_41:
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
	j	bp_label_42
	#marker Label
bp_label_42:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn23
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn22
bExpAss_nfjdn22:
	#assigning True to b11
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -44($fp)
	j	bp_label_43
bExpAss_nfjdn23:
	#assigning False to b11
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -44($fp)
	j	bp_label_43
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_43
	#marker Label
bp_label_43:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b11 offset is -44($fp)
	#			 __allocating reg $t0
	lw $t0, -44($fp)
	#marker Label
bp_label_44:
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
	j	bp_label_45
	#marker Label
bp_label_45:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bp_label_46
	j	bExpAss_nfjdn24
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_46:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn25
	j	bExpAss_nfjdn24
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn24:
	#assigning True to b12
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -48($fp)
	j	bp_label_47
bExpAss_nfjdn25:
	#assigning False to b12
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -48($fp)
	j	bp_label_47
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_47
	#marker Label
bp_label_47:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b12 offset is -48($fp)
	#			 __allocating reg $t0
	lw $t0, -48($fp)
	#marker Label
bp_label_48:
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
	j	bp_label_49
	#marker Label
bp_label_49:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bp_label_50
	j	bExpAss_nfjdn26
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_50:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn26
	#reach And derivation
bExpAss_nfjdn26:
	#assigning True to b13
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -52($fp)
	j	bp_label_51
bExpAss_nfjdn27:
	#assigning False to b13
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -52($fp)
	j	bp_label_51
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_51
	#marker Label
bp_label_51:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b13 offset is -52($fp)
	#			 __allocating reg $t0
	lw $t0, -52($fp)
	#marker Label
bp_label_52:
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
	j	bp_label_53
	#marker Label
bp_label_53:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bp_label_54
	j	bExpAss_nfjdn28
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_54:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn29
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn28
	#reach And derivation
bExpAss_nfjdn28:
	#assigning True to b14
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -56($fp)
	j	bp_label_55
bExpAss_nfjdn29:
	#assigning False to b14
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -56($fp)
	j	bp_label_55
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_55
	#marker Label
bp_label_55:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b14 offset is -56($fp)
	#			 __allocating reg $t0
	lw $t0, -56($fp)
	#marker Label
bp_label_56:
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
	j	bp_label_57
	#marker Label
bp_label_57:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bp_label_58
	j	bExpAss_nfjdn30
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_58:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn31
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn30
	#reach And derivation
bExpAss_nfjdn30:
	#assigning True to b15
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -60($fp)
	j	bp_label_59
bExpAss_nfjdn31:
	#assigning False to b15
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -60($fp)
	j	bp_label_59
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_59
	#marker Label
bp_label_59:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b15 offset is -60($fp)
	#			 __allocating reg $t0
	lw $t0, -60($fp)
	#marker Label
bp_label_60:
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
	j	bp_label_61
	#marker Label
bp_label_61:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bp_label_62
	j	bExpAss_nfjdn32
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_62:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn33
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn32
	#reach And derivation
bExpAss_nfjdn32:
	#assigning True to b16
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -64($fp)
	j	bp_label_63
bExpAss_nfjdn33:
	#assigning False to b16
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -64($fp)
	j	bp_label_63
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_63
	#marker Label
bp_label_63:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b16 offset is -64($fp)
	#			 __allocating reg $t0
	lw $t0, -64($fp)
	#marker Label
bp_label_64:
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
	j	bp_label_65
	#marker Label
bp_label_65:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_66
	#marker Label
bp_label_66:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn35
	j	bExpAss_nfjdn34
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn34:
	#assigning True to b17
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -68($fp)
	j	bp_label_67
bExpAss_nfjdn35:
	#assigning False to b17
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -68($fp)
	j	bp_label_67
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_67
	#marker Label
bp_label_67:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b17 offset is -68($fp)
	#			 __allocating reg $t0
	lw $t0, -68($fp)
	#marker Label
bp_label_68:
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
	j	bp_label_69
	#marker Label
bp_label_69:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_70
	#marker Label
bp_label_70:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn36
	#reach And derivation
bExpAss_nfjdn36:
	#assigning True to b18
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -72($fp)
	j	bp_label_71
bExpAss_nfjdn37:
	#assigning False to b18
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -72($fp)
	j	bp_label_71
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_71
	#marker Label
bp_label_71:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b18 offset is -72($fp)
	#			 __allocating reg $t0
	lw $t0, -72($fp)
	#marker Label
bp_label_72:
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
	j	bp_label_73
	#marker Label
bp_label_73:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_74
	#marker Label
bp_label_74:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn39
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn38
	#reach And derivation
bExpAss_nfjdn38:
	#assigning True to b19
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -76($fp)
	j	bp_label_75
bExpAss_nfjdn39:
	#assigning False to b19
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -76($fp)
	j	bp_label_75
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_75
	#marker Label
bp_label_75:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b19 offset is -76($fp)
	#			 __allocating reg $t0
	lw $t0, -76($fp)
	#marker Label
bp_label_76:
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
	j	bp_label_77
	#marker Label
bp_label_77:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_78
	#marker Label
bp_label_78:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn41
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn40
	#reach And derivation
bExpAss_nfjdn40:
	#assigning True to b20
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -80($fp)
	j	bp_label_79
bExpAss_nfjdn41:
	#assigning False to b20
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -80($fp)
	j	bp_label_79
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_79
	#marker Label
bp_label_79:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b20 offset is -80($fp)
	#			 __allocating reg $t0
	lw $t0, -80($fp)
	#marker Label
bp_label_80:
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
	j	bp_label_81
	#marker Label
bp_label_81:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_82
	#marker Label
bp_label_82:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn43
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn42
	#reach And derivation
bExpAss_nfjdn42:
	#assigning True to b21
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -84($fp)
	j	bp_label_83
bExpAss_nfjdn43:
	#assigning False to b21
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -84($fp)
	j	bp_label_83
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_83
	#marker Label
bp_label_83:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b21 offset is -84($fp)
	#			 __allocating reg $t0
	lw $t0, -84($fp)
	#marker Label
bp_label_84:
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
	j	bp_label_85
	#marker Label
bp_label_85:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_86
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn44
	#marker Label
bp_label_86:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn45
	j	bExpAss_nfjdn44
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn44:
	#assigning True to b22
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -88($fp)
	j	bp_label_87
bExpAss_nfjdn45:
	#assigning False to b22
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -88($fp)
	j	bp_label_87
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_87
	#marker Label
bp_label_87:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b22 offset is -88($fp)
	#			 __allocating reg $t0
	lw $t0, -88($fp)
	#marker Label
bp_label_88:
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
	j	bp_label_89
	#marker Label
bp_label_89:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_90
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn46
	#marker Label
bp_label_90:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn46
	#reach And derivation
bExpAss_nfjdn46:
	#assigning True to b23
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -92($fp)
	j	bp_label_91
bExpAss_nfjdn47:
	#assigning False to b23
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -92($fp)
	j	bp_label_91
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_91
	#marker Label
bp_label_91:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b23 offset is -92($fp)
	#			 __allocating reg $t0
	lw $t0, -92($fp)
	#marker Label
bp_label_92:
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
	j	bp_label_93
	#marker Label
bp_label_93:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_94
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn48
	#marker Label
bp_label_94:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn49
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn48
	#reach And derivation
bExpAss_nfjdn48:
	#assigning True to b24
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -96($fp)
	j	bp_label_95
bExpAss_nfjdn49:
	#assigning False to b24
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -96($fp)
	j	bp_label_95
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_95
	#marker Label
bp_label_95:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b24 offset is -96($fp)
	#			 __allocating reg $t0
	lw $t0, -96($fp)
	#marker Label
bp_label_96:
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
	j	bp_label_97
	#marker Label
bp_label_97:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_98
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn50
	#marker Label
bp_label_98:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn51
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn50
	#reach And derivation
bExpAss_nfjdn50:
	#assigning True to b25
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -100($fp)
	j	bp_label_99
bExpAss_nfjdn51:
	#assigning False to b25
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -100($fp)
	j	bp_label_99
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_99
	#marker Label
bp_label_99:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b25 offset is -100($fp)
	#			 __allocating reg $t0
	lw $t0, -100($fp)
	#marker Label
bp_label_100:
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
	j	bp_label_101
	#marker Label
bp_label_101:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_102
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn52
	#marker Label
bp_label_102:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn53
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn52
	#reach And derivation
bExpAss_nfjdn52:
	#assigning True to b26
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -104($fp)
	j	bp_label_103
bExpAss_nfjdn53:
	#assigning False to b26
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -104($fp)
	j	bp_label_103
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_103
	#marker Label
bp_label_103:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b26 offset is -104($fp)
	#			 __allocating reg $t0
	lw $t0, -104($fp)
	#marker Label
bp_label_104:
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
	j	bp_label_105
	#marker Label
bp_label_105:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_106
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn54
	#marker Label
bp_label_106:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn55
	j	bExpAss_nfjdn54
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn54:
	#assigning True to b27
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -108($fp)
	j	bp_label_107
bExpAss_nfjdn55:
	#assigning False to b27
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -108($fp)
	j	bp_label_107
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_107
	#marker Label
bp_label_107:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b27 offset is -108($fp)
	#			 __allocating reg $t0
	lw $t0, -108($fp)
	#marker Label
bp_label_108:
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
	j	bp_label_109
	#marker Label
bp_label_109:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_110
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn56
	#marker Label
bp_label_110:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn56
	#reach And derivation
bExpAss_nfjdn56:
	#assigning True to b28
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -112($fp)
	j	bp_label_111
bExpAss_nfjdn57:
	#assigning False to b28
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -112($fp)
	j	bp_label_111
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_111
	#marker Label
bp_label_111:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b28 offset is -112($fp)
	#			 __allocating reg $t0
	lw $t0, -112($fp)
	#marker Label
bp_label_112:
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
	j	bp_label_113
	#marker Label
bp_label_113:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_114
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn58
	#marker Label
bp_label_114:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn59
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn58
	#reach And derivation
bExpAss_nfjdn58:
	#assigning True to b29
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -116($fp)
	j	bp_label_115
bExpAss_nfjdn59:
	#assigning False to b29
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -116($fp)
	j	bp_label_115
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_115
	#marker Label
bp_label_115:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b29 offset is -116($fp)
	#			 __allocating reg $t0
	lw $t0, -116($fp)
	#marker Label
bp_label_116:
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
	j	bp_label_117
	#marker Label
bp_label_117:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_118
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn60
	#marker Label
bp_label_118:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn61
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn60
	#reach And derivation
bExpAss_nfjdn60:
	#assigning True to b30
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -120($fp)
	j	bp_label_119
bExpAss_nfjdn61:
	#assigning False to b30
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -120($fp)
	j	bp_label_119
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_119
	#marker Label
bp_label_119:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b30 offset is -120($fp)
	#			 __allocating reg $t0
	lw $t0, -120($fp)
	#marker Label
bp_label_120:
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
	j	bp_label_121
	#marker Label
bp_label_121:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_122
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn62
	#marker Label
bp_label_122:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn63
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn62
	#reach And derivation
bExpAss_nfjdn62:
	#assigning True to b31
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -124($fp)
	j	bp_label_123
bExpAss_nfjdn63:
	#assigning False to b31
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -124($fp)
	j	bp_label_123
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_123
	#marker Label
bp_label_123:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b31 offset is -124($fp)
	#			 __allocating reg $t0
	lw $t0, -124($fp)
	#marker Label
bp_label_124:
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
	j	bp_label_125
	#marker Label
bp_label_125:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_126
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn64
	#marker Label
bp_label_126:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn65
	j	bExpAss_nfjdn64
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn64:
	#assigning True to b32
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -128($fp)
	j	bp_label_127
bExpAss_nfjdn65:
	#assigning False to b32
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -128($fp)
	j	bp_label_127
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_127
	#marker Label
bp_label_127:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b32 offset is -128($fp)
	#			 __allocating reg $t0
	lw $t0, -128($fp)
	#marker Label
bp_label_128:
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
	j	bp_label_129
	#marker Label
bp_label_129:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_130
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn66
	#marker Label
bp_label_130:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn66
	#reach And derivation
bExpAss_nfjdn66:
	#assigning True to b33
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -132($fp)
	j	bp_label_131
bExpAss_nfjdn67:
	#assigning False to b33
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -132($fp)
	j	bp_label_131
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_131
	#marker Label
bp_label_131:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b33 offset is -132($fp)
	#			 __allocating reg $t0
	lw $t0, -132($fp)
	#marker Label
bp_label_132:
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
	j	bp_label_133
	#marker Label
bp_label_133:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_134
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn68
	#marker Label
bp_label_134:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn69
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn68
	#reach And derivation
bExpAss_nfjdn68:
	#assigning True to b34
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -136($fp)
	j	bp_label_135
bExpAss_nfjdn69:
	#assigning False to b34
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -136($fp)
	j	bp_label_135
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_135
	#marker Label
bp_label_135:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b34 offset is -136($fp)
	#			 __allocating reg $t0
	lw $t0, -136($fp)
	#marker Label
bp_label_136:
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
	j	bp_label_137
	#marker Label
bp_label_137:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_138
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn70
	#marker Label
bp_label_138:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn71
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn70
	#reach And derivation
bExpAss_nfjdn70:
	#assigning True to b35
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -140($fp)
	j	bp_label_139
bExpAss_nfjdn71:
	#assigning False to b35
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -140($fp)
	j	bp_label_139
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_139
	#marker Label
bp_label_139:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b35 offset is -140($fp)
	#			 __allocating reg $t0
	lw $t0, -140($fp)
	#marker Label
bp_label_140:
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
	j	bp_label_141
	#marker Label
bp_label_141:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_142
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn72
	#marker Label
bp_label_142:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn73
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn72
	#reach And derivation
bExpAss_nfjdn72:
	#assigning True to b36
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -144($fp)
	j	bp_label_143
bExpAss_nfjdn73:
	#assigning False to b36
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -144($fp)
	j	bp_label_143
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_143
	#marker Label
bp_label_143:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b36 offset is -144($fp)
	#			 __allocating reg $t0
	lw $t0, -144($fp)
	#marker Label
bp_label_144:
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
	j	bp_label_145
	#marker Label
bp_label_145:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bp_label_146
	j	bExpAss_nfjdn74
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_146:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn75
	j	bExpAss_nfjdn74
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn74:
	#assigning True to b37
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -148($fp)
	j	bp_label_147
bExpAss_nfjdn75:
	#assigning False to b37
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -148($fp)
	j	bp_label_147
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_147
	#marker Label
bp_label_147:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b37 offset is -148($fp)
	#			 __allocating reg $t0
	lw $t0, -148($fp)
	#marker Label
bp_label_148:
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
	j	bp_label_149
	#marker Label
bp_label_149:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bp_label_150
	j	bExpAss_nfjdn76
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_150:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn76
	#reach And derivation
bExpAss_nfjdn76:
	#assigning True to b38
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -152($fp)
	j	bp_label_151
bExpAss_nfjdn77:
	#assigning False to b38
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -152($fp)
	j	bp_label_151
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_151
	#marker Label
bp_label_151:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b38 offset is -152($fp)
	#			 __allocating reg $t0
	lw $t0, -152($fp)
	#marker Label
bp_label_152:
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
	j	bp_label_153
	#marker Label
bp_label_153:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bp_label_154
	j	bExpAss_nfjdn78
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_154:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn79
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn78
	#reach And derivation
bExpAss_nfjdn78:
	#assigning True to b39
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -156($fp)
	j	bp_label_155
bExpAss_nfjdn79:
	#assigning False to b39
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -156($fp)
	j	bp_label_155
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_155
	#marker Label
bp_label_155:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b39 offset is -156($fp)
	#			 __allocating reg $t0
	lw $t0, -156($fp)
	#marker Label
bp_label_156:
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
	j	bp_label_157
	#marker Label
bp_label_157:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bp_label_158
	j	bExpAss_nfjdn80
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_158:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn81
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn80
	#reach And derivation
bExpAss_nfjdn80:
	#assigning True to b40
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -160($fp)
	j	bp_label_159
bExpAss_nfjdn81:
	#assigning False to b40
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -160($fp)
	j	bp_label_159
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_159
	#marker Label
bp_label_159:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b40 offset is -160($fp)
	#			 __allocating reg $t0
	lw $t0, -160($fp)
	#marker Label
bp_label_160:
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
	j	bp_label_161
	#marker Label
bp_label_161:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bp_label_162
	j	bExpAss_nfjdn82
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_162:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn83
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn82
	#reach And derivation
bExpAss_nfjdn82:
	#assigning True to b41
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -164($fp)
	j	bp_label_163
bExpAss_nfjdn83:
	#assigning False to b41
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -164($fp)
	j	bp_label_163
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_163
	#marker Label
bp_label_163:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b41 offset is -164($fp)
	#			 __allocating reg $t0
	lw $t0, -164($fp)
	#marker Label
bp_label_164:
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
	j	bp_label_165
	#marker Label
bp_label_165:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_166
	#marker Label
bp_label_166:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn85
	j	bExpAss_nfjdn84
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn84:
	#assigning True to b42
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -168($fp)
	j	bp_label_167
bExpAss_nfjdn85:
	#assigning False to b42
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -168($fp)
	j	bp_label_167
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_167
	#marker Label
bp_label_167:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b42 offset is -168($fp)
	#			 __allocating reg $t0
	lw $t0, -168($fp)
	#marker Label
bp_label_168:
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
	j	bp_label_169
	#marker Label
bp_label_169:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_170
	#marker Label
bp_label_170:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn86
	#reach And derivation
bExpAss_nfjdn86:
	#assigning True to b43
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -172($fp)
	j	bp_label_171
bExpAss_nfjdn87:
	#assigning False to b43
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -172($fp)
	j	bp_label_171
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_171
	#marker Label
bp_label_171:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b43 offset is -172($fp)
	#			 __allocating reg $t0
	lw $t0, -172($fp)
	#marker Label
bp_label_172:
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
	j	bp_label_173
	#marker Label
bp_label_173:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_174
	#marker Label
bp_label_174:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn89
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn88
	#reach And derivation
bExpAss_nfjdn88:
	#assigning True to b44
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -176($fp)
	j	bp_label_175
bExpAss_nfjdn89:
	#assigning False to b44
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -176($fp)
	j	bp_label_175
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_175
	#marker Label
bp_label_175:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b44 offset is -176($fp)
	#			 __allocating reg $t0
	lw $t0, -176($fp)
	#marker Label
bp_label_176:
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
	j	bp_label_177
	#marker Label
bp_label_177:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_178
	#marker Label
bp_label_178:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn91
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn90
	#reach And derivation
bExpAss_nfjdn90:
	#assigning True to b45
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -180($fp)
	j	bp_label_179
bExpAss_nfjdn91:
	#assigning False to b45
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -180($fp)
	j	bp_label_179
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_179
	#marker Label
bp_label_179:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b45 offset is -180($fp)
	#			 __allocating reg $t0
	lw $t0, -180($fp)
	#marker Label
bp_label_180:
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
	j	bp_label_181
	#marker Label
bp_label_181:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_182
	#marker Label
bp_label_182:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn93
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn92
	#reach And derivation
bExpAss_nfjdn92:
	#assigning True to b46
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -184($fp)
	j	bp_label_183
bExpAss_nfjdn93:
	#assigning False to b46
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -184($fp)
	j	bp_label_183
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_183
	#marker Label
bp_label_183:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b46 offset is -184($fp)
	#			 __allocating reg $t0
	lw $t0, -184($fp)
	#marker Label
bp_label_184:
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
	j	bp_label_185
	#marker Label
bp_label_185:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_186
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn94
	#marker Label
bp_label_186:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn95
	j	bExpAss_nfjdn94
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn94:
	#assigning True to b47
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -188($fp)
	j	bp_label_187
bExpAss_nfjdn95:
	#assigning False to b47
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -188($fp)
	j	bp_label_187
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_187
	#marker Label
bp_label_187:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b47 offset is -188($fp)
	#			 __allocating reg $t0
	lw $t0, -188($fp)
	#marker Label
bp_label_188:
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
	j	bp_label_189
	#marker Label
bp_label_189:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_190
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn96
	#marker Label
bp_label_190:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn96
	#reach And derivation
bExpAss_nfjdn96:
	#assigning True to b48
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -192($fp)
	j	bp_label_191
bExpAss_nfjdn97:
	#assigning False to b48
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -192($fp)
	j	bp_label_191
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_191
	#marker Label
bp_label_191:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b48 offset is -192($fp)
	#			 __allocating reg $t0
	lw $t0, -192($fp)
	#marker Label
bp_label_192:
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
	j	bp_label_193
	#marker Label
bp_label_193:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_194
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn98
	#marker Label
bp_label_194:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn99
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn98
	#reach And derivation
bExpAss_nfjdn98:
	#assigning True to b49
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -196($fp)
	j	bp_label_195
bExpAss_nfjdn99:
	#assigning False to b49
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -196($fp)
	j	bp_label_195
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_195
	#marker Label
bp_label_195:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b49 offset is -196($fp)
	#			 __allocating reg $t0
	lw $t0, -196($fp)
	#marker Label
bp_label_196:
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
	j	bp_label_197
	#marker Label
bp_label_197:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_198
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn100
	#marker Label
bp_label_198:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn101
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn100
	#reach And derivation
bExpAss_nfjdn100:
	#assigning True to b50
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -200($fp)
	j	bp_label_199
bExpAss_nfjdn101:
	#assigning False to b50
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -200($fp)
	j	bp_label_199
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_199
	#marker Label
bp_label_199:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b50 offset is -200($fp)
	#			 __allocating reg $t0
	lw $t0, -200($fp)
	#marker Label
bp_label_200:
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
	j	bp_label_201
	#marker Label
bp_label_201:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_202
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn102
	#marker Label
bp_label_202:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn103
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn102
	#reach And derivation
bExpAss_nfjdn102:
	#assigning True to b51
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -204($fp)
	j	bp_label_203
bExpAss_nfjdn103:
	#assigning False to b51
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -204($fp)
	j	bp_label_203
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_203
	#marker Label
bp_label_203:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b51 offset is -204($fp)
	#			 __allocating reg $t0
	lw $t0, -204($fp)
	#marker Label
bp_label_204:
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
	j	bp_label_205
	#marker Label
bp_label_205:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_206
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn104
	#marker Label
bp_label_206:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn105
	j	bExpAss_nfjdn104
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn104:
	#assigning True to b52
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -208($fp)
	j	bp_label_207
bExpAss_nfjdn105:
	#assigning False to b52
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -208($fp)
	j	bp_label_207
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_207
	#marker Label
bp_label_207:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b52 offset is -208($fp)
	#			 __allocating reg $t0
	lw $t0, -208($fp)
	#marker Label
bp_label_208:
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
	j	bp_label_209
	#marker Label
bp_label_209:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_210
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn106
	#marker Label
bp_label_210:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn106
	#reach And derivation
bExpAss_nfjdn106:
	#assigning True to b53
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -212($fp)
	j	bp_label_211
bExpAss_nfjdn107:
	#assigning False to b53
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -212($fp)
	j	bp_label_211
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_211
	#marker Label
bp_label_211:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b53 offset is -212($fp)
	#			 __allocating reg $t0
	lw $t0, -212($fp)
	#marker Label
bp_label_212:
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
	j	bp_label_213
	#marker Label
bp_label_213:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_214
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn108
	#marker Label
bp_label_214:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn109
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn108
	#reach And derivation
bExpAss_nfjdn108:
	#assigning True to b54
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -216($fp)
	j	bp_label_215
bExpAss_nfjdn109:
	#assigning False to b54
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -216($fp)
	j	bp_label_215
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_215
	#marker Label
bp_label_215:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b54 offset is -216($fp)
	#			 __allocating reg $t0
	lw $t0, -216($fp)
	#marker Label
bp_label_216:
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
	j	bp_label_217
	#marker Label
bp_label_217:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_218
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn110
	#marker Label
bp_label_218:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn111
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn110
	#reach And derivation
bExpAss_nfjdn110:
	#assigning True to b55
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -220($fp)
	j	bp_label_219
bExpAss_nfjdn111:
	#assigning False to b55
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -220($fp)
	j	bp_label_219
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_219
	#marker Label
bp_label_219:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b55 offset is -220($fp)
	#			 __allocating reg $t0
	lw $t0, -220($fp)
	#marker Label
bp_label_220:
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
	j	bp_label_221
	#marker Label
bp_label_221:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_222
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn112
	#marker Label
bp_label_222:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn113
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn112
	#reach And derivation
bExpAss_nfjdn112:
	#assigning True to b56
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -224($fp)
	j	bp_label_223
bExpAss_nfjdn113:
	#assigning False to b56
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -224($fp)
	j	bp_label_223
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_223
	#marker Label
bp_label_223:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b56 offset is -224($fp)
	#			 __allocating reg $t0
	lw $t0, -224($fp)
	#marker Label
bp_label_224:
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
	j	bp_label_225
	#marker Label
bp_label_225:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_226
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn114
	#marker Label
bp_label_226:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn115
	j	bExpAss_nfjdn114
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn114:
	#assigning True to b57
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -228($fp)
	j	bp_label_227
bExpAss_nfjdn115:
	#assigning False to b57
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -228($fp)
	j	bp_label_227
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_227
	#marker Label
bp_label_227:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b57 offset is -228($fp)
	#			 __allocating reg $t0
	lw $t0, -228($fp)
	#marker Label
bp_label_228:
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
	j	bp_label_229
	#marker Label
bp_label_229:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_230
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn116
	#marker Label
bp_label_230:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn116
	#reach And derivation
bExpAss_nfjdn116:
	#assigning True to b58
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -232($fp)
	j	bp_label_231
bExpAss_nfjdn117:
	#assigning False to b58
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -232($fp)
	j	bp_label_231
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_231
	#marker Label
bp_label_231:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b58 offset is -232($fp)
	#			 __allocating reg $t0
	lw $t0, -232($fp)
	#marker Label
bp_label_232:
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
	j	bp_label_233
	#marker Label
bp_label_233:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_234
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn118
	#marker Label
bp_label_234:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn119
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn118
	#reach And derivation
bExpAss_nfjdn118:
	#assigning True to b59
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -236($fp)
	j	bp_label_235
bExpAss_nfjdn119:
	#assigning False to b59
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -236($fp)
	j	bp_label_235
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_235
	#marker Label
bp_label_235:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b59 offset is -236($fp)
	#			 __allocating reg $t0
	lw $t0, -236($fp)
	#marker Label
bp_label_236:
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
	j	bp_label_237
	#marker Label
bp_label_237:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_238
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn120
	#marker Label
bp_label_238:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn121
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn120
	#reach And derivation
bExpAss_nfjdn120:
	#assigning True to b60
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -240($fp)
	j	bp_label_239
bExpAss_nfjdn121:
	#assigning False to b60
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -240($fp)
	j	bp_label_239
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_239
	#marker Label
bp_label_239:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b60 offset is -240($fp)
	#			 __allocating reg $t0
	lw $t0, -240($fp)
	#marker Label
bp_label_240:
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
	j	bp_label_241
	#marker Label
bp_label_241:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_242
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn122
	#marker Label
bp_label_242:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn123
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn122
	#reach And derivation
bExpAss_nfjdn122:
	#assigning True to b61
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -244($fp)
	j	bp_label_243
bExpAss_nfjdn123:
	#assigning False to b61
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -244($fp)
	j	bp_label_243
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_243
	#marker Label
bp_label_243:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b61 offset is -244($fp)
	#			 __allocating reg $t0
	lw $t0, -244($fp)
	#marker Label
bp_label_244:
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
	j	bp_label_245
	#marker Label
bp_label_245:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_246
	j	bExpAss_nfjdn124
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_246:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn125
	j	bExpAss_nfjdn124
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn124:
	#assigning True to b62
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -248($fp)
	j	bp_label_247
bExpAss_nfjdn125:
	#assigning False to b62
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -248($fp)
	j	bp_label_247
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_247
	#marker Label
bp_label_247:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b62 offset is -248($fp)
	#			 __allocating reg $t0
	lw $t0, -248($fp)
	#marker Label
bp_label_248:
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
	j	bp_label_249
	#marker Label
bp_label_249:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_250
	j	bExpAss_nfjdn126
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_250:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn126
	#reach And derivation
bExpAss_nfjdn126:
	#assigning True to b63
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -252($fp)
	j	bp_label_251
bExpAss_nfjdn127:
	#assigning False to b63
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -252($fp)
	j	bp_label_251
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_251
	#marker Label
bp_label_251:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b63 offset is -252($fp)
	#			 __allocating reg $t0
	lw $t0, -252($fp)
	#marker Label
bp_label_252:
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
	j	bp_label_253
	#marker Label
bp_label_253:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_254
	j	bExpAss_nfjdn128
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_254:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn129
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn128
	#reach And derivation
bExpAss_nfjdn128:
	#assigning True to b64
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -256($fp)
	j	bp_label_255
bExpAss_nfjdn129:
	#assigning False to b64
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -256($fp)
	j	bp_label_255
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_255
	#marker Label
bp_label_255:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b64 offset is -256($fp)
	#			 __allocating reg $t0
	lw $t0, -256($fp)
	#marker Label
bp_label_256:
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
	j	bp_label_257
	#marker Label
bp_label_257:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_258
	j	bExpAss_nfjdn130
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_258:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn131
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn130
	#reach And derivation
bExpAss_nfjdn130:
	#assigning True to b65
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -260($fp)
	j	bp_label_259
bExpAss_nfjdn131:
	#assigning False to b65
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -260($fp)
	j	bp_label_259
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_259
	#marker Label
bp_label_259:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b65 offset is -260($fp)
	#			 __allocating reg $t0
	lw $t0, -260($fp)
	#marker Label
bp_label_260:
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
	j	bp_label_261
	#marker Label
bp_label_261:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_262
	j	bExpAss_nfjdn132
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_262:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn133
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn132
	#reach And derivation
bExpAss_nfjdn132:
	#assigning True to b66
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -264($fp)
	j	bp_label_263
bExpAss_nfjdn133:
	#assigning False to b66
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -264($fp)
	j	bp_label_263
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_263
	#marker Label
bp_label_263:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b66 offset is -264($fp)
	#			 __allocating reg $t0
	lw $t0, -264($fp)
	#marker Label
bp_label_264:
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
	j	bp_label_265
	#marker Label
bp_label_265:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn134
	#marker Label
bp_label_266:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn135
	j	bExpAss_nfjdn134
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn134:
	#assigning True to b67
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -268($fp)
	j	bp_label_267
bExpAss_nfjdn135:
	#assigning False to b67
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -268($fp)
	j	bp_label_267
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_267
	#marker Label
bp_label_267:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b67 offset is -268($fp)
	#			 __allocating reg $t0
	lw $t0, -268($fp)
	#marker Label
bp_label_268:
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
	j	bp_label_269
	#marker Label
bp_label_269:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn136
	#marker Label
bp_label_270:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn136
	#reach And derivation
bExpAss_nfjdn136:
	#assigning True to b68
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -272($fp)
	j	bp_label_271
bExpAss_nfjdn137:
	#assigning False to b68
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -272($fp)
	j	bp_label_271
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_271
	#marker Label
bp_label_271:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b68 offset is -272($fp)
	#			 __allocating reg $t0
	lw $t0, -272($fp)
	#marker Label
bp_label_272:
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
	j	bp_label_273
	#marker Label
bp_label_273:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn138
	#marker Label
bp_label_274:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn139
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn138
	#reach And derivation
bExpAss_nfjdn138:
	#assigning True to b69
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -276($fp)
	j	bp_label_275
bExpAss_nfjdn139:
	#assigning False to b69
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -276($fp)
	j	bp_label_275
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_275
	#marker Label
bp_label_275:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b69 offset is -276($fp)
	#			 __allocating reg $t0
	lw $t0, -276($fp)
	#marker Label
bp_label_276:
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
	j	bp_label_277
	#marker Label
bp_label_277:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn140
	#marker Label
bp_label_278:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn141
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn140
	#reach And derivation
bExpAss_nfjdn140:
	#assigning True to b70
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -280($fp)
	j	bp_label_279
bExpAss_nfjdn141:
	#assigning False to b70
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -280($fp)
	j	bp_label_279
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_279
	#marker Label
bp_label_279:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b70 offset is -280($fp)
	#			 __allocating reg $t0
	lw $t0, -280($fp)
	#marker Label
bp_label_280:
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
	j	bp_label_281
	#marker Label
bp_label_281:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn142
	#marker Label
bp_label_282:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn143
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn142
	#reach And derivation
bExpAss_nfjdn142:
	#assigning True to b71
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -284($fp)
	j	bp_label_283
bExpAss_nfjdn143:
	#assigning False to b71
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -284($fp)
	j	bp_label_283
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_283
	#marker Label
bp_label_283:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b71 offset is -284($fp)
	#			 __allocating reg $t0
	lw $t0, -284($fp)
	#marker Label
bp_label_284:
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
	j	bp_label_285
	#marker Label
bp_label_285:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_286
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn144
	#marker Label
bp_label_286:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn145
	j	bExpAss_nfjdn144
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn144:
	#assigning True to b72
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -288($fp)
	j	bp_label_287
bExpAss_nfjdn145:
	#assigning False to b72
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -288($fp)
	j	bp_label_287
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_287
	#marker Label
bp_label_287:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b72 offset is -288($fp)
	#			 __allocating reg $t0
	lw $t0, -288($fp)
	#marker Label
bp_label_288:
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
	j	bp_label_289
	#marker Label
bp_label_289:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_290
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn146
	#marker Label
bp_label_290:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn146
	#reach And derivation
bExpAss_nfjdn146:
	#assigning True to b73
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -292($fp)
	j	bp_label_291
bExpAss_nfjdn147:
	#assigning False to b73
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -292($fp)
	j	bp_label_291
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_291
	#marker Label
bp_label_291:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b73 offset is -292($fp)
	#			 __allocating reg $t0
	lw $t0, -292($fp)
	#marker Label
bp_label_292:
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
	j	bp_label_293
	#marker Label
bp_label_293:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_294
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn148
	#marker Label
bp_label_294:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn149
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn148
	#reach And derivation
bExpAss_nfjdn148:
	#assigning True to b74
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -296($fp)
	j	bp_label_295
bExpAss_nfjdn149:
	#assigning False to b74
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -296($fp)
	j	bp_label_295
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_295
	#marker Label
bp_label_295:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b74 offset is -296($fp)
	#			 __allocating reg $t0
	lw $t0, -296($fp)
	#marker Label
bp_label_296:
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
	j	bp_label_297
	#marker Label
bp_label_297:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_298
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn150
	#marker Label
bp_label_298:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn151
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn150
	#reach And derivation
bExpAss_nfjdn150:
	#assigning True to b75
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -300($fp)
	j	bp_label_299
bExpAss_nfjdn151:
	#assigning False to b75
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -300($fp)
	j	bp_label_299
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_299
	#marker Label
bp_label_299:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b75 offset is -300($fp)
	#			 __allocating reg $t0
	lw $t0, -300($fp)
	#marker Label
bp_label_300:
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
	j	bp_label_301
	#marker Label
bp_label_301:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_302
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn152
	#marker Label
bp_label_302:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn153
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn152
	#reach And derivation
bExpAss_nfjdn152:
	#assigning True to b76
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -304($fp)
	j	bp_label_303
bExpAss_nfjdn153:
	#assigning False to b76
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -304($fp)
	j	bp_label_303
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_303
	#marker Label
bp_label_303:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b76 offset is -304($fp)
	#			 __allocating reg $t0
	lw $t0, -304($fp)
	#marker Label
bp_label_304:
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
	j	bp_label_305
	#marker Label
bp_label_305:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_306
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn154
	#marker Label
bp_label_306:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn155
	j	bExpAss_nfjdn154
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn154:
	#assigning True to b77
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -308($fp)
	j	bp_label_307
bExpAss_nfjdn155:
	#assigning False to b77
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -308($fp)
	j	bp_label_307
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_307
	#marker Label
bp_label_307:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b77 offset is -308($fp)
	#			 __allocating reg $t0
	lw $t0, -308($fp)
	#marker Label
bp_label_308:
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
	j	bp_label_309
	#marker Label
bp_label_309:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_310
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn156
	#marker Label
bp_label_310:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn156
	#reach And derivation
bExpAss_nfjdn156:
	#assigning True to b78
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -312($fp)
	j	bp_label_311
bExpAss_nfjdn157:
	#assigning False to b78
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -312($fp)
	j	bp_label_311
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_311
	#marker Label
bp_label_311:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b78 offset is -312($fp)
	#			 __allocating reg $t0
	lw $t0, -312($fp)
	#marker Label
bp_label_312:
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
	j	bp_label_313
	#marker Label
bp_label_313:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_314
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn158
	#marker Label
bp_label_314:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn159
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn158
	#reach And derivation
bExpAss_nfjdn158:
	#assigning True to b79
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -316($fp)
	j	bp_label_315
bExpAss_nfjdn159:
	#assigning False to b79
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -316($fp)
	j	bp_label_315
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_315
	#marker Label
bp_label_315:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b79 offset is -316($fp)
	#			 __allocating reg $t0
	lw $t0, -316($fp)
	#marker Label
bp_label_316:
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
	j	bp_label_317
	#marker Label
bp_label_317:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_318
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn160
	#marker Label
bp_label_318:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn161
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn160
	#reach And derivation
bExpAss_nfjdn160:
	#assigning True to b80
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -320($fp)
	j	bp_label_319
bExpAss_nfjdn161:
	#assigning False to b80
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -320($fp)
	j	bp_label_319
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_319
	#marker Label
bp_label_319:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b80 offset is -320($fp)
	#			 __allocating reg $t0
	lw $t0, -320($fp)
	#marker Label
bp_label_320:
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
	j	bp_label_321
	#marker Label
bp_label_321:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_322
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn162
	#marker Label
bp_label_322:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn163
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn162
	#reach And derivation
bExpAss_nfjdn162:
	#assigning True to b81
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -324($fp)
	j	bp_label_323
bExpAss_nfjdn163:
	#assigning False to b81
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -324($fp)
	j	bp_label_323
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_323
	#marker Label
bp_label_323:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b81 offset is -324($fp)
	#			 __allocating reg $t0
	lw $t0, -324($fp)
	#marker Label
bp_label_324:
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
	j	bp_label_325
	#marker Label
bp_label_325:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_326
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn164
	#marker Label
bp_label_326:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn165
	j	bExpAss_nfjdn164
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn164:
	#assigning True to b82
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -328($fp)
	j	bp_label_327
bExpAss_nfjdn165:
	#assigning False to b82
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -328($fp)
	j	bp_label_327
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_327
	#marker Label
bp_label_327:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b82 offset is -328($fp)
	#			 __allocating reg $t0
	lw $t0, -328($fp)
	#marker Label
bp_label_328:
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
	j	bp_label_329
	#marker Label
bp_label_329:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_330
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn166
	#marker Label
bp_label_330:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn166
	#reach And derivation
bExpAss_nfjdn166:
	#assigning True to b83
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -332($fp)
	j	bp_label_331
bExpAss_nfjdn167:
	#assigning False to b83
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -332($fp)
	j	bp_label_331
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_331
	#marker Label
bp_label_331:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b83 offset is -332($fp)
	#			 __allocating reg $t0
	lw $t0, -332($fp)
	#marker Label
bp_label_332:
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
	j	bp_label_333
	#marker Label
bp_label_333:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_334
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn168
	#marker Label
bp_label_334:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn169
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn168
	#reach And derivation
bExpAss_nfjdn168:
	#assigning True to b84
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -336($fp)
	j	bp_label_335
bExpAss_nfjdn169:
	#assigning False to b84
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -336($fp)
	j	bp_label_335
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_335
	#marker Label
bp_label_335:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b84 offset is -336($fp)
	#			 __allocating reg $t0
	lw $t0, -336($fp)
	#marker Label
bp_label_336:
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
	j	bp_label_337
	#marker Label
bp_label_337:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_338
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn170
	#marker Label
bp_label_338:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn171
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn170
	#reach And derivation
bExpAss_nfjdn170:
	#assigning True to b85
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -340($fp)
	j	bp_label_339
bExpAss_nfjdn171:
	#assigning False to b85
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -340($fp)
	j	bp_label_339
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_339
	#marker Label
bp_label_339:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b85 offset is -340($fp)
	#			 __allocating reg $t0
	lw $t0, -340($fp)
	#marker Label
bp_label_340:
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
	j	bp_label_341
	#marker Label
bp_label_341:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_342
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn172
	#marker Label
bp_label_342:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn173
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn172
	#reach And derivation
bExpAss_nfjdn172:
	#assigning True to b86
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -344($fp)
	j	bp_label_343
bExpAss_nfjdn173:
	#assigning False to b86
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -344($fp)
	j	bp_label_343
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_343
	#marker Label
bp_label_343:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b86 offset is -344($fp)
	#			 __allocating reg $t0
	lw $t0, -344($fp)
	#marker Label
bp_label_344:
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
	j	bp_label_345
	#marker Label
bp_label_345:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bExpAss_nfjdn175
	j	bp_label_346
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_346:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn175
	j	bExpAss_nfjdn174
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn174:
	#assigning True to b87
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -348($fp)
	j	bp_label_347
bExpAss_nfjdn175:
	#assigning False to b87
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -348($fp)
	j	bp_label_347
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_347
	#marker Label
bp_label_347:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b87 offset is -348($fp)
	#			 __allocating reg $t0
	lw $t0, -348($fp)
	#marker Label
bp_label_348:
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
	j	bp_label_349
	#marker Label
bp_label_349:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bExpAss_nfjdn177
	j	bp_label_350
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_350:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn176
	#reach Or derivation
bExpAss_nfjdn176:
	#assigning True to b88
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -352($fp)
	j	bp_label_351
bExpAss_nfjdn177:
	#assigning False to b88
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -352($fp)
	j	bp_label_351
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_351
	#marker Label
bp_label_351:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b88 offset is -352($fp)
	#			 __allocating reg $t0
	lw $t0, -352($fp)
	#marker Label
bp_label_352:
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
	j	bp_label_353
	#marker Label
bp_label_353:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bExpAss_nfjdn179
	j	bp_label_354
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_354:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn179
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn178
	#reach Or derivation
bExpAss_nfjdn178:
	#assigning True to b89
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -356($fp)
	j	bp_label_355
bExpAss_nfjdn179:
	#assigning False to b89
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -356($fp)
	j	bp_label_355
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_355
	#marker Label
bp_label_355:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b89 offset is -356($fp)
	#			 __allocating reg $t0
	lw $t0, -356($fp)
	#marker Label
bp_label_356:
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
	j	bp_label_357
	#marker Label
bp_label_357:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bExpAss_nfjdn181
	j	bp_label_358
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_358:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn181
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn180
	#reach Or derivation
bExpAss_nfjdn180:
	#assigning True to b90
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -360($fp)
	j	bp_label_359
bExpAss_nfjdn181:
	#assigning False to b90
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -360($fp)
	j	bp_label_359
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_359
	#marker Label
bp_label_359:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b90 offset is -360($fp)
	#			 __allocating reg $t0
	lw $t0, -360($fp)
	#marker Label
bp_label_360:
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
	j	bp_label_361
	#marker Label
bp_label_361:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	bne $t0, $zero,bExpAss_nfjdn183
	j	bp_label_362
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_362:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn183
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn182
	#reach Or derivation
bExpAss_nfjdn182:
	#assigning True to b91
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -364($fp)
	j	bp_label_363
bExpAss_nfjdn183:
	#assigning False to b91
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -364($fp)
	j	bp_label_363
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_363
	#marker Label
bp_label_363:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b91 offset is -364($fp)
	#			 __allocating reg $t0
	lw $t0, -364($fp)
	#marker Label
bp_label_364:
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
	j	bp_label_365
	#marker Label
bp_label_365:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn185
	#marker Label
bp_label_366:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn185
	j	bExpAss_nfjdn184
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn184:
	#assigning True to b92
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -368($fp)
	j	bp_label_367
bExpAss_nfjdn185:
	#assigning False to b92
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -368($fp)
	j	bp_label_367
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_367
	#marker Label
bp_label_367:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b92 offset is -368($fp)
	#			 __allocating reg $t0
	lw $t0, -368($fp)
	#marker Label
bp_label_368:
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
	j	bp_label_369
	#marker Label
bp_label_369:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn187
	#marker Label
bp_label_370:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn186
	#reach Or derivation
bExpAss_nfjdn186:
	#assigning True to b93
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -372($fp)
	j	bp_label_371
bExpAss_nfjdn187:
	#assigning False to b93
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -372($fp)
	j	bp_label_371
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_371
	#marker Label
bp_label_371:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b93 offset is -372($fp)
	#			 __allocating reg $t0
	lw $t0, -372($fp)
	#marker Label
bp_label_372:
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
	j	bp_label_373
	#marker Label
bp_label_373:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn189
	#marker Label
bp_label_374:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn189
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn188
	#reach Or derivation
bExpAss_nfjdn188:
	#assigning True to b94
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -376($fp)
	j	bp_label_375
bExpAss_nfjdn189:
	#assigning False to b94
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -376($fp)
	j	bp_label_375
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_375
	#marker Label
bp_label_375:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b94 offset is -376($fp)
	#			 __allocating reg $t0
	lw $t0, -376($fp)
	#marker Label
bp_label_376:
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
	j	bp_label_377
	#marker Label
bp_label_377:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn191
	#marker Label
bp_label_378:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn191
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn190
	#reach Or derivation
bExpAss_nfjdn190:
	#assigning True to b95
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -380($fp)
	j	bp_label_379
bExpAss_nfjdn191:
	#assigning False to b95
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -380($fp)
	j	bp_label_379
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_379
	#marker Label
bp_label_379:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b95 offset is -380($fp)
	#			 __allocating reg $t0
	lw $t0, -380($fp)
	#marker Label
bp_label_380:
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
	j	bp_label_381
	#marker Label
bp_label_381:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn193
	#marker Label
bp_label_382:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn193
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn192
	#reach Or derivation
bExpAss_nfjdn192:
	#assigning True to b96
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -384($fp)
	j	bp_label_383
bExpAss_nfjdn193:
	#assigning False to b96
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -384($fp)
	j	bp_label_383
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_383
	#marker Label
bp_label_383:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b96 offset is -384($fp)
	#			 __allocating reg $t0
	lw $t0, -384($fp)
	#marker Label
bp_label_384:
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
	j	bp_label_385
	#marker Label
bp_label_385:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn195
	#			 __freeing reg $t0
	#If False
	j	bp_label_386
	#marker Label
bp_label_386:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn195
	j	bExpAss_nfjdn194
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn194:
	#assigning True to b97
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -388($fp)
	j	bp_label_387
bExpAss_nfjdn195:
	#assigning False to b97
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -388($fp)
	j	bp_label_387
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_387
	#marker Label
bp_label_387:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b97 offset is -388($fp)
	#			 __allocating reg $t0
	lw $t0, -388($fp)
	#marker Label
bp_label_388:
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
	j	bp_label_389
	#marker Label
bp_label_389:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn197
	#			 __freeing reg $t0
	#If False
	j	bp_label_390
	#marker Label
bp_label_390:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn196
	#reach Or derivation
bExpAss_nfjdn196:
	#assigning True to b98
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -392($fp)
	j	bp_label_391
bExpAss_nfjdn197:
	#assigning False to b98
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -392($fp)
	j	bp_label_391
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_391
	#marker Label
bp_label_391:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b98 offset is -392($fp)
	#			 __allocating reg $t0
	lw $t0, -392($fp)
	#marker Label
bp_label_392:
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
	j	bp_label_393
	#marker Label
bp_label_393:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn199
	#			 __freeing reg $t0
	#If False
	j	bp_label_394
	#marker Label
bp_label_394:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn199
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn198
	#reach Or derivation
bExpAss_nfjdn198:
	#assigning True to b99
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -396($fp)
	j	bp_label_395
bExpAss_nfjdn199:
	#assigning False to b99
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -396($fp)
	j	bp_label_395
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_395
	#marker Label
bp_label_395:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b99 offset is -396($fp)
	#			 __allocating reg $t0
	lw $t0, -396($fp)
	#marker Label
bp_label_396:
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
	j	bp_label_397
	#marker Label
bp_label_397:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn201
	#			 __freeing reg $t0
	#If False
	j	bp_label_398
	#marker Label
bp_label_398:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn201
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn200
	#reach Or derivation
bExpAss_nfjdn200:
	#assigning True to b100
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -400($fp)
	j	bp_label_399
bExpAss_nfjdn201:
	#assigning False to b100
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -400($fp)
	j	bp_label_399
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_399
	#marker Label
bp_label_399:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b100 offset is -400($fp)
	#			 __allocating reg $t0
	lw $t0, -400($fp)
	#marker Label
bp_label_400:
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
	j	bp_label_401
	#marker Label
bp_label_401:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn203
	#			 __freeing reg $t0
	#If False
	j	bp_label_402
	#marker Label
bp_label_402:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn203
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn202
	#reach Or derivation
bExpAss_nfjdn202:
	#assigning True to b101
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -404($fp)
	j	bp_label_403
bExpAss_nfjdn203:
	#assigning False to b101
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -404($fp)
	j	bp_label_403
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_403
	#marker Label
bp_label_403:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b101 offset is -404($fp)
	#			 __allocating reg $t0
	lw $t0, -404($fp)
	#marker Label
bp_label_404:
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
	j	bp_label_405
	#marker Label
bp_label_405:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bExpAss_nfjdn205
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_406
	#marker Label
bp_label_406:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn205
	j	bExpAss_nfjdn204
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn204:
	#assigning True to b102
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -408($fp)
	j	bp_label_407
bExpAss_nfjdn205:
	#assigning False to b102
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -408($fp)
	j	bp_label_407
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_407
	#marker Label
bp_label_407:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b102 offset is -408($fp)
	#			 __allocating reg $t0
	lw $t0, -408($fp)
	#marker Label
bp_label_408:
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
	j	bp_label_409
	#marker Label
bp_label_409:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bExpAss_nfjdn207
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_410
	#marker Label
bp_label_410:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn206
	#reach Or derivation
bExpAss_nfjdn206:
	#assigning True to b103
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -412($fp)
	j	bp_label_411
bExpAss_nfjdn207:
	#assigning False to b103
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -412($fp)
	j	bp_label_411
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_411
	#marker Label
bp_label_411:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b103 offset is -412($fp)
	#			 __allocating reg $t0
	lw $t0, -412($fp)
	#marker Label
bp_label_412:
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
	j	bp_label_413
	#marker Label
bp_label_413:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bExpAss_nfjdn209
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_414
	#marker Label
bp_label_414:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn209
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn208
	#reach Or derivation
bExpAss_nfjdn208:
	#assigning True to b104
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -416($fp)
	j	bp_label_415
bExpAss_nfjdn209:
	#assigning False to b104
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -416($fp)
	j	bp_label_415
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_415
	#marker Label
bp_label_415:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b104 offset is -416($fp)
	#			 __allocating reg $t0
	lw $t0, -416($fp)
	#marker Label
bp_label_416:
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
	j	bp_label_417
	#marker Label
bp_label_417:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bExpAss_nfjdn211
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_418
	#marker Label
bp_label_418:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn211
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn210
	#reach Or derivation
bExpAss_nfjdn210:
	#assigning True to b105
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -420($fp)
	j	bp_label_419
bExpAss_nfjdn211:
	#assigning False to b105
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -420($fp)
	j	bp_label_419
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_419
	#marker Label
bp_label_419:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b105 offset is -420($fp)
	#			 __allocating reg $t0
	lw $t0, -420($fp)
	#marker Label
bp_label_420:
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
	j	bp_label_421
	#marker Label
bp_label_421:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bExpAss_nfjdn213
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_422
	#marker Label
bp_label_422:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn213
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn212
	#reach Or derivation
bExpAss_nfjdn212:
	#assigning True to b106
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -424($fp)
	j	bp_label_423
bExpAss_nfjdn213:
	#assigning False to b106
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -424($fp)
	j	bp_label_423
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_423
	#marker Label
bp_label_423:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b106 offset is -424($fp)
	#			 __allocating reg $t0
	lw $t0, -424($fp)
	#marker Label
bp_label_424:
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
	j	bp_label_425
	#marker Label
bp_label_425:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn215
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_426
	#marker Label
bp_label_426:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn215
	j	bExpAss_nfjdn214
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn214:
	#assigning True to b107
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -428($fp)
	j	bp_label_427
bExpAss_nfjdn215:
	#assigning False to b107
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -428($fp)
	j	bp_label_427
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_427
	#marker Label
bp_label_427:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b107 offset is -428($fp)
	#			 __allocating reg $t0
	lw $t0, -428($fp)
	#marker Label
bp_label_428:
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
	j	bp_label_429
	#marker Label
bp_label_429:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn217
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_430
	#marker Label
bp_label_430:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn216
	#reach Or derivation
bExpAss_nfjdn216:
	#assigning True to b108
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -432($fp)
	j	bp_label_431
bExpAss_nfjdn217:
	#assigning False to b108
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -432($fp)
	j	bp_label_431
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_431
	#marker Label
bp_label_431:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b108 offset is -432($fp)
	#			 __allocating reg $t0
	lw $t0, -432($fp)
	#marker Label
bp_label_432:
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
	j	bp_label_433
	#marker Label
bp_label_433:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn219
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_434
	#marker Label
bp_label_434:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn219
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn218
	#reach Or derivation
bExpAss_nfjdn218:
	#assigning True to b109
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -436($fp)
	j	bp_label_435
bExpAss_nfjdn219:
	#assigning False to b109
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -436($fp)
	j	bp_label_435
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_435
	#marker Label
bp_label_435:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b109 offset is -436($fp)
	#			 __allocating reg $t0
	lw $t0, -436($fp)
	#marker Label
bp_label_436:
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
	j	bp_label_437
	#marker Label
bp_label_437:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn221
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_438
	#marker Label
bp_label_438:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn221
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn220
	#reach Or derivation
bExpAss_nfjdn220:
	#assigning True to b110
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -440($fp)
	j	bp_label_439
bExpAss_nfjdn221:
	#assigning False to b110
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -440($fp)
	j	bp_label_439
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_439
	#marker Label
bp_label_439:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b110 offset is -440($fp)
	#			 __allocating reg $t0
	lw $t0, -440($fp)
	#marker Label
bp_label_440:
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
	j	bp_label_441
	#marker Label
bp_label_441:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn223
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_442
	#marker Label
bp_label_442:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn223
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn222
	#reach Or derivation
bExpAss_nfjdn222:
	#assigning True to b111
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -444($fp)
	j	bp_label_443
bExpAss_nfjdn223:
	#assigning False to b111
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -444($fp)
	j	bp_label_443
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_443
	#marker Label
bp_label_443:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b111 offset is -444($fp)
	#			 __allocating reg $t0
	lw $t0, -444($fp)
	#marker Label
bp_label_444:
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
	j	bp_label_445
	#marker Label
bp_label_445:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn225
	j	bp_label_446
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_446:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn225
	j	bExpAss_nfjdn224
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn224:
	#assigning True to b112
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -448($fp)
	j	bp_label_447
bExpAss_nfjdn225:
	#assigning False to b112
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -448($fp)
	j	bp_label_447
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_447
	#marker Label
bp_label_447:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b112 offset is -448($fp)
	#			 __allocating reg $t0
	lw $t0, -448($fp)
	#marker Label
bp_label_448:
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
	j	bp_label_449
	#marker Label
bp_label_449:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn227
	j	bp_label_450
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_450:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn226
	#reach Or derivation
bExpAss_nfjdn226:
	#assigning True to b113
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -452($fp)
	j	bp_label_451
bExpAss_nfjdn227:
	#assigning False to b113
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -452($fp)
	j	bp_label_451
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_451
	#marker Label
bp_label_451:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b113 offset is -452($fp)
	#			 __allocating reg $t0
	lw $t0, -452($fp)
	#marker Label
bp_label_452:
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
	j	bp_label_453
	#marker Label
bp_label_453:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn229
	j	bp_label_454
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_454:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn229
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn228
	#reach Or derivation
bExpAss_nfjdn228:
	#assigning True to b114
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -456($fp)
	j	bp_label_455
bExpAss_nfjdn229:
	#assigning False to b114
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -456($fp)
	j	bp_label_455
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_455
	#marker Label
bp_label_455:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b114 offset is -456($fp)
	#			 __allocating reg $t0
	lw $t0, -456($fp)
	#marker Label
bp_label_456:
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
	j	bp_label_457
	#marker Label
bp_label_457:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn231
	j	bp_label_458
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_458:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn231
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn230
	#reach Or derivation
bExpAss_nfjdn230:
	#assigning True to b115
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -460($fp)
	j	bp_label_459
bExpAss_nfjdn231:
	#assigning False to b115
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -460($fp)
	j	bp_label_459
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_459
	#marker Label
bp_label_459:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b115 offset is -460($fp)
	#			 __allocating reg $t0
	lw $t0, -460($fp)
	#marker Label
bp_label_460:
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
	j	bp_label_461
	#marker Label
bp_label_461:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn233
	j	bp_label_462
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_462:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn233
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn232
	#reach Or derivation
bExpAss_nfjdn232:
	#assigning True to b116
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -464($fp)
	j	bp_label_463
bExpAss_nfjdn233:
	#assigning False to b116
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -464($fp)
	j	bp_label_463
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_463
	#marker Label
bp_label_463:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b116 offset is -464($fp)
	#			 __allocating reg $t0
	lw $t0, -464($fp)
	#marker Label
bp_label_464:
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
	j	bp_label_465
	#marker Label
bp_label_465:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_466
	#marker Label
bp_label_466:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn235
	j	bExpAss_nfjdn234
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn234:
	#assigning True to b117
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -468($fp)
	j	bp_label_467
bExpAss_nfjdn235:
	#assigning False to b117
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -468($fp)
	j	bp_label_467
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_467
	#marker Label
bp_label_467:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b117 offset is -468($fp)
	#			 __allocating reg $t0
	lw $t0, -468($fp)
	#marker Label
bp_label_468:
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
	j	bp_label_469
	#marker Label
bp_label_469:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_470
	#marker Label
bp_label_470:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn236
	#reach Or derivation
bExpAss_nfjdn236:
	#assigning True to b118
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -472($fp)
	j	bp_label_471
bExpAss_nfjdn237:
	#assigning False to b118
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -472($fp)
	j	bp_label_471
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_471
	#marker Label
bp_label_471:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b118 offset is -472($fp)
	#			 __allocating reg $t0
	lw $t0, -472($fp)
	#marker Label
bp_label_472:
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
	j	bp_label_473
	#marker Label
bp_label_473:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_474
	#marker Label
bp_label_474:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn239
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn238
	#reach Or derivation
bExpAss_nfjdn238:
	#assigning True to b119
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -476($fp)
	j	bp_label_475
bExpAss_nfjdn239:
	#assigning False to b119
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -476($fp)
	j	bp_label_475
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_475
	#marker Label
bp_label_475:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b119 offset is -476($fp)
	#			 __allocating reg $t0
	lw $t0, -476($fp)
	#marker Label
bp_label_476:
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
	j	bp_label_477
	#marker Label
bp_label_477:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_478
	#marker Label
bp_label_478:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn241
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn240
	#reach Or derivation
bExpAss_nfjdn240:
	#assigning True to b120
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -480($fp)
	j	bp_label_479
bExpAss_nfjdn241:
	#assigning False to b120
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -480($fp)
	j	bp_label_479
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_479
	#marker Label
bp_label_479:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b120 offset is -480($fp)
	#			 __allocating reg $t0
	lw $t0, -480($fp)
	#marker Label
bp_label_480:
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
	j	bp_label_481
	#marker Label
bp_label_481:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_482
	#marker Label
bp_label_482:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn243
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn242
	#reach Or derivation
bExpAss_nfjdn242:
	#assigning True to b121
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -484($fp)
	j	bp_label_483
bExpAss_nfjdn243:
	#assigning False to b121
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -484($fp)
	j	bp_label_483
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_483
	#marker Label
bp_label_483:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b121 offset is -484($fp)
	#			 __allocating reg $t0
	lw $t0, -484($fp)
	#marker Label
bp_label_484:
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
	j	bp_label_485
	#marker Label
bp_label_485:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn245
	#			 __freeing reg $t0
	#If False
	j	bp_label_486
	#marker Label
bp_label_486:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn245
	j	bExpAss_nfjdn244
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn244:
	#assigning True to b122
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -488($fp)
	j	bp_label_487
bExpAss_nfjdn245:
	#assigning False to b122
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -488($fp)
	j	bp_label_487
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_487
	#marker Label
bp_label_487:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b122 offset is -488($fp)
	#			 __allocating reg $t0
	lw $t0, -488($fp)
	#marker Label
bp_label_488:
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
	j	bp_label_489
	#marker Label
bp_label_489:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn247
	#			 __freeing reg $t0
	#If False
	j	bp_label_490
	#marker Label
bp_label_490:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn246
	#reach Or derivation
bExpAss_nfjdn246:
	#assigning True to b123
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -492($fp)
	j	bp_label_491
bExpAss_nfjdn247:
	#assigning False to b123
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -492($fp)
	j	bp_label_491
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_491
	#marker Label
bp_label_491:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b123 offset is -492($fp)
	#			 __allocating reg $t0
	lw $t0, -492($fp)
	#marker Label
bp_label_492:
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
	j	bp_label_493
	#marker Label
bp_label_493:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn249
	#			 __freeing reg $t0
	#If False
	j	bp_label_494
	#marker Label
bp_label_494:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn249
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn248
	#reach Or derivation
bExpAss_nfjdn248:
	#assigning True to b124
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -496($fp)
	j	bp_label_495
bExpAss_nfjdn249:
	#assigning False to b124
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -496($fp)
	j	bp_label_495
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_495
	#marker Label
bp_label_495:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b124 offset is -496($fp)
	#			 __allocating reg $t0
	lw $t0, -496($fp)
	#marker Label
bp_label_496:
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
	j	bp_label_497
	#marker Label
bp_label_497:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn251
	#			 __freeing reg $t0
	#If False
	j	bp_label_498
	#marker Label
bp_label_498:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn251
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn250
	#reach Or derivation
bExpAss_nfjdn250:
	#assigning True to b125
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -500($fp)
	j	bp_label_499
bExpAss_nfjdn251:
	#assigning False to b125
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -500($fp)
	j	bp_label_499
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_499
	#marker Label
bp_label_499:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b125 offset is -500($fp)
	#			 __allocating reg $t0
	lw $t0, -500($fp)
	#marker Label
bp_label_500:
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
	j	bp_label_501
	#marker Label
bp_label_501:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn253
	#			 __freeing reg $t0
	#If False
	j	bp_label_502
	#marker Label
bp_label_502:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn253
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn252
	#reach Or derivation
bExpAss_nfjdn252:
	#assigning True to b126
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -504($fp)
	j	bp_label_503
bExpAss_nfjdn253:
	#assigning False to b126
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -504($fp)
	j	bp_label_503
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_503
	#marker Label
bp_label_503:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b126 offset is -504($fp)
	#			 __allocating reg $t0
	lw $t0, -504($fp)
	#marker Label
bp_label_504:
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
	j	bp_label_505
	#marker Label
bp_label_505:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn255
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_506
	#marker Label
bp_label_506:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn255
	j	bExpAss_nfjdn254
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn254:
	#assigning True to b127
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -508($fp)
	j	bp_label_507
bExpAss_nfjdn255:
	#assigning False to b127
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -508($fp)
	j	bp_label_507
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_507
	#marker Label
bp_label_507:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b127 offset is -508($fp)
	#			 __allocating reg $t0
	lw $t0, -508($fp)
	#marker Label
bp_label_508:
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
	j	bp_label_509
	#marker Label
bp_label_509:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn257
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_510
	#marker Label
bp_label_510:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn256
	#reach Or derivation
bExpAss_nfjdn256:
	#assigning True to b128
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -512($fp)
	j	bp_label_511
bExpAss_nfjdn257:
	#assigning False to b128
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -512($fp)
	j	bp_label_511
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_511
	#marker Label
bp_label_511:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b128 offset is -512($fp)
	#			 __allocating reg $t0
	lw $t0, -512($fp)
	#marker Label
bp_label_512:
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
	j	bp_label_513
	#marker Label
bp_label_513:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn259
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_514
	#marker Label
bp_label_514:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn259
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn258
	#reach Or derivation
bExpAss_nfjdn258:
	#assigning True to b129
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -516($fp)
	j	bp_label_515
bExpAss_nfjdn259:
	#assigning False to b129
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -516($fp)
	j	bp_label_515
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_515
	#marker Label
bp_label_515:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b129 offset is -516($fp)
	#			 __allocating reg $t0
	lw $t0, -516($fp)
	#marker Label
bp_label_516:
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
	j	bp_label_517
	#marker Label
bp_label_517:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn261
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_518
	#marker Label
bp_label_518:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn261
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn260
	#reach Or derivation
bExpAss_nfjdn260:
	#assigning True to b130
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -520($fp)
	j	bp_label_519
bExpAss_nfjdn261:
	#assigning False to b130
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -520($fp)
	j	bp_label_519
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_519
	#marker Label
bp_label_519:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b130 offset is -520($fp)
	#			 __allocating reg $t0
	lw $t0, -520($fp)
	#marker Label
bp_label_520:
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
	j	bp_label_521
	#marker Label
bp_label_521:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn263
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_522
	#marker Label
bp_label_522:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn263
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn262
	#reach Or derivation
bExpAss_nfjdn262:
	#assigning True to b131
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -524($fp)
	j	bp_label_523
bExpAss_nfjdn263:
	#assigning False to b131
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -524($fp)
	j	bp_label_523
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_523
	#marker Label
bp_label_523:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b131 offset is -524($fp)
	#			 __allocating reg $t0
	lw $t0, -524($fp)
	#marker Label
bp_label_524:
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
	j	bp_label_525
	#marker Label
bp_label_525:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn265
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_526
	#marker Label
bp_label_526:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn265
	j	bExpAss_nfjdn264
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn264:
	#assigning True to b132
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -528($fp)
	j	bp_label_527
bExpAss_nfjdn265:
	#assigning False to b132
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -528($fp)
	j	bp_label_527
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_527
	#marker Label
bp_label_527:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b132 offset is -528($fp)
	#			 __allocating reg $t0
	lw $t0, -528($fp)
	#marker Label
bp_label_528:
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
	j	bp_label_529
	#marker Label
bp_label_529:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn267
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_530
	#marker Label
bp_label_530:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn266
	#reach Or derivation
bExpAss_nfjdn266:
	#assigning True to b133
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -532($fp)
	j	bp_label_531
bExpAss_nfjdn267:
	#assigning False to b133
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -532($fp)
	j	bp_label_531
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_531
	#marker Label
bp_label_531:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b133 offset is -532($fp)
	#			 __allocating reg $t0
	lw $t0, -532($fp)
	#marker Label
bp_label_532:
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
	j	bp_label_533
	#marker Label
bp_label_533:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn269
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_534
	#marker Label
bp_label_534:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn269
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn268
	#reach Or derivation
bExpAss_nfjdn268:
	#assigning True to b134
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -536($fp)
	j	bp_label_535
bExpAss_nfjdn269:
	#assigning False to b134
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -536($fp)
	j	bp_label_535
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_535
	#marker Label
bp_label_535:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b134 offset is -536($fp)
	#			 __allocating reg $t0
	lw $t0, -536($fp)
	#marker Label
bp_label_536:
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
	j	bp_label_537
	#marker Label
bp_label_537:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn271
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_538
	#marker Label
bp_label_538:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn271
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn270
	#reach Or derivation
bExpAss_nfjdn270:
	#assigning True to b135
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -540($fp)
	j	bp_label_539
bExpAss_nfjdn271:
	#assigning False to b135
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -540($fp)
	j	bp_label_539
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_539
	#marker Label
bp_label_539:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b135 offset is -540($fp)
	#			 __allocating reg $t0
	lw $t0, -540($fp)
	#marker Label
bp_label_540:
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
	j	bp_label_541
	#marker Label
bp_label_541:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn273
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_542
	#marker Label
bp_label_542:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn273
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn272
	#reach Or derivation
bExpAss_nfjdn272:
	#assigning True to b136
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -544($fp)
	j	bp_label_543
bExpAss_nfjdn273:
	#assigning False to b136
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -544($fp)
	j	bp_label_543
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_543
	#marker Label
bp_label_543:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b136 offset is -544($fp)
	#			 __allocating reg $t0
	lw $t0, -544($fp)
	#marker Label
bp_label_544:
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
	j	bp_label_545
	#marker Label
bp_label_545:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn275
	j	bp_label_546
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_546:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn275
	j	bExpAss_nfjdn274
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn274:
	#assigning True to b137
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -548($fp)
	j	bp_label_547
bExpAss_nfjdn275:
	#assigning False to b137
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -548($fp)
	j	bp_label_547
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_547
	#marker Label
bp_label_547:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b137 offset is -548($fp)
	#			 __allocating reg $t0
	lw $t0, -548($fp)
	#marker Label
bp_label_548:
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
	j	bp_label_549
	#marker Label
bp_label_549:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn277
	j	bp_label_550
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_550:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn276
	#reach Or derivation
bExpAss_nfjdn276:
	#assigning True to b138
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -552($fp)
	j	bp_label_551
bExpAss_nfjdn277:
	#assigning False to b138
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -552($fp)
	j	bp_label_551
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_551
	#marker Label
bp_label_551:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b138 offset is -552($fp)
	#			 __allocating reg $t0
	lw $t0, -552($fp)
	#marker Label
bp_label_552:
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
	j	bp_label_553
	#marker Label
bp_label_553:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn279
	j	bp_label_554
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_554:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn279
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn278
	#reach Or derivation
bExpAss_nfjdn278:
	#assigning True to b139
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -556($fp)
	j	bp_label_555
bExpAss_nfjdn279:
	#assigning False to b139
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -556($fp)
	j	bp_label_555
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_555
	#marker Label
bp_label_555:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b139 offset is -556($fp)
	#			 __allocating reg $t0
	lw $t0, -556($fp)
	#marker Label
bp_label_556:
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
	j	bp_label_557
	#marker Label
bp_label_557:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn281
	j	bp_label_558
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_558:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn281
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn280
	#reach Or derivation
bExpAss_nfjdn280:
	#assigning True to b140
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -560($fp)
	j	bp_label_559
bExpAss_nfjdn281:
	#assigning False to b140
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -560($fp)
	j	bp_label_559
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_559
	#marker Label
bp_label_559:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b140 offset is -560($fp)
	#			 __allocating reg $t0
	lw $t0, -560($fp)
	#marker Label
bp_label_560:
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
	j	bp_label_561
	#marker Label
bp_label_561:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn283
	j	bp_label_562
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_562:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn283
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn282
	#reach Or derivation
bExpAss_nfjdn282:
	#assigning True to b141
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -564($fp)
	j	bp_label_563
bExpAss_nfjdn283:
	#assigning False to b141
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -564($fp)
	j	bp_label_563
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_563
	#marker Label
bp_label_563:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b141 offset is -564($fp)
	#			 __allocating reg $t0
	lw $t0, -564($fp)
	#marker Label
bp_label_564:
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
	j	bp_label_565
	#marker Label
bp_label_565:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_566
	#marker Label
bp_label_566:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn285
	j	bExpAss_nfjdn284
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn284:
	#assigning True to b142
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -568($fp)
	j	bp_label_567
bExpAss_nfjdn285:
	#assigning False to b142
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -568($fp)
	j	bp_label_567
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_567
	#marker Label
bp_label_567:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b142 offset is -568($fp)
	#			 __allocating reg $t0
	lw $t0, -568($fp)
	#marker Label
bp_label_568:
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
	j	bp_label_569
	#marker Label
bp_label_569:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_570
	#marker Label
bp_label_570:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn286
	#reach Or derivation
bExpAss_nfjdn286:
	#assigning True to b143
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -572($fp)
	j	bp_label_571
bExpAss_nfjdn287:
	#assigning False to b143
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -572($fp)
	j	bp_label_571
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_571
	#marker Label
bp_label_571:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b143 offset is -572($fp)
	#			 __allocating reg $t0
	lw $t0, -572($fp)
	#marker Label
bp_label_572:
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
	j	bp_label_573
	#marker Label
bp_label_573:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_574
	#marker Label
bp_label_574:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn289
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn288
	#reach Or derivation
bExpAss_nfjdn288:
	#assigning True to b144
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -576($fp)
	j	bp_label_575
bExpAss_nfjdn289:
	#assigning False to b144
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -576($fp)
	j	bp_label_575
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_575
	#marker Label
bp_label_575:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b144 offset is -576($fp)
	#			 __allocating reg $t0
	lw $t0, -576($fp)
	#marker Label
bp_label_576:
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
	j	bp_label_577
	#marker Label
bp_label_577:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_578
	#marker Label
bp_label_578:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn291
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn290
	#reach Or derivation
bExpAss_nfjdn290:
	#assigning True to b145
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -580($fp)
	j	bp_label_579
bExpAss_nfjdn291:
	#assigning False to b145
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -580($fp)
	j	bp_label_579
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_579
	#marker Label
bp_label_579:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b145 offset is -580($fp)
	#			 __allocating reg $t0
	lw $t0, -580($fp)
	#marker Label
bp_label_580:
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
	j	bp_label_581
	#marker Label
bp_label_581:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_582
	#marker Label
bp_label_582:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn293
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn292
	#reach Or derivation
bExpAss_nfjdn292:
	#assigning True to b146
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -584($fp)
	j	bp_label_583
bExpAss_nfjdn293:
	#assigning False to b146
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -584($fp)
	j	bp_label_583
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_583
	#marker Label
bp_label_583:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b146 offset is -584($fp)
	#			 __allocating reg $t0
	lw $t0, -584($fp)
	#marker Label
bp_label_584:
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
	j	bp_label_585
	#marker Label
bp_label_585:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn295
	#			 __freeing reg $t0
	#If False
	j	bp_label_586
	#marker Label
bp_label_586:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn295
	j	bExpAss_nfjdn294
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn294:
	#assigning True to b147
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -588($fp)
	j	bp_label_587
bExpAss_nfjdn295:
	#assigning False to b147
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -588($fp)
	j	bp_label_587
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_587
	#marker Label
bp_label_587:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b147 offset is -588($fp)
	#			 __allocating reg $t0
	lw $t0, -588($fp)
	#marker Label
bp_label_588:
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
	j	bp_label_589
	#marker Label
bp_label_589:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn297
	#			 __freeing reg $t0
	#If False
	j	bp_label_590
	#marker Label
bp_label_590:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn296
	#reach Or derivation
bExpAss_nfjdn296:
	#assigning True to b148
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -592($fp)
	j	bp_label_591
bExpAss_nfjdn297:
	#assigning False to b148
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -592($fp)
	j	bp_label_591
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_591
	#marker Label
bp_label_591:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b148 offset is -592($fp)
	#			 __allocating reg $t0
	lw $t0, -592($fp)
	#marker Label
bp_label_592:
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
	j	bp_label_593
	#marker Label
bp_label_593:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn299
	#			 __freeing reg $t0
	#If False
	j	bp_label_594
	#marker Label
bp_label_594:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn299
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn298
	#reach Or derivation
bExpAss_nfjdn298:
	#assigning True to b149
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -596($fp)
	j	bp_label_595
bExpAss_nfjdn299:
	#assigning False to b149
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -596($fp)
	j	bp_label_595
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_595
	#marker Label
bp_label_595:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b149 offset is -596($fp)
	#			 __allocating reg $t0
	lw $t0, -596($fp)
	#marker Label
bp_label_596:
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
	j	bp_label_597
	#marker Label
bp_label_597:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn301
	#			 __freeing reg $t0
	#If False
	j	bp_label_598
	#marker Label
bp_label_598:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn301
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn300
	#reach Or derivation
bExpAss_nfjdn300:
	#assigning True to b150
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -600($fp)
	j	bp_label_599
bExpAss_nfjdn301:
	#assigning False to b150
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -600($fp)
	j	bp_label_599
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_599
	#marker Label
bp_label_599:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b150 offset is -600($fp)
	#			 __allocating reg $t0
	lw $t0, -600($fp)
	#marker Label
bp_label_600:
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
	j	bp_label_601
	#marker Label
bp_label_601:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn303
	#			 __freeing reg $t0
	#If False
	j	bp_label_602
	#marker Label
bp_label_602:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn303
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn302
	#reach Or derivation
bExpAss_nfjdn302:
	#assigning True to b151
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -604($fp)
	j	bp_label_603
bExpAss_nfjdn303:
	#assigning False to b151
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -604($fp)
	j	bp_label_603
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_603
	#marker Label
bp_label_603:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b151 offset is -604($fp)
	#			 __allocating reg $t0
	lw $t0, -604($fp)
	#marker Label
bp_label_604:
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
	j	bp_label_605
	#marker Label
bp_label_605:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn305
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_606
	#marker Label
bp_label_606:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn305
	j	bExpAss_nfjdn304
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn304:
	#assigning True to b152
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -608($fp)
	j	bp_label_607
bExpAss_nfjdn305:
	#assigning False to b152
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -608($fp)
	j	bp_label_607
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_607
	#marker Label
bp_label_607:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b152 offset is -608($fp)
	#			 __allocating reg $t0
	lw $t0, -608($fp)
	#marker Label
bp_label_608:
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
	j	bp_label_609
	#marker Label
bp_label_609:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn307
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_610
	#marker Label
bp_label_610:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn306
	#reach Or derivation
bExpAss_nfjdn306:
	#assigning True to b153
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -612($fp)
	j	bp_label_611
bExpAss_nfjdn307:
	#assigning False to b153
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -612($fp)
	j	bp_label_611
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_611
	#marker Label
bp_label_611:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b153 offset is -612($fp)
	#			 __allocating reg $t0
	lw $t0, -612($fp)
	#marker Label
bp_label_612:
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
	j	bp_label_613
	#marker Label
bp_label_613:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn309
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_614
	#marker Label
bp_label_614:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn309
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn308
	#reach Or derivation
bExpAss_nfjdn308:
	#assigning True to b154
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -616($fp)
	j	bp_label_615
bExpAss_nfjdn309:
	#assigning False to b154
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -616($fp)
	j	bp_label_615
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_615
	#marker Label
bp_label_615:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b154 offset is -616($fp)
	#			 __allocating reg $t0
	lw $t0, -616($fp)
	#marker Label
bp_label_616:
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
	j	bp_label_617
	#marker Label
bp_label_617:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn311
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_618
	#marker Label
bp_label_618:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn311
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn310
	#reach Or derivation
bExpAss_nfjdn310:
	#assigning True to b155
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -620($fp)
	j	bp_label_619
bExpAss_nfjdn311:
	#assigning False to b155
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -620($fp)
	j	bp_label_619
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_619
	#marker Label
bp_label_619:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b155 offset is -620($fp)
	#			 __allocating reg $t0
	lw $t0, -620($fp)
	#marker Label
bp_label_620:
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
	j	bp_label_621
	#marker Label
bp_label_621:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn313
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_622
	#marker Label
bp_label_622:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn313
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn312
	#reach Or derivation
bExpAss_nfjdn312:
	#assigning True to b156
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -624($fp)
	j	bp_label_623
bExpAss_nfjdn313:
	#assigning False to b156
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -624($fp)
	j	bp_label_623
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_623
	#marker Label
bp_label_623:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b156 offset is -624($fp)
	#			 __allocating reg $t0
	lw $t0, -624($fp)
	#marker Label
bp_label_624:
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
	j	bp_label_625
	#marker Label
bp_label_625:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn315
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_626
	#marker Label
bp_label_626:
	#func header store regs before call
	#stored 0 registers
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
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bExpAss_nfjdn315
	j	bExpAss_nfjdn314
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn314:
	#assigning True to b157
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -628($fp)
	j	bp_label_627
bExpAss_nfjdn315:
	#assigning False to b157
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -628($fp)
	j	bp_label_627
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_627
	#marker Label
bp_label_627:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b157 offset is -628($fp)
	#			 __allocating reg $t0
	lw $t0, -628($fp)
	#marker Label
bp_label_628:
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
	j	bp_label_629
	#marker Label
bp_label_629:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn317
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_630
	#marker Label
bp_label_630:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn316
	#reach Or derivation
bExpAss_nfjdn316:
	#assigning True to b158
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -632($fp)
	j	bp_label_631
bExpAss_nfjdn317:
	#assigning False to b158
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -632($fp)
	j	bp_label_631
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_631
	#marker Label
bp_label_631:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b158 offset is -632($fp)
	#			 __allocating reg $t0
	lw $t0, -632($fp)
	#marker Label
bp_label_632:
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
	j	bp_label_633
	#marker Label
bp_label_633:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn319
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_634
	#marker Label
bp_label_634:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn319
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn318
	#reach Or derivation
bExpAss_nfjdn318:
	#assigning True to b159
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -636($fp)
	j	bp_label_635
bExpAss_nfjdn319:
	#assigning False to b159
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -636($fp)
	j	bp_label_635
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_635
	#marker Label
bp_label_635:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b159 offset is -636($fp)
	#			 __allocating reg $t0
	lw $t0, -636($fp)
	#marker Label
bp_label_636:
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
	j	bp_label_637
	#marker Label
bp_label_637:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn321
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_638
	#marker Label
bp_label_638:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn321
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn320
	#reach Or derivation
bExpAss_nfjdn320:
	#assigning True to b160
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -640($fp)
	j	bp_label_639
bExpAss_nfjdn321:
	#assigning False to b160
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -640($fp)
	j	bp_label_639
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_639
	#marker Label
bp_label_639:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b160 offset is -640($fp)
	#			 __allocating reg $t0
	lw $t0, -640($fp)
	#marker Label
bp_label_640:
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
	j	bp_label_641
	#marker Label
bp_label_641:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn323
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_642
	#marker Label
bp_label_642:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn323
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn322
	#reach Or derivation
bExpAss_nfjdn322:
	#assigning True to b161
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -644($fp)
	j	bp_label_643
bExpAss_nfjdn323:
	#assigning False to b161
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -644($fp)
	j	bp_label_643
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_643
	#marker Label
bp_label_643:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b161 offset is -644($fp)
	#			 __allocating reg $t0
	lw $t0, -644($fp)
	#marker Label
bp_label_644:
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
	j	bp_label_645
bp_label_645:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
