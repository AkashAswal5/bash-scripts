#!/bin/bash

# use if statement

#num=15
#if [ $num -gt 10 ]; then
#    echo "Number is greater than 10"
#else
#     echo "Number is less than 10"
#fi
#
#echo "end of program"

# # Elif If statements

#   echo "Start of program"
#   
#   read -p "Enter a number: " nums
#   
#   if [ $nums -gt 100 ]; then
#       echo "Number is greater than 100"
#   elif [ $nums -lt 100 ]; then
#       echo "Number is less than 100"
#   else
#       echo -e "\n haha not enter a number \n"
#   fi
#   
#   echo -e "End of program \n"

# #      Nested if condition
# lnum=5
# if [ $lnum -gt 0 ]; then
#     if [ $lnum -lt 20 ]; then
#         echo "Number is between 1 & 19"
#     fi
# fi
# echo "End of program"   

# # once more --> nested if condition

#pnum=23
#if [ $pnum -lt 100 ]; then
#    if [ $pnum -gt 10 ]; then
#        echo " number is between 10 & 100"
#    fi
#fi
#
#echo -e "\n End of program"
#


# # testing for loop --> Bash
#for i in {1..10}; do
#    echo "number: $i"
#done

# # while loop --> lets go boys 

#count=5
#while [ $count -gt 0 ]; do
#    echo "count: $count"
#    ((count--))
#done
#

## Break & Continue
#for i in {1..10}; do
#    if [ $i -eq 3 ]; then
#        continue
#    fi
#    echo "number is: $i"
#    if [ $i -eq 5 ]; then
#        break
#    fi
#done
#
# Expected output: 1 2 4 5

# # nested for loop

# for i in {1..3}; do
#     for j in {1..2}; do
#         echo "Outer $i, inner $j"
#    done
#done



