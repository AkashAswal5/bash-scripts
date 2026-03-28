#!/bin/bash 

CURR_DIR=$(pwd)

DEST="res"

check_git() {
    # Implement your logic here
    cd "$CURR_DIR"
    file="$1"

    unzip "$file" -d "$DEST" &>/dev/null

    cd "$DEST"
    cnt=$(find . -name '.git' | wc -l)
    if [[ "$cnt" -ne 0 ]]; then
        echo "$file has git tracked"
    fi

    cd "$CURR_DIR"
    rm -rf "$DEST"
}

FILES=$(find . -name "*.zip")

echo "$FILES" | while read file
do
    check_git "$file"
done
