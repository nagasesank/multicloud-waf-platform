module "network" {
  source = "./modules/network"

  project_name = var.project_name
  environment  = var.environment

  vpc_cidr             = var.vpc_cidr
  public_subnet_1_cidr = var.public_subnet_1_cidr
  public_subnet_2_cidr = var.public_subnet_2_cidr

  availability_zone_1 = var.availability_zone_1
  availability_zone_2 = var.availability_zone_2
}
module "security" {

  source = "./modules/security"

  project_name = var.project_name
  environment  = var.environment

  vpc_id = module.network.vpc_id

  my_ip = "223.185.46.53"
}
module "compute" {

  source = "./modules/compute"

  project_name = var.project_name
  environment  = var.environment

  public_subnet_1_id = module.network.public_subnet_1_id

  ec2_security_group_id = module.security.ec2_security_group_id

  key_name = "MYlab"
}
module "alb" {
  source = "./modules/alb"

  project_name = var.project_name
  environment  = var.environment
  owner        = var.owner

  vpc_id = module.network.vpc_id

  public_subnet_1_id = module.network.public_subnet_1_id
  public_subnet_2_id = module.network.public_subnet_2_id

  alb_security_group_id = module.security.alb_security_group_id

  instance_id = module.compute.instance_id
}
module "waf" {
  source = "./modules/waf"

  project_name = var.project_name
  environment  = var.environment
  owner        = var.owner

  alb_arn = module.alb.alb_arn
}