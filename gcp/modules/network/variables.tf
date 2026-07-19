variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

variable "vpc_name" {
  description = "VPC Network Name"
  type        = string
}

variable "subnet_name" {
  description = "Subnet Name"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string

  validation {
    condition     = can(cidrhost(var.subnet_cidr, 0))
    error_message = "The subnet_cidr must be a valid IPv4 CIDR block."
  }
}