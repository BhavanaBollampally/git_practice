#!/usr/bin/bash
#Author: Bhavana
#Script 9 — Counter Logic-Practice increment & totals.
#Start with count = 0.
#Loop 5 times; each iteration increment count.
#Print final total.
count=0
for ((i=1; i<=5; i++))
do
((count++))
done
echo "Total iterations: $count"
