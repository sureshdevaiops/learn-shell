#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Please run this script with sudo access..."
    exit 1  # exit 1 - Stops the script and returns an error status.
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Nginx installation is failed"
    exit 1
else 
    echo "Nginx installation is success"
fi
