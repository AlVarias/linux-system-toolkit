#!/bin/bash
# Default rules for a web server
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw allow http
ufw allow https
ufw --force enable
echo "Firewall active: SSH, HTTP, and HTTPS allowed."
