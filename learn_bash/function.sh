#!/bin/bash

#Function

# Defining a function
my_function(){
    echo "Test!@#"
    local name=$1
    echo "Hello, $name!"
}
 # Calling  a function
my_function "Agni"



# add function
add (){
    local sum=$(($1 + $2))
    echo "$sum"
}

result=$(add 3 2)
echo "The sum is $result"

