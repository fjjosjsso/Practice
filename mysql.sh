#!/bin/bash
USER=$(id -u)
if [ $USER -ne 0 ]
R="\e[31m"
G="\e[32m"
N="\e[0m"
then 
echo "ERROR:: $R Your not in root, Kindly get root access $N"
    exit 1
else
    echo " $G Your in root...........Mysql start downloading $N"
fi
yum install mysql -y
if [ $? -ne 0 ]
then
    echo "$R Mysql was not downloaded there is some error kincldy check error and again start downloading $N"
    exit 1
else
    echo "$G Mysql was downloaded successfully..........$N"
fi
yum install postfix -y
if [ $? -ne 0 ]
then
    echo " $R postfix was not downloaded there is some error kincldy check error and again start downloading $N"
    exit 1
else
    echo " $G postfix was downloaded successfully..........$N"
fi
