#!/bin/bash
echo "--- User Security Audit ---"
echo "Users with Sudo Access:"
grep -Po '^sudo:.*$|^wheel:.*$' /etc/group
echo -e "\nUsers with Empty Passwords:"
awk -F: '($2==""){print $1}' /etc/shadow
echo -e "\nUsers inactive for 90+ days:"
lastlog -b 90
