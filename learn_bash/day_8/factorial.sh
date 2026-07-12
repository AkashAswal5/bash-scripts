#!/bin/bash

# Recursive Functions with Base Cases: Write a recursive function factorial that calculates the factorial of a number passed as $1. The function should call itself. Ensure it returns exit status 0 for valid input and exit status 1 if the input is negative or non-numeric (check before recursing).

factorial(){
	local num="$1"
	if [[ "$num" -lt 1 ]]; then
		echo 1
		return 0
	fi	

	local prev=$((num-1))
	local recur
	recur=$(factorial "$prev")
	echo "$((num * recur))"
	return 0
}

read -p "Enter a number to find it's factorial: " num
factorial "$num"
