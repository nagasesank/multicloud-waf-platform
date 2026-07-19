# GCP Compute Module

## Overview

The **Compute** module provisions the Compute Engine virtual machine hosting the demonstration web application.

The VM is deployed using a startup script stored separately from Terraform configuration for maintainability.

---

## Architecture

Load Balancer

↓

Instance

↓

Compute Engine VM

↓

Nginx

---

## Resources Created

| Resource | Description |
|----------|-------------|
| Compute Engine VM | Debian 12 Virtual Machine |

---

## Terraform Resources

- google_compute_instance

---

## Startup Configuration

Startup script location:

modules/compute/startup.sh

The project intentionally stores the startup script as an external file instead of an inline heredoc.

---

## Inputs

- project_id
- zone
- subnet_name
- service_account_email

---

## Outputs

- instance_name
- instance_id
- instance_self_link

---

## Validation

Verify:

- VM Running
- Debian 12
- Startup Script executed
- Nginx installed

Console:

Compute Engine

↓

VM Instances

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

- Network
- Security
- IAM

Used By:

- Load Balancer

---

## Engineering Decisions

- Dedicated Service Account
- External startup script
- e2-micro instance
- Production naming convention

---

## Phase

G03 – Compute