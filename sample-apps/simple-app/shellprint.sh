#!/bin/bash
echo "Starting our script and testing"
MAXTIMES=${1:-10}
i=0
while [ $i -lt $MAXTIMES ]; 
do
    echo "Hello from"
    i=$(( i + 1 ))
done
