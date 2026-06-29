#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_FOLDER="/var/log/shellscript-logs"
LOG_FILE=$(echo $0 | cat -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOG_FOLDER/$LOG_FILE-$TIMESTAMP.log"

PREM(){ 
    if [ $1 -ne 0 ]
  then
     echo -e "$2 ... $R FAILURE $N "
  fi
}

echo "script started executing at: $TIMESTAMP" &>>$LOG_FILE_NAME

if [ $USERID -ne 0 ]

then
    echo "ERROR:: you must have sudo access to execute the script"  
    exit 1 #other than 0
fi


dnf list installed mysql &>>$LOG_FILE_NAME

if [ $? -ne 0 ]

then
  dnf install mysql -y &>>$LOG_FILE_NAME
  PREM $? "installing MSQL" 
else
   echo -e   "MYSQL is Allredy $Y INSTALLED $N "
fi


dnf list installed git  &>>$LOG_FILE_NAME

if [ $? -ne 0 ]

then
  dnf install git -y &>>$LOG_FILE_NAME

  PREM $? "installing GIT" 
else 
  echo -e  "GIT is allredy $Y INSTALLED $N  " 
fi