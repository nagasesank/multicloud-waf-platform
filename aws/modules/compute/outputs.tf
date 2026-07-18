# Purpose: Reserved for AWS compute module outputs.
output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.web.id
}

output "public_ip" {
  description = "EC2 Public IP"
  value       = aws_instance.web.public_ip
}

output "private_ip" {
  description = "EC2 Private IP"
  value       = aws_instance.web.private_ip
}

output "instance_arn" {
  description = "EC2 Instance ARN"
  value       = aws_instance.web.arn
}