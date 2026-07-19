output "vpc_name" {
  value = module.network.vpc_name
}

output "subnet_name" {
  value = module.network.subnet_name
}

output "subnet_self_link" {
  value = module.network.subnet_self_link
}
output "http_firewall_rule" {
  value = module.security.http_firewall_rule
}

output "ssh_firewall_rule" {
  value = module.security.ssh_firewall_rule
}

output "healthcheck_firewall_rule" {
  value = module.security.healthcheck_firewall_rule
}
output "instance_name" {
  value = module.compute.instance_name
}

output "instance_external_ip" {
  value = module.compute.external_ip
}
output "load_balancer_ip" {
  value = module.load_balancer.load_balancer_ip
}

output "load_balancer_url" {
  value = module.load_balancer.load_balancer_url
}