#!/bin/bash
addgroup --force-badname "$1"
chown :"$1" "$2"
chmod g+rx "$2"
