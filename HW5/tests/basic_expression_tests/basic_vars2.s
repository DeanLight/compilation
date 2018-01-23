.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "\t"
string_label_1:	.asciiz "\t"
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
	li	$t0,10
	# allocating word on stack for local variable x
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, ($fp)
	sw $t0, ($fp)
	#end of statement jump
	j	bp_label_0
	#marker Label
bp_label_0:
	li	$t0,30
	# allocating word on stack for local variable y
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, 4($fp)
	sw $t0, 4($fp)
	#end of statement jump
	j	bp_label_1
	#marker Label
bp_label_1:
	li	$t0,5
	li	$t1,3
	#multiply
	mult	$t0,$t1
	mflo	$t0
	li	$t1,21
	#add
	add	$t0,$t0,$t1
	li	$t1,2
	#div
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	li	$t1,3
	#div
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	# allocating word on stack for local variable z
	addiu $sp, $sp, -4
	# and initializing it to 0
	sw $zero, 8($fp)
	sw $t0, 8($fp)
	#end of statement jump
	j	bp_label_2
	#marker Label
bp_label_2:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	#Getting Var falue for [Exp->id]: z
	lw $t0, 8($fp)
	#preparing to call printi
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	move	$fp,$sp
	#jumping to func: printi
	jal	printi
	#returned from func: printi
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_3
	#marker Label
bp_label_3:
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
	j	bp_label_4
	#marker Label
bp_label_4:
	li	$t0,1
	li	$t1,1
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
	#add
	add	$s4,$s4,$s5
	#add
	add	$s3,$s3,$s4
	#add
	add	$s2,$s2,$s3
	#add
	add	$s1,$s1,$s2
	#add
	add	$s0,$s0,$s1
	#add
	add	$t8,$t8,$s0
	#add
	add	$t7,$t7,$t8
	#add
	add	$t6,$t6,$t7
	#add
	add	$t5,$t5,$t6
	#add
	add	$t4,$t4,$t5
	#add
	add	$t3,$t3,$t4
	#add
	add	$t2,$t2,$t3
	#add
	add	$t1,$t1,$t2
	#add
	add	$t0,$t0,$t1
	sw $t0, ($fp)
	#end of statement jump
	j	bp_label_5
	#marker Label
bp_label_5:
	#func header store regs before call
	addiu $sp, $sp, -0
	#stored 0 registers
	#Getting Var falue for [Exp->id]: x
	lw $t0, ($fp)
	#preparing to call printi
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	move	$fp,$sp
	#jumping to func: printi
	jal	printi
	#returned from func: printi
	#poping 1 params from stack 
	addiu $sp, $sp, 4
	#restoring ra and fp
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	#restoring 0 previously used registers
	#Moving funcRes (if exists) to next free register
	#finished calling printi
	#end of statement jump
	j	bp_label_6
bp_label_6:
	#Adding an extre return just in case
	jr	$ra
