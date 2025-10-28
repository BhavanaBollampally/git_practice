#!/usr/bin/bash
#Author: Bhavana
#Script 5 — File Existence Check-Combine variable + condition.
#Ask for a file name.
#If file exists → print “Found.”
#Else → “Not found.

read -p "Enter the file name: " file
if [ -f $file ]
then
echo "found"
else 
echo "Not found"
fi

