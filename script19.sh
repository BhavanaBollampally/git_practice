#!/usr/bin/bash
#Author: Bhavana_Mobile

#Script 19 — Number Reverser
#Goal: Work with arithmetic logic, division, and remainder.
#Concepts: % and / inside loop.
#Logic:
#Read a number.
#Reverse digits (e.g., 123 → 321).
#Print result.

read -p "Enter a number N: " N
new=0
for (( ; N != 0; ))
do
        x=$((N % 10))
        new=$((("$new" * 10) + x))
        N=$((N / 10))
done
echo "Reverse number is $new"
