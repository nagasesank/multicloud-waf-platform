# Purpose: Reserved for AWS compute module input variables.
variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "public_subnet_1_id" {
  description = "Public Subnet A"
  type        = string
}

variable "ec2_security_group_id" {
  description = "EC2 Security Group"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "EC2 Key Pair Name"
  type        = string
}