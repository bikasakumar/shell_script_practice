#!/bin/bash



CPU=$(top -bn1 | awk '/Cpu/ {
    print 100 - $8
}')

CPU=${CPU%.*}

echo "CPU Usage: $CPU%"

if [ "$CPU" -lt 70 ]; then
    echo "Status: NORMAL"
elif [ "$CPU" -le 85 ]; then
    echo "Status: WARNING"
else
    echo "Status: CRITICAL"
fi