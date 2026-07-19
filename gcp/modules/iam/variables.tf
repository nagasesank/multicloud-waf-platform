variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "project_name" {
  description = "Project naming prefix"
  type        = string
  default     = "multicloud-waf"
}

variable "region" {
  description = "GCP Region"
  type        = string
}