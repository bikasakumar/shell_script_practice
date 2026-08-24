#!/bin/bash


#approach 1
find /var -type f -size +100M -exec ls -lh {} \;

#approach 2
find /var -type f -size +100M -print