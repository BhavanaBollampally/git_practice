#!/usr/bin/bash
#Author: Bhavana
#Script 4 — If Condition (First Decision)-Binary thinking (true / false).
#Ask user’s age.
#If age ≥ 18 → print “Adult.”
#Else → print “Minor.”

read -p "Enter your Age: " age
if [ "$age" -ge 18 ]
then
echo "Adult"
else
echo "Minor"
fi
