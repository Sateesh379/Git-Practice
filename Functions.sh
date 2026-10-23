#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
echo " Please run script with Sudo Access"
exit 1
fi

validate() { 
    
    if [ $1 -ne 0]; then
    echo " $2 installation failed"

    else
    echo "$2 success"  
    
    }

echo "proceeding..."
dnf install nginx -y
validate $? "Nginx installation"


dnf install mysql  -y
validate $? "Mysql Server application installation"

fi

echo "still proceed"
