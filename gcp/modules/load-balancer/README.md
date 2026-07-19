# GCP HTTP Load Balancer Module

## Overview

This module provisions the external HTTP Load Balancer used to expose the Compute Engine instance.

---

## Resources Created

- Instance Group
- Health Check
- Backend Service
- URL Map
- HTTP Proxy
- Global Static IP
- Global Forwarding Rule

---

## Terraform Resources

- google_compute_instance_group
- google_compute_health_check
- google_compute_backend_service
- google_compute_url_map
- google_compute_target_http_proxy
- google_compute_global_address
- google_compute_global_forwarding_rule

---

## Inputs

- instance_self_link
- network_name

---

## Outputs

- load_balancer_ip
- backend_service_id

---

## Validation

Verify:

- Backend Healthy
- Load Balancer Active
- Static IP Allocated
- Browser access successful

---

## Dependencies

Requires:

- Compute Module

Used By

- Cloud Armor
- Logging

---

## Engineering Decisions

- Global HTTP Load Balancer
- Managed Health Checks
- Static Public IP

---

## Phase

G04 – HTTP Load Balancer