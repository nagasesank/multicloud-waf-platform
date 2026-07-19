# GCP Cleanup Guide

## Overview

This document describes the cleanup procedure for the Google Cloud implementation of the **Enterprise Multi-Cloud Web Application Firewall Evaluation Platform**.

The objective is to remove all deployed resources after validation to prevent unnecessary cloud costs and maintain a clean Google Cloud environment.

## Cleanup Objectives

The cleanup process ensures:

- Complete infrastructure removal
- No orphaned cloud resources
- Cost optimization
- Clean Terraform state
- Successful Infrastructure as Code lifecycle completion

## Destroy Infrastructure

Navigate to the GCP Terraform directory.

```bash
cd gcp
```

Destroy all deployed resources.

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

## Verify Resource Removal

After Terraform destroy completes, verify that the following resources no longer exist in the Google Cloud Console.

### Network

- VPC Network
- Subnet

### Firewall

- Firewall Rules

### Compute

- Compute Engine VM
- External IP Address

### Load Balancer

- Backend Service
- URL Map
- Target Proxy
- Forwarding Rule
- Health Check

### Google Cloud Armor

- Security Policy

### Logging

- Cloud Logging Resources

### IAM

- Service Account
- IAM Bindings

## Terraform State Verification

Verify the Terraform state.

```bash
terraform state list
```

Expected Result

No managed resources should remain.

## Google Cloud Console Verification

Verify the following sections:

- VPC Network
- Firewall
- Compute Engine
- Load Balancing
- Cloud Armor
- IAM
- Cloud Logging

Expected Result

No Terraform-managed resources remain.

## Cost Verification

Verify that no billable resources remain.

Review the following services:

- Compute Engine
- VPC Network
- Load Balancing
- Cloud Armor
- Cloud Logging

## Cleanup Checklist

| Task | Status |
|------|--------|
| Terraform Destroy | ✅ |
| Network Removed | ✅ |
| Firewall Removed | ✅ |
| Compute Removed | ✅ |
| Load Balancer Removed | ✅ |
| Cloud Armor Removed | ✅ |
| Logging Removed | ✅ |
| IAM Removed | ✅ |
| Terraform State Verified | ✅ |
| Cost Verification Completed | ✅ |

## Evidence

Store the cleanup evidence under:

```text
evidence/
└── gcp/
    └── phase-07/
        └── terraform-destroy.png
```

## Troubleshooting

### Destroy Failed

Run:

```bash
terraform plan
```

Review any remaining resources before retrying.

### State Issues

Refresh the Terraform state.

```bash
terraform refresh
```

If resources still appear in the console, verify whether they were created manually or by Terraform.

### Dependency Errors

Terraform automatically removes resources based on dependency order.

If any resources remain:

- Verify dependent resources have been removed.
- Retry `terraform destroy`.
- Check the Google Cloud Console for any manually created resources.

## Cleanup Summary

The GCP environment is considered successfully cleaned when:

- No Terraform-managed resources remain.
- No Google Cloud resources remain in the selected project.
- Terraform state is empty.
- Cleanup evidence has been collected.
- No unnecessary cloud costs can be occur.

## Related Documentation

- README.md
- architecture.md
- deployment-guide.md
- validation.md