

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
 done  

validate ()
{
if [ $? -ne 0 ]
 then 
  echo "$i failed"
 else
  echo "$i installed successfully" 
}