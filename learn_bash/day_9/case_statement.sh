#!/bin/bash

# CASE STATEMENT
vehicle=$1

case $vehicle in 
	"car" )
		echo "rent of $vehicle is 100 dollar" ;;
	"van" )
		echo "rent of $vehicle is 80 dollar" ;;
	"bicycle" )
		echo "rent of $vehicle is 10 dollar" ;;
	"bus" )
		echo "rent of $vehicle is 150 dollar" ;;
	* )
		echo "unknown vehicle" ;;
esac
