#!/bin/bash
# ------------------------------------------------------------------
# Script Name: system_health.sh
# Description: Checks CPU, Memory, Disk usage, and active network connections.
# Author: Allen Albert Traya Varias
# ------------------------------------------------------------------

echo "--- SYSTEM HEALTH REPORT ---"
date
echo ""

# Check CPU Load
echo "CPU Load Statistics:"
uptime | awk '{print $8, $9, $10}'

# Check Memory Usage
echo -e "\nMemory Usage:"
free -h | grep -v + | grep -v swap

# Check Disk Usage (Root partition)
echo -e "\nDisk Usage (Top 5 partitions):"
df -h | head -n 6

# Check for Failed SSH Logins (Security Check)
echo -e "\nRecent Failed SSH Attempts:"
lastb | head -n 5 || echo "No failed logs found or permission denied."

echo -e "\n--- Report Complete ---"
