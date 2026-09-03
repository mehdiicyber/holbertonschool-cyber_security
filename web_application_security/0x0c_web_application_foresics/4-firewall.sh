#!/bin/bash
grep -iE "iptables|ufw" "${1:-auth.log}" | grep -iE "\-A|\-I|add|allow" | wc -l | xargs
