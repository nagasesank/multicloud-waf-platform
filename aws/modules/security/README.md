# Security Module

## Overview

This module provisions Security Groups for the AWS infrastructure.

It controls inbound and outbound traffic for EC2 instances and the Application Load Balancer following the Principle of Least Privilege.

---

## Resources Created

- EC2 Security Group
- ALB Security Group

---

## Features

- Least Privilege
- HTTP/HTTPS access
- SSH restriction
- Reusable Terraform module
- Enterprise tagging

---

## Validation

- Terraform fmt
- Terraform validate
- Terraform plan
- Terraform apply
- AWS Console validation
- Terraform destroy

---

## Evidence

```
evidence/
└── phase-04/
    └── aws-security/
```

---

## Module Status

**Completed**