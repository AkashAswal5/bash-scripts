#!/bin/bash
file="data.txt"
count=40

if [ -f "$file" ] && (( count > 10 )); then
	echo "Yes file exist"
else 
	echo "File doesn't exist"
fi

