#!/bin/bash
BACKUP_DIR="/backups/db"
DATE=$(date +%Y-%m-%d)
mkdir -p $BACKUP_DIR
mysqldump --all-databases > $BACKUP_DIR/db_backup_$DATE.sql
echo "Database backup saved to $BACKUP_DIR"
