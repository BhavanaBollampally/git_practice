#!/usr/bin/bash
#Author: Bhavana_Mobile

#Script 20 — Pattern Printer
#Goal: Loop nesting (intro).
#Concepts: nested for loops.
#Logic:
#Input number of rows.
#Print a half-pyramid of *.

read -p "Enter a number: " N
for (( i=1; i<=N; i++))
do
        for (( j=1; j<=i; j++))
        do
                echo -n "*"

        done
        echo -e ""
done
