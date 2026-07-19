# GCP Validation Guide

## Overview

This document describes the validation process for the Google Cloud implementation of the **Enterprise Multi-Cloud Web Application Firewall Evaluation Platform**.

The objective is to verify that every Terraform module, Google Cloud resource, security control, and infrastructure component has been deployed successfully and functions as expected.

## Validation Objectives

The validation process confirms:

- Terraform configuration is valid
- Infrastructure deployment completed successfully
- Google Cloud resources are operational
- Network connectivity is working
- Compute Engine is accessible
- External HTTP(S) Load Balancer is functioning
- Google Cloud Armor protects the application
- IAM permissions are correctly configured
- Cloud Logging collects events
- Infrastructure can be destroyed successfully

## Validation Checklist

| Validation Item | Status |
|-----------------|--------|
| Terraform Format | ✅ |
| Terraform Validate | ✅ |
| Terraform Plan | ✅ |
| Terraform Apply | ✅ |
| Network Validation | ✅ |
| Firewall Validation | ✅ |
| Compute Validation | ✅ |
| Load Balancer Validation | ✅ |
| Cloud Armor Validation | ✅ |
| IAM Validation | ✅ |
| Logging Validation | ✅ |
| Application Validation | ✅ |
| Terraform Destroy | ✅ |

## Terraform Validation

### Terraform Format

Run:

```bash
terraform fmt -recursive
```

Expected Result

All Terraform files are properly formatted.

### Terraform Validate

Run:

```bash
terraform validate
```

Expected Result

```text
Success! The configuration is valid.
```

### Terraform Plan

Run:

```bash
terraform plan
```

Expected Result

Terraform displays the planned infrastructure changes without errors.

### Terraform Apply

Run:

```bash
terraform apply
```

Expected Result

```text
Apply complete!
```

## Network Validation

Verify the following resources in the Google Cloud Console:

- VPC Network
- Subnet
- IP Address Allocation

Expected Result

- Network created successfully
- Subnet available
- Resources communicate correctly

## Firewall Validation

Verify:

- Firewall Rules
- Allowed Ports
- Source Ranges

Expected Result

- HTTP (80) allowed
- HTTPS (443) allowed
- SSH (22) available for administration

## Compute Validation

Verify:

- Compute Engine VM
- Running Status
- External IP Address
- Startup Script Execution

Expected Result

- VM is running
- Public IP assigned
- Web server responds successfully

## Load Balancer Validation

Verify:

- Backend Service
- URL Map
- Health Check
- Forwarding Rule
- Frontend IP Address

Expected Result

- Backend is healthy
- Load Balancer serves requests successfully

## Google Cloud Armor Validation

Verify:

- Security Policy
- Backend Association
- Configured Rules

Perform test requests.

Examples:

- SQL Injection
- Cross Site Scripting (XSS)
- Path Traversal
- Invalid Requests

Expected Result

Google Cloud Armor evaluates traffic based on the configured security policies.

## IAM Validation

Verify:

- Service Account
- IAM Bindings

Expected Result

- Correct permissions assigned
- Least privilege maintained

## Logging Validation

Verify:

- Cloud Logging

Expected Result

- Infrastructure logs available
- Request logs collected
- Security events visible

## Application Validation

Retrieve the Load Balancer IP.

```bash
terraform output
```

Open:

```text
http://<LOAD_BALANCER_IP>
```

Expected Result

The sample web application loads successfully.

## Evidence Collection

Store validation screenshots under:

```text
evidence/
└── gcp/
    ├── phase-01/
    ├── phase-02/
    ├── phase-03/
    ├── phase-04/
    ├── phase-05/
    ├── phase-06/
    └── phase-07/
```

Recommended screenshots:

- Terraform Validate
- Terraform Plan
- Terraform Apply
- VPC Network
- Firewall Rules
- Compute Engine
- Load Balancer
- Google Cloud Armor
- IAM
- Cloud Logging
- Browser Validation
- Terraform Destroy

## Acceptance Criteria

The deployment is considered successful when:

- All Terraform modules deploy successfully
- All Google Cloud resources are operational
- The application is accessible through the Load Balancer
- Google Cloud Armor is associated with the backend service
- IAM permissions are correctly applied
- Cloud Logging captures events
- Validation evidence has been collected
- Terraform destroys all resources successfully

## Validation Summary

| Component | Validation Result |
|-----------|-------------------|
| Network | Passed |
| Firewall | Passed |
| Compute | Passed |
| Load Balancer | Passed |
| Google Cloud Armor | Passed |
| IAM | Passed |
| Logging | Passed |
| Application | Passed |
| Terraform Lifecycle | Passed |

## Related Documentation

- README.md
- architecture.md
- deployment-guide.md
- cleanup.md