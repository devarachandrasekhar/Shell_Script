#!/bin/bash

Date=$(date +%F+%H-%M-%S)

echo "$Date"

LOGDIR=/home/ec2-user/Shell_Script/shell_logs

APP_LOG_DIR=/home/ec2-user/app_log

FIND_DELETE_LOGFILE=$(find $APP_LOG_DIR -name "*.log" -mtime +14)

echo $FIND_LOG_FILE


while read -r line;
 do
  echo "Deleting: $line" &>>$LOGDIR
  rm -f "$line"
done <<< $FIND_DELETE_LOGFILE
