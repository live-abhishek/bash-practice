#!/bin/bash

# For Loops

for item in {1..10..3}
do
	echo "Item: $item"
done

for (( i=1; i<=10; i++ ));
do
	echo $i
done

