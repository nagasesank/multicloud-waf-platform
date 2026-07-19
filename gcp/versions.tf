# Purpose: Declares Terraform and provider version requirements for the GCP-side configuration.
# Implementation will be added in a future phase.
terraform {
  required_version = ">= 1.8.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}