.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "dont be magzim\n"
string_label_1:	.asciiz "dont be magzim\n"
string_label_2:	.asciiz "\n"
string_label_3:	.asciiz "\n"
string_label_4:	.asciiz "\n"
string_label_5:	.asciiz "\n"
.text
	#first program point
main:
	#initialize fp
	move	$fp,$sp
	jal	label_128
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
	#Func foo:
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
	#preparing for new var
	sw $zero, ($sp)
	#allocationg words on stack 
	addiu $sp, $sp, -4
	li	$t0,10
	sw $t0, ($fp)
	#end of statement jump
	j	bp_label_1
	#marker Label
bp_label_1:
	#preparing for new var
	sw $zero, ($sp)
	#allocationg words on stack 
	addiu $sp, $sp, -4
	li	$t0,100
	sw $t0, -4($fp)
	#end of statement jump
	j	bp_label_2
	#marker Label
bp_label_2:
	#Getting Var falue for [Exp->id]: magzim offset is 12($fp)
	lw $t0, 12($fp)
	#a Bool Var magzim in boolean operator
	#If true
	bne $t0, $zero,bp_label_3
	#If False
	j	bp_label_4
	#marker Label
bp_label_3:
	#Getting Var falue for [Exp->id]: x offset is 4($fp)
	lw $t0, 4($fp)
	#Getting Var falue for [Exp->id]: y offset is 8($fp)
	lw $t1, 8($fp)
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#Getting Var falue for [Exp->id]: c offset is -4($fp)
	lw $t1, -4($fp)
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#return noneVoid in v0
	move	$v0,$t0
	jr	$ra
	#marker Label
bp_label_4:
	#Getting Var falue for [Exp->id]: x offset is 4($fp)
	lw $t0, 4($fp)
	#Getting Var falue for [Exp->id]: y offset is 8($fp)
	lw $t1, 8($fp)
	#add
	addu	$t0,$t0,$t1
	#Getting Var falue for [Exp->id]: a offset is ($fp)
	lw $t1, ($fp)
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#return noneVoid in v0
	move	$v0,$t0
	jr	$ra
	#end of ifelse
bp_label_5:
	#end of statement jump
	j	bp_label_6
bp_label_6:
	#Adding an extre return just in case
	jr	$ra
	#Func main:
label_128:
	#preparing for new var
	sw $zero, ($sp)
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
	li	$t0,5
	li	$t1,3
	#exp derived false
	#Moving False into new Param Reg
	li	$t2,0
	#preparing to call foo
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t2 to stack
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t1 to stack
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	#jumping to func: foo
	jal	label_29
	#returned from func: foo
	#poping 3 params from stack 
	addiu $sp, $sp, 12
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	move	$t0,$v0
	#finished calling foo
	sw $t0, ($fp)
	#end of statement jump
	j	bp_label_7
	#marker Label
bp_label_7:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: x offset is ($fp)
	lw $t0, ($fp)
	#preparing to call printi
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	j	bp_label_8
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
	j	bp_label_9
	#marker Label
bp_label_9:
	#preparing for new var
	sw $zero, ($sp)
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
	li	$t0,50
	li	$t1,30
	#exp derived true
	#Moving True into new Param Reg
	li	$t2,1
	#preparing to call foo
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t2 to stack
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t1 to stack
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	#jumping to func: foo
	jal	label_29
	#returned from func: foo
	#poping 3 params from stack 
	addiu $sp, $sp, 12
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#NoneVoid function, moving its result value
	move	$t0,$v0
	#finished calling foo
	sw $t0, -4($fp)
	#end of statement jump
	j	bp_label_10
	#marker Label
bp_label_10:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: y offset is -4($fp)
	lw $t0, -4($fp)
	#preparing to call printi
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	j	bp_label_11
	#marker Label
bp_label_11:
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
	j	bp_label_12
bp_label_12:
	#Adding an extre return just in case
	jr	$ra
