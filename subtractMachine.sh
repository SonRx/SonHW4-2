#!/bin/bash
# Richard Son

function subtractMachine(){
	if [ $1 -gt $2 ] # paramter 1 greater than parameter 2?
	 then		# using -ge results in return 0. so dont use. 
		difference=$(($1-$2)) 
	        echo $difference	# print the difference
	 elif [ $2 -gt $1 ] # parameter 2 greater than parameter 1?
	  then
		difference=$(($2-$1))
		echo $difference	# print the difference
	 else
		echo zero	# paramter 1 = paramter 2
	fi	

	while [ "$difference" -ge 1 ] # while the difference is greater than or equal to one do the loop.
	do
		echo count down: $difference
		((difference=difference-1)) # decrement by one.
	done
}

echo
echo First arg is $1.
echo Second arg is $2.
echo
subtractMachine $1 $2
echo

