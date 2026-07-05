#!/bin/bash

read -p "enter two number, a dividend & divisor: " divi  num

if (( num != 0 )); then
	res=$(( divi / num ))
	echo "result = $res "
else 
	echo "error: cannot divided by zero"
fi
