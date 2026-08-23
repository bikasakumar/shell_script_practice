#!/bin/bash

if[ $# -ne 1 ];
then
    echo "Usage: $0 <Directory>"
    exit 1
fi

DIR=$1

if [ ! -d "$DIR" ];
then
    echo "Directory does not exist"
    exit 1
fi

COUNT= $(find "$DIR" -type f| wc -l)

echo "Total files: $COUNT"



<<comment input : ./count_files.sh /var/log
output: Total files 25
comment