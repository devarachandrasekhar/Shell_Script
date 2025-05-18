#!bin/bash


#passing the values to varibales from commad line

NAME1=$1
NAME2=$2
echo $NAME1 ':Hi' $NAME2 'how are you'
echo $NAME2 ':Hi' $NAME1 'I am doing good , what about you'  

# you should pass the values like this from command line- sh variable1.sh ram sitha


#assigning the values to varibles

NAME1=chandu
NAME2=damu
echo $NAME1 ':Hi' $NAME2 'how are you'
echo $NAME2 ':Hi' $NAME1 'I am doing good , what about you'  

# Exceute the command inside the shell script and assign the value to variable

DATE=$(date)
echo " This script run at $DATE "





number1=$1

number1=$2

sum=$((number1+number2))

echo "sum of $number1 and $number1 = $sum" 




