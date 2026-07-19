variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "zone" {
  description = "GCP Zone"
  type        = string
}

variable "instance_self_link" {
  description = "Compute Engine instance self link"
  type        = string
}
variable "security_policy_id" {
  description = "Cloud Armor Security Policy ID"
  type        = string
  default     = null
}