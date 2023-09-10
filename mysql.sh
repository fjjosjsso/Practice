#!/bin/bash
USER=$(id -u)
if [ $USER -ne 0 ]
then 
echo "ERROR:: Your not in root, Kindly get root access"
    exit 1
else
    echo "Your in root...........Mysql start downloading"
fi
yum install mysql -y