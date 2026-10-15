#!/bin/bash

var1=10
var2=20
var3="suresh"

echo "$var1+$var2"
echo "$(($var1+$var2))"
echo "$(($var1+$var2+$var3))"

declare -i COUNT=5 # I'm declaring as integer
COUNT=COUNT+1

echo "Count is: $COUNT"

FRUITS = ("Apple" "Bannana" "Papaya") #This is called as array
echo "All fruits: ${FRUITS[@]}"
echo "1st fruits: ${FRUITS[0]}"

name = "Suresh Reddy K"

echo "${name}ontham"



