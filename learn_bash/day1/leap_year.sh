#!/bin/bash

# Question: Write a single if statement using (( )) that checks if a variable year is a leap year. Rule: A year is a leap year if it is divisible by 4, EXCEPT if it is divisible by 100 but NOT by 400.

read -p "Enter year, we will check if it is leap year or not: " year
if (( $year % 4 == 0 )); then
    if (( $year % 400 == 0 )) ; then
      echo "leap year" 
    else if (( $
      echo "not leap year"
    fi
else
  	echo "not leap year"
fi

read -p "Enter year, we will check if it is leap year or not: " year
if (( $year % 4 == 0 )); then
    if (( $year % 100 == 0 && $year %400 ==0 )) ; then
      echo "leap year" 
    else
      echo "not leap year"
    fi
else
  	echo "not leap year"
fi



