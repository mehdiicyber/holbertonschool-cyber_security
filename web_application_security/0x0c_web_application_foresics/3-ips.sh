#!/bin/bash
grep "Accepted" "${1:-auth.log}" | awk '{print $(NF-3)}' | sort -u | wc -l | tr -d ' '
