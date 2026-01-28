#!/bin/bash



# Backup important system logs

LOG_DIR="/var/log"



BUCKET_NAME="project19-log-backup-amalk"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

BACKUP_FILE="logs_$TIMESTAMP.tar.gz"



# Compress logs

tar -czf /tmp/$BACKUP_FILE $LOG_DIR/*.log $LOG_DIR/*.log.* $LOG_DIR/*.gz



# Upload to S3

aws s3 cp /tmp/$BACKUP_FILE s3://$BUCKET_NAME/backups/


