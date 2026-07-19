# Application Load Balancer Module

## Overview

This module provisions an internet-facing AWS Application Load Balancer that distributes incoming HTTP traffic to backend EC2 instances.

---

## Resources Created

- Application Load Balancer
- Target Group
- Listener

---

## Architecture

Internet

↓

Application Load Balancer

↓

Target Group

↓

EC2

---

## Features

- Layer 7 Load Balancing
- Health Checks
- Target Groups
- Internet-facing architecture
- Modular Terraform implementation

---

## Validation

- Terraform fmt
- Terraform validate
- Terraform plan
- Terraform apply
- ALB validation
- Terraform destroy

---

## Evidence

```
evidence/
└── phase-06/
    └── aws-alb/
```

---

## Module Status

**Completed**