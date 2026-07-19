# Purpose: Declares Google Cloud provider configuration for the GCP-side deployment structure.
# Implementation will be added in a future phase.
provider "google" {
  project = var.project_id
  region  = var.region
}