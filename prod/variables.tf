# public subnet ip addresses CIDR blocks for prod
variable "public_subnet_cidr" {
  description = "public subnet ip addresses CIDR blocks"
  default = [
    "10.2.0.0/24"
  ]
}

# variable for environment tagging in prod
variable "env" {
  default = "prod"
}

# vpc cidr block for the prod environment
variable "vpc_cidr" {
  default = "10.2.0.0/16"
}
