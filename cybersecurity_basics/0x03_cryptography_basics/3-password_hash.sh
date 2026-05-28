#!/bin/bash
echo -n "$1" | sha512sum | awk '{print $1}' > 3_hash.txt
