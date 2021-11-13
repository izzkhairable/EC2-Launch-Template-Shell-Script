#!/bin/bash
sudo su
yum update -y
amazon-linux-extras install epel -y
yum install git -y
yum install gcc -y
yum install build-essential -y
yum install python3-pip python3-devel python3-setuptools -y
yum install -y mysql-devel # Extra packages you need, if not remove it.
mkdir ~/.aws
echo -e "Your access id and secret to aws, if needed e.g. accessing S3 Bucket." >> ~/.aws/config
mkdir /var/www
cd /var/www
git clone https://your/git/repo.git /var/www #If private repo please SSH instead.
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python your_python_file_containing_flask_route.py