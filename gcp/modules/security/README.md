# GCP Security Module

## Overview

The **Security** module configures Google Cloud firewall rules to secure the infrastructure while allowing only the required inbound traffic.

This module follows the Principle of Least Privilege by permitting only HTTP, SSH, and Health Check traffic.

---

## Architecture

Internet
│
├── HTTP (80)
├── SSH (22)
└── Google Health Checks
        │
        ▼
Firewall Rules
        │
        ▼
Compute Engine

---

## Resources Created

| Resource | Description |
|----------|-------------|
| HTTP Firewall Rule | Allows inbound HTTP traffic |
| SSH Firewall Rule | Allows SSH administration |
| Health Check Rule | Allows Google Load Balancer health checks |

---

## Terraform Resources

- google_compute_firewall

---

## Inputs

- project_id
- project_name
- network_name

---

## Outputs

- http_firewall_name
- ssh_firewall_name
- healthcheck_firewall_name

---

## Validation

Verify:

- HTTP rule created
- SSH rule created
- Health Check rule created

Console:

VPC Network → Firewall

---

## Deployment

terraform fmt

terraform validate

terraform plan

terraform apply

---

## Destroy

terraform destroy

---

## Dependencies

Requires:

- Network Module

Used By:

- Compute Module

---

## Engineering Decisions

- Least Privilege firewall rules
- Network Tag based association
- Production-ready naming convention

---

## Phase

G02 – Firewall