#!/usr/bin/env bash
yum update
yum install httpd -y
chkconfig httpd on
service httpd start
cd var/www/html
echo "<html><h1></h1></html>" > index.html
