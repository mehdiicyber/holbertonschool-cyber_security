#!/bin/bash
[ -n "$1" ] && [ -f "$2" ] || exit 1
groupadd -f "$1"
chown :"$1" "$2" && chmod g+rx "$2"
