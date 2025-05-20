#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$(basename "$0")
LOGDIR=/home/ec2-user/Shell_Script/shell_logs 
LOGFILE=$LOGDIR/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"   

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo -e "$R Run this script with root access $N"
    exit 1
else 
    echo -e "$G You have root access $N"
fi

VALIDATE() {
  if [ $1 -ne 0 ]; then 
    echo -e "$2 .. $R failed $N"
    exit 1
  else
    echo -e "$2 $G installed successfully $N"
  fi
}

for i in "$@"
do
   yum list installed "$i" &>>$LOGFILE

   if [ $? -ne 0 ]; then
       echo "$i is not installed, let's install it..."
       yum install "$i" -y &>>$LOGFILE
       VALIDATE $? "$i"
   else
       echo "$i is already installed"
   fi
done
