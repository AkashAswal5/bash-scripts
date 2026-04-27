#!/bin/bash

userID=$(id -u)

<< multi
if [[ $userID -eq 0 ]]
then
	echo "You are root"
else
	echo "you are not root"
fi
multi

[[ $userID -eq 0 ]] && echo "You are root" || echo "you are not root"

