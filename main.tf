module "network" {
  source = "./modules/network"
  management-cidr = var.management-cidr
  restricted-cidr = var.restricted-cidr
  region = var.region 
  project = var.project
}

