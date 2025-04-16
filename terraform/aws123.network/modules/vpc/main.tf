module "vpc" {
  count  = var.k8s_vpc_enabled ? 1 : 0
  source = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  name            = var.name
  cidr            = var.k8s_vpc_cidr
  azs             = var.vpc_azs
  private_subnets = var.k8s_private_subnets_cidrs
  public_subnets  = var.k8s_public_subnets_cidrs

  enable_ipv6                                    = var.enable_ipv6
  private_subnet_assign_ipv6_address_on_creation = false
  public_subnet_assign_ipv6_address_on_creation  = var.enable_ipv6
  public_subnet_ipv6_prefixes                    = var.enable_ipv6 ? [0, 1, 2] : []
  private_subnet_ipv6_prefixes                   = var.enable_ipv6 ? [3, 4, 5] : []

  enable_dns_hostnames = true
  enable_dns_support   = true
  enable_nat_gateway   = true
  single_nat_gateway   = true
  one_nat_gateway_per_az = false
  map_public_ip_on_launch = false

  tags = {
    Environment = "${var.environment}-ec2_dedicated"
  }

  private_subnet_tags = {
    Environment                              = "${var.environment}-private_subnet"
  }

  public_subnet_tags = {
    Environment = "${var.environment}-public_subnet"
  }
}
