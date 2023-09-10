#!/bin/bash
USER=$(id -u)
if [ $USER -ne 0 ]
then 
echo "ERROR:: Your not in root, Kindly get root access"
    exit 1
else
    echo "Your in root...........Mysql start downloading"
fi
yum install mysqlll -y
if [ $? -ne 0 ]
then
    echo "Mysql was not downloaded there is some error kincldy check error and again start downloading"
    exit 1
else
    echo "Mysql was downloaded successfully.........."
fi
