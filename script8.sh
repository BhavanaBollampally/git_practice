#!/usr/bin/bash
#Author: Bhavana

#Script 8 — Exit Status Simulation-Learn to think about success/failure.
#Ask user for a number.
#If number > 100 → print “Too large” and exit 1.
#Else → print “OK” and exit 0.

read -p "Enter a number: " num
if [ $num -gt 100 ]
then
echo "Too Large"
exit 1
else 
echo "OK"
exit 0
fi
