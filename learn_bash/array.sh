#!/bin/bash

qwerty=("qwe" "qewqe" "sdada" "ddwF" "12212")

for i in ${qwerty[@]}; do
    echo "$i"
done
       

echo -e "\n This is simple array program"

read -p "enter name with space inbetween them: " name_array
echo "You enter :${name_array[@]}"

    

