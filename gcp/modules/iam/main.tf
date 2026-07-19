resource "google_service_account" "vm_service_account" {
  account_id   = "${var.project_name}-vm-sa"
  display_name = "MultiCloud WAF VM Service Account"
  description  = "Dedicated Service Account for Compute Engine VM"
}
resource "google_project_iam_member" "logging_writer" {
  project = var.project_id
  role    = "roles/logging.logWriter"
  member  = "serviceAccount:${google_service_account.vm_service_account.email}"
}
resource "google_project_iam_member" "monitoring_metric_writer" {
  project = var.project_id
  role    = "roles/monitoring.metricWriter"
  member  = "serviceAccount:${google_service_account.vm_service_account.email}"
}