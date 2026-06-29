#!/bin/bash

USERID=$(id -u)

VALIDATE(){ 
    if [ $1 -ne 0 ]
  then
     echo  "$2 ... FAILURE"
     exit 1
  else
     echo  "$2... SUCCESS"
  fi
}

if [ $USERID -ne 0 ]
then
    echo "ERROR:: you must have sudo access to execute the script"  
    exit 1 #other than 0
fi


 dnf list installed mysql

if [ $? -ne 0 ]
then
  dnf install mysql -y
  VALIDATE $? "installing MSQL" 
else
   echo  "MYSQL is Allredy installed"
fi


 dnf list installed git

if [ $? -ne 0 ]
then
  dnf install git -y
  VALIDATE $? "installing GIT" 
else 
  echo "GIT is allredy installed"
fi
