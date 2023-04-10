#!/bin/bash

#Disabled settings in /etc/sysctl.conf
ICMP_DIS=$(cat /etc/sysctl.conf | grep -A 2 "ICMP")
IP_DIS=$(cat /etc/sysctl.conf | grep -A 2 "IP")
ADDRESS=$(/sbin/ifconfig | head -2 | grep "inet " | tr -s ' ')

echo "The node is $HOSTNAME"
echo ""
echo "Kernel: $(uname -s)"
echo "Version: $(uname -v)"
echo "Kernel release: $(uname -r)"
echo "Platform: $(uname -p)"
echo ""
echo "IP address:"
echo "$ADDRESS"
echo "Interfaces:"
echo "$(ip -s link)"
echo ""
echo "Firewall info"
echo "$(sudo ufw status)"
echo
echo "Disabled settings ICMP, IP configuration: /etc/sysctl.conf"
echo "ICMP:"
echo "$ICMP_DIS"
echo "$IP_DIS"



