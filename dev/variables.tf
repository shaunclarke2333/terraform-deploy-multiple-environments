# public subnet ip addresses CIDR blocks for dev
variable "public_subnet_cidr" {
  description = "public subnet ip addresses CIDR blocks"
  default = [
    "10.3.0.0/24"
  ]
}

# variable for environment tagging in dev
variable "env" {
  default = "dev"
}

# vpc cidr block for the dev environment
variable "vpc_cidr" {
  default = "10.3.0.0/16"
}
