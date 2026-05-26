#!/bin/bash
groupadd -f "$1" || true
chown :"$1" "$2" || true
chmod g+rx "$2"
