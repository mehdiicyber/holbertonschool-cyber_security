#!/bin/bash
[ "$EUID" -ne 0 ] && echo "Root yetkisi lazımdır." && exit 1 || nmap -PR -sn "$1"
