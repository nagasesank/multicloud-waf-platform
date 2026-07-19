# Purpose: Reserved for the GCP network module implementation.
resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"

  description = "Enterprise Multi-Cloud WAF Evaluation Platform VPC"
}

resource "google_compute_subnetwork" "public_subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = google_compute_network.vpc.id

  private_ip_google_access = true

  description = "Public subnet for web application infrastructure"
}