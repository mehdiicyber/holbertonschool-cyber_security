#!/bin/bash
find "$1" -type f -mmin -1440 \( -perm -4000 -o -perm -2000 \) -exec ls -l {} +
