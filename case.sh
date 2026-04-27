#!/bin/bash
read -p "Enter num1: " a
read -p "Enter num2: " b
read -p "enter  your option(1.addition, 2.sub, 3.multiply, 4.divide): " opt

case $opt in
	1)
		echo "you select addition"
		echo "The addition of $a & $b is: $((a+b))" 
		;;
	2)
		echo "you select sub"
		echo "The sub of $a & $b is: $((a-b))" 
		;;
	3) 	
		echo "you select multiplication"
		echo "The multiplication of $a & $b is: $((a*b))" 
		;;

	4) 
		echo "you select division"
		echo "The division of $a & $b is: $((a/b))" 
		;;

	*)
	 	echo "you select invalid option"
		;;
esac
