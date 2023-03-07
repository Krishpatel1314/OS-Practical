#!/bin/bash
# Write a shell script to check whether number is prime or not.

read -p 'Enter a number:' a
flag=0;
for((i=2; i<=$a/2;i++)) 
do
    if [ $((a%i)) -eq 0 ]
    then
        echo "$a not a prime number"
        flag=1;
        exit
    fi
done
if [ $flag -eq 0 ]
    then
        echo "$a a prime number"
fi
