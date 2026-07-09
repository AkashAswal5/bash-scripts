#!/bin/bash

greet_function() {
	# what this function will do
	echo "Hello World"
}
greet_function 


greet_function() {
	# what this function will do
	echo "Hello $1"
}
greet_function "Akash"

