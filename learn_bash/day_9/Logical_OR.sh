#!/bin/bash

age=60

# if [[ "$age" -eq 18 ]] || [[ "$age" -eq 50 ]]; then
# if [[ "$age" -eq 18 ]] || [[ "$age" -eq 50 ]]; then
# if [ "$age" -gt 18 -o "$age" -lt 50 ]; then
if [[ "$age" -gt 18 || "$age" -eq 50 ]]; then
  	echo "valid age"
else
	echo "Age not valid"
fi
