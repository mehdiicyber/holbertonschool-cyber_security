#!/bin/bash
# 3-ips.sh - Counts distinct IP addresses that successfully logged in

LOG_FILE="${1:-auth.log}"

grep "Accepted" "$LOG_FILE" | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}" | sort -u | wc -l
