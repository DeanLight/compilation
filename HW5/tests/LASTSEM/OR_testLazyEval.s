.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "Success!\n"
string_label_1:	.asciiz "Success!\n"
.text
main:
	move	$fp,$sp
	jal	label_54
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
	addiu $sp, $sp, -4
	li	$t0,5
	li	$t1,0
	beq	$t1,$zero,nayalo
	div	$t0,$t1
	mflo	$t0
	sw $t0, ($fp)
	j	bp_label_0
bp_label_0:
	li	$v0,1
	move	$sp,$fp
	jr	$ra
bp_label_1:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
label_38:
	li	$v0,1
	move	$sp,$fp
	jr	$ra
bp_label_2:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
label_46:
	li	$v0,0
	move	$sp,$fp
	jr	$ra
bp_label_3:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
label_54:
	addiu $sp, $sp, -4
bExpAss_nfjdn0:
	li	$t0,1
	sw $t0, ($fp)
	j	bp_label_4
bExpAss_nfjdn1:
	li	$t0,0
	sw $t0, ($fp)
	j	bp_label_4
	j	bp_label_4
bp_label_4:
	addiu $sp, $sp, -4
bExpAss_nfjdn2:
	li	$t0,1
	sw $t0, -4($fp)
	j	bp_label_5
bExpAss_nfjdn3:
	li	$t0,0
	sw $t0, -4($fp)
	j	bp_label_5
	j	bp_label_5
bp_label_5:
	addiu $sp, $sp, -4
	sw $zero, -8($fp)
	j	bp_label_6
bp_label_6:
	j	bExpAss_nfjdn4
bp_label_7:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
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
	j	bExpAss_nfjdn7
bp_label_9:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn6
	j	bExpAss_nfjdn7
bExpAss_nfjdn6:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_10
bExpAss_nfjdn7:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_10
	j	bp_label_10
bp_label_10:
	li	$t0,5
	li	$t1,4
	bgt $t0, $t1,bExpAss_nfjdn8
	j	bp_label_11
bp_label_11:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn8
	j	bExpAss_nfjdn9
bExpAss_nfjdn8:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_12
bExpAss_nfjdn9:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_12
	j	bp_label_12
bp_label_12:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_13
	j	bExpAss_nfjdn11
bp_label_13:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn10
	j	bExpAss_nfjdn11
bExpAss_nfjdn10:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_14
bExpAss_nfjdn11:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_14
	j	bp_label_14
bp_label_14:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn12
	j	bp_label_15
bp_label_15:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn12
	j	bExpAss_nfjdn13
bExpAss_nfjdn12:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_16
bExpAss_nfjdn13:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_16
	j	bp_label_16
bp_label_16:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_17
	j	bExpAss_nfjdn15
bp_label_17:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn14
	j	bExpAss_nfjdn15
bExpAss_nfjdn14:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_18
bExpAss_nfjdn15:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_18
	j	bp_label_18
bp_label_18:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn16
	j	bp_label_19
bp_label_19:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn16
	j	bExpAss_nfjdn17
bExpAss_nfjdn16:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_20
bExpAss_nfjdn17:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_20
	j	bp_label_20
bp_label_20:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_46
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_21
	j	bExpAss_nfjdn19
bp_label_21:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn18
	j	bExpAss_nfjdn19
bExpAss_nfjdn18:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_22
bExpAss_nfjdn19:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_22
	j	bp_label_22
bp_label_22:
	lw $t0, ($fp)
	bne $t0, $zero,bExpAss_nfjdn20
	j	bp_label_23
bp_label_23:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn20
	j	bExpAss_nfjdn21
bExpAss_nfjdn20:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_24
bExpAss_nfjdn21:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_24
	j	bp_label_24
bp_label_24:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_25
	j	bExpAss_nfjdn23
bp_label_25:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn22
	j	bExpAss_nfjdn23
bExpAss_nfjdn22:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_26
bExpAss_nfjdn23:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_26
	j	bp_label_26
bp_label_26:
	j	bp_label_27
bp_label_27:
	j	bExpAss_nfjdn24
bp_label_28:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn24
	j	bExpAss_nfjdn25
bExpAss_nfjdn24:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_29
bExpAss_nfjdn25:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_29
	j	bp_label_29
bp_label_29:
	li	$t0,5
	li	$t1,4
	bgt $t0, $t1,bp_label_30
	j	bp_label_31
bp_label_30:
	j	bExpAss_nfjdn26
bp_label_31:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn26
	j	bExpAss_nfjdn27
bExpAss_nfjdn26:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_32
bExpAss_nfjdn27:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_32
	j	bp_label_32
bp_label_32:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_33
	j	bp_label_34
bp_label_33:
	j	bExpAss_nfjdn28
bp_label_34:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn28
	j	bExpAss_nfjdn29
bExpAss_nfjdn28:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_35
bExpAss_nfjdn29:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_35
	j	bp_label_35
bp_label_35:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_36
	j	bp_label_37
bp_label_36:
	j	bExpAss_nfjdn30
bp_label_37:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn30
	j	bExpAss_nfjdn31
bExpAss_nfjdn30:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_38
bExpAss_nfjdn31:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_38
	j	bp_label_38
bp_label_38:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_39
	j	bp_label_40
bp_label_39:
	j	bExpAss_nfjdn32
bp_label_40:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn32
	j	bExpAss_nfjdn33
bExpAss_nfjdn32:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_41
bExpAss_nfjdn33:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_41
	j	bp_label_41
bp_label_41:
	j	bp_label_42
bp_label_42:
	li	$t0,5
	li	$t1,4
	bgt $t0, $t1,bExpAss_nfjdn34
	j	bp_label_43
bp_label_43:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn34
	j	bExpAss_nfjdn35
bExpAss_nfjdn34:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_44
bExpAss_nfjdn35:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_44
	j	bp_label_44
bp_label_44:
	li	$t0,5
	li	$t1,4
	bgt $t0, $t1,bp_label_45
	j	bp_label_46
bp_label_45:
	li	$t0,5
	li	$t1,4
	bgt $t0, $t1,bExpAss_nfjdn36
	j	bp_label_46
bp_label_46:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn36
	j	bExpAss_nfjdn37
bExpAss_nfjdn36:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_47
bExpAss_nfjdn37:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_47
	j	bp_label_47
bp_label_47:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_48
	j	bp_label_49
bp_label_48:
	li	$t0,5
	li	$t1,4
	bgt $t0, $t1,bExpAss_nfjdn38
	j	bp_label_49
bp_label_49:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn38
	j	bExpAss_nfjdn39
bExpAss_nfjdn38:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_50
bExpAss_nfjdn39:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_50
	j	bp_label_50
bp_label_50:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_51
	j	bp_label_52
bp_label_51:
	li	$t0,5
	li	$t1,4
	bgt $t0, $t1,bExpAss_nfjdn40
	j	bp_label_52
bp_label_52:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn40
	j	bExpAss_nfjdn41
bExpAss_nfjdn40:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_53
bExpAss_nfjdn41:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_53
	j	bp_label_53
bp_label_53:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_54
	j	bp_label_55
bp_label_54:
	li	$t0,5
	li	$t1,4
	bgt $t0, $t1,bExpAss_nfjdn42
	j	bp_label_55
bp_label_55:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn42
	j	bExpAss_nfjdn43
bExpAss_nfjdn42:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_56
bExpAss_nfjdn43:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_56
	j	bp_label_56
bp_label_56:
	j	bp_label_57
bp_label_57:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn44
	j	bp_label_58
bp_label_58:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn44
	j	bExpAss_nfjdn45
bExpAss_nfjdn44:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_59
bExpAss_nfjdn45:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_59
	j	bp_label_59
bp_label_59:
	li	$t0,5
	li	$t1,4
	bgt $t0, $t1,bp_label_60
	j	bp_label_61
bp_label_60:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn46
	j	bp_label_61
bp_label_61:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn46
	j	bExpAss_nfjdn47
bExpAss_nfjdn46:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_62
bExpAss_nfjdn47:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_62
	j	bp_label_62
bp_label_62:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_63
	j	bp_label_64
bp_label_63:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn48
	j	bp_label_64
bp_label_64:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn48
	j	bExpAss_nfjdn49
bExpAss_nfjdn48:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_65
bExpAss_nfjdn49:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_65
	j	bp_label_65
bp_label_65:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_66
	j	bp_label_67
bp_label_66:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn50
	j	bp_label_67
bp_label_67:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn50
	j	bExpAss_nfjdn51
bExpAss_nfjdn50:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_68
bExpAss_nfjdn51:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_68
	j	bp_label_68
bp_label_68:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_69
	j	bp_label_70
bp_label_69:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn52
	j	bp_label_70
bp_label_70:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn52
	j	bExpAss_nfjdn53
bExpAss_nfjdn52:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_71
bExpAss_nfjdn53:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_71
	j	bp_label_71
bp_label_71:
	j	bp_label_72
bp_label_72:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn54
	j	bp_label_73
bp_label_73:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn54
	j	bExpAss_nfjdn55
bExpAss_nfjdn54:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_74
bExpAss_nfjdn55:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_74
	j	bp_label_74
bp_label_74:
	li	$t0,5
	li	$t1,4
	bgt $t0, $t1,bp_label_75
	j	bp_label_76
bp_label_75:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn56
	j	bp_label_76
bp_label_76:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn56
	j	bExpAss_nfjdn57
bExpAss_nfjdn56:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_77
bExpAss_nfjdn57:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_77
	j	bp_label_77
bp_label_77:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_78
	j	bp_label_79
bp_label_78:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn58
	j	bp_label_79
bp_label_79:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn58
	j	bExpAss_nfjdn59
bExpAss_nfjdn58:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_80
bExpAss_nfjdn59:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_80
	j	bp_label_80
bp_label_80:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_81
	j	bp_label_82
bp_label_81:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn60
	j	bp_label_82
bp_label_82:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn60
	j	bExpAss_nfjdn61
bExpAss_nfjdn60:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_83
bExpAss_nfjdn61:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_83
	j	bp_label_83
bp_label_83:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_84
	j	bp_label_85
bp_label_84:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn62
	j	bp_label_85
bp_label_85:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn62
	j	bExpAss_nfjdn63
bExpAss_nfjdn62:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_86
bExpAss_nfjdn63:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_86
	j	bp_label_86
bp_label_86:
	j	bp_label_87
bp_label_87:
	lw $t0, ($fp)
	bne $t0, $zero,bExpAss_nfjdn64
	j	bp_label_88
bp_label_88:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn64
	j	bExpAss_nfjdn65
bExpAss_nfjdn64:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_89
bExpAss_nfjdn65:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_89
	j	bp_label_89
bp_label_89:
	li	$t0,5
	li	$t1,4
	bgt $t0, $t1,bp_label_90
	j	bp_label_91
bp_label_90:
	lw $t0, ($fp)
	bne $t0, $zero,bExpAss_nfjdn66
	j	bp_label_91
bp_label_91:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn66
	j	bExpAss_nfjdn67
bExpAss_nfjdn66:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_92
bExpAss_nfjdn67:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_92
	j	bp_label_92
bp_label_92:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_93
	j	bp_label_94
bp_label_93:
	lw $t0, ($fp)
	bne $t0, $zero,bExpAss_nfjdn68
	j	bp_label_94
bp_label_94:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn68
	j	bExpAss_nfjdn69
bExpAss_nfjdn68:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_95
bExpAss_nfjdn69:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_95
	j	bp_label_95
bp_label_95:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_96
	j	bp_label_97
bp_label_96:
	lw $t0, ($fp)
	bne $t0, $zero,bExpAss_nfjdn70
	j	bp_label_97
bp_label_97:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn70
	j	bExpAss_nfjdn71
bExpAss_nfjdn70:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_98
bExpAss_nfjdn71:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_98
	j	bp_label_98
bp_label_98:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_99
	j	bp_label_100
bp_label_99:
	lw $t0, ($fp)
	bne $t0, $zero,bExpAss_nfjdn72
	j	bp_label_100
bp_label_100:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn72
	j	bExpAss_nfjdn73
bExpAss_nfjdn72:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_101
bExpAss_nfjdn73:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_101
	j	bp_label_101
bp_label_101:
	j	bp_label_102
bp_label_102:
	j	bExpAss_nfjdn75
bp_label_103:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn74
	j	bExpAss_nfjdn75
bExpAss_nfjdn74:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_104
bExpAss_nfjdn75:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_104
	j	bp_label_104
bp_label_104:
	li	$t0,5
	li	$t1,4
	blt $t0, $t1,bp_label_106
	j	bp_label_105
bp_label_105:
	j	bExpAss_nfjdn77
bp_label_106:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn76
	j	bExpAss_nfjdn77
bExpAss_nfjdn76:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_107
bExpAss_nfjdn77:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_107
	j	bp_label_107
bp_label_107:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_109
	j	bp_label_108
bp_label_108:
	j	bExpAss_nfjdn79
bp_label_109:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn78
	j	bExpAss_nfjdn79
bExpAss_nfjdn78:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_110
bExpAss_nfjdn79:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_110
	j	bp_label_110
bp_label_110:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_46
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_112
	j	bp_label_111
bp_label_111:
	j	bExpAss_nfjdn81
bp_label_112:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn80
	j	bExpAss_nfjdn81
bExpAss_nfjdn80:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_113
bExpAss_nfjdn81:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_113
	j	bp_label_113
bp_label_113:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_115
	j	bp_label_114
bp_label_114:
	j	bExpAss_nfjdn83
bp_label_115:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn82
	j	bExpAss_nfjdn83
bExpAss_nfjdn82:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_116
bExpAss_nfjdn83:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_116
	j	bp_label_116
bp_label_116:
	j	bp_label_117
bp_label_117:
	li	$t0,5
	li	$t1,4
	blt $t0, $t1,bp_label_118
	j	bExpAss_nfjdn85
bp_label_118:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn84
	j	bExpAss_nfjdn85
bExpAss_nfjdn84:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_119
bExpAss_nfjdn85:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_119
	j	bp_label_119
bp_label_119:
	li	$t0,5
	li	$t1,4
	blt $t0, $t1,bp_label_121
	j	bp_label_120
bp_label_120:
	li	$t0,5
	li	$t1,4
	blt $t0, $t1,bp_label_121
	j	bExpAss_nfjdn87
bp_label_121:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn86
	j	bExpAss_nfjdn87
bExpAss_nfjdn86:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_122
bExpAss_nfjdn87:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_122
	j	bp_label_122
bp_label_122:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_124
	j	bp_label_123
bp_label_123:
	li	$t0,5
	li	$t1,4
	blt $t0, $t1,bp_label_124
	j	bExpAss_nfjdn89
bp_label_124:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn88
	j	bExpAss_nfjdn89
bExpAss_nfjdn88:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_125
bExpAss_nfjdn89:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_125
	j	bp_label_125
bp_label_125:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_46
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_127
	j	bp_label_126
bp_label_126:
	li	$t0,5
	li	$t1,4
	blt $t0, $t1,bp_label_127
	j	bExpAss_nfjdn91
bp_label_127:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn90
	j	bExpAss_nfjdn91
bExpAss_nfjdn90:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_128
bExpAss_nfjdn91:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_128
	j	bp_label_128
bp_label_128:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_130
	j	bp_label_129
bp_label_129:
	li	$t0,5
	li	$t1,4
	blt $t0, $t1,bp_label_130
	j	bExpAss_nfjdn93
bp_label_130:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn92
	j	bExpAss_nfjdn93
bExpAss_nfjdn92:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_131
bExpAss_nfjdn93:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_131
	j	bp_label_131
bp_label_131:
	j	bp_label_132
bp_label_132:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_133
	j	bExpAss_nfjdn95
bp_label_133:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn94
	j	bExpAss_nfjdn95
bExpAss_nfjdn94:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_134
bExpAss_nfjdn95:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_134
	j	bp_label_134
bp_label_134:
	li	$t0,5
	li	$t1,4
	blt $t0, $t1,bp_label_136
	j	bp_label_135
bp_label_135:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_136
	j	bExpAss_nfjdn97
bp_label_136:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn96
	j	bExpAss_nfjdn97
bExpAss_nfjdn96:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_137
bExpAss_nfjdn97:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_137
	j	bp_label_137
bp_label_137:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_139
	j	bp_label_138
bp_label_138:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_139
	j	bExpAss_nfjdn99
bp_label_139:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn98
	j	bExpAss_nfjdn99
bExpAss_nfjdn98:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_140
bExpAss_nfjdn99:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_140
	j	bp_label_140
bp_label_140:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_46
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_142
	j	bp_label_141
bp_label_141:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_142
	j	bExpAss_nfjdn101
bp_label_142:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn100
	j	bExpAss_nfjdn101
bExpAss_nfjdn100:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_143
bExpAss_nfjdn101:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_143
	j	bp_label_143
bp_label_143:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_145
	j	bp_label_144
bp_label_144:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_145
	j	bExpAss_nfjdn103
bp_label_145:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn102
	j	bExpAss_nfjdn103
bExpAss_nfjdn102:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_146
bExpAss_nfjdn103:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_146
	j	bp_label_146
bp_label_146:
	j	bp_label_147
bp_label_147:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_46
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_148
	j	bExpAss_nfjdn105
bp_label_148:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn104
	j	bExpAss_nfjdn105
bExpAss_nfjdn104:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_149
bExpAss_nfjdn105:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_149
	j	bp_label_149
bp_label_149:
	li	$t0,5
	li	$t1,4
	blt $t0, $t1,bp_label_151
	j	bp_label_150
bp_label_150:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_46
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_151
	j	bExpAss_nfjdn107
bp_label_151:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn106
	j	bExpAss_nfjdn107
bExpAss_nfjdn106:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_152
bExpAss_nfjdn107:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_152
	j	bp_label_152
bp_label_152:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_154
	j	bp_label_153
bp_label_153:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_46
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_154
	j	bExpAss_nfjdn109
bp_label_154:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn108
	j	bExpAss_nfjdn109
bExpAss_nfjdn108:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_155
bExpAss_nfjdn109:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_155
	j	bp_label_155
bp_label_155:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_46
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_157
	j	bp_label_156
bp_label_156:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_46
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_157
	j	bExpAss_nfjdn111
bp_label_157:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn110
	j	bExpAss_nfjdn111
bExpAss_nfjdn110:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_158
bExpAss_nfjdn111:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_158
	j	bp_label_158
bp_label_158:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_160
	j	bp_label_159
bp_label_159:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_46
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_160
	j	bExpAss_nfjdn113
bp_label_160:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn112
	j	bExpAss_nfjdn113
bExpAss_nfjdn112:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_161
bExpAss_nfjdn113:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_161
	j	bp_label_161
bp_label_161:
	j	bp_label_162
bp_label_162:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_163
	j	bExpAss_nfjdn115
bp_label_163:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn114
	j	bExpAss_nfjdn115
bExpAss_nfjdn114:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_164
bExpAss_nfjdn115:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_164
	j	bp_label_164
bp_label_164:
	li	$t0,5
	li	$t1,4
	blt $t0, $t1,bp_label_166
	j	bp_label_165
bp_label_165:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_166
	j	bExpAss_nfjdn117
bp_label_166:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn116
	j	bExpAss_nfjdn117
bExpAss_nfjdn116:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_167
bExpAss_nfjdn117:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_167
	j	bp_label_167
bp_label_167:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_169
	j	bp_label_168
bp_label_168:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_169
	j	bExpAss_nfjdn119
bp_label_169:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn118
	j	bExpAss_nfjdn119
bExpAss_nfjdn118:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_170
bExpAss_nfjdn119:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_170
	j	bp_label_170
bp_label_170:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_46
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_172
	j	bp_label_171
bp_label_171:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_172
	j	bExpAss_nfjdn121
bp_label_172:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn120
	j	bExpAss_nfjdn121
bExpAss_nfjdn120:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_173
bExpAss_nfjdn121:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_173
	j	bp_label_173
bp_label_173:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_175
	j	bp_label_174
bp_label_174:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_175
	j	bExpAss_nfjdn123
bp_label_175:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn122
	j	bExpAss_nfjdn123
bExpAss_nfjdn122:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_176
bExpAss_nfjdn123:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_176
	j	bp_label_176
bp_label_176:
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
	j	bp_label_177
bp_label_177:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
