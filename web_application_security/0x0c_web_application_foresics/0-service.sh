#!/bin/bash
grep "sshd" auth.log | grep -oE "pam_unix\(sshd:[a-z]+\)|Failed|Invalid|Accepted|Address|reverse|Did|error:|Server|subsystem|syslogin_perform_logout:|Received|PAM|Jax|Bad|new|changed|change|Kayn|Exiting" | sort | uniq -c | sort -nr
