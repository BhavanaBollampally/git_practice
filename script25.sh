#!/usr/bin/bash
#Author: Bhavana_System

#Script 25 — Function-based File Checker
#Goal: First functional modularization — converting your repetitive patterns into reusable blocks.
#Concepts: functions, parameter passing, reusable structure.
#Logic Reasoning Path:
#Create a function check_file() that:
#takes a filename as input
#checks if it exists
#prints “Found” / “Missing”
#Main script asks for two file names.
#Calls the function twice with different arguments.
#Prints combined status message.


check_file() {
        if [ -f $1 ]
        then
        echo "Found"
        else
        echo "Missing"
        fi
}


output1=$(check_file script12.sh)
output2=$(check_file script26.sh)

echo "first file is $output1 and second file is $output2"


