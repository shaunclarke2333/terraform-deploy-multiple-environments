# Overriding specific inputs needed for prod
module "main-vpc" {
  source         = "terraform-aws-modules/vpc/aws"
  name           = "${var.env}-main-vpc"
  cidr           = "10.2.0.0/16"
  public_subnets = var.public_subnet_cidr
  tags = {
    Environment = "${var.env}"

  }
}
