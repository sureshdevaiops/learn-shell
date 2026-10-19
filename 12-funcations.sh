#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Please run this script with sudo access..."
    exit 1  # exit 1 - Stops the script and returns an error status.
fi

validate(){
    if [ $1 -ne 0 ]; then
    echo "${2} ...FAILED"
    exit 1
else 
    echo "${2} ...SUCCESS"
fi
}

dnf install nginx -y
validate $? "Nginx installation"

dnf install mysql -y
validate $? "mysql installation"

