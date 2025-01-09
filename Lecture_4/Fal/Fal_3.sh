#!/bin/bash

# Define variables
BACKUP_DIR="/path/to/backups"
SOURCE_DIR="/path/to/data"
LOG_FILE="/path/to/logs/backup.log"
ADMIN_EMAIL="admin@example.com"
DAY_OF_WEEK=$(date +%u)  # 1 = Monday, 7 = Sunday

# Define backup function
backup() {
    BACKUP_TYPE=$1
    BACKUP_NAME="$BACKUP_DIR/backup_$BACKUP_TYPE_$(date +%Y%m%d).tar.gz"

    # Full Backup on Sunday, Incremental Backup on other days
    if [ "$BACKUP_TYPE" == "full" ]; then
        tar -czf $BACKUP_NAME --directory=$SOURCE_DIR .
    else
        tar -czf $BACKUP_NAME --directory=$SOURCE_DIR --listed-incremental=$BACKUP_DIR/incremental.snar .
    fi

    # Check if backup was successful
    if [ $? -eq 0 ]; then
        echo "$(date): $BACKUP_TYPE backup was successful." >> $LOG_FILE
        echo "Backup completed successfully on $(date)" | mail -s "$BACKUP_TYPE Backup Success" $ADMIN_EMAIL
    else
        echo "$(date): $BACKUP_TYPE backup failed." >> $LOG_FILE
        echo "Backup failed on $(date)" | mail -s "$BACKUP_TYPE Backup Failure" $ADMIN_EMAIL
    fi
}

# Determine if today is Sunday
if [ "$DAY_OF_WEEK" -eq 7 ]; then
    # Full backup on Sundays
    backup "full"
else
    # Incremental backup for the rest of the week
    backup "incremental"
fi
