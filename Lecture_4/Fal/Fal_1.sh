#!/bin/bash

# Define the log directory
log_directory="/path/to/log/directory"

# Define the log file pattern (you can change this to match specific log files)
log_file_pattern="*.log"

# Find logs older than 30 days and compress them
find "$log_directory" -type f -name "$log_file_pattern" -mtime +30 -exec gzip {} \;

# Find logs older than 90 days and delete them
find "$log_directory" -type f -name "$log_file_pattern" -mtime +90 -exec rm -f {} \;

# Optional: Log the action (for logging purposes)
echo "Log rotation completed on $(date)" >> "$log_directory/log_rotation.log"

