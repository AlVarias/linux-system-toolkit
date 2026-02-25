#!/bin/bash
# Backup original config
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
# Disable Root Login & Password Auth (Enforce Keys)
sed -i 's/^#PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sed -i 's/^#PasswordAuthentication.*/PasswordAuthentication no/' /etc/ssh/sshd_config
systemctl restart ssh
echo "SSH Hardening complete. Root login disabled."
