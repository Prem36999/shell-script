#!/bin/bash

NUMBER=$1
# -gt , -lt , -eq , -ge , -le
if [ $NUMBER -gt 100 ]
then 
  echo  "given number is greatar than  100 "
else
  echo  "given number is less than or equal to  100  "
fi    

MARKS=$2
if [ $MARKS -ge 35 ]
then
  echo "ravi is   passed  "
else 
  echo  "ravi is  failed  "
fi

MARKS=$3
if [ $MARKS -ge 90 ]
then
  echo " A grade"
  elif [ $MARKS -ge 75 ]
  then 
   echo "B grade"
   else 
   echo " C grade"
  fi