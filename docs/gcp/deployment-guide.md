# GCP Deployment Guide

## Overview

This guide describes the deployment process for the Google Cloud implementation of the **Enterprise Multi-Cloud Web Application Firewall Evaluation Platform**.

The deployment is performed entirely using Terraform and follows Infrastructure as Code (IaC) best practices.

## Prerequisites

Ensure the following software is installed and configured.

| Requirement | Status |
|-------------|--------|
| Google Cloud CLI | ✅ |
| Terraform | ✅ |
| Git | ✅ |
| Visual Studio Code | ✅ |
| Google Cloud Project | ✅ |

## Authenticate with Google Cloud

Authenticate using the Google Cloud CLI.

```bash
gcloud auth login
```

Verify the active account.

```bash
gcloud auth list
```

Verify the active project.

```bash
gcloud config get-value project
```

## Navigate to the Project

```bash
cd gcp
```

## Initialize Terraform

Initialize the Terraform working directory.

```bash
terraform init
```

Expected Result

```text
Terraform has been successfully initialized.
```

## Format Terraform Configuration

Format all Terraform files.

```bash
terraform fmt -recursive
```

## Validate Terraform Configuration

Validate the Terraform configuration.

```bash
terraform validate
```

Expected Result

```text
Success! The configuration is valid.
```

## Review the Execution Plan

Generate the execution plan.

```bash
terraform plan
```

Review the following resources before deployment:

- VPC Network
- Subnet
- Firewall Rules
- Compute Engine VM
- External HTTP(S) Load Balancer
- Google Cloud Armor Security Policy
- Cloud Logging
- IAM Resources

## Deploy Infrastructure

Deploy the infrastructure.

```bash
terraform apply
```

Confirm the deployment.

```text
yes
```

Expected Result

```text
Apply complete! Resources: X added.
```

## Validate Resources

Open the Google Cloud Console and verify the deployed resources.

### Network

Verify:

- VPC Network
- Subnet

### Firewall

Verify:

- Firewall Rules

### Compute

Verify:

- Compute Engine VM
- External IP Address
- Startup Script

### Load Balancer

Verify:

- Backend Service
- URL Map
- Health Check
- Forwarding Rule
- External IP Address

### Google Cloud Armor

Verify:

- Security Policy
- Backend Association
- Security Rules

### Logging

Verify:

- Cloud Logging

### IAM

Verify:

- Service Account
- IAM Bindings

## Validate the Application

Retrieve the Load Balancer IP address.

```bash
terraform output
```

Open the application in a browser.

```text
http://<LOAD_BALANCER_IP>
```

Expected Result

The sample web application should be accessible.

## Attack Simulation

Perform the following validation tests.

- SQL Injection
- Cross Site Scripting (XSS)
- Path Traversal
- Invalid HTTP Requests
- Unauthorized Requests

Expected Result

Google Cloud Armor should inspect and enforce the configured security policies.

## Evidence Collection

Capture screenshots for every deployment phase.

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

Recommended screenshots include:

- Terraform Validate
- Terraform Plan
- Terraform Apply
- Google Cloud Console
- Compute Engine
- VPC Network
- Load Balancer
- Google Cloud Armor
- IAM
- Cloud Logging

## Destroy Infrastructure

After validation, destroy all resources.

```bash
terraform destroy
```

Confirm the operation.

```text
yes
```

Expected Result

```text
Destroy complete! Resources: X destroyed.
```

## Troubleshooting

### Terraform Initialization Failed

```bash
terraform init -upgrade
```

### Validation Failed

```bash
terraform validate
```

Review the reported configuration errors.

### Deployment Failed

```bash
terraform plan
```

Review the planned resources and resolve any dependency issues.

### Resource Verification

Verify resources using the Google Cloud Console before collecting evidence.

## Deployment Summary

| Step | Status |
|------|--------|
| Authentication | ✅ |
| Terraform Init | ✅ |
| Terraform Format | ✅ |
| Terraform Validate | ✅ |
| Terraform Plan | ✅ |
| Terraform Apply | ✅ |
| Console Validation | ✅ |
| Evidence Collection | ✅ |
| Terraform Destroy | ✅ |

## Related Documentation

- README.md
- architecture.md
- validation.md
- cleanup.md