#!/bin/bash

user_id=$(id -u)
logs_folder="var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"

if [ $user_id -ne 0 ]; then
    echo "Please run this script with sudo access..."
    exit 1  # exit 1 - Stops the script and returns an error status.
fi

mkdir -p $logs_folder

echo "Script started at $(date +%F %T")"  

validate(){
    if [ $1 -ne 0 ]; then
    echo "${2} ...FAILED" | tee -a $logs_file
    exit 1
else 
    echo "${2} ...SUCCESS" | tee -a $logs_file
fi
}

dnf install nginx -y &>> $logs_file
validate $? "Nginx installation"

dnf install mysql -y &>> $logs_file
validate $? "mysql installation"

echo "Script ended here at $(date +%F %T")"  
