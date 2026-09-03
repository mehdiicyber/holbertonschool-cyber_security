#!/bin/bash
# 3-ips.sh
# Count the number of distinct attacker IP addresses that gained access
# (successful requests, HTTP status 200) to the system.

LOGFILE="web_access.log"

awk '$9 == 200 {print $1}' "$LOGFILE" | sort -u | wc -l
