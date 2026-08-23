#!/bin/bash

#approach 1
find /var/log -type f -name "*.log"


#approach 2

if [ $# -ne 1 ];
then
    echo "Usage: $0 <directory>"
    exit 1
fi

find "$1" -type f -name "*.log"
