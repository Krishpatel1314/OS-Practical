#!/bin/bash
#Write a shell script to generate marksheet of a student. Take 5 
#subjects, calculate and display total marks, percentage and Class 
#obtained by the student.

echo "Enter the marks of five Subject[out of 100]:"
read -p 'Enter Marks Sub1:' a
read -p 'Enter Marks Sub2:' b
read -p 'Enter Marks Sub3:' c
read -p 'Enter Marks Sub4:' d
read -p 'Enter Marks Sub5:' e

sum=`expr $a + $b + $c + $d + $e`
per=`expr $sum / 5`
echo "Total Marks:$sum"
echo "Percentage:$per%"

if (("$per">=85)) 
then
    echo "First Class"
elif (("$per">=70 && "$per"<85)) 
then
    echo "Second Class"
elif (("$per">=40 && "$per"<70)) 
then
    echo "Third Class"
else
    echo "Failed!!"
fi

# OUTPUT:
# Enter the marks of five Subject[out of 100]:
# Enter Marks Sub1:95
# Enter Marks Sub2:87
# Enter Marks Sub3:76
# Enter Marks Sub4:83
# Enter Marks Sub5:90
# Total Marks:431
# Percentage:86%
# First Class