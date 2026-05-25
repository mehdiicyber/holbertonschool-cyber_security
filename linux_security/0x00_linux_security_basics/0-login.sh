#!/bin/bash
[ "$EUID" -eq 0 ] && last -5 || { echo "Sudo teleb olunur!"; exit 1; }
