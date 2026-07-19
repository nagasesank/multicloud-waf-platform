variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "Deployment Region"
  type        = string
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
}

variable "subnet_name" {
  description = "Subnet Name"
  type        = string
}

variable "subnet_cidr" {
  description = "Subnet CIDR"
  type        = string
}
variable "allowed_ssh_cidr" {
  description = "Allowed SSH CIDR"
  type        = string
}
variable "instance_name" {
  description = "Compute instance name"
  type        = string
}

variable "zone" {
  description = "Deployment zone"
  type        = string
}

variable "machine_type" {
  description = "Compute machine type"
  type        = string
}
variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "multicloud-waf"
}