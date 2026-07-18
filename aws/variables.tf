variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "multicloud-waf"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "lab"
}

variable "owner" {
  description = "Owner"
  type        = string
  default     = "surya"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_1_cidr" {
  description = "Public Subnet AZ1"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "Public Subnet AZ2"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone_1" {
  description = "AZ1"
  type        = string
  default     = "us-east-1a"
}

variable "availability_zone_2" {
  description = "AZ2"
  type        = string
  default     = "us-east-1b"
}