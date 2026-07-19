variable "vpc_name" {
  description = "VPC name"
  type        = string
}

variable "network_name" {
  description = "VPC network name"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "Allowed SSH CIDR"
  type        = string
}