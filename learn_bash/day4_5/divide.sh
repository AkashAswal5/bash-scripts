#!/bin/bash

# Error Handling: Define a function safe_divide that takes two numbers. If the second number is zero, print an error message and return exit status 1. Otherwise, print the result of the division and return 0.

safe_divide() {
local num=$1
local div=$2

if [[ $div -eq 0 ]]; then 
	echo "error while dividing"
	return 1
else 
	echo "result: $((num / div))"
	return 0
fi
}

read -p "enter two number dividend and divisor : " num div
safe_divide $num $div
 
# check the function's exit status
if [[ $? -eq 0 ]]; then
	echo "division successful."
else 
	echo "Division failed."
fi
