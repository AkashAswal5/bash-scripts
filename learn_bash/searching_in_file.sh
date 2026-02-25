#!/bin/bash

# Create a file with 10 lines.
# Use a comman to:
# Search for a word
# Count how many times it appears
# Show line numbers where it appears

            # cat "file_name" | grep "word" -n | wc -l

#   read -p file_name
#   read -p word
#   count=0
   
count=0;
while read -r line;
do
echo "$line" | grep "fox"
((count++))
echo "$count"
done < "test"


