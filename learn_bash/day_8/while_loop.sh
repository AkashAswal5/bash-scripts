#!/bin/bash

# while loop
count=1
while [[ $count -le 3 ]]; do
	echo "$count"
	((count++))
done

# Reading Files Line-by-Line
# This is the most robust method for processing text files, preserving spaces and special characters.

while IFS= read -r line; do
    echo "Line: $line"
done < "config"   

# IFS= prevents trimming leading/trailing whitespace.
# -r prevents backslashes from being interpreted as escape characters. 

