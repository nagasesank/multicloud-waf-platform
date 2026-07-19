# AWS WAF Module

## Overview

This module provisions AWS Web Application Firewall (WAF) to protect the Application Load Balancer against common web attacks.

---

## Resources Created

- AWS Web ACL
- Managed Rule Groups
- Web ACL Association

---

## Features

- AWS Managed Rules
- Layer 7 Protection
- OWASP protection
- SQL Injection protection
- Cross-site scripting protection

---

## Architecture

Internet

↓

AWS WAF

↓

Application Load Balancer

↓

EC2

---

## Validation

- Terraform fmt
- Terraform validate
- Terraform plan
- Terraform apply
- WAF validation
- Terraform destroy

---

## Evidence

```
evidence/
└── phase-07/
    └── aws-waf/
```

---

## Module Status

**Completed**