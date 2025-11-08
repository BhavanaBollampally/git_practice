#!/usr/bin/bash
#Author: Bhavana


#Script 29 — Extract Columns from a File
#Goal: Intro to cut / awk (text processing)
#Concepts: field extraction
#Requirements:
#Ask user for:
#- filename
#- column number
#Print only that column.




read -p "Enter the filename: " file
read -p "Enter the coulmn number: " column
output=$(awk -F ',' -v col="$column" '{print $col}' $file)
echo "$output"

