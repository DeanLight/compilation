.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "B:"
string_label_1:	.asciiz "B:"
string_label_2:	.asciiz "TRUE"
string_label_3:	.asciiz "TRUE"
string_label_4:	.asciiz "C:"
string_label_5:	.asciiz "C:"
string_label_6:	.asciiz "TRUE"
string_label_7:	.asciiz "TRUE"
string_label_8:	.asciiz "D:"
string_label_9:	.asciiz "D:"
string_label_10:	.asciiz "TRUE"
string_label_11:	.asciiz "TRUE"
string_label_12:	.asciiz "E:"
string_label_13:	.asciiz "E:"
string_label_14:	.asciiz "TRUE"
string_label_15:	.asciiz "TRUE"
string_label_16:	.asciiz "F:"
string_label_17:	.asciiz "F:"
string_label_18:	.asciiz "TRUE"
string_label_19:	.asciiz "TRUE"
string_label_20:	.asciiz "G:"
string_label_21:	.asciiz "G:"
string_label_22:	.asciiz "TRUE"
string_label_23:	.asciiz "TRUE"
string_label_24:	.asciiz "H:"
string_label_25:	.asciiz "H:"
string_label_26:	.asciiz "TRUE"
string_label_27:	.asciiz "TRUE"
string_label_28:	.asciiz "I:"
string_label_29:	.asciiz "I:"
string_label_30:	.asciiz "TRUE"
string_label_31:	.asciiz "TRUE"
.text
	#first program point
main:
	#initialize fp
	move	$fp,$sp
	jal	label_105
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
	#Func fooFalse:
label_29:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_0
	#marker Label
bp_label_0:
	#exp derived false
	#return noneVoid in v0
	move	$v0,$t/
	jr	$ra
bp_label_1:
	#Adding an extre return just in case
	jr	$ra
	#Func tooTrue:
label_67:
	#func header store regs before call
	addiu $sp, $sp, --4
	#stored -1 registers
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
	#restoring -1 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_2
	#marker Label
bp_label_2:
	#exp derived true
	#return noneVoid in v0
	move	$v0,$t/
	jr	$ra
bp_label_3:
	#Adding an extre return just in case
	jr	$ra
	#Func main:
label_105:
	# allocating word on stack for local variable x
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, ($fp)
	#end of statement jump
	j	bp_label_4
	#marker Label
bp_label_4:
	#func header store regs before call
	addiu $sp, $sp, --4
	#stored -1 registers
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
	#restoring -1 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_5
	#marker Label
bp_label_5:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn0
	#marker Label
bp_label_6:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	move	$fp,$sp
	jal	label_29
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#moving return value to new reg
	move	$t0,$v0
	#a Bool Func fooFalse in boolean operator
	bne $t0, $zero,bExpAss_nfjdn1
	j	bExpAss_nfjdn0
	#reach Or derivation
bExpAss_nfjdn0:
	#assigning True to x
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_7
bExpAss_nfjdn1:
	#assigning False to x
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_7
	#end of statement jump
	j	bp_label_7
	#marker Label
bp_label_7:
	#Getting Var falue for [Exp->id]: x
	lw $t0, ($fp)
	#a Bool Var x in boolean operator
	#If true
	bne $t0, $zero,bp_label_8
	#If False
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
	j	bp_label_10
	#marker Label
bp_label_9:
	#end of ifelse
bp_label_10:
	#end of statement jump
	j	bp_label_11
	#marker Label
bp_label_11:
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
	j	bp_label_12
	#marker Label
bp_label_12:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_13
	#marker Label
bp_label_13:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	move	$fp,$sp
	jal	label_29
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#moving return value to new reg
	move	$t0,$v0
	#a Bool Func fooFalse in boolean operator
	bne $t0, $zero,bExpAss_nfjdn3
	j	bExpAss_nfjdn2
	#reach Or derivation
bExpAss_nfjdn2:
	#assigning True to x
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_14
bExpAss_nfjdn3:
	#assigning False to x
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_14
	#end of statement jump
	j	bp_label_14
	#marker Label
bp_label_14:
	#Getting Var falue for [Exp->id]: x
	lw $t0, ($fp)
	#a Bool Var x in boolean operator
	#If true
	bne $t0, $zero,bp_label_15
	#If False
	j	bp_label_16
	#marker Label
bp_label_15:
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
	j	bp_label_17
	#marker Label
bp_label_16:
	#end of ifelse
bp_label_17:
	#end of statement jump
	j	bp_label_18
	#marker Label
bp_label_18:
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
	j	bp_label_19
	#marker Label
bp_label_19:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn4
	#marker Label
bp_label_20:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	move	$fp,$sp
	jal	label_67
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#moving return value to new reg
	move	$t0,$v0
	#a Bool Func tooTrue in boolean operator
	bne $t0, $zero,bExpAss_nfjdn5
	j	bExpAss_nfjdn4
	#reach Or derivation
bExpAss_nfjdn4:
	#assigning True to x
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_21
bExpAss_nfjdn5:
	#assigning False to x
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_21
	#end of statement jump
	j	bp_label_21
	#marker Label
bp_label_21:
	#Getting Var falue for [Exp->id]: x
	lw $t0, ($fp)
	#a Bool Var x in boolean operator
	#If true
	bne $t0, $zero,bp_label_22
	#If False
	j	bp_label_23
	#marker Label
bp_label_22:
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
	j	bp_label_24
	#marker Label
bp_label_23:
	#end of ifelse
bp_label_24:
	#end of statement jump
	j	bp_label_25
	#marker Label
bp_label_25:
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
	j	bp_label_26
	#marker Label
bp_label_26:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_27
	#marker Label
bp_label_27:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	move	$fp,$sp
	jal	label_67
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#moving return value to new reg
	move	$t0,$v0
	#a Bool Func tooTrue in boolean operator
	bne $t0, $zero,bExpAss_nfjdn7
	j	bExpAss_nfjdn6
	#reach Or derivation
bExpAss_nfjdn6:
	#assigning True to x
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_28
bExpAss_nfjdn7:
	#assigning False to x
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_28
	#end of statement jump
	j	bp_label_28
	#marker Label
bp_label_28:
	#Getting Var falue for [Exp->id]: x
	lw $t0, ($fp)
	#a Bool Var x in boolean operator
	#If true
	bne $t0, $zero,bp_label_29
	#If False
	j	bp_label_30
	#marker Label
bp_label_29:
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
	j	bp_label_31
	#marker Label
bp_label_30:
	#end of ifelse
bp_label_31:
	#end of statement jump
	j	bp_label_32
	#marker Label
bp_label_32:
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
	j	bp_label_33
	#marker Label
bp_label_33:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_34
	#marker Label
bp_label_34:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	move	$fp,$sp
	jal	label_29
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#moving return value to new reg
	move	$t0,$v0
	#a Bool Func fooFalse in boolean operator
	bne $t0, $zero,bExpAss_nfjdn9
	j	bExpAss_nfjdn8
	#reach And derivation
bExpAss_nfjdn8:
	#assigning True to x
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_35
bExpAss_nfjdn9:
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
	j	bp_label_38
	#marker Label
bp_label_37:
	#end of ifelse
bp_label_38:
	#end of statement jump
	j	bp_label_39
	#marker Label
bp_label_39:
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
	la $v0, string_label_21
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
	j	bp_label_40
	#marker Label
bp_label_40:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn11
	#marker Label
bp_label_41:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	move	$fp,$sp
	jal	label_29
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#moving return value to new reg
	move	$t0,$v0
	#a Bool Func fooFalse in boolean operator
	bne $t0, $zero,bExpAss_nfjdn11
	j	bExpAss_nfjdn10
	#reach And derivation
bExpAss_nfjdn10:
	#assigning True to x
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_42
bExpAss_nfjdn11:
	#assigning False to x
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_42
	#end of statement jump
	j	bp_label_42
	#marker Label
bp_label_42:
	#Getting Var falue for [Exp->id]: x
	lw $t0, ($fp)
	#a Bool Var x in boolean operator
	#If true
	bne $t0, $zero,bp_label_43
	#If False
	j	bp_label_44
	#marker Label
bp_label_43:
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
	la $v0, string_label_23
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
	j	bp_label_45
	#marker Label
bp_label_44:
	#end of ifelse
bp_label_45:
	#end of statement jump
	j	bp_label_46
	#marker Label
bp_label_46:
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
	la $v0, string_label_25
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
	j	bp_label_47
	#marker Label
bp_label_47:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_48
	#marker Label
bp_label_48:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	move	$fp,$sp
	jal	label_67
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#moving return value to new reg
	move	$t0,$v0
	#a Bool Func tooTrue in boolean operator
	bne $t0, $zero,bExpAss_nfjdn13
	j	bExpAss_nfjdn12
	#reach And derivation
bExpAss_nfjdn12:
	#assigning True to x
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_49
bExpAss_nfjdn13:
	#assigning False to x
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_49
	#end of statement jump
	j	bp_label_49
	#marker Label
bp_label_49:
	#Getting Var falue for [Exp->id]: x
	lw $t0, ($fp)
	#a Bool Var x in boolean operator
	#If true
	bne $t0, $zero,bp_label_50
	#If False
	j	bp_label_51
	#marker Label
bp_label_50:
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
	la $v0, string_label_27
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
	j	bp_label_52
	#marker Label
bp_label_51:
	#end of ifelse
bp_label_52:
	#end of statement jump
	j	bp_label_53
	#marker Label
bp_label_53:
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
	la $v0, string_label_29
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
	j	bp_label_54
	#marker Label
bp_label_54:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn15
	#marker Label
bp_label_55:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	move	$fp,$sp
	jal	label_67
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#moving return value to new reg
	move	$t0,$v0
	#a Bool Func tooTrue in boolean operator
	bne $t0, $zero,bExpAss_nfjdn15
	j	bExpAss_nfjdn14
	#reach And derivation
bExpAss_nfjdn14:
	#assigning True to x
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_56
bExpAss_nfjdn15:
	#assigning False to x
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_56
	#end of statement jump
	j	bp_label_56
	#marker Label
bp_label_56:
	#Getting Var falue for [Exp->id]: x
	lw $t0, ($fp)
	#a Bool Var x in boolean operator
	#If true
	bne $t0, $zero,bp_label_57
	#If False
	j	bp_label_58
	#marker Label
bp_label_57:
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
	la $v0, string_label_31
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
	j	bp_label_59
	#marker Label
bp_label_58:
	#end of ifelse
bp_label_59:
	#end of statement jump
	j	bp_label_60
bp_label_60:
	#Adding an extre return just in case
	jr	$ra
