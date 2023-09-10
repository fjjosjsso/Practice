#!/bin/bash
USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo -e "$R ERROR:: YOUR NOT IN ROOT ACCESS $N"
else 
    echo -e "$G YOUR IS ROOT ACCESS $N"
fi
        yum install $1 -y
if [ $? -ne 0 ]
    then
    echo -e " $R $1 NOT DOWNLOADED KINDLY CHECK ERROR IN CODE $N"
    else
    echo -e "$G $1 WAS SUCESSFULLY DOWNLOADED $N"
fi
yum install $2 -y
if [ $? -ne 0 ]
    then
    echo -e " $R $2 NOT DOWNLOADED KINDLY CHECK ERROR IN CODE $N"
    else
    echo -e "$G $2 WAS SUCESSFULLY DOWNLOADED $N"
fi
