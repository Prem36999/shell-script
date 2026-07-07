#!/bin/bash

NUMBER=$1
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

# -gt , -lt , -eq , -ge , -le
if [ $NUMBER -gt 100 ]
then 
  echo -e "given number is $G greatar than  100 $N "
else
  echo -e "given number is $R less than or equal to  100 $N "
fi    

MARKS=$2
if [ $MARKS -ge 35 ]
then
  echo -e "ravi is  $G passed $N "
else 
  echo -e "ravi is $R  failed $N "
fi

MARKS=$3
if [ $MARKS -ge 90 ]
then
  echo -e " $G A grade $N"
  elif [ $MARKS -ge 75 ]
  then 
   echo -e "$Y B grade $N"
   else 
   echo " C grade"
  fi