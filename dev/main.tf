# Terraform block with required provider and terraform version listed
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">=0.14.9"
}

# Provider block with region defined
provider "aws" {
  region = "us-east-1"
}

#Declaring availability zone data source
data "aws_availability_zones" "available" {
  state = "available"
}


# Using module to deploy VPC
module "main-vpc" {
  source         = "terraform-aws-modules/vpc/aws"
  version        = "3.14.2"
  name           = "${var.env}-main-vpc"
  cidr           = "10.1.0.0/16"
  azs            = [for az in data.aws_availability_zones.available.names : az]
  public_subnets = var.public_subnet_cidr
  tags = {
    Environment = "${var.env}"

  }
}
