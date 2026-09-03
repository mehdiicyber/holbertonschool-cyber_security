#!/bin/bash
tail -n 1000 "${1:-auth.log}" | grep "Accepted" | grep -oE "root" | head -n 1
