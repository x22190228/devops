#!/bin/bash

if [ -d "env" ] 
then
    echo "Python virtual environment exists." 
else
    python -m venv env
fi

source env/bin/activate


pip install -r requirements.txt

if [ -d "logs" ] 
then
    echo "Log file already exist." 
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
