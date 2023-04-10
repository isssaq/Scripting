#!/bin/bash

echo "Uptime:"
uptime -s
echo "Current user:"
who -q
echo "Last login"
who -u
echo ""
echo "Usage CPU"
echo "%CPU   PID   USER       TID"
(ps -e -o pcpu,pid,user,tid --sort=pcpu | tail -n 10)
echo "--------------------------"
echo "Swap memory usage: "
free -t
echo "--------------------------"
echo "Disk usage"
df -h

