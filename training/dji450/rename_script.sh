#!/bin/bash
counter=0
for file in *
do
  [[ -f $file ]] && mv "$file" $((counter+1)).jpg && ((counter++))
done

