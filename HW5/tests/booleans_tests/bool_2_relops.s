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
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,100
	sw $t0, ($fp)
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_0
	#marker Label
bp_label_0:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,100
	sw $t0, -4($fp)
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1
	#marker Label
bp_label_1:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,6
	sw $t0, -8($fp)
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_2
	#marker Label
bp_label_2:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $t0
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_3
	#marker Label
bp_label_3:
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#Getting Var falue for [Exp->id]: big2 offset is -4($fp)
	#			 __allocating reg $t1
	lw $t1, -4($fp)
	beq $t0, $t1,bp_label_4
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_6
	#marker Label
bp_label_4:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#marker Label
bp_label_5:
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
	j	bp_label_8
	#marker Label
bp_label_6:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	#caught a string
	#marker Label
bp_label_7:
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
	j	bp_label_8
	#end of ifelse
bp_label_8:
	#end of statement jump
	j	bp_label_9
	#marker Label
bp_label_9:
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $t2
	lw $t2, -8($fp)
	#Getting Var falue for [Exp->id]: small2 offset is -12($fp)
	#			 __allocating reg $t3
	lw $t3, -12($fp)
	beq $t2, $t3,bp_label_10
	#			 __freeing reg $t3
	#			 __freeing reg $t2
	j	bp_label_12
	#marker Label
bp_label_10:
	#func header store regs before call
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 2 registers
	#caught a string
	#marker Label
bp_label_11:
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
	j	bp_label_14
	#marker Label
bp_label_12:
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
bp_label_13:
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
	j	bp_label_14
	#end of ifelse
bp_label_14:
	#end of statement jump
	j	bp_label_15
	#marker Label
bp_label_15:
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $t4
	lw $t4, ($fp)
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $t5
	lw $t5, -8($fp)
	beq $t4, $t5,bp_label_16
	#			 __freeing reg $t5
	#			 __freeing reg $t4
	j	bp_label_18
	#marker Label
bp_label_16:
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
bp_label_17:
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
	j	bp_label_20
	#marker Label
bp_label_18:
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
bp_label_19:
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
	j	bp_label_20
	#end of ifelse
bp_label_20:
	#end of statement jump
	j	bp_label_21
	#marker Label
bp_label_21:
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $t6
	lw $t6, -8($fp)
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $t7
	lw $t7, ($fp)
	beq $t6, $t7,bp_label_22
	#			 __freeing reg $t7
	#			 __freeing reg $t6
	j	bp_label_24
	#marker Label
bp_label_22:
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
bp_label_23:
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
	j	bp_label_26
	#marker Label
bp_label_24:
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
bp_label_25:
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
	j	bp_label_26
	#end of ifelse
bp_label_26:
	#end of statement jump
	j	bp_label_27
	#marker Label
bp_label_27:
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
bp_label_28:
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
	j	bp_label_29
	#marker Label
bp_label_29:
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $s0
	lw $s0, ($fp)
	#Getting Var falue for [Exp->id]: big2 offset is -4($fp)
	#			 __allocating reg $s1
	lw $s1, -4($fp)
	bne $s0, $s1,bp_label_30
	#			 __freeing reg $s1
	#			 __freeing reg $s0
	j	bp_label_32
	#marker Label
bp_label_30:
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
bp_label_31:
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
	j	bp_label_34
	#marker Label
bp_label_32:
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
bp_label_33:
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
	j	bp_label_34
	#end of ifelse
bp_label_34:
	#end of statement jump
	j	bp_label_35
	#marker Label
bp_label_35:
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $s2
	lw $s2, -8($fp)
	#Getting Var falue for [Exp->id]: small2 offset is -12($fp)
	#			 __allocating reg $s3
	lw $s3, -12($fp)
	bne $s2, $s3,bp_label_36
	#			 __freeing reg $s3
	#			 __freeing reg $s2
	j	bp_label_38
	#marker Label
bp_label_36:
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
bp_label_37:
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
	j	bp_label_40
	#marker Label
bp_label_38:
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
bp_label_39:
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
	j	bp_label_40
	#end of ifelse
bp_label_40:
	#end of statement jump
	j	bp_label_41
	#marker Label
bp_label_41:
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $s4
	lw $s4, ($fp)
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $s5
	lw $s5, -8($fp)
	bne $s4, $s5,bp_label_42
	#			 __freeing reg $s5
	#			 __freeing reg $s4
	j	bp_label_44
	#marker Label
bp_label_42:
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
bp_label_43:
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
	j	bp_label_46
	#marker Label
bp_label_44:
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
bp_label_45:
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
	j	bp_label_46
	#end of ifelse
bp_label_46:
	#end of statement jump
	j	bp_label_47
	#marker Label
bp_label_47:
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $s6
	lw $s6, -8($fp)
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $s7
	lw $s7, ($fp)
	bne $s6, $s7,bp_label_48
	#			 __freeing reg $s7
	#			 __freeing reg $s6
	j	bp_label_50
	#marker Label
bp_label_48:
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
bp_label_49:
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
	j	bp_label_52
	#marker Label
bp_label_50:
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
bp_label_51:
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
	j	bp_label_52
	#end of ifelse
bp_label_52:
	#end of statement jump
	j	bp_label_53
	#marker Label
bp_label_53:
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
bp_label_54:
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
bp_label_55:
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $t9
	lw $t9, ($fp)
	#Getting Var falue for [Exp->id]: big2 offset is -4($fp)
	#			 __allocating reg $t:
	lw $t:, -4($fp)
	blt $t9, $t:,bp_label_56
	#			 __freeing reg $t:
	#			 __freeing reg $t9
	j	bp_label_58
	#marker Label
bp_label_56:
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
bp_label_57:
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
	j	bp_label_60
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
	j	bp_label_60
	#end of ifelse
bp_label_60:
	#end of statement jump
	j	bp_label_61
	#marker Label
bp_label_61:
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $t;
	lw $t;, -8($fp)
	#Getting Var falue for [Exp->id]: small2 offset is -12($fp)
	#			 __allocating reg $t<
	lw $t<, -12($fp)
	blt $t;, $t<,bp_label_62
	#			 __freeing reg $t<
	#			 __freeing reg $t;
	j	bp_label_64
	#marker Label
bp_label_62:
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
bp_label_63:
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
	j	bp_label_66
	#marker Label
bp_label_64:
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
bp_label_65:
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
	j	bp_label_66
	#end of ifelse
bp_label_66:
	#end of statement jump
	j	bp_label_67
	#marker Label
bp_label_67:
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $t=
	lw $t=, ($fp)
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $t>
	lw $t>, -8($fp)
	blt $t=, $t>,bp_label_68
	#			 __freeing reg $t>
	#			 __freeing reg $t=
	j	bp_label_70
	#marker Label
bp_label_68:
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
bp_label_69:
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
	j	bp_label_72
	#marker Label
bp_label_70:
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
bp_label_71:
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
	j	bp_label_72
	#end of ifelse
bp_label_72:
	#end of statement jump
	j	bp_label_73
	#marker Label
bp_label_73:
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $t?
	lw $t?, -8($fp)
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $t@
	lw $t@, ($fp)
	blt $t?, $t@,bp_label_74
	#			 __freeing reg $t@
	#			 __freeing reg $t?
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
	j	bp_label_78
	#marker Label
bp_label_76:
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
bp_label_77:
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
	j	bp_label_78
	#end of ifelse
bp_label_78:
	#end of statement jump
	j	bp_label_79
	#marker Label
bp_label_79:
	#func header store regs before call
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 26 registers
	#caught a string
	#marker Label
bp_label_80:
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
	#restoring 26 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_81
	#marker Label
bp_label_81:
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $tB
	lw $tB, ($fp)
	#Getting Var falue for [Exp->id]: big2 offset is -4($fp)
	#			 __allocating reg $tC
	lw $tC, -4($fp)
	ble $tB, $tC,bp_label_82
	#			 __freeing reg $tC
	#			 __freeing reg $tB
	j	bp_label_84
	#marker Label
bp_label_82:
	#func header store regs before call
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 27 registers
	#caught a string
	#marker Label
bp_label_83:
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
	#restoring 27 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_86
	#marker Label
bp_label_84:
	#func header store regs before call
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 28 registers
	#caught a string
	#marker Label
bp_label_85:
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
	#restoring 28 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
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
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $tD
	lw $tD, -8($fp)
	#Getting Var falue for [Exp->id]: small2 offset is -12($fp)
	#			 __allocating reg $tE
	lw $tE, -12($fp)
	ble $tD, $tE,bp_label_88
	#			 __freeing reg $tE
	#			 __freeing reg $tD
	j	bp_label_90
	#marker Label
bp_label_88:
	#func header store regs before call
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 29 registers
	#caught a string
	#marker Label
bp_label_89:
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
	#restoring 29 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_92
	#marker Label
bp_label_90:
	#func header store regs before call
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 30 registers
	#caught a string
	#marker Label
bp_label_91:
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
	#restoring 30 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_92
	#end of ifelse
bp_label_92:
	#end of statement jump
	j	bp_label_93
	#marker Label
bp_label_93:
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $tF
	lw $tF, ($fp)
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $tG
	lw $tG, -8($fp)
	ble $tF, $tG,bp_label_94
	#			 __freeing reg $tG
	#			 __freeing reg $tF
	j	bp_label_96
	#marker Label
bp_label_94:
	#func header store regs before call
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 31 registers
	#caught a string
	#marker Label
bp_label_95:
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
	#restoring 31 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_98
	#marker Label
bp_label_96:
	#func header store regs before call
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 32 registers
	#caught a string
	#marker Label
bp_label_97:
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
	#restoring 32 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_98
	#end of ifelse
bp_label_98:
	#end of statement jump
	j	bp_label_99
	#marker Label
bp_label_99:
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $tH
	lw $tH, -8($fp)
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $tI
	lw $tI, ($fp)
	ble $tH, $tI,bp_label_100
	#			 __freeing reg $tI
	#			 __freeing reg $tH
	j	bp_label_102
	#marker Label
bp_label_100:
	#func header store regs before call
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 33 registers
	#caught a string
	#marker Label
bp_label_101:
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
	#restoring 33 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_104
	#marker Label
bp_label_102:
	#func header store regs before call
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 34 registers
	#caught a string
	#marker Label
bp_label_103:
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
	#restoring 34 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_104
	#end of ifelse
bp_label_104:
	#end of statement jump
	j	bp_label_105
	#marker Label
bp_label_105:
	#func header store regs before call
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 35 registers
	#caught a string
	#marker Label
bp_label_106:
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
	#restoring 35 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_107
	#marker Label
bp_label_107:
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $tK
	lw $tK, ($fp)
	#Getting Var falue for [Exp->id]: big2 offset is -4($fp)
	#			 __allocating reg $tL
	lw $tL, -4($fp)
	bgt $tK, $tL,bp_label_108
	#			 __freeing reg $tL
	#			 __freeing reg $tK
	j	bp_label_110
	#marker Label
bp_label_108:
	#func header store regs before call
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 36 registers
	#caught a string
	#marker Label
bp_label_109:
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
	#restoring 36 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_112
	#marker Label
bp_label_110:
	#func header store regs before call
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 37 registers
	#caught a string
	#marker Label
bp_label_111:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_75
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
	#restoring 37 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_112
	#end of ifelse
bp_label_112:
	#end of statement jump
	j	bp_label_113
	#marker Label
bp_label_113:
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $tM
	lw $tM, -8($fp)
	#Getting Var falue for [Exp->id]: small2 offset is -12($fp)
	#			 __allocating reg $tN
	lw $tN, -12($fp)
	bgt $tM, $tN,bp_label_114
	#			 __freeing reg $tN
	#			 __freeing reg $tM
	j	bp_label_116
	#marker Label
bp_label_114:
	#func header store regs before call
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 38 registers
	#caught a string
	#marker Label
bp_label_115:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_77
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
	#restoring 38 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_118
	#marker Label
bp_label_116:
	#func header store regs before call
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 39 registers
	#caught a string
	#marker Label
bp_label_117:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_79
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
	#restoring 39 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_118
	#end of ifelse
bp_label_118:
	#end of statement jump
	j	bp_label_119
	#marker Label
bp_label_119:
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $tO
	lw $tO, ($fp)
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $tP
	lw $tP, -8($fp)
	bgt $tO, $tP,bp_label_120
	#			 __freeing reg $tP
	#			 __freeing reg $tO
	j	bp_label_122
	#marker Label
bp_label_120:
	#func header store regs before call
	sw $tN, ($sp)
	addiu $sp, $sp, -4
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 40 registers
	#caught a string
	#marker Label
bp_label_121:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_81
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
	#restoring 40 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	addiu $sp, $sp, 4
	lw $tO, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_124
	#marker Label
bp_label_122:
	#func header store regs before call
	sw $tO, ($sp)
	addiu $sp, $sp, -4
	sw $tN, ($sp)
	addiu $sp, $sp, -4
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 41 registers
	#caught a string
	#marker Label
bp_label_123:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_83
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
	#restoring 41 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	addiu $sp, $sp, 4
	lw $tO, ($sp)
	addiu $sp, $sp, 4
	lw $tP, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_124
	#end of ifelse
bp_label_124:
	#end of statement jump
	j	bp_label_125
	#marker Label
bp_label_125:
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $tQ
	lw $tQ, -8($fp)
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $tR
	lw $tR, ($fp)
	bgt $tQ, $tR,bp_label_126
	#			 __freeing reg $tR
	#			 __freeing reg $tQ
	j	bp_label_128
	#marker Label
bp_label_126:
	#func header store regs before call
	sw $tP, ($sp)
	addiu $sp, $sp, -4
	sw $tO, ($sp)
	addiu $sp, $sp, -4
	sw $tN, ($sp)
	addiu $sp, $sp, -4
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 42 registers
	#caught a string
	#marker Label
bp_label_127:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_85
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
	#restoring 42 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	addiu $sp, $sp, 4
	lw $tO, ($sp)
	addiu $sp, $sp, 4
	lw $tP, ($sp)
	addiu $sp, $sp, 4
	lw $tQ, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_130
	#marker Label
bp_label_128:
	#func header store regs before call
	sw $tQ, ($sp)
	addiu $sp, $sp, -4
	sw $tP, ($sp)
	addiu $sp, $sp, -4
	sw $tO, ($sp)
	addiu $sp, $sp, -4
	sw $tN, ($sp)
	addiu $sp, $sp, -4
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 43 registers
	#caught a string
	#marker Label
bp_label_129:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_87
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
	#restoring 43 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	addiu $sp, $sp, 4
	lw $tO, ($sp)
	addiu $sp, $sp, 4
	lw $tP, ($sp)
	addiu $sp, $sp, 4
	lw $tQ, ($sp)
	addiu $sp, $sp, 4
	lw $tR, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_130
	#end of ifelse
bp_label_130:
	#end of statement jump
	j	bp_label_131
	#marker Label
bp_label_131:
	#func header store regs before call
	sw $tR, ($sp)
	addiu $sp, $sp, -4
	sw $tQ, ($sp)
	addiu $sp, $sp, -4
	sw $tP, ($sp)
	addiu $sp, $sp, -4
	sw $tO, ($sp)
	addiu $sp, $sp, -4
	sw $tN, ($sp)
	addiu $sp, $sp, -4
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 44 registers
	#caught a string
	#marker Label
bp_label_132:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_89
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
	#restoring 44 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	addiu $sp, $sp, 4
	lw $tO, ($sp)
	addiu $sp, $sp, 4
	lw $tP, ($sp)
	addiu $sp, $sp, 4
	lw $tQ, ($sp)
	addiu $sp, $sp, 4
	lw $tR, ($sp)
	addiu $sp, $sp, 4
	lw $tS, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_133
	#marker Label
bp_label_133:
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $tT
	lw $tT, ($fp)
	#Getting Var falue for [Exp->id]: big2 offset is -4($fp)
	#			 __allocating reg $tU
	lw $tU, -4($fp)
	bge $tT, $tU,bp_label_134
	#			 __freeing reg $tU
	#			 __freeing reg $tT
	j	bp_label_136
	#marker Label
bp_label_134:
	#func header store regs before call
	sw $tS, ($sp)
	addiu $sp, $sp, -4
	sw $tR, ($sp)
	addiu $sp, $sp, -4
	sw $tQ, ($sp)
	addiu $sp, $sp, -4
	sw $tP, ($sp)
	addiu $sp, $sp, -4
	sw $tO, ($sp)
	addiu $sp, $sp, -4
	sw $tN, ($sp)
	addiu $sp, $sp, -4
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 45 registers
	#caught a string
	#marker Label
bp_label_135:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_91
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
	#restoring 45 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	addiu $sp, $sp, 4
	lw $tO, ($sp)
	addiu $sp, $sp, 4
	lw $tP, ($sp)
	addiu $sp, $sp, 4
	lw $tQ, ($sp)
	addiu $sp, $sp, 4
	lw $tR, ($sp)
	addiu $sp, $sp, 4
	lw $tS, ($sp)
	addiu $sp, $sp, 4
	lw $tT, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_138
	#marker Label
bp_label_136:
	#func header store regs before call
	sw $tT, ($sp)
	addiu $sp, $sp, -4
	sw $tS, ($sp)
	addiu $sp, $sp, -4
	sw $tR, ($sp)
	addiu $sp, $sp, -4
	sw $tQ, ($sp)
	addiu $sp, $sp, -4
	sw $tP, ($sp)
	addiu $sp, $sp, -4
	sw $tO, ($sp)
	addiu $sp, $sp, -4
	sw $tN, ($sp)
	addiu $sp, $sp, -4
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 46 registers
	#caught a string
	#marker Label
bp_label_137:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_93
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
	#restoring 46 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	addiu $sp, $sp, 4
	lw $tO, ($sp)
	addiu $sp, $sp, 4
	lw $tP, ($sp)
	addiu $sp, $sp, 4
	lw $tQ, ($sp)
	addiu $sp, $sp, 4
	lw $tR, ($sp)
	addiu $sp, $sp, 4
	lw $tS, ($sp)
	addiu $sp, $sp, 4
	lw $tT, ($sp)
	addiu $sp, $sp, 4
	lw $tU, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_138
	#end of ifelse
bp_label_138:
	#end of statement jump
	j	bp_label_139
	#marker Label
bp_label_139:
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $tV
	lw $tV, -8($fp)
	#Getting Var falue for [Exp->id]: small2 offset is -12($fp)
	#			 __allocating reg $tW
	lw $tW, -12($fp)
	bge $tV, $tW,bp_label_140
	#			 __freeing reg $tW
	#			 __freeing reg $tV
	j	bp_label_142
	#marker Label
bp_label_140:
	#func header store regs before call
	sw $tU, ($sp)
	addiu $sp, $sp, -4
	sw $tT, ($sp)
	addiu $sp, $sp, -4
	sw $tS, ($sp)
	addiu $sp, $sp, -4
	sw $tR, ($sp)
	addiu $sp, $sp, -4
	sw $tQ, ($sp)
	addiu $sp, $sp, -4
	sw $tP, ($sp)
	addiu $sp, $sp, -4
	sw $tO, ($sp)
	addiu $sp, $sp, -4
	sw $tN, ($sp)
	addiu $sp, $sp, -4
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 47 registers
	#caught a string
	#marker Label
bp_label_141:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_95
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
	#restoring 47 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	addiu $sp, $sp, 4
	lw $tO, ($sp)
	addiu $sp, $sp, 4
	lw $tP, ($sp)
	addiu $sp, $sp, 4
	lw $tQ, ($sp)
	addiu $sp, $sp, 4
	lw $tR, ($sp)
	addiu $sp, $sp, 4
	lw $tS, ($sp)
	addiu $sp, $sp, 4
	lw $tT, ($sp)
	addiu $sp, $sp, 4
	lw $tU, ($sp)
	addiu $sp, $sp, 4
	lw $tV, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_144
	#marker Label
bp_label_142:
	#func header store regs before call
	sw $tV, ($sp)
	addiu $sp, $sp, -4
	sw $tU, ($sp)
	addiu $sp, $sp, -4
	sw $tT, ($sp)
	addiu $sp, $sp, -4
	sw $tS, ($sp)
	addiu $sp, $sp, -4
	sw $tR, ($sp)
	addiu $sp, $sp, -4
	sw $tQ, ($sp)
	addiu $sp, $sp, -4
	sw $tP, ($sp)
	addiu $sp, $sp, -4
	sw $tO, ($sp)
	addiu $sp, $sp, -4
	sw $tN, ($sp)
	addiu $sp, $sp, -4
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 48 registers
	#caught a string
	#marker Label
bp_label_143:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_97
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
	#restoring 48 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	addiu $sp, $sp, 4
	lw $tO, ($sp)
	addiu $sp, $sp, 4
	lw $tP, ($sp)
	addiu $sp, $sp, 4
	lw $tQ, ($sp)
	addiu $sp, $sp, 4
	lw $tR, ($sp)
	addiu $sp, $sp, 4
	lw $tS, ($sp)
	addiu $sp, $sp, 4
	lw $tT, ($sp)
	addiu $sp, $sp, 4
	lw $tU, ($sp)
	addiu $sp, $sp, 4
	lw $tV, ($sp)
	addiu $sp, $sp, 4
	lw $tW, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_144
	#end of ifelse
bp_label_144:
	#end of statement jump
	j	bp_label_145
	#marker Label
bp_label_145:
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $tX
	lw $tX, ($fp)
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $tY
	lw $tY, -8($fp)
	bge $tX, $tY,bp_label_146
	#			 __freeing reg $tY
	#			 __freeing reg $tX
	j	bp_label_148
	#marker Label
bp_label_146:
	#func header store regs before call
	sw $tW, ($sp)
	addiu $sp, $sp, -4
	sw $tV, ($sp)
	addiu $sp, $sp, -4
	sw $tU, ($sp)
	addiu $sp, $sp, -4
	sw $tT, ($sp)
	addiu $sp, $sp, -4
	sw $tS, ($sp)
	addiu $sp, $sp, -4
	sw $tR, ($sp)
	addiu $sp, $sp, -4
	sw $tQ, ($sp)
	addiu $sp, $sp, -4
	sw $tP, ($sp)
	addiu $sp, $sp, -4
	sw $tO, ($sp)
	addiu $sp, $sp, -4
	sw $tN, ($sp)
	addiu $sp, $sp, -4
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 49 registers
	#caught a string
	#marker Label
bp_label_147:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_99
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
	#restoring 49 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	addiu $sp, $sp, 4
	lw $tO, ($sp)
	addiu $sp, $sp, 4
	lw $tP, ($sp)
	addiu $sp, $sp, 4
	lw $tQ, ($sp)
	addiu $sp, $sp, 4
	lw $tR, ($sp)
	addiu $sp, $sp, 4
	lw $tS, ($sp)
	addiu $sp, $sp, 4
	lw $tT, ($sp)
	addiu $sp, $sp, 4
	lw $tU, ($sp)
	addiu $sp, $sp, 4
	lw $tV, ($sp)
	addiu $sp, $sp, 4
	lw $tW, ($sp)
	addiu $sp, $sp, 4
	lw $tX, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_150
	#marker Label
bp_label_148:
	#func header store regs before call
	sw $tX, ($sp)
	addiu $sp, $sp, -4
	sw $tW, ($sp)
	addiu $sp, $sp, -4
	sw $tV, ($sp)
	addiu $sp, $sp, -4
	sw $tU, ($sp)
	addiu $sp, $sp, -4
	sw $tT, ($sp)
	addiu $sp, $sp, -4
	sw $tS, ($sp)
	addiu $sp, $sp, -4
	sw $tR, ($sp)
	addiu $sp, $sp, -4
	sw $tQ, ($sp)
	addiu $sp, $sp, -4
	sw $tP, ($sp)
	addiu $sp, $sp, -4
	sw $tO, ($sp)
	addiu $sp, $sp, -4
	sw $tN, ($sp)
	addiu $sp, $sp, -4
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 50 registers
	#caught a string
	#marker Label
bp_label_149:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_101
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
	#restoring 50 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	addiu $sp, $sp, 4
	lw $tO, ($sp)
	addiu $sp, $sp, 4
	lw $tP, ($sp)
	addiu $sp, $sp, 4
	lw $tQ, ($sp)
	addiu $sp, $sp, 4
	lw $tR, ($sp)
	addiu $sp, $sp, 4
	lw $tS, ($sp)
	addiu $sp, $sp, 4
	lw $tT, ($sp)
	addiu $sp, $sp, 4
	lw $tU, ($sp)
	addiu $sp, $sp, 4
	lw $tV, ($sp)
	addiu $sp, $sp, 4
	lw $tW, ($sp)
	addiu $sp, $sp, 4
	lw $tX, ($sp)
	addiu $sp, $sp, 4
	lw $tY, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_150
	#end of ifelse
bp_label_150:
	#end of statement jump
	j	bp_label_151
	#marker Label
bp_label_151:
	#Getting Var falue for [Exp->id]: small offset is -8($fp)
	#			 __allocating reg $tZ
	lw $tZ, -8($fp)
	#Getting Var falue for [Exp->id]: big offset is ($fp)
	#			 __allocating reg $t[
	lw $t[, ($fp)
	bge $tZ, $t[,bp_label_152
	#			 __freeing reg $t[
	#			 __freeing reg $tZ
	j	bp_label_154
	#marker Label
bp_label_152:
	#func header store regs before call
	sw $tY, ($sp)
	addiu $sp, $sp, -4
	sw $tX, ($sp)
	addiu $sp, $sp, -4
	sw $tW, ($sp)
	addiu $sp, $sp, -4
	sw $tV, ($sp)
	addiu $sp, $sp, -4
	sw $tU, ($sp)
	addiu $sp, $sp, -4
	sw $tT, ($sp)
	addiu $sp, $sp, -4
	sw $tS, ($sp)
	addiu $sp, $sp, -4
	sw $tR, ($sp)
	addiu $sp, $sp, -4
	sw $tQ, ($sp)
	addiu $sp, $sp, -4
	sw $tP, ($sp)
	addiu $sp, $sp, -4
	sw $tO, ($sp)
	addiu $sp, $sp, -4
	sw $tN, ($sp)
	addiu $sp, $sp, -4
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 51 registers
	#caught a string
	#marker Label
bp_label_153:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_103
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
	#restoring 51 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	addiu $sp, $sp, 4
	lw $tO, ($sp)
	addiu $sp, $sp, 4
	lw $tP, ($sp)
	addiu $sp, $sp, 4
	lw $tQ, ($sp)
	addiu $sp, $sp, 4
	lw $tR, ($sp)
	addiu $sp, $sp, 4
	lw $tS, ($sp)
	addiu $sp, $sp, 4
	lw $tT, ($sp)
	addiu $sp, $sp, 4
	lw $tU, ($sp)
	addiu $sp, $sp, 4
	lw $tV, ($sp)
	addiu $sp, $sp, 4
	lw $tW, ($sp)
	addiu $sp, $sp, 4
	lw $tX, ($sp)
	addiu $sp, $sp, 4
	lw $tY, ($sp)
	addiu $sp, $sp, 4
	lw $tZ, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_156
	#marker Label
bp_label_154:
	#func header store regs before call
	sw $tZ, ($sp)
	addiu $sp, $sp, -4
	sw $tY, ($sp)
	addiu $sp, $sp, -4
	sw $tX, ($sp)
	addiu $sp, $sp, -4
	sw $tW, ($sp)
	addiu $sp, $sp, -4
	sw $tV, ($sp)
	addiu $sp, $sp, -4
	sw $tU, ($sp)
	addiu $sp, $sp, -4
	sw $tT, ($sp)
	addiu $sp, $sp, -4
	sw $tS, ($sp)
	addiu $sp, $sp, -4
	sw $tR, ($sp)
	addiu $sp, $sp, -4
	sw $tQ, ($sp)
	addiu $sp, $sp, -4
	sw $tP, ($sp)
	addiu $sp, $sp, -4
	sw $tO, ($sp)
	addiu $sp, $sp, -4
	sw $tN, ($sp)
	addiu $sp, $sp, -4
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 52 registers
	#caught a string
	#marker Label
bp_label_155:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_105
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
	#restoring 52 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	addiu $sp, $sp, 4
	lw $tO, ($sp)
	addiu $sp, $sp, 4
	lw $tP, ($sp)
	addiu $sp, $sp, 4
	lw $tQ, ($sp)
	addiu $sp, $sp, 4
	lw $tR, ($sp)
	addiu $sp, $sp, 4
	lw $tS, ($sp)
	addiu $sp, $sp, 4
	lw $tT, ($sp)
	addiu $sp, $sp, 4
	lw $tU, ($sp)
	addiu $sp, $sp, 4
	lw $tV, ($sp)
	addiu $sp, $sp, 4
	lw $tW, ($sp)
	addiu $sp, $sp, 4
	lw $tX, ($sp)
	addiu $sp, $sp, 4
	lw $tY, ($sp)
	addiu $sp, $sp, 4
	lw $tZ, ($sp)
	addiu $sp, $sp, 4
	lw $t[, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_156
	#end of ifelse
bp_label_156:
	#end of statement jump
	j	bp_label_157
	#marker Label
bp_label_157:
	#func header store regs before call
	sw $t[, ($sp)
	addiu $sp, $sp, -4
	sw $tZ, ($sp)
	addiu $sp, $sp, -4
	sw $tY, ($sp)
	addiu $sp, $sp, -4
	sw $tX, ($sp)
	addiu $sp, $sp, -4
	sw $tW, ($sp)
	addiu $sp, $sp, -4
	sw $tV, ($sp)
	addiu $sp, $sp, -4
	sw $tU, ($sp)
	addiu $sp, $sp, -4
	sw $tT, ($sp)
	addiu $sp, $sp, -4
	sw $tS, ($sp)
	addiu $sp, $sp, -4
	sw $tR, ($sp)
	addiu $sp, $sp, -4
	sw $tQ, ($sp)
	addiu $sp, $sp, -4
	sw $tP, ($sp)
	addiu $sp, $sp, -4
	sw $tO, ($sp)
	addiu $sp, $sp, -4
	sw $tN, ($sp)
	addiu $sp, $sp, -4
	sw $tM, ($sp)
	addiu $sp, $sp, -4
	sw $tL, ($sp)
	addiu $sp, $sp, -4
	sw $tK, ($sp)
	addiu $sp, $sp, -4
	sw $tJ, ($sp)
	addiu $sp, $sp, -4
	sw $tI, ($sp)
	addiu $sp, $sp, -4
	sw $tH, ($sp)
	addiu $sp, $sp, -4
	sw $tG, ($sp)
	addiu $sp, $sp, -4
	sw $tF, ($sp)
	addiu $sp, $sp, -4
	sw $tE, ($sp)
	addiu $sp, $sp, -4
	sw $tD, ($sp)
	addiu $sp, $sp, -4
	sw $tC, ($sp)
	addiu $sp, $sp, -4
	sw $tB, ($sp)
	addiu $sp, $sp, -4
	sw $tA, ($sp)
	addiu $sp, $sp, -4
	sw $t@, ($sp)
	addiu $sp, $sp, -4
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
	#stored 53 registers
	#caught a string
	#marker Label
bp_label_158:
	#preparing to call print
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#loading str address to stack
	la $v0, string_label_107
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
	#restoring 53 previously used registers
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
	addiu $sp, $sp, 4
	lw $tA, ($sp)
	addiu $sp, $sp, 4
	lw $tB, ($sp)
	addiu $sp, $sp, 4
	lw $tC, ($sp)
	addiu $sp, $sp, 4
	lw $tD, ($sp)
	addiu $sp, $sp, 4
	lw $tE, ($sp)
	addiu $sp, $sp, 4
	lw $tF, ($sp)
	addiu $sp, $sp, 4
	lw $tG, ($sp)
	addiu $sp, $sp, 4
	lw $tH, ($sp)
	addiu $sp, $sp, 4
	lw $tI, ($sp)
	addiu $sp, $sp, 4
	lw $tJ, ($sp)
	addiu $sp, $sp, 4
	lw $tK, ($sp)
	addiu $sp, $sp, 4
	lw $tL, ($sp)
	addiu $sp, $sp, 4
	lw $tM, ($sp)
	addiu $sp, $sp, 4
	lw $tN, ($sp)
	addiu $sp, $sp, 4
	lw $tO, ($sp)
	addiu $sp, $sp, 4
	lw $tP, ($sp)
	addiu $sp, $sp, 4
	lw $tQ, ($sp)
	addiu $sp, $sp, 4
	lw $tR, ($sp)
	addiu $sp, $sp, 4
	lw $tS, ($sp)
	addiu $sp, $sp, 4
	lw $tT, ($sp)
	addiu $sp, $sp, 4
	lw $tU, ($sp)
	addiu $sp, $sp, 4
	lw $tV, ($sp)
	addiu $sp, $sp, 4
	lw $tW, ($sp)
	addiu $sp, $sp, 4
	lw $tX, ($sp)
	addiu $sp, $sp, 4
	lw $tY, ($sp)
	addiu $sp, $sp, 4
	lw $tZ, ($sp)
	addiu $sp, $sp, 4
	lw $t[, ($sp)
	addiu $sp, $sp, 4
	lw $t\, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_159
bp_label_159:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
