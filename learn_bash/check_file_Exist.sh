#!/bin/bash
# echo "Enter file name: "
# read -r Filename

# read -r -p "Enter file name: " Filename

# if [[ -f "$Filename" ]]; then 
# 	echo "File Exists"
# else 
# 	echo "File does not exist"
# fi

read -r -p "Enter file name: " path

if [[ -e "$path" ]]; then 
	if [[ -f "$path" ]]; then
		echo "it exist and it is a regular file"
	elif [[ -d "$path" ]]; then
		echo "It exists and is a directory"
	else
		echo "it  exists but not a regular file or directory"
	fi
else 
	echo "path does not exist"
fi

