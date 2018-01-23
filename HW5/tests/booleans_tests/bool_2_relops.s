.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "true\t"
string_label_1:	.asciiz "true\t"
string_label_2:	.asciiz "false\t"
string_label_3:	.asciiz "false\t"
string_label_4:	.asciiz "true\t"
string_label_5:	.asciiz "true\t"
string_label_6:	.asciiz "false\t"
string_label_7:	.asciiz "false\t"
string_label_8:	.asciiz "true\t"
string_label_9:	.asciiz "true\t"
string_label_10:	.asciiz "false\t"
string_label_11:	.asciiz "false\t"
string_label_12:	.asciiz "true\t"
string_label_13:	.asciiz "true\t"
string_label_14:	.asciiz "false\t"
string_label_15:	.asciiz "false\t"
string_label_16:	.asciiz "\n"
string_label_17:	.asciiz "\n"
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
string_label_30:	.asciiz "true\t"
string_label_31:	.asciiz "true\t"
string_label_32:	.asciiz "false\t"
string_label_33:	.asciiz "false\t"
string_label_34:	.asciiz "\n"
string_label_35:	.asciiz "\n"
string_label_36:	.asciiz "true\t"
string_label_37:	.asciiz "true\t"
string_label_38:	.asciiz "false\t"
string_label_39:	.asciiz "false\t"
string_label_40:	.asciiz "true\t"
string_label_41:	.asciiz "true\t"
string_label_42:	.asciiz "false\t"
string_label_43:	.asciiz "false\t"
string_label_44:	.asciiz "true\t"
string_label_45:	.asciiz "true\t"
string_label_46:	.asciiz "false\t"
string_label_47:	.asciiz "false\t"
string_label_48:	.asciiz "true\t"
string_label_49:	.asciiz "true\t"
string_label_50:	.asciiz "false\t"
string_label_51:	.asciiz "false\t"
string_label_52:	.asciiz "\n"
string_label_53:	.asciiz "\n"
string_label_54:	.asciiz "true\t"
string_label_55:	.asciiz "true\t"
string_label_56:	.asciiz "false\t"
string_label_57:	.asciiz "false\t"
string_label_58:	.asciiz "true\t"
string_label_59:	.asciiz "true\t"
string_label_60:	.asciiz "false\t"
string_label_61:	.asciiz "false\t"
string_label_62:	.asciiz "true\t"
string_label_63:	.asciiz "true\t"
string_label_64:	.asciiz "false\t"
string_label_65:	.asciiz "false\t"
string_label_66:	.asciiz "true\t"
string_label_67:	.asciiz "true\t"
string_label_68:	.asciiz "false\t"
string_label_69:	.asciiz "false\t"
string_label_70:	.asciiz "\n"
string_label_71:	.asciiz "\n"
string_label_72:	.asciiz "true\t"
string_label_73:	.asciiz "true\t"
string_label_74:	.asciiz "false\t"
string_label_75:	.asciiz "false\t"
string_label_76:	.asciiz "true\t"
string_label_77:	.asciiz "true\t"
string_label_78:	.asciiz "false\t"
string_label_79:	.asciiz "false\t"
string_label_80:	.asciiz "true\t"
string_label_81:	.asciiz "true\t"
string_label_82:	.asciiz "false\t"
string_label_83:	.asciiz "false\t"
string_label_84:	.asciiz "true\t"
string_label_85:	.asciiz "true\t"
string_label_86:	.asciiz "false\t"
string_label_87:	.asciiz "false\t"
string_label_88:	.asciiz "\n"
string_label_89:	.asciiz "\n"
string_label_90:	.asciiz "true\t"
string_label_91:	.asciiz "true\t"
string_label_92:	.asciiz "false\t"
string_label_93:	.asciiz "false\t"
string_label_94:	.asciiz "true\t"
string_label_95:	.asciiz "true\t"
string_label_96:	.asciiz "false\t"
string_label_97:	.asciiz "false\t"
string_label_98:	.asciiz "true\t"
string_label_99:	.asciiz "true\t"
string_label_100:	.asciiz "false\t"
string_label_101:	.asciiz "false\t"
string_label_102:	.asciiz "true\t"
string_label_103:	.asciiz "true\t"
string_label_104:	.asciiz "false\t"
string_label_105:	.asciiz "false\t"
string_label_106:	.asciiz "\n"
string_label_107:	.asciiz "\n"
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
	li	$t0,100
	# allocating word on stack for local variable big
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, ($fp)
	sw $t0, ($fp)
	#end of statement jump
	j	bp_label_0
	#marker Label
bp_label_0:
	li	$t0,100
	# allocating word on stack for local variable big2
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, 4($fp)
	sw $t0, 4($fp)
	#end of statement jump
	j	bp_label_1
	#marker Label
bp_label_1:
	li	$t0,6
	# allocating word on stack for local variable small
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, 8($fp)
	sw $t0, 8($fp)
	#end of statement jump
	j	bp_label_2
	#marker Label
bp_label_2:
	#Getting Var falue for [Exp->id]: small
	lw $t0, 8($fp)
	# allocating word on stack for local variable small2
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, 12($fp)
	sw $t0, 12($fp)
	#end of statement jump
	j	bp_label_3
	#marker Label
bp_label_3:
	#Getting Var falue for [Exp->id]: big
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: big2
	lw $t1, 4($fp)
	beq $t0, $t1,bp_label_4
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
	j	bp_label_6
	#end of ifelse
bp_label_6:
	#end of statement jump
	j	bp_label_7
	#marker Label
bp_label_7:
	#Getting Var falue for [Exp->id]: small
	lw $t0, 8($fp)
	#Getting Var falue for [Exp->id]: small2
	lw $t1, 12($fp)
	beq $t0, $t1,bp_label_8
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
	j	bp_label_10
	#marker Label
bp_label_9:
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
	j	bp_label_10
	#end of ifelse
bp_label_10:
	#end of statement jump
	j	bp_label_11
	#marker Label
bp_label_11:
	#Getting Var falue for [Exp->id]: big
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: small
	lw $t1, 8($fp)
	beq $t0, $t1,bp_label_12
	j	bp_label_13
	#marker Label
bp_label_12:
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
	j	bp_label_14
	#marker Label
bp_label_13:
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
	j	bp_label_14
	#end of ifelse
bp_label_14:
	#end of statement jump
	j	bp_label_15
	#marker Label
bp_label_15:
	#Getting Var falue for [Exp->id]: small
	lw $t0, 8($fp)
	#Getting Var falue for [Exp->id]: big
	lw $t1, ($fp)
	beq $t0, $t1,bp_label_16
	j	bp_label_17
	#marker Label
bp_label_16:
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
	j	bp_label_18
	#marker Label
bp_label_17:
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
	j	bp_label_18
	#end of ifelse
bp_label_18:
	#end of statement jump
	j	bp_label_19
	#marker Label
bp_label_19:
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
	j	bp_label_20
	#marker Label
bp_label_20:
	#Getting Var falue for [Exp->id]: big
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: big2
	lw $t1, 4($fp)
	bne $t0, $t1,bp_label_21
	j	bp_label_22
	#marker Label
bp_label_21:
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
	j	bp_label_23
	#end of ifelse
bp_label_23:
	#end of statement jump
	j	bp_label_24
	#marker Label
bp_label_24:
	#Getting Var falue for [Exp->id]: small
	lw $t0, 8($fp)
	#Getting Var falue for [Exp->id]: small2
	lw $t1, 12($fp)
	bne $t0, $t1,bp_label_25
	j	bp_label_26
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
	j	bp_label_27
	#marker Label
bp_label_26:
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
	j	bp_label_27
	#end of ifelse
bp_label_27:
	#end of statement jump
	j	bp_label_28
	#marker Label
bp_label_28:
	#Getting Var falue for [Exp->id]: big
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: small
	lw $t1, 8($fp)
	bne $t0, $t1,bp_label_29
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
	j	bp_label_31
	#marker Label
bp_label_30:
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
	j	bp_label_31
	#end of ifelse
bp_label_31:
	#end of statement jump
	j	bp_label_32
	#marker Label
bp_label_32:
	#Getting Var falue for [Exp->id]: small
	lw $t0, 8($fp)
	#Getting Var falue for [Exp->id]: big
	lw $t1, ($fp)
	bne $t0, $t1,bp_label_33
	j	bp_label_34
	#marker Label
bp_label_33:
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
	j	bp_label_35
	#marker Label
bp_label_34:
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
	la $v0, string_label_33
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
	j	bp_label_35
	#end of ifelse
bp_label_35:
	#end of statement jump
	j	bp_label_36
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
	la $v0, string_label_35
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
	j	bp_label_37
	#marker Label
bp_label_37:
	#Getting Var falue for [Exp->id]: big
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: big2
	lw $t1, 4($fp)
	blt $t0, $t1,bp_label_38
	j	bp_label_39
	#marker Label
bp_label_38:
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
	la $v0, string_label_37
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
	la $v0, string_label_39
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
	#end of ifelse
bp_label_40:
	#end of statement jump
	j	bp_label_41
	#marker Label
bp_label_41:
	#Getting Var falue for [Exp->id]: small
	lw $t0, 8($fp)
	#Getting Var falue for [Exp->id]: small2
	lw $t1, 12($fp)
	blt $t0, $t1,bp_label_42
	j	bp_label_43
	#marker Label
bp_label_42:
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
	la $v0, string_label_41
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
	la $v0, string_label_43
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
	j	bp_label_44
	#end of ifelse
bp_label_44:
	#end of statement jump
	j	bp_label_45
	#marker Label
bp_label_45:
	#Getting Var falue for [Exp->id]: big
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: small
	lw $t1, 8($fp)
	blt $t0, $t1,bp_label_46
	j	bp_label_47
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
	la $v0, string_label_45
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
	j	bp_label_48
	#marker Label
bp_label_47:
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
	la $v0, string_label_47
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
	j	bp_label_48
	#end of ifelse
bp_label_48:
	#end of statement jump
	j	bp_label_49
	#marker Label
bp_label_49:
	#Getting Var falue for [Exp->id]: small
	lw $t0, 8($fp)
	#Getting Var falue for [Exp->id]: big
	lw $t1, ($fp)
	blt $t0, $t1,bp_label_50
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
	la $v0, string_label_49
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
	la $v0, string_label_51
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
	la $v0, string_label_53
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
	#Getting Var falue for [Exp->id]: big
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: big2
	lw $t1, 4($fp)
	ble $t0, $t1,bp_label_55
	j	bp_label_56
	#marker Label
bp_label_55:
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
	la $v0, string_label_55
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
	j	bp_label_57
	#marker Label
bp_label_56:
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
	la $v0, string_label_57
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
	j	bp_label_57
	#end of ifelse
bp_label_57:
	#end of statement jump
	j	bp_label_58
	#marker Label
bp_label_58:
	#Getting Var falue for [Exp->id]: small
	lw $t0, 8($fp)
	#Getting Var falue for [Exp->id]: small2
	lw $t1, 12($fp)
	ble $t0, $t1,bp_label_59
	j	bp_label_60
	#marker Label
bp_label_59:
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
	la $v0, string_label_59
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
	j	bp_label_61
	#marker Label
bp_label_60:
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
	la $v0, string_label_61
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
	j	bp_label_61
	#end of ifelse
bp_label_61:
	#end of statement jump
	j	bp_label_62
	#marker Label
bp_label_62:
	#Getting Var falue for [Exp->id]: big
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: small
	lw $t1, 8($fp)
	ble $t0, $t1,bp_label_63
	j	bp_label_64
	#marker Label
bp_label_63:
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
	la $v0, string_label_63
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
	j	bp_label_65
	#marker Label
bp_label_64:
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
	la $v0, string_label_65
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
	j	bp_label_65
	#end of ifelse
bp_label_65:
	#end of statement jump
	j	bp_label_66
	#marker Label
bp_label_66:
	#Getting Var falue for [Exp->id]: small
	lw $t0, 8($fp)
	#Getting Var falue for [Exp->id]: big
	lw $t1, ($fp)
	ble $t0, $t1,bp_label_67
	j	bp_label_68
	#marker Label
bp_label_67:
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
	la $v0, string_label_67
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
	j	bp_label_69
	#marker Label
bp_label_68:
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
	la $v0, string_label_69
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
	j	bp_label_69
	#end of ifelse
bp_label_69:
	#end of statement jump
	j	bp_label_70
	#marker Label
bp_label_70:
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
	la $v0, string_label_71
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
	j	bp_label_71
	#marker Label
bp_label_71:
	#Getting Var falue for [Exp->id]: big
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: big2
	lw $t1, 4($fp)
	bgt $t0, $t1,bp_label_72
	j	bp_label_73
	#marker Label
bp_label_72:
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
	la $v0, string_label_73
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
	j	bp_label_74
	#marker Label
bp_label_73:
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
	la $v0, string_label_75
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
	j	bp_label_74
	#end of ifelse
bp_label_74:
	#end of statement jump
	j	bp_label_75
	#marker Label
bp_label_75:
	#Getting Var falue for [Exp->id]: small
	lw $t0, 8($fp)
	#Getting Var falue for [Exp->id]: small2
	lw $t1, 12($fp)
	bgt $t0, $t1,bp_label_76
	j	bp_label_77
	#marker Label
bp_label_76:
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
	la $v0, string_label_77
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
	j	bp_label_78
	#marker Label
bp_label_77:
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
	la $v0, string_label_79
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
	j	bp_label_78
	#end of ifelse
bp_label_78:
	#end of statement jump
	j	bp_label_79
	#marker Label
bp_label_79:
	#Getting Var falue for [Exp->id]: big
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: small
	lw $t1, 8($fp)
	bgt $t0, $t1,bp_label_80
	j	bp_label_81
	#marker Label
bp_label_80:
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
	la $v0, string_label_81
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
	j	bp_label_82
	#marker Label
bp_label_81:
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
	la $v0, string_label_83
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
	j	bp_label_82
	#end of ifelse
bp_label_82:
	#end of statement jump
	j	bp_label_83
	#marker Label
bp_label_83:
	#Getting Var falue for [Exp->id]: small
	lw $t0, 8($fp)
	#Getting Var falue for [Exp->id]: big
	lw $t1, ($fp)
	bgt $t0, $t1,bp_label_84
	j	bp_label_85
	#marker Label
bp_label_84:
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
	la $v0, string_label_85
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
	j	bp_label_86
	#marker Label
bp_label_85:
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
	la $v0, string_label_87
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
	j	bp_label_86
	#end of ifelse
bp_label_86:
	#end of statement jump
	j	bp_label_87
	#marker Label
bp_label_87:
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
	la $v0, string_label_89
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
	j	bp_label_88
	#marker Label
bp_label_88:
	#Getting Var falue for [Exp->id]: big
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: big2
	lw $t1, 4($fp)
	bge $t0, $t1,bp_label_89
	j	bp_label_90
	#marker Label
bp_label_89:
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
	la $v0, string_label_91
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
	j	bp_label_91
	#marker Label
bp_label_90:
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
	la $v0, string_label_93
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
	j	bp_label_91
	#end of ifelse
bp_label_91:
	#end of statement jump
	j	bp_label_92
	#marker Label
bp_label_92:
	#Getting Var falue for [Exp->id]: small
	lw $t0, 8($fp)
	#Getting Var falue for [Exp->id]: small2
	lw $t1, 12($fp)
	bge $t0, $t1,bp_label_93
	j	bp_label_94
	#marker Label
bp_label_93:
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
	la $v0, string_label_95
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
	j	bp_label_95
	#marker Label
bp_label_94:
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
	la $v0, string_label_97
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
	j	bp_label_95
	#end of ifelse
bp_label_95:
	#end of statement jump
	j	bp_label_96
	#marker Label
bp_label_96:
	#Getting Var falue for [Exp->id]: big
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: small
	lw $t1, 8($fp)
	bge $t0, $t1,bp_label_97
	j	bp_label_98
	#marker Label
bp_label_97:
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
	la $v0, string_label_99
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
	j	bp_label_99
	#marker Label
bp_label_98:
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
	la $v0, string_label_101
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
	j	bp_label_99
	#end of ifelse
bp_label_99:
	#end of statement jump
	j	bp_label_100
	#marker Label
bp_label_100:
	#Getting Var falue for [Exp->id]: small
	lw $t0, 8($fp)
	#Getting Var falue for [Exp->id]: big
	lw $t1, ($fp)
	bge $t0, $t1,bp_label_101
	j	bp_label_102
	#marker Label
bp_label_101:
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
	la $v0, string_label_103
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
	j	bp_label_103
	#marker Label
bp_label_102:
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
	la $v0, string_label_105
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
	j	bp_label_103
	#end of ifelse
bp_label_103:
	#end of statement jump
	j	bp_label_104
	#marker Label
bp_label_104:
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
	la $v0, string_label_107
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
	j	bp_label_105
bp_label_105:
	#Adding an extre return just in case
	jr	$ra
