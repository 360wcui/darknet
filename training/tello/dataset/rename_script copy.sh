#!/bin/bash
counter=10000
for file in *.txt
do
  [[ -f $file ]] && mv "$file" "10$file"
done
