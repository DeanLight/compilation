.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "one\n"
string_label_1:	.asciiz "one\n"
string_label_2:	.asciiz "two\n"
string_label_3:	.asciiz "two\n"
string_label_4:	.asciiz "one\n"
string_label_5:	.asciiz "one\n"
string_label_6:	.asciiz "three\n"
string_label_7:	.asciiz "three\n"
string_label_8:	.asciiz "four"
string_label_9:	.asciiz "four"
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
	#Func main:
label_29:
	li	$t0,1
	#switch!
	j	bp_label_1
	#marker Label
bp_label_0:
	#func header store regs before call
	addiu $sp, $sp, -4
	sw $t0,4($sp)
	#stored 1 registers
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
	#restoring 1 previously used registers
	lw $t0,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_2
	#switch init label
bp_label_1:
	beq $t0,1,bp_label_0
bp_label_2:
	#end of statement jump
	j	bp_label_3
	#marker Label
bp_label_3:
	#func header store regs before call
	addiu $sp, $sp, -4
	sw $t0,4($sp)
	#stored 1 registers
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
	#restoring 1 previously used registers
	lw $t0,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_4
	#marker Label
bp_label_4:
	li	$t1,3
	#switch!
	j	bp_label_6
	#marker Label
bp_label_5:
	#func header store regs before call
	addiu $sp, $sp, -8
	sw $t0,8($sp)
	sw $t1,4($sp)
	#stored 2 registers
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
	#restoring 2 previously used registers
	lw $t0,8($sp)
	lw $t1,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_7
	#switch init label
bp_label_6:
	beq $t1,1,bp_label_5
bp_label_7:
	#end of statement jump
	j	bp_label_8
	#marker Label
bp_label_8:
	li	$t2,3
	#switch!
	j	bp_label_10
	#marker Label
bp_label_9:
	#func header store regs before call
	addiu $sp, $sp, -12
	sw $t0,12($sp)
	sw $t1,8($sp)
	sw $t2,4($sp)
	#stored 3 registers
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
	#restoring 3 previously used registers
	lw $t0,12($sp)
	lw $t1,8($sp)
	lw $t2,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_11
	#switch init label
bp_label_10:
	beq $t2,3,bp_label_9
bp_label_11:
	#end of statement jump
	j	bp_label_12
	#marker Label
bp_label_12:
	li	$t3,4
	#switch!
	j	bp_label_14
	#marker Label
bp_label_13:
	#func header store regs before call
	addiu $sp, $sp, -16
	sw $t0,16($sp)
	sw $t1,12($sp)
	sw $t2,8($sp)
	sw $t3,4($sp)
	#stored 4 registers
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
	#restoring 4 previously used registers
	lw $t0,16($sp)
	lw $t1,12($sp)
	lw $t2,8($sp)
	lw $t3,4($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_15
	#switch init label
bp_label_14:
	beq $t3,4,bp_label_13
bp_label_15:
	#end of statement jump
	j	bp_label_16
bp_label_16:
	#Adding an extre return just in case
	jr	$ra
