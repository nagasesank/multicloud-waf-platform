# Compute Module

## Overview

This module provisions the EC2 instance hosting the sample web application.

The EC2 instance is deployed inside the public subnet and uses an IAM Instance Profile for secure AWS service access.

---

## Resources Created

- Amazon EC2 Instance

---

## Features

- Amazon Linux
- IAM Role integration
- Security Group association
- User Data support
- Modular Terraform design

---

## Validation

- Terraform fmt
- Terraform validate
- Terraform plan
- Terraform apply
- EC2 validation
- Terraform destroy

---

## Evidence

```
evidence/
└── phase-05/
    └── aws-compute/
```

---

## Module Status

**Completed**