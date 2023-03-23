#!/bin/bash
# Write a script to reverse a number and string given by user

read -p 'Enter a number/string:' a
rev=""
len=${#a}
for((i=$len-1;i>=0;i--)) 
do
    rev="$rev${a:$i:1}"
done
echo "Reverse:$rev"

# OUTPUT:
# Enter a number/string:Krish 1314
# 4131 hsirK