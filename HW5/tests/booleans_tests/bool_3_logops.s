.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "not: \t"
string_label_1:	.asciiz "not: \t"
string_label_2:	.asciiz "true\t"
string_label_3:	.asciiz "true\t"
string_label_4:	.asciiz "false\t"
string_label_5:	.asciiz "false\t"
string_label_6:	.asciiz "true\t"
string_label_7:	.asciiz "true\t"
string_label_8:	.asciiz "false\t"
string_label_9:	.asciiz "false\t"
string_label_10:	.asciiz "\n"
string_label_11:	.asciiz "\n"
string_label_12:	.asciiz "and: \t"
string_label_13:	.asciiz "and: \t"
string_label_14:	.asciiz "true\t"
string_label_15:	.asciiz "true\t"
string_label_16:	.asciiz "false\t"
string_label_17:	.asciiz "false\t"
string_label_18:	.asciiz "true\t"
string_label_19:	.asciiz "true\t"
string_label_20:	.asciiz "false\t"
string_label_21:	.asciiz "false\t"
string_label_22:	.asciiz "true\t"
string_label_23:	.asciiz "true\t"
string_label_24:	.asciiz "false\t"
string_label_25:	.asciiz "false\t"
string_label_26:	.asciiz "true\t"
string_label_27:	.asciiz "true\t"
string_label_28:	.asciiz "false\t"
string_label_29:	.asciiz "false\t"
string_label_30:	.asciiz "\n"
string_label_31:	.asciiz "\n"
string_label_32:	.asciiz "or: \t"
string_label_33:	.asciiz "or: \t"
string_label_34:	.asciiz "true\t"
string_label_35:	.asciiz "true\t"
string_label_36:	.asciiz "false\t"
string_label_37:	.asciiz "false\t"
string_label_38:	.asciiz "true\t"
string_label_39:	.asciiz "true\t"
string_label_40:	.asciiz "false\t"
string_label_41:	.asciiz "false\t"
string_label_42:	.asciiz "true\t"
string_label_43:	.asciiz "true\t"
string_label_44:	.asciiz "false\t"
string_label_45:	.asciiz "false\t"
string_label_46:	.asciiz "true\t"
string_label_47:	.asciiz "true\t"
string_label_48:	.asciiz "false\t"
string_label_49:	.asciiz "false\t"
string_label_50:	.asciiz "\n"
string_label_51:	.asciiz "\n"
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
	#Func main:
label_29:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#marker Label
bp_label_0:
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
	j	bp_label_1
	#marker Label
bp_label_1:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_4
	#marker Label
bp_label_2:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
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
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_6
	#marker Label
bp_label_4:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#caught a string
	#marker Label
bp_label_5:
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
	#restoring 2 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_6
	#end of ifelse
bp_label_6:
	#end of statement jump
	j	bp_label_7
	#marker Label
bp_label_7:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_8
	#marker Label
bp_label_8:
	#func header store regs before call
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 3 registers
	#caught a string
	#marker Label
bp_label_9:
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
	#restoring 3 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_12
	#marker Label
bp_label_10:
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
	#caught a string
	#marker Label
bp_label_11:
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
	#restoring 4 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_12
	#end of ifelse
bp_label_12:
	#end of statement jump
	j	bp_label_13
	#marker Label
bp_label_13:
	#func header store regs before call
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 5 registers
	#caught a string
	#marker Label
bp_label_14:
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
	#restoring 5 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_15
	#marker Label
bp_label_15:
	#func header store regs before call
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 6 registers
	#caught a string
	#marker Label
bp_label_16:
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
	#restoring 6 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_17
	#marker Label
bp_label_17:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_18
	#marker Label
bp_label_18:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_19
	#reach And derivation
	#marker Label
bp_label_19:
	#func header store regs before call
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 7 registers
	#caught a string
	#marker Label
bp_label_20:
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
	#restoring 7 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_23
	#marker Label
bp_label_21:
	#func header store regs before call
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 8 registers
	#caught a string
	#marker Label
bp_label_22:
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
	#restoring 8 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_23
	#end of ifelse
bp_label_23:
	#end of statement jump
	j	bp_label_24
	#marker Label
bp_label_24:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_25
	#marker Label
bp_label_25:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_28
	#reach And derivation
	#marker Label
bp_label_26:
	#func header store regs before call
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 9 registers
	#caught a string
	#marker Label
bp_label_27:
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
	#restoring 9 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_30
	#marker Label
bp_label_28:
	#func header store regs before call
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 10 registers
	#caught a string
	#marker Label
bp_label_29:
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
	#restoring 10 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_30
	#end of ifelse
bp_label_30:
	#end of statement jump
	j	bp_label_31
	#marker Label
bp_label_31:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_35
	#marker Label
bp_label_32:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_33
	#reach And derivation
	#marker Label
bp_label_33:
	#func header store regs before call
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 11 registers
	#caught a string
	#marker Label
bp_label_34:
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
	#restoring 11 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_37
	#marker Label
bp_label_35:
	#func header store regs before call
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 12 registers
	#caught a string
	#marker Label
bp_label_36:
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
	#restoring 12 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	addiu $sp, $sp, 4
	lw $s3, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_37
	#end of ifelse
bp_label_37:
	#end of statement jump
	j	bp_label_38
	#marker Label
bp_label_38:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_42
	#marker Label
bp_label_39:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_42
	#reach And derivation
	#marker Label
bp_label_40:
	#func header store regs before call
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 13 registers
	#caught a string
	#marker Label
bp_label_41:
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
	#restoring 13 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	addiu $sp, $sp, 4
	lw $s3, ($sp)
	addiu $sp, $sp, 4
	lw $s4, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_44
	#marker Label
bp_label_42:
	#func header store regs before call
	sw $s4, ($sp)
	addiu $sp, $sp, -4
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 14 registers
	#caught a string
	#marker Label
bp_label_43:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_29
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
	#restoring 14 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	addiu $sp, $sp, 4
	lw $s3, ($sp)
	addiu $sp, $sp, 4
	lw $s4, ($sp)
	addiu $sp, $sp, 4
	lw $s5, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_44
	#end of ifelse
bp_label_44:
	#end of statement jump
	j	bp_label_45
	#marker Label
bp_label_45:
	#func header store regs before call
	sw $s5, ($sp)
	addiu $sp, $sp, -4
	sw $s4, ($sp)
	addiu $sp, $sp, -4
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 15 registers
	#caught a string
	#marker Label
bp_label_46:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_31
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
	#restoring 15 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	addiu $sp, $sp, 4
	lw $s3, ($sp)
	addiu $sp, $sp, 4
	lw $s4, ($sp)
	addiu $sp, $sp, 4
	lw $s5, ($sp)
	addiu $sp, $sp, 4
	lw $s6, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_47
	#marker Label
bp_label_47:
	#func header store regs before call
	sw $s6, ($sp)
	addiu $sp, $sp, -4
	sw $s5, ($sp)
	addiu $sp, $sp, -4
	sw $s4, ($sp)
	addiu $sp, $sp, -4
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 16 registers
	#caught a string
	#marker Label
bp_label_48:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_33
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
	#restoring 16 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	addiu $sp, $sp, 4
	lw $s3, ($sp)
	addiu $sp, $sp, 4
	lw $s4, ($sp)
	addiu $sp, $sp, 4
	lw $s5, ($sp)
	addiu $sp, $sp, 4
	lw $s6, ($sp)
	addiu $sp, $sp, 4
	lw $s7, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_49
	#marker Label
bp_label_49:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_51
	#marker Label
bp_label_50:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_51
	#reach Or derivation
	#marker Label
bp_label_51:
	#func header store regs before call
	sw $s7, ($sp)
	addiu $sp, $sp, -4
	sw $s6, ($sp)
	addiu $sp, $sp, -4
	sw $s5, ($sp)
	addiu $sp, $sp, -4
	sw $s4, ($sp)
	addiu $sp, $sp, -4
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 17 registers
	#caught a string
	#marker Label
bp_label_52:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_35
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
	#restoring 17 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	addiu $sp, $sp, 4
	lw $s3, ($sp)
	addiu $sp, $sp, 4
	lw $s4, ($sp)
	addiu $sp, $sp, 4
	lw $s5, ($sp)
	addiu $sp, $sp, 4
	lw $s6, ($sp)
	addiu $sp, $sp, 4
	lw $s7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_55
	#marker Label
bp_label_53:
	#func header store regs before call
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $s7, ($sp)
	addiu $sp, $sp, -4
	sw $s6, ($sp)
	addiu $sp, $sp, -4
	sw $s5, ($sp)
	addiu $sp, $sp, -4
	sw $s4, ($sp)
	addiu $sp, $sp, -4
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 18 registers
	#caught a string
	#marker Label
bp_label_54:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_37
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
	#restoring 18 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	addiu $sp, $sp, 4
	lw $s3, ($sp)
	addiu $sp, $sp, 4
	lw $s4, ($sp)
	addiu $sp, $sp, 4
	lw $s5, ($sp)
	addiu $sp, $sp, 4
	lw $s6, ($sp)
	addiu $sp, $sp, 4
	lw $s7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $t9, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_55
	#end of ifelse
bp_label_55:
	#end of statement jump
	j	bp_label_56
	#marker Label
bp_label_56:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_58
	#marker Label
bp_label_57:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_60
	#reach Or derivation
	#marker Label
bp_label_58:
	#func header store regs before call
	sw $t9, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $s7, ($sp)
	addiu $sp, $sp, -4
	sw $s6, ($sp)
	addiu $sp, $sp, -4
	sw $s5, ($sp)
	addiu $sp, $sp, -4
	sw $s4, ($sp)
	addiu $sp, $sp, -4
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 19 registers
	#caught a string
	#marker Label
bp_label_59:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_39
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
	#restoring 19 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	addiu $sp, $sp, 4
	lw $s3, ($sp)
	addiu $sp, $sp, 4
	lw $s4, ($sp)
	addiu $sp, $sp, 4
	lw $s5, ($sp)
	addiu $sp, $sp, 4
	lw $s6, ($sp)
	addiu $sp, $sp, 4
	lw $s7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $t9, ($sp)
	addiu $sp, $sp, 4
	lw $t:, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_62
	#marker Label
bp_label_60:
	#func header store regs before call
	sw $t:, ($sp)
	addiu $sp, $sp, -4
	sw $t9, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $s7, ($sp)
	addiu $sp, $sp, -4
	sw $s6, ($sp)
	addiu $sp, $sp, -4
	sw $s5, ($sp)
	addiu $sp, $sp, -4
	sw $s4, ($sp)
	addiu $sp, $sp, -4
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 20 registers
	#caught a string
	#marker Label
bp_label_61:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_41
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
	#restoring 20 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	addiu $sp, $sp, 4
	lw $s3, ($sp)
	addiu $sp, $sp, 4
	lw $s4, ($sp)
	addiu $sp, $sp, 4
	lw $s5, ($sp)
	addiu $sp, $sp, 4
	lw $s6, ($sp)
	addiu $sp, $sp, 4
	lw $s7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $t9, ($sp)
	addiu $sp, $sp, 4
	lw $t:, ($sp)
	addiu $sp, $sp, 4
	lw $t;, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_62
	#end of ifelse
bp_label_62:
	#end of statement jump
	j	bp_label_63
	#marker Label
bp_label_63:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_64
	#marker Label
bp_label_64:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_65
	#reach Or derivation
	#marker Label
bp_label_65:
	#func header store regs before call
	sw $t;, ($sp)
	addiu $sp, $sp, -4
	sw $t:, ($sp)
	addiu $sp, $sp, -4
	sw $t9, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $s7, ($sp)
	addiu $sp, $sp, -4
	sw $s6, ($sp)
	addiu $sp, $sp, -4
	sw $s5, ($sp)
	addiu $sp, $sp, -4
	sw $s4, ($sp)
	addiu $sp, $sp, -4
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 21 registers
	#caught a string
	#marker Label
bp_label_66:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_43
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
	#restoring 21 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	addiu $sp, $sp, 4
	lw $s3, ($sp)
	addiu $sp, $sp, 4
	lw $s4, ($sp)
	addiu $sp, $sp, 4
	lw $s5, ($sp)
	addiu $sp, $sp, 4
	lw $s6, ($sp)
	addiu $sp, $sp, 4
	lw $s7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $t9, ($sp)
	addiu $sp, $sp, 4
	lw $t:, ($sp)
	addiu $sp, $sp, 4
	lw $t;, ($sp)
	addiu $sp, $sp, 4
	lw $t<, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_69
	#marker Label
bp_label_67:
	#func header store regs before call
	sw $t<, ($sp)
	addiu $sp, $sp, -4
	sw $t;, ($sp)
	addiu $sp, $sp, -4
	sw $t:, ($sp)
	addiu $sp, $sp, -4
	sw $t9, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $s7, ($sp)
	addiu $sp, $sp, -4
	sw $s6, ($sp)
	addiu $sp, $sp, -4
	sw $s5, ($sp)
	addiu $sp, $sp, -4
	sw $s4, ($sp)
	addiu $sp, $sp, -4
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 22 registers
	#caught a string
	#marker Label
bp_label_68:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_45
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
	#restoring 22 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	addiu $sp, $sp, 4
	lw $s3, ($sp)
	addiu $sp, $sp, 4
	lw $s4, ($sp)
	addiu $sp, $sp, 4
	lw $s5, ($sp)
	addiu $sp, $sp, 4
	lw $s6, ($sp)
	addiu $sp, $sp, 4
	lw $s7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $t9, ($sp)
	addiu $sp, $sp, 4
	lw $t:, ($sp)
	addiu $sp, $sp, 4
	lw $t;, ($sp)
	addiu $sp, $sp, 4
	lw $t<, ($sp)
	addiu $sp, $sp, 4
	lw $t=, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_69
	#end of ifelse
bp_label_69:
	#end of statement jump
	j	bp_label_70
	#marker Label
bp_label_70:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_71
	#marker Label
bp_label_71:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_74
	#reach Or derivation
	#marker Label
bp_label_72:
	#func header store regs before call
	sw $t=, ($sp)
	addiu $sp, $sp, -4
	sw $t<, ($sp)
	addiu $sp, $sp, -4
	sw $t;, ($sp)
	addiu $sp, $sp, -4
	sw $t:, ($sp)
	addiu $sp, $sp, -4
	sw $t9, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $s7, ($sp)
	addiu $sp, $sp, -4
	sw $s6, ($sp)
	addiu $sp, $sp, -4
	sw $s5, ($sp)
	addiu $sp, $sp, -4
	sw $s4, ($sp)
	addiu $sp, $sp, -4
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 23 registers
	#caught a string
	#marker Label
bp_label_73:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_47
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
	#restoring 23 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	addiu $sp, $sp, 4
	lw $s3, ($sp)
	addiu $sp, $sp, 4
	lw $s4, ($sp)
	addiu $sp, $sp, 4
	lw $s5, ($sp)
	addiu $sp, $sp, 4
	lw $s6, ($sp)
	addiu $sp, $sp, 4
	lw $s7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $t9, ($sp)
	addiu $sp, $sp, 4
	lw $t:, ($sp)
	addiu $sp, $sp, 4
	lw $t;, ($sp)
	addiu $sp, $sp, 4
	lw $t<, ($sp)
	addiu $sp, $sp, 4
	lw $t=, ($sp)
	addiu $sp, $sp, 4
	lw $t>, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_76
	#marker Label
bp_label_74:
	#func header store regs before call
	sw $t>, ($sp)
	addiu $sp, $sp, -4
	sw $t=, ($sp)
	addiu $sp, $sp, -4
	sw $t<, ($sp)
	addiu $sp, $sp, -4
	sw $t;, ($sp)
	addiu $sp, $sp, -4
	sw $t:, ($sp)
	addiu $sp, $sp, -4
	sw $t9, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $s7, ($sp)
	addiu $sp, $sp, -4
	sw $s6, ($sp)
	addiu $sp, $sp, -4
	sw $s5, ($sp)
	addiu $sp, $sp, -4
	sw $s4, ($sp)
	addiu $sp, $sp, -4
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 24 registers
	#caught a string
	#marker Label
bp_label_75:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_49
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
	#restoring 24 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	addiu $sp, $sp, 4
	lw $s3, ($sp)
	addiu $sp, $sp, 4
	lw $s4, ($sp)
	addiu $sp, $sp, 4
	lw $s5, ($sp)
	addiu $sp, $sp, 4
	lw $s6, ($sp)
	addiu $sp, $sp, 4
	lw $s7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $t9, ($sp)
	addiu $sp, $sp, 4
	lw $t:, ($sp)
	addiu $sp, $sp, 4
	lw $t;, ($sp)
	addiu $sp, $sp, 4
	lw $t<, ($sp)
	addiu $sp, $sp, 4
	lw $t=, ($sp)
	addiu $sp, $sp, 4
	lw $t>, ($sp)
	addiu $sp, $sp, 4
	lw $t?, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_76
	#end of ifelse
bp_label_76:
	#end of statement jump
	j	bp_label_77
	#marker Label
bp_label_77:
	#func header store regs before call
	sw $t?, ($sp)
	addiu $sp, $sp, -4
	sw $t>, ($sp)
	addiu $sp, $sp, -4
	sw $t=, ($sp)
	addiu $sp, $sp, -4
	sw $t<, ($sp)
	addiu $sp, $sp, -4
	sw $t;, ($sp)
	addiu $sp, $sp, -4
	sw $t:, ($sp)
	addiu $sp, $sp, -4
	sw $t9, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $s7, ($sp)
	addiu $sp, $sp, -4
	sw $s6, ($sp)
	addiu $sp, $sp, -4
	sw $s5, ($sp)
	addiu $sp, $sp, -4
	sw $s4, ($sp)
	addiu $sp, $sp, -4
	sw $s3, ($sp)
	addiu $sp, $sp, -4
	sw $s2, ($sp)
	addiu $sp, $sp, -4
	sw $s1, ($sp)
	addiu $sp, $sp, -4
	sw $s0, ($sp)
	addiu $sp, $sp, -4
	sw $t8, ($sp)
	addiu $sp, $sp, -4
	sw $t7, ($sp)
	addiu $sp, $sp, -4
	sw $t6, ($sp)
	addiu $sp, $sp, -4
	sw $t5, ($sp)
	addiu $sp, $sp, -4
	sw $t4, ($sp)
	addiu $sp, $sp, -4
	sw $t3, ($sp)
	addiu $sp, $sp, -4
	sw $t2, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 25 registers
	#caught a string
	#marker Label
bp_label_78:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_51
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
	#restoring 25 previously used registers
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	addiu $sp, $sp, 4
	lw $t2, ($sp)
	addiu $sp, $sp, 4
	lw $t3, ($sp)
	addiu $sp, $sp, 4
	lw $t4, ($sp)
	addiu $sp, $sp, 4
	lw $t5, ($sp)
	addiu $sp, $sp, 4
	lw $t6, ($sp)
	addiu $sp, $sp, 4
	lw $t7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $s0, ($sp)
	addiu $sp, $sp, 4
	lw $s1, ($sp)
	addiu $sp, $sp, 4
	lw $s2, ($sp)
	addiu $sp, $sp, 4
	lw $s3, ($sp)
	addiu $sp, $sp, 4
	lw $s4, ($sp)
	addiu $sp, $sp, 4
	lw $s5, ($sp)
	addiu $sp, $sp, 4
	lw $s6, ($sp)
	addiu $sp, $sp, 4
	lw $s7, ($sp)
	addiu $sp, $sp, 4
	lw $t8, ($sp)
	addiu $sp, $sp, 4
	lw $t9, ($sp)
	addiu $sp, $sp, 4
	lw $t:, ($sp)
	addiu $sp, $sp, 4
	lw $t;, ($sp)
	addiu $sp, $sp, 4
	lw $t<, ($sp)
	addiu $sp, $sp, 4
	lw $t=, ($sp)
	addiu $sp, $sp, 4
	lw $t>, ($sp)
	addiu $sp, $sp, 4
	lw $t?, ($sp)
	addiu $sp, $sp, 4
	lw $t@, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_79
bp_label_79:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
