#!/bin/bash

echo -e "Enter the name of file: \c"
read file_name

if [ -f "$file_name" ]; then
	if [[ -w "$file_name" ]] ; then
		echo "type some text data. to quit press ctrl+d: "
		cat >> "$file_name"
	else
		echo "$file_name not have write permission."
	fi
else
	echo "$file_name not exists"
fi
