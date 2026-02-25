#!/bin/bash
DEST="/backups/configs/$(date +%Y%m%d)"
mkdir -p $DEST
cp -r /etc/nginx/ /etc/ssh/ /etc/fstab $DEST
echo "Critical configs backed up to $DEST"
