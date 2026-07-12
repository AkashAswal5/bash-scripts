#!/bin/bash

<< 'com'
**File Validation Function**: Write a function `validate_config` that takes a filepath as an argument. It should check:
    *   If the file exists (return **1** if missing).
    *   If the file is readable (return **2** if not readable).
    *   If the file is empty (return **3** if empty).
    *   If all checks pass, `echo` "Config valid" and return **0**.
com

validate_config() {
    local file_name="$1"
    
# file exist check
if [[ ! -f "$file_name" ]]; then
    echo "file not exists" >&2
    return 1
fi

if [[ ! -r "$file_name" ]]; then
    echo "file is not readable" >&2
    return 2
fi

if [[ ! -s "$file_name" ]]; then
    echo "file is empty" >&2
    return 3
fi

# *   If all checks pass, `echo` "Config valid" and return **0**.
echo "config valid"
return 0

}

read -p "enter a file name: " file_name
validate_config "$file_name"

status=$?

if [[ $status -eq 0 ]]; then
    echo "file is vaild "
else
    echo "validation failed with status code: $status"
fi

