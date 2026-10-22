#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
echo " Please run script with Sudo Access"
fi

dnf install nginx -y
echo "installing Nginx"