#!/usr/bin/bash
#Author: Bhavana

#Script 11 — Compare Two Numbers-Strengthen if-else reasoning.
#Concepts: integer comparison operators (-gt, -lt, -eq).
#Ask for two numbers.
#Compare them.
#Print which is larger or if equal.

read -p "Enter two numbers: " num1 num2
if [ $num1 -gt $num2 ]
then
echo "$num1 is greater than $num2"
elif [ $num1 -lt $num2 ]
then
echo "$num1 is lesser than $num2"
else
echo "Both are equal"
fi
