#!/bin/bash

if [ $# -ne 1]; 
    then
        echo "Usage: $0 <filename>"
        exit 1
fi

FILE=$1 

if [ -f "$FILE" ];
    then
        echo "file exists"
else
    echo "file does not exist"
fi

<<comment user input: ./check_file.sh application.log
Expected output: file exists
comment


