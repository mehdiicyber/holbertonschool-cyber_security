#!/bin/bash
TLS_LEVEL=$(grep "^smtpd_tls_security_level =" /etc/postfix/main.cf | cut -d' ' -f3)
if [ -z "$TLS_LEVEL" ]; then
    echo "STARTTLS not configured"
else
    echo "smtpd_tls_security_level = $TLS_LEVEL"
fi
