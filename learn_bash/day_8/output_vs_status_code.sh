#!/bin/bash

# Capturing Output vs. Exit Status: Define a function get_config that attempts to read a specific line from a config file. If the file exists and the line is found, it should echo the value and return 0. If not found, it should echo "default_value" and return 1. Write a script snippet that calls this function, captures the output into a variable, and separately checks the exit status to log whether the default was used.

get_config() {
	file_name="$1"

# condition for check file exist's
if [[ -f "$file_name" ]]; then
	echo -e "File exists \n these are top two lines of file: "
	cat "$file_name" | head -n 2
	echo -e "\n word you search is here: "
	grep "$2" "$file_name"
	
else
	echo "file not exists"
fi

}
read -p "Enter a file name to read it : " file_name
read -p "enter some thing that you have to find in that file: " word
get_config "$file_name" "$word"



