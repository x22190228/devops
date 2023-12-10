#!/bin/bash

sudo su
if [ -d "env" ] 
then
    echo "Python virtual environment exists." 
else
    python3 -m venv env
fi

source env/bin/activate
echo "ENV Activated!" 

pip3 install -r requirements.txt

echo "Dependencies Installed" 
