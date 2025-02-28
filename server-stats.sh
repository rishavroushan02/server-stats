#!/bin/bash

# Display CPU Usage
echo "CPU Usage:"
top -n 1 -b | grep "Cpu"

# Display Memory Usage
echo -e "\nMemory Usage:"
free -h

# Display Disk Usage
echo -e "\nDisk Usage:"
df -h

# Display Top 5 Processes by CPU Usage
echo -e "\nTop 5 Processes by CPU Usage:"
ps -eo pcpu,pid,user,args --sort=-pcpu | head -6

# Display Top 5 Processes by Memory Usage
echo -e "\nTop 5 Processes by Memory Usage:"
ps -eo pmem,pid,user,args --sort=-pmem | head -6

# Optional: Display OS Version
echo -e "\nOS Version:"
uname -a

# Optional: Display Uptime and Load Average
echo -e "\nUptime and Load Average:"
uptime

# Optional: Display Logged-In Users
echo -e "\nLogged-In Users:"
who

# Optional: Display Failed Login Attempts (requires sudo)
echo -e "\nFailed Login Attempts:"
sudo lastb | head -10
