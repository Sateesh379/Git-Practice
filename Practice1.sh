#!/bin/bash

var1=10
var2=20
var3=siva

echo "$var1+$var2"
echo "$(($var1+$var2+$var3))"

declare -i COUNT=5
COUNT=COUNT+1
echo "$COUNT"

FRUITS=("Apple" "Banana" "Orange")

echo "All Fruits are : ${FRUITS[@]}"

echo "Fruit Name is : ${FRUITS[1]}"