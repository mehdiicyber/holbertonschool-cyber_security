#!/bin/bash
john --show --format=Raw-SHA256 "$1" | cut -d: -f2 | head -1 > 6-password.txt
