#!/bin/bash


function compile {
	
	flex $1
	gcc -ll lex.yy.c

	chmod 750 a.out # need to know what the object name is

}


function get_infile_array {
	dir=${1}
	array=`find $dir | grep .in$ | rev | cut -d'.' -f2- | rev | sort  ` # removes the in suffix

	echo $array

}


function do_test {

	lex_source=$1
	tests_folder=$2

	compile $lex_source

    infile_arr=$(get_infile_array $tests_folder)


	for i in $infile_arr ; do
        echo checking ${i}.in 
		./a.out < ${i}.in > ${i}.myout 
        echo run it
		if cmp ${i}.out ${i}.myout 
		then
			echo ${i} passed tests
			rm ${i}.myout
		else
			echo ${i} failed tests
			echo 
			diff ${i}.out ${i}.myout
            break
			echo	
		fi ;
	done 

	rm a.out

}


do_test hw1.lex ./tests
