#!/bin/bash
# Write a shell script to check whether number is even or odd

read -p 'Enter a number:' a
if [ $((a%2)) -eq 0 ] 
then
    echo "$a is even."
else
    echo "$a is odd."
fi

# OUTPUT:
# Enter a number:13
# 13 is odd.
# --------------------
# Enter a number:14
# 14 is even.