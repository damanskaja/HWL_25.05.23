#!/bin/bash

for ((i=1; i<=10; i++))
do
    echo "$(date +"%H:%M:%S") $(ps -ef | wc -l)"
    sleep 7
done

cat /proc/cpuinfo > processor_info.txt

cat /etc/os-release | grep "NAME=" > os_info.txt

cat /etc/os-release | grep "NAME=" | awk -F= '{print $2}' | awk -F\" '{print $2}' > os_name.txt

for ((i=50; i<=100; i++))
do
    touch "${i}.txt"
done
