#!/bin/bash

#  make all file executable in a  directory

files=$(find . -type f -name "*.sh")

echo "$files" | while read fll
    do
        # don't give executable permssion to file that already have executable permission 
        # add condition here
        chmod +x "$fll"
done
    
