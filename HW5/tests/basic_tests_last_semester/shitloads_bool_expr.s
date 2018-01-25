.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "b1 is true\n"
string_label_1:	.asciiz "b1 is true\n"
string_label_2:	.asciiz "b2 is false\n"
string_label_3:	.asciiz "b2 is false\n"
string_label_4:	.asciiz "b3 is false\n"
string_label_5:	.asciiz "b3 is false\n"
string_label_6:	.asciiz "b3 is false after b4\n"
string_label_7:	.asciiz "b3 is false after b4\n"
string_label_8:	.asciiz "First If\n"
string_label_9:	.asciiz "First If\n"
string_label_10:	.asciiz "First Else\n"
string_label_11:	.asciiz "First Else\n"
string_label_12:	.asciiz "Second If\n"
string_label_13:	.asciiz "Second If\n"
string_label_14:	.asciiz "Second Else\n"
string_label_15:	.asciiz "Second Else\n"
string_label_16:	.asciiz "Third If\n"
string_label_17:	.asciiz "Third If\n"
string_label_18:	.asciiz "Third Else\n"
string_label_19:	.asciiz "Third Else\n"
.text
main:
	move	$fp,$sp
	jal	label_63
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
	lw $t1, 8($fp)
	bgt $t0, $t1,bp_label_0
	j	
bp_label_0:
	lw $t0, 8($fp)
	li	$t1,100
	blt $t0, $t1,
	j	
	move	$v0,$t/
	move	$sp,$fp
	jr	$ra
bp_label_1:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
label_38:
	lw $t/, 4($fp)
	li	$t0,10
	bgt $t/, $t0,bp_label_2
	j	bp_label_3
bp_label_2:
	lw $t/, 8($fp)
	bne $t/, $zero,
	j	bp_label_3
bp_label_3:
	lw $t/, 4($fp)
	li	$t0,10
	ble $t/, $t0,bp_label_4
	j	
bp_label_4:
	lw $t/, 8($fp)
	bne $t/, $zero,
	j	
	move	$v0,$t.
	move	$sp,$fp
	jr	$ra
bp_label_5:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
label_63:
	addiu $sp, $sp, -4
	li	$t0,10
	li	$t1,5
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 8
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn0
	j	bExpAss_nfjdn1
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
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_7
	j	bp_label_8
bp_label_7:
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
	j	bp_label_9
bp_label_8:
bp_label_9:
	j	bp_label_10
bp_label_10:
	addiu $sp, $sp, -4
	li	$t0,5
	lw $t1, ($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 8
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn2
	j	bExpAss_nfjdn3
bExpAss_nfjdn2:
	li	$t0,1
	sw $t0, -4($fp)
	j	bp_label_11
bExpAss_nfjdn3:
	li	$t0,0
	sw $t0, -4($fp)
	j	bp_label_11
	j	bp_label_11
bp_label_11:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_13
	j	bp_label_12
bp_label_12:
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
	j	bp_label_14
bp_label_13:
bp_label_14:
	j	bp_label_15
bp_label_15:
	addiu $sp, $sp, -4
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_16
	j	bExpAss_nfjdn5
bp_label_16:
	lw $t0, -4($fp)
	bne $t0, $zero,bExpAss_nfjdn4
	j	bExpAss_nfjdn5
bExpAss_nfjdn4:
	li	$t0,1
	sw $t0, -8($fp)
	j	bp_label_17
bExpAss_nfjdn5:
	li	$t0,0
	sw $t0, -8($fp)
	j	bp_label_17
	j	bp_label_17
bp_label_17:
	lw $t0, -8($fp)
	bne $t0, $zero,bp_label_19
	j	bp_label_18
bp_label_18:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_5
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_20
bp_label_19:
bp_label_20:
	j	bp_label_21
bp_label_21:
	addiu $sp, $sp, -4
	li	$t0,120
	li	$t1,110
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 8
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn6
	j	bp_label_22
bp_label_22:
	li	$t0,45
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	li	$t0,10
	li	$t1,6
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 8
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	addiu $sp, $sp, 4
	lw $t0, ($sp)
	move	$t1,$v0
	bne $t1, $zero,bp_label_23
	j	bp_label_25
bp_label_23:
	li	$t1,1
	j	bp_label_24
bp_label_25:
	li	$t1,0
bp_label_24:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 8
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bExpAss_nfjdn6
	j	bExpAss_nfjdn7
bExpAss_nfjdn6:
	li	$t0,1
	sw $t0, -12($fp)
	j	bp_label_26
bExpAss_nfjdn7:
	li	$t0,0
	sw $t0, -12($fp)
	j	bp_label_26
	j	bp_label_26
bp_label_26:
	lw $t0, -8($fp)
	bne $t0, $zero,bp_label_28
	j	bp_label_27
bp_label_27:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_7
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_29
bp_label_28:
bp_label_29:
	j	bp_label_30
bp_label_30:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_31
	j	bp_label_34
bp_label_31:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_32
	j	bp_label_34
bp_label_32:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_33
	j	bp_label_34
bp_label_33:
	lw $t0, -12($fp)
	bne $t0, $zero,bp_label_35
	j	bp_label_34
bp_label_34:
	lw $t0, -8($fp)
	bne $t0, $zero,bp_label_36
	j	bp_label_35
bp_label_35:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_9
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_37
bp_label_36:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_11
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_37
bp_label_37:
	j	bp_label_38
bp_label_38:
	li	$t0,10
	li	$t1,6
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 8
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_39
	j	bp_label_45
bp_label_39:
	li	$t0,100
	lw $t1, ($fp)
	bne $t1, $zero,bp_label_41
	j	bp_label_40
bp_label_40:
	lw $t1, -4($fp)
	bne $t1, $zero,bp_label_41
	j	bp_label_43
bp_label_41:
	li	$t1,1
	j	bp_label_42
bp_label_43:
	li	$t1,0
bp_label_42:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 8
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_44
	j	bp_label_45
bp_label_44:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_13
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_46
bp_label_45:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_15
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_46
bp_label_46:
	j	bp_label_47
bp_label_47:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_48
	j	bp_label_54
bp_label_48:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_49
	j	bp_label_54
bp_label_49:
	lw $t0, -8($fp)
	bne $t0, $zero,bp_label_50
	j	bp_label_54
bp_label_50:
	lw $t0, -12($fp)
	bne $t0, $zero,bp_label_51
	j	bp_label_54
bp_label_51:
	li	$t0,10
	li	$t1,18
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 8
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_52
	j	bp_label_54
bp_label_52:
	li	$t0,5
	li	$t1,0
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t1, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_38
	addiu $sp, $sp, 8
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	bne $t0, $zero,bp_label_53
	j	bp_label_54
bp_label_53:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_17
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_55
bp_label_54:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	la $v0, string_label_19
	sw $v0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	print
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	j	bp_label_55
bp_label_55:
	j	bp_label_56
bp_label_56:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
