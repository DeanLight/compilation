.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "boy\n"
string_label_1:	.asciiz "boy\n"
string_label_2:	.asciiz "girl\n"
string_label_3:	.asciiz "girl\n"
string_label_4:	.asciiz "M "
string_label_5:	.asciiz "M "
string_label_6:	.asciiz "F "
string_label_7:	.asciiz "F "
string_label_8:	.asciiz "apple \n"
string_label_9:	.asciiz "apple \n"
.text
	#first program point
main:
	#initialize fp
	move	$fp,$sp
	jal	label_224
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
	#Getting Var falue for [Exp->id]: cond offset is 4($fp)
	#			 __allocating reg $t0
	lw $t0, 4($fp)
	#a Bool Var cond in boolean operator
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
bp_label_1:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#Moving False into new Param Reg
	#			 __allocating reg $t0
	li	$t0,0
	#preparing to call f
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: f
	jal	label_29
	#returned from func: f
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling f
	#marker Label
bp_label_2:
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
bp_label_3:
	#end of statement jump
	j	bp_label_4
bp_label_4:
	#Adding an extre return just in case
	move	$sp,$fp
	jr	$ra
	#Func g:
label_135:
	#Getting Var falue for [Exp->id]: gen offset is 4($fp)
	#			 __allocating reg $t0
	lw $t0, 4($fp)
	#a Bool Var gen in boolean operator
	#If true
	bne $t0, $zero,bp_label_5
	#			 __freeing reg $t0
	#If False
	j	bp_label_7
	#marker Label
bp_label_5:
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
bp_label_6:
	#exp derived true
	#return noneVoid in v0
	li	$v0,1
	move	$sp,$fp
	jr	$ra
	#marker Label
bp_label_7:
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
	#marker Label
bp_label_8:
	#exp derived false
	#return noneVoid in v0
	li	$v0,0
	move	$sp,$fp
	jr	$ra
	#end of ifelse
bp_label_9:
	#end of statement jump
	j	bp_label_10
bp_label_10:
	#Adding an extre return just in case
	move	$sp,$fp
	jr	$ra
	#Func main:
label_224:
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
	#marker Label
bp_label_11:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#Moving True into new Param Reg
	#			 __allocating reg $t0
	li	$t0,1
	#preparing to call g
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: g
	jal	label_135
	#returned from func: g
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
	#finished calling g
	#a Bool Func g
	bne $t0, $zero,bp_label_12
	j	bp_label_14
	#			 __freeing reg $t0
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_12:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_13
	#inserting 0 to param reg if evaluates to false
bp_label_14:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_13:
	#preparing to call f
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: f
	jal	label_29
	#returned from func: f
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling f
	#marker Label
bp_label_15:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#Moving False into new Param Reg
	#			 __allocating reg $t0
	li	$t0,0
	#preparing to call g
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: g
	jal	label_135
	#returned from func: g
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
	#finished calling g
	#a Bool Func g
	bne $t0, $zero,bp_label_16
	j	bp_label_18
	#			 __freeing reg $t0
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_16:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_17
	#inserting 0 to param reg if evaluates to false
bp_label_18:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_17:
	#preparing to call f
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: f
	jal	label_29
	#returned from func: f
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling f
bp_label_19:
	#Adding an extre return just in case
	move	$sp,$fp
	jr	$ra
