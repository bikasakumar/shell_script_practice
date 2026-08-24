#!/bin/bash

<<comment 
192.168.1.10 GET /login
192.168.1.20 GET /home
192.168.1.10 GET /home
192.168.1.10 GET /api
192.168.1.20 GET /login
comment


LOG_FILE=$1

awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr



<<output: 
3 192.168.1.10
2 192.168.1.20
output