#!/usr/bin/bash
#Author: Bhavana


#Script 26 — User Activity Logger
#Goal: Append activity logs — intro to audit trails
#Concepts: timestamping, file append, logging format
#Requirements:
#Ask user for a message → append to a log file with timestamp.
#Format: [DATE TIME] message


read -p "Enter the message: " msg

Date=$(date +"%Y-%m-%d %H:%M:%S")

echo "[$Date] $msg" >> logfile_s26.log
