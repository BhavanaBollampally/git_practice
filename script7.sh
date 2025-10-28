#!/usr/bin/bash
#Author: Bhavana
#Script 7 — Loop + Condition (Mild logic jump)-Mix repetition + decision.
#Loop from 1 to 10.
#If number even → print “Even.”
#Else → print “Odd.”

for i in {1..10}
do
	if (( $i % 2 == 0 ))
        then
        echo "Even"
        else
        echo "Odd"
        fi
done
