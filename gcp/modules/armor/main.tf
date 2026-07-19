resource "google_compute_security_policy" "cloud_armor" {

  name        = "${var.project_name}-armor-policy"
  description = "Cloud Armor Security Policy"

  # Block specific IP
  rule {
    action   = "deny(403)"
    priority = 1000

    match {
      versioned_expr = "SRC_IPS_V1"

      config {
        src_ip_ranges = [
          var.blocked_ip
        ]
      }
    }

    description = "Block test IP"
  }

  # Default allow
  rule {
    action   = "allow"
    priority = 2147483647

    match {
      versioned_expr = "SRC_IPS_V1"

      config {
        src_ip_ranges = [
          "*"
        ]
      }
    }

    description = "Default allow"
  }
}