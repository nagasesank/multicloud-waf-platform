# Purpose: Reserved for AWS WAF module outputs.
output "web_acl_arn" {
  description = "AWS WAF Web ACL ARN"
  value       = aws_wafv2_web_acl.this.arn
}

output "web_acl_id" {
  description = "AWS WAF Web ACL ID"
  value       = aws_wafv2_web_acl.this.id
}

output "web_acl_name" {
  description = "AWS WAF Web ACL Name"
  value       = aws_wafv2_web_acl.this.name
}