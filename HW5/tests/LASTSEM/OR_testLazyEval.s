.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "Success!\n"
string_label_1:	.asciiz "Success!\n"
.text
	#first program point
main:
	#initialize fp
	move	$fp,$sp
	jal	label_113
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
	#Func divideBy0:
label_29:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,0
	#div
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	#			 __freeing reg $t1
	sw $t0, ($fp)
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_0
	#marker Label
bp_label_0:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_2
	#return noneVoid in v0
	#returning from a boolean function
bp_label_2:
	li	$v0,1
	j	bp_label_1
bp_label_3:
	li	$v0,0
bp_label_1:
	move	$sp,$fp
	jr	$ra
bp_label_4:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func True:
label_69:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_6
	#return noneVoid in v0
	#returning from a boolean function
bp_label_6:
	li	$v0,1
	j	bp_label_5
bp_label_7:
	li	$v0,0
bp_label_5:
	move	$sp,$fp
	jr	$ra
bp_label_8:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func False:
label_91:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_11
	#return noneVoid in v0
	#returning from a boolean function
bp_label_10:
	li	$v0,1
	j	bp_label_9
bp_label_11:
	li	$v0,0
bp_label_9:
	move	$sp,$fp
	jr	$ra
bp_label_12:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
	#Func main:
label_113:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived true
bExpAss_nfjdn0:
	#assigning True to t
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_13
bExpAss_nfjdn1:
	#assigning False to t
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_13
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_13
	#marker Label
bp_label_13:
	#preparing for new var
	#allocationg words on stack 
	addiu $sp, $sp, -4
	#exp derived false
bExpAss_nfjdn2:
	#assigning True to f
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -4($fp)
	j	bp_label_14
bExpAss_nfjdn3:
	#assigning False to f
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -4($fp)
	j	bp_label_14
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_14
	#marker Label
bp_label_14:
	# allocating word on stack for local variable bar
	#allocationg words on stack 
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, -8($fp)
	#end of statement jump
	j	bp_label_15
	#marker Label
bp_label_15:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn4
	#marker Label
bp_label_16:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn4
	j	bExpAss_nfjdn5
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn4:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_17
bExpAss_nfjdn5:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_17
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_17
	#marker Label
bp_label_17:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn7
	#marker Label
bp_label_18:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn6
	j	bExpAss_nfjdn7
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn6:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_19
bExpAss_nfjdn7:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_19
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_19
	#marker Label
bp_label_19:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	bgt $t0, $t1,bExpAss_nfjdn8
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_20
	#marker Label
bp_label_20:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn8
	j	bExpAss_nfjdn9
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn8:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_21
bExpAss_nfjdn9:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_21
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_21
	#marker Label
bp_label_21:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,5
	bgt $t0, $t1,bp_label_22
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn11
	#marker Label
bp_label_22:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn10
	j	bExpAss_nfjdn11
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn10:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_23
bExpAss_nfjdn11:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_23
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_23
	#marker Label
bp_label_23:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn12
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_24
	#marker Label
bp_label_24:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn12
	j	bExpAss_nfjdn13
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn12:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_25
bExpAss_nfjdn13:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_25
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_25
	#marker Label
bp_label_25:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_26
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn15
	#marker Label
bp_label_26:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn14
	j	bExpAss_nfjdn15
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn14:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_27
bExpAss_nfjdn15:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_27
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_27
	#marker Label
bp_label_27:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_69
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bExpAss_nfjdn16
	j	bp_label_28
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_28:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn16
	j	bExpAss_nfjdn17
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn16:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_29
bExpAss_nfjdn17:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_29
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_29
	#marker Label
bp_label_29:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_91
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_30
	j	bExpAss_nfjdn19
	#returning from a boolean function
	#			 __freeing reg $t0
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn18
	j	bExpAss_nfjdn19
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn18:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_31
bExpAss_nfjdn19:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_31
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_31
	#marker Label
bp_label_31:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn20
	#			 __freeing reg $t0
	#If False
	j	bp_label_32
	#marker Label
bp_label_32:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn20
	j	bExpAss_nfjdn21
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn20:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_33
bExpAss_nfjdn21:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_33
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_33
	#marker Label
bp_label_33:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_34
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn23
	#marker Label
bp_label_34:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn22
	j	bExpAss_nfjdn23
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn22:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_35
bExpAss_nfjdn23:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_35
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_35
	#marker Label
bp_label_35:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_36
	#marker Label
bp_label_36:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn24
	#reach And derivation
	#marker Label
bp_label_37:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn24
	j	bExpAss_nfjdn25
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn24:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_38
bExpAss_nfjdn25:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_38
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_38
	#marker Label
bp_label_38:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	bgt $t0, $t1,bp_label_39
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_40
	#marker Label
bp_label_39:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn26
	#reach And derivation
	#marker Label
bp_label_40:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn26
	j	bExpAss_nfjdn27
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn26:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_41
bExpAss_nfjdn27:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_41
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_41
	#marker Label
bp_label_41:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_42
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_43
	#marker Label
bp_label_42:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn28
	#reach And derivation
	#marker Label
bp_label_43:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn28
	j	bExpAss_nfjdn29
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn28:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_44
bExpAss_nfjdn29:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_44
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_44
	#marker Label
bp_label_44:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_69
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_45
	j	bp_label_46
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_45:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn30
	#reach And derivation
	#marker Label
bp_label_46:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn30
	j	bExpAss_nfjdn31
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn30:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_47
bExpAss_nfjdn31:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_47
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_47
	#marker Label
bp_label_47:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_48
	#			 __freeing reg $t0
	#If False
	j	bp_label_49
	#marker Label
bp_label_48:
	#exp derived true
	#a True exp in boolean operator
	j	bExpAss_nfjdn32
	#reach And derivation
	#marker Label
bp_label_49:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn32
	j	bExpAss_nfjdn33
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn32:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_50
bExpAss_nfjdn33:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_50
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_50
	#marker Label
bp_label_50:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_51
	#marker Label
bp_label_51:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	bgt $t0, $t1,bExpAss_nfjdn34
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_52
	#reach And derivation
	#marker Label
bp_label_52:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn34
	j	bExpAss_nfjdn35
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn34:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_53
bExpAss_nfjdn35:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_53
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_53
	#marker Label
bp_label_53:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	bgt $t0, $t1,bp_label_54
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_55
	#marker Label
bp_label_54:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	bgt $t0, $t1,bExpAss_nfjdn36
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_55
	#reach And derivation
	#marker Label
bp_label_55:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn36
	j	bExpAss_nfjdn37
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn36:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_56
bExpAss_nfjdn37:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_56
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_56
	#marker Label
bp_label_56:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_57
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_58
	#marker Label
bp_label_57:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	bgt $t0, $t1,bExpAss_nfjdn38
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_58
	#reach And derivation
	#marker Label
bp_label_58:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn38
	j	bExpAss_nfjdn39
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn38:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_59
bExpAss_nfjdn39:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_59
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_59
	#marker Label
bp_label_59:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_69
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_60
	j	bp_label_61
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_60:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	bgt $t0, $t1,bExpAss_nfjdn40
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_61
	#reach And derivation
	#marker Label
bp_label_61:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn40
	j	bExpAss_nfjdn41
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn40:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_62
bExpAss_nfjdn41:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_62
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_62
	#marker Label
bp_label_62:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_63
	#			 __freeing reg $t0
	#If False
	j	bp_label_64
	#marker Label
bp_label_63:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	bgt $t0, $t1,bExpAss_nfjdn42
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_64
	#reach And derivation
	#marker Label
bp_label_64:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn42
	j	bExpAss_nfjdn43
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn42:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_65
bExpAss_nfjdn43:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_65
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_65
	#marker Label
bp_label_65:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_66
	#marker Label
bp_label_66:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn44
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_67
	#reach And derivation
	#marker Label
bp_label_67:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn44
	j	bExpAss_nfjdn45
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn44:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_68
bExpAss_nfjdn45:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_68
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_68
	#marker Label
bp_label_68:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	bgt $t0, $t1,bp_label_69
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_70
	#marker Label
bp_label_69:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn46
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_70
	#reach And derivation
	#marker Label
bp_label_70:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn46
	j	bExpAss_nfjdn47
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn46:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_71
bExpAss_nfjdn47:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_71
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_71
	#marker Label
bp_label_71:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_72
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_73
	#marker Label
bp_label_72:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn48
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_73
	#reach And derivation
	#marker Label
bp_label_73:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn48
	j	bExpAss_nfjdn49
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn48:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_74
bExpAss_nfjdn49:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_74
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_74
	#marker Label
bp_label_74:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_69
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_75
	j	bp_label_76
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_75:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn50
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_76
	#reach And derivation
	#marker Label
bp_label_76:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn50
	j	bExpAss_nfjdn51
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn50:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_77
bExpAss_nfjdn51:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_77
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_77
	#marker Label
bp_label_77:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_78
	#			 __freeing reg $t0
	#If False
	j	bp_label_79
	#marker Label
bp_label_78:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn52
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_79
	#reach And derivation
	#marker Label
bp_label_79:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn52
	j	bExpAss_nfjdn53
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn52:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_80
bExpAss_nfjdn53:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_80
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_80
	#marker Label
bp_label_80:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_81
	#marker Label
bp_label_81:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_69
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bExpAss_nfjdn54
	j	bp_label_82
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_82:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn54
	j	bExpAss_nfjdn55
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn54:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_83
bExpAss_nfjdn55:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_83
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_83
	#marker Label
bp_label_83:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	bgt $t0, $t1,bp_label_84
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_85
	#marker Label
bp_label_84:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_69
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bExpAss_nfjdn56
	j	bp_label_85
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_85:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn56
	j	bExpAss_nfjdn57
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn56:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_86
bExpAss_nfjdn57:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_86
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_86
	#marker Label
bp_label_86:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_87
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_88
	#marker Label
bp_label_87:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_69
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bExpAss_nfjdn58
	j	bp_label_88
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_88:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn58
	j	bExpAss_nfjdn59
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn58:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_89
bExpAss_nfjdn59:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_89
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_89
	#marker Label
bp_label_89:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_69
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_90
	j	bp_label_91
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_90:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_69
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bExpAss_nfjdn60
	j	bp_label_91
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_91:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn60
	j	bExpAss_nfjdn61
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn60:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_92
bExpAss_nfjdn61:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_92
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_92
	#marker Label
bp_label_92:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_93
	#			 __freeing reg $t0
	#If False
	j	bp_label_94
	#marker Label
bp_label_93:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_69
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bExpAss_nfjdn62
	j	bp_label_94
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
	#marker Label
bp_label_94:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn62
	j	bExpAss_nfjdn63
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn62:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_95
bExpAss_nfjdn63:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_95
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_95
	#marker Label
bp_label_95:
	#exp derived true
	#a True exp in boolean operator
	j	bp_label_96
	#marker Label
bp_label_96:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn64
	#			 __freeing reg $t0
	#If False
	j	bp_label_97
	#reach And derivation
	#marker Label
bp_label_97:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn64
	j	bExpAss_nfjdn65
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn64:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_98
bExpAss_nfjdn65:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_98
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_98
	#marker Label
bp_label_98:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	bgt $t0, $t1,bp_label_99
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_100
	#marker Label
bp_label_99:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn66
	#			 __freeing reg $t0
	#If False
	j	bp_label_100
	#reach And derivation
	#marker Label
bp_label_100:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn66
	j	bExpAss_nfjdn67
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn66:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_101
bExpAss_nfjdn67:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_101
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_101
	#marker Label
bp_label_101:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	beq $t0, $t1,bp_label_102
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_103
	#marker Label
bp_label_102:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn68
	#			 __freeing reg $t0
	#If False
	j	bp_label_103
	#reach And derivation
	#marker Label
bp_label_103:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn68
	j	bExpAss_nfjdn69
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn68:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_104
bExpAss_nfjdn69:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_104
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_104
	#marker Label
bp_label_104:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_69
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling True
	#a Bool Func True
	bne $t0, $zero,bp_label_105
	j	bp_label_106
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_105:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn70
	#			 __freeing reg $t0
	#If False
	j	bp_label_106
	#reach And derivation
	#marker Label
bp_label_106:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn70
	j	bExpAss_nfjdn71
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn70:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_107
bExpAss_nfjdn71:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_107
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_107
	#marker Label
bp_label_107:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bp_label_108
	#			 __freeing reg $t0
	#If False
	j	bp_label_109
	#marker Label
bp_label_108:
	#Getting Var falue for [Exp->id]: t offset is ($fp)
	#			 __allocating reg $t0
	lw $t0, ($fp)
	#a Bool Var t in boolean operator
	#If true
	bne $t0, $zero,bExpAss_nfjdn72
	#			 __freeing reg $t0
	#If False
	j	bp_label_109
	#reach And derivation
	#marker Label
bp_label_109:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn72
	j	bExpAss_nfjdn73
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
bExpAss_nfjdn72:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_110
bExpAss_nfjdn73:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_110
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_110
	#marker Label
bp_label_110:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_111
	#marker Label
bp_label_111:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn75
	#reach Or derivation
	#marker Label
bp_label_112:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn74
	j	bExpAss_nfjdn75
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn74:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_113
bExpAss_nfjdn75:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_113
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_113
	#marker Label
bp_label_113:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	blt $t0, $t1,bp_label_115
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_114
	#marker Label
bp_label_114:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn77
	#reach Or derivation
	#marker Label
bp_label_115:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn76
	j	bExpAss_nfjdn77
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn76:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_116
bExpAss_nfjdn77:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_116
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_116
	#marker Label
bp_label_116:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_118
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_117
	#marker Label
bp_label_117:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn79
	#reach Or derivation
	#marker Label
bp_label_118:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn78
	j	bExpAss_nfjdn79
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn78:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_119
bExpAss_nfjdn79:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_119
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_119
	#marker Label
bp_label_119:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_91
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_121
	j	bp_label_120
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_120:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn81
	#reach Or derivation
	#marker Label
bp_label_121:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn80
	j	bExpAss_nfjdn81
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn80:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_122
bExpAss_nfjdn81:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_122
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_122
	#marker Label
bp_label_122:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_124
	#			 __freeing reg $t0
	#If False
	j	bp_label_123
	#marker Label
bp_label_123:
	#exp derived false
	#a False exp in boolean operator
	j	bExpAss_nfjdn83
	#reach Or derivation
	#marker Label
bp_label_124:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn82
	j	bExpAss_nfjdn83
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn82:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_125
bExpAss_nfjdn83:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_125
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_125
	#marker Label
bp_label_125:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_126
	#marker Label
bp_label_126:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	blt $t0, $t1,bp_label_127
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn85
	#reach Or derivation
	#marker Label
bp_label_127:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn84
	j	bExpAss_nfjdn85
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn84:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_128
bExpAss_nfjdn85:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_128
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_128
	#marker Label
bp_label_128:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	blt $t0, $t1,bp_label_130
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_129
	#marker Label
bp_label_129:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	blt $t0, $t1,bp_label_130
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn87
	#reach Or derivation
	#marker Label
bp_label_130:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn86
	j	bExpAss_nfjdn87
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn86:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_131
bExpAss_nfjdn87:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_131
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_131
	#marker Label
bp_label_131:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_133
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_132
	#marker Label
bp_label_132:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	blt $t0, $t1,bp_label_133
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn89
	#reach Or derivation
	#marker Label
bp_label_133:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn88
	j	bExpAss_nfjdn89
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn88:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_134
bExpAss_nfjdn89:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_134
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_134
	#marker Label
bp_label_134:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_91
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_136
	j	bp_label_135
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_135:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	blt $t0, $t1,bp_label_136
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn91
	#reach Or derivation
	#marker Label
bp_label_136:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn90
	j	bExpAss_nfjdn91
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn90:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_137
bExpAss_nfjdn91:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_137
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_137
	#marker Label
bp_label_137:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_139
	#			 __freeing reg $t0
	#If False
	j	bp_label_138
	#marker Label
bp_label_138:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	blt $t0, $t1,bp_label_139
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn93
	#reach Or derivation
	#marker Label
bp_label_139:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn92
	j	bExpAss_nfjdn93
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn92:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_140
bExpAss_nfjdn93:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_140
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_140
	#marker Label
bp_label_140:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_141
	#marker Label
bp_label_141:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_142
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn95
	#reach Or derivation
	#marker Label
bp_label_142:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn94
	j	bExpAss_nfjdn95
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn94:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_143
bExpAss_nfjdn95:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_143
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_143
	#marker Label
bp_label_143:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	blt $t0, $t1,bp_label_145
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_144
	#marker Label
bp_label_144:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_145
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn97
	#reach Or derivation
	#marker Label
bp_label_145:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn96
	j	bExpAss_nfjdn97
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn96:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_146
bExpAss_nfjdn97:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_146
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_146
	#marker Label
bp_label_146:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_148
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_147
	#marker Label
bp_label_147:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_148
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn99
	#reach Or derivation
	#marker Label
bp_label_148:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn98
	j	bExpAss_nfjdn99
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn98:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_149
bExpAss_nfjdn99:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_149
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_149
	#marker Label
bp_label_149:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_91
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_151
	j	bp_label_150
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_150:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_151
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn101
	#reach Or derivation
	#marker Label
bp_label_151:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn100
	j	bExpAss_nfjdn101
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn100:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_152
bExpAss_nfjdn101:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_152
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_152
	#marker Label
bp_label_152:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_154
	#			 __freeing reg $t0
	#If False
	j	bp_label_153
	#marker Label
bp_label_153:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_154
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bExpAss_nfjdn103
	#reach Or derivation
	#marker Label
bp_label_154:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn102
	j	bExpAss_nfjdn103
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn102:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_155
bExpAss_nfjdn103:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_155
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_155
	#marker Label
bp_label_155:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_156
	#marker Label
bp_label_156:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_91
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_157
	j	bExpAss_nfjdn105
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_157:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn104
	j	bExpAss_nfjdn105
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn104:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_158
bExpAss_nfjdn105:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_158
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_158
	#marker Label
bp_label_158:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	blt $t0, $t1,bp_label_160
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_159
	#marker Label
bp_label_159:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_91
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_160
	j	bExpAss_nfjdn107
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_160:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn106
	j	bExpAss_nfjdn107
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn106:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_161
bExpAss_nfjdn107:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_161
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_161
	#marker Label
bp_label_161:
	#			 __allocating reg $t0
	li	$t0,4
	#			 __allocating reg $t1
	li	$t1,4
	bne $t0, $t1,bp_label_163
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_162
	#marker Label
bp_label_162:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_91
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_163
	j	bExpAss_nfjdn109
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_163:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn108
	j	bExpAss_nfjdn109
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn108:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_164
bExpAss_nfjdn109:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_164
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_164
	#marker Label
bp_label_164:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_91
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_166
	j	bp_label_165
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_165:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_91
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_166
	j	bExpAss_nfjdn111
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_166:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn110
	j	bExpAss_nfjdn111
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn110:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_167
bExpAss_nfjdn111:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_167
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_167
	#marker Label
bp_label_167:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_169
	#			 __freeing reg $t0
	#If False
	j	bp_label_168
	#marker Label
bp_label_168:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_91
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_169
	j	bExpAss_nfjdn113
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach Or derivation
	#marker Label
bp_label_169:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn112
	j	bExpAss_nfjdn113
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn112:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_170
bExpAss_nfjdn113:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_170
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_170
	#marker Label
bp_label_170:
	#exp derived false
	#a False exp in boolean operator
	j	bp_label_171
	#marker Label
bp_label_171:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_172
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn115
	#reach Or derivation
	#marker Label
bp_label_172:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn114
	j	bExpAss_nfjdn115
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn114:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_173
bExpAss_nfjdn115:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_173
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_173
	#marker Label
bp_label_173:
	#			 __allocating reg $t0
	li	$t0,5
	#			 __allocating reg $t1
	li	$t1,4
	blt $t0, $t1,bp_label_175
	#			 __freeing reg $t1
	#			 __freeing reg $t0
	j	bp_label_174
	#marker Label
bp_label_174:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_175
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn117
	#reach Or derivation
	#marker Label
bp_label_175:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn116
	j	bExpAss_nfjdn117
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn116:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_176
bExpAss_nfjdn117:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_176
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_176
	#marker Label
bp_label_176:
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
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_178
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn119
	#reach Or derivation
	#marker Label
bp_label_178:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn118
	j	bExpAss_nfjdn119
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn118:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_179
bExpAss_nfjdn119:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_179
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_179
	#marker Label
bp_label_179:
	#func header store regs before call
	#stored 0 registers
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_91
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	#moving return value to new reg
	#			 __allocating reg $t0
	move	$t0,$v0
	#finished calling False
	#a Bool Func False
	bne $t0, $zero,bp_label_181
	j	bp_label_180
	#returning from a boolean function
	#			 __freeing reg $t0
	#marker Label
bp_label_180:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_181
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn121
	#reach Or derivation
	#marker Label
bp_label_181:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn120
	j	bExpAss_nfjdn121
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn120:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_182
bExpAss_nfjdn121:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_182
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_182
	#marker Label
bp_label_182:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_184
	#			 __freeing reg $t0
	#If False
	j	bp_label_183
	#marker Label
bp_label_183:
	#Getting Var falue for [Exp->id]: f offset is -4($fp)
	#			 __allocating reg $t0
	lw $t0, -4($fp)
	#a Bool Var f in boolean operator
	#If true
	bne $t0, $zero,bp_label_184
	#			 __freeing reg $t0
	#If False
	j	bExpAss_nfjdn123
	#reach Or derivation
	#marker Label
bp_label_184:
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
	#finished calling divideBy0
	#a Bool Func divideBy0
	bne $t0, $zero,bExpAss_nfjdn122
	j	bExpAss_nfjdn123
	#returning from a boolean function
	#			 __freeing reg $t0
	#reach And derivation
bExpAss_nfjdn122:
	#assigning True to bar
	#			 __allocating reg $t0
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_185
bExpAss_nfjdn123:
	#assigning False to bar
	#			 __allocating reg $t0
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_185
	#			 __freeing reg $t0
	#end of statement jump
	j	bp_label_185
	#marker Label
bp_label_185:
	#func header store regs before call
	#stored 0 registers
	#caught a string
	#marker Label
bp_label_186:
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
	j	bp_label_187
bp_label_187:
	#Adding an extre return just in case
	#restting sp
	move	$sp,$fp
	#for this extra return, we zero v0
	move	$v0,$zero
	jr	$ra
