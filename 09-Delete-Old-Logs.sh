#!/bin/bash

Date=$(date +%F+%H-%M-%S)

echo "$Date"

LOGDIR=/home/ec2-user/Shell_Script/shell_logs

APP_LOG_DIR=/home/ec2-user/app_log

FIND_DELETE_LOGFILE=$(find $APP_LOG_DIR -name "*.log" -mtime +14)

echo "These are the $FIND_DELETE_LOGFILE"


while read -r line;
 do
  echo "Deleting: $line" &>>$LOGDIR
  rm -f "$line"
done <<< $FIND_DELETE_LOGFILE


  #touch -t 202312251030.00 cart_oldfile.log  202312251030.00 redis_oldfile.log