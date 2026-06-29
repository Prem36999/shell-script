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

for package in $@
do
 dnf list installed $package
 if [ $? -ne 0 ]
 then
 dnf install $package -y 
 VALIDATE $? "inatalling $package "
 else
 echo -e "$package is allrady $Y.... INSTALLLED $N"
 fi 
done
