#!/bin/bash

sudo cp -rf app.conf /etc/nginx/sites-available/app.conf
chmod 710 /var/lib/jenkins/workspace/devops-cicd

sudo ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx started"

sudo systemctl status nginx
