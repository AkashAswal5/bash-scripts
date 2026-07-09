#!/bin/bash

check_user() {
 	if [ $1 = "admin" ]; then
		return 0 #success
	else 
		return 1 # fail
	fi
}

check_user "admin"
echo $? # 0
