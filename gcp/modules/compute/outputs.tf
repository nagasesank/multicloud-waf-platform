# Purpose: Reserved for GCP compute module outputs.
output "instance_name" {
  description = "Compute Engine instance name"
  value       = google_compute_instance.web_server.name
}

output "instance_id" {
  description = "Compute Engine instance ID"
  value       = google_compute_instance.web_server.id
}

output "instance_self_link" {
  description = "Compute Engine instance self link"
  value       = google_compute_instance.web_server.self_link
}

output "external_ip" {
  description = "External IP Address"
  value       = google_compute_instance.web_server.network_interface[0].access_config[0].nat_ip
}