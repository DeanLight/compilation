.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "b1 is true\n"
string_label_1:	.asciiz "b1 is true\n"
string_label_2:	.asciiz "b2 is false\n"
string_label_3:	.asciiz "b2 is false\n"
string_label_4:	.asciiz "b3 is false\n"
string_label_5:	.asciiz "b3 is false\n"
string_label_6:	.asciiz "b3 is false after b4\n"
string_label_7:	.asciiz "b3 is false after b4\n"
string_label_8:	.asciiz "First If\n"
string_label_9:	.asciiz "First If\n"
string_label_10:	.asciiz "First Else\n"
string_label_11:	.asciiz "First Else\n"
string_label_12:	.asciiz "Second If\n"
string_label_13:	.asciiz "Second If\n"
string_label_14:	.asciiz "Second Else\n"
string_label_15:	.asciiz "Second Else\n"
string_label_16:	.asciiz "Third If\n"
string_label_17:	.asciiz "Third If\n"
string_label_18:	.asciiz "Third Else\n"
string_label_19:	.asciiz "Third Else\n"
.text
	#first program point
main:
	#initialize fp
	move	$fp,$sp
	jal	label_132
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
	#Func f:
label_29:
	#Getting Var falue for [Exp->id]: j1 offset is 4($fp)
	#			 __allocating reg $t0
	lw $t0, 4($fp)
	#Getting Var falue for [Exp->id]: j2 offset is 8($fp)
	#			 __allocating reg $t1
	lw $t1, 8($fp)
	bgt $t0, $t1,bp_label_0
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_3
	#marker Label
bp_label_0:
	#Getting Var falue for [Exp->id]: j2 offset is 8($fp)
	#			 __allocating reg $t0
	lw $t0, 8($fp)
	#			 __allocating reg $t1
	li	$t1,100
	blt $t0, $t1,bp_label_2
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_3
	#reach And derivation
	#return noneVoid in v0
bp_label_2:
	li	$v0,1
	j	bp_label_1
bp_label_3:
	li	$v0,0
bp_label_1:
	move	$sp,$fp
	jr	$ra
bp_label_4:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func g:
label_69:
	#Getting Var falue for [Exp->id]: k offset is 4($fp)
	#			 __allocating reg $t0
	lw $t0, 4($fp)
	#			 __allocating reg $t1
	li	$t1,10
	bgt $t0, $t1,bp_label_5
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_6
	#marker Label
bp_label_5:
	#Getting Var falue for [Exp->id]: dec offset is 8($fp)
	#			 __allocating reg $t0
	lw $t0, 8($fp)
	#a Bool Var dec in boolean operator
	#If true
	bne $t0, $zero,bp_label_9
	#			 __freeing reg $t0
	#If False
	j	bp_label_6
	#reach And derivation
	#marker Label
bp_label_6:
	#Getting Var falue for [Exp->id]: k offset is 4($fp)
	#			 __allocating reg $t0
	lw $t0, 4($fp)
	#			 __allocating reg $t1
	li	$t1,10
	ble $t0, $t1,bp_label_7
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_10
	#marker Label
bp_label_7:
	#Getting Var falue for [Exp->id]: dec offset is 8($fp)
	#			 __allocating reg $t0
	lw $t0, 8($fp)
	#a Bool Var dec in boolean operator
	#If true
	bne $t0, $zero,bp_label_10
	#			 __freeing reg $t0
	#If False
	j	bp_label_9
	#reach And derivation
	#reach Or derivation
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
label_132:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,10
	#			 __allocating reg $t1
	li	$t1,5
	#preparing to call f
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t1 to stack
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t1
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: f
	jal	label_29
	#returned from func: f
	#poping 2 params from stack 
	addiu $sp, $sp, 8
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling f
	#a Bool Func f
	bne $t0, $zero,bExpAss_nfjdn0
	j	bExpAss_nfjdn1
	#			 __freeing reg $t0
bExpAss_nfjdn0:
	#assigning True to b1
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_12
bExpAss_nfjdn1:
	#assigning False to b1
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_12
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_12
	#marker Label
bp_label_12:
	#Getting Var falue for [Exp->id]: b1 offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var b1 in boolean operator
	#If true
	bne $t0, $zero,bp_label_13
	#			 __freeing reg $t0
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
	j	bp_label_15
	#marker Label
bp_label_14:
	#end of ifelse
bp_label_15:
	#end of statement jump
	j	bp_label_16
	#marker Label
bp_label_16:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,5
	#Getting Var falue for [Exp->id]: b1 offset is ($fp)
	#			 __allocating reg $t1
	lw $t1, ($fp)
	#preparing to call g
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t1 to stack
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t1
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: g
	jal	label_69
	#returned from func: g
	#poping 2 params from stack 
	addiu $sp, $sp, 8
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling g
	#a Bool Func g
	bne $t0, $zero,bExpAss_nfjdn2
	j	bExpAss_nfjdn3
	#			 __freeing reg $t0
bExpAss_nfjdn2:
	#assigning True to b2
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -4($fp)
	j	bp_label_17
bExpAss_nfjdn3:
	#assigning False to b2
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -4($fp)
	j	bp_label_17
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_17
	#marker Label
bp_label_17:
	#Getting Var falue for [Exp->id]: b2 offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var b2 in boolean operator
	#If true
	bne $t0, $zero,bp_label_19
	#			 __freeing reg $t0
	#If False
	j	bp_label_18
	#marker Label
bp_label_18:
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
	j	bp_label_20
	#marker Label
bp_label_19:
	#end of ifelse
bp_label_20:
	#end of statement jump
	j	bp_label_21
	#marker Label
bp_label_21:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: b1 offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var b1 in boolean operator
	#If true
	bne $t0, $zero,bp_label_22
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn5
	#marker Label
bp_label_22:
	#Getting Var falue for [Exp->id]: b2 offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var b2 in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn4
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn5
	#reach And derivation
bExpAss_nfjdn4:
	#assigning True to b3
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_23
bExpAss_nfjdn5:
	#assigning False to b3
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_23
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_23
	#marker Label
bp_label_23:
	#Getting Var falue for [Exp->id]: b3 offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#a Bool Var b3 in boolean operator
	#If true
	bne $t0, $zero,bp_label_25
	#			 __freeing reg $t0
	#If False
	j	bp_label_24
	#marker Label
bp_label_24:
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
	#end of statement jump
	j	bp_label_26
	#marker Label
bp_label_25:
	#end of ifelse
bp_label_26:
	#end of statement jump
	j	bp_label_27
	#marker Label
bp_label_27:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,120
	#			 __allocating reg $t1
	li	$t1,110
	#preparing to call f
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t1 to stack
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t1
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: f
	jal	label_29
	#returned from func: f
	#poping 2 params from stack 
	addiu $sp, $sp, 8
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling f
	#a Bool Func f
	bne $t0, $zero,bExpAss_nfjdn6
	j	bp_label_28
	#			 __freeing reg $t0
	#marker Label
bp_label_28:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,45
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	#			 __allocating reg $t0
	li	$t0,10
	#			 __allocating reg $t1
	li	$t1,6
	#preparing to call f
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t1 to stack
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t1
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: f
	jal	label_29
	#returned from func: f
	#poping 2 params from stack 
	addiu $sp, $sp, 8
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	#			 __allocating reg $t1
	move	$t1,$v0
	#finished calling f
	#a Bool Func f
	bne $t1, $zero,
	j	
	#			 __freeing reg $t1
	#preparing to call g
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	#pushing reg $t/ to stack
	sw $t/, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t/
	move	$fp,$sp
	#jumping to func: g
	jal	label_69
	#returned from func: g
	#poping 2 params from stack 
	addiu $sp, $sp, 8
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	#			 __allocating reg $t/
	move	$t/,$v0
	#finished calling g
	#a Bool Func g
	bne $t/, $zero,bExpAss_nfjdn6
	j	bExpAss_nfjdn7
	#			 __freeing reg $t/
	#reach Or derivation
bExpAss_nfjdn6:
	#assigning True to b4
	#			 __allocating reg $t/
	li	$t/,1
	sw $t/, -12($fp)
	j	bp_label_29
bExpAss_nfjdn7:
	#assigning False to b4
	#			 __allocating reg $t/
	li	$t/,0
	sw $t/, -12($fp)
	j	bp_label_29
	#			 __freeing reg $t/
	#end of statement jump
	j	bp_label_29
	#marker Label
bp_label_29:
	#Getting Var falue for [Exp->id]: b3 offset is -8($fp)
	#			 __allocating reg $t/
	lw $t/, -8($fp)
	#a Bool Var b3 in boolean operator
	#If true
	bne $t/, $zero,bp_label_31
	#			 __freeing reg $t/
	#If False
	j	bp_label_30
	#marker Label
bp_label_30:
	#func header store regs before call
	#stored -1 registers
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
	#restoring -1 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_32
	#marker Label
bp_label_31:
	#end of ifelse
bp_label_32:
	#end of statement jump
	j	bp_label_33
	#marker Label
bp_label_33:
	#Getting Var falue for [Exp->id]: b2 offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var b2 in boolean operator
	#If true
	bne $t0, $zero,bp_label_34
	#			 __freeing reg $t0
	#If False
	j	bp_label_37
	#marker Label
bp_label_34:
	#Getting Var falue for [Exp->id]: b1 offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var b1 in boolean operator
	#If true
	bne $t0, $zero,bp_label_35
	#			 __freeing reg $t0
	#If False
	j	bp_label_37
	#reach And derivation
	#marker Label
bp_label_35:
	#Getting Var falue for [Exp->id]: b2 offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var b2 in boolean operator
	#If true
	bne $t0, $zero,bp_label_36
	#			 __freeing reg $t0
	#If False
	j	bp_label_37
	#marker Label
bp_label_36:
	#Getting Var falue for [Exp->id]: b4 offset is -12($fp)
	#			 __allocating reg $t0
	lw $t0, -12($fp)
	#a Bool Var b4 in boolean operator
	#If true
	bne $t0, $zero,bp_label_38
	#			 __freeing reg $t0
	#If False
	j	bp_label_37
	#reach And derivation
	#reach And derivation
	#marker Label
bp_label_37:
	#Getting Var falue for [Exp->id]: b3 offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#a Bool Var b3 in boolean operator
	#If true
	bne $t0, $zero,bp_label_39
	#			 __freeing reg $t0
	#If False
	j	bp_label_38
	#reach Or derivation
	#marker Label
bp_label_38:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_9
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
	j	bp_label_40
	#marker Label
bp_label_39:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_11
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
	j	bp_label_40
	#end of ifelse
bp_label_40:
	#end of statement jump
	j	bp_label_41
	#marker Label
bp_label_41:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,10
	#			 __allocating reg $t1
	li	$t1,6
	#preparing to call f
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t1 to stack
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t1
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: f
	jal	label_29
	#returned from func: f
	#poping 2 params from stack 
	addiu $sp, $sp, 8
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling f
	#a Bool Func f
	bne $t0, $zero,bp_label_42
	j	bp_label_48
	#			 __freeing reg $t0
	#marker Label
bp_label_42:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,100
	#Getting Var falue for [Exp->id]: b1 offset is ($fp)
	#			 __allocating reg $t1
	lw $t1, ($fp)
	#a Bool Var b1 in boolean operator
	#If true
	bne $t1, $zero,bp_label_44
	#			 __freeing reg $t1
	#If False
	j	bp_label_43
	#marker Label
bp_label_43:
	#Getting Var falue for [Exp->id]: b2 offset is -4($fp)
	#			 __allocating reg $t1
	lw $t1, -4($fp)
	#a Bool Var b2 in boolean operator
	#If true
	bne $t1, $zero,bp_label_44
	#			 __freeing reg $t1
	#If False
	j	bp_label_46
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_44:
	#			 __allocating reg $t1
	li	$t1,1
	j	bp_label_45
	#inserting 0 to param reg if evaluates to false
bp_label_46:
	#			 __allocating reg $t1
	li	$t1,0
bp_label_45:
	#preparing to call g
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t1 to stack
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t1
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: g
	jal	label_69
	#returned from func: g
	#poping 2 params from stack 
	addiu $sp, $sp, 8
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling g
	#a Bool Func g
	bne $t0, $zero,bp_label_47
	j	bp_label_48
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_47:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_13
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
	j	bp_label_49
	#marker Label
bp_label_48:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_15
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
	j	bp_label_49
	#end of ifelse
bp_label_49:
	#end of statement jump
	j	bp_label_50
	#marker Label
bp_label_50:
	#Getting Var falue for [Exp->id]: b1 offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var b1 in boolean operator
	#If true
	bne $t0, $zero,bp_label_51
	#			 __freeing reg $t0
	#If False
	j	bp_label_57
	#marker Label
bp_label_51:
	#Getting Var falue for [Exp->id]: b2 offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var b2 in boolean operator
	#If true
	bne $t0, $zero,bp_label_52
	#			 __freeing reg $t0
	#If False
	j	bp_label_57
	#reach And derivation
	#marker Label
bp_label_52:
	#Getting Var falue for [Exp->id]: b3 offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#a Bool Var b3 in boolean operator
	#If true
	bne $t0, $zero,bp_label_53
	#			 __freeing reg $t0
	#If False
	j	bp_label_57
	#reach And derivation
	#marker Label
bp_label_53:
	#Getting Var falue for [Exp->id]: b4 offset is -12($fp)
	#			 __allocating reg $t0
	lw $t0, -12($fp)
	#a Bool Var b4 in boolean operator
	#If true
	bne $t0, $zero,bp_label_54
	#			 __freeing reg $t0
	#If False
	j	bp_label_57
	#reach And derivation
	#marker Label
bp_label_54:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,10
	#			 __allocating reg $t1
	li	$t1,18
	#preparing to call f
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t1 to stack
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t1
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: f
	jal	label_29
	#returned from func: f
	#poping 2 params from stack 
	addiu $sp, $sp, 8
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling f
	#a Bool Func f
	bne $t0, $zero,bp_label_55
	j	bp_label_57
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_55:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,5
	#exp derived false
	#Moving False into new Param Reg
	#			 __allocating reg $t1
	li	$t1,0
	#preparing to call g
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t1 to stack
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t1
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: g
	jal	label_69
	#returned from func: g
	#poping 2 params from stack 
	addiu $sp, $sp, 8
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling g
	#a Bool Func g
	bne $t0, $zero,bp_label_56
	j	bp_label_57
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_56:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_17
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
	j	bp_label_58
	#marker Label
bp_label_57:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_19
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
	j	bp_label_58
	#end of ifelse
bp_label_58:
	#end of statement jump
	j	bp_label_59
bp_label_59:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
