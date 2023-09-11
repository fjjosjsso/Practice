#!/bin/bash
USER=$(id -u)
DATE=$(date +%F/%H/%M/%S)
SCRIP_NAME=$0
LOGFILES=/tmp/$SCRIP_NAME-$DATE.log
if [ $SUER -ne 0 ]
then
    echo " $R ERROR :: YOUR NOT IN ROOT ACCESS $N"
else
    echo " $G YOUR IN ROOT ACCESS $N"
fi
if [ $1 -ne 0 ]
then
    echo "$R PACKAGE INSTALLING .......IS FAILURE $N "
else 
    echo "$G PACKAGE INSTALLING .........IS SUCCUSS $N"
fi 
yum install git -y &>> LOGFILES
vaildate $?
yum install mysql-y &>> LOGFILES
vaildate $?