#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Welcome to Airline Booking Portal - Deployed via EC2 User Data Script</h1>" > /var/www/html/index.html