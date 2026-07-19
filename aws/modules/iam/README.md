# IAM Module

## Overview

This module provisions IAM resources required for the EC2 instance.

It follows AWS security best practices by using IAM Roles and Instance Profiles instead of long-term credentials.

---

## Resources Created

- IAM Role
- IAM Instance Profile
- CloudWatch Policy Attachment
- Amazon SSM Managed Instance Policy Attachment

---

## Architecture

EC2

↓

IAM Instance Profile

↓

IAM Role

↓

CloudWatch

↓

SSM

---

## Features

- Least Privilege
- No static credentials
- IAM Role authentication
- CloudWatch integration
- SSM integration
- Enterprise module design

---

## Validation

- Terraform fmt
- Terraform validate
- Terraform plan
- Terraform apply
- IAM validation
- Terraform destroy

---

## Evidence

```
evidence/
└── phase-08/
    └── aws-iam/
```

---

## Module Status

**Completed**