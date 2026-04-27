#!/bin/bash

read -p "enter a option: " opti;

if [[ $opti == version ]]
then 
    docker --version
elif [[ $opti == info ]]  
then
    docker info
elif [[ $opti == start ]]
then
     echo "Can't start docker"
else 
   echo "invalid option, option available are: version, info, start"
fi

