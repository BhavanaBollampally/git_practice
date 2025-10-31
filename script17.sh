#!/usr/bin/bash
#Author:Bhavana_Mobile
#Script 17 — Sum of First N Numbers  
#Goal: Practice accumulation logic.  
#Concepts: running totals in loops.  
#Logic:                              
#Ask for N.                          
#Loop 1→N, add each to sum.          
#Print total (sum = 1+2+…+N).        
sum=0
read -p "Enter a number N: " N
for ((i=1; i<=N; i++))
do
        sum=$((sum + i))
done
echo "sum of N numbers is $sum"

