#!/bin/bash
# This script displays system health information including storage, RAM, CPU, and processes

# Display free disk space
echo "Disk Space:"
df -h
echo "##########################################################################################################################################"

# Display free RAM
echo "RAM Usage:"
free -h
echo ""

# Display CPU information
echo "CPU Info:"
lscpu
echo ""

# Display running processes
echo "Running Processes:"
ps aux --sort=-%mem | head -n 10