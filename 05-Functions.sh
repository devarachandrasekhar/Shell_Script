#!/bin/bash


DATE=$(date)


echo "$DATE"
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

validate ()
{
 if [ $1 -ne 0 ]   
   then 
    echo -e "$2 is $R failed $N"
   else
    echo "$2 is $G succssful $N"
fi    
}


user=$(id -u)
if [ $user -ne 0 ]
 then 
   echo "run with root acess"
   exit 1
 else
    echo "you have root acess"
fi

#installation of my sql, by default in shell script it cannt validate the he previoues commad is successfull or not we need to validate

#installing mysql ad storing logs in tmp folder and validating successfull or not using functions

yum install mysql -y &>>$LOGFILE

validate $? mysql

#Installation of postfix

yum install postfix -y &>>$LOGFILE

validate $? postfix 

yum install ggit -y &>>$LOGFILE

validate $? git