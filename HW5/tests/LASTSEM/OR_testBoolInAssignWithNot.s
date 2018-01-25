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
	bne $t0, $zero,bExpAss_nfjdn5
	j	bExpAss_nfjdn4
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
	j	bExpAss_nfjdn7
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
	bne $t0, $zero,bExpAss_nfjdn9
	j	bExpAss_nfjdn8
bExpAss_nfjdn8:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_13
bExpAss_nfjdn9:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_13
	j	bp_label_13
bp_label_13:
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
	j	bp_label_14
bp_label_14:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bExpAss_nfjdn11
	j	bExpAss_nfjdn10
bExpAss_nfjdn10:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_15
bExpAss_nfjdn11:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_15
	j	bp_label_15
bp_label_15:
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
	j	bp_label_16
bp_label_16:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn13
	j	bExpAss_nfjdn12
bExpAss_nfjdn12:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_17
bExpAss_nfjdn13:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_17
	j	bp_label_17
bp_label_17:
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
	j	bp_label_18
bp_label_18:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn15
	j	bExpAss_nfjdn14
bExpAss_nfjdn14:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_19
bExpAss_nfjdn15:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_19
	j	bp_label_19
bp_label_19:
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
	j	bp_label_20
bp_label_20:
	j	bExpAss_nfjdn16
bExpAss_nfjdn16:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_21
bExpAss_nfjdn17:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_21
	j	bp_label_21
bp_label_21:
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
	j	bp_label_22
bp_label_22:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn19
	j	bExpAss_nfjdn18
bExpAss_nfjdn18:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_23
bExpAss_nfjdn19:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_23
	j	bp_label_23
bp_label_23:
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
	j	bp_label_24
bp_label_24:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn21
	j	bExpAss_nfjdn20
bExpAss_nfjdn20:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_25
bExpAss_nfjdn21:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_25
	j	bp_label_25
bp_label_25:
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
	j	bp_label_26
bp_label_26:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn23
	j	bExpAss_nfjdn22
bExpAss_nfjdn22:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_27
bExpAss_nfjdn23:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_27
	j	bp_label_27
bp_label_27:
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
	j	bp_label_28
bp_label_28:
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
	bne $t0, $zero,bp_label_29
	j	bExpAss_nfjdn24
bp_label_29:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn25
	j	bExpAss_nfjdn24
bExpAss_nfjdn24:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_30
bExpAss_nfjdn25:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_30
	j	bp_label_30
bp_label_30:
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
	j	bp_label_31
bp_label_31:
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
	bne $t0, $zero,bp_label_32
	j	bExpAss_nfjdn26
bp_label_32:
	j	bExpAss_nfjdn26
bExpAss_nfjdn26:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_33
bExpAss_nfjdn27:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_33
	j	bp_label_33
bp_label_33:
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
	j	bp_label_34
bp_label_34:
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
	bne $t0, $zero,bp_label_35
	j	bExpAss_nfjdn28
bp_label_35:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn29
	j	bExpAss_nfjdn28
bExpAss_nfjdn28:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_36
bExpAss_nfjdn29:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_36
	j	bp_label_36
bp_label_36:
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
	j	bp_label_37
bp_label_37:
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
	bne $t0, $zero,bp_label_38
	j	bExpAss_nfjdn30
bp_label_38:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn31
	j	bExpAss_nfjdn30
bExpAss_nfjdn30:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_39
bExpAss_nfjdn31:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_39
	j	bp_label_39
bp_label_39:
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
	j	bp_label_40
bp_label_40:
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
	bne $t0, $zero,bp_label_41
	j	bExpAss_nfjdn32
bp_label_41:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn33
	j	bExpAss_nfjdn32
bExpAss_nfjdn32:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_42
bExpAss_nfjdn33:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_42
	j	bp_label_42
bp_label_42:
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
	j	bp_label_43
bp_label_43:
	j	bp_label_44
bp_label_44:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn35
	j	bExpAss_nfjdn34
bExpAss_nfjdn34:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_45
bExpAss_nfjdn35:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_45
	j	bp_label_45
bp_label_45:
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
	j	bp_label_46
bp_label_46:
	j	bp_label_47
bp_label_47:
	j	bExpAss_nfjdn36
bExpAss_nfjdn36:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_48
bExpAss_nfjdn37:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_48
	j	bp_label_48
bp_label_48:
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
	j	bp_label_49
bp_label_49:
	j	bp_label_50
bp_label_50:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn39
	j	bExpAss_nfjdn38
bExpAss_nfjdn38:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_51
bExpAss_nfjdn39:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_51
	j	bp_label_51
bp_label_51:
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
	j	bp_label_52
bp_label_52:
	j	bp_label_53
bp_label_53:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn41
	j	bExpAss_nfjdn40
bExpAss_nfjdn40:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_54
bExpAss_nfjdn41:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_54
	j	bp_label_54
bp_label_54:
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
	j	bp_label_55
bp_label_55:
	j	bp_label_56
bp_label_56:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn43
	j	bExpAss_nfjdn42
bExpAss_nfjdn42:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_57
bExpAss_nfjdn43:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_57
	j	bp_label_57
bp_label_57:
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
	j	bp_label_58
bp_label_58:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_59
	j	bExpAss_nfjdn44
bp_label_59:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn45
	j	bExpAss_nfjdn44
bExpAss_nfjdn44:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_60
bExpAss_nfjdn45:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_60
	j	bp_label_60
bp_label_60:
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
	j	bp_label_61
bp_label_61:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_62
	j	bExpAss_nfjdn46
bp_label_62:
	j	bExpAss_nfjdn46
bExpAss_nfjdn46:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_63
bExpAss_nfjdn47:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_63
	j	bp_label_63
bp_label_63:
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
	j	bp_label_64
bp_label_64:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_65
	j	bExpAss_nfjdn48
bp_label_65:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn49
	j	bExpAss_nfjdn48
bExpAss_nfjdn48:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_66
bExpAss_nfjdn49:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_66
	j	bp_label_66
bp_label_66:
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
	j	bp_label_67
bp_label_67:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_68
	j	bExpAss_nfjdn50
bp_label_68:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn51
	j	bExpAss_nfjdn50
bExpAss_nfjdn50:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_69
bExpAss_nfjdn51:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_69
	j	bp_label_69
bp_label_69:
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
	j	bp_label_70
bp_label_70:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_71
	j	bExpAss_nfjdn52
bp_label_71:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn53
	j	bExpAss_nfjdn52
bExpAss_nfjdn52:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_72
bExpAss_nfjdn53:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_72
	j	bp_label_72
bp_label_72:
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
	j	bp_label_73
bp_label_73:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_74
	j	bExpAss_nfjdn54
bp_label_74:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn55
	j	bExpAss_nfjdn54
bExpAss_nfjdn54:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_75
bExpAss_nfjdn55:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_75
	j	bp_label_75
bp_label_75:
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
	j	bp_label_76
bp_label_76:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_77
	j	bExpAss_nfjdn56
bp_label_77:
	j	bExpAss_nfjdn56
bExpAss_nfjdn56:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_78
bExpAss_nfjdn57:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_78
	j	bp_label_78
bp_label_78:
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
	j	bp_label_79
bp_label_79:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_80
	j	bExpAss_nfjdn58
bp_label_80:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn59
	j	bExpAss_nfjdn58
bExpAss_nfjdn58:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_81
bExpAss_nfjdn59:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_81
	j	bp_label_81
bp_label_81:
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
	j	bp_label_82
bp_label_82:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_83
	j	bExpAss_nfjdn60
bp_label_83:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn61
	j	bExpAss_nfjdn60
bExpAss_nfjdn60:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_84
bExpAss_nfjdn61:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_84
	j	bp_label_84
bp_label_84:
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
	j	bp_label_85
bp_label_85:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_86
	j	bExpAss_nfjdn62
bp_label_86:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn63
	j	bExpAss_nfjdn62
bExpAss_nfjdn62:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_87
bExpAss_nfjdn63:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_87
	j	bp_label_87
bp_label_87:
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
	j	bp_label_88
bp_label_88:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_89
	j	bExpAss_nfjdn64
bp_label_89:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn65
	j	bExpAss_nfjdn64
bExpAss_nfjdn64:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_90
bExpAss_nfjdn65:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_90
	j	bp_label_90
bp_label_90:
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
	j	bp_label_91
bp_label_91:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_92
	j	bExpAss_nfjdn66
bp_label_92:
	j	bExpAss_nfjdn66
bExpAss_nfjdn66:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_93
bExpAss_nfjdn67:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_93
	j	bp_label_93
bp_label_93:
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
	j	bp_label_94
bp_label_94:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_95
	j	bExpAss_nfjdn68
bp_label_95:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn69
	j	bExpAss_nfjdn68
bExpAss_nfjdn68:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_96
bExpAss_nfjdn69:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_96
	j	bp_label_96
bp_label_96:
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
	j	bp_label_97
bp_label_97:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_98
	j	bExpAss_nfjdn70
bp_label_98:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn71
	j	bExpAss_nfjdn70
bExpAss_nfjdn70:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_99
bExpAss_nfjdn71:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_99
	j	bp_label_99
bp_label_99:
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
	j	bp_label_100
bp_label_100:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_101
	j	bExpAss_nfjdn72
bp_label_101:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn73
	j	bExpAss_nfjdn72
bExpAss_nfjdn72:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_102
bExpAss_nfjdn73:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_102
	j	bp_label_102
bp_label_102:
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
	j	bp_label_103
bp_label_103:
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
	bne $t0, $zero,bp_label_104
	j	bExpAss_nfjdn74
bp_label_104:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn75
	j	bExpAss_nfjdn74
bExpAss_nfjdn74:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_105
bExpAss_nfjdn75:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_105
	j	bp_label_105
bp_label_105:
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
	j	bp_label_106
bp_label_106:
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
	bne $t0, $zero,bp_label_107
	j	bExpAss_nfjdn76
bp_label_107:
	j	bExpAss_nfjdn76
bExpAss_nfjdn76:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_108
bExpAss_nfjdn77:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_108
	j	bp_label_108
bp_label_108:
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
	j	bp_label_109
bp_label_109:
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
	bne $t0, $zero,bp_label_110
	j	bExpAss_nfjdn78
bp_label_110:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn79
	j	bExpAss_nfjdn78
bExpAss_nfjdn78:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_111
bExpAss_nfjdn79:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_111
	j	bp_label_111
bp_label_111:
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
	j	bp_label_112
bp_label_112:
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
	bne $t0, $zero,bp_label_113
	j	bExpAss_nfjdn80
bp_label_113:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn81
	j	bExpAss_nfjdn80
bExpAss_nfjdn80:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_114
bExpAss_nfjdn81:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_114
	j	bp_label_114
bp_label_114:
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
	j	bp_label_115
bp_label_115:
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
	bne $t0, $zero,bp_label_116
	j	bExpAss_nfjdn82
bp_label_116:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn83
	j	bExpAss_nfjdn82
bExpAss_nfjdn82:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_117
bExpAss_nfjdn83:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_117
	j	bp_label_117
bp_label_117:
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
	j	bp_label_118
bp_label_118:
	j	bp_label_119
bp_label_119:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn85
	j	bExpAss_nfjdn84
bExpAss_nfjdn84:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_120
bExpAss_nfjdn85:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_120
	j	bp_label_120
bp_label_120:
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
	j	bp_label_121
bp_label_121:
	j	bp_label_122
bp_label_122:
	j	bExpAss_nfjdn86
bExpAss_nfjdn86:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_123
bExpAss_nfjdn87:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_123
	j	bp_label_123
bp_label_123:
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
	j	bp_label_124
bp_label_124:
	j	bp_label_125
bp_label_125:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn89
	j	bExpAss_nfjdn88
bExpAss_nfjdn88:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_126
bExpAss_nfjdn89:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_126
	j	bp_label_126
bp_label_126:
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
	j	bp_label_127
bp_label_127:
	j	bp_label_128
bp_label_128:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn91
	j	bExpAss_nfjdn90
bExpAss_nfjdn90:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_129
bExpAss_nfjdn91:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_129
	j	bp_label_129
bp_label_129:
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
	j	bp_label_130
bp_label_130:
	j	bp_label_131
bp_label_131:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn93
	j	bExpAss_nfjdn92
bExpAss_nfjdn92:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_132
bExpAss_nfjdn93:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_132
	j	bp_label_132
bp_label_132:
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
	j	bp_label_133
bp_label_133:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_134
	j	bExpAss_nfjdn94
bp_label_134:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn95
	j	bExpAss_nfjdn94
bExpAss_nfjdn94:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_135
bExpAss_nfjdn95:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_135
	j	bp_label_135
bp_label_135:
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
	j	bp_label_136
bp_label_136:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_137
	j	bExpAss_nfjdn96
bp_label_137:
	j	bExpAss_nfjdn96
bExpAss_nfjdn96:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_138
bExpAss_nfjdn97:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_138
	j	bp_label_138
bp_label_138:
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
	j	bp_label_139
bp_label_139:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_140
	j	bExpAss_nfjdn98
bp_label_140:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn99
	j	bExpAss_nfjdn98
bExpAss_nfjdn98:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_141
bExpAss_nfjdn99:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_141
	j	bp_label_141
bp_label_141:
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
	j	bp_label_142
bp_label_142:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_143
	j	bExpAss_nfjdn100
bp_label_143:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn101
	j	bExpAss_nfjdn100
bExpAss_nfjdn100:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_144
bExpAss_nfjdn101:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_144
	j	bp_label_144
bp_label_144:
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
	j	bp_label_145
bp_label_145:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_146
	j	bExpAss_nfjdn102
bp_label_146:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn103
	j	bExpAss_nfjdn102
bExpAss_nfjdn102:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_147
bExpAss_nfjdn103:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_147
	j	bp_label_147
bp_label_147:
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
	j	bp_label_148
bp_label_148:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_149
	j	bExpAss_nfjdn104
bp_label_149:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn105
	j	bExpAss_nfjdn104
bExpAss_nfjdn104:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_150
bExpAss_nfjdn105:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_150
	j	bp_label_150
bp_label_150:
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
	j	bp_label_151
bp_label_151:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_152
	j	bExpAss_nfjdn106
bp_label_152:
	j	bExpAss_nfjdn106
bExpAss_nfjdn106:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_153
bExpAss_nfjdn107:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_153
	j	bp_label_153
bp_label_153:
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
	j	bp_label_154
bp_label_154:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_155
	j	bExpAss_nfjdn108
bp_label_155:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn109
	j	bExpAss_nfjdn108
bExpAss_nfjdn108:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_156
bExpAss_nfjdn109:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_156
	j	bp_label_156
bp_label_156:
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
	j	bp_label_157
bp_label_157:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_158
	j	bExpAss_nfjdn110
bp_label_158:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn111
	j	bExpAss_nfjdn110
bExpAss_nfjdn110:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_159
bExpAss_nfjdn111:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_159
	j	bp_label_159
bp_label_159:
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
	j	bp_label_160
bp_label_160:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_161
	j	bExpAss_nfjdn112
bp_label_161:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn113
	j	bExpAss_nfjdn112
bExpAss_nfjdn112:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_162
bExpAss_nfjdn113:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_162
	j	bp_label_162
bp_label_162:
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
	j	bp_label_163
bp_label_163:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_164
	j	bExpAss_nfjdn114
bp_label_164:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn115
	j	bExpAss_nfjdn114
bExpAss_nfjdn114:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_165
bExpAss_nfjdn115:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_165
	j	bp_label_165
bp_label_165:
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
	j	bp_label_166
bp_label_166:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_167
	j	bExpAss_nfjdn116
bp_label_167:
	j	bExpAss_nfjdn116
bExpAss_nfjdn116:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_168
bExpAss_nfjdn117:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_168
	j	bp_label_168
bp_label_168:
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
	j	bp_label_169
bp_label_169:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_170
	j	bExpAss_nfjdn118
bp_label_170:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn119
	j	bExpAss_nfjdn118
bExpAss_nfjdn118:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_171
bExpAss_nfjdn119:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_171
	j	bp_label_171
bp_label_171:
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
	j	bp_label_172
bp_label_172:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_173
	j	bExpAss_nfjdn120
bp_label_173:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn121
	j	bExpAss_nfjdn120
bExpAss_nfjdn120:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_174
bExpAss_nfjdn121:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_174
	j	bp_label_174
bp_label_174:
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
	j	bp_label_175
bp_label_175:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_176
	j	bExpAss_nfjdn122
bp_label_176:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn123
	j	bExpAss_nfjdn122
bExpAss_nfjdn122:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_177
bExpAss_nfjdn123:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_177
	j	bp_label_177
bp_label_177:
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
	j	bp_label_178
bp_label_178:
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
	move	$t0,$v0
	bne $t0, $zero,bp_label_179
	j	bExpAss_nfjdn124
bp_label_179:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn125
	j	bExpAss_nfjdn124
bExpAss_nfjdn124:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_180
bExpAss_nfjdn125:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_180
	j	bp_label_180
bp_label_180:
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
	j	bp_label_181
bp_label_181:
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
	move	$t0,$v0
	bne $t0, $zero,bp_label_182
	j	bExpAss_nfjdn126
bp_label_182:
	j	bExpAss_nfjdn126
bExpAss_nfjdn126:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_183
bExpAss_nfjdn127:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_183
	j	bp_label_183
bp_label_183:
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
	j	bp_label_184
bp_label_184:
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
	move	$t0,$v0
	bne $t0, $zero,bp_label_185
	j	bExpAss_nfjdn128
bp_label_185:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn129
	j	bExpAss_nfjdn128
bExpAss_nfjdn128:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_186
bExpAss_nfjdn129:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_186
	j	bp_label_186
bp_label_186:
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
	j	bp_label_187
bp_label_187:
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
	move	$t0,$v0
	bne $t0, $zero,bp_label_188
	j	bExpAss_nfjdn130
bp_label_188:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn131
	j	bExpAss_nfjdn130
bExpAss_nfjdn130:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_189
bExpAss_nfjdn131:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_189
	j	bp_label_189
bp_label_189:
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
	j	bp_label_190
bp_label_190:
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
	move	$t0,$v0
	bne $t0, $zero,bp_label_191
	j	bExpAss_nfjdn132
bp_label_191:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn133
	j	bExpAss_nfjdn132
bExpAss_nfjdn132:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_192
bExpAss_nfjdn133:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_192
	j	bp_label_192
bp_label_192:
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
	j	bp_label_193
bp_label_193:
	j	bExpAss_nfjdn134
bp_label_194:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn135
	j	bExpAss_nfjdn134
bExpAss_nfjdn134:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_195
bExpAss_nfjdn135:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_195
	j	bp_label_195
bp_label_195:
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
	j	bp_label_196
bp_label_196:
	j	bExpAss_nfjdn136
bp_label_197:
	j	bExpAss_nfjdn136
bExpAss_nfjdn136:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_198
bExpAss_nfjdn137:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_198
	j	bp_label_198
bp_label_198:
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
	j	bp_label_199
bp_label_199:
	j	bExpAss_nfjdn138
bp_label_200:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn139
	j	bExpAss_nfjdn138
bExpAss_nfjdn138:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_201
bExpAss_nfjdn139:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_201
	j	bp_label_201
bp_label_201:
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
	j	bp_label_202
bp_label_202:
	j	bExpAss_nfjdn140
bp_label_203:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn141
	j	bExpAss_nfjdn140
bExpAss_nfjdn140:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_204
bExpAss_nfjdn141:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_204
	j	bp_label_204
bp_label_204:
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
	j	bp_label_205
bp_label_205:
	j	bExpAss_nfjdn142
bp_label_206:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn143
	j	bExpAss_nfjdn142
bExpAss_nfjdn142:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_207
bExpAss_nfjdn143:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_207
	j	bp_label_207
bp_label_207:
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
	j	bp_label_208
bp_label_208:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_209
	j	bExpAss_nfjdn144
bp_label_209:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn145
	j	bExpAss_nfjdn144
bExpAss_nfjdn144:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_210
bExpAss_nfjdn145:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_210
	j	bp_label_210
bp_label_210:
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
	j	bp_label_211
bp_label_211:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_212
	j	bExpAss_nfjdn146
bp_label_212:
	j	bExpAss_nfjdn146
bExpAss_nfjdn146:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_213
bExpAss_nfjdn147:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_213
	j	bp_label_213
bp_label_213:
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
	j	bp_label_214
bp_label_214:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_215
	j	bExpAss_nfjdn148
bp_label_215:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn149
	j	bExpAss_nfjdn148
bExpAss_nfjdn148:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_216
bExpAss_nfjdn149:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_216
	j	bp_label_216
bp_label_216:
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
	j	bp_label_217
bp_label_217:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_218
	j	bExpAss_nfjdn150
bp_label_218:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn151
	j	bExpAss_nfjdn150
bExpAss_nfjdn150:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_219
bExpAss_nfjdn151:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_219
	j	bp_label_219
bp_label_219:
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
	j	bp_label_220
bp_label_220:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_221
	j	bExpAss_nfjdn152
bp_label_221:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn153
	j	bExpAss_nfjdn152
bExpAss_nfjdn152:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_222
bExpAss_nfjdn153:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_222
	j	bp_label_222
bp_label_222:
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
	j	bp_label_223
bp_label_223:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_224
	j	bExpAss_nfjdn154
bp_label_224:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn155
	j	bExpAss_nfjdn154
bExpAss_nfjdn154:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_225
bExpAss_nfjdn155:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_225
	j	bp_label_225
bp_label_225:
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
	j	bp_label_226
bp_label_226:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_227
	j	bExpAss_nfjdn156
bp_label_227:
	j	bExpAss_nfjdn156
bExpAss_nfjdn156:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_228
bExpAss_nfjdn157:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_228
	j	bp_label_228
bp_label_228:
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
	j	bp_label_229
bp_label_229:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_230
	j	bExpAss_nfjdn158
bp_label_230:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn159
	j	bExpAss_nfjdn158
bExpAss_nfjdn158:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_231
bExpAss_nfjdn159:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_231
	j	bp_label_231
bp_label_231:
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
	j	bp_label_232
bp_label_232:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_233
	j	bExpAss_nfjdn160
bp_label_233:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn161
	j	bExpAss_nfjdn160
bExpAss_nfjdn160:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_234
bExpAss_nfjdn161:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_234
	j	bp_label_234
bp_label_234:
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
	j	bp_label_235
bp_label_235:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_236
	j	bExpAss_nfjdn162
bp_label_236:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn163
	j	bExpAss_nfjdn162
bExpAss_nfjdn162:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_237
bExpAss_nfjdn163:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_237
	j	bp_label_237
bp_label_237:
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
	j	bp_label_238
bp_label_238:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_239
	j	bExpAss_nfjdn164
bp_label_239:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn165
	j	bExpAss_nfjdn164
bExpAss_nfjdn164:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_240
bExpAss_nfjdn165:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_240
	j	bp_label_240
bp_label_240:
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
	j	bp_label_241
bp_label_241:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_242
	j	bExpAss_nfjdn166
bp_label_242:
	j	bExpAss_nfjdn166
bExpAss_nfjdn166:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_243
bExpAss_nfjdn167:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_243
	j	bp_label_243
bp_label_243:
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
	j	bp_label_244
bp_label_244:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_245
	j	bExpAss_nfjdn168
bp_label_245:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn169
	j	bExpAss_nfjdn168
bExpAss_nfjdn168:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_246
bExpAss_nfjdn169:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_246
	j	bp_label_246
bp_label_246:
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
	j	bp_label_247
bp_label_247:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_248
	j	bExpAss_nfjdn170
bp_label_248:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn171
	j	bExpAss_nfjdn170
bExpAss_nfjdn170:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_249
bExpAss_nfjdn171:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_249
	j	bp_label_249
bp_label_249:
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
	j	bp_label_250
bp_label_250:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_251
	j	bExpAss_nfjdn172
bp_label_251:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn173
	j	bExpAss_nfjdn172
bExpAss_nfjdn172:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_252
bExpAss_nfjdn173:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_252
	j	bp_label_252
bp_label_252:
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
	j	bp_label_253
bp_label_253:
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
	bne $t0, $zero,bExpAss_nfjdn175
	j	bp_label_254
bp_label_254:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn175
	j	bExpAss_nfjdn174
bExpAss_nfjdn174:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_255
bExpAss_nfjdn175:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_255
	j	bp_label_255
bp_label_255:
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
	j	bp_label_256
bp_label_256:
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
	bne $t0, $zero,bExpAss_nfjdn177
	j	bp_label_257
bp_label_257:
	j	bExpAss_nfjdn176
bExpAss_nfjdn176:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_258
bExpAss_nfjdn177:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_258
	j	bp_label_258
bp_label_258:
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
	j	bp_label_259
bp_label_259:
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
	bne $t0, $zero,bExpAss_nfjdn179
	j	bp_label_260
bp_label_260:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn179
	j	bExpAss_nfjdn178
bExpAss_nfjdn178:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_261
bExpAss_nfjdn179:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_261
	j	bp_label_261
bp_label_261:
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
	j	bp_label_262
bp_label_262:
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
	bne $t0, $zero,bExpAss_nfjdn181
	j	bp_label_263
bp_label_263:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn181
	j	bExpAss_nfjdn180
bExpAss_nfjdn180:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_264
bExpAss_nfjdn181:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_264
	j	bp_label_264
bp_label_264:
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
	j	bp_label_265
bp_label_265:
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
	bne $t0, $zero,bExpAss_nfjdn183
	j	bp_label_266
bp_label_266:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn183
	j	bExpAss_nfjdn182
bExpAss_nfjdn182:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_267
bExpAss_nfjdn183:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_267
	j	bp_label_267
bp_label_267:
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
	j	bp_label_268
bp_label_268:
	j	bExpAss_nfjdn185
bp_label_269:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn185
	j	bExpAss_nfjdn184
bExpAss_nfjdn184:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_270
bExpAss_nfjdn185:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_270
	j	bp_label_270
bp_label_270:
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
	j	bp_label_271
bp_label_271:
	j	bExpAss_nfjdn187
bp_label_272:
	j	bExpAss_nfjdn186
bExpAss_nfjdn186:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_273
bExpAss_nfjdn187:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_273
	j	bp_label_273
bp_label_273:
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
	j	bp_label_274
bp_label_274:
	j	bExpAss_nfjdn189
bp_label_275:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn189
	j	bExpAss_nfjdn188
bExpAss_nfjdn188:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_276
bExpAss_nfjdn189:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_276
	j	bp_label_276
bp_label_276:
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
	j	bp_label_277
bp_label_277:
	j	bExpAss_nfjdn191
bp_label_278:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn191
	j	bExpAss_nfjdn190
bExpAss_nfjdn190:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_279
bExpAss_nfjdn191:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_279
	j	bp_label_279
bp_label_279:
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
	j	bp_label_280
bp_label_280:
	j	bExpAss_nfjdn193
bp_label_281:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn193
	j	bExpAss_nfjdn192
bExpAss_nfjdn192:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_282
bExpAss_nfjdn193:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_282
	j	bp_label_282
bp_label_282:
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
	j	bp_label_283
bp_label_283:
	lw $t0, ($fp)
	bne $t0, $zero,bExpAss_nfjdn195
	j	bp_label_284
bp_label_284:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn195
	j	bExpAss_nfjdn194
bExpAss_nfjdn194:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_285
bExpAss_nfjdn195:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_285
	j	bp_label_285
bp_label_285:
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
	j	bp_label_286
bp_label_286:
	lw $t0, ($fp)
	bne $t0, $zero,bExpAss_nfjdn197
	j	bp_label_287
bp_label_287:
	j	bExpAss_nfjdn196
bExpAss_nfjdn196:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_288
bExpAss_nfjdn197:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_288
	j	bp_label_288
bp_label_288:
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
	j	bp_label_289
bp_label_289:
	lw $t0, ($fp)
	bne $t0, $zero,bExpAss_nfjdn199
	j	bp_label_290
bp_label_290:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn199
	j	bExpAss_nfjdn198
bExpAss_nfjdn198:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_291
bExpAss_nfjdn199:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_291
	j	bp_label_291
bp_label_291:
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
	j	bp_label_292
bp_label_292:
	lw $t0, ($fp)
	bne $t0, $zero,bExpAss_nfjdn201
	j	bp_label_293
bp_label_293:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn201
	j	bExpAss_nfjdn200
bExpAss_nfjdn200:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_294
bExpAss_nfjdn201:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_294
	j	bp_label_294
bp_label_294:
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
	j	bp_label_295
bp_label_295:
	lw $t0, ($fp)
	bne $t0, $zero,bExpAss_nfjdn203
	j	bp_label_296
bp_label_296:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn203
	j	bExpAss_nfjdn202
bExpAss_nfjdn202:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_297
bExpAss_nfjdn203:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_297
	j	bp_label_297
bp_label_297:
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
	j	bp_label_298
bp_label_298:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bExpAss_nfjdn205
	j	bp_label_299
bp_label_299:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn205
	j	bExpAss_nfjdn204
bExpAss_nfjdn204:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_300
bExpAss_nfjdn205:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_300
	j	bp_label_300
bp_label_300:
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
	j	bp_label_301
bp_label_301:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bExpAss_nfjdn207
	j	bp_label_302
bp_label_302:
	j	bExpAss_nfjdn206
bExpAss_nfjdn206:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_303
bExpAss_nfjdn207:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_303
	j	bp_label_303
bp_label_303:
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
	j	bp_label_304
bp_label_304:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bExpAss_nfjdn209
	j	bp_label_305
bp_label_305:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn209
	j	bExpAss_nfjdn208
bExpAss_nfjdn208:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_306
bExpAss_nfjdn209:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_306
	j	bp_label_306
bp_label_306:
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
	j	bp_label_307
bp_label_307:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bExpAss_nfjdn211
	j	bp_label_308
bp_label_308:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn211
	j	bExpAss_nfjdn210
bExpAss_nfjdn210:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_309
bExpAss_nfjdn211:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_309
	j	bp_label_309
bp_label_309:
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
	j	bp_label_310
bp_label_310:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bExpAss_nfjdn213
	j	bp_label_311
bp_label_311:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn213
	j	bExpAss_nfjdn212
bExpAss_nfjdn212:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_312
bExpAss_nfjdn213:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_312
	j	bp_label_312
bp_label_312:
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
	j	bp_label_313
bp_label_313:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn215
	j	bp_label_314
bp_label_314:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn215
	j	bExpAss_nfjdn214
bExpAss_nfjdn214:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_315
bExpAss_nfjdn215:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_315
	j	bp_label_315
bp_label_315:
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
	j	bp_label_316
bp_label_316:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn217
	j	bp_label_317
bp_label_317:
	j	bExpAss_nfjdn216
bExpAss_nfjdn216:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_318
bExpAss_nfjdn217:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_318
	j	bp_label_318
bp_label_318:
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
	j	bp_label_319
bp_label_319:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn219
	j	bp_label_320
bp_label_320:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn219
	j	bExpAss_nfjdn218
bExpAss_nfjdn218:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_321
bExpAss_nfjdn219:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_321
	j	bp_label_321
bp_label_321:
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
	j	bp_label_322
bp_label_322:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn221
	j	bp_label_323
bp_label_323:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn221
	j	bExpAss_nfjdn220
bExpAss_nfjdn220:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_324
bExpAss_nfjdn221:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_324
	j	bp_label_324
bp_label_324:
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
	j	bp_label_325
bp_label_325:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bExpAss_nfjdn223
	j	bp_label_326
bp_label_326:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn223
	j	bExpAss_nfjdn222
bExpAss_nfjdn222:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_327
bExpAss_nfjdn223:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_327
	j	bp_label_327
bp_label_327:
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
	j	bp_label_328
bp_label_328:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn225
	j	bp_label_329
bp_label_329:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn225
	j	bExpAss_nfjdn224
bExpAss_nfjdn224:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_330
bExpAss_nfjdn225:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_330
	j	bp_label_330
bp_label_330:
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
	j	bp_label_331
bp_label_331:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn227
	j	bp_label_332
bp_label_332:
	j	bExpAss_nfjdn226
bExpAss_nfjdn226:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_333
bExpAss_nfjdn227:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_333
	j	bp_label_333
bp_label_333:
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
	j	bp_label_334
bp_label_334:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn229
	j	bp_label_335
bp_label_335:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn229
	j	bExpAss_nfjdn228
bExpAss_nfjdn228:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_336
bExpAss_nfjdn229:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_336
	j	bp_label_336
bp_label_336:
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
	j	bp_label_337
bp_label_337:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn231
	j	bp_label_338
bp_label_338:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn231
	j	bExpAss_nfjdn230
bExpAss_nfjdn230:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_339
bExpAss_nfjdn231:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_339
	j	bp_label_339
bp_label_339:
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
	j	bp_label_340
bp_label_340:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn233
	j	bp_label_341
bp_label_341:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn233
	j	bExpAss_nfjdn232
bExpAss_nfjdn232:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_342
bExpAss_nfjdn233:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_342
	j	bp_label_342
bp_label_342:
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
	j	bp_label_343
bp_label_343:
	j	bp_label_344
bp_label_344:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn235
	j	bExpAss_nfjdn234
bExpAss_nfjdn234:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_345
bExpAss_nfjdn235:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_345
	j	bp_label_345
bp_label_345:
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
	j	bp_label_346
bp_label_346:
	j	bp_label_347
bp_label_347:
	j	bExpAss_nfjdn236
bExpAss_nfjdn236:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_348
bExpAss_nfjdn237:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_348
	j	bp_label_348
bp_label_348:
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
	j	bp_label_349
bp_label_349:
	j	bp_label_350
bp_label_350:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn239
	j	bExpAss_nfjdn238
bExpAss_nfjdn238:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_351
bExpAss_nfjdn239:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_351
	j	bp_label_351
bp_label_351:
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
	j	bp_label_352
bp_label_352:
	j	bp_label_353
bp_label_353:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn241
	j	bExpAss_nfjdn240
bExpAss_nfjdn240:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_354
bExpAss_nfjdn241:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_354
	j	bp_label_354
bp_label_354:
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
	j	bp_label_355
bp_label_355:
	j	bp_label_356
bp_label_356:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn243
	j	bExpAss_nfjdn242
bExpAss_nfjdn242:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_357
bExpAss_nfjdn243:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_357
	j	bp_label_357
bp_label_357:
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
	j	bp_label_358
bp_label_358:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn245
	j	bp_label_359
bp_label_359:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn245
	j	bExpAss_nfjdn244
bExpAss_nfjdn244:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_360
bExpAss_nfjdn245:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_360
	j	bp_label_360
bp_label_360:
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
	j	bp_label_361
bp_label_361:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn247
	j	bp_label_362
bp_label_362:
	j	bExpAss_nfjdn246
bExpAss_nfjdn246:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_363
bExpAss_nfjdn247:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_363
	j	bp_label_363
bp_label_363:
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
	j	bp_label_364
bp_label_364:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn249
	j	bp_label_365
bp_label_365:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn249
	j	bExpAss_nfjdn248
bExpAss_nfjdn248:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_366
bExpAss_nfjdn249:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_366
	j	bp_label_366
bp_label_366:
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
	j	bp_label_367
bp_label_367:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn251
	j	bp_label_368
bp_label_368:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn251
	j	bExpAss_nfjdn250
bExpAss_nfjdn250:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_369
bExpAss_nfjdn251:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_369
	j	bp_label_369
bp_label_369:
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
	j	bp_label_370
bp_label_370:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn253
	j	bp_label_371
bp_label_371:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn253
	j	bExpAss_nfjdn252
bExpAss_nfjdn252:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_372
bExpAss_nfjdn253:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_372
	j	bp_label_372
bp_label_372:
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
	j	bp_label_373
bp_label_373:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn255
	j	bp_label_374
bp_label_374:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn255
	j	bExpAss_nfjdn254
bExpAss_nfjdn254:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_375
bExpAss_nfjdn255:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_375
	j	bp_label_375
bp_label_375:
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
	j	bp_label_376
bp_label_376:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn257
	j	bp_label_377
bp_label_377:
	j	bExpAss_nfjdn256
bExpAss_nfjdn256:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_378
bExpAss_nfjdn257:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_378
	j	bp_label_378
bp_label_378:
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
	j	bp_label_379
bp_label_379:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn259
	j	bp_label_380
bp_label_380:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn259
	j	bExpAss_nfjdn258
bExpAss_nfjdn258:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_381
bExpAss_nfjdn259:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_381
	j	bp_label_381
bp_label_381:
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
	j	bp_label_382
bp_label_382:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn261
	j	bp_label_383
bp_label_383:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn261
	j	bExpAss_nfjdn260
bExpAss_nfjdn260:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_384
bExpAss_nfjdn261:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_384
	j	bp_label_384
bp_label_384:
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
	j	bp_label_385
bp_label_385:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn263
	j	bp_label_386
bp_label_386:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn263
	j	bExpAss_nfjdn262
bExpAss_nfjdn262:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_387
bExpAss_nfjdn263:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_387
	j	bp_label_387
bp_label_387:
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
	j	bp_label_388
bp_label_388:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn265
	j	bp_label_389
bp_label_389:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn265
	j	bExpAss_nfjdn264
bExpAss_nfjdn264:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_390
bExpAss_nfjdn265:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_390
	j	bp_label_390
bp_label_390:
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
	j	bp_label_391
bp_label_391:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn267
	j	bp_label_392
bp_label_392:
	j	bExpAss_nfjdn266
bExpAss_nfjdn266:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_393
bExpAss_nfjdn267:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_393
	j	bp_label_393
bp_label_393:
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
	j	bp_label_394
bp_label_394:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn269
	j	bp_label_395
bp_label_395:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn269
	j	bExpAss_nfjdn268
bExpAss_nfjdn268:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_396
bExpAss_nfjdn269:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_396
	j	bp_label_396
bp_label_396:
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
	j	bp_label_397
bp_label_397:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn271
	j	bp_label_398
bp_label_398:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn271
	j	bExpAss_nfjdn270
bExpAss_nfjdn270:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_399
bExpAss_nfjdn271:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_399
	j	bp_label_399
bp_label_399:
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
	j	bp_label_400
bp_label_400:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn273
	j	bp_label_401
bp_label_401:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn273
	j	bExpAss_nfjdn272
bExpAss_nfjdn272:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_402
bExpAss_nfjdn273:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_402
	j	bp_label_402
bp_label_402:
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
	j	bp_label_403
bp_label_403:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn275
	j	bp_label_404
bp_label_404:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn275
	j	bExpAss_nfjdn274
bExpAss_nfjdn274:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_405
bExpAss_nfjdn275:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_405
	j	bp_label_405
bp_label_405:
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
	j	bp_label_406
bp_label_406:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn277
	j	bp_label_407
bp_label_407:
	j	bExpAss_nfjdn276
bExpAss_nfjdn276:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_408
bExpAss_nfjdn277:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_408
	j	bp_label_408
bp_label_408:
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
	j	bp_label_409
bp_label_409:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn279
	j	bp_label_410
bp_label_410:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn279
	j	bExpAss_nfjdn278
bExpAss_nfjdn278:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_411
bExpAss_nfjdn279:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_411
	j	bp_label_411
bp_label_411:
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
	j	bp_label_412
bp_label_412:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn281
	j	bp_label_413
bp_label_413:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn281
	j	bExpAss_nfjdn280
bExpAss_nfjdn280:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_414
bExpAss_nfjdn281:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_414
	j	bp_label_414
bp_label_414:
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
	j	bp_label_415
bp_label_415:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn283
	j	bp_label_416
bp_label_416:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn283
	j	bExpAss_nfjdn282
bExpAss_nfjdn282:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_417
bExpAss_nfjdn283:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_417
	j	bp_label_417
bp_label_417:
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
	j	bp_label_418
bp_label_418:
	j	bp_label_419
bp_label_419:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn285
	j	bExpAss_nfjdn284
bExpAss_nfjdn284:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_420
bExpAss_nfjdn285:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_420
	j	bp_label_420
bp_label_420:
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
	j	bp_label_421
bp_label_421:
	j	bp_label_422
bp_label_422:
	j	bExpAss_nfjdn286
bExpAss_nfjdn286:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_423
bExpAss_nfjdn287:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_423
	j	bp_label_423
bp_label_423:
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
	j	bp_label_424
bp_label_424:
	j	bp_label_425
bp_label_425:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn289
	j	bExpAss_nfjdn288
bExpAss_nfjdn288:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_426
bExpAss_nfjdn289:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_426
	j	bp_label_426
bp_label_426:
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
	j	bp_label_427
bp_label_427:
	j	bp_label_428
bp_label_428:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn291
	j	bExpAss_nfjdn290
bExpAss_nfjdn290:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_429
bExpAss_nfjdn291:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_429
	j	bp_label_429
bp_label_429:
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
	j	bp_label_430
bp_label_430:
	j	bp_label_431
bp_label_431:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn293
	j	bExpAss_nfjdn292
bExpAss_nfjdn292:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_432
bExpAss_nfjdn293:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_432
	j	bp_label_432
bp_label_432:
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
	j	bp_label_433
bp_label_433:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn295
	j	bp_label_434
bp_label_434:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn295
	j	bExpAss_nfjdn294
bExpAss_nfjdn294:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_435
bExpAss_nfjdn295:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_435
	j	bp_label_435
bp_label_435:
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
	j	bp_label_436
bp_label_436:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn297
	j	bp_label_437
bp_label_437:
	j	bExpAss_nfjdn296
bExpAss_nfjdn296:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_438
bExpAss_nfjdn297:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_438
	j	bp_label_438
bp_label_438:
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
	j	bp_label_439
bp_label_439:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn299
	j	bp_label_440
bp_label_440:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn299
	j	bExpAss_nfjdn298
bExpAss_nfjdn298:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_441
bExpAss_nfjdn299:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_441
	j	bp_label_441
bp_label_441:
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
	j	bp_label_442
bp_label_442:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn301
	j	bp_label_443
bp_label_443:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn301
	j	bExpAss_nfjdn300
bExpAss_nfjdn300:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_444
bExpAss_nfjdn301:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_444
	j	bp_label_444
bp_label_444:
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
	j	bp_label_445
bp_label_445:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn303
	j	bp_label_446
bp_label_446:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn303
	j	bExpAss_nfjdn302
bExpAss_nfjdn302:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_447
bExpAss_nfjdn303:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_447
	j	bp_label_447
bp_label_447:
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
	j	bp_label_448
bp_label_448:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn305
	j	bp_label_449
bp_label_449:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn305
	j	bExpAss_nfjdn304
bExpAss_nfjdn304:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_450
bExpAss_nfjdn305:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_450
	j	bp_label_450
bp_label_450:
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
	j	bp_label_451
bp_label_451:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn307
	j	bp_label_452
bp_label_452:
	j	bExpAss_nfjdn306
bExpAss_nfjdn306:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_453
bExpAss_nfjdn307:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_453
	j	bp_label_453
bp_label_453:
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
	j	bp_label_454
bp_label_454:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn309
	j	bp_label_455
bp_label_455:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn309
	j	bExpAss_nfjdn308
bExpAss_nfjdn308:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_456
bExpAss_nfjdn309:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_456
	j	bp_label_456
bp_label_456:
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
	j	bp_label_457
bp_label_457:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn311
	j	bp_label_458
bp_label_458:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn311
	j	bExpAss_nfjdn310
bExpAss_nfjdn310:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_459
bExpAss_nfjdn311:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_459
	j	bp_label_459
bp_label_459:
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
	j	bp_label_460
bp_label_460:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn313
	j	bp_label_461
bp_label_461:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn313
	j	bExpAss_nfjdn312
bExpAss_nfjdn312:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_462
bExpAss_nfjdn313:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_462
	j	bp_label_462
bp_label_462:
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
	j	bp_label_463
bp_label_463:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn315
	j	bp_label_464
bp_label_464:
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
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn315
	j	bExpAss_nfjdn314
bExpAss_nfjdn314:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_465
bExpAss_nfjdn315:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_465
	j	bp_label_465
bp_label_465:
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
	j	bp_label_466
bp_label_466:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn317
	j	bp_label_467
bp_label_467:
	j	bExpAss_nfjdn316
bExpAss_nfjdn316:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_468
bExpAss_nfjdn317:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_468
	j	bp_label_468
bp_label_468:
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
	j	bp_label_469
bp_label_469:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn319
	j	bp_label_470
bp_label_470:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn319
	j	bExpAss_nfjdn318
bExpAss_nfjdn318:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_471
bExpAss_nfjdn319:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_471
	j	bp_label_471
bp_label_471:
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
	j	bp_label_472
bp_label_472:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn321
	j	bp_label_473
bp_label_473:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bExpAss_nfjdn321
	j	bExpAss_nfjdn320
bExpAss_nfjdn320:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_474
bExpAss_nfjdn321:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_474
	j	bp_label_474
bp_label_474:
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
	j	bp_label_475
bp_label_475:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn323
	j	bp_label_476
bp_label_476:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bExpAss_nfjdn323
	j	bExpAss_nfjdn322
bExpAss_nfjdn322:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_477
bExpAss_nfjdn323:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_477
	j	bp_label_477
bp_label_477:
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
	j	bp_label_478
bp_label_478:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
