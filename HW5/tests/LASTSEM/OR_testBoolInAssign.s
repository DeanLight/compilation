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
	sw $zero, -8($fp)
	j	bp_label_8
bp_label_8:
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
	j	bp_label_9
bExpAss_nfjdn5:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_9
	j	bp_label_9
bp_label_9:
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
	j	bp_label_10
bp_label_10:
bExpAss_nfjdn6:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_11
bExpAss_nfjdn7:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_11
	j	bp_label_11
bp_label_11:
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
	j	bp_label_12
bp_label_12:
	lw $t0, ($fp)
bExpAss_nfjdn8:
	li	$t1,1
	sw $t1, -8($fp)
	j	bp_label_13
bExpAss_nfjdn9:
	li	$t1,0
	sw $t1, -8($fp)
	j	bp_label_13
	j	bp_label_13
bp_label_13:
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	j	bp_label_14
bp_label_14:
	li	$t1,4
	li	$t2,5
	blt $t1, $t2,bExpAss_nfjdn10
	j	bExpAss_nfjdn11
bExpAss_nfjdn10:
	li	$t1,1
	sw $t1, -8($fp)
	j	bp_label_15
bExpAss_nfjdn11:
	li	$t1,0
	sw $t1, -8($fp)
	j	bp_label_15
	j	bp_label_15
bp_label_15:
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	j	bp_label_16
bp_label_16:
	li	$t1,4
	li	$t2,4
	beq $t1, $t2,bExpAss_nfjdn12
	j	bExpAss_nfjdn13
bExpAss_nfjdn12:
	li	$t1,1
	sw $t1, -8($fp)
	j	bp_label_17
bExpAss_nfjdn13:
	li	$t1,0
	sw $t1, -8($fp)
	j	bp_label_17
	j	bp_label_17
bp_label_17:
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	j	bp_label_18
bp_label_18:
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
	sw $t1, -8($fp)
	j	bp_label_19
bExpAss_nfjdn15:
	li	$t1,0
	sw $t1, -8($fp)
	j	bp_label_19
	j	bp_label_19
bp_label_19:
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	j	bp_label_20
bp_label_20:
bExpAss_nfjdn16:
	li	$t1,1
	sw $t1, -8($fp)
	j	bp_label_21
bExpAss_nfjdn17:
	li	$t1,0
	sw $t1, -8($fp)
	j	bp_label_21
	j	bp_label_21
bp_label_21:
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	j	bp_label_22
bp_label_22:
	lw $t1, -4($fp)
bExpAss_nfjdn18:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_23
bExpAss_nfjdn19:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_23
	j	bp_label_23
bp_label_23:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_24
bp_label_24:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn20
	j	bExpAss_nfjdn21
bExpAss_nfjdn20:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_25
bExpAss_nfjdn21:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_25
	j	bp_label_25
bp_label_25:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_26
bp_label_26:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn22
	j	bExpAss_nfjdn23
bExpAss_nfjdn22:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_27
bExpAss_nfjdn23:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_27
	j	bp_label_27
bp_label_27:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_28
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
	bne $t2, $zero,bp_label_29
	j	bExpAss_nfjdn25
bp_label_29:
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
	sw $t2, -8($fp)
	j	bp_label_30
bExpAss_nfjdn25:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_30
	j	bp_label_30
bp_label_30:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_31
bp_label_31:
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
	bne $t2, $zero,bp_label_32
	j	bExpAss_nfjdn27
bp_label_32:
	j	bExpAss_nfjdn27
bExpAss_nfjdn26:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_33
bExpAss_nfjdn27:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_33
	j	bp_label_33
bp_label_33:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_34
bp_label_34:
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
	bne $t2, $zero,bp_label_35
	j	bExpAss_nfjdn29
bp_label_35:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn28
	j	bExpAss_nfjdn29
bExpAss_nfjdn28:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_36
bExpAss_nfjdn29:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_36
	j	bp_label_36
bp_label_36:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_37
bp_label_37:
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
	bne $t2, $zero,bp_label_38
	j	bExpAss_nfjdn31
bp_label_38:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn30
	j	bExpAss_nfjdn31
bExpAss_nfjdn30:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_39
bExpAss_nfjdn31:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_39
	j	bp_label_39
bp_label_39:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_40
bp_label_40:
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
	bne $t2, $zero,bp_label_41
	j	bExpAss_nfjdn33
bp_label_41:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn32
	j	bExpAss_nfjdn33
bExpAss_nfjdn32:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_42
bExpAss_nfjdn33:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_42
	j	bp_label_42
bp_label_42:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_43
bp_label_43:
	j	bp_label_44
bp_label_44:
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
	sw $t2, -8($fp)
	j	bp_label_45
bExpAss_nfjdn35:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_45
	j	bp_label_45
bp_label_45:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_46
bp_label_46:
	j	bp_label_47
bp_label_47:
	j	bExpAss_nfjdn37
bExpAss_nfjdn36:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_48
bExpAss_nfjdn37:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_48
	j	bp_label_48
bp_label_48:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_49
bp_label_49:
	j	bp_label_50
bp_label_50:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn38
	j	bExpAss_nfjdn39
bExpAss_nfjdn38:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_51
bExpAss_nfjdn39:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_51
	j	bp_label_51
bp_label_51:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_52
bp_label_52:
	j	bp_label_53
bp_label_53:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn40
	j	bExpAss_nfjdn41
bExpAss_nfjdn40:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_54
bExpAss_nfjdn41:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_54
	j	bp_label_54
bp_label_54:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_55
bp_label_55:
	j	bp_label_56
bp_label_56:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn42
	j	bExpAss_nfjdn43
bExpAss_nfjdn42:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_57
bExpAss_nfjdn43:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_57
	j	bp_label_57
bp_label_57:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_58
bp_label_58:
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_59
	j	bExpAss_nfjdn45
bp_label_59:
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
	sw $t2, -8($fp)
	j	bp_label_60
bExpAss_nfjdn45:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_60
	j	bp_label_60
bp_label_60:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_61
bp_label_61:
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_62
	j	bExpAss_nfjdn47
bp_label_62:
	j	bExpAss_nfjdn47
bExpAss_nfjdn46:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_63
bExpAss_nfjdn47:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_63
	j	bp_label_63
bp_label_63:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_64
bp_label_64:
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_65
	j	bExpAss_nfjdn49
bp_label_65:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn48
	j	bExpAss_nfjdn49
bExpAss_nfjdn48:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_66
bExpAss_nfjdn49:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_66
	j	bp_label_66
bp_label_66:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_67
bp_label_67:
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_68
	j	bExpAss_nfjdn51
bp_label_68:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn50
	j	bExpAss_nfjdn51
bExpAss_nfjdn50:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_69
bExpAss_nfjdn51:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_69
	j	bp_label_69
bp_label_69:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_70
bp_label_70:
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_71
	j	bExpAss_nfjdn53
bp_label_71:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn52
	j	bExpAss_nfjdn53
bExpAss_nfjdn52:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_72
bExpAss_nfjdn53:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_72
	j	bp_label_72
bp_label_72:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_73
bp_label_73:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_74
	j	bExpAss_nfjdn55
bp_label_74:
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
	sw $t2, -8($fp)
	j	bp_label_75
bExpAss_nfjdn55:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_75
	j	bp_label_75
bp_label_75:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_76
bp_label_76:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_77
	j	bExpAss_nfjdn57
bp_label_77:
	j	bExpAss_nfjdn57
bExpAss_nfjdn56:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_78
bExpAss_nfjdn57:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_78
	j	bp_label_78
bp_label_78:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_79
bp_label_79:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_80
	j	bExpAss_nfjdn59
bp_label_80:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn58
	j	bExpAss_nfjdn59
bExpAss_nfjdn58:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_81
bExpAss_nfjdn59:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_81
	j	bp_label_81
bp_label_81:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_82
bp_label_82:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_83
	j	bExpAss_nfjdn61
bp_label_83:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn60
	j	bExpAss_nfjdn61
bExpAss_nfjdn60:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_84
bExpAss_nfjdn61:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_84
	j	bp_label_84
bp_label_84:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_85
bp_label_85:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_86
	j	bExpAss_nfjdn63
bp_label_86:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn62
	j	bExpAss_nfjdn63
bExpAss_nfjdn62:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_87
bExpAss_nfjdn63:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_87
	j	bp_label_87
bp_label_87:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_88
bp_label_88:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_89
	j	bExpAss_nfjdn65
bp_label_89:
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
	sw $t2, -8($fp)
	j	bp_label_90
bExpAss_nfjdn65:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_90
	j	bp_label_90
bp_label_90:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_91
bp_label_91:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_92
	j	bExpAss_nfjdn67
bp_label_92:
	j	bExpAss_nfjdn67
bExpAss_nfjdn66:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_93
bExpAss_nfjdn67:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_93
	j	bp_label_93
bp_label_93:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_94
bp_label_94:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_95
	j	bExpAss_nfjdn69
bp_label_95:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn68
	j	bExpAss_nfjdn69
bExpAss_nfjdn68:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_96
bExpAss_nfjdn69:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_96
	j	bp_label_96
bp_label_96:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_97
bp_label_97:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_98
	j	bExpAss_nfjdn71
bp_label_98:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn70
	j	bExpAss_nfjdn71
bExpAss_nfjdn70:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_99
bExpAss_nfjdn71:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_99
	j	bp_label_99
bp_label_99:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_100
bp_label_100:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_101
	j	bExpAss_nfjdn73
bp_label_101:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn72
	j	bExpAss_nfjdn73
bExpAss_nfjdn72:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_102
bExpAss_nfjdn73:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_102
	j	bp_label_102
bp_label_102:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_103
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
	bne $t2, $zero,bp_label_104
	j	bExpAss_nfjdn75
bp_label_104:
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
	sw $t2, -8($fp)
	j	bp_label_105
bExpAss_nfjdn75:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_105
	j	bp_label_105
bp_label_105:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_106
bp_label_106:
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
	bne $t2, $zero,bp_label_107
	j	bExpAss_nfjdn77
bp_label_107:
	j	bExpAss_nfjdn77
bExpAss_nfjdn76:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_108
bExpAss_nfjdn77:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_108
	j	bp_label_108
bp_label_108:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_109
bp_label_109:
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
	bne $t2, $zero,bp_label_110
	j	bExpAss_nfjdn79
bp_label_110:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn78
	j	bExpAss_nfjdn79
bExpAss_nfjdn78:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_111
bExpAss_nfjdn79:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_111
	j	bp_label_111
bp_label_111:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_112
bp_label_112:
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
	bne $t2, $zero,bp_label_113
	j	bExpAss_nfjdn81
bp_label_113:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn80
	j	bExpAss_nfjdn81
bExpAss_nfjdn80:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_114
bExpAss_nfjdn81:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_114
	j	bp_label_114
bp_label_114:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_115
bp_label_115:
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
	bne $t2, $zero,bp_label_116
	j	bExpAss_nfjdn83
bp_label_116:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn82
	j	bExpAss_nfjdn83
bExpAss_nfjdn82:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_117
bExpAss_nfjdn83:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_117
	j	bp_label_117
bp_label_117:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_118
bp_label_118:
	j	bp_label_119
bp_label_119:
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
	sw $t2, -8($fp)
	j	bp_label_120
bExpAss_nfjdn85:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_120
	j	bp_label_120
bp_label_120:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_121
bp_label_121:
	j	bp_label_122
bp_label_122:
	j	bExpAss_nfjdn87
bExpAss_nfjdn86:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_123
bExpAss_nfjdn87:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_123
	j	bp_label_123
bp_label_123:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_124
bp_label_124:
	j	bp_label_125
bp_label_125:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn88
	j	bExpAss_nfjdn89
bExpAss_nfjdn88:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_126
bExpAss_nfjdn89:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_126
	j	bp_label_126
bp_label_126:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_127
bp_label_127:
	j	bp_label_128
bp_label_128:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn90
	j	bExpAss_nfjdn91
bExpAss_nfjdn90:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_129
bExpAss_nfjdn91:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_129
	j	bp_label_129
bp_label_129:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_130
bp_label_130:
	j	bp_label_131
bp_label_131:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn92
	j	bExpAss_nfjdn93
bExpAss_nfjdn92:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_132
bExpAss_nfjdn93:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_132
	j	bp_label_132
bp_label_132:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_133
bp_label_133:
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_134
	j	bExpAss_nfjdn95
bp_label_134:
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
	sw $t2, -8($fp)
	j	bp_label_135
bExpAss_nfjdn95:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_135
	j	bp_label_135
bp_label_135:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_136
bp_label_136:
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_137
	j	bExpAss_nfjdn97
bp_label_137:
	j	bExpAss_nfjdn97
bExpAss_nfjdn96:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_138
bExpAss_nfjdn97:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_138
	j	bp_label_138
bp_label_138:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_139
bp_label_139:
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_140
	j	bExpAss_nfjdn99
bp_label_140:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn98
	j	bExpAss_nfjdn99
bExpAss_nfjdn98:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_141
bExpAss_nfjdn99:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_141
	j	bp_label_141
bp_label_141:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_142
bp_label_142:
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_143
	j	bExpAss_nfjdn101
bp_label_143:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn100
	j	bExpAss_nfjdn101
bExpAss_nfjdn100:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_144
bExpAss_nfjdn101:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_144
	j	bp_label_144
bp_label_144:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_145
bp_label_145:
	lw $t2, ($fp)
	bne $t2, $zero,bp_label_146
	j	bExpAss_nfjdn103
bp_label_146:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn102
	j	bExpAss_nfjdn103
bExpAss_nfjdn102:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_147
bExpAss_nfjdn103:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_147
	j	bp_label_147
bp_label_147:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_148
bp_label_148:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_149
	j	bExpAss_nfjdn105
bp_label_149:
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
	sw $t2, -8($fp)
	j	bp_label_150
bExpAss_nfjdn105:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_150
	j	bp_label_150
bp_label_150:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_151
bp_label_151:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_152
	j	bExpAss_nfjdn107
bp_label_152:
	j	bExpAss_nfjdn107
bExpAss_nfjdn106:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_153
bExpAss_nfjdn107:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_153
	j	bp_label_153
bp_label_153:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_154
bp_label_154:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_155
	j	bExpAss_nfjdn109
bp_label_155:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn108
	j	bExpAss_nfjdn109
bExpAss_nfjdn108:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_156
bExpAss_nfjdn109:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_156
	j	bp_label_156
bp_label_156:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_157
bp_label_157:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_158
	j	bExpAss_nfjdn111
bp_label_158:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn110
	j	bExpAss_nfjdn111
bExpAss_nfjdn110:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_159
bExpAss_nfjdn111:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_159
	j	bp_label_159
bp_label_159:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_160
bp_label_160:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bp_label_161
	j	bExpAss_nfjdn113
bp_label_161:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn112
	j	bExpAss_nfjdn113
bExpAss_nfjdn112:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_162
bExpAss_nfjdn113:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_162
	j	bp_label_162
bp_label_162:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_163
bp_label_163:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_164
	j	bExpAss_nfjdn115
bp_label_164:
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
	sw $t2, -8($fp)
	j	bp_label_165
bExpAss_nfjdn115:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_165
	j	bp_label_165
bp_label_165:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_166
bp_label_166:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_167
	j	bExpAss_nfjdn117
bp_label_167:
	j	bExpAss_nfjdn117
bExpAss_nfjdn116:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_168
bExpAss_nfjdn117:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_168
	j	bp_label_168
bp_label_168:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_169
bp_label_169:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_170
	j	bExpAss_nfjdn119
bp_label_170:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn118
	j	bExpAss_nfjdn119
bExpAss_nfjdn118:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_171
bExpAss_nfjdn119:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_171
	j	bp_label_171
bp_label_171:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_172
bp_label_172:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_173
	j	bExpAss_nfjdn121
bp_label_173:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn120
	j	bExpAss_nfjdn121
bExpAss_nfjdn120:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_174
bExpAss_nfjdn121:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_174
	j	bp_label_174
bp_label_174:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_175
bp_label_175:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bp_label_176
	j	bExpAss_nfjdn123
bp_label_176:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn122
	j	bExpAss_nfjdn123
bExpAss_nfjdn122:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_177
bExpAss_nfjdn123:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_177
	j	bp_label_177
bp_label_177:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_178
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
	bne $t2, $zero,bp_label_179
	j	bExpAss_nfjdn125
bp_label_179:
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
	sw $t2, -8($fp)
	j	bp_label_180
bExpAss_nfjdn125:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_180
	j	bp_label_180
bp_label_180:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_181
bp_label_181:
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
	bne $t2, $zero,bp_label_182
	j	bExpAss_nfjdn127
bp_label_182:
	j	bExpAss_nfjdn127
bExpAss_nfjdn126:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_183
bExpAss_nfjdn127:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_183
	j	bp_label_183
bp_label_183:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_184
bp_label_184:
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
	bne $t2, $zero,bp_label_185
	j	bExpAss_nfjdn129
bp_label_185:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn128
	j	bExpAss_nfjdn129
bExpAss_nfjdn128:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_186
bExpAss_nfjdn129:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_186
	j	bp_label_186
bp_label_186:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_187
bp_label_187:
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
	bne $t2, $zero,bp_label_188
	j	bExpAss_nfjdn131
bp_label_188:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn130
	j	bExpAss_nfjdn131
bExpAss_nfjdn130:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_189
bExpAss_nfjdn131:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_189
	j	bp_label_189
bp_label_189:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_190
bp_label_190:
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
	bne $t2, $zero,bp_label_191
	j	bExpAss_nfjdn133
bp_label_191:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn132
	j	bExpAss_nfjdn133
bExpAss_nfjdn132:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_192
bExpAss_nfjdn133:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_192
	j	bp_label_192
bp_label_192:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_193
bp_label_193:
	j	bExpAss_nfjdn135
bp_label_194:
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
	sw $t2, -8($fp)
	j	bp_label_195
bExpAss_nfjdn135:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_195
	j	bp_label_195
bp_label_195:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_196
bp_label_196:
	j	bExpAss_nfjdn137
bp_label_197:
	j	bExpAss_nfjdn137
bExpAss_nfjdn136:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_198
bExpAss_nfjdn137:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_198
	j	bp_label_198
bp_label_198:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_199
bp_label_199:
	j	bExpAss_nfjdn139
bp_label_200:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn138
	j	bExpAss_nfjdn139
bExpAss_nfjdn138:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_201
bExpAss_nfjdn139:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_201
	j	bp_label_201
bp_label_201:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_202
bp_label_202:
	j	bExpAss_nfjdn141
bp_label_203:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn140
	j	bExpAss_nfjdn141
bExpAss_nfjdn140:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_204
bExpAss_nfjdn141:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_204
	j	bp_label_204
bp_label_204:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_205
bp_label_205:
	j	bExpAss_nfjdn143
bp_label_206:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn142
	j	bExpAss_nfjdn143
bExpAss_nfjdn142:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_207
bExpAss_nfjdn143:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_207
	j	bp_label_207
bp_label_207:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_208
bp_label_208:
	lw $t2, -4($fp)
	bne $t2, $zero,bp_label_209
	j	bExpAss_nfjdn145
bp_label_209:
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
	sw $t2, -8($fp)
	j	bp_label_210
bExpAss_nfjdn145:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_210
	j	bp_label_210
bp_label_210:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_211
bp_label_211:
	lw $t2, -4($fp)
	bne $t2, $zero,bp_label_212
	j	bExpAss_nfjdn147
bp_label_212:
	j	bExpAss_nfjdn147
bExpAss_nfjdn146:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_213
bExpAss_nfjdn147:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_213
	j	bp_label_213
bp_label_213:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_214
bp_label_214:
	lw $t2, -4($fp)
	bne $t2, $zero,bp_label_215
	j	bExpAss_nfjdn149
bp_label_215:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn148
	j	bExpAss_nfjdn149
bExpAss_nfjdn148:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_216
bExpAss_nfjdn149:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_216
	j	bp_label_216
bp_label_216:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_217
bp_label_217:
	lw $t2, -4($fp)
	bne $t2, $zero,bp_label_218
	j	bExpAss_nfjdn151
bp_label_218:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn150
	j	bExpAss_nfjdn151
bExpAss_nfjdn150:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_219
bExpAss_nfjdn151:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_219
	j	bp_label_219
bp_label_219:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_220
bp_label_220:
	lw $t2, -4($fp)
	bne $t2, $zero,bp_label_221
	j	bExpAss_nfjdn153
bp_label_221:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn152
	j	bExpAss_nfjdn153
bExpAss_nfjdn152:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_222
bExpAss_nfjdn153:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_222
	j	bp_label_222
bp_label_222:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_223
bp_label_223:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bp_label_224
	j	bExpAss_nfjdn155
bp_label_224:
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
	sw $t2, -8($fp)
	j	bp_label_225
bExpAss_nfjdn155:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_225
	j	bp_label_225
bp_label_225:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_226
bp_label_226:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bp_label_227
	j	bExpAss_nfjdn157
bp_label_227:
	j	bExpAss_nfjdn157
bExpAss_nfjdn156:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_228
bExpAss_nfjdn157:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_228
	j	bp_label_228
bp_label_228:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_229
bp_label_229:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bp_label_230
	j	bExpAss_nfjdn159
bp_label_230:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn158
	j	bExpAss_nfjdn159
bExpAss_nfjdn158:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_231
bExpAss_nfjdn159:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_231
	j	bp_label_231
bp_label_231:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_232
bp_label_232:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bp_label_233
	j	bExpAss_nfjdn161
bp_label_233:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn160
	j	bExpAss_nfjdn161
bExpAss_nfjdn160:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_234
bExpAss_nfjdn161:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_234
	j	bp_label_234
bp_label_234:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_235
bp_label_235:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bp_label_236
	j	bExpAss_nfjdn163
bp_label_236:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn162
	j	bExpAss_nfjdn163
bExpAss_nfjdn162:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_237
bExpAss_nfjdn163:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_237
	j	bp_label_237
bp_label_237:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_238
bp_label_238:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bp_label_239
	j	bExpAss_nfjdn165
bp_label_239:
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
	sw $t2, -8($fp)
	j	bp_label_240
bExpAss_nfjdn165:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_240
	j	bp_label_240
bp_label_240:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_241
bp_label_241:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bp_label_242
	j	bExpAss_nfjdn167
bp_label_242:
	j	bExpAss_nfjdn167
bExpAss_nfjdn166:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_243
bExpAss_nfjdn167:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_243
	j	bp_label_243
bp_label_243:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_244
bp_label_244:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bp_label_245
	j	bExpAss_nfjdn169
bp_label_245:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn168
	j	bExpAss_nfjdn169
bExpAss_nfjdn168:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_246
bExpAss_nfjdn169:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_246
	j	bp_label_246
bp_label_246:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_247
bp_label_247:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bp_label_248
	j	bExpAss_nfjdn171
bp_label_248:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn170
	j	bExpAss_nfjdn171
bExpAss_nfjdn170:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_249
bExpAss_nfjdn171:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_249
	j	bp_label_249
bp_label_249:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_250
bp_label_250:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bp_label_251
	j	bExpAss_nfjdn173
bp_label_251:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn172
	j	bExpAss_nfjdn173
bExpAss_nfjdn172:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_252
bExpAss_nfjdn173:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_252
	j	bp_label_252
bp_label_252:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
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
	j	bp_label_254
bp_label_254:
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
	sw $t2, -8($fp)
	j	bp_label_255
bExpAss_nfjdn175:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_255
	j	bp_label_255
bp_label_255:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_256
bp_label_256:
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
	j	bp_label_257
bp_label_257:
	j	bExpAss_nfjdn177
bExpAss_nfjdn176:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_258
bExpAss_nfjdn177:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_258
	j	bp_label_258
bp_label_258:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_259
bp_label_259:
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
	j	bp_label_260
bp_label_260:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn178
	j	bExpAss_nfjdn179
bExpAss_nfjdn178:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_261
bExpAss_nfjdn179:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_261
	j	bp_label_261
bp_label_261:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_262
bp_label_262:
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
	j	bp_label_263
bp_label_263:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn180
	j	bExpAss_nfjdn181
bExpAss_nfjdn180:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_264
bExpAss_nfjdn181:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_264
	j	bp_label_264
bp_label_264:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_265
bp_label_265:
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
	j	bp_label_266
bp_label_266:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn182
	j	bExpAss_nfjdn183
bExpAss_nfjdn182:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_267
bExpAss_nfjdn183:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_267
	j	bp_label_267
bp_label_267:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_268
bp_label_268:
	j	bExpAss_nfjdn184
bp_label_269:
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
	sw $t2, -8($fp)
	j	bp_label_270
bExpAss_nfjdn185:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_270
	j	bp_label_270
bp_label_270:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_271
bp_label_271:
	j	bExpAss_nfjdn186
bp_label_272:
	j	bExpAss_nfjdn187
bExpAss_nfjdn186:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_273
bExpAss_nfjdn187:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_273
	j	bp_label_273
bp_label_273:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_274
bp_label_274:
	j	bExpAss_nfjdn188
bp_label_275:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn188
	j	bExpAss_nfjdn189
bExpAss_nfjdn188:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_276
bExpAss_nfjdn189:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_276
	j	bp_label_276
bp_label_276:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_277
bp_label_277:
	j	bExpAss_nfjdn190
bp_label_278:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn190
	j	bExpAss_nfjdn191
bExpAss_nfjdn190:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_279
bExpAss_nfjdn191:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_279
	j	bp_label_279
bp_label_279:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_280
bp_label_280:
	j	bExpAss_nfjdn192
bp_label_281:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn192
	j	bExpAss_nfjdn193
bExpAss_nfjdn192:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_282
bExpAss_nfjdn193:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_282
	j	bp_label_282
bp_label_282:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_283
bp_label_283:
	lw $t2, ($fp)
	bne $t2, $zero,bExpAss_nfjdn194
	j	bp_label_284
bp_label_284:
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
	sw $t2, -8($fp)
	j	bp_label_285
bExpAss_nfjdn195:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_285
	j	bp_label_285
bp_label_285:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_286
bp_label_286:
	lw $t2, ($fp)
	bne $t2, $zero,bExpAss_nfjdn196
	j	bp_label_287
bp_label_287:
	j	bExpAss_nfjdn197
bExpAss_nfjdn196:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_288
bExpAss_nfjdn197:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_288
	j	bp_label_288
bp_label_288:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_289
bp_label_289:
	lw $t2, ($fp)
	bne $t2, $zero,bExpAss_nfjdn198
	j	bp_label_290
bp_label_290:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn198
	j	bExpAss_nfjdn199
bExpAss_nfjdn198:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_291
bExpAss_nfjdn199:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_291
	j	bp_label_291
bp_label_291:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_292
bp_label_292:
	lw $t2, ($fp)
	bne $t2, $zero,bExpAss_nfjdn200
	j	bp_label_293
bp_label_293:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn200
	j	bExpAss_nfjdn201
bExpAss_nfjdn200:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_294
bExpAss_nfjdn201:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_294
	j	bp_label_294
bp_label_294:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_295
bp_label_295:
	lw $t2, ($fp)
	bne $t2, $zero,bExpAss_nfjdn202
	j	bp_label_296
bp_label_296:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn202
	j	bExpAss_nfjdn203
bExpAss_nfjdn202:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_297
bExpAss_nfjdn203:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_297
	j	bp_label_297
bp_label_297:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_298
bp_label_298:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn204
	j	bp_label_299
bp_label_299:
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
	sw $t2, -8($fp)
	j	bp_label_300
bExpAss_nfjdn205:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_300
	j	bp_label_300
bp_label_300:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_301
bp_label_301:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn206
	j	bp_label_302
bp_label_302:
	j	bExpAss_nfjdn207
bExpAss_nfjdn206:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_303
bExpAss_nfjdn207:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_303
	j	bp_label_303
bp_label_303:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_304
bp_label_304:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn208
	j	bp_label_305
bp_label_305:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn208
	j	bExpAss_nfjdn209
bExpAss_nfjdn208:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_306
bExpAss_nfjdn209:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_306
	j	bp_label_306
bp_label_306:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_307
bp_label_307:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn210
	j	bp_label_308
bp_label_308:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn210
	j	bExpAss_nfjdn211
bExpAss_nfjdn210:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_309
bExpAss_nfjdn211:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_309
	j	bp_label_309
bp_label_309:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_310
bp_label_310:
	li	$t2,4
	li	$t3,5
	blt $t2, $t3,bExpAss_nfjdn212
	j	bp_label_311
bp_label_311:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn212
	j	bExpAss_nfjdn213
bExpAss_nfjdn212:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_312
bExpAss_nfjdn213:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_312
	j	bp_label_312
bp_label_312:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_313
bp_label_313:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn214
	j	bp_label_314
bp_label_314:
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
	sw $t2, -8($fp)
	j	bp_label_315
bExpAss_nfjdn215:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_315
	j	bp_label_315
bp_label_315:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_316
bp_label_316:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn216
	j	bp_label_317
bp_label_317:
	j	bExpAss_nfjdn217
bExpAss_nfjdn216:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_318
bExpAss_nfjdn217:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_318
	j	bp_label_318
bp_label_318:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_319
bp_label_319:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn218
	j	bp_label_320
bp_label_320:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn218
	j	bExpAss_nfjdn219
bExpAss_nfjdn218:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_321
bExpAss_nfjdn219:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_321
	j	bp_label_321
bp_label_321:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_322
bp_label_322:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn220
	j	bp_label_323
bp_label_323:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn220
	j	bExpAss_nfjdn221
bExpAss_nfjdn220:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_324
bExpAss_nfjdn221:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_324
	j	bp_label_324
bp_label_324:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_325
bp_label_325:
	li	$t2,4
	li	$t3,4
	beq $t2, $t3,bExpAss_nfjdn222
	j	bp_label_326
bp_label_326:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn222
	j	bExpAss_nfjdn223
bExpAss_nfjdn222:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_327
bExpAss_nfjdn223:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_327
	j	bp_label_327
bp_label_327:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
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
	j	bp_label_329
bp_label_329:
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
	sw $t2, -8($fp)
	j	bp_label_330
bExpAss_nfjdn225:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_330
	j	bp_label_330
bp_label_330:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_331
bp_label_331:
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
	j	bp_label_332
bp_label_332:
	j	bExpAss_nfjdn227
bExpAss_nfjdn226:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_333
bExpAss_nfjdn227:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_333
	j	bp_label_333
bp_label_333:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_334
bp_label_334:
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
	j	bp_label_335
bp_label_335:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn228
	j	bExpAss_nfjdn229
bExpAss_nfjdn228:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_336
bExpAss_nfjdn229:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_336
	j	bp_label_336
bp_label_336:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_337
bp_label_337:
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
	j	bp_label_338
bp_label_338:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn230
	j	bExpAss_nfjdn231
bExpAss_nfjdn230:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_339
bExpAss_nfjdn231:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_339
	j	bp_label_339
bp_label_339:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_340
bp_label_340:
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
	j	bp_label_341
bp_label_341:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn232
	j	bExpAss_nfjdn233
bExpAss_nfjdn232:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_342
bExpAss_nfjdn233:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_342
	j	bp_label_342
bp_label_342:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_343
bp_label_343:
	j	bp_label_344
bp_label_344:
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
	sw $t2, -8($fp)
	j	bp_label_345
bExpAss_nfjdn235:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_345
	j	bp_label_345
bp_label_345:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_346
bp_label_346:
	j	bp_label_347
bp_label_347:
	j	bExpAss_nfjdn237
bExpAss_nfjdn236:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_348
bExpAss_nfjdn237:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_348
	j	bp_label_348
bp_label_348:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_349
bp_label_349:
	j	bp_label_350
bp_label_350:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn238
	j	bExpAss_nfjdn239
bExpAss_nfjdn238:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_351
bExpAss_nfjdn239:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_351
	j	bp_label_351
bp_label_351:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_352
bp_label_352:
	j	bp_label_353
bp_label_353:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn240
	j	bExpAss_nfjdn241
bExpAss_nfjdn240:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_354
bExpAss_nfjdn241:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_354
	j	bp_label_354
bp_label_354:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_355
bp_label_355:
	j	bp_label_356
bp_label_356:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn242
	j	bExpAss_nfjdn243
bExpAss_nfjdn242:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_357
bExpAss_nfjdn243:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_357
	j	bp_label_357
bp_label_357:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_358
bp_label_358:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn244
	j	bp_label_359
bp_label_359:
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
	sw $t2, -8($fp)
	j	bp_label_360
bExpAss_nfjdn245:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_360
	j	bp_label_360
bp_label_360:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_361
bp_label_361:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn246
	j	bp_label_362
bp_label_362:
	j	bExpAss_nfjdn247
bExpAss_nfjdn246:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_363
bExpAss_nfjdn247:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_363
	j	bp_label_363
bp_label_363:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_364
bp_label_364:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn248
	j	bp_label_365
bp_label_365:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn248
	j	bExpAss_nfjdn249
bExpAss_nfjdn248:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_366
bExpAss_nfjdn249:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_366
	j	bp_label_366
bp_label_366:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_367
bp_label_367:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn250
	j	bp_label_368
bp_label_368:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn250
	j	bExpAss_nfjdn251
bExpAss_nfjdn250:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_369
bExpAss_nfjdn251:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_369
	j	bp_label_369
bp_label_369:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_370
bp_label_370:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn252
	j	bp_label_371
bp_label_371:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn252
	j	bExpAss_nfjdn253
bExpAss_nfjdn252:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_372
bExpAss_nfjdn253:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_372
	j	bp_label_372
bp_label_372:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_373
bp_label_373:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn254
	j	bp_label_374
bp_label_374:
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
	sw $t2, -8($fp)
	j	bp_label_375
bExpAss_nfjdn255:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_375
	j	bp_label_375
bp_label_375:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_376
bp_label_376:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn256
	j	bp_label_377
bp_label_377:
	j	bExpAss_nfjdn257
bExpAss_nfjdn256:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_378
bExpAss_nfjdn257:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_378
	j	bp_label_378
bp_label_378:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_379
bp_label_379:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn258
	j	bp_label_380
bp_label_380:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn258
	j	bExpAss_nfjdn259
bExpAss_nfjdn258:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_381
bExpAss_nfjdn259:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_381
	j	bp_label_381
bp_label_381:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_382
bp_label_382:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn260
	j	bp_label_383
bp_label_383:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn260
	j	bExpAss_nfjdn261
bExpAss_nfjdn260:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_384
bExpAss_nfjdn261:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_384
	j	bp_label_384
bp_label_384:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_385
bp_label_385:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn262
	j	bp_label_386
bp_label_386:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn262
	j	bExpAss_nfjdn263
bExpAss_nfjdn262:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_387
bExpAss_nfjdn263:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_387
	j	bp_label_387
bp_label_387:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_388
bp_label_388:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn264
	j	bp_label_389
bp_label_389:
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
	sw $t2, -8($fp)
	j	bp_label_390
bExpAss_nfjdn265:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_390
	j	bp_label_390
bp_label_390:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_391
bp_label_391:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn266
	j	bp_label_392
bp_label_392:
	j	bExpAss_nfjdn267
bExpAss_nfjdn266:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_393
bExpAss_nfjdn267:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_393
	j	bp_label_393
bp_label_393:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_394
bp_label_394:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn268
	j	bp_label_395
bp_label_395:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn268
	j	bExpAss_nfjdn269
bExpAss_nfjdn268:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_396
bExpAss_nfjdn269:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_396
	j	bp_label_396
bp_label_396:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_397
bp_label_397:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn270
	j	bp_label_398
bp_label_398:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn270
	j	bExpAss_nfjdn271
bExpAss_nfjdn270:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_399
bExpAss_nfjdn271:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_399
	j	bp_label_399
bp_label_399:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_400
bp_label_400:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn272
	j	bp_label_401
bp_label_401:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn272
	j	bExpAss_nfjdn273
bExpAss_nfjdn272:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_402
bExpAss_nfjdn273:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_402
	j	bp_label_402
bp_label_402:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
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
	j	bp_label_404
bp_label_404:
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
	sw $t2, -8($fp)
	j	bp_label_405
bExpAss_nfjdn275:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_405
	j	bp_label_405
bp_label_405:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_406
bp_label_406:
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
	j	bp_label_407
bp_label_407:
	j	bExpAss_nfjdn277
bExpAss_nfjdn276:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_408
bExpAss_nfjdn277:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_408
	j	bp_label_408
bp_label_408:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_409
bp_label_409:
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
	j	bp_label_410
bp_label_410:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn278
	j	bExpAss_nfjdn279
bExpAss_nfjdn278:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_411
bExpAss_nfjdn279:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_411
	j	bp_label_411
bp_label_411:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_412
bp_label_412:
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
	j	bp_label_413
bp_label_413:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn280
	j	bExpAss_nfjdn281
bExpAss_nfjdn280:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_414
bExpAss_nfjdn281:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_414
	j	bp_label_414
bp_label_414:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_415
bp_label_415:
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
	j	bp_label_416
bp_label_416:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn282
	j	bExpAss_nfjdn283
bExpAss_nfjdn282:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_417
bExpAss_nfjdn283:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_417
	j	bp_label_417
bp_label_417:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_418
bp_label_418:
	j	bp_label_419
bp_label_419:
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
	sw $t2, -8($fp)
	j	bp_label_420
bExpAss_nfjdn285:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_420
	j	bp_label_420
bp_label_420:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_421
bp_label_421:
	j	bp_label_422
bp_label_422:
	j	bExpAss_nfjdn287
bExpAss_nfjdn286:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_423
bExpAss_nfjdn287:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_423
	j	bp_label_423
bp_label_423:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_424
bp_label_424:
	j	bp_label_425
bp_label_425:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn288
	j	bExpAss_nfjdn289
bExpAss_nfjdn288:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_426
bExpAss_nfjdn289:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_426
	j	bp_label_426
bp_label_426:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_427
bp_label_427:
	j	bp_label_428
bp_label_428:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn290
	j	bExpAss_nfjdn291
bExpAss_nfjdn290:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_429
bExpAss_nfjdn291:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_429
	j	bp_label_429
bp_label_429:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_430
bp_label_430:
	j	bp_label_431
bp_label_431:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn292
	j	bExpAss_nfjdn293
bExpAss_nfjdn292:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_432
bExpAss_nfjdn293:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_432
	j	bp_label_432
bp_label_432:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_433
bp_label_433:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn294
	j	bp_label_434
bp_label_434:
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
	sw $t2, -8($fp)
	j	bp_label_435
bExpAss_nfjdn295:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_435
	j	bp_label_435
bp_label_435:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_436
bp_label_436:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn296
	j	bp_label_437
bp_label_437:
	j	bExpAss_nfjdn297
bExpAss_nfjdn296:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_438
bExpAss_nfjdn297:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_438
	j	bp_label_438
bp_label_438:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_439
bp_label_439:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn298
	j	bp_label_440
bp_label_440:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn298
	j	bExpAss_nfjdn299
bExpAss_nfjdn298:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_441
bExpAss_nfjdn299:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_441
	j	bp_label_441
bp_label_441:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_442
bp_label_442:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn300
	j	bp_label_443
bp_label_443:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn300
	j	bExpAss_nfjdn301
bExpAss_nfjdn300:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_444
bExpAss_nfjdn301:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_444
	j	bp_label_444
bp_label_444:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_445
bp_label_445:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn302
	j	bp_label_446
bp_label_446:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn302
	j	bExpAss_nfjdn303
bExpAss_nfjdn302:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_447
bExpAss_nfjdn303:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_447
	j	bp_label_447
bp_label_447:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_448
bp_label_448:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn304
	j	bp_label_449
bp_label_449:
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
	sw $t2, -8($fp)
	j	bp_label_450
bExpAss_nfjdn305:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_450
	j	bp_label_450
bp_label_450:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_451
bp_label_451:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn306
	j	bp_label_452
bp_label_452:
	j	bExpAss_nfjdn307
bExpAss_nfjdn306:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_453
bExpAss_nfjdn307:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_453
	j	bp_label_453
bp_label_453:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_454
bp_label_454:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn308
	j	bp_label_455
bp_label_455:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn308
	j	bExpAss_nfjdn309
bExpAss_nfjdn308:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_456
bExpAss_nfjdn309:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_456
	j	bp_label_456
bp_label_456:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_457
bp_label_457:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn310
	j	bp_label_458
bp_label_458:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn310
	j	bExpAss_nfjdn311
bExpAss_nfjdn310:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_459
bExpAss_nfjdn311:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_459
	j	bp_label_459
bp_label_459:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_460
bp_label_460:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn312
	j	bp_label_461
bp_label_461:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn312
	j	bExpAss_nfjdn313
bExpAss_nfjdn312:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_462
bExpAss_nfjdn313:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_462
	j	bp_label_462
bp_label_462:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_463
bp_label_463:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn314
	j	bp_label_464
bp_label_464:
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
	sw $t2, -8($fp)
	j	bp_label_465
bExpAss_nfjdn315:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_465
	j	bp_label_465
bp_label_465:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_466
bp_label_466:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn316
	j	bp_label_467
bp_label_467:
	j	bExpAss_nfjdn317
bExpAss_nfjdn316:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_468
bExpAss_nfjdn317:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_468
	j	bp_label_468
bp_label_468:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_469
bp_label_469:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn318
	j	bp_label_470
bp_label_470:
	lw $t2, -4($fp)
	bne $t2, $zero,bExpAss_nfjdn318
	j	bExpAss_nfjdn319
bExpAss_nfjdn318:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_471
bExpAss_nfjdn319:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_471
	j	bp_label_471
bp_label_471:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_472
bp_label_472:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn320
	j	bp_label_473
bp_label_473:
	li	$t2,4
	li	$t3,5
	bgt $t2, $t3,bExpAss_nfjdn320
	j	bExpAss_nfjdn321
bExpAss_nfjdn320:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_474
bExpAss_nfjdn321:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_474
	j	bp_label_474
bp_label_474:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_475
bp_label_475:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn322
	j	bp_label_476
bp_label_476:
	li	$t2,4
	li	$t3,4
	bne $t2, $t3,bExpAss_nfjdn322
	j	bExpAss_nfjdn323
bExpAss_nfjdn322:
	li	$t2,1
	sw $t2, -8($fp)
	j	bp_label_477
bExpAss_nfjdn323:
	li	$t2,0
	sw $t2, -8($fp)
	j	bp_label_477
	j	bp_label_477
bp_label_477:
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
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
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	addiu $sp, $sp, 4
	lw $t1, ($sp)
	j	bp_label_478
bp_label_478:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
