#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Please Specify 2 command line argument"
	exit 1
fi

touch $1

echo $2 > $1
