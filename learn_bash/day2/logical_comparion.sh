#!/bin/bash

read -p "Hey, user enter a number to find, if the number you enter is Postive, negative, or zero : " num

# problem my program can't parse the floating point numeber 
# Soution: The bc command can perform floating-point comparisons. You pipe the comparison expression to bc, which returns 1 for true and 0 for false.


if (( num > 0 )) ; then
	echo " $num is positive"
elif (( num < 0 )) ; then
	echo "$num if negative"
else 
	echo "hey, did you enter 0 "
fi
