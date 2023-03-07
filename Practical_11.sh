#!/bin/bash
# Write a shell script to search for a file of the given filename in the 
# specified directory

read -p 'Enter the file name:' file

if [ -e $file ] 
then
    echo "$file Found!!"
else
    echo "$file not Found!!"
fi