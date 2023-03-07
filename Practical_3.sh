#!/bin/bash
#Write a script to find the smallest of three numbers as well as largest  among three numbers.

read -p 'Enter number A:' a                         #input reading in same line -p
read -p 'Enter number B:' b
read -p 'Enter number C:' c

if (("$a<$b" && "$a"<"$c")) 
then
    echo "A is Smallest"
elif (("$b<$a" && "$b"<"$c"))  
then
    echo "B is Smallest"
else
    echo "C is Smallest"
fi

# OUTPUT:
# Enter number A:22
# Enter number B:13
# Enter number C:14
# B is Smallest