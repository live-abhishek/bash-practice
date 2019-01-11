#!/bin/bash

function add {
	let local result=$1+$2
	printf "$1 + $2 equals $result\n"
}

function multiply {
	let local result=$1*$2
	printf "$1 * $2 equals $result\n"
}

function subtract {
	let local result=$1-$2
	printf "$1 - $2 equals $result\n"
}

function divide {
	let local result=$1/$2
	printf "$1 / $2 equals $result\n"
}


if [ "$1" == "add" ]; then
 	add $2 $3
elif [ "$1" == "mul" ]; then
	multiply $2 $3
elif [ "$1" == "sub" ]; then
	subtract $2 $3
elif [ "$1" == "divide" ]; then
	divide $2 $3
elif [ "$1" == "--help" ] || [ "$1" == "-h" ] || [ "$1" == "--h" ]; then
	printf "Usage: \n"
	printf "./functions.sh [add|mul|sub|divide] <arg1> <arg2>"
	printf "\n"
else
	printf "Type ./functions.sh --help for usage.\n"
	exit 1
fi

