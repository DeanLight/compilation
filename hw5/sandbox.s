
	.data

var1:	.byte	'h','e','l','p'	# testing some stuff out
abc:	.word 	2013
var2:	.word 70







	.text
main:
	lw $t0, abc
	lw $t1, var1
	lw $t2, var2


