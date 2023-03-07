#!/bin/bash
#1. Write a shell script to find factorial of given number n.

read -p 'Enter a number:' a
fact=1
for((i=2;i<=a;i++))
do
    fact=$((fact * i))
done
echo "Factorial of $a is $fact"

# OUTPUT:
# Enter a number:5
# Factorial of 5 is 120