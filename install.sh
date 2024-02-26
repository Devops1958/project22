#!/bin/bash
sudo update httpd
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo install wget -y
wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip
unzip main.zip
cp -r static-resume-main/* /var/www/html/  
