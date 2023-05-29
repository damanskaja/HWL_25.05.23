#!/bin/bash

for ((i=1; i<=10; i++))
do
    echo "$(date +"%H:%M:%S") $(ps -ef | wc -l)"
    sleep 5
done
