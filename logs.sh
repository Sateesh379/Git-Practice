#!/bin/bash

user_id=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log

if [ $user_id -ne 0 ]; then
echo " Please run script with Sudo Access"
exit 1
fi

#mkdir -p logs_folder

echo "Script Exceution started at  :: $[ date + "%f %T" ]

sleep 10

#validate() { 
    
    if [ $1 -ne 0 ]; then
    echo " $2 installation failed"

    else
    echo "$2 success"
 fi
    }
#echo "proceeding..."
#dnf install nginx -y &>> $logs_file
#validate $? "Nginx installation"


#dnf install mysql  -y &>> $logs_file
#validate $? "Mysql Server application installation"

echo "Script Exceution ended at  :: $[ date + "%f %T" ]
