# Create VPC Terraform Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.21.0"

  # VPC Basic Details
  name            = var.vpc-name
  cidr            = var.cidr
  azs             = var.azone
  private_subnets = var.prsubnets
  public_subnets  = var.pusubnets


  # NAT Gateways - Outbound Communication
  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  # VPC DNS Parameters
  enable_dns_hostnames = var.single_nat_gateway
  enable_dns_support   = var.single_nat_gateway

  public_subnet_tags = {
    Type = local.public_subnet_tags
  }

  private_subnet_tags = {
    Type = local.private_subnet_tags
  }

  tags = {
    Owner       = local.owner
    Environment = local.env
  }

  vpc_tags = {
    Name = var.vpc-name
  }
}