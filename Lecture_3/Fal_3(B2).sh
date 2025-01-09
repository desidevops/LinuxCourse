#!/bin/bash
# Define source and destination
SOURCE_DIR="/home/user/data"
DEST_DIR="/backups/data_backup"

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Perform the backup using rsync
rsync -av --delete "$SOURCE_DIR/" "$DEST_DIR/"

# Print a success message
echo "Backup successful using rsync!"



# crontab -e
# 0 0 * * * /path/to/Fal_3(B2).sh
