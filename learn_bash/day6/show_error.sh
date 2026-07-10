#!/bin/bash
#Propagating Exit Status: Write a function run_command_safe that accepts a command string as an argument. It should execute the command, capture its exit status, and if the status is non-zero, print "Command failed with status: [status]" to stderr and return that same status. If successful, return 0.

run_command_safe(){
	local command="$1"
	eval "$command"
	local status=$?

if [[ $status -ne 0 ]]; then
	echo "command failed with status: $status" >&2
	return "$status"
fi

return 0
}

read -p "Enter a command to execute: " command
run_command_safe "$command"
status=$?

if [[ $status -eq 0 ]]; then
	echo "command execute successful"
else 
	echo "Final status reported: $status"
fi


