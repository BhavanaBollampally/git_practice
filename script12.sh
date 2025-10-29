
#!/usr/bin/bash
#Author: Bhavana

#Script 12 — Largest of Three Numbers
#Goal: Nested decisions.
#Concepts: multi-level if.
#Logic:
#1.Input 3 numbers.
#2.Determine the largest.
#3.Print result.

read -p "Enter three numbers: " num1 num2 num3
if [ $num1 -gt $num2 ]
then
if [ $num1 -gt $num3 ]
then
echo "$num1 is largest"
else
echo "$num3 is largest"
fi
elif [ $num2 -gt $num1 ]
then
if [ $num2 -gt $num3 ]
then
echo "$num2 is largest"
else
echo "$num3 is largest"
fi
elif [ $num1 -eq $num2 ]
then
if [ $num1 -gt $num3 ]
then
echo "$num1 is largest"
else
echo "$num3 is largest"
fi
else
echo "All three numbers are equal"
fi
