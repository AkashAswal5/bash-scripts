#!/bin/bash

read -p "enter number for buzz checker: " num

if (( num % 5 == 0 )) ; then
	echo "BUZZ";
else 
	echo "did you enter $num"
fi
