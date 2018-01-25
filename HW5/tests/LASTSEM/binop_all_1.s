.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "\n"
string_label_1:	.asciiz "\n"
string_label_2:	.asciiz "\n"
string_label_3:	.asciiz "\n"
string_label_4:	.asciiz "\n"
string_label_5:	.asciiz "\n"
string_label_6:	.asciiz "\n"
string_label_7:	.asciiz "\n"
string_label_8:	.asciiz "\n"
string_label_9:	.asciiz "\n"
string_label_10:	.asciiz "\n"
string_label_11:	.asciiz "\n"
string_label_12:	.asciiz "\n"
string_label_13:	.asciiz "\n"
string_label_14:	.asciiz "\n"
string_label_15:	.asciiz "\n"
string_label_16:	.asciiz "\n"
string_label_17:	.asciiz "\n"
string_label_18:	.asciiz "\n"
string_label_19:	.asciiz "\n"
string_label_20:	.asciiz "\n"
string_label_21:	.asciiz "\n"
string_label_22:	.asciiz "\n"
string_label_23:	.asciiz "\n"
string_label_24:	.asciiz "\n"
string_label_25:	.asciiz "\n"
string_label_26:	.asciiz "\n"
string_label_27:	.asciiz "\n"
string_label_28:	.asciiz "\n"
string_label_29:	.asciiz "\n"
string_label_30:	.asciiz "\n"
string_label_31:	.asciiz "\n"
string_label_32:	.asciiz "\n"
string_label_33:	.asciiz "\n"
string_label_34:	.asciiz "\n"
string_label_35:	.asciiz "\n"
string_label_36:	.asciiz "\n"
string_label_37:	.asciiz "\n"
string_label_38:	.asciiz "\n"
string_label_39:	.asciiz "\n"
string_label_40:	.asciiz "\n"
string_label_41:	.asciiz "\n"
string_label_42:	.asciiz "\n"
string_label_43:	.asciiz "\n"
string_label_44:	.asciiz "\n"
string_label_45:	.asciiz "\n"
string_label_46:	.asciiz "\n"
string_label_47:	.asciiz "\n"
string_label_48:	.asciiz "\n"
string_label_49:	.asciiz "\n"
string_label_50:	.asciiz "\n"
string_label_51:	.asciiz "\n"
string_label_52:	.asciiz "\n"
string_label_53:	.asciiz "\n"
string_label_54:	.asciiz "\n"
string_label_55:	.asciiz "\n"
string_label_56:	.asciiz "\n"
string_label_57:	.asciiz "\n"
string_label_58:	.asciiz "\n"
string_label_59:	.asciiz "\n"
string_label_60:	.asciiz "\n"
string_label_61:	.asciiz "\n"
string_label_62:	.asciiz "\n"
string_label_63:	.asciiz "\n"
string_label_64:	.asciiz "\n"
string_label_65:	.asciiz "\n"
string_label_66:	.asciiz "\n"
string_label_67:	.asciiz "\n"
string_label_68:	.asciiz "\n"
string_label_69:	.asciiz "\n"
string_label_70:	.asciiz "\n"
string_label_71:	.asciiz "\n"
string_label_72:	.asciiz "\n"
string_label_73:	.asciiz "\n"
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
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#add
	addu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_0
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
	j	bp_label_1
	#marker Label
bp_label_1:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,10
	#			 __allocating reg $t1
	li	$t1,8
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_2
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
	#end of statement jump
	j	bp_label_3
	#marker Label
bp_label_3:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
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
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,2
	#div
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_6
	#marker Label
bp_label_6:
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
	j	bp_label_7
	#marker Label
bp_label_7:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#			 __allocating reg $t2
	li	$t2,5
	#multiply
	mult	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#			 __allocating reg $t2
	li	$t2,5
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#add
	addu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	j	bp_label_9
	#marker Label
bp_label_9:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,5
	#			 __allocating reg $t2
	li	$t2,5
	#multiply
	mult	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#add
	addu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_10
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
	j	bp_label_11
	#marker Label
bp_label_11:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,6
	#			 __allocating reg $t1
	li	$t1,3
	#div
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,200
	#			 __allocating reg $t2
	li	$t2,5
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#add
	addu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	j	bp_label_13
	#marker Label
bp_label_13:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,5
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,2
	#			 __allocating reg $t2
	li	$t2,3
	#multiply
	mult	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_14
	#marker Label
bp_label_14:
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
	j	bp_label_15
	#marker Label
bp_label_15:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,300
	#			 __allocating reg $t1
	li	$t1,3
	#div
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,200
	#			 __allocating reg $t2
	li	$t2,5
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_16
	#marker Label
bp_label_16:
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
	j	bp_label_17
	#marker Label
bp_label_17:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,5
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,2
	#			 __allocating reg $t2
	li	$t2,3
	#multiply
	mult	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
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
	j	bp_label_19
	#marker Label
bp_label_19:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,300
	#			 __allocating reg $t1
	li	$t1,3
	#div
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,200
	#			 __allocating reg $t2
	li	$t2,5
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_21
	#marker Label
bp_label_21:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#add_byte
	add	$t0,$t0,$t1
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_22
	#marker Label
bp_label_22:
	#func header store regs before call
	#stored 0 registers
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_23
	#marker Label
bp_label_23:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,10
	#			 __allocating reg $t1
	li	$t1,8
	#subtruct_byte
	sub	$t0,$t0,$t1
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_25
	#marker Label
bp_label_25:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#multiply_byte
	mult	$t0,$t1
	mflo	$t0
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_26
	#marker Label
bp_label_26:
	#func header store regs before call
	#stored 0 registers
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_27
	#marker Label
bp_label_27:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,2
	#div_byte
	beq	$t0,$zero,nayalo
	div	$t0,$t1
	mflow	$t0
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_28
	#marker Label
bp_label_28:
	#func header store regs before call
	#stored 0 registers
	#caught a string
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_29
	#marker Label
bp_label_29:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#			 __allocating reg $t2
	li	$t2,5
	#multiply_byte
	mult	$t1,$t2
	mflo	$t1
	#truncating byte
	andi	$t1,$t1,0xff
	#			 __freeing reg $t2
	#			 __allocating reg $t2
	li	$t2,5
	#div_byte
	beq	$t1,$zero,nayalo
	div	$t1,$t2
	mflow	$t1
	#truncating byte
	andi	$t1,$t1,0xff
	#			 __freeing reg $t2
	#add_byte
	add	$t0,$t0,$t1
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_30
	#marker Label
bp_label_30:
	#func header store regs before call
	#stored 0 registers
	#caught a string
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_31
	#marker Label
bp_label_31:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#multiply_byte
	mult	$t0,$t1
	mflo	$t0
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,5
	#			 __allocating reg $t2
	li	$t2,5
	#multiply_byte
	mult	$t1,$t2
	mflo	$t1
	#truncating byte
	andi	$t1,$t1,0xff
	#			 __freeing reg $t2
	#add_byte
	add	$t0,$t0,$t1
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_32
	#marker Label
bp_label_32:
	#func header store regs before call
	#stored 0 registers
	#caught a string
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_33
	#marker Label
bp_label_33:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,6
	#			 __allocating reg $t1
	li	$t1,3
	#div_byte
	beq	$t0,$zero,nayalo
	div	$t0,$t1
	mflow	$t0
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,200
	#			 __allocating reg $t2
	li	$t2,5
	#div_byte
	beq	$t1,$zero,nayalo
	div	$t1,$t2
	mflow	$t1
	#truncating byte
	andi	$t1,$t1,0xff
	#			 __freeing reg $t2
	#add_byte
	add	$t0,$t0,$t1
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_34
	#marker Label
bp_label_34:
	#func header store regs before call
	#stored 0 registers
	#caught a string
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_35
	#marker Label
bp_label_35:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,5
	#multiply_byte
	mult	$t0,$t1
	mflo	$t0
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,2
	#			 __allocating reg $t2
	li	$t2,3
	#multiply_byte
	mult	$t1,$t2
	mflo	$t1
	#truncating byte
	andi	$t1,$t1,0xff
	#			 __freeing reg $t2
	#subtruct_byte
	sub	$t0,$t0,$t1
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_36
	#marker Label
bp_label_36:
	#func header store regs before call
	#stored 0 registers
	#caught a string
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_37
	#marker Label
bp_label_37:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,100
	#			 __allocating reg $t1
	li	$t1,2
	#div_byte
	beq	$t0,$zero,nayalo
	div	$t0,$t1
	mflow	$t0
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,200
	#			 __allocating reg $t2
	li	$t2,10
	#div_byte
	beq	$t1,$zero,nayalo
	div	$t1,$t2
	mflow	$t1
	#truncating byte
	andi	$t1,$t1,0xff
	#			 __freeing reg $t2
	#subtruct_byte
	sub	$t0,$t0,$t1
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_38
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_39
	#marker Label
bp_label_39:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,5
	#multiply_byte
	mult	$t0,$t1
	mflo	$t0
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,2
	#			 __allocating reg $t2
	li	$t2,3
	#multiply_byte
	mult	$t1,$t2
	mflo	$t1
	#truncating byte
	andi	$t1,$t1,0xff
	#			 __freeing reg $t2
	#subtruct_byte
	sub	$t0,$t0,$t1
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_40
	#marker Label
bp_label_40:
	#func header store regs before call
	#stored 0 registers
	#caught a string
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_41
	#marker Label
bp_label_41:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,100
	#			 __allocating reg $t1
	li	$t1,2
	#div_byte
	beq	$t0,$zero,nayalo
	div	$t0,$t1
	mflow	$t0
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,200
	#			 __allocating reg $t2
	li	$t2,20
	#div_byte
	beq	$t1,$zero,nayalo
	div	$t1,$t2
	mflow	$t1
	#truncating byte
	andi	$t1,$t1,0xff
	#			 __freeing reg $t2
	#subtruct_byte
	sub	$t0,$t0,$t1
	#truncating byte
	andi	$t0,$t0,0xff
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_42
	#marker Label
bp_label_42:
	#func header store regs before call
	#stored 0 registers
	#caught a string
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_43
	#marker Label
bp_label_43:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#add
	addu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_44
	#marker Label
bp_label_44:
	#func header store regs before call
	#stored 0 registers
	#caught a string
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_45
	#marker Label
bp_label_45:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,10
	#			 __allocating reg $t1
	li	$t1,8
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_46
	#marker Label
bp_label_46:
	#func header store regs before call
	#stored 0 registers
	#caught a string
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_47
	#marker Label
bp_label_47:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_48
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_49
	#marker Label
bp_label_49:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,2
	#div
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_50
	#marker Label
bp_label_50:
	#func header store regs before call
	#stored 0 registers
	#caught a string
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_51
	#marker Label
bp_label_51:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#add
	addu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_52
	#marker Label
bp_label_52:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_53
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
	j	bp_label_53
	#marker Label
bp_label_53:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,10
	#			 __allocating reg $t1
	li	$t1,8
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_54
	#marker Label
bp_label_54:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_55
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
	j	bp_label_55
	#marker Label
bp_label_55:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_56
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
	la $v0, string_label_57
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
	j	bp_label_57
	#marker Label
bp_label_57:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,2
	#div
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_58
	#marker Label
bp_label_58:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_59
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
	j	bp_label_59
	#marker Label
bp_label_59:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#			 __allocating reg $t2
	li	$t2,5
	#multiply
	mult	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#			 __allocating reg $t2
	li	$t2,5
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#add
	addu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_60
	#marker Label
bp_label_60:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_61
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
	j	bp_label_61
	#marker Label
bp_label_61:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,5
	#			 __allocating reg $t2
	li	$t2,5
	#multiply
	mult	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#add
	addu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_62
	#marker Label
bp_label_62:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_63
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
	j	bp_label_63
	#marker Label
bp_label_63:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,6
	#			 __allocating reg $t1
	li	$t1,3
	#div
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,200
	#			 __allocating reg $t2
	li	$t2,5
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#add
	addu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_64
	#marker Label
bp_label_64:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_65
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
	j	bp_label_65
	#marker Label
bp_label_65:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,5
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,2
	#			 __allocating reg $t2
	li	$t2,3
	#multiply
	mult	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_66
	#marker Label
bp_label_66:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_67
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
	j	bp_label_67
	#marker Label
bp_label_67:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,100
	#			 __allocating reg $t1
	li	$t1,2
	#div
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,200
	#			 __allocating reg $t2
	li	$t2,10
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_68
	#marker Label
bp_label_68:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_69
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
	j	bp_label_69
	#marker Label
bp_label_69:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,5
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,2
	#			 __allocating reg $t2
	li	$t2,3
	#multiply
	mult	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_70
	#marker Label
bp_label_70:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_71
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
	j	bp_label_71
	#marker Label
bp_label_71:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,100
	#			 __allocating reg $t1
	li	$t1,2
	#div
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,200
	#			 __allocating reg $t2
	li	$t2,20
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
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
	#end of statement jump
	j	bp_label_72
	#marker Label
bp_label_72:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_73
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
	j	bp_label_73
bp_label_73:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
