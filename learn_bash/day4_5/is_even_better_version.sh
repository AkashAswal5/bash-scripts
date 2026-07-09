#!/bin/bash

# Conditional Logic: Write a function is_even that takes a number as an argument. It should return 0 if the number is even and 1 if it is odd. Use this function in a script to print "Even" or "Odd".

is_even() {
    (( $1 % 2 == 0 ))
}

read -p "Enter a number: " num

if is_even "$num" ; then
    echo "$num Number is even"
else 
    echo "$num is odd"
fi

