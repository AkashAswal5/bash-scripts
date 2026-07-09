#!/bin/bash

# this program automatically create a new file for me for daily update
update() {
path="$HOME/my-space/weekly_report/July_2026/"
cd "$path" 

file_name=july_$(date +%d).md
if [[ -f "$file_name" ]]; then
    nvim "$file_name"
else
    touch "$file_name"
    nvim "$file_name"
fi
}

update 


