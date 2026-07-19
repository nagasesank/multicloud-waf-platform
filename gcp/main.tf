module "network" {
  source = "./modules/network"

  project_id = var.project_id

  region = var.region

  vpc_name = var.vpc_name

  subnet_name = var.subnet_name

  subnet_cidr = var.subnet_cidr
}
module "security" {
  source = "./modules/security"

  vpc_name         = var.vpc_name
  network_name     = module.network.vpc_name
  allowed_ssh_cidr = var.allowed_ssh_cidr
}
module "compute" {
  source = "./modules/compute"

  instance_name = var.instance_name
  zone          = var.zone
  machine_type  = var.machine_type

  network_name          = module.network.vpc_name
  subnet_self_link      = module.network.subnet_self_link
  service_account_email = module.iam.service_account_email
}
module "armor" {

  source = "./modules/armor"

  project_name = var.project_name

  blocked_ip = var.allowed_ssh_cidr
}
module "load_balancer" {
  source = "./modules/load-balancer"

  project_name       = var.project_name
  zone               = var.zone
  instance_self_link = module.compute.instance_self_link

  security_policy_id = module.armor.security_policy_id
}
module "iam" {
  source = "./modules/iam"

  project_id   = var.project_id
  project_name = var.project_name
  region       = var.region
}