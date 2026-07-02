#!/bin/bash
for i in {1..15}; do 
  if (( $i % 2 == 0 )); then
    continue;
  else 
    echo "$i"
  fi
done
