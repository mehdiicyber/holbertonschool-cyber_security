#!/bin/bash
[ "$EUID" -ne 0 ] && { echo "Xəta: root və ya sudo tələb olunur!"; exit 1; }
last -5
