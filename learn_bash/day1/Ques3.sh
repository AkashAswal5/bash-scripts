#!/bin/bash
num=7
if (( ! num % 2 )); then
	echo "even"
else 
	echo "odd"
fi
