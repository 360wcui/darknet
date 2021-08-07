#!/bin/bash
counter=10000
for file in dij450/*.jpg
do
  [[ -f $file ]] && mv "$file" dij450/$((counter+1)).jpg && ((counter++))
done

for file in dij450/*.jpeg
do
  [[ -f $file ]] && mv "$file" dij450/$((counter+1)).jpg && ((counter++))
done

for file in tarot650/*.jpg
do 
  [[ -f $file ]] && mv "$file" tarot650/$((counter+1)).jpg && ((counter++))
done

for file in tarot650/*.jpeg
do 
  [[ -f $file ]] && mv "$file" tarot650/$((counter+1)).jpg && ((counter++))
done

