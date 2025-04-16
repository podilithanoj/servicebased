region                        = "us-east-1"
environment                   = "dev"
name                          = "dev-eks-vpc"

k8s_vpc_enabled               = true
k8s_vpc_cidr                  = "10.0.0.0/16"
vpc_azs                       = ["us-east-1a", "us-east-1b", "us-east-1c"]

k8s_private_subnets_cidrs     = [
  "10.0.0.0/18",
  "10.0.64.0/19",
  "10.0.96.0/19"
]

k8s_public_subnets_cidrs      = [
  "10.0.128.0/18",
  "10.0.192.0/19",
  "10.0.224.0/19"
]

enable_ipv6                   = false
