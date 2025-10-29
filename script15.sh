#!/usr/bin/bash
#Author:Bhavana_System

#Script 15 — Even / Odd Counter
#Goal: Combine loop + condition + counter.
#Concepts: modulus, variable increment.
#Logic:
#Loop 1–10.
#Count how many evens and odds.
#Print totals.

even_count=0
odd_count=0
for ((i=1; i<=10; i++))
do
	if (( $i % 2 == 0 ))
then
((even_count++))
else
((odd_count++))
fi
done
echo "Total even numbers are : $even_count"
echo "Total odd numbers are : $odd_count"

