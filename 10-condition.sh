#!/bin/bash

NUMBER=$1
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
# -gt , -lt , -eq , -ge , -le
if [ $NUMBER -gt 100 ]
then 
  echo -e "given number is greatar than $G 100 $N "
else
  echo -e "given number is less than or equal to $R 100 $N "
fi    

MARKS=$2
if [ $MARKS -ge 35 ]
then
  echo -e "ravi is  $G passed $N "
else 
  echo -e  "ravi is $R failed $N "
fi

JOB=$3
if [ $JOB -gt 75 ]
then
   echo -e "prem got the job $G sucuussully $N "
else
  echo -e "prem did not got the job $Y hold on $N "
  fi