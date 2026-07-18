output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_1_id" {
  value = module.network.public_subnet_1_id
}

output "public_subnet_2_id" {
  value = module.network.public_subnet_2_id
}

output "internet_gateway_id" {
  value = module.network.internet_gateway_id
}

output "route_table_id" {
  value = module.network.route_table_id
}

output "alb_security_group_id" {
  value = module.security.alb_security_group_id
}

output "ec2_security_group_id" {
  value = module.security.ec2_security_group_id
}

output "instance_id" {
  value = module.compute.instance_id
}

output "instance_public_ip" {
  value = module.compute.public_ip
}

output "instance_private_ip" {
  value = module.compute.private_ip
}
output "alb_dns_name" {
  description = "Application Load Balancer DNS Name"
  value       = module.alb.alb_dns_name
}

output "alb_arn" {
  description = "Application Load Balancer ARN"
  value       = module.alb.alb_arn
}

output "target_group_arn" {
  description = "Application Load Balancer Target Group ARN"
  value       = module.alb.alb_target_group_arn
}
output "waf_web_acl_arn" {
  description = "AWS WAF Web ACL ARN"
  value       = module.waf.web_acl_arn
}

output "waf_web_acl_id" {
  description = "AWS WAF Web ACL ID"
  value       = module.waf.web_acl_id
}

output "waf_web_acl_name" {
  description = "AWS WAF Web ACL Name"
  value       = module.waf.web_acl_name
}