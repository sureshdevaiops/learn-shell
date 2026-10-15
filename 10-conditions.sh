#!/bin/bash

echo "Please enter the markes"
read marks

if [ $marks -lt 33] ; then
    echo "Fail"
elif [ $markes -lt 50 ]; then
    echo "Pass, 3rd class"
elif [ $markes -lt 60 ]; then
    echo "Pass, 2nd class"
elif [ $markes -lt 75 ]; then
    echo "Pass, 1st class"
else
    echo "Distinctions"
fi

echo "Thanks Script Ended"




