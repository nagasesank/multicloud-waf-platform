output "http_firewall_rule" {
  value = google_compute_firewall.allow_http.name
}

output "ssh_firewall_rule" {
  value = google_compute_firewall.allow_ssh.name
}

output "healthcheck_firewall_rule" {
  value = google_compute_firewall.allow_health_checks.name
}