#!/bin/bash
#while loop

array1=(1 2 3 4 5 6)
i=5
while ((i>=0)); do
    echo "$i"
    ((i--))
done
