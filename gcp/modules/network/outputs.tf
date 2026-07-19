output "vpc_id" {
  description = "VPC Network ID"
  value       = google_compute_network.vpc.id
}

output "vpc_name" {
  description = "VPC Network Name"
  value       = google_compute_network.vpc.name
}

output "subnet_id" {
  description = "Subnet ID"
  value       = google_compute_subnetwork.public_subnet.id
}

output "subnet_name" {
  description = "Subnet Name"
  value       = google_compute_subnetwork.public_subnet.name
}

output "subnet_self_link" {
  description = "Subnet Self Link"
  value       = google_compute_subnetwork.public_subnet.self_link
}