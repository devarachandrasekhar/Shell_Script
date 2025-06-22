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
#ARRAYS

# names=("ram" "jam" "dam" "shyam")

# echo "person1 ${names[2]}"

# echo "person2 ${names[0]}"

# echo "all vales ${names[@]}"

# echo " ${names[$1]}"

###################################################################


# NUMBER1=$1
# NUMBER2=$2

# SUM=$((NUMBER1+NUMBER2))

# echo "$SUM"


############################################################################


# for i in {1..10}
# do 

# echo $i
# done
#############################################################################



# DATE=$(date +%F)
# SCRIPT_NAME=$0
# LOGFILE_DIRECTORY=/home/ec2-user/shell_practice_logs/
# LOG_FILE=$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log


# R="\e[31m"
# G="\e[32m"
# N="\e[0m"
# Y="\e[33m"   


# USER=$(id -u)

# if [ $USER -ne 0 ]
#   then 

#   echo "run with rrrot access"
#   else
#   echo "you are running with root acesss"
# fi 



# validate ()
# {
# if [ $1 -ne 0 ]
#   then 

#   echo -e "$2 $R failed $N" &>>$LOG_FILE
#   else
#   echo -e "$2 $G installed successfully $N" &>>$LOG_FILE
# fi 
# }


# for i in $@
# do 
#     yum list installed $i &>>$LOG_FILE

#     if [ $? -ne 0 ]
#       then 
#       echo "$i is not installed lets install it" &>>$LOG_FILE
#       yum install $i -y &>>$LOG_FILE
#       validate $? $i
#       else
#       echo -e "$i $G is installed already $N" &>>$LOG_FILE
#     fi  

# done

#############################################################################

#!/bin/bash

perm=$(id -u)
echo "$perm"

DATE=$(date +%F)
echo $DATE

if [ $perm -eq 0 ]
then
echo "you are runing with root access"
else
echo "please run with root access"
fi

validate()
if [ $2 -ne 0 ]
then 
echo "$1 failed"
else
echo "$1 successfully installed"
fi




for i in $@
do 
yum list installed $1

  if [ $? -ne 0 ]
  then
  echo "$1 is not installed lets install it"
  yum install $1 -y
  validate $1 $?
  else 
  echo "$1 already installed"
  fi
done