#!/usr/bin/bash
#Author: Bhavana


#Script 27 — Backup Script (Simple Version)
#Goal: Automation mindset
#Concepts: cp, directory validation, backup folder creation
#Requirements:
#Ask user for a file to back up.
#Check file exists.
#Copy it into a folder named backups/ with timestamp.


read -p "Enter the file name: " file
if [ -f $file ]
then
Date=$(date +"%Y-%m-%d_%H-%M-%S")
mkdir -p backups/
cp $file backups/config_$Date.bkp
echo "Backup created: backups/config_$Date.bkp"
else 
echo "File not found"
fi
