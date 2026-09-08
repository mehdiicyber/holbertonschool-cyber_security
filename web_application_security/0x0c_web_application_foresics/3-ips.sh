#!/bin/bash
grep "POST /login" "$LOGFILE" | grep " 200 " | awk '{print $1}' | sort -u | wc -l
