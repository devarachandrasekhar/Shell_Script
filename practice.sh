#!/bin/bash

# var1=chandu
# var2=ram

# echo "$var1 and $var2 are good friends"

var1=$1
var2=$2 
DATE=$(date)


validate () 
{

if [ $1 -ne 0 ]
 then 
 echo "last command failed"
 exit 1
fi 
}

echo "$var1 and $var2 are good friend till $DATE

validate $? all_values

echo "$@"

echo "$#"
echo "$0"


