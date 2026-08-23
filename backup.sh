#!/bin/bash

if[ $# -ne 1 ];
then
    echo "Usage: $0 <directory>"
    exit 1
fi

SOURCE = $1

NAME = $(basename "$SOURCE")
DATE = $(date +%Y-%m-%d)

tar -czf "${NAME}_${DATE}.tar.gz" "$SOURCE"

if [ $? -eq 0 ];
then
    echo "Backup successful"
else
    echo "Backup Failed"
fi

<<comment input : ./backup.sh /home/vicky/project
output: project_2026-08-22.tar.gz
comment