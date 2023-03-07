#!/bin/bash
# Write a shell script to print Fibonacci series up to nth element.

read -p 'Enter a number:' n
a=0
b=1
echo $a
echo $b
for((i=2;i<=n;i++)) 
do
    c=`expr $a + $b`
    echo $c
    a=$b
    b=$c
done