#!/bin/bash
# Scan a local /24 subnet (adjust 192.168.1 as needed)
SUBNET="192.168.1"
echo "Scanning $SUBNET.0/24..."
for i in {1..254}; do
    ping -c 1 -W 1 $SUBNET.$i > /dev/null && echo "Host $SUBNET.$i is UP" &
done
wait
