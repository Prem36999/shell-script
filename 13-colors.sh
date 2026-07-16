#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){ 
    if [ $1 -ne 0 ]
  then
     echo -e "$2 ... $R FAILURE $N "
     exit 1
  else
     echo -e  "$2... $G SUCCESS $N "
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
   echo -e $Y  "MYSQL is Allredy installed $N "
fi


dnf list installed git

if [ $? -ne 0 ]
then
  dnf install git -y
  VALIDATE $? "installing GIT" 
else 
  echo -e $Y "GIT is allredy installed $N "
fi

dnf list installed nginx

if [ $? -ne 0 ]
then 
dnf install nginx -y 
VALIDATE $? "INSTALLING NGINX"
elce
 echo -e $Y " nginx allredy installed $N"