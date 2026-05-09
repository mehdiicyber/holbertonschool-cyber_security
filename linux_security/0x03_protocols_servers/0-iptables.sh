#!/bin/bash
# Displays all current iptables rules with line numbers and verbose output

iptables -L -n -v --line-numbers
