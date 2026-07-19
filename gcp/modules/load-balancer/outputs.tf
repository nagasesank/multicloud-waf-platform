output "load_balancer_ip" {
  description = "Global Load Balancer IP"
  value       = google_compute_global_address.lb_ip.address
}

output "load_balancer_url" {
  description = "Load Balancer URL"
  value       = "http://${google_compute_global_address.lb_ip.address}"
}

output "backend_service_id" {
  description = "Backend Service ID"
  value       = google_compute_backend_service.backend.id
}