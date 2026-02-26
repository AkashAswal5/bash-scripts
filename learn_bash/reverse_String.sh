#!/bin/bash

# reverse a string 
#   echo "HELLO" | rev

set -x  # Debug

reverseString(){
 input_string="$1"
 left=0;
 right=input_string.length;

 while [[ left < right ]]{

 }

}


read -p "Enter a string: " input_string
echo "You entered: $input_string"

reverseString "$input_string"

length=$(echo -n "$input_string" | wc -m)
