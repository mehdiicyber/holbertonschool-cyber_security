#!/bin/bash

# $1: New Host (məsələn: new_host)
# $2: Target URL (məsələn: http://web0x00.hbtn/reset_password)
# $3: Form Data (məsələn: email=test@test.hbtn)

curl -s -H "Host: $1" -d "$3" "$2"
