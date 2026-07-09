#!/bin/bash

# Exit Status Check: Create a script that checks if a file exists using a function. The function should return 0 if the file exists and 1 if it doesn't. Print "File found" or "File missing" based on the exit status.
check_file_exist() {
 if [[ -f "$1" ]]; then
	echo "0"
else 
	echo "1"
fi
}

read -p "Enter file name to search: " file_name
status=$(check_file_exist "$file_name")

if [ "$status" -eq 0 ]; then
	echo "File found"
else 
	echo "file not found"
fi
