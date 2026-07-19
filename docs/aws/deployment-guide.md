# AWS Deployment Guide

## Overview

This document describes the complete deployment process for the AWS implementation of the **Enterprise Multi-Cloud Web Application Firewall Evaluation Platform**.

The infrastructure is provisioned using Terraform and follows enterprise Infrastructure as Code (IaC) best practices.


# Deployment Workflow

```
Clone Repository

↓

Configure AWS CLI

↓

Initialize Terraform

↓

Validate Configuration

↓

Generate Execution Plan

↓

Deploy Infrastructure

↓

AWS Console Verification

↓

Attack Simulation

↓

Evidence Collection

↓

Destroy Infrastructure
```

# Prerequisites

Ensure the following tools are installed before deployment.

| Tool | Purpose |
|--------|----------|
| Terraform | Infrastructure as Code |
| AWS CLI | AWS Authentication |
| Git | Repository Management |
| Visual Studio Code | Development Environment |

Verify the installation.

```bash
terraform version
aws --version
git --version
```

# Clone Repository

Clone the project repository.

```bash
git clone <repository-url>

cd multicloud-waf-platform
```

# Configure AWS Credentials

Configure AWS CLI credentials.

```bash
aws configure
```

Verify authentication.

```bash
aws sts get-caller-identity
```

# Navigate to AWS Directory

```bash
cd aws
```
# Initialize Terraform

Download required providers and initialize the working directory.

```bash
terraform init
```

Expected Result

```
Terraform has been successfully initialized.
```


# Format Terraform Code

Ensure consistent formatting.

```bash
terraform fmt -recursive
```

# Validate Configuration

Validate the Terraform configuration.

```bash
terraform validate
```

Expected Result

```
Success! The configuration is valid.
```

# Generate Execution Plan

Review infrastructure changes before deployment.

```bash
terraform plan
```

Verify the following resources are included.

- Network
- Security Groups
- EC2 Instance
- Application Load Balancer
- AWS WAF
- IAM Role
- IAM Instance Profile

# Deploy Infrastructure

Deploy the infrastructure.

```bash
terraform apply
```

Type

```text
yes
```

Expected Result

```
Apply complete!
```

# AWS Console Verification

After deployment, verify the following resources.

## Network

- Amazon VPC
- Public Subnets
- Route Tables
- Internet Gateway

## Security

- Security Groups

## Compute

- EC2 Instance
- Public IP Address

## Load Balancer

- Application Load Balancer
- Target Group
- Listener

## AWS WAF

- Web ACL
- Managed Rule Groups
- Resource Association

## IAM

Verify:

- IAM Role
- IAM Instance Profile
- CloudWatch Policy
- Amazon SSM Policy

# Application Validation

Open the Application Load Balancer DNS name in a browser.

Expected Result

The sample web application should be accessible.

# Attack Simulation

Execute validation tests.

Examples include:

- SQL Injection
- Cross Site Scripting (XSS)
- Path Traversal
- Rate Limiting

Observe AWS WAF behavior.

# Evidence Collection

Capture screenshots for each completed deployment phase.

Evidence Structure

```
evidence/
└── aws/
    ├── phase-01/
    ├── phase-02/
    ├── phase-03/
    ├── phase-04/
    ├── phase-05/
    ├── phase-06/
    ├── phase-07/
    └── phase-08/
```

Collect evidence for:

- Terraform Validate
- Terraform Plan
- Terraform Apply
- AWS Console
- Resource Validation
- Attack Validation
- Terraform Destroy

# Destroy Infrastructure

Remove all deployed resources.

```bash
terraform destroy
```

Type

```text
yes
```

Expected Result

```
Destroy complete!
```

# Troubleshooting

## Terraform Initialization Issues

```bash
terraform init -upgrade
```

## Validation Errors

```bash
terraform validate
```

Review missing variables, syntax errors, or module references.

## Deployment Errors

Verify:

- AWS credentials
- IAM permissions
- Selected AWS Region
- Resource quotas

## Resource Cleanup Issues

Refresh Terraform state.

```bash
terraform refresh
```

If required:

```bash
terraform destroy -auto-approve
```

# Deployment Summary

| Stage | Status |
|--------|--------|
| Terraform Initialization | Completed |
| Terraform Validation | Completed |
| Infrastructure Deployment | Completed |
| AWS Console Verification | Completed |
| Attack Validation | Completed |
| Evidence Collection | Completed |
| Infrastructure Cleanup | Completed |

# Related Documentation

- README.md
- architecture.md
- validation.md
- cleanup.md