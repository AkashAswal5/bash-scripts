#!/bin/bash

# count form 1 to 5
for i in {1..5}; do
	echo "number: $i"
done

echo -e "\n"
# count by 2 (1,3,5)
for i in {1..5..2};  do
	echo "Number: $i"
done

echo -e "\n"
# C Style for loop
for (( i=0; i<5; i++ )); do
	echo "num: $i"
done

echo -e "\n"
# Array Iteration
words=("Hey" "Hello" "hi" "hiiii" "4370")
for i in "${words[@]}"; do
	echo "output: $i "
done
