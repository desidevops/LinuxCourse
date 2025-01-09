#!/bin/bash

# Define source and destination
SOURCE_DIR="/home/user/data"
DEST_DIR="/backups/data_backup"

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Create a backup using tar (with the date to make each backup unique)
BACKUP_FILE="$DEST_DIR/data_backup_$(date +\%Y\%m\%d_\%H\%M).tar.gz"

# Create the backup
tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .

# Print a success message
echo "Backup successful: $BACKUP_FILE"



# crontab -e
# 0 0 * * * /path/to/Fal_3(B1).sh
