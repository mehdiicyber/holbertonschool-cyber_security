#!/bin/bash
# 3-ips.sh
# Count the number of distinct attacker IP addresses that gained access
# (successful authentication) to the system, based on auth.log.

LOGFILE="auth.log"

grep "Accepted" "$LOGFILE" | awk '{for(i=1;i<=NF;i++) if ($i=="from") print $(i+1)}' | sort -u | wc -l
