# Network Module

This module provisions the foundational networking resources for the Multi-Cloud WAF Platform.

## Resources

- Amazon VPC
- Public Subnet
- Internet Gateway
- Public Route Table
- Route Table Association

## Architecture

Internet

↓

Internet Gateway

↓

Public Route Table

↓

Public Subnet

↓

EC2 / ALB (Next Modules)

## Outputs

- VPC ID
- Public Subnet ID
- Internet Gateway ID
- Route Table ID