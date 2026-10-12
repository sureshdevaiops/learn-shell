#!/bin/bash

echo "Please enter your username:"
read USER_NAME

echo "Please enter your password:"
read -s PASSWORD

echo
echo "Username is: $USER_NAME"
echo "Password accepted successfully"

#read USER_NAME – Stores the entered username in a variable.
#read -s PASSWORD – Reads the password without displaying it on the screen.