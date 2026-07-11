#!/bin/bash

#Recursive Functions with Base Cases: Write a recursive function factorial that calculates the factorial of a number passed as $1. The function should call itself. Ensure it returns exit status 0 for valid input and exit status 1 if the input is negative or non-numeric (check before recursing).

factorial() {
	local num="$1"

# base case: factorial of 0 or 1 is 1
if [[ "$num" -lt 1 ]]; then
	echo 1
	return 0 # exit status for valid input
fi

# Recursive steps
local prev=$((num-1))
local sub_result
sub_result=$(factorial "$prev")

# check if recursive call failed (propagate error if any)	
if [[ $? -ne 0 ]]; then
	return 1;
fi

echo $((num * sub_result))
return 0
}

read -p "Enter a number to calculate it's factorial: " num
factorial "$num"
status=$?
if [[ $status -ne 0 ]]; then 
	echo "invalid input"
else
# result is alrady printed by the function
	exit 0
fi
