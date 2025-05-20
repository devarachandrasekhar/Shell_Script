#!/bin/bash

user=$(id -u)
if [ $user -ne 0 ]
 then 
   echo "run with root acess"
   exit 1
 else
    echo "you have root acess"
fi

yum install myysql -y

if [ $? -ne 0 ]
 then 
  echo "mysql installed successfully"
 else
   echo "mysql failed"
fi

