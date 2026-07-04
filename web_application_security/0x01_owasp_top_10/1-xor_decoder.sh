#!/bin/bash

if [ -z "$1" ]; then
    echo "İstifadə qaydası: $0 <hash>"
    exit 1
fi

encoded_str="${1#\{xor\}}"

hex_bytes=$(echo -n "$encoded_str" | base64 -d 2>/dev/null | od -An -v -tx1 | tr -d ' \n')

if [ -z "$hex_bytes" ]; then
    echo "Xəta: Doğru Base64 formatı deyil."
    exit 1
fi

decoded_output=""
for (( i=0; i<${#hex_bytes}; i+=2 )); do
    hex_byte="${hex_bytes:i:2}"
    
    dec_byte=$((16#$hex_byte))
    
    xor_byte=$((dec_byte ^ 95))
    
    decoded_output+="$(printf "\\$(printf '%03o' "$xor_byte")")"
done

echo "$decoded_output"
