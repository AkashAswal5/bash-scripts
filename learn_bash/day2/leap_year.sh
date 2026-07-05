#!/bin/bash

read -p "enter a year to check if it is leap year or not: " year

if (( (year % 4 == 0 && year % 100 != 0 ) || (year % 400 == 0 )  )); then
	echo "leap year"
else 
	echo "not leap year"
fi
