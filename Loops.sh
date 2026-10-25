#!/bin/bash

user_id=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"

if [ $user_id -ne 0 ]; then

echo "Please run the script with Sudo Access"

exit 1
fi

mkdir -p "logs_folder"

echo "Script Exceution started at  ::$(date +"%f %T")" &>> $logs_file

validate(){
    if [ $1 -ne 0 ]; then
        echo "${2}..FAILED" | tee -a $logs_file
        exit 1
    else
        echo "${2}..SUCCESS" | tee -a $logs_file
    fi
}

for package in $@

do
  echo "Going to install : ${package}"
  dnf install $package - y &>> $logs_file
  validate $? "installing ${package}"
done