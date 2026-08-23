#!/bin/bash

<<comment
given an applicaton.log file  we need to count INFO WARNING ERROR 
comment

LOG_FILE = $1

if [ ! -f "$LOG_FILE" ];
then
    echo "Log file does not exist"
    exit 1
fi


INFO = $(grep -c "INFO" "$LOG_FILE")
WARNING =$(grep -c "WARNING" "$LOG_FILE")
ERROR = $(grep -c "ERROR" "$LOG_FILE")

echo "INFO : $INFO"
echo "WARNING : $WARNING"
echo "ERROR" : $ERROR"



<<comment input : ./log_error_counter.sh
output: 
INFO    : 120
WARNING : 15
ERROR   : 8
comment