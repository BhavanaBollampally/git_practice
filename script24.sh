#!/usr/bin/bash
#Author: Bhavana_System

#Script 24 — Word Frequency Counter
#Goal: Learn to count occurrences — step toward parsing logs and summaries.
#Concepts: repetition + pattern matching + accumulation.
#Logic Reasoning Path:
#Ask user for a word and file name.
#Check file exists.
#Loop through each line; each time the word appears, increment counter.
#Print total count at end.

read -p "Enter the word you want to find: " word
read -p "Enter the filename: " file

if [ -r $file ]
then
line_count=0
while read line
do

if echo "$line" | grep -i "$word"  &>/dev/null
then
((line_count++))
fi
done < $file

if [ $line_count -eq 0 ]
then
echo "Word not found"
else
echo "The word $word appeared $line_count times in $file"
fi
else
echo " File not found"
fi
