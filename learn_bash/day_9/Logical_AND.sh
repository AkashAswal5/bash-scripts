#!/bin/bash

age=24
# AND operator --> && 
# if [[ "$age" -gt 18 ]] && [[ "$age" -lt 30 ]] ; then
# if [[ "$age" -gt 18 && "$age" -lt 30 ]] ; then
if [ "$age" -gt 18 -a "$age" -lt 30 ] ; then
	echo "valid age"
else 
	echo "Age not vaild"
fi

