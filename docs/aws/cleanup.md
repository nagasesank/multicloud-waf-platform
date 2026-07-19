# AWS Cleanup Guide

## Overview

This document describes the cleanup procedure for the AWS implementation of the Enterprise Multi-Cloud Web Application Firewall Evaluation Platform.

The objective is to remove all deployed resources after validation to prevent unnecessary AWS charges and maintain a clean cloud environment.

## Cleanup Objectives

The cleanup process ensures:

- Complete infrastructure removal
- No unused cloud resources
- Cost optimization
- Clean Terraform state
- Successful project lifecycle completion

## Destroy Infrastructure

Navigate to the AWS Terraform directory.

```bash
cd aws
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

After Terraform destroy completes, verify the following resources have been removed from the AWS Console.

### Network

- Amazon VPC
- Public Subnets
- Internet Gateway
- Route Tables

### Security

- Security Groups

### Compute

- EC2 Instance

### Load Balancer

- Application Load Balancer
- Target Group
- Listener

### AWS WAF

- Web ACL Association

### IAM

- IAM Role
- IAM Instance Profile

## Terraform State Verification

Verify Terraform state.

```bash
terraform state list
```

Expected Result

No managed resources should remain.

## Cost Verification

Verify that no billable resources remain.

Review the following services:

- Amazon EC2
- Amazon VPC
- Elastic IP Addresses
- Application Load Balancer
- AWS WAF
- CloudWatch
- IAM

## Cleanup Checklist

| Task | Status |
|------|--------|
| Terraform Destroy | ✅ |
| Network Removed | ✅ |
| Security Resources Removed | ✅ |
| Compute Removed | ✅ |
| Load Balancer Removed | ✅ |
| AWS WAF Removed | ✅ |
| IAM Removed | ✅ |
| Terraform State Verified | ✅ |
| Cost Verification Completed | ✅ |

## Evidence

Store the cleanup evidence under:

```text
evidence/
└── aws/
    └── phase-08/
        └── terraform-destroy.png
```

## Troubleshooting

### Destroy Failed

Run:

```bash
terraform plan
```

Review the remaining resources before retrying.

### State Issues

Refresh the Terraform state.

```bash
terraform refresh
```

If required, manually inspect the AWS Console for remaining resources.

### Dependency Errors

Terraform removes resources automatically based on dependencies.

If resources remain:

- Verify dependent resources are deleted.
- Retry `terraform destroy`.

## Cleanup Summary

The AWS environment is considered successfully cleaned when:

- No Terraform-managed resources remain.
- No AWS resources remain in the target region.
- Terraform state is clean.
- Cleanup evidence has been collected.
- No unnecessary costs can be incurred.

## Related Documentation

- README.md
- architecture.md
- deployment-guide.md
- validation.md