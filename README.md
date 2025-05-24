# Week 1 - AWS EC2 Setup with Apache

## 📌 Goal
Deploy a web server on Amazon EC2 with a custom security group and user-data script to auto-install Apache.

## ✅ Services Used
- EC2 (Amazon Linux 2, t2.micro)
- IAM (for key pair)
- VPC (default or custom)
- Security Groups
- CloudWatch (coming next)

## 🧰 User Data Script
```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Welcome to Airline Booking Portal - Deployed via EC2 User Data Script</h1>" > /var/www/html/index.html


| Protocol | Port | Source    |
| -------- | ---- | --------- |
| SSH      | 22   | My IP     |
| HTTP     | 80   | 0.0.0.0/0 |

