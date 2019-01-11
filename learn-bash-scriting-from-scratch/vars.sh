#!/bin/bash

var_a=2
var_b=10
var_c="a string"

printf "var_a: $var_a\n"
printf "var_b: $var_b\n"
printf "var_c: $var_c\n"

let var_sum=var_a+var_b
printf "var_sum: $var_sum\n"

((var_a = var_a + 1))

var_multi=$((var_a*var_b))
printf "var multi: $var_multi\n"

var_long_string=${var_c}" cont"
printf "var_long_string: $var_long_string\n"


var_d=1.34
var_e=7.78
var_floating=$(echo $var_d+$var_e | bc -l)

printf "var_floating: $var_floating\n"

