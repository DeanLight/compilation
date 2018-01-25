.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "var is true :)\n"
string_label_1:	.asciiz "var is true :)\n"
string_label_2:	.asciiz "var is false :(\n"
string_label_3:	.asciiz "var is false :(\n"
.text
	#first program point
main:
	#initialize fp
	move	$fp,$sp
	jal	label_159
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
	#Func funBool:
label_29:
	#Getting Var falue for [Exp->id]: var offset is 4($fp)
	#			 __allocating reg $t0
	lw $t0, 4($fp)
	#a Bool Var var in boolean operator
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
	#marker Label
bp_label_1:
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
	j	bp_label_4
	#marker Label
bp_label_2:
	#func header store regs before call
	#stored 0 registers
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
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling print
	#end of statement jump
	j	bp_label_4
	#end of ifelse
bp_label_4:
	#end of statement jump
	j	bp_label_5
bp_label_5:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func True:
label_115:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_7
	#return noneVoid in v0
	#returning from a boolean function
bp_label_7:
	li	$v0,1
	j	bp_label_6
bp_label_8:
	li	$v0,0
bp_label_6:
	move	$sp,$fp
	jr	$ra
bp_label_9:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func False:
label_137:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_12
	#return noneVoid in v0
	#returning from a boolean function
bp_label_11:
	li	$v0,1
	j	bp_label_10
bp_label_12:
	li	$v0,0
bp_label_10:
	move	$sp,$fp
	jr	$ra
bp_label_13:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func main:
label_159:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
bExpAss_nfjdn0:
	#assigning True to t
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_14
bExpAss_nfjdn1:
	#assigning False to t
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_14
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_14
	#marker Label
bp_label_14:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
bExpAss_nfjdn2:
	#assigning True to f
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -4($fp)
	j	bp_label_15
bExpAss_nfjdn3:
	#assigning False to f
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -4($fp)
	j	bp_label_15
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_15
	#marker Label
bp_label_15:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#marker Label
bp_label_16:
	#Moving True into new Param Reg
	#			 __allocating reg $t0
	li	$t0,1
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_17
	#marker Label
bp_label_17:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_19
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_21
	#marker Label
bp_label_18:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_19:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_20
	#inserting 0 to param reg if evaluates to false
bp_label_21:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_20:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_22
	#marker Label
bp_label_22:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_24
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_26
	#marker Label
bp_label_23:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_24:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_25
	#inserting 0 to param reg if evaluates to false
bp_label_26:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_25:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_27
	#marker Label
bp_label_27:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_28
	j	bp_label_28
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_28:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_29
	#marker Label
bp_label_29:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#marker Label
bp_label_30:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_31
	#marker Label
bp_label_31:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#marker Label
bp_label_32:
	#Moving False into new Param Reg
	#			 __allocating reg $t0
	li	$t0,0
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_33
	#marker Label
bp_label_33:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	blt $t0, $t1,bp_label_35
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_37
	#marker Label
bp_label_34:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_35:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_36
	#inserting 0 to param reg if evaluates to false
bp_label_37:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_36:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_38
	#marker Label
bp_label_38:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_40
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_42
	#marker Label
bp_label_39:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_40:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_41
	#inserting 0 to param reg if evaluates to false
bp_label_42:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_41:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_43
	#marker Label
bp_label_43:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_44
	j	bp_label_44
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_44:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_45
	#marker Label
bp_label_45:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#marker Label
bp_label_46:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_47
	#marker Label
bp_label_47:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_48
	#marker Label
bp_label_48:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_52
	#reach And derivation
	#marker Label
bp_label_49:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_50:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_51
	#inserting 0 to param reg if evaluates to false
bp_label_52:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_51:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_53
	#marker Label
bp_label_53:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_54
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_58
	#marker Label
bp_label_54:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_58
	#reach And derivation
	#marker Label
bp_label_55:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_56:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_57
	#inserting 0 to param reg if evaluates to false
bp_label_58:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_57:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_59
	#marker Label
bp_label_59:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_60
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_64
	#marker Label
bp_label_60:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_64
	#reach And derivation
	#marker Label
bp_label_61:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_62:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_63
	#inserting 0 to param reg if evaluates to false
bp_label_64:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_63:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_65
	#marker Label
bp_label_65:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_66
	j	bp_label_70
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_66:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_70
	#reach And derivation
	#marker Label
bp_label_67:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_68:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_69
	#inserting 0 to param reg if evaluates to false
bp_label_70:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_69:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_71
	#marker Label
bp_label_71:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_72
	#			 __freeing reg $t0
	#If False
	j	bp_label_76
	#marker Label
bp_label_72:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_76
	#reach And derivation
	#marker Label
bp_label_73:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_74:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_75
	#inserting 0 to param reg if evaluates to false
bp_label_76:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_75:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_77
	#marker Label
bp_label_77:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_78
	#marker Label
bp_label_78:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_80
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_82
	#reach And derivation
	#marker Label
bp_label_79:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_80:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_81
	#inserting 0 to param reg if evaluates to false
bp_label_82:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_81:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_83
	#marker Label
bp_label_83:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_84
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_88
	#marker Label
bp_label_84:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_86
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_88
	#reach And derivation
	#marker Label
bp_label_85:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_86:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_87
	#inserting 0 to param reg if evaluates to false
bp_label_88:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_87:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_89
	#marker Label
bp_label_89:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_90
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_94
	#marker Label
bp_label_90:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_92
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_94
	#reach And derivation
	#marker Label
bp_label_91:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_92:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_93
	#inserting 0 to param reg if evaluates to false
bp_label_94:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_93:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_95
	#marker Label
bp_label_95:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_96
	j	bp_label_100
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_96:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_98
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_100
	#reach And derivation
	#marker Label
bp_label_97:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_98:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_99
	#inserting 0 to param reg if evaluates to false
bp_label_100:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_99:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_101
	#marker Label
bp_label_101:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_102
	#			 __freeing reg $t0
	#If False
	j	bp_label_106
	#marker Label
bp_label_102:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_104
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_106
	#reach And derivation
	#marker Label
bp_label_103:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_104:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_105
	#inserting 0 to param reg if evaluates to false
bp_label_106:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_105:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_107
	#marker Label
bp_label_107:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_108
	#marker Label
bp_label_108:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_110
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_112
	#reach And derivation
	#marker Label
bp_label_109:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_110:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_111
	#inserting 0 to param reg if evaluates to false
bp_label_112:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_111:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_113
	#marker Label
bp_label_113:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_114
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_118
	#marker Label
bp_label_114:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_116
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_118
	#reach And derivation
	#marker Label
bp_label_115:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_116:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_117
	#inserting 0 to param reg if evaluates to false
bp_label_118:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_117:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_119
	#marker Label
bp_label_119:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_120
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_124
	#marker Label
bp_label_120:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_122
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_124
	#reach And derivation
	#marker Label
bp_label_121:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_122:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_123
	#inserting 0 to param reg if evaluates to false
bp_label_124:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_123:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_125
	#marker Label
bp_label_125:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_126
	j	bp_label_130
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_126:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_128
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_130
	#reach And derivation
	#marker Label
bp_label_127:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_128:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_129
	#inserting 0 to param reg if evaluates to false
bp_label_130:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_129:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_131
	#marker Label
bp_label_131:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_132
	#			 __freeing reg $t0
	#If False
	j	bp_label_136
	#marker Label
bp_label_132:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_134
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_136
	#reach And derivation
	#marker Label
bp_label_133:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_134:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_135
	#inserting 0 to param reg if evaluates to false
bp_label_136:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_135:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_137
	#marker Label
bp_label_137:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_138
	#marker Label
bp_label_138:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_140
	j	bp_label_142
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_139:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_140:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_141
	#inserting 0 to param reg if evaluates to false
bp_label_142:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_141:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_143
	#marker Label
bp_label_143:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_144
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_148
	#marker Label
bp_label_144:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_146
	j	bp_label_148
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_145:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_146:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_147
	#inserting 0 to param reg if evaluates to false
bp_label_148:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_147:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_149
	#marker Label
bp_label_149:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_150
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_154
	#marker Label
bp_label_150:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_152
	j	bp_label_154
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_151:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_152:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_153
	#inserting 0 to param reg if evaluates to false
bp_label_154:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_153:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_155
	#marker Label
bp_label_155:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_156
	j	bp_label_160
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_156:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_158
	j	bp_label_160
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_157:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_158:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_159
	#inserting 0 to param reg if evaluates to false
bp_label_160:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_159:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_161
	#marker Label
bp_label_161:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_162
	#			 __freeing reg $t0
	#If False
	j	bp_label_166
	#marker Label
bp_label_162:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_164
	j	bp_label_166
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_163:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_164:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_165
	#inserting 0 to param reg if evaluates to false
bp_label_166:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_165:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_167
	#marker Label
bp_label_167:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_168
	#marker Label
bp_label_168:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_170
	#			 __freeing reg $t0
	#If False
	j	bp_label_172
	#reach And derivation
	#marker Label
bp_label_169:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_170:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_171
	#inserting 0 to param reg if evaluates to false
bp_label_172:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_171:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_173
	#marker Label
bp_label_173:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_174
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_178
	#marker Label
bp_label_174:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_176
	#			 __freeing reg $t0
	#If False
	j	bp_label_178
	#reach And derivation
	#marker Label
bp_label_175:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_176:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_177
	#inserting 0 to param reg if evaluates to false
bp_label_178:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_177:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_179
	#marker Label
bp_label_179:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_180
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_184
	#marker Label
bp_label_180:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_182
	#			 __freeing reg $t0
	#If False
	j	bp_label_184
	#reach And derivation
	#marker Label
bp_label_181:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_182:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_183
	#inserting 0 to param reg if evaluates to false
bp_label_184:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_183:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_185
	#marker Label
bp_label_185:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_186
	j	bp_label_190
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_186:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_188
	#			 __freeing reg $t0
	#If False
	j	bp_label_190
	#reach And derivation
	#marker Label
bp_label_187:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_188:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_189
	#inserting 0 to param reg if evaluates to false
bp_label_190:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_189:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_191
	#marker Label
bp_label_191:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_192
	#			 __freeing reg $t0
	#If False
	j	bp_label_196
	#marker Label
bp_label_192:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_194
	#			 __freeing reg $t0
	#If False
	j	bp_label_196
	#reach And derivation
	#marker Label
bp_label_193:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_194:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_195
	#inserting 0 to param reg if evaluates to false
bp_label_196:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_195:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_197
	#marker Label
bp_label_197:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_198
	#marker Label
bp_label_198:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_200
	#reach Or derivation
	#marker Label
bp_label_199:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_200:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_201
	#inserting 0 to param reg if evaluates to false
bp_label_202:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_201:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_203
	#marker Label
bp_label_203:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_206
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_204
	#marker Label
bp_label_204:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_206
	#reach Or derivation
	#marker Label
bp_label_205:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_206:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_207
	#inserting 0 to param reg if evaluates to false
bp_label_208:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_207:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_209
	#marker Label
bp_label_209:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_212
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_210
	#marker Label
bp_label_210:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_212
	#reach Or derivation
	#marker Label
bp_label_211:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_212:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_213
	#inserting 0 to param reg if evaluates to false
bp_label_214:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_213:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_215
	#marker Label
bp_label_215:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_218
	j	bp_label_216
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_216:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_218
	#reach Or derivation
	#marker Label
bp_label_217:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_218:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_219
	#inserting 0 to param reg if evaluates to false
bp_label_220:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_219:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_221
	#marker Label
bp_label_221:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_224
	#			 __freeing reg $t0
	#If False
	j	bp_label_222
	#marker Label
bp_label_222:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_224
	#reach Or derivation
	#marker Label
bp_label_223:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_224:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_225
	#inserting 0 to param reg if evaluates to false
bp_label_226:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_225:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_227
	#marker Label
bp_label_227:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_228
	#marker Label
bp_label_228:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_230
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_232
	#reach Or derivation
	#marker Label
bp_label_229:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_230:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_231
	#inserting 0 to param reg if evaluates to false
bp_label_232:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_231:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_233
	#marker Label
bp_label_233:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_236
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_234
	#marker Label
bp_label_234:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_236
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_238
	#reach Or derivation
	#marker Label
bp_label_235:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_236:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_237
	#inserting 0 to param reg if evaluates to false
bp_label_238:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_237:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_239
	#marker Label
bp_label_239:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_242
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_240
	#marker Label
bp_label_240:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_242
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_244
	#reach Or derivation
	#marker Label
bp_label_241:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_242:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_243
	#inserting 0 to param reg if evaluates to false
bp_label_244:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_243:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_245
	#marker Label
bp_label_245:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_248
	j	bp_label_246
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_246:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_248
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_250
	#reach Or derivation
	#marker Label
bp_label_247:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_248:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_249
	#inserting 0 to param reg if evaluates to false
bp_label_250:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_249:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_251
	#marker Label
bp_label_251:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_254
	#			 __freeing reg $t0
	#If False
	j	bp_label_252
	#marker Label
bp_label_252:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_254
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_256
	#reach Or derivation
	#marker Label
bp_label_253:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_254:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_255
	#inserting 0 to param reg if evaluates to false
bp_label_256:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_255:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_257
	#marker Label
bp_label_257:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_258
	#marker Label
bp_label_258:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_260
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_262
	#reach Or derivation
	#marker Label
bp_label_259:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_260:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_261
	#inserting 0 to param reg if evaluates to false
bp_label_262:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_261:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_263
	#marker Label
bp_label_263:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_266
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_264
	#marker Label
bp_label_264:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_266
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_268
	#reach Or derivation
	#marker Label
bp_label_265:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_266:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_267
	#inserting 0 to param reg if evaluates to false
bp_label_268:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_267:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_269
	#marker Label
bp_label_269:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_272
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_270
	#marker Label
bp_label_270:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_272
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_274
	#reach Or derivation
	#marker Label
bp_label_271:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_272:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_273
	#inserting 0 to param reg if evaluates to false
bp_label_274:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_273:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_275
	#marker Label
bp_label_275:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_278
	j	bp_label_276
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_276:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_278
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_280
	#reach Or derivation
	#marker Label
bp_label_277:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_278:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_279
	#inserting 0 to param reg if evaluates to false
bp_label_280:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_279:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_281
	#marker Label
bp_label_281:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_284
	#			 __freeing reg $t0
	#If False
	j	bp_label_282
	#marker Label
bp_label_282:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_284
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_286
	#reach Or derivation
	#marker Label
bp_label_283:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_284:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_285
	#inserting 0 to param reg if evaluates to false
bp_label_286:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_285:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_287
	#marker Label
bp_label_287:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_288
	#marker Label
bp_label_288:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_290
	j	bp_label_292
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_289:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_290:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_291
	#inserting 0 to param reg if evaluates to false
bp_label_292:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_291:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_293
	#marker Label
bp_label_293:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_296
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_294
	#marker Label
bp_label_294:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_296
	j	bp_label_298
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_295:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_296:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_297
	#inserting 0 to param reg if evaluates to false
bp_label_298:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_297:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_299
	#marker Label
bp_label_299:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_302
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_300
	#marker Label
bp_label_300:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_302
	j	bp_label_304
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_301:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_302:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_303
	#inserting 0 to param reg if evaluates to false
bp_label_304:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_303:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_305
	#marker Label
bp_label_305:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_308
	j	bp_label_306
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_306:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_308
	j	bp_label_310
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_307:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_308:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_309
	#inserting 0 to param reg if evaluates to false
bp_label_310:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_309:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_311
	#marker Label
bp_label_311:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_314
	#			 __freeing reg $t0
	#If False
	j	bp_label_312
	#marker Label
bp_label_312:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_314
	j	bp_label_316
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_313:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_314:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_315
	#inserting 0 to param reg if evaluates to false
bp_label_316:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_315:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_317
	#marker Label
bp_label_317:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_318
	#marker Label
bp_label_318:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_320
	#			 __freeing reg $t0
	#If False
	j	bp_label_322
	#reach Or derivation
	#marker Label
bp_label_319:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_320:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_321
	#inserting 0 to param reg if evaluates to false
bp_label_322:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_321:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_323
	#marker Label
bp_label_323:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_326
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_324
	#marker Label
bp_label_324:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_326
	#			 __freeing reg $t0
	#If False
	j	bp_label_328
	#reach Or derivation
	#marker Label
bp_label_325:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_326:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_327
	#inserting 0 to param reg if evaluates to false
bp_label_328:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_327:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_329
	#marker Label
bp_label_329:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_332
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_330
	#marker Label
bp_label_330:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_332
	#			 __freeing reg $t0
	#If False
	j	bp_label_334
	#reach Or derivation
	#marker Label
bp_label_331:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_332:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_333
	#inserting 0 to param reg if evaluates to false
bp_label_334:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_333:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_335
	#marker Label
bp_label_335:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_338
	j	bp_label_336
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_336:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_338
	#			 __freeing reg $t0
	#If False
	j	bp_label_340
	#reach Or derivation
	#marker Label
bp_label_337:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_338:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_339
	#inserting 0 to param reg if evaluates to false
bp_label_340:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_339:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_341
	#marker Label
bp_label_341:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_344
	#			 __freeing reg $t0
	#If False
	j	bp_label_342
	#marker Label
bp_label_342:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_344
	#			 __freeing reg $t0
	#If False
	j	bp_label_346
	#reach Or derivation
	#marker Label
bp_label_343:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_344:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_345
	#inserting 0 to param reg if evaluates to false
bp_label_346:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_345:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_347
	#marker Label
bp_label_347:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_348
	#marker Label
bp_label_348:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_350
	#reach And derivation
	#marker Label
bp_label_349:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_350:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_351
	#inserting 0 to param reg if evaluates to false
bp_label_352:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_351:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_353
	#marker Label
bp_label_353:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_354
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_358
	#marker Label
bp_label_354:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_356
	#reach And derivation
	#marker Label
bp_label_355:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_356:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_357
	#inserting 0 to param reg if evaluates to false
bp_label_358:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_357:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_359
	#marker Label
bp_label_359:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_360
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_364
	#marker Label
bp_label_360:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_362
	#reach And derivation
	#marker Label
bp_label_361:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_362:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_363
	#inserting 0 to param reg if evaluates to false
bp_label_364:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_363:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_365
	#marker Label
bp_label_365:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_366
	j	bp_label_370
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_366:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_368
	#reach And derivation
	#marker Label
bp_label_367:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_368:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_369
	#inserting 0 to param reg if evaluates to false
bp_label_370:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_369:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_371
	#marker Label
bp_label_371:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_372
	#			 __freeing reg $t0
	#If False
	j	bp_label_376
	#marker Label
bp_label_372:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_374
	#reach And derivation
	#marker Label
bp_label_373:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_374:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_375
	#inserting 0 to param reg if evaluates to false
bp_label_376:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_375:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_377
	#marker Label
bp_label_377:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_378
	#marker Label
bp_label_378:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_380
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_382
	#reach And derivation
	#marker Label
bp_label_379:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_380:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_381
	#inserting 0 to param reg if evaluates to false
bp_label_382:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_381:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_383
	#marker Label
bp_label_383:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_384
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_388
	#marker Label
bp_label_384:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_386
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_388
	#reach And derivation
	#marker Label
bp_label_385:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_386:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_387
	#inserting 0 to param reg if evaluates to false
bp_label_388:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_387:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_389
	#marker Label
bp_label_389:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_390
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_394
	#marker Label
bp_label_390:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_392
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_394
	#reach And derivation
	#marker Label
bp_label_391:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_392:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_393
	#inserting 0 to param reg if evaluates to false
bp_label_394:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_393:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_395
	#marker Label
bp_label_395:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_396
	j	bp_label_400
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_396:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_398
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_400
	#reach And derivation
	#marker Label
bp_label_397:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_398:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_399
	#inserting 0 to param reg if evaluates to false
bp_label_400:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_399:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_401
	#marker Label
bp_label_401:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_402
	#			 __freeing reg $t0
	#If False
	j	bp_label_406
	#marker Label
bp_label_402:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_404
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_406
	#reach And derivation
	#marker Label
bp_label_403:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_404:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_405
	#inserting 0 to param reg if evaluates to false
bp_label_406:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_405:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_407
	#marker Label
bp_label_407:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_408
	#marker Label
bp_label_408:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_410
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_412
	#reach And derivation
	#marker Label
bp_label_409:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_410:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_411
	#inserting 0 to param reg if evaluates to false
bp_label_412:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_411:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_413
	#marker Label
bp_label_413:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_414
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_418
	#marker Label
bp_label_414:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_416
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_418
	#reach And derivation
	#marker Label
bp_label_415:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_416:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_417
	#inserting 0 to param reg if evaluates to false
bp_label_418:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_417:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_419
	#marker Label
bp_label_419:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_420
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_424
	#marker Label
bp_label_420:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_422
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_424
	#reach And derivation
	#marker Label
bp_label_421:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_422:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_423
	#inserting 0 to param reg if evaluates to false
bp_label_424:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_423:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_425
	#marker Label
bp_label_425:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_426
	j	bp_label_430
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_426:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_428
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_430
	#reach And derivation
	#marker Label
bp_label_427:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_428:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_429
	#inserting 0 to param reg if evaluates to false
bp_label_430:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_429:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_431
	#marker Label
bp_label_431:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_432
	#			 __freeing reg $t0
	#If False
	j	bp_label_436
	#marker Label
bp_label_432:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_434
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_436
	#reach And derivation
	#marker Label
bp_label_433:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_434:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_435
	#inserting 0 to param reg if evaluates to false
bp_label_436:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_435:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_437
	#marker Label
bp_label_437:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_438
	#marker Label
bp_label_438:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_440
	j	bp_label_442
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_439:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_440:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_441
	#inserting 0 to param reg if evaluates to false
bp_label_442:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_441:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_443
	#marker Label
bp_label_443:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_444
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_448
	#marker Label
bp_label_444:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_446
	j	bp_label_448
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_445:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_446:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_447
	#inserting 0 to param reg if evaluates to false
bp_label_448:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_447:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_449
	#marker Label
bp_label_449:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_450
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_454
	#marker Label
bp_label_450:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_452
	j	bp_label_454
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_451:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_452:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_453
	#inserting 0 to param reg if evaluates to false
bp_label_454:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_453:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_455
	#marker Label
bp_label_455:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_456
	j	bp_label_460
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_456:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_458
	j	bp_label_460
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_457:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_458:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_459
	#inserting 0 to param reg if evaluates to false
bp_label_460:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_459:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_461
	#marker Label
bp_label_461:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_462
	#			 __freeing reg $t0
	#If False
	j	bp_label_466
	#marker Label
bp_label_462:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_464
	j	bp_label_466
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_463:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_464:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_465
	#inserting 0 to param reg if evaluates to false
bp_label_466:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_465:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_467
	#marker Label
bp_label_467:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_468
	#marker Label
bp_label_468:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_470
	#			 __freeing reg $t0
	#If False
	j	bp_label_472
	#reach And derivation
	#marker Label
bp_label_469:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_470:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_471
	#inserting 0 to param reg if evaluates to false
bp_label_472:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_471:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_473
	#marker Label
bp_label_473:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_474
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_478
	#marker Label
bp_label_474:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_476
	#			 __freeing reg $t0
	#If False
	j	bp_label_478
	#reach And derivation
	#marker Label
bp_label_475:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_476:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_477
	#inserting 0 to param reg if evaluates to false
bp_label_478:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_477:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_479
	#marker Label
bp_label_479:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_480
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_484
	#marker Label
bp_label_480:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_482
	#			 __freeing reg $t0
	#If False
	j	bp_label_484
	#reach And derivation
	#marker Label
bp_label_481:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_482:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_483
	#inserting 0 to param reg if evaluates to false
bp_label_484:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_483:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_485
	#marker Label
bp_label_485:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_486
	j	bp_label_490
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_486:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_488
	#			 __freeing reg $t0
	#If False
	j	bp_label_490
	#reach And derivation
	#marker Label
bp_label_487:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_488:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_489
	#inserting 0 to param reg if evaluates to false
bp_label_490:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_489:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_491
	#marker Label
bp_label_491:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_492
	#			 __freeing reg $t0
	#If False
	j	bp_label_496
	#marker Label
bp_label_492:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_494
	#			 __freeing reg $t0
	#If False
	j	bp_label_496
	#reach And derivation
	#marker Label
bp_label_493:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_494:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_495
	#inserting 0 to param reg if evaluates to false
bp_label_496:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_495:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_497
	#marker Label
bp_label_497:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_498
	#marker Label
bp_label_498:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_502
	#reach Or derivation
	#marker Label
bp_label_499:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_500:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_501
	#inserting 0 to param reg if evaluates to false
bp_label_502:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_501:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_503
	#marker Label
bp_label_503:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_506
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_504
	#marker Label
bp_label_504:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_508
	#reach Or derivation
	#marker Label
bp_label_505:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_506:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_507
	#inserting 0 to param reg if evaluates to false
bp_label_508:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_507:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_509
	#marker Label
bp_label_509:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_512
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_510
	#marker Label
bp_label_510:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_514
	#reach Or derivation
	#marker Label
bp_label_511:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_512:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_513
	#inserting 0 to param reg if evaluates to false
bp_label_514:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_513:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_515
	#marker Label
bp_label_515:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_518
	j	bp_label_516
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_516:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_520
	#reach Or derivation
	#marker Label
bp_label_517:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_518:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_519
	#inserting 0 to param reg if evaluates to false
bp_label_520:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_519:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_521
	#marker Label
bp_label_521:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_524
	#			 __freeing reg $t0
	#If False
	j	bp_label_522
	#marker Label
bp_label_522:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_526
	#reach Or derivation
	#marker Label
bp_label_523:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_524:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_525
	#inserting 0 to param reg if evaluates to false
bp_label_526:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_525:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_527
	#marker Label
bp_label_527:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_528
	#marker Label
bp_label_528:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_530
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_532
	#reach Or derivation
	#marker Label
bp_label_529:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_530:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_531
	#inserting 0 to param reg if evaluates to false
bp_label_532:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_531:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_533
	#marker Label
bp_label_533:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_536
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_534
	#marker Label
bp_label_534:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_536
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_538
	#reach Or derivation
	#marker Label
bp_label_535:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_536:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_537
	#inserting 0 to param reg if evaluates to false
bp_label_538:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_537:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_539
	#marker Label
bp_label_539:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_542
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_540
	#marker Label
bp_label_540:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_542
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_544
	#reach Or derivation
	#marker Label
bp_label_541:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_542:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_543
	#inserting 0 to param reg if evaluates to false
bp_label_544:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_543:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_545
	#marker Label
bp_label_545:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_548
	j	bp_label_546
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_546:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_548
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_550
	#reach Or derivation
	#marker Label
bp_label_547:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_548:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_549
	#inserting 0 to param reg if evaluates to false
bp_label_550:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_549:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_551
	#marker Label
bp_label_551:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_554
	#			 __freeing reg $t0
	#If False
	j	bp_label_552
	#marker Label
bp_label_552:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_554
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_556
	#reach Or derivation
	#marker Label
bp_label_553:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_554:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_555
	#inserting 0 to param reg if evaluates to false
bp_label_556:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_555:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_557
	#marker Label
bp_label_557:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_558
	#marker Label
bp_label_558:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_560
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_562
	#reach Or derivation
	#marker Label
bp_label_559:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_560:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_561
	#inserting 0 to param reg if evaluates to false
bp_label_562:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_561:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_563
	#marker Label
bp_label_563:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_566
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_564
	#marker Label
bp_label_564:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_566
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_568
	#reach Or derivation
	#marker Label
bp_label_565:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_566:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_567
	#inserting 0 to param reg if evaluates to false
bp_label_568:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_567:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_569
	#marker Label
bp_label_569:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_572
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_570
	#marker Label
bp_label_570:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_572
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_574
	#reach Or derivation
	#marker Label
bp_label_571:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_572:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_573
	#inserting 0 to param reg if evaluates to false
bp_label_574:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_573:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_575
	#marker Label
bp_label_575:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_578
	j	bp_label_576
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_576:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_578
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_580
	#reach Or derivation
	#marker Label
bp_label_577:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_578:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_579
	#inserting 0 to param reg if evaluates to false
bp_label_580:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_579:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_581
	#marker Label
bp_label_581:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_584
	#			 __freeing reg $t0
	#If False
	j	bp_label_582
	#marker Label
bp_label_582:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_584
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_586
	#reach Or derivation
	#marker Label
bp_label_583:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_584:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_585
	#inserting 0 to param reg if evaluates to false
bp_label_586:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_585:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_587
	#marker Label
bp_label_587:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_588
	#marker Label
bp_label_588:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_590
	j	bp_label_592
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_589:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_590:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_591
	#inserting 0 to param reg if evaluates to false
bp_label_592:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_591:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_593
	#marker Label
bp_label_593:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_596
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_594
	#marker Label
bp_label_594:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_596
	j	bp_label_598
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_595:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_596:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_597
	#inserting 0 to param reg if evaluates to false
bp_label_598:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_597:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_599
	#marker Label
bp_label_599:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_602
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_600
	#marker Label
bp_label_600:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_602
	j	bp_label_604
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_601:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_602:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_603
	#inserting 0 to param reg if evaluates to false
bp_label_604:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_603:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_605
	#marker Label
bp_label_605:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_608
	j	bp_label_606
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_606:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_608
	j	bp_label_610
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_607:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_608:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_609
	#inserting 0 to param reg if evaluates to false
bp_label_610:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_609:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_611
	#marker Label
bp_label_611:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_614
	#			 __freeing reg $t0
	#If False
	j	bp_label_612
	#marker Label
bp_label_612:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_614
	j	bp_label_616
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_613:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_614:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_615
	#inserting 0 to param reg if evaluates to false
bp_label_616:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_615:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_617
	#marker Label
bp_label_617:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_618
	#marker Label
bp_label_618:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_620
	#			 __freeing reg $t0
	#If False
	j	bp_label_622
	#reach Or derivation
	#marker Label
bp_label_619:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_620:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_621
	#inserting 0 to param reg if evaluates to false
bp_label_622:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_621:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_623
	#marker Label
bp_label_623:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_626
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_624
	#marker Label
bp_label_624:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_626
	#			 __freeing reg $t0
	#If False
	j	bp_label_628
	#reach Or derivation
	#marker Label
bp_label_625:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_626:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_627
	#inserting 0 to param reg if evaluates to false
bp_label_628:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_627:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_629
	#marker Label
bp_label_629:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_632
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_630
	#marker Label
bp_label_630:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_632
	#			 __freeing reg $t0
	#If False
	j	bp_label_634
	#reach Or derivation
	#marker Label
bp_label_631:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_632:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_633
	#inserting 0 to param reg if evaluates to false
bp_label_634:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_633:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_635
	#marker Label
bp_label_635:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_638
	j	bp_label_636
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_636:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_638
	#			 __freeing reg $t0
	#If False
	j	bp_label_640
	#reach Or derivation
	#marker Label
bp_label_637:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_638:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_639
	#inserting 0 to param reg if evaluates to false
bp_label_640:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_639:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_641
	#marker Label
bp_label_641:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_644
	#			 __freeing reg $t0
	#If False
	j	bp_label_642
	#marker Label
bp_label_642:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_644
	#			 __freeing reg $t0
	#If False
	j	bp_label_646
	#reach Or derivation
	#marker Label
bp_label_643:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_644:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_645
	#inserting 0 to param reg if evaluates to false
bp_label_646:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_645:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_647
	#marker Label
bp_label_647:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,3
	#			 __allocating reg $t1
	li	$t1,9
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,5
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,18
	#			 __allocating reg $t2
	li	$t2,9
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	bgt $t0, $t1,bp_label_648
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_652
	#marker Label
bp_label_648:
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,12
	#			 __allocating reg $t2
	li	$t2,2
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	beq $t0, $t1,bp_label_650
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_652
	#reach And derivation
	#marker Label
bp_label_649:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_650:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_651
	#inserting 0 to param reg if evaluates to false
bp_label_652:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_651:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_653
	#marker Label
bp_label_653:
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
	li	$t1,12
	#			 __allocating reg $t2
	li	$t2,2
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	beq $t0, $t1,bp_label_654
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_658
	#marker Label
bp_label_654:
	#			 __allocating reg $t0
	li	$t0,3
	#			 __allocating reg $t1
	li	$t1,9
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,5
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,18
	#			 __allocating reg $t2
	li	$t2,9
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	bgt $t0, $t1,bp_label_656
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_658
	#reach And derivation
	#marker Label
bp_label_655:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_656:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_657
	#inserting 0 to param reg if evaluates to false
bp_label_658:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_657:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_659
	#marker Label
bp_label_659:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,3
	#			 __allocating reg $t1
	li	$t1,9
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,5
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,18
	#			 __allocating reg $t2
	li	$t2,9
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	blt $t0, $t1,bp_label_662
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_660
	#marker Label
bp_label_660:
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,12
	#			 __allocating reg $t2
	li	$t2,2
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	bne $t0, $t1,bp_label_662
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_664
	#reach Or derivation
	#marker Label
bp_label_661:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_662:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_663
	#inserting 0 to param reg if evaluates to false
bp_label_664:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_663:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_665
	#marker Label
bp_label_665:
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
	li	$t1,12
	#			 __allocating reg $t2
	li	$t2,2
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	bne $t0, $t1,bp_label_668
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_666
	#marker Label
bp_label_666:
	#			 __allocating reg $t0
	li	$t0,3
	#			 __allocating reg $t1
	li	$t1,9
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,5
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,18
	#			 __allocating reg $t2
	li	$t2,9
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	blt $t0, $t1,bp_label_668
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_670
	#reach Or derivation
	#marker Label
bp_label_667:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_668:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_669
	#inserting 0 to param reg if evaluates to false
bp_label_670:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_669:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_671
	#marker Label
bp_label_671:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_675
	#marker Label
bp_label_672:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_673:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_674
	#inserting 0 to param reg if evaluates to false
bp_label_675:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_674:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_676
	#marker Label
bp_label_676:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_680
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_678
	#marker Label
bp_label_677:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_678:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_679
	#inserting 0 to param reg if evaluates to false
bp_label_680:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_679:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_681
	#marker Label
bp_label_681:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_685
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_683
	#marker Label
bp_label_682:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_683:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_684
	#inserting 0 to param reg if evaluates to false
bp_label_685:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_684:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_686
	#marker Label
bp_label_686:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_690
	j	bp_label_688
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_687:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_688:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_689
	#inserting 0 to param reg if evaluates to false
bp_label_690:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_689:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_691
	#marker Label
bp_label_691:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_695
	#			 __freeing reg $t0
	#If False
	j	bp_label_693
	#marker Label
bp_label_692:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_693:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_694
	#inserting 0 to param reg if evaluates to false
bp_label_695:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_694:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_696
	#marker Label
bp_label_696:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_698
	#marker Label
bp_label_697:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_698:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_699
	#inserting 0 to param reg if evaluates to false
bp_label_700:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_699:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_701
	#marker Label
bp_label_701:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	blt $t0, $t1,bp_label_705
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_703
	#marker Label
bp_label_702:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_703:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_704
	#inserting 0 to param reg if evaluates to false
bp_label_705:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_704:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_706
	#marker Label
bp_label_706:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_710
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_708
	#marker Label
bp_label_707:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_708:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_709
	#inserting 0 to param reg if evaluates to false
bp_label_710:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_709:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_711
	#marker Label
bp_label_711:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_715
	j	bp_label_713
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_712:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_713:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_714
	#inserting 0 to param reg if evaluates to false
bp_label_715:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_714:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_716
	#marker Label
bp_label_716:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_720
	#			 __freeing reg $t0
	#If False
	j	bp_label_718
	#marker Label
bp_label_717:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_718:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_719
	#inserting 0 to param reg if evaluates to false
bp_label_720:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_719:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_721
	#marker Label
bp_label_721:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_722
	#marker Label
bp_label_722:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_724
	#reach And derivation
	#marker Label
bp_label_723:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_724:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_725
	#inserting 0 to param reg if evaluates to false
bp_label_726:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_725:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_727
	#marker Label
bp_label_727:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_728
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_730
	#marker Label
bp_label_728:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_730
	#reach And derivation
	#marker Label
bp_label_729:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_730:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_731
	#inserting 0 to param reg if evaluates to false
bp_label_732:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_731:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_733
	#marker Label
bp_label_733:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_734
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_736
	#marker Label
bp_label_734:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_736
	#reach And derivation
	#marker Label
bp_label_735:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_736:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_737
	#inserting 0 to param reg if evaluates to false
bp_label_738:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_737:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_739
	#marker Label
bp_label_739:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_740
	j	bp_label_742
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_740:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_742
	#reach And derivation
	#marker Label
bp_label_741:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_742:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_743
	#inserting 0 to param reg if evaluates to false
bp_label_744:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_743:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_745
	#marker Label
bp_label_745:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_746
	#			 __freeing reg $t0
	#If False
	j	bp_label_748
	#marker Label
bp_label_746:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_748
	#reach And derivation
	#marker Label
bp_label_747:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_748:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_749
	#inserting 0 to param reg if evaluates to false
bp_label_750:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_749:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_751
	#marker Label
bp_label_751:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_752
	#marker Label
bp_label_752:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_756
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_754
	#reach And derivation
	#marker Label
bp_label_753:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_754:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_755
	#inserting 0 to param reg if evaluates to false
bp_label_756:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_755:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_757
	#marker Label
bp_label_757:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_758
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_760
	#marker Label
bp_label_758:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_762
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_760
	#reach And derivation
	#marker Label
bp_label_759:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_760:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_761
	#inserting 0 to param reg if evaluates to false
bp_label_762:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_761:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_763
	#marker Label
bp_label_763:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_764
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_766
	#marker Label
bp_label_764:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_768
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_766
	#reach And derivation
	#marker Label
bp_label_765:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_766:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_767
	#inserting 0 to param reg if evaluates to false
bp_label_768:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_767:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_769
	#marker Label
bp_label_769:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_770
	j	bp_label_772
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_770:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_774
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_772
	#reach And derivation
	#marker Label
bp_label_771:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_772:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_773
	#inserting 0 to param reg if evaluates to false
bp_label_774:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_773:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_775
	#marker Label
bp_label_775:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_776
	#			 __freeing reg $t0
	#If False
	j	bp_label_778
	#marker Label
bp_label_776:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_780
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_778
	#reach And derivation
	#marker Label
bp_label_777:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_778:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_779
	#inserting 0 to param reg if evaluates to false
bp_label_780:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_779:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_781
	#marker Label
bp_label_781:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_782
	#marker Label
bp_label_782:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_786
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_784
	#reach And derivation
	#marker Label
bp_label_783:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_784:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_785
	#inserting 0 to param reg if evaluates to false
bp_label_786:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_785:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_787
	#marker Label
bp_label_787:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_788
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_790
	#marker Label
bp_label_788:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_792
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_790
	#reach And derivation
	#marker Label
bp_label_789:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_790:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_791
	#inserting 0 to param reg if evaluates to false
bp_label_792:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_791:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_793
	#marker Label
bp_label_793:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_794
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_796
	#marker Label
bp_label_794:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_798
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_796
	#reach And derivation
	#marker Label
bp_label_795:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_796:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_797
	#inserting 0 to param reg if evaluates to false
bp_label_798:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_797:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_799
	#marker Label
bp_label_799:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_800
	j	bp_label_802
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_800:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_804
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_802
	#reach And derivation
	#marker Label
bp_label_801:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_802:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_803
	#inserting 0 to param reg if evaluates to false
bp_label_804:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_803:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_805
	#marker Label
bp_label_805:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_806
	#			 __freeing reg $t0
	#If False
	j	bp_label_808
	#marker Label
bp_label_806:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_810
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_808
	#reach And derivation
	#marker Label
bp_label_807:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_808:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_809
	#inserting 0 to param reg if evaluates to false
bp_label_810:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_809:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_811
	#marker Label
bp_label_811:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_812
	#marker Label
bp_label_812:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_816
	j	bp_label_814
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_813:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_814:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_815
	#inserting 0 to param reg if evaluates to false
bp_label_816:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_815:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_817
	#marker Label
bp_label_817:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_818
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_820
	#marker Label
bp_label_818:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_822
	j	bp_label_820
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_819:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_820:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_821
	#inserting 0 to param reg if evaluates to false
bp_label_822:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_821:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_823
	#marker Label
bp_label_823:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_824
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_826
	#marker Label
bp_label_824:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_828
	j	bp_label_826
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_825:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_826:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_827
	#inserting 0 to param reg if evaluates to false
bp_label_828:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_827:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_829
	#marker Label
bp_label_829:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_830
	j	bp_label_832
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_830:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_834
	j	bp_label_832
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_831:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_832:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_833
	#inserting 0 to param reg if evaluates to false
bp_label_834:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_833:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_835
	#marker Label
bp_label_835:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_836
	#			 __freeing reg $t0
	#If False
	j	bp_label_838
	#marker Label
bp_label_836:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_840
	j	bp_label_838
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_837:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_838:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_839
	#inserting 0 to param reg if evaluates to false
bp_label_840:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_839:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_841
	#marker Label
bp_label_841:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_842
	#marker Label
bp_label_842:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_846
	#			 __freeing reg $t0
	#If False
	j	bp_label_844
	#reach And derivation
	#marker Label
bp_label_843:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_844:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_845
	#inserting 0 to param reg if evaluates to false
bp_label_846:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_845:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_847
	#marker Label
bp_label_847:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_848
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_850
	#marker Label
bp_label_848:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_852
	#			 __freeing reg $t0
	#If False
	j	bp_label_850
	#reach And derivation
	#marker Label
bp_label_849:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_850:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_851
	#inserting 0 to param reg if evaluates to false
bp_label_852:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_851:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_853
	#marker Label
bp_label_853:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_854
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_856
	#marker Label
bp_label_854:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_858
	#			 __freeing reg $t0
	#If False
	j	bp_label_856
	#reach And derivation
	#marker Label
bp_label_855:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_856:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_857
	#inserting 0 to param reg if evaluates to false
bp_label_858:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_857:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_859
	#marker Label
bp_label_859:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_860
	j	bp_label_862
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_860:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_864
	#			 __freeing reg $t0
	#If False
	j	bp_label_862
	#reach And derivation
	#marker Label
bp_label_861:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_862:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_863
	#inserting 0 to param reg if evaluates to false
bp_label_864:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_863:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_865
	#marker Label
bp_label_865:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_866
	#			 __freeing reg $t0
	#If False
	j	bp_label_868
	#marker Label
bp_label_866:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_870
	#			 __freeing reg $t0
	#If False
	j	bp_label_868
	#reach And derivation
	#marker Label
bp_label_867:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_868:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_869
	#inserting 0 to param reg if evaluates to false
bp_label_870:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_869:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_871
	#marker Label
bp_label_871:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_872
	#marker Label
bp_label_872:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_876
	#reach Or derivation
	#marker Label
bp_label_873:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_874:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_875
	#inserting 0 to param reg if evaluates to false
bp_label_876:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_875:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_877
	#marker Label
bp_label_877:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_882
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_878
	#marker Label
bp_label_878:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_882
	#reach Or derivation
	#marker Label
bp_label_879:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_880:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_881
	#inserting 0 to param reg if evaluates to false
bp_label_882:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_881:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_883
	#marker Label
bp_label_883:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_888
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_884
	#marker Label
bp_label_884:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_888
	#reach Or derivation
	#marker Label
bp_label_885:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_886:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_887
	#inserting 0 to param reg if evaluates to false
bp_label_888:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_887:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_889
	#marker Label
bp_label_889:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_894
	j	bp_label_890
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_890:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_894
	#reach Or derivation
	#marker Label
bp_label_891:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_892:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_893
	#inserting 0 to param reg if evaluates to false
bp_label_894:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_893:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_895
	#marker Label
bp_label_895:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_900
	#			 __freeing reg $t0
	#If False
	j	bp_label_896
	#marker Label
bp_label_896:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_900
	#reach Or derivation
	#marker Label
bp_label_897:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_898:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_899
	#inserting 0 to param reg if evaluates to false
bp_label_900:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_899:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_901
	#marker Label
bp_label_901:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_902
	#marker Label
bp_label_902:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_906
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_904
	#reach Or derivation
	#marker Label
bp_label_903:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_904:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_905
	#inserting 0 to param reg if evaluates to false
bp_label_906:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_905:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_907
	#marker Label
bp_label_907:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_912
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_908
	#marker Label
bp_label_908:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_912
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_910
	#reach Or derivation
	#marker Label
bp_label_909:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_910:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_911
	#inserting 0 to param reg if evaluates to false
bp_label_912:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_911:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_913
	#marker Label
bp_label_913:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_918
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_914
	#marker Label
bp_label_914:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_918
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_916
	#reach Or derivation
	#marker Label
bp_label_915:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_916:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_917
	#inserting 0 to param reg if evaluates to false
bp_label_918:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_917:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_919
	#marker Label
bp_label_919:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_924
	j	bp_label_920
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_920:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_924
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_922
	#reach Or derivation
	#marker Label
bp_label_921:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_922:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_923
	#inserting 0 to param reg if evaluates to false
bp_label_924:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_923:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_925
	#marker Label
bp_label_925:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_930
	#			 __freeing reg $t0
	#If False
	j	bp_label_926
	#marker Label
bp_label_926:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_930
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_928
	#reach Or derivation
	#marker Label
bp_label_927:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_928:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_929
	#inserting 0 to param reg if evaluates to false
bp_label_930:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_929:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_931
	#marker Label
bp_label_931:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_932
	#marker Label
bp_label_932:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_936
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_934
	#reach Or derivation
	#marker Label
bp_label_933:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_934:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_935
	#inserting 0 to param reg if evaluates to false
bp_label_936:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_935:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_937
	#marker Label
bp_label_937:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_942
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_938
	#marker Label
bp_label_938:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_942
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_940
	#reach Or derivation
	#marker Label
bp_label_939:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_940:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_941
	#inserting 0 to param reg if evaluates to false
bp_label_942:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_941:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_943
	#marker Label
bp_label_943:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_948
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_944
	#marker Label
bp_label_944:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_948
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_946
	#reach Or derivation
	#marker Label
bp_label_945:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_946:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_947
	#inserting 0 to param reg if evaluates to false
bp_label_948:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_947:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_949
	#marker Label
bp_label_949:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_954
	j	bp_label_950
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_950:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_954
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_952
	#reach Or derivation
	#marker Label
bp_label_951:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_952:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_953
	#inserting 0 to param reg if evaluates to false
bp_label_954:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_953:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_955
	#marker Label
bp_label_955:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_960
	#			 __freeing reg $t0
	#If False
	j	bp_label_956
	#marker Label
bp_label_956:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_960
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_958
	#reach Or derivation
	#marker Label
bp_label_957:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_958:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_959
	#inserting 0 to param reg if evaluates to false
bp_label_960:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_959:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_961
	#marker Label
bp_label_961:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_962
	#marker Label
bp_label_962:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_966
	j	bp_label_964
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_963:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_964:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_965
	#inserting 0 to param reg if evaluates to false
bp_label_966:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_965:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_967
	#marker Label
bp_label_967:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_972
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_968
	#marker Label
bp_label_968:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_972
	j	bp_label_970
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_969:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_970:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_971
	#inserting 0 to param reg if evaluates to false
bp_label_972:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_971:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_973
	#marker Label
bp_label_973:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_978
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_974
	#marker Label
bp_label_974:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_978
	j	bp_label_976
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_975:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_976:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_977
	#inserting 0 to param reg if evaluates to false
bp_label_978:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_977:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_979
	#marker Label
bp_label_979:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_984
	j	bp_label_980
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_980:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_984
	j	bp_label_982
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_981:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_982:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_983
	#inserting 0 to param reg if evaluates to false
bp_label_984:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_983:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_985
	#marker Label
bp_label_985:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_990
	#			 __freeing reg $t0
	#If False
	j	bp_label_986
	#marker Label
bp_label_986:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_990
	j	bp_label_988
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_987:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_988:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_989
	#inserting 0 to param reg if evaluates to false
bp_label_990:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_989:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_991
	#marker Label
bp_label_991:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_992
	#marker Label
bp_label_992:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_996
	#			 __freeing reg $t0
	#If False
	j	bp_label_994
	#reach Or derivation
	#marker Label
bp_label_993:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_994:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_995
	#inserting 0 to param reg if evaluates to false
bp_label_996:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_995:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_997
	#marker Label
bp_label_997:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1002
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_998
	#marker Label
bp_label_998:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_1002
	#			 __freeing reg $t0
	#If False
	j	bp_label_1000
	#reach Or derivation
	#marker Label
bp_label_999:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1000:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1001
	#inserting 0 to param reg if evaluates to false
bp_label_1002:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1001:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1003
	#marker Label
bp_label_1003:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1008
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1004
	#marker Label
bp_label_1004:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_1008
	#			 __freeing reg $t0
	#If False
	j	bp_label_1006
	#reach Or derivation
	#marker Label
bp_label_1005:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1006:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1007
	#inserting 0 to param reg if evaluates to false
bp_label_1008:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1007:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1009
	#marker Label
bp_label_1009:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_1014
	j	bp_label_1010
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_1010:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_1014
	#			 __freeing reg $t0
	#If False
	j	bp_label_1012
	#reach Or derivation
	#marker Label
bp_label_1011:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1012:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1013
	#inserting 0 to param reg if evaluates to false
bp_label_1014:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1013:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1015
	#marker Label
bp_label_1015:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1020
	#			 __freeing reg $t0
	#If False
	j	bp_label_1016
	#marker Label
bp_label_1016:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_1020
	#			 __freeing reg $t0
	#If False
	j	bp_label_1018
	#reach Or derivation
	#marker Label
bp_label_1017:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1018:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1019
	#inserting 0 to param reg if evaluates to false
bp_label_1020:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1019:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1021
	#marker Label
bp_label_1021:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_1022
	#marker Label
bp_label_1022:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_1026
	#reach And derivation
	#marker Label
bp_label_1023:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1024:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1025
	#inserting 0 to param reg if evaluates to false
bp_label_1026:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1025:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1027
	#marker Label
bp_label_1027:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_1028
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1030
	#marker Label
bp_label_1028:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_1032
	#reach And derivation
	#marker Label
bp_label_1029:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1030:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1031
	#inserting 0 to param reg if evaluates to false
bp_label_1032:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1031:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1033
	#marker Label
bp_label_1033:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_1034
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1036
	#marker Label
bp_label_1034:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_1038
	#reach And derivation
	#marker Label
bp_label_1035:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1036:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1037
	#inserting 0 to param reg if evaluates to false
bp_label_1038:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1037:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1039
	#marker Label
bp_label_1039:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_1040
	j	bp_label_1042
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_1040:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_1044
	#reach And derivation
	#marker Label
bp_label_1041:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1042:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1043
	#inserting 0 to param reg if evaluates to false
bp_label_1044:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1043:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1045
	#marker Label
bp_label_1045:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_1046
	#			 __freeing reg $t0
	#If False
	j	bp_label_1048
	#marker Label
bp_label_1046:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_1050
	#reach And derivation
	#marker Label
bp_label_1047:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1048:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1049
	#inserting 0 to param reg if evaluates to false
bp_label_1050:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1049:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1051
	#marker Label
bp_label_1051:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_1052
	#marker Label
bp_label_1052:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_1056
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1054
	#reach And derivation
	#marker Label
bp_label_1053:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1054:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1055
	#inserting 0 to param reg if evaluates to false
bp_label_1056:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1055:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1057
	#marker Label
bp_label_1057:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_1058
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1060
	#marker Label
bp_label_1058:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_1062
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1060
	#reach And derivation
	#marker Label
bp_label_1059:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1060:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1061
	#inserting 0 to param reg if evaluates to false
bp_label_1062:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1061:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1063
	#marker Label
bp_label_1063:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_1064
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1066
	#marker Label
bp_label_1064:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_1068
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1066
	#reach And derivation
	#marker Label
bp_label_1065:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1066:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1067
	#inserting 0 to param reg if evaluates to false
bp_label_1068:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1067:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1069
	#marker Label
bp_label_1069:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_1070
	j	bp_label_1072
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_1070:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_1074
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1072
	#reach And derivation
	#marker Label
bp_label_1071:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1072:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1073
	#inserting 0 to param reg if evaluates to false
bp_label_1074:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1073:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1075
	#marker Label
bp_label_1075:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_1076
	#			 __freeing reg $t0
	#If False
	j	bp_label_1078
	#marker Label
bp_label_1076:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_1080
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1078
	#reach And derivation
	#marker Label
bp_label_1077:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1078:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1079
	#inserting 0 to param reg if evaluates to false
bp_label_1080:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1079:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1081
	#marker Label
bp_label_1081:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_1082
	#marker Label
bp_label_1082:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_1086
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1084
	#reach And derivation
	#marker Label
bp_label_1083:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1084:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1085
	#inserting 0 to param reg if evaluates to false
bp_label_1086:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1085:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1087
	#marker Label
bp_label_1087:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_1088
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1090
	#marker Label
bp_label_1088:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_1092
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1090
	#reach And derivation
	#marker Label
bp_label_1089:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1090:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1091
	#inserting 0 to param reg if evaluates to false
bp_label_1092:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1091:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1093
	#marker Label
bp_label_1093:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_1094
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1096
	#marker Label
bp_label_1094:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_1098
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1096
	#reach And derivation
	#marker Label
bp_label_1095:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1096:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1097
	#inserting 0 to param reg if evaluates to false
bp_label_1098:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1097:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1099
	#marker Label
bp_label_1099:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_1100
	j	bp_label_1102
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_1100:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_1104
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1102
	#reach And derivation
	#marker Label
bp_label_1101:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1102:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1103
	#inserting 0 to param reg if evaluates to false
bp_label_1104:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1103:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1105
	#marker Label
bp_label_1105:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_1106
	#			 __freeing reg $t0
	#If False
	j	bp_label_1108
	#marker Label
bp_label_1106:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_1110
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1108
	#reach And derivation
	#marker Label
bp_label_1107:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1108:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1109
	#inserting 0 to param reg if evaluates to false
bp_label_1110:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1109:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1111
	#marker Label
bp_label_1111:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_1112
	#marker Label
bp_label_1112:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_1116
	j	bp_label_1114
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_1113:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1114:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1115
	#inserting 0 to param reg if evaluates to false
bp_label_1116:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1115:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1117
	#marker Label
bp_label_1117:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_1118
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1120
	#marker Label
bp_label_1118:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_1122
	j	bp_label_1120
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_1119:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1120:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1121
	#inserting 0 to param reg if evaluates to false
bp_label_1122:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1121:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1123
	#marker Label
bp_label_1123:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_1124
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1126
	#marker Label
bp_label_1124:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_1128
	j	bp_label_1126
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_1125:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1126:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1127
	#inserting 0 to param reg if evaluates to false
bp_label_1128:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1127:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1129
	#marker Label
bp_label_1129:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_1130
	j	bp_label_1132
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_1130:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_1134
	j	bp_label_1132
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_1131:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1132:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1133
	#inserting 0 to param reg if evaluates to false
bp_label_1134:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1133:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1135
	#marker Label
bp_label_1135:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_1136
	#			 __freeing reg $t0
	#If False
	j	bp_label_1138
	#marker Label
bp_label_1136:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_1140
	j	bp_label_1138
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_1137:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1138:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1139
	#inserting 0 to param reg if evaluates to false
bp_label_1140:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1139:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1141
	#marker Label
bp_label_1141:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_1142
	#marker Label
bp_label_1142:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_1146
	#			 __freeing reg $t0
	#If False
	j	bp_label_1144
	#reach And derivation
	#marker Label
bp_label_1143:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1144:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1145
	#inserting 0 to param reg if evaluates to false
bp_label_1146:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1145:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1147
	#marker Label
bp_label_1147:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_1148
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1150
	#marker Label
bp_label_1148:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_1152
	#			 __freeing reg $t0
	#If False
	j	bp_label_1150
	#reach And derivation
	#marker Label
bp_label_1149:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1150:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1151
	#inserting 0 to param reg if evaluates to false
bp_label_1152:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1151:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1153
	#marker Label
bp_label_1153:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_1154
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1156
	#marker Label
bp_label_1154:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_1158
	#			 __freeing reg $t0
	#If False
	j	bp_label_1156
	#reach And derivation
	#marker Label
bp_label_1155:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1156:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1157
	#inserting 0 to param reg if evaluates to false
bp_label_1158:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1157:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1159
	#marker Label
bp_label_1159:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_115
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_1160
	j	bp_label_1162
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_1160:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_1164
	#			 __freeing reg $t0
	#If False
	j	bp_label_1162
	#reach And derivation
	#marker Label
bp_label_1161:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1162:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1163
	#inserting 0 to param reg if evaluates to false
bp_label_1164:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1163:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1165
	#marker Label
bp_label_1165:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_1166
	#			 __freeing reg $t0
	#If False
	j	bp_label_1168
	#marker Label
bp_label_1166:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_1170
	#			 __freeing reg $t0
	#If False
	j	bp_label_1168
	#reach And derivation
	#marker Label
bp_label_1167:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1168:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1169
	#inserting 0 to param reg if evaluates to false
bp_label_1170:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1169:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1171
	#marker Label
bp_label_1171:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_1172
	#marker Label
bp_label_1172:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_1174
	#reach Or derivation
	#marker Label
bp_label_1173:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1174:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1175
	#inserting 0 to param reg if evaluates to false
bp_label_1176:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1175:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1177
	#marker Label
bp_label_1177:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1182
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1178
	#marker Label
bp_label_1178:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_1180
	#reach Or derivation
	#marker Label
bp_label_1179:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1180:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1181
	#inserting 0 to param reg if evaluates to false
bp_label_1182:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1181:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1183
	#marker Label
bp_label_1183:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1188
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1184
	#marker Label
bp_label_1184:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_1186
	#reach Or derivation
	#marker Label
bp_label_1185:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1186:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1187
	#inserting 0 to param reg if evaluates to false
bp_label_1188:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1187:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1189
	#marker Label
bp_label_1189:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_1194
	j	bp_label_1190
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_1190:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_1192
	#reach Or derivation
	#marker Label
bp_label_1191:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1192:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1193
	#inserting 0 to param reg if evaluates to false
bp_label_1194:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1193:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1195
	#marker Label
bp_label_1195:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1200
	#			 __freeing reg $t0
	#If False
	j	bp_label_1196
	#marker Label
bp_label_1196:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_1198
	#reach Or derivation
	#marker Label
bp_label_1197:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1198:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1199
	#inserting 0 to param reg if evaluates to false
bp_label_1200:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1199:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1201
	#marker Label
bp_label_1201:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_1202
	#marker Label
bp_label_1202:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1206
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1204
	#reach Or derivation
	#marker Label
bp_label_1203:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1204:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1205
	#inserting 0 to param reg if evaluates to false
bp_label_1206:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1205:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1207
	#marker Label
bp_label_1207:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1212
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1208
	#marker Label
bp_label_1208:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1212
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1210
	#reach Or derivation
	#marker Label
bp_label_1209:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1210:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1211
	#inserting 0 to param reg if evaluates to false
bp_label_1212:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1211:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1213
	#marker Label
bp_label_1213:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1218
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1214
	#marker Label
bp_label_1214:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1218
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1216
	#reach Or derivation
	#marker Label
bp_label_1215:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1216:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1217
	#inserting 0 to param reg if evaluates to false
bp_label_1218:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1217:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1219
	#marker Label
bp_label_1219:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_1224
	j	bp_label_1220
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_1220:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1224
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1222
	#reach Or derivation
	#marker Label
bp_label_1221:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1222:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1223
	#inserting 0 to param reg if evaluates to false
bp_label_1224:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1223:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1225
	#marker Label
bp_label_1225:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1230
	#			 __freeing reg $t0
	#If False
	j	bp_label_1226
	#marker Label
bp_label_1226:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1230
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1228
	#reach Or derivation
	#marker Label
bp_label_1227:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1228:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1229
	#inserting 0 to param reg if evaluates to false
bp_label_1230:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1229:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1231
	#marker Label
bp_label_1231:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_1232
	#marker Label
bp_label_1232:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1236
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1234
	#reach Or derivation
	#marker Label
bp_label_1233:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1234:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1235
	#inserting 0 to param reg if evaluates to false
bp_label_1236:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1235:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1237
	#marker Label
bp_label_1237:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1242
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1238
	#marker Label
bp_label_1238:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1242
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1240
	#reach Or derivation
	#marker Label
bp_label_1239:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1240:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1241
	#inserting 0 to param reg if evaluates to false
bp_label_1242:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1241:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1243
	#marker Label
bp_label_1243:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1248
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1244
	#marker Label
bp_label_1244:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1248
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1246
	#reach Or derivation
	#marker Label
bp_label_1245:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1246:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1247
	#inserting 0 to param reg if evaluates to false
bp_label_1248:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1247:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1249
	#marker Label
bp_label_1249:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_1254
	j	bp_label_1250
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_1250:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1254
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1252
	#reach Or derivation
	#marker Label
bp_label_1251:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1252:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1253
	#inserting 0 to param reg if evaluates to false
bp_label_1254:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1253:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1255
	#marker Label
bp_label_1255:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1260
	#			 __freeing reg $t0
	#If False
	j	bp_label_1256
	#marker Label
bp_label_1256:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1260
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1258
	#reach Or derivation
	#marker Label
bp_label_1257:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1258:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1259
	#inserting 0 to param reg if evaluates to false
bp_label_1260:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1259:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1261
	#marker Label
bp_label_1261:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_1262
	#marker Label
bp_label_1262:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_1266
	j	bp_label_1264
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_1263:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1264:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1265
	#inserting 0 to param reg if evaluates to false
bp_label_1266:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1265:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1267
	#marker Label
bp_label_1267:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1272
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1268
	#marker Label
bp_label_1268:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_1272
	j	bp_label_1270
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_1269:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1270:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1271
	#inserting 0 to param reg if evaluates to false
bp_label_1272:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1271:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1273
	#marker Label
bp_label_1273:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1278
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1274
	#marker Label
bp_label_1274:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_1278
	j	bp_label_1276
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_1275:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1276:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1277
	#inserting 0 to param reg if evaluates to false
bp_label_1278:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1277:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1279
	#marker Label
bp_label_1279:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_1284
	j	bp_label_1280
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_1280:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_1284
	j	bp_label_1282
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_1281:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1282:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1283
	#inserting 0 to param reg if evaluates to false
bp_label_1284:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1283:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1285
	#marker Label
bp_label_1285:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1290
	#			 __freeing reg $t0
	#If False
	j	bp_label_1286
	#marker Label
bp_label_1286:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_1290
	j	bp_label_1288
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_1287:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1288:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1289
	#inserting 0 to param reg if evaluates to false
bp_label_1290:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1289:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1291
	#marker Label
bp_label_1291:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_1292
	#marker Label
bp_label_1292:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1296
	#			 __freeing reg $t0
	#If False
	j	bp_label_1294
	#reach Or derivation
	#marker Label
bp_label_1293:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1294:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1295
	#inserting 0 to param reg if evaluates to false
bp_label_1296:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1295:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1297
	#marker Label
bp_label_1297:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1302
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1298
	#marker Label
bp_label_1298:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1302
	#			 __freeing reg $t0
	#If False
	j	bp_label_1300
	#reach Or derivation
	#marker Label
bp_label_1299:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1300:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1301
	#inserting 0 to param reg if evaluates to false
bp_label_1302:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1301:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1303
	#marker Label
bp_label_1303:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1308
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1304
	#marker Label
bp_label_1304:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1308
	#			 __freeing reg $t0
	#If False
	j	bp_label_1306
	#reach Or derivation
	#marker Label
bp_label_1305:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1306:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1307
	#inserting 0 to param reg if evaluates to false
bp_label_1308:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1307:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1309
	#marker Label
bp_label_1309:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_137
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_1314
	j	bp_label_1310
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_1310:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1314
	#			 __freeing reg $t0
	#If False
	j	bp_label_1312
	#reach Or derivation
	#marker Label
bp_label_1311:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1312:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1313
	#inserting 0 to param reg if evaluates to false
bp_label_1314:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1313:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1315
	#marker Label
bp_label_1315:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1320
	#			 __freeing reg $t0
	#If False
	j	bp_label_1316
	#marker Label
bp_label_1316:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1320
	#			 __freeing reg $t0
	#If False
	j	bp_label_1318
	#reach Or derivation
	#marker Label
bp_label_1317:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1318:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1319
	#inserting 0 to param reg if evaluates to false
bp_label_1320:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1319:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1321
	#marker Label
bp_label_1321:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,3
	#			 __allocating reg $t1
	li	$t1,9
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,5
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,18
	#			 __allocating reg $t2
	li	$t2,9
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	bgt $t0, $t1,bp_label_1322
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1324
	#marker Label
bp_label_1322:
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,12
	#			 __allocating reg $t2
	li	$t2,2
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	beq $t0, $t1,bp_label_1326
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1324
	#reach And derivation
	#marker Label
bp_label_1323:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1324:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1325
	#inserting 0 to param reg if evaluates to false
bp_label_1326:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1325:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1327
	#marker Label
bp_label_1327:
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
	li	$t1,12
	#			 __allocating reg $t2
	li	$t2,2
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	beq $t0, $t1,bp_label_1328
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1330
	#marker Label
bp_label_1328:
	#			 __allocating reg $t0
	li	$t0,3
	#			 __allocating reg $t1
	li	$t1,9
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,5
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,18
	#			 __allocating reg $t2
	li	$t2,9
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	bgt $t0, $t1,bp_label_1332
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1330
	#reach And derivation
	#marker Label
bp_label_1329:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1330:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1331
	#inserting 0 to param reg if evaluates to false
bp_label_1332:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1331:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1333
	#marker Label
bp_label_1333:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,3
	#			 __allocating reg $t1
	li	$t1,9
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,5
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,18
	#			 __allocating reg $t2
	li	$t2,9
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	blt $t0, $t1,bp_label_1338
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1334
	#marker Label
bp_label_1334:
	#			 __allocating reg $t0
	li	$t0,2
	#			 __allocating reg $t1
	li	$t1,3
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,12
	#			 __allocating reg $t2
	li	$t2,2
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	bne $t0, $t1,bp_label_1338
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1336
	#reach Or derivation
	#marker Label
bp_label_1335:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1336:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1337
	#inserting 0 to param reg if evaluates to false
bp_label_1338:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1337:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1339
	#marker Label
bp_label_1339:
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
	li	$t1,12
	#			 __allocating reg $t2
	li	$t2,2
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	bne $t0, $t1,bp_label_1344
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1340
	#marker Label
bp_label_1340:
	#			 __allocating reg $t0
	li	$t0,3
	#			 __allocating reg $t1
	li	$t1,9
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,5
	#subtruct
	subu	$t0,$t0,$t1
	#			 __freeing reg $t1
	#			 __allocating reg $t1
	li	$t1,18
	#			 __allocating reg $t2
	li	$t2,9
	#div
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	#			 __freeing reg $t2
	blt $t0, $t1,bp_label_1344
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1342
	#reach Or derivation
	#marker Label
bp_label_1341:
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1342:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1343
	#inserting 0 to param reg if evaluates to false
bp_label_1344:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1343:
	#preparing to call funBool
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#			 __freeing reg $t0
	move	$fp,$sp
	#jumping to func: funBool
	jal	label_29
	#returned from func: funBool
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
	#finished calling funBool
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_1345
bp_label_1345:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
