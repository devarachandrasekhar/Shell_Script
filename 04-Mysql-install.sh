#!/bin/bash

user=$(id -u)
if [ $user -ne 0 ]
 then 
   echo "run with root acess"
   exit 1
 else
    echo "you have root acess"
fi

#installation of my sql, by default in shell script it cannt validate the he previoues commad is successfull or not we need to validate


yum install mysql -y

if [ $? -ne 0 ]
 then 
  echo "mysql failed"
 else
   echo "mysql installed successfully"
fi

#Installation of postfix

yum install postfix -y

if [ $? -ne 0 ]
 then
  echo "postfix failed"
 else
  echo "postfix successfully installed"
fi    

