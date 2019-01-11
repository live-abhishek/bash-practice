#!/bin/bash

my_var=0

if [ $my_var -lt 10 ] && [ $my_var -gt 1 ]; then
	echo "my_var is less than 10 and greater than 1"
elif [ $my_var -gt 20 ]; then
	echo "my_var is greater than 20"
else
	echo "my_var is less than 1"
fi

