#!/bin/bash
grep -iE "new user|useradd" "${1:-auth.log}" | grep -oP "(?<=name=)[^,]+" | sort -u | paste -sd, -
