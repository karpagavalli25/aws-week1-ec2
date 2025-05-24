Configure EC2 Instance
🔹 Step-by-step Configuration:
🔸 Name
Give your instance a name:
Airline-WebServer-EC2

🔸 Amazon Machine Image (AMI)
Choose: Amazon Linux 2 AMI (HVM), SSD Volume Type

🔸 Instance Type
Select: t2.micro (Free Tier eligible)

🔸 Key Pair
Choose an existing key pair or create a new one (to connect via SSH)

🔸 Network Settings
Click Edit to customize:

VPC: Choose default or custom VPC

Subnet: Select a public subnet

Auto-assign Public IP: Enable

Firewall (Security Group):

Select: Create security group

Name: web-sg

Description: Allow SSH and HTTP

Inbound Rules:

SSH | TCP | 22 | Source: My IP (or 0.0.0.0/0 if testing)

HTTP | TCP | 80 | Source: 0.0.0.0/0

🔸 User Data (Advanced Details)
Scroll down and expand Advanced details → Paste the below script into User Data:

bash
Copy
Edit
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Welcome to Airline Booking Portal - Deployed via EC2 User Data Script</h1>" > /var/www/html/index.html
This script installs Apache and serves a basic HTML page.

✅ 4. Launch the EC2 Instance
Click Launch Instance

Wait for the instance to reach Running state

✅ 5. Access the Web Server
Get the Public IP:
From EC2 Dashboard → Instances → Select your instance

Copy the Public IPv4 address

Open Browser:
cpp
Copy
Edit
http://<Your-Public-IP>
You should see this message:

pgsql
Copy
Edit
Welcome to Airline Booking Portal - Deployed via EC2 User Data Script