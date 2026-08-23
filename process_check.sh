#!/bin/bash

PROCESS = $1

if [ -z "$PROCESS" ];
then
    echo "Usage : $0 <process-name>"
    exit 1
fi

if pgrep "$PROCESS" > /dev/null;
then   
    echo "$PROCESS is running"
    echo "PID(s):"
    pgrep "$PROCESS"
else
    echo "$PROCESS is not running"
fi

<<comment input: ./procsss_check.sh java
output: java is running
comment