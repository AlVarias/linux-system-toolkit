#!/bin/bash
echo "Starting system update at $(date)"
if [ -f /etc/debian_version ]; then
    apt-get update && apt-get upgrade -y
elif [ -f /etc/redhat-release ]; then
    yum update -y
fi
echo "Update complete."
