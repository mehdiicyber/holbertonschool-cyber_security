#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt "$1"; john --show "$1" | awk -F: '/^[a-zA-Z0-9]/ {print $2}' | sed '/^$/d' > 4-password.txt
