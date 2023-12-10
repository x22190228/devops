#!/bin/bash
if [ -d "env" ] 
then
    echo "Python virtual environment exists." 
else
    python3 -m venv env
fi

ls
source env/bin/activate
echo "in env"


pip3 install -r requirements.txt
echo "Requirements installed"
if [ -d "logs" ] 
then
    echo "Log folder exists." 
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
