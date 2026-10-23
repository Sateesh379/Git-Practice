#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
echo " Please run script with Sudo Access"
exit 1
fi

echo "proceeding..."
dnf install nginx -y

if [ $? -ne 0]; then
echo "Nginx installation is Failed"
exit 1

else 
echo "installing Nginx succeed"

fi

dnf install mysql  -y

if [ $? -ne 0]; then
echo "mysql installation is Failed"
exit 1

else 
echo "mysql client install succeed"

fi

echo "still proceed"
