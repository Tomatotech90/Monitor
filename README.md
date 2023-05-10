# Monitor
# System Health Check Script

This script provides an interactive menu for monitoring various aspects of a Linux system. It's a bash script that can be run directly in a terminal.

## Features

The script provides the following options:

1. Check System Load
2. Display CPU Usage
3. Display Memory Usage
4. Check Disk Usage
5. Check Hard Disk Health
6. List Failed System Services
7. Show System Error Logs
8. Show Network Usage
9. Check For Open Ports
10. Show Active User Sessions
11. List Running Services
12. Check Firewall Status
13. Check Last Boot Time
14. List Installed Packages
15. Check for Available Updates
16. Check Current Kernel Version
17. Check System Uptime
18. Check Number of Running Processes
19. Check Network Connections
20. Check Logged In Users
21. Check Current System Timezone
22. Check System Hardware

## Usage

To use the script, follow these steps:

1. Download the script file or copy the contents into a new file on your system.
2. Make sure the script file is executable. You can do this with the `chmod` command. For example: `chmod +x script.sh`
3. Run the script in a terminal. If the script is in your current directory, you can do this by typing `./script.sh`

You will then see the main menu with a list of options. Enter the number of the option you want to use and press Enter. The script will display the output of the command related to the option you chose.

Note: Some options require superuser (root) permissions. If you run into permission errors, try running the script with sudo: `sudo ./script.sh`

## Requirements

This script is designed to be run on a Linux system. Some of the commands it uses are specific to certain distributions or require certain packages to be installed. You may need to modify the script to fit your particular system configuration.

This script requires the `smartctl` tool to check hard disk health. You can install it with your package manager (for example, `apt install smartmontools` on Debian-based systems).

The script also assumes that you're using the `ufw` firewall. If your system uses a different firewall, you'll need to modify the script accordingly.

