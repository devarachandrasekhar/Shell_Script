#!/bin/bash

SOURCE_DIR="/home/ec2-user/source"
BACKUP_DIR= "/home/ec2-user/backup"
DATE=$(date +%F)
BACKUP_NAME="backup-$DATE.tar.gz"
echo "$DATE"

echo "backcing up from SOURCE_DIR to BACKUP_DIR/BACKUP_NAME"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/$BACKUP_NAME"  "$BACKUP_DIR"

if [ $? -eq 0 ] then
 echo "back up successfull"

 else 

 echo "backup failed"

fi 



