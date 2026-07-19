# Network Module

## Overview

This module provisions the foundational AWS networking infrastructure for the Enterprise Multi-Cloud Web Application Firewall Evaluation Platform.

It creates an isolated Virtual Private Cloud (VPC) along with public networking components required to host internet-facing workloads.

---

## Resources Created

- Amazon VPC
- Public Subnet(s)
- Internet Gateway
- Route Table
- Route Table Association

---

## Architecture

Internet

↓

Internet Gateway

↓

VPC

↓

Public Subnet

↓

EC2 / ALB

---

## Features

- Modular Terraform design
- Production-ready networking
- Public subnet architecture
- Reusable module
- Enterprise tagging strategy

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
└── phase-03/
    └── aws-network/
```

---

## Module Status

**Completed**