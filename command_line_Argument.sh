#!/bin/bash

# here $# use for how much command line argument we are passing
if [[ $# -ne 2 ]]
then 
	echo "enter service name and action"
	echo "usage: $0 <servicename> <Action_to_execute_service>"
	exit 1
fi
#      here $1 use for taking first argument
servicename=$1
#	similarly $2 use for taking second argument
action=$2
$servicename $action
