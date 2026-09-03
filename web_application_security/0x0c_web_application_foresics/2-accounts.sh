#!/bin/bash
# 2-accounts.sh - Finds compromised accounts from authentication logs

LOG_FILE="auth.log"

if [ ! -f "$LOG_FILE" ]; then
    LOG_FILE="/var/log/auth.log"
fi

tail -n 1000 "$LOG_FILE" | grep "Accepted" | awk '{print $11}' | sort | uniq
