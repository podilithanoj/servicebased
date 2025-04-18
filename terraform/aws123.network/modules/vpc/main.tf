module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.19.0"

  name = var.name
  cidr = var.vpc_cidr

  azs             = var.availability_zones
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_dns_hostnames = true
  enable_dns_support   = true
  enable_nat_gateway   = var.enable_nat_gateway
  single_nat_gateway   = true
  one_nat_gateway_per_az = false
  manage_default_security_group = false
  manage_default_network_acl    = false
  create_network_acl            = false

  tags = {
    Environment = var.environment
    Project     = "JavaNetwork"
  }
}