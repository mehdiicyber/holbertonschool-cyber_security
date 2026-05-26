#!/bin/bash
groupadd -f "$1"
chown maroua:"$1" "$2"
chmod g+rx "$2"
