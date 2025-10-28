#!/usr/bin/bash
#Author: Bhavana



#Script 10 — Menu Logic (Integration Mini)-First small “multi-path” script.
#Show a menu: 1) Date 2) List Files 3) Exit
#User enters choice.
#Depending on input, perform that command.

read -p "Enter the number: Menu 1)Date 2)List Files 3)Exit " num
if [ $num -eq 1 ]
then
Date=$(date +"%Y:%m:%d")
echo "$Date"
elif [ $num -eq 2 ]
then
	List=$(ls)
echo "$List"
elif [ $num -eq 3 ]
then
exit 0
else
echo "Invalid option"
fi























