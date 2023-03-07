#!/bin/bash
# Write a shell script to choose one option from the given menu and to 
# display it.

echo "-----------MENU--------------"
echo "1)Create"
echo "2)Update"
echo "3)Delete"
echo "4)Exit"
read -p 'Enter a number:' a
case "${a}" in
    1)
        echo "Item Created"
    ;;
    2)
        echo "Item Updated"
    ;;
    3)
        echo "Item Deleted"
    ;;
    4)
        echo "System Closed"
        exit
    ;;
    *)
        echo "Invalid Input"
    ;;
esac
