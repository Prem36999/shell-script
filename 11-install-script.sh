#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: you must have sudo access to execute thescript"

fi  
dnf install mysql -y

dnf inatall git -y