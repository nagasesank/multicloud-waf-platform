# Purpose: Declares Terraform and provider version requirements for the AWS-side configuration.
# Implementation will be added in a future phase.
terraform {
  required_version = ">= 1.14.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
} 