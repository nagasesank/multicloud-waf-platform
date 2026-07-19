# Purpose: Reserved for the GCP compute module implementation.
resource "google_compute_instance" "web_server" {
  name         = var.instance_name
  zone         = var.zone
  machine_type = var.machine_type

  tags = [
    "web-server"
  ]

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/family/debian-12"
      size  = 20
      type  = "pd-balanced"
    }
  }

  network_interface {
    subnetwork = var.subnet_self_link

    access_config {
    }
  }

  metadata_startup_script = file("${path.module}/startup.sh")

  service_account {
    email = var.service_account_email

    scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
