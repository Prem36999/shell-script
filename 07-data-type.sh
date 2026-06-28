#!/bin/bash

NUMBER3=$1
NUMBER2=$2

TIMESTAMP=$(date)
echo "script ececuted at:: $TAIMESTAMP"
SUM=$(($NUMBER3+$NUMBER2))
echo "SUM of $NUMBER3 and $NUMBER2 is:: $SUM"


A=20
B=30
SUM=$((A+B))
echo "SUM of A and B is :: $SUM