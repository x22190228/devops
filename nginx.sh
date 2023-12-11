#!/bin/bash

sudo cp -rf app.conf /etc/nginx/sites-available/app.conf
chmod 705 /var/lib/jenkins/workspace/devops-cicd

sudo ln -s /etc/nginx/sites-available/app.conf /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx started"

sudo systemctl status nginx
