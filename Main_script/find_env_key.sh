#!/bin/bash

CURR_DIR=$(pwd)
DEST="res"

find_env(){
   cd "$CURR_DIR"
   file=$1
 
   rm -rf "$DEST" 
   unzip "$file" -d "$DEST" &>/dev/null
   cd "$DEST"
   # find . -name "*.env*" | xargs -I {} cat {}

   # count total env we have
   cnt=$(find . -name ".env" | wc -l)
   if [[ "$cnt" -ne 0 ]] ; then 
       echo "$file has env folder "
   fi

   # store files which have key in --> have_key file
   have_key=$(find . -name ".env")
   echo "$have_key" | while read filee
do 
    find . -name ".env" | grep "env" | xargs -I {} cat {}
done
   # print env key
   # find . -name ".env" | xargs -I {}  

   cd "$CURR_DIR"
   rm -rf "$DEST"
}


FILES=$(find . -name "*.zip")
echo "$FILES" | while read file
do 
    find_env "$file"
done

