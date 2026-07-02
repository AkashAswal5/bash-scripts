#!/bin/bash

echo "Enter total no of argument: $#"

i=1
for arg in "$@"; do
	echo "Argument $i: $arg"
	i=$((i+1))
done
