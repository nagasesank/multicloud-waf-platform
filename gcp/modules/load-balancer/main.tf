####################################################
# Unmanaged Instance Group
####################################################

resource "google_compute_instance_group" "web_group" {
  name = "${var.project_name}-instance-group"

  zone = var.zone

  instances = [
    var.instance_self_link
  ]

  named_port {
    name = "http"
    port = 80
  }
}

####################################################
# Health Check
####################################################

resource "google_compute_health_check" "http_health_check" {
  name = "${var.project_name}-health-check"

  http_health_check {
    port         = 80
    request_path = "/"
  }

  check_interval_sec  = 5
  timeout_sec         = 5
  healthy_threshold   = 2
  unhealthy_threshold = 2
}

####################################################
# Backend Service
####################################################

resource "google_compute_backend_service" "backend" {

  name                  = "${var.project_name}-backend"
  protocol              = "HTTP"
  port_name             = "http"
  load_balancing_scheme = "EXTERNAL"

  security_policy = var.security_policy_id

  log_config {
    enable      = true
    sample_rate = 1.0
  }

  health_checks = [
    google_compute_health_check.http_health_check.id
  ]

  backend {
    group = google_compute_instance_group.web_group.self_link
  }
}

####################################################
# URL Map
####################################################

resource "google_compute_url_map" "url_map" {
  name            = "${var.project_name}-url-map"
  default_service = google_compute_backend_service.backend.id
}

####################################################
# HTTP Proxy
####################################################

resource "google_compute_target_http_proxy" "http_proxy" {
  name    = "${var.project_name}-http-proxy"
  url_map = google_compute_url_map.url_map.id
}

####################################################
# Global Static IP
####################################################

resource "google_compute_global_address" "lb_ip" {
  name = "${var.project_name}-lb-ip"
}

####################################################
# Global Forwarding Rule
####################################################

resource "google_compute_global_forwarding_rule" "forwarding_rule" {
  name                  = "${var.project_name}-forwarding-rule"
  load_balancing_scheme = "EXTERNAL"

  ip_protocol = "TCP"
  port_range  = "80"

  ip_address = google_compute_global_address.lb_ip.address
  target     = google_compute_target_http_proxy.http_proxy.id
}