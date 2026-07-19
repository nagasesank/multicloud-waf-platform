# GCP IAM Module

## Overview

This module provisions a dedicated Service Account and assigns only the minimum IAM permissions required by the Compute Engine instance.

---

## Resources Created

- Service Account
- Logging Writer Role
- Monitoring Metric Writer Role

---

## Terraform Resources

- google_service_account
- google_project_iam_member

---

## Inputs

- project_id
- project_name

---

## Outputs

- service_account_email
- service_account_name

---

## Validation

Verify:

- Service Account created
- IAM Roles assigned
- VM attached to Service Account

Console:

IAM & Admin

↓

Service Accounts

---

## Dependencies

Used By:

- Compute Module

---

## Engineering Decisions

- Dedicated Service Account
- Principle of Least Privilege
- Production IAM Design

---

## Phase

G07 – IAM