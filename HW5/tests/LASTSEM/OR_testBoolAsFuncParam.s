.data
pvufne1:	.asciiz "Error division by zero
"
string_label_0:	.asciiz "var is true :)\n"
string_label_1:	.asciiz "var is true :)\n"
string_label_2:	.asciiz "var is false :(\n"
string_label_3:	.asciiz "var is false :(\n"
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
	li	$t0,1
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_8
bp_label_8:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_9
	j	bp_label_11
bp_label_9:
	li	$t0,1
	j	bp_label_10
bp_label_11:
	li	$t0,0
bp_label_10:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_12
bp_label_12:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_13
	j	bp_label_15
bp_label_13:
	li	$t0,1
	j	bp_label_14
bp_label_15:
	li	$t0,0
bp_label_14:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_16
bp_label_16:
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
	bne $t0, $zero,bp_label_17
	j	bp_label_19
bp_label_17:
	li	$t0,1
	j	bp_label_18
bp_label_19:
	li	$t0,0
bp_label_18:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_20
bp_label_20:
	lw $t0, ($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_21
bp_label_21:
	li	$t0,0
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_22
bp_label_22:
	li	$t0,5
	li	$t1,4
	blt $t0, $t1,bp_label_23
	j	bp_label_25
bp_label_23:
	li	$t0,1
	j	bp_label_24
bp_label_25:
	li	$t0,0
bp_label_24:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_26
bp_label_26:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_27
	j	bp_label_29
bp_label_27:
	li	$t0,1
	j	bp_label_28
bp_label_29:
	li	$t0,0
bp_label_28:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_30
bp_label_30:
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
	bne $t0, $zero,bp_label_31
	j	bp_label_33
bp_label_31:
	li	$t0,1
	j	bp_label_32
bp_label_33:
	li	$t0,0
bp_label_32:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_34
bp_label_34:
	lw $t0, -4($fp)
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_35
bp_label_35:
	j	bp_label_36
bp_label_36:
	j	bp_label_39
bp_label_37:
	li	$t0,1
	j	bp_label_38
bp_label_39:
	li	$t0,0
bp_label_38:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_40
bp_label_40:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_41
	j	bp_label_44
bp_label_41:
	j	bp_label_44
bp_label_42:
	li	$t0,1
	j	bp_label_43
bp_label_44:
	li	$t0,0
bp_label_43:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_45
bp_label_45:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_46
	j	bp_label_49
bp_label_46:
	j	bp_label_49
bp_label_47:
	li	$t0,1
	j	bp_label_48
bp_label_49:
	li	$t0,0
bp_label_48:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_50
bp_label_50:
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
	bne $t0, $zero,bp_label_51
	j	bp_label_54
bp_label_51:
	j	bp_label_54
bp_label_52:
	li	$t0,1
	j	bp_label_53
bp_label_54:
	li	$t0,0
bp_label_53:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_55
bp_label_55:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_56
	j	bp_label_59
bp_label_56:
	j	bp_label_59
bp_label_57:
	li	$t0,1
	j	bp_label_58
bp_label_59:
	li	$t0,0
bp_label_58:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_60
bp_label_60:
	j	bp_label_61
bp_label_61:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_62
	j	bp_label_64
bp_label_62:
	li	$t0,1
	j	bp_label_63
bp_label_64:
	li	$t0,0
bp_label_63:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_65
bp_label_65:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_66
	j	bp_label_69
bp_label_66:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_67
	j	bp_label_69
bp_label_67:
	li	$t0,1
	j	bp_label_68
bp_label_69:
	li	$t0,0
bp_label_68:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_70
bp_label_70:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_71
	j	bp_label_74
bp_label_71:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_72
	j	bp_label_74
bp_label_72:
	li	$t0,1
	j	bp_label_73
bp_label_74:
	li	$t0,0
bp_label_73:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_75
bp_label_75:
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
	bne $t0, $zero,bp_label_76
	j	bp_label_79
bp_label_76:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_77
	j	bp_label_79
bp_label_77:
	li	$t0,1
	j	bp_label_78
bp_label_79:
	li	$t0,0
bp_label_78:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_80
bp_label_80:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_81
	j	bp_label_84
bp_label_81:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_82
	j	bp_label_84
bp_label_82:
	li	$t0,1
	j	bp_label_83
bp_label_84:
	li	$t0,0
bp_label_83:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_85
bp_label_85:
	j	bp_label_86
bp_label_86:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_87
	j	bp_label_89
bp_label_87:
	li	$t0,1
	j	bp_label_88
bp_label_89:
	li	$t0,0
bp_label_88:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_90
bp_label_90:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_91
	j	bp_label_94
bp_label_91:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_92
	j	bp_label_94
bp_label_92:
	li	$t0,1
	j	bp_label_93
bp_label_94:
	li	$t0,0
bp_label_93:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_95
bp_label_95:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_96
	j	bp_label_99
bp_label_96:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_97
	j	bp_label_99
bp_label_97:
	li	$t0,1
	j	bp_label_98
bp_label_99:
	li	$t0,0
bp_label_98:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_100
bp_label_100:
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
	bne $t0, $zero,bp_label_101
	j	bp_label_104
bp_label_101:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_102
	j	bp_label_104
bp_label_102:
	li	$t0,1
	j	bp_label_103
bp_label_104:
	li	$t0,0
bp_label_103:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_105
bp_label_105:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_106
	j	bp_label_109
bp_label_106:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_107
	j	bp_label_109
bp_label_107:
	li	$t0,1
	j	bp_label_108
bp_label_109:
	li	$t0,0
bp_label_108:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_110
bp_label_110:
	j	bp_label_111
bp_label_111:
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
	bne $t0, $zero,bp_label_112
	j	bp_label_114
bp_label_112:
	li	$t0,1
	j	bp_label_113
bp_label_114:
	li	$t0,0
bp_label_113:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_115
bp_label_115:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_116
	j	bp_label_119
bp_label_116:
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
	bne $t0, $zero,bp_label_117
	j	bp_label_119
bp_label_117:
	li	$t0,1
	j	bp_label_118
bp_label_119:
	li	$t0,0
bp_label_118:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_120
bp_label_120:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_121
	j	bp_label_124
bp_label_121:
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
	bne $t0, $zero,bp_label_122
	j	bp_label_124
bp_label_122:
	li	$t0,1
	j	bp_label_123
bp_label_124:
	li	$t0,0
bp_label_123:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_125
bp_label_125:
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
	bne $t0, $zero,bp_label_126
	j	bp_label_129
bp_label_126:
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
	bne $t0, $zero,bp_label_127
	j	bp_label_129
bp_label_127:
	li	$t0,1
	j	bp_label_128
bp_label_129:
	li	$t0,0
bp_label_128:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_130
bp_label_130:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_131
	j	bp_label_134
bp_label_131:
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
	bne $t0, $zero,bp_label_132
	j	bp_label_134
bp_label_132:
	li	$t0,1
	j	bp_label_133
bp_label_134:
	li	$t0,0
bp_label_133:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_135
bp_label_135:
	j	bp_label_136
bp_label_136:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_137
	j	bp_label_139
bp_label_137:
	li	$t0,1
	j	bp_label_138
bp_label_139:
	li	$t0,0
bp_label_138:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_140
bp_label_140:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_141
	j	bp_label_144
bp_label_141:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_142
	j	bp_label_144
bp_label_142:
	li	$t0,1
	j	bp_label_143
bp_label_144:
	li	$t0,0
bp_label_143:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_145
bp_label_145:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_146
	j	bp_label_149
bp_label_146:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_147
	j	bp_label_149
bp_label_147:
	li	$t0,1
	j	bp_label_148
bp_label_149:
	li	$t0,0
bp_label_148:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_150
bp_label_150:
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
	bne $t0, $zero,bp_label_151
	j	bp_label_154
bp_label_151:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_152
	j	bp_label_154
bp_label_152:
	li	$t0,1
	j	bp_label_153
bp_label_154:
	li	$t0,0
bp_label_153:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_155
bp_label_155:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_156
	j	bp_label_159
bp_label_156:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_157
	j	bp_label_159
bp_label_157:
	li	$t0,1
	j	bp_label_158
bp_label_159:
	li	$t0,0
bp_label_158:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_160
bp_label_160:
	j	bp_label_161
bp_label_161:
	j	bp_label_162
bp_label_162:
	li	$t0,1
	j	bp_label_163
bp_label_164:
	li	$t0,0
bp_label_163:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_165
bp_label_165:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_167
	j	bp_label_166
bp_label_166:
	j	bp_label_167
bp_label_167:
	li	$t0,1
	j	bp_label_168
bp_label_169:
	li	$t0,0
bp_label_168:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_170
bp_label_170:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_172
	j	bp_label_171
bp_label_171:
	j	bp_label_172
bp_label_172:
	li	$t0,1
	j	bp_label_173
bp_label_174:
	li	$t0,0
bp_label_173:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_175
bp_label_175:
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
	bne $t0, $zero,bp_label_177
	j	bp_label_176
bp_label_176:
	j	bp_label_177
bp_label_177:
	li	$t0,1
	j	bp_label_178
bp_label_179:
	li	$t0,0
bp_label_178:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_180
bp_label_180:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_182
	j	bp_label_181
bp_label_181:
	j	bp_label_182
bp_label_182:
	li	$t0,1
	j	bp_label_183
bp_label_184:
	li	$t0,0
bp_label_183:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_185
bp_label_185:
	j	bp_label_186
bp_label_186:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_187
	j	bp_label_189
bp_label_187:
	li	$t0,1
	j	bp_label_188
bp_label_189:
	li	$t0,0
bp_label_188:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_190
bp_label_190:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_192
	j	bp_label_191
bp_label_191:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_192
	j	bp_label_194
bp_label_192:
	li	$t0,1
	j	bp_label_193
bp_label_194:
	li	$t0,0
bp_label_193:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_195
bp_label_195:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_197
	j	bp_label_196
bp_label_196:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_197
	j	bp_label_199
bp_label_197:
	li	$t0,1
	j	bp_label_198
bp_label_199:
	li	$t0,0
bp_label_198:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_200
bp_label_200:
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
	bne $t0, $zero,bp_label_202
	j	bp_label_201
bp_label_201:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_202
	j	bp_label_204
bp_label_202:
	li	$t0,1
	j	bp_label_203
bp_label_204:
	li	$t0,0
bp_label_203:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_205
bp_label_205:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_207
	j	bp_label_206
bp_label_206:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_207
	j	bp_label_209
bp_label_207:
	li	$t0,1
	j	bp_label_208
bp_label_209:
	li	$t0,0
bp_label_208:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_210
bp_label_210:
	j	bp_label_211
bp_label_211:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_212
	j	bp_label_214
bp_label_212:
	li	$t0,1
	j	bp_label_213
bp_label_214:
	li	$t0,0
bp_label_213:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_215
bp_label_215:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_217
	j	bp_label_216
bp_label_216:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_217
	j	bp_label_219
bp_label_217:
	li	$t0,1
	j	bp_label_218
bp_label_219:
	li	$t0,0
bp_label_218:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_220
bp_label_220:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_222
	j	bp_label_221
bp_label_221:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_222
	j	bp_label_224
bp_label_222:
	li	$t0,1
	j	bp_label_223
bp_label_224:
	li	$t0,0
bp_label_223:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_225
bp_label_225:
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
	bne $t0, $zero,bp_label_227
	j	bp_label_226
bp_label_226:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_227
	j	bp_label_229
bp_label_227:
	li	$t0,1
	j	bp_label_228
bp_label_229:
	li	$t0,0
bp_label_228:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_230
bp_label_230:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_232
	j	bp_label_231
bp_label_231:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_232
	j	bp_label_234
bp_label_232:
	li	$t0,1
	j	bp_label_233
bp_label_234:
	li	$t0,0
bp_label_233:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_235
bp_label_235:
	j	bp_label_236
bp_label_236:
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
	bne $t0, $zero,bp_label_237
	j	bp_label_239
bp_label_237:
	li	$t0,1
	j	bp_label_238
bp_label_239:
	li	$t0,0
bp_label_238:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_240
bp_label_240:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_242
	j	bp_label_241
bp_label_241:
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
	bne $t0, $zero,bp_label_242
	j	bp_label_244
bp_label_242:
	li	$t0,1
	j	bp_label_243
bp_label_244:
	li	$t0,0
bp_label_243:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_245
bp_label_245:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_247
	j	bp_label_246
bp_label_246:
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
	bne $t0, $zero,bp_label_247
	j	bp_label_249
bp_label_247:
	li	$t0,1
	j	bp_label_248
bp_label_249:
	li	$t0,0
bp_label_248:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_250
bp_label_250:
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
	bne $t0, $zero,bp_label_252
	j	bp_label_251
bp_label_251:
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
	bne $t0, $zero,bp_label_252
	j	bp_label_254
bp_label_252:
	li	$t0,1
	j	bp_label_253
bp_label_254:
	li	$t0,0
bp_label_253:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_255
bp_label_255:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_257
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
	bne $t0, $zero,bp_label_257
	j	bp_label_259
bp_label_257:
	li	$t0,1
	j	bp_label_258
bp_label_259:
	li	$t0,0
bp_label_258:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_260
bp_label_260:
	j	bp_label_261
bp_label_261:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_262
	j	bp_label_264
bp_label_262:
	li	$t0,1
	j	bp_label_263
bp_label_264:
	li	$t0,0
bp_label_263:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_265
bp_label_265:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_267
	j	bp_label_266
bp_label_266:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_267
	j	bp_label_269
bp_label_267:
	li	$t0,1
	j	bp_label_268
bp_label_269:
	li	$t0,0
bp_label_268:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_270
bp_label_270:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_272
	j	bp_label_271
bp_label_271:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_272
	j	bp_label_274
bp_label_272:
	li	$t0,1
	j	bp_label_273
bp_label_274:
	li	$t0,0
bp_label_273:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_275
bp_label_275:
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
	bne $t0, $zero,bp_label_277
	j	bp_label_276
bp_label_276:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_277
	j	bp_label_279
bp_label_277:
	li	$t0,1
	j	bp_label_278
bp_label_279:
	li	$t0,0
bp_label_278:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_280
bp_label_280:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_282
	j	bp_label_281
bp_label_281:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_282
	j	bp_label_284
bp_label_282:
	li	$t0,1
	j	bp_label_283
bp_label_284:
	li	$t0,0
bp_label_283:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_285
bp_label_285:
	j	bp_label_286
bp_label_286:
	j	bp_label_287
bp_label_287:
	li	$t0,1
	j	bp_label_288
bp_label_289:
	li	$t0,0
bp_label_288:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_290
bp_label_290:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_291
	j	bp_label_294
bp_label_291:
	j	bp_label_292
bp_label_292:
	li	$t0,1
	j	bp_label_293
bp_label_294:
	li	$t0,0
bp_label_293:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_295
bp_label_295:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_296
	j	bp_label_299
bp_label_296:
	j	bp_label_297
bp_label_297:
	li	$t0,1
	j	bp_label_298
bp_label_299:
	li	$t0,0
bp_label_298:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_300
bp_label_300:
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
	bne $t0, $zero,bp_label_301
	j	bp_label_304
bp_label_301:
	j	bp_label_302
bp_label_302:
	li	$t0,1
	j	bp_label_303
bp_label_304:
	li	$t0,0
bp_label_303:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_305
bp_label_305:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_306
	j	bp_label_309
bp_label_306:
	j	bp_label_307
bp_label_307:
	li	$t0,1
	j	bp_label_308
bp_label_309:
	li	$t0,0
bp_label_308:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_310
bp_label_310:
	j	bp_label_311
bp_label_311:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_312
	j	bp_label_314
bp_label_312:
	li	$t0,1
	j	bp_label_313
bp_label_314:
	li	$t0,0
bp_label_313:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_315
bp_label_315:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_316
	j	bp_label_319
bp_label_316:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_317
	j	bp_label_319
bp_label_317:
	li	$t0,1
	j	bp_label_318
bp_label_319:
	li	$t0,0
bp_label_318:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_320
bp_label_320:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_321
	j	bp_label_324
bp_label_321:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_322
	j	bp_label_324
bp_label_322:
	li	$t0,1
	j	bp_label_323
bp_label_324:
	li	$t0,0
bp_label_323:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_325
bp_label_325:
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
	bne $t0, $zero,bp_label_326
	j	bp_label_329
bp_label_326:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_327
	j	bp_label_329
bp_label_327:
	li	$t0,1
	j	bp_label_328
bp_label_329:
	li	$t0,0
bp_label_328:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_330
bp_label_330:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_331
	j	bp_label_334
bp_label_331:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_332
	j	bp_label_334
bp_label_332:
	li	$t0,1
	j	bp_label_333
bp_label_334:
	li	$t0,0
bp_label_333:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_335
bp_label_335:
	j	bp_label_336
bp_label_336:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_337
	j	bp_label_339
bp_label_337:
	li	$t0,1
	j	bp_label_338
bp_label_339:
	li	$t0,0
bp_label_338:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_340
bp_label_340:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_341
	j	bp_label_344
bp_label_341:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_342
	j	bp_label_344
bp_label_342:
	li	$t0,1
	j	bp_label_343
bp_label_344:
	li	$t0,0
bp_label_343:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_345
bp_label_345:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_346
	j	bp_label_349
bp_label_346:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_347
	j	bp_label_349
bp_label_347:
	li	$t0,1
	j	bp_label_348
bp_label_349:
	li	$t0,0
bp_label_348:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_350
bp_label_350:
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
	bne $t0, $zero,bp_label_351
	j	bp_label_354
bp_label_351:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_352
	j	bp_label_354
bp_label_352:
	li	$t0,1
	j	bp_label_353
bp_label_354:
	li	$t0,0
bp_label_353:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_355
bp_label_355:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_356
	j	bp_label_359
bp_label_356:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_357
	j	bp_label_359
bp_label_357:
	li	$t0,1
	j	bp_label_358
bp_label_359:
	li	$t0,0
bp_label_358:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_360
bp_label_360:
	j	bp_label_361
bp_label_361:
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
	bne $t0, $zero,bp_label_362
	j	bp_label_364
bp_label_362:
	li	$t0,1
	j	bp_label_363
bp_label_364:
	li	$t0,0
bp_label_363:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_365
bp_label_365:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_366
	j	bp_label_369
bp_label_366:
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
	bne $t0, $zero,bp_label_367
	j	bp_label_369
bp_label_367:
	li	$t0,1
	j	bp_label_368
bp_label_369:
	li	$t0,0
bp_label_368:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_370
bp_label_370:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_371
	j	bp_label_374
bp_label_371:
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
	bne $t0, $zero,bp_label_372
	j	bp_label_374
bp_label_372:
	li	$t0,1
	j	bp_label_373
bp_label_374:
	li	$t0,0
bp_label_373:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_375
bp_label_375:
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
	bne $t0, $zero,bp_label_376
	j	bp_label_379
bp_label_376:
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
	bne $t0, $zero,bp_label_377
	j	bp_label_379
bp_label_377:
	li	$t0,1
	j	bp_label_378
bp_label_379:
	li	$t0,0
bp_label_378:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_380
bp_label_380:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_381
	j	bp_label_384
bp_label_381:
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
	bne $t0, $zero,bp_label_382
	j	bp_label_384
bp_label_382:
	li	$t0,1
	j	bp_label_383
bp_label_384:
	li	$t0,0
bp_label_383:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_385
bp_label_385:
	j	bp_label_386
bp_label_386:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_387
	j	bp_label_389
bp_label_387:
	li	$t0,1
	j	bp_label_388
bp_label_389:
	li	$t0,0
bp_label_388:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_390
bp_label_390:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_391
	j	bp_label_394
bp_label_391:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_392
	j	bp_label_394
bp_label_392:
	li	$t0,1
	j	bp_label_393
bp_label_394:
	li	$t0,0
bp_label_393:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_395
bp_label_395:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_396
	j	bp_label_399
bp_label_396:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_397
	j	bp_label_399
bp_label_397:
	li	$t0,1
	j	bp_label_398
bp_label_399:
	li	$t0,0
bp_label_398:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_400
bp_label_400:
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
	bne $t0, $zero,bp_label_401
	j	bp_label_404
bp_label_401:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_402
	j	bp_label_404
bp_label_402:
	li	$t0,1
	j	bp_label_403
bp_label_404:
	li	$t0,0
bp_label_403:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_405
bp_label_405:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_406
	j	bp_label_409
bp_label_406:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_407
	j	bp_label_409
bp_label_407:
	li	$t0,1
	j	bp_label_408
bp_label_409:
	li	$t0,0
bp_label_408:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_410
bp_label_410:
	j	bp_label_411
bp_label_411:
	j	bp_label_414
bp_label_412:
	li	$t0,1
	j	bp_label_413
bp_label_414:
	li	$t0,0
bp_label_413:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_415
bp_label_415:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_417
	j	bp_label_416
bp_label_416:
	j	bp_label_419
bp_label_417:
	li	$t0,1
	j	bp_label_418
bp_label_419:
	li	$t0,0
bp_label_418:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_420
bp_label_420:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_422
	j	bp_label_421
bp_label_421:
	j	bp_label_424
bp_label_422:
	li	$t0,1
	j	bp_label_423
bp_label_424:
	li	$t0,0
bp_label_423:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_425
bp_label_425:
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
	bne $t0, $zero,bp_label_427
	j	bp_label_426
bp_label_426:
	j	bp_label_429
bp_label_427:
	li	$t0,1
	j	bp_label_428
bp_label_429:
	li	$t0,0
bp_label_428:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_430
bp_label_430:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_432
	j	bp_label_431
bp_label_431:
	j	bp_label_434
bp_label_432:
	li	$t0,1
	j	bp_label_433
bp_label_434:
	li	$t0,0
bp_label_433:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_435
bp_label_435:
	j	bp_label_436
bp_label_436:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_437
	j	bp_label_439
bp_label_437:
	li	$t0,1
	j	bp_label_438
bp_label_439:
	li	$t0,0
bp_label_438:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_440
bp_label_440:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_442
	j	bp_label_441
bp_label_441:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_442
	j	bp_label_444
bp_label_442:
	li	$t0,1
	j	bp_label_443
bp_label_444:
	li	$t0,0
bp_label_443:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_445
bp_label_445:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_447
	j	bp_label_446
bp_label_446:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_447
	j	bp_label_449
bp_label_447:
	li	$t0,1
	j	bp_label_448
bp_label_449:
	li	$t0,0
bp_label_448:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_450
bp_label_450:
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
	bne $t0, $zero,bp_label_452
	j	bp_label_451
bp_label_451:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_452
	j	bp_label_454
bp_label_452:
	li	$t0,1
	j	bp_label_453
bp_label_454:
	li	$t0,0
bp_label_453:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_455
bp_label_455:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_457
	j	bp_label_456
bp_label_456:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_457
	j	bp_label_459
bp_label_457:
	li	$t0,1
	j	bp_label_458
bp_label_459:
	li	$t0,0
bp_label_458:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_460
bp_label_460:
	j	bp_label_461
bp_label_461:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_462
	j	bp_label_464
bp_label_462:
	li	$t0,1
	j	bp_label_463
bp_label_464:
	li	$t0,0
bp_label_463:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_465
bp_label_465:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_467
	j	bp_label_466
bp_label_466:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_467
	j	bp_label_469
bp_label_467:
	li	$t0,1
	j	bp_label_468
bp_label_469:
	li	$t0,0
bp_label_468:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_470
bp_label_470:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_472
	j	bp_label_471
bp_label_471:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_472
	j	bp_label_474
bp_label_472:
	li	$t0,1
	j	bp_label_473
bp_label_474:
	li	$t0,0
bp_label_473:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_475
bp_label_475:
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
	bne $t0, $zero,bp_label_477
	j	bp_label_476
bp_label_476:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_477
	j	bp_label_479
bp_label_477:
	li	$t0,1
	j	bp_label_478
bp_label_479:
	li	$t0,0
bp_label_478:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_480
bp_label_480:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_482
	j	bp_label_481
bp_label_481:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_482
	j	bp_label_484
bp_label_482:
	li	$t0,1
	j	bp_label_483
bp_label_484:
	li	$t0,0
bp_label_483:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_485
bp_label_485:
	j	bp_label_486
bp_label_486:
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
	bne $t0, $zero,bp_label_487
	j	bp_label_489
bp_label_487:
	li	$t0,1
	j	bp_label_488
bp_label_489:
	li	$t0,0
bp_label_488:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_490
bp_label_490:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_492
	j	bp_label_491
bp_label_491:
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
	bne $t0, $zero,bp_label_492
	j	bp_label_494
bp_label_492:
	li	$t0,1
	j	bp_label_493
bp_label_494:
	li	$t0,0
bp_label_493:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_495
bp_label_495:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_497
	j	bp_label_496
bp_label_496:
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
	bne $t0, $zero,bp_label_497
	j	bp_label_499
bp_label_497:
	li	$t0,1
	j	bp_label_498
bp_label_499:
	li	$t0,0
bp_label_498:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_500
bp_label_500:
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
	bne $t0, $zero,bp_label_502
	j	bp_label_501
bp_label_501:
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
	bne $t0, $zero,bp_label_502
	j	bp_label_504
bp_label_502:
	li	$t0,1
	j	bp_label_503
bp_label_504:
	li	$t0,0
bp_label_503:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_505
bp_label_505:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_507
	j	bp_label_506
bp_label_506:
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
	bne $t0, $zero,bp_label_507
	j	bp_label_509
bp_label_507:
	li	$t0,1
	j	bp_label_508
bp_label_509:
	li	$t0,0
bp_label_508:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_510
bp_label_510:
	j	bp_label_511
bp_label_511:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_512
	j	bp_label_514
bp_label_512:
	li	$t0,1
	j	bp_label_513
bp_label_514:
	li	$t0,0
bp_label_513:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_515
bp_label_515:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_517
	j	bp_label_516
bp_label_516:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_517
	j	bp_label_519
bp_label_517:
	li	$t0,1
	j	bp_label_518
bp_label_519:
	li	$t0,0
bp_label_518:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_520
bp_label_520:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_522
	j	bp_label_521
bp_label_521:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_522
	j	bp_label_524
bp_label_522:
	li	$t0,1
	j	bp_label_523
bp_label_524:
	li	$t0,0
bp_label_523:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_525
bp_label_525:
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
	bne $t0, $zero,bp_label_527
	j	bp_label_526
bp_label_526:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_527
	j	bp_label_529
bp_label_527:
	li	$t0,1
	j	bp_label_528
bp_label_529:
	li	$t0,0
bp_label_528:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_530
bp_label_530:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_532
	j	bp_label_531
bp_label_531:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_532
	j	bp_label_534
bp_label_532:
	li	$t0,1
	j	bp_label_533
bp_label_534:
	li	$t0,0
bp_label_533:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_535
bp_label_535:
	li	$t0,3
	li	$t1,9
	mult	$t0,$t1
	mflo	$t0
	li	$t1,5
	subu	$t0,$t0,$t1
	li	$t1,18
	li	$t2,9
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	bgt $t0, $t1,bp_label_536
	j	bp_label_539
bp_label_536:
	li	$t0,2
	li	$t1,3
	mult	$t0,$t1
	mflo	$t0
	li	$t1,12
	li	$t2,2
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	beq $t0, $t1,bp_label_537
	j	bp_label_539
bp_label_537:
	li	$t0,1
	j	bp_label_538
bp_label_539:
	li	$t0,0
bp_label_538:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_540
bp_label_540:
	li	$t0,2
	li	$t1,3
	mult	$t0,$t1
	mflo	$t0
	li	$t1,12
	li	$t2,2
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	beq $t0, $t1,bp_label_541
	j	bp_label_544
bp_label_541:
	li	$t0,3
	li	$t1,9
	mult	$t0,$t1
	mflo	$t0
	li	$t1,5
	subu	$t0,$t0,$t1
	li	$t1,18
	li	$t2,9
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	bgt $t0, $t1,bp_label_542
	j	bp_label_544
bp_label_542:
	li	$t0,1
	j	bp_label_543
bp_label_544:
	li	$t0,0
bp_label_543:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_545
bp_label_545:
	li	$t0,3
	li	$t1,9
	mult	$t0,$t1
	mflo	$t0
	li	$t1,5
	subu	$t0,$t0,$t1
	li	$t1,18
	li	$t2,9
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	blt $t0, $t1,bp_label_547
	j	bp_label_546
bp_label_546:
	li	$t0,2
	li	$t1,3
	mult	$t0,$t1
	mflo	$t0
	li	$t1,12
	li	$t2,2
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	bne $t0, $t1,bp_label_547
	j	bp_label_549
bp_label_547:
	li	$t0,1
	j	bp_label_548
bp_label_549:
	li	$t0,0
bp_label_548:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_550
bp_label_550:
	li	$t0,2
	li	$t1,3
	mult	$t0,$t1
	mflo	$t0
	li	$t1,12
	li	$t2,2
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	bne $t0, $t1,bp_label_552
	j	bp_label_551
bp_label_551:
	li	$t0,3
	li	$t1,9
	mult	$t0,$t1
	mflo	$t0
	li	$t1,5
	subu	$t0,$t0,$t1
	li	$t1,18
	li	$t2,9
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	blt $t0, $t1,bp_label_552
	j	bp_label_554
bp_label_552:
	li	$t0,1
	j	bp_label_553
bp_label_554:
	li	$t0,0
bp_label_553:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_555
bp_label_555:
	j	bp_label_558
bp_label_556:
	li	$t0,1
	j	bp_label_557
bp_label_558:
	li	$t0,0
bp_label_557:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_559
bp_label_559:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_562
	j	bp_label_560
bp_label_560:
	li	$t0,1
	j	bp_label_561
bp_label_562:
	li	$t0,0
bp_label_561:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_563
bp_label_563:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_566
	j	bp_label_564
bp_label_564:
	li	$t0,1
	j	bp_label_565
bp_label_566:
	li	$t0,0
bp_label_565:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_567
bp_label_567:
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
	bne $t0, $zero,bp_label_570
	j	bp_label_568
bp_label_568:
	li	$t0,1
	j	bp_label_569
bp_label_570:
	li	$t0,0
bp_label_569:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_571
bp_label_571:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_574
	j	bp_label_572
bp_label_572:
	li	$t0,1
	j	bp_label_573
bp_label_574:
	li	$t0,0
bp_label_573:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_575
bp_label_575:
	j	bp_label_576
bp_label_576:
	li	$t0,1
	j	bp_label_577
bp_label_578:
	li	$t0,0
bp_label_577:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_579
bp_label_579:
	li	$t0,5
	li	$t1,4
	blt $t0, $t1,bp_label_582
	j	bp_label_580
bp_label_580:
	li	$t0,1
	j	bp_label_581
bp_label_582:
	li	$t0,0
bp_label_581:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_583
bp_label_583:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_586
	j	bp_label_584
bp_label_584:
	li	$t0,1
	j	bp_label_585
bp_label_586:
	li	$t0,0
bp_label_585:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_587
bp_label_587:
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
	bne $t0, $zero,bp_label_590
	j	bp_label_588
bp_label_588:
	li	$t0,1
	j	bp_label_589
bp_label_590:
	li	$t0,0
bp_label_589:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_591
bp_label_591:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_594
	j	bp_label_592
bp_label_592:
	li	$t0,1
	j	bp_label_593
bp_label_594:
	li	$t0,0
bp_label_593:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_595
bp_label_595:
	j	bp_label_596
bp_label_596:
	j	bp_label_597
bp_label_597:
	li	$t0,1
	j	bp_label_598
bp_label_599:
	li	$t0,0
bp_label_598:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_600
bp_label_600:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_601
	j	bp_label_602
bp_label_601:
	j	bp_label_602
bp_label_602:
	li	$t0,1
	j	bp_label_603
bp_label_604:
	li	$t0,0
bp_label_603:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_605
bp_label_605:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_606
	j	bp_label_607
bp_label_606:
	j	bp_label_607
bp_label_607:
	li	$t0,1
	j	bp_label_608
bp_label_609:
	li	$t0,0
bp_label_608:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_610
bp_label_610:
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
	bne $t0, $zero,bp_label_611
	j	bp_label_612
bp_label_611:
	j	bp_label_612
bp_label_612:
	li	$t0,1
	j	bp_label_613
bp_label_614:
	li	$t0,0
bp_label_613:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_615
bp_label_615:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_616
	j	bp_label_617
bp_label_616:
	j	bp_label_617
bp_label_617:
	li	$t0,1
	j	bp_label_618
bp_label_619:
	li	$t0,0
bp_label_618:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_620
bp_label_620:
	j	bp_label_621
bp_label_621:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_624
	j	bp_label_622
bp_label_622:
	li	$t0,1
	j	bp_label_623
bp_label_624:
	li	$t0,0
bp_label_623:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_625
bp_label_625:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_626
	j	bp_label_627
bp_label_626:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_629
	j	bp_label_627
bp_label_627:
	li	$t0,1
	j	bp_label_628
bp_label_629:
	li	$t0,0
bp_label_628:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_630
bp_label_630:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_631
	j	bp_label_632
bp_label_631:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_634
	j	bp_label_632
bp_label_632:
	li	$t0,1
	j	bp_label_633
bp_label_634:
	li	$t0,0
bp_label_633:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_635
bp_label_635:
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
	bne $t0, $zero,bp_label_636
	j	bp_label_637
bp_label_636:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_639
	j	bp_label_637
bp_label_637:
	li	$t0,1
	j	bp_label_638
bp_label_639:
	li	$t0,0
bp_label_638:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_640
bp_label_640:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_641
	j	bp_label_642
bp_label_641:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_644
	j	bp_label_642
bp_label_642:
	li	$t0,1
	j	bp_label_643
bp_label_644:
	li	$t0,0
bp_label_643:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_645
bp_label_645:
	j	bp_label_646
bp_label_646:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_649
	j	bp_label_647
bp_label_647:
	li	$t0,1
	j	bp_label_648
bp_label_649:
	li	$t0,0
bp_label_648:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_650
bp_label_650:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_651
	j	bp_label_652
bp_label_651:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_654
	j	bp_label_652
bp_label_652:
	li	$t0,1
	j	bp_label_653
bp_label_654:
	li	$t0,0
bp_label_653:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_655
bp_label_655:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_656
	j	bp_label_657
bp_label_656:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_659
	j	bp_label_657
bp_label_657:
	li	$t0,1
	j	bp_label_658
bp_label_659:
	li	$t0,0
bp_label_658:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_660
bp_label_660:
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
	bne $t0, $zero,bp_label_661
	j	bp_label_662
bp_label_661:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_664
	j	bp_label_662
bp_label_662:
	li	$t0,1
	j	bp_label_663
bp_label_664:
	li	$t0,0
bp_label_663:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_665
bp_label_665:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_666
	j	bp_label_667
bp_label_666:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_669
	j	bp_label_667
bp_label_667:
	li	$t0,1
	j	bp_label_668
bp_label_669:
	li	$t0,0
bp_label_668:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_670
bp_label_670:
	j	bp_label_671
bp_label_671:
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
	bne $t0, $zero,bp_label_674
	j	bp_label_672
bp_label_672:
	li	$t0,1
	j	bp_label_673
bp_label_674:
	li	$t0,0
bp_label_673:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_675
bp_label_675:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_676
	j	bp_label_677
bp_label_676:
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
	bne $t0, $zero,bp_label_679
	j	bp_label_677
bp_label_677:
	li	$t0,1
	j	bp_label_678
bp_label_679:
	li	$t0,0
bp_label_678:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_680
bp_label_680:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_681
	j	bp_label_682
bp_label_681:
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
	bne $t0, $zero,bp_label_684
	j	bp_label_682
bp_label_682:
	li	$t0,1
	j	bp_label_683
bp_label_684:
	li	$t0,0
bp_label_683:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_685
bp_label_685:
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
	bne $t0, $zero,bp_label_686
	j	bp_label_687
bp_label_686:
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
	bne $t0, $zero,bp_label_689
	j	bp_label_687
bp_label_687:
	li	$t0,1
	j	bp_label_688
bp_label_689:
	li	$t0,0
bp_label_688:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_690
bp_label_690:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_691
	j	bp_label_692
bp_label_691:
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
	bne $t0, $zero,bp_label_694
	j	bp_label_692
bp_label_692:
	li	$t0,1
	j	bp_label_693
bp_label_694:
	li	$t0,0
bp_label_693:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_695
bp_label_695:
	j	bp_label_696
bp_label_696:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_699
	j	bp_label_697
bp_label_697:
	li	$t0,1
	j	bp_label_698
bp_label_699:
	li	$t0,0
bp_label_698:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_700
bp_label_700:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_701
	j	bp_label_702
bp_label_701:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_704
	j	bp_label_702
bp_label_702:
	li	$t0,1
	j	bp_label_703
bp_label_704:
	li	$t0,0
bp_label_703:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_705
bp_label_705:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_706
	j	bp_label_707
bp_label_706:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_709
	j	bp_label_707
bp_label_707:
	li	$t0,1
	j	bp_label_708
bp_label_709:
	li	$t0,0
bp_label_708:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_710
bp_label_710:
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
	bne $t0, $zero,bp_label_711
	j	bp_label_712
bp_label_711:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_714
	j	bp_label_712
bp_label_712:
	li	$t0,1
	j	bp_label_713
bp_label_714:
	li	$t0,0
bp_label_713:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_715
bp_label_715:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_716
	j	bp_label_717
bp_label_716:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_719
	j	bp_label_717
bp_label_717:
	li	$t0,1
	j	bp_label_718
bp_label_719:
	li	$t0,0
bp_label_718:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_720
bp_label_720:
	j	bp_label_721
bp_label_721:
	j	bp_label_724
bp_label_722:
	li	$t0,1
	j	bp_label_723
bp_label_724:
	li	$t0,0
bp_label_723:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_725
bp_label_725:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_729
	j	bp_label_726
bp_label_726:
	j	bp_label_729
bp_label_727:
	li	$t0,1
	j	bp_label_728
bp_label_729:
	li	$t0,0
bp_label_728:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_730
bp_label_730:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_734
	j	bp_label_731
bp_label_731:
	j	bp_label_734
bp_label_732:
	li	$t0,1
	j	bp_label_733
bp_label_734:
	li	$t0,0
bp_label_733:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_735
bp_label_735:
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
	bne $t0, $zero,bp_label_739
	j	bp_label_736
bp_label_736:
	j	bp_label_739
bp_label_737:
	li	$t0,1
	j	bp_label_738
bp_label_739:
	li	$t0,0
bp_label_738:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_740
bp_label_740:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_744
	j	bp_label_741
bp_label_741:
	j	bp_label_744
bp_label_742:
	li	$t0,1
	j	bp_label_743
bp_label_744:
	li	$t0,0
bp_label_743:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_745
bp_label_745:
	j	bp_label_746
bp_label_746:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_749
	j	bp_label_747
bp_label_747:
	li	$t0,1
	j	bp_label_748
bp_label_749:
	li	$t0,0
bp_label_748:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_750
bp_label_750:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_754
	j	bp_label_751
bp_label_751:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_754
	j	bp_label_752
bp_label_752:
	li	$t0,1
	j	bp_label_753
bp_label_754:
	li	$t0,0
bp_label_753:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_755
bp_label_755:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_759
	j	bp_label_756
bp_label_756:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_759
	j	bp_label_757
bp_label_757:
	li	$t0,1
	j	bp_label_758
bp_label_759:
	li	$t0,0
bp_label_758:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_760
bp_label_760:
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
	bne $t0, $zero,bp_label_764
	j	bp_label_761
bp_label_761:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_764
	j	bp_label_762
bp_label_762:
	li	$t0,1
	j	bp_label_763
bp_label_764:
	li	$t0,0
bp_label_763:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_765
bp_label_765:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_769
	j	bp_label_766
bp_label_766:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_769
	j	bp_label_767
bp_label_767:
	li	$t0,1
	j	bp_label_768
bp_label_769:
	li	$t0,0
bp_label_768:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_770
bp_label_770:
	j	bp_label_771
bp_label_771:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_774
	j	bp_label_772
bp_label_772:
	li	$t0,1
	j	bp_label_773
bp_label_774:
	li	$t0,0
bp_label_773:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_775
bp_label_775:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_779
	j	bp_label_776
bp_label_776:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_779
	j	bp_label_777
bp_label_777:
	li	$t0,1
	j	bp_label_778
bp_label_779:
	li	$t0,0
bp_label_778:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_780
bp_label_780:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_784
	j	bp_label_781
bp_label_781:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_784
	j	bp_label_782
bp_label_782:
	li	$t0,1
	j	bp_label_783
bp_label_784:
	li	$t0,0
bp_label_783:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_785
bp_label_785:
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
	bne $t0, $zero,bp_label_789
	j	bp_label_786
bp_label_786:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_789
	j	bp_label_787
bp_label_787:
	li	$t0,1
	j	bp_label_788
bp_label_789:
	li	$t0,0
bp_label_788:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_790
bp_label_790:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_794
	j	bp_label_791
bp_label_791:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_794
	j	bp_label_792
bp_label_792:
	li	$t0,1
	j	bp_label_793
bp_label_794:
	li	$t0,0
bp_label_793:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_795
bp_label_795:
	j	bp_label_796
bp_label_796:
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
	bne $t0, $zero,bp_label_799
	j	bp_label_797
bp_label_797:
	li	$t0,1
	j	bp_label_798
bp_label_799:
	li	$t0,0
bp_label_798:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_800
bp_label_800:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_804
	j	bp_label_801
bp_label_801:
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
	bne $t0, $zero,bp_label_804
	j	bp_label_802
bp_label_802:
	li	$t0,1
	j	bp_label_803
bp_label_804:
	li	$t0,0
bp_label_803:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_805
bp_label_805:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_809
	j	bp_label_806
bp_label_806:
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
	bne $t0, $zero,bp_label_809
	j	bp_label_807
bp_label_807:
	li	$t0,1
	j	bp_label_808
bp_label_809:
	li	$t0,0
bp_label_808:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_810
bp_label_810:
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
	bne $t0, $zero,bp_label_814
	j	bp_label_811
bp_label_811:
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
	bne $t0, $zero,bp_label_814
	j	bp_label_812
bp_label_812:
	li	$t0,1
	j	bp_label_813
bp_label_814:
	li	$t0,0
bp_label_813:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_815
bp_label_815:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_819
	j	bp_label_816
bp_label_816:
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
	bne $t0, $zero,bp_label_819
	j	bp_label_817
bp_label_817:
	li	$t0,1
	j	bp_label_818
bp_label_819:
	li	$t0,0
bp_label_818:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_820
bp_label_820:
	j	bp_label_821
bp_label_821:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_824
	j	bp_label_822
bp_label_822:
	li	$t0,1
	j	bp_label_823
bp_label_824:
	li	$t0,0
bp_label_823:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_825
bp_label_825:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_829
	j	bp_label_826
bp_label_826:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_829
	j	bp_label_827
bp_label_827:
	li	$t0,1
	j	bp_label_828
bp_label_829:
	li	$t0,0
bp_label_828:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_830
bp_label_830:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_834
	j	bp_label_831
bp_label_831:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_834
	j	bp_label_832
bp_label_832:
	li	$t0,1
	j	bp_label_833
bp_label_834:
	li	$t0,0
bp_label_833:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_835
bp_label_835:
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
	bne $t0, $zero,bp_label_839
	j	bp_label_836
bp_label_836:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_839
	j	bp_label_837
bp_label_837:
	li	$t0,1
	j	bp_label_838
bp_label_839:
	li	$t0,0
bp_label_838:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_840
bp_label_840:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_844
	j	bp_label_841
bp_label_841:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_844
	j	bp_label_842
bp_label_842:
	li	$t0,1
	j	bp_label_843
bp_label_844:
	li	$t0,0
bp_label_843:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_845
bp_label_845:
	j	bp_label_846
bp_label_846:
	j	bp_label_849
bp_label_847:
	li	$t0,1
	j	bp_label_848
bp_label_849:
	li	$t0,0
bp_label_848:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_850
bp_label_850:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_851
	j	bp_label_852
bp_label_851:
	j	bp_label_854
bp_label_852:
	li	$t0,1
	j	bp_label_853
bp_label_854:
	li	$t0,0
bp_label_853:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_855
bp_label_855:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_856
	j	bp_label_857
bp_label_856:
	j	bp_label_859
bp_label_857:
	li	$t0,1
	j	bp_label_858
bp_label_859:
	li	$t0,0
bp_label_858:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_860
bp_label_860:
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
	bne $t0, $zero,bp_label_861
	j	bp_label_862
bp_label_861:
	j	bp_label_864
bp_label_862:
	li	$t0,1
	j	bp_label_863
bp_label_864:
	li	$t0,0
bp_label_863:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_865
bp_label_865:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_866
	j	bp_label_867
bp_label_866:
	j	bp_label_869
bp_label_867:
	li	$t0,1
	j	bp_label_868
bp_label_869:
	li	$t0,0
bp_label_868:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_870
bp_label_870:
	j	bp_label_871
bp_label_871:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_874
	j	bp_label_872
bp_label_872:
	li	$t0,1
	j	bp_label_873
bp_label_874:
	li	$t0,0
bp_label_873:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_875
bp_label_875:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_876
	j	bp_label_877
bp_label_876:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_879
	j	bp_label_877
bp_label_877:
	li	$t0,1
	j	bp_label_878
bp_label_879:
	li	$t0,0
bp_label_878:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_880
bp_label_880:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_881
	j	bp_label_882
bp_label_881:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_884
	j	bp_label_882
bp_label_882:
	li	$t0,1
	j	bp_label_883
bp_label_884:
	li	$t0,0
bp_label_883:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_885
bp_label_885:
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
	bne $t0, $zero,bp_label_886
	j	bp_label_887
bp_label_886:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_889
	j	bp_label_887
bp_label_887:
	li	$t0,1
	j	bp_label_888
bp_label_889:
	li	$t0,0
bp_label_888:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_890
bp_label_890:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_891
	j	bp_label_892
bp_label_891:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_894
	j	bp_label_892
bp_label_892:
	li	$t0,1
	j	bp_label_893
bp_label_894:
	li	$t0,0
bp_label_893:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_895
bp_label_895:
	j	bp_label_896
bp_label_896:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_899
	j	bp_label_897
bp_label_897:
	li	$t0,1
	j	bp_label_898
bp_label_899:
	li	$t0,0
bp_label_898:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_900
bp_label_900:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_901
	j	bp_label_902
bp_label_901:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_904
	j	bp_label_902
bp_label_902:
	li	$t0,1
	j	bp_label_903
bp_label_904:
	li	$t0,0
bp_label_903:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_905
bp_label_905:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_906
	j	bp_label_907
bp_label_906:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_909
	j	bp_label_907
bp_label_907:
	li	$t0,1
	j	bp_label_908
bp_label_909:
	li	$t0,0
bp_label_908:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_910
bp_label_910:
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
	bne $t0, $zero,bp_label_911
	j	bp_label_912
bp_label_911:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_914
	j	bp_label_912
bp_label_912:
	li	$t0,1
	j	bp_label_913
bp_label_914:
	li	$t0,0
bp_label_913:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_915
bp_label_915:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_916
	j	bp_label_917
bp_label_916:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_919
	j	bp_label_917
bp_label_917:
	li	$t0,1
	j	bp_label_918
bp_label_919:
	li	$t0,0
bp_label_918:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_920
bp_label_920:
	j	bp_label_921
bp_label_921:
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
	bne $t0, $zero,bp_label_924
	j	bp_label_922
bp_label_922:
	li	$t0,1
	j	bp_label_923
bp_label_924:
	li	$t0,0
bp_label_923:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_925
bp_label_925:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_926
	j	bp_label_927
bp_label_926:
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
	bne $t0, $zero,bp_label_929
	j	bp_label_927
bp_label_927:
	li	$t0,1
	j	bp_label_928
bp_label_929:
	li	$t0,0
bp_label_928:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_930
bp_label_930:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_931
	j	bp_label_932
bp_label_931:
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
	bne $t0, $zero,bp_label_934
	j	bp_label_932
bp_label_932:
	li	$t0,1
	j	bp_label_933
bp_label_934:
	li	$t0,0
bp_label_933:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_935
bp_label_935:
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
	bne $t0, $zero,bp_label_936
	j	bp_label_937
bp_label_936:
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
	bne $t0, $zero,bp_label_939
	j	bp_label_937
bp_label_937:
	li	$t0,1
	j	bp_label_938
bp_label_939:
	li	$t0,0
bp_label_938:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_940
bp_label_940:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_941
	j	bp_label_942
bp_label_941:
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
	bne $t0, $zero,bp_label_944
	j	bp_label_942
bp_label_942:
	li	$t0,1
	j	bp_label_943
bp_label_944:
	li	$t0,0
bp_label_943:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_945
bp_label_945:
	j	bp_label_946
bp_label_946:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_949
	j	bp_label_947
bp_label_947:
	li	$t0,1
	j	bp_label_948
bp_label_949:
	li	$t0,0
bp_label_948:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_950
bp_label_950:
	li	$t0,4
	li	$t1,5
	blt $t0, $t1,bp_label_951
	j	bp_label_952
bp_label_951:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_954
	j	bp_label_952
bp_label_952:
	li	$t0,1
	j	bp_label_953
bp_label_954:
	li	$t0,0
bp_label_953:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_955
bp_label_955:
	li	$t0,4
	li	$t1,4
	beq $t0, $t1,bp_label_956
	j	bp_label_957
bp_label_956:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_959
	j	bp_label_957
bp_label_957:
	li	$t0,1
	j	bp_label_958
bp_label_959:
	li	$t0,0
bp_label_958:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_960
bp_label_960:
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
	bne $t0, $zero,bp_label_961
	j	bp_label_962
bp_label_961:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_964
	j	bp_label_962
bp_label_962:
	li	$t0,1
	j	bp_label_963
bp_label_964:
	li	$t0,0
bp_label_963:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_965
bp_label_965:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_966
	j	bp_label_967
bp_label_966:
	lw $t0, ($fp)
	bne $t0, $zero,bp_label_969
	j	bp_label_967
bp_label_967:
	li	$t0,1
	j	bp_label_968
bp_label_969:
	li	$t0,0
bp_label_968:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_970
bp_label_970:
	j	bp_label_971
bp_label_971:
	j	bp_label_972
bp_label_972:
	li	$t0,1
	j	bp_label_973
bp_label_974:
	li	$t0,0
bp_label_973:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_975
bp_label_975:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_979
	j	bp_label_976
bp_label_976:
	j	bp_label_977
bp_label_977:
	li	$t0,1
	j	bp_label_978
bp_label_979:
	li	$t0,0
bp_label_978:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_980
bp_label_980:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_984
	j	bp_label_981
bp_label_981:
	j	bp_label_982
bp_label_982:
	li	$t0,1
	j	bp_label_983
bp_label_984:
	li	$t0,0
bp_label_983:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_985
bp_label_985:
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
	bne $t0, $zero,bp_label_989
	j	bp_label_986
bp_label_986:
	j	bp_label_987
bp_label_987:
	li	$t0,1
	j	bp_label_988
bp_label_989:
	li	$t0,0
bp_label_988:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_990
bp_label_990:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_994
	j	bp_label_991
bp_label_991:
	j	bp_label_992
bp_label_992:
	li	$t0,1
	j	bp_label_993
bp_label_994:
	li	$t0,0
bp_label_993:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_995
bp_label_995:
	j	bp_label_996
bp_label_996:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_999
	j	bp_label_997
bp_label_997:
	li	$t0,1
	j	bp_label_998
bp_label_999:
	li	$t0,0
bp_label_998:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1000
bp_label_1000:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_1004
	j	bp_label_1001
bp_label_1001:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_1004
	j	bp_label_1002
bp_label_1002:
	li	$t0,1
	j	bp_label_1003
bp_label_1004:
	li	$t0,0
bp_label_1003:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1005
bp_label_1005:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_1009
	j	bp_label_1006
bp_label_1006:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_1009
	j	bp_label_1007
bp_label_1007:
	li	$t0,1
	j	bp_label_1008
bp_label_1009:
	li	$t0,0
bp_label_1008:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1010
bp_label_1010:
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
	bne $t0, $zero,bp_label_1014
	j	bp_label_1011
bp_label_1011:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_1014
	j	bp_label_1012
bp_label_1012:
	li	$t0,1
	j	bp_label_1013
bp_label_1014:
	li	$t0,0
bp_label_1013:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1015
bp_label_1015:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_1019
	j	bp_label_1016
bp_label_1016:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_1019
	j	bp_label_1017
bp_label_1017:
	li	$t0,1
	j	bp_label_1018
bp_label_1019:
	li	$t0,0
bp_label_1018:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1020
bp_label_1020:
	j	bp_label_1021
bp_label_1021:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_1024
	j	bp_label_1022
bp_label_1022:
	li	$t0,1
	j	bp_label_1023
bp_label_1024:
	li	$t0,0
bp_label_1023:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1025
bp_label_1025:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_1029
	j	bp_label_1026
bp_label_1026:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_1029
	j	bp_label_1027
bp_label_1027:
	li	$t0,1
	j	bp_label_1028
bp_label_1029:
	li	$t0,0
bp_label_1028:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1030
bp_label_1030:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_1034
	j	bp_label_1031
bp_label_1031:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_1034
	j	bp_label_1032
bp_label_1032:
	li	$t0,1
	j	bp_label_1033
bp_label_1034:
	li	$t0,0
bp_label_1033:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1035
bp_label_1035:
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
	bne $t0, $zero,bp_label_1039
	j	bp_label_1036
bp_label_1036:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_1039
	j	bp_label_1037
bp_label_1037:
	li	$t0,1
	j	bp_label_1038
bp_label_1039:
	li	$t0,0
bp_label_1038:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1040
bp_label_1040:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_1044
	j	bp_label_1041
bp_label_1041:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_1044
	j	bp_label_1042
bp_label_1042:
	li	$t0,1
	j	bp_label_1043
bp_label_1044:
	li	$t0,0
bp_label_1043:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1045
bp_label_1045:
	j	bp_label_1046
bp_label_1046:
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
	bne $t0, $zero,bp_label_1049
	j	bp_label_1047
bp_label_1047:
	li	$t0,1
	j	bp_label_1048
bp_label_1049:
	li	$t0,0
bp_label_1048:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1050
bp_label_1050:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_1054
	j	bp_label_1051
bp_label_1051:
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
	bne $t0, $zero,bp_label_1054
	j	bp_label_1052
bp_label_1052:
	li	$t0,1
	j	bp_label_1053
bp_label_1054:
	li	$t0,0
bp_label_1053:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1055
bp_label_1055:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_1059
	j	bp_label_1056
bp_label_1056:
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
	bne $t0, $zero,bp_label_1059
	j	bp_label_1057
bp_label_1057:
	li	$t0,1
	j	bp_label_1058
bp_label_1059:
	li	$t0,0
bp_label_1058:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1060
bp_label_1060:
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
	bne $t0, $zero,bp_label_1064
	j	bp_label_1061
bp_label_1061:
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
	bne $t0, $zero,bp_label_1064
	j	bp_label_1062
bp_label_1062:
	li	$t0,1
	j	bp_label_1063
bp_label_1064:
	li	$t0,0
bp_label_1063:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1065
bp_label_1065:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_1069
	j	bp_label_1066
bp_label_1066:
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
	bne $t0, $zero,bp_label_1069
	j	bp_label_1067
bp_label_1067:
	li	$t0,1
	j	bp_label_1068
bp_label_1069:
	li	$t0,0
bp_label_1068:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1070
bp_label_1070:
	j	bp_label_1071
bp_label_1071:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_1074
	j	bp_label_1072
bp_label_1072:
	li	$t0,1
	j	bp_label_1073
bp_label_1074:
	li	$t0,0
bp_label_1073:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1075
bp_label_1075:
	li	$t0,4
	li	$t1,5
	bgt $t0, $t1,bp_label_1079
	j	bp_label_1076
bp_label_1076:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_1079
	j	bp_label_1077
bp_label_1077:
	li	$t0,1
	j	bp_label_1078
bp_label_1079:
	li	$t0,0
bp_label_1078:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1080
bp_label_1080:
	li	$t0,4
	li	$t1,4
	bne $t0, $t1,bp_label_1084
	j	bp_label_1081
bp_label_1081:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_1084
	j	bp_label_1082
bp_label_1082:
	li	$t0,1
	j	bp_label_1083
bp_label_1084:
	li	$t0,0
bp_label_1083:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1085
bp_label_1085:
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
	bne $t0, $zero,bp_label_1089
	j	bp_label_1086
bp_label_1086:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_1089
	j	bp_label_1087
bp_label_1087:
	li	$t0,1
	j	bp_label_1088
bp_label_1089:
	li	$t0,0
bp_label_1088:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1090
bp_label_1090:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_1094
	j	bp_label_1091
bp_label_1091:
	lw $t0, -4($fp)
	bne $t0, $zero,bp_label_1094
	j	bp_label_1092
bp_label_1092:
	li	$t0,1
	j	bp_label_1093
bp_label_1094:
	li	$t0,0
bp_label_1093:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1095
bp_label_1095:
	li	$t0,3
	li	$t1,9
	mult	$t0,$t1
	mflo	$t0
	li	$t1,5
	subu	$t0,$t0,$t1
	li	$t1,18
	li	$t2,9
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	bgt $t0, $t1,bp_label_1096
	j	bp_label_1097
bp_label_1096:
	li	$t0,2
	li	$t1,3
	mult	$t0,$t1
	mflo	$t0
	li	$t1,12
	li	$t2,2
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	beq $t0, $t1,bp_label_1099
	j	bp_label_1097
bp_label_1097:
	li	$t0,1
	j	bp_label_1098
bp_label_1099:
	li	$t0,0
bp_label_1098:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1100
bp_label_1100:
	li	$t0,2
	li	$t1,3
	mult	$t0,$t1
	mflo	$t0
	li	$t1,12
	li	$t2,2
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	beq $t0, $t1,bp_label_1101
	j	bp_label_1102
bp_label_1101:
	li	$t0,3
	li	$t1,9
	mult	$t0,$t1
	mflo	$t0
	li	$t1,5
	subu	$t0,$t0,$t1
	li	$t1,18
	li	$t2,9
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	bgt $t0, $t1,bp_label_1104
	j	bp_label_1102
bp_label_1102:
	li	$t0,1
	j	bp_label_1103
bp_label_1104:
	li	$t0,0
bp_label_1103:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1105
bp_label_1105:
	li	$t0,3
	li	$t1,9
	mult	$t0,$t1
	mflo	$t0
	li	$t1,5
	subu	$t0,$t0,$t1
	li	$t1,18
	li	$t2,9
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	blt $t0, $t1,bp_label_1109
	j	bp_label_1106
bp_label_1106:
	li	$t0,2
	li	$t1,3
	mult	$t0,$t1
	mflo	$t0
	li	$t1,12
	li	$t2,2
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	bne $t0, $t1,bp_label_1109
	j	bp_label_1107
bp_label_1107:
	li	$t0,1
	j	bp_label_1108
bp_label_1109:
	li	$t0,0
bp_label_1108:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1110
bp_label_1110:
	li	$t0,2
	li	$t1,3
	mult	$t0,$t1
	mflo	$t0
	li	$t1,12
	li	$t2,2
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	bne $t0, $t1,bp_label_1114
	j	bp_label_1111
bp_label_1111:
	li	$t0,3
	li	$t1,9
	mult	$t0,$t1
	mflo	$t0
	li	$t1,5
	subu	$t0,$t0,$t1
	li	$t1,18
	li	$t2,9
	beq	$t2,$zero,nayalo
	div	$t1,$t2
	mflo	$t1
	blt $t0, $t1,bp_label_1114
	j	bp_label_1112
bp_label_1112:
	li	$t0,1
	j	bp_label_1113
bp_label_1114:
	li	$t0,0
bp_label_1113:
	sw $fp, ($sp)
	addiu $sp, $sp, -4
	sw $ra, ($sp)
	addiu $sp, $sp, -4
	sw $t0, ($sp)
	addiu $sp, $sp, -4
	move	$fp,$sp
	jal	label_21
	addiu $sp, $sp, 4
	addiu $sp, $sp, 4
	lw $ra, ($sp)
	addiu $sp, $sp, 4
	lw $fp, ($sp)
	move	$t0,$v0
	j	bp_label_1115
bp_label_1115:
	move	$sp,$fp
	move	$v0,$zero
	jr	$ra
