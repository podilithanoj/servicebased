# VPC
vpc_name              = "java-app-service-1-prod-vpc"
vpc_cidr              = "10.20.0.0/16"
enable_dns_hostnames = true
enable_dns_support   = true

# Subnets
public_subnet_cidrs  = ["10.20.1.0/24", "10.20.2.0/24"]
private_subnet_cidrs = ["10.20.3.0/24", "10.20.4.0/24"]

# AZ Mapping
availability_zones = ["us-east-1a", "us-east-1b"]

# NAT & IGW
enable_nat_gateway      = true
single_nat_gateway      = false  # High availability in prod
enable_internet_gateway = true

# NACL
enable_nacl = true

# Tags
environment   = "prod"
project       = "java-app-service-1"
owner         = "platform-team"
cost_center   = "PROD-9876"

# Optional VPC flow logs
enable_vpc_flow_logs         = true
vpc_flow_log_destination_arn = "arn:aws:logs:us-east-1:123456789012:log-group:/aws/vpc/flowlogs"
