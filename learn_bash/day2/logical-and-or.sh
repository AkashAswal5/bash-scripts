#!/bin/bash

read -p "enter score between 0 and 100 : " score

if (( score < 0 || score > 100 )) ; then
	echo "invalid score"
elif (( score >= 90 )) ; then
	echo "Grade A"
elif (( score >= 80 )) ; then
# elif (( score <= 89 && score >= 80 )) ; then
	echo "Grade B"
else 
	echo "Grade C"
fi
