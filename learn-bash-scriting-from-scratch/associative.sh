#!/bin/bash

declare -A days_in_month
days_in_month[june]=30
days_in_month[july]=31

echo "June has ${days_in_month[june]} days"
echo "July has ${days_in_month[july]} days"

for item in "item 1" "item 2" "item 3"
do
	echo $item
done

declare -A nato_alphabet

nato_alphabet[a]="alpha"
nato_alphabet[b]="bravo"
nato_alphabet[c]="charlie"
nato_alphabet[d]="delta"
nato_alphabet[e]="echo"
nato_alphabet[f]="foxtrot"

for element in ${nato_alphabet[@]}
do
	echo $element
done

for letter in ${!nato_alphabet[@]}
do
	echo "${letter}: ${nato_alphabet[$letter]}"
done

echo "The nato_alphabet array length is ${#nato_alphabet[@]}"


