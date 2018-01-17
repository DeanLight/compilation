#!/bin/bash




function get_infile_array {
	dir=${1}
  array=($(find $dir | grep .in$ | rev | cut -d'.' -f2- | rev | sort))  # removes the in suffix

	echo $array

}


function do_test {

  executable=$1
	tests_folder=$2

  #gets the names of all files in tests_folder with suffix .in , removes the '.in'
  infile_arr=($(get_infile_array $tests_folder))


	for i in $infile_arr ; do
    echo checking ${i}.in

    touch ${i}.myout ${i}.Serr ${i}.s ${i}.Cerr

		echo "./${executable} < ${i}.in >! ${i}.s  2>! ${i}.Cerr"
    ./${executable} < ${i}.in > ${i}.s  2> ${i}.Cerr
    echo cating ${i}.s

    echo "./spim -file ${i}.s | tee >( grep -E "^@@@" >! ${i}.Serr ) | grep -v -E "^@@@" >! ${i}.myout"
    ./spim -file ${i}.s | tee >( grep -E "^@@@" > ${i}.Serr ) | grep -v -E "^@@@" > ${i}.myout

		if cmp ${i}.out ${i}.myout
		then
			echo ${i} passed tests
			rm -f ${i}.myout ${i}.Cerr ${i}.Serr ${i}_mips.s
      echo
		else
			echo ${i} failed tests
			echo
      #subl -n ${i}.myout ${i}.Cerr ${i}.Serr ${i}_mips.s
      break
		fi ;
	done

	rm hw3

}

echo cleaning up
make clean

echo building objects

make && do_test  $1 $2
