#!/bin/bash
cd /var/lib/jenkins/workspace/devops-cicd/env/bin/python3
source env/bin/activate
cd app
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver



