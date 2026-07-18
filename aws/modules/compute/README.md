# Compute Module

This module provisions the web server for the Enterprise Multi-Cloud WAF Platform.

## Resources

- Amazon Linux 2023 EC2 Instance
- Nginx Web Server
- IMDSv2 Metadata
- Custom Landing Page

## Features

- Uses latest Amazon Linux 2023 AMI
- Uses SSM Parameter Store for dynamic AMI lookup
- Uses existing Security Group
- Uses existing Public Subnet
- Installs Nginx automatically
- Generates a custom HTML page with instance metadata