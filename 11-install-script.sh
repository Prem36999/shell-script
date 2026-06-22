#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: you must have sudo access to execute thescript"  
    exit 1 #other than 0
fi
dnf list installed mysql
if [ $? -ne 0 ]
then
  dnf install mysql -y
  if [ $? -ne 0 ]
  then
     echo "installing MYSQL ... FAILURE"
     exit 1
  else
     echo "installing MYSQL... SUCCESS"
  fi
else
   echo "MYSQL is Allredy installed"
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