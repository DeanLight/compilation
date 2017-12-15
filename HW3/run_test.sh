#!/bin/bash




function get_infile_array {
	dir=${1}
	array=`find $dir | grep .in$ | rev | cut -d'.' -f2- | rev | sort  ` # removes the in suffix

	echo $array

}


function do_test {

	tests_folder=$1


    infile_arr=$(get_infile_array $tests_folder)


	for i in $infile_arr ; do
        echo checking ${i}.in 
		touch  ${i}.myout  
		./hw3 < ${i}.in > ${i}.myout  2>${i}.err 
        echo run it
		if cmp ${i}.out ${i}.myout 
		then
			echo ${i} passed tests
			rm ${i}.myout ${i}.err
		else
			echo ${i} failed tests
			echo 
			diff ${i}.out ${i}.myout
            break
			echo	
		fi ;
	done 

	rm hw3

}

echo cleaning up 
make clean

echo building objects

make && do_test  $1
