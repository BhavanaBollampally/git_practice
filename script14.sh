#!/usr/bin/bash
#Author:Bhavana_Mobile

#Script 14 — Simple Calculator
#Goal: Use user choice + arithmetic.
#Concepts: if/elif + arithmetic expansion.
#Logic:
#Ask for two numbers and an operator (+ – * /).
#Perform calculation.
#Show result.

read -p "Enter two numbers: " a b
read -p "Which Operation you want to perform (+ – * /): " op
if [ "$op" = "+" ]
then
        sum=$((a + b))
        echo "Sum of $a,$b is $sum"
elif [ "$op" = "-" ]
then
        dif=$((a - b))
        echo "Difference between $a,$b is $dif"
elif [ "$op" = "*" ]
then
        mul=$((a * b))
        echo "Multiplication of $a,$b is $mul"
elif [ "$op" = "/" ]
then
        div=$((a / b))
        echo "Division of $a,$b is $div"
else
        echo "Invalid input"
fi


