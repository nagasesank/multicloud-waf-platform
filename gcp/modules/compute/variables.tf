# Purpose: Reserved for GCP compute module input variables.
variable "instance_name" {
  description = "VM instance name"
  type        = string
}

variable "zone" {
  description = "GCP zone"
  type        = string
}

variable "machine_type" {
  description = "Machine type"
  type        = string
}

variable "network_name" {
  description = "VPC network"
  type        = string
}

variable "subnet_self_link" {
  description = "Subnet self link"
  type        = string
}
variable "service_account_email" {
  description = "Service Account Email for VM"
  type        = string
}