#!/bin/bash
apt update
apt install -y apache2
systemctl start apache2
systemctl enable apache2
sleep 5
cp /tmp/website/index.html /var/www/html/index.html
systemctl restart apache2