#!/bin/bash
counter=20000
for file in *.jpg
do
  [[ -f $file ]] && mv "$file" $((counter+1)).jpg && ((counter++))
done

for file in *.jpeg
do 
  [[ -f $file ]] && mv "$file" $((counter+1)).jpg && ((counter++))
done

