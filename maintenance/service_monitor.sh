#!/bin/bash
# Find logs older than 30 days in /var/log and compress them
find /var/log -name "*.log" -type f -mtime +30 -exec gzip {} \;
echo "Old logs compressed to save space."
