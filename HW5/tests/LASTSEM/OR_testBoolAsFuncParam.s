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
	jal	label_153
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
	#end of statement jump
	j	bp_label_2
	#marker Label
bp_label_1:
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
	#end of ifelse
bp_label_2:
	#end of statement jump
	j	bp_label_3
bp_label_3:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func True:
label_111:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_5
	#return noneVoid in v0
bp_label_5:
	li	$v0,1
	j	bp_label_4
bp_label_6:
	li	$v0,0
bp_label_4:
	move	$sp,$fp
	jr	$ra
bp_label_7:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func False:
label_132:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_10
	#return noneVoid in v0
bp_label_9:
	li	$v0,1
	j	bp_label_8
bp_label_10:
	li	$v0,0
bp_label_8:
	move	$sp,$fp
	jr	$ra
bp_label_11:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func main:
label_153:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
bExpAss_nfjdn0:
	#assigning True to t
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_12
bExpAss_nfjdn1:
	#assigning False to t
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_12
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_12
	#marker Label
bp_label_12:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
bExpAss_nfjdn2:
	#assigning True to f
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -4($fp)
	j	bp_label_13
bExpAss_nfjdn3:
	#assigning False to f
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -4($fp)
	j	bp_label_13
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_13
	#marker Label
bp_label_13:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
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
	j	bp_label_14
	#marker Label
bp_label_14:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_15
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_17
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_15:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_16
	#inserting 0 to param reg if evaluates to false
bp_label_17:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_16:
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
	j	bp_label_18
	#marker Label
bp_label_18:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_19
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_21
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
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_23
	j	bp_label_25
	#			 __freeing reg $t0
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_23:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_24
	#inserting 0 to param reg if evaluates to false
bp_label_25:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_24:
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
	j	bp_label_26
	#marker Label
bp_label_26:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
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
	#exp derived false
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
	j	bp_label_28
	#marker Label
bp_label_28:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	blt $t0, $t1,bp_label_29
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_31
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_29:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_30
	#inserting 0 to param reg if evaluates to false
bp_label_31:
	#			 __allocating reg $t0
	li	$t0,0
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
	j	bp_label_32
	#marker Label
bp_label_32:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_33
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_35
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_33:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_34
	#inserting 0 to param reg if evaluates to false
bp_label_35:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_34:
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
	j	bp_label_36
	#marker Label
bp_label_36:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_37
	j	bp_label_39
	#			 __freeing reg $t0
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_37:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_38
	#inserting 0 to param reg if evaluates to false
bp_label_39:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_38:
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
	j	bp_label_40
	#marker Label
bp_label_40:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
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
	j	bp_label_41
	#marker Label
bp_label_41:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_42
	#marker Label
bp_label_42:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_45
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_43:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_44
	#inserting 0 to param reg if evaluates to false
bp_label_45:
	#			 __allocating reg $t0
	li	$t0,0
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
	j	bp_label_46
	#marker Label
bp_label_46:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_47
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_50
	#marker Label
bp_label_47:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_50
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_48:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_49
	#inserting 0 to param reg if evaluates to false
bp_label_50:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_49:
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
	j	bp_label_51
	#marker Label
bp_label_51:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_52
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_55
	#marker Label
bp_label_52:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_55
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_53:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_54
	#inserting 0 to param reg if evaluates to false
bp_label_55:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_54:
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
	j	bp_label_56
	#marker Label
bp_label_56:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_57
	j	bp_label_60
	#			 __freeing reg $t0
	#marker Label
bp_label_57:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_60
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_58:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_59
	#inserting 0 to param reg if evaluates to false
bp_label_60:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_59:
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
	j	bp_label_61
	#marker Label
bp_label_61:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_62
	#			 __freeing reg $t0
	#If False
	j	bp_label_65
	#marker Label
bp_label_62:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_65
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_63:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_64
	#inserting 0 to param reg if evaluates to false
bp_label_65:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_64:
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
	j	bp_label_66
	#marker Label
bp_label_66:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_67
	#marker Label
bp_label_67:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_68
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_70
	#reach And derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_72
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_75
	#marker Label
bp_label_72:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_73
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_75
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_73:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_74
	#inserting 0 to param reg if evaluates to false
bp_label_75:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_74:
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
	j	bp_label_76
	#marker Label
bp_label_76:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_77
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_80
	#marker Label
bp_label_77:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_78
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_80
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_78:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_79
	#inserting 0 to param reg if evaluates to false
bp_label_80:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_79:
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
	j	bp_label_81
	#marker Label
bp_label_81:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_82
	j	bp_label_85
	#			 __freeing reg $t0
	#marker Label
bp_label_82:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_83
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_85
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_83:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_84
	#inserting 0 to param reg if evaluates to false
bp_label_85:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_84:
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
	j	bp_label_86
	#marker Label
bp_label_86:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_87
	#			 __freeing reg $t0
	#If False
	j	bp_label_90
	#marker Label
bp_label_87:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_88
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_90
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_88:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_89
	#inserting 0 to param reg if evaluates to false
bp_label_90:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_89:
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
	j	bp_label_91
	#marker Label
bp_label_91:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_92
	#marker Label
bp_label_92:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_93
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_95
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_93:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_94
	#inserting 0 to param reg if evaluates to false
bp_label_95:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_94:
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
	j	bp_label_96
	#marker Label
bp_label_96:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_97
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_100
	#marker Label
bp_label_97:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_98
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_100
	#reach And derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_102
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_105
	#marker Label
bp_label_102:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_103
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_105
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_103:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_104
	#inserting 0 to param reg if evaluates to false
bp_label_105:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_104:
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
	j	bp_label_106
	#marker Label
bp_label_106:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_107
	j	bp_label_110
	#			 __freeing reg $t0
	#marker Label
bp_label_107:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_108
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_110
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_108:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_109
	#inserting 0 to param reg if evaluates to false
bp_label_110:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_109:
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
	j	bp_label_111
	#marker Label
bp_label_111:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_112
	#			 __freeing reg $t0
	#If False
	j	bp_label_115
	#marker Label
bp_label_112:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_113
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_115
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_113:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_114
	#inserting 0 to param reg if evaluates to false
bp_label_115:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_114:
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
	j	bp_label_116
	#marker Label
bp_label_116:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_117
	#marker Label
bp_label_117:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_118
	j	bp_label_120
	#			 __freeing reg $t0
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_118:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_119
	#inserting 0 to param reg if evaluates to false
bp_label_120:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_119:
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
	j	bp_label_121
	#marker Label
bp_label_121:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_122
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_125
	#marker Label
bp_label_122:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_123
	j	bp_label_125
	#			 __freeing reg $t0
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_123:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_124
	#inserting 0 to param reg if evaluates to false
bp_label_125:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_124:
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
	j	bp_label_126
	#marker Label
bp_label_126:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_127
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_130
	#marker Label
bp_label_127:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_128
	j	bp_label_130
	#			 __freeing reg $t0
	#reach And derivation
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
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_132
	j	bp_label_135
	#			 __freeing reg $t0
	#marker Label
bp_label_132:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_133
	j	bp_label_135
	#			 __freeing reg $t0
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_133:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_134
	#inserting 0 to param reg if evaluates to false
bp_label_135:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_134:
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
	j	bp_label_136
	#marker Label
bp_label_136:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_137
	#			 __freeing reg $t0
	#If False
	j	bp_label_140
	#marker Label
bp_label_137:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_138
	j	bp_label_140
	#			 __freeing reg $t0
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_138:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_139
	#inserting 0 to param reg if evaluates to false
bp_label_140:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_139:
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
	j	bp_label_141
	#marker Label
bp_label_141:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_142
	#marker Label
bp_label_142:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_143
	#			 __freeing reg $t0
	#If False
	j	bp_label_145
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_143:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_144
	#inserting 0 to param reg if evaluates to false
bp_label_145:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_144:
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
	j	bp_label_146
	#marker Label
bp_label_146:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_147
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_150
	#marker Label
bp_label_147:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_148
	#			 __freeing reg $t0
	#If False
	j	bp_label_150
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_148:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_149
	#inserting 0 to param reg if evaluates to false
bp_label_150:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_149:
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
	j	bp_label_151
	#marker Label
bp_label_151:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_152
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_155
	#marker Label
bp_label_152:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_153
	#			 __freeing reg $t0
	#If False
	j	bp_label_155
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_153:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_154
	#inserting 0 to param reg if evaluates to false
bp_label_155:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_154:
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
	j	bp_label_156
	#marker Label
bp_label_156:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_157
	j	bp_label_160
	#			 __freeing reg $t0
	#marker Label
bp_label_157:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_158
	#			 __freeing reg $t0
	#If False
	j	bp_label_160
	#reach And derivation
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
	j	bp_label_165
	#marker Label
bp_label_162:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_163
	#			 __freeing reg $t0
	#If False
	j	bp_label_165
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_163:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_164
	#inserting 0 to param reg if evaluates to false
bp_label_165:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_164:
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
	j	bp_label_166
	#marker Label
bp_label_166:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_167
	#marker Label
bp_label_167:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_168
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_168:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_169
	#inserting 0 to param reg if evaluates to false
bp_label_170:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_169:
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
	j	bp_label_171
	#marker Label
bp_label_171:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_173
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_172
	#marker Label
bp_label_172:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_173
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_173:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_174
	#inserting 0 to param reg if evaluates to false
bp_label_175:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_174:
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
	j	bp_label_176
	#marker Label
bp_label_176:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_178
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_177
	#marker Label
bp_label_177:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_178
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_178:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_179
	#inserting 0 to param reg if evaluates to false
bp_label_180:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_179:
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
	j	bp_label_181
	#marker Label
bp_label_181:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_183
	j	bp_label_182
	#			 __freeing reg $t0
	#marker Label
bp_label_182:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_183
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_183:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_184
	#inserting 0 to param reg if evaluates to false
bp_label_185:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_184:
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
	j	bp_label_186
	#marker Label
bp_label_186:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_188
	#			 __freeing reg $t0
	#If False
	j	bp_label_187
	#marker Label
bp_label_187:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_188
	#reach Or derivation
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
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_192
	#marker Label
bp_label_192:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_193
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_195
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_193:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_194
	#inserting 0 to param reg if evaluates to false
bp_label_195:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_194:
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
	j	bp_label_196
	#marker Label
bp_label_196:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_198
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_197
	#marker Label
bp_label_197:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_198
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_200
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_198:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_199
	#inserting 0 to param reg if evaluates to false
bp_label_200:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_199:
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
	j	bp_label_201
	#marker Label
bp_label_201:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_203
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_202
	#marker Label
bp_label_202:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_203
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_205
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_203:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_204
	#inserting 0 to param reg if evaluates to false
bp_label_205:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_204:
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
	j	bp_label_206
	#marker Label
bp_label_206:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_208
	j	bp_label_207
	#			 __freeing reg $t0
	#marker Label
bp_label_207:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_208
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_210
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_208:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_209
	#inserting 0 to param reg if evaluates to false
bp_label_210:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_209:
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
	j	bp_label_211
	#marker Label
bp_label_211:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_213
	#			 __freeing reg $t0
	#If False
	j	bp_label_212
	#marker Label
bp_label_212:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_213
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_215
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_213:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_214
	#inserting 0 to param reg if evaluates to false
bp_label_215:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_214:
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
	j	bp_label_216
	#marker Label
bp_label_216:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_217
	#marker Label
bp_label_217:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_218
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_220
	#reach Or derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_223
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_222
	#marker Label
bp_label_222:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_223
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_225
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_223:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_224
	#inserting 0 to param reg if evaluates to false
bp_label_225:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_224:
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
	j	bp_label_226
	#marker Label
bp_label_226:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_228
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_227
	#marker Label
bp_label_227:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_228
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_230
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_228:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_229
	#inserting 0 to param reg if evaluates to false
bp_label_230:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_229:
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
	j	bp_label_231
	#marker Label
bp_label_231:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_233
	j	bp_label_232
	#			 __freeing reg $t0
	#marker Label
bp_label_232:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_233
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_235
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_233:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_234
	#inserting 0 to param reg if evaluates to false
bp_label_235:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_234:
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
	j	bp_label_236
	#marker Label
bp_label_236:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_238
	#			 __freeing reg $t0
	#If False
	j	bp_label_237
	#marker Label
bp_label_237:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_238
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_240
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_238:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_239
	#inserting 0 to param reg if evaluates to false
bp_label_240:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_239:
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
	j	bp_label_241
	#marker Label
bp_label_241:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_242
	#marker Label
bp_label_242:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_243
	j	bp_label_245
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_243:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_244
	#inserting 0 to param reg if evaluates to false
bp_label_245:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_244:
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
	j	bp_label_246
	#marker Label
bp_label_246:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_248
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_247
	#marker Label
bp_label_247:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_248
	j	bp_label_250
	#			 __freeing reg $t0
	#reach Or derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_253
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_252
	#marker Label
bp_label_252:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_253
	j	bp_label_255
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_253:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_254
	#inserting 0 to param reg if evaluates to false
bp_label_255:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_254:
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
	j	bp_label_256
	#marker Label
bp_label_256:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_258
	j	bp_label_257
	#			 __freeing reg $t0
	#marker Label
bp_label_257:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_258
	j	bp_label_260
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_258:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_259
	#inserting 0 to param reg if evaluates to false
bp_label_260:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_259:
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
	j	bp_label_261
	#marker Label
bp_label_261:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_263
	#			 __freeing reg $t0
	#If False
	j	bp_label_262
	#marker Label
bp_label_262:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_263
	j	bp_label_265
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_263:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_264
	#inserting 0 to param reg if evaluates to false
bp_label_265:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_264:
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
	j	bp_label_266
	#marker Label
bp_label_266:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_267
	#marker Label
bp_label_267:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_268
	#			 __freeing reg $t0
	#If False
	j	bp_label_270
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_268:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_269
	#inserting 0 to param reg if evaluates to false
bp_label_270:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_269:
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
	j	bp_label_271
	#marker Label
bp_label_271:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_273
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_272
	#marker Label
bp_label_272:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_273
	#			 __freeing reg $t0
	#If False
	j	bp_label_275
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_273:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_274
	#inserting 0 to param reg if evaluates to false
bp_label_275:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_274:
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
	j	bp_label_276
	#marker Label
bp_label_276:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_278
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_277
	#marker Label
bp_label_277:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_278
	#			 __freeing reg $t0
	#If False
	j	bp_label_280
	#reach Or derivation
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
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_283
	j	bp_label_282
	#			 __freeing reg $t0
	#marker Label
bp_label_282:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_283
	#			 __freeing reg $t0
	#If False
	j	bp_label_285
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_283:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_284
	#inserting 0 to param reg if evaluates to false
bp_label_285:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_284:
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
	j	bp_label_286
	#marker Label
bp_label_286:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_288
	#			 __freeing reg $t0
	#If False
	j	bp_label_287
	#marker Label
bp_label_287:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_288
	#			 __freeing reg $t0
	#If False
	j	bp_label_290
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_288:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_289
	#inserting 0 to param reg if evaluates to false
bp_label_290:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_289:
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
	j	bp_label_291
	#marker Label
bp_label_291:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_292
	#marker Label
bp_label_292:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_293
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_293:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_294
	#inserting 0 to param reg if evaluates to false
bp_label_295:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_294:
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
	j	bp_label_296
	#marker Label
bp_label_296:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_297
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_300
	#marker Label
bp_label_297:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_298
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_298:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_299
	#inserting 0 to param reg if evaluates to false
bp_label_300:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_299:
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
	j	bp_label_301
	#marker Label
bp_label_301:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_302
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_305
	#marker Label
bp_label_302:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_303
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_303:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_304
	#inserting 0 to param reg if evaluates to false
bp_label_305:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_304:
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
	j	bp_label_306
	#marker Label
bp_label_306:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_307
	j	bp_label_310
	#			 __freeing reg $t0
	#marker Label
bp_label_307:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_308
	#reach And derivation
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
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_312
	#			 __freeing reg $t0
	#If False
	j	bp_label_315
	#marker Label
bp_label_312:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_313
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_313:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_314
	#inserting 0 to param reg if evaluates to false
bp_label_315:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_314:
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
	j	bp_label_316
	#marker Label
bp_label_316:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_317
	#marker Label
bp_label_317:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_318
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_320
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_318:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_319
	#inserting 0 to param reg if evaluates to false
bp_label_320:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_319:
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
	j	bp_label_321
	#marker Label
bp_label_321:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_322
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_325
	#marker Label
bp_label_322:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_323
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_325
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_323:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_324
	#inserting 0 to param reg if evaluates to false
bp_label_325:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_324:
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
	j	bp_label_326
	#marker Label
bp_label_326:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_327
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_330
	#marker Label
bp_label_327:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_328
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_330
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_328:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_329
	#inserting 0 to param reg if evaluates to false
bp_label_330:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_329:
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
	j	bp_label_331
	#marker Label
bp_label_331:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_332
	j	bp_label_335
	#			 __freeing reg $t0
	#marker Label
bp_label_332:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_333
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_335
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_333:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_334
	#inserting 0 to param reg if evaluates to false
bp_label_335:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_334:
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
	j	bp_label_336
	#marker Label
bp_label_336:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_337
	#			 __freeing reg $t0
	#If False
	j	bp_label_340
	#marker Label
bp_label_337:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_338
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_340
	#reach And derivation
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
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_342
	#marker Label
bp_label_342:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_343
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_345
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_343:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_344
	#inserting 0 to param reg if evaluates to false
bp_label_345:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_344:
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
	j	bp_label_346
	#marker Label
bp_label_346:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_347
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_350
	#marker Label
bp_label_347:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_348
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_350
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_348:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_349
	#inserting 0 to param reg if evaluates to false
bp_label_350:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_349:
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
	j	bp_label_351
	#marker Label
bp_label_351:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_352
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_355
	#marker Label
bp_label_352:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_353
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_355
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_353:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_354
	#inserting 0 to param reg if evaluates to false
bp_label_355:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_354:
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
	j	bp_label_356
	#marker Label
bp_label_356:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_357
	j	bp_label_360
	#			 __freeing reg $t0
	#marker Label
bp_label_357:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_358
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_360
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_358:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_359
	#inserting 0 to param reg if evaluates to false
bp_label_360:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_359:
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
	j	bp_label_361
	#marker Label
bp_label_361:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_362
	#			 __freeing reg $t0
	#If False
	j	bp_label_365
	#marker Label
bp_label_362:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_363
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_365
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_363:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_364
	#inserting 0 to param reg if evaluates to false
bp_label_365:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_364:
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
	j	bp_label_366
	#marker Label
bp_label_366:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_367
	#marker Label
bp_label_367:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_368
	j	bp_label_370
	#			 __freeing reg $t0
	#reach And derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_372
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_375
	#marker Label
bp_label_372:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_373
	j	bp_label_375
	#			 __freeing reg $t0
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_373:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_374
	#inserting 0 to param reg if evaluates to false
bp_label_375:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_374:
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
	j	bp_label_376
	#marker Label
bp_label_376:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_377
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_380
	#marker Label
bp_label_377:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_378
	j	bp_label_380
	#			 __freeing reg $t0
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_378:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_379
	#inserting 0 to param reg if evaluates to false
bp_label_380:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_379:
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
	j	bp_label_381
	#marker Label
bp_label_381:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_382
	j	bp_label_385
	#			 __freeing reg $t0
	#marker Label
bp_label_382:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_383
	j	bp_label_385
	#			 __freeing reg $t0
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_383:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_384
	#inserting 0 to param reg if evaluates to false
bp_label_385:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_384:
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
	j	bp_label_386
	#marker Label
bp_label_386:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_387
	#			 __freeing reg $t0
	#If False
	j	bp_label_390
	#marker Label
bp_label_387:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_388
	j	bp_label_390
	#			 __freeing reg $t0
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_388:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_389
	#inserting 0 to param reg if evaluates to false
bp_label_390:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_389:
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
	j	bp_label_391
	#marker Label
bp_label_391:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_392
	#marker Label
bp_label_392:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_393
	#			 __freeing reg $t0
	#If False
	j	bp_label_395
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_393:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_394
	#inserting 0 to param reg if evaluates to false
bp_label_395:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_394:
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
	j	bp_label_396
	#marker Label
bp_label_396:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_397
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_400
	#marker Label
bp_label_397:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_398
	#			 __freeing reg $t0
	#If False
	j	bp_label_400
	#reach And derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_402
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_405
	#marker Label
bp_label_402:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_403
	#			 __freeing reg $t0
	#If False
	j	bp_label_405
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_403:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_404
	#inserting 0 to param reg if evaluates to false
bp_label_405:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_404:
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
	j	bp_label_406
	#marker Label
bp_label_406:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_407
	j	bp_label_410
	#			 __freeing reg $t0
	#marker Label
bp_label_407:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_408
	#			 __freeing reg $t0
	#If False
	j	bp_label_410
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_408:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_409
	#inserting 0 to param reg if evaluates to false
bp_label_410:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_409:
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
	j	bp_label_411
	#marker Label
bp_label_411:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_412
	#			 __freeing reg $t0
	#If False
	j	bp_label_415
	#marker Label
bp_label_412:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_413
	#			 __freeing reg $t0
	#If False
	j	bp_label_415
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_413:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_414
	#inserting 0 to param reg if evaluates to false
bp_label_415:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_414:
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
	j	bp_label_416
	#marker Label
bp_label_416:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_417
	#marker Label
bp_label_417:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_420
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_418:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_419
	#inserting 0 to param reg if evaluates to false
bp_label_420:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_419:
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
	j	bp_label_421
	#marker Label
bp_label_421:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_423
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_422
	#marker Label
bp_label_422:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_425
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_423:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_424
	#inserting 0 to param reg if evaluates to false
bp_label_425:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_424:
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
	j	bp_label_426
	#marker Label
bp_label_426:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_428
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_427
	#marker Label
bp_label_427:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_430
	#reach Or derivation
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
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_433
	j	bp_label_432
	#			 __freeing reg $t0
	#marker Label
bp_label_432:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_435
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_433:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_434
	#inserting 0 to param reg if evaluates to false
bp_label_435:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_434:
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
	j	bp_label_436
	#marker Label
bp_label_436:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_438
	#			 __freeing reg $t0
	#If False
	j	bp_label_437
	#marker Label
bp_label_437:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_440
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_438:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_439
	#inserting 0 to param reg if evaluates to false
bp_label_440:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_439:
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
	j	bp_label_441
	#marker Label
bp_label_441:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_442
	#marker Label
bp_label_442:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_443
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_445
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_443:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_444
	#inserting 0 to param reg if evaluates to false
bp_label_445:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_444:
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
	j	bp_label_446
	#marker Label
bp_label_446:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_448
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_447
	#marker Label
bp_label_447:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_448
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_450
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_448:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_449
	#inserting 0 to param reg if evaluates to false
bp_label_450:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_449:
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
	j	bp_label_451
	#marker Label
bp_label_451:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_453
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_452
	#marker Label
bp_label_452:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_453
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_455
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_453:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_454
	#inserting 0 to param reg if evaluates to false
bp_label_455:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_454:
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
	j	bp_label_456
	#marker Label
bp_label_456:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_458
	j	bp_label_457
	#			 __freeing reg $t0
	#marker Label
bp_label_457:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_458
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_460
	#reach Or derivation
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
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_463
	#			 __freeing reg $t0
	#If False
	j	bp_label_462
	#marker Label
bp_label_462:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_463
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_465
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_463:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_464
	#inserting 0 to param reg if evaluates to false
bp_label_465:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_464:
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
	j	bp_label_466
	#marker Label
bp_label_466:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_467
	#marker Label
bp_label_467:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_468
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_470
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_468:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_469
	#inserting 0 to param reg if evaluates to false
bp_label_470:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_469:
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
	j	bp_label_471
	#marker Label
bp_label_471:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_473
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_472
	#marker Label
bp_label_472:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_473
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_475
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_473:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_474
	#inserting 0 to param reg if evaluates to false
bp_label_475:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_474:
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
	j	bp_label_476
	#marker Label
bp_label_476:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_478
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_477
	#marker Label
bp_label_477:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_478
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_480
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_478:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_479
	#inserting 0 to param reg if evaluates to false
bp_label_480:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_479:
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
	j	bp_label_481
	#marker Label
bp_label_481:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_483
	j	bp_label_482
	#			 __freeing reg $t0
	#marker Label
bp_label_482:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_483
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_485
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_483:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_484
	#inserting 0 to param reg if evaluates to false
bp_label_485:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_484:
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
	j	bp_label_486
	#marker Label
bp_label_486:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_488
	#			 __freeing reg $t0
	#If False
	j	bp_label_487
	#marker Label
bp_label_487:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_488
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_490
	#reach Or derivation
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
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_492
	#marker Label
bp_label_492:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_493
	j	bp_label_495
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_493:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_494
	#inserting 0 to param reg if evaluates to false
bp_label_495:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_494:
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
	j	bp_label_496
	#marker Label
bp_label_496:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_498
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_497
	#marker Label
bp_label_497:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_498
	j	bp_label_500
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_498:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_499
	#inserting 0 to param reg if evaluates to false
bp_label_500:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_499:
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
	j	bp_label_501
	#marker Label
bp_label_501:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_503
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_502
	#marker Label
bp_label_502:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_503
	j	bp_label_505
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_503:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_504
	#inserting 0 to param reg if evaluates to false
bp_label_505:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_504:
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
	j	bp_label_506
	#marker Label
bp_label_506:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_508
	j	bp_label_507
	#			 __freeing reg $t0
	#marker Label
bp_label_507:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_508
	j	bp_label_510
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_508:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_509
	#inserting 0 to param reg if evaluates to false
bp_label_510:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_509:
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
	j	bp_label_511
	#marker Label
bp_label_511:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_513
	#			 __freeing reg $t0
	#If False
	j	bp_label_512
	#marker Label
bp_label_512:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_513
	j	bp_label_515
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_513:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_514
	#inserting 0 to param reg if evaluates to false
bp_label_515:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_514:
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
	j	bp_label_516
	#marker Label
bp_label_516:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_517
	#marker Label
bp_label_517:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_518
	#			 __freeing reg $t0
	#If False
	j	bp_label_520
	#reach Or derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_523
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_522
	#marker Label
bp_label_522:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_523
	#			 __freeing reg $t0
	#If False
	j	bp_label_525
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_523:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_524
	#inserting 0 to param reg if evaluates to false
bp_label_525:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_524:
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
	j	bp_label_526
	#marker Label
bp_label_526:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_528
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_527
	#marker Label
bp_label_527:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_528
	#			 __freeing reg $t0
	#If False
	j	bp_label_530
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_528:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_529
	#inserting 0 to param reg if evaluates to false
bp_label_530:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_529:
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
	j	bp_label_531
	#marker Label
bp_label_531:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_533
	j	bp_label_532
	#			 __freeing reg $t0
	#marker Label
bp_label_532:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_533
	#			 __freeing reg $t0
	#If False
	j	bp_label_535
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_533:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_534
	#inserting 0 to param reg if evaluates to false
bp_label_535:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_534:
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
	j	bp_label_536
	#marker Label
bp_label_536:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_538
	#			 __freeing reg $t0
	#If False
	j	bp_label_537
	#marker Label
bp_label_537:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_538
	#			 __freeing reg $t0
	#If False
	j	bp_label_540
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_538:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_539
	#inserting 0 to param reg if evaluates to false
bp_label_540:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_539:
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
	j	bp_label_541
	#marker Label
bp_label_541:
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
	bgt $t0, $t1,bp_label_542
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_545
	#marker Label
bp_label_542:
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
	beq $t0, $t1,bp_label_543
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_545
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_543:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_544
	#inserting 0 to param reg if evaluates to false
bp_label_545:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_544:
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
	j	bp_label_546
	#marker Label
bp_label_546:
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
	beq $t0, $t1,bp_label_547
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_550
	#marker Label
bp_label_547:
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
	bgt $t0, $t1,bp_label_548
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_550
	#reach And derivation
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
	blt $t0, $t1,bp_label_553
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_552
	#marker Label
bp_label_552:
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
	bne $t0, $t1,bp_label_553
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_555
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_553:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_554
	#inserting 0 to param reg if evaluates to false
bp_label_555:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_554:
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
	j	bp_label_556
	#marker Label
bp_label_556:
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
	bne $t0, $t1,bp_label_558
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_557
	#marker Label
bp_label_557:
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
	blt $t0, $t1,bp_label_558
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_560
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_558:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_559
	#inserting 0 to param reg if evaluates to false
bp_label_560:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_559:
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
	j	bp_label_561
	#marker Label
bp_label_561:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_564
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_562:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_563
	#inserting 0 to param reg if evaluates to false
bp_label_564:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_563:
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
	j	bp_label_565
	#marker Label
bp_label_565:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_568
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_566
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
	beq $t0, $t1,bp_label_572
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_570
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_570:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_571
	#inserting 0 to param reg if evaluates to false
bp_label_572:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_571:
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
	j	bp_label_573
	#marker Label
bp_label_573:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_576
	j	bp_label_574
	#			 __freeing reg $t0
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_574:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_575
	#inserting 0 to param reg if evaluates to false
bp_label_576:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_575:
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
	j	bp_label_577
	#marker Label
bp_label_577:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_580
	#			 __freeing reg $t0
	#If False
	j	bp_label_578
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
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_582
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_582:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_583
	#inserting 0 to param reg if evaluates to false
bp_label_584:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_583:
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
	j	bp_label_585
	#marker Label
bp_label_585:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	blt $t0, $t1,bp_label_588
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_586
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_586:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_587
	#inserting 0 to param reg if evaluates to false
bp_label_588:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_587:
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
	j	bp_label_589
	#marker Label
bp_label_589:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_592
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_590
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
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_596
	j	bp_label_594
	#			 __freeing reg $t0
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_594:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_595
	#inserting 0 to param reg if evaluates to false
bp_label_596:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_595:
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
	j	bp_label_597
	#marker Label
bp_label_597:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_600
	#			 __freeing reg $t0
	#If False
	j	bp_label_598
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_598:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_599
	#inserting 0 to param reg if evaluates to false
bp_label_600:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_599:
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
	j	bp_label_601
	#marker Label
bp_label_601:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_602
	#marker Label
bp_label_602:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_603
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_603:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_604
	#inserting 0 to param reg if evaluates to false
bp_label_605:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_604:
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
	j	bp_label_606
	#marker Label
bp_label_606:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_607
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_608
	#marker Label
bp_label_607:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_608
	#reach And derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_612
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_613
	#marker Label
bp_label_612:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_613
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_613:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_614
	#inserting 0 to param reg if evaluates to false
bp_label_615:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_614:
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
	j	bp_label_616
	#marker Label
bp_label_616:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_617
	j	bp_label_618
	#			 __freeing reg $t0
	#marker Label
bp_label_617:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_618
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_618:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_619
	#inserting 0 to param reg if evaluates to false
bp_label_620:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_619:
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
	j	bp_label_621
	#marker Label
bp_label_621:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_622
	#			 __freeing reg $t0
	#If False
	j	bp_label_623
	#marker Label
bp_label_622:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_623
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_623:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_624
	#inserting 0 to param reg if evaluates to false
bp_label_625:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_624:
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
	j	bp_label_626
	#marker Label
bp_label_626:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_627
	#marker Label
bp_label_627:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_630
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_628
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_628:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_629
	#inserting 0 to param reg if evaluates to false
bp_label_630:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_629:
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
	j	bp_label_631
	#marker Label
bp_label_631:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_632
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_633
	#marker Label
bp_label_632:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_635
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_633
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_633:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_634
	#inserting 0 to param reg if evaluates to false
bp_label_635:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_634:
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
	j	bp_label_636
	#marker Label
bp_label_636:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_637
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_638
	#marker Label
bp_label_637:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_640
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_638
	#reach And derivation
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
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_642
	j	bp_label_643
	#			 __freeing reg $t0
	#marker Label
bp_label_642:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_645
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_643
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_643:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_644
	#inserting 0 to param reg if evaluates to false
bp_label_645:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_644:
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
	j	bp_label_646
	#marker Label
bp_label_646:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_647
	#			 __freeing reg $t0
	#If False
	j	bp_label_648
	#marker Label
bp_label_647:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_650
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_648
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_648:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_649
	#inserting 0 to param reg if evaluates to false
bp_label_650:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_649:
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
	j	bp_label_651
	#marker Label
bp_label_651:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_652
	#marker Label
bp_label_652:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_655
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_653
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_653:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_654
	#inserting 0 to param reg if evaluates to false
bp_label_655:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_654:
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
	j	bp_label_656
	#marker Label
bp_label_656:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_657
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_658
	#marker Label
bp_label_657:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_660
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_658
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_658:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_659
	#inserting 0 to param reg if evaluates to false
bp_label_660:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_659:
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
	j	bp_label_661
	#marker Label
bp_label_661:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_662
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_663
	#marker Label
bp_label_662:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_665
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_663
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_663:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_664
	#inserting 0 to param reg if evaluates to false
bp_label_665:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_664:
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
	j	bp_label_666
	#marker Label
bp_label_666:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_667
	j	bp_label_668
	#			 __freeing reg $t0
	#marker Label
bp_label_667:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_670
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_668
	#reach And derivation
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
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_672
	#			 __freeing reg $t0
	#If False
	j	bp_label_673
	#marker Label
bp_label_672:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_675
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_673
	#reach And derivation
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
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_677
	#marker Label
bp_label_677:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_680
	j	bp_label_678
	#			 __freeing reg $t0
	#reach And derivation
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
	li	$t1,5
	blt $t0, $t1,bp_label_682
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_683
	#marker Label
bp_label_682:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_685
	j	bp_label_683
	#			 __freeing reg $t0
	#reach And derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_687
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_688
	#marker Label
bp_label_687:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_690
	j	bp_label_688
	#			 __freeing reg $t0
	#reach And derivation
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
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_692
	j	bp_label_693
	#			 __freeing reg $t0
	#marker Label
bp_label_692:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_695
	j	bp_label_693
	#			 __freeing reg $t0
	#reach And derivation
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
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_697
	#			 __freeing reg $t0
	#If False
	j	bp_label_698
	#marker Label
bp_label_697:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_700
	j	bp_label_698
	#			 __freeing reg $t0
	#reach And derivation
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
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_702
	#marker Label
bp_label_702:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_705
	#			 __freeing reg $t0
	#If False
	j	bp_label_703
	#reach And derivation
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
	li	$t1,5
	blt $t0, $t1,bp_label_707
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_708
	#marker Label
bp_label_707:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_710
	#			 __freeing reg $t0
	#If False
	j	bp_label_708
	#reach And derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_712
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_713
	#marker Label
bp_label_712:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_715
	#			 __freeing reg $t0
	#If False
	j	bp_label_713
	#reach And derivation
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
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_717
	j	bp_label_718
	#			 __freeing reg $t0
	#marker Label
bp_label_717:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_720
	#			 __freeing reg $t0
	#If False
	j	bp_label_718
	#reach And derivation
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
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_722
	#			 __freeing reg $t0
	#If False
	j	bp_label_723
	#marker Label
bp_label_722:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_725
	#			 __freeing reg $t0
	#If False
	j	bp_label_723
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_723:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_724
	#inserting 0 to param reg if evaluates to false
bp_label_725:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_724:
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
	j	bp_label_726
	#marker Label
bp_label_726:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_727
	#marker Label
bp_label_727:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_730
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_728:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_729
	#inserting 0 to param reg if evaluates to false
bp_label_730:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_729:
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
	j	bp_label_731
	#marker Label
bp_label_731:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_735
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_732
	#marker Label
bp_label_732:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_735
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_733:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_734
	#inserting 0 to param reg if evaluates to false
bp_label_735:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_734:
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
	j	bp_label_736
	#marker Label
bp_label_736:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_740
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_737
	#marker Label
bp_label_737:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_740
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_738:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_739
	#inserting 0 to param reg if evaluates to false
bp_label_740:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_739:
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
	j	bp_label_741
	#marker Label
bp_label_741:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_745
	j	bp_label_742
	#			 __freeing reg $t0
	#marker Label
bp_label_742:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_745
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_743:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_744
	#inserting 0 to param reg if evaluates to false
bp_label_745:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_744:
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
	j	bp_label_746
	#marker Label
bp_label_746:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_750
	#			 __freeing reg $t0
	#If False
	j	bp_label_747
	#marker Label
bp_label_747:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_750
	#reach Or derivation
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
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_752
	#marker Label
bp_label_752:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_755
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_753
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_753:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_754
	#inserting 0 to param reg if evaluates to false
bp_label_755:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_754:
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
	j	bp_label_756
	#marker Label
bp_label_756:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_760
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_757
	#marker Label
bp_label_757:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_760
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_758
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_758:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_759
	#inserting 0 to param reg if evaluates to false
bp_label_760:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_759:
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
	j	bp_label_761
	#marker Label
bp_label_761:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_765
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_762
	#marker Label
bp_label_762:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_765
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_763
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_763:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_764
	#inserting 0 to param reg if evaluates to false
bp_label_765:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_764:
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
	j	bp_label_766
	#marker Label
bp_label_766:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_770
	j	bp_label_767
	#			 __freeing reg $t0
	#marker Label
bp_label_767:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_770
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_768
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_768:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_769
	#inserting 0 to param reg if evaluates to false
bp_label_770:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_769:
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
	j	bp_label_771
	#marker Label
bp_label_771:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_775
	#			 __freeing reg $t0
	#If False
	j	bp_label_772
	#marker Label
bp_label_772:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_775
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_773
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_773:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_774
	#inserting 0 to param reg if evaluates to false
bp_label_775:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_774:
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
	j	bp_label_776
	#marker Label
bp_label_776:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_777
	#marker Label
bp_label_777:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_780
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_778
	#reach Or derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_785
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_782
	#marker Label
bp_label_782:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_785
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_783
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_783:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_784
	#inserting 0 to param reg if evaluates to false
bp_label_785:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_784:
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
	j	bp_label_786
	#marker Label
bp_label_786:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_790
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_787
	#marker Label
bp_label_787:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_790
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_788
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_788:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_789
	#inserting 0 to param reg if evaluates to false
bp_label_790:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_789:
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
	j	bp_label_791
	#marker Label
bp_label_791:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_795
	j	bp_label_792
	#			 __freeing reg $t0
	#marker Label
bp_label_792:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_795
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_793
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_793:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_794
	#inserting 0 to param reg if evaluates to false
bp_label_795:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_794:
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
	j	bp_label_796
	#marker Label
bp_label_796:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_800
	#			 __freeing reg $t0
	#If False
	j	bp_label_797
	#marker Label
bp_label_797:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_800
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_798
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_798:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_799
	#inserting 0 to param reg if evaluates to false
bp_label_800:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_799:
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
	j	bp_label_801
	#marker Label
bp_label_801:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_802
	#marker Label
bp_label_802:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_805
	j	bp_label_803
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_803:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_804
	#inserting 0 to param reg if evaluates to false
bp_label_805:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_804:
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
	j	bp_label_806
	#marker Label
bp_label_806:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_810
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_807
	#marker Label
bp_label_807:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_810
	j	bp_label_808
	#			 __freeing reg $t0
	#reach Or derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_815
	#			 __freeing reg $t1
	#			 __freeing reg $t0
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
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_815
	j	bp_label_813
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_813:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_814
	#inserting 0 to param reg if evaluates to false
bp_label_815:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_814:
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
	j	bp_label_816
	#marker Label
bp_label_816:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_820
	j	bp_label_817
	#			 __freeing reg $t0
	#marker Label
bp_label_817:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_820
	j	bp_label_818
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_818:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_819
	#inserting 0 to param reg if evaluates to false
bp_label_820:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_819:
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
	j	bp_label_821
	#marker Label
bp_label_821:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_825
	#			 __freeing reg $t0
	#If False
	j	bp_label_822
	#marker Label
bp_label_822:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_825
	j	bp_label_823
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_823:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_824
	#inserting 0 to param reg if evaluates to false
bp_label_825:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_824:
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
	j	bp_label_826
	#marker Label
bp_label_826:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_827
	#marker Label
bp_label_827:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_830
	#			 __freeing reg $t0
	#If False
	j	bp_label_828
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_828:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_829
	#inserting 0 to param reg if evaluates to false
bp_label_830:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_829:
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
	j	bp_label_831
	#marker Label
bp_label_831:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_835
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_832
	#marker Label
bp_label_832:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_835
	#			 __freeing reg $t0
	#If False
	j	bp_label_833
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_833:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_834
	#inserting 0 to param reg if evaluates to false
bp_label_835:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_834:
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
	j	bp_label_836
	#marker Label
bp_label_836:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_840
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_837
	#marker Label
bp_label_837:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_840
	#			 __freeing reg $t0
	#If False
	j	bp_label_838
	#reach Or derivation
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
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_845
	j	bp_label_842
	#			 __freeing reg $t0
	#marker Label
bp_label_842:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_845
	#			 __freeing reg $t0
	#If False
	j	bp_label_843
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_843:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_844
	#inserting 0 to param reg if evaluates to false
bp_label_845:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_844:
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
	j	bp_label_846
	#marker Label
bp_label_846:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_850
	#			 __freeing reg $t0
	#If False
	j	bp_label_847
	#marker Label
bp_label_847:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_850
	#			 __freeing reg $t0
	#If False
	j	bp_label_848
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_848:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_849
	#inserting 0 to param reg if evaluates to false
bp_label_850:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_849:
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
	j	bp_label_851
	#marker Label
bp_label_851:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_852
	#marker Label
bp_label_852:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_855
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_853:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_854
	#inserting 0 to param reg if evaluates to false
bp_label_855:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_854:
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
	j	bp_label_856
	#marker Label
bp_label_856:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_857
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_858
	#marker Label
bp_label_857:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_860
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_858:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_859
	#inserting 0 to param reg if evaluates to false
bp_label_860:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_859:
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
	j	bp_label_861
	#marker Label
bp_label_861:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_862
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_863
	#marker Label
bp_label_862:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_865
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_863:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_864
	#inserting 0 to param reg if evaluates to false
bp_label_865:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_864:
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
	j	bp_label_866
	#marker Label
bp_label_866:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_867
	j	bp_label_868
	#			 __freeing reg $t0
	#marker Label
bp_label_867:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_870
	#reach And derivation
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
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_872
	#			 __freeing reg $t0
	#If False
	j	bp_label_873
	#marker Label
bp_label_872:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_875
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_873:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_874
	#inserting 0 to param reg if evaluates to false
bp_label_875:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_874:
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
	j	bp_label_876
	#marker Label
bp_label_876:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_877
	#marker Label
bp_label_877:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_880
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_878
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_878:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_879
	#inserting 0 to param reg if evaluates to false
bp_label_880:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_879:
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
	j	bp_label_881
	#marker Label
bp_label_881:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_882
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_883
	#marker Label
bp_label_882:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_885
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_883
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_883:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_884
	#inserting 0 to param reg if evaluates to false
bp_label_885:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_884:
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
	j	bp_label_886
	#marker Label
bp_label_886:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_887
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_888
	#marker Label
bp_label_887:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_890
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_888
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_888:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_889
	#inserting 0 to param reg if evaluates to false
bp_label_890:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_889:
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
	j	bp_label_891
	#marker Label
bp_label_891:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_892
	j	bp_label_893
	#			 __freeing reg $t0
	#marker Label
bp_label_892:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_895
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_893
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_893:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_894
	#inserting 0 to param reg if evaluates to false
bp_label_895:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_894:
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
	j	bp_label_896
	#marker Label
bp_label_896:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_897
	#			 __freeing reg $t0
	#If False
	j	bp_label_898
	#marker Label
bp_label_897:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_900
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_898
	#reach And derivation
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
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_902
	#marker Label
bp_label_902:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_905
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_903
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_903:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_904
	#inserting 0 to param reg if evaluates to false
bp_label_905:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_904:
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
	j	bp_label_906
	#marker Label
bp_label_906:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_907
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_908
	#marker Label
bp_label_907:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_910
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_908
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_908:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_909
	#inserting 0 to param reg if evaluates to false
bp_label_910:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_909:
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
	j	bp_label_911
	#marker Label
bp_label_911:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_912
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_913
	#marker Label
bp_label_912:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_915
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_913
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_913:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_914
	#inserting 0 to param reg if evaluates to false
bp_label_915:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_914:
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
	j	bp_label_916
	#marker Label
bp_label_916:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_917
	j	bp_label_918
	#			 __freeing reg $t0
	#marker Label
bp_label_917:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_920
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_918
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_918:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_919
	#inserting 0 to param reg if evaluates to false
bp_label_920:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_919:
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
	j	bp_label_921
	#marker Label
bp_label_921:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_922
	#			 __freeing reg $t0
	#If False
	j	bp_label_923
	#marker Label
bp_label_922:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_925
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_923
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_923:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_924
	#inserting 0 to param reg if evaluates to false
bp_label_925:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_924:
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
	j	bp_label_926
	#marker Label
bp_label_926:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_927
	#marker Label
bp_label_927:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_930
	j	bp_label_928
	#			 __freeing reg $t0
	#reach And derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_932
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_933
	#marker Label
bp_label_932:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_935
	j	bp_label_933
	#			 __freeing reg $t0
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_933:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_934
	#inserting 0 to param reg if evaluates to false
bp_label_935:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_934:
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
	j	bp_label_936
	#marker Label
bp_label_936:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_937
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_938
	#marker Label
bp_label_937:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_940
	j	bp_label_938
	#			 __freeing reg $t0
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_938:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_939
	#inserting 0 to param reg if evaluates to false
bp_label_940:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_939:
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
	j	bp_label_941
	#marker Label
bp_label_941:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_942
	j	bp_label_943
	#			 __freeing reg $t0
	#marker Label
bp_label_942:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_945
	j	bp_label_943
	#			 __freeing reg $t0
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_943:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_944
	#inserting 0 to param reg if evaluates to false
bp_label_945:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_944:
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
	j	bp_label_946
	#marker Label
bp_label_946:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_947
	#			 __freeing reg $t0
	#If False
	j	bp_label_948
	#marker Label
bp_label_947:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_950
	j	bp_label_948
	#			 __freeing reg $t0
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_948:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_949
	#inserting 0 to param reg if evaluates to false
bp_label_950:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_949:
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
	j	bp_label_951
	#marker Label
bp_label_951:
	#func header store regs before call
	#stored 0 registers
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_952
	#marker Label
bp_label_952:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_955
	#			 __freeing reg $t0
	#If False
	j	bp_label_953
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_953:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_954
	#inserting 0 to param reg if evaluates to false
bp_label_955:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_954:
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
	j	bp_label_956
	#marker Label
bp_label_956:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	blt $t0, $t1,bp_label_957
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_958
	#marker Label
bp_label_957:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_960
	#			 __freeing reg $t0
	#If False
	j	bp_label_958
	#reach And derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_962
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_963
	#marker Label
bp_label_962:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_965
	#			 __freeing reg $t0
	#If False
	j	bp_label_963
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_963:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_964
	#inserting 0 to param reg if evaluates to false
bp_label_965:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_964:
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
	j	bp_label_966
	#marker Label
bp_label_966:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_111
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func True
	bne $t0, $zero,bp_label_967
	j	bp_label_968
	#			 __freeing reg $t0
	#marker Label
bp_label_967:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_970
	#			 __freeing reg $t0
	#If False
	j	bp_label_968
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_968:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_969
	#inserting 0 to param reg if evaluates to false
bp_label_970:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_969:
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
	j	bp_label_971
	#marker Label
bp_label_971:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_972
	#			 __freeing reg $t0
	#If False
	j	bp_label_973
	#marker Label
bp_label_972:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_975
	#			 __freeing reg $t0
	#If False
	j	bp_label_973
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_973:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_974
	#inserting 0 to param reg if evaluates to false
bp_label_975:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_974:
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
	j	bp_label_976
	#marker Label
bp_label_976:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_977
	#marker Label
bp_label_977:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_978
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_978:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_979
	#inserting 0 to param reg if evaluates to false
bp_label_980:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_979:
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
	j	bp_label_981
	#marker Label
bp_label_981:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_985
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_982
	#marker Label
bp_label_982:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_983
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_983:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_984
	#inserting 0 to param reg if evaluates to false
bp_label_985:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_984:
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
	j	bp_label_986
	#marker Label
bp_label_986:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_990
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_987
	#marker Label
bp_label_987:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_988
	#reach Or derivation
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
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_995
	j	bp_label_992
	#			 __freeing reg $t0
	#marker Label
bp_label_992:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_993
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_993:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_994
	#inserting 0 to param reg if evaluates to false
bp_label_995:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_994:
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
	j	bp_label_996
	#marker Label
bp_label_996:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1000
	#			 __freeing reg $t0
	#If False
	j	bp_label_997
	#marker Label
bp_label_997:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_998
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_998:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_999
	#inserting 0 to param reg if evaluates to false
bp_label_1000:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_999:
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
	j	bp_label_1001
	#marker Label
bp_label_1001:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_1002
	#marker Label
bp_label_1002:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1005
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1003
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1003:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1004
	#inserting 0 to param reg if evaluates to false
bp_label_1005:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1004:
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
	j	bp_label_1006
	#marker Label
bp_label_1006:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1010
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1007
	#marker Label
bp_label_1007:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1010
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1008
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1008:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1009
	#inserting 0 to param reg if evaluates to false
bp_label_1010:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1009:
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
	j	bp_label_1011
	#marker Label
bp_label_1011:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1015
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1012
	#marker Label
bp_label_1012:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1015
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1013
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1013:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1014
	#inserting 0 to param reg if evaluates to false
bp_label_1015:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1014:
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
	j	bp_label_1016
	#marker Label
bp_label_1016:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_1020
	j	bp_label_1017
	#			 __freeing reg $t0
	#marker Label
bp_label_1017:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1020
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1018
	#reach Or derivation
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
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1025
	#			 __freeing reg $t0
	#If False
	j	bp_label_1022
	#marker Label
bp_label_1022:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1025
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1023
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1023:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1024
	#inserting 0 to param reg if evaluates to false
bp_label_1025:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1024:
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
	j	bp_label_1026
	#marker Label
bp_label_1026:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_1027
	#marker Label
bp_label_1027:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1030
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1028
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1028:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1029
	#inserting 0 to param reg if evaluates to false
bp_label_1030:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1029:
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
	j	bp_label_1031
	#marker Label
bp_label_1031:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1035
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1032
	#marker Label
bp_label_1032:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1035
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1033
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1033:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1034
	#inserting 0 to param reg if evaluates to false
bp_label_1035:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1034:
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
	j	bp_label_1036
	#marker Label
bp_label_1036:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1040
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1037
	#marker Label
bp_label_1037:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1040
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1038
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1038:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1039
	#inserting 0 to param reg if evaluates to false
bp_label_1040:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1039:
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
	j	bp_label_1041
	#marker Label
bp_label_1041:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_1045
	j	bp_label_1042
	#			 __freeing reg $t0
	#marker Label
bp_label_1042:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1045
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1043
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1043:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1044
	#inserting 0 to param reg if evaluates to false
bp_label_1045:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1044:
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
	j	bp_label_1046
	#marker Label
bp_label_1046:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1050
	#			 __freeing reg $t0
	#If False
	j	bp_label_1047
	#marker Label
bp_label_1047:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1050
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1048
	#reach Or derivation
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
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_1052
	#marker Label
bp_label_1052:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_1055
	j	bp_label_1053
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1053:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1054
	#inserting 0 to param reg if evaluates to false
bp_label_1055:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1054:
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
	j	bp_label_1056
	#marker Label
bp_label_1056:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1060
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1057
	#marker Label
bp_label_1057:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_1060
	j	bp_label_1058
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1058:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1059
	#inserting 0 to param reg if evaluates to false
bp_label_1060:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1059:
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
	j	bp_label_1061
	#marker Label
bp_label_1061:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1065
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1062
	#marker Label
bp_label_1062:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_1065
	j	bp_label_1063
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1063:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1064
	#inserting 0 to param reg if evaluates to false
bp_label_1065:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1064:
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
	j	bp_label_1066
	#marker Label
bp_label_1066:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_1070
	j	bp_label_1067
	#			 __freeing reg $t0
	#marker Label
bp_label_1067:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_1070
	j	bp_label_1068
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1068:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1069
	#inserting 0 to param reg if evaluates to false
bp_label_1070:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1069:
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
	j	bp_label_1071
	#marker Label
bp_label_1071:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1075
	#			 __freeing reg $t0
	#If False
	j	bp_label_1072
	#marker Label
bp_label_1072:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_1075
	j	bp_label_1073
	#			 __freeing reg $t0
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1073:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1074
	#inserting 0 to param reg if evaluates to false
bp_label_1075:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1074:
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
	j	bp_label_1076
	#marker Label
bp_label_1076:
	#func header store regs before call
	#stored 0 registers
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_1077
	#marker Label
bp_label_1077:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1080
	#			 __freeing reg $t0
	#If False
	j	bp_label_1078
	#reach Or derivation
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
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_1085
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1082
	#marker Label
bp_label_1082:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1085
	#			 __freeing reg $t0
	#If False
	j	bp_label_1083
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1083:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1084
	#inserting 0 to param reg if evaluates to false
bp_label_1085:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1084:
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
	j	bp_label_1086
	#marker Label
bp_label_1086:
	#func header store regs before call
	#stored 0 registers
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_1090
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1087
	#marker Label
bp_label_1087:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1090
	#			 __freeing reg $t0
	#If False
	j	bp_label_1088
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1088:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1089
	#inserting 0 to param reg if evaluates to false
bp_label_1090:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1089:
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
	j	bp_label_1091
	#marker Label
bp_label_1091:
	#func header store regs before call
	#stored 0 registers
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_132
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#a Bool Func False
	bne $t0, $zero,bp_label_1095
	j	bp_label_1092
	#			 __freeing reg $t0
	#marker Label
bp_label_1092:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1095
	#			 __freeing reg $t0
	#If False
	j	bp_label_1093
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1093:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1094
	#inserting 0 to param reg if evaluates to false
bp_label_1095:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1094:
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
	j	bp_label_1096
	#marker Label
bp_label_1096:
	#func header store regs before call
	#stored 0 registers
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1100
	#			 __freeing reg $t0
	#If False
	j	bp_label_1097
	#marker Label
bp_label_1097:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_1100
	#			 __freeing reg $t0
	#If False
	j	bp_label_1098
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1098:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1099
	#inserting 0 to param reg if evaluates to false
bp_label_1100:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1099:
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
	j	bp_label_1101
	#marker Label
bp_label_1101:
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
	bgt $t0, $t1,bp_label_1102
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1103
	#marker Label
bp_label_1102:
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
	beq $t0, $t1,bp_label_1105
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1103
	#reach And derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1103:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1104
	#inserting 0 to param reg if evaluates to false
bp_label_1105:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1104:
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
	j	bp_label_1106
	#marker Label
bp_label_1106:
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
	beq $t0, $t1,bp_label_1107
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1108
	#marker Label
bp_label_1107:
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
	bgt $t0, $t1,bp_label_1110
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1108
	#reach And derivation
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
	blt $t0, $t1,bp_label_1115
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1112
	#marker Label
bp_label_1112:
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
	bne $t0, $t1,bp_label_1115
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1113
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1113:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1114
	#inserting 0 to param reg if evaluates to false
bp_label_1115:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1114:
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
	j	bp_label_1116
	#marker Label
bp_label_1116:
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
	bne $t0, $t1,bp_label_1120
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1117
	#marker Label
bp_label_1117:
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
	blt $t0, $t1,bp_label_1120
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_1118
	#reach Or derivation
	#complicated bool exp as a function parameter
	#inserting 1 to param reg if evaluates to true
bp_label_1118:
	#			 __allocating reg $t0
	li	$t0,1
	j	bp_label_1119
	#inserting 0 to param reg if evaluates to false
bp_label_1120:
	#			 __allocating reg $t0
	li	$t0,0
bp_label_1119:
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
	j	bp_label_1121
bp_label_1121:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
