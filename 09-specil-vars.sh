#!/bin/bash

echo "All variables passed: $@"
echo "Number of variables: $#"
echo "script name: $0"
echo "present working directory:$PWD"
echo "home directory ofcurrent user:$HOME"
echo "Wich user is running this script:$USER"
echo "Process id of current script:$$"
sleep 60 &
echo "process id of last command in background:$!"