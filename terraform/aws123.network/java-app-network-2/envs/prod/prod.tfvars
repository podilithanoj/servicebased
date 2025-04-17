
name               = "prod-vpc"
environment        = "prod"
vpc_cidr           = "10.1.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b"]
private_subnets    = ["10.1.1.0/24", "10.1.2.0/24"]
public_subnets     = ["10.1.101.0/24", "10.1.102.0/24"]
enable_nat_gateway = true
