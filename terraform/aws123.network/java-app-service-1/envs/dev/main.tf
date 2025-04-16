provider "aws" {
  region = var.region
}

module "eks_vpc" {
  source = "../../../../modules/vpc"
  
  name                          = var.name
  environment                   = var.environment
  k8s_vpc_enabled               = var.k8s_vpc_enabled
  k8s_vpc_cidr                  = var.k8s_vpc_cidr
  vpc_azs                       = var.vpc_azs
  k8s_private_subnets_cidrs     = var.k8s_private_subnets_cidrs
  k8s_public_subnets_cidrs      = var.k8s_public_subnets_cidrs
  enable_ipv6                   = var.enable_ipv6
}

