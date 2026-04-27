#!/bin/bash

<< logicaland

read -p "Enter a number: " num;

# if [[ $num -ge 50 ]] && [[ $num -le 100 ]]
# if [[ $num -ge 50 && $num -le 100 ]]
if [ $num -ge 50 -a $num -le 100 ]
then 
  echo "number is within the range"
else
  echo "$num is not within the range"
fi

logicaland

## Logical OR operator

read -p "this is a simple example for logical OR operator enter yes or no: " inpu;

# if [[ "$inpu" =  "yes" ]] || [[ "$inpu" = "y" ]]
# if [[ "$inpu" = "yes" || "$inpu" = "y" ]]
# if [[ $inpu = yes || $inpu = y ]]
# if [ "$inpu" = "yes" -o "$inpu" = "y" ]
# if [[ $inpu = yes || $inpu = y ]]
# if [ $inpu = yes || $inpu = y ]
if [[ $input =~ "y|yes" ]]
then
  echo "you enter yes"
else 
  echo "you don't enter yes"
fi


