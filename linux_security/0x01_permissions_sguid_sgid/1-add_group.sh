#!/bin/bash
groupadd -f "$1"
install -g "$1" -m g+rx "$2" "$2"
# Bu sətir boşdur (Vizual 4 sətir)
