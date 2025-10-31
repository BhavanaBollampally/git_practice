#!/usr/bin/bash
#Author: Bhavana_Mobile

#Script 18 — Factorial Calculator
#Goal: Nested multiplication logic.
#Concepts: variable update in loop.
#Logic:
#Ask for N.
#Loop multiply (1×2×…×N).
#Print factorial.

read -p "Enter a number N: " N
fact=1
for ((i=1; i<=N; i++))
do
        fact=$((fact * i))
done
echo "Factorial of $N is $fact"

