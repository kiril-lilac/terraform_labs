module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.8.0"

  name = var.vpc_name
  cidr = var.cidr_block
}