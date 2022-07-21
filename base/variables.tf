# public subnet ip addresses CIDR blocks for staging
variable "public_subnet_cidr" {
  description = "public subnet ip addresses CIDR blocks"
  default = [
    "10.1.0.0/24",
    "10.1.1.0/24"
  ]
}

# variable for environment tagging in staging
variable "env" {
  default = "mod"
}

# vpc cidr block for the staging environment
variable "vpc_cidr" {
  default = "10.1.0.0/16"
}