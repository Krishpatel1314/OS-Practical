#!/bin/bash
# Write a shell script to find sum of an array. 

echo "Enter the elemnts in array"
read -a array
sum=0
for i in "${array[@]}"
do
  let sum+=$i
done
echo "Sum:$sum"

# OUTUT:
# Enter the elemnts in array
# 1 2 3 4 5
# Sum:15