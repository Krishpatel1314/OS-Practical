#!/bin/bash
# Write a shell script to show various system configurations.

echo "1) Your Current Shell"
echo "2) Your Home Directory"
echo "3) Your Operating System Type"
echo "4) Your current path"
echo "5) About your OS"
echo "6) Show available shell"
echo "7) Show existing users"
echo "8) Exit"
i="y"
while [ $i = "y" ] 
do
    read -p 'Select any of your choice:' a
    case $a in
        1)
            echo "Your Current Shell: $SHELL"
        ;;
        2)
            echo "Your Home Directory:"
            echo ~
        ;;
        3)
            echo "Your Operating System Type:"
            uname -o
        ;;
        4)
            echo "Your current path:"
            uname $PATH
        ;;
        5)
            echo "About your OS:"
            uname -a
        ;;
        6)
            echo "Show available shell:"
            cat /etc/shells 
        ;;
        7)
            echo "Show existing users:"
            cat /etc/passwd 
        ;;
        8)
            exit
          ;;
        *)
            echo "Invalid Input!!"
        ;;
    esac
    echo "Do you want to continue? y/n"
    read in
    if  [ $in != "y" ]
    then
        exit  
    fi
done

# OUTPUT:
# 1) Your Current Shell
# 2) Your Home Directory
# 3) Your Operating System Type
# 4) Your current path
# 5) About your OS
# 6) Show available shell
# 7) Show existing users
# 8) Exit
# Select any of your choice:1
# Your Current Shell: /usr/bin/bash
# Do you want to continue? y/n
# y
# Select any of your choice:2
# Your Home Directory:
# /c/Users/HP
# Do you want to continue? y/n
# y
# Select any of your choice:3
# Your Operating System Type:
# Msys
# Do you want to continue? y/n
# y
# Select any of your choice:4
# Your current path:
# uname: extra operand ‘/c/Users/HP/bin:/mingw64/bin:/usr/local/bin:/usr/bin:/bin:/mingw64/bin:/usr/bin:/c/Users/HP/bin:/c/Program’
# Try 'uname --help' for more information.
# Do you want to continue? y/n
# y
# Select any of your choice:5
# About your OS:
# MINGW64_NT-10.0-19045 DESKTOP-P4IOI6V 3.3.6-341.x86_64 2022-09-05 20:28 UTC x86_64 Msys
# Do you want to continue? y/n
# y
# Select any of your choice:6
# Show available shell:
# cat: /etc/shells: No such file or directory
# Do you want to continue? y/n
# y
# Select any of your choice:7
# Show existing users:
# cat: /etc/passwd: No such file or directory
# Do you want to continue? y/n
# y
# Select any of your choice:8