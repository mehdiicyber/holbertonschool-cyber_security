#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 <subnetwork>"
    echo "Example: $0 192.168.65.0/24"
    exit 1
fi
if [ "$EUID" -ne 0 ]; then
    echo "Error: This script must be run as root or with sudo."
    exit 1
fi
SUBNET="$1"
nmap -PR -sn "$SUBNET"
