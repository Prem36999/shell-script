#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: you must have sudo access to execute thescript"

fi  
exit 1 #other than 0

dnf install mysql -y

