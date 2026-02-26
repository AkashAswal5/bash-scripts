#!/bin/bash

read -p "Enter a number to calculate its factorial: " number

fact=1;
#   for (( i =1; i<=number ; i++)); do
#     ((fact=fact *i))
#   done
tempnumber=$number
while [ $tempnumber -gt 0 ];do
  ((fact=fact*tempnumber))
  ((tempnumber--))
done

echo "Factorial of $number is $fact"
