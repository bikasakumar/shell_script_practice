#!/bin/bash

#approach 1
for i in {1..10}
do
    echo "$i"
done


#approach 2

i=1
while [ "$i" -le 10 ];
do
    echo "$i"
    ((i++))
done