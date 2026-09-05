#!/bin/bash
#
# 4-firewall.sh
# Counts how many firewall rules have been added,
# based on entries in auth.log.

LOGFILE="auth.log"

# Look for sudo/root commands that used iptables or ufw to ADD a rule.
# -A (append) / -I (insert) for iptables, and "ufw allow"/"ufw deny"/"ufw insert" for ufw.
grep -iE "COMMAND=.*(iptables.*(-A|-I|--append|--insert)|ufw (allow|deny|insert|reject))" "$LOGFILE" | wc -l
