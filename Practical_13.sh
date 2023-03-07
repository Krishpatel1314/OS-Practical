#!/bin/bash
# Write a shell script to display all executable files, directories and
# zero sized files from current directory.

echo Executable files
files=$(find "E:\SEM-4\OS-Practical" -executable -type f)
echo $files
echo List of Directories
dir=$(ls -d )
echo $dir
echo List of zero sized files
zero=$(find -size 0)
echo $zero