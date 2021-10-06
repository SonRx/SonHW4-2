#!/bin/bash
# Richard Son

function subtractMachine(){
	if [ $1 -gt $2 ] # using -ge results in return 0. so dont use. 
	 then
		difference=$(($1-$2))
	        echo $difference	
	 elif [ $2 -gt $1 ]
	  then
		difference=$(($2-$1))
		echo $difference
	 else
		echo zero
	fi	

	while [ "$difference" -ge 1 ] # greater than or equal to one.
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

