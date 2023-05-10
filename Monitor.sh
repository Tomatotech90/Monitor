#!/bin/bash

while :
do
    clear
    echo "-------------------------------------"
    echo " Main Menu - System Health Check"
    echo "-------------------------------------"
    echo "[1] Check System Load"
    echo "[2] Display CPU Usage"
    echo "[3] Display Memory Usage"
    echo "[4] Check Disk Usage"
    echo "[5] Check Hard Disk Health"
    echo "[6] List Failed System Services"
    echo "[7] Show System Error Logs"
    echo "[8] Show Network Usage"
    echo "[9] Check For Open Ports"
    echo "[10] Show Active User Sessions"
    echo "[11] List Running Services"
    echo "[12] Check Firewall Status"
    echo "[13] Check Last Boot Time"
    echo "[14] List Installed Packages"
    echo "[15] Check for Available Updates"
    echo "[16] Check Current Kernel Version"
    echo "[17] Check System Uptime"
    echo "[18] Check Number of Running Processes"
    echo "[19] Check Network Connections"
    echo "[20] Check Logged In Users"
    echo "[21] Check Current System Timezone"
    echo "[22] Check System Hardware"
    echo "[0] Exit"
    echo "======================="
    echo -n "Please enter your choice [1-22, or 0 to quit]: "
    read yourch
    case $yourch in
      1) echo "System load: " ; uptime ;;
      2) echo "CPU usage: " ; top -b -n 1 ;;
      3) echo "Memory usage: " ; free -m ;;
      4) echo "Disk usage: " ; df -h ;;
      5) echo "Please enter the drive path (e.g., /dev/sda): " ; read drive ; sudo smartctl -a $drive ;;
      6) echo "Failed system services: " ; systemctl --failed ;;
      7) echo "System error logs: " ; journalctl -p 3 -xb ;;
      8) echo "Network usage (install nload or iftop for detailed network usage): " ;;
      9) echo "Please enter port number to check for: " ; read port ; sudo lsof -i :$port ;;
      10) echo "Active user sessions: " ; who ;;
      11) echo "Running services: " ; systemctl | grep running ;;
      12) echo "Firewall status: " ; sudo ufw status ;;
      13) echo "Last boot time: " ; who -b ;;
      14) echo "Installed packages: " ; dpkg --get-selections ;; # For Debian-based systems
      15) echo "Available updates: " ; apt list --upgradable ;; # For Debian-based systems
      16) echo "Current kernel version: " ; uname -r ;;
      17) echo "System uptime: " ; uptime ;;
      18) echo "Number of running processes: " ; ps -e | wc -l ;;
      19) echo "Network connections: " ; ss ;;
      20) echo "Logged in users: " ; who ;;
      21) echo "Current system timezone: " ; timedatectl | grep Timezone ;;
      22) echo "System hardware: " ; sudo lshw ;;
      0) exit 0 ;;
      *) echo "Oops! That's an invalid option. Please try again..." ;;
    esac
    echo "Press any key to continue..."
    read -n 1
done
