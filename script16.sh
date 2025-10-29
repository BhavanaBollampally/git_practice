#Positive, Negative, Zero Checker
#Goal: Multi-branch logic.
#Concepts: numeric comparisons, sign handling.
#Logic:
#Ask for a number.
#Print whether positive, negative, or zero

read -p "Enter a number: " number
if [ $number -lt 0 ]
then 
echo "$number is Negative"
elif [ $number -gt 0 ]
then
echo "$number is Positive"
else
echo "$number is Zero"
fi
