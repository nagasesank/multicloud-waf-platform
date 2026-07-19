# AWS vs Google Cloud Platform Comparison

## Overview

This section compares the AWS and Google Cloud implementations of the **Enterprise Multi-Cloud Web Application Firewall Evaluation Platform**.

Both environments were built using Terraform and follow the same enterprise architecture, deployment workflow, and Infrastructure as Code (IaC) principles. The comparison highlights similarities, differences, and cloud-native implementations while maintaining a vendor-neutral design.

## Comparison Objectives

This comparison focuses on:

- Infrastructure Architecture
- Network Design
- Compute Services
- Web Application Firewall (WAF)
- Identity and Access Management (IAM)
- Logging and Monitoring
- Terraform Module Design
- Deployment Workflow
- Infrastructure Lifecycle
- Cost Optimization

## Comparison Scope

| Category | AWS | Google Cloud |
|----------|-----|--------------|
| Cloud Provider | Amazon Web Services | Google Cloud Platform |
| Infrastructure as Code | Terraform | Terraform |
| Network | Amazon VPC | VPC Network |
| Compute | Amazon EC2 | Compute Engine |
| Load Balancer | Application Load Balancer | External HTTP(S) Load Balancer |
| Web Application Firewall | AWS WAF | Google Cloud Armor |
| Identity Management | AWS IAM | Cloud IAM |
| Logging | Amazon CloudWatch | Cloud Logging |

## Architecture Philosophy

Both implementations follow the same architectural principles.

- Infrastructure as Code
- Modular Terraform Design
- Layered Security
- Least Privilege Access
- Reusable Components
- Enterprise Documentation
- Infrastructure Validation
- Complete Resource Cleanup

Although cloud services differ, the implementation methodology remains consistent across both environments.

## Deployment Workflow

```text
Terraform Init

↓

Terraform Format

↓

Terraform Validate

↓

Terraform Plan

↓

Terraform Apply

↓

Cloud Console Validation

↓

Evidence Collection

↓

Terraform Destroy
```

The workflow is identical for AWS and Google Cloud.

## Terraform Module Comparison

| Layer | AWS Module | GCP Module |
|---------|------------|------------|
| Network | network | network |
| Security | security | firewall |
| Compute | compute | compute |
| Load Balancer | alb | load-balancer |
| WAF | waf | cloud-armor |
| Logging | logging | logging |
| IAM | iam | iam |

## Documentation Structure

```text
docs/
├── aws/
│   ├── README.md
│   ├── architecture.md
│   ├── deployment-guide.md
│   ├── validation.md
│   └── cleanup.md
│
├── gcp/
│   ├── README.md
│   ├── architecture.md
│   ├── deployment-guide.md
│   ├── validation.md
│   └── cleanup.md
│
└── comparison/
    ├── README.md
    ├── architecture-comparison.md
    ├── waf-comparison.md
    ├── terraform-comparison.md
    └── cost-comparison.md
```

## Comparison Documents

| Document | Description |
|----------|-------------|
| architecture-comparison.md | Compare AWS and GCP architectures |
| waf-comparison.md | Compare AWS WAF and Google Cloud Armor |
| terraform-comparison.md | Compare Terraform implementations |
| cost-comparison.md | Compare deployment costs and resource lifecycle |

## Key Takeaways

The project demonstrates:

- Multi-cloud Infrastructure as Code
- Vendor-neutral architecture
- Cloud-native security controls
- Consistent deployment methodology
- Enterprise documentation standards
- End-to-end Terraform lifecycle management

## Related Documentation

- ../aws/README.md
- ../gcp/README.md
- architecture-comparison.md
- waf-comparison.md
- terraform-comparison.md
- cost-comparison.md