#!/bin/bash

if [$# -ne 1];
    then
        echo "Usage: $0 <directory>"
        exit 1
fi

DIR=$1

if [ -d "$DIR" ];
    then
        echo "$DIR exists"
else
    echo "$DIR dose not exist"
fi



<<comment user input: ./check_dir.sh /var/log
expected output: /var/log exists
comment