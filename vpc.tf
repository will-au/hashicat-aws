module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "gaurav-vpc"
  cidr = "10.0.0.0/24"

  azs             = ["us-east-1d"]
  private_subnets = ["10.0.1.0/24"]
  public_subnets  = ["10.0.101.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
