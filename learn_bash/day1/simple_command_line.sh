#!/bin/bash

echo "Enter the first argument $1" 
echo "Enter the first argument $2"
echo "Enter the first argument $3"

sum=$(($1 + $2 + $3))
echo "Sum = $sum"

# other try
echo "Script name: $0"
echo "Script Argument: $#"
