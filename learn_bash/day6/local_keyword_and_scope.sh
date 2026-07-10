#!/bin/bash

# The local Keyword and Scope: Create a function counter that uses a local variable initialized to 0. Every time the function is called, it should increment this variable and print the current count. Challenge: Explain why the count resets on every call if local is used, and modify the function (removing local) to maintain the count across calls using a global variable.

count=0  # global function
counter() {
	count=$(( count + 1 ))
	echo "Current count: $count"
}
read -p "Enter a number of time to call the counter function: " num
# for i in {{1..$num}}; do
for i in $(seq 1 $num); do
	counter 
done

echo "Final count: $count"
