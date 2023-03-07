#!/bin/bash
# Write a shell script to show various system configurations.

i="y"
while [ $i = "y" ] 
do
    echo "1) Your Current Shell"
    echo "2) Your Home Directory"
    echo "3) Your Operating System Type"
    echo "4) Your current path"
    echo "5) About your OS"
    echo "6) Show available shell"
    echo "7) Show existing users"
    echo "8) Exit"
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
