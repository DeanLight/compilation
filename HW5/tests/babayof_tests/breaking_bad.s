.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "YOU PRINTED THE UNPRINTABLE. error message: "
string_label_1:	.asciiz "YOU PRINTED THE UNPRINTABLE. error message: "
string_label_2:	.asciiz " I SENTENCE YOU TO AN ENDLESS DEBUGGING.\n"
string_label_3:	.asciiz " I SENTENCE YOU TO AN ENDLESS DEBUGGING.\n"
string_label_4:	.asciiz "BREAKING GOOD: 1 TO 10. ELSE: BREAKING BAD"
string_label_5:	.asciiz "BREAKING GOOD: 1 TO 10. ELSE: BREAKING BAD"
string_label_6:	.asciiz "1 "
string_label_7:	.asciiz "1 "
string_label_8:	.asciiz "2 "
string_label_9:	.asciiz "2 "
string_label_10:	.asciiz "7 "
string_label_11:	.asciiz "7 "
string_label_12:	.asciiz "3 "
string_label_13:	.asciiz "3 "
string_label_14:	.asciiz "4 "
string_label_15:	.asciiz "4 "
string_label_16:	.asciiz "BREAKING BAD - 666 DID NOT BREAK\n"
string_label_17:	.asciiz "BREAKING BAD - 666 DID NOT BREAK\n"
string_label_18:	.asciiz "10"
string_label_19:	.asciiz "10"
string_label_20:	.asciiz "11 "
string_label_21:	.asciiz "11 "
string_label_22:	.asciiz "8 "
string_label_23:	.asciiz "8 "
string_label_24:	.asciiz "5 "
string_label_25:	.asciiz "5 "
string_label_26:	.asciiz "6 "
string_label_27:	.asciiz "6 "
.text
	#first program point
main:
	#initialize fp
	move	$fp,$sp
	jal	label_968
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
	#Func NeverPrintMe:
label_29:
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
	j	bp_label_0
	#marker Label
bp_label_0:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: message offset is 4($fp)
	#			 __allocating reg $t0
	lw $t0, 4($fp)
	#preparing to call printi
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	move	$fp,$sp
	#jumping to func: printi
	jal	printi
	#returned from func: printi
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_1
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
bp_label_2:
	#Adding an extre return just in case
	move	$sp,$fp
	jr	$ra
	#Func breakingBad:
label_125:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, ($fp)
	#			 __allocating reg $t0
	#end of statement jump
	j	bp_label_3
	#marker Label
bp_label_3:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -4($fp)
	#			 __allocating reg $t0
	#end of statement jump
	j	bp_label_4
	#marker Label
bp_label_4:
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
	j	bp_label_5
	#marker Label
bp_label_5:
	#marker Label
bp_label_6:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_7
	#marker Label
bp_label_7:
	#Getting Var falue for [Exp->id]: crazyKey offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#switch!
	j	bp_label_47
	#			 __allocating reg $t0
	#marker Label
bp_label_8:
	#marker Label
bp_label_9:
	#marker Label
bp_label_10:
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
	#end of statement jump
	j	bp_label_11
	#marker Label
bp_label_11:
	# allocating word on stack for local variable isThisDefined
	#allocationg words on stack 
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, -8($fp)
	#end of statement jump
	j	bp_label_12
	#marker Label
bp_label_12:
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
	j	bp_label_13
	#marker Label
bp_label_13:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: crazyKey offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#			 __allocating reg $t1
	li	$t1,1
	bne $t0, $t1,bExpAss_nfjdn0
	#			 __allocating reg $t1
	#			 __allocating reg $t0
	j	bExpAss_nfjdn1
bExpAss_nfjdn0:
	#assigning True to noMatch
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -12($fp)
	j	bp_label_14
bExpAss_nfjdn1:
	#assigning False to noMatch
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -12($fp)
	j	bp_label_14
	#			 __allocating reg $t0
	#end of statement jump
	j	bp_label_14
	#marker Label
bp_label_14:
	#Getting Var falue for [Exp->id]: noMatch offset is -12($fp)
	#			 __allocating reg $t0
	lw $t0, -12($fp)
	#a Bool Var noMatch in boolean operator
	#If true
	bne $t0, $zero,bp_label_15
	#			 __allocating reg $t0
	#If False
	j	bp_label_18
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
	j	bp_label_16
	#marker Label
bp_label_16:
	#			 __allocating reg $t0
	li	$t0,9
	sw $t0, -4($fp)
	#			 __allocating reg $t0
	#end of statement jump
	j	bp_label_17
	#marker Label
bp_label_17:
	#break
	j	bp_label_48
	#end of statement jump
	j	bp_label_19
	#marker Label
bp_label_18:
	#end of ifelse
bp_label_19:
	#end of statement jump
	j	bp_label_20
	#marker Label
bp_label_20:
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
	j	bp_label_21
	#marker Label
bp_label_21:
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
	j	bp_label_22
	#marker Label
bp_label_22:
	#			 __allocating reg $t0
	li	$t0,45
	sw $t0, -4($fp)
	#			 __allocating reg $t0
	#end of statement jump
	j	bp_label_23
	#marker Label
bp_label_23:
	#break
	j	bp_label_48
	#end of statement jump
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
	j	bp_label_25
	#marker Label
bp_label_25:
	#exp derived true
bExpAss_nfjdn2:
	#assigning True to isThisDefined
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_26
bExpAss_nfjdn3:
	#assigning False to isThisDefined
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_26
	#			 __allocating reg $t0
	#end of statement jump
	j	bp_label_26
	#marker Label
bp_label_26:
	#Getting Var falue for [Exp->id]: isThisDefined offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	#a Bool Var isThisDefined in boolean operator
	#If true
	bne $t0, $zero,bp_label_29
	#			 __allocating reg $t0
	#If False
	j	bp_label_27
	#marker Label
bp_label_27:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,333
	#preparing to call NeverPrintMe
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	move	$fp,$sp
	#jumping to func: NeverPrintMe
	jal	label_29
	#returned from func: NeverPrintMe
	#poping 1 params from stack 
	addiu $sp, $sp, 4
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
	#finished calling NeverPrintMe
	#end of statement jump
	j	bp_label_28
	#marker Label
bp_label_28:
	#break
	j	bp_label_48
	#end of statement jump
	j	bp_label_30
	#marker Label
bp_label_29:
	#end of ifelse
bp_label_30:
	#end of statement jump
	j	bp_label_31
	#marker Label
bp_label_31:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
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
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_32
	#marker Label
bp_label_32:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_21
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
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_33
	#marker Label
bp_label_33:
	#break
	j	bp_label_48
	#end of statement jump
	j	bp_label_34
	#marker Label
bp_label_34:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	#			 __allocating reg $t0
	li	$t0,345
	#preparing to call NeverPrintMe
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	move	$fp,$sp
	#jumping to func: NeverPrintMe
	jal	label_29
	#returned from func: NeverPrintMe
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
	#NoneVoid function, moving its result value
	#			 __allocating reg $t1
	move	$t1,$v0
	#finished calling NeverPrintMe
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
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_23
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
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_36
	#marker Label
bp_label_36:
	#			 __allocating reg $t2
	li	$t2,1000
	sw $t2, -4($fp)
	#			 __allocating reg $t2
	#end of statement jump
	j	bp_label_37
	#marker Label
bp_label_37:
	#break
	j	bp_label_48
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
	#			 __allocating reg $t0
	li	$t0,50
	#preparing to call NeverPrintMe
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	move	$fp,$sp
	#jumping to func: NeverPrintMe
	jal	label_29
	#returned from func: NeverPrintMe
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	#			 __allocating reg $t2
	move	$t2,$v0
	#finished calling NeverPrintMe
	#end of statement jump
	j	bp_label_39
	#marker Label
bp_label_39:
	#func header store regs before call
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 3 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_25
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
	#restoring 3 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_40
	#marker Label
bp_label_40:
	#marker Label
bp_label_41:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_42
	#marker Label
bp_label_42:
	#break
	j	bp_label_43
	#end of statement jump
	j	bp_label_41
bp_label_43:
	#end of statement jump
	j	bp_label_44
	#marker Label
bp_label_44:
	#func header store regs before call
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 3 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_27
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
	#restoring 3 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_45
	#marker Label
bp_label_45:
	#			 __allocating reg $t3
	li	$t3,0
	sw $t3, -4($fp)
	#			 __allocating reg $t3
	#end of statement jump
	j	bp_label_46
	#marker Label
bp_label_46:
	#break
	j	bp_label_48
	#end of statement jump
	j	bp_label_48
	#			 __allocating reg $t3
	#catching falling cases
	j	bp_label_48
	#switch init label
bp_label_47:
	beq $t3,435,bp_label_8
	beq $t3,232,bp_label_9
	beq $t3,1,bp_label_10
	beq $t3,111,bp_label_11
	beq $t3,666,bp_label_21
	beq $t3,1000,bp_label_25
	beq $t3,999,bp_label_32
	beq $t3,9,bp_label_35
	beq $t3,45,bp_label_39
	beq $t3,1,bp_label_44
	j	bp_label_13
	#end of switch:
bp_label_48:
	#end of statement jump
	j	bp_label_49
	#			 __allocating reg $t3
	#marker Label
bp_label_49:
	#Getting Var falue for [Exp->id]: crazyKey offset is -4($fp)
	#			 __allocating reg $t3
	lw $t3, -4($fp)
	#			 __allocating reg $t4
	li	$t4,1000
	beq $t3, $t4,bp_label_50
	#			 __allocating reg $t4
	#			 __allocating reg $t3
	j	bp_label_51
	#marker Label
bp_label_50:
	#break
	j	bp_label_57
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
	#Getting Var falue for [Exp->id]: crazyKey offset is -4($fp)
	#			 __allocating reg $t3
	lw $t3, -4($fp)
	#			 __allocating reg $t4
	li	$t4,1000
	beq $t3, $t4,bp_label_54
	#			 __allocating reg $t4
	#			 __allocating reg $t3
	j	bp_label_55
	#marker Label
bp_label_54:
	#func header store regs before call
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 3 registers
	#			 __allocating reg $t0
	li	$t0,51
	#preparing to call NeverPrintMe
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	move	$fp,$sp
	#jumping to func: NeverPrintMe
	jal	label_29
	#returned from func: NeverPrintMe
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 3 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	#			 __allocating reg $t3
	move	$t3,$v0
	#finished calling NeverPrintMe
	#end of statement jump
	j	bp_label_56
	#marker Label
bp_label_55:
	#end of ifelse
bp_label_56:
	#end of statement jump
	j	bp_label_6
bp_label_57:
	#end of statement jump
	j	bp_label_58
bp_label_58:
	#Adding an extre return just in case
	move	$sp,$fp
	jr	$ra
	#Func main:
label_968:
	#func header store regs before call
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 4 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_125
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	#end of statement jump
	j	bp_label_59
bp_label_59:
	#Adding an extre return just in case
	move	$sp,$fp
	jr	$ra
