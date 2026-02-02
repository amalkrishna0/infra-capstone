PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin


LOG_DIR="/var/log"
BUCKET_NAME="project19-log-backup-amalk"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="logs_$TIMESTAMP.tar.gz"

# Compress logs (ignore missing files)
tar -czf /tmp/$BACKUP_FILE $LOG_DIR/*.log $LOG_DIR/*.log.* $LOG_DIR/*.gz 2>/dev/null

# Upload to S3 (use full path)
 /usr/local/bin/aws s3 cp /tmp/$BACKUP_FILE s3://$BUCKET_NAME/backups/

# Cleanup
rm -f /tmp/$BACKUP_FILE
