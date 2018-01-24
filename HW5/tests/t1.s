.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "val is true\n"
string_label_1:	.asciiz "val is true\n"
string_label_2:	.asciiz "\n"
string_label_3:	.asciiz "\n"
.text
	#first program point
main:
	#initialize fp
	move	$fp,$sp
	jal	label_133
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
	#Func printByValue:
label_29:
	#Getting Var falue for [Exp->id]: val offset is 4($fp)
	#			 __allocating reg $t0
	lw $t0, 4($fp)
	#a Bool Var val in boolean operator
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
	#marker Label
bp_label_1:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,42
	#preparing to call printi
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
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
	#Func main:
label_133:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#Moving True into new Param Reg
	#			 __allocating reg $t0
	li	$t0,1
	#preparing to call printByValue
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printByValue
	jal	label_29
	#returned from func: printByValue
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling printByValue
	#marker Label
bp_label_5:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#Moving False into new Param Reg
	#			 __allocating reg $t0
	li	$t0,0
	#preparing to call printByValue
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: printByValue
	jal	label_29
	#returned from func: printByValue
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling printByValue
bp_label_6:
	#Adding an extre return just in case
	move	$sp,$fp
	jr	$ra
