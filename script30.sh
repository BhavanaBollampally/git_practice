
#!/usr/bin/bash
#Author: Bhavana


#Script 30 — Menu-Driven Utility Script
#Goal: Multi-action automation
#Concepts: case/switch + functions
#Menu example:
#1) Show disk usage
#2) Show process count
#3) Show memory info
#4) Exit
#Based on the number user selects, call respective function.




disk_usage () {
        disk_used=$(df -h / | awk 'NR==2 {gsub("%",""); print $5}')
        echo "$disk_used"

}

process_count () {
     count=$(ps aux | grep $1 | grep -v grep | wc -l)
     echo "$count"
}

memory_info () {
      memory_used=$(free | awk '/Mem:/ {printf("%.2f"), $3/$2 * 100}')
       echo "$memory_used"
}
while true
do
echo "Options Menu 1)Disk usage 2)Process Count 3)Memory info 4)Exit"
read -p "Enter your option: " option
case $option in
1) disk_usage ;;
2) read -p "Enter the process: " process_name
   process_count "$process_name" ;;
3) memory_info ;;
4) echo "Exit"
        exit 0 ;;
*) echo "invalid choice" ;;
esac

echo""
done
