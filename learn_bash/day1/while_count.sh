#!/bin/bash

count=1
while [ $count -le 10 ]; do
	echo "Count is $count"
	((count++))
done

count=10
while [ $count -le 15 ]; do
	echo "$count"
	((count++))
done
