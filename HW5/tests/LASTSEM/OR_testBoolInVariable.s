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
	jal	label_153
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
	j	bp_label_1
	#marker Label
bp_label_0:
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
	#end of statement jump
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
	j	bp_label_2
	#end of ifelse
bp_label_2:
	#end of statement jump
	j	bp_label_3
bp_label_3:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func True:
label_111:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_5
	#return noneVoid in v0
bp_label_5:
	li	$v0,1
	j	bp_label_4
bp_label_6:
	li	$v0,0
bp_label_4:
	move	$sp,$fp
	jr	$ra
bp_label_7:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func False:
label_132:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_10
	#return noneVoid in v0
bp_label_9:
	li	$v0,1
	j	bp_label_8
bp_label_10:
	li	$v0,0
bp_label_8:
	move	$sp,$fp
	jr	$ra
bp_label_11:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func main:
label_153:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
bExpAss_nfjdn0:
	#assigning True to t
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_12
bExpAss_nfjdn1:
	#assigning False to t
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_12
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_12
	#marker Label
bp_label_12:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
bExpAss_nfjdn2:
	#assigning True to f
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -4($fp)
	j	bp_label_13
bExpAss_nfjdn3:
	#assigning False to f
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -4($fp)
	j	bp_label_13
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_13
	#marker Label
bp_label_13:
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
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bExpAss_nfjdn4
	j	bExpAss_nfjdn5
	#			 __freeing reg $t0
bExpAss_nfjdn4:
	#assigning True to b2
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_14
bExpAss_nfjdn5:
	#assigning False to b2
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_14
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_14
	#marker Label
bp_label_14:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b2 offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_15
	#marker Label
bp_label_15:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
bExpAss_nfjdn6:
	#assigning True to b3
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -12($fp)
	j	bp_label_16
bExpAss_nfjdn7:
	#assigning False to b3
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -12($fp)
	j	bp_label_16
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_16
	#marker Label
bp_label_16:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: b3 offset is -12($fp)
	#			 __allocating reg $t0
	lw $t0, -12($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_17
	#marker Label
bp_label_17:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
bExpAss_nfjdn8:
	#assigning True to b4
	#			 __allocating reg $t1
	li	$t1,1
	sw $t1, -16($fp)
	j	bp_label_18
bExpAss_nfjdn9:
	#assigning False to b4
	#			 __allocating reg $t1
	li	$t1,0
	sw $t1, -16($fp)
	j	bp_label_18
	#			 __freeing reg $t1
	#end of statement jump
	j	bp_label_18
	#marker Label
bp_label_18:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	#Getting Var falue for [Exp->id]: b4 offset is -16($fp)
	#			 __allocating reg $t0
	lw $t0, -16($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_19
	#marker Label
bp_label_19:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t1
	li	$t1,4
	#			 __allocating reg $t2
	li	$t2,5
	blt $t1, $t2,bExpAss_nfjdn10
	#			 __freeing reg $t2
	#			 __freeing reg $t1
	j	bExpAss_nfjdn11
bExpAss_nfjdn10:
	#assigning True to b5
	#			 __allocating reg $t1
	li	$t1,1
	sw $t1, -20($fp)
	j	bp_label_20
bExpAss_nfjdn11:
	#assigning False to b5
	#			 __allocating reg $t1
	li	$t1,0
	sw $t1, -20($fp)
	j	bp_label_20
	#			 __freeing reg $t1
	#end of statement jump
	j	bp_label_20
	#marker Label
bp_label_20:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	#Getting Var falue for [Exp->id]: b5 offset is -20($fp)
	#			 __allocating reg $t0
	lw $t0, -20($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_21
	#marker Label
bp_label_21:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t1
	li	$t1,4
	#			 __allocating reg $t2
	li	$t2,4
	beq $t1, $t2,bExpAss_nfjdn12
	#			 __freeing reg $t2
	#			 __freeing reg $t1
	j	bExpAss_nfjdn13
bExpAss_nfjdn12:
	#assigning True to b6
	#			 __allocating reg $t1
	li	$t1,1
	sw $t1, -24($fp)
	j	bp_label_22
bExpAss_nfjdn13:
	#assigning False to b6
	#			 __allocating reg $t1
	li	$t1,0
	sw $t1, -24($fp)
	j	bp_label_22
	#			 __freeing reg $t1
	#end of statement jump
	j	bp_label_22
	#marker Label
bp_label_22:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	#Getting Var falue for [Exp->id]: b6 offset is -24($fp)
	#			 __allocating reg $t0
	lw $t0, -24($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_23
	#marker Label
bp_label_23:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t1
	move	$t1,$v0
	#a Bool Func False
	bne $t1, $zero,bExpAss_nfjdn14
	j	bExpAss_nfjdn15
	#			 __freeing reg $t1
bExpAss_nfjdn14:
	#assigning True to b7
	#			 __allocating reg $t1
	li	$t1,1
	sw $t1, -28($fp)
	j	bp_label_24
bExpAss_nfjdn15:
	#assigning False to b7
	#			 __allocating reg $t1
	li	$t1,0
	sw $t1, -28($fp)
	j	bp_label_24
	#			 __freeing reg $t1
	#end of statement jump
	j	bp_label_24
	#marker Label
bp_label_24:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	#Getting Var falue for [Exp->id]: b7 offset is -28($fp)
	#			 __allocating reg $t0
	lw $t0, -28($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
bExpAss_nfjdn16:
	#assigning True to b8
	#			 __allocating reg $t1
	li	$t1,1
	sw $t1, -32($fp)
	j	bp_label_26
bExpAss_nfjdn17:
	#assigning False to b8
	#			 __allocating reg $t1
	li	$t1,0
	sw $t1, -32($fp)
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
	#Getting Var falue for [Exp->id]: b8 offset is -32($fp)
	#			 __allocating reg $t0
	lw $t0, -32($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_27
	#marker Label
bp_label_27:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t1
	lw $t1, -4($fp)
bExpAss_nfjdn18:
	#assigning True to b9
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -36($fp)
	j	bp_label_28
bExpAss_nfjdn19:
	#assigning False to b9
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -36($fp)
	j	bp_label_28
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_28
	#marker Label
bp_label_28:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b9 offset is -36($fp)
	#			 __allocating reg $t0
	lw $t0, -36($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_29
	#marker Label
bp_label_29:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn20
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn21
bExpAss_nfjdn20:
	#assigning True to b10
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -40($fp)
	j	bp_label_30
bExpAss_nfjdn21:
	#assigning False to b10
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -40($fp)
	j	bp_label_30
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_30
	#marker Label
bp_label_30:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b10 offset is -40($fp)
	#			 __allocating reg $t0
	lw $t0, -40($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_31
	#marker Label
bp_label_31:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn22
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn23
bExpAss_nfjdn22:
	#assigning True to b11
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -44($fp)
	j	bp_label_32
bExpAss_nfjdn23:
	#assigning False to b11
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -44($fp)
	j	bp_label_32
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_32
	#marker Label
bp_label_32:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b11 offset is -44($fp)
	#			 __allocating reg $t0
	lw $t0, -44($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_33
	#marker Label
bp_label_33:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bp_label_34
	j	bExpAss_nfjdn25
	#			 __freeing reg $t2
	#marker Label
bp_label_34:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn24
	j	bExpAss_nfjdn25
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn24:
	#assigning True to b12
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -48($fp)
	j	bp_label_35
bExpAss_nfjdn25:
	#assigning False to b12
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -48($fp)
	j	bp_label_35
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_35
	#marker Label
bp_label_35:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b12 offset is -48($fp)
	#			 __allocating reg $t0
	lw $t0, -48($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_36
	#marker Label
bp_label_36:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bp_label_37
	j	bExpAss_nfjdn27
	#			 __freeing reg $t2
	#marker Label
bp_label_37:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn27
	#reach And derivation
bExpAss_nfjdn26:
	#assigning True to b13
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -52($fp)
	j	bp_label_38
bExpAss_nfjdn27:
	#assigning False to b13
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -52($fp)
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
	#Getting Var falue for [Exp->id]: b13 offset is -52($fp)
	#			 __allocating reg $t0
	lw $t0, -52($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_39
	#marker Label
bp_label_39:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bp_label_40
	j	bExpAss_nfjdn29
	#			 __freeing reg $t2
	#marker Label
bp_label_40:
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
	#assigning True to b14
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -56($fp)
	j	bp_label_41
bExpAss_nfjdn29:
	#assigning False to b14
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -56($fp)
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
	#Getting Var falue for [Exp->id]: b14 offset is -56($fp)
	#			 __allocating reg $t0
	lw $t0, -56($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_42
	#marker Label
bp_label_42:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bp_label_43
	j	bExpAss_nfjdn31
	#			 __freeing reg $t2
	#marker Label
bp_label_43:
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
	#assigning True to b15
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -60($fp)
	j	bp_label_44
bExpAss_nfjdn31:
	#assigning False to b15
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -60($fp)
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
	#Getting Var falue for [Exp->id]: b15 offset is -60($fp)
	#			 __allocating reg $t0
	lw $t0, -60($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_45
	#marker Label
bp_label_45:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bp_label_46
	j	bExpAss_nfjdn33
	#			 __freeing reg $t2
	#marker Label
bp_label_46:
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
	#assigning True to b16
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -64($fp)
	j	bp_label_47
bExpAss_nfjdn33:
	#assigning False to b16
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -64($fp)
	j	bp_label_47
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_47
	#marker Label
bp_label_47:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b16 offset is -64($fp)
	#			 __allocating reg $t0
	lw $t0, -64($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_48
	#marker Label
bp_label_48:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_49
	#marker Label
bp_label_49:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn34
	j	bExpAss_nfjdn35
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn34:
	#assigning True to b17
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -68($fp)
	j	bp_label_50
bExpAss_nfjdn35:
	#assigning False to b17
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -68($fp)
	j	bp_label_50
	#			 __freeing reg $t2
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
	#Getting Var falue for [Exp->id]: b17 offset is -68($fp)
	#			 __allocating reg $t0
	lw $t0, -68($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_51
	#marker Label
bp_label_51:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_52
	#marker Label
bp_label_52:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn37
	#reach And derivation
bExpAss_nfjdn36:
	#assigning True to b18
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -72($fp)
	j	bp_label_53
bExpAss_nfjdn37:
	#assigning False to b18
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -72($fp)
	j	bp_label_53
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_53
	#marker Label
bp_label_53:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b18 offset is -72($fp)
	#			 __allocating reg $t0
	lw $t0, -72($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_55
	#marker Label
bp_label_55:
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
	#assigning True to b19
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -76($fp)
	j	bp_label_56
bExpAss_nfjdn39:
	#assigning False to b19
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -76($fp)
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
	#Getting Var falue for [Exp->id]: b19 offset is -76($fp)
	#			 __allocating reg $t0
	lw $t0, -76($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_57
	#marker Label
bp_label_57:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_58
	#marker Label
bp_label_58:
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
	#assigning True to b20
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -80($fp)
	j	bp_label_59
bExpAss_nfjdn41:
	#assigning False to b20
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -80($fp)
	j	bp_label_59
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_59
	#marker Label
bp_label_59:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b20 offset is -80($fp)
	#			 __allocating reg $t0
	lw $t0, -80($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_60
	#marker Label
bp_label_60:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_61
	#marker Label
bp_label_61:
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
	#assigning True to b21
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -84($fp)
	j	bp_label_62
bExpAss_nfjdn43:
	#assigning False to b21
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -84($fp)
	j	bp_label_62
	#			 __freeing reg $t2
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
	#Getting Var falue for [Exp->id]: b21 offset is -84($fp)
	#			 __allocating reg $t0
	lw $t0, -84($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_63
	#marker Label
bp_label_63:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_64
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn45
	#marker Label
bp_label_64:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn44
	j	bExpAss_nfjdn45
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn44:
	#assigning True to b22
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -88($fp)
	j	bp_label_65
bExpAss_nfjdn45:
	#assigning False to b22
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -88($fp)
	j	bp_label_65
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_65
	#marker Label
bp_label_65:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b22 offset is -88($fp)
	#			 __allocating reg $t0
	lw $t0, -88($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_67
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn47
	#marker Label
bp_label_67:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn47
	#reach And derivation
bExpAss_nfjdn46:
	#assigning True to b23
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -92($fp)
	j	bp_label_68
bExpAss_nfjdn47:
	#assigning False to b23
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -92($fp)
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
	#Getting Var falue for [Exp->id]: b23 offset is -92($fp)
	#			 __allocating reg $t0
	lw $t0, -92($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_69
	#marker Label
bp_label_69:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_70
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn49
	#marker Label
bp_label_70:
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
	#assigning True to b24
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -96($fp)
	j	bp_label_71
bExpAss_nfjdn49:
	#assigning False to b24
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -96($fp)
	j	bp_label_71
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_71
	#marker Label
bp_label_71:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b24 offset is -96($fp)
	#			 __allocating reg $t0
	lw $t0, -96($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_72
	#marker Label
bp_label_72:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_73
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn51
	#marker Label
bp_label_73:
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
	#assigning True to b25
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -100($fp)
	j	bp_label_74
bExpAss_nfjdn51:
	#assigning False to b25
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -100($fp)
	j	bp_label_74
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_74
	#marker Label
bp_label_74:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b25 offset is -100($fp)
	#			 __allocating reg $t0
	lw $t0, -100($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_75
	#marker Label
bp_label_75:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_76
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn53
	#marker Label
bp_label_76:
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
	#assigning True to b26
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -104($fp)
	j	bp_label_77
bExpAss_nfjdn53:
	#assigning False to b26
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -104($fp)
	j	bp_label_77
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_77
	#marker Label
bp_label_77:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b26 offset is -104($fp)
	#			 __allocating reg $t0
	lw $t0, -104($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_79
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn55
	#marker Label
bp_label_79:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn54
	j	bExpAss_nfjdn55
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn54:
	#assigning True to b27
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -108($fp)
	j	bp_label_80
bExpAss_nfjdn55:
	#assigning False to b27
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -108($fp)
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
	#Getting Var falue for [Exp->id]: b27 offset is -108($fp)
	#			 __allocating reg $t0
	lw $t0, -108($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_81
	#marker Label
bp_label_81:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_82
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn57
	#marker Label
bp_label_82:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn57
	#reach And derivation
bExpAss_nfjdn56:
	#assigning True to b28
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -112($fp)
	j	bp_label_83
bExpAss_nfjdn57:
	#assigning False to b28
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -112($fp)
	j	bp_label_83
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_83
	#marker Label
bp_label_83:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b28 offset is -112($fp)
	#			 __allocating reg $t0
	lw $t0, -112($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_84
	#marker Label
bp_label_84:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_85
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn59
	#marker Label
bp_label_85:
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
	#assigning True to b29
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -116($fp)
	j	bp_label_86
bExpAss_nfjdn59:
	#assigning False to b29
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -116($fp)
	j	bp_label_86
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_86
	#marker Label
bp_label_86:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b29 offset is -116($fp)
	#			 __allocating reg $t0
	lw $t0, -116($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_87
	#marker Label
bp_label_87:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_88
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn61
	#marker Label
bp_label_88:
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
	#assigning True to b30
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -120($fp)
	j	bp_label_89
bExpAss_nfjdn61:
	#assigning False to b30
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -120($fp)
	j	bp_label_89
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_89
	#marker Label
bp_label_89:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b30 offset is -120($fp)
	#			 __allocating reg $t0
	lw $t0, -120($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_91
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn63
	#marker Label
bp_label_91:
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
	#assigning True to b31
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -124($fp)
	j	bp_label_92
bExpAss_nfjdn63:
	#assigning False to b31
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -124($fp)
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
	#Getting Var falue for [Exp->id]: b31 offset is -124($fp)
	#			 __allocating reg $t0
	lw $t0, -124($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_93
	#marker Label
bp_label_93:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_94
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn65
	#marker Label
bp_label_94:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn64
	j	bExpAss_nfjdn65
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn64:
	#assigning True to b32
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -128($fp)
	j	bp_label_95
bExpAss_nfjdn65:
	#assigning False to b32
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -128($fp)
	j	bp_label_95
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_95
	#marker Label
bp_label_95:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b32 offset is -128($fp)
	#			 __allocating reg $t0
	lw $t0, -128($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_96
	#marker Label
bp_label_96:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_97
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn67
	#marker Label
bp_label_97:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn67
	#reach And derivation
bExpAss_nfjdn66:
	#assigning True to b33
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -132($fp)
	j	bp_label_98
bExpAss_nfjdn67:
	#assigning False to b33
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -132($fp)
	j	bp_label_98
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_98
	#marker Label
bp_label_98:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b33 offset is -132($fp)
	#			 __allocating reg $t0
	lw $t0, -132($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_99
	#marker Label
bp_label_99:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_100
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn69
	#marker Label
bp_label_100:
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
	#assigning True to b34
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -136($fp)
	j	bp_label_101
bExpAss_nfjdn69:
	#assigning False to b34
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -136($fp)
	j	bp_label_101
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_101
	#marker Label
bp_label_101:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b34 offset is -136($fp)
	#			 __allocating reg $t0
	lw $t0, -136($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_103
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn71
	#marker Label
bp_label_103:
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
	#assigning True to b35
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -140($fp)
	j	bp_label_104
bExpAss_nfjdn71:
	#assigning False to b35
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -140($fp)
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
	#Getting Var falue for [Exp->id]: b35 offset is -140($fp)
	#			 __allocating reg $t0
	lw $t0, -140($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_105
	#marker Label
bp_label_105:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_106
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn73
	#marker Label
bp_label_106:
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
	#assigning True to b36
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -144($fp)
	j	bp_label_107
bExpAss_nfjdn73:
	#assigning False to b36
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -144($fp)
	j	bp_label_107
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_107
	#marker Label
bp_label_107:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b36 offset is -144($fp)
	#			 __allocating reg $t0
	lw $t0, -144($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_108
	#marker Label
bp_label_108:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bp_label_109
	j	bExpAss_nfjdn75
	#			 __freeing reg $t2
	#marker Label
bp_label_109:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn74
	j	bExpAss_nfjdn75
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn74:
	#assigning True to b37
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -148($fp)
	j	bp_label_110
bExpAss_nfjdn75:
	#assigning False to b37
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -148($fp)
	j	bp_label_110
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_110
	#marker Label
bp_label_110:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b37 offset is -148($fp)
	#			 __allocating reg $t0
	lw $t0, -148($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_111
	#marker Label
bp_label_111:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bp_label_112
	j	bExpAss_nfjdn77
	#			 __freeing reg $t2
	#marker Label
bp_label_112:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn77
	#reach And derivation
bExpAss_nfjdn76:
	#assigning True to b38
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -152($fp)
	j	bp_label_113
bExpAss_nfjdn77:
	#assigning False to b38
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -152($fp)
	j	bp_label_113
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_113
	#marker Label
bp_label_113:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b38 offset is -152($fp)
	#			 __allocating reg $t0
	lw $t0, -152($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bp_label_115
	j	bExpAss_nfjdn79
	#			 __freeing reg $t2
	#marker Label
bp_label_115:
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
	#assigning True to b39
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -156($fp)
	j	bp_label_116
bExpAss_nfjdn79:
	#assigning False to b39
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -156($fp)
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
	#Getting Var falue for [Exp->id]: b39 offset is -156($fp)
	#			 __allocating reg $t0
	lw $t0, -156($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_117
	#marker Label
bp_label_117:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bp_label_118
	j	bExpAss_nfjdn81
	#			 __freeing reg $t2
	#marker Label
bp_label_118:
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
	#assigning True to b40
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -160($fp)
	j	bp_label_119
bExpAss_nfjdn81:
	#assigning False to b40
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -160($fp)
	j	bp_label_119
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_119
	#marker Label
bp_label_119:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b40 offset is -160($fp)
	#			 __allocating reg $t0
	lw $t0, -160($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_120
	#marker Label
bp_label_120:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bp_label_121
	j	bExpAss_nfjdn83
	#			 __freeing reg $t2
	#marker Label
bp_label_121:
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
	#assigning True to b41
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -164($fp)
	j	bp_label_122
bExpAss_nfjdn83:
	#assigning False to b41
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -164($fp)
	j	bp_label_122
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_122
	#marker Label
bp_label_122:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b41 offset is -164($fp)
	#			 __allocating reg $t0
	lw $t0, -164($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_123
	#marker Label
bp_label_123:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_124
	#marker Label
bp_label_124:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn84
	j	bExpAss_nfjdn85
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn84:
	#assigning True to b42
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -168($fp)
	j	bp_label_125
bExpAss_nfjdn85:
	#assigning False to b42
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -168($fp)
	j	bp_label_125
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_125
	#marker Label
bp_label_125:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b42 offset is -168($fp)
	#			 __allocating reg $t0
	lw $t0, -168($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_127
	#marker Label
bp_label_127:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn87
	#reach And derivation
bExpAss_nfjdn86:
	#assigning True to b43
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -172($fp)
	j	bp_label_128
bExpAss_nfjdn87:
	#assigning False to b43
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -172($fp)
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
	#Getting Var falue for [Exp->id]: b43 offset is -172($fp)
	#			 __allocating reg $t0
	lw $t0, -172($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_129
	#marker Label
bp_label_129:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_130
	#marker Label
bp_label_130:
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
	#assigning True to b44
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -176($fp)
	j	bp_label_131
bExpAss_nfjdn89:
	#assigning False to b44
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -176($fp)
	j	bp_label_131
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_131
	#marker Label
bp_label_131:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b44 offset is -176($fp)
	#			 __allocating reg $t0
	lw $t0, -176($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_132
	#marker Label
bp_label_132:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_133
	#marker Label
bp_label_133:
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
	#assigning True to b45
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -180($fp)
	j	bp_label_134
bExpAss_nfjdn91:
	#assigning False to b45
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -180($fp)
	j	bp_label_134
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_134
	#marker Label
bp_label_134:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b45 offset is -180($fp)
	#			 __allocating reg $t0
	lw $t0, -180($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_135
	#marker Label
bp_label_135:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_136
	#marker Label
bp_label_136:
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
	#assigning True to b46
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -184($fp)
	j	bp_label_137
bExpAss_nfjdn93:
	#assigning False to b46
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -184($fp)
	j	bp_label_137
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_137
	#marker Label
bp_label_137:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b46 offset is -184($fp)
	#			 __allocating reg $t0
	lw $t0, -184($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_139
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn95
	#marker Label
bp_label_139:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn94
	j	bExpAss_nfjdn95
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn94:
	#assigning True to b47
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -188($fp)
	j	bp_label_140
bExpAss_nfjdn95:
	#assigning False to b47
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -188($fp)
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
	#Getting Var falue for [Exp->id]: b47 offset is -188($fp)
	#			 __allocating reg $t0
	lw $t0, -188($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_141
	#marker Label
bp_label_141:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_142
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn97
	#marker Label
bp_label_142:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn97
	#reach And derivation
bExpAss_nfjdn96:
	#assigning True to b48
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -192($fp)
	j	bp_label_143
bExpAss_nfjdn97:
	#assigning False to b48
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -192($fp)
	j	bp_label_143
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_143
	#marker Label
bp_label_143:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b48 offset is -192($fp)
	#			 __allocating reg $t0
	lw $t0, -192($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_144
	#marker Label
bp_label_144:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_145
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn99
	#marker Label
bp_label_145:
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
	#assigning True to b49
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -196($fp)
	j	bp_label_146
bExpAss_nfjdn99:
	#assigning False to b49
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -196($fp)
	j	bp_label_146
	#			 __freeing reg $t2
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
	#Getting Var falue for [Exp->id]: b49 offset is -196($fp)
	#			 __allocating reg $t0
	lw $t0, -196($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_147
	#marker Label
bp_label_147:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_148
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn101
	#marker Label
bp_label_148:
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
	#assigning True to b50
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -200($fp)
	j	bp_label_149
bExpAss_nfjdn101:
	#assigning False to b50
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -200($fp)
	j	bp_label_149
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_149
	#marker Label
bp_label_149:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b50 offset is -200($fp)
	#			 __allocating reg $t0
	lw $t0, -200($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bp_label_151
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn103
	#marker Label
bp_label_151:
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
	#assigning True to b51
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -204($fp)
	j	bp_label_152
bExpAss_nfjdn103:
	#assigning False to b51
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -204($fp)
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
	#Getting Var falue for [Exp->id]: b51 offset is -204($fp)
	#			 __allocating reg $t0
	lw $t0, -204($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_153
	#marker Label
bp_label_153:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_154
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn105
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn104
	j	bExpAss_nfjdn105
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn104:
	#assigning True to b52
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -208($fp)
	j	bp_label_155
bExpAss_nfjdn105:
	#assigning False to b52
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -208($fp)
	j	bp_label_155
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_155
	#marker Label
bp_label_155:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b52 offset is -208($fp)
	#			 __allocating reg $t0
	lw $t0, -208($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_156
	#marker Label
bp_label_156:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_157
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn107
	#marker Label
bp_label_157:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn107
	#reach And derivation
bExpAss_nfjdn106:
	#assigning True to b53
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -212($fp)
	j	bp_label_158
bExpAss_nfjdn107:
	#assigning False to b53
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -212($fp)
	j	bp_label_158
	#			 __freeing reg $t2
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
	#Getting Var falue for [Exp->id]: b53 offset is -212($fp)
	#			 __allocating reg $t0
	lw $t0, -212($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_159
	#marker Label
bp_label_159:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_160
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn109
	#marker Label
bp_label_160:
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
	#assigning True to b54
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -216($fp)
	j	bp_label_161
bExpAss_nfjdn109:
	#assigning False to b54
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -216($fp)
	j	bp_label_161
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_161
	#marker Label
bp_label_161:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b54 offset is -216($fp)
	#			 __allocating reg $t0
	lw $t0, -216($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_163
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn111
	#marker Label
bp_label_163:
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
	#assigning True to b55
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -220($fp)
	j	bp_label_164
bExpAss_nfjdn111:
	#assigning False to b55
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -220($fp)
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
	#Getting Var falue for [Exp->id]: b55 offset is -220($fp)
	#			 __allocating reg $t0
	lw $t0, -220($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_165
	#marker Label
bp_label_165:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bp_label_166
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn113
	#marker Label
bp_label_166:
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
	#assigning True to b56
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -224($fp)
	j	bp_label_167
bExpAss_nfjdn113:
	#assigning False to b56
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -224($fp)
	j	bp_label_167
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_167
	#marker Label
bp_label_167:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b56 offset is -224($fp)
	#			 __allocating reg $t0
	lw $t0, -224($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_168
	#marker Label
bp_label_168:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_169
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn115
	#marker Label
bp_label_169:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn114
	j	bExpAss_nfjdn115
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn114:
	#assigning True to b57
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -228($fp)
	j	bp_label_170
bExpAss_nfjdn115:
	#assigning False to b57
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -228($fp)
	j	bp_label_170
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_170
	#marker Label
bp_label_170:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b57 offset is -228($fp)
	#			 __allocating reg $t0
	lw $t0, -228($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_171
	#marker Label
bp_label_171:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_172
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn117
	#marker Label
bp_label_172:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn117
	#reach And derivation
bExpAss_nfjdn116:
	#assigning True to b58
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -232($fp)
	j	bp_label_173
bExpAss_nfjdn117:
	#assigning False to b58
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -232($fp)
	j	bp_label_173
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_173
	#marker Label
bp_label_173:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b58 offset is -232($fp)
	#			 __allocating reg $t0
	lw $t0, -232($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_175
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn119
	#marker Label
bp_label_175:
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
	#assigning True to b59
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -236($fp)
	j	bp_label_176
bExpAss_nfjdn119:
	#assigning False to b59
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -236($fp)
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
	#Getting Var falue for [Exp->id]: b59 offset is -236($fp)
	#			 __allocating reg $t0
	lw $t0, -236($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_177
	#marker Label
bp_label_177:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_178
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn121
	#marker Label
bp_label_178:
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
	#assigning True to b60
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -240($fp)
	j	bp_label_179
bExpAss_nfjdn121:
	#assigning False to b60
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -240($fp)
	j	bp_label_179
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_179
	#marker Label
bp_label_179:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b60 offset is -240($fp)
	#			 __allocating reg $t0
	lw $t0, -240($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_180
	#marker Label
bp_label_180:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bp_label_181
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn123
	#marker Label
bp_label_181:
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
	#assigning True to b61
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -244($fp)
	j	bp_label_182
bExpAss_nfjdn123:
	#assigning False to b61
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -244($fp)
	j	bp_label_182
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_182
	#marker Label
bp_label_182:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b61 offset is -244($fp)
	#			 __allocating reg $t0
	lw $t0, -244($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_183
	#marker Label
bp_label_183:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bp_label_184
	j	bExpAss_nfjdn125
	#			 __freeing reg $t2
	#marker Label
bp_label_184:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn124
	j	bExpAss_nfjdn125
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn124:
	#assigning True to b62
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -248($fp)
	j	bp_label_185
bExpAss_nfjdn125:
	#assigning False to b62
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -248($fp)
	j	bp_label_185
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_185
	#marker Label
bp_label_185:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b62 offset is -248($fp)
	#			 __allocating reg $t0
	lw $t0, -248($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bp_label_187
	j	bExpAss_nfjdn127
	#			 __freeing reg $t2
	#marker Label
bp_label_187:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn127
	#reach And derivation
bExpAss_nfjdn126:
	#assigning True to b63
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -252($fp)
	j	bp_label_188
bExpAss_nfjdn127:
	#assigning False to b63
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -252($fp)
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
	#Getting Var falue for [Exp->id]: b63 offset is -252($fp)
	#			 __allocating reg $t0
	lw $t0, -252($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_189
	#marker Label
bp_label_189:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bp_label_190
	j	bExpAss_nfjdn129
	#			 __freeing reg $t2
	#marker Label
bp_label_190:
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
	#assigning True to b64
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -256($fp)
	j	bp_label_191
bExpAss_nfjdn129:
	#assigning False to b64
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -256($fp)
	j	bp_label_191
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_191
	#marker Label
bp_label_191:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b64 offset is -256($fp)
	#			 __allocating reg $t0
	lw $t0, -256($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_192
	#marker Label
bp_label_192:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bp_label_193
	j	bExpAss_nfjdn131
	#			 __freeing reg $t2
	#marker Label
bp_label_193:
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
	#assigning True to b65
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -260($fp)
	j	bp_label_194
bExpAss_nfjdn131:
	#assigning False to b65
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -260($fp)
	j	bp_label_194
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_194
	#marker Label
bp_label_194:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b65 offset is -260($fp)
	#			 __allocating reg $t0
	lw $t0, -260($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_195
	#marker Label
bp_label_195:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bp_label_196
	j	bExpAss_nfjdn133
	#			 __freeing reg $t2
	#marker Label
bp_label_196:
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
	#assigning True to b66
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -264($fp)
	j	bp_label_197
bExpAss_nfjdn133:
	#assigning False to b66
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -264($fp)
	j	bp_label_197
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_197
	#marker Label
bp_label_197:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b66 offset is -264($fp)
	#			 __allocating reg $t0
	lw $t0, -264($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn135
	#marker Label
bp_label_199:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn134
	j	bExpAss_nfjdn135
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn134:
	#assigning True to b67
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -268($fp)
	j	bp_label_200
bExpAss_nfjdn135:
	#assigning False to b67
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -268($fp)
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
	#Getting Var falue for [Exp->id]: b67 offset is -268($fp)
	#			 __allocating reg $t0
	lw $t0, -268($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_201
	#marker Label
bp_label_201:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn137
	#marker Label
bp_label_202:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn137
	#reach And derivation
bExpAss_nfjdn136:
	#assigning True to b68
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -272($fp)
	j	bp_label_203
bExpAss_nfjdn137:
	#assigning False to b68
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -272($fp)
	j	bp_label_203
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_203
	#marker Label
bp_label_203:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b68 offset is -272($fp)
	#			 __allocating reg $t0
	lw $t0, -272($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_204
	#marker Label
bp_label_204:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn139
	#marker Label
bp_label_205:
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
	#assigning True to b69
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -276($fp)
	j	bp_label_206
bExpAss_nfjdn139:
	#assigning False to b69
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -276($fp)
	j	bp_label_206
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_206
	#marker Label
bp_label_206:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b69 offset is -276($fp)
	#			 __allocating reg $t0
	lw $t0, -276($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_207
	#marker Label
bp_label_207:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn141
	#marker Label
bp_label_208:
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
	#assigning True to b70
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -280($fp)
	j	bp_label_209
bExpAss_nfjdn141:
	#assigning False to b70
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -280($fp)
	j	bp_label_209
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_209
	#marker Label
bp_label_209:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b70 offset is -280($fp)
	#			 __allocating reg $t0
	lw $t0, -280($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn143
	#marker Label
bp_label_211:
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
	#assigning True to b71
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -284($fp)
	j	bp_label_212
bExpAss_nfjdn143:
	#assigning False to b71
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -284($fp)
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
	#Getting Var falue for [Exp->id]: b71 offset is -284($fp)
	#			 __allocating reg $t0
	lw $t0, -284($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_213
	#marker Label
bp_label_213:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bp_label_214
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn145
	#marker Label
bp_label_214:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn144
	j	bExpAss_nfjdn145
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn144:
	#assigning True to b72
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -288($fp)
	j	bp_label_215
bExpAss_nfjdn145:
	#assigning False to b72
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -288($fp)
	j	bp_label_215
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_215
	#marker Label
bp_label_215:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b72 offset is -288($fp)
	#			 __allocating reg $t0
	lw $t0, -288($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_216
	#marker Label
bp_label_216:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bp_label_217
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn147
	#marker Label
bp_label_217:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn147
	#reach And derivation
bExpAss_nfjdn146:
	#assigning True to b73
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -292($fp)
	j	bp_label_218
bExpAss_nfjdn147:
	#assigning False to b73
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -292($fp)
	j	bp_label_218
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_218
	#marker Label
bp_label_218:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b73 offset is -292($fp)
	#			 __allocating reg $t0
	lw $t0, -292($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_219
	#marker Label
bp_label_219:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bp_label_220
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn149
	#marker Label
bp_label_220:
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
	#assigning True to b74
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -296($fp)
	j	bp_label_221
bExpAss_nfjdn149:
	#assigning False to b74
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -296($fp)
	j	bp_label_221
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_221
	#marker Label
bp_label_221:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b74 offset is -296($fp)
	#			 __allocating reg $t0
	lw $t0, -296($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bp_label_223
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn151
	#marker Label
bp_label_223:
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
	#assigning True to b75
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -300($fp)
	j	bp_label_224
bExpAss_nfjdn151:
	#assigning False to b75
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -300($fp)
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
	#Getting Var falue for [Exp->id]: b75 offset is -300($fp)
	#			 __allocating reg $t0
	lw $t0, -300($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_225
	#marker Label
bp_label_225:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bp_label_226
	#			 __freeing reg $t2
	#If False
	j	bExpAss_nfjdn153
	#marker Label
bp_label_226:
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
	#assigning True to b76
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -304($fp)
	j	bp_label_227
bExpAss_nfjdn153:
	#assigning False to b76
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -304($fp)
	j	bp_label_227
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_227
	#marker Label
bp_label_227:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b76 offset is -304($fp)
	#			 __allocating reg $t0
	lw $t0, -304($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_228
	#marker Label
bp_label_228:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bp_label_229
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn155
	#marker Label
bp_label_229:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn154
	j	bExpAss_nfjdn155
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn154:
	#assigning True to b77
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -308($fp)
	j	bp_label_230
bExpAss_nfjdn155:
	#assigning False to b77
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -308($fp)
	j	bp_label_230
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_230
	#marker Label
bp_label_230:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b77 offset is -308($fp)
	#			 __allocating reg $t0
	lw $t0, -308($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_231
	#marker Label
bp_label_231:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bp_label_232
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn157
	#marker Label
bp_label_232:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn157
	#reach And derivation
bExpAss_nfjdn156:
	#assigning True to b78
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -312($fp)
	j	bp_label_233
bExpAss_nfjdn157:
	#assigning False to b78
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -312($fp)
	j	bp_label_233
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_233
	#marker Label
bp_label_233:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b78 offset is -312($fp)
	#			 __allocating reg $t0
	lw $t0, -312($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bp_label_235
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn159
	#marker Label
bp_label_235:
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
	#assigning True to b79
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -316($fp)
	j	bp_label_236
bExpAss_nfjdn159:
	#assigning False to b79
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -316($fp)
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
	#Getting Var falue for [Exp->id]: b79 offset is -316($fp)
	#			 __allocating reg $t0
	lw $t0, -316($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_237
	#marker Label
bp_label_237:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bp_label_238
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn161
	#marker Label
bp_label_238:
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
	#assigning True to b80
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -320($fp)
	j	bp_label_239
bExpAss_nfjdn161:
	#assigning False to b80
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -320($fp)
	j	bp_label_239
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_239
	#marker Label
bp_label_239:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b80 offset is -320($fp)
	#			 __allocating reg $t0
	lw $t0, -320($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_240
	#marker Label
bp_label_240:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bp_label_241
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn163
	#marker Label
bp_label_241:
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
	#assigning True to b81
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -324($fp)
	j	bp_label_242
bExpAss_nfjdn163:
	#assigning False to b81
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -324($fp)
	j	bp_label_242
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_242
	#marker Label
bp_label_242:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b81 offset is -324($fp)
	#			 __allocating reg $t0
	lw $t0, -324($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_243
	#marker Label
bp_label_243:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bp_label_244
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn165
	#marker Label
bp_label_244:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn164
	j	bExpAss_nfjdn165
	#			 __freeing reg $t2
	#reach And derivation
bExpAss_nfjdn164:
	#assigning True to b82
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -328($fp)
	j	bp_label_245
bExpAss_nfjdn165:
	#assigning False to b82
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -328($fp)
	j	bp_label_245
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_245
	#marker Label
bp_label_245:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b82 offset is -328($fp)
	#			 __allocating reg $t0
	lw $t0, -328($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bp_label_247
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn167
	#marker Label
bp_label_247:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn167
	#reach And derivation
bExpAss_nfjdn166:
	#assigning True to b83
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -332($fp)
	j	bp_label_248
bExpAss_nfjdn167:
	#assigning False to b83
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -332($fp)
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
	#Getting Var falue for [Exp->id]: b83 offset is -332($fp)
	#			 __allocating reg $t0
	lw $t0, -332($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_249
	#marker Label
bp_label_249:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bp_label_250
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn169
	#marker Label
bp_label_250:
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
	#assigning True to b84
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -336($fp)
	j	bp_label_251
bExpAss_nfjdn169:
	#assigning False to b84
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -336($fp)
	j	bp_label_251
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_251
	#marker Label
bp_label_251:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b84 offset is -336($fp)
	#			 __allocating reg $t0
	lw $t0, -336($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_252
	#marker Label
bp_label_252:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bp_label_253
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn171
	#marker Label
bp_label_253:
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
	#assigning True to b85
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -340($fp)
	j	bp_label_254
bExpAss_nfjdn171:
	#assigning False to b85
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -340($fp)
	j	bp_label_254
	#			 __freeing reg $t2
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
	#Getting Var falue for [Exp->id]: b85 offset is -340($fp)
	#			 __allocating reg $t0
	lw $t0, -340($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_255
	#marker Label
bp_label_255:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bp_label_256
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bExpAss_nfjdn173
	#marker Label
bp_label_256:
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
	#assigning True to b86
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -344($fp)
	j	bp_label_257
bExpAss_nfjdn173:
	#assigning False to b86
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -344($fp)
	j	bp_label_257
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_257
	#marker Label
bp_label_257:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b86 offset is -344($fp)
	#			 __allocating reg $t0
	lw $t0, -344($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bExpAss_nfjdn174
	j	bp_label_259
	#			 __freeing reg $t2
	#marker Label
bp_label_259:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn174
	j	bExpAss_nfjdn175
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn174:
	#assigning True to b87
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -348($fp)
	j	bp_label_260
bExpAss_nfjdn175:
	#assigning False to b87
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -348($fp)
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
	#Getting Var falue for [Exp->id]: b87 offset is -348($fp)
	#			 __allocating reg $t0
	lw $t0, -348($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_261
	#marker Label
bp_label_261:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bExpAss_nfjdn176
	j	bp_label_262
	#			 __freeing reg $t2
	#marker Label
bp_label_262:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn177
	#reach Or derivation
bExpAss_nfjdn176:
	#assigning True to b88
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -352($fp)
	j	bp_label_263
bExpAss_nfjdn177:
	#assigning False to b88
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -352($fp)
	j	bp_label_263
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_263
	#marker Label
bp_label_263:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b88 offset is -352($fp)
	#			 __allocating reg $t0
	lw $t0, -352($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_264
	#marker Label
bp_label_264:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bExpAss_nfjdn178
	j	bp_label_265
	#			 __freeing reg $t2
	#marker Label
bp_label_265:
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
	#assigning True to b89
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -356($fp)
	j	bp_label_266
bExpAss_nfjdn179:
	#assigning False to b89
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -356($fp)
	j	bp_label_266
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_266
	#marker Label
bp_label_266:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b89 offset is -356($fp)
	#			 __allocating reg $t0
	lw $t0, -356($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_267
	#marker Label
bp_label_267:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bExpAss_nfjdn180
	j	bp_label_268
	#			 __freeing reg $t2
	#marker Label
bp_label_268:
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
	#assigning True to b90
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -360($fp)
	j	bp_label_269
bExpAss_nfjdn181:
	#assigning False to b90
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -360($fp)
	j	bp_label_269
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_269
	#marker Label
bp_label_269:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b90 offset is -360($fp)
	#			 __allocating reg $t0
	lw $t0, -360($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_111
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
	#a Bool Func True
	bne $t2, $zero,bExpAss_nfjdn182
	j	bp_label_271
	#			 __freeing reg $t2
	#marker Label
bp_label_271:
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
	#assigning True to b91
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -364($fp)
	j	bp_label_272
bExpAss_nfjdn183:
	#assigning False to b91
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -364($fp)
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
	#Getting Var falue for [Exp->id]: b91 offset is -364($fp)
	#			 __allocating reg $t0
	lw $t0, -364($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_273
	#marker Label
bp_label_273:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn184
	#marker Label
bp_label_274:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn184
	j	bExpAss_nfjdn185
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn184:
	#assigning True to b92
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -368($fp)
	j	bp_label_275
bExpAss_nfjdn185:
	#assigning False to b92
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -368($fp)
	j	bp_label_275
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_275
	#marker Label
bp_label_275:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b92 offset is -368($fp)
	#			 __allocating reg $t0
	lw $t0, -368($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_276
	#marker Label
bp_label_276:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn186
	#marker Label
bp_label_277:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn187
	#reach Or derivation
bExpAss_nfjdn186:
	#assigning True to b93
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -372($fp)
	j	bp_label_278
bExpAss_nfjdn187:
	#assigning False to b93
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -372($fp)
	j	bp_label_278
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_278
	#marker Label
bp_label_278:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b93 offset is -372($fp)
	#			 __allocating reg $t0
	lw $t0, -372($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_279
	#marker Label
bp_label_279:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn188
	#marker Label
bp_label_280:
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
	#assigning True to b94
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -376($fp)
	j	bp_label_281
bExpAss_nfjdn189:
	#assigning False to b94
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -376($fp)
	j	bp_label_281
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_281
	#marker Label
bp_label_281:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b94 offset is -376($fp)
	#			 __allocating reg $t0
	lw $t0, -376($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn190
	#marker Label
bp_label_283:
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
	#assigning True to b95
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -380($fp)
	j	bp_label_284
bExpAss_nfjdn191:
	#assigning False to b95
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -380($fp)
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
	#Getting Var falue for [Exp->id]: b95 offset is -380($fp)
	#			 __allocating reg $t0
	lw $t0, -380($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_285
	#marker Label
bp_label_285:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn192
	#marker Label
bp_label_286:
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
	#assigning True to b96
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -384($fp)
	j	bp_label_287
bExpAss_nfjdn193:
	#assigning False to b96
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -384($fp)
	j	bp_label_287
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_287
	#marker Label
bp_label_287:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b96 offset is -384($fp)
	#			 __allocating reg $t0
	lw $t0, -384($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_288
	#marker Label
bp_label_288:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn194
	#			 __freeing reg $t2
	#If False
	j	bp_label_289
	#marker Label
bp_label_289:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn194
	j	bExpAss_nfjdn195
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn194:
	#assigning True to b97
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -388($fp)
	j	bp_label_290
bExpAss_nfjdn195:
	#assigning False to b97
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -388($fp)
	j	bp_label_290
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_290
	#marker Label
bp_label_290:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b97 offset is -388($fp)
	#			 __allocating reg $t0
	lw $t0, -388($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_291
	#marker Label
bp_label_291:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn196
	#			 __freeing reg $t2
	#If False
	j	bp_label_292
	#marker Label
bp_label_292:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn197
	#reach Or derivation
bExpAss_nfjdn196:
	#assigning True to b98
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -392($fp)
	j	bp_label_293
bExpAss_nfjdn197:
	#assigning False to b98
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -392($fp)
	j	bp_label_293
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_293
	#marker Label
bp_label_293:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b98 offset is -392($fp)
	#			 __allocating reg $t0
	lw $t0, -392($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn198
	#			 __freeing reg $t2
	#If False
	j	bp_label_295
	#marker Label
bp_label_295:
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
	#assigning True to b99
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -396($fp)
	j	bp_label_296
bExpAss_nfjdn199:
	#assigning False to b99
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -396($fp)
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
	#Getting Var falue for [Exp->id]: b99 offset is -396($fp)
	#			 __allocating reg $t0
	lw $t0, -396($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_297
	#marker Label
bp_label_297:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn200
	#			 __freeing reg $t2
	#If False
	j	bp_label_298
	#marker Label
bp_label_298:
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
	#assigning True to b100
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -400($fp)
	j	bp_label_299
bExpAss_nfjdn201:
	#assigning False to b100
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -400($fp)
	j	bp_label_299
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_299
	#marker Label
bp_label_299:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b100 offset is -400($fp)
	#			 __allocating reg $t0
	lw $t0, -400($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_300
	#marker Label
bp_label_300:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t2
	lw $t2, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn202
	#			 __freeing reg $t2
	#If False
	j	bp_label_301
	#marker Label
bp_label_301:
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
	#assigning True to b101
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -404($fp)
	j	bp_label_302
bExpAss_nfjdn203:
	#assigning False to b101
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -404($fp)
	j	bp_label_302
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_302
	#marker Label
bp_label_302:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b101 offset is -404($fp)
	#			 __allocating reg $t0
	lw $t0, -404($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_303
	#marker Label
bp_label_303:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn204
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_304
	#marker Label
bp_label_304:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn204
	j	bExpAss_nfjdn205
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn204:
	#assigning True to b102
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -408($fp)
	j	bp_label_305
bExpAss_nfjdn205:
	#assigning False to b102
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -408($fp)
	j	bp_label_305
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_305
	#marker Label
bp_label_305:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b102 offset is -408($fp)
	#			 __allocating reg $t0
	lw $t0, -408($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn206
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_307
	#marker Label
bp_label_307:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn207
	#reach Or derivation
bExpAss_nfjdn206:
	#assigning True to b103
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -412($fp)
	j	bp_label_308
bExpAss_nfjdn207:
	#assigning False to b103
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -412($fp)
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
	#Getting Var falue for [Exp->id]: b103 offset is -412($fp)
	#			 __allocating reg $t0
	lw $t0, -412($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_309
	#marker Label
bp_label_309:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn208
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_310
	#marker Label
bp_label_310:
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
	#assigning True to b104
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -416($fp)
	j	bp_label_311
bExpAss_nfjdn209:
	#assigning False to b104
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -416($fp)
	j	bp_label_311
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_311
	#marker Label
bp_label_311:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b104 offset is -416($fp)
	#			 __allocating reg $t0
	lw $t0, -416($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_312
	#marker Label
bp_label_312:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn210
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_313
	#marker Label
bp_label_313:
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
	#assigning True to b105
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -420($fp)
	j	bp_label_314
bExpAss_nfjdn211:
	#assigning False to b105
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -420($fp)
	j	bp_label_314
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_314
	#marker Label
bp_label_314:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b105 offset is -420($fp)
	#			 __allocating reg $t0
	lw $t0, -420($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_315
	#marker Label
bp_label_315:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn212
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_316
	#marker Label
bp_label_316:
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
	#assigning True to b106
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -424($fp)
	j	bp_label_317
bExpAss_nfjdn213:
	#assigning False to b106
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -424($fp)
	j	bp_label_317
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_317
	#marker Label
bp_label_317:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b106 offset is -424($fp)
	#			 __allocating reg $t0
	lw $t0, -424($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn214
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_319
	#marker Label
bp_label_319:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn214
	j	bExpAss_nfjdn215
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn214:
	#assigning True to b107
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -428($fp)
	j	bp_label_320
bExpAss_nfjdn215:
	#assigning False to b107
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -428($fp)
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
	#Getting Var falue for [Exp->id]: b107 offset is -428($fp)
	#			 __allocating reg $t0
	lw $t0, -428($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_321
	#marker Label
bp_label_321:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn216
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_322
	#marker Label
bp_label_322:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn217
	#reach Or derivation
bExpAss_nfjdn216:
	#assigning True to b108
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -432($fp)
	j	bp_label_323
bExpAss_nfjdn217:
	#assigning False to b108
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -432($fp)
	j	bp_label_323
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_323
	#marker Label
bp_label_323:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b108 offset is -432($fp)
	#			 __allocating reg $t0
	lw $t0, -432($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_324
	#marker Label
bp_label_324:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn218
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_325
	#marker Label
bp_label_325:
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
	#assigning True to b109
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -436($fp)
	j	bp_label_326
bExpAss_nfjdn219:
	#assigning False to b109
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -436($fp)
	j	bp_label_326
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_326
	#marker Label
bp_label_326:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b109 offset is -436($fp)
	#			 __allocating reg $t0
	lw $t0, -436($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_327
	#marker Label
bp_label_327:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn220
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_328
	#marker Label
bp_label_328:
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
	#assigning True to b110
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -440($fp)
	j	bp_label_329
bExpAss_nfjdn221:
	#assigning False to b110
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -440($fp)
	j	bp_label_329
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_329
	#marker Label
bp_label_329:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b110 offset is -440($fp)
	#			 __allocating reg $t0
	lw $t0, -440($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn222
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_331
	#marker Label
bp_label_331:
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
	#assigning True to b111
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -444($fp)
	j	bp_label_332
bExpAss_nfjdn223:
	#assigning False to b111
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -444($fp)
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
	#Getting Var falue for [Exp->id]: b111 offset is -444($fp)
	#			 __allocating reg $t0
	lw $t0, -444($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_333
	#marker Label
bp_label_333:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn224
	j	bp_label_334
	#			 __freeing reg $t2
	#marker Label
bp_label_334:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn224
	j	bExpAss_nfjdn225
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn224:
	#assigning True to b112
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -448($fp)
	j	bp_label_335
bExpAss_nfjdn225:
	#assigning False to b112
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -448($fp)
	j	bp_label_335
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_335
	#marker Label
bp_label_335:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b112 offset is -448($fp)
	#			 __allocating reg $t0
	lw $t0, -448($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_336
	#marker Label
bp_label_336:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn226
	j	bp_label_337
	#			 __freeing reg $t2
	#marker Label
bp_label_337:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn227
	#reach Or derivation
bExpAss_nfjdn226:
	#assigning True to b113
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -452($fp)
	j	bp_label_338
bExpAss_nfjdn227:
	#assigning False to b113
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -452($fp)
	j	bp_label_338
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_338
	#marker Label
bp_label_338:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b113 offset is -452($fp)
	#			 __allocating reg $t0
	lw $t0, -452($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_339
	#marker Label
bp_label_339:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn228
	j	bp_label_340
	#			 __freeing reg $t2
	#marker Label
bp_label_340:
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
	#assigning True to b114
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -456($fp)
	j	bp_label_341
bExpAss_nfjdn229:
	#assigning False to b114
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -456($fp)
	j	bp_label_341
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_341
	#marker Label
bp_label_341:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b114 offset is -456($fp)
	#			 __allocating reg $t0
	lw $t0, -456($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn230
	j	bp_label_343
	#			 __freeing reg $t2
	#marker Label
bp_label_343:
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
	#assigning True to b115
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -460($fp)
	j	bp_label_344
bExpAss_nfjdn231:
	#assigning False to b115
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -460($fp)
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
	#Getting Var falue for [Exp->id]: b115 offset is -460($fp)
	#			 __allocating reg $t0
	lw $t0, -460($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_345
	#marker Label
bp_label_345:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn232
	j	bp_label_346
	#			 __freeing reg $t2
	#marker Label
bp_label_346:
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
	#assigning True to b116
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -464($fp)
	j	bp_label_347
bExpAss_nfjdn233:
	#assigning False to b116
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -464($fp)
	j	bp_label_347
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_347
	#marker Label
bp_label_347:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b116 offset is -464($fp)
	#			 __allocating reg $t0
	lw $t0, -464($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_348
	#marker Label
bp_label_348:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_349
	#marker Label
bp_label_349:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn234
	j	bExpAss_nfjdn235
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn234:
	#assigning True to b117
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -468($fp)
	j	bp_label_350
bExpAss_nfjdn235:
	#assigning False to b117
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -468($fp)
	j	bp_label_350
	#			 __freeing reg $t2
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
	#Getting Var falue for [Exp->id]: b117 offset is -468($fp)
	#			 __allocating reg $t0
	lw $t0, -468($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_351
	#marker Label
bp_label_351:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_352
	#marker Label
bp_label_352:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn237
	#reach Or derivation
bExpAss_nfjdn236:
	#assigning True to b118
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -472($fp)
	j	bp_label_353
bExpAss_nfjdn237:
	#assigning False to b118
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -472($fp)
	j	bp_label_353
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_353
	#marker Label
bp_label_353:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b118 offset is -472($fp)
	#			 __allocating reg $t0
	lw $t0, -472($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_355
	#marker Label
bp_label_355:
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
	#assigning True to b119
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -476($fp)
	j	bp_label_356
bExpAss_nfjdn239:
	#assigning False to b119
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -476($fp)
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
	#Getting Var falue for [Exp->id]: b119 offset is -476($fp)
	#			 __allocating reg $t0
	lw $t0, -476($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_357
	#marker Label
bp_label_357:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_358
	#marker Label
bp_label_358:
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
	#assigning True to b120
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -480($fp)
	j	bp_label_359
bExpAss_nfjdn241:
	#assigning False to b120
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -480($fp)
	j	bp_label_359
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_359
	#marker Label
bp_label_359:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b120 offset is -480($fp)
	#			 __allocating reg $t0
	lw $t0, -480($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_360
	#marker Label
bp_label_360:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_361
	#marker Label
bp_label_361:
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
	#assigning True to b121
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -484($fp)
	j	bp_label_362
bExpAss_nfjdn243:
	#assigning False to b121
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -484($fp)
	j	bp_label_362
	#			 __freeing reg $t2
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
	#Getting Var falue for [Exp->id]: b121 offset is -484($fp)
	#			 __allocating reg $t0
	lw $t0, -484($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_363
	#marker Label
bp_label_363:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn244
	#			 __freeing reg $t2
	#If False
	j	bp_label_364
	#marker Label
bp_label_364:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn244
	j	bExpAss_nfjdn245
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn244:
	#assigning True to b122
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -488($fp)
	j	bp_label_365
bExpAss_nfjdn245:
	#assigning False to b122
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -488($fp)
	j	bp_label_365
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_365
	#marker Label
bp_label_365:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b122 offset is -488($fp)
	#			 __allocating reg $t0
	lw $t0, -488($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn246
	#			 __freeing reg $t2
	#If False
	j	bp_label_367
	#marker Label
bp_label_367:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn247
	#reach Or derivation
bExpAss_nfjdn246:
	#assigning True to b123
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -492($fp)
	j	bp_label_368
bExpAss_nfjdn247:
	#assigning False to b123
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -492($fp)
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
	#Getting Var falue for [Exp->id]: b123 offset is -492($fp)
	#			 __allocating reg $t0
	lw $t0, -492($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_369
	#marker Label
bp_label_369:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn248
	#			 __freeing reg $t2
	#If False
	j	bp_label_370
	#marker Label
bp_label_370:
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
	#assigning True to b124
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -496($fp)
	j	bp_label_371
bExpAss_nfjdn249:
	#assigning False to b124
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -496($fp)
	j	bp_label_371
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_371
	#marker Label
bp_label_371:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b124 offset is -496($fp)
	#			 __allocating reg $t0
	lw $t0, -496($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_372
	#marker Label
bp_label_372:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn250
	#			 __freeing reg $t2
	#If False
	j	bp_label_373
	#marker Label
bp_label_373:
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
	#assigning True to b125
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -500($fp)
	j	bp_label_374
bExpAss_nfjdn251:
	#assigning False to b125
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -500($fp)
	j	bp_label_374
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_374
	#marker Label
bp_label_374:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b125 offset is -500($fp)
	#			 __allocating reg $t0
	lw $t0, -500($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_375
	#marker Label
bp_label_375:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn252
	#			 __freeing reg $t2
	#If False
	j	bp_label_376
	#marker Label
bp_label_376:
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
	#assigning True to b126
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -504($fp)
	j	bp_label_377
bExpAss_nfjdn253:
	#assigning False to b126
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -504($fp)
	j	bp_label_377
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_377
	#marker Label
bp_label_377:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b126 offset is -504($fp)
	#			 __allocating reg $t0
	lw $t0, -504($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn254
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_379
	#marker Label
bp_label_379:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn254
	j	bExpAss_nfjdn255
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn254:
	#assigning True to b127
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -508($fp)
	j	bp_label_380
bExpAss_nfjdn255:
	#assigning False to b127
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -508($fp)
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
	#Getting Var falue for [Exp->id]: b127 offset is -508($fp)
	#			 __allocating reg $t0
	lw $t0, -508($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_381
	#marker Label
bp_label_381:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn256
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_382
	#marker Label
bp_label_382:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn257
	#reach Or derivation
bExpAss_nfjdn256:
	#assigning True to b128
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -512($fp)
	j	bp_label_383
bExpAss_nfjdn257:
	#assigning False to b128
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -512($fp)
	j	bp_label_383
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_383
	#marker Label
bp_label_383:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b128 offset is -512($fp)
	#			 __allocating reg $t0
	lw $t0, -512($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_384
	#marker Label
bp_label_384:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn258
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_385
	#marker Label
bp_label_385:
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
	#assigning True to b129
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -516($fp)
	j	bp_label_386
bExpAss_nfjdn259:
	#assigning False to b129
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -516($fp)
	j	bp_label_386
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_386
	#marker Label
bp_label_386:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b129 offset is -516($fp)
	#			 __allocating reg $t0
	lw $t0, -516($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_387
	#marker Label
bp_label_387:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn260
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_388
	#marker Label
bp_label_388:
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
	#assigning True to b130
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -520($fp)
	j	bp_label_389
bExpAss_nfjdn261:
	#assigning False to b130
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -520($fp)
	j	bp_label_389
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_389
	#marker Label
bp_label_389:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b130 offset is -520($fp)
	#			 __allocating reg $t0
	lw $t0, -520($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn262
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_391
	#marker Label
bp_label_391:
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
	#assigning True to b131
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -524($fp)
	j	bp_label_392
bExpAss_nfjdn263:
	#assigning False to b131
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -524($fp)
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
	#Getting Var falue for [Exp->id]: b131 offset is -524($fp)
	#			 __allocating reg $t0
	lw $t0, -524($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_393
	#marker Label
bp_label_393:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn264
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_394
	#marker Label
bp_label_394:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn264
	j	bExpAss_nfjdn265
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn264:
	#assigning True to b132
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -528($fp)
	j	bp_label_395
bExpAss_nfjdn265:
	#assigning False to b132
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -528($fp)
	j	bp_label_395
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_395
	#marker Label
bp_label_395:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b132 offset is -528($fp)
	#			 __allocating reg $t0
	lw $t0, -528($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_396
	#marker Label
bp_label_396:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn266
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_397
	#marker Label
bp_label_397:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn267
	#reach Or derivation
bExpAss_nfjdn266:
	#assigning True to b133
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -532($fp)
	j	bp_label_398
bExpAss_nfjdn267:
	#assigning False to b133
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -532($fp)
	j	bp_label_398
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_398
	#marker Label
bp_label_398:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b133 offset is -532($fp)
	#			 __allocating reg $t0
	lw $t0, -532($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_399
	#marker Label
bp_label_399:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn268
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_400
	#marker Label
bp_label_400:
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
	#assigning True to b134
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -536($fp)
	j	bp_label_401
bExpAss_nfjdn269:
	#assigning False to b134
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -536($fp)
	j	bp_label_401
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_401
	#marker Label
bp_label_401:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b134 offset is -536($fp)
	#			 __allocating reg $t0
	lw $t0, -536($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn270
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_403
	#marker Label
bp_label_403:
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
	#assigning True to b135
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -540($fp)
	j	bp_label_404
bExpAss_nfjdn271:
	#assigning False to b135
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -540($fp)
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
	#Getting Var falue for [Exp->id]: b135 offset is -540($fp)
	#			 __allocating reg $t0
	lw $t0, -540($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_405
	#marker Label
bp_label_405:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn272
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_406
	#marker Label
bp_label_406:
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
	#assigning True to b136
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -544($fp)
	j	bp_label_407
bExpAss_nfjdn273:
	#assigning False to b136
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -544($fp)
	j	bp_label_407
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_407
	#marker Label
bp_label_407:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b136 offset is -544($fp)
	#			 __allocating reg $t0
	lw $t0, -544($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_408
	#marker Label
bp_label_408:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn274
	j	bp_label_409
	#			 __freeing reg $t2
	#marker Label
bp_label_409:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn274
	j	bExpAss_nfjdn275
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn274:
	#assigning True to b137
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -548($fp)
	j	bp_label_410
bExpAss_nfjdn275:
	#assigning False to b137
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -548($fp)
	j	bp_label_410
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_410
	#marker Label
bp_label_410:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b137 offset is -548($fp)
	#			 __allocating reg $t0
	lw $t0, -548($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_411
	#marker Label
bp_label_411:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn276
	j	bp_label_412
	#			 __freeing reg $t2
	#marker Label
bp_label_412:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn277
	#reach Or derivation
bExpAss_nfjdn276:
	#assigning True to b138
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -552($fp)
	j	bp_label_413
bExpAss_nfjdn277:
	#assigning False to b138
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -552($fp)
	j	bp_label_413
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_413
	#marker Label
bp_label_413:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b138 offset is -552($fp)
	#			 __allocating reg $t0
	lw $t0, -552($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn278
	j	bp_label_415
	#			 __freeing reg $t2
	#marker Label
bp_label_415:
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
	#assigning True to b139
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -556($fp)
	j	bp_label_416
bExpAss_nfjdn279:
	#assigning False to b139
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -556($fp)
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
	#Getting Var falue for [Exp->id]: b139 offset is -556($fp)
	#			 __allocating reg $t0
	lw $t0, -556($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_417
	#marker Label
bp_label_417:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn280
	j	bp_label_418
	#			 __freeing reg $t2
	#marker Label
bp_label_418:
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
	#assigning True to b140
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -560($fp)
	j	bp_label_419
bExpAss_nfjdn281:
	#assigning False to b140
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -560($fp)
	j	bp_label_419
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_419
	#marker Label
bp_label_419:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b140 offset is -560($fp)
	#			 __allocating reg $t0
	lw $t0, -560($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_420
	#marker Label
bp_label_420:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn282
	j	bp_label_421
	#			 __freeing reg $t2
	#marker Label
bp_label_421:
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
	#assigning True to b141
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -564($fp)
	j	bp_label_422
bExpAss_nfjdn283:
	#assigning False to b141
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -564($fp)
	j	bp_label_422
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_422
	#marker Label
bp_label_422:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b141 offset is -564($fp)
	#			 __allocating reg $t0
	lw $t0, -564($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_423
	#marker Label
bp_label_423:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_424
	#marker Label
bp_label_424:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn284
	j	bExpAss_nfjdn285
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn284:
	#assigning True to b142
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -568($fp)
	j	bp_label_425
bExpAss_nfjdn285:
	#assigning False to b142
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -568($fp)
	j	bp_label_425
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_425
	#marker Label
bp_label_425:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b142 offset is -568($fp)
	#			 __allocating reg $t0
	lw $t0, -568($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_427
	#marker Label
bp_label_427:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn287
	#reach Or derivation
bExpAss_nfjdn286:
	#assigning True to b143
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -572($fp)
	j	bp_label_428
bExpAss_nfjdn287:
	#assigning False to b143
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -572($fp)
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
	#Getting Var falue for [Exp->id]: b143 offset is -572($fp)
	#			 __allocating reg $t0
	lw $t0, -572($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_429
	#marker Label
bp_label_429:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_430
	#marker Label
bp_label_430:
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
	#assigning True to b144
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -576($fp)
	j	bp_label_431
bExpAss_nfjdn289:
	#assigning False to b144
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -576($fp)
	j	bp_label_431
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_431
	#marker Label
bp_label_431:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b144 offset is -576($fp)
	#			 __allocating reg $t0
	lw $t0, -576($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_432
	#marker Label
bp_label_432:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_433
	#marker Label
bp_label_433:
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
	#assigning True to b145
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -580($fp)
	j	bp_label_434
bExpAss_nfjdn291:
	#assigning False to b145
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -580($fp)
	j	bp_label_434
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_434
	#marker Label
bp_label_434:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b145 offset is -580($fp)
	#			 __allocating reg $t0
	lw $t0, -580($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_435
	#marker Label
bp_label_435:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_436
	#marker Label
bp_label_436:
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
	#assigning True to b146
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -584($fp)
	j	bp_label_437
bExpAss_nfjdn293:
	#assigning False to b146
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -584($fp)
	j	bp_label_437
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_437
	#marker Label
bp_label_437:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b146 offset is -584($fp)
	#			 __allocating reg $t0
	lw $t0, -584($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn294
	#			 __freeing reg $t2
	#If False
	j	bp_label_439
	#marker Label
bp_label_439:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn294
	j	bExpAss_nfjdn295
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn294:
	#assigning True to b147
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -588($fp)
	j	bp_label_440
bExpAss_nfjdn295:
	#assigning False to b147
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -588($fp)
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
	#Getting Var falue for [Exp->id]: b147 offset is -588($fp)
	#			 __allocating reg $t0
	lw $t0, -588($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_441
	#marker Label
bp_label_441:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn296
	#			 __freeing reg $t2
	#If False
	j	bp_label_442
	#marker Label
bp_label_442:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn297
	#reach Or derivation
bExpAss_nfjdn296:
	#assigning True to b148
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -592($fp)
	j	bp_label_443
bExpAss_nfjdn297:
	#assigning False to b148
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -592($fp)
	j	bp_label_443
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_443
	#marker Label
bp_label_443:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b148 offset is -592($fp)
	#			 __allocating reg $t0
	lw $t0, -592($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_444
	#marker Label
bp_label_444:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn298
	#			 __freeing reg $t2
	#If False
	j	bp_label_445
	#marker Label
bp_label_445:
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
	#assigning True to b149
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -596($fp)
	j	bp_label_446
bExpAss_nfjdn299:
	#assigning False to b149
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -596($fp)
	j	bp_label_446
	#			 __freeing reg $t2
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
	#Getting Var falue for [Exp->id]: b149 offset is -596($fp)
	#			 __allocating reg $t0
	lw $t0, -596($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_447
	#marker Label
bp_label_447:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn300
	#			 __freeing reg $t2
	#If False
	j	bp_label_448
	#marker Label
bp_label_448:
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
	#assigning True to b150
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -600($fp)
	j	bp_label_449
bExpAss_nfjdn301:
	#assigning False to b150
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -600($fp)
	j	bp_label_449
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_449
	#marker Label
bp_label_449:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b150 offset is -600($fp)
	#			 __allocating reg $t0
	lw $t0, -600($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t2
	lw $t2, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t2, $zero,bExpAss_nfjdn302
	#			 __freeing reg $t2
	#If False
	j	bp_label_451
	#marker Label
bp_label_451:
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
	#assigning True to b151
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -604($fp)
	j	bp_label_452
bExpAss_nfjdn303:
	#assigning False to b151
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -604($fp)
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
	#Getting Var falue for [Exp->id]: b151 offset is -604($fp)
	#			 __allocating reg $t0
	lw $t0, -604($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_453
	#marker Label
bp_label_453:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn304
	#			 __freeing reg $t3
	#			 __freeing reg $t2
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn304
	j	bExpAss_nfjdn305
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn304:
	#assigning True to b152
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -608($fp)
	j	bp_label_455
bExpAss_nfjdn305:
	#assigning False to b152
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -608($fp)
	j	bp_label_455
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_455
	#marker Label
bp_label_455:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b152 offset is -608($fp)
	#			 __allocating reg $t0
	lw $t0, -608($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_456
	#marker Label
bp_label_456:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn306
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_457
	#marker Label
bp_label_457:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn307
	#reach Or derivation
bExpAss_nfjdn306:
	#assigning True to b153
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -612($fp)
	j	bp_label_458
bExpAss_nfjdn307:
	#assigning False to b153
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -612($fp)
	j	bp_label_458
	#			 __freeing reg $t2
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
	#Getting Var falue for [Exp->id]: b153 offset is -612($fp)
	#			 __allocating reg $t0
	lw $t0, -612($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_459
	#marker Label
bp_label_459:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn308
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_460
	#marker Label
bp_label_460:
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
	#assigning True to b154
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -616($fp)
	j	bp_label_461
bExpAss_nfjdn309:
	#assigning False to b154
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -616($fp)
	j	bp_label_461
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_461
	#marker Label
bp_label_461:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b154 offset is -616($fp)
	#			 __allocating reg $t0
	lw $t0, -616($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn310
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_463
	#marker Label
bp_label_463:
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
	#assigning True to b155
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -620($fp)
	j	bp_label_464
bExpAss_nfjdn311:
	#assigning False to b155
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -620($fp)
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
	#Getting Var falue for [Exp->id]: b155 offset is -620($fp)
	#			 __allocating reg $t0
	lw $t0, -620($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_465
	#marker Label
bp_label_465:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn312
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_466
	#marker Label
bp_label_466:
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
	#assigning True to b156
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -624($fp)
	j	bp_label_467
bExpAss_nfjdn313:
	#assigning False to b156
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -624($fp)
	j	bp_label_467
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_467
	#marker Label
bp_label_467:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b156 offset is -624($fp)
	#			 __allocating reg $t0
	lw $t0, -624($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_468
	#marker Label
bp_label_468:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn314
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_469
	#marker Label
bp_label_469:
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
	jal	label_132
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
	#a Bool Func False
	bne $t2, $zero,bExpAss_nfjdn314
	j	bExpAss_nfjdn315
	#			 __freeing reg $t2
	#reach Or derivation
bExpAss_nfjdn314:
	#assigning True to b157
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -628($fp)
	j	bp_label_470
bExpAss_nfjdn315:
	#assigning False to b157
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -628($fp)
	j	bp_label_470
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_470
	#marker Label
bp_label_470:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b157 offset is -628($fp)
	#			 __allocating reg $t0
	lw $t0, -628($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_471
	#marker Label
bp_label_471:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn316
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_472
	#marker Label
bp_label_472:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn317
	#reach Or derivation
bExpAss_nfjdn316:
	#assigning True to b158
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -632($fp)
	j	bp_label_473
bExpAss_nfjdn317:
	#assigning False to b158
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -632($fp)
	j	bp_label_473
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_473
	#marker Label
bp_label_473:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b158 offset is -632($fp)
	#			 __allocating reg $t0
	lw $t0, -632($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn318
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_475
	#marker Label
bp_label_475:
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
	#assigning True to b159
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -636($fp)
	j	bp_label_476
bExpAss_nfjdn319:
	#assigning False to b159
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -636($fp)
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
	#Getting Var falue for [Exp->id]: b159 offset is -636($fp)
	#			 __allocating reg $t0
	lw $t0, -636($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_477
	#marker Label
bp_label_477:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn320
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_478
	#marker Label
bp_label_478:
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
	#assigning True to b160
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -640($fp)
	j	bp_label_479
bExpAss_nfjdn321:
	#assigning False to b160
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -640($fp)
	j	bp_label_479
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_479
	#marker Label
bp_label_479:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b160 offset is -640($fp)
	#			 __allocating reg $t0
	lw $t0, -640($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_480
	#marker Label
bp_label_480:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t2
	li	$t2,4
	#			 __allocating reg $t3
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn322
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_481
	#marker Label
bp_label_481:
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
	#assigning True to b161
	#			 __allocating reg $t2
	li	$t2,1
	sw $t2, -644($fp)
	j	bp_label_482
bExpAss_nfjdn323:
	#assigning False to b161
	#			 __allocating reg $t2
	li	$t2,0
	sw $t2, -644($fp)
	j	bp_label_482
	#			 __freeing reg $t2
	#end of statement jump
	j	bp_label_482
	#marker Label
bp_label_482:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#Getting Var falue for [Exp->id]: b161 offset is -644($fp)
	#			 __allocating reg $t0
	lw $t0, -644($fp)
	#preparing to call printBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printBool
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
	j	bp_label_483
bp_label_483:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
