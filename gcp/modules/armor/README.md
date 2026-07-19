# GCP Cloud Armor Module

## Overview

The Cloud Armor module protects the backend service using Layer 7 Web Application Firewall policies.

---

## Resources Created

- Cloud Armor Security Policy
- Deny Rule
- Default Allow Rule

---

## Terraform Resources

- google_compute_security_policy

---

## Inputs

- project_name

---

## Outputs

- security_policy_id

---

## Validation

Verify:

- Security Policy created
- Attached to Backend Service
- Rules applied successfully

Console:

Network Security

↓

Cloud Armor

---

## Dependencies

Requires:

- Load Balancer

---

## Engineering Decisions

- Default Deny Strategy
- Explicit Allow Rules
- Backend Service Attachment

---

## Phase

G05 – Cloud Armor