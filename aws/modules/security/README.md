# Security Module

Creates:

- ALB Security Group
- EC2 Security Group

## Rules

### ALB

- HTTP (80) from Internet
- All outbound

### EC2

- HTTP (80) only from ALB Security Group
- SSH (22) only from Admin IP
- All outbound