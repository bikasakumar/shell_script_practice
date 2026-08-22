#!/bin/bash
if [$# -ne 1];
    then
        echo "Usage: $0 <service-name>"
        exit 1
fi

SERVICE=$1

# Because systemctl is-active --quiet "$SERVICE" is already a command whose exit status can be directly tested by if. You don't need [ ].
if systemctl is-active --quiet "$SERVICE";
then 
    echo "$SERVICE is running"
else
    echo "$SERVICE is not running"
fi 




<<comment input : ./service_check.sh nginx
output: nginx is running
comment