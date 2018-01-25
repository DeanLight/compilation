.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "true\n"
string_label_1:	.asciiz "true\n"
string_label_2:	.asciiz "false\n"
string_label_3:	.asciiz "false\n"
.text
main:
	move	$fp,$sp
	jal	label_79
li $v0, 10
syscall
print:
lw $a0,4($sp)
li $v0,4
syscall
jr $ra
printi:
lw $a0,4($sp)
li $v0,1
syscall
jr $ra
nayalo:
	li	$v0, 4
	la	$a0, pvufne1
	syscall
li $v0, 10
syscall
label_21:
	lw $t0, 4($fp)
	bne $t0, $zero,bp_label_0
	j	bp_label_1
bp_label_0:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_1
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_2
bp_label_1:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_3
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_2
bp_label_2:
	j	bp_label_3
bp_label_3:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
label_63:
	li	$v0,1
	move	$sp,$fp
	jr	$ra
bp_label_4:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
label_71:
	li	$v0,0
	move	$sp,$fp
	jr	$ra
bp_label_5:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
label_79:
	addiu $sp, $sp, -4
bExpAss_nfjdn0:
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_6
bExpAss_nfjdn1:
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_6
	j	bp_label_6
bp_label_6:
	addiu $sp, $sp, -4
bExpAss_nfjdn2:
	li	$t0,1
	sw $t0, -4($fp)
	j	bp_label_7
bExpAss_nfjdn3:
	li	$t0,0
	sw $t0, -4($fp)
	j	bp_label_7
	j	bp_label_7
bp_label_7:
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn4
	j	bExpAss_nfjdn5
bExpAss_nfjdn4:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_8
bExpAss_nfjdn5:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_8
	j	bp_label_8
bp_label_8:
	lw $t0, -8($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_9
bp_label_9:
	addiu $sp, $sp, -4
bExpAss_nfjdn6:
	li	$t0,1
	sw $t0, -12($fp)
	j	bp_label_10
bExpAss_nfjdn7:
	li	$t0,0
	sw $t0, -12($fp)
	j	bp_label_10
	j	bp_label_10
bp_label_10:
	lw $t0, -12($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_11
bp_label_11:
	addiu $sp, $sp, -4
	lw $t0, ($fp)
bExpAss_nfjdn8:
	li	$t1,1
	sw $t1, -16($fp)
	j	bp_label_12
bExpAss_nfjdn9:
	li	$t1,0
	sw $t1, -16($fp)
	j	bp_label_12
	j	bp_label_12
bp_label_12:
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -16($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	j	bp_label_13
bp_label_13:
	addiu $sp, $sp, -4
	li	$t1,4
	li	$t2,5
	blt $t1, $t2,bExpAss_nfjdn10
	j	bExpAss_nfjdn11
bExpAss_nfjdn10:
	li	$t1,1
	sw $t1, -20($fp)
	j	bp_label_14
bExpAss_nfjdn11:
	li	$t1,0
	sw $t1, -20($fp)
	j	bp_label_14
	j	bp_label_14
bp_label_14:
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -20($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	j	bp_label_15
bp_label_15:
	addiu $sp, $sp, -4
	li	$t1,4
	li	$t2,4
	beq $t1, $t2,bExpAss_nfjdn12
	j	bExpAss_nfjdn13
bExpAss_nfjdn12:
	li	$t1,1
	sw $t1, -24($fp)
	j	bp_label_16
bExpAss_nfjdn13:
	li	$t1,0
	sw $t1, -24($fp)
	j	bp_label_16
	j	bp_label_16
bp_label_16:
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -24($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	j	bp_label_17
bp_label_17:
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	move	$t1,$v0
	bne $t1, $zero,bExpAss_nfjdn14
	j	bExpAss_nfjdn15
bExpAss_nfjdn14:
	li	$t1,1
	sw $t1, -28($fp)
	j	bp_label_18
bExpAss_nfjdn15:
	li	$t1,0
	sw $t1, -28($fp)
	j	bp_label_18
	j	bp_label_18
bp_label_18:
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -28($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	j	bp_label_19
bp_label_19:
	addiu $sp, $sp, -4
bExpAss_nfjdn16:
	li	$t1,1
	sw $t1, -32($fp)
	j	bp_label_20
bExpAss_nfjdn17:
	li	$t1,0
	sw $t1, -32($fp)
	j	bp_label_20
	j	bp_label_20
bp_label_20:
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -32($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	j	bp_label_21
bp_label_21:
	addiu $sp, $sp, -4
	lw $t1, -4($fp)
bExpAss_nfjdn18:
	li	$t2,1
	sw $t2, -36($fp)
	j	bp_label_22
bExpAss_nfjdn19:
	li	$t2,0
	sw $t2, -36($fp)
	j	bp_label_22
	j	bp_label_22
bp_label_22:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -36($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_23
bp_label_23:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn20
	j	bExpAss_nfjdn21
bExpAss_nfjdn20:
	li	$t2,1
	sw $t2, -40($fp)
	j	bp_label_24
bExpAss_nfjdn21:
	li	$t2,0
	sw $t2, -40($fp)
	j	bp_label_24
	j	bp_label_24
bp_label_24:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -40($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_25
bp_label_25:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn22
	j	bExpAss_nfjdn23
bExpAss_nfjdn22:
	li	$t2,1
	sw $t2, -44($fp)
	j	bp_label_26
bExpAss_nfjdn23:
	li	$t2,0
	sw $t2, -44($fp)
	j	bp_label_26
	j	bp_label_26
bp_label_26:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -44($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_27
bp_label_27:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_28
	j	bExpAss_nfjdn25
bp_label_28:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn24
	j	bExpAss_nfjdn25
bExpAss_nfjdn24:
	li	$t2,1
	sw $t2, -48($fp)
	j	bp_label_29
bExpAss_nfjdn25:
	li	$t2,0
	sw $t2, -48($fp)
	j	bp_label_29
	j	bp_label_29
bp_label_29:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -48($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_30
bp_label_30:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_31
	j	bExpAss_nfjdn27
bp_label_31:
	j	bExpAss_nfjdn27
bExpAss_nfjdn26:
	li	$t2,1
	sw $t2, -52($fp)
	j	bp_label_32
bExpAss_nfjdn27:
	li	$t2,0
	sw $t2, -52($fp)
	j	bp_label_32
	j	bp_label_32
bp_label_32:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -52($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_33
bp_label_33:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_34
	j	bExpAss_nfjdn29
bp_label_34:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn28
	j	bExpAss_nfjdn29
bExpAss_nfjdn28:
	li	$t2,1
	sw $t2, -56($fp)
	j	bp_label_35
bExpAss_nfjdn29:
	li	$t2,0
	sw $t2, -56($fp)
	j	bp_label_35
	j	bp_label_35
bp_label_35:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -56($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_36
bp_label_36:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_37
	j	bExpAss_nfjdn31
bp_label_37:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn30
	j	bExpAss_nfjdn31
bExpAss_nfjdn30:
	li	$t2,1
	sw $t2, -60($fp)
	j	bp_label_38
bExpAss_nfjdn31:
	li	$t2,0
	sw $t2, -60($fp)
	j	bp_label_38
	j	bp_label_38
bp_label_38:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -60($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_39
bp_label_39:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_40
	j	bExpAss_nfjdn33
bp_label_40:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn32
	j	bExpAss_nfjdn33
bExpAss_nfjdn32:
	li	$t2,1
	sw $t2, -64($fp)
	j	bp_label_41
bExpAss_nfjdn33:
	li	$t2,0
	sw $t2, -64($fp)
	j	bp_label_41
	j	bp_label_41
bp_label_41:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -64($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_42
bp_label_42:
	addiu $sp, $sp, -4
	j	bp_label_43
bp_label_43:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn34
	j	bExpAss_nfjdn35
bExpAss_nfjdn34:
	li	$t2,1
	sw $t2, -68($fp)
	j	bp_label_44
bExpAss_nfjdn35:
	li	$t2,0
	sw $t2, -68($fp)
	j	bp_label_44
	j	bp_label_44
bp_label_44:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -68($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_45
bp_label_45:
	addiu $sp, $sp, -4
	j	bp_label_46
bp_label_46:
	j	bExpAss_nfjdn37
bExpAss_nfjdn36:
	li	$t2,1
	sw $t2, -72($fp)
	j	bp_label_47
bExpAss_nfjdn37:
	li	$t2,0
	sw $t2, -72($fp)
	j	bp_label_47
	j	bp_label_47
bp_label_47:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -72($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_48
bp_label_48:
	addiu $sp, $sp, -4
	j	bp_label_49
bp_label_49:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn38
	j	bExpAss_nfjdn39
bExpAss_nfjdn38:
	li	$t2,1
	sw $t2, -76($fp)
	j	bp_label_50
bExpAss_nfjdn39:
	li	$t2,0
	sw $t2, -76($fp)
	j	bp_label_50
	j	bp_label_50
bp_label_50:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -76($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_51
bp_label_51:
	addiu $sp, $sp, -4
	j	bp_label_52
bp_label_52:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn40
	j	bExpAss_nfjdn41
bExpAss_nfjdn40:
	li	$t2,1
	sw $t2, -80($fp)
	j	bp_label_53
bExpAss_nfjdn41:
	li	$t2,0
	sw $t2, -80($fp)
	j	bp_label_53
	j	bp_label_53
bp_label_53:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -80($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_54
bp_label_54:
	addiu $sp, $sp, -4
	j	bp_label_55
bp_label_55:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn42
	j	bExpAss_nfjdn43
bExpAss_nfjdn42:
	li	$t2,1
	sw $t2, -84($fp)
	j	bp_label_56
bExpAss_nfjdn43:
	li	$t2,0
	sw $t2, -84($fp)
	j	bp_label_56
	j	bp_label_56
bp_label_56:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -84($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_57
bp_label_57:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_58
	j	bExpAss_nfjdn45
bp_label_58:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn44
	j	bExpAss_nfjdn45
bExpAss_nfjdn44:
	li	$t2,1
	sw $t2, -88($fp)
	j	bp_label_59
bExpAss_nfjdn45:
	li	$t2,0
	sw $t2, -88($fp)
	j	bp_label_59
	j	bp_label_59
bp_label_59:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -88($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_60
bp_label_60:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_61
	j	bExpAss_nfjdn47
bp_label_61:
	j	bExpAss_nfjdn47
bExpAss_nfjdn46:
	li	$t2,1
	sw $t2, -92($fp)
	j	bp_label_62
bExpAss_nfjdn47:
	li	$t2,0
	sw $t2, -92($fp)
	j	bp_label_62
	j	bp_label_62
bp_label_62:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -92($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_63
bp_label_63:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_64
	j	bExpAss_nfjdn49
bp_label_64:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn48
	j	bExpAss_nfjdn49
bExpAss_nfjdn48:
	li	$t2,1
	sw $t2, -96($fp)
	j	bp_label_65
bExpAss_nfjdn49:
	li	$t2,0
	sw $t2, -96($fp)
	j	bp_label_65
	j	bp_label_65
bp_label_65:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -96($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_66
bp_label_66:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_67
	j	bExpAss_nfjdn51
bp_label_67:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn50
	j	bExpAss_nfjdn51
bExpAss_nfjdn50:
	li	$t2,1
	sw $t2, -100($fp)
	j	bp_label_68
bExpAss_nfjdn51:
	li	$t2,0
	sw $t2, -100($fp)
	j	bp_label_68
	j	bp_label_68
bp_label_68:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -100($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_69
bp_label_69:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_70
	j	bExpAss_nfjdn53
bp_label_70:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn52
	j	bExpAss_nfjdn53
bExpAss_nfjdn52:
	li	$t2,1
	sw $t2, -104($fp)
	j	bp_label_71
bExpAss_nfjdn53:
	li	$t2,0
	sw $t2, -104($fp)
	j	bp_label_71
	j	bp_label_71
bp_label_71:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -104($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_72
bp_label_72:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_73
	j	bExpAss_nfjdn55
bp_label_73:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn54
	j	bExpAss_nfjdn55
bExpAss_nfjdn54:
	li	$t2,1
	sw $t2, -108($fp)
	j	bp_label_74
bExpAss_nfjdn55:
	li	$t2,0
	sw $t2, -108($fp)
	j	bp_label_74
	j	bp_label_74
bp_label_74:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -108($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_75
bp_label_75:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_76
	j	bExpAss_nfjdn57
bp_label_76:
	j	bExpAss_nfjdn57
bExpAss_nfjdn56:
	li	$t2,1
	sw $t2, -112($fp)
	j	bp_label_77
bExpAss_nfjdn57:
	li	$t2,0
	sw $t2, -112($fp)
	j	bp_label_77
	j	bp_label_77
bp_label_77:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -112($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_78
bp_label_78:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_79
	j	bExpAss_nfjdn59
bp_label_79:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn58
	j	bExpAss_nfjdn59
bExpAss_nfjdn58:
	li	$t2,1
	sw $t2, -116($fp)
	j	bp_label_80
bExpAss_nfjdn59:
	li	$t2,0
	sw $t2, -116($fp)
	j	bp_label_80
	j	bp_label_80
bp_label_80:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -116($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_81
bp_label_81:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_82
	j	bExpAss_nfjdn61
bp_label_82:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn60
	j	bExpAss_nfjdn61
bExpAss_nfjdn60:
	li	$t2,1
	sw $t2, -120($fp)
	j	bp_label_83
bExpAss_nfjdn61:
	li	$t2,0
	sw $t2, -120($fp)
	j	bp_label_83
	j	bp_label_83
bp_label_83:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -120($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_84
bp_label_84:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_85
	j	bExpAss_nfjdn63
bp_label_85:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn62
	j	bExpAss_nfjdn63
bExpAss_nfjdn62:
	li	$t2,1
	sw $t2, -124($fp)
	j	bp_label_86
bExpAss_nfjdn63:
	li	$t2,0
	sw $t2, -124($fp)
	j	bp_label_86
	j	bp_label_86
bp_label_86:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -124($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_87
bp_label_87:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_88
	j	bExpAss_nfjdn65
bp_label_88:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn64
	j	bExpAss_nfjdn65
bExpAss_nfjdn64:
	li	$t2,1
	sw $t2, -128($fp)
	j	bp_label_89
bExpAss_nfjdn65:
	li	$t2,0
	sw $t2, -128($fp)
	j	bp_label_89
	j	bp_label_89
bp_label_89:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -128($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_90
bp_label_90:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_91
	j	bExpAss_nfjdn67
bp_label_91:
	j	bExpAss_nfjdn67
bExpAss_nfjdn66:
	li	$t2,1
	sw $t2, -132($fp)
	j	bp_label_92
bExpAss_nfjdn67:
	li	$t2,0
	sw $t2, -132($fp)
	j	bp_label_92
	j	bp_label_92
bp_label_92:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -132($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_93
bp_label_93:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_94
	j	bExpAss_nfjdn69
bp_label_94:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn68
	j	bExpAss_nfjdn69
bExpAss_nfjdn68:
	li	$t2,1
	sw $t2, -136($fp)
	j	bp_label_95
bExpAss_nfjdn69:
	li	$t2,0
	sw $t2, -136($fp)
	j	bp_label_95
	j	bp_label_95
bp_label_95:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -136($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_96
bp_label_96:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_97
	j	bExpAss_nfjdn71
bp_label_97:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn70
	j	bExpAss_nfjdn71
bExpAss_nfjdn70:
	li	$t2,1
	sw $t2, -140($fp)
	j	bp_label_98
bExpAss_nfjdn71:
	li	$t2,0
	sw $t2, -140($fp)
	j	bp_label_98
	j	bp_label_98
bp_label_98:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -140($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_99
bp_label_99:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_100
	j	bExpAss_nfjdn73
bp_label_100:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn72
	j	bExpAss_nfjdn73
bExpAss_nfjdn72:
	li	$t2,1
	sw $t2, -144($fp)
	j	bp_label_101
bExpAss_nfjdn73:
	li	$t2,0
	sw $t2, -144($fp)
	j	bp_label_101
	j	bp_label_101
bp_label_101:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -144($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_102
bp_label_102:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_103
	j	bExpAss_nfjdn75
bp_label_103:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn74
	j	bExpAss_nfjdn75
bExpAss_nfjdn74:
	li	$t2,1
	sw $t2, -148($fp)
	j	bp_label_104
bExpAss_nfjdn75:
	li	$t2,0
	sw $t2, -148($fp)
	j	bp_label_104
	j	bp_label_104
bp_label_104:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -148($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_105
bp_label_105:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_106
	j	bExpAss_nfjdn77
bp_label_106:
	j	bExpAss_nfjdn77
bExpAss_nfjdn76:
	li	$t2,1
	sw $t2, -152($fp)
	j	bp_label_107
bExpAss_nfjdn77:
	li	$t2,0
	sw $t2, -152($fp)
	j	bp_label_107
	j	bp_label_107
bp_label_107:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -152($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_108
bp_label_108:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_109
	j	bExpAss_nfjdn79
bp_label_109:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn78
	j	bExpAss_nfjdn79
bExpAss_nfjdn78:
	li	$t2,1
	sw $t2, -156($fp)
	j	bp_label_110
bExpAss_nfjdn79:
	li	$t2,0
	sw $t2, -156($fp)
	j	bp_label_110
	j	bp_label_110
bp_label_110:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -156($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_111
bp_label_111:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_112
	j	bExpAss_nfjdn81
bp_label_112:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn80
	j	bExpAss_nfjdn81
bExpAss_nfjdn80:
	li	$t2,1
	sw $t2, -160($fp)
	j	bp_label_113
bExpAss_nfjdn81:
	li	$t2,0
	sw $t2, -160($fp)
	j	bp_label_113
	j	bp_label_113
bp_label_113:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -160($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_114
bp_label_114:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_115
	j	bExpAss_nfjdn83
bp_label_115:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn82
	j	bExpAss_nfjdn83
bExpAss_nfjdn82:
	li	$t2,1
	sw $t2, -164($fp)
	j	bp_label_116
bExpAss_nfjdn83:
	li	$t2,0
	sw $t2, -164($fp)
	j	bp_label_116
	j	bp_label_116
bp_label_116:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -164($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_117
bp_label_117:
	addiu $sp, $sp, -4
	j	bp_label_118
bp_label_118:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn84
	j	bExpAss_nfjdn85
bExpAss_nfjdn84:
	li	$t2,1
	sw $t2, -168($fp)
	j	bp_label_119
bExpAss_nfjdn85:
	li	$t2,0
	sw $t2, -168($fp)
	j	bp_label_119
	j	bp_label_119
bp_label_119:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -168($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_120
bp_label_120:
	addiu $sp, $sp, -4
	j	bp_label_121
bp_label_121:
	j	bExpAss_nfjdn87
bExpAss_nfjdn86:
	li	$t2,1
	sw $t2, -172($fp)
	j	bp_label_122
bExpAss_nfjdn87:
	li	$t2,0
	sw $t2, -172($fp)
	j	bp_label_122
	j	bp_label_122
bp_label_122:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -172($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_123
bp_label_123:
	addiu $sp, $sp, -4
	j	bp_label_124
bp_label_124:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn88
	j	bExpAss_nfjdn89
bExpAss_nfjdn88:
	li	$t2,1
	sw $t2, -176($fp)
	j	bp_label_125
bExpAss_nfjdn89:
	li	$t2,0
	sw $t2, -176($fp)
	j	bp_label_125
	j	bp_label_125
bp_label_125:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -176($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_126
bp_label_126:
	addiu $sp, $sp, -4
	j	bp_label_127
bp_label_127:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn90
	j	bExpAss_nfjdn91
bExpAss_nfjdn90:
	li	$t2,1
	sw $t2, -180($fp)
	j	bp_label_128
bExpAss_nfjdn91:
	li	$t2,0
	sw $t2, -180($fp)
	j	bp_label_128
	j	bp_label_128
bp_label_128:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -180($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_129
bp_label_129:
	addiu $sp, $sp, -4
	j	bp_label_130
bp_label_130:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn92
	j	bExpAss_nfjdn93
bExpAss_nfjdn92:
	li	$t2,1
	sw $t2, -184($fp)
	j	bp_label_131
bExpAss_nfjdn93:
	li	$t2,0
	sw $t2, -184($fp)
	j	bp_label_131
	j	bp_label_131
bp_label_131:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -184($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_132
bp_label_132:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_133
	j	bExpAss_nfjdn95
bp_label_133:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn94
	j	bExpAss_nfjdn95
bExpAss_nfjdn94:
	li	$t2,1
	sw $t2, -188($fp)
	j	bp_label_134
bExpAss_nfjdn95:
	li	$t2,0
	sw $t2, -188($fp)
	j	bp_label_134
	j	bp_label_134
bp_label_134:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -188($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_135
bp_label_135:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_136
	j	bExpAss_nfjdn97
bp_label_136:
	j	bExpAss_nfjdn97
bExpAss_nfjdn96:
	li	$t2,1
	sw $t2, -192($fp)
	j	bp_label_137
bExpAss_nfjdn97:
	li	$t2,0
	sw $t2, -192($fp)
	j	bp_label_137
	j	bp_label_137
bp_label_137:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -192($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_138
bp_label_138:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_139
	j	bExpAss_nfjdn99
bp_label_139:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn98
	j	bExpAss_nfjdn99
bExpAss_nfjdn98:
	li	$t2,1
	sw $t2, -196($fp)
	j	bp_label_140
bExpAss_nfjdn99:
	li	$t2,0
	sw $t2, -196($fp)
	j	bp_label_140
	j	bp_label_140
bp_label_140:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -196($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_141
bp_label_141:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_142
	j	bExpAss_nfjdn101
bp_label_142:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn100
	j	bExpAss_nfjdn101
bExpAss_nfjdn100:
	li	$t2,1
	sw $t2, -200($fp)
	j	bp_label_143
bExpAss_nfjdn101:
	li	$t2,0
	sw $t2, -200($fp)
	j	bp_label_143
	j	bp_label_143
bp_label_143:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -200($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_144
bp_label_144:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_145
	j	bExpAss_nfjdn103
bp_label_145:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn102
	j	bExpAss_nfjdn103
bExpAss_nfjdn102:
	li	$t2,1
	sw $t2, -204($fp)
	j	bp_label_146
bExpAss_nfjdn103:
	li	$t2,0
	sw $t2, -204($fp)
	j	bp_label_146
	j	bp_label_146
bp_label_146:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -204($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_147
bp_label_147:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_148
	j	bExpAss_nfjdn105
bp_label_148:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn104
	j	bExpAss_nfjdn105
bExpAss_nfjdn104:
	li	$t2,1
	sw $t2, -208($fp)
	j	bp_label_149
bExpAss_nfjdn105:
	li	$t2,0
	sw $t2, -208($fp)
	j	bp_label_149
	j	bp_label_149
bp_label_149:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -208($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_150
bp_label_150:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_151
	j	bExpAss_nfjdn107
bp_label_151:
	j	bExpAss_nfjdn107
bExpAss_nfjdn106:
	li	$t2,1
	sw $t2, -212($fp)
	j	bp_label_152
bExpAss_nfjdn107:
	li	$t2,0
	sw $t2, -212($fp)
	j	bp_label_152
	j	bp_label_152
bp_label_152:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -212($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_153
bp_label_153:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_154
	j	bExpAss_nfjdn109
bp_label_154:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn108
	j	bExpAss_nfjdn109
bExpAss_nfjdn108:
	li	$t2,1
	sw $t2, -216($fp)
	j	bp_label_155
bExpAss_nfjdn109:
	li	$t2,0
	sw $t2, -216($fp)
	j	bp_label_155
	j	bp_label_155
bp_label_155:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -216($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_156
bp_label_156:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_157
	j	bExpAss_nfjdn111
bp_label_157:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn110
	j	bExpAss_nfjdn111
bExpAss_nfjdn110:
	li	$t2,1
	sw $t2, -220($fp)
	j	bp_label_158
bExpAss_nfjdn111:
	li	$t2,0
	sw $t2, -220($fp)
	j	bp_label_158
	j	bp_label_158
bp_label_158:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -220($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_159
bp_label_159:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_160
	j	bExpAss_nfjdn113
bp_label_160:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn112
	j	bExpAss_nfjdn113
bExpAss_nfjdn112:
	li	$t2,1
	sw $t2, -224($fp)
	j	bp_label_161
bExpAss_nfjdn113:
	li	$t2,0
	sw $t2, -224($fp)
	j	bp_label_161
	j	bp_label_161
bp_label_161:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -224($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_162
bp_label_162:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_163
	j	bExpAss_nfjdn115
bp_label_163:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn114
	j	bExpAss_nfjdn115
bExpAss_nfjdn114:
	li	$t2,1
	sw $t2, -228($fp)
	j	bp_label_164
bExpAss_nfjdn115:
	li	$t2,0
	sw $t2, -228($fp)
	j	bp_label_164
	j	bp_label_164
bp_label_164:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -228($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_165
bp_label_165:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_166
	j	bExpAss_nfjdn117
bp_label_166:
	j	bExpAss_nfjdn117
bExpAss_nfjdn116:
	li	$t2,1
	sw $t2, -232($fp)
	j	bp_label_167
bExpAss_nfjdn117:
	li	$t2,0
	sw $t2, -232($fp)
	j	bp_label_167
	j	bp_label_167
bp_label_167:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -232($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_168
bp_label_168:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_169
	j	bExpAss_nfjdn119
bp_label_169:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn118
	j	bExpAss_nfjdn119
bExpAss_nfjdn118:
	li	$t2,1
	sw $t2, -236($fp)
	j	bp_label_170
bExpAss_nfjdn119:
	li	$t2,0
	sw $t2, -236($fp)
	j	bp_label_170
	j	bp_label_170
bp_label_170:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -236($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_171
bp_label_171:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_172
	j	bExpAss_nfjdn121
bp_label_172:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn120
	j	bExpAss_nfjdn121
bExpAss_nfjdn120:
	li	$t2,1
	sw $t2, -240($fp)
	j	bp_label_173
bExpAss_nfjdn121:
	li	$t2,0
	sw $t2, -240($fp)
	j	bp_label_173
	j	bp_label_173
bp_label_173:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -240($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_174
bp_label_174:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_175
	j	bExpAss_nfjdn123
bp_label_175:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn122
	j	bExpAss_nfjdn123
bExpAss_nfjdn122:
	li	$t2,1
	sw $t2, -244($fp)
	j	bp_label_176
bExpAss_nfjdn123:
	li	$t2,0
	sw $t2, -244($fp)
	j	bp_label_176
	j	bp_label_176
bp_label_176:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -244($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_177
bp_label_177:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_178
	j	bExpAss_nfjdn125
bp_label_178:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn124
	j	bExpAss_nfjdn125
bExpAss_nfjdn124:
	li	$t2,1
	sw $t2, -248($fp)
	j	bp_label_179
bExpAss_nfjdn125:
	li	$t2,0
	sw $t2, -248($fp)
	j	bp_label_179
	j	bp_label_179
bp_label_179:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -248($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_180
bp_label_180:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_181
	j	bExpAss_nfjdn127
bp_label_181:
	j	bExpAss_nfjdn127
bExpAss_nfjdn126:
	li	$t2,1
	sw $t2, -252($fp)
	j	bp_label_182
bExpAss_nfjdn127:
	li	$t2,0
	sw $t2, -252($fp)
	j	bp_label_182
	j	bp_label_182
bp_label_182:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -252($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_183
bp_label_183:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_184
	j	bExpAss_nfjdn129
bp_label_184:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn128
	j	bExpAss_nfjdn129
bExpAss_nfjdn128:
	li	$t2,1
	sw $t2, -256($fp)
	j	bp_label_185
bExpAss_nfjdn129:
	li	$t2,0
	sw $t2, -256($fp)
	j	bp_label_185
	j	bp_label_185
bp_label_185:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -256($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_186
bp_label_186:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_187
	j	bExpAss_nfjdn131
bp_label_187:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn130
	j	bExpAss_nfjdn131
bExpAss_nfjdn130:
	li	$t2,1
	sw $t2, -260($fp)
	j	bp_label_188
bExpAss_nfjdn131:
	li	$t2,0
	sw $t2, -260($fp)
	j	bp_label_188
	j	bp_label_188
bp_label_188:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -260($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_189
bp_label_189:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bp_label_190
	j	bExpAss_nfjdn133
bp_label_190:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn132
	j	bExpAss_nfjdn133
bExpAss_nfjdn132:
	li	$t2,1
	sw $t2, -264($fp)
	j	bp_label_191
bExpAss_nfjdn133:
	li	$t2,0
	sw $t2, -264($fp)
	j	bp_label_191
	j	bp_label_191
bp_label_191:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -264($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_192
bp_label_192:
	addiu $sp, $sp, -4
	j	bExpAss_nfjdn135
bp_label_193:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn134
	j	bExpAss_nfjdn135
bExpAss_nfjdn134:
	li	$t2,1
	sw $t2, -268($fp)
	j	bp_label_194
bExpAss_nfjdn135:
	li	$t2,0
	sw $t2, -268($fp)
	j	bp_label_194
	j	bp_label_194
bp_label_194:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -268($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_195
bp_label_195:
	addiu $sp, $sp, -4
	j	bExpAss_nfjdn137
bp_label_196:
	j	bExpAss_nfjdn137
bExpAss_nfjdn136:
	li	$t2,1
	sw $t2, -272($fp)
	j	bp_label_197
bExpAss_nfjdn137:
	li	$t2,0
	sw $t2, -272($fp)
	j	bp_label_197
	j	bp_label_197
bp_label_197:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -272($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_198
bp_label_198:
	addiu $sp, $sp, -4
	j	bExpAss_nfjdn139
bp_label_199:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn138
	j	bExpAss_nfjdn139
bExpAss_nfjdn138:
	li	$t2,1
	sw $t2, -276($fp)
	j	bp_label_200
bExpAss_nfjdn139:
	li	$t2,0
	sw $t2, -276($fp)
	j	bp_label_200
	j	bp_label_200
bp_label_200:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -276($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_201
bp_label_201:
	addiu $sp, $sp, -4
	j	bExpAss_nfjdn141
bp_label_202:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn140
	j	bExpAss_nfjdn141
bExpAss_nfjdn140:
	li	$t2,1
	sw $t2, -280($fp)
	j	bp_label_203
bExpAss_nfjdn141:
	li	$t2,0
	sw $t2, -280($fp)
	j	bp_label_203
	j	bp_label_203
bp_label_203:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -280($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_204
bp_label_204:
	addiu $sp, $sp, -4
	j	bExpAss_nfjdn143
bp_label_205:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn142
	j	bExpAss_nfjdn143
bExpAss_nfjdn142:
	li	$t2,1
	sw $t2, -284($fp)
	j	bp_label_206
bExpAss_nfjdn143:
	li	$t2,0
	sw $t2, -284($fp)
	j	bp_label_206
	j	bp_label_206
bp_label_206:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -284($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_207
bp_label_207:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bp_label_208
	j	bExpAss_nfjdn145
bp_label_208:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn144
	j	bExpAss_nfjdn145
bExpAss_nfjdn144:
	li	$t2,1
	sw $t2, -288($fp)
	j	bp_label_209
bExpAss_nfjdn145:
	li	$t2,0
	sw $t2, -288($fp)
	j	bp_label_209
	j	bp_label_209
bp_label_209:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -288($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_210
bp_label_210:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bp_label_211
	j	bExpAss_nfjdn147
bp_label_211:
	j	bExpAss_nfjdn147
bExpAss_nfjdn146:
	li	$t2,1
	sw $t2, -292($fp)
	j	bp_label_212
bExpAss_nfjdn147:
	li	$t2,0
	sw $t2, -292($fp)
	j	bp_label_212
	j	bp_label_212
bp_label_212:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -292($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_213
bp_label_213:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bp_label_214
	j	bExpAss_nfjdn149
bp_label_214:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn148
	j	bExpAss_nfjdn149
bExpAss_nfjdn148:
	li	$t2,1
	sw $t2, -296($fp)
	j	bp_label_215
bExpAss_nfjdn149:
	li	$t2,0
	sw $t2, -296($fp)
	j	bp_label_215
	j	bp_label_215
bp_label_215:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -296($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_216
bp_label_216:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bp_label_217
	j	bExpAss_nfjdn151
bp_label_217:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn150
	j	bExpAss_nfjdn151
bExpAss_nfjdn150:
	li	$t2,1
	sw $t2, -300($fp)
	j	bp_label_218
bExpAss_nfjdn151:
	li	$t2,0
	sw $t2, -300($fp)
	j	bp_label_218
	j	bp_label_218
bp_label_218:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -300($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_219
bp_label_219:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bp_label_220
	j	bExpAss_nfjdn153
bp_label_220:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn152
	j	bExpAss_nfjdn153
bExpAss_nfjdn152:
	li	$t2,1
	sw $t2, -304($fp)
	j	bp_label_221
bExpAss_nfjdn153:
	li	$t2,0
	sw $t2, -304($fp)
	j	bp_label_221
	j	bp_label_221
bp_label_221:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -304($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_222
bp_label_222:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bp_label_223
	j	bExpAss_nfjdn155
bp_label_223:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn154
	j	bExpAss_nfjdn155
bExpAss_nfjdn154:
	li	$t2,1
	sw $t2, -308($fp)
	j	bp_label_224
bExpAss_nfjdn155:
	li	$t2,0
	sw $t2, -308($fp)
	j	bp_label_224
	j	bp_label_224
bp_label_224:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -308($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_225
bp_label_225:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bp_label_226
	j	bExpAss_nfjdn157
bp_label_226:
	j	bExpAss_nfjdn157
bExpAss_nfjdn156:
	li	$t2,1
	sw $t2, -312($fp)
	j	bp_label_227
bExpAss_nfjdn157:
	li	$t2,0
	sw $t2, -312($fp)
	j	bp_label_227
	j	bp_label_227
bp_label_227:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -312($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_228
bp_label_228:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bp_label_229
	j	bExpAss_nfjdn159
bp_label_229:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn158
	j	bExpAss_nfjdn159
bExpAss_nfjdn158:
	li	$t2,1
	sw $t2, -316($fp)
	j	bp_label_230
bExpAss_nfjdn159:
	li	$t2,0
	sw $t2, -316($fp)
	j	bp_label_230
	j	bp_label_230
bp_label_230:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -316($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_231
bp_label_231:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bp_label_232
	j	bExpAss_nfjdn161
bp_label_232:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn160
	j	bExpAss_nfjdn161
bExpAss_nfjdn160:
	li	$t2,1
	sw $t2, -320($fp)
	j	bp_label_233
bExpAss_nfjdn161:
	li	$t2,0
	sw $t2, -320($fp)
	j	bp_label_233
	j	bp_label_233
bp_label_233:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -320($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_234
bp_label_234:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bp_label_235
	j	bExpAss_nfjdn163
bp_label_235:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn162
	j	bExpAss_nfjdn163
bExpAss_nfjdn162:
	li	$t2,1
	sw $t2, -324($fp)
	j	bp_label_236
bExpAss_nfjdn163:
	li	$t2,0
	sw $t2, -324($fp)
	j	bp_label_236
	j	bp_label_236
bp_label_236:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -324($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_237
bp_label_237:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bp_label_238
	j	bExpAss_nfjdn165
bp_label_238:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn164
	j	bExpAss_nfjdn165
bExpAss_nfjdn164:
	li	$t2,1
	sw $t2, -328($fp)
	j	bp_label_239
bExpAss_nfjdn165:
	li	$t2,0
	sw $t2, -328($fp)
	j	bp_label_239
	j	bp_label_239
bp_label_239:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -328($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_240
bp_label_240:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bp_label_241
	j	bExpAss_nfjdn167
bp_label_241:
	j	bExpAss_nfjdn167
bExpAss_nfjdn166:
	li	$t2,1
	sw $t2, -332($fp)
	j	bp_label_242
bExpAss_nfjdn167:
	li	$t2,0
	sw $t2, -332($fp)
	j	bp_label_242
	j	bp_label_242
bp_label_242:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -332($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_243
bp_label_243:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bp_label_244
	j	bExpAss_nfjdn169
bp_label_244:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn168
	j	bExpAss_nfjdn169
bExpAss_nfjdn168:
	li	$t2,1
	sw $t2, -336($fp)
	j	bp_label_245
bExpAss_nfjdn169:
	li	$t2,0
	sw $t2, -336($fp)
	j	bp_label_245
	j	bp_label_245
bp_label_245:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -336($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_246
bp_label_246:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bp_label_247
	j	bExpAss_nfjdn171
bp_label_247:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn170
	j	bExpAss_nfjdn171
bExpAss_nfjdn170:
	li	$t2,1
	sw $t2, -340($fp)
	j	bp_label_248
bExpAss_nfjdn171:
	li	$t2,0
	sw $t2, -340($fp)
	j	bp_label_248
	j	bp_label_248
bp_label_248:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -340($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_249
bp_label_249:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bp_label_250
	j	bExpAss_nfjdn173
bp_label_250:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn172
	j	bExpAss_nfjdn173
bExpAss_nfjdn172:
	li	$t2,1
	sw $t2, -344($fp)
	j	bp_label_251
bExpAss_nfjdn173:
	li	$t2,0
	sw $t2, -344($fp)
	j	bp_label_251
	j	bp_label_251
bp_label_251:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -344($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_252
bp_label_252:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn174
	j	bp_label_253
bp_label_253:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn174
	j	bExpAss_nfjdn175
bExpAss_nfjdn174:
	li	$t2,1
	sw $t2, -348($fp)
	j	bp_label_254
bExpAss_nfjdn175:
	li	$t2,0
	sw $t2, -348($fp)
	j	bp_label_254
	j	bp_label_254
bp_label_254:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -348($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_255
bp_label_255:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn176
	j	bp_label_256
bp_label_256:
	j	bExpAss_nfjdn177
bExpAss_nfjdn176:
	li	$t2,1
	sw $t2, -352($fp)
	j	bp_label_257
bExpAss_nfjdn177:
	li	$t2,0
	sw $t2, -352($fp)
	j	bp_label_257
	j	bp_label_257
bp_label_257:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -352($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_258
bp_label_258:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn178
	j	bp_label_259
bp_label_259:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn178
	j	bExpAss_nfjdn179
bExpAss_nfjdn178:
	li	$t2,1
	sw $t2, -356($fp)
	j	bp_label_260
bExpAss_nfjdn179:
	li	$t2,0
	sw $t2, -356($fp)
	j	bp_label_260
	j	bp_label_260
bp_label_260:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -356($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_261
bp_label_261:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn180
	j	bp_label_262
bp_label_262:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn180
	j	bExpAss_nfjdn181
bExpAss_nfjdn180:
	li	$t2,1
	sw $t2, -360($fp)
	j	bp_label_263
bExpAss_nfjdn181:
	li	$t2,0
	sw $t2, -360($fp)
	j	bp_label_263
	j	bp_label_263
bp_label_263:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -360($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_264
bp_label_264:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_63
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn182
	j	bp_label_265
bp_label_265:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn182
	j	bExpAss_nfjdn183
bExpAss_nfjdn182:
	li	$t2,1
	sw $t2, -364($fp)
	j	bp_label_266
bExpAss_nfjdn183:
	li	$t2,0
	sw $t2, -364($fp)
	j	bp_label_266
	j	bp_label_266
bp_label_266:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -364($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_267
bp_label_267:
	addiu $sp, $sp, -4
	j	bExpAss_nfjdn184
bp_label_268:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn184
	j	bExpAss_nfjdn185
bExpAss_nfjdn184:
	li	$t2,1
	sw $t2, -368($fp)
	j	bp_label_269
bExpAss_nfjdn185:
	li	$t2,0
	sw $t2, -368($fp)
	j	bp_label_269
	j	bp_label_269
bp_label_269:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -368($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_270
bp_label_270:
	addiu $sp, $sp, -4
	j	bExpAss_nfjdn186
bp_label_271:
	j	bExpAss_nfjdn187
bExpAss_nfjdn186:
	li	$t2,1
	sw $t2, -372($fp)
	j	bp_label_272
bExpAss_nfjdn187:
	li	$t2,0
	sw $t2, -372($fp)
	j	bp_label_272
	j	bp_label_272
bp_label_272:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -372($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_273
bp_label_273:
	addiu $sp, $sp, -4
	j	bExpAss_nfjdn188
bp_label_274:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn188
	j	bExpAss_nfjdn189
bExpAss_nfjdn188:
	li	$t2,1
	sw $t2, -376($fp)
	j	bp_label_275
bExpAss_nfjdn189:
	li	$t2,0
	sw $t2, -376($fp)
	j	bp_label_275
	j	bp_label_275
bp_label_275:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -376($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_276
bp_label_276:
	addiu $sp, $sp, -4
	j	bExpAss_nfjdn190
bp_label_277:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn190
	j	bExpAss_nfjdn191
bExpAss_nfjdn190:
	li	$t2,1
	sw $t2, -380($fp)
	j	bp_label_278
bExpAss_nfjdn191:
	li	$t2,0
	sw $t2, -380($fp)
	j	bp_label_278
	j	bp_label_278
bp_label_278:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -380($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_279
bp_label_279:
	addiu $sp, $sp, -4
	j	bExpAss_nfjdn192
bp_label_280:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn192
	j	bExpAss_nfjdn193
bExpAss_nfjdn192:
	li	$t2,1
	sw $t2, -384($fp)
	j	bp_label_281
bExpAss_nfjdn193:
	li	$t2,0
	sw $t2, -384($fp)
	j	bp_label_281
	j	bp_label_281
bp_label_281:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -384($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_282
bp_label_282:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bExpAss_nfjdn194
	j	bp_label_283
bp_label_283:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn194
	j	bExpAss_nfjdn195
bExpAss_nfjdn194:
	li	$t2,1
	sw $t2, -388($fp)
	j	bp_label_284
bExpAss_nfjdn195:
	li	$t2,0
	sw $t2, -388($fp)
	j	bp_label_284
	j	bp_label_284
bp_label_284:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -388($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_285
bp_label_285:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bExpAss_nfjdn196
	j	bp_label_286
bp_label_286:
	j	bExpAss_nfjdn197
bExpAss_nfjdn196:
	li	$t2,1
	sw $t2, -392($fp)
	j	bp_label_287
bExpAss_nfjdn197:
	li	$t2,0
	sw $t2, -392($fp)
	j	bp_label_287
	j	bp_label_287
bp_label_287:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -392($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_288
bp_label_288:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bExpAss_nfjdn198
	j	bp_label_289
bp_label_289:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn198
	j	bExpAss_nfjdn199
bExpAss_nfjdn198:
	li	$t2,1
	sw $t2, -396($fp)
	j	bp_label_290
bExpAss_nfjdn199:
	li	$t2,0
	sw $t2, -396($fp)
	j	bp_label_290
	j	bp_label_290
bp_label_290:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -396($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_291
bp_label_291:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bExpAss_nfjdn200
	j	bp_label_292
bp_label_292:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn200
	j	bExpAss_nfjdn201
bExpAss_nfjdn200:
	li	$t2,1
	sw $t2, -400($fp)
	j	bp_label_293
bExpAss_nfjdn201:
	li	$t2,0
	sw $t2, -400($fp)
	j	bp_label_293
	j	bp_label_293
bp_label_293:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -400($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_294
bp_label_294:
	addiu $sp, $sp, -4
	lw $t2, ($fp)
	bne $t2, $zero,bExpAss_nfjdn202
	j	bp_label_295
bp_label_295:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn202
	j	bExpAss_nfjdn203
bExpAss_nfjdn202:
	li	$t2,1
	sw $t2, -404($fp)
	j	bp_label_296
bExpAss_nfjdn203:
	li	$t2,0
	sw $t2, -404($fp)
	j	bp_label_296
	j	bp_label_296
bp_label_296:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -404($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_297
bp_label_297:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn204
	j	bp_label_298
bp_label_298:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn204
	j	bExpAss_nfjdn205
bExpAss_nfjdn204:
	li	$t2,1
	sw $t2, -408($fp)
	j	bp_label_299
bExpAss_nfjdn205:
	li	$t2,0
	sw $t2, -408($fp)
	j	bp_label_299
	j	bp_label_299
bp_label_299:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -408($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_300
bp_label_300:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn206
	j	bp_label_301
bp_label_301:
	j	bExpAss_nfjdn207
bExpAss_nfjdn206:
	li	$t2,1
	sw $t2, -412($fp)
	j	bp_label_302
bExpAss_nfjdn207:
	li	$t2,0
	sw $t2, -412($fp)
	j	bp_label_302
	j	bp_label_302
bp_label_302:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -412($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_303
bp_label_303:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn208
	j	bp_label_304
bp_label_304:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn208
	j	bExpAss_nfjdn209
bExpAss_nfjdn208:
	li	$t2,1
	sw $t2, -416($fp)
	j	bp_label_305
bExpAss_nfjdn209:
	li	$t2,0
	sw $t2, -416($fp)
	j	bp_label_305
	j	bp_label_305
bp_label_305:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -416($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_306
bp_label_306:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn210
	j	bp_label_307
bp_label_307:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn210
	j	bExpAss_nfjdn211
bExpAss_nfjdn210:
	li	$t2,1
	sw $t2, -420($fp)
	j	bp_label_308
bExpAss_nfjdn211:
	li	$t2,0
	sw $t2, -420($fp)
	j	bp_label_308
	j	bp_label_308
bp_label_308:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -420($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_309
bp_label_309:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn212
	j	bp_label_310
bp_label_310:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn212
	j	bExpAss_nfjdn213
bExpAss_nfjdn212:
	li	$t2,1
	sw $t2, -424($fp)
	j	bp_label_311
bExpAss_nfjdn213:
	li	$t2,0
	sw $t2, -424($fp)
	j	bp_label_311
	j	bp_label_311
bp_label_311:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -424($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_312
bp_label_312:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn214
	j	bp_label_313
bp_label_313:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn214
	j	bExpAss_nfjdn215
bExpAss_nfjdn214:
	li	$t2,1
	sw $t2, -428($fp)
	j	bp_label_314
bExpAss_nfjdn215:
	li	$t2,0
	sw $t2, -428($fp)
	j	bp_label_314
	j	bp_label_314
bp_label_314:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -428($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_315
bp_label_315:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn216
	j	bp_label_316
bp_label_316:
	j	bExpAss_nfjdn217
bExpAss_nfjdn216:
	li	$t2,1
	sw $t2, -432($fp)
	j	bp_label_317
bExpAss_nfjdn217:
	li	$t2,0
	sw $t2, -432($fp)
	j	bp_label_317
	j	bp_label_317
bp_label_317:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -432($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_318
bp_label_318:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn218
	j	bp_label_319
bp_label_319:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn218
	j	bExpAss_nfjdn219
bExpAss_nfjdn218:
	li	$t2,1
	sw $t2, -436($fp)
	j	bp_label_320
bExpAss_nfjdn219:
	li	$t2,0
	sw $t2, -436($fp)
	j	bp_label_320
	j	bp_label_320
bp_label_320:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -436($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_321
bp_label_321:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn220
	j	bp_label_322
bp_label_322:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn220
	j	bExpAss_nfjdn221
bExpAss_nfjdn220:
	li	$t2,1
	sw $t2, -440($fp)
	j	bp_label_323
bExpAss_nfjdn221:
	li	$t2,0
	sw $t2, -440($fp)
	j	bp_label_323
	j	bp_label_323
bp_label_323:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -440($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_324
bp_label_324:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn222
	j	bp_label_325
bp_label_325:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn222
	j	bExpAss_nfjdn223
bExpAss_nfjdn222:
	li	$t2,1
	sw $t2, -444($fp)
	j	bp_label_326
bExpAss_nfjdn223:
	li	$t2,0
	sw $t2, -444($fp)
	j	bp_label_326
	j	bp_label_326
bp_label_326:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -444($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_327
bp_label_327:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn224
	j	bp_label_328
bp_label_328:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn224
	j	bExpAss_nfjdn225
bExpAss_nfjdn224:
	li	$t2,1
	sw $t2, -448($fp)
	j	bp_label_329
bExpAss_nfjdn225:
	li	$t2,0
	sw $t2, -448($fp)
	j	bp_label_329
	j	bp_label_329
bp_label_329:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -448($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_330
bp_label_330:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn226
	j	bp_label_331
bp_label_331:
	j	bExpAss_nfjdn227
bExpAss_nfjdn226:
	li	$t2,1
	sw $t2, -452($fp)
	j	bp_label_332
bExpAss_nfjdn227:
	li	$t2,0
	sw $t2, -452($fp)
	j	bp_label_332
	j	bp_label_332
bp_label_332:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -452($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_333
bp_label_333:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn228
	j	bp_label_334
bp_label_334:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn228
	j	bExpAss_nfjdn229
bExpAss_nfjdn228:
	li	$t2,1
	sw $t2, -456($fp)
	j	bp_label_335
bExpAss_nfjdn229:
	li	$t2,0
	sw $t2, -456($fp)
	j	bp_label_335
	j	bp_label_335
bp_label_335:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -456($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_336
bp_label_336:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn230
	j	bp_label_337
bp_label_337:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn230
	j	bExpAss_nfjdn231
bExpAss_nfjdn230:
	li	$t2,1
	sw $t2, -460($fp)
	j	bp_label_338
bExpAss_nfjdn231:
	li	$t2,0
	sw $t2, -460($fp)
	j	bp_label_338
	j	bp_label_338
bp_label_338:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -460($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_339
bp_label_339:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn232
	j	bp_label_340
bp_label_340:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn232
	j	bExpAss_nfjdn233
bExpAss_nfjdn232:
	li	$t2,1
	sw $t2, -464($fp)
	j	bp_label_341
bExpAss_nfjdn233:
	li	$t2,0
	sw $t2, -464($fp)
	j	bp_label_341
	j	bp_label_341
bp_label_341:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -464($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_342
bp_label_342:
	addiu $sp, $sp, -4
	j	bp_label_343
bp_label_343:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn234
	j	bExpAss_nfjdn235
bExpAss_nfjdn234:
	li	$t2,1
	sw $t2, -468($fp)
	j	bp_label_344
bExpAss_nfjdn235:
	li	$t2,0
	sw $t2, -468($fp)
	j	bp_label_344
	j	bp_label_344
bp_label_344:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -468($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_345
bp_label_345:
	addiu $sp, $sp, -4
	j	bp_label_346
bp_label_346:
	j	bExpAss_nfjdn237
bExpAss_nfjdn236:
	li	$t2,1
	sw $t2, -472($fp)
	j	bp_label_347
bExpAss_nfjdn237:
	li	$t2,0
	sw $t2, -472($fp)
	j	bp_label_347
	j	bp_label_347
bp_label_347:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -472($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_348
bp_label_348:
	addiu $sp, $sp, -4
	j	bp_label_349
bp_label_349:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn238
	j	bExpAss_nfjdn239
bExpAss_nfjdn238:
	li	$t2,1
	sw $t2, -476($fp)
	j	bp_label_350
bExpAss_nfjdn239:
	li	$t2,0
	sw $t2, -476($fp)
	j	bp_label_350
	j	bp_label_350
bp_label_350:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -476($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_351
bp_label_351:
	addiu $sp, $sp, -4
	j	bp_label_352
bp_label_352:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn240
	j	bExpAss_nfjdn241
bExpAss_nfjdn240:
	li	$t2,1
	sw $t2, -480($fp)
	j	bp_label_353
bExpAss_nfjdn241:
	li	$t2,0
	sw $t2, -480($fp)
	j	bp_label_353
	j	bp_label_353
bp_label_353:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -480($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_354
bp_label_354:
	addiu $sp, $sp, -4
	j	bp_label_355
bp_label_355:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn242
	j	bExpAss_nfjdn243
bExpAss_nfjdn242:
	li	$t2,1
	sw $t2, -484($fp)
	j	bp_label_356
bExpAss_nfjdn243:
	li	$t2,0
	sw $t2, -484($fp)
	j	bp_label_356
	j	bp_label_356
bp_label_356:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -484($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_357
bp_label_357:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn244
	j	bp_label_358
bp_label_358:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn244
	j	bExpAss_nfjdn245
bExpAss_nfjdn244:
	li	$t2,1
	sw $t2, -488($fp)
	j	bp_label_359
bExpAss_nfjdn245:
	li	$t2,0
	sw $t2, -488($fp)
	j	bp_label_359
	j	bp_label_359
bp_label_359:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -488($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_360
bp_label_360:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn246
	j	bp_label_361
bp_label_361:
	j	bExpAss_nfjdn247
bExpAss_nfjdn246:
	li	$t2,1
	sw $t2, -492($fp)
	j	bp_label_362
bExpAss_nfjdn247:
	li	$t2,0
	sw $t2, -492($fp)
	j	bp_label_362
	j	bp_label_362
bp_label_362:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -492($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_363
bp_label_363:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn248
	j	bp_label_364
bp_label_364:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn248
	j	bExpAss_nfjdn249
bExpAss_nfjdn248:
	li	$t2,1
	sw $t2, -496($fp)
	j	bp_label_365
bExpAss_nfjdn249:
	li	$t2,0
	sw $t2, -496($fp)
	j	bp_label_365
	j	bp_label_365
bp_label_365:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -496($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_366
bp_label_366:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn250
	j	bp_label_367
bp_label_367:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn250
	j	bExpAss_nfjdn251
bExpAss_nfjdn250:
	li	$t2,1
	sw $t2, -500($fp)
	j	bp_label_368
bExpAss_nfjdn251:
	li	$t2,0
	sw $t2, -500($fp)
	j	bp_label_368
	j	bp_label_368
bp_label_368:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -500($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_369
bp_label_369:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn252
	j	bp_label_370
bp_label_370:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn252
	j	bExpAss_nfjdn253
bExpAss_nfjdn252:
	li	$t2,1
	sw $t2, -504($fp)
	j	bp_label_371
bExpAss_nfjdn253:
	li	$t2,0
	sw $t2, -504($fp)
	j	bp_label_371
	j	bp_label_371
bp_label_371:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -504($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_372
bp_label_372:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn254
	j	bp_label_373
bp_label_373:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn254
	j	bExpAss_nfjdn255
bExpAss_nfjdn254:
	li	$t2,1
	sw $t2, -508($fp)
	j	bp_label_374
bExpAss_nfjdn255:
	li	$t2,0
	sw $t2, -508($fp)
	j	bp_label_374
	j	bp_label_374
bp_label_374:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -508($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_375
bp_label_375:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn256
	j	bp_label_376
bp_label_376:
	j	bExpAss_nfjdn257
bExpAss_nfjdn256:
	li	$t2,1
	sw $t2, -512($fp)
	j	bp_label_377
bExpAss_nfjdn257:
	li	$t2,0
	sw $t2, -512($fp)
	j	bp_label_377
	j	bp_label_377
bp_label_377:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -512($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_378
bp_label_378:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn258
	j	bp_label_379
bp_label_379:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn258
	j	bExpAss_nfjdn259
bExpAss_nfjdn258:
	li	$t2,1
	sw $t2, -516($fp)
	j	bp_label_380
bExpAss_nfjdn259:
	li	$t2,0
	sw $t2, -516($fp)
	j	bp_label_380
	j	bp_label_380
bp_label_380:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -516($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_381
bp_label_381:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn260
	j	bp_label_382
bp_label_382:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn260
	j	bExpAss_nfjdn261
bExpAss_nfjdn260:
	li	$t2,1
	sw $t2, -520($fp)
	j	bp_label_383
bExpAss_nfjdn261:
	li	$t2,0
	sw $t2, -520($fp)
	j	bp_label_383
	j	bp_label_383
bp_label_383:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -520($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_384
bp_label_384:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn262
	j	bp_label_385
bp_label_385:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn262
	j	bExpAss_nfjdn263
bExpAss_nfjdn262:
	li	$t2,1
	sw $t2, -524($fp)
	j	bp_label_386
bExpAss_nfjdn263:
	li	$t2,0
	sw $t2, -524($fp)
	j	bp_label_386
	j	bp_label_386
bp_label_386:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -524($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_387
bp_label_387:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn264
	j	bp_label_388
bp_label_388:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn264
	j	bExpAss_nfjdn265
bExpAss_nfjdn264:
	li	$t2,1
	sw $t2, -528($fp)
	j	bp_label_389
bExpAss_nfjdn265:
	li	$t2,0
	sw $t2, -528($fp)
	j	bp_label_389
	j	bp_label_389
bp_label_389:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -528($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_390
bp_label_390:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn266
	j	bp_label_391
bp_label_391:
	j	bExpAss_nfjdn267
bExpAss_nfjdn266:
	li	$t2,1
	sw $t2, -532($fp)
	j	bp_label_392
bExpAss_nfjdn267:
	li	$t2,0
	sw $t2, -532($fp)
	j	bp_label_392
	j	bp_label_392
bp_label_392:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -532($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_393
bp_label_393:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn268
	j	bp_label_394
bp_label_394:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn268
	j	bExpAss_nfjdn269
bExpAss_nfjdn268:
	li	$t2,1
	sw $t2, -536($fp)
	j	bp_label_395
bExpAss_nfjdn269:
	li	$t2,0
	sw $t2, -536($fp)
	j	bp_label_395
	j	bp_label_395
bp_label_395:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -536($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_396
bp_label_396:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn270
	j	bp_label_397
bp_label_397:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn270
	j	bExpAss_nfjdn271
bExpAss_nfjdn270:
	li	$t2,1
	sw $t2, -540($fp)
	j	bp_label_398
bExpAss_nfjdn271:
	li	$t2,0
	sw $t2, -540($fp)
	j	bp_label_398
	j	bp_label_398
bp_label_398:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -540($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_399
bp_label_399:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn272
	j	bp_label_400
bp_label_400:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn272
	j	bExpAss_nfjdn273
bExpAss_nfjdn272:
	li	$t2,1
	sw $t2, -544($fp)
	j	bp_label_401
bExpAss_nfjdn273:
	li	$t2,0
	sw $t2, -544($fp)
	j	bp_label_401
	j	bp_label_401
bp_label_401:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -544($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_402
bp_label_402:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn274
	j	bp_label_403
bp_label_403:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn274
	j	bExpAss_nfjdn275
bExpAss_nfjdn274:
	li	$t2,1
	sw $t2, -548($fp)
	j	bp_label_404
bExpAss_nfjdn275:
	li	$t2,0
	sw $t2, -548($fp)
	j	bp_label_404
	j	bp_label_404
bp_label_404:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -548($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_405
bp_label_405:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn276
	j	bp_label_406
bp_label_406:
	j	bExpAss_nfjdn277
bExpAss_nfjdn276:
	li	$t2,1
	sw $t2, -552($fp)
	j	bp_label_407
bExpAss_nfjdn277:
	li	$t2,0
	sw $t2, -552($fp)
	j	bp_label_407
	j	bp_label_407
bp_label_407:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -552($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_408
bp_label_408:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn278
	j	bp_label_409
bp_label_409:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn278
	j	bExpAss_nfjdn279
bExpAss_nfjdn278:
	li	$t2,1
	sw $t2, -556($fp)
	j	bp_label_410
bExpAss_nfjdn279:
	li	$t2,0
	sw $t2, -556($fp)
	j	bp_label_410
	j	bp_label_410
bp_label_410:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -556($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_411
bp_label_411:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn280
	j	bp_label_412
bp_label_412:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn280
	j	bExpAss_nfjdn281
bExpAss_nfjdn280:
	li	$t2,1
	sw $t2, -560($fp)
	j	bp_label_413
bExpAss_nfjdn281:
	li	$t2,0
	sw $t2, -560($fp)
	j	bp_label_413
	j	bp_label_413
bp_label_413:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -560($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_414
bp_label_414:
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn282
	j	bp_label_415
bp_label_415:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn282
	j	bExpAss_nfjdn283
bExpAss_nfjdn282:
	li	$t2,1
	sw $t2, -564($fp)
	j	bp_label_416
bExpAss_nfjdn283:
	li	$t2,0
	sw $t2, -564($fp)
	j	bp_label_416
	j	bp_label_416
bp_label_416:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -564($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_417
bp_label_417:
	addiu $sp, $sp, -4
	j	bp_label_418
bp_label_418:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn284
	j	bExpAss_nfjdn285
bExpAss_nfjdn284:
	li	$t2,1
	sw $t2, -568($fp)
	j	bp_label_419
bExpAss_nfjdn285:
	li	$t2,0
	sw $t2, -568($fp)
	j	bp_label_419
	j	bp_label_419
bp_label_419:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -568($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_420
bp_label_420:
	addiu $sp, $sp, -4
	j	bp_label_421
bp_label_421:
	j	bExpAss_nfjdn287
bExpAss_nfjdn286:
	li	$t2,1
	sw $t2, -572($fp)
	j	bp_label_422
bExpAss_nfjdn287:
	li	$t2,0
	sw $t2, -572($fp)
	j	bp_label_422
	j	bp_label_422
bp_label_422:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -572($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_423
bp_label_423:
	addiu $sp, $sp, -4
	j	bp_label_424
bp_label_424:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn288
	j	bExpAss_nfjdn289
bExpAss_nfjdn288:
	li	$t2,1
	sw $t2, -576($fp)
	j	bp_label_425
bExpAss_nfjdn289:
	li	$t2,0
	sw $t2, -576($fp)
	j	bp_label_425
	j	bp_label_425
bp_label_425:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -576($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_426
bp_label_426:
	addiu $sp, $sp, -4
	j	bp_label_427
bp_label_427:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn290
	j	bExpAss_nfjdn291
bExpAss_nfjdn290:
	li	$t2,1
	sw $t2, -580($fp)
	j	bp_label_428
bExpAss_nfjdn291:
	li	$t2,0
	sw $t2, -580($fp)
	j	bp_label_428
	j	bp_label_428
bp_label_428:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -580($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_429
bp_label_429:
	addiu $sp, $sp, -4
	j	bp_label_430
bp_label_430:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn292
	j	bExpAss_nfjdn293
bExpAss_nfjdn292:
	li	$t2,1
	sw $t2, -584($fp)
	j	bp_label_431
bExpAss_nfjdn293:
	li	$t2,0
	sw $t2, -584($fp)
	j	bp_label_431
	j	bp_label_431
bp_label_431:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -584($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_432
bp_label_432:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn294
	j	bp_label_433
bp_label_433:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn294
	j	bExpAss_nfjdn295
bExpAss_nfjdn294:
	li	$t2,1
	sw $t2, -588($fp)
	j	bp_label_434
bExpAss_nfjdn295:
	li	$t2,0
	sw $t2, -588($fp)
	j	bp_label_434
	j	bp_label_434
bp_label_434:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -588($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_435
bp_label_435:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn296
	j	bp_label_436
bp_label_436:
	j	bExpAss_nfjdn297
bExpAss_nfjdn296:
	li	$t2,1
	sw $t2, -592($fp)
	j	bp_label_437
bExpAss_nfjdn297:
	li	$t2,0
	sw $t2, -592($fp)
	j	bp_label_437
	j	bp_label_437
bp_label_437:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -592($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_438
bp_label_438:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn298
	j	bp_label_439
bp_label_439:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn298
	j	bExpAss_nfjdn299
bExpAss_nfjdn298:
	li	$t2,1
	sw $t2, -596($fp)
	j	bp_label_440
bExpAss_nfjdn299:
	li	$t2,0
	sw $t2, -596($fp)
	j	bp_label_440
	j	bp_label_440
bp_label_440:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -596($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_441
bp_label_441:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn300
	j	bp_label_442
bp_label_442:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn300
	j	bExpAss_nfjdn301
bExpAss_nfjdn300:
	li	$t2,1
	sw $t2, -600($fp)
	j	bp_label_443
bExpAss_nfjdn301:
	li	$t2,0
	sw $t2, -600($fp)
	j	bp_label_443
	j	bp_label_443
bp_label_443:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -600($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_444
bp_label_444:
	addiu $sp, $sp, -4
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn302
	j	bp_label_445
bp_label_445:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn302
	j	bExpAss_nfjdn303
bExpAss_nfjdn302:
	li	$t2,1
	sw $t2, -604($fp)
	j	bp_label_446
bExpAss_nfjdn303:
	li	$t2,0
	sw $t2, -604($fp)
	j	bp_label_446
	j	bp_label_446
bp_label_446:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -604($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_447
bp_label_447:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn304
	j	bp_label_448
bp_label_448:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn304
	j	bExpAss_nfjdn305
bExpAss_nfjdn304:
	li	$t2,1
	sw $t2, -608($fp)
	j	bp_label_449
bExpAss_nfjdn305:
	li	$t2,0
	sw $t2, -608($fp)
	j	bp_label_449
	j	bp_label_449
bp_label_449:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -608($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_450
bp_label_450:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn306
	j	bp_label_451
bp_label_451:
	j	bExpAss_nfjdn307
bExpAss_nfjdn306:
	li	$t2,1
	sw $t2, -612($fp)
	j	bp_label_452
bExpAss_nfjdn307:
	li	$t2,0
	sw $t2, -612($fp)
	j	bp_label_452
	j	bp_label_452
bp_label_452:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -612($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_453
bp_label_453:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn308
	j	bp_label_454
bp_label_454:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn308
	j	bExpAss_nfjdn309
bExpAss_nfjdn308:
	li	$t2,1
	sw $t2, -616($fp)
	j	bp_label_455
bExpAss_nfjdn309:
	li	$t2,0
	sw $t2, -616($fp)
	j	bp_label_455
	j	bp_label_455
bp_label_455:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -616($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_456
bp_label_456:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn310
	j	bp_label_457
bp_label_457:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn310
	j	bExpAss_nfjdn311
bExpAss_nfjdn310:
	li	$t2,1
	sw $t2, -620($fp)
	j	bp_label_458
bExpAss_nfjdn311:
	li	$t2,0
	sw $t2, -620($fp)
	j	bp_label_458
	j	bp_label_458
bp_label_458:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -620($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_459
bp_label_459:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn312
	j	bp_label_460
bp_label_460:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn312
	j	bExpAss_nfjdn313
bExpAss_nfjdn312:
	li	$t2,1
	sw $t2, -624($fp)
	j	bp_label_461
bExpAss_nfjdn313:
	li	$t2,0
	sw $t2, -624($fp)
	j	bp_label_461
	j	bp_label_461
bp_label_461:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -624($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_462
bp_label_462:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn314
	j	bp_label_463
bp_label_463:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_71
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	move	$t2,$v0
	bne $t2, $zero,bExpAss_nfjdn314
	j	bExpAss_nfjdn315
bExpAss_nfjdn314:
	li	$t2,1
	sw $t2, -628($fp)
	j	bp_label_464
bExpAss_nfjdn315:
	li	$t2,0
	sw $t2, -628($fp)
	j	bp_label_464
	j	bp_label_464
bp_label_464:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -628($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_465
bp_label_465:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn316
	j	bp_label_466
bp_label_466:
	j	bExpAss_nfjdn317
bExpAss_nfjdn316:
	li	$t2,1
	sw $t2, -632($fp)
	j	bp_label_467
bExpAss_nfjdn317:
	li	$t2,0
	sw $t2, -632($fp)
	j	bp_label_467
	j	bp_label_467
bp_label_467:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -632($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_468
bp_label_468:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn318
	j	bp_label_469
bp_label_469:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn318
	j	bExpAss_nfjdn319
bExpAss_nfjdn318:
	li	$t2,1
	sw $t2, -636($fp)
	j	bp_label_470
bExpAss_nfjdn319:
	li	$t2,0
	sw $t2, -636($fp)
	j	bp_label_470
	j	bp_label_470
bp_label_470:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -636($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_471
bp_label_471:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn320
	j	bp_label_472
bp_label_472:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn320
	j	bExpAss_nfjdn321
bExpAss_nfjdn320:
	li	$t2,1
	sw $t2, -640($fp)
	j	bp_label_473
bExpAss_nfjdn321:
	li	$t2,0
	sw $t2, -640($fp)
	j	bp_label_473
	j	bp_label_473
bp_label_473:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -640($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_474
bp_label_474:
	addiu $sp, $sp, -4
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn322
	j	bp_label_475
bp_label_475:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn322
	j	bExpAss_nfjdn323
bExpAss_nfjdn322:
	li	$t2,1
	sw $t2, -644($fp)
	j	bp_label_476
bExpAss_nfjdn323:
	li	$t2,0
	sw $t2, -644($fp)
	j	bp_label_476
	j	bp_label_476
bp_label_476:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	lw $t0, -644($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_477
bp_label_477:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
