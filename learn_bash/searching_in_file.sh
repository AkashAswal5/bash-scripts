#!/bin/bash

# Create a file with 10 lines.
# Use a comman to:
# Search for a word
# Count how many times it appears
# Show line numbers where it appears

            # cat "file_name" | grep "word" -n | wc -l

read -p "Enter a file name: " file_name
   read -p "enter a word to search: " word 
   echo -e "\n"
  
count=0
line_number=0;
while read -r line; do
  ((line_number++))
  if echo "$line" | grep -q "$word"; then
    echo "Line $line_number: $line"
    ((count++))
  fi
done < "$file_name"

echo "Total occurrences: $count"
