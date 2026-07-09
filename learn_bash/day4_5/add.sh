#!/bin/bash

add () {
	echo $(($1+$2))
}

read -p "Enter two number: " num1 num2
result=$(add "$num1" "$num2")
echo "sum: $result"
echo $?
