#!/bin/bash
# Write a shell script which takes one word from user and find that word 
# in all the file of current working directory.(Grep).

read -p 'Enter the word to be searched:' word
read -p 'Enter the file name:' file
grep "$word" $file