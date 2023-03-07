#!/bin/bash
# Write a shell script to check whether number is palindrome or not. 

read -p 'Enter a number:' n
num=$n
rev=0
while [ $n -gt 0 ];
do
    a=`expr $n % 10`
    n=`expr $n / 10`
    rev=`expr $rev \* 10 + $a `
done
if [ $num -eq $rev ]
then
    echo "$num is Palindrome"
else
    echo "$num is not Palindrome"
fi