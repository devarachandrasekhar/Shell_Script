#!/bin/bash


LOGFILE=/tmp/ls.log


validate ()
{
 if [ $1 -ne 0 ]   
   then 
    echo "$2 is failed"
   else
    echo "$2 is succssful"
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


yum install mysql -y &>>$LOGFILE

validate $? mysql