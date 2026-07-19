resource "google_compute_firewall" "allow_http" {
  name    = "${var.vpc_name}-allow-http"
  network = var.network_name

  direction = "INGRESS"
  priority  = 1000

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["web-server"]
}

resource "google_compute_firewall" "allow_ssh" {
  name    = "${var.vpc_name}-allow-ssh"
  network = var.network_name

  direction = "INGRESS"
  priority  = 1000

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = [
    var.allowed_ssh_cidr
  ]

  target_tags = ["web-server"]
}

resource "google_compute_firewall" "allow_health_checks" {
  name    = "${var.vpc_name}-allow-health-check"
  network = var.network_name

  direction = "INGRESS"
  priority  = 1000

  allow {
    protocol = "tcp"
  }

  source_ranges = [
    "35.191.0.0/16",
    "130.211.0.0/22"
  ]

  target_tags = ["web-server"]
}