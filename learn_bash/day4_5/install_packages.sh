#!/bin/bash

# Chaining Commands: Create a function install_package that attempts to install a package using apt-get install. The function should check the exit status; if the installation fails (non-zero), print "Installation failed" and return 1. If successful, return 0.

install_package() {
	yay -S --noconfirm "$1" 2>/dev/null
	check=$?

	if [[ $check -eq 0 ]]; then
		return 0
	else 
		echo "Installation failed"
		return 1
	fi
	
# better version
#	if yay -S --noconfirm "$1" 2>/dev/null ; then
#		return 0
#	else 
#		echo "Installation failed"
#		return 1
#	fi

}

read -p "Enter pacakge to install: " packages

install_package "$packages" 

if [[ $? -eq 0 ]]; then
	echo "installation successfull"
fi
