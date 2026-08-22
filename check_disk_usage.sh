#!/bin/bash

<<comment
< 70%  NORMAL
70-85% WARNING
> 85% CRITICAL
comment

# df means disk filesystem. it shows filesystem disk-space usage.
#Filesystem      1K-blocks    Used Available Use% Mounted on
#/dev/nvme0n1p1   41152832 12345678  28807154  31% /

# awk 'NR==2 {print $5}' {awk: process the output} {NR means Number of Records}
#  Line 1 → Filesystem      1K-blocks    Used Available Use% Mounted on
#  Line 2 → /dev/nvme0n1p1   41152832 12345678 28807154 31% /
# NR==2  only process the Line 2. $5 means 31% (index 5 of line 2 statement)

# tr -d '%' delete % character
# 31% --> 31


USAGE=$( df/ | awk 'NR==2 {print $5}' | tr -d '%' )

echo "Disk Usage: $USAGE%"

if [ "$USAGE" -lt 70 ];
    then
        echo "Status: NORMAL"
elif ["$USAGE" -le 85 ];
    then
        echo "Status: WARNING"
else
    echo "Status: CRITICAL"
fi
