#!/bin/bash
SERVICE=colord.service

if (! systemctl is-active --quiet $SERVICE)then
    echo "Do tou want to start $SERVICE?"
    read -p "Input Y/n: " -n 1 Choice
    if [ "$Choice" = "Y" ];
    then
        echo 
        echo "Service is starting..."
        systemctl start $SERVICE 
    fi
else
    echo "Service is running"
fi
