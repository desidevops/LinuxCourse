#!/bin/bash

# Define the threshold for CPU and Disk usage
CPU_THRESHOLD=80
DISK_THRESHOLD=80

# Define the administrator email address
ADMIN_EMAIL="admin@example.com"

# Check CPU usage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
echo "CPU Usage: $CPU_USAGE%"

# Check if CPU usage exceeds the threshold
if [ $(echo "$CPU_USAGE > $CPU_THRESHOLD" | bc) -eq 1 ]; then
    echo "Warning: CPU usage is above $CPU_THRESHOLD%!" | mail -s "CPU Usage Alert" $ADMIN_EMAIL
fi

# Check disk usage
DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
echo "Disk Usage: $DISK_USAGE%"

# Check if disk usage exceeds the threshold
if [ "$DISK_USAGE" -gt "$DISK_THRESHOLD" ]; then
    echo "Warning: Disk usage is above $DISK_THRESHOLD%!" | mail -s "Disk Usage Alert" $ADMIN_EMAIL
fi
