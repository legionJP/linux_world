#!/bin/bash

echo "Enter the your subnet: "
read SUBNET

for IP in $(seq 1 254); do
    ping -c 1  $SUBNET.$IP 
done

# pinging the very first IP address in the subnet