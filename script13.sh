#!/usr/bin/bash
#Author: Bhavana

#Script 13 — Grade Evaluator
#Goal: Learn chained elif logic.
#Concepts: range checking.
#Logic:
#Read marks (0-100).
#90-100 → A, 80-89 → B, 70-79 → C, else Fail.



read -p "Enter your marks: " marks

if [ $marks -le 100 ] && [ $marks -ge 90 ]
then
        echo "A"
elif [ $marks -lt 90 ] && [ $marks -ge 80 ]
then
        echo "B"
elif [ $marks -lt 80 ] && [ $marks -ge 70 ]
then
        echo "C"
elif [ $marks -lt 70 ] && [ $marks -ge 0 ]
then
        echo "Fail"
else
        echo " Invalid marks"
fi


