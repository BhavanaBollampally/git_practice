#!/usr/bin/bash
#Author: Bhavana_System

#Script 22 — Word Searcher

#Goal: Introduce pattern search logic (foundation for grep-like automation).
#Concepts: string matching, condition check.
#Logic Reasoning Path:
#Ask user for:
#a word to find
#a file name
#Check:
#if file exists
#if that word is found in the file
#Print “Word Found” or “Not Found.”


read -p "Enter the word you want to find: " word
read -p "Enter the filename: " file

if [ -r $file ]
then
if grep -i "$word" "$file" &>/dev/null
then
echo "Word found"
else
echo "Not found"
fi
else
echo "File not found"
fi
