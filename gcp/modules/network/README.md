# GCP Network Module

## Overview

The **Network** module provisions the foundational networking components required for the Enterprise Multi-Cloud Web Application Firewall Evaluation Platform on Google Cloud Platform.

This module creates an isolated Virtual Private Cloud (VPC) environment that serves as the networking foundation for all subsequent infrastructure components.

---

## Architecture

```
Internet
    │
    ▼
Custom VPC
    │
    ▼
Subnet
```

---

## Resources Created

| Resource | Description |
|----------|-------------|
| VPC Network | Custom VPC for the platform |
| Subnet | Regional subnet for Compute Engine instances |

---

## Terraform Resources

- `google_compute_network`
- `google_compute_subnetwork`

---

## Inputs

| Variable | Description |
|----------|-------------|
| `project_id` | Google Cloud Project ID |
| `project_name` | Resource naming prefix |
| `region` | Deployment region |

---

## Outputs

| Output | Description |
|--------|-------------|
| `network_id` | VPC Network ID |
| `network_name` | VPC name |
| `subnet_id` | Subnet ID |
| `subnet_name` | Subnet name |

---

## Validation

After deployment verify:

- VPC created successfully
- Subnet created successfully
- Correct CIDR block assigned
- Resources available in the selected region

Google Cloud Console:

```
VPC Network
    ↓
VPC Networks
```

---

## Deployment Workflow

```bash
terraform fmt
terraform validate
terraform plan
terraform apply
```

---

## Destroy

```bash
terraform destroy
```

---

## Dependencies

This module has no dependencies and must be deployed before all other modules.

---

## Used By

- Security Module
- Compute Module
- Load Balancer Module

---

## Engineering Decisions

- Custom VPC used instead of the default VPC.
- Modular Terraform design for reusability.
- Production-oriented resource naming convention.
- Region-specific subnet deployment.
- Built following Infrastructure as Code (IaC) best practices.

---

## Phase

**Project Phase:** G01 – Network