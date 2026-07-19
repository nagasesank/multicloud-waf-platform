output "service_account_email" {
  description = "Service Account Email"
  value       = google_service_account.vm_service_account.email
}

output "service_account_name" {
  description = "Service Account Name"
  value       = google_service_account.vm_service_account.name
}