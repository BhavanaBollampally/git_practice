#!/usr/bin/bash
#Author: Bhavana


#Script 31 — Retry Logic + Exit Codes
#Goal:
#Learn defensive scripting — retry a command if it fails.
#Concepts involved:
#exit status ($?)
#retry loops
#break
#conditional logic based on command success/failure
#✅ Requirements
#Write a script that:
#Asks user for a hostname (example: google.com).
#Try to ping it 3 times maximum.
#If the ping succeeds at any attempt → print "Success" and exit with status 0.
#If after 3 attempts it still fails → print "Failed" and exit with status 1.
#Important rule:
#Don't use ping -c 3 — we need to trigger retry logic ourselves.



read -p "Enter hostname:" host
ping_host () {
        ping -c 1 "$1" &>/dev/null
        return $?
}
a=1
while (( a <= 3 ))
do
	echo "Attempt $a..."

ping_host $host
if [ $? -eq 0 ]
then
echo "Success"
exit 0
else
((a++))
fi
done
echo "Failed"
exit 1
