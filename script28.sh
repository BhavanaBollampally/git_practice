#!/usr/bin/bash
#Author: Bhavana


#Script 28 — System Health Monitor (Prototype)
#Goal: Real DevOps pipeline thinking
#Concepts: functions + thresholds + exit codes
#Requirements:
#- CPU usage %
#- Memory usage %
#- Disk usage %
#If any exceeds 75% → print "ALERT"
#Else → print "SYSTEM OK"

threshold=75
cpu_check () {
      cpu_used=$(top -bn1 | awk '/%Cpu/ {print 100 - $8}')
        cpu__used=${cpu_used%.*}
}

memory_check () {
        memory_used=$(free | awk '/Mem:/ {printf("%.2f"), $3/$2 * 100}')
        mem_used=${memory_used%.*}

}

disk_check () {
        disk_used=$(df -h / | awk 'NR==2 {gsub("%",""); print $5}')
}
cpu_check
memory_check
disk_check
if (( "$cpu__used" > "$threshold" )) || (( "$mem_used" > "$threshold" )) || (( "$disk_used" > "$threshold" ))
then
echo "ALERT"
exit 1
else
echo "SYSTEM OK"
exit 0
fi
