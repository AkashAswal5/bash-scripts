#!/bin/bash
# comp(){

    # approach
    # Define a array
    
    echo "enter array Elment for 2 array"
    read -a "array_1"
   read "array_2"
 
#   echo "Array Elements are:"
#   echo "${array_1[@]}"
#   echo "${array_2[@]}"
#
#   echo "array_1 length: ${#array_1[@]}"
#   echo "array_2 length: ${#array_2[@]}"

   len=${#array_1[@]}
#   echo "length of array_1: $len"

   for i in ${array_1[@]}; do
       echo "$i"
       num=${array_1[i]}
      echo"$i"
      echo "$num"
       ((i++))

       res=$((num*num))
       echo "$res"
       if [[  "${array_2[@]}" =~ ${res} ]];then
           continue;
        else
            return false;
        fi
    done
#    return true;
           

# }

# comp "$1" "$2"
