#!/bin/bash
groupadd -f "$1"
chown :"$1" "$2" && chmod g+rx "$2"
# Bu sətir boş qalmalıdır ki tam 4 sətir olsun
