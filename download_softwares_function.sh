#!/bin/bash
USER=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
if [ $USER -ne 0 ]
then
    echo -e "$R YOUR NOT IN ROOT ACCESS $N"
else
    echo -e "$G YOUR IN ROOT ACCESS $N"
fi
vaildate (){
    if [ $1 -ne 0 ]
    then
    echo -e "$R $2 FAILURE $N"
    else
    echo -e "$G $2 SUCCESSFULL $N"
    fi
}
yum install $i -y
vaildate $? "$i  ........Installing"