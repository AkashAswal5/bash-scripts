#!/bin/bash

echo "Enter three side of triangle, and lets check whether we can form a triangle form it or not: "
read -p "enter 1 side: " a
read -p "enter 2 side: " b
read -p "enter 3 side: " c

if (( a + b > c  && b + c > a && a + c > b )); then
	echo "valid Triangle"
else 
	echo "Invalid Triangle"
fi
