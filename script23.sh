#!/usr/bin/bash
#Author: Bhavana_System

#Script 23 — Log Analyzer Prototype
#Goal: Multi-condition decision.
#Concepts: compound if with &&, ||.
#Logic:
#Ask for log file path.
#If file size > 1 MB and contains “ERROR” → print “Alert.”
#Else → “OK.”

read -p "Enter the file path: " fpath

size=$(stat -c%s $fpath)
error=$(grep -i "error" "$fpath")

if [[ $size -ge 1000 && $error ]]
then
echo "Alert.!!!"
else 
echo "OK"
fi

