#!/usr/bin/bash
#Author: Bhavana_System

#Script 21 — File Line Counter
#Goal: Learn to iterate through file content (conceptual bridge between logic and real data).
#Concepts: file existence, reading line-by-line, counter variable.
#Logic Reasoning Path:
#Ask the user for a file name.
#Verify the file exists — only proceed if yes.
#Initialize line_count = 0.
#For each line, increase the count.
#After loop ends → print total lines.


read -p "Enter your file name: " file
if [ -r $file ]
then
line_count=0
while read line
do
((line_count++))
done < "$file"
echo " There are $line_count line in $file"
else
echo "File not found!!!"
fi
