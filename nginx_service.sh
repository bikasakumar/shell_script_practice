#!/bin/bash


<<comment
Check whether nginx is running.

If it isn't running:
        Restart it.
        Check again.
        Print the result.
comment


SERVICE=$1

if [ -z "$SERVICE" ]; then
    echo "Usage: $0 <service-name>"
    exit 1
fi

if systemctl is-active --quiet "$SERVICE"; then

    echo "$SERVICE is running"

else

    echo "$SERVICE is down"
    echo "Attempting to restart..."

    systemctl restart "$SERVICE"

    if systemctl is-active --quiet "$SERVICE"; then
        echo "$SERVICE restarted successfully"
    else
        echo "Failed to restart $SERVICE"
        exit 1
    fi

fi