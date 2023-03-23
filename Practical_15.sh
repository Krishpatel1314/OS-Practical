#!/bin/bash
# Write a shell script which compares two files given by user and if two 
# files are same then delete the first one else merge the two files in the 
# new file.

read -p 'Enter the first file name:' file1
read -p 'Enter the second file name:' file2
if cmp  $file1 $file2 ; 
then
     echo "Files are same.So, second file is removed!!"
     rm $file2   
else
     read -p 'Enter the new file name:' file3
     cat $file1 $file2>$file3
     cat $file3
fi

# OUTPUT:
# Enter the first file name:file1
# Enter the second file name:file3
# cmp: EOF on file3 which is empty
# Enter the new file name:file2
# a
# b
# c
# d
# e
