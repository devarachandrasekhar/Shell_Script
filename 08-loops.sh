
DATE=$(date +%f)
SCRIPT_NAME=$0
LOGDIR=/home/ec2-user/Shell_Script/shell_logs 
LOGFILE=$LOGDIR/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"   


USERID=$(id -u)

if [ $USERID -ne 0]
    then
        echo "run with root access"
    else 
        echo " $R you have root access $N "  



for i in $@
 do

   yum list installed $i

   if [ $? ne -0 ]
        then
            echo "$i is not installed lets install it"
            yum install $i -y &>>LOGFILE
            VALIDATE $? $i
        else
            echo "$i alredy installed"
    fi
   
 done  



VALIDATE ()
{
if [ $1 -ne 0 ]
 then 
  echo -e "$2 .. $R failed $N"
  exit 1
 else
  echo -e "$2 $G installed successfully $N" 
fi  
}

