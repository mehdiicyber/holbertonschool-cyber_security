#!/bin/bash
john --format=Raw-SHA256 --wordlist=/usr/share/john/password.lst "$1" && john --show --format=Raw-SHA256 "$1" | awk -F: 'NR==1{print $2}' > 6-password.txt
