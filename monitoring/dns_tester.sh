#!/bin/bash
DOMAINS=("google.com" "github.com" "internal.server.local")
for domain in "${DOMAINS[@]}"; do
    if nslookup $domain > /dev/null; then
        echo "$domain: RESOLVED"
    else
        echo "$domain: FAILED"
    fi
done
