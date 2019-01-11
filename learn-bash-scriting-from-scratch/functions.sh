#!/bin/bash

function print_hello {
	printf "Hello $1$2\n"
}

#print_hello $1 $2
#echo $0

function sum {
	let local res=$1+$2;
	printf "$1 + $2 equals $res\n";
}

sum $1 $2

