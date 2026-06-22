#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: you must have sudo access to execute thescript"  
    exit 1 #other than 0
fi

dnf install mysql -y
if [ $? -ne 0 ]
then 
   echo "installing MSQL ...   FAILURE"
   exit 1   
else 
   echo "installing MYQL...  SUCCESS"
fi

dnf install gitt -y
if [ $? -ne 0 ]
then
    echo "installing GIT ...  FAILURE"    
    exit 1 
else
    echo "installing GIT... SUCCESS" 
fi       