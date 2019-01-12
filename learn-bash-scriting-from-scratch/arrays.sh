#!/bin/bash

my_array=(1 240 "item3")

printf "Printing array elements individually:\n"
printf "${my_array[0]}, ${my_array[1]}, ${my_array[2]}\n"

printf "Entire array contents: ${my_array[*]}\n\n"

printf "Iterating through an array with the for loop:\n"
for item in ${my_array[@]}
do
	echo $item
done

printf "\n"

printf "Storing even numbers up to 2000 in an array":
temp=0
while [ $temp -le 2000 ]
do
	even_array+=($temp)
	let temp+=2
done

printf "Done\n\n"


printf "my_array length is ${#my_array[@]}\n"
printf "even_array length is ${#even_array[@]}\n"

printf "Printing the numbers stored in the even_array by referencing its length:\n"
temp=0
while [ $temp -le ${#even_array[@]} ]
do
	echo ${even_array[$temp]}
	let temp++
done

printf "\n"

printf "Referencing the index of the array:\n"
for index in ${!even_array[@]}
do
	echo "Index $index, element: ${even_array[$index]}"
done

