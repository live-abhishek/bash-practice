#!/bin/bash

my_var="0123456789"

echo "String '${my_var}' length is ${#my_var}"
echo "Substring of $my_var starting from position 4+1: ${my_var:4}"
echo "Substring of $my_var starting from position 0+1: ${my_var:0}"
echo "Substring of $my_var of length 3 starting from position 2+1: ${my_var:2:3}"

echo "Strip the 012 characters if you find them at the beginning: ${my_var#012}"
echo "Strip 6789 if you find them at the end ${my_var%6789}"


name="Dan"
echo "My name is ${name/Dan/Coyote} Smith"
echo "My name is ${name/[0-9][0-9][0-9]/Con} Smith"
echo "My name is ${name/[a-z][a-z][a-z]/Kaede} Smith"

longstring="This this this is a long string"
echo "Long string: $longstring"
echo "Long string almost fixed: ${longstring/this /}"
echo "Long string fixed: ${longstring//this /}"

echo "Replacing the start of the string with nothing: ${longstring/#This this this is /}"
echo "Replacing the end of the string with nothing: ${longstring/%string/}"


