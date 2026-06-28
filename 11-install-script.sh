#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
    echo "ERROR:: you must have sudo access to execute the script"  
    exit 1 #other than 0
fi
dnf list installed mysql
if [ $? -ne 0 ]
then
  dnf install mysql -y
  if [ $? -ne 0 ]
  then
     echo -e "installing MYSQL ...$R FAILURE $N "
     exit 1
  else
     echo -e "installing MYSQL...$G SUCCESS $N "
  fi
else
   echo -e $G "MYSQL is Allredy installed $N "
fi

# if [ $? -ne 0 ]
# #   then
# #      echo "installing MYSQL ... FAILURE"
# #      exit 1
# #   else
# #      echo "installing MYSQL... SUCCESS"
#  fi
dnf list installed git
if [ $? -ne 0 ]
then
  dnf install git -y
  if [ $? -ne 0 ]
  then
      echo "installing GIT ...  FAILURE"    
      exit 1 
  else
      echo "installing GIT... SUCCESS" 
  fi       
else 
  echo "GIT is allredy installed"
fi  


# if [ $? -ne 0 ]
#   then
#      echo "installing GIT ... FAILURE"
#      exit 1
#   else
#      echo "installing GIT... SUCCESS"
#   fi