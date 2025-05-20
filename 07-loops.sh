

for i in {1..10}
do
echo $i
done




DATE=$(date +%f)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log


for i in $@
 do
   yum install $i -y #&>>LOGFILE

   validate $? $i

   validate ()
{
if [ $1 -ne 0 ]
 then 
  echo "$i failed"
 else
  echo "$i installed successfully" 
fi  
}
 done  

