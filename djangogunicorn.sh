#!/bin/bash
source env/bin/activate

echo "In Environment"
cd /var/lib/jenkins/workspace/devops-cicd/app
echo "in app folder"
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic -- no-input
cd /var/lib/jenkins/workspace/devops-cicd
sudo cp -rf gunicorn.socket /etc/systemd/system/
sudo cp -rf gunicorn.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start gunicorn
echo "Gunicorn has started."
sudo systemctl enable gunicorn
echo "Gunicorn has been enabled."
sudo systemctl restart gunicorn
sudo systemctl status gunicorn
