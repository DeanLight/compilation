.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "true\n"
string_label_1:	.asciiz "true\n"
string_label_2:	.asciiz "false\n"
string_label_3:	.asciiz "false\n"
string_label_4:	.asciiz "true\n"
string_label_5:	.asciiz "true\n"
string_label_6:	.asciiz "false\n"
string_label_7:	.asciiz "false\n"
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
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_0
	#marker Label
bp_label_0:
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_2
	#marker Label
bp_label_1:
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
	j	bp_label_2
	#end of ifelse
bp_label_2:
	#end of statement jump
	j	bp_label_3
	#marker Label
bp_label_3:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_5
	#marker Label
bp_label_4:
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
	j	bp_label_6
	#marker Label
bp_label_5:
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
	j	bp_label_6
	#end of ifelse
bp_label_6:
	#end of statement jump
	j	bp_label_7
bp_label_7:
	#Adding an extre return just in case
	jr	$ra