#!/bin/bash
grep -oE "Accepted.*from ([0-9]{1,3}\.){3}[0-9]{1,3}" auth.log | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}" | sort -u | wc -l
