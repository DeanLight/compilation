.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "set!\n"
string_label_1:	.asciiz "set!\n"
string_label_2:	.asciiz "was here\n"
string_label_3:	.asciiz "was here\n"
string_label_4:	.asciiz "\n"
string_label_5:	.asciiz "\n"
string_label_6:	.asciiz "\n"
string_label_7:	.asciiz "\n"
string_label_8:	.asciiz "\n"
string_label_9:	.asciiz "\n"
string_label_10:	.asciiz "\n"
string_label_11:	.asciiz "\n"
.text
	#first program point
main:
	#initialize fp
	move	$fp,$sp
	jal	label_112
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
	#Func Int:
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
	#			 __allocating reg $t0
	li	$t0,500
	#return noneVoid in v0
	move	$v0,$t0
	#			 __freeing reg $t0
	move	$sp,$fp
	jr	$ra
bp_label_1:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func WasHere:
label_75:
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
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func main:
label_112:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, ($fp)
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_3
	#marker Label
bp_label_3:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_4
	#marker Label
bp_label_4:
	# allocating word on stack for local variable t6
	#allocationg words on stack 
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, -4($fp)
	#end of statement jump
	j	bp_label_6
	#marker Label
bp_label_5:
	#end of ifelse
bp_label_6:
	#end of statement jump
	j	bp_label_7
	#marker Label
bp_label_7:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_8
	#marker Label
bp_label_8:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_29
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	sw $t0, -4($fp)
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_10
	#marker Label
bp_label_9:
	#end of ifelse
bp_label_10:
	#end of statement jump
	j	bp_label_11
	#marker Label
bp_label_11:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_12
	#marker Label
bp_label_12:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_29
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	sw $t0, ($fp)
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_14
	#marker Label
bp_label_13:
	#end of ifelse
bp_label_14:
	#end of statement jump
	j	bp_label_15
	#marker Label
bp_label_15:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: target offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
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
	j	bp_label_17
	#marker Label
bp_label_17:
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, ($fp)
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_18
	#marker Label
bp_label_18:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_19
	#marker Label
bp_label_19:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_75
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#end of statement jump
	j	bp_label_21
	#marker Label
bp_label_20:
	#end of ifelse
bp_label_21:
	#end of statement jump
	j	bp_label_22
	#marker Label
bp_label_22:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_23
	#marker Label
bp_label_23:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_29
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	sw $t0, -4($fp)
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_24
	#marker Label
bp_label_24:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t6 offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
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
bp_label_25:
	#end of ifelse
bp_label_26:
	#end of statement jump
	j	bp_label_27
	#marker Label
bp_label_27:
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
	j	bp_label_28
	#marker Label
bp_label_28:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_29
	#marker Label
bp_label_29:
	# allocating word on stack for local variable t6
	#allocationg words on stack 
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, -4($fp)
	#end of statement jump
	j	bp_label_30
	#marker Label
bp_label_30:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_29
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	sw $t0, -4($fp)
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_31
	#marker Label
bp_label_31:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t6 offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
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
	j	bp_label_33
	#marker Label
bp_label_32:
	#end of ifelse
bp_label_33:
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
	j	bp_label_35
	#marker Label
bp_label_35:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_36
	#marker Label
bp_label_36:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_29
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	sw $t0, ($fp)
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_38
	#marker Label
bp_label_37:
	#end of ifelse
bp_label_38:
	#end of statement jump
	j	bp_label_39
	#marker Label
bp_label_39:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: target offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
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
	j	bp_label_41
	#marker Label
bp_label_41:
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, ($fp)
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_42
	#marker Label
bp_label_42:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_43
	#marker Label
bp_label_43:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_75
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#end of statement jump
	j	bp_label_45
	#marker Label
bp_label_44:
	#end of ifelse
bp_label_45:
	#end of statement jump
	j	bp_label_46
	#marker Label
bp_label_46:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_47
	#marker Label
bp_label_47:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_48
	#marker Label
bp_label_48:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_75
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#end of statement jump
	j	bp_label_50
	#marker Label
bp_label_49:
	#end of ifelse
bp_label_50:
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
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_54
	#marker Label
bp_label_54:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_55
	#marker Label
bp_label_55:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_75
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#end of statement jump
	j	bp_label_57
	#marker Label
bp_label_56:
	# allocating word on stack for local variable x
	#allocationg words on stack 
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, -4($fp)
	#end of statement jump
	j	bp_label_57
	#end of ifelse
bp_label_57:
	#end of statement jump
	j	bp_label_59
	#marker Label
bp_label_58:
	#end of ifelse
bp_label_59:
	#end of statement jump
	j	bp_label_60
	#marker Label
bp_label_60:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_61
	#marker Label
bp_label_61:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_63
	#marker Label
bp_label_62:
	# allocating word on stack for local variable x
	#allocationg words on stack 
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, -4($fp)
	#end of statement jump
	j	bp_label_64
	#marker Label
bp_label_63:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_75
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#end of statement jump
	j	bp_label_64
	#end of ifelse
bp_label_64:
	#end of statement jump
	j	bp_label_66
	#marker Label
bp_label_65:
	#end of ifelse
bp_label_66:
	#end of statement jump
	j	bp_label_67
	#marker Label
bp_label_67:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_68
	#marker Label
bp_label_68:
	#marker Label
bp_label_69:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_70
	#marker Label
bp_label_70:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_75
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#end of statement jump
	j	bp_label_71
	#marker Label
bp_label_71:
	#break
	j	bp_label_72
	#end of statement jump
	j	bp_label_69
bp_label_72:
	#end of statement jump
	j	bp_label_74
	#marker Label
bp_label_73:
	#end of ifelse
bp_label_74:
	#end of statement jump
	j	bp_label_75
	#marker Label
bp_label_75:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_76
	#marker Label
bp_label_76:
	#Getting Var falue for [Exp->id]: target offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#switch!
	j	bp_label_83
	#			 __freeing reg $t0
	#case init marker
bp_label_77:
	#updating sp by 0 and zeroing them
	#finished sp update
	#marker Label
bp_label_78:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_75
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#end of statement jump
	j	bp_label_79
	#marker Label
bp_label_79:
	#break
	j	bp_label_84
	#end of statement jump
	j	bp_label_81
	#case init marker
bp_label_80:
	#updating sp by 0 and zeroing them
	#finished sp update
	#marker Label
bp_label_81:
	# allocating word on stack for local variable x
	#allocationg words on stack 
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, -4($fp)
	#end of statement jump
	j	bp_label_82
	#marker Label
bp_label_82:
	#break
	j	bp_label_84
	#end of statement jump
	j	bp_label_84
	#			 __allocating reg $t0
	#catching falling cases
	j	bp_label_84
	#switch init label
bp_label_83:
	beq $t0,0,bp_label_77
	beq $t0,1,bp_label_80
	#end of switch:
bp_label_84:
	#end of statement jump
	j	bp_label_86
	#			 __freeing reg $t0
	#marker Label
bp_label_85:
	#end of ifelse
bp_label_86:
	#end of statement jump
	j	bp_label_87
	#marker Label
bp_label_87:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_88
	#marker Label
bp_label_88:
	#marker Label
bp_label_89:
	#Getting Var falue for [Exp->id]: target offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#			 __allocating reg $t1
	li	$t1,0
	beq $t0, $t1,bp_label_90
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_91
	#marker Label
bp_label_90:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_29
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	sw $t0, ($fp)
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_89
bp_label_91:
	#end of statement jump
	j	bp_label_93
	#marker Label
bp_label_92:
	#end of ifelse
bp_label_93:
	#end of statement jump
	j	bp_label_94
bp_label_94:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
