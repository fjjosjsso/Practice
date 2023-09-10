#!/bin/bash
USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo "YOUR IN USER"
    exit 1
else
    echo "YOUR IN ROOT"

fi
