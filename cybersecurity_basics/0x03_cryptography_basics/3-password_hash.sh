#!/bin/bash
echo -n "$1" | openssl dgst -sha512 | awk '{print $2}' > 4_hash.txt
