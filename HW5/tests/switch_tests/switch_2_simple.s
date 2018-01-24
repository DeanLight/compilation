.data
pvufne1:	.asciiz "Error division by zero
"
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
	li	$t0,1
	sw $t0, ($fp)
	#end of statement jump
	j	bp_label_0
	#marker Label
bp_label_0:
	li	$t0,0
	#Getting Var falue for [Exp->id]: x offset is ($fp)
	lw $t1, ($fp)
	#add
	addu	$t0,$t0,$t1
	li	$t1,0
	#add
	addu	$t0,$t0,$t1
	#switch!
	j	bp_label_5
	#marker Label
bp_label_1:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	li	$t0,1
	#preparing to call printi
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_2
	#marker Label
bp_label_2:
	#Getting Var falue for [Exp->id]: x offset is ($fp)
	lw $t1, ($fp)
	li	$t2,1
	li	$t3,1
	li	$t4,1
	li	$t5,1
	li	$t6,1
	li	$t7,1
	li	$t8,1
	li	$s0,1
	li	$s1,1
	li	$s2,1
	li	$s3,1
	li	$s4,1
	li	$s5,1
	li	$s6,1
	li	$s7,1
	li	$t8,1
	li	$t9,1
	#add
	addu	$t8,$t8,$t9
	#subtruct
	subu	$s7,$s7,$t8
	#add
	addu	$s6,$s6,$s7
	#subtruct
	subu	$s5,$s5,$s6
	#add
	addu	$s4,$s4,$s5
	#subtruct
	subu	$s3,$s3,$s4
	#add
	addu	$s2,$s2,$s3
	#subtruct
	subu	$s1,$s1,$s2
	#add
	addu	$s0,$s0,$s1
	#subtruct
	subu	$t8,$t8,$s0
	#add
	addu	$t7,$t7,$t8
	#subtruct
	subu	$t6,$t6,$t7
	#add
	addu	$t5,$t5,$t6
	#subtruct
	subu	$t4,$t4,$t5
	#add
	addu	$t3,$t3,$t4
	#subtruct
	subu	$t2,$t2,$t3
	#add
	addu	$t1,$t1,$t2
	sw $t1, ($fp)
	#end of statement jump
	j	bp_label_3
	#marker Label
bp_label_3:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	li	$t0,2
	#preparing to call printi
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_4
	#marker Label
bp_label_4:
	#Getting Var falue for [Exp->id]: x offset is ($fp)
	lw $t1, ($fp)
	li	$t2,1
	#add
	addu	$t1,$t1,$t2
	sw $t1, ($fp)
	#end of statement jump
	j	bp_label_6
	#catching falling cases
	j	bp_label_6
	#switch init label
bp_label_5:
	beq $t0,1,bp_label_1
	beq $t0,2,bp_label_3
	#end of switch:
bp_label_6:
	#end of statement jump
	j	bp_label_7
	#marker Label
bp_label_7:
	li	$t0,1
	#Getting Var falue for [Exp->id]: x offset is ($fp)
	lw $t1, ($fp)
	#multiply
	mult	$t0,$t1
	mflo	$t0
	li	$t1,1
	#multiply
	mult	$t0,$t1
	mflo	$t0
	#switch!
	j	bp_label_13
	#marker Label
bp_label_8:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	li	$t0,0
	#preparing to call printi
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_9
	#marker Label
bp_label_9:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	li	$t0,5
	#preparing to call printi
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_10
	#marker Label
bp_label_10:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	li	$t0,3
	#preparing to call printi
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_11
	#marker Label
bp_label_11:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	li	$t0,4
	#preparing to call printi
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_12
	#marker Label
bp_label_12:
	#func header store regs before call
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	#stored 1 registers
	li	$t0,5
	#preparing to call printi
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	#pushing reg $t0 to stack
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	#restoring 1 previously used registers
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_14
	#catching falling cases
	j	bp_label_14
	#switch init label
bp_label_13:
	beq $t0,0,bp_label_8
	beq $t0,5,bp_label_9
	beq $t0,3,bp_label_10
	beq $t0,5,bp_label_12
	#end of switch:
bp_label_14:
	#end of statement jump
	j	bp_label_15
bp_label_15:
	#Adding an extre return just in case
	move	$sp,$fp
	jr	$ra
