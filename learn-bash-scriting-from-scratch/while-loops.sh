#!/bin/bash

# While Loops

flag=0

while [ $flag -le 10 ]
do
	echo "Flag value is now $flag"
	let flag++
	
	if [[ $(($flag%2)) -eq 0 ]]; then
		printf "\tflag is even\n"
	else
		continue
	fi
done

