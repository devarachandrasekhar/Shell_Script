#!/bin/bash

# var1=chandu
# var2=ram

# echo "$var1 and $var2 are good friends"
#################################################################
# var1=$1
# var2=$2 
# DATE=$(date)


# validate () 
# {

# if [ $1 -ne 0 ]
#  then 
#  echo "last command failed"
#  exit 1
#  else
#  echo "please check"
# fi 
# }

# echo "$var1 and $var5 are good friend till $DATE"

# validate $? all_values

# echo "$@"
# validate $? all_values

# echo "$#"
# echo "$0"

######################################################################

# echo "please enter username"
# read -s username

# echo "username: $username"


# echo "please enter password"

# read -s password

# echo "username: $password"

###########################################################################


names=("ram" "jam" "dam" "shyam")

echo "person1 ${names[2]}"

echo "person2 ${names[0]}"

echo "all vales ${names[$@]}"

echo "number of arguments ${names[$#]}"









